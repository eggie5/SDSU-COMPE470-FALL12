module full_bit_adder_module(Cout, sum, Cin, a, b);
input Cin, a, b;
output Cout, sum;

xor (Cin, sum);

//this is half adder 1
xor (sum, a, b);
and (Cout, a, b);

//this is half adder 2
xor (sum, a, b);
and (Cout, a, b);


endmodule
