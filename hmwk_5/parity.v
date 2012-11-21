module parity #(parameter W=8)
(input [W-1:0] X,
output reg parity_error);

	always @(*) begin
		if (^X == 0) parity_error = 1'b0;
		else parity_error = 1'b1; // parity error detected
	end

endmodule