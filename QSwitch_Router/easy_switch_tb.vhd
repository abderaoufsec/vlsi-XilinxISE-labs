
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity easy_switch_tb is
end easy_switch_tb;

architecture behavior of easy_switch_tb is

    constant N : integer := 20;
    constant CLK_PERIOD : time := 10 ns;

    signal clk, reset : std_logic := '0';

    signal dw, dn, de, ds : std_logic_vector(19 downto 0) := (others => '0');
    signal ow, onorth, oe, os : std_logic_vector(19 downto 0);

    signal occ_w, occ_n, occ_e, occ_s : std_logic := '0';
    signal occ_wo, occ_no, occ_eo, occ_so : std_logic;

    signal rw, rn, re, rs : std_logic := '0';
    signal rwo, rno, reo, rso : std_logic;

begin

    uut: entity work.easy_switch
        generic map (N => 20, adX => 2, adY => 2)
        port map (
            clk => clk,
            reset => reset,

            data_bus_west_in => dw,
            data_bus_north_in => dn,
            data_bus_est_in => de,
            data_bus_south_in => ds,

            data_bus_west_out => ow,
            data_bus_north_out => onorth,
            data_bus_est_out => oe,
            data_bus_south_out => os,

            occ_west_out => occ_wo,
            occ_north_out => occ_no,
            occ_est_out => occ_eo,
            occ_south_out => occ_so,

            occ_west_in => occ_w,
            occ_north_in => occ_n,
            occ_est_in => occ_e,
            occ_south_in => occ_s,

            data_rqst_west_in => rw,
            data_rqst_north_in => rn,
            data_rqst_est_in => re,
            data_rqst_south_in => rs,

            data_rqst_west_out => rwo,
            data_rqst_north_out => rno,
            data_rqst_est_out => reo,
            data_rqst_south_out => rso
        );

    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    stimulus: process
    begin

        -- Reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Test 1: West input to East output
        dw <= "11" & "10" & x"1234";
        rw <= '1';
        wait until rising_edge(clk);
        rw <= '0';

        wait for 40 ns;

        assert reo = '1' or oe = "11" & "10" & x"1234"
            report "Test 1: East routing failed"
            severity error;

        -- Test 2: North input to West output
        dn <= "00" & "10" & x"5678";
        rn <= '1';
        wait until rising_edge(clk);
        rn <= '0';

        wait for 40 ns;

        assert rwo = '1' or ow = "00" & "10" & x"5678"
            report "Test 2: West routing failed"
            severity error;

        -- Test 3: East input to North output
        de <= "10" & "11" & x"ABCD";
        re <= '1';
        wait until rising_edge(clk);
        re <= '0';

        wait for 40 ns;

        assert rno = '1' or onorth = "10" & "11" & x"ABCD"
            report "Test 3: North routing failed"
            severity error;

        -- Test 4: South input to South output
        ds <= "10" & "00" & x"AAAA";
        rs <= '1';
        wait until rising_edge(clk);
        rs <= '0';

        wait for 40 ns;

        assert rso = '1' or os = "10" & "00" & x"AAAA"
            report "Test 4: South routing failed"
            severity error;

        report "Testbench completed." severity note;
        wait;
    end process;

end behavior;