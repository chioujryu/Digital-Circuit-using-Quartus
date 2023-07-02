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
-- Generated on "05/18/2022 18:08:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mealy_EX
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mealy_EX_vhd_vec_tst IS
END Mealy_EX_vhd_vec_tst;
ARCHITECTURE Mealy_EX_arch OF Mealy_EX_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ck : STD_LOGIC;
SIGNAL Input : STD_LOGIC;
SIGNAL Output : STD_LOGIC;
SIGNAL P : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mealy_EX
	PORT (
	Ck : IN STD_LOGIC;
	Input : IN STD_LOGIC;
	Output : OUT STD_LOGIC;
	P : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mealy_EX
	PORT MAP (
-- list connections between master ports and signals
	Ck => Ck,
	Input => Input,
	Output => Output,
	P => P
	);

-- Ck
t_prcs_Ck: PROCESS
BEGIN
LOOP
	Ck <= '0';
	WAIT FOR 50000 ps;
	Ck <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Ck;

-- Input
t_prcs_Input: PROCESS
BEGIN
	Input <= '1';
	WAIT FOR 150000 ps;
	Input <= '0';
	WAIT FOR 50000 ps;
	Input <= '1';
	WAIT FOR 100000 ps;
	Input <= '0';
	WAIT FOR 150000 ps;
	Input <= '1';
	WAIT FOR 50000 ps;
	Input <= '0';
	WAIT FOR 150000 ps;
	Input <= '1';
	WAIT FOR 150000 ps;
	Input <= '0';
	WAIT FOR 50000 ps;
	Input <= '1';
WAIT;
END PROCESS t_prcs_Input;
END Mealy_EX_arch;
