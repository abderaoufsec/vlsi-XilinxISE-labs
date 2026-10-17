----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:00:20 10/17/2026 
-- Design Name: 
-- Module Name:    counter_4bit_structural - Behavioral 
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

entity counter_4bit_structural is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_4bit_structural;

architecture Structural of counter_4bit_structural is
    -- Component declaration for the D Flip-Flop
    COMPONENT dff
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;

    -- Internal signals for the Q outputs and D inputs
    signal Q_int : std_logic_vector(3 downto 0);
    signal D_int : std_logic_vector(3 downto 0);

begin


    -- Next State Logic (Combinational)
    D_int(0) <= not Q_int(0);
    D_int(1) <= Q_int(1) xor Q_int(0);
    D_int(2) <= Q_int(2) xor (Q_int(0) and Q_int(1));
    D_int(3) <= Q_int(3) xor (Q_int(0) and Q_int(1) and Q_int(2));
	 
	     -- Instantiate 4 D Flip-Flops
    FF0: dff PORT MAP (D => D_int(0), CLK => CLK, Q => Q_int(0));
    FF1: dff PORT MAP (D => D_int(1), CLK => CLK, Q => Q_int(1));
    FF2: dff PORT MAP (D => D_int(2), CLK => CLK, Q => Q_int(2));
    FF3: dff PORT MAP (D => D_int(3), CLK => CLK, Q => Q_int(3));

    -- Connect internal Q signals to the output port
    Q <= Q_int;

end Structural;

