LIBRARY ieee ; 
USE ieee.std_logic_1164.all  ; 

ENTITY one_bit_adder_tb  IS 
END ; 
 
ARCHITECTURE sim   OF one_bit_adder_tb   IS
	SIGNAL a   :  std_logic;
	SIGNAL b   :  std_logic;
	SIGNAL cin   :  std_logic;
	SIGNAL s   :  std_logic;
	SIGNAL cout   :  std_logic;  
  COMPONENT one_bit_adder  
    PORT ( a,b,cin : in std_logic;
           s,cout: out std_logic);
  END COMPONENT ; 
  
  
BEGIN
  DUT  : one_bit_adder  
    PORT MAP ( 
      a   => a  ,
      b   => b  ,
		cin => cin,
		s => s,
      cout   => cout   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 800 ps, Period = 50 ps
  Process
	Begin
	
	cin <= '0'; 
	
	a <= '0';
	b <= '0';
	wait for 100 ps ;
	assert s = '0' report "0 + 0 failed.";	

	a <= '1';
	b <= '0';
	wait for 100 ps ;
	assert s = '0' report "0 + 0 failed.";	
	
		a <= '0';
	b <= '1';
	wait for 100 ps ;
	assert s = '0' report "0 + 0 failed.";	
	
		a <= '1';
	b <= '1';
	wait for 100 ps ;
	assert s = '0' report "0 + 0 failed.";	
-- 800 ps, repeat pattern in loop.
	wait;
 End Process;

END;
