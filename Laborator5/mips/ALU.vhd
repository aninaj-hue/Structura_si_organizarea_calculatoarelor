----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:14 05/04/2023
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( RdData1 : in  std_logic_vector (31 downto 0);
           RdData2 : in  std_logic_vector (31 downto 0);
           FAddr : in  std_logic_vector (15 downto 0);
           ALUSrc : in  std_logic;
           ALUOp : in  std_logic_vector (1 downto 0);
           Y : out  std_logic_vector (31 downto 0));
end ALU;

architecture Behavioral of ALU is
signal SEAddr: std_logic_vector (31 downto 0);
signal OP1: std_logic_vector (31 downto 0);
signal OP2: std_logic_vector (31 downto 0);


begin
 
SEAddr(15 downto 0) <= FAddr;
	SEAddr(31 downto 16) <= x"0000" when FAddr(15 downto 15)=0 else 
	x"FFFF"  when FAddr(15 downto 15) = 1 else
	x"0000";
	
	with ALUOP select
		Y <= RdData1+OP2 when "00",
		RdData1-OP2 when "01",
		RdData1 and OP2 when "10",
		RdData1 or OP2 when others;


end Behavioral;

