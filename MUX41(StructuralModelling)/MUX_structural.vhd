----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 17:11:09
-- Design Name: 
-- Module Name: MUX_structural - Behavioral
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

entity MUX_21 is
Port (
a,b,sel : in std_logic;
y       : out std_logic
 );
end MUX_21;

architecture Behavioral of MUX_21 is

begin
process 
begin 
if(sel = '1') then
  y <= a;
else 
  y <= b;
end if;
end process;

end Behavioral;
---------------------------------------------------------------------------end---------------------------
-----------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MUX_41 is
Port (
a,b,c,d : in std_logic;
sel     : in std_logic_vector ( 1 downto 0);
y       : out std_logic
 );
end MUX_41;

architecture Behavioral of MUX_41 is
component
MUX_21 is
Port (
a,b,sel : in std_logic;
y       : out std_logic
 );
end component;
signal t1: std_logic;
signal t2: std_logic;
begin
M1: MUX_21  port map(a=>a,b=>b,sel=>sel(1),y=>t1);
M2: MUX_21  port map(a=>c,b=>d,sel=>sel(1),y=>t2);
M3: MUX_21  port map(a=>t1,b=>t2,sel=>sel(0),y=>y);
end Behavioral;
