module parameterizable_adder #(bit_count = 4)
	(input logic[bit_count-1:0] a,b,input logic cin,output logic[bit_count-1:0] s,output logic overflow);

	
	assign {overflow, s} = a + b+ cin;
	
endmodule
