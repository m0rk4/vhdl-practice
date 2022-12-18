----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:25:31 12/18/2022 
-- Design Name: 
-- Module Name:    custom_lfsr - Behavioral 
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

entity custom_lfsr is
	generic(n: integer := 128);
	port(
		CLK, RST: in std_logic;
		Pout: out std_logic_vector(0 to n - 1));
end custom_lfsr;

architecture Behavioral of custom_lfsr is
	signal sreg: std_logic_vector(0 to n - 1);
	signal sdat: std_logic_vector(0 to n - 1);
begin
	main: process(RST, CLK, sdat)
	begin
		if RST = '1' then
			sreg <= (others => '0');
		elsif rising_edge(CLK) then
			sreg <= sdat;
		end if;
	end process;
	
	data: process(sreg)
		variable newbit: std_logic;
		variable zerostate: std_logic;
	begin
		-- x^128+x^7+x^2+x+1
		zerostate := '1' when CONV_INTEGER(sreg(0 to n - 2)) = 0 else '0';
		newbit := zerostate xor sreg(0) xor sreg(1) xor sreg(6) xor sreg(127);
		sdat <= newbit & sreg(0 to n - 2);
	end process;
	
	Pout <= sreg;
end Behavioral;

