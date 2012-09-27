`timescale 1ns / 1ps
//gate level implementation
module g1_gates(
    input x3,
    input x2,
    input x1,
    input x0,
    output y1,
    output y0
    );
	 
	 not(x2_, x2);
	 nand(y1, x3, x2);
	 nand(y0, x0, x1, x2_);


endmodule
