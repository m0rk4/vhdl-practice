----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:40 12/18/2022 
-- Design Name: 
-- Module Name:    freq_div - Behavioral 
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

entity freq_div is
	generic(N: integer := 3);
	port(
		RST, CLK: in std_logic;
		O: out std_logic);
end freq_div;

architecture Behavioral of freq_div is
	signal temp: integer := 0;
begin
	main: process(RST, CLK)
	begin
		if RST = '1' then
			temp <= 0;
		elsif rising_edge(CLK) then
			if temp = N - 1 then
				temp <= 0;
			else 
				temp <= temp + 1;
			end if;
		end if;
	end process;

	O <= '1' when temp = N - 1 else '0';
end Behavioral;

