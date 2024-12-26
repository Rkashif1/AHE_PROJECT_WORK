----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2024 01:03:20 PM
-- Design Name: 
-- Module Name: SegControl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SegControl is
    Port ( OnesBits : in STD_LOGIC_VECTOR (3 downto 0);
           TensBits : in STD_LOGIC_VECTOR (7 downto 4);
           ControlBit : in STD_LOGIC;
           SegOut : out STD_LOGIC_VECTOR (6 downto 0);
           SegAN : out STD_LOGIC_VECTOR (7 downto 0));
end SegControl;

architecture Behavioral of SegControl is

begin
    process(ControlBit)
    begin
        case ControlBit is
            when '0' =>
                SegAN <= "11111110";
                case OnesBits is
                    when "0000" => SegOut <= "0000001"; -- 0
                    when "0001" => SegOut <= "1001111"; -- 1
                    when "0010" => SegOut <= "0010010"; -- 2
                    when "0011" => SegOut <= "0000110"; -- 3
                    when "0100" => SegOut <= "1001100"; -- 4
                    when "0101" => SegOut <= "0100100"; -- 5
                    when "0110" => SegOut <= "0100000"; -- 6
                    when "0111" => SegOut <= "0001111"; -- 7
                    when "1000" => SegOut <= "0000000"; -- 8
                    when "1001" => SegOut <= "0000100"; -- 9
                    when others => SegOut <= "1111111"; -- Blank (default)
                end case; 
            when '1' =>
                SegAN <= "11111101";
                case TensBits is
                    when "0000" => SegOut <= "0000001"; -- 0
                    when "0001" => SegOut <= "1001111"; -- 1
                    when "0010" => SegOut <= "0010010"; -- 2
                    when "0011" => SegOut <= "0000110"; -- 3
                    when "0100" => SegOut <= "1001100"; -- 4
                    when "0101" => SegOut <= "0100100"; -- 5
                    when "0110" => SegOut <= "0100000"; -- 6
                    when "0111" => SegOut <= "0001111"; -- 7
                    when "1000" => SegOut <= "0000000"; -- 8
                    when "1001" => SegOut <= "0000100"; -- 9
                    when others => SegOut <= "1111111"; -- Blank
                end case;
            
           
        end case;
    end process;

end Behavioral;
