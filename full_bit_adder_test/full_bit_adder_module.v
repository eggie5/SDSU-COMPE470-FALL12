
module full_bit_adder_module(Cout, sum, Cin, a, b);
input Cin, a, b;
output Cout, sum;


/*
assign ab = lna^lnb;
assign sum = ab^Cin;
assign w1= ab&Cin;
assign w2 = lna&lnb;
assign Cout = w1|w2;
*/

assign sum = a^b^Cin;
assign Cout = (a&b)|(Cin&(a^b));

endmodule
