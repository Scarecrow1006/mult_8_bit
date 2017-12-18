module append_zeroes(out, in, state);
	output reg[15:0] out;
	input[7:0] in;
	input[1:0] state;
	
	always @(*) begin
		case(state)
			2'b00:begin
					out[7:0]<=in;
					out[15:8]<=8'b0;
				  end
			2'b01:begin
					out[11:4]<=in;
					out[15:12]<=4'b0;
					out[3:0]<=4'b0;
				  end
			2'b10:begin
					out[11:4]<=in;
					out[15:12]<=4'b0;
					out[3:0]<=4'b0;
				  end
			2'b11:begin
					out[15:8]<=in;
					out[7:0]<=8'b0;
				  end
		endcase
	end
endmodule
