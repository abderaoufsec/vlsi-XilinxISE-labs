----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:53:09 10/17/2026 
-- Design Name: 
-- Module Name:    counter_4bit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL; -- This library allows us to use unsigned types

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_4bit is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end counter_4bit;

architecture Behavioral of counter_4bit is
    -- Internal signal to hold the count value
    signal count_int : unsigned(3 downto 0) := (others => '0');
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            -- Increment the counter. It automatically rolls over from 15 to 0.
            count_int <= count_int + 1;
        end if;
    end process;
	 
    -- Assign the internal count to the output port
    Q <= std_logic_vector(count_int);

end Behavioral;

