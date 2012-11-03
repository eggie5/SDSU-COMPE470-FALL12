`include "addsub.v"

module addsub_tb();
parameter N=4;
reg SM;
reg SD;
reg AS;
reg signed [N-1:0] A;
reg signed [N-1:0] B;
reg signed [N-1:0] C;
wire signed [N:0] Sum;
wire signed [N:0] Sub;

addsub #(4) as (SM, SD, AS, A, B, C, Sum, Sub);

initial begin
	$display("time\t A\t  B\t  C\t  SM\t  AS\t  SD\t  Sum\t  Sub");
	$monitor("%g\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, A, B, C, SM, AS, SD, Sum, Sub);
	
	#1 A = 7; B = 1; C = 0; SM = 0; AS = 0; SD = 0; //output should be: A+B = 7+1=2, sum=8
	#1 A = 0; B = 2; C =-1; SM = 1; AS = 1; SD = 1;
	
	#16 $finish; 
end

endmodule