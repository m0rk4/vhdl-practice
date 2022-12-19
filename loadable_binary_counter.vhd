----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:14:58 12/20/2022 
-- Design Name: 
-- Module Name:    loadable_binary_counter - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity loadable_binary_counter is
	port(
		D: in std_logic_vector(7 downto 0);
		LD, CE, CLK, RST: in std_logic;
		Q: out std_logic_vector(7 downto 0)
	);
end loadable_binary_counter;

architecture Behavioral of loadable_binary_counter is
	signal q_t: std_logic_vector(7 downto 0);
begin
	main: process(CLK, RST, CE, LD, D)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				q_t <= (others => '0');
			elsif CE = '1' then
				if LD = '1' then
					q_t <= D;
				else 
					q_t <= q_t + 1;
				end if;
			end if;
		end if;
	end process;

	Q <= q_t;
end Behavioral;

