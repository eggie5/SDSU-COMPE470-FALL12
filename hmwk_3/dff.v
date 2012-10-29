`timescale 1ns / 1ps

module dff(
    input d,
	 input reset,
    output reg q,
    input CLK
    );

	always @(posedge CLK) begin
		if(reset) q<=1'b0; //async-active-high reset
		else q<=d;
	end

endmodule
