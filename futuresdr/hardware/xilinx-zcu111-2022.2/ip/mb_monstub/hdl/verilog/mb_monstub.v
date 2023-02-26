// $Id: mb_monstub.v,v 1.2 2007/08/08 17:44:53 jues Exp $

module mb_monstub (
	input Clk,
	input Rst,

	input [0:31] trace_instruction,
	input	trace_valid_instr,
	input [0:31] trace_pc,
	input	trace_reg_write,
	input [0:4] trace_reg_addr,
	input [0:14] trace_msr_reg,
	input [0:7] trace_pid_reg,
	input [0:31] trace_new_reg_value,
	input	trace_exception_taken,
	input [0:4] trace_exception_kind,
	input	trace_jump_taken,
	input	trace_delay_slot,
	input [0:31] trace_data_address,
	input	trace_data_access,
	input	trace_data_read,
	input	trace_data_write,
	input [0:31] trace_data_write_value,
	input [0:3] trace_data_byte_enable,
	input	trace_dcache_req,
	input	trace_dcache_hit,
	input	trace_icache_req,
	input	trace_icache_hit,
	input	trace_of_piperun,
	input	trace_ex_piperun,
	input	trace_mem_piperun,

	output [127:0] debug_out_127_0,
	output [15:0] debug_out_ext_15_0,
	input [31:0] mux_ctl
);

reg	Rst_ff;
reg [31:0] mux_ctl_ff;
reg [143:0] mb_dbg_ff;

wire [31:0] mb_ctl = { trace_jump_taken, trace_delay_slot,		//31:30
		trace_reg_write, trace_reg_addr[0:4],			//29:24
	trace_data_access, trace_data_read, trace_data_write,		//23:21
		trace_exception_kind[0],				//20
	trace_exception_kind[1:4],					//19:16
	trace_dcache_req, trace_dcache_hit,
		trace_icache_req, trace_icache_hit,			//15:12
	trace_exception_taken, trace_ex_piperun, trace_mem_piperun,
		trace_valid_instr,					//11:8
	trace_pid_reg[0:7]						//7:0
};

wire [0:31] trace_reg_and_instr = { trace_instruction[0:15],
						trace_new_reg_value[0:15] };

wire [0:31] extra_info =
	((mux_ctl_ff[7:6] == 2'b00) ? trace_data_address[0:31] : 32'h0) |
	((mux_ctl_ff[7:6] == 2'b01) ? trace_data_write_value[0:31] : 32'h0) |
	((mux_ctl_ff[7:6] == 2'b10) ? trace_instruction[0:31] : 32'h0) |
	((mux_ctl_ff[7:6] == 2'b11) ? trace_reg_and_instr[0:31] : 32'h0);

wire [143:0] mb_dbg = {
	trace_of_piperun, trace_msr_reg[0:14],
	trace_new_reg_value[0:31],
	trace_pc[0:31],
	extra_info[0:31],
	mb_ctl[31:0]
};


wire	rst_l = ~Rst_ff;

always @(posedge Clk) begin
	Rst_ff <= Rst;
	mb_dbg_ff[143:0] <= mb_dbg[143:0];
	mux_ctl_ff[31:0] <= mux_ctl[31:0];
end

assign debug_out_127_0[127:0] = mb_dbg_ff[127:0];
assign debug_out_ext_15_0[15:0] = mb_dbg_ff[143:128];

endmodule

