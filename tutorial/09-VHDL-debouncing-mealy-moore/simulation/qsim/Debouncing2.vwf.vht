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
-- Generated on "05/18/2022 16:40:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Debouncing2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Debouncing2_vhd_vec_tst IS
END Debouncing2_vhd_vec_tst;
ARCHITECTURE Debouncing2_arch OF Debouncing2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL Din : STD_LOGIC;
SIGNAL Dout : STD_LOGIC;
COMPONENT Debouncing2
	PORT (
	CK : IN STD_LOGIC;
	Din : IN STD_LOGIC;
	Dout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Debouncing2
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	Din => Din,
	Dout => Dout
	);

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 5000 ps;
	CK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;

-- Din
t_prcs_Din: PROCESS
BEGIN
	Din <= '0';
	WAIT FOR 30000 ps;
	Din <= '1';
	WAIT FOR 810000 ps;
	Din <= '0';
WAIT;
END PROCESS t_prcs_Din;
END Debouncing2_arch;
