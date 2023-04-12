VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL Co
        SIGNAL r(3:0)
        SIGNAL r(3)
        SIGNAL r(2)
        SIGNAL r(1)
        SIGNAL r(0)
        SIGNAL b(3:0)
        SIGNAL b(3)
        SIGNAL b(2)
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL a(3:0)
        SIGNAL a(3)
        SIGNAL a(2)
        SIGNAL a(1)
        SIGNAL a(0)
        SIGNAL Ci
        PORT Output Co
        PORT Output r(3:0)
        PORT Input b(3:0)
        PORT Input a(3:0)
        PORT Input Ci
        BEGIN BLOCKDEF sum1g
            TIMESTAMP 2023 3 15 20 7 33
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 320 -160 384 -160 
            LINE N 320 -48 384 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 sum1g
            PIN Ci XLXN_1
            PIN A a(3)
            PIN B b(3)
            PIN Co Co
            PIN S r(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 sum1g
            PIN Ci XLXN_2
            PIN A a(2)
            PIN B b(2)
            PIN Co XLXN_1
            PIN S r(2)
        END BLOCK
        BEGIN BLOCK XLXI_3 sum1g
            PIN Ci XLXN_3
            PIN A a(1)
            PIN B b(1)
            PIN Co XLXN_2
            PIN S r(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 sum1g
            PIN Ci Ci
            PIN A a(0)
            PIN B b(0)
            PIN Co XLXN_3
            PIN S r(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 880 1232 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1280 1232 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1680 1232 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_1 496 1232 M90
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 464 1168 464 1232
            WIRE 464 1168 576 1168
            WIRE 576 1168 576 1696
            WIRE 576 1696 720 1696
            WIRE 720 1616 720 1696
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 848 1168 848 1232
            WIRE 848 1168 944 1168
            WIRE 944 1168 944 1696
            WIRE 944 1696 1120 1696
            WIRE 1120 1616 1120 1696
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1248 1152 1248 1232
            WIRE 1248 1152 1344 1152
            WIRE 1344 1152 1344 1696
            WIRE 1344 1696 1520 1696
            WIRE 1520 1616 1520 1696
        END BRANCH
        BEGIN BRANCH Co
            WIRE 336 1616 336 1648
        END BRANCH
        IOMARKER 336 1648 Co R90 28
        BEGIN BRANCH r(3:0)
            WIRE 128 1824 448 1824
            WIRE 448 1824 832 1824
            WIRE 832 1824 1232 1824
            WIRE 1232 1824 1632 1824
            WIRE 1632 1824 1792 1824
        END BRANCH
        IOMARKER 1792 1824 r(3:0) R0 28
        BUSTAP 448 1824 448 1728
        BEGIN BRANCH r(3)
            WIRE 448 1616 448 1696
            WIRE 448 1696 448 1728
            BEGIN DISPLAY 448 1696 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1824 832 1728
        BEGIN BRANCH r(2)
            WIRE 832 1616 832 1680
            WIRE 832 1680 832 1728
            BEGIN DISPLAY 832 1680 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1232 1824 1232 1728
        BEGIN BRANCH r(1)
            WIRE 1232 1616 1232 1680
            WIRE 1232 1680 1232 1728
            BEGIN DISPLAY 1232 1680 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 1824 1632 1728
        BEGIN BRANCH r(0)
            WIRE 1632 1616 1632 1680
            WIRE 1632 1680 1632 1728
            BEGIN DISPLAY 1632 1680 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3:0)
            WIRE 128 752 336 752
            WIRE 336 752 720 752
            WIRE 720 752 1120 752
            WIRE 1120 752 1520 752
            WIRE 1520 752 1776 752
        END BRANCH
        IOMARKER 1776 752 b(3:0) R0 28
        BUSTAP 336 752 336 848
        BEGIN BRANCH b(3)
            WIRE 336 848 336 912
            WIRE 336 912 336 1232
            BEGIN DISPLAY 336 912 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 720 752 720 848
        BEGIN BRANCH b(2)
            WIRE 720 848 720 880
            WIRE 720 880 720 1232
            BEGIN DISPLAY 720 880 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1120 752 1120 848
        BEGIN BRANCH b(1)
            WIRE 1120 848 1120 912
            WIRE 1120 912 1120 1232
            BEGIN DISPLAY 1120 912 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1520 752 1520 848
        BEGIN BRANCH b(0)
            WIRE 1520 848 1520 880
            WIRE 1520 880 1520 1232
            BEGIN DISPLAY 1520 880 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3:0)
            WIRE 112 976 400 976
            WIRE 400 976 784 976
            WIRE 784 976 1184 976
            WIRE 1184 976 1584 976
            WIRE 1584 976 1776 976
        END BRANCH
        IOMARKER 1776 976 a(3:0) R0 28
        BUSTAP 400 976 400 1072
        BEGIN BRANCH a(3)
            WIRE 400 1072 400 1152
            WIRE 400 1152 400 1232
            BEGIN DISPLAY 400 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 976 784 1072
        BEGIN BRANCH a(2)
            WIRE 784 1072 784 1152
            WIRE 784 1152 784 1232
            BEGIN DISPLAY 784 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1184 976 1184 1072
        BEGIN BRANCH a(1)
            WIRE 1184 1072 1184 1152
            WIRE 1184 1152 1184 1232
            BEGIN DISPLAY 1184 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1584 976 1584 1072
        BEGIN BRANCH a(0)
            WIRE 1584 1072 1584 1152
            WIRE 1584 1152 1584 1232
            BEGIN DISPLAY 1584 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ci
            WIRE 1648 1200 1648 1232
        END BRANCH
        IOMARKER 1648 1200 Ci R270 28
    END SHEET
END SCHEMATIC
