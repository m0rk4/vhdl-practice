----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:28 12/18/2022 
-- Design Name: 
-- Module Name:    lfsr_n_external - Behavioral 
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

entity lfsr_n_external is
	generic(alpha: std_logic_vector := "11001");
	port(
		CLK, RST: in std_logic;
		Pout: out std_logic);
end lfsr_n_external;

architecture Behavioral of lfsr_n_external is
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
	begin
		for i in alpha'high - 1 downto 1 loop
			if alpha(i) = '1' then
				sdat(i) <= sreg(i - 1) xor sreg(alpha'high - 1);
			else 
				sdat(i) <= sreg(i - 1);
			end if;
		end loop;
		sdat(0) <= sreg(alpha'high - 1);
	end process;
	
	Pout <= sreg;
end Behavioral;

