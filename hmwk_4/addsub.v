module addsub
#(parameter N=4)
(input SM,
 input SD,
 input AS,
 input signed [N-1:0] a,
 input signed [N-1:0] b,
 input signed [N-1:0] c,
 output signed [N:0] Sum,
 output signed [N:0] Sub);

	reg signed [N-1:0] A, B, C;
	reg [N:0] sum_out;
	reg [N:0] sub_out; 
	reg [N:0] add_sub_out;
	
	reg signed [N-1:0] mux_out;
	
	//populate input registers
	always @* begin
		A=a;
		B=b;
		C=c;
	end
	
	//this is the 2-1 mux
	always @* begin
		mux_out = (SM) ? C : B;
	end
	
	//add/sub module
	always @* begin
		case(AS)
			0: add_sub_out = A + mux_out;
			default: add_sub_out = A - mux_out;
		endcase
	end
	
	//this is the 1-2 demux
	always @* begin
		if(SD) sub_out = add_sub_out;
		else sum_out = add_sub_out;
	end
	
	assign Sum = sum_out;
	assign Sub = sub_out;

endmodule