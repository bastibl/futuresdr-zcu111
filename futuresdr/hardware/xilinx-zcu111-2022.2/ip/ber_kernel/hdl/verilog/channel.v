// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module channel (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_ready,
        ap_done,
        ap_continue,
        ap_idle,
        start_out,
        start_write,
        block_cfg_skip_channel_dout,
        block_cfg_skip_channel_empty_n,
        block_cfg_skip_channel_read,
        block_cfg_snr_V_dout,
        block_cfg_snr_V_empty_n,
        block_cfg_snr_V_read,
        mod_data_V_M_real_V_dout,
        mod_data_V_M_real_V_empty_n,
        mod_data_V_M_real_V_read,
        mod_data_V_M_imag_V_dout,
        mod_data_V_M_imag_V_empty_n,
        mod_data_V_M_imag_V_read,
        mod_data_last_V_dout,
        mod_data_last_V_empty_n,
        mod_data_last_V_read,
        chan_data_V_M_real_s_din,
        chan_data_V_M_real_s_full_n,
        chan_data_V_M_real_s_write,
        chan_data_V_M_imag_s_din,
        chan_data_V_M_imag_s_full_n,
        chan_data_V_M_imag_s_write,
        chan_data_last_V_din,
        chan_data_last_V_full_n,
        chan_data_last_V_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_pp0_stage0 = 5'd4;
parameter    ap_ST_fsm_state5 = 5'd8;
parameter    ap_ST_fsm_state6 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_ready;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   start_out;
output   start_write;
input  [31:0] block_cfg_skip_channel_dout;
input   block_cfg_skip_channel_empty_n;
output   block_cfg_skip_channel_read;
input  [16:0] block_cfg_snr_V_dout;
input   block_cfg_snr_V_empty_n;
output   block_cfg_snr_V_read;
input  [15:0] mod_data_V_M_real_V_dout;
input   mod_data_V_M_real_V_empty_n;
output   mod_data_V_M_real_V_read;
input  [15:0] mod_data_V_M_imag_V_dout;
input   mod_data_V_M_imag_V_empty_n;
output   mod_data_V_M_imag_V_read;
input   mod_data_last_V_dout;
input   mod_data_last_V_empty_n;
output   mod_data_last_V_read;
output  [18:0] chan_data_V_M_real_s_din;
input   chan_data_V_M_real_s_full_n;
output   chan_data_V_M_real_s_write;
output  [18:0] chan_data_V_M_imag_s_din;
input   chan_data_V_M_imag_s_full_n;
output   chan_data_V_M_imag_s_write;
output   chan_data_last_V_din;
input   chan_data_last_V_full_n;
output   chan_data_last_V_write;

reg ap_done;
reg ap_idle;
reg block_cfg_skip_channel_read;
reg block_cfg_snr_V_read;
reg mod_data_V_M_real_V_read;
reg mod_data_V_M_imag_V_read;
reg mod_data_last_V_read;
reg[18:0] chan_data_V_M_real_s_din;
reg chan_data_V_M_real_s_write;
reg[18:0] chan_data_V_M_imag_s_din;
reg chan_data_V_M_imag_s_write;
reg chan_data_last_V_din;
reg chan_data_last_V_write;

reg    real_start;
reg    real_start_status_reg;
reg    internal_ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    start_once_reg;
reg    start_control_reg;
reg    block_cfg_skip_channel_blk_n;
reg    block_cfg_snr_V_blk_n;
reg    mod_data_V_M_real_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    mod_data_V_M_imag_V_blk_n;
reg    mod_data_last_V_blk_n;
reg    chan_data_V_M_real_s_blk_n;
reg    chan_data_V_M_imag_s_blk_n;
reg    chan_data_last_V_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] tmp_33_reg_291;
reg   [16:0] block_cfg_snr_V_read_reg_277;
reg    ap_block_state1;
wire   [7:0] tmp_fu_250_p1;
reg   [7:0] tmp_reg_282;
wire   [0:0] tmp_i_i_fu_254_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_33_read_fu_202_p2;
wire    mod_data_V_M_real_V0_status;
wire    chan_data_V_M_real_s1_status;
reg    ap_block_state3;
reg    ap_block_state4;
wire    grp_channel_1_fu_217_ap_start;
wire    grp_channel_1_fu_217_ap_done;
wire    grp_channel_1_fu_217_ap_idle;
wire    grp_channel_1_fu_217_ap_ready;
wire    grp_channel_1_fu_217_src_data_V_M_real_V_read;
wire    grp_channel_1_fu_217_src_data_V_M_imag_V_read;
wire    grp_channel_1_fu_217_src_data_last_V_read;
wire   [18:0] grp_channel_1_fu_217_err_data_V_M_real_V_din;
wire    grp_channel_1_fu_217_err_data_V_M_real_V_write;
wire   [18:0] grp_channel_1_fu_217_err_data_V_M_imag_V_din;
wire    grp_channel_1_fu_217_err_data_V_M_imag_V_write;
wire    grp_channel_1_fu_217_err_data_last_V_din;
wire    grp_channel_1_fu_217_err_data_last_V_write;
reg    ap_reg_grp_channel_1_fu_217_ap_start;
wire    ap_CS_fsm_state6;
reg    mod_data_V_M_real_V0_update;
reg    chan_data_V_M_real_s1_update;
wire  signed [18:0] tmp_M_real_V_fu_267_p1;
wire  signed [18:0] tmp_M_imag_V_fu_272_p1;
wire    ap_CS_fsm_state5;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 real_start_status_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 start_once_reg = 1'b0;
#0 start_control_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_reg_grp_channel_1_fu_217_ap_start = 1'b0;
end

channel_1 grp_channel_1_fu_217(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_channel_1_fu_217_ap_start),
    .ap_done(grp_channel_1_fu_217_ap_done),
    .ap_idle(grp_channel_1_fu_217_ap_idle),
    .ap_ready(grp_channel_1_fu_217_ap_ready),
    .snr_V(block_cfg_snr_V_read_reg_277),
    .src_data_V_M_real_V_dout(mod_data_V_M_real_V_dout),
    .src_data_V_M_real_V_empty_n(mod_data_V_M_real_V_empty_n),
    .src_data_V_M_real_V_read(grp_channel_1_fu_217_src_data_V_M_real_V_read),
    .src_data_V_M_imag_V_dout(mod_data_V_M_imag_V_dout),
    .src_data_V_M_imag_V_empty_n(mod_data_V_M_imag_V_empty_n),
    .src_data_V_M_imag_V_read(grp_channel_1_fu_217_src_data_V_M_imag_V_read),
    .src_data_last_V_dout(mod_data_last_V_dout),
    .src_data_last_V_empty_n(mod_data_last_V_empty_n),
    .src_data_last_V_read(grp_channel_1_fu_217_src_data_last_V_read),
    .err_data_V_M_real_V_din(grp_channel_1_fu_217_err_data_V_M_real_V_din),
    .err_data_V_M_real_V_full_n(chan_data_V_M_real_s_full_n),
    .err_data_V_M_real_V_write(grp_channel_1_fu_217_err_data_V_M_real_V_write),
    .err_data_V_M_imag_V_din(grp_channel_1_fu_217_err_data_V_M_imag_V_din),
    .err_data_V_M_imag_V_full_n(chan_data_V_M_imag_s_full_n),
    .err_data_V_M_imag_V_write(grp_channel_1_fu_217_err_data_V_M_imag_V_write),
    .err_data_last_V_din(grp_channel_1_fu_217_err_data_last_V_din),
    .err_data_last_V_full_n(chan_data_last_V_full_n),
    .err_data_last_V_write(grp_channel_1_fu_217_err_data_last_V_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))) & (1'd1 == tmp_33_read_fu_202_p2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == tmp_i_i_fu_254_p2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == tmp_i_i_fu_254_p2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_channel_1_fu_217_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_i_i_fu_254_p2))) begin
            ap_reg_grp_channel_1_fu_217_ap_start <= 1'b1;
        end else if ((1'b1 == grp_channel_1_fu_217_ap_ready)) begin
            ap_reg_grp_channel_1_fu_217_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        real_start_status_reg <= 1'b0;
    end else begin
        if ((start_full_n == 1'b1)) begin
            real_start_status_reg <= 1'b0;
        end else if (((1'b0 == start_full_n) & (1'b1 == internal_ap_ready))) begin
            real_start_status_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_control_reg <= 1'b0;
    end else begin
        if (((1'b1 == real_start) & ((1'b1 == internal_ap_ready) | (1'b0 == start_once_reg)))) begin
            start_control_reg <= 1'b1;
        end else if (((1'b1 == start_control_reg) & (1'b1 == start_full_n))) begin
            start_control_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if ((1'b1 == real_start)) begin
            start_once_reg <= 1'b1;
        end else if ((1'b0 == ap_start)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_snr_V_read_reg_277 <= block_cfg_snr_V_dout;
        tmp_reg_282 <= tmp_fu_250_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        tmp_33_reg_291 <= mod_data_last_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == real_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_skip_channel_blk_n = block_cfg_skip_channel_empty_n;
    end else begin
        block_cfg_skip_channel_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_skip_channel_read = 1'b1;
    end else begin
        block_cfg_skip_channel_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_snr_V_blk_n = block_cfg_snr_V_empty_n;
    end else begin
        block_cfg_snr_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_snr_V_read = 1'b1;
    end else begin
        block_cfg_snr_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        chan_data_V_M_imag_s_blk_n = chan_data_V_M_imag_s_full_n;
    end else begin
        chan_data_V_M_imag_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        chan_data_V_M_imag_s_din = tmp_M_imag_V_fu_272_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_V_M_imag_s_din = grp_channel_1_fu_217_err_data_V_M_imag_V_din;
    end else begin
        chan_data_V_M_imag_s_din = grp_channel_1_fu_217_err_data_V_M_imag_V_din;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_V_M_imag_s_write = grp_channel_1_fu_217_err_data_V_M_imag_V_write;
    end else begin
        chan_data_V_M_imag_s_write = chan_data_V_M_real_s1_update;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        chan_data_V_M_real_s1_update = 1'b1;
    end else begin
        chan_data_V_M_real_s1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        chan_data_V_M_real_s_blk_n = chan_data_V_M_real_s_full_n;
    end else begin
        chan_data_V_M_real_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        chan_data_V_M_real_s_din = tmp_M_real_V_fu_267_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_V_M_real_s_din = grp_channel_1_fu_217_err_data_V_M_real_V_din;
    end else begin
        chan_data_V_M_real_s_din = grp_channel_1_fu_217_err_data_V_M_real_V_din;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_V_M_real_s_write = grp_channel_1_fu_217_err_data_V_M_real_V_write;
    end else begin
        chan_data_V_M_real_s_write = chan_data_V_M_real_s1_update;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd0)))) begin
        chan_data_last_V_blk_n = chan_data_last_V_full_n;
    end else begin
        chan_data_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd1) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        chan_data_last_V_din = 1'd1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        chan_data_last_V_din = 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_last_V_din = grp_channel_1_fu_217_err_data_last_V_din;
    end else begin
        chan_data_last_V_din = grp_channel_1_fu_217_err_data_last_V_din;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4)))) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (tmp_33_reg_291 == 1'd1) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4)))))) begin
        chan_data_last_V_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        chan_data_last_V_write = grp_channel_1_fu_217_err_data_last_V_write;
    end else begin
        chan_data_last_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        mod_data_V_M_imag_V_blk_n = mod_data_V_M_imag_V_empty_n;
    end else begin
        mod_data_V_M_imag_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mod_data_V_M_imag_V_read = grp_channel_1_fu_217_src_data_V_M_imag_V_read;
    end else begin
        mod_data_V_M_imag_V_read = mod_data_V_M_real_V0_update;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        mod_data_V_M_real_V0_update = 1'b1;
    end else begin
        mod_data_V_M_real_V0_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        mod_data_V_M_real_V_blk_n = mod_data_V_M_real_V_empty_n;
    end else begin
        mod_data_V_M_real_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mod_data_V_M_real_V_read = grp_channel_1_fu_217_src_data_V_M_real_V_read;
    end else begin
        mod_data_V_M_real_V_read = mod_data_V_M_real_V0_update;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        mod_data_last_V_blk_n = mod_data_last_V_empty_n;
    end else begin
        mod_data_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))))) begin
        mod_data_last_V_read = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        mod_data_last_V_read = grp_channel_1_fu_217_src_data_last_V_read;
    end else begin
        mod_data_last_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == real_start_status_reg)) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((ap_block_state1 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((1'd0 == tmp_i_i_fu_254_p2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~(((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_block_state3)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state4))) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        ap_ST_fsm_state6 : begin
            if ((grp_channel_1_fu_217_ap_done == 1'b1)) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == block_cfg_skip_channel_empty_n) | (1'b0 == block_cfg_snr_V_empty_n));
end

always @ (*) begin
    ap_block_state3 = ((1'b0 == mod_data_V_M_real_V0_status) | (1'b0 == chan_data_V_M_real_s1_status) | (1'b0 == mod_data_last_V_empty_n));
end

always @ (*) begin
    ap_block_state4 = (((tmp_33_reg_291 == 1'd0) & (1'b0 == chan_data_last_V_full_n)) | ((tmp_33_reg_291 == 1'd1) & (1'b0 == chan_data_last_V_full_n)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign chan_data_V_M_real_s1_status = (chan_data_V_M_real_s_full_n & chan_data_V_M_imag_s_full_n);

assign grp_channel_1_fu_217_ap_start = ap_reg_grp_channel_1_fu_217_ap_start;

assign mod_data_V_M_real_V0_status = (mod_data_V_M_real_V_empty_n & mod_data_V_M_imag_V_empty_n);

assign start_out = real_start;

assign start_write = (ap_start & start_control_reg);

assign tmp_33_read_fu_202_p2 = mod_data_last_V_dout;

assign tmp_M_imag_V_fu_272_p1 = $signed(mod_data_V_M_imag_V_dout);

assign tmp_M_real_V_fu_267_p1 = $signed(mod_data_V_M_real_V_dout);

assign tmp_fu_250_p1 = block_cfg_skip_channel_dout[7:0];

assign tmp_i_i_fu_254_p2 = ((tmp_reg_282 == 8'd0) ? 1'b1 : 1'b0);

endmodule //channel
