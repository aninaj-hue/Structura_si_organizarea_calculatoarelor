----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:42 05/21/2022 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUSrc : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is
   signal ALUOP_temp : std_logic_vector(1 downto 0);
	signal ALUOP_final : std_logic_vector(1 downto 0);
begin
 with OP select 
 ALUSrc <= '0' when b"00_0000",
           '1' when others;
			  
 with OP select
 MemWr <= '1' when b"10_1011",
          '0' when others;
	
 with OP select
 Mem2Reg <= '1' when b"10_0011",
            '0' when others;
				
 with OP select 
 RegDest <= '1' when b"00_0000",
            '0' when others;
				
 with OP select
 RegWr <= '1' when b"00_0000",
          '1' when b"10_0101",
			 '0' when others;
			 
 with Funct select
 ALUOP_temp <= "00" when b"10_0000",
               "01" when b"10_0010",
               "11" when b"10_0100",
               "00" when others;

 ALUOP_final <= ALUOP_temp when OP = b"00_0000" else "00";

 ALUOP <= ALUOP_final; 

end Behavioral;

