`timescale 1ns / 1ps


module adder_tests;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	four_bit_adder uut (
		.A(A), 
		.B(B), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#1;A = 4'b0000; B = 4'b0000; 
		#1;A = 4'b1111; B = 4'b1111; 
		#1;A = 4'b1110; B = 4'b0111; 
		#1;A = 4'b1010; B = 4'b0101; 
		#1;A = 4'b0011; B = 4'b1100; 
		#1;A = 4'b1010; B = 4'b0110; 
		#1;A = 4'b1111; B = 4'b0001; 
		#1;A = 4'b0000; B = 4'b1111; 
		#1;A = 4'b0000; B = 4'b0001;
        
		// Add stimulus here

	end
      
endmodule

