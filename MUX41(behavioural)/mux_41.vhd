----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 15:10:09
-- Design Name: 
-- Module Name: mux_41 - Behavioral
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

entity mux_41 is
Port (
a,b,c,d : in std_logic;
sel : in std_logic_vector (1 downto 0);
out_mux : out std_logic

 );
end mux_41;

architecture Behavioral of mux_41 is

begin
process
begin
case(sel) is  
when "00" =>out_mux <= a;
when "01" =>out_mux <= b;
when "10" =>out_mux <= c;
when "11" =>out_mux <= d;
when others => out_mux <= '0';
end case;
end process;


end Behavioral;
