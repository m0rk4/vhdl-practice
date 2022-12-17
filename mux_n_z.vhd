----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:25:38 12/18/2022 
-- Design Name: 
-- Module Name:    mux_n_z - Behavioral 
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

entity mux_3 is
	port(
		I: in std_logic_vector(0 to 2);
		S: in std_logic_vector(0 to 1);
		O: out std_logic);
end mux_3;

architecture Behavioral of mux_3 is
begin
	main: process(I, S)
	begin
		if (s = "11") then
			O <= 'Z';
		else 
			O <= I(CONV_INTEGER(S));
		end if;
	end process;
end Behavioral;

