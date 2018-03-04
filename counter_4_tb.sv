module counter_4_tb();

	logic clk,reset;
	logic[1:0] sout1;
	logic[2:0] sout2;
	logic[3:0] sout3;
	assign reset = 1'b0;
	counter_parameterizable #(2) dut1(clk,reset,sout1);
	counter_parameterizable #(3) dut2(clk,reset,sout2);
	counter_parameterizable #(4) dut3(clk,reset,sout3);
	
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
endmodule
