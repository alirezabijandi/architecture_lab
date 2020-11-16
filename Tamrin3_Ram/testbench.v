module testbench();

wire[63:0] oldpc;
wire[63:0] newpc;
wire[31:0] instruction;
wire clk;

initial 
begin
   oldpc = 4;
   clk = 0;
end

clock(clk);
pc(clk,oldpc,newpc);


assign oldpc = {32'h00000000,instruction[31:0]};

endmodule