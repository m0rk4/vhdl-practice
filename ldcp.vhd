----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:18 12/18/2022 
-- Design Name: 
-- Module Name:    ldcp - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_ldcp is
	port(
		CLR, PRE, G, D: in std_logic;
		Q: out std_logic);
end my_ldcp;

architecture Behavioral of my_ldcp is
	signal q_t: std_logic;
begin
	main: process(CLR, PRE, G, D)
	begin
		if (CLR = '1') then
			q_t <= '0';
		elsif (PRE = '1') then
			q_t <= '1';
		elsif (G = '1') then
			q_t <= D;
		end if;
	end process;
	
	Q <= q_t;
end Behavioral;

