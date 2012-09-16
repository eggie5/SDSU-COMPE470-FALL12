`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:48 09/16/2012
// Design Name:   add_sub
// Module Name:   /home/eggie5/Documents/compe470/hmwk1_adder_subtracter/tests.v
// Project Name:  hmwk1_adder_subtracter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: add_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tests;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] sum;
	wire [3:0] diff;

	// Instantiate the Unit Under Test (UUT)
	add_sub uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.diff(diff)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
		#1; a = 4'b0000; b = 4'b0000; 
		#1; a = 4'b1111; b = 4'b1111; 
      #1; a = 4'b1110; b = 4'b0111; 
		#1; a = 4'b1010; b = 4'b0101; 
		#1; a = 4'b0011; b = 4'b1100; 
		#1; a = 4'b1010; b = 4'b0110; 
		#1; a = 4'b1111; b = 4'b0001;
		#1; a = 4'b0000; b = 4'b1111; 
		#1; a = 4'b0000; b = 4'b0001;

	end
      
endmodule

