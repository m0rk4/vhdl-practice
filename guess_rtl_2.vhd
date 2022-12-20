----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:49:29 12/20/2022 
-- Design Name: 
-- Module Name:    guess_rtl - Behavioral 
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

entity guess_rtl_2 is
	port (
		a: in std_logic;
		b, c: inout std_logic
	);
end guess_rtl_2;

architecture Behavioral of guess_rtl_2 is
begin
	main: process(a, b, c)
	begin
		if a = '1' then
			b <= c;
		else
			c <= b;
		end if;
	end process;
end Behavioral;

