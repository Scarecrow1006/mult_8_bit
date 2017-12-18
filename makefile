mult_8_bit_tb: mult_8_bit_tb.v      mult_8_bit.v     mult_4_bit.v     eight_bit_in_8_bit_out_lut.v   append_zeroes.v   accumulator_16_bit.v
	iverilog mult_8_bit_tb.v mult_8_bit.v mult_4_bit.v eight_bit_in_8_bit_out_lut.v append_zeroes.v accumulator_16_bit.v -o mult_8_bit_tb.vvp
	
gitrep:
	git config user.email "f2016268@pilani.bits-pilani.ac.in"
	git config user.name "Parth Kalgaonkar"
