`include "alu.v"

module alu_tb();
reg signed [3:0] a;
reg signed [3:0] b;
reg [3:0] sel;
wire signed [7:0] y;
integer i;	

alu myalu(a, b, sel, y);
	
	
initial begin
	$display("time\t sel\t  a\t  b\t    y");
	$monitor("%g\t %b\t %d\t %d\t %d\t", $time, sel, a, b, y);
	
	for(i=0; i<15; i=i+1) begin
		#1 sel=i; a=6; b=-5;
	end
	
	
	#16 $finish; 
end


endmodule