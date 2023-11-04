`timescale 1ns/1ps
module tb_rcCounter;
reg clk, reset;
wire[3:0] q;

rcCounter r1(q, clk, reset);

initial
	clk = 1'b0;
always
	#5 clk = ~clk;

initial
begin
	reset = 1'b1;
	#15	reset = 1'b0;
end
initial
begin
	#75	reset = 1'b1;
	#10	reset = 1'b0;
end

initial
	$monitor($time, "output q = %d", q);
endmodule
