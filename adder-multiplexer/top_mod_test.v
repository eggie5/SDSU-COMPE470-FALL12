`timescale 1ns / 1ps



module top_mod_test;

	// Inputs
	reg A0;
	reg A1;
	reg B0;
	reg B1;
	reg Sa;
	reg Sb;
	reg Ss;

	// Outputs
	wire S0;
	wire S1;

	// Instantiate the Unit Under Test (UUT)
	SUPER_1_bit_adder_w_mux uut (
		.A0(A0), 
		.A1(A1), 
		.B0(B0), 
		.B1(B1), 
		.Sa(Sa), 
		.Sb(Sb), 
		.Ss(Ss), 
		.S0(S0), 
		.S1(S1)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 0;
		B0 = 0;
		B1 = 0;
		Sa = 0;
		Sb = 0;
		Ss = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A0=1;
		A1=0;
		B0=1;
		B1=0;
		Sa=0;
		Sb=1;
		Ss=1;
		//1+0 should = 1 on S0
        
		// Add stimulus here

	end
      
endmodule

