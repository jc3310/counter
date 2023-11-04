module addCounter(
output reg [3:0] count,
input clk, reset
);
always @(negedge clk)
begin
	if (reset) count <= 4'b0000;
	else count <= count + 4'b0001;
end

endmodule
