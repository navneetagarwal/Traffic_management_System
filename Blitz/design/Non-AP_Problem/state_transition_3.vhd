----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:16 03/20/2016 
-- Design Name: 
-- Module Name:    state_transition_3 - Behavioral 
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

entity state_transition_3 is
GENERIC (N : integer :=8);
PORT (
  clk: in std_logic;       --clock signal
  rst: in std_logic;       -- reset signal 
  t1: in std_logic_vector(N-1 downto 0);  -- time alloted to signal 1
  t2: in std_logic_vector(N-1 downto 0);  -- time alloted to signal 2
  t3: in std_logic_vector(N-1 downto 0);  -- time alloted to signal 3
  s1: out std_logic_vector(2 downto 0);   -- state of traffic light at signal 1
  s2: out std_logic_vector(2 downto 0);   -- state of traffic light at signal 2
  s3: out std_logic_vector(2 downto 0);   -- state of traffic light at signal 3
  computed: in std_logic  --time is computed
  );
end state_transition_3;

architecture arch of state_transition_3 is

type state  is (s_idle, s_1,s_2,s_3);  -- state declartion
signal presentState, nextState : state;  --state container
signal counter : std_logic_vector(N-1 downto 0);

begin  --arch
  -- purpose
  -- type
  -- inputs
  -- outputs
  
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
	 s1<="010";
	 s2<="010";
	 s3<="000";
  else
    case nextState is
      when s_idle =>
		  presentState<=s_idle;  
		  s1<="010";
		  s2<="010";
		  s3<="000";
		when s_1 =>
		  presentState<=s_1;  
		  s1<="010";
		  s2<="010";
		  s3<="000";
		
		when s_2 =>
		  presentState<=s_2;  
  		  s1<="000";
		  s2<="100";
		  s3<="001";
     	
      when s_3 =>
        presentState<=s_3;
        s1<="011";
		  s2<="000";
		  s3<="100";
	 end case;
  end if;	 
end process;
end arch;

