`timescale 1ns / 1ps

module right_shifter(
    input CLK,
    input INIT,
    output [3:0] OUT
    );

	reg [3:0] mem;
	
	always @(posedge CLK, posedge INIT) begin
		if (INIT) mem <= 4'b0101;
		else mem[3:0] <= { mem[1]^mem[0], mem[3:1]};
	end
	
	assign OUT = mem;

endmodule
