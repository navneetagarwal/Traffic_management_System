----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:31 04/06/2016 
-- Design Name: 
-- Module Name:    Project - Behavioral 
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

entity Blitz_top is
 GENERIC(M: integer :=10;
      N: integer := 8);
 PORT(clk: in STD_LOGIC;
	   rst: in STD_LOGIC;
	   wb_traffic : in  STD_LOGIC_vector(M-1 downto 0);
      eb_traffic : in  STD_LOGIC_vector(M-1 downto 0);      
	   v_mgj:  in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s_mgj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_mgj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_mgj_S: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   v_iitj:  in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s_iitj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_iitj_N: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_iitj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_iitj_S: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   v_hnj:  in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s_hnj_W: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_hnj_N: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s_hnj_E: out STD_LOGIC_VECTOR(2 DOWNTO 0));

  
end Blitz_top;

architecture Behavioral of Blitz_top is
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT MarketGateJunction is
    Generic(N: integer :=8;
	         M: integer :=10);
	 PORT(
	   clk: in STD_LOGIC;
	   rst: in STD_LOGIC;
	   west_bound : in  STD_LOGIC_vector(M-1 downto 0);
      east_bound : in  STD_LOGIC_vector(M-1 downto 0);      
	   v: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s1: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s2: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s3: out STD_LOGIC_VECTOR(2 DOWNTO 0)
	 );
    END COMPONENT;
    
    COMPONENT MainGateJunction is
    Generic(N: integer :=8;
	         M: integer :=10);
	 PORT(
	   clk: in STD_LOGIC;
	   rst: in STD_LOGIC;
		west_bound : in  STD_LOGIC_vector(M-1 downto 0);
      east_bound : in  STD_LOGIC_vector(M-1 downto 0);      
	   v: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s1: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s2: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s3: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s4: out STD_LOGIC_VECTOR(2 DOWNTO 0)
	 );
    END COMPONENT;

	
 	 COMPONENT HiranandaniJunction is
    Generic(N: integer :=8;
	        M: integer :=10);
	 PORT(
	   clk: in STD_LOGIC;
	   rst: in STD_LOGIC;
	   west_bound : in  STD_LOGIC_vector(M-1 downto 0);
      east_bound : in  STD_LOGIC_vector(M-1 downto 0);      
	   v: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	   s1: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s2: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	   s3: out STD_LOGIC_VECTOR(2 DOWNTO 0)
	 );
    END COMPONENT;

begin
     mgj: MarketGateJunction	  
	  Generic Map(
	    N=>N,
	    M=>M)
	  Port Map(
	    clk=>clk,
	    rst=>rst,
       west_bound=>wb_traffic,
       east_bound=>eb_traffic,	
	    v=>v_mgj,
	    s1=>s_mgj_W,
	    s2=>s_mgj_E,
	    s3=>s_mgj_S
	  );
    
	  iitj: MainGateJunction
     Generic Map(N=>N,
	          M=>M)
	  Port Map(
	    clk=>clk,
	    rst=>rst,
       west_bound=>wb_traffic,
       east_bound=>eb_traffic,	  
	    v=>v_iitj,
	    s1=>s_iitj_E,
	    s2=>s_iitj_S,
	    s3=>s_iitj_W,
	    s4=>s_iitj_N
	  ); 
    
 	 hnj: HiranandaniJunction
    Generic Map(N=>N,
	             M=>M)
	 PORT MAP(
	   clk=>clk,
	   rst=>rst,
      west_bound=>wb_traffic,
      east_bound=>eb_traffic,	
	   v=>v_hnj,
	   s1=>s_hnj_E,
	   s2=>s_hnj_W,
	   s3=>s_hnj_N
	 );
end Behavioral;

