`timescale 1ns / 1ps


module multi21_test;

	// Inputs
	reg [1:0] d;
	reg select;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	multiplexer21 uut (
		.d(d), 
		.select(select), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		select = 0;
		
		

		// Wait 100 ns for global reset to finish
		d=2'b11;
		select = 0; #1;
		select = 1; #1;
		
		d=2'b10;
		select = 0; #1;
        
		

	end
      
endmodule

