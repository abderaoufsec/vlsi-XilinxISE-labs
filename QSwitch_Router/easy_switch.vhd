----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:19:51 10/17/2026 
-- Design Name: 
-- Module Name:    easy_switch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity easy_switch is
    generic ( 
        N: integer := 20;   -- Taille du bus de données
        adX: integer := 2;  -- Adresse X du routeur actuel
        adY: integer := 2   -- Adresse Y du routeur actuel
    );
    port (
        clk : in std_logic;
        reset : in std_logic;
		  
        -- Bus d'entrée (Data Inputs)
        data_bus_west_in  : in std_logic_vector(N-1 downto 0);
        data_bus_north_in : in std_logic_vector(N-1 downto 0);
        data_bus_est_in   : in std_logic_vector(N-1 downto 0);
        data_bus_south_in : in std_logic_vector(N-1 downto 0);
		  
        -- Bus de sortie (Data Outputs)
        data_bus_west_out  : out std_logic_vector(N-1 downto 0);
        data_bus_north_out : out std_logic_vector(N-1 downto 0);
        data_bus_est_out   : out std_logic_vector(N-1 downto 0);
        data_bus_south_out : out std_logic_vector(N-1 downto 0);
		  
        -- Signal occupé (Occupancy Outputs)
        occ_west_out  : out std_logic;
        occ_north_out : out std_logic;
        occ_est_out   : out std_logic;
        occ_south_out : out std_logic;
		  
        -- Signal occupé du voisin (Occupancy Inputs)
        occ_west_in  : in std_logic;
        occ_north_in : in std_logic;
        occ_est_in   : in std_logic;
        occ_south_in : in std_logic;
		  
        -- Indique qu'une donnée est transmise sur le bus (Request Inputs)
        data_rqst_west_in  : in std_logic;
        data_rqst_north_in : in std_logic;
        data_rqst_est_in   : in std_logic;
        data_rqst_south_in : in std_logic;
		  
        -- Indique au voisin qu'on lui transmet une donnée (Request Outputs)
        data_rqst_west_out  : out std_logic;
        data_rqst_north_out : out std_logic;
        data_rqst_est_out   : out std_logic;
        data_rqst_south_out : out std_logic
    );
end easy_switch;

architecture Behavioral of easy_switch is

    signal data_out_west_reg  : std_logic_vector(N-1 downto 0) := (others => '0');
    signal data_out_north_reg : std_logic_vector(N-1 downto 0) := (others => '0');
    signal data_out_est_reg   : std_logic_vector(N-1 downto 0) := (others => '0');
    signal data_out_south_reg : std_logic_vector(N-1 downto 0) := (others => '0');

    signal req_dir_west  : std_logic_vector(1 downto 0);
    signal req_dir_north : std_logic_vector(1 downto 0);
    signal req_dir_est   : std_logic_vector(1 downto 0);
    signal req_dir_south : std_logic_vector(1 downto 0);

begin

    -- 1. Routing Logic (XY Routing)
    process(data_bus_west_in, data_bus_north_in, data_bus_est_in, data_bus_south_in)
        variable dest_x, dest_y : integer;
    begin
        -- West Input
        dest_x := to_integer(unsigned(data_bus_west_in(N-1 downto N-2)));
        dest_y := to_integer(unsigned(data_bus_west_in(N-3 downto N-4)));
        if dest_x > adX then req_dir_west <= "10"; -- East
        elsif dest_x < adX then req_dir_west <= "00"; -- West
        else
            if dest_y > adY then req_dir_west <= "01"; -- North
            else req_dir_west <= "11"; -- South
            end if;
        end if;

        -- North Input
        dest_x := to_integer(unsigned(data_bus_north_in(N-1 downto N-2)));
        dest_y := to_integer(unsigned(data_bus_north_in(N-3 downto N-4)));
        if dest_x > adX then req_dir_north <= "10"; 
        elsif dest_x < adX then req_dir_north <= "00"; 
        else
            if dest_y > adY then req_dir_north <= "01"; 
            else req_dir_north <= "11"; 
            end if;
        end if;

        -- East Input
        dest_x := to_integer(unsigned(data_bus_est_in(N-1 downto N-2)));
        dest_y := to_integer(unsigned(data_bus_est_in(N-3 downto N-4)));
        if dest_x > adX then req_dir_est <= "10"; 
        elsif dest_x < adX then req_dir_est <= "00"; 
        else
            if dest_y > adY then req_dir_est <= "01"; 
            else req_dir_est <= "11"; 
            end if;
        end if;

        -- South Input
        dest_x := to_integer(unsigned(data_bus_south_in(N-1 downto N-2)));
        dest_y := to_integer(unsigned(data_bus_south_in(N-3 downto N-4)));
        if dest_x > adX then req_dir_south <= "10"; 
        elsif dest_x < adX then req_dir_south <= "00"; 
        else
            if dest_y > adY then req_dir_south <= "01"; 
            else req_dir_south <= "11"; 
            end if;
        end if;
    end process;

    -- 2. Arbitration and Data Path (Clocked)
    -- Priority: South > West > North > East
    process(clk, reset)
    begin
        if reset = '1' then
            data_out_west_reg <= (others => '0'); data_out_north_reg <= (others => '0');
            data_out_est_reg <= (others => '0'); data_out_south_reg <= (others => '0');
            data_rqst_west_out <= '0'; data_rqst_north_out <= '0';
            data_rqst_est_out <= '0'; data_rqst_south_out <= '0';
            occ_west_out <= '0'; occ_north_out <= '0'; occ_est_out <= '0'; occ_south_out <= '0';
            
        elsif rising_edge(clk) then
            -- Default outputs to 0
            data_rqst_west_out <= '0'; occ_west_out <= '0';
            data_rqst_north_out <= '0'; occ_north_out <= '0';
            data_rqst_est_out <= '0'; occ_est_out <= '0';
            data_rqst_south_out <= '0'; occ_south_out <= '0';

            -- Output West
            if (data_rqst_south_in = '1' and req_dir_south = "00" and occ_west_in = '0') then
                data_out_west_reg <= data_bus_south_in; data_rqst_west_out <= '1'; occ_west_out <= '1';
            elsif (data_rqst_west_in = '1' and req_dir_west = "00" and occ_west_in = '0') then
                data_out_west_reg <= data_bus_west_in; data_rqst_west_out <= '1'; occ_west_out <= '1';
            elsif (data_rqst_north_in = '1' and req_dir_north = "00" and occ_west_in = '0') then
                data_out_west_reg <= data_bus_north_in; data_rqst_west_out <= '1'; occ_west_out <= '1';
            elsif (data_rqst_est_in = '1' and req_dir_est = "00" and occ_west_in = '0') then
                data_out_west_reg <= data_bus_est_in; data_rqst_west_out <= '1'; occ_west_out <= '1';
            end if;

            -- Output North
            if (data_rqst_south_in = '1' and req_dir_south = "01" and occ_north_in = '0') then
                data_out_north_reg <= data_bus_south_in; data_rqst_north_out <= '1'; occ_north_out <= '1';
            elsif (data_rqst_west_in = '1' and req_dir_west = "01" and occ_north_in = '0') then
                data_out_north_reg <= data_bus_west_in; data_rqst_north_out <= '1'; occ_north_out <= '1';
            elsif (data_rqst_north_in = '1' and req_dir_north = "01" and occ_north_in = '0') then
                data_out_north_reg <= data_bus_north_in; data_rqst_north_out <= '1'; occ_north_out <= '1';
            elsif (data_rqst_est_in = '1' and req_dir_est = "01" and occ_north_in = '0') then
                data_out_north_reg <= data_bus_est_in; data_rqst_north_out <= '1'; occ_north_out <= '1';
            end if;

            -- Output East
            if (data_rqst_south_in = '1' and req_dir_south = "10" and occ_est_in = '0') then
                data_out_est_reg <= data_bus_south_in; data_rqst_est_out <= '1'; occ_est_out <= '1';
            elsif (data_rqst_west_in = '1' and req_dir_west = "10" and occ_est_in = '0') then
                data_out_est_reg <= data_bus_west_in; data_rqst_est_out <= '1'; occ_est_out <= '1';
            elsif (data_rqst_north_in = '1' and req_dir_north = "10" and occ_est_in = '0') then
                data_out_est_reg <= data_bus_north_in; data_rqst_est_out <= '1'; occ_est_out <= '1';
            elsif (data_rqst_est_in = '1' and req_dir_est = "10" and occ_est_in = '0') then
                data_out_est_reg <= data_bus_est_in; data_rqst_est_out <= '1'; occ_est_out <= '1';
            end if;

            -- Output South
            if (data_rqst_south_in = '1' and req_dir_south = "11" and occ_south_in = '0') then
                data_out_south_reg <= data_bus_south_in; data_rqst_south_out <= '1'; occ_south_out <= '1';
            elsif (data_rqst_west_in = '1' and req_dir_west = "11" and occ_south_in = '0') then
                data_out_south_reg <= data_bus_west_in; data_rqst_south_out <= '1'; occ_south_out <= '1';
            elsif (data_rqst_north_in = '1' and req_dir_north = "11" and occ_south_in = '0') then
                data_out_south_reg <= data_bus_north_in; data_rqst_south_out <= '1'; occ_south_out <= '1';
            elsif (data_rqst_est_in = '1' and req_dir_est = "11" and occ_south_in = '0') then
                data_out_south_reg <= data_bus_est_in; data_rqst_south_out <= '1'; occ_south_out <= '1';
            end if;

        end if;
    end process;

    -- Assign registered outputs to actual ports
    data_bus_west_out <= data_out_west_reg;
    data_bus_north_out <= data_out_north_reg;
    data_bus_est_out <= data_out_est_reg;
    data_bus_south_out <= data_out_south_reg;

end Behavioral;	 
