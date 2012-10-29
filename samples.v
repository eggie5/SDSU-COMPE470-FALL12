//==========================================
// 8-bit Shift-Left Register with Positive-Edge Clock, Synchronous Set, // Serial In, and Serial Out 
//==========================================
module 8bit-shift-left-pos-edge-sync-set
	(input CLK,
	input set,
	input sIn,
	output sOut)
	
	reg [7:0] register;
	
	always @(posedge CLK) begin
	
		if(set) register=8''b1
		else
			register <= {register[6:0]},sIn} //shift left pad w/ 0s

	end
	
	assign SO=register[7]
	
endmodule

//==========================================
// 8-bit Shift-Left Register with Positive-Edge Clock, // Serial In, and Parallel Out
//==========================================
//same as above w/ no set bit
.
.
.
always @(posedge CLK) begin

		register <= {register[6:0]},sIn} //shift left pad w/ 0s
end
.
.
.






//==========================================
// 8-bit Shift-Left Register with Positive-Edge Clock, // Asynchronous Parallel Load, Serial In, and Serial Out
//==========================================

module 8_bit_left_shift_w_asynch_parallel_load_sin_sout
(input clk, sin, isload, load, output sout)

reg temp [7:0];

always @(posedge clk, load) begin
	if(isload) temp<=load
	else temp<={temp[6:0],sin}
end

assign sout=temp[7]

endmodule




//==========================================
// 8-bit Shift-Left Register with Positive-Edge Clock, // Synchronous Parallel Load, Serial In, and Serial Out 
//==========================================
//same as above but not asynch
.
.
.

always @(posedge clk) begin
	if(isload) temp<=load
	else temp<={temp[6:0],sin}
end

.
.
.

//==========================================
// 8-bit Shift-Left/Shift-Right Register with Positive-Edge Clock, // Serial In, and Parallel Out 
//==========================================

module left-right-shift
(input clk, isLeft, sin,
output pout)

	reg [7:0] temp;
	
	always @(clk) begin
		if(isleft) temp<={temp[6:0],sin}
		else temp<={sin, temp[7:1]}
	end
	
	assign po = temp;
	
	
endmodule



//========================================== 
// 4-to-1 1-bit MUX using a Case statement 
//==========================================

module mux41_case
(input a,b,c,d, [1:0]sel
output reg o)

	always @(*) begin
		case(sel)
			2''b00: o<=a;
			2''b01: o<=b;
			2''b10: o<=c;
			default: o<=d;
		endcase
	end
	
	//or
	
	always @* begin
		o<={a,b,c,d}[select];
	end

endmodule


//==========================================
// 4-to-1 1-bit MUX using tristate buffers
//==========================================
//A tristate buffer is inferred if a variable is conditionally assigned a value of z using an if, case or conditional operator

module mux41_w_tristate
(input a,b,c,d, [1:0]sel,
output reg o)
	assign o = s[3] ? a : 1''bzed;
	assign o = s[2] ? b : 1''bzed;
	...
	assign o =s[0] ? d : 1''bzed;
	
	
	//or (i think...)
	always @* begin

		case(sel)
			2''b00: o<=a;
			2''b01: o<=b;
			2''b10: o<=c;
			2''b11: o<=d
			default: o<=1''bz;		
	end

endmodule



//==========================================
// 3-to-1 1-bit MUX with a 1-bit latch.
//==========================================
//same as above 4-1 but w/ no else clause, which infers latch


module mux31_w_latch1b
(input a,b,c, [1:0]sel
output reg o)

	always @(*) begin
	
		if(sel==2''b00) o<=a;
		else if(sel==1''b01) o<=b;
		else if(self==1''b10) o<=c;
		
		//or...
		case(sel)
			2''b00: o<=a;
			2''b01: o<=b;
			2''b10: o<=c;
		endcase
	end

endmodule




//========================================== 
// 3-8 Decoder
//==========================================

module decoder38
(input [2:0] sel, 
output reg [7:0] out);

	always @* begin
		case sel
		3''b000 : out = 8''b00000001;
		3''b001 : out = 8''b00000010;
		3''b010 : out = 8''b00000100;
		3''b011 : out = 8''b00001000;
		3''b100 : out = 8''b00010000;
		3''b101 : out = 8''b00100000;
		3''b110 : out = 8''b01000000;
		3''b111 : out = 8''b10000000;
		default: out = 8''b0;
	end

endmodule


//========================================== 
// 3-Bit 1-of-9 Priority Encoder 
//==========================================
// 2^n= 2^3=8  out = 3 bit

module encoder83_priority
(input [7:0] sel,
output [2:0] code);

	always @* begin
		if(sel==8''b00000001) code<= 3''b000;
		if(sel[8]) code <= 3''b000;
		...
		if(sel[0]) code <= 3''b111;
		else code <= 3''bxxx;
	end

endmodule


//========================================== 
// Logical shifter 
//==========================================

module logical_shift 
(input [7:0] DI,
 input [1:0] SEL,
output reg [7:0] out);

	always @* begin
		case(SEL)
		0: out = DI;
		1: out = DI << 1;
		2: out = DI << 2;
		default : DI << 3;
		endcase
	end


endmodule


//========================================== 
// Unsigned 8-bit Greater or Equal Comparator 
//==========================================

module gte_unsigned
(input [7:0] a, [7:0] b,
output reg cmp);

	always @* begin
		cmp = (a>=b) ? 1''b1 : 11''b0 ;
	end

endmodule



//========================================== 
// Unsigned 8x4 bit multiplier
//==========================================

module mult8x4
(input [7:0] a, input [3:0]b, output [16:0] product);

	always @* begin
		product = a*b
	end

endmodule


//==========================================
// Pipelined multiplier
//==========================================

module pipe-multi
(input [17:0]a, [17:0]b, clk
output reg [35:0]mult);

	reg [17:0] A, B;
	reg [35:0] reg1, reg2, reg3;

	reg1 <= A*B;		
	always @(posedge clk) begin
		A<=a;
		B<=b;

		reg2 <= reg1;
		reg3 <= reg2;
		mult <= reg3;
	end


endmodule


//==========================================
// Multiplier Adder with 2 Register Levels on Multiplier Inputs
//==========================================

module asdf
(input [7:0] A, ''B,C, clk
output [15:0] RES);

	wire [15:0] mult;
	reg [7:0] a,b,a2,b2;
	always @(posedge clk) begin
		a<=A; a2<=a;
		b<=B; b2<=b;
		
	end
	
	assign mult= a2 * b2;
	assign RES = mult + C;

endmodule


//==========================================
// Multiplier Up Accumulate with Register After Multiplication
//==========================================

module mult_accum
(input [7:0] A, [7:0] B, clk, reset,
output [15:0] RES);

	
	reg [15:0] mult, add;
	
	always @(posedge clk)
		if(reset) mult=0; 
		else mult <= A * B;
	end
	
	always @(posedge clk)
		if(reset) add=0; 
		else add <= mult + add;
	end
	
	assign RES = add;

endmodule



//==========================================
// Multiplier Up/Down Accumulate with Register After Multiplication.
//==========================================
//saem as last w/ up/down input

	module mult_accum
	(input [7:0] A, [7:0] B, clk, reset, up_down,
	output [15:0] RES);


		reg [15:0] mult, add;

		always @(posedge clk)
			if(reset) mult=0; 
			else mult <= A * B;
		end

		always @(posedge clk)
			if(reset) add=0; 
			else if(up_down) add <= mult + add;
			else add <= mult - add;
		end

		assign RES = add;

	endmodule