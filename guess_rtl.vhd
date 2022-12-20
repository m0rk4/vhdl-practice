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

entity guess_rtl is
	port (
		a, b, d: in std_logic;
		c: out std_logic
	);
end guess_rtl;

architecture Behavioral of guess_rtl is
	signal c_t: std_logic;
begin
	main: process(a, b, d)
	begin
		if a = '1' then
			if b = '0' then
				c_t <= d;
			end if;
		end if;
	end process;
	
	c <= c_t;
end Behavioral;

