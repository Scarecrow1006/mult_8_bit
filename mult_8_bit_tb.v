`timescale 1ns/10ps
module mult_8_bit_tb();
	reg[7:0] a,b;
	wire[15:0] out;
	reg clk;
	
	initial begin
		#0000 clk=1'b0;
		forever #50 clk=~clk;
	end
	
	initial begin
		a<=8'd23;
		b<=8'd05;
	end
		
	mult_8_bit test(out, a, b, clk);
	
	initial begin
		$dumpfile("mult_8_bit.vcd");
		$dumpvars;
	end
	
	initial #600 $stop;
endmodule
