module bit_twiddler
(input signed [7:0] X,
output reg [7:0] Qrev,
output reg [7:0] Qtc,
output reg [7:0] Qcrr);

parameter W=8;
integer i;
integer Qint;
	
	 //reverse bits
	always @(X) begin
		 for (i=0; i <= W; i=i+1)
			Qrev[i]=X[(W-1)-i];
	end
	
	//two's complement
	always @(X) begin
		Qtc=$signed(X);	
	end
	
	//circle rotate
	always @(X) begin
		Qcrr={X[0], X[7:1]};
	end

endmodule

// iverilog -o bit_twiddler_tb bit_twiddler_tb.v && ./bit_twiddler_tb 