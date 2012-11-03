
module arithmatic_unit
(input [2:0] sel,
 input signed [3:0] a,
 input signed [3:0] b,
 output reg signed [7:0] out);

	always @* begin
		// $display("arithmatic_unit, a=%d, b=%d",a, b);
		case(sel)
			0:  out = a+b;
			1:  out = a-b;
			2:  out = b-a;
			3:  out = a+1;
			4:  out = b+1;
			5:  out = a-1;
			6:  out = b-1;
			7:  out = a*b;
			default: $display("sel ERROR in arithmatic_unit");
		endcase
	end


endmodule 

module logic_unit
(input [2:0] sel,
 input [3:0] a,
 input [3:0] b,
 output reg out);

	always @* begin
		case(sel)
			0:  out = ~a;
			1:  out = ~b;
			2:  out = a && b;
			3:  out = a || b;
			4:  out = ~(a && b);
			5:  out = ~(a || b);
			6:  out = a^b;
			7:  out = ~(a^b);
			default: $display("sel ERROR logic_unit");
		endcase
	end


endmodule

//mux is n select for 2^n inputs, so if n=1 bit inputs have to equal 2
module mux21 
#(parameter W=4)
 (input sel,
  input [W-1:0] a,
  input [W-1:0] b,
 output reg [W-1:0] out);

	always @* begin
		case(sel)
		0: out = a;
		default: out = b;
		endcase
	end
endmodule



//this is the top level module
module alu
(input signed [3:0] a,
 input signed [3:0] b,
 input [3:0] sel,
 output signed [7:0] y );

	wire lu_out;
	wire [7:0] au_out;
	
	logic_unit lu(sel[2:0], a, b, lu_out);
	arithmatic_unit au(sel[2:0], a, b, au_out);
	mux21  #(8) mux (sel[3], au_out, lu_out, y);
	
endmodule