`timescale 1ns / 1ps


module test;

	// Inputs
	reg signed [3:0] X;
	reg CLK;

	// Outputs
	wire signed [18:0] R;

	// Instantiate the Unit Under Test (UUT)
	extracredit uut (
		.X(X), 
		.CLK(CLK), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#10 X=0;
		#10 X=-1;
		#10 X=-2;
		#10 X=3;
        
		// Add stimulus here

	end
	
	always begin
		#5 CLK=~CLK;
	end
      
endmodule

