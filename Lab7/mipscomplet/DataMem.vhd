----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:10:38 05/21/2022 
-- Design Name: 
-- Module Name:    DataMem - Behavioral 
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

entity DataMem is
    Port ( Clk : in  STD_LOGIC;
           INW0 : in  STD_LOGIC_VECTOR (31 downto 0);
           INW1 : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTW0 : out  STD_LOGIC_VECTOR (31 downto 0);
			  
           Wr : in  STD_LOGIC;
           Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end DataMem;

architecture Behavioral of DataMem is
type RAM16x32  is array (0 to 15) of std_logic_vector(31 downto 0); 
   signal RAM     : RAM16x32;
   signal MemData : std_logic_vector(31 downto 0);
begin
process(Clk)
   begin
      if rising_edge(Clk) then
         if (Wr='1') then
            RAM(conv_integer(Addr(3 downto 0))) <= DataIn; 
         end if;   
      end if;
   end process;
	 MemData  <= RAM(conv_integer(Addr(3 downto 0)));
   
   DataOut  <= MemData  when Addr(4)='0' else
               INW0   when Addr(1 downto 0)=0 else
               INW1   ;
               
   OUTW0    <= DataIn when rising_edge(Clk) and Addr(4)='1' and Addr(1)='1' and Wr='1'; 

end Behavioral;

