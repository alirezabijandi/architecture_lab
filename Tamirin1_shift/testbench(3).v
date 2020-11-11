module testbench;

reg reset;
reg[2:0] value;

wire clk;
wire inputval;
wire Right;
wire load;
wire[2:0] outs;


initial 
begin
	
	reset=1;
	value = 3'b110;
	#100 reset =0;
	#20 load = 1;
	    right =1;
	#150 load = 0;
	#500 load = 1;
	    right = 0;
	#150 load = 0;
end

clock oc(clk);
shift_load_register register(clk,reset,inputval,load,Right,value,outs);

endmodule;