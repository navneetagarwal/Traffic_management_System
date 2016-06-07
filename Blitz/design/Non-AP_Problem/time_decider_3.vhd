----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:00 03/20/2016 
-- Design Name: 
-- Module Name:    time_decider_3 - Behavioral 
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

entity time_decider_3 is
    Generic ( N : integer :=8;
              M : integer :=10);
    Port ( clk : in STD_LOGIC;
	        rst : in STD_LOGIC;
           computed : inout STD_LOGIC := '0';			  
	        BW : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BS : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BE : in  STD_LOGIC_VECTOR (M-1 downto 0);
			  s3: in std_logic_vector(2 downto 0) := "000";
           t1 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t2 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t3 : out  STD_LOGIC_VECTOR (N-1 downto 0));
end time_decider_3;

architecture Behavioral of time_decider_3 is
signal temp_computed : std_logic :='1';
signal temp_s3 : std_logic_vector(2 downto 0):="000";
begin

process(clk,rst,s3)
begin
  --If the system has been reset.
  if (rst = '1') then
	 computed <= '1';
	 temp_computed<='1';
    -- setting default values
    t1 <= "00111100";
	 t2 <= "00001100";
	 t3 <= "00001100";		
  --Update the times on clock's rising edge.
  elsif (clk' event AND clk = '1') then
    temp_s3<=s3;
    --When s3 = 000, We are in state s_idle. Computing time here.
	 if (temp_s3 = "000" and temp_computed='0') then			
		-- If either of Westward or eastward is greater than 100, then t1 = 60 sec. Else t1 = 120 sec
		if (BW <= "0001100100" AND BE <= "0001100100") then
			t1 <= "00111100";
		else
			t1 <= "01111000";
		end if;

		t2 <= "00001100";				--Fixing t2 = 12 sec.
		t3 <= "00001100";				--Fixing t3 = 12 sec.
		
		computed <= '1';
		temp_computed<='1';
    elsif(temp_s3/="000")then
      computed<='0';
      temp_computed<='0';		
    end if;
  end if;
end process;

end Behavioral;