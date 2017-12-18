module eight_bit_in_8_bit_out_lut(out, in);
	output reg[7:0] out;
	input[7:0] in;
	
	reg[7:0] lut[0:255];
	
	initial $readmemh("four_bit_mult", lut);
	
	always @(*)
		out<=lut[in];
endmodule
