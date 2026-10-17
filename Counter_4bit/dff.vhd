----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:20 10/17/2026 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end dff;

architecture Behavioral of dff is
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            Q <= D;
        end if;
    end process;
end Behavioral;

