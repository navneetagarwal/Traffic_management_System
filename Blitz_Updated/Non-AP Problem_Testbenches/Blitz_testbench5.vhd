
--This is a case which shows a lower bound on the avg speed of cars at market gate and hiranandani. This case leads to an infinite queue. 
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:22:13 03/20/2016
-- Design Name:   
-- Module Name:   /home/navneet/CS226Lab/Project/tb_Project.vhd
-- Project Name:  Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: state_transition_3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL; 
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_Project IS
END tb_Project;
 
ARCHITECTURE behavior OF tb_Project IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    component Blitz_top is
    GENERIC(M: integer :=10;
	         N: integer :=8);
	 PORT(
	    clk: in STD_LOGIC;
 	    rst: in STD_LOGIC;
		 B_mgj_W: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_mgj_S: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_mgj_E: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    v_mgj: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    s_mgj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_mgj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_mgj_S: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
		 B_iitj_N: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_iitj_W: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_iitj_S: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_iitj_E: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    v_iitj: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    s_iitj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_iitj_N: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_iitj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_iitj_S: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
		 B_hnj_W: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_hnj_N: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    B_hnj_E: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    v_hnj: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	    s_hnj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_hnj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0); 
	    s_hnj_N: out STD_LOGIC_VECTOR(2 DOWNTO 0)
	 );
    end component;

    COMPONENT random_number_generator is
    generic ( width : integer :=  3 ); 
    port (
      clk : in std_logic;
      random_num : out std_logic_vector (width-1 downto 0);   --output vector            
      threshold : in std_logic_vector (width-1 downto 0)    -- threshold on value random number can take
	 );
    END COMPONENT; 
    
   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal infinite_queue : std_logic :='0';
	
	signal random_num : std_logic_vector(2 downto 0) :="000"; 
	signal threshold : std_logic_vector(2 downto 0):="111";
	-- backed up rows
	signal B_mgj_W, B_mgj_S, B_mgj_E : std_logic_vector(9 downto 0):=(others=>'0');
	signal B_hnj_W, B_hnj_N, B_hnj_E : std_logic_vector(9 downto 0):=(others=>'0');
	signal B_iitj_N, B_iitj_E, B_iitj_S, B_iitj_W : std_logic_vector(9 downto 0):=(others=>'0');	
   signal east_bound_traffic, west_bound_traffic : std_logic_vector(9 downto 0):=(others=>'0');	
   
	--Outputs
   signal s_mgj_W, s_mgj_S, s_mgj_E : std_logic_vector(2 downto 0):="000";
   signal s_hnj_W, s_hnj_N, s_hnj_E : std_logic_vector(2 downto 0):="000";
   signal s_iitj_N, s_iitj_E, s_iitj_S, s_iitj_W : std_logic_vector(2 downto 0):="000";
   
	-- for testing
   signal B_mgj_W_t, B_mgj_S_t, B_mgj_E_t : std_logic_vector(9 downto 0):=(others=>'0');
	signal B_hnj_W_t, B_hnj_N_t, B_hnj_E_t : std_logic_vector(9 downto 0):=(others=>'0');
	signal B_iitj_N_t, B_iitj_E_t, B_iitj_S_t, B_iitj_W_t : std_logic_vector(9 downto 0):=(others=>'0');	
          
   -- Clock period definitions
   constant clk_period : time := 10 ns;
   signal counter: std_logic_vector(6 downto 0):="0000000"; 
   signal v_mgj: std_logic_vector(9 downto 0):="0000011000";
   signal v_iitj: std_logic_vector(9 downto 0):="0000100100";
   signal v_hnj: std_logic_vector(9 downto 0):="0000011000";
	signal v_mgj_remainder, v_iitj_remainder, v_hnj_remainder : std_logic_vector(9 downto 0):=(others=>'0');
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   --random number for the traffic allocated for side roads
	  rn1: random_number_generator
	  Generic Map(width=>3)
	  Port Map(
       clk=>clk,
       random_num=>random_num,
       threshold=>threshold );
	  
     uut: Blitz_top	  
	  Generic Map(
	    N=>8,
	    M=>10)
	  Port Map(
	    clk=>clk,
	    rst=>rst,
	    B_mgj_W=>B_mgj_W,
	    B_mgj_S=>B_mgj_S,
	    B_mgj_E=>B_mgj_E,
	    v_mgj=>v_mgj,
	    s_mgj_W=>s_mgj_W,
	    s_mgj_E=>s_mgj_E,
	    s_mgj_S=>s_mgj_S,
  	    B_iitj_N=>B_iitj_N,
	    B_iitj_W=>B_iitj_W,
	    B_iitj_S=>B_iitj_S,
	    B_iitj_E=>B_iitj_E,
	    v_iitj=>v_iitj,
	    s_iitj_W=>s_iitj_W,
	    s_iitj_N=>s_iitj_N,
	    s_iitj_E=>s_iitj_E,
	    s_iitj_S=>s_iitj_S,
	    B_hnj_W=>B_hnj_W,
	    B_hnj_N=>B_hnj_N,
	    B_hnj_E=>B_hnj_E,
	    v_hnj=>v_hnj,
	    s_hnj_E=>s_hnj_E,
	    s_hnj_W=>s_hnj_W,
	    s_hnj_N=>s_hnj_N
	 );
    
		  
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   
  --updating the number of backed up cars
   --updating the number of backed up cars
   updateBackedupRows: process(clk, rst)
	variable B_iitj_W_temp, B_iitj_N_temp, B_iitj_E_temp, B_iitj_S_temp, B_hnj_W_temp, B_hnj_N_temp, B_hnj_E_temp, B_mgj_W_temp,B_mgj_S_temp,B_mgj_E_temp : integer := 0;
	variable counter_i, random_num_i: integer :=0;
	variable v_mgj_i, v_iitj_i, v_hnj_i: integer :=0;
	variable eb_traffic_i, wb_traffic_i : integer :=0; 
	begin
	  if(rst='1') then
	   --defaults
		counter<="0000000";	
      B_iitj_N<=B_iitj_N_t;
		B_iitj_E<=B_iitj_E_t;
		B_iitj_S<=B_iitj_S_t;
		B_iitj_W<=B_iitj_W_t;
		B_hnj_W<=B_hnj_W_t;
		B_hnj_N<=B_hnj_N_t;
		B_hnj_E<=B_hnj_E_t;
		B_mgj_W<=B_mgj_W_t;
		B_mgj_S<=B_mgj_S_t;
		B_mgj_E<=B_mgj_E_t;
	  elsif(clk' event and clk='1') then
	    
		 counter_i:=conv_integer(counter);
		 v_mgj_i:= conv_integer(v_mgj);
		 v_iitj_i:=conv_integer(v_iitj);
		 v_hnj_i:=conv_integer(v_hnj);
		 eb_traffic_i:=conv_integer(east_bound_traffic);
		 wb_traffic_i:=conv_integer(west_bound_traffic);
		 
		 random_num_i:=conv_integer(random_num)/3;   -- for each 6 sec updation, some number 0-2
		 v_mgj_i:= conv_integer(v_mgj_remainder)+v_mgj_i;
		 v_iitj_i:= conv_integer(v_iitj_remainder)+v_iitj_i;
		 v_hnj_i:= conv_integer(v_hnj_remainder)+v_hnj_i;
		 	 
       B_mgj_E_temp:=conv_integer(B_mgj_E);
		 B_mgj_W_temp:=conv_integer(B_mgj_W);
		 B_mgj_S_temp:=conv_integer(B_mgj_S);
		 
       B_iitj_W_temp:=conv_integer(B_iitj_W);
       B_iitj_N_temp:=conv_integer(B_iitj_N);
       B_iitj_E_temp:=conv_integer(B_iitj_E); 
       B_iitj_S_temp:=conv_integer(B_iitj_S);

		 B_hnj_E_temp:=conv_integer(B_hnj_E);
       B_hnj_N_temp:=conv_integer(B_hnj_N);
       B_hnj_W_temp:=conv_integer(B_hnj_W);
		 
		 
		 --adding traffic
  	    --**************TAKE CEIL FOR V/10********************	 
		 if(counter_i mod 12=0)then   --counter is a multiple of 12
		   B_iitj_S_temp:=B_iitj_S_temp+1; --1/12sec == 5/60sec from main gate 
		   B_mgj_S_temp:=B_mgj_S_temp+1;   --1/12sec == 5/60sec
		 end if;
		 if(counter_i mod 4=0)then   --counter is a multiple of 4
		   B_hnj_N_temp:=B_hnj_N_temp+1; --1/4sec == 15/60sec 
		 end if;
		 
		 if(counter_i mod 8=0)then
		   B_iitj_N_temp:=B_iitj_N_temp+1; --1/8sec ~ 2/15sec == 8/60 for Main Gate
		 end if;
		 
		 
		 if(counter_i mod 6=0) then   --counter is a multiple of 6
		 -- updating the buffers based on inflow values
		 B_mgj_W_temp:=B_mgj_W_temp+(eb_traffic_i)/10;   --5/3sec == 100/60sec 
       B_hnj_E_temp:=B_hnj_E_temp+(wb_traffic_i)/10;	  --6/3sec == 120/60sec	
		 ------------------------------MTJ------------------------------------
		 --for 3 way market gate junction junction 
       -- (100)->(B_mgj_W)
	    --                      (B_mgj_E)<-
	    --                 ^
	    --                 |(B_mgj_S)
	    --
 
		 --clearing traffic 
		 
		 --************W-side***********
		 --if straight is allowed all the traffic is allowed to flow out
		  if(s_mgj_W(1)='1' and s_mgj_W(2)='0')then	
			if(B_mgj_W_temp>5*(v_mgj_i/10))then
			 B_mgj_W_temp:=B_mgj_W_temp-5*(v_mgj_i/10);
			 B_iitj_W_temp:=B_iitj_W_temp+5*(v_mgj_i/10);
         else
			 B_iitj_W_temp:=B_iitj_W_temp+B_mgj_W_temp;
          B_mgj_W_temp:=0;
         end if;	
        elsif(s_mgj_W(1)='1' and s_mgj_W(2)='1')then	
			if(B_mgj_W_temp>5*(v_mgj_i/10))then
			 B_mgj_W_temp:=B_mgj_W_temp-5*(v_mgj_i/10);
			 B_iitj_W_temp:=B_iitj_W_temp+5*(v_mgj_i/10)-random_num_i;
			 --rest goes to right-side
         else
			 if(B_mgj_W_temp>random_num_i) then
			   B_iitj_W_temp:=B_iitj_W_temp+B_mgj_W_temp-random_num_i; 
			 end if;
          B_mgj_W_temp:=0;
         end if;	
        end if;
		  --***********S-side***********
		  --if left(right) is free, free the fraction of traffic allowed to be freed
		  if(s_mgj_S(0)='1') then  
         if((B_mgj_S_temp*6)/11>v_mgj_i/10)then
			 B_mgj_S_temp:=B_mgj_S_temp-v_mgj_i/10;
         else
          B_mgj_S_temp:=(B_mgj_S_temp*5)/11;
         end if;			 
		  elsif(s_mgj_S(2)='1')then 
		   if((B_mgj_S_temp*5)/11>v_mgj_i/10)then
			 B_mgj_S_temp:=B_mgj_S_temp-v_mgj_i/10;
			 B_iitj_W_temp:=B_iitj_W_temp+v_mgj_i/10;			 
         else
			 B_iitj_W_temp:=B_iitj_W_temp+(B_mgj_S_temp*5)/11;		 
          B_mgj_S_temp:=(B_mgj_S_temp*6)/11;
         end if; 
		  end if;
		  --***********E-side***********
		  --if straight is allowed all the traffic is allowed to flow out
		  if(s_mgj_E(1)='1') then  
         if(B_mgj_E_temp>6*(v_mgj_i/10))then
			 B_mgj_E_temp:=B_mgj_E_temp-6*(v_mgj_i/10);
         else
          B_mgj_E_temp:=0;
         end if;		
        --if side-way is free free a random no 0-8 for side-way			
		  elsif(s_mgj_E(0)='1')then 
		   if(B_mgj_E_temp>random_num_i)then
          B_mgj_E_temp:=B_mgj_E_temp-random_num_i;	 
		   else
			 B_mgj_E_temp:=0;
			end if; 
		  end if;
		 
		 
		 ------------------------------IITJ------------------------------------
		 --for 4 way main gate junction junction 
       --                 |(B_iitj_N)  
		 --                 v
	    -- ->(B_iitj_W)    
       --						 (B_iitj_E)<-
	    --              ^
	    --              |(B_iitj_S)
	    --
       
		 --adding traffic done before
  		 --clearing traffic 
		 
		 --************W-side***********
		 --if straight and left only allowed
		  if(s_iitj_W(1)='1')then	
			if(B_iitj_W_temp>5*(v_iitj_i/10))then
			 B_iitj_W_temp:=B_iitj_W_temp-5*(v_iitj_i/10);
			 if(5*(v_iitj_i/10)>random_num_i) then B_hnj_W_temp:=B_hnj_W_temp+5*(v_iitj_i/10)-random_num_i; end if; 
			else
			 if(B_iitj_W_temp>(random_num_i))then B_hnj_W_temp:=B_hnj_W_temp+B_iitj_W_temp-random_num_i; end if;
			 B_iitj_W_temp:=0;
         end if;
		  --if straight and rest allowed
		  elsif(s_iitj_W(2)='1')then	
			if(B_iitj_W_temp>(random_num_i))then 
			 B_iitj_W_temp:=B_iitj_W_temp-(random_num_i);
			else
          B_iitj_W_temp:=0;
         end if;
        end if;
		 --************N-side***********
		 --if straight is allowed all the traffic is allowed to flow out(divide based on no. of lanes)
		  if(s_iitj_N(1)='1')then	
			if(B_iitj_N_temp-v_iitj_i/10>0)then
			 B_iitj_N_temp:=B_iitj_N_temp-v_iitj_i/10;
			 if(v_iitj_i/10>random_num_i)then
			   B_hnj_W_temp:=B_hnj_W_temp+((v_iitj_i/10-random_num_i)*5)/11;
 			   B_mgj_E_temp:=B_mgj_E_temp+((v_iitj_i/10-random_num_i)*6)/11;
 			 end if;
         else
		    if(B_iitj_N_temp>random_num_i)then 
			   B_hnj_W_temp:=B_hnj_W_temp+((B_iitj_N_temp-random_num_i)*5)/11;
            B_mgj_E_temp:=B_mgj_E_temp+((B_iitj_N_temp-random_num_i)*6)/11;
			 end if;
          B_iitj_N_temp:=0;
         end if;
        end if;
		 --************S-side***********
		 --if straight is allowed all the traffic is allowed to flow out
		  if(s_iitj_S(1)='1')then	
			if(B_iitj_S_temp>v_iitj_i/10)then
			 B_iitj_S_temp:=B_iitj_S_temp-(v_iitj_i/10);
			 if(v_iitj_i/10>random_num_i) then
			   B_hnj_W_temp:=B_hnj_W_temp+((v_iitj_i/10-random_num_i)*5)/11;
            B_mgj_E_temp:=B_mgj_E_temp+((v_iitj_i/10-random_num_i)*6)/11;
			 end if;
         else
		    if(B_iitj_S_temp>random_num_i)then
  			   B_hnj_W_temp:=B_hnj_W_temp+((B_iitj_S_temp-random_num_i)*5)/11;
            B_mgj_E_temp:=B_mgj_E_temp+((B_iitj_S_temp-random_num_i)*6)/11;
 			 end if;
          B_iitj_S_temp:=0;
         end if;
        end if;
		  --************E-side***********
		  --if straight and left only allowed
		  if(s_iitj_E(1)='1')then	
			if(B_iitj_E_temp>6*(v_iitj_i/10))then
			 B_iitj_E_temp:=B_iitj_E_temp-6*(v_iitj_i/10);
			 if(6*(v_iitj_i/10)>random_num_i)then B_mgj_E_temp:=B_mgj_E_temp+6*(v_iitj_i/10)-random_num_i; end if;
         else
			 if(B_iitj_E_temp>random_num_i)then B_mgj_E_temp:=B_mgj_E_temp+B_iitj_E_temp-random_num_i; end if;
          B_iitj_E_temp:=0;
         end if;
		  --if straight and rest allowed
		  elsif(s_iitj_E(2)='1')then	
			if(B_iitj_E_temp>(random_num_i))then
			 B_iitj_E_temp:=B_iitj_E_temp-(random_num_i);
         else
			 B_iitj_E_temp:=0;
         end if;
        end if;
		  
       
		 ------------------------------HNJ------------------------------------
		 --for 3 way market gate junction junction 
       --               |(B_hnj_N)(15)
	    --               v
 		 -- ->(B_hnj_W) 	
       --          		 (B_hnj_E)<-(120)
		 --clearing traffic 
		 
		 --************W-side***********
		 --if straight is allowed all the traffic is allowed to flow out
		  
		  if(s_hnj_W(1)='1')then	
			if(B_hnj_W_temp>5*(v_hnj_i/10))then
			 B_hnj_W_temp:=B_hnj_W_temp-5*(v_hnj_i/10);
         else
          B_hnj_W_temp:=0;
         end if;	
        elsif(s_hnj_W(0)='1')then	
			if(B_hnj_W_temp>random_num_i)then
			 B_hnj_W_temp:=B_hnj_W_temp-random_num_i;
         else
          B_hnj_W_temp:=0;
         end if;	
        end if;
		  --***********N-side***********
		  --if left(right) is free, free the fraction of traffic allowed to be freed
		  if(s_hnj_N(0)='1') then  
         if((B_hnj_N_temp*5)/11>3*(v_hnj_i/10))then
			 B_hnj_N_temp:=B_hnj_N_temp-3*(v_hnj_i/10);
         else
          B_hnj_N_temp:=(B_hnj_N_temp*6)/11;
         end if;			 
		  elsif(s_hnj_N(2)='1')then 
		   if((B_hnj_N_temp*6)/11>3*(v_hnj_i/10))then
			 B_hnj_N_temp:=B_hnj_N_temp-3*(v_hnj_i/10);
			 B_iitj_E_temp:=B_iitj_E_temp+3*(v_hnj_i/10);			 
         else
			 B_iitj_E_temp:=B_iitj_E_temp+(B_hnj_N_temp*6)/11;			 
          B_hnj_N_temp:=(B_hnj_N_temp*5)/11;
         end if; 
		  end if;
		  --***********E-side***********
		  --if straight is allowed all the traffic is allowed to flow out
		  if(s_hnj_E(1)='1' and s_hnj_E(2)='0' ) then  
         if(B_hnj_E_temp-6*(v_hnj_i/10)>0)then
			 B_hnj_E_temp:=B_hnj_E_temp-6*(v_hnj_i/10);
			 B_iitj_E_temp:=B_iitj_E_temp+6*(v_hnj_i/10);
         else
			 B_iitj_E_temp:=B_iitj_E_temp+B_hnj_E_temp;			 
          B_hnj_E_temp:=0;
         end if;		
        --if side-way is free free a random no 0-8 for side-way			
		  elsif(s_hnj_E(1)='1' and s_hnj_E(0)='1')then 
		   if(B_hnj_E_temp-6*(v_hnj_i/10)>0)then
          B_hnj_E_temp:=B_hnj_E_temp-6*(v_hnj_i/10);
			 if(6*(v_hnj_i/10)>random_num_i)then B_iitj_E_temp:=B_iitj_E_temp+6*(v_hnj_i/10)-random_num_i; end if;
		   else
			 if(B_hnj_E_temp>random_num_i)then B_iitj_E_temp:=B_iitj_E_temp+B_hnj_E_temp-random_num_i; end if;
   		 B_hnj_E_temp:=0;
			end if; 
		  end if;
		 
		 end if;	    -- end if for counter multiple of 6	  
		 
		 
		 --counter update, wrap around after 2 min
       if(counter<119) then
         counter<=counter+1;
       else
        	counter<="0000000";
       end if;	
		 
		 --finally assign the temp value
  	    B_mgj_W<=std_logic_vector(to_unsigned(B_mgj_W_temp,10));
		 B_mgj_S<=std_logic_vector(to_unsigned(B_mgj_S_temp,10));
		 B_mgj_E<=std_logic_vector(to_unsigned(B_mgj_E_temp,10));	

       B_iitj_W<=std_logic_vector(to_unsigned(B_iitj_W_temp,10));
       B_iitj_N<=std_logic_vector(to_unsigned(B_iitj_N_temp,10));
       B_iitj_E<=std_logic_vector(to_unsigned(B_iitj_E_temp,10)); 
       B_iitj_S<=std_logic_vector(to_unsigned(B_iitj_S_temp,10));

		 B_hnj_E<=std_logic_vector(to_unsigned(B_hnj_E_temp,10));
       B_hnj_N<=std_logic_vector(to_unsigned(B_hnj_N_temp,10));
       B_hnj_W<=std_logic_vector(to_unsigned(B_hnj_W_temp,10));
		 
		 v_mgj_remainder<=std_logic_vector(to_unsigned(v_mgj_i mod 10,10));
		 v_iitj_remainder<=std_logic_vector(to_unsigned(v_iitj_i mod 10,10));
		 v_hnj_remainder<=std_logic_vector(to_unsigned(v_hnj_i mod 10,10));
		 
	  end if;	 	  
   end process; 

   infinite_queue_check: process(rst,clk)
	begin
	  if(rst='1')then
       infinite_queue <='0';
     elsif(clk' event and clk='1')then
	    if(infinite_queue='0')then
        if(B_mgj_W(9)='1' or B_mgj_S(9)='1' or B_mgj_E(9)='1' or B_iitj_W(9)='1' or B_iitj_N(9)='1' or B_iitj_E(9)='1' or B_iitj_S(9)='1' or B_hnj_E(9)='1' or B_hnj_N(9)='1' or B_hnj_W(9)='1') then
          infinite_queue <='1';
		  end if;
		 end if; 
	  end if;	 
   end process;	  
   -- Stimulus process
   stim_proc: process
   begin		
      rst<='1';
		B_iitj_W_t<=std_logic_vector(to_unsigned(0,10));
		B_iitj_N_t<=std_logic_vector(to_unsigned(0,10));
		B_iitj_E_t<=std_logic_vector(to_unsigned(0,10));
		B_iitj_S_t<=std_logic_vector(to_unsigned(0,10));
		
		B_hnj_W_t<=std_logic_vector(to_unsigned(500,10));
		B_hnj_N_t<=std_logic_vector(to_unsigned(30,10));
		B_hnj_E_t<=std_logic_vector(to_unsigned(0,10));
		
		B_mgj_W_t<=std_logic_vector(to_unsigned(30,10));
		B_mgj_S_t<=std_logic_vector(to_unsigned(30,10));
		B_mgj_E_t<=std_logic_vector(to_unsigned(500,10));
		
		east_bound_traffic<=std_logic_vector(to_unsigned(100,10)); 
		west_bound_traffic<=std_logic_vector(to_unsigned(120,10));
		
		v_mgj<=std_logic_vector(to_unsigned(25,10));
      v_iitj<=std_logic_vector(to_unsigned(40,10));
      v_hnj<=std_logic_vector(to_unsigned(25,10));
      -- hold reset state for 100 ns.
  		wait for 100 ns;	

      rst<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
   
END;