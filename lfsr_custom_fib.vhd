----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:29 12/20/2022 
-- Design Name: 
-- Module Name:    lfsr_custom_fib - Behavioral 
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

entity lfsr_custom_fib is
	port(
		CLK, RST: in std_logic;
		Pout: out std_logic_vector(0 to 7)
	);
end lfsr_custom_fib;

-- x8+x4+x3+x2+1
architecture Behavioral of lfsr_custom_fib is
	signal res: std_logic_vector(0 to 7) := (others => '0');
begin
	main: process(CLK, RST)
		variable zero_state: std_logic;
	begin
		if RST = '1' then
			res <= (others => '0');
		elsif rising_edge(CLK) then
			zero_state := 0;
			for i in 0 to 6 loop
				zero_state := zerostate or res(i);
			end loop;
			zero_state := not zero_state;
			res <= (zero_state xor res(1) xor res(2) xor res(3) xor res(7)) & res(0 to 6);
		end if;
	end process;
	
	Pout <= res;
end Behavioral;

