// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_ber_Loop_dup_enc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        block_cfg_n_dout,
        block_cfg_n_empty_n,
        block_cfg_n_read,
        enc_data_g_V_dout,
        enc_data_g_V_empty_n,
        enc_data_g_V_read,
        enc_data_i_V_din,
        enc_data_i_V_full_n,
        enc_data_i_V_write,
        block_cfg_outputs_dout,
        block_cfg_outputs_empty_n,
        block_cfg_outputs_read,
        block_cfg_n_out_din,
        block_cfg_n_out_full_n,
        block_cfg_n_out_write,
        block_cfg_outputs_out_din,
        block_cfg_outputs_out_full_n,
        block_cfg_outputs_out_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] block_cfg_n_dout;
input   block_cfg_n_empty_n;
output   block_cfg_n_read;
input  [0:0] enc_data_g_V_dout;
input   enc_data_g_V_empty_n;
output   enc_data_g_V_read;
output  [0:0] enc_data_i_V_din;
input   enc_data_i_V_full_n;
output   enc_data_i_V_write;
input  [31:0] block_cfg_outputs_dout;
input   block_cfg_outputs_empty_n;
output   block_cfg_outputs_read;
output  [31:0] block_cfg_n_out_din;
input   block_cfg_n_out_full_n;
output   block_cfg_n_out_write;
output  [31:0] block_cfg_outputs_out_din;
input   block_cfg_outputs_out_full_n;
output   block_cfg_outputs_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg block_cfg_n_read;
reg enc_data_g_V_read;
reg enc_data_i_V_write;
reg block_cfg_outputs_read;
reg block_cfg_n_out_write;
reg block_cfg_outputs_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    block_cfg_n_blk_n;
reg    enc_data_g_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    enc_data_i_V_blk_n;
reg    block_cfg_outputs_blk_n;
reg    block_cfg_n_out_blk_n;
reg    block_cfg_outputs_out_blk_n;
reg   [31:0] i1_0_i_i_reg_175;
reg   [31:0] block_cfg_n_read_reg_210;
reg    ap_block_state1;
wire   [0:0] exitcond_i_fu_194_p2;
reg    ap_block_state3;
wire   [31:0] i_fu_199_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

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
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (exitcond_i_fu_194_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & ~(exitcond_i_fu_194_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end else if ((((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (exitcond_i_fu_194_p2 == 1'd1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_i_fu_194_p2 == 1'd0))) begin
        i1_0_i_i_reg_175 <= i_fu_199_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        i1_0_i_i_reg_175 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_n_read_reg_210 <= block_cfg_n_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_n_blk_n = block_cfg_n_empty_n;
    end else begin
        block_cfg_n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_n_out_blk_n = block_cfg_n_out_full_n;
    end else begin
        block_cfg_n_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_n_out_write = 1'b1;
    end else begin
        block_cfg_n_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_n_read = 1'b1;
    end else begin
        block_cfg_n_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_outputs_blk_n = block_cfg_outputs_empty_n;
    end else begin
        block_cfg_outputs_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_outputs_out_blk_n = block_cfg_outputs_out_full_n;
    end else begin
        block_cfg_outputs_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_outputs_out_write = 1'b1;
    end else begin
        block_cfg_outputs_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_outputs_read = 1'b1;
    end else begin
        block_cfg_outputs_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        enc_data_g_V_blk_n = enc_data_g_V_empty_n;
    end else begin
        enc_data_g_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)))) begin
        enc_data_g_V_read = 1'b1;
    end else begin
        enc_data_g_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        enc_data_i_V_blk_n = enc_data_i_V_full_n;
    end else begin
        enc_data_i_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)))) begin
        enc_data_i_V_write = 1'b1;
    end else begin
        enc_data_i_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((ap_block_state1 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~(~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_i_fu_194_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_i_fu_194_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == block_cfg_n_empty_n) | (1'b0 == block_cfg_outputs_empty_n) | (1'b0 == block_cfg_n_out_full_n) | (1'b0 == block_cfg_outputs_out_full_n));
end

always @ (*) begin
    ap_block_state3 = ((1'b0 == enc_data_g_V_empty_n) | (1'b0 == enc_data_i_V_full_n));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign block_cfg_n_out_din = block_cfg_n_dout;

assign block_cfg_outputs_out_din = block_cfg_outputs_dout;

assign enc_data_i_V_din = enc_data_g_V_dout;

assign exitcond_i_fu_194_p2 = ((i1_0_i_i_reg_175 == block_cfg_n_read_reg_210) ? 1'b1 : 1'b0);

assign i_fu_199_p2 = (i1_0_i_i_reg_175 + 32'd1);

endmodule //run_ber_Loop_dup_enc