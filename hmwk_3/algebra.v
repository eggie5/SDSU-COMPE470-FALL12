`timescale 1ns / 1ps

module algebra(
	 input CLK,
    input signed [3:0] a,
    input signed [3:0] x,
    input signed [3:0] b,
    output signed[8:0] y
    );

	reg signed [7:0] product;
	reg signed [8:0] sum;
	reg signed [8:0] temp;
	always @(posedge CLK) begin
		product <= a*x;
		sum <= product + b;
		temp <= sum;
	end	
	
	assign y = temp;
endmodule
