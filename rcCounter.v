module rcCounter(
output[3:0] q,
input clk, reset
);
T_Flipflop tff0(q[0], clk, reset);
T_Flipflop tff1(q[1], q[0], reset);
T_Flipflop tff2(q[2], q[1], reset);
T_Flipflop tff3(q[3], q[2], reset);
endmodule
module T_Flipflop(q, clk, reset);
	output q;
	input clk, reset;
	wire d;

	D_Flipflop dff0(q, d, clk, reset);
	not n1(d, q);

endmodule
module D_Flipflop(q, d, clk, reset);
	output q;
	input d, clk, reset;
	reg q;

	always @(negedge clk)
		if (reset) q <= 1'b0;
		else q <= d;

endmodule
