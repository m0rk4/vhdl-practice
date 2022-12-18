----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:58 12/18/2022 
-- Design Name: 
-- Module Name:    ftc_based_on_fdce - Behavioral 
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

entity ftc_based_on_fdce is
	port(
		CLR, T, CLK: in std_logic;
		Q: out std_logic);
end ftc_based_on_fdce;

architecture Behavioral of ftc_based_on_fdce is
	signal q_t: std_logic;
begin
	main: process(CLR, T, CLK)
	begin
		if (CLR = '1') then
			q_t <= '0';
		elsif (T = '1') then
			if (rising_edge(CLK)) then
				q_t <= not q_t;
			end if;
		end if;
	end process;
	
	Q <= q_t;
end Behavioral;

