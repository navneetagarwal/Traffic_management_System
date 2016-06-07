----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:01:29 03/22/2016 
-- Design Name: 
-- Module Name:    state_transition_4 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity state_transition_4 is
GENERIC (N : integer :=8);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           t1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           t2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           t3 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           t4 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           s1 : out STD_LOGIC_VECTOR (2 downto 0);
           s2 : out STD_LOGIC_VECTOR (2 downto 0);
           s3 : out STD_LOGIC_VECTOR (2 downto 0);
			  s4 : out STD_LOGIC_VECTOR (2 downto 0);
           computed : in  STD_LOGIC);
end state_transition_4;

architecture Behavioral of state_transition_4 is
type state  is (s_idle, s_1,s_2,s_3,s_4);  -- state declartion
signal presentState, nextState : state;  --state container
signal counter : std_logic_vector(N-1 downto 0);
begin
counterUpdate : process(clk,rst) 
begin  --counterUpdate
  if(rst='1') then
    counter<=(others=>'0');
	 nextState<=s_idle;
  elsif(clk' event and clk='1') then
    case presentState is
	   when s_1 =>
		  if(counter+2<t1) then
		    counter<=counter+1;
        else
		    counter<=(others=>'0');
			 nextState<=s_2;
		  end if;
		  
      when s_2 =>
		  if(counter+1<t2) then
		    counter<=counter+1;
        else
		    counter<=(others=>'0');
			 nextState<=s_3;
		  end if;
		  
      when s_3 =>
		  if(counter+1<t3) then
		    counter<=counter+1;
        else
		    counter<=(others=>'0');
			 nextState<=s_4;
		  end if;
		when s_4 =>
		  if(counter+1<t4) then
		    counter<=counter+1;
        else
		    counter<=(others=>'0');
			 nextState<=s_idle;
		  end if;  
		when s_idle =>
		  counter<=(others=>'0');
		  if(computed='1') then
		    nextState<=s_1;
		  end if;
    end case;
  end if;
end process;
stateTransition : process(rst,nextState)
begin
  if(rst='1') then
    presentState<=s_idle;  
	 s1<="110";
	 s2<="000";
	 s3<="110";
	 s4<="000";
  else
    case nextState is
      when s_idle =>
		  presentState<=s_idle;  
		  s1<="110";
		  s2<="000";
		  s3<="110";
		  s4<="000";
		when s_1 =>
		  presentState<=s_1;  
		  s1<="110";
		  s2<="000";
		  s3<="110";
		  s4<="000";
		when s_2 =>
		  presentState<=s_2;  
  		  s1<="001";
		  s2<="000";
		  s3<="001";
     	  s4<="000";
      when s_3 =>
        presentState<=s_3;
        s1<="000";
		  s2<="000";
		  s3<="000";
		  s4<="111";
		when s_4 =>
        presentState<=s_4;
        s1<="000";
		  s2<="111";
		  s3<="000";
		  s4<="000";
 	 end case;
  end if;	 
end process;

end Behavioral;

