module m3
(input din,
 input RST,
 input en,
 input CLK,
 output reg dout);

	reg d1q, tri_buff;

	//first dff
	always @(posedge CLK, posedge RST) begin
		if(RST) d1q = 0;
		else d1q = din;
	end
	
	//tribuff
	always @(posedge CLK, en) begin
	    tri_buff = (en) ? d1q : 1'bz;
	end
	
	//second dff
	always @(posedge CLK, posedge RST) begin
		if(RST) dout = 0;
		else dout = tri_buff;
	end

endmodule