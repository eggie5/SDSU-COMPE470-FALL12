`timescale 1ns / 1ps



module g3_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;

	// Outputs
	wire z1;
	wire z2;

	// Instantiate the Unit Under Test (UUT)
	g3 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.z1(z1), 
		.z2(z2)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;

		// Wait 100 ns for global reset to finish
		#1; abcdef = 000000;
		#1; abcdef = 111111;
		#1; abcdef = 010101;
		#1; abcdef = 101010;
        
		// Add stimulus here

	end
      
endmodule

