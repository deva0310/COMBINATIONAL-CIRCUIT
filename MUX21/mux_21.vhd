----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 23:30:28
-- Design Name: 
-- Module Name: mux_21 - Behavioral
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

entity mux_21 is
Port ( 
a,b,sel : in std_logic;
c       : out std_logic
);
end mux_21;

architecture Behavioral of mux_21 is

begin
process(a,b,sel)
begin
if(sel ='1') then
  c <= a;
else 
 c<=b;
 end if;
  
end process;

end Behavioral;
