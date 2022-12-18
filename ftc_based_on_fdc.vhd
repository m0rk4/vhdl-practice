----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:05 12/18/2022 
-- Design Name: 
-- Module Name:    ftc_based_on_fdc - Behavioral 
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

entity ftc_based_on_fdc is
	port(
		CLR, T, CLK: in std_logic;
		Q: out std_logic);
end ftc_based_on_fdc;

architecture Behavioral of ftc_based_on_fdc is
	signal q_t: std_logic;
begin
	main: process(CLR, T, CLK)
	begin
		if CLR = '1' then
			q_t <= '0';
		elsif rising_edge(CLK) then
			q_t <= q_t xor T;
		end if;
	end process;
	
	Q <= q_t;
end Behavioral;

