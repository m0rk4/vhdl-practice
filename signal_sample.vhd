----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:01 12/17/2022 
-- Design Name: 
-- Module Name:    signal_sample - Behavioral 
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

entity signal_sample is
	port (
		A, B, C: in std_logic;
		Z1, Z2: out std_logic);
end signal_sample;

architecture Behavioral of signal_sample is
	-- Wire
	signal X: std_logic;
begin
	-- 			X
	-- A and B -X- X or C => Z1
	--          X
	X <= A and B;
	Z1 <= C and X;
end Behavioral;