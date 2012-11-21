`include "one.v"

module one_tb;
reg [3:0] X;
reg clk;
wire [3:0] Y;

reg [7:0] mem[0:5];
integer i;

one uut(X, clk, Y);

initial $readmemb("input.txt", mem);

initial begin
	
	$display("time\t clk\t X\t Y");
	$monitor("%g\t %d\t %d\t %d", $time, clk, X, Y);	
	
	clk=0;
	X=0;
	
	for (i=0; i<8; i=i+1)
		@(posedge clk) X = mem[i];
	
	@(posedge clk) $finish;
end

always #1 clk=~clk;

endmodule