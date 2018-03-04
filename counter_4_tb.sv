module counter_4_tb();

	logic clk,reset;
	logic[1:0] sout1;
	logic[2:0] sout2;
	logic[3:0] sout3;
	counter_parameterizable #(2) dut1(clk,reset,sout1);
	counter_parameterizable #(3) dut2(clk,reset,sout2);
	counter_parameterizable #(4) dut3(clk,reset,sout3);
	
	
	logic enable,overflow;
	
	logic[3:0] sout4;
	
	
	parameterizable_adder_register dut(reset,enable,clk,sout4,overflow);
	
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
		
	initial begin
		reset = 1;
		enable = 0;
		#10;
		enable = 1;
		reset = 0;
		#10;
	
	end
	
	
endmodule
