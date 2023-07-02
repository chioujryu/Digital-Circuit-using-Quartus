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
-- Generated on "05/13/2022 16:22:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SRegister_vhd_vec_tst IS
END SRegister_vhd_vec_tst;
ARCHITECTURE SRegister_arch OF SRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL CL : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Si : STD_LOGIC;
COMPONENT SRegister
	PORT (
	CK : IN STD_LOGIC;
	CL : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Si : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SRegister
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	CL => CL,
	Q => Q,
	Si => Si
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

-- Si
t_prcs_Si: PROCESS
BEGIN
	Si <= '1';
	WAIT FOR 10000 ps;
	Si <= '0';
	WAIT FOR 70000 ps;
	Si <= '1';
	WAIT FOR 10000 ps;
	Si <= '0';
	WAIT FOR 40000 ps;
	Si <= '1';
	WAIT FOR 10000 ps;
	Si <= '0';
WAIT;
END PROCESS t_prcs_Si;

-- CL
t_prcs_CL: PROCESS
BEGIN
	CL <= '0';
	WAIT FOR 110000 ps;
	CL <= '1';
	WAIT FOR 10000 ps;
	CL <= '0';
WAIT;
END PROCESS t_prcs_CL;
END SRegister_arch;
