----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:05:52 04/05/2016 
-- Design Name: 
-- Module Name:    dynamic_time_decider - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dynamic_time_decider_31 is
Generic ( N : integer :=8;
              M : integer :=10	 );
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           computed : out  STD_LOGIC;
			  west_bound : in  STD_LOGIC_vector(M-1 downto 0);
           east_bound : in  STD_LOGIC_vector(M-1 downto 0);
           v : in  STD_LOGIC_vector(M-1 downto 0);
			  signal3 : in  STD_LOGIC_vector(2 downto 0);
           t1 : out  STD_LOGIC_vector(N-1 downto 0);
           t2 : out  STD_LOGIC_vector(N-1 downto 0);
           t3 : out  STD_LOGIC_vector(N-1 downto 0));
end dynamic_time_decider_31;

architecture Behavioral of dynamic_time_decider_31 is
signal temp_computed : std_logic:='0' ;
begin

process(rst,v,west_bound,east_bound)
variable v1, t1_total,t2_total,t3_total,alpha, wb_traffic, eb_traffic : integer :=0;
variable s3 : std_logic_vector(2 downto 0);
variable computed_temp : std_logic :='0';
begin
  if(rst='1')then
    computed<='1';	 
	 temp_computed<='1';
	 t1 <= "00111100";
	 t2 <= "00001100";
	 t3 <= "00001100";	
  else
    s3:=signal3;
	 if(s3 = "000")then
      wb_traffic := to_integer( signed(west_bound));
      eb_traffic := to_integer( signed(east_bound));
      v1 := to_integer( signed(v));
      if( (wb_traffic+10)/6>(eb_traffic)/5 )then
        alpha :=(wb_traffic+10)/6;
      else
	     alpha :=(eb_traffic)/5;
      end if;
  
      t2_total := (7*60)/v1 + 2 ;
		t3_total := (7*60)/v1 + 2 ;
		
      -- if alpha is large aand v is not sufficient to clear traffic and t1 becomes 
      -- too large setting it to 90sec
      -- also, if t1 is too small as v is large and alpha is small, then setting t1 to atleast 20 sec.
      if(v1>alpha)then
         t1_total:=(14*60*alpha)/(v1*(v1-alpha))+4;
         if(t1_total>90)then
			  t1_total:=90;
			end if;  
		else
        t1_total:=90;
      end if;
		
      
      --assigning the values of t1, t2, t3, t4
      t1 <= std_logic_vector(to_signed(t1_total,N));
      t2 <= std_logic_vector(to_signed(t2_total,N));
      t3 <= std_logic_vector(to_signed(t3_total,N));
      computed<='1';
		temp_computed<='1';
    elsif(s3/="000") then
      computed<='0';
		temp_computed<='0';
	 end if;
  end if;
end process;

end Behavioral;

