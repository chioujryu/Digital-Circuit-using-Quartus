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
-- Generated on "07/01/2023 15:49:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pwmc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwmc_vhd_vec_tst IS
END pwmc_vhd_vec_tst;
ARCHITECTURE pwmc_arch OF pwmc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pwmc_i_clk : STD_LOGIC;
SIGNAL pwmc_i_enable : STD_LOGIC;
SIGNAL pwmc_i_offt : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwmc_i_period : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pwmc_i_rstn : STD_LOGIC;
SIGNAL pwmc_o_pwmop : STD_LOGIC;
COMPONENT pwmc
	PORT (
	pwmc_i_clk : IN STD_LOGIC;
	pwmc_i_enable : IN STD_LOGIC;
	pwmc_i_offt : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwmc_i_period : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pwmc_i_rstn : IN STD_LOGIC;
	pwmc_o_pwmop : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwmc
	PORT MAP (
-- list connections between master ports and signals
	pwmc_i_clk => pwmc_i_clk,
	pwmc_i_enable => pwmc_i_enable,
	pwmc_i_offt => pwmc_i_offt,
	pwmc_i_period => pwmc_i_period,
	pwmc_i_rstn => pwmc_i_rstn,
	pwmc_o_pwmop => pwmc_o_pwmop
	);

-- pwmc_i_clk
t_prcs_pwmc_i_clk: PROCESS
BEGIN
LOOP
	pwmc_i_clk <= '0';
	WAIT FOR 5000 ps;
	pwmc_i_clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pwmc_i_clk;

-- pwmc_i_enable
t_prcs_pwmc_i_enable: PROCESS
BEGIN
	pwmc_i_enable <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_enable;
-- pwmc_i_offt[7]
t_prcs_pwmc_i_offt_7: PROCESS
BEGIN
	pwmc_i_offt(7) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_7;
-- pwmc_i_offt[6]
t_prcs_pwmc_i_offt_6: PROCESS
BEGIN
	pwmc_i_offt(6) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_6;
-- pwmc_i_offt[5]
t_prcs_pwmc_i_offt_5: PROCESS
BEGIN
	pwmc_i_offt(5) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_5;
-- pwmc_i_offt[4]
t_prcs_pwmc_i_offt_4: PROCESS
BEGIN
	pwmc_i_offt(4) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_4;
-- pwmc_i_offt[3]
t_prcs_pwmc_i_offt_3: PROCESS
BEGIN
	pwmc_i_offt(3) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_3;
-- pwmc_i_offt[2]
t_prcs_pwmc_i_offt_2: PROCESS
BEGIN
	pwmc_i_offt(2) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_2;
-- pwmc_i_offt[1]
t_prcs_pwmc_i_offt_1: PROCESS
BEGIN
	pwmc_i_offt(1) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_1;
-- pwmc_i_offt[0]
t_prcs_pwmc_i_offt_0: PROCESS
BEGIN
	pwmc_i_offt(0) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_offt_0;
-- pwmc_i_period[7]
t_prcs_pwmc_i_period_7: PROCESS
BEGIN
	pwmc_i_period(7) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_period_7;
-- pwmc_i_period[6]
t_prcs_pwmc_i_period_6: PROCESS
BEGIN
	pwmc_i_period(6) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_period_6;
-- pwmc_i_period[5]
t_prcs_pwmc_i_period_5: PROCESS
BEGIN
	pwmc_i_period(5) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_period_5;
-- pwmc_i_period[4]
t_prcs_pwmc_i_period_4: PROCESS
BEGIN
	pwmc_i_period(4) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_period_4;
-- pwmc_i_period[3]
t_prcs_pwmc_i_period_3: PROCESS
BEGIN
	pwmc_i_period(3) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_period_3;
-- pwmc_i_period[2]
t_prcs_pwmc_i_period_2: PROCESS
BEGIN
	pwmc_i_period(2) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_period_2;
-- pwmc_i_period[1]
t_prcs_pwmc_i_period_1: PROCESS
BEGIN
	pwmc_i_period(1) <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_period_1;
-- pwmc_i_period[0]
t_prcs_pwmc_i_period_0: PROCESS
BEGIN
	pwmc_i_period(0) <= '0';
WAIT;
END PROCESS t_prcs_pwmc_i_period_0;

-- pwmc_i_rstn
t_prcs_pwmc_i_rstn: PROCESS
BEGIN
	pwmc_i_rstn <= '0';
	WAIT FOR 1280000 ps;
	pwmc_i_rstn <= '1';
WAIT;
END PROCESS t_prcs_pwmc_i_rstn;
END pwmc_arch;
