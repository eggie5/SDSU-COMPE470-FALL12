`timescale 1ns / 1ps

module g2_dataflow(
    input x3,
    input x2,
    input x1,
    input x0,
    output y
    );
	 
	 
	assign y_1 = x3 ^ x2;
	assign y_2 = x1 ^ x0;
	assign y = y_1 ^ y_2;
	
	//or
	// y = (x3 ^ x2) ^ (x1 ^ x0)

endmodule
