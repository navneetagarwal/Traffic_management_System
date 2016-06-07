--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:30 03/20/2016
-- Design Name:   
-- Module Name:   /home/navneet/CS226Lab/Project/tb_state_transition_3.vhd
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_state_transition_3 IS
END tb_state_transition_3;
 
ARCHITECTURE behavior OF tb_state_transition_3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_transition_3
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         t1 : IN  std_logic_vector(6 downto 0);
         t2 : IN  std_logic_vector(6 downto 0);
         t3 : IN  std_logic_vector(6 downto 0);
         s1 : OUT  std_logic_vector(2 downto 0);
         s2 : OUT  std_logic_vector(2 downto 0);
         s3 : OUT  std_logic_vector(2 downto 0);
         computed : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal t1 : std_logic_vector(6 downto 0) := "0000010";
   signal t2 : std_logic_vector(6 downto 0) := "0000100";
   signal t3 : std_logic_vector(6 downto 0) := "0000110";
   signal computed : std_logic := '0';

 	--Outputs
   signal s1 : std_logic_vector(2 downto 0);
   signal s2 : std_logic_vector(2 downto 0);
   signal s3 : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: state_transition_3 PORT MAP (
          clk => clk,
          rst => rst,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          s1 => s1,
          s2 => s2,
          s3 => s3,
          computed => computed
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      rst<='1';
		wait for 100 ns;	
      rst<='0';
		computed<='1';
      wait for clk_period*10;
      
      -- insert stimulus here 

      wait;
   end process;

END;
