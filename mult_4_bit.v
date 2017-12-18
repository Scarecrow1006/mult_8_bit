module mult_4_bit(out, in1, in2);
	output wire[7:0] out;
	input[3:0] in1;
	input[3:0] in2;
	
	reg[7:0] in;
	
	always @(*) begin
		in[3:0] <= in1;
		in[7:4] <= in2;
	end
	
	eight_bit_in_8_bit_out_lut lut(out, in);
endmodule
