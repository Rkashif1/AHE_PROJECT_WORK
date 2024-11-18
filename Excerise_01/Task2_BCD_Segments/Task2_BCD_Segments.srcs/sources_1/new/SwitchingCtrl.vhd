----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2024 01:52:20 PM
-- Design Name: 
-- Module Name: SwitchingCtrl - Behavioral
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

entity SwitchingCtrl is
    Port ( clkIn : in STD_LOGIC;
           CtrlBit : out STD_LOGIC);
end SwitchingCtrl;

architecture Behavioral of SwitchingCtrl is
signal counter : integer range 0 to 99999 := 0;
signal toggle_signal : STD_LOGIC := '0';

begin
     process(clkIn)
    begin
    
        if rising_edge(clkIn) then
                if counter = 99999 then
                -- Toggle CtrlBit based on the init_signal
                if toggle_signal = '0' then
                    CtrlBit <= '0';  -- Assign CtrlBit based on init_signal
                else
                    CtrlBit <= '1';  -- Assign CtrlBit based on init_signal
                end if;
                toggle_signal<= not toggle_signal;
                counter <= 0;  -- Reset counter
            else
                counter <= counter + 1;  -- Increment counter
            end if;
        end if;
    end process;

end Behavioral;
