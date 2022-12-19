----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:42 12/20/2022 
-- Design Name: 
-- Module Name:    binary_counter_updown - Behavioral 
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

entity binary_counter_updown is
	generic(n: integer := 4);
	port(
		CLK, RST, EN, L, UD: in std_logic;
		D: in std_logic_vector(n - 1 downto 0);
		Q: out std_logic_vector(n - 1 downto 0)
	);
end binary_counter_updown;

architecture Behavioral of binary_counter_updown is
	signal counter: std_logic_vector(n - 1 downto 0);
begin
	main: process(CLK, RST, EN, L, UD, D)
	begin
		if RST = '1' then
			counter <= (others => '0');
		elsif rising_edge(CLK) then
			if EN = '1' then
				if L = '1' then
					counter <= D;
				else
					if UP = '0' then
						counter <= counter + 1;
					else 
						counter <= counter - 1;
					end if;
				end if;
			end if;
		end if;
	end process;

	Q <= counter;
end Behavioral;

