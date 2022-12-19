----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:15:55 12/20/2022 
-- Design Name: 
-- Module Name:    binary_counter_advanced - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

entity binary_counter_advanced is
	generic(n: integer := 3);
	port(
		CLK, RST: in std_logic;
		OVF: out std_logic;
		OP: out std_logic_vector(n - 1 downto 0));
end binary_counter_advanced;

architecture Behavioral of binary_counter_advanced is
	signal current_state, next_state: std_logic_vector(n downto 0);
	signal fop: std_logic_vector(n - 1 downto 0);
	signal overfl: std_logic;
begin
	main: process(CLK, RST, next_state, overfl)
	begin
		if RST = '1' then
			current_state <= (others => '0');
		elsif overfl = '0' then
			if rising_edge(CLK) then
				current_state <= next_state;
			end if;
		end if;
	end process;

	nextt: process(current_state, overfl)
	begin
		if overfl = '0' then
			next_state <= current_state + 1;
		else
			next_state <= current_state;
		end if;
	end process;
	
	overr: process(current_state) 
	begin 
		overfl <= current_state(n);
	end process;
	
	otpt: process(current_state)
	begin
		fop <= current_state(n - 1 downto 0);
	end process;
	
	OP <= fop;
	OVF <= overfl;
end Behavioral;

