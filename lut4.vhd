----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:46:14 12/18/2022 
-- Design Name: 
-- Module Name:    lut4 - Structural 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mylut4 is
	generic(INIT: std_logic_vector(15 downto 0) := "0000000000000000");
	port(
		I: in std_logic_vector(3 downto 0);
		O: out std_logic);
end mylut4;

architecture Structural of mylut4 is
	component mylut3
	generic(
			N: integer range 1 to 3;
			INIT: std_logic_vector(7 downto 0));
	port(
		IN1: in std_logic_vector(N-1 downto 0);
		OUTPUT: out std_logic);
	end component;
		
	signal x1: std_logic;
	signal x2: std_logic;
begin
	U1: mylut3 
		generic map(3, INIT(15 downto 8))
		port map(I(2 downto 0), x1);
	U2: mylut3
		generic map(3, INIT(7 downto 0))
		port map(I(2 downto 0), x2);
	
	main: process(x1, x2, I)
	begin
		if (I(3) = '0') then
			O <= x1;
		else 
			O <= x2;
		end if;
	end process;
end Structural;
