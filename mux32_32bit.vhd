----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:36:27 12/20/2022 
-- Design Name: 
-- Module Name:    mux32_32bit - Behavioral 
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

entity mux32_32bit is
	port(
		IN1: in std_logic_vector(31 downto 0);
		IN2: in std_logic_vector(31 downto 0);
		IN3: in std_logic_vector(31 downto 0);
		IN4: in std_logic_vector(31 downto 0);
		IN5: in std_logic_vector(31 downto 0);
		IN6: in std_logic_vector(31 downto 0);
		IN7: in std_logic_vector(31 downto 0);
		IN8: in std_logic_vector(31 downto 0);
		IN9: in std_logic_vector(31 downto 0);
		IN10: in std_logic_vector(31 downto 0);
		IN11: in std_logic_vector(31 downto 0);
		IN12: in std_logic_vector(31 downto 0);
		IN13: in std_logic_vector(31 downto 0);
		IN14: in std_logic_vector(31 downto 0);
		IN15: in std_logic_vector(31 downto 0);
		IN16: in std_logic_vector(31 downto 0);
		IN17: in std_logic_vector(31 downto 0);
		IN18: in std_logic_vector(31 downto 0);
		IN19: in std_logic_vector(31 downto 0);
		IN20: in std_logic_vector(31 downto 0);
		IN21: in std_logic_vector(31 downto 0);
		IN22: in std_logic_vector(31 downto 0);
		IN23: in std_logic_vector(31 downto 0);
		IN24: in std_logic_vector(31 downto 0);
		IN25: in std_logic_vector(31 downto 0);
		IN26: in std_logic_vector(31 downto 0);
		IN27: in std_logic_vector(31 downto 0);
		IN28: in std_logic_vector(31 downto 0);
		IN29: in std_logic_vector(31 downto 0);
		IN30: in std_logic_vector(31 downto 0);
		IN31: in std_logic_vector(31 downto 0);
		IN32: in std_logic_vector(31 downto 0);
		S: in std_logic_vector(4 downto 0);
		OT: out std_logic_vector(31 downto 0));
end mux32_32bit;

architecture Behavioral of mux32_32bit is
	subtype tword is std_logic_vector(31 downto 0);
	type tword_arr is array (0 to 31) of tword;
	
	signal res: tword;
begin
	main: process(S, IN1, IN2, IN3, IN4, IN5, IN6, IN7, IN8,
		IN9, IN10, IN11, IN12, IN13, IN14, IN15, IN16,
		IN17, IN18, IN19, IN20, IN21, IN22, IN23, IN24,
		IN25, IN26, IN27, IN28, IN29, IN30, IN31, IN32)
		variable in_arr: tword_arr;
	begin
		in_arr := (
			IN1, IN2, IN3, IN4, IN5, IN6, IN7, IN8,
			IN9, IN10, IN11, IN12, IN13, IN14, IN15, IN16,
			IN17, IN18, IN19, IN20, IN21, IN22, IN23, IN24,
			IN25, IN26, IN27, IN28, IN29, IN30, IN31, IN32
		);
		res <= in_arr(CONV_INTEGER(S));
	end process;
	OT <= res;
end Behavioral;

