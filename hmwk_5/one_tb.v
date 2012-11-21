`include "one.v"

module one_tb;
reg [3:0] X;
reg clk;
wire [3:0] Y;

reg [3:0] mem[0:5];
integer i;

reg [3:0] expected[0:5];

one uut(X, clk, Y);

initial $readmemb("input.txt", mem);
initial $readmemb("expected", expected);

initial begin
	
	// $display("time\t clk\t X\t Y");
//	$monitor("%g\t %d\t %d\t %d", $time, clk, X, Y);	
	
	clk=0;
	X=0;
	
	for (i=0; i<8; i=i+1) begin
		@(posedge clk) X = mem[i];
		@(posedge clk)
		@(posedge clk)
		@(posedge clk) begin
			// let value propigate to Y over 2 clock cycles and then assert output
			if(expected[i]!=Y) $display("Test failure: X=%d expected Y=%d actual Y=%d", X, expected[i], Y);
			else $display("."); //test pass
		end
	
	
	end
	
	@(posedge clk) $finish;
end

always #1 clk=~clk;

endmodule