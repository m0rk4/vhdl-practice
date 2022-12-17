----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:16 12/17/2022 
-- Design Name: 
-- Module Name:    mux_structural - Structural 
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

entity mux_structural is
	port(
		A, B, S: in std_logic;
		Z: out std_logic);
end mux_structural;

architecture Structural of mux_structural is
	signal sn: std_logic;
	signal asn: std_logic;
	signal bs: std_logic;
	
	component AND2 
		port(
		I0, I1: in std_logic;
		O: out std_logic);
	end component;
	
	component OR2 
		port(
		I0, I1: in std_logic;
		O: out std_logic);
	end component;
	
	component INV 
		port(
		I: in std_logic;
		O: out std_logic);
	end component;
begin
	U1: INV port map(S, sn);
	U2: AND2 port map(A, sn, asn);
	U3: AND2 port map(B, S, bs);
	U4: OR2 port map(asn, bs, Z);
end Structural;

