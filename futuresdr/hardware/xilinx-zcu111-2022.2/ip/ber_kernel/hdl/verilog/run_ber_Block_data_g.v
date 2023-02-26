// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_ber_Block_data_g (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        block_cfg_code_dout,
        block_cfg_code_empty_n,
        block_cfg_code_read,
        fec_type_dout,
        fec_type_empty_n,
        fec_type_read,
        block_cfg_crc_type_dout,
        block_cfg_crc_type_empty_n,
        block_cfg_crc_type_read,
        block_cfg_term_on_pass_dout,
        block_cfg_term_on_pass_empty_n,
        block_cfg_term_on_pass_read,
        block_cfg_max_iterations_dout,
        block_cfg_max_iterations_empty_n,
        block_cfg_max_iterations_read,
        fe_ctrl_V_V_TDATA,
        fe_ctrl_V_V_TVALID,
        fe_ctrl_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] block_cfg_code_dout;
input   block_cfg_code_empty_n;
output   block_cfg_code_read;
input  [31:0] fec_type_dout;
input   fec_type_empty_n;
output   fec_type_read;
input  [31:0] block_cfg_crc_type_dout;
input   block_cfg_crc_type_empty_n;
output   block_cfg_crc_type_read;
input  [31:0] block_cfg_term_on_pass_dout;
input   block_cfg_term_on_pass_empty_n;
output   block_cfg_term_on_pass_read;
input  [31:0] block_cfg_max_iterations_dout;
input   block_cfg_max_iterations_empty_n;
output   block_cfg_max_iterations_read;
output  [31:0] fe_ctrl_V_V_TDATA;
output   fe_ctrl_V_V_TVALID;
input   fe_ctrl_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg block_cfg_code_read;
reg fec_type_read;
reg block_cfg_crc_type_read;
reg block_cfg_term_on_pass_read;
reg block_cfg_max_iterations_read;
reg fe_ctrl_V_V_TVALID;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    block_cfg_code_blk_n;
reg    fec_type_blk_n;
reg    block_cfg_crc_type_blk_n;
reg    block_cfg_term_on_pass_blk_n;
reg    block_cfg_max_iterations_blk_n;
reg    fe_ctrl_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state3;
reg   [31:0] fec_type_read_reg_199;
reg    ap_block_state1;
reg   [31:0] block_cfg_crc_type_r_reg_204;
reg   [31:0] block_cfg_term_on_pa_reg_209;
wire   [12:0] tmp_fu_139_p1;
reg   [12:0] tmp_reg_214;
wire   [5:0] tmp_6_fu_143_p1;
reg   [5:0] tmp_6_reg_220;
wire   [0:0] tmp_16_i_fu_147_p2;
reg   [0:0] tmp_16_i_reg_225;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_17_i_fu_152_p2;
reg   [0:0] tmp_17_i_reg_230;
wire   [0:0] tmp_19_i_fu_157_p2;
reg   [0:0] tmp_19_i_reg_235;
reg    ap_reg_ioackin_fe_ctrl_V_V_TREADY;
reg    ap_sig_ioackin_fe_ctrl_V_V_TREADY;
wire   [13:0] tmp_18_i_fu_162_p3;
wire   [13:0] tmp_20_i_fu_168_p3;
wire   [13:0] p_Val2_1_in_i_fu_175_p3;
wire   [23:0] tmp_21_i_fu_182_p6;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_reg_ioackin_fe_ctrl_V_V_TREADY = 1'b0;
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
        end else if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_fe_ctrl_V_V_TREADY == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_fe_ctrl_V_V_TREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if ((ap_sig_ioackin_fe_ctrl_V_V_TREADY == 1'b1)) begin
                ap_reg_ioackin_fe_ctrl_V_V_TREADY <= 1'b0;
            end else if ((1'b1 == fe_ctrl_V_V_TREADY)) begin
                ap_reg_ioackin_fe_ctrl_V_V_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_crc_type_r_reg_204 <= block_cfg_crc_type_dout;
        block_cfg_term_on_pa_reg_209 <= block_cfg_term_on_pass_dout;
        fec_type_read_reg_199 <= fec_type_dout;
        tmp_6_reg_220 <= tmp_6_fu_143_p1;
        tmp_reg_214 <= tmp_fu_139_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_16_i_reg_225 <= tmp_16_i_fu_147_p2;
        tmp_17_i_reg_230 <= tmp_17_i_fu_152_p2;
        tmp_19_i_reg_235 <= tmp_19_i_fu_157_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_fe_ctrl_V_V_TREADY == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_fe_ctrl_V_V_TREADY == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_fe_ctrl_V_V_TREADY)) begin
        ap_sig_ioackin_fe_ctrl_V_V_TREADY = fe_ctrl_V_V_TREADY;
    end else begin
        ap_sig_ioackin_fe_ctrl_V_V_TREADY = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_code_blk_n = block_cfg_code_empty_n;
    end else begin
        block_cfg_code_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_code_read = 1'b1;
    end else begin
        block_cfg_code_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_crc_type_blk_n = block_cfg_crc_type_empty_n;
    end else begin
        block_cfg_crc_type_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_crc_type_read = 1'b1;
    end else begin
        block_cfg_crc_type_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_max_iterations_blk_n = block_cfg_max_iterations_empty_n;
    end else begin
        block_cfg_max_iterations_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_max_iterations_read = 1'b1;
    end else begin
        block_cfg_max_iterations_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        block_cfg_term_on_pass_blk_n = block_cfg_term_on_pass_empty_n;
    end else begin
        block_cfg_term_on_pass_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        block_cfg_term_on_pass_read = 1'b1;
    end else begin
        block_cfg_term_on_pass_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fe_ctrl_V_V_TDATA_blk_n = fe_ctrl_V_V_TREADY;
    end else begin
        fe_ctrl_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_reg_ioackin_fe_ctrl_V_V_TREADY))) begin
        fe_ctrl_V_V_TVALID = 1'b1;
    end else begin
        fe_ctrl_V_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        fec_type_blk_n = fec_type_empty_n;
    end else begin
        fec_type_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_block_state1 == 1'b0))) begin
        fec_type_read = 1'b1;
    end else begin
        fec_type_read = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if ((ap_sig_ioackin_fe_ctrl_V_V_TREADY == 1'b1)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == block_cfg_code_empty_n) | (1'b0 == fec_type_empty_n) | (1'b0 == block_cfg_crc_type_empty_n) | (1'b0 == block_cfg_term_on_pass_empty_n) | (1'b0 == block_cfg_max_iterations_empty_n));
end

assign fe_ctrl_V_V_TDATA = tmp_21_i_fu_182_p6;

assign p_Val2_1_in_i_fu_175_p3 = ((tmp_16_i_reg_225[0:0] === 1'b1) ? tmp_18_i_fu_162_p3 : tmp_20_i_fu_168_p3);

assign tmp_16_i_fu_147_p2 = ((fec_type_read_reg_199 == 32'd1) ? 1'b1 : 1'b0);

assign tmp_17_i_fu_152_p2 = ((block_cfg_crc_type_r_reg_204 != 32'd0) ? 1'b1 : 1'b0);

assign tmp_18_i_fu_162_p3 = {{tmp_17_i_reg_230}, {tmp_reg_214}};

assign tmp_19_i_fu_157_p2 = ((block_cfg_term_on_pa_reg_209 != 32'd0) ? 1'b1 : 1'b0);

assign tmp_20_i_fu_168_p3 = {{1'd0}, {tmp_reg_214}};

assign tmp_21_i_fu_182_p6 = {{{{{tmp_6_reg_220}, {1'd0}}, {tmp_19_i_reg_235}}, {2'd1}}, {p_Val2_1_in_i_fu_175_p3}};

assign tmp_6_fu_143_p1 = block_cfg_max_iterations_dout[5:0];

assign tmp_fu_139_p1 = block_cfg_code_dout[12:0];

endmodule //run_ber_Block_data_g