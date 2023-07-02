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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/01/2023 17:24:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	breathing IS
    PORT (
	br_i_clk : IN std_logic;
	br_i_rstn : IN std_logic;
	br_i_enable : IN std_logic;
	br_o_op : OUT std_logic
	);
END breathing;

-- Design Ports Information
-- br_o_op	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- br_i_clk	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- br_i_rstn	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- br_i_enable	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF breathing IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_br_i_clk : std_logic;
SIGNAL ww_br_i_rstn : std_logic;
SIGNAL ww_br_i_enable : std_logic;
SIGNAL ww_br_o_op : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \br_i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \br_o_op~output_o\ : std_logic;
SIGNAL \br_i_clk~input_o\ : std_logic;
SIGNAL \br_i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \br_i_enable~input_o\ : std_logic;
SIGNAL \u0|r_cntr[0]~8_combout\ : std_logic;
SIGNAL \br_i_rstn~input_o\ : std_logic;
SIGNAL \u0|r_cntr[0]~9\ : std_logic;
SIGNAL \u0|r_cntr[1]~10_combout\ : std_logic;
SIGNAL \u0|r_cntr[1]~11\ : std_logic;
SIGNAL \u0|r_cntr[2]~12_combout\ : std_logic;
SIGNAL \u0|r_cntr[2]~13\ : std_logic;
SIGNAL \u0|r_cntr[3]~14_combout\ : std_logic;
SIGNAL \u0|Equal1~0_combout\ : std_logic;
SIGNAL \u0|r_cntr[3]~15\ : std_logic;
SIGNAL \u0|r_cntr[4]~16_combout\ : std_logic;
SIGNAL \u0|r_cntr[4]~17\ : std_logic;
SIGNAL \u0|r_cntr[5]~18_combout\ : std_logic;
SIGNAL \u0|r_cntr[5]~19\ : std_logic;
SIGNAL \u0|r_cntr[6]~20_combout\ : std_logic;
SIGNAL \u0|r_cntr[6]~21\ : std_logic;
SIGNAL \u0|r_cntr[7]~22_combout\ : std_logic;
SIGNAL \u0|Equal1~1_combout\ : std_logic;
SIGNAL \u0|Selector0~0_combout\ : std_logic;
SIGNAL \u0|Selector0~1_combout\ : std_logic;
SIGNAL \u0|r_curr_state.x0~q\ : std_logic;
SIGNAL \u0|Selector1~0_combout\ : std_logic;
SIGNAL \r_lg[0]~8_combout\ : std_logic;
SIGNAL \w_lg~0_combout\ : std_logic;
SIGNAL \r_lg[0]~9\ : std_logic;
SIGNAL \r_lg[1]~11\ : std_logic;
SIGNAL \r_lg[2]~12_combout\ : std_logic;
SIGNAL \r_lg[2]~13\ : std_logic;
SIGNAL \r_lg[3]~14_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \r_lg[3]~15\ : std_logic;
SIGNAL \r_lg[4]~16_combout\ : std_logic;
SIGNAL \r_lg[4]~17\ : std_logic;
SIGNAL \r_lg[5]~18_combout\ : std_logic;
SIGNAL \r_lg[5]~19\ : std_logic;
SIGNAL \r_lg[6]~20_combout\ : std_logic;
SIGNAL \r_lg[6]~21\ : std_logic;
SIGNAL \r_lg[7]~22_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \r_dcnt[0]~16_combout\ : std_logic;
SIGNAL \r_dcnt[0]~17\ : std_logic;
SIGNAL \r_dcnt[1]~18_combout\ : std_logic;
SIGNAL \r_dcnt[1]~19\ : std_logic;
SIGNAL \r_dcnt[2]~20_combout\ : std_logic;
SIGNAL \r_dcnt[2]~21\ : std_logic;
SIGNAL \r_dcnt[3]~22_combout\ : std_logic;
SIGNAL \r_dcnt[3]~23\ : std_logic;
SIGNAL \r_dcnt[4]~24_combout\ : std_logic;
SIGNAL \r_dcnt[4]~25\ : std_logic;
SIGNAL \r_dcnt[5]~26_combout\ : std_logic;
SIGNAL \r_dcnt[5]~27\ : std_logic;
SIGNAL \r_dcnt[6]~28_combout\ : std_logic;
SIGNAL \r_dcnt[6]~29\ : std_logic;
SIGNAL \r_dcnt[7]~30_combout\ : std_logic;
SIGNAL \r_dcnt[7]~31\ : std_logic;
SIGNAL \r_dcnt[8]~32_combout\ : std_logic;
SIGNAL \r_dcnt[8]~33\ : std_logic;
SIGNAL \r_dcnt[9]~34_combout\ : std_logic;
SIGNAL \r_dcnt[9]~35\ : std_logic;
SIGNAL \r_dcnt[10]~36_combout\ : std_logic;
SIGNAL \r_dcnt[10]~37\ : std_logic;
SIGNAL \r_dcnt[11]~38_combout\ : std_logic;
SIGNAL \r_dcnt[11]~39\ : std_logic;
SIGNAL \r_dcnt[12]~40_combout\ : std_logic;
SIGNAL \r_dcnt[12]~41\ : std_logic;
SIGNAL \r_dcnt[13]~42_combout\ : std_logic;
SIGNAL \r_dcnt[13]~43\ : std_logic;
SIGNAL \r_dcnt[14]~44_combout\ : std_logic;
SIGNAL \r_dcnt[14]~45\ : std_logic;
SIGNAL \r_dcnt[15]~46_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_curr_state.x3~q\ : std_logic;
SIGNAL \w_next_state.x4~0_combout\ : std_logic;
SIGNAL \r_curr_state.x4~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_curr_state.x0~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \r_curr_state.x1~q\ : std_logic;
SIGNAL \w_next_state.x2~0_combout\ : std_logic;
SIGNAL \r_curr_state.x2~q\ : std_logic;
SIGNAL \r_lg[1]~10_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|Equal0~3_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|Equal0~4_combout\ : std_logic;
SIGNAL \u0|Selector1~1_combout\ : std_logic;
SIGNAL \u0|r_curr_state.x1~q\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|r_curr_state.x2~q\ : std_logic;
SIGNAL \u0|r_pwmbuf~feeder_combout\ : std_logic;
SIGNAL \u0|r_pwmbuf~q\ : std_logic;
SIGNAL \u0|r_cntr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_lg : std_logic_vector(7 DOWNTO 0);
SIGNAL r_dcnt : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_r_curr_state.x0~q\ : std_logic;
SIGNAL \u0|ALT_INV_r_curr_state.x0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_br_i_clk <= br_i_clk;
ww_br_i_rstn <= br_i_rstn;
ww_br_i_enable <= br_i_enable;
br_o_op <= ww_br_o_op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\br_i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \br_i_clk~input_o\);
\ALT_INV_r_curr_state.x0~q\ <= NOT \r_curr_state.x0~q\;
\u0|ALT_INV_r_curr_state.x0~q\ <= NOT \u0|r_curr_state.x0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\br_o_op~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|r_pwmbuf~q\,
	devoe => ww_devoe,
	o => \br_o_op~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\br_i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_br_i_clk,
	o => \br_i_clk~input_o\);

-- Location: CLKCTRL_G4
\br_i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \br_i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \br_i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\br_i_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_br_i_enable,
	o => \br_i_enable~input_o\);

-- Location: LCCOMB_X46_Y51_N14
\u0|r_cntr[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[0]~8_combout\ = \u0|r_cntr\(0) $ (VCC)
-- \u0|r_cntr[0]~9\ = CARRY(\u0|r_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(0),
	datad => VCC,
	combout => \u0|r_cntr[0]~8_combout\,
	cout => \u0|r_cntr[0]~9\);

-- Location: IOIBUF_X46_Y54_N29
\br_i_rstn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_br_i_rstn,
	o => \br_i_rstn~input_o\);

-- Location: FF_X46_Y51_N15
\u0|r_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[0]~8_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(0));

-- Location: LCCOMB_X46_Y51_N16
\u0|r_cntr[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[1]~10_combout\ = (\u0|r_cntr\(1) & (!\u0|r_cntr[0]~9\)) # (!\u0|r_cntr\(1) & ((\u0|r_cntr[0]~9\) # (GND)))
-- \u0|r_cntr[1]~11\ = CARRY((!\u0|r_cntr[0]~9\) # (!\u0|r_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(1),
	datad => VCC,
	cin => \u0|r_cntr[0]~9\,
	combout => \u0|r_cntr[1]~10_combout\,
	cout => \u0|r_cntr[1]~11\);

-- Location: FF_X46_Y51_N17
\u0|r_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[1]~10_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(1));

-- Location: LCCOMB_X46_Y51_N18
\u0|r_cntr[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[2]~12_combout\ = (\u0|r_cntr\(2) & (\u0|r_cntr[1]~11\ $ (GND))) # (!\u0|r_cntr\(2) & (!\u0|r_cntr[1]~11\ & VCC))
-- \u0|r_cntr[2]~13\ = CARRY((\u0|r_cntr\(2) & !\u0|r_cntr[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(2),
	datad => VCC,
	cin => \u0|r_cntr[1]~11\,
	combout => \u0|r_cntr[2]~12_combout\,
	cout => \u0|r_cntr[2]~13\);

-- Location: FF_X46_Y51_N19
\u0|r_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[2]~12_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(2));

-- Location: LCCOMB_X46_Y51_N20
\u0|r_cntr[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[3]~14_combout\ = (\u0|r_cntr\(3) & (!\u0|r_cntr[2]~13\)) # (!\u0|r_cntr\(3) & ((\u0|r_cntr[2]~13\) # (GND)))
-- \u0|r_cntr[3]~15\ = CARRY((!\u0|r_cntr[2]~13\) # (!\u0|r_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(3),
	datad => VCC,
	cin => \u0|r_cntr[2]~13\,
	combout => \u0|r_cntr[3]~14_combout\,
	cout => \u0|r_cntr[3]~15\);

-- Location: FF_X46_Y51_N21
\u0|r_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[3]~14_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(3));

-- Location: LCCOMB_X46_Y51_N6
\u0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal1~0_combout\ = (\u0|r_cntr\(3) & (\u0|r_cntr\(1) & (\u0|r_cntr\(0) & \u0|r_cntr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_cntr\(3),
	datab => \u0|r_cntr\(1),
	datac => \u0|r_cntr\(0),
	datad => \u0|r_cntr\(2),
	combout => \u0|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y51_N22
\u0|r_cntr[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[4]~16_combout\ = (\u0|r_cntr\(4) & (\u0|r_cntr[3]~15\ $ (GND))) # (!\u0|r_cntr\(4) & (!\u0|r_cntr[3]~15\ & VCC))
-- \u0|r_cntr[4]~17\ = CARRY((\u0|r_cntr\(4) & !\u0|r_cntr[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_cntr\(4),
	datad => VCC,
	cin => \u0|r_cntr[3]~15\,
	combout => \u0|r_cntr[4]~16_combout\,
	cout => \u0|r_cntr[4]~17\);

-- Location: FF_X46_Y51_N23
\u0|r_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[4]~16_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(4));

-- Location: LCCOMB_X46_Y51_N24
\u0|r_cntr[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[5]~18_combout\ = (\u0|r_cntr\(5) & (!\u0|r_cntr[4]~17\)) # (!\u0|r_cntr\(5) & ((\u0|r_cntr[4]~17\) # (GND)))
-- \u0|r_cntr[5]~19\ = CARRY((!\u0|r_cntr[4]~17\) # (!\u0|r_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(5),
	datad => VCC,
	cin => \u0|r_cntr[4]~17\,
	combout => \u0|r_cntr[5]~18_combout\,
	cout => \u0|r_cntr[5]~19\);

-- Location: FF_X46_Y51_N25
\u0|r_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[5]~18_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(5));

-- Location: LCCOMB_X46_Y51_N26
\u0|r_cntr[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[6]~20_combout\ = (\u0|r_cntr\(6) & (\u0|r_cntr[5]~19\ $ (GND))) # (!\u0|r_cntr\(6) & (!\u0|r_cntr[5]~19\ & VCC))
-- \u0|r_cntr[6]~21\ = CARRY((\u0|r_cntr\(6) & !\u0|r_cntr[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_cntr\(6),
	datad => VCC,
	cin => \u0|r_cntr[5]~19\,
	combout => \u0|r_cntr[6]~20_combout\,
	cout => \u0|r_cntr[6]~21\);

-- Location: FF_X46_Y51_N27
\u0|r_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[6]~20_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(6));

-- Location: LCCOMB_X46_Y51_N28
\u0|r_cntr[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_cntr[7]~22_combout\ = \u0|r_cntr[6]~21\ $ (\u0|r_cntr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|r_cntr\(7),
	cin => \u0|r_cntr[6]~21\,
	combout => \u0|r_cntr[7]~22_combout\);

-- Location: FF_X46_Y51_N29
\u0|r_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_cntr[7]~22_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \u0|ALT_INV_r_curr_state.x0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_cntr\(7));

-- Location: LCCOMB_X46_Y51_N8
\u0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal1~1_combout\ = (\u0|r_cntr\(4) & (\u0|r_cntr\(7) & (\u0|r_cntr\(6) & \u0|r_cntr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_cntr\(4),
	datab => \u0|r_cntr\(7),
	datac => \u0|r_cntr\(6),
	datad => \u0|r_cntr\(5),
	combout => \u0|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y51_N24
\u0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector0~0_combout\ = (\u0|r_curr_state.x2~q\ & (\u0|Equal1~0_combout\ & \u0|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_curr_state.x2~q\,
	datac => \u0|Equal1~0_combout\,
	datad => \u0|Equal1~1_combout\,
	combout => \u0|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y51_N26
\u0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector0~1_combout\ = (\br_i_enable~input_o\) # ((\u0|r_curr_state.x0~q\ & !\u0|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \br_i_enable~input_o\,
	datac => \u0|r_curr_state.x0~q\,
	datad => \u0|Selector0~0_combout\,
	combout => \u0|Selector0~1_combout\);

-- Location: FF_X47_Y51_N27
\u0|r_curr_state.x0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|Selector0~1_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_curr_state.x0~q\);

-- Location: LCCOMB_X47_Y51_N14
\u0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector1~0_combout\ = (\br_i_enable~input_o\ & ((\u0|Selector0~0_combout\) # (!\u0|r_curr_state.x0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \br_i_enable~input_o\,
	datac => \u0|r_curr_state.x0~q\,
	datad => \u0|Selector0~0_combout\,
	combout => \u0|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y51_N8
\r_lg[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[0]~8_combout\ = r_lg(0) $ (VCC)
-- \r_lg[0]~9\ = CARRY(r_lg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_lg(0),
	datad => VCC,
	combout => \r_lg[0]~8_combout\,
	cout => \r_lg[0]~9\);

-- Location: LCCOMB_X50_Y51_N6
\w_lg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_lg~0_combout\ = (!\r_curr_state.x3~q\ & !\r_curr_state.x1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_curr_state.x3~q\,
	datad => \r_curr_state.x1~q\,
	combout => \w_lg~0_combout\);

-- Location: FF_X49_Y51_N9
\r_lg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[0]~8_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(0));

-- Location: LCCOMB_X49_Y51_N10
\r_lg[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[1]~10_combout\ = (r_lg(1) & ((\r_curr_state.x2~q\ & (!\r_lg[0]~9\)) # (!\r_curr_state.x2~q\ & (\r_lg[0]~9\ & VCC)))) # (!r_lg(1) & ((\r_curr_state.x2~q\ & ((\r_lg[0]~9\) # (GND))) # (!\r_curr_state.x2~q\ & (!\r_lg[0]~9\))))
-- \r_lg[1]~11\ = CARRY((r_lg(1) & (\r_curr_state.x2~q\ & !\r_lg[0]~9\)) # (!r_lg(1) & ((\r_curr_state.x2~q\) # (!\r_lg[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(1),
	datab => \r_curr_state.x2~q\,
	datad => VCC,
	cin => \r_lg[0]~9\,
	combout => \r_lg[1]~10_combout\,
	cout => \r_lg[1]~11\);

-- Location: LCCOMB_X49_Y51_N12
\r_lg[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[2]~12_combout\ = ((r_lg(2) $ (\r_curr_state.x2~q\ $ (\r_lg[1]~11\)))) # (GND)
-- \r_lg[2]~13\ = CARRY((r_lg(2) & ((!\r_lg[1]~11\) # (!\r_curr_state.x2~q\))) # (!r_lg(2) & (!\r_curr_state.x2~q\ & !\r_lg[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(2),
	datab => \r_curr_state.x2~q\,
	datad => VCC,
	cin => \r_lg[1]~11\,
	combout => \r_lg[2]~12_combout\,
	cout => \r_lg[2]~13\);

-- Location: FF_X49_Y51_N13
\r_lg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[2]~12_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(2));

-- Location: LCCOMB_X49_Y51_N14
\r_lg[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[3]~14_combout\ = (r_lg(3) & ((\r_curr_state.x2~q\ & (!\r_lg[2]~13\)) # (!\r_curr_state.x2~q\ & (\r_lg[2]~13\ & VCC)))) # (!r_lg(3) & ((\r_curr_state.x2~q\ & ((\r_lg[2]~13\) # (GND))) # (!\r_curr_state.x2~q\ & (!\r_lg[2]~13\))))
-- \r_lg[3]~15\ = CARRY((r_lg(3) & (\r_curr_state.x2~q\ & !\r_lg[2]~13\)) # (!r_lg(3) & ((\r_curr_state.x2~q\) # (!\r_lg[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(3),
	datab => \r_curr_state.x2~q\,
	datad => VCC,
	cin => \r_lg[2]~13\,
	combout => \r_lg[3]~14_combout\,
	cout => \r_lg[3]~15\);

-- Location: FF_X49_Y51_N15
\r_lg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[3]~14_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(3));

-- Location: LCCOMB_X49_Y51_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!r_lg(1) & (!r_lg(3) & (r_lg(0) & !r_lg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(1),
	datab => r_lg(3),
	datac => r_lg(0),
	datad => r_lg(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X49_Y51_N16
\r_lg[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[4]~16_combout\ = ((\r_curr_state.x2~q\ $ (r_lg(4) $ (\r_lg[3]~15\)))) # (GND)
-- \r_lg[4]~17\ = CARRY((\r_curr_state.x2~q\ & (r_lg(4) & !\r_lg[3]~15\)) # (!\r_curr_state.x2~q\ & ((r_lg(4)) # (!\r_lg[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_curr_state.x2~q\,
	datab => r_lg(4),
	datad => VCC,
	cin => \r_lg[3]~15\,
	combout => \r_lg[4]~16_combout\,
	cout => \r_lg[4]~17\);

-- Location: FF_X49_Y51_N17
\r_lg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[4]~16_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(4));

-- Location: LCCOMB_X49_Y51_N18
\r_lg[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[5]~18_combout\ = (\r_curr_state.x2~q\ & ((r_lg(5) & (!\r_lg[4]~17\)) # (!r_lg(5) & ((\r_lg[4]~17\) # (GND))))) # (!\r_curr_state.x2~q\ & ((r_lg(5) & (\r_lg[4]~17\ & VCC)) # (!r_lg(5) & (!\r_lg[4]~17\))))
-- \r_lg[5]~19\ = CARRY((\r_curr_state.x2~q\ & ((!\r_lg[4]~17\) # (!r_lg(5)))) # (!\r_curr_state.x2~q\ & (!r_lg(5) & !\r_lg[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_curr_state.x2~q\,
	datab => r_lg(5),
	datad => VCC,
	cin => \r_lg[4]~17\,
	combout => \r_lg[5]~18_combout\,
	cout => \r_lg[5]~19\);

-- Location: FF_X49_Y51_N19
\r_lg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[5]~18_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(5));

-- Location: LCCOMB_X49_Y51_N20
\r_lg[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[6]~20_combout\ = ((\r_curr_state.x2~q\ $ (r_lg(6) $ (\r_lg[5]~19\)))) # (GND)
-- \r_lg[6]~21\ = CARRY((\r_curr_state.x2~q\ & (r_lg(6) & !\r_lg[5]~19\)) # (!\r_curr_state.x2~q\ & ((r_lg(6)) # (!\r_lg[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_curr_state.x2~q\,
	datab => r_lg(6),
	datad => VCC,
	cin => \r_lg[5]~19\,
	combout => \r_lg[6]~20_combout\,
	cout => \r_lg[6]~21\);

-- Location: FF_X49_Y51_N21
\r_lg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[6]~20_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(6));

-- Location: LCCOMB_X49_Y51_N22
\r_lg[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_lg[7]~22_combout\ = r_lg(7) $ (\r_curr_state.x2~q\ $ (!\r_lg[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(7),
	datab => \r_curr_state.x2~q\,
	cin => \r_lg[6]~21\,
	combout => \r_lg[7]~22_combout\);

-- Location: FF_X49_Y51_N23
\r_lg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[7]~22_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(7));

-- Location: LCCOMB_X49_Y51_N0
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!r_lg(7) & (!r_lg(4) & (!r_lg(6) & !r_lg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(7),
	datab => r_lg(4),
	datac => r_lg(6),
	datad => r_lg(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X49_Y51_N6
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_curr_state.x4~q\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \r_curr_state.x4~q\,
	datad => \Equal1~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X51_Y51_N0
\r_dcnt[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[0]~16_combout\ = r_dcnt(0) $ (VCC)
-- \r_dcnt[0]~17\ = CARRY(r_dcnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(0),
	datad => VCC,
	combout => \r_dcnt[0]~16_combout\,
	cout => \r_dcnt[0]~17\);

-- Location: FF_X51_Y51_N1
\r_dcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[0]~16_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(0));

-- Location: LCCOMB_X51_Y51_N2
\r_dcnt[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[1]~18_combout\ = (r_dcnt(1) & (!\r_dcnt[0]~17\)) # (!r_dcnt(1) & ((\r_dcnt[0]~17\) # (GND)))
-- \r_dcnt[1]~19\ = CARRY((!\r_dcnt[0]~17\) # (!r_dcnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(1),
	datad => VCC,
	cin => \r_dcnt[0]~17\,
	combout => \r_dcnt[1]~18_combout\,
	cout => \r_dcnt[1]~19\);

-- Location: FF_X51_Y51_N3
\r_dcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[1]~18_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(1));

-- Location: LCCOMB_X51_Y51_N4
\r_dcnt[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[2]~20_combout\ = (r_dcnt(2) & (\r_dcnt[1]~19\ $ (GND))) # (!r_dcnt(2) & (!\r_dcnt[1]~19\ & VCC))
-- \r_dcnt[2]~21\ = CARRY((r_dcnt(2) & !\r_dcnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(2),
	datad => VCC,
	cin => \r_dcnt[1]~19\,
	combout => \r_dcnt[2]~20_combout\,
	cout => \r_dcnt[2]~21\);

-- Location: FF_X51_Y51_N5
\r_dcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[2]~20_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(2));

-- Location: LCCOMB_X51_Y51_N6
\r_dcnt[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[3]~22_combout\ = (r_dcnt(3) & (!\r_dcnt[2]~21\)) # (!r_dcnt(3) & ((\r_dcnt[2]~21\) # (GND)))
-- \r_dcnt[3]~23\ = CARRY((!\r_dcnt[2]~21\) # (!r_dcnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(3),
	datad => VCC,
	cin => \r_dcnt[2]~21\,
	combout => \r_dcnt[3]~22_combout\,
	cout => \r_dcnt[3]~23\);

-- Location: FF_X51_Y51_N7
\r_dcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[3]~22_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(3));

-- Location: LCCOMB_X51_Y51_N8
\r_dcnt[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[4]~24_combout\ = (r_dcnt(4) & (\r_dcnt[3]~23\ $ (GND))) # (!r_dcnt(4) & (!\r_dcnt[3]~23\ & VCC))
-- \r_dcnt[4]~25\ = CARRY((r_dcnt(4) & !\r_dcnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(4),
	datad => VCC,
	cin => \r_dcnt[3]~23\,
	combout => \r_dcnt[4]~24_combout\,
	cout => \r_dcnt[4]~25\);

-- Location: FF_X51_Y51_N9
\r_dcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[4]~24_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(4));

-- Location: LCCOMB_X51_Y51_N10
\r_dcnt[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[5]~26_combout\ = (r_dcnt(5) & (!\r_dcnt[4]~25\)) # (!r_dcnt(5) & ((\r_dcnt[4]~25\) # (GND)))
-- \r_dcnt[5]~27\ = CARRY((!\r_dcnt[4]~25\) # (!r_dcnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(5),
	datad => VCC,
	cin => \r_dcnt[4]~25\,
	combout => \r_dcnt[5]~26_combout\,
	cout => \r_dcnt[5]~27\);

-- Location: FF_X51_Y51_N11
\r_dcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[5]~26_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(5));

-- Location: LCCOMB_X51_Y51_N12
\r_dcnt[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[6]~28_combout\ = (r_dcnt(6) & (\r_dcnt[5]~27\ $ (GND))) # (!r_dcnt(6) & (!\r_dcnt[5]~27\ & VCC))
-- \r_dcnt[6]~29\ = CARRY((r_dcnt(6) & !\r_dcnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(6),
	datad => VCC,
	cin => \r_dcnt[5]~27\,
	combout => \r_dcnt[6]~28_combout\,
	cout => \r_dcnt[6]~29\);

-- Location: FF_X51_Y51_N13
\r_dcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[6]~28_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(6));

-- Location: LCCOMB_X51_Y51_N14
\r_dcnt[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[7]~30_combout\ = (r_dcnt(7) & (!\r_dcnt[6]~29\)) # (!r_dcnt(7) & ((\r_dcnt[6]~29\) # (GND)))
-- \r_dcnt[7]~31\ = CARRY((!\r_dcnt[6]~29\) # (!r_dcnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(7),
	datad => VCC,
	cin => \r_dcnt[6]~29\,
	combout => \r_dcnt[7]~30_combout\,
	cout => \r_dcnt[7]~31\);

-- Location: FF_X51_Y51_N15
\r_dcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[7]~30_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(7));

-- Location: LCCOMB_X51_Y51_N16
\r_dcnt[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[8]~32_combout\ = (r_dcnt(8) & (\r_dcnt[7]~31\ $ (GND))) # (!r_dcnt(8) & (!\r_dcnt[7]~31\ & VCC))
-- \r_dcnt[8]~33\ = CARRY((r_dcnt(8) & !\r_dcnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(8),
	datad => VCC,
	cin => \r_dcnt[7]~31\,
	combout => \r_dcnt[8]~32_combout\,
	cout => \r_dcnt[8]~33\);

-- Location: FF_X51_Y51_N17
\r_dcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[8]~32_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(8));

-- Location: LCCOMB_X51_Y51_N18
\r_dcnt[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[9]~34_combout\ = (r_dcnt(9) & (!\r_dcnt[8]~33\)) # (!r_dcnt(9) & ((\r_dcnt[8]~33\) # (GND)))
-- \r_dcnt[9]~35\ = CARRY((!\r_dcnt[8]~33\) # (!r_dcnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(9),
	datad => VCC,
	cin => \r_dcnt[8]~33\,
	combout => \r_dcnt[9]~34_combout\,
	cout => \r_dcnt[9]~35\);

-- Location: FF_X51_Y51_N19
\r_dcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[9]~34_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(9));

-- Location: LCCOMB_X51_Y51_N20
\r_dcnt[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[10]~36_combout\ = (r_dcnt(10) & (\r_dcnt[9]~35\ $ (GND))) # (!r_dcnt(10) & (!\r_dcnt[9]~35\ & VCC))
-- \r_dcnt[10]~37\ = CARRY((r_dcnt(10) & !\r_dcnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(10),
	datad => VCC,
	cin => \r_dcnt[9]~35\,
	combout => \r_dcnt[10]~36_combout\,
	cout => \r_dcnt[10]~37\);

-- Location: FF_X51_Y51_N21
\r_dcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[10]~36_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(10));

-- Location: LCCOMB_X51_Y51_N22
\r_dcnt[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[11]~38_combout\ = (r_dcnt(11) & (!\r_dcnt[10]~37\)) # (!r_dcnt(11) & ((\r_dcnt[10]~37\) # (GND)))
-- \r_dcnt[11]~39\ = CARRY((!\r_dcnt[10]~37\) # (!r_dcnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(11),
	datad => VCC,
	cin => \r_dcnt[10]~37\,
	combout => \r_dcnt[11]~38_combout\,
	cout => \r_dcnt[11]~39\);

-- Location: FF_X51_Y51_N23
\r_dcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[11]~38_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(11));

-- Location: LCCOMB_X51_Y51_N24
\r_dcnt[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[12]~40_combout\ = (r_dcnt(12) & (\r_dcnt[11]~39\ $ (GND))) # (!r_dcnt(12) & (!\r_dcnt[11]~39\ & VCC))
-- \r_dcnt[12]~41\ = CARRY((r_dcnt(12) & !\r_dcnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(12),
	datad => VCC,
	cin => \r_dcnt[11]~39\,
	combout => \r_dcnt[12]~40_combout\,
	cout => \r_dcnt[12]~41\);

-- Location: FF_X51_Y51_N25
\r_dcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[12]~40_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(12));

-- Location: LCCOMB_X51_Y51_N26
\r_dcnt[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[13]~42_combout\ = (r_dcnt(13) & (!\r_dcnt[12]~41\)) # (!r_dcnt(13) & ((\r_dcnt[12]~41\) # (GND)))
-- \r_dcnt[13]~43\ = CARRY((!\r_dcnt[12]~41\) # (!r_dcnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(13),
	datad => VCC,
	cin => \r_dcnt[12]~41\,
	combout => \r_dcnt[13]~42_combout\,
	cout => \r_dcnt[13]~43\);

-- Location: FF_X51_Y51_N27
\r_dcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[13]~42_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(13));

-- Location: LCCOMB_X51_Y51_N28
\r_dcnt[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[14]~44_combout\ = (r_dcnt(14) & (\r_dcnt[13]~43\ $ (GND))) # (!r_dcnt(14) & (!\r_dcnt[13]~43\ & VCC))
-- \r_dcnt[14]~45\ = CARRY((r_dcnt(14) & !\r_dcnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_dcnt(14),
	datad => VCC,
	cin => \r_dcnt[13]~43\,
	combout => \r_dcnt[14]~44_combout\,
	cout => \r_dcnt[14]~45\);

-- Location: FF_X51_Y51_N29
\r_dcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[14]~44_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(14));

-- Location: LCCOMB_X51_Y51_N30
\r_dcnt[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_dcnt[15]~46_combout\ = \r_dcnt[14]~45\ $ (r_dcnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_dcnt(15),
	cin => \r_dcnt[14]~45\,
	combout => \r_dcnt[15]~46_combout\);

-- Location: FF_X51_Y51_N31
\r_dcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_dcnt[15]~46_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_dcnt(15));

-- Location: LCCOMB_X50_Y51_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (r_dcnt(15) & (r_dcnt(14) & (r_dcnt(13) & r_dcnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(15),
	datab => r_dcnt(14),
	datac => r_dcnt(13),
	datad => r_dcnt(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y51_N16
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_dcnt(10) & (r_dcnt(8) & (r_dcnt(11) & r_dcnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(10),
	datab => r_dcnt(8),
	datac => r_dcnt(11),
	datad => r_dcnt(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y51_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_dcnt(2) & (r_dcnt(0) & (r_dcnt(1) & r_dcnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(2),
	datab => r_dcnt(0),
	datac => r_dcnt(1),
	datad => r_dcnt(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y51_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (r_dcnt(4) & (r_dcnt(7) & (r_dcnt(5) & r_dcnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_dcnt(4),
	datab => r_dcnt(7),
	datac => r_dcnt(5),
	datad => r_dcnt(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X50_Y51_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y51_N28
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\r_curr_state.x3~q\ & !\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \r_curr_state.x3~q\,
	datad => \Equal0~4_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X50_Y51_N29
\r_curr_state.x3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_curr_state.x3~q\);

-- Location: LCCOMB_X50_Y51_N30
\w_next_state.x4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_next_state.x4~0_combout\ = (\r_curr_state.x3~q\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_curr_state.x3~q\,
	datad => \Equal0~4_combout\,
	combout => \w_next_state.x4~0_combout\);

-- Location: FF_X50_Y51_N31
\r_curr_state.x4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \w_next_state.x4~0_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_curr_state.x4~q\);

-- Location: LCCOMB_X49_Y51_N2
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_curr_state.x4~q\ & (\Equal1~0_combout\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_curr_state.x4~q\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X49_Y51_N30
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\br_i_enable~input_o\) # ((\r_curr_state.x0~q\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \br_i_enable~input_o\,
	datac => \r_curr_state.x0~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X49_Y51_N31
\r_curr_state.x0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_curr_state.x0~q\);

-- Location: LCCOMB_X49_Y51_N28
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\r_curr_state.x2~q\) # ((\br_i_enable~input_o\ & ((\Selector1~0_combout\) # (!\r_curr_state.x0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_curr_state.x0~q\,
	datab => \r_curr_state.x2~q\,
	datac => \br_i_enable~input_o\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X49_Y51_N24
\Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((\r_curr_state.x1~q\ & !\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~1_combout\,
	datac => \r_curr_state.x1~q\,
	datad => \Equal0~4_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X49_Y51_N25
\r_curr_state.x1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_curr_state.x1~q\);

-- Location: LCCOMB_X49_Y51_N4
\w_next_state.x2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_next_state.x2~0_combout\ = (\r_curr_state.x1~q\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_curr_state.x1~q\,
	datad => \Equal0~4_combout\,
	combout => \w_next_state.x2~0_combout\);

-- Location: FF_X49_Y51_N5
\r_curr_state.x2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \w_next_state.x2~0_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_curr_state.x2~q\);

-- Location: FF_X49_Y51_N11
\r_lg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \r_lg[1]~10_combout\,
	clrn => \br_i_rstn~input_o\,
	sclr => \ALT_INV_r_curr_state.x0~q\,
	ena => \w_lg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_lg(1));

-- Location: LCCOMB_X46_Y51_N12
\u0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (r_lg(1) & (\u0|r_cntr\(1) & (\u0|r_cntr\(0) $ (!r_lg(0))))) # (!r_lg(1) & (!\u0|r_cntr\(1) & (\u0|r_cntr\(0) $ (!r_lg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(1),
	datab => \u0|r_cntr\(1),
	datac => \u0|r_cntr\(0),
	datad => r_lg(0),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y51_N0
\u0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal0~3_combout\ = (r_lg(7) & (\u0|r_cntr\(7) & (r_lg(6) $ (!\u0|r_cntr\(6))))) # (!r_lg(7) & (!\u0|r_cntr\(7) & (r_lg(6) $ (!\u0|r_cntr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_lg(7),
	datab => \u0|r_cntr\(7),
	datac => r_lg(6),
	datad => \u0|r_cntr\(6),
	combout => \u0|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y51_N30
\u0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (\u0|r_cntr\(4) & (r_lg(4) & (\u0|r_cntr\(5) $ (!r_lg(5))))) # (!\u0|r_cntr\(4) & (!r_lg(4) & (\u0|r_cntr\(5) $ (!r_lg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_cntr\(4),
	datab => \u0|r_cntr\(5),
	datac => r_lg(4),
	datad => r_lg(5),
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y51_N16
\u0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (\u0|r_cntr\(2) & (r_lg(2) & (\u0|r_cntr\(3) $ (!r_lg(3))))) # (!\u0|r_cntr\(2) & (!r_lg(2) & (\u0|r_cntr\(3) $ (!r_lg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_cntr\(2),
	datab => \u0|r_cntr\(3),
	datac => r_lg(2),
	datad => r_lg(3),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y51_N2
\u0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Equal0~4_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~3_combout\ & (\u0|Equal0~2_combout\ & \u0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Equal0~3_combout\,
	datac => \u0|Equal0~2_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y51_N10
\u0|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector1~1_combout\ = (\u0|Selector1~0_combout\) # ((!\u0|r_curr_state.x2~q\ & (\u0|r_curr_state.x0~q\ & !\u0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_curr_state.x2~q\,
	datab => \u0|r_curr_state.x0~q\,
	datac => \u0|Selector1~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|Selector1~1_combout\);

-- Location: FF_X46_Y51_N11
\u0|r_curr_state.x1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|Selector1~1_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_curr_state.x1~q\);

-- Location: LCCOMB_X47_Y51_N30
\u0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|r_curr_state.x2~q\ & ((!\u0|Equal1~1_combout\) # (!\u0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|r_curr_state.x2~q\,
	datac => \u0|Equal1~0_combout\,
	datad => \u0|Equal1~1_combout\,
	combout => \u0|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y51_N4
\u0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (\u0|Selector2~0_combout\) # ((\u0|r_curr_state.x1~q\ & \u0|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|r_curr_state.x1~q\,
	datac => \u0|Selector2~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|Selector2~1_combout\);

-- Location: FF_X46_Y51_N5
\u0|r_curr_state.x2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|Selector2~1_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_curr_state.x2~q\);

-- Location: LCCOMB_X47_Y51_N20
\u0|r_pwmbuf~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|r_pwmbuf~feeder_combout\ = \u0|r_curr_state.x2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|r_curr_state.x2~q\,
	combout => \u0|r_pwmbuf~feeder_combout\);

-- Location: FF_X47_Y51_N21
\u0|r_pwmbuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \br_i_clk~inputclkctrl_outclk\,
	d => \u0|r_pwmbuf~feeder_combout\,
	clrn => \br_i_rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|r_pwmbuf~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_br_o_op <= \br_o_op~output_o\;
END structure;


