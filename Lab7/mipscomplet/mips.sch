VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(20:16)
        SIGNAL Instr(25:21)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        SIGNAL RegWr
        SIGNAL Instr(15:0)
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL MemWr
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL WrData(31:0)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL ALU_Out(6:2)
        SIGNAL ALU_Out(31:0)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 4 30 12 54 17
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Pc_Update
            TIMESTAMP 2022 4 30 13 3 50
            RECTANGLE N 64 -64 320 28 
            RECTANGLE N 0 -44 64 -20 
            LINE N 0 -32 64 -32 
            RECTANGLE N 320 -12 384 12 
            LINE N 388 0 324 0 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2022 4 30 13 56 2
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2022 4 30 14 7 19
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -48 0 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 5 21 8 40 31
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 60 -616 380 -12 
            LINE N 64 -592 0 -592 
            LINE N 64 -528 0 -528 
            RECTANGLE N 384 -604 448 -580 
            LINE N 384 -592 448 -592 
            RECTANGLE N 384 -524 448 -500 
            LINE N 384 -512 448 -512 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 5 21 9 53 9
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 5 21 11 22 30
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -268 64 -244 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -316 64 -292 
            LINE N 64 -304 0 -304 
            RECTANGLE N 368 -316 432 -292 
            LINE N 368 -304 432 -304 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2022 5 21 11 42 40
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 5 21 12 16 54
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
            PIN New_Pc(31:0) New_PC(31:0)
            PIN Pc(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC Pc_Update
            PIN New_Pc(31:0) New_PC(31:0)
            PIN Pc(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN I1(4:0) Instr(15:11)
            PIN I0(4:0) Instr(20:16)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUSrc ALUSrc
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Wr MemWr
            PIN INW1(31:0) INW1(31:0)
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
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
            PIN ALUOP(1:0) ALUOP(1:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_New_PC 352 288 R0
            BEGIN DISPLAY 112 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 240 256 352 256
            WIRE 240 256 240 448
            WIRE 240 448 240 640
            WIRE 240 640 368 640
            BEGIN DISPLAY 240 448 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 336 576 368 576
        END BRANCH
        IOMARKER 336 576 Clk R180 28
        BEGIN INSTANCE U_PC 368 672 R0
            BEGIN DISPLAY 144 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(31:0)
            WIRE 736 288 768 288
            WIRE 768 288 768 416
            WIRE 768 416 768 576
            WIRE 768 576 768 656
            WIRE 768 656 768 720
            WIRE 752 576 768 576
            BEGIN DISPLAY 768 416 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 768 656 864 656
        BEGIN BRANCH PC(6:2)
            WIRE 864 656 896 656
            WIRE 896 656 960 656
            BEGIN DISPLAY 896 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1344 656 1392 656
            WIRE 1392 656 1392 688
            WIRE 1392 688 1392 736
            WIRE 1392 736 1392 912
            WIRE 1392 912 1392 1072
            WIRE 1392 1072 1392 1232
            WIRE 1392 1232 1392 1280
            WIRE 1392 1280 1392 1536
            WIRE 1392 1536 1392 1856
            WIRE 1392 1856 1392 1904
            BEGIN DISPLAY 1392 912 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1392 688 1488 688
        BUSTAP 1392 736 1488 736
        BEGIN BRANCH Instr(20:16)
            WIRE 1488 736 1632 736
            WIRE 1632 736 1632 1008
            WIRE 1632 1008 1728 1008
            WIRE 1632 736 1840 736
            WIRE 1840 736 1952 736
            WIRE 1952 736 1952 752
            WIRE 1952 752 2368 752
            BEGIN DISPLAY 1840 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(25:21)
            WIRE 1488 688 1840 688
            WIRE 1840 688 2368 688
            BEGIN DISPLAY 1840 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 1728 1168 R0
            BEGIN DISPLAY 96 -296 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1392 1072 1488 1072
        BEGIN BRANCH Instr(15:11)
            WIRE 1472 1072 1488 1072
            WIRE 1488 1072 1584 1072
            WIRE 1584 1072 1728 1072
            BEGIN DISPLAY 1584 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1472 1120 1584 1120
            WIRE 1584 1120 1728 1120
            BEGIN DISPLAY 1584 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2112 1008 2208 1008
            WIRE 2208 1008 2368 1008
            BEGIN DISPLAY 2208 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2368 1104 R0
            BEGIN DISPLAY 96 -688 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 2192 512 2256 512
            WIRE 2256 512 2368 512
            BEGIN DISPLAY 2256 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2096 576 2144 576
            WIRE 2144 576 2368 576
            BEGIN DISPLAY 2144 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1392 1232 1488 1232
        BEGIN BRANCH Instr(15:0)
            WIRE 1488 1232 2096 1232
            WIRE 2096 1232 2880 1232
            WIRE 2880 640 2880 1232
            WIRE 2880 640 3200 640
            BEGIN DISPLAY 2096 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(31:0)
            WIRE 2816 512 2960 512
            WIRE 2960 512 3200 512
            BEGIN DISPLAY 2960 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3200 800 R0
            BEGIN DISPLAY 144 -392 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData2(31:0)
            WIRE 2816 592 2912 592
            WIRE 2912 592 2944 592
            WIRE 2944 592 3008 592
            WIRE 2912 592 2912 864
            WIRE 2912 864 2912 960
            WIRE 2912 960 3824 960
            WIRE 3008 576 3008 592
            WIRE 3008 576 3200 576
            WIRE 3824 816 3824 960
            WIRE 3824 816 3856 816
            BEGIN DISPLAY 2944 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2944 704 3024 704
            WIRE 3024 704 3200 704
            BEGIN DISPLAY 3024 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2944 768 3024 768
            WIRE 3024 768 3200 768
            BEGIN DISPLAY 3024 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3632 672 3712 672
            WIRE 3712 672 3856 672
            BEGIN DISPLAY 3712 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 3792 544 3808 544
            WIRE 3808 544 3856 544
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 3792 592 3808 592
            WIRE 3808 592 3856 592
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3760 496 3808 496
            WIRE 3808 496 3856 496
            BEGIN DISPLAY 3808 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4288 544 4304 544
            WIRE 4304 544 4320 544
        END BRANCH
        BEGIN INSTANCE U_DataMem 3856 848 R0
            BEGIN DISPLAY 96 -456 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 3792 592 INW1(31:0) R180 28
        IOMARKER 3792 544 INW0(31:0) R180 28
        IOMARKER 4320 544 OUTW0(31:0) R0 28
        BEGIN BRANCH WrData(31:0)
            WIRE 2352 1072 2368 1072
            WIRE 2352 1072 2352 1152
            WIRE 2352 1152 3520 1152
            WIRE 3520 1152 5056 1152
            WIRE 4976 752 5056 752
            WIRE 5056 752 5056 1152
            BEGIN DISPLAY 3520 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 4592 912 R0
            BEGIN DISPLAY 112 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 4288 816 4400 816
            WIRE 4400 816 4592 816
            BEGIN DISPLAY 4400 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4336 752 4432 752
            WIRE 4432 752 4592 752
            BEGIN DISPLAY 4432 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3728 752 3760 752
            WIRE 3760 752 3808 752
            WIRE 3808 752 3856 752
            BEGIN DISPLAY 3760 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3584 704 3632 704
            WIRE 3632 704 3632 752
            WIRE 3632 752 3632 864
            WIRE 3632 864 3632 880
            WIRE 3632 880 4016 880
            WIRE 4016 880 4592 880
            BEGIN DISPLAY 4016 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3632 752 3728 752
        BEGIN INSTANCE U_ctrl 1744 1888 R0
            BEGIN DISPLAY 240 -408 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1392 1856 1488 1856
        BUSTAP 1392 1536 1488 1536
        BEGIN BRANCH Instr(31:26)
            WIRE 1488 1536 1584 1536
            WIRE 1584 1536 1744 1536
            BEGIN DISPLAY 1584 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(5:0)
            WIRE 1488 1856 1584 1856
            WIRE 1584 1856 1744 1856
            BEGIN DISPLAY 1584 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2128 1536 2224 1536
            WIRE 2224 1536 2400 1536
            BEGIN DISPLAY 2224 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2128 1856 2272 1856
            WIRE 2272 1856 2480 1856
            BEGIN DISPLAY 2272 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2128 1792 2144 1792
            WIRE 2144 1792 2288 1792
            WIRE 2288 1792 2512 1792
            BEGIN DISPLAY 2288 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2128 1728 2288 1728
            WIRE 2288 1728 2464 1728
            BEGIN DISPLAY 2288 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2128 1664 2272 1664
            WIRE 2272 1664 2432 1664
            BEGIN DISPLAY 2272 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2128 1600 2224 1600
            WIRE 2224 1600 2416 1600
            BEGIN DISPLAY 2224 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 960 688 R0
            BEGIN DISPLAY 144 -168 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
    END SHEET
END SCHEMATIC
