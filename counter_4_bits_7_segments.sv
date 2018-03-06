module counter_4_bits_7_segments (input logic reset,enable,clk,output logic[7:0] s,output logic overflow);

	logic[3:0] local_s;
	parameterizable_counter	counter(reset,enable,clk,local_s,overflow);
	
	logic[7:0] pre_s;
	
	assign s = ~pre_s; 
	
	hexto7segment toDisplay(local_s,pre_s);
	
	
endmodule

