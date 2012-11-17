module one
(input [3:0] X, 
input clk,
output [3:0] Y);

reg [3:0] A, B, C;


always @(posedge clk) begin
	A <= X;
	B <= (A+1);
	C <= (B+1);
end

	assign Y=C;

endmodule