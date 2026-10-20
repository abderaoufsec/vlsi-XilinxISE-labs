LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ring_counter_tb IS
END ring_counter_tb;
 
ARCHITECTURE behavior OF ring_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ring_counter
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ring_counter PORT MAP (
          CLK => CLK,
          RST => RST,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin
      -- 1. Apply Reset to initialize the counter
      RST <= '1';
      wait for 20 ns;	
      RST <= '0';
      
      -- 2. Let the clock run for several cycles to see the '1' shift
      wait for 100 ns;
      
      wait;
   end process;

END;