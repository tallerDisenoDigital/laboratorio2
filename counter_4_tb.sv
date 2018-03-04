module counter_4_tb();

	logic clk,reset;
	logic[3:0] sout;
	assign reset = 1'b0;
	counter_parameterizable dut1(clk,reset,sout);
	counter_parameterizable dut2(clk,reset,sout);
	counter_parameterizable dut3(clk,reset,sout);
	
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
endmodule
