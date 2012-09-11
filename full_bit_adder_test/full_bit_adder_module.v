
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:33 09/10/2012 
// Design Name: 
// Module Name:    full_bit_adder_module 
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
module full_bit_adder_module(Cout, sum, lna, lnb);
input lna, lnb;
output Cout, sum;

xor (sum, lna, lnb);
and (Cout, lna, lnb);


endmodule
