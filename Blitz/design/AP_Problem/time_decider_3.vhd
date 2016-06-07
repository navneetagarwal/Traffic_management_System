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
			  s3: in std_logic_vector(2 downto 0);
           t1 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t2 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t3 : out  STD_LOGIC_VECTOR (N-1 downto 0));
end time_decider_3;

architecture Behavioral of time_decider_3 is

begin

process(clk,rst,s3)
begin

--If the system has been reset.
if (rst = '1') then

	computed <= '0';

	-- If either of Westward or eastward is greater than 100, then t1 = 144 sec. Else t1 = 72 sec
	if (BW <= "0001100100" AND BE <= "0001100100") then
		t1 <= "00111100";
	else
		t1 <= "01111000";
	end if;

	t2 <= "00001100";					--Fixing t2 = 12 sec.
	t3 <= "00001100";					--Fixing t3 = 12 sec.
	
	computed <= '1';
		
end if;

--Update the times on clock's rising edge.
if (clk' event AND clk = '1') then

	if (s3 = "100") then			--When s3 = 100, We are in state 3. Updating time in advance to avoid idle states.
		
		computed <= '0';
		
		-- If either of Westward or eastward is greater than 100, then t1 = 72 sec. Else t1 = 144 sec
		if (BW <= "0001100100" AND BE <= "0001100100") then
			t1 <= "01001000";
		else
			t1 <= "10010000";
		end if;

		t2 <= "00001100";				--Fixing t2 = 12 sec.
		t3 <= "00001100";				--Fixing t3 = 12 sec.
		
		computed <= '1';
	
	end if;

end if;
	
end process;

end Behavioral;