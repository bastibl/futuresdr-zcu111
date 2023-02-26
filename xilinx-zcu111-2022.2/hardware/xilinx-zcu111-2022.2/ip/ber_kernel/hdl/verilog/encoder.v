// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module encoder (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ctrl_n_dout,
        ctrl_n_empty_n,
        ctrl_n_read,
        ctrl_k_dout,
        ctrl_k_empty_n,
        ctrl_k_read,
        src_data_V_dout,
        src_data_V_empty_n,
        src_data_V_read,
        enc_data_V_din,
        enc_data_V_full_n,
        enc_data_V_write,
        ctrl_n_out_din,
        ctrl_n_out_full_n,
        ctrl_n_out_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_pp0_stage0 = 5'd2;
parameter    ap_ST_fsm_state4 = 5'd4;
parameter    ap_ST_fsm_pp1_stage0 = 5'd8;
parameter    ap_ST_fsm_state7 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] ctrl_n_dout;
input   ctrl_n_empty_n;
output   ctrl_n_read;
input  [31:0] ctrl_k_dout;
input   ctrl_k_empty_n;
output   ctrl_k_read;
input   src_data_V_dout;
input   src_data_V_empty_n;
output   src_data_V_read;
output   enc_data_V_din;
input   enc_data_V_full_n;
output   enc_data_V_write;
output  [31:0] ctrl_n_out_din;
input   ctrl_n_out_full_n;
output   ctrl_n_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ctrl_n_read;
reg ctrl_k_read;
reg src_data_V_read;
reg enc_data_V_din;
reg enc_data_V_write;
reg ctrl_n_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ctrl_n_blk_n;
reg    ctrl_k_blk_n;
reg    src_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] exitcond_i_i_reg_194;
reg    enc_data_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
reg   [0:0] tmp_i_reg_203;
reg    ctrl_n_out_blk_n;
reg   [31:0] i_i_i_reg_141;
reg   [31:0] i4_i_reg_152;
reg   [31:0] ctrl_n_read_reg_183;
reg    ap_block_state1;
reg   [31:0] ctrl_k_read_reg_188;
wire   [0:0] exitcond_i_i_fu_161_p2;
reg    ap_block_state3;
wire   [31:0] i_fu_166_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_i_fu_172_p2;
reg    ap_block_state6;
wire   [31:0] i_1_fu_177_p2;
reg    ap_enable_reg_pp1_iter0;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state7;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
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
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'd1 == exitcond_i_i_fu_161_p2))) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & ~(1'd1 == exitcond_i_i_fu_161_p2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end else if ((((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'd1 == exitcond_i_i_fu_161_p2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & (1'd0 == tmp_i_fu_172_p2))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & ~(1'd0 == tmp_i_fu_172_p2))) begin
            ap_enable_reg_pp1_iter1 <= 1'b1;
        end else if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_pp1_stage0) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & (1'd0 == tmp_i_fu_172_p2)))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i4_i_reg_152 <= ctrl_k_read_reg_188;
    end else if (((1'b1 == ap_CS_fsm_pp1_stage0) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & (1'b1 == ap_enable_reg_pp1_iter0) & (1'd1 == tmp_i_fu_172_p2))) begin
        i4_i_reg_152 <= i_1_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_i_i_fu_161_p2))) begin
        i_i_i_reg_141 <= i_fu_166_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        i_i_i_reg_141 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        ctrl_k_read_reg_188 <= ctrl_k_dout;
        ctrl_n_read_reg_183 <= ctrl_n_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)))) begin
        exitcond_i_i_reg_194 <= exitcond_i_i_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)))) begin
        tmp_i_reg_203 <= tmp_i_fu_172_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | (1'b1 == ap_CS_fsm_state7))) begin
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
    if (((1'b0 == ap_enable_reg_pp1_iter0) & (1'b0 == ap_enable_reg_pp1_iter1))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        ctrl_k_blk_n = ctrl_k_empty_n;
    end else begin
        ctrl_k_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        ctrl_k_read = 1'b1;
    end else begin
        ctrl_k_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        ctrl_n_blk_n = ctrl_n_empty_n;
    end else begin
        ctrl_n_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        ctrl_n_out_blk_n = ctrl_n_out_full_n;
    end else begin
        ctrl_n_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        ctrl_n_out_write = 1'b1;
    end else begin
        ctrl_n_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        ctrl_n_read = 1'b1;
    end else begin
        ctrl_n_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_i_reg_194 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_enable_reg_pp1_iter1) & (tmp_i_reg_203 == 1'd1)))) begin
        enc_data_V_blk_n = enc_data_V_full_n;
    end else begin
        enc_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_enable_reg_pp1_iter1) & (tmp_i_reg_203 == 1'd1) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)))) begin
        enc_data_V_din = 1'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_i_reg_194 == 1'd0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)))) begin
        enc_data_V_din = src_data_V_dout;
    end else begin
        enc_data_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_i_reg_194 == 1'd0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3))) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_enable_reg_pp1_iter1) & (tmp_i_reg_203 == 1'd1) & ~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6))))) begin
        enc_data_V_write = 1'b1;
    end else begin
        enc_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_i_reg_194 == 1'd0))) begin
        src_data_V_blk_n = src_data_V_empty_n;
    end else begin
        src_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_i_reg_194 == 1'd0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)))) begin
        src_data_V_read = 1'b1;
    end else begin
        src_data_V_read = 1'b0;
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
            if (~(~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd1 == exitcond_i_i_fu_161_p2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state3)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd1 == exitcond_i_i_fu_161_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~(~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & (1'b1 == ap_enable_reg_pp1_iter0) & (1'd0 == tmp_i_fu_172_p2))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((~((1'b1 == ap_enable_reg_pp1_iter1) & (1'b1 == ap_block_state6)) & (1'b1 == ap_enable_reg_pp1_iter0) & (1'd0 == tmp_i_fu_172_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == ctrl_n_empty_n) | (1'b0 == ctrl_k_empty_n) | (1'b0 == ctrl_n_out_full_n));
end

always @ (*) begin
    ap_block_state3 = (((exitcond_i_i_reg_194 == 1'd0) & (1'b0 == src_data_V_empty_n)) | ((exitcond_i_i_reg_194 == 1'd0) & (1'b0 == enc_data_V_full_n)));
end

always @ (*) begin
    ap_block_state6 = ((tmp_i_reg_203 == 1'd1) & (1'b0 == enc_data_V_full_n));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ctrl_n_out_din = ctrl_n_dout;

assign exitcond_i_i_fu_161_p2 = ((i_i_i_reg_141 == ctrl_k_read_reg_188) ? 1'b1 : 1'b0);

assign i_1_fu_177_p2 = (i4_i_reg_152 + 32'd1);

assign i_fu_166_p2 = (i_i_i_reg_141 + 32'd1);

assign tmp_i_fu_172_p2 = ((i4_i_reg_152 < ctrl_n_read_reg_183) ? 1'b1 : 1'b0);

endmodule //encoder
