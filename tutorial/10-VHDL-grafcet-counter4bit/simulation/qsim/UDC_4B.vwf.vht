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
-- Generated on "05/13/2022 14:59:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UDC_4B
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UDC_4B_vhd_vec_tst IS
END UDC_4B_vhd_vec_tst;
ARCHITECTURE UDC_4B_arch OF UDC_4B_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CL : STD_LOGIC;
SIGNAL PulseIn : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL UD : STD_LOGIC;
COMPONENT UDC_4B
	PORT (
	CL : IN STD_LOGIC;
	PulseIn : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	UD : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UDC_4B
	PORT MAP (
-- list connections between master ports and signals
	CL => CL,
	PulseIn => PulseIn,
	Q => Q,
	UD => UD
	);

-- CL
t_prcs_CL: PROCESS
BEGIN
	CL <= '0';
	WAIT FOR 370000 ps;
	CL <= '1';
	WAIT FOR 10000 ps;
	CL <= '0';
WAIT;
END PROCESS t_prcs_CL;

-- PulseIn
t_prcs_PulseIn: PROCESS
BEGIN
LOOP
	PulseIn <= '0';
	WAIT FOR 5000 ps;
	PulseIn <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PulseIn;

-- UD
t_prcs_UD: PROCESS
BEGIN
	UD <= '0';
	WAIT FOR 160000 ps;
	UD <= '1';
	WAIT FOR 270000 ps;
	UD <= '0';
WAIT;
END PROCESS t_prcs_UD;
END UDC_4B_arch;
