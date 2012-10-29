`timescale 1ns / 1ps



module test_demux;

	// Inputs
	reg d;
	reg select;

	// Outputs
	wire [1:0] q;

	// Instantiate the Unit Under Test (UUT)
	demulti12 uut (
		.d(d), 
		.q(q), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		d=0;
		select = 0; #1;
		select = 1; #1;
		
		d=1;
		select = 0; #1;
		select = 1; #1;

	end
      
endmodule

