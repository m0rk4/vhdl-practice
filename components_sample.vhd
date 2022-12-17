----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:16:14 12/17/2022 
-- Design Name: 
-- Module Name:    components_sample - Behavioral 
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

entity and_n is
	generic(N: integer := 5);
	port(
		A: in std_logic_vector(0 to N - 1);
		Z: out std_logic);
end and_n;

architecture Behavioral of and_n is
	signal X: std_logic_vector(0 to N - 2);
	component AND2 
		port(
		I0, I1: in std_logic;
		O: out std_logic);
	end component;
begin
	U1: AND2 port map(A(0), A(1), X(0));
	ANDGRP: for j in 0 to N - 3 generate
		U2: AND2 port map(X(j), A(j + 2), X(j+1));
	end generate;
	Z <= X(3);
end Behavioral;

