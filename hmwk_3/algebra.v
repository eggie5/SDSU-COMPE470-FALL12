`timescale 1ns / 1ps

module algebra(
	 input CLK,
    input signed [3:0] a,
    input signed [3:0] x,
    input signed [3:0] b,
    output signed[8:0] y
    );

	reg signed [8:0] sum;
	
	always @(posedge CLK) begin
		sum <= (a*x) + b;
	end	
	
	assign y = sum;
endmodule
