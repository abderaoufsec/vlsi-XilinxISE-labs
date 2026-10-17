-- Vhdl test bench created from schematic /home/ise/FullAdder/full_adder.sch - Fri Oct 16 23:31:58 2026
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY full_adder_full_adder_sch_tb IS
END full_adder_full_adder_sch_tb;
ARCHITECTURE behavioral OF full_adder_full_adder_sch_tb IS 

   COMPONENT full_adder
   PORT( A	:	IN	STD_LOGIC; 
          C_in	:	IN	STD_LOGIC; 
          B	:	IN	STD_LOGIC; 
          S	:	OUT	STD_LOGIC; 
          C_out	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL A	:	STD_LOGIC;
   SIGNAL C_in	:	STD_LOGIC;
   SIGNAL B	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC;
   SIGNAL C_out	:	STD_LOGIC;

BEGIN

   UUT: full_adder PORT MAP(
		A => A, 
		C_out => C_out, 
		B => B, 
		S => S, 
		C_in => C_in
   );

-- *** Test Bench - User Defined Section ***
   Atb : PROCESS
   BEGIN
	A <= '0';WAIT for 50ns;
     	A <= '1';WAIT for 50ns;
   END PROCESS;

   Btb : PROCESS
   BEGIN
	B <= '0';WAIT for 100ns;
     	B <= '1';WAIT for 100ns;
   END PROCESS;

   C_intb : PROCESS 
   BEGIN
	C_in <= '0';WAIT for 200ns;
     	C_in <= '1';WAIT for 200ns;
   END PROCESS;
END;
