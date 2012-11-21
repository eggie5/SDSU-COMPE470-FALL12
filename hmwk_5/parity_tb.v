`include "parity.v"

module parity_tb;
reg  [7:0] X;
wire out;

parameter W=8;

parity #(8) p (X, out);

initial begin
	
		$display("time\t  X\t \tParity");
		$monitor("%g\t%b\t %b", $time, X, out);

 		#1 X=8'b00100010;
 		#1 X=8'b00101010;
 		#1 X=8'b00000000;
 		#1 X=8'b11111111;
 		#1 X=8'b00110111;
end

endmodule