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

-- DATE "07/02/2023 01:47:04"

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

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	offt_i : IN std_logic_vector(7 DOWNTO 0);
	period_i : IN std_logic_vector(7 DOWNTO 0);
	cnt_out : BUFFER std_logic_vector(7 DOWNTO 0);
	pwm_out : BUFFER std_logic
	);
END pwm;

-- Design Ports Information
-- cnt_out[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt_out[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_out	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- period_i[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offt_i[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_offt_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_period_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cnt_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \cnt_out[0]~output_o\ : std_logic;
SIGNAL \cnt_out[1]~output_o\ : std_logic;
SIGNAL \cnt_out[2]~output_o\ : std_logic;
SIGNAL \cnt_out[3]~output_o\ : std_logic;
SIGNAL \cnt_out[4]~output_o\ : std_logic;
SIGNAL \cnt_out[5]~output_o\ : std_logic;
SIGNAL \cnt_out[6]~output_o\ : std_logic;
SIGNAL \cnt_out[7]~output_o\ : std_logic;
SIGNAL \pwm_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_reg[0]~8_combout\ : std_logic;
SIGNAL \period_i[1]~input_o\ : std_logic;
SIGNAL \period_i[0]~input_o\ : std_logic;
SIGNAL \cnt_reg[0]~9\ : std_logic;
SIGNAL \cnt_reg[1]~11_combout\ : std_logic;
SIGNAL \offt_i[3]~input_o\ : std_logic;
SIGNAL \offt_i[2]~input_o\ : std_logic;
SIGNAL \cnt_reg[1]~12\ : std_logic;
SIGNAL \cnt_reg[2]~13_combout\ : std_logic;
SIGNAL \cnt_reg[2]~14\ : std_logic;
SIGNAL \cnt_reg[3]~15_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \offt_i[7]~input_o\ : std_logic;
SIGNAL \offt_i[6]~input_o\ : std_logic;
SIGNAL \cnt_reg[3]~16\ : std_logic;
SIGNAL \cnt_reg[4]~17_combout\ : std_logic;
SIGNAL \cnt_reg[4]~18\ : std_logic;
SIGNAL \cnt_reg[5]~19_combout\ : std_logic;
SIGNAL \cnt_reg[5]~20\ : std_logic;
SIGNAL \cnt_reg[6]~21_combout\ : std_logic;
SIGNAL \cnt_reg[6]~22\ : std_logic;
SIGNAL \cnt_reg[7]~23_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \offt_i[5]~input_o\ : std_logic;
SIGNAL \offt_i[4]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \offt_i[0]~input_o\ : std_logic;
SIGNAL \offt_i[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \X1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \X1~q\ : std_logic;
SIGNAL \X2~0_combout\ : std_logic;
SIGNAL \X2~1_combout\ : std_logic;
SIGNAL \X2~q\ : std_logic;
SIGNAL \cnt_reg[0]~10_combout\ : std_logic;
SIGNAL \X0~0_combout\ : std_logic;
SIGNAL \period_i[3]~input_o\ : std_logic;
SIGNAL \period_i[2]~input_o\ : std_logic;
SIGNAL \X0~1_combout\ : std_logic;
SIGNAL \period_i[5]~input_o\ : std_logic;
SIGNAL \period_i[4]~input_o\ : std_logic;
SIGNAL \X0~2_combout\ : std_logic;
SIGNAL \period_i[7]~input_o\ : std_logic;
SIGNAL \period_i[6]~input_o\ : std_logic;
SIGNAL \X0~3_combout\ : std_logic;
SIGNAL \X0~4_combout\ : std_logic;
SIGNAL \X0~5_combout\ : std_logic;
SIGNAL \X0~q\ : std_logic;
SIGNAL \pwm_reg~0_combout\ : std_logic;
SIGNAL \pwm_reg~1_combout\ : std_logic;
SIGNAL \pwm_reg~q\ : std_logic;
SIGNAL cnt_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_X0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_offt_i <= offt_i;
ww_period_i <= period_i;
cnt_out <= ww_cnt_out;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_X0~q\ <= NOT \X0~q\;
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

-- Location: IOOBUF_X51_Y54_N2
\cnt_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(0),
	devoe => ww_devoe,
	o => \cnt_out[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\cnt_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(1),
	devoe => ww_devoe,
	o => \cnt_out[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\cnt_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(2),
	devoe => ww_devoe,
	o => \cnt_out[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\cnt_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(3),
	devoe => ww_devoe,
	o => \cnt_out[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\cnt_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(4),
	devoe => ww_devoe,
	o => \cnt_out[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\cnt_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(5),
	devoe => ww_devoe,
	o => \cnt_out[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\cnt_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(6),
	devoe => ww_devoe,
	o => \cnt_out[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\cnt_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cnt_reg(7),
	devoe => ww_devoe,
	o => \cnt_out[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\pwm_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_reg~q\,
	devoe => ww_devoe,
	o => \pwm_out~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y50_N8
\cnt_reg[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[0]~8_combout\ = cnt_reg(0) $ (VCC)
-- \cnt_reg[0]~9\ = CARRY(cnt_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_reg(0),
	datad => VCC,
	combout => \cnt_reg[0]~8_combout\,
	cout => \cnt_reg[0]~9\);

-- Location: IOIBUF_X56_Y54_N15
\period_i[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(1),
	o => \period_i[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\period_i[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(0),
	o => \period_i[0]~input_o\);

-- Location: LCCOMB_X55_Y50_N10
\cnt_reg[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[1]~11_combout\ = (cnt_reg(1) & (!\cnt_reg[0]~9\)) # (!cnt_reg(1) & ((\cnt_reg[0]~9\) # (GND)))
-- \cnt_reg[1]~12\ = CARRY((!\cnt_reg[0]~9\) # (!cnt_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_reg(1),
	datad => VCC,
	cin => \cnt_reg[0]~9\,
	combout => \cnt_reg[1]~11_combout\,
	cout => \cnt_reg[1]~12\);

-- Location: IOIBUF_X54_Y54_N29
\offt_i[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(3),
	o => \offt_i[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\offt_i[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(2),
	o => \offt_i[2]~input_o\);

-- Location: LCCOMB_X55_Y50_N12
\cnt_reg[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[2]~13_combout\ = (cnt_reg(2) & (\cnt_reg[1]~12\ $ (GND))) # (!cnt_reg(2) & (!\cnt_reg[1]~12\ & VCC))
-- \cnt_reg[2]~14\ = CARRY((cnt_reg(2) & !\cnt_reg[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_reg(2),
	datad => VCC,
	cin => \cnt_reg[1]~12\,
	combout => \cnt_reg[2]~13_combout\,
	cout => \cnt_reg[2]~14\);

-- Location: FF_X55_Y50_N13
\cnt_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[2]~13_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(2));

-- Location: LCCOMB_X55_Y50_N14
\cnt_reg[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[3]~15_combout\ = (cnt_reg(3) & (!\cnt_reg[2]~14\)) # (!cnt_reg(3) & ((\cnt_reg[2]~14\) # (GND)))
-- \cnt_reg[3]~16\ = CARRY((!\cnt_reg[2]~14\) # (!cnt_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_reg(3),
	datad => VCC,
	cin => \cnt_reg[2]~14\,
	combout => \cnt_reg[3]~15_combout\,
	cout => \cnt_reg[3]~16\);

-- Location: FF_X55_Y50_N15
\cnt_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[3]~15_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(3));

-- Location: LCCOMB_X55_Y50_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\offt_i[3]~input_o\ & (cnt_reg(3) & (\offt_i[2]~input_o\ $ (!cnt_reg(2))))) # (!\offt_i[3]~input_o\ & (!cnt_reg(3) & (\offt_i[2]~input_o\ $ (!cnt_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offt_i[3]~input_o\,
	datab => \offt_i[2]~input_o\,
	datac => cnt_reg(3),
	datad => cnt_reg(2),
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X58_Y54_N1
\offt_i[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(7),
	o => \offt_i[7]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\offt_i[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(6),
	o => \offt_i[6]~input_o\);

-- Location: LCCOMB_X55_Y50_N16
\cnt_reg[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[4]~17_combout\ = (cnt_reg(4) & (\cnt_reg[3]~16\ $ (GND))) # (!cnt_reg(4) & (!\cnt_reg[3]~16\ & VCC))
-- \cnt_reg[4]~18\ = CARRY((cnt_reg(4) & !\cnt_reg[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_reg(4),
	datad => VCC,
	cin => \cnt_reg[3]~16\,
	combout => \cnt_reg[4]~17_combout\,
	cout => \cnt_reg[4]~18\);

-- Location: FF_X55_Y50_N17
\cnt_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[4]~17_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(4));

-- Location: LCCOMB_X55_Y50_N18
\cnt_reg[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[5]~19_combout\ = (cnt_reg(5) & (!\cnt_reg[4]~18\)) # (!cnt_reg(5) & ((\cnt_reg[4]~18\) # (GND)))
-- \cnt_reg[5]~20\ = CARRY((!\cnt_reg[4]~18\) # (!cnt_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_reg(5),
	datad => VCC,
	cin => \cnt_reg[4]~18\,
	combout => \cnt_reg[5]~19_combout\,
	cout => \cnt_reg[5]~20\);

-- Location: FF_X55_Y50_N19
\cnt_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[5]~19_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(5));

-- Location: LCCOMB_X55_Y50_N20
\cnt_reg[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[6]~21_combout\ = (cnt_reg(6) & (\cnt_reg[5]~20\ $ (GND))) # (!cnt_reg(6) & (!\cnt_reg[5]~20\ & VCC))
-- \cnt_reg[6]~22\ = CARRY((cnt_reg(6) & !\cnt_reg[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_reg(6),
	datad => VCC,
	cin => \cnt_reg[5]~20\,
	combout => \cnt_reg[6]~21_combout\,
	cout => \cnt_reg[6]~22\);

-- Location: FF_X55_Y50_N21
\cnt_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[6]~21_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(6));

-- Location: LCCOMB_X55_Y50_N22
\cnt_reg[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[7]~23_combout\ = \cnt_reg[6]~22\ $ (cnt_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_reg(7),
	cin => \cnt_reg[6]~22\,
	combout => \cnt_reg[7]~23_combout\);

-- Location: FF_X55_Y50_N23
\cnt_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[7]~23_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(7));

-- Location: LCCOMB_X55_Y50_N6
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\offt_i[7]~input_o\ & (cnt_reg(7) & (\offt_i[6]~input_o\ $ (!cnt_reg(6))))) # (!\offt_i[7]~input_o\ & (!cnt_reg(7) & (\offt_i[6]~input_o\ $ (!cnt_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offt_i[7]~input_o\,
	datab => \offt_i[6]~input_o\,
	datac => cnt_reg(7),
	datad => cnt_reg(6),
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X51_Y54_N29
\offt_i[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(5),
	o => \offt_i[5]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\offt_i[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(4),
	o => \offt_i[4]~input_o\);

-- Location: LCCOMB_X55_Y50_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\offt_i[5]~input_o\ & (cnt_reg(5) & (\offt_i[4]~input_o\ $ (!cnt_reg(4))))) # (!\offt_i[5]~input_o\ & (!cnt_reg(5) & (\offt_i[4]~input_o\ $ (!cnt_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offt_i[5]~input_o\,
	datab => cnt_reg(5),
	datac => \offt_i[4]~input_o\,
	datad => cnt_reg(4),
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X56_Y54_N8
\offt_i[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(0),
	o => \offt_i[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N22
\offt_i[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offt_i(1),
	o => \offt_i[1]~input_o\);

-- Location: LCCOMB_X55_Y50_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\offt_i[0]~input_o\ & (cnt_reg(0) & (\offt_i[1]~input_o\ $ (!cnt_reg(1))))) # (!\offt_i[0]~input_o\ & (!cnt_reg(0) & (\offt_i[1]~input_o\ $ (!cnt_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offt_i[0]~input_o\,
	datab => \offt_i[1]~input_o\,
	datac => cnt_reg(0),
	datad => cnt_reg(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X56_Y50_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X56_Y50_N8
\X1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X1~0_combout\ = ((\X1~q\ & !\Equal0~4_combout\)) # (!\X0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X0~q\,
	datac => \X1~q\,
	datad => \Equal0~4_combout\,
	combout => \X1~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X56_Y50_N9
X1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \X1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X1~q\);

-- Location: LCCOMB_X56_Y50_N16
\X2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X2~0_combout\ = (\X1~q\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X1~q\,
	datad => \Equal0~4_combout\,
	combout => \X2~0_combout\);

-- Location: LCCOMB_X56_Y50_N30
\X2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X2~1_combout\ = (\X0~q\ & ((\X2~0_combout\) # ((!\X0~4_combout\ & \X2~q\)))) # (!\X0~q\ & (((\X2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~4_combout\,
	datab => \X0~q\,
	datac => \X2~q\,
	datad => \X2~0_combout\,
	combout => \X2~1_combout\);

-- Location: FF_X56_Y50_N31
X2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \X2~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X2~q\);

-- Location: LCCOMB_X55_Y50_N30
\cnt_reg[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_reg[0]~10_combout\ = (\rst~input_o\ & ((\X2~q\) # ((\X1~q\) # (!\X0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~q\,
	datab => \rst~input_o\,
	datac => \X1~q\,
	datad => \X0~q\,
	combout => \cnt_reg[0]~10_combout\);

-- Location: FF_X55_Y50_N11
\cnt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[1]~11_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(1));

-- Location: LCCOMB_X55_Y50_N24
\X0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~0_combout\ = (\period_i[1]~input_o\ & (cnt_reg(1) & (\period_i[0]~input_o\ $ (!cnt_reg(0))))) # (!\period_i[1]~input_o\ & (!cnt_reg(1) & (\period_i[0]~input_o\ $ (!cnt_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \period_i[1]~input_o\,
	datab => \period_i[0]~input_o\,
	datac => cnt_reg(0),
	datad => cnt_reg(1),
	combout => \X0~0_combout\);

-- Location: IOIBUF_X60_Y54_N29
\period_i[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(3),
	o => \period_i[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\period_i[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(2),
	o => \period_i[2]~input_o\);

-- Location: LCCOMB_X56_Y50_N28
\X0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~1_combout\ = (cnt_reg(3) & (\period_i[3]~input_o\ & (\period_i[2]~input_o\ $ (!cnt_reg(2))))) # (!cnt_reg(3) & (!\period_i[3]~input_o\ & (\period_i[2]~input_o\ $ (!cnt_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_reg(3),
	datab => \period_i[3]~input_o\,
	datac => \period_i[2]~input_o\,
	datad => cnt_reg(2),
	combout => \X0~1_combout\);

-- Location: IOIBUF_X58_Y54_N15
\period_i[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(5),
	o => \period_i[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\period_i[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(4),
	o => \period_i[4]~input_o\);

-- Location: LCCOMB_X55_Y50_N26
\X0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~2_combout\ = (\period_i[5]~input_o\ & (cnt_reg(5) & (\period_i[4]~input_o\ $ (!cnt_reg(4))))) # (!\period_i[5]~input_o\ & (!cnt_reg(5) & (\period_i[4]~input_o\ $ (!cnt_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \period_i[5]~input_o\,
	datab => \period_i[4]~input_o\,
	datac => cnt_reg(4),
	datad => cnt_reg(5),
	combout => \X0~2_combout\);

-- Location: IOIBUF_X60_Y54_N22
\period_i[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(7),
	o => \period_i[7]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\period_i[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_period_i(6),
	o => \period_i[6]~input_o\);

-- Location: LCCOMB_X56_Y50_N18
\X0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~3_combout\ = (\period_i[7]~input_o\ & (cnt_reg(7) & (cnt_reg(6) $ (!\period_i[6]~input_o\)))) # (!\period_i[7]~input_o\ & (!cnt_reg(7) & (cnt_reg(6) $ (!\period_i[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \period_i[7]~input_o\,
	datab => cnt_reg(6),
	datac => \period_i[6]~input_o\,
	datad => cnt_reg(7),
	combout => \X0~3_combout\);

-- Location: LCCOMB_X56_Y50_N12
\X0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~4_combout\ = (\X0~0_combout\ & (\X0~1_combout\ & (\X0~2_combout\ & \X0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~0_combout\,
	datab => \X0~1_combout\,
	datac => \X0~2_combout\,
	datad => \X0~3_combout\,
	combout => \X0~4_combout\);

-- Location: LCCOMB_X56_Y50_N24
\X0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X0~5_combout\ = (((\X2~0_combout\) # (!\X0~q\)) # (!\X2~q\)) # (!\X0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~4_combout\,
	datab => \X2~q\,
	datac => \X0~q\,
	datad => \X2~0_combout\,
	combout => \X0~5_combout\);

-- Location: FF_X56_Y50_N25
X0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \X0~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X0~q\);

-- Location: FF_X55_Y50_N9
\cnt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_reg[0]~8_combout\,
	sclr => \ALT_INV_X0~q\,
	ena => \cnt_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_reg(0));

-- Location: LCCOMB_X56_Y50_N22
\pwm_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm_reg~0_combout\ = (!\X1~q\ & \X0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X1~q\,
	datad => \X0~q\,
	combout => \pwm_reg~0_combout\);

-- Location: LCCOMB_X55_Y50_N0
\pwm_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm_reg~1_combout\ = (\rst~input_o\ & (\pwm_reg~0_combout\ & ((\X2~q\) # (\pwm_reg~q\)))) # (!\rst~input_o\ & (((\pwm_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~q\,
	datab => \rst~input_o\,
	datac => \pwm_reg~q\,
	datad => \pwm_reg~0_combout\,
	combout => \pwm_reg~1_combout\);

-- Location: FF_X55_Y50_N1
pwm_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_reg~q\);

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

ww_cnt_out(0) <= \cnt_out[0]~output_o\;

ww_cnt_out(1) <= \cnt_out[1]~output_o\;

ww_cnt_out(2) <= \cnt_out[2]~output_o\;

ww_cnt_out(3) <= \cnt_out[3]~output_o\;

ww_cnt_out(4) <= \cnt_out[4]~output_o\;

ww_cnt_out(5) <= \cnt_out[5]~output_o\;

ww_cnt_out(6) <= \cnt_out[6]~output_o\;

ww_cnt_out(7) <= \cnt_out[7]~output_o\;

ww_pwm_out <= \pwm_out~output_o\;
END structure;


