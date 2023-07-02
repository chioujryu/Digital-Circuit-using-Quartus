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
-- Generated on "04/28/2023 02:32:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Counter4B
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter4B_vhd_vec_tst IS
END Counter4B_vhd_vec_tst;
ARCHITECTURE Counter4B_arch OF Counter4B_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CL : STD_LOGIC;
SIGNAL PulseIn : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Counter4B
	PORT (
	CL : IN STD_LOGIC;
	PulseIn : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Counter4B
	PORT MAP (
-- list connections between master ports and signals
	CL => CL,
	PulseIn => PulseIn,
	Q => Q
	);

-- CL
t_prcs_CL: PROCESS
BEGIN
	CL <= '0';
	WAIT FOR 390000 ps;
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
	WAIT FOR 10000 ps;
	PulseIn <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PulseIn;
END Counter4B_arch;
