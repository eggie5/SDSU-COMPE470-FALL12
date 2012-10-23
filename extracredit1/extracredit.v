`timescale 1ns / 1ps

	module extracredit(
    input signed [3:0] X,
	 input CLK,
    output reg signed [17:0] outR
    );
	 
	 reg signed [7:0] mulR;
	 reg signed [8:0] addR;
	

	//reg signed [18:0] temp;
	always @(posedge CLK) begin
		//temp <= -12*X-9;
		mulR <= 4*X; //a=4
		addR <= mulR + 3; //b=3
		outR <= addR * -3; //c=-3
	end
	
	//assign R=temp;
	

endmodule
