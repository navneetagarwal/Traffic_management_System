----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:21 03/22/2016 
-- Design Name: 
-- Module Name:    HiranandaniJunction - Behavioral 
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

entity HiranandaniJunction is
   Generic(N: integer :=8;
	        M: integer :=10);
	PORT(
	  clk: in STD_LOGIC;
	  rst: in STD_LOGIC;
	  BW: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	  BN: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	  BE: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	  v: in STD_LOGIC_VECTOR(M-1 DOWNTO 0);
	  s1: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	  s2: out STD_LOGIC_VECTOR(2 DOWNTO 0);
	  s3: out STD_LOGIC_VECTOR(2 DOWNTO 0)
	);

end HiranandaniJunction;

architecture Behavioral of HiranandaniJunction is
    COMPONENT state_transition_32
	 GENERIC(N: INTEGER :=8);
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         t1 : IN  std_logic_vector(N-1 downto 0);
         t2 : IN  std_logic_vector(N-1 downto 0);
         t3 : IN  std_logic_vector(N-1 downto 0);
         s1 : OUT  std_logic_vector(2 downto 0);
         s2 : OUT  std_logic_vector(2 downto 0);
         s3 : OUT  std_logic_vector(2 downto 0);
         computed : IN  std_logic
        );
    END COMPONENT;
    COMPONENT time_decider_32 is
    Generic ( N : integer :=8;
              M : integer :=10	 );
    PORT ( clk : in STD_LOGIC;
	        rst : in STD_LOGIC;
           computed : inout STD_LOGIC;			  
	        BW : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BN : in  STD_LOGIC_VECTOR (M-1 downto 0);
           BE : in  STD_LOGIC_VECTOR (M-1 downto 0);
			  s3 : in STD_LOGIC_VECTOR (2 downto 0);
           t1 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t2 : out  STD_LOGIC_VECTOR (N-1 downto 0);
           t3 : out  STD_LOGIC_VECTOR (N-1 downto 0));
    END COMPONENT;
   
	 signal t1, t2, t3 : std_logic_vector(N-1 downto 0);
    signal s1_t, s2_t, s3_t : std_logic_vector(2 downto 0):="000";
    signal computed : std_logic;
   
begin    
    uut31: state_transition_32 
	   GENERIC MAP(N=>N)
		PORT MAP (
          clk => clk,
          rst => rst,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          s1 => s1_t,
          s2 => s2_t,
          s3 => s3_t,
          computed => computed
        );

    uut32: time_decider_32 
    Generic MAP( 
	        N =>N,
           M =>M)
    PORT MAP (
  	        clk =>clk,
	        rst =>rst,
           computed => computed,
	        BW => BW,
           BN => BN,
           BE => BE,
			  s3 => s3_t,
           t1 => t1,
           t2 => t2,
           t3 => t3);
  process (s1_t, s2_t, s3_t)
  begin
    s1<=s1_t;
	 s2<=s2_t;
	 s3<=s3_t;
  end process;
end Behavioral;

