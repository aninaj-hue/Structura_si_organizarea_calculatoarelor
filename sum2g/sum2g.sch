VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a0
        SIGNAL b0
        SIGNAL c0
        SIGNAL a1
        SIGNAL b1
        SIGNAL c1
        SIGNAL s0
        SIGNAL s1
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL c2
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        PORT Input a0
        PORT Input b0
        PORT Input c0
        PORT Input a1
        PORT Input b1
        PORT Output c1
        PORT Output s0
        PORT Output s1
        PORT Output c2
        BEGIN BLOCKDEF xor3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 208 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N -24 -184 88 -72 64 -80 64 -176 
            ARC N 44 -176 220 0 208 -128 128 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 128 -80 64 -80 
            LINE N 128 -176 64 -176 
            ARC N 44 -256 220 -80 128 -80 208 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor3
            PIN I0 c0
            PIN I1 b0
            PIN I2 a0
            PIN O s0
        END BLOCK
        BEGIN BLOCK XLXI_2 xor3
            PIN I0 c1
            PIN I1 b1
            PIN I2 a1
            PIN O s1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 b0
            PIN I1 a0
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 c0
            PIN I1 a0
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 c0
            PIN I1 b0
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 b1
            PIN I1 a1
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 c1
            PIN I1 a1
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 c1
            PIN I1 b1
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_9 or3
            PIN I0 XLXN_14
            PIN I1 XLXN_13
            PIN I2 XLXN_12
            PIN O c2
        END BLOCK
        BEGIN BLOCK XLXI_10 or3
            PIN I0 XLXN_11
            PIN I1 XLXN_10
            PIN I2 XLXN_9
            PIN O c1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 240 256 R0
        INSTANCE XLXI_2 240 480 R0
        BEGIN BRANCH a0
            WIRE 128 64 240 64
        END BRANCH
        BEGIN BRANCH b0
            WIRE 144 128 240 128
        END BRANCH
        BEGIN BRANCH c0
            WIRE 144 192 240 192
        END BRANCH
        BEGIN BRANCH a1
            WIRE 144 288 240 288
        END BRANCH
        BEGIN BRANCH b1
            WIRE 144 352 240 352
        END BRANCH
        BEGIN BRANCH c1
            WIRE 144 416 240 416
            BEGIN DISPLAY 144 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH s0
            WIRE 496 128 640 128
        END BRANCH
        BEGIN BRANCH s1
            WIRE 496 352 672 352
        END BRANCH
        IOMARKER 128 64 a0 R180 28
        IOMARKER 144 128 b0 R180 28
        IOMARKER 144 192 c0 R180 28
        IOMARKER 640 128 s0 R0 28
        IOMARKER 144 288 a1 R180 28
        IOMARKER 144 352 b1 R180 28
        IOMARKER 672 352 s1 R0 28
        INSTANCE XLXI_3 192 672 R0
        INSTANCE XLXI_4 208 816 R0
        INSTANCE XLXI_5 208 960 R0
        INSTANCE XLXI_6 192 1136 R0
        INSTANCE XLXI_7 192 1280 R0
        INSTANCE XLXI_8 192 1424 R0
        INSTANCE XLXI_9 720 1312 R0
        BEGIN BRANCH XLXN_9
            WIRE 448 576 688 576
            WIRE 688 576 688 656
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 464 720 688 720
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 464 864 688 864
            WIRE 688 784 688 864
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 448 1040 720 1040
            WIRE 720 1040 720 1120
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 448 1184 720 1184
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 448 1328 720 1328
            WIRE 720 1248 720 1328
        END BRANCH
        BEGIN BRANCH c1
            WIRE 144 1360 176 1360
            WIRE 176 1360 192 1360
            BEGIN DISPLAY 176 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b1
            WIRE 144 1296 176 1296
            WIRE 176 1296 192 1296
            BEGIN DISPLAY 176 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c1
            WIRE 144 1216 176 1216
            WIRE 176 1216 192 1216
            BEGIN DISPLAY 176 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a1
            WIRE 144 1152 176 1152
            WIRE 176 1152 192 1152
            BEGIN DISPLAY 176 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b1
            WIRE 128 1072 176 1072
            WIRE 176 1072 192 1072
            BEGIN DISPLAY 176 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a1
            WIRE 144 1008 160 1008
            WIRE 160 1008 192 1008
            BEGIN DISPLAY 160 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c2
            WIRE 976 1184 1008 1184
        END BRANCH
        IOMARKER 1008 1184 c2 R0 28
        BEGIN BRANCH a0
            WIRE 96 544 144 544
            WIRE 144 544 192 544
            BEGIN DISPLAY 144 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b0
            WIRE 112 608 144 608
            WIRE 144 608 192 608
            BEGIN DISPLAY 144 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a0
            WIRE 112 688 144 688
            WIRE 144 688 208 688
            BEGIN DISPLAY 144 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c0
            WIRE 112 752 160 752
            WIRE 160 752 208 752
            BEGIN DISPLAY 160 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b0
            WIRE 112 832 160 832
            WIRE 160 832 208 832
            BEGIN DISPLAY 160 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c0
            WIRE 112 896 160 896
            WIRE 160 896 208 896
            BEGIN DISPLAY 160 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c1
            WIRE 944 720 992 720
        END BRANCH
        IOMARKER 992 720 c1 R0 28
        INSTANCE XLXI_10 688 848 R0
    END SHEET
END SCHEMATIC
