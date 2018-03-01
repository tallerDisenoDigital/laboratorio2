LIBRARY ieee ; 
USE ieee.std_logic_1164.all  ; 

ENTITY four_bits_tb  IS 
END ; 
 
ARCHITECTURE sim   OF four_bits_tb   IS
  SIGNAL x   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL y   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL s0   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL carryin : std_logic;
  SIGNAL overflow : std_logic;
  COMPONENT four_bits_adder  
    PORT ( x : in std_logic_vector(3 downto 0);
           y : in std_logic_vector(3 downto 0);
			  carryin : in std_logic;
			  overflow : out std_logic;
           s0 : out std_logic_vector(3 downto 0));
  END COMPONENT ; 
BEGIN
  DUT  : four_bits_adder  
    PORT MAP ( 
      x   => x  ,
      y   => y  ,
		carryin => carryin,
		overflow => overflow,
      s0   => s0   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 800 ps, Period = 50 ps
  Process
	Begin
	
	carryin <= '0'; 
	
	x <= "0000";
	y <= "1010";
	wait for 100 ps ;
	assert s0 = "1010" report "0000 + 1010 failed.";
	
	
	x <= "0011";
	y <= "0011";
	wait for 100 ps ;
	assert s0 = "0110" report "0011 + 0011 failed.";
	
	x <= "1100";
	y <= "0011";
	wait for 100 ps ;
	assert s0 = "1111" report "1100 + 0011 failed.";
	
	
	x <= "1010";
	y <= "0101";
	wait for 100 ps ;
	assert s0 = "1111" report "y + x failed.";
	
-- 800 ps, repeat pattern in loop.
	wait;
 End Process;

END;
