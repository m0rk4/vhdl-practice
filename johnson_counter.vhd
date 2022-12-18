----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:17 12/18/2022 
-- Design Name: 
-- Module Name:    paral_in_ser_out - Behavioral 
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

entity johnson_counter is
	generic( n: integer := 4);
	port(
		CLK: in std_logic;
		RST: in std_logic;
		-- 0 - parallel load
		-- 1 - shift
		LS: in std_logic;
		Pin: in std_logic_vector(0 to n - 1);
		Pout: out std_logic
	);
end johnson_counter;

architecture Behavioral of johnson_counter is
	-- register
	signal sreg: std_logic_vector(0 to n - 1);
	-- shina dannih
	signal sdat: std_logic_vector(0 to n - 1);
begin
	main: process(RST, CLK, sdat)
	begin
		if RST = '1' then
			sreg <= (others => '0');
		elsif rising_edge(CLK) then
			sreg <= sdat;
		end if;
	end process;
	
	data: process(LS, Pin, sreg)
	begin
		if LS = '0' then
			-- parallel load
			sdat <= Pin;
		else
		-- shift
			sdat <= not(sreg(n - 1)) & sreg( 0 to n - 2);
		end if;
	end process;
	
	-- parallel code out
	Pout <= sdat;
end Behavioral;

