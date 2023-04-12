VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL Ci
        SIGNAL S
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL Co
        PORT Input A
        PORT Input B
        PORT Input Ci
        PORT Output S
        PORT Output Co
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
            PIN I0 Ci
            PIN I1 B
            PIN I2 A
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Ci
            PIN I1 A
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 Ci
            PIN I1 B
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 or3
            PIN I0 XLXN_13
            PIN I1 XLXN_12
            PIN I2 XLXN_11
            PIN O Co
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 416 368 R0
        BEGIN BRANCH A
            WIRE 192 176 416 176
        END BRANCH
        BEGIN BRANCH B
            WIRE 192 240 416 240
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 192 304 416 304
        END BRANCH
        BEGIN BRANCH S
            WIRE 672 240 880 240
        END BRANCH
        IOMARKER 192 176 A R180 28
        IOMARKER 192 240 B R180 28
        IOMARKER 192 304 Ci R180 28
        IOMARKER 880 240 S R0 28
        INSTANCE XLXI_2 208 608 R0
        INSTANCE XLXI_3 224 768 R0
        INSTANCE XLXI_4 224 912 R0
        INSTANCE XLXI_5 816 800 R0
        BEGIN BRANCH A
            WIRE 80 480 128 480
            WIRE 128 480 208 480
            BEGIN DISPLAY 128 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 80 544 112 544
            WIRE 112 544 208 544
            BEGIN DISPLAY 112 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 80 640 112 640
            WIRE 112 640 224 640
            BEGIN DISPLAY 112 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 80 704 128 704
            WIRE 128 704 224 704
            BEGIN DISPLAY 128 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 80 784 112 784
            WIRE 112 784 224 784
            BEGIN DISPLAY 112 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 80 848 112 848
            WIRE 112 848 224 848
            BEGIN DISPLAY 112 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 464 512 816 512
            WIRE 816 512 816 608
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 480 672 816 672
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 480 816 816 816
            WIRE 816 736 816 816
        END BRANCH
        BEGIN BRANCH Co
            WIRE 1072 672 1104 672
        END BRANCH
        IOMARKER 1104 672 Co R0 28
    END SHEET
END SCHEMATIC
