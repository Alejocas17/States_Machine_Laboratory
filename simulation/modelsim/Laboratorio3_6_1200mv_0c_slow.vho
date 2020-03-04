-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "03/04/2020 12:13:13"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Esquema_FF IS
    PORT (
	Z : OUT std_logic;
	CLR : IN std_logic;
	CLK : IN std_logic;
	W : IN std_logic;
	X : IN std_logic
	);
END Esquema_FF;

-- Design Ports Information
-- Z	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Esquema_FF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \inst23~1_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;

BEGIN

Z <= ww_Z;
ww_CLR <= CLR;
ww_CLK <= CLK;
ww_W <= W;
ww_X <= X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y4_N23
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y5_N22
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X1_Y4_N10
\inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = (!\inst1~q\ & !\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1~q\,
	datad => \inst2~q\,
	combout => \inst23~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\inst23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~1_combout\ = (!\X~input_o\ & ((\W~input_o\ & (\inst~q\ & \inst23~0_combout\)) # (!\W~input_o\ & ((!\inst23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \W~input_o\,
	datac => \inst~q\,
	datad => \inst23~0_combout\,
	combout => \inst23~1_combout\);

-- Location: IOIBUF_X0_Y16_N15
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G4
\CLR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~inputclkctrl_outclk\);

-- Location: FF_X1_Y4_N23
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst23~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: IOIBUF_X0_Y4_N15
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\W~input_o\) # ((\X~input_o\ & \inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W~input_o\,
	datac => \X~input_o\,
	datad => \inst~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\inst3~0_combout\ & ((\inst2~q\) # ((\inst~q\ & \inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \inst1~q\,
	datac => \inst2~q\,
	datad => \inst3~0_combout\,
	combout => \inst3~1_combout\);

-- Location: FF_X1_Y4_N29
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X1_Y4_N24
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\X~input_o\ & (((\inst1~q\ & \inst~q\)) # (!\W~input_o\))) # (!\X~input_o\ & (!\W~input_o\ & (\inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~input_o\,
	datab => \W~input_o\,
	datac => \inst1~q\,
	datad => \inst~q\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\inst2~q\) # (\inst8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2~q\,
	datad => \inst8~0_combout\,
	combout => \inst8~1_combout\);

-- Location: FF_X1_Y4_N17
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y4_N30
inst10 : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\inst2~q\) # ((\inst~q\ & \inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst10~combout\);

ww_Z <= \Z~output_o\;
END structure;


