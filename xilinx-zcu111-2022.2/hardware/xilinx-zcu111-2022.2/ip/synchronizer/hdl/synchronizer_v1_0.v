
`timescale 1 ns / 1 ps

	module synchronizer_v1_0 #
	(

		parameter integer DATA_WIDTH	= 32
	)
	(

		input wire  clk,
		input wire  [DATA_WIDTH-1 : 0] data_in,
		output wire [DATA_WIDTH-1 : 0] data_out

	);

	(* ASYNC_REG = "TRUE" *) reg [DATA_WIDTH-1 : 0] reg1;
	(* ASYNC_REG = "TRUE" *) reg [DATA_WIDTH-1 : 0] reg2;

	always @(posedge clk) begin
	   reg1 <= data_in;
	   reg2 <= reg1;
	end
	
	assign data_out = reg1;

	endmodule
