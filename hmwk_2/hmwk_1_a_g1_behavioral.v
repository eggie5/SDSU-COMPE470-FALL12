`timescale 1ns / 1ps
//behaviroal implementaiton
module g1_behavioral(
    input x3,
    input x2,
    input x1,
    input x0,
    output y1,
    output y0
    );

	reg y1, y0; //ouputs must be reg
	
	always @(x3 or x2 or x1 or x0) begin // when any of these inputs change
		//do something
		y1 = ~(x3 & x2);
	   y0 = ~((~(x0 & x1)) & ~x2);
	end
endmodule
