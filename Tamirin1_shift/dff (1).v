module DFlipFlop(clk, rst, old,new);
input clk;
input rst;
input oldpc;
output reg newpc;

always @(posedge clk)
begin
if(rst)
	newpc<=0;
else
	newpc <= oldpc;
end
endmodule