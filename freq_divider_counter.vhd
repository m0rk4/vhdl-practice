----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:41 12/20/2022 
-- Design Name: 
-- Module Name:    freq_divider_counter - Behavioral 
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

entity freq_divider_counter is
	generic(n: integer := 2);
	port(
		CLK, RST, CE: in std_logic;
		K: in std_logic_vector(n - 1 downto 0);
		OVF: out std_logic;
		Q: out std_logic
	);
end freq_divider_counter;

architecture Behavioral of freq_divider_counter is
	signal counter: std_logic_vector(2**n downto 0);
	signal overflow: std_logic;
begin
	main: process(CLK, RST, CE, K, overflow)
	begin
		if RST = '1' then
			counter <= (others => '0');
		elsif (CE = '1' and overflow = '0') then
			if rising_edge(CLK) then
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	ovf_process: process(counter)
	begin
		overflow <= counter(counter'high);
	end process;
	
	Q <= counter(CONV_INTEGER(K));
	OVF <= overflow;
end Behavioral;

