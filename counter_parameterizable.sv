module counter_parameterizable #(parameter bit_count = 4)
	(input logic clk,input logic reset, output logic[bit_count-1:0] q);
	logic[bit_count-1:0] d;
	assign d[bit_count-1:0] = '0;
	//adder_4_bits my_bit_adder(a,local_q,cin, d, reset);
	//parameterizable_counter #(4) counter_4(clk, reset, d, q);
	always_ff@(posedge clk)
		begin
			if(q[bit_count-1:0] === '1) begin q[bit_count-1:0] = '0;end
			else if(q[bit_count-1:0] === 'X) begin q = d; end
			else begin q=q+1'b1;end
		end
	
endmodule
