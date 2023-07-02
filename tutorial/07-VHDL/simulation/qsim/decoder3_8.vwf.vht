-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/10/2022 16:43:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder3_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder3_8_vhd_vec_tst IS
END Decoder3_8_vhd_vec_tst;
ARCHITECTURE Decoder3_8_arch OF Decoder3_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Decoder3_8
	PORT (
	A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	EN : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder3_8
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	EN => EN,
	Y => Y
	);
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(2) <= '0';
		WAIT FOR 40000 ps;
		A(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 20000 ps;
	A(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 10000 ps;
	A(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;

-- EN
t_prcs_EN: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		EN <= '0';
		WAIT FOR 80000 ps;
		EN <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;
END Decoder3_8_arch;
