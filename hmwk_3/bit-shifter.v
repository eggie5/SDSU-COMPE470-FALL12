`timescale 1ns / 1ps

module bitshifter(
    input CLK,
    input in,
	 input reset,
    output out
    );
	 
	 wire ff0_out;
	 
	 dff ff0(in, reset, ff0_out, CLK);
	 dff ff1(ff0_out, reset, out, CLK);
	 


endmodule
