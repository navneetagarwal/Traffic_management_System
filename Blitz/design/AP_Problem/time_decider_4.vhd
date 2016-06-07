----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:32:29 03/22/2016 
-- Design Name: 
-- Module Name:    time_decider_4 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity time_decider_4 is
Generic ( N : integer :=8;
              M : integer :=10	 );
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           computed : out  STD_LOGIC;
           BW : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BS : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BE : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BN : in  STD_LOGIC_VECTOR (M-1 downto 0);
           signal2 : in  STD_LOGIC_vector(2 downto 0);
           t1 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t2 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t3 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t4 : out  STD_LOGIC_VECTOR (N-1 downto 0));
end time_decider_4;

architecture Behavioral of time_decider_4 is

begin
process(rst,clk,signal3)
begin
  if (rst = '1') then
	computed <= '0';
  elsif (clk'event AND clk = '1') then
    if (signal2 = "111" and computed='0') then	
      if (BW <= "01100100" AND BE <= "01100100") then
	    	t1 <= "00111100";
	   else
	   	t1 <= "01010100";
	   end if;

	   t2 <= "00001100";					--Fixing t2 = 12 sec.
	   t3 <= "00011000";					--Fixing t3 = 24 sec.
	   t4 <= "00001111";					--Fixing t4 = 15 sec.
	   computed <='1';
    elsif(signal2 /= "111") then
      computed<='0';
    end if;	 
  end if;
end process;
end Behavioral;

