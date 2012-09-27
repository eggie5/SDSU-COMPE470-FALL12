`timescale 1ns / 1ps

module g3(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    output z1,
    output z2
    );

	g1_gates myg1_1(a,b,c,d, y1, y2);
	g1_gates myg1_2(y1,y2,e,f,z1,z2);
	
		
endmodule
