module adder_register(input logic a,cin,reset,enable,clk,output logic s,cout);
	
	always@(posedge clk)
		begin
			if(reset)
			begin
				s <= 1'b0;
				cout <= 1'b0;
				$display("we are in reset!");
			end
			else if (enable)
			begin
				s <= (a^(s^cin));
				cout <= a&s&cin;
				$display("we are in enable!");
			end
		end

endmodule
