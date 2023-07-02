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
-- Generated on "07/02/2023 01:47:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pwm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm_vhd_vec_tst IS
END pwm_vhd_vec_tst;
ARCHITECTURE pwm_arch OF pwm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL offt_i : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL period_i : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwm_out : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT pwm
	PORT (
	clk : IN STD_LOGIC;
	cnt_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	offt_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	period_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwm_out : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwm
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt_out => cnt_out,
	offt_i => offt_i,
	period_i => period_i,
	pwm_out => pwm_out,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 40000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
-- offt_i[7]
t_prcs_offt_i_7: PROCESS
BEGIN
	offt_i(7) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_7;
-- offt_i[6]
t_prcs_offt_i_6: PROCESS
BEGIN
	offt_i(6) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_6;
-- offt_i[5]
t_prcs_offt_i_5: PROCESS
BEGIN
	offt_i(5) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_5;
-- offt_i[4]
t_prcs_offt_i_4: PROCESS
BEGIN
	offt_i(4) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_4;
-- offt_i[3]
t_prcs_offt_i_3: PROCESS
BEGIN
	offt_i(3) <= '1';
WAIT;
END PROCESS t_prcs_offt_i_3;
-- offt_i[2]
t_prcs_offt_i_2: PROCESS
BEGIN
	offt_i(2) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_2;
-- offt_i[1]
t_prcs_offt_i_1: PROCESS
BEGIN
	offt_i(1) <= '1';
WAIT;
END PROCESS t_prcs_offt_i_1;
-- offt_i[0]
t_prcs_offt_i_0: PROCESS
BEGIN
	offt_i(0) <= '0';
WAIT;
END PROCESS t_prcs_offt_i_0;
-- period_i[7]
t_prcs_period_i_7: PROCESS
BEGIN
	period_i(7) <= '0';
WAIT;
END PROCESS t_prcs_period_i_7;
-- period_i[6]
t_prcs_period_i_6: PROCESS
BEGIN
	period_i(6) <= '1';
WAIT;
END PROCESS t_prcs_period_i_6;
-- period_i[5]
t_prcs_period_i_5: PROCESS
BEGIN
	period_i(5) <= '0';
WAIT;
END PROCESS t_prcs_period_i_5;
-- period_i[4]
t_prcs_period_i_4: PROCESS
BEGIN
	period_i(4) <= '1';
WAIT;
END PROCESS t_prcs_period_i_4;
-- period_i[3]
t_prcs_period_i_3: PROCESS
BEGIN
	period_i(3) <= '0';
WAIT;
END PROCESS t_prcs_period_i_3;
-- period_i[2]
t_prcs_period_i_2: PROCESS
BEGIN
	period_i(2) <= '0';
WAIT;
END PROCESS t_prcs_period_i_2;
-- period_i[1]
t_prcs_period_i_1: PROCESS
BEGIN
	period_i(1) <= '0';
WAIT;
END PROCESS t_prcs_period_i_1;
-- period_i[0]
t_prcs_period_i_0: PROCESS
BEGIN
	period_i(0) <= '0';
WAIT;
END PROCESS t_prcs_period_i_0;
END pwm_arch;
