----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:17 12/18/2022 
-- Design Name: 
-- Module Name:    paral_in_ser_out - Behavioral 
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

entity one_hot is
	generic( n: integer := 4);
	port(
		CLK: in std_logic;
		RST: in std_logic;
		-- parallel out
		Pout: out std_logic
	);
end one_hot;

architecture Behavioral of one_hot is
	-- register
	signal sreg: std_logic_vector(0 to n - 1);
	-- shina dannih
	signal sdat: std_logic_vector(0 to n - 1);
begin
	main: process(RST, CLK, sdat)
	begin
		if RST = '1' then
			sreg(0) <= '1';
			sreg(1 to n - 1) <= (others => '0');
		elsif rising_edge(CLK) then
			sreg <= sdat;
		end if;
	end process;
	
	data: process(sreg)
	begin
		sdat <= sreg(n - 1) & sreg(0 to n - 2);
	end process;
	
	-- p
	Pout <= sdat;
end Behavioral;

