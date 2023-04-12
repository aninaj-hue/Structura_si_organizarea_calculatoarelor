--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : test.vhw
-- /___/   /\     Timestamp : Fri Feb 24 23:23:38 2023
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY test IS
END test;

ARCHITECTURE testbench_arch OF test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT sum2g
        PORT (
            a0 : In std_logic;
            a1 : In std_logic;
            b0 : In std_logic;
            b1 : In std_logic;
            c0 : In std_logic;
            c1 : Out std_logic;
            c2 : Out std_logic;
            s0 : Out std_logic;
            s1 : Out std_logic
        );
    END COMPONENT;

    SIGNAL a0 : std_logic := '0';
    SIGNAL a1 : std_logic := '0';
    SIGNAL b0 : std_logic := '0';
    SIGNAL b1 : std_logic := '0';
    SIGNAL c0 : std_logic := '0';
    SIGNAL c1 : std_logic := '0';
    SIGNAL c2 : std_logic := '0';
    SIGNAL s0 : std_logic := '0';
    SIGNAL s1 : std_logic := '0';

    BEGIN
        UUT : sum2g
        PORT MAP (
            a0 => a0,
            a1 => a1,
            b0 => b0,
            b1 => b1,
            c0 => c0,
            c1 => c1,
            c2 => c2,
            s0 => s0,
            s1 => s1
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                b0 <= '0';
                b1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 200 ns;
                a0 <= '1';
                b0 <= '0';
                b1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                b0 <= '0';
                b1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                a0 <= '0';
                a1 <= '1';
                b0 <= '0';
                b1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 200 ns;
                b0 <= '0';
                b1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                a0 <= '1';
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                b0 <= '0';
                b1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                b0 <= '0';
                b1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                b0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                b0 <= '0';
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

