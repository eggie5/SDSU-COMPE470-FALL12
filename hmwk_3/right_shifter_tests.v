`timescale 1ns / 1ps

module right_shifter_tests;

	// Inputs
	reg CLK;
	reg INIT;

	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	right_shifter uut (
		.CLK(CLK), 
		.INIT(INIT), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		INIT = 0;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		INIT=1;
		#10 INIT=0;
        
		// Add stimulus here

	end
	
	always begin
		#5 CLK=~CLK;
	end
      
endmodule

