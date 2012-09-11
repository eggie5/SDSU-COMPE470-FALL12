
module full_bit_adder_module(Cout, sum, lna, lnb);
input lna, lnb;
output Cout, sum;

xor (sum, lna, lnb);
and (Cout, lna, lnb);


endmodule
