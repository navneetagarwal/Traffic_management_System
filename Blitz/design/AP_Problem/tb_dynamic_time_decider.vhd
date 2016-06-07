--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:39 04/05/2016
-- Design Name:   
-- Module Name:   /home/navneet/CS226Lab/Project5-4-16/tb_dynamic_time_decider.vhd
-- Project Name:  Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dynamic_time_decider
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
 
ENTITY tb_dynamic_time_decider IS
END tb_dynamic_time_decider;
 
ARCHITECTURE behavior OF tb_dynamic_time_decider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dynamic_time_decider
    PORT(  clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           computed : out  STD_LOGIC;
			  west_bound : in  STD_LOGIC_vector(M-1 downto 0);
           east_bound : in  STD_LOGIC_vector(M-1 downto 0);
           v : in  STD_LOGIC_vector(M-1 downto 0);
			  signal2 : in  STD_LOGIC_vector(2 downto 0);
           t1 : out  STD_LOGIC_vector(N-1 downto 0);
           t2 : out  STD_LOGIC_vector(N-1 downto 0);
           t3 : out  STD_LOGIC_vector(N-1 downto 0);
           t4 : out  STD_LOGIC_vector(N-1 downto 0));
    END COMPONENT;
    

   --Inputs
   signal west_bound : std_logic_vector(9 downto 0) := "0001111000";
   signal east_bound : std_logic_vector(9 downto 0) := "0001100100";
   signal v : std_logic_vector(9 downto 0) := "0000100100";

 	--Outputs
   signal t1 : std_logic_vector(9 downto 0);
   signal t2 : std_logic_vector(9 downto 0);
   signal t3 : std_logic_vector(9 downto 0);
   signal t4 : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dynamic_time_decider PORT MAP (
          clk=>clk,
			 west_bound => west_bound,
          east_bound => east_bound,
          v => v,
          t1 => t1,
          t2 => t2,
          t3 => t3,
          t4 => t4
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
      wait for 100 ns;	
		west_bound <="0001111000";
      east_bound <="0001100100";	
		v<="0001100000";
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
