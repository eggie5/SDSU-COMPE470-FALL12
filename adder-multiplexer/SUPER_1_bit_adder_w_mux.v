`timescale 1ns / 1ps

module SUPER_1_bit_adder_w_mux(
    input A0,
    input A1,
    input B0,
    input B1,
    input Sa,
    input Sb,
    input Ss,
    output S0,
    output S1
    );
	 
	 wire a, b, sum;

	multiplexer21 mux1({A0,	 A1}, Sa, a);
	multiplexer21 mux2({B0, B1}, Sb, b);
	adder_1_bit adder(a, b, sum);
	demulti12 demux(sum, {S0, S1}, Ss);

endmodule
