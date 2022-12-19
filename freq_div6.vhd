----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:43 12/18/2022 
-- Design Name: 
-- Module Name:    freq_div6 - Behavioral 
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

entity freq_div6 is
	port(
		CLK, RST: in std_logic;
		O: out std_logic);
end freq_div6;

architecture Behavioral of freq_div6 is
	signal temp: integer := 0;
	signal rstt: std_logic := '0';
	signal outp: std_logic;
	
	component freq_div
	generic(N: integer := 3);
	port(
		RST, CLK: in std_logic;
		O: out std_logic);
	end component;
begin
	U1: freq_div port map(rstt, CLK, outp);

	main: process(CLK, outp)
	begin
		if RST = '1' then
			temp <= 0;
		elsif rising_edge(outp) then 
			if temp = 1 then
				temp <= 0;
			else 
				temp <= temp + 1;
			end if;
		end if;
	end process;
	
	O <= '1' when temp = 1 else '0';
end Behavioral;

