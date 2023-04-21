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
-- Generated on "05/10/2022 16:52:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX8_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX8_1_vhd_vec_tst IS
END MUX8_1_vhd_vec_tst;
ARCHITECTURE MUX8_1_arch OF MUX8_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Y : STD_LOGIC;
COMPONENT MUX8_1
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MUX8_1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	S => S,
	Y => Y
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		A(7) <= '0';
		WAIT FOR 64000 ps;
		A(7) <= '1';
		WAIT FOR 64000 ps;
	END LOOP;
	A(7) <= '0';
	WAIT FOR 64000 ps;
	A(7) <= '1';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	FOR i IN 1 TO 15
	LOOP
		A(6) <= '0';
		WAIT FOR 32000 ps;
		A(6) <= '1';
		WAIT FOR 32000 ps;
	END LOOP;
	A(6) <= '0';
	WAIT FOR 32000 ps;
	A(6) <= '1';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	FOR i IN 1 TO 31
	LOOP
		A(5) <= '0';
		WAIT FOR 16000 ps;
		A(5) <= '1';
		WAIT FOR 16000 ps;
	END LOOP;
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	FOR i IN 1 TO 62
	LOOP
		A(4) <= '0';
		WAIT FOR 8000 ps;
		A(4) <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
LOOP
	A(3) <= '0';
	WAIT FOR 4000 ps;
	A(3) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 2000 ps;
	A(2) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 1000 ps;
	A(1) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 500 ps;
	A(0) <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		S(2) <= '0';
		WAIT FOR 200000 ps;
		S(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
LOOP
	S(1) <= '0';
	WAIT FOR 100000 ps;
	S(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 50000 ps;
	S(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END MUX8_1_arch;
