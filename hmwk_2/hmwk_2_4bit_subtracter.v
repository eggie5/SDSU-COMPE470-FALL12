`timescale 1ns / 1ps

module four_bit_subtracter(
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] SUB
    );

	always @(A or B) begin
		SUB = A - B;
	end

endmodule
