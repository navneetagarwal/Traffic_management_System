--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:34:50 03/22/2016
-- Design Name:   
-- Module Name:   /home/tanmay/Documents/CS254/Project/Project/tb_MarketGateJunctionInitial.vhd
-- Project Name:  Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MarketGateJunction
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
 
ENTITY tb_MarketGateJunctionInitial IS
END tb_MarketGateJunctionInitial;
 
ARCHITECTURE behavior OF tb_MarketGateJunctionInitial IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MarketGateJunction
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         BW : IN  std_logic_vector(7 downto 0);
         BS : IN  std_logic_vector(7 downto 0);
         BE : IN  std_logic_vector(7 downto 0);
         v : IN  std_logic_vector(7 downto 0);
         s1 : OUT  std_logic_vector(2 downto 0);
         s2 : OUT  std_logic_vector(2 downto 0);
         s3 : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal BW : std_logic_vector(7 downto 0) := "01101100";
   signal BS : std_logic_vector(7 downto 0) := "01010101";
   signal BE : std_logic_vector(7 downto 0) := "00111111";
   signal v : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal s1 : std_logic_vector(2 downto 0);
   signal s2 : std_logic_vector(2 downto 0);
   signal s3 : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MarketGateJunction PORT MAP (
          clk => clk,
          rst => rst,
          BW => BW,
          BS => BS,
          BE => BE,
          v => v,
          s1 => s1,
          s2 => s2,
          s3 => s3
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
		rst <= '1';
		wait for 10 ns;
		rst <= '0';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
