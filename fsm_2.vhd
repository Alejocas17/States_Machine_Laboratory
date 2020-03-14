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

-- Generated by Quartus II Version 13.0.0 Build 156 04/24/2013 SJ Web Edition
-- Created on Wed Mar 11 10:31:02 2020

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fsm_2 IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        z0 : OUT STD_LOGIC;
        z1 : OUT STD_LOGIC
    );
END fsm_2;

ARCHITECTURE BEHAVIOR OF fsm_2 IS
    TYPE type_fstate IS (state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            z0 <= '0';
            z1 <= '0';
        ELSE
            z0 <= '0';
            z1 <= '0';
            CASE fstate IS
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state2 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state3;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state3 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state4 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state11;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state4;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state5 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state6;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state5;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '1')) THEN
                        z1 <= '0';
                    ELSIF ((x = '0')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state6 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state7;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state6;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state7 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state8;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state7;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state7;
                    END IF;

                    IF ((x = '1')) THEN
                        z0 <= '0';
                    ELSIF ((x = '0')) THEN
                        z0 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state8 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state9;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state8;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state8;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '1';
                    ELSIF ((x = '1')) THEN
                        z0 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state9 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state8;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state9;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '1';
                    ELSIF ((x = '1')) THEN
                        z0 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state10 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state11;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state10;
                    END IF;

                    IF ((x = '0')) THEN
                        z0 <= '0';
                    ELSIF ((x = '1')) THEN
                        z0 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '1')) THEN
                        z1 <= '1';
                    ELSIF ((x = '0')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN state11 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state7;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state8;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state11;
                    END IF;

                    IF ((x = '1')) THEN
                        z0 <= '0';
                    ELSIF ((x = '0')) THEN
                        z0 <= '1';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z0 <= '0';
                    END IF;

                    IF ((x = '0')) THEN
                        z1 <= '0';
                    ELSIF ((x = '1')) THEN
                        z1 <= '0';
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        z1 <= '0';
                    END IF;
                WHEN OTHERS => 
                    z0 <= 'X';
                    z1 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
