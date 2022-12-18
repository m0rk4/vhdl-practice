----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:21 12/18/2022 
-- Design Name: 
-- Module Name:    d-latch - Behavioral 
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

entity d_latch is
	port(
		D, E: in std_logic;
		Q, nQ: out std_logic);
end d_latch;

architecture Behavioral of d_latch is
	signal o_t: std_logic;
begin
	main: process(D, E)
	begin
		if (E = '1') then
			o_t <= D;
		end if;
	end process;
	Q <= o_t;
	nQ <= not o_t;
end Behavioral;

