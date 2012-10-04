`timescale 1ns / 1ps

module multiplexer21(
    input [1:0] d,
    input select,
    output q
    );
	 
	 
	 assign q = d[select];

endmodule
