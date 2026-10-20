library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ring_counter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end ring_counter;

architecture Behavioral of ring_counter is
    -- Internal signal for the shift register
    signal shift_reg : std_logic_vector(3 downto 0);
begin

    process(CLK, RST)
    begin
        if RST = '1' then
            -- Initialize with a single '1'
            shift_reg <= "1000"; 
            
        elsif rising_edge(CLK) then
            -- Shift left and feed the MSB back into the LSB
            shift_reg <= shift_reg(2 downto 0) & shift_reg(3);
        end if;
    end process;

    -- Assign internal signal to output
    Q <= shift_reg;

end Behavioral;

