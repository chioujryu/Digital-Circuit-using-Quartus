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
-- Generated on "05/10/2022 16:47:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Encoder3_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Encoder3_8_vhd_vec_tst IS
END Encoder3_8_vhd_vec_tst;
ARCHITECTURE Encoder3_8_arch OF Encoder3_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Encoder3_8
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	EN : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Encoder3_8
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	EN => EN,
	Y => Y
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(7) <= '0';
		WAIT FOR 70400 ps;
		A(7) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
	WAIT FOR 400 ps;
	A(6) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 12
	LOOP
		A(6) <= '0';
		WAIT FOR 70400 ps;
		A(6) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
	WAIT FOR 10400 ps;
	A(5) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 12
	LOOP
		A(5) <= '0';
		WAIT FOR 70400 ps;
		A(5) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 20400 ps;
	A(4) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 12
	LOOP
		A(4) <= '0';
		WAIT FOR 70400 ps;
		A(4) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 30400 ps;
	A(3) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 12
	LOOP
		A(3) <= '0';
		WAIT FOR 70400 ps;
		A(3) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 40400 ps;
	A(2) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 11
	LOOP
		A(2) <= '0';
		WAIT FOR 70400 ps;
		A(2) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 50400 ps;
	A(1) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 11
	LOOP
		A(1) <= '0';
		WAIT FOR 70400 ps;
		A(1) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 60400 ps;
	A(0) <= '1';
	WAIT FOR 9600 ps;
	FOR i IN 1 TO 11
	LOOP
		A(0) <= '0';
		WAIT FOR 70400 ps;
		A(0) <= '1';
		WAIT FOR 9600 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
	WAIT FOR 70000 ps;
	FOR i IN 1 TO 5
	LOOP
		EN <= '0';
		WAIT FOR 80000 ps;
		EN <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	EN <= '0';
	WAIT FOR 80000 ps;
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;
END Encoder3_8_arch;
