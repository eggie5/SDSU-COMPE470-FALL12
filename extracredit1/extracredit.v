`timescale 1ns / 1ps

	module extracredit(
    input signed [3:0] X,
	 input CLK,
    output signed [18:0] R
    );

	reg signed [18:0] temp;
	always @(posedge CLK) begin
		temp <= -12*X-9;
	end
	
	assign R=temp;
	

endmodule
