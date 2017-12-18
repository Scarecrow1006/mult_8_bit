module accumulator_16_bit(out, in, clk);
	//this accumulator adds the input to the current value every clock edge
	//after four clock edges the current value becomes the output
	
	output reg[15:0] out;
	input[15:0] in;
	input clk;
	
	reg by_2, by_4;
	
	reg[15:0] mem;
	
	initial begin
		by_2<=1'b0;
		by_4<=1'b0;
		mem<=16'b0;
	end
	
	always @(posedge clk)
		by_2=~by_2;
	
	always @(posedge by_2)
		by_4=~by_4;
		
	always @(posedge clk)
		mem=mem+in;
		
	always @(posedge by_4) begin
		out<=mem;
		mem<=16'b0;
	end
endmodule
	
