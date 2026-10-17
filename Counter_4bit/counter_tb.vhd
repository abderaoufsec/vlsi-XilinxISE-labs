--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:07:49 10/17/2026
-- Design Name:   
-- Module Name:   /home/ise/Counter_4bit/counter_tb.vhd
-- Project Name:  Counter_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_4bit_structural
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter_tb IS
END counter_tb;
 
ARCHITECTURE behavior OF counter_tb IS
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT counter_4bit -- Change this if you are testing the structural one
    PORT(
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	    --Inputs
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: counter_4bit PORT MAP (
          CLK => CLK,
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
	
   -- Stimulus process (No stimulus needed, clock does the work)
   stim_proc: process
   begin		
      -- Wait for a few clock cycles to see the counter roll over
      wait for 400 ns;
      wait;
   end process;

END;