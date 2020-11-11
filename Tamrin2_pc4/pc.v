module pc(clk, oldpc,newpc);
input clk;
input [63:0] oldpc;
output reg [63:0] newpc;

always @(posedge clk)
begin
	newpc <= oldpc;
end
endmodule