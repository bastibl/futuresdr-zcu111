// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1.0
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="monitor,hls_ip_2018_1_0,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2L-e,HLS_INPUT_CLOCK=2.500000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.672000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=352,HLS_SYN_LUT=510}" *)

module monitor (
        ap_clk,
        ap_rst_n,
        rtc_V,
        tvalid_V,
        tready_V,
        tlast_V,
        s_axi_CNTRL_AWVALID,
        s_axi_CNTRL_AWREADY,
        s_axi_CNTRL_AWADDR,
        s_axi_CNTRL_WVALID,
        s_axi_CNTRL_WREADY,
        s_axi_CNTRL_WDATA,
        s_axi_CNTRL_WSTRB,
        s_axi_CNTRL_ARVALID,
        s_axi_CNTRL_ARREADY,
        s_axi_CNTRL_ARADDR,
        s_axi_CNTRL_RVALID,
        s_axi_CNTRL_RREADY,
        s_axi_CNTRL_RDATA,
        s_axi_CNTRL_RRESP,
        s_axi_CNTRL_BVALID,
        s_axi_CNTRL_BREADY,
        s_axi_CNTRL_BRESP,
        interrupt,
        cntrl_aclk,
        ap_rst_n_cntrl_aclk
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
parameter    C_S_AXI_CNTRL_DATA_WIDTH = 32;
parameter    C_S_AXI_CNTRL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CNTRL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [31:0] rtc_V;
input  [0:0] tvalid_V;
input  [0:0] tready_V;
input  [0:0] tlast_V;
input   s_axi_CNTRL_AWVALID;
output   s_axi_CNTRL_AWREADY;
input  [C_S_AXI_CNTRL_ADDR_WIDTH - 1:0] s_axi_CNTRL_AWADDR;
input   s_axi_CNTRL_WVALID;
output   s_axi_CNTRL_WREADY;
input  [C_S_AXI_CNTRL_DATA_WIDTH - 1:0] s_axi_CNTRL_WDATA;
input  [C_S_AXI_CNTRL_WSTRB_WIDTH - 1:0] s_axi_CNTRL_WSTRB;
input   s_axi_CNTRL_ARVALID;
output   s_axi_CNTRL_ARREADY;
input  [C_S_AXI_CNTRL_ADDR_WIDTH - 1:0] s_axi_CNTRL_ARADDR;
output   s_axi_CNTRL_RVALID;
input   s_axi_CNTRL_RREADY;
output  [C_S_AXI_CNTRL_DATA_WIDTH - 1:0] s_axi_CNTRL_RDATA;
output  [1:0] s_axi_CNTRL_RRESP;
output   s_axi_CNTRL_BVALID;
input   s_axi_CNTRL_BREADY;
output  [1:0] s_axi_CNTRL_BRESP;
output   interrupt;
input   cntrl_aclk;
input   ap_rst_n_cntrl_aclk;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] num_blocks_V;
reg   [31:0] first_V;
reg    ap_rst_n_cntrl_aclk_inv;
reg   [31:0] num_blocks_V_read_reg_237;
wire   [31:0] p_044_1_fu_169_p3;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_150_p2;
reg   [31:0] t_V_reg_124;
reg   [0:0] p_s_fu_60;
wire   [0:0] brmerge119_demorgan_fu_183_p2;
wire   [0:0] p_load_load_fu_189_p1;
reg   [31:0] time_stamp_V_1_fu_64;
wire    ap_CS_fsm_state3;
reg   [31:0] t_V_1_fu_68;
wire   [31:0] block_V_fu_192_p2;
reg   [31:0] first_V_preg;
wire   [31:0] stalled_cnt_V_fu_155_p2;
wire   [31:0] p_044_0_s_fu_161_p3;
wire   [0:0] tmp1_fu_177_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 first_V_preg = 32'd0;
end

monitor_CNTRL_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CNTRL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CNTRL_DATA_WIDTH ))
monitor_CNTRL_s_axi_U(
    .AWVALID(s_axi_CNTRL_AWVALID),
    .AWREADY(s_axi_CNTRL_AWREADY),
    .AWADDR(s_axi_CNTRL_AWADDR),
    .WVALID(s_axi_CNTRL_WVALID),
    .WREADY(s_axi_CNTRL_WREADY),
    .WDATA(s_axi_CNTRL_WDATA),
    .WSTRB(s_axi_CNTRL_WSTRB),
    .ARVALID(s_axi_CNTRL_ARVALID),
    .ARREADY(s_axi_CNTRL_ARREADY),
    .ARADDR(s_axi_CNTRL_ARADDR),
    .RVALID(s_axi_CNTRL_RVALID),
    .RREADY(s_axi_CNTRL_RREADY),
    .RDATA(s_axi_CNTRL_RDATA),
    .RRESP(s_axi_CNTRL_RRESP),
    .BVALID(s_axi_CNTRL_BVALID),
    .BREADY(s_axi_CNTRL_BREADY),
    .BRESP(s_axi_CNTRL_BRESP),
    .ACLK(cntrl_aclk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .num_blocks_V(num_blocks_V),
    .first_V(first_V),
    .last_V(time_stamp_V_1_fu_64),
    .stalled_V(t_V_reg_124),
    .clk(ap_clk),
    .rst(ap_rst_n_cntrl_aclk_inv)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        first_V_preg <= 32'd0;
    end else begin
        if (((p_load_load_fu_189_p1 == 1'd1) & (brmerge119_demorgan_fu_183_p2 == 1'd1) & (tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            first_V_preg <= rtc_V;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((p_load_load_fu_189_p1 == 1'd1) & (brmerge119_demorgan_fu_183_p2 == 1'd1) & (tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_s_fu_60 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_s_fu_60 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((brmerge119_demorgan_fu_183_p2 == 1'd1) & (tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_1_fu_68 <= block_V_fu_192_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_V_1_fu_68 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_reg_124 <= p_044_1_fu_169_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        t_V_reg_124 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        num_blocks_V_read_reg_237 <= num_blocks_V;
    end
end

always @ (posedge ap_clk) begin
    if (((brmerge119_demorgan_fu_183_p2 == 1'd1) & (tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        time_stamp_V_1_fu_64 <= rtc_V;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((p_load_load_fu_189_p1 == 1'd1) & (brmerge119_demorgan_fu_183_p2 == 1'd1) & (tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        first_V = rtc_V;
    end else begin
        first_V = first_V_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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
    ap_rst_n_cntrl_aclk_inv = ~ap_rst_n_cntrl_aclk;
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign block_V_fu_192_p2 = (t_V_1_fu_68 + 32'd1);

assign brmerge119_demorgan_fu_183_p2 = (tvalid_V & tmp1_fu_177_p2);

assign p_044_0_s_fu_161_p3 = ((tready_V[0:0] === 1'b1) ? t_V_reg_124 : stalled_cnt_V_fu_155_p2);

assign p_044_1_fu_169_p3 = ((tvalid_V[0:0] === 1'b1) ? p_044_0_s_fu_161_p3 : t_V_reg_124);

assign p_load_load_fu_189_p1 = p_s_fu_60;

assign stalled_cnt_V_fu_155_p2 = (t_V_reg_124 + 32'd1);

assign tmp1_fu_177_p2 = (tready_V & tlast_V);

assign tmp_fu_150_p2 = ((t_V_1_fu_68 == num_blocks_V_read_reg_237) ? 1'b1 : 1'b0);

endmodule //monitor