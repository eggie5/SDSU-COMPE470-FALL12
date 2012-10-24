`timescale 1ns / 1ps

module mux2_1_dataflow(
    input A,
    input B,
    input SEL,
    output OUT
    );
	 
	 assign OUT = (SEL==0)? A : B;


endmodule
