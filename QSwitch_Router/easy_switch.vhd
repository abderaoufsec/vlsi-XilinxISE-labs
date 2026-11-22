
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity easy_switch is
    generic (
        N   : integer := 20;
        adX : integer := 2;
        adY : integer := 2
    );
    port (
        clk, reset : in std_logic;

        data_bus_west_in, data_bus_north_in,
        data_bus_est_in, data_bus_south_in : in std_logic_vector(N-1 downto 0);

        data_bus_west_out, data_bus_north_out,
        data_bus_est_out, data_bus_south_out : out std_logic_vector(N-1 downto 0);

        occ_west_out, occ_north_out,
        occ_est_out, occ_south_out : out std_logic;

        occ_west_in, occ_north_in,
        occ_est_in, occ_south_in : in std_logic;

        data_rqst_west_in, data_rqst_north_in,
        data_rqst_est_in, data_rqst_south_in : in std_logic;

        data_rqst_west_out, data_rqst_north_out,
        data_rqst_est_out, data_rqst_south_out : out std_logic
    );
end easy_switch;

architecture Behavioral of easy_switch is

    subtype packet_t is std_logic_vector(N-1 downto 0);

    type buffer_t is array (0 to 3, 0 to 2) of packet_t;
    type pointer_t is array (0 to 3) of integer range 0 to 2;
    type count_t is array (0 to 3) of integer range 0 to 3;

    signal input_buffer  : buffer_t := (others => (others => (others => '0')));
    signal output_buffer : buffer_t := (others => (others => (others => '0')));

    signal in_read, in_write   : pointer_t := (others => 0);
    signal out_read, out_write : pointer_t := (others => 0);

    signal in_count, out_count : count_t := (others => 0);

    signal data_w_reg, data_n_reg,
           data_e_reg, data_s_reg : packet_t := (others => '0');

    function route(p : packet_t) return integer is
        variable dx, dy : integer;
    begin
        dx := to_integer(unsigned(p(N-1 downto N-2)));
        dy := to_integer(unsigned(p(N-3 downto N-4)));

        if dx > adX then
            return 2; -- East
        elsif dx < adX then
            return 0; -- West
        elsif dy > adY then
            return 1; -- North
        else
            return 3; -- South
        end if;
    end function;

begin

    data_bus_west_out  <= data_w_reg;
    data_bus_north_out <= data_n_reg;
    data_bus_est_out   <= data_e_reg;
    data_bus_south_out <= data_s_reg;

    process(clk, reset)

        variable ib, ob : buffer_t;
        variable ir, iw, orp, owp : pointer_t;
        variable ic, oc : count_t;

        variable selected : integer;
        variable destination : integer;

        variable req : std_logic_vector(0 to 3);
        variable incoming : buffer_t;

        variable busy : std_logic_vector(0 to 3);

    begin

        if reset = '1' then

            input_buffer  <= (others => (others => (others => '0')));
            output_buffer <= (others => (others => (others => '0')));

            in_read  <= (others => 0);
            in_write <= (others => 0);
            out_read <= (others => 0);
            out_write <= (others => 0);

            in_count  <= (others => 0);
            out_count <= (others => 0);

            data_w_reg <= (others => '0');
            data_n_reg <= (others => '0');
            data_e_reg <= (others => '0');
            data_s_reg <= (others => '0');

            data_rqst_west_out  <= '0';
            data_rqst_north_out <= '0';
            data_rqst_est_out   <= '0';
            data_rqst_south_out <= '0';

            occ_west_out  <= '0';
            occ_north_out <= '0';
            occ_est_out   <= '0';
            occ_south_out <= '0';

        elsif rising_edge(clk) then

            ib  := input_buffer;
            ob  := output_buffer;
            ir  := in_read;
            iw  := in_write;
            orp := out_read;
            owp := out_write;
            ic  := in_count;
            oc  := out_count;

            req(0) := data_rqst_west_in;
            req(1) := data_rqst_north_in;
            req(2) := data_rqst_est_in;
            req(3) := data_rqst_south_in;

            incoming(0,0) := data_bus_west_in;
            incoming(1,0) := data_bus_north_in;
            incoming(2,0) := data_bus_est_in;
            incoming(3,0) := data_bus_south_in;

            busy(0) := occ_west_in;
            busy(1) := occ_north_in;
            busy(2) := occ_est_in;
            busy(3) := occ_south_in;

            data_rqst_west_out  <= '0';
            data_rqst_north_out <= '0';
            data_rqst_est_out   <= '0';
            data_rqst_south_out <= '0';

            -- 1. Send packets from output buffers when the neighbor is free.

            if oc(0) > 0 and busy(0) = '0' then
                data_w_reg <= ob(0, orp(0));
                data_rqst_west_out <= '1';
                orp(0) := (orp(0) + 1) mod 3;
                oc(0) := oc(0) - 1;
            end if;

            if oc(1) > 0 and busy(1) = '0' then
                data_n_reg <= ob(1, orp(1));
                data_rqst_north_out <= '1';
                orp(1) := (orp(1) + 1) mod 3;
                oc(1) := oc(1) - 1;
            end if;

            if oc(2) > 0 and busy(2) = '0' then
                data_e_reg <= ob(2, orp(2));
                data_rqst_est_out <= '1';
                orp(2) := (orp(2) + 1) mod 3;
                oc(2) := oc(2) - 1;
            end if;

            if oc(3) > 0 and busy(3) = '0' then
                data_s_reg <= ob(3, orp(3));
                data_rqst_south_out <= '1';
                orp(3) := (orp(3) + 1) mod 3;
                oc(3) := oc(3) - 1;
            end if;

            -- 2. Arbitration: one packet may enter each output buffer per cycle.
            -- Priority order is rotated for each output direction.

            -- West output: North > East > South > West
            selected := -1;
            if ic(1) > 0 and route(ib(1,ir(1))) = 0 then selected := 1;
            elsif ic(2) > 0 and route(ib(2,ir(2))) = 0 then selected := 2;
            elsif ic(3) > 0 and route(ib(3,ir(3))) = 0 then selected := 3;
            elsif ic(0) > 0 and route(ib(0,ir(0))) = 0 then selected := 0;
            end if;

            if selected /= -1 and oc(0) < 3 then
                ob(0,owp(0)) := ib(selected,ir(selected));
                owp(0) := (owp(0)+1) mod 3;
                oc(0) := oc(0)+1;
                ir(selected) := (ir(selected)+1) mod 3;
                ic(selected) := ic(selected)-1;
            end if;

            -- North output: West > South > East > North
            selected := -1;
            if ic(0) > 0 and route(ib(0,ir(0))) = 1 then selected := 0;
            elsif ic(3) > 0 and route(ib(3,ir(3))) = 1 then selected := 3;
            elsif ic(2) > 0 and route(ib(2,ir(2))) = 1 then selected := 2;
            elsif ic(1) > 0 and route(ib(1,ir(1))) = 1 then selected := 1;
            end if;

            if selected /= -1 and oc(1) < 3 then
                ob(1,owp(1)) := ib(selected,ir(selected));
                owp(1) := (owp(1)+1) mod 3;
                oc(1) := oc(1)+1;
                ir(selected) := (ir(selected)+1) mod 3;
                ic(selected) := ic(selected)-1;
            end if;

            -- East output: South > West > North > East
            selected := -1;
            if ic(3) > 0 and route(ib(3,ir(3))) = 2 then selected := 3;
            elsif ic(0) > 0 and route(ib(0,ir(0))) = 2 then selected := 0;
            elsif ic(1) > 0 and route(ib(1,ir(1))) = 2 then selected := 1;
            elsif ic(2) > 0 and route(ib(2,ir(2))) = 2 then selected := 2;
            end if;

            if selected /= -1 and oc(2) < 3 then
                ob(2,owp(2)) := ib(selected,ir(selected));
                owp(2) := (owp(2)+1) mod 3;
                oc(2) := oc(2)+1;
                ir(selected) := (ir(selected)+1) mod 3;
                ic(selected) := ic(selected)-1;
            end if;

            -- South output: East > North > West > South
            selected := -1;
            if ic(2) > 0 and route(ib(2,ir(2))) = 3 then selected := 2;
            elsif ic(1) > 0 and route(ib(1,ir(1))) = 3 then selected := 1;
            elsif ic(0) > 0 and route(ib(0,ir(0))) = 3 then selected := 0;
            elsif ic(3) > 0 and route(ib(3,ir(3))) = 3 then selected := 3;
            end if;

            if selected /= -1 and oc(3) < 3 then
                ob(3,owp(3)) := ib(selected,ir(selected));
                owp(3) := (owp(3)+1) mod 3;
                oc(3) := oc(3)+1;
                ir(selected) := (ir(selected)+1) mod 3;
                ic(selected) := ic(selected)-1;
            end if;

            -- 3. Store new incoming packets in input buffers.

            for i in 0 to 3 loop
                if req(i) = '1' and ic(i) < 3 then
                    ib(i,iw(i)) := incoming(i,0);
                    iw(i) := (iw(i)+1) mod 3;
                    ic(i) := ic(i)+1;
                end if;
            end loop;

            -- 4. Update all buffers and occupancy indicators.

            input_buffer  <= ib;
            output_buffer <= ob;

            in_read  <= ir;
            in_write <= iw;
            out_read <= orp;
            out_write <= owp;

            in_count  <= ic;
            out_count <= oc;

            if ic(0) = 3 then occ_west_out <= '1';
            else occ_west_out <= '0'; end if;

            if ic(1) = 3 then occ_north_out <= '1';
            else occ_north_out <= '0'; end if;

            if ic(2) = 3 then occ_est_out <= '1';
            else occ_est_out <= '0'; end if;

            if ic(3) = 3 then occ_south_out <= '1';
            else occ_south_out <= '0'; end if;

        end if;
    end process;

end Behavioral;