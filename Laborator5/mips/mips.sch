VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL New_PC(31:0)
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(15:11)
        SIGNAL Instr(20:16)
        SIGNAL RegDest
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL Instr(15:0)
        SIGNAL RegWr
        SIGNAL WrReg(4:0)
        SIGNAL MemWr
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL XLXN_13(31:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL ALUSOP(1:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 4 29 5 36 2
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2022 4 29 5 51 37
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -64 320 80 
            RECTANGLE N 320 36 384 60 
            LINE N 320 48 384 48 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2022 4 29 14 7 4
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2022 4 29 14 26 48
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 5 10 8 21 16
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 6 2 22 52 43
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 6 2 23 7 41
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2022 6 2 23 26 41
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 6 2 23 39 9
            RECTANGLE N 64 -384 320 0 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) New_PC(31:0)
            PIN New_PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN Y(31:0) ALU_Out(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN ALUSrc ALUSrc
            PIN ALUOp(1:0) ALUOP(1:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN RdData2(31:0) RdData2(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN DataOut(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) WrData(31:0)
            PIN I1(31:0) MemOut(31:0)
            PIN I0(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK U_ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUSOP(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_PC 272 864 R0
            BEGIN DISPLAY 80 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 240 768 272 768
        END BRANCH
        IOMARKER 240 768 Clk R180 28
        BEGIN INSTANCE U_New_PC 144 272 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 96 240 144 240
            WIRE 96 240 96 592
            WIRE 96 592 96 832
            WIRE 96 832 272 832
            BEGIN DISPLAY 96 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 528 320 688 320
            WIRE 688 320 688 576
            WIRE 688 576 688 768
            WIRE 688 768 688 848
            WIRE 688 848 688 896
            WIRE 656 768 688 768
            BEGIN DISPLAY 688 576 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 880 880 R0
            BEGIN DISPLAY 32 -168 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 688 848 784 848
        BEGIN BRANCH PC(6:2)
            WIRE 784 848 816 848
            WIRE 816 848 880 848
            BEGIN DISPLAY 816 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1264 848 1280 848
            WIRE 1280 848 1280 912
            WIRE 1280 912 1280 1040
            WIRE 1280 1040 1280 1248
            WIRE 1280 1248 1280 1360
            WIRE 1280 1360 1280 1456
            WIRE 1280 1456 1280 1616
            WIRE 1280 1616 1280 1664
            WIRE 1280 1664 1280 1920
            WIRE 1280 1920 1280 2240
            WIRE 1280 2240 1280 2320
            BEGIN DISPLAY 1280 1248 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1280 912 1376 912
        BUSTAP 1280 1040 1376 1040
        BUSTAP 1280 1360 1376 1360
        BEGIN INSTANCE U_MUXRegD 1680 1456 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(15:11)
            WIRE 1376 1360 1456 1360
            WIRE 1456 1360 1680 1360
            BEGIN DISPLAY 1456 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1472 1424 1536 1424
            WIRE 1536 1424 1680 1424
            BEGIN DISPLAY 1536 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2448 1392 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(25:21)
            WIRE 1376 912 1776 912
            WIRE 1776 912 1984 912
            WIRE 1984 912 2272 912
            WIRE 2272 912 2272 1168
            WIRE 2272 1168 2448 1168
            BEGIN DISPLAY 1776 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1376 1040 1504 1040
            WIRE 1504 1040 1712 1040
            WIRE 1712 1040 1984 1040
            WIRE 1984 1040 2208 1040
            WIRE 2208 1040 2208 1232
            WIRE 2208 1232 2448 1232
            WIRE 1504 1040 1504 1296
            WIRE 1504 1296 1680 1296
            BEGIN DISPLAY 1712 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3168 1264 R0
            BEGIN DISPLAY 128 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(31:0)
            WIRE 2928 976 3008 976
            WIRE 3008 976 3040 976
            WIRE 3040 976 3168 976
            BEGIN DISPLAY 3040 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 2928 1040 3008 1040
            WIRE 3008 1040 3040 1040
            WIRE 3040 1040 3168 1040
            WIRE 3008 1040 3008 1520
            WIRE 3008 1520 3600 1520
            WIRE 3600 1248 3904 1248
            WIRE 3600 1248 3600 1520
            BEGIN DISPLAY 3040 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3056 1168 3104 1168
            WIRE 3104 1168 3168 1168
            BEGIN DISPLAY 3104 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3056 1232 3136 1232
            WIRE 3136 1232 3168 1232
            BEGIN DISPLAY 3136 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1280 1616 1376 1616
        BEGIN BRANCH Instr(15:0)
            WIRE 1376 1616 1824 1616
            WIRE 1824 1616 2976 1616
            WIRE 2976 1104 2976 1616
            WIRE 2976 1104 3168 1104
            BEGIN DISPLAY 1824 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 3904 1104 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_MuxData 4720 1344 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2336 976 2384 976
            WIRE 2384 976 2448 976
            BEGIN DISPLAY 2384 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2336 1040 2368 1040
            WIRE 2368 1040 2448 1040
            BEGIN DISPLAY 2368 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2064 1296 2208 1296
            WIRE 2208 1296 2256 1296
            WIRE 2256 1296 2256 1392
            WIRE 2256 1392 2448 1392
            BEGIN DISPLAY 2208 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3792 896 3856 896
            WIRE 3856 896 3904 896
            BEGIN DISPLAY 3856 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3824 1120 3888 1120
            WIRE 3888 1120 3904 1120
            BEGIN DISPLAY 3888 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 3824 960 3904 960
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 3824 1024 3904 1024
        END BRANCH
        IOMARKER 3824 960 INW0(31:0) R180 28
        IOMARKER 3824 1024 INW1(31:0) R180 28
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3552 1168 3632 1168
            WIRE 3632 1168 3632 1184
            WIRE 3632 1184 3632 1760
            WIRE 3632 1760 3872 1760
            WIRE 3872 1760 4176 1760
            WIRE 4176 1312 4176 1760
            WIRE 4176 1312 4720 1312
            BEGIN DISPLAY 3872 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3632 1184 3728 1184
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3728 1184 3808 1184
            WIRE 3808 1184 3904 1184
            BEGIN DISPLAY 3808 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(31:0)
            WIRE 4352 1248 4496 1248
            WIRE 4496 1248 4528 1248
            WIRE 4528 1248 4528 1264
            WIRE 4528 1264 4720 1264
            BEGIN DISPLAY 4496 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4544 1184 4608 1184
            WIRE 4608 1184 4720 1184
            BEGIN DISPLAY 4608 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2400 1488 2448 1488
            WIRE 2400 1488 2400 1840
            WIRE 2400 1840 3088 1840
            WIRE 3088 1840 5200 1840
            WIRE 5104 1184 5200 1184
            WIRE 5200 1184 5200 1840
            BEGIN DISPLAY 3088 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4352 960 4400 960
        END BRANCH
        IOMARKER 4400 960 OUTW0(31:0) R0 28
        BEGIN INSTANCE U_ctrl 1552 2272 R0
            BEGIN DISPLAY 80 -472 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1280 1920 1376 1920
        BUSTAP 1280 2240 1376 2240
        BEGIN BRANCH Instr(31:26)
            WIRE 1376 1920 1424 1920
            WIRE 1424 1920 1552 1920
            BEGIN DISPLAY 1424 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(5:0)
            WIRE 1376 2240 1472 2240
            WIRE 1472 2240 1552 2240
            BEGIN DISPLAY 1472 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 1936 1920 2064 1920
            WIRE 2064 1920 2144 1920
            BEGIN DISPLAY 2064 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 1936 1984 2016 1984
            WIRE 2016 1984 2144 1984
            BEGIN DISPLAY 2016 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 1936 2048 2032 2048
            WIRE 2032 2048 2144 2048
            BEGIN DISPLAY 2032 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 1936 2112 2032 2112
            WIRE 2032 2112 2160 2112
            BEGIN DISPLAY 2032 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1936 2176 2032 2176
            WIRE 2032 2176 2176 2176
            BEGIN DISPLAY 2032 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSOP(1:0)
            WIRE 1936 2240 2032 2240
            WIRE 2032 2240 2176 2240
            BEGIN DISPLAY 2032 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
