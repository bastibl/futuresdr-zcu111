// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1.0
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="add_keep_128,hls_ip_2018_1_0,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2L-e,HLS_INPUT_CLOCK=2.500000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.357000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=626,HLS_SYN_LUT=303}" *)

module add_keep_128 (
        ap_clk,
        ap_rst_n,
        ctrl_V_V_TDATA,
        ctrl_V_V_TVALID,
        ctrl_V_V_TREADY,
        din_TDATA,
        din_TVALID,
        din_TREADY,
        din_TLAST,
        dout_TDATA,
        dout_TVALID,
        dout_TREADY,
        dout_TKEEP,
        dout_TLAST
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [15:0] ctrl_V_V_TDATA;
input   ctrl_V_V_TVALID;
output   ctrl_V_V_TREADY;
input  [127:0] din_TDATA;
input   din_TVALID;
output   din_TREADY;
input  [0:0] din_TLAST;
output  [127:0] dout_TDATA;
output   dout_TVALID;
input   dout_TREADY;
output  [15:0] dout_TKEEP;
output  [0:0] dout_TLAST;

reg    ap_rst_n_inv;
reg   [15:0] ctrl_V_V_0_data_out;
wire    ctrl_V_V_0_vld_in;
wire    ctrl_V_V_0_vld_out;
wire    ctrl_V_V_0_ack_in;
reg    ctrl_V_V_0_ack_out;
reg   [15:0] ctrl_V_V_0_payload_A;
reg   [15:0] ctrl_V_V_0_payload_B;
reg    ctrl_V_V_0_sel_rd;
reg    ctrl_V_V_0_sel_wr;
wire    ctrl_V_V_0_sel;
wire    ctrl_V_V_0_load_A;
wire    ctrl_V_V_0_load_B;
reg   [1:0] ctrl_V_V_0_state;
wire    ctrl_V_V_0_state_cmp_full;
reg   [127:0] din_V_data_V_0_data_out;
wire    din_V_data_V_0_vld_in;
wire    din_V_data_V_0_vld_out;
wire    din_V_data_V_0_ack_in;
reg    din_V_data_V_0_ack_out;
reg   [127:0] din_V_data_V_0_payload_A;
reg   [127:0] din_V_data_V_0_payload_B;
reg    din_V_data_V_0_sel_rd;
reg    din_V_data_V_0_sel_wr;
wire    din_V_data_V_0_sel;
wire    din_V_data_V_0_load_A;
wire    din_V_data_V_0_load_B;
reg   [1:0] din_V_data_V_0_state;
wire    din_V_data_V_0_state_cmp_full;
reg   [0:0] din_V_last_V_0_data_out;
wire    din_V_last_V_0_vld_in;
wire    din_V_last_V_0_vld_out;
wire    din_V_last_V_0_ack_in;
reg    din_V_last_V_0_ack_out;
reg   [0:0] din_V_last_V_0_payload_A;
reg   [0:0] din_V_last_V_0_payload_B;
reg    din_V_last_V_0_sel_rd;
reg    din_V_last_V_0_sel_wr;
wire    din_V_last_V_0_sel;
wire    din_V_last_V_0_load_A;
wire    din_V_last_V_0_load_B;
reg   [1:0] din_V_last_V_0_state;
wire    din_V_last_V_0_state_cmp_full;
reg   [127:0] dout_V_data_V_1_data_out;
reg    dout_V_data_V_1_vld_in;
wire    dout_V_data_V_1_vld_out;
wire    dout_V_data_V_1_ack_in;
wire    dout_V_data_V_1_ack_out;
reg   [127:0] dout_V_data_V_1_payload_A;
reg   [127:0] dout_V_data_V_1_payload_B;
reg    dout_V_data_V_1_sel_rd;
reg    dout_V_data_V_1_sel_wr;
wire    dout_V_data_V_1_sel;
wire    dout_V_data_V_1_load_A;
wire    dout_V_data_V_1_load_B;
reg   [1:0] dout_V_data_V_1_state;
wire    dout_V_data_V_1_state_cmp_full;
reg   [15:0] dout_V_keep_V_1_data_out;
reg    dout_V_keep_V_1_vld_in;
wire    dout_V_keep_V_1_vld_out;
wire    dout_V_keep_V_1_ack_in;
wire    dout_V_keep_V_1_ack_out;
reg   [15:0] dout_V_keep_V_1_payload_A;
reg   [15:0] dout_V_keep_V_1_payload_B;
reg    dout_V_keep_V_1_sel_rd;
reg    dout_V_keep_V_1_sel_wr;
wire    dout_V_keep_V_1_sel;
wire    dout_V_keep_V_1_load_A;
wire    dout_V_keep_V_1_load_B;
reg   [1:0] dout_V_keep_V_1_state;
wire    dout_V_keep_V_1_state_cmp_full;
reg   [0:0] dout_V_last_V_1_data_out;
reg    dout_V_last_V_1_vld_in;
wire    dout_V_last_V_1_vld_out;
wire    dout_V_last_V_1_ack_in;
wire    dout_V_last_V_1_ack_out;
reg   [0:0] dout_V_last_V_1_payload_A;
reg   [0:0] dout_V_last_V_1_payload_B;
reg    dout_V_last_V_1_sel_rd;
reg    dout_V_last_V_1_sel_wr;
wire    dout_V_last_V_1_sel;
wire    dout_V_last_V_1_load_A;
wire    dout_V_last_V_1_load_B;
reg   [1:0] dout_V_last_V_1_state;
wire    dout_V_last_V_1_state_cmp_full;
reg    ctrl_V_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
reg    din_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    dout_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [15:0] tmp_V_reg_95;
reg    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_last_V_fu_82_p1;
wire   [15:0] data_out_keep_V_fu_87_p3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
reg   [3:0] ap_NS_fsm;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ctrl_V_V_0_sel_rd = 1'b0;
#0 ctrl_V_V_0_sel_wr = 1'b0;
#0 ctrl_V_V_0_state = 2'd0;
#0 din_V_data_V_0_sel_rd = 1'b0;
#0 din_V_data_V_0_sel_wr = 1'b0;
#0 din_V_data_V_0_state = 2'd0;
#0 din_V_last_V_0_sel_rd = 1'b0;
#0 din_V_last_V_0_sel_wr = 1'b0;
#0 din_V_last_V_0_state = 2'd0;
#0 dout_V_data_V_1_sel_rd = 1'b0;
#0 dout_V_data_V_1_sel_wr = 1'b0;
#0 dout_V_data_V_1_state = 2'd0;
#0 dout_V_keep_V_1_sel_rd = 1'b0;
#0 dout_V_keep_V_1_sel_wr = 1'b0;
#0 dout_V_keep_V_1_state = 2'd0;
#0 dout_V_last_V_1_sel_rd = 1'b0;
#0 dout_V_last_V_1_sel_wr = 1'b0;
#0 dout_V_last_V_1_state = 2'd0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_last_V_fu_82_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (ctrl_V_V_0_vld_out == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (ctrl_V_V_0_vld_out == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ctrl_V_V_0_sel_rd <= 1'b0;
    end else begin
        if (((ctrl_V_V_0_ack_out == 1'b1) & (ctrl_V_V_0_vld_out == 1'b1))) begin
            ctrl_V_V_0_sel_rd <= ~ctrl_V_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ctrl_V_V_0_sel_wr <= 1'b0;
    end else begin
        if (((ctrl_V_V_0_ack_in == 1'b1) & (ctrl_V_V_0_vld_in == 1'b1))) begin
            ctrl_V_V_0_sel_wr <= ~ctrl_V_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ctrl_V_V_0_state <= 2'd0;
    end else begin
        if ((((ctrl_V_V_0_vld_in == 1'b0) & (ctrl_V_V_0_state == 2'd2)) | ((ctrl_V_V_0_vld_in == 1'b0) & (ctrl_V_V_0_state == 2'd3) & (ctrl_V_V_0_ack_out == 1'b1)))) begin
            ctrl_V_V_0_state <= 2'd2;
        end else if ((((ctrl_V_V_0_ack_out == 1'b0) & (ctrl_V_V_0_state == 2'd1)) | ((ctrl_V_V_0_ack_out == 1'b0) & (ctrl_V_V_0_state == 2'd3) & (ctrl_V_V_0_vld_in == 1'b1)))) begin
            ctrl_V_V_0_state <= 2'd1;
        end else if (((~((ctrl_V_V_0_vld_in == 1'b0) & (ctrl_V_V_0_ack_out == 1'b1)) & ~((ctrl_V_V_0_ack_out == 1'b0) & (ctrl_V_V_0_vld_in == 1'b1)) & (ctrl_V_V_0_state == 2'd3)) | ((ctrl_V_V_0_state == 2'd1) & (ctrl_V_V_0_ack_out == 1'b1)) | ((ctrl_V_V_0_state == 2'd2) & (ctrl_V_V_0_vld_in == 1'b1)))) begin
            ctrl_V_V_0_state <= 2'd3;
        end else begin
            ctrl_V_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((din_V_data_V_0_ack_out == 1'b1) & (din_V_data_V_0_vld_out == 1'b1))) begin
            din_V_data_V_0_sel_rd <= ~din_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((din_V_data_V_0_ack_in == 1'b1) & (din_V_data_V_0_vld_in == 1'b1))) begin
            din_V_data_V_0_sel_wr <= ~din_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((din_V_data_V_0_state == 2'd2) & (din_V_data_V_0_vld_in == 1'b0)) | ((din_V_data_V_0_state == 2'd3) & (din_V_data_V_0_vld_in == 1'b0) & (din_V_data_V_0_ack_out == 1'b1)))) begin
            din_V_data_V_0_state <= 2'd2;
        end else if ((((din_V_data_V_0_state == 2'd1) & (din_V_data_V_0_ack_out == 1'b0)) | ((din_V_data_V_0_state == 2'd3) & (din_V_data_V_0_ack_out == 1'b0) & (din_V_data_V_0_vld_in == 1'b1)))) begin
            din_V_data_V_0_state <= 2'd1;
        end else if (((~((din_V_data_V_0_vld_in == 1'b0) & (din_V_data_V_0_ack_out == 1'b1)) & ~((din_V_data_V_0_ack_out == 1'b0) & (din_V_data_V_0_vld_in == 1'b1)) & (din_V_data_V_0_state == 2'd3)) | ((din_V_data_V_0_state == 2'd1) & (din_V_data_V_0_ack_out == 1'b1)) | ((din_V_data_V_0_state == 2'd2) & (din_V_data_V_0_vld_in == 1'b1)))) begin
            din_V_data_V_0_state <= 2'd3;
        end else begin
            din_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((din_V_last_V_0_ack_out == 1'b1) & (din_V_last_V_0_vld_out == 1'b1))) begin
            din_V_last_V_0_sel_rd <= ~din_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((din_V_last_V_0_ack_in == 1'b1) & (din_V_last_V_0_vld_in == 1'b1))) begin
            din_V_last_V_0_sel_wr <= ~din_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((din_V_last_V_0_state == 2'd2) & (din_V_last_V_0_vld_in == 1'b0)) | ((din_V_last_V_0_state == 2'd3) & (din_V_last_V_0_vld_in == 1'b0) & (din_V_last_V_0_ack_out == 1'b1)))) begin
            din_V_last_V_0_state <= 2'd2;
        end else if ((((din_V_last_V_0_state == 2'd1) & (din_V_last_V_0_ack_out == 1'b0)) | ((din_V_last_V_0_state == 2'd3) & (din_V_last_V_0_ack_out == 1'b0) & (din_V_last_V_0_vld_in == 1'b1)))) begin
            din_V_last_V_0_state <= 2'd1;
        end else if (((~((din_V_last_V_0_vld_in == 1'b0) & (din_V_last_V_0_ack_out == 1'b1)) & ~((din_V_last_V_0_ack_out == 1'b0) & (din_V_last_V_0_vld_in == 1'b1)) & (din_V_last_V_0_state == 2'd3)) | ((din_V_last_V_0_state == 2'd1) & (din_V_last_V_0_ack_out == 1'b1)) | ((din_V_last_V_0_state == 2'd2) & (din_V_last_V_0_vld_in == 1'b1)))) begin
            din_V_last_V_0_state <= 2'd3;
        end else begin
            din_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_V_data_V_1_ack_out == 1'b1) & (dout_V_data_V_1_vld_out == 1'b1))) begin
            dout_V_data_V_1_sel_rd <= ~dout_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dout_V_data_V_1_ack_in == 1'b1) & (dout_V_data_V_1_vld_in == 1'b1))) begin
            dout_V_data_V_1_sel_wr <= ~dout_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((dout_V_data_V_1_state == 2'd2) & (dout_V_data_V_1_vld_in == 1'b0)) | ((dout_V_data_V_1_state == 2'd3) & (dout_V_data_V_1_vld_in == 1'b0) & (dout_V_data_V_1_ack_out == 1'b1)))) begin
            dout_V_data_V_1_state <= 2'd2;
        end else if ((((dout_V_data_V_1_state == 2'd1) & (dout_V_data_V_1_ack_out == 1'b0)) | ((dout_V_data_V_1_state == 2'd3) & (dout_V_data_V_1_ack_out == 1'b0) & (dout_V_data_V_1_vld_in == 1'b1)))) begin
            dout_V_data_V_1_state <= 2'd1;
        end else if (((~((dout_V_data_V_1_vld_in == 1'b0) & (dout_V_data_V_1_ack_out == 1'b1)) & ~((dout_V_data_V_1_ack_out == 1'b0) & (dout_V_data_V_1_vld_in == 1'b1)) & (dout_V_data_V_1_state == 2'd3)) | ((dout_V_data_V_1_state == 2'd1) & (dout_V_data_V_1_ack_out == 1'b1)) | ((dout_V_data_V_1_state == 2'd2) & (dout_V_data_V_1_vld_in == 1'b1)))) begin
            dout_V_data_V_1_state <= 2'd3;
        end else begin
            dout_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_V_keep_V_1_ack_out == 1'b1) & (dout_V_keep_V_1_vld_out == 1'b1))) begin
            dout_V_keep_V_1_sel_rd <= ~dout_V_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_keep_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dout_V_keep_V_1_ack_in == 1'b1) & (dout_V_keep_V_1_vld_in == 1'b1))) begin
            dout_V_keep_V_1_sel_wr <= ~dout_V_keep_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_keep_V_1_state <= 2'd0;
    end else begin
        if ((((dout_V_keep_V_1_state == 2'd2) & (dout_V_keep_V_1_vld_in == 1'b0)) | ((dout_V_keep_V_1_state == 2'd3) & (dout_V_keep_V_1_vld_in == 1'b0) & (dout_V_keep_V_1_ack_out == 1'b1)))) begin
            dout_V_keep_V_1_state <= 2'd2;
        end else if ((((dout_V_keep_V_1_state == 2'd1) & (dout_V_keep_V_1_ack_out == 1'b0)) | ((dout_V_keep_V_1_state == 2'd3) & (dout_V_keep_V_1_ack_out == 1'b0) & (dout_V_keep_V_1_vld_in == 1'b1)))) begin
            dout_V_keep_V_1_state <= 2'd1;
        end else if (((~((dout_V_keep_V_1_vld_in == 1'b0) & (dout_V_keep_V_1_ack_out == 1'b1)) & ~((dout_V_keep_V_1_ack_out == 1'b0) & (dout_V_keep_V_1_vld_in == 1'b1)) & (dout_V_keep_V_1_state == 2'd3)) | ((dout_V_keep_V_1_state == 2'd1) & (dout_V_keep_V_1_ack_out == 1'b1)) | ((dout_V_keep_V_1_state == 2'd2) & (dout_V_keep_V_1_vld_in == 1'b1)))) begin
            dout_V_keep_V_1_state <= 2'd3;
        end else begin
            dout_V_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_V_last_V_1_ack_out == 1'b1) & (dout_V_last_V_1_vld_out == 1'b1))) begin
            dout_V_last_V_1_sel_rd <= ~dout_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dout_V_last_V_1_ack_in == 1'b1) & (dout_V_last_V_1_vld_in == 1'b1))) begin
            dout_V_last_V_1_sel_wr <= ~dout_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((dout_V_last_V_1_state == 2'd2) & (dout_V_last_V_1_vld_in == 1'b0)) | ((dout_V_last_V_1_state == 2'd3) & (dout_V_last_V_1_vld_in == 1'b0) & (dout_V_last_V_1_ack_out == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd2;
        end else if ((((dout_V_last_V_1_state == 2'd1) & (dout_V_last_V_1_ack_out == 1'b0)) | ((dout_V_last_V_1_state == 2'd3) & (dout_V_last_V_1_ack_out == 1'b0) & (dout_V_last_V_1_vld_in == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd1;
        end else if (((~((dout_V_last_V_1_vld_in == 1'b0) & (dout_V_last_V_1_ack_out == 1'b1)) & ~((dout_V_last_V_1_ack_out == 1'b0) & (dout_V_last_V_1_vld_in == 1'b1)) & (dout_V_last_V_1_state == 2'd3)) | ((dout_V_last_V_1_state == 2'd1) & (dout_V_last_V_1_ack_out == 1'b1)) | ((dout_V_last_V_1_state == 2'd2) & (dout_V_last_V_1_vld_in == 1'b1)))) begin
            dout_V_last_V_1_state <= 2'd3;
        end else begin
            dout_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ctrl_V_V_0_load_A == 1'b1)) begin
        ctrl_V_V_0_payload_A <= ctrl_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((ctrl_V_V_0_load_B == 1'b1)) begin
        ctrl_V_V_0_payload_B <= ctrl_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_data_V_0_load_A == 1'b1)) begin
        din_V_data_V_0_payload_A <= din_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_data_V_0_load_B == 1'b1)) begin
        din_V_data_V_0_payload_B <= din_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_last_V_0_load_A == 1'b1)) begin
        din_V_last_V_0_payload_A <= din_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_last_V_0_load_B == 1'b1)) begin
        din_V_last_V_0_payload_B <= din_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_data_V_1_load_A == 1'b1)) begin
        dout_V_data_V_1_payload_A <= din_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_data_V_1_load_B == 1'b1)) begin
        dout_V_data_V_1_payload_B <= din_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_keep_V_1_load_A == 1'b1)) begin
        dout_V_keep_V_1_payload_A <= data_out_keep_V_fu_87_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_keep_V_1_load_B == 1'b1)) begin
        dout_V_keep_V_1_payload_B <= data_out_keep_V_fu_87_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_last_V_1_load_A == 1'b1)) begin
        dout_V_last_V_1_payload_A <= din_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((dout_V_last_V_1_load_B == 1'b1)) begin
        dout_V_last_V_1_payload_B <= din_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (ctrl_V_V_0_vld_out == 1'b1))) begin
        tmp_V_reg_95 <= ctrl_V_V_0_data_out;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (ctrl_V_V_0_vld_out == 1'b1))) begin
        ctrl_V_V_0_ack_out = 1'b1;
    end else begin
        ctrl_V_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((ctrl_V_V_0_sel == 1'b1)) begin
        ctrl_V_V_0_data_out = ctrl_V_V_0_payload_B;
    end else begin
        ctrl_V_V_0_data_out = ctrl_V_V_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ctrl_V_V_TDATA_blk_n = ctrl_V_V_0_state[1'd0];
    end else begin
        ctrl_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        din_TDATA_blk_n = din_V_data_V_0_state[1'd0];
    end else begin
        din_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        din_V_data_V_0_ack_out = 1'b1;
    end else begin
        din_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((din_V_data_V_0_sel == 1'b1)) begin
        din_V_data_V_0_data_out = din_V_data_V_0_payload_B;
    end else begin
        din_V_data_V_0_data_out = din_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        din_V_last_V_0_ack_out = 1'b1;
    end else begin
        din_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((din_V_last_V_0_sel == 1'b1)) begin
        din_V_last_V_0_data_out = din_V_last_V_0_payload_B;
    end else begin
        din_V_last_V_0_data_out = din_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dout_TDATA_blk_n = dout_V_data_V_1_state[1'd1];
    end else begin
        dout_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((dout_V_data_V_1_sel == 1'b1)) begin
        dout_V_data_V_1_data_out = dout_V_data_V_1_payload_B;
    end else begin
        dout_V_data_V_1_data_out = dout_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_data_V_1_vld_in = 1'b1;
    end else begin
        dout_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((dout_V_keep_V_1_sel == 1'b1)) begin
        dout_V_keep_V_1_data_out = dout_V_keep_V_1_payload_B;
    end else begin
        dout_V_keep_V_1_data_out = dout_V_keep_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_keep_V_1_vld_in = 1'b1;
    end else begin
        dout_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((dout_V_last_V_1_sel == 1'b1)) begin
        dout_V_last_V_1_data_out = dout_V_last_V_1_payload_B;
    end else begin
        dout_V_last_V_1_data_out = dout_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dout_V_last_V_1_vld_in = 1'b1;
    end else begin
        dout_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (ctrl_V_V_0_vld_out == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_keep_V_1_ack_in == 1'b0) | (dout_V_data_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((din_V_data_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((dout_V_data_V_1_ack_in == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((din_V_data_V_0_vld_out == 1'b0) | (dout_V_data_V_1_ack_in == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((dout_V_data_V_1_ack_in == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((din_V_data_V_0_vld_out == 1'b0) | (dout_V_data_V_1_ack_in == 1'b0))));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter0 = (din_V_data_V_0_vld_out == 1'b0);
end

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((dout_V_last_V_1_ack_in == 1'b0) | (dout_V_keep_V_1_ack_in == 1'b0) | (dout_V_data_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ctrl_V_V_0_ack_in = ctrl_V_V_0_state[1'd1];

assign ctrl_V_V_0_load_A = (~ctrl_V_V_0_sel_wr & ctrl_V_V_0_state_cmp_full);

assign ctrl_V_V_0_load_B = (ctrl_V_V_0_state_cmp_full & ctrl_V_V_0_sel_wr);

assign ctrl_V_V_0_sel = ctrl_V_V_0_sel_rd;

assign ctrl_V_V_0_state_cmp_full = ((ctrl_V_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign ctrl_V_V_0_vld_in = ctrl_V_V_TVALID;

assign ctrl_V_V_0_vld_out = ctrl_V_V_0_state[1'd0];

assign ctrl_V_V_TREADY = ctrl_V_V_0_state[1'd1];

assign data_out_keep_V_fu_87_p3 = ((din_V_last_V_0_data_out[0:0] === 1'b1) ? tmp_V_reg_95 : 16'd65535);

assign din_TREADY = din_V_last_V_0_state[1'd1];

assign din_V_data_V_0_ack_in = din_V_data_V_0_state[1'd1];

assign din_V_data_V_0_load_A = (~din_V_data_V_0_sel_wr & din_V_data_V_0_state_cmp_full);

assign din_V_data_V_0_load_B = (din_V_data_V_0_state_cmp_full & din_V_data_V_0_sel_wr);

assign din_V_data_V_0_sel = din_V_data_V_0_sel_rd;

assign din_V_data_V_0_state_cmp_full = ((din_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign din_V_data_V_0_vld_in = din_TVALID;

assign din_V_data_V_0_vld_out = din_V_data_V_0_state[1'd0];

assign din_V_last_V_0_ack_in = din_V_last_V_0_state[1'd1];

assign din_V_last_V_0_load_A = (~din_V_last_V_0_sel_wr & din_V_last_V_0_state_cmp_full);

assign din_V_last_V_0_load_B = (din_V_last_V_0_state_cmp_full & din_V_last_V_0_sel_wr);

assign din_V_last_V_0_sel = din_V_last_V_0_sel_rd;

assign din_V_last_V_0_state_cmp_full = ((din_V_last_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign din_V_last_V_0_vld_in = din_TVALID;

assign din_V_last_V_0_vld_out = din_V_last_V_0_state[1'd0];

assign dout_TDATA = dout_V_data_V_1_data_out;

assign dout_TKEEP = dout_V_keep_V_1_data_out;

assign dout_TLAST = dout_V_last_V_1_data_out;

assign dout_TVALID = dout_V_last_V_1_state[1'd0];

assign dout_V_data_V_1_ack_in = dout_V_data_V_1_state[1'd1];

assign dout_V_data_V_1_ack_out = dout_TREADY;

assign dout_V_data_V_1_load_A = (~dout_V_data_V_1_sel_wr & dout_V_data_V_1_state_cmp_full);

assign dout_V_data_V_1_load_B = (dout_V_data_V_1_state_cmp_full & dout_V_data_V_1_sel_wr);

assign dout_V_data_V_1_sel = dout_V_data_V_1_sel_rd;

assign dout_V_data_V_1_state_cmp_full = ((dout_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dout_V_data_V_1_vld_out = dout_V_data_V_1_state[1'd0];

assign dout_V_keep_V_1_ack_in = dout_V_keep_V_1_state[1'd1];

assign dout_V_keep_V_1_ack_out = dout_TREADY;

assign dout_V_keep_V_1_load_A = (~dout_V_keep_V_1_sel_wr & dout_V_keep_V_1_state_cmp_full);

assign dout_V_keep_V_1_load_B = (dout_V_keep_V_1_state_cmp_full & dout_V_keep_V_1_sel_wr);

assign dout_V_keep_V_1_sel = dout_V_keep_V_1_sel_rd;

assign dout_V_keep_V_1_state_cmp_full = ((dout_V_keep_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dout_V_keep_V_1_vld_out = dout_V_keep_V_1_state[1'd0];

assign dout_V_last_V_1_ack_in = dout_V_last_V_1_state[1'd1];

assign dout_V_last_V_1_ack_out = dout_TREADY;

assign dout_V_last_V_1_load_A = (~dout_V_last_V_1_sel_wr & dout_V_last_V_1_state_cmp_full);

assign dout_V_last_V_1_load_B = (dout_V_last_V_1_state_cmp_full & dout_V_last_V_1_sel_wr);

assign dout_V_last_V_1_sel = dout_V_last_V_1_sel_rd;

assign dout_V_last_V_1_state_cmp_full = ((dout_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dout_V_last_V_1_vld_out = dout_V_last_V_1_state[1'd0];

assign tmp_last_V_fu_82_p1 = din_V_last_V_0_data_out;

endmodule //add_keep_128
