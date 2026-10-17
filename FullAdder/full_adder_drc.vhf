--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : full_adder_drc.vhf
-- /___/   /\     Timestamp : 10/16/2026 23:28:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl full_adder_drc.vhf -w /home/ise/FullAdder/full_adder.sch
--Design Name: full_adder
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity full_adder is
   port ( A     : in    std_logic; 
          B     : in    std_logic; 
          C_in  : in    std_logic; 
          C_out : out   std_logic; 
          S     : out   std_logic);
end full_adder;

architecture BEHAVIORAL of full_adder is
   attribute BOX_TYPE   : string ;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_8);
   
   XLXI_2 : AND2
      port map (I0=>C_in,
                I1=>A,
                O=>XLXN_9);
   
   XLXI_3 : AND2
      port map (I0=>C_in,
                I1=>B,
                O=>XLXN_11);
   
   XLXI_4 : XOR3
      port map (I0=>C_in,
                I1=>B,
                I2=>A,
                O=>S);
   
   XLXI_5 : OR3
      port map (I0=>XLXN_11,
                I1=>XLXN_9,
                I2=>XLXN_8,
                O=>C_out);
   
end BEHAVIORAL;


