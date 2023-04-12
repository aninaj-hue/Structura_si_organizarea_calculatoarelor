VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PC(31:0)
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(6:2)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        SIGNAL Instr(31:0)
        SIGNAL Instr(15:11)
        SIGNAL Instr(20:16)
        SIGNAL Instr(25:21)
        PORT Input Clk
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2023 4 1 19 14 45
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2023 4 1 19 20 59
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2023 4 1 19 49 26
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2
            TIMESTAMP 2023 4 1 19 57 17
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK U_New_Pc PC_Update
            PIN PC(31:0) PC(31:0)
            PIN New_PC(31:0) New_PC(31:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0)
            PIN I1(4:0) Instr(15:11)
            PIN Sel RegDest
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH PC(31:0)
            WIRE 1440 352 1536 352
            WIRE 1536 352 1536 608
            WIRE 1536 608 1536 848
            WIRE 1536 848 1536 944
            WIRE 1536 944 1536 1088
            WIRE 1520 848 1536 848
            BEGIN DISPLAY 1536 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH New_PC(31:0)
            WIRE 992 352 1056 352
            WIRE 992 352 992 624
            WIRE 992 624 992 912
            WIRE 992 912 1136 912
            BEGIN DISPLAY 992 624 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 1088 848 1136 848
        END BRANCH
        BEGIN INSTANCE U_PC 1136 944 R0
            BEGIN DISPLAY 144 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 1088 848 Clk R180 28
        BEGIN INSTANCE U_New_Pc 1440 384 M0
            BEGIN DISPLAY 0 -184 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_ROM 1904 976 R0
            BEGIN DISPLAY 128 -200 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1536 944 1632 944
        BEGIN BRANCH PC(6:2)
            WIRE 1632 944 1728 944
            WIRE 1728 944 1904 944
            BEGIN DISPLAY 1728 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 2576 1280 R0
            BEGIN DISPLAY 96 40 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegDest
            WIRE 2416 1248 2496 1248
            WIRE 2496 1248 2576 1248
            BEGIN DISPLAY 2496 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2960 1120 3040 1120
            WIRE 3040 1120 3152 1120
            BEGIN DISPLAY 3040 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 2288 944 2304 944
            WIRE 2304 944 2304 992
            WIRE 2304 992 2304 1056
            WIRE 2304 1056 2304 1184
            WIRE 2304 1184 2304 1216
            WIRE 2304 1216 2304 1360
            WIRE 2304 1360 2304 1392
            BEGIN DISPLAY 2304 1216 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2304 992 2400 992
        BUSTAP 2304 1056 2400 1056
        BUSTAP 2304 1184 2400 1184
        BEGIN BRANCH Instr(15:11)
            WIRE 2400 1184 2464 1184
            WIRE 2464 1184 2576 1184
            BEGIN DISPLAY 2464 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 2400 1056 3008 1056
            WIRE 3008 1056 3168 1056
            BEGIN DISPLAY 3008 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(25:21)
            WIRE 2400 992 2928 992
            WIRE 2928 992 3184 992
            BEGIN DISPLAY 2928 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
