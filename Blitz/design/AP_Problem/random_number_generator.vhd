----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:25 02/03/2016 
-- Design Name: 
-- Module Name:    random - Behavioral 
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


entity random_number_generator is
    generic ( width : integer :=  3 ); 
    port (
      clk : in std_logic;
      random_num : out std_logic_vector (width-1 downto 0);   --output vector
		threshold : in std_logic_vector (width-1 downto 0)  --upper limit on output
    );
end random_number_generator;

architecture Behavioral of random_number_generator is
begin
 process(clk)
 variable rand_temp : std_logic_vector(width-1 downto 0):=(width-1 => '1',others => '0');
 variable temp : std_logic := '0';
 begin
  if(rising_edge(clk)) then
   temp := rand_temp(width-1) xor rand_temp(width-2);
   rand_temp(width-1 downto 1) := rand_temp(width-2 downto 0);
   rand_temp(0) := temp;
  end if;
  if(rand_temp<threshold) then
    random_num<=rand_temp;
  else
    random_num<=threshold;
  end if;	 
 end process;
end Behavioral;