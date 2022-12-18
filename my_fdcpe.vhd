----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:39 12/18/2022 
-- Design Name: 
-- Module Name:    my_fdcpe - Behavioral 
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

entity my_fdcpe is
	port(
		CLR, PRE, CE, D, CLK: in std_logic;
		Q: out std_logic);
end my_fdcpe;

-- ASYNC!!!
architecture Behavioral of my_fdcpe is
	signal q_t: std_logic;
begin
	main: process(CLR, PRE, CE, D, CLK)
	begin
		if (CLR = '1') then
			q_t <= '0';
		elsif (PRE = '1') then
			q_t <= '1';
		elsif (CE = '1') then
			if (rising_edge(CLK)) then
				q_t <= D;
			end if;
		end if;
	end process;
	
	Q <= q_t;
end Behavioral;

