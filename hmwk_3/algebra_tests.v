`timescale 1ns / 1ps


module algebra_tests;

	// Inputs
	reg CLK;
	reg [3:0] a;
	reg [3:0] x;
	reg [3:0] b;

	// Outputs
	wire [8:0] y;

	// Instantiate the Unit Under Test (UUT)
	algebra uut (
		.CLK(CLK), 
		.a(a), 
		.x(x), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		a = 3;
		//x = 0;
		b = -4;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
		#5 x=2;
		#10 x=5;
		#10 x=-6;
		#10 x=7;

	end
	
	always begin 
		#5 CLK=~CLK;	
	end
      
endmodule

