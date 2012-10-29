`timescale 1ns / 1ps


module g2_gates(
    input x3,
    input x2,
    input x1,
    input x0,
    output y
    );
	 

	
	xor(y_1, x3, x2);
	xor(y_2, x1, x0);
	xor(y, y_1, y_2);
	

endmodule
