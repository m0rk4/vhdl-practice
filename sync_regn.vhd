----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:38 12/18/2022 
-- Design Name: 
-- Module Name:    sync_regn - Behavioral 
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

entity sync_regn is
	generic(INITREG: std_logic_vector := "1000");
	port(
		Din: in std_logic_vector(INITREG'range);
		EN, INIT, CLK, OE: in std_logic;
		Dout: out std_logic_vector(INITREG'range));
end sync_regn;

architecture Behavioral of sync_regn is
	signal reg: std_logic_vector(INITREG'range);
	constant ALLZ: std_logic_vector(INITREG'range) := (others => 'Z');
begin
	main: process(Din, EN, INIT, CLK)
	begin
		if INIT = '1' then
			reg <= INITREG;
		elsif EN = '1' then
			if rising_edge(CLK) then
				reg <= Din;
			end if;
		end if;
	end process;
	
	Dout <= reg when OE = '0' else 'Z';
end Behavioral;

