library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_5in_8out is
    Port (
        BIN      : in  STD_LOGIC_VECTOR(4 downto 0); -- 5-bit binary input
        BCD_OUT  : out STD_LOGIC_VECTOR(7 downto 0)  -- 8-bit BCD output (two 4-bit digits)
    );
end BCD_5in_8out;

architecture Behavioral of BCD_5in_8out is
    signal TEMP       : INTEGER range 0 to 31; -- Temporary integer to hold binary value
    signal TENS, ONES : INTEGER range 0 to 9;  -- Tens and ones place for BCD
begin
    -- Convert 5-bit binary input to integer
    TEMP <= CONV_INTEGER(BIN);

    -- Calculate BCD digits
    process(TEMP)
    begin
        TENS <= TEMP / 10;         -- Tens place
        ONES <= TEMP mod 10;       -- Ones place
    end process;

    -- Assign BCD output
    BCD_OUT(7 downto 4) <= CONV_STD_LOGIC_VECTOR(TENS, 4); -- 4 bits for tens place
    BCD_OUT(3 downto 0) <= CONV_STD_LOGIC_VECTOR(ONES, 4); -- 4 bits for ones place

end Behavioral;
