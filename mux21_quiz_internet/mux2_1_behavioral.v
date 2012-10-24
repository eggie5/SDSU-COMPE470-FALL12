`timescale 1ns / 1ps

module mux2_1_behavioral(
    input A,
    input B,
    input SEL,
    output reg OUT
    );

	always @(*) begin
		OUT = (SEL==0) ? A : B;
	end

endmodule
