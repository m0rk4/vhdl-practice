----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:43:55 12/18/2022 
-- Design Name: 
-- Module Name:    ftc_on_fdc_tristable - Behavioral 
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

entity ftc_on_fdc_tristable is
	port(
		CLR, CLK, T, OE: in std_logic;
		Q: out std_logic);
end ftc_on_fdc_tristable;

architecture Behavioral of ftc_on_fdc_tristable is
	signal s: std_logic;
	signal tx: std_logic;
begin
	tx <= s xor T;
	
	main: process(CLR, CLK, tx)
	begin
		if CLR = '1' then
			s <= '0';
		elsif rising_edge(CLK) then
			s <= tx;
		end if;
	end process;

	Q <= s when OE = '0' else 'Z';
end Behavioral;

