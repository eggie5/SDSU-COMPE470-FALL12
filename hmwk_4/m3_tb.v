`include "m3.v"

module m3_tb();
reg din;
 reg RST;
 reg en;
 reg CLK;
wire dout;

	m3 uut(din, RST, en, CLK, dout);
	
	initial begin
		$display("time\t CLK\t din\t RST\t en\t dout");
		$monitor("%g\t  %d\t %d\t %d\t %d\t %d\t", $time, CLK, din, RST, en, dout);
		
		CLK=0; //initialze clock
		RST=1; //initial reset
		en=1;
		
		@(posedge CLK) din=1; RST=0;
		@(posedge CLK) din=1;
		@(posedge CLK) din=1;
		@(posedge CLK) din=1;
		@(posedge CLK) din=1;en=0;
		
		
		$finish; 
	end
	
		always #1 CLK=~CLK;

endmodule