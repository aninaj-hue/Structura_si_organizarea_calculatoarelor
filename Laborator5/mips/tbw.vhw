--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw.vhw
-- /___/   /\     Timestamp : Fri Jun 03 03:01:19 2022
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw
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

ENTITY tbw IS
END tbw;

ARCHITECTURE testbench_arch OF tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mips
        PORT (
            Clk : In std_logic;
            INW0 : In std_logic_vector (31 DownTo 0);
            INW1 : In std_logic_vector (31 DownTo 0);
            OUTW0 : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL Clk : std_logic := '0';
    SIGNAL INW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL INW1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL OUTW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    constant PERIOD : time := 60 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : mips
        PORT MAP (
            Clk => Clk,
            INW0 => INW0,
            INW1 => INW1,
            OUTW0 => OUTW0
        );

        PROCESS    -- clock process for Clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                Clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                Clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  125ns
                WAIT FOR 125 ns;
                INW0 <= "01011111001001111110011011101000";
                -- -------------------------------------
                -- -------------  Current Time:  185ns
                WAIT FOR 60 ns;
                INW0 <= "11001000001111111010100100100110";
                INW1 <= "00000000000000000000000000000001";
                -- -------------------------------------
                -- -------------  Current Time:  245ns
                WAIT FOR 60 ns;
                INW0 <= "10010001101100111101111110001001";
                INW1 <= "00000000000000000000000000000010";
                -- -------------------------------------
                -- -------------  Current Time:  305ns
                WAIT FOR 60 ns;
                INW0 <= "00011101101110011110000001110110";
                INW1 <= "00000000000000000000000000000011";
                -- -------------------------------------
                -- -------------  Current Time:  365ns
                WAIT FOR 60 ns;
                INW0 <= "11101010001100011010011110111001";
                INW1 <= "00000000000000000000000000000100";
                -- -------------------------------------
                -- -------------  Current Time:  425ns
                WAIT FOR 60 ns;
                INW0 <= "01110011000110011101101101010111";
                INW1 <= "00000000000000000000000000000101";
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 60 ns;
                INW0 <= "01110100000101011010110010001000";
                INW1 <= "00000000000000000000000000000110";
                -- -------------------------------------
                -- -------------  Current Time:  545ns
                WAIT FOR 60 ns;
                INW0 <= "10101000100101011100011000100111";
                INW1 <= "00000000000000000000000000000111";
                -- -------------------------------------
                -- -------------  Current Time:  605ns
                WAIT FOR 60 ns;
                INW1 <= "10101000100101011100011000100111";
                -- -------------------------------------
                WAIT FOR 455 ns;

            END PROCESS;

    END testbench_arch;

