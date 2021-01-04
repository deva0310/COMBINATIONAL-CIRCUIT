----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 23:16:59
-- Design Name: 
-- Module Name: behavioural_model_xor - Behavioral
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

entity behavioural_model_xor is
Port (
a,b : in std_logic;
c   : out std_logic
 );
end behavioural_model_xor;

architecture Behavioral of behavioural_model_xor is
signal temp : std_logic := '0';
begin
process(a,b)begin
temp <= a xor b;
end process;
c <= temp;

end Behavioral;
