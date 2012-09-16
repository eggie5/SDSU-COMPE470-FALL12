`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:07 09/16/2012 
// Design Name: 
// Module Name:    subtracter 
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
module subtracter(
    input [3:0] a,
    input [3:0] b,
    output [3:0] diff
    );

	assign diff = a-b;
endmodule
