`timescale 1ns/1ps
module tb_addCounter;
reg clk, reset;
wire[3:0] q;

addCounter r1(q, clk, reset);

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
	$monitor($time, "output q = %d", q);
endmodule
