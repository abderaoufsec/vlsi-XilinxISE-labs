--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:34:58 10/17/2026
-- Design Name:   
-- Module Name:   /home/ise/ALU/alu_4bit_tb.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_4bit
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
 
ENTITY alu_4bit_tb IS
END alu_4bit_tb;

ARCHITECTURE behavior OF alu_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT alu_4bit
    PORT(
         INP_A : IN  std_logic_vector(3 downto 0);
         INP_B : IN  std_logic_vector(3 downto 0);
         SEL : IN  std_logic_vector(3 downto 0);
         OUT_ALU : OUT  std_logic_vector(3 downto 0);
         OVERFLOW : OUT  std_logic
        );
    END COMPONENT;
	 
   --Inputs
   signal INP_A : std_logic_vector(3 downto 0) := (others => '0');
   signal INP_B : std_logic_vector(3 downto 0) := (others => '0');
   signal SEL : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal OUT_ALU : std_logic_vector(3 downto 0);
   signal OVERFLOW : std_logic;
	
	BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_4bit PORT MAP (
          INP_A => INP_A,
          INP_B => INP_B,
          SEL => SEL,
          OUT_ALU => OUT_ALU,
          OVERFLOW => OVERFLOW
        );
		  
		  
   -- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
       -- Test Case 1: Addition (A=5, B=3)
       INP_A <= "0101"; INP_B <= "0011"; SEL <= "0000"; WAIT FOR 20 ns;
       
       -- Test Case 2: Subtraction (A=10, B=4)
       INP_A <= "1010"; INP_B <= "0100"; SEL <= "0001"; WAIT FOR 20 ns;
		 
       -- Test Case 3: A + 1 (A=7)
       INP_A <= "0111"; SEL <= "0010"; WAIT FOR 20 ns;
       
       -- Test Case 4: A - 1 (A=2)
       INP_A <= "0010"; SEL <= "0011"; WAIT FOR 20 ns;
       
       -- Test Case 5: A AND B (A=12, B=10)
       INP_A <= "1100"; INP_B <= "1010"; SEL <= "0100"; WAIT FOR 20 ns;
		 
       -- Test Case 6: A OR B (A=5, B=3)
       INP_A <= "0101"; INP_B <= "0011"; SEL <= "0101"; WAIT FOR 20 ns;
       
       -- Test Case 7: NOT A (A=5)
       INP_A <= "0101"; SEL <= "0110"; WAIT FOR 20 ns;
       
       -- Test Case 8: A XOR B (A=12, B=10)
       INP_A <= "1100"; INP_B <= "1010"; SEL <= "0111"; WAIT FOR 20 ns;
		 
       WAIT; -- End simulation
   END PROCESS;
   -- *** End Test Bench - User Defined Section ***

END;
