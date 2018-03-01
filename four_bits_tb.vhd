LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \four_bits_tb.vhd\  IS 
END ; 
 
ARCHITECTURE \four_bits_tb.vhd_arch\   OF \four_bits_tb.vhd\   IS
  SIGNAL x   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL y   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL s0   :  std_logic_vector (3 downto 0)  ; 
  COMPONENT four_bits_adder  
    PORT ( 
      x  : in std_logic_vector (3 downto 0) ; 
      y  : in std_logic_vector (3 downto 0) ; 
      s0  : out std_logic_vector (3 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : four_bits_adder  
    PORT MAP ( 
      x   => x  ,
      y   => y  ,
      s0   => s0   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 800 ps, Period = 50 ps
  Process
	variable VARx  : std_logic_vector (3 downto 0);
	Begin
	VARx  := "0000" ;
	for repeatLength in 1 to 16
	loop
	    x  <= VARx  ;
	   wait for 50 ps ;
	   VARx  := VARx  + 1 ;
	end loop;
-- 800 ps, repeat pattern in loop.
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
-- Start Time = 0 ps, End Time = 800 ps, Period = 50 ps
  Process
	variable VARy  : std_logic_vector (3 downto 0);
	Begin
	VARy  := "0000" ;
	for repeatLength in 1 to 16
	loop
	    y  <= VARy  ;
	   wait for 50 ps ;
	   VARy  := VARy  + 1 ;
	end loop;
-- 800 ps, repeat pattern in loop.
	wait;
 End Process;
END;
