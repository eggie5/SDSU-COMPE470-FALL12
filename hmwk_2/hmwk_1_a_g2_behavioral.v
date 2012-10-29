`timescale 1ns / 1ps

module g2_behavioral(
    input x3,
    input x2,
    input x1,
    input x0,
    output reg y
    );
	 
	 //or: output reg y;
	 //or: reg y;
	 
	 always @(x3 or x2 or x1 or x0) begin
		
		y=(x3 ^ x2) ^ ( x1 ^ x0);
	 end


endmodule
