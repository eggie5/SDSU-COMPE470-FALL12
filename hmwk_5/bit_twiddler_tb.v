`include "bit_twiddler.v"
module bit_twiddler_tb;
reg signed [7:0] X;
wire [7:0] Qrev;
wire [7:0] Qtc;
wire [7:0] Qcrr;

parameter W=8;

bit_twiddler bt(X, Qrev, Qtc, Qcrr);

initial begin
	$display("time\t  X\t \tQrev \t  Qtc\t   Qcrr");
	$monitor("%g\t%b\t %b %b %b", $time, X, Qrev, Qtc, Qcrr);
	
	#1 X=8'b10100010;
	#1 X=8'b00101010;
	#1 X=8'b01000000;
	#1 X=8'b11111111;
	#1 X=8'b10000000;
end

endmodule