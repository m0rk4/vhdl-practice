----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:18 12/17/2022 
-- Design Name: 
-- Module Name:    xor3_lut_generic - Behavioral 
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

entity mylut3 is
	generic(
			N: integer range 1 to 3 := 3;
			INIT: std_logic_vector(7 downto 0) := "10010110");
	port(
		IN1: in std_logic_vector(N-1 downto 0);
		OUTPUT: out std_logic);
end mylut3;

architecture Behavioral of mylut3 is
begin
	OUTPUT <= INIT(2**N - 1 downto 0)(CONV_INTEGER(IN1));
end Behavioral;

