
-- VHDL Test Bench for 2-Bit Adder
-- Tests ALL 32 possible input combinations
--
-- Inputs:
--   A = A1 A0
--   B = B1 B0
--   C_in = Carry input
--
-- Outputs:
--   S = S1 S0
--   C_out = Final carry

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

ENTITY adder_2bit_adder_2bit_sch_tb IS
END adder_2bit_adder_2bit_sch_tb;

ARCHITECTURE behavioral OF adder_2bit_adder_2bit_sch_tb IS

   COMPONENT adder_2bit
   PORT(
      A0    : IN  STD_LOGIC;
      C_in  : IN  STD_LOGIC;
      B0    : IN  STD_LOGIC;
      A1    : IN  STD_LOGIC;
      B1    : IN  STD_LOGIC;
      S0    : OUT STD_LOGIC;
      S1    : OUT STD_LOGIC;
      C_out : OUT STD_LOGIC
   );
   END COMPONENT;

   -- Input signals
   SIGNAL A0    : STD_LOGIC := '0';
   SIGNAL A1    : STD_LOGIC := '0';
   SIGNAL B0    : STD_LOGIC := '0';
   SIGNAL B1    : STD_LOGIC := '0';
   SIGNAL C_in  : STD_LOGIC := '0';

   -- Output signals
   SIGNAL S0    : STD_LOGIC;
   SIGNAL S1    : STD_LOGIC;
   SIGNAL C_out : STD_LOGIC;

BEGIN

   -- Unit Under Test
   UUT: adder_2bit
   PORT MAP(
      A0    => A0,
      C_in  => C_in,
      B0    => B0,
      A1    => A1,
      B1    => B1,
      S0    => S0,
      S1    => S1,
      C_out => C_out
   );

   ------------------------------------------------------------
   -- TEST PROCESS
   -- Tests all 32 possible combinations
   ------------------------------------------------------------

   tb : PROCESS
   BEGIN

      ---------------------------------------------------------
      -- A = 00
      ---------------------------------------------------------

      -- 00 + 00 + 0 = 000
      A1 <= '0'; A0 <= '0';
      B1 <= '0'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 00 + 00 + 1 = 001
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 00 + 01 + 0 = 001
      B1 <= '0'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 00 + 01 + 1 = 010
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 00 + 10 + 0 = 010
      B1 <= '1'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 00 + 10 + 1 = 011
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 00 + 11 + 0 = 011
      B1 <= '1'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 00 + 11 + 1 = 100
      C_in <= '1';
      WAIT FOR 10 ns;


      ---------------------------------------------------------
      -- A = 01
      ---------------------------------------------------------

      -- 01 + 00 + 0 = 001
      A1 <= '0'; A0 <= '1';
      B1 <= '0'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 01 + 00 + 1 = 010
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 01 + 01 + 0 = 010
      B1 <= '0'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 01 + 01 + 1 = 011
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 01 + 10 + 0 = 011
      B1 <= '1'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 01 + 10 + 1 = 100
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 01 + 11 + 0 = 100
      B1 <= '1'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 01 + 11 + 1 = 101
      C_in <= '1';
      WAIT FOR 10 ns;


      ---------------------------------------------------------
      -- A = 10
      ---------------------------------------------------------

      -- 10 + 00 + 0 = 010
      A1 <= '1'; A0 <= '0';
      B1 <= '0'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 10 + 00 + 1 = 011
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 10 + 01 + 0 = 011
      B1 <= '0'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 10 + 01 + 1 = 100
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 10 + 10 + 0 = 100
      B1 <= '1'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 10 + 10 + 1 = 101
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 10 + 11 + 0 = 101
      B1 <= '1'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 10 + 11 + 1 = 110
      C_in <= '1';
      WAIT FOR 10 ns;


      ---------------------------------------------------------
      -- A = 11
      ---------------------------------------------------------

      -- 11 + 00 + 0 = 011
      A1 <= '1'; A0 <= '1';
      B1 <= '0'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 11 + 00 + 1 = 100
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 11 + 01 + 0 = 100
      B1 <= '0'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 11 + 01 + 1 = 101
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 11 + 10 + 0 = 101
      B1 <= '1'; B0 <= '0';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 11 + 10 + 1 = 110
      C_in <= '1';
      WAIT FOR 10 ns;

      -- 11 + 11 + 0 = 110
      B1 <= '1'; B0 <= '1';
      C_in <= '0';
      WAIT FOR 10 ns;

      -- 11 + 11 + 1 = 111
      C_in <= '1';
      WAIT FOR 10 ns;


      ---------------------------------------------------------
      -- END SIMULATION
      ---------------------------------------------------------

      WAIT;

   END PROCESS;

END behavioral;