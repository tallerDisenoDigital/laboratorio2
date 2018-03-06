module parameterizable_counter #(bit_count = 4)
	(input logic reset,enable,clk,output logic[bit_count-1:0] s,output logic overflow);

	logic[bit_count-1:0] a,d;
	logic cin;
	assign cin = 1;
	assign a[bit_count-1:0] = 0;
	logic local_overflow;
	
	parameterizable_adder #(bit_count) my_adder(a,s,cin,d,local_overflow);
	
	always_ff@(posedge clk)
		begin
			if(reset | overflow)
			begin
				s[bit_count-1:0] <= 1'b0;
				overflow <= 1'b0;
				$display("we are in reset!");
			end
			else if (enable)
			begin
				s[bit_count-1:0] <= d[bit_count-1:0];
				overflow <= local_overflow;
				$display("we are in enable!");
			end
		end
	
	
		
endmodule
