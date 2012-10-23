`timescale 1ns / 1ps


module test3;

	// Inputs
	reg signed [3:0] X;
	reg CLK;

	// Outputs
	wire signed [17:0] outR;

	// Instantiate the Unit Under Test (UUT)
	extracredit uut (
		.X(X), 
		.CLK(CLK), 
		.outR(outR)
	);

	initial begin
		X = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#10 X=0;
		#10 X=-1;
		#10 X=-2;
		#10 X=3;

	end
	
	always begin
		#5 CLK=~CLK;
	end
      
endmodule

