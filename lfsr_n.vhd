----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:53 12/18/2022 
-- Design Name: 
-- Module Name:    lfsr_n - Behavioral 
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

entity lfsr_n is
	-- 1 + x + x^4
	generic(alpha: std_logic_vector := "11001");
	port(
		CLK, RST: in std_logic;
		Pout: out std_logic_vector(0 to alpha'high - 1));
end lfsr_n;

architecture Behavioral of lfsr_n is
	signal sreg: std_logic_vector(0 to alpha'high - 1);
	signal sdat: std_logic_vector(0 to alpha'high - 1);
begin
	main: process(CLK, RST, sdat)
	begin
		if RST = '1' then
			sreg <= (others => '0');
		elsif rising_edge(CLK) then
			sreg <= sdat;
		end if;
	end process;
	
	data: process(sreg)
		variable newbit: std_logic;
		variable zerostate: std_logic;
	begin
		newbit := '0';
		zerostate := '0';
		
		for i in 0 to alpha'high - 2 loop
			zerostate := zerostate or sreg(i);
			if alpha(i + 1) = '1' then
				newbit := newbit xor sreg(i);
			end if;
		end loop;
		
		-- is 000000000x state
		zerostate := not zerostate;
		newbit:= zerostate xor newbit xor sreg(i + 1);
			
		sdat <= newbit & sreg(0 to alpha'high - 2);
	end process;
	
	Pout <= sreg;
end Behavioral;

