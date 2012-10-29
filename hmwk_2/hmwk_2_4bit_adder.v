`timescale 1ns / 1ps

module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] SUM
    );
	 
	always @(A or B) begin
		SUM = A + B;
	end
	 


endmodule
