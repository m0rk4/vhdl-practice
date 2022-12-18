----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:14 12/18/2022 
-- Design Name: 
-- Module Name:    binary_counter_with_async_reset - Behavioral 
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

entity binary_counter_with_async_reset is
	generic(n: integer := 8);
	port(
		CLK, CLR, EN: in std_logic;
		Pout: out std_logic_vector(n - 1 downto 0)
	);
end binary_counter_with_async_reset;

architecture Behavioral of binary_counter_with_async_reset is
	signal p_t: std_logic_vector(n - 1 downto 0);
begin
	main: process(CLK, CLR, EN)
	begin
		if CLR = '1' then
			p_t <= (others => '0');
		elsif EN = '1' then
			if rising_edge(CLK) then
				p_t <= p_t + 1;
			end if;
		end if;
	end process;
	
	Pout <= p_t;
end Behavioral;

