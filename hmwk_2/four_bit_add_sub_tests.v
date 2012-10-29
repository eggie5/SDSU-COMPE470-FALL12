`timescale 1ns / 1ps


module four_bit_add_sub_tests;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] sum;
	wire [3:0] sub;

	// Instantiate the Unit Under Test (UUT)
	four_bit_add_subtracter uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.sub(sub)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#1;a = 4'b0000; b = 4'b0000; 
		#1;a = 4'b1111; b = 4'b1111; 
		#1;a = 4'b1110; b = 4'b0111; 
		#1;a = 4'b1010; b = 4'b0101; 
		#1;a = 4'b0011; b = 4'b1100; 
		#1;a = 4'b1010; b = 4'b0110; 
		#1;a = 4'b1111; b = 4'b0001; 
		#1;a = 4'b0000; b = 4'b1111; 
		#1;a = 4'b0000; b = 4'b0001; 
        
		// Add stimulus here

	end
      
endmodule

