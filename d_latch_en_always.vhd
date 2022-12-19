----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:48 12/19/2022 
-- Design Name: 
-- Module Name:    d_latch_en_always - Behavioral 
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

entity d_latch_en_always is
	port(
		D: in std_logic;
		O: out std_logic);
end d_latch_en_always;

architecture Behavioral of d_latch_en_always is
	signal temp: std_logic;
begin
	main: process(D)
	begin
		if temp /= D then
			temp <= D;
		end if;
	end process;
	
	O <= temp;
end Behavioral;

