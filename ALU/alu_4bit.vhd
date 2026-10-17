----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:35 10/17/2026 
-- Design Name: 
-- Module Name:    alu_4bit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL; -- Essential for arithmetic on vectors

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_4bit is
    Port ( INP_A : in  STD_LOGIC_VECTOR (3 downto 0);
           INP_B : in  STD_LOGIC_VECTOR (3 downto 0);
           SEL : in  STD_LOGIC_VECTOR (3 downto 0);
           OUT_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
           OVERFLOW : out  STD_LOGIC);
end alu_4bit;

architecture Behavioral of alu_4bit is
    -- We use a 5-bit temporary signal to easily detect overflow
    signal temp_result : unsigned(4 downto 0);
begin
    process(SEL, INP_A, INP_B)
    begin
        -- Default values
        OUT_ALU <= (others => '0');
        OVERFLOW <= '0';
        temp_result <= (others => '0');
		  
        case SEL is
            when "0000" => -- A + B
                temp_result <= unsigned('0' & INP_A) + unsigned('0' & INP_B);
                OUT_ALU <= std_logic_vector(temp_result(3 downto 0));
                OVERFLOW <= temp_result(4); -- Carry out
					 
					 
            when "0001" => -- A - B
                temp_result <= unsigned('0' & INP_A) - unsigned('0' & INP_B);
                OUT_ALU <= std_logic_vector(temp_result(3 downto 0));
                -- In subtraction, "overflow" can mean the result is negative.
                -- The MSB (bit 4) will be '1' if the result is negative.
                OVERFLOW <= temp_result(4);
					 
            when "0010" => -- A + 1
                temp_result <= unsigned('0' & INP_A) + 1;
                OUT_ALU <= std_logic_vector(temp_result(3 downto 0));
                OVERFLOW <= temp_result(4);
					 
            when "0011" => -- A - 1
                temp_result <= unsigned('0' & INP_A) - 1;
                OUT_ALU <= std_logic_vector(temp_result(3 downto 0));
                OVERFLOW <= temp_result(4); -- Negative result flag
					 
            when "0100" => -- A AND B
                OUT_ALU <= INP_A and INP_B;

            when "0101" => -- A OR B
                OUT_ALU <= INP_A or INP_B;
					 
            when "0110" => -- NOT A
                OUT_ALU <= not INP_A;

            when "0111" => -- A XOR B
                OUT_ALU <= INP_A xor INP_B;
					 
            when others =>
                OUT_ALU <= (others => '0');
                OVERFLOW <= '0';
        end case;
    end process;
end Behavioral;