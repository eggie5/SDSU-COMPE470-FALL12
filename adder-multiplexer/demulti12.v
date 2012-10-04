`timescale 1ns / 1ps

module demulti12(
    input d,
    output [1:0] q,
    input select
    );

	assign q = d << select;
endmodule
