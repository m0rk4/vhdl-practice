----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:40 12/17/2022 
-- Design Name: 
-- Module Name:    xor3_beh - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor3_beh is
	port(
		A, B, C: in std_logic;
		F: out std_logic);
end xor3_beh;

architecture Behavioral of xor3_beh is
begin
	main: process(A, B, C)
	variable abc: std_logic_vector(0 to 2);
	begin
		abc := A & B & C;
		case abc is
			when "001" | "010" | "100" | "111" => 
								F <= '1';
			when others => F <= '0';
		end case;
	end process;
end Behavioral;

