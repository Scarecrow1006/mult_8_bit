module mult_8_bit(out, a, b, clk);
	output wire[15:0] out;
	input[7:0] a;
	input[7:0] b;
	input clk;
	
	reg[1:0] state;
	
	initial
		#0000 state=2'b0;
	
	always @(posedge clk)
		state=state+1;
	
	reg[3:0] in1;
	reg[3:0] in2;
	
	/*always @(*) begin
		case (state)
			2'b00:begin
					assign in1=a[3:0];
					assign in2=b[3:0];
				  end
			2'b01:begin
					assign in1=a[3:0];
					assign in2=b[7:4];
				  end
			2'b10:begin
					assign in1=a[7:4];
					assign in2=b[3:0];
				  end
			2'b11:begin
					assign in1=a[7:4];
					assign in2=b[7:4];
				  end
		endcase
	end*/
	
	always @(*) begin
		case (state)
			2'b00:begin
					in1=a[3:0];
					in2=b[3:0];
				  end
			2'b01:begin
					in1=a[3:0];
					in2=b[7:4];
				  end
			2'b10:begin
					in1=a[7:4];
					in2=b[3:0];
				  end
			2'b11:begin
					in1=a[7:4];
					in2=b[7:4];
				  end
		endcase
	end
	wire[7:0] mult_out;
	wire[15:0] app_out;
	
	mult_4_bit m4b(mult_out, in1, in2);
	append_zeroes app_zero(app_out, mult_out, state);
	accumulator_16_bit acc16(out, app_out, clk);
endmodule
