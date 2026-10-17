LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY easy_switch_tb IS
END easy_switch_tb;
 
ARCHITECTURE behavior OF easy_switch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT easy_switch
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_bus_west_in : IN  std_logic_vector(19 downto 0);
         data_bus_north_in : IN  std_logic_vector(19 downto 0);
         data_bus_est_in : IN  std_logic_vector(19 downto 0);
         data_bus_south_in : IN  std_logic_vector(19 downto 0);
         data_bus_west_out : OUT  std_logic_vector(19 downto 0);
         data_bus_north_out : OUT  std_logic_vector(19 downto 0);
         data_bus_est_out : OUT  std_logic_vector(19 downto 0);
         data_bus_south_out : OUT  std_logic_vector(19 downto 0);
         occ_west_out : OUT  std_logic;
         occ_north_out : OUT  std_logic;
         occ_est_out : OUT  std_logic;
         occ_south_out : OUT  std_logic;
         occ_west_in : IN  std_logic;
         occ_north_in : IN  std_logic;
         occ_est_in : IN  std_logic;
         occ_south_in : IN  std_logic;
         data_rqst_west_in : IN  std_logic;
         data_rqst_north_in : IN  std_logic;
         data_rqst_est_in : IN  std_logic;
         data_rqst_south_in : IN  std_logic;
         data_rqst_west_out : OUT  std_logic;
         data_rqst_north_out : OUT  std_logic;
         data_rqst_est_out : OUT  std_logic;
         data_rqst_south_out : OUT  std_logic
        );
    END COMPONENT;
	 
   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal data_bus_west_in : std_logic_vector(19 downto 0) := (others => '0');
   signal data_bus_north_in : std_logic_vector(19 downto 0) := (others => '0');
   signal data_bus_est_in : std_logic_vector(19 downto 0) := (others => '0');
   signal data_bus_south_in : std_logic_vector(19 downto 0) := (others => '0');
   signal occ_west_in : std_logic := '0';
   signal occ_north_in : std_logic := '0';
   signal occ_est_in : std_logic := '0';
   signal occ_south_in : std_logic := '0';
   signal data_rqst_west_in : std_logic := '0';
   signal data_rqst_north_in : std_logic := '0';
   signal data_rqst_est_in : std_logic := '0';
   signal data_rqst_south_in : std_logic := '0';

 	--Outputs
   signal data_bus_west_out : std_logic_vector(19 downto 0);
   signal data_bus_north_out : std_logic_vector(19 downto 0);
   signal data_bus_est_out : std_logic_vector(19 downto 0);
   signal data_bus_south_out : std_logic_vector(19 downto 0);
   signal occ_west_out : std_logic;
   signal occ_north_out : std_logic;
   signal occ_est_out : std_logic;
   signal occ_south_out : std_logic;
   signal data_rqst_west_out : std_logic;
   signal data_rqst_north_out : std_logic;
   signal data_rqst_est_out : std_logic;
   signal data_rqst_south_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: easy_switch PORT MAP (
          clk => clk, reset => reset,
          data_bus_west_in => data_bus_west_in, data_bus_north_in => data_bus_north_in,
          data_bus_est_in => data_bus_est_in, data_bus_south_in => data_bus_south_in,
          data_bus_west_out => data_bus_west_out, data_bus_north_out => data_bus_north_out,
          data_bus_est_out => data_bus_est_out, data_bus_south_out => data_bus_south_out,
          occ_west_out => occ_west_out, occ_north_out => occ_north_out,
          occ_est_out => occ_est_out, occ_south_out => occ_south_out,
          occ_west_in => occ_west_in, occ_north_in => occ_north_in,
          occ_est_in => occ_est_in, occ_south_in => occ_south_in,
          data_rqst_west_in => data_rqst_west_in, data_rqst_north_in => data_rqst_north_in,
          data_rqst_est_in => data_rqst_est_in, data_rqst_south_in => data_rqst_south_in,
          data_rqst_west_out => data_rqst_west_out, data_rqst_north_out => data_rqst_north_out,
          data_rqst_est_out => data_rqst_est_out, data_rqst_south_out => data_rqst_south_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0'; wait for clk_period/2;
		clk <= '1'; wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- Reset the router
      reset <= '1'; wait for 20 ns; 
      reset <= '0'; wait for 20 ns;

      -- Packet 1: From West, Destination X=3, Y=2 (Needs to go East)
      -- Format: [X_dest(2 bits) & Y_dest(2 bits) & Data...]
      data_bus_west_in <= "11" & "10" & x"12345"; 
      data_rqst_west_in <= '1';
      
      -- Packet 2: From North, Destination X=3, Y=2 (Needs to go East)
      data_bus_north_in <= "11" & "10" & x"ABCDE";
      data_rqst_north_in <= '1';
      
      -- Wait for a few clock cycles to see arbitration
      wait for 50 ns;
      
      -- Clear requests
      data_rqst_west_in <= '0';
      data_rqst_north_in <= '0';
      
      wait;
   end process;

END;