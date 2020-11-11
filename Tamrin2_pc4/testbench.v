module testbench();

wire[63:0] oldpc;
wire[63:0] newpc;
wire clk;

initial 
begin
   oldpc = 4;
   clk = 0;
end

clock(clk);
pc(clk,oldpc,newpc);

assign oldpc = newpc + 4;

endmodule