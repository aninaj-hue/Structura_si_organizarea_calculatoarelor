VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B(3:0)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL NB(3)
        SIGNAL NB(2)
        SIGNAL NB(1)
        SIGNAL NB(0)
        BEGIN SIGNAL NB(3:0)
        END SIGNAL
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL S1A0
        SIGNAL XLXN_17
        BEGIN SIGNAL BNB(3:0)
        END SIGNAL
        SIGNAL BNB(0)
        SIGNAL BNB(1)
        SIGNAL BNB(2)
        SIGNAL BNB(3)
        SIGNAL A(3:0)
        SIGNAL Co
        SIGNAL R(3:0)
        PORT Input B(3:0)
        PORT Input S1A0
        PORT Input A(3:0)
        PORT Output Co
        PORT Output R(3:0)
        BEGIN BLOCKDEF sum4
            TIMESTAMP 2023 3 15 20 46 45
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -140 384 -116 
            LINE N 320 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sum4
            PIN Ci S1A0
            PIN a(3:0) A(3:0)
            PIN b(3:0) BNB(3:0)
            PIN Co Co
            PIN r(3:0) R(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 B(3)
            PIN D1 NB(3)
            PIN S0 S1A0
            PIN O BNB(3)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 B(2)
            PIN D1 NB(2)
            PIN S0 S1A0
            PIN O BNB(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 B(1)
            PIN D1 NB(1)
            PIN S0 S1A0
            PIN O BNB(1)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 B(0)
            PIN D1 NB(0)
            PIN S0 S1A0
            PIN O BNB(0)
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I B(3)
            PIN O NB(3)
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I B(2)
            PIN O NB(2)
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I B(1)
            PIN O NB(1)
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I B(0)
            PIN O NB(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 640 848 R90
        INSTANCE XLXI_3 1008 848 R90
        INSTANCE XLXI_5 1360 848 R90
        INSTANCE XLXI_6 1680 848 R90
        INSTANCE XLXI_8 1072 448 R90
        INSTANCE XLXI_10 1728 448 R90
        INSTANCE XLXI_9 1424 448 R90
        INSTANCE XLXI_7 704 448 R90
        BEGIN BRANCH B(3:0)
            WIRE 592 192 736 192
            WIRE 736 192 848 192
            WIRE 848 192 1104 192
            WIRE 1104 192 1456 192
            WIRE 1456 192 1760 192
            WIRE 1760 192 1952 192
            BEGIN DISPLAY 848 192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1952 192 B(3:0) R0 28
        BUSTAP 736 192 736 288
        BEGIN BRANCH B(3)
            WIRE 736 288 736 368
            WIRE 736 368 736 400
            WIRE 736 400 736 448
            WIRE 736 400 800 400
            WIRE 800 400 800 848
            BEGIN DISPLAY 736 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1104 192 1104 288
        BEGIN BRANCH B(2)
            WIRE 1104 288 1104 384
            WIRE 1104 384 1104 416
            WIRE 1104 416 1104 448
            WIRE 1104 416 1168 416
            WIRE 1168 416 1168 848
            BEGIN DISPLAY 1104 384 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1456 192 1456 288
        BEGIN BRANCH B(1)
            WIRE 1456 288 1456 368
            WIRE 1456 368 1456 400
            WIRE 1456 400 1456 448
            WIRE 1456 400 1520 400
            WIRE 1520 400 1520 848
            BEGIN DISPLAY 1456 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 192 1760 288
        BEGIN BRANCH B(0)
            WIRE 1760 288 1760 368
            WIRE 1760 368 1760 416
            WIRE 1760 416 1760 448
            WIRE 1760 416 1840 416
            WIRE 1840 416 1840 848
            BEGIN DISPLAY 1760 368 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(3)
            WIRE 736 672 736 768
            WIRE 736 768 736 848
            BEGIN DISPLAY 736 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(2)
            WIRE 1104 672 1104 768
            WIRE 1104 768 1104 848
            BEGIN DISPLAY 1104 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(1)
            WIRE 1456 672 1456 768
            WIRE 1456 768 1456 848
            BEGIN DISPLAY 1456 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(0)
            WIRE 1760 672 1760 752
            WIRE 1760 752 1776 752
            WIRE 1776 752 1776 848
            BEGIN DISPLAY 1760 752 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NB(3:0)
            WIRE 496 768 560 768
            WIRE 560 768 656 768
            BEGIN DISPLAY 560 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S1A0
            WIRE 560 816 592 816
            WIRE 592 816 672 816
            WIRE 672 816 672 848
            WIRE 672 816 1040 816
            WIRE 1040 816 1392 816
            WIRE 1392 816 1392 848
            WIRE 1392 816 1712 816
            WIRE 1712 816 1712 848
            WIRE 1040 816 1040 848
            WIRE 592 816 592 1472
            WIRE 592 1472 1104 1472
            WIRE 1104 1472 1104 1504
        END BRANCH
        IOMARKER 560 816 S1A0 R180 28
        BEGIN INSTANCE XLXI_1 1072 1504 R90
        END INSTANCE
        BEGIN BRANCH BNB(3:0)
            WIRE 704 1376 768 1376
            WIRE 768 1376 1040 1376
            WIRE 1040 1376 1136 1376
            WIRE 1136 1376 1152 1376
            WIRE 1152 1376 1152 1504
            WIRE 1152 1376 1488 1376
            WIRE 1488 1376 1808 1376
            WIRE 1808 1376 2112 1376
            BEGIN DISPLAY 1040 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1808 1376 1808 1280
        BEGIN BRANCH BNB(0)
            WIRE 1808 1168 1808 1216
            WIRE 1808 1216 1808 1280
            BEGIN DISPLAY 1808 1216 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1488 1376 1488 1280
        BEGIN BRANCH BNB(1)
            WIRE 1488 1168 1488 1232
            WIRE 1488 1232 1488 1280
            BEGIN DISPLAY 1488 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1136 1376 1136 1280
        BEGIN BRANCH BNB(2)
            WIRE 1136 1168 1136 1216
            WIRE 1136 1216 1136 1280
            BEGIN DISPLAY 1136 1216 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 768 1376 768 1280
        BEGIN BRANCH BNB(3)
            WIRE 768 1168 768 1232
            WIRE 768 1232 768 1280
            BEGIN DISPLAY 768 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 1216 1424 1216 1504
            WIRE 1216 1424 2016 1424
        END BRANCH
        IOMARKER 2016 1424 A(3:0) R0 28
        BEGIN BRANCH Co
            WIRE 1104 1888 1104 1920
        END BRANCH
        IOMARKER 1104 1920 Co R90 28
        BEGIN BRANCH R(3:0)
            WIRE 1200 1888 1200 1920
        END BRANCH
        IOMARKER 1200 1920 R(3:0) R90 28
    END SHEET
END SCHEMATIC
