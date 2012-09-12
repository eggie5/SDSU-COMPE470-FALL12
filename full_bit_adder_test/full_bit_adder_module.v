
////////////////////////////
module full_bit_adder_module(Cout, sum, lna, lnb, Cin);
input lna, lnb, Cin;
output Cout, sum;

//xor (sum, lna, lnb);
//and (Cout, lna, lnb);

wire ab, andand, w1, w2;
/*
assign ab = lna^lnb;
assign sum = ab^Cin;
assign w1= ab&Cin;
assign w2 = lna&lnb;
assign Cout = w1|w2;
*/

assign sum = lna^lnb^Cin;
assign Cout = (lna&lnb)|(Cin&(lna^lnb));

endmodule
