`include "one.v"

module one_tb;
reg [3:0] X;
reg clk;
wire [3:0] Y;

one uut(X, clk, Y);

initial begin
	$display("time\t clk\t X\t Y");
	$monitor("%g\t %d\t %d\t %d", $time, clk, X, Y);	
	
	clk=0;
	X=0;
	
	#10 $finish;
end

always #1 clk=~clk;

endmodule