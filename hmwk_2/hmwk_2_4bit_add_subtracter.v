`timescale 1ns / 1ps

//this is the top module that encapsulates
//the 2 individual adder and subtracters
module four_bit_add_subtracter(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output [3:0] sub
    );

	four_bit_adder adder(a, b, sum);
	four_bit_subtracter subtracter(a, b, sub);

endmodule
