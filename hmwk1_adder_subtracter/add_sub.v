`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:54 09/16/2012 
// Design Name: 
// Module Name:    add_sub 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module add_sub(
    input[3:0] a,
    input[3:0] b,
    output[3:0] sum,
    output[3:0] diff
    );
   
	adder add(.a(a), .b(b), .sum(sum));
	subtracter subtract(.a(a), .b(b), .diff(diff));
	

endmodule
