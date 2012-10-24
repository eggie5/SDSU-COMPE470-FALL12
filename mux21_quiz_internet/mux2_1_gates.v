`timescale 1ns / 1ps

module mux2_1_gates(
    input A,
    input B,
    input SEL,
    output OUT
    );
	
	 not(not_sel, SEL);
	 and(and1, A, not_sel);
	 and(and2, B, SEL);
	 or(OUT, and1, and2);


endmodule
