`timescale 1ns / 1ps



module mux2_1_tests;

	// Inputs
	reg A;
	reg B;
	reg SEL;

	// Outputs
	wire OUT_gates;
	wire OUT_dataflow;
	wire OUT_behavioral;

	// Instantiate the Unit Under Test (UUT)
	mux2_1_gates uut_gates (
		.A(A), 
		.B(B), 
		.SEL(SEL), 
		.OUT(OUT_gates)
	);
	mux2_1_dataflow uut_dataflow (
		.A(A), 
		.B(B), 
		.SEL(SEL), 
		.OUT(OUT_dataflow)
	);
	mux2_1_behavioral uut_behavioral (
		.A(A), 
		.B(B), 
		.SEL(SEL), 
		.OUT(OUT_behavioral)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		SEL = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A=1;
		B=1;
		SEL=0;
		//OUT should eq 0
		
		#10
		A=0;
		SEL=1;
		//OUT should be B
		
		#10
		A=1;
		B=0;
		SEL=0;
		//OUT should be 1
		
        
		// Add stimulus here

	end
      
endmodule

