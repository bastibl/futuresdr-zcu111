// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module num_diff (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        in1_V,
        in2_V,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [127:0] in1_V;
input  [127:0] in2_V;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg   [7:0] bit_cnt_V_address0;
reg    bit_cnt_V_ce0;
wire   [3:0] bit_cnt_V_q0;
reg   [7:0] bit_cnt_V_address1;
reg    bit_cnt_V_ce1;
wire   [3:0] bit_cnt_V_q1;
reg   [7:0] bit_cnt_V_address2;
reg    bit_cnt_V_ce2;
wire   [3:0] bit_cnt_V_q2;
reg   [7:0] bit_cnt_V_address3;
reg    bit_cnt_V_ce3;
wire   [3:0] bit_cnt_V_q3;
reg   [3:0] reg_225;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_CS_fsm_pp0_stage1;
reg   [3:0] reg_230;
wire   [7:0] tmp_15_fu_241_p1;
reg   [7:0] tmp_15_reg_608;
reg   [7:0] p_Result_1_reg_613;
reg   [7:0] p_Result_2_reg_618;
reg   [7:0] p_Result_3_reg_623;
reg   [7:0] p_Result_4_reg_628;
reg   [7:0] p_Result_5_reg_633;
reg   [7:0] p_Result_6_reg_638;
reg   [7:0] p_Result_7_reg_643;
reg   [7:0] p_Result_8_reg_648;
reg   [7:0] p_Result_9_reg_653;
reg   [7:0] p_Result_s_reg_658;
reg   [7:0] p_Result_10_reg_663;
reg   [7:0] p_Result_11_reg_668;
reg   [7:0] p_Result_12_reg_673;
reg   [7:0] p_Result_13_reg_678;
reg   [7:0] ap_reg_pp0_iter1_p_Result_13_reg_678;
reg   [7:0] p_Result_14_reg_683;
reg   [7:0] ap_reg_pp0_iter1_p_Result_14_reg_683;
reg   [3:0] bit_cnt_V_load_2_reg_708;
reg   [3:0] bit_cnt_V_load_3_reg_713;
reg   [3:0] bit_cnt_V_load_6_reg_738;
reg   [3:0] bit_cnt_V_load_7_reg_743;
wire   [4:0] r_V_fu_451_p2;
reg   [4:0] r_V_reg_768;
reg   [3:0] bit_cnt_V_load_8_reg_773;
reg   [3:0] bit_cnt_V_load_9_reg_778;
reg   [3:0] bit_cnt_V_load_10_reg_783;
reg   [3:0] bit_cnt_V_load_11_reg_788;
wire   [5:0] r_V_2_fu_480_p2;
reg   [5:0] r_V_2_reg_803;
reg   [3:0] bit_cnt_V_load_12_reg_808;
reg   [3:0] bit_cnt_V_load_13_reg_813;
wire   [6:0] r_V_4_fu_503_p2;
reg   [6:0] r_V_4_reg_818;
wire   [6:0] r_V_6_fu_520_p2;
reg   [6:0] r_V_6_reg_823;
wire   [7:0] r_V_8_fu_541_p2;
reg   [7:0] r_V_8_reg_828;
wire   [7:0] r_V_11_fu_566_p2;
reg   [7:0] r_V_11_reg_843;
wire   [7:0] r_V_13_fu_583_p2;
reg   [7:0] r_V_13_reg_848;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_fu_395_p1;
wire   [63:0] tmp_1_fu_399_p1;
wire   [63:0] tmp_2_fu_403_p1;
wire   [63:0] tmp_3_fu_407_p1;
wire   [63:0] tmp_4_fu_411_p1;
wire   [63:0] tmp_5_fu_415_p1;
wire   [63:0] tmp_6_fu_419_p1;
wire   [63:0] tmp_7_fu_423_p1;
wire   [63:0] tmp_8_fu_427_p1;
wire   [63:0] tmp_9_fu_431_p1;
wire   [63:0] tmp_s_fu_435_p1;
wire   [63:0] tmp_10_fu_439_p1;
wire   [63:0] tmp_11_fu_457_p1;
wire   [63:0] tmp_12_fu_461_p1;
wire   [63:0] tmp_13_fu_547_p1;
wire   [63:0] tmp_14_fu_551_p1;
wire   [127:0] r_V_16_fu_235_p2;
wire   [4:0] rhs_V_cast_fu_447_p1;
wire   [4:0] lhs_V_cast_fu_443_p1;
wire   [5:0] rhs_V_1_cast_fu_468_p1;
wire   [5:0] lhs_V_1_cast_fu_465_p1;
wire   [5:0] rhs_V_2_cast_fu_477_p1;
wire   [5:0] r_V_1_fu_471_p2;
wire   [6:0] rhs_V_3_cast_fu_489_p1;
wire   [6:0] lhs_V_3_cast_fu_486_p1;
wire   [6:0] rhs_V_4_cast_fu_499_p1;
wire   [6:0] r_V_3_fu_493_p2;
wire   [6:0] rhs_V_5_cast_fu_509_p1;
wire   [6:0] rhs_V_6_cast_fu_517_p1;
wire   [6:0] r_V_5_fu_512_p2;
wire   [7:0] rhs_V_7_cast_fu_529_p1;
wire   [7:0] lhs_V_7_cast_fu_526_p1;
wire   [7:0] rhs_V_8_cast_fu_538_p1;
wire   [7:0] r_V_7_fu_532_p2;
wire   [7:0] rhs_V_9_cast_fu_555_p1;
wire   [7:0] rhs_V_10_cast_fu_563_p1;
wire   [7:0] r_V_9_fu_558_p2;
wire   [7:0] rhs_V_11_cast_fu_572_p1;
wire   [7:0] rhs_V_12_cast_fu_580_p1;
wire   [7:0] r_V_12_fu_575_p2;
wire   [7:0] rhs_V_13_cast_fu_589_p1;
wire   [7:0] rhs_V_14_cast_fu_598_p1;
wire   [7:0] r_V_14_fu_593_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

num_diff_bit_cnt_V #(
    .DataWidth( 4 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
bit_cnt_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(bit_cnt_V_address0),
    .ce0(bit_cnt_V_ce0),
    .q0(bit_cnt_V_q0),
    .address1(bit_cnt_V_address1),
    .ce1(bit_cnt_V_ce1),
    .q1(bit_cnt_V_q1),
    .address2(bit_cnt_V_address2),
    .ce2(bit_cnt_V_ce2),
    .q2(bit_cnt_V_q2),
    .address3(bit_cnt_V_address3),
    .ce3(bit_cnt_V_ce3),
    .q3(bit_cnt_V_q3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_ce == 1'b1)) begin
            if ((1'b1 == ap_CS_fsm_pp0_stage3)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_enable_reg_pp0_iter2 <= 1'b0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        reg_225 <= bit_cnt_V_q2;
    end else if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_225 <= bit_cnt_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        reg_230 <= bit_cnt_V_q3;
    end else if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_230 <= bit_cnt_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0)))) begin
        ap_reg_pp0_iter1_p_Result_13_reg_678 <= p_Result_13_reg_678;
        ap_reg_pp0_iter1_p_Result_14_reg_683 <= p_Result_14_reg_683;
        p_Result_10_reg_663 <= {{r_V_16_fu_235_p2[95:88]}};
        p_Result_11_reg_668 <= {{r_V_16_fu_235_p2[103:96]}};
        p_Result_12_reg_673 <= {{r_V_16_fu_235_p2[111:104]}};
        p_Result_13_reg_678 <= {{r_V_16_fu_235_p2[119:112]}};
        p_Result_14_reg_683 <= {{r_V_16_fu_235_p2[127:120]}};
        p_Result_1_reg_613 <= {{r_V_16_fu_235_p2[15:8]}};
        p_Result_2_reg_618 <= {{r_V_16_fu_235_p2[23:16]}};
        p_Result_3_reg_623 <= {{r_V_16_fu_235_p2[31:24]}};
        p_Result_4_reg_628 <= {{r_V_16_fu_235_p2[39:32]}};
        p_Result_5_reg_633 <= {{r_V_16_fu_235_p2[47:40]}};
        p_Result_6_reg_638 <= {{r_V_16_fu_235_p2[55:48]}};
        p_Result_7_reg_643 <= {{r_V_16_fu_235_p2[63:56]}};
        p_Result_8_reg_648 <= {{r_V_16_fu_235_p2[71:64]}};
        p_Result_9_reg_653 <= {{r_V_16_fu_235_p2[79:72]}};
        p_Result_s_reg_658 <= {{r_V_16_fu_235_p2[87:80]}};
        r_V_11_reg_843 <= r_V_11_fu_566_p2;
        r_V_2_reg_803 <= r_V_2_fu_480_p2;
        tmp_15_reg_608 <= tmp_15_fu_241_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0)) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        bit_cnt_V_load_10_reg_783 <= bit_cnt_V_q2;
        bit_cnt_V_load_11_reg_788 <= bit_cnt_V_q3;
        bit_cnt_V_load_8_reg_773 <= bit_cnt_V_q0;
        bit_cnt_V_load_9_reg_778 <= bit_cnt_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        bit_cnt_V_load_12_reg_808 <= bit_cnt_V_q0;
        bit_cnt_V_load_13_reg_813 <= bit_cnt_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bit_cnt_V_load_2_reg_708 <= bit_cnt_V_q2;
        bit_cnt_V_load_3_reg_713 <= bit_cnt_V_q3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1))) begin
        bit_cnt_V_load_6_reg_738 <= bit_cnt_V_q2;
        bit_cnt_V_load_7_reg_743 <= bit_cnt_V_q3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r_V_13_reg_848 <= r_V_13_fu_583_p2;
        r_V_4_reg_818 <= r_V_4_fu_503_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        r_V_6_reg_823 <= r_V_6_fu_520_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1))) begin
        r_V_8_reg_828 <= r_V_8_fu_541_p2;
        r_V_reg_768 <= r_V_fu_451_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0)) | ((ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b1 == ap_enable_reg_pp0_iter2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_idle_pp0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_idle_pp0_0to1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        bit_cnt_V_address0 = tmp_11_fu_457_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bit_cnt_V_address0 = tmp_8_fu_427_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bit_cnt_V_address0 = tmp_4_fu_411_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bit_cnt_V_address0 = tmp_fu_395_p1;
    end else begin
        bit_cnt_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        bit_cnt_V_address1 = tmp_12_fu_461_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bit_cnt_V_address1 = tmp_9_fu_431_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bit_cnt_V_address1 = tmp_5_fu_415_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bit_cnt_V_address1 = tmp_1_fu_399_p1;
    end else begin
        bit_cnt_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        bit_cnt_V_address2 = tmp_13_fu_547_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bit_cnt_V_address2 = tmp_s_fu_435_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bit_cnt_V_address2 = tmp_6_fu_419_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bit_cnt_V_address2 = tmp_2_fu_403_p1;
    end else begin
        bit_cnt_V_address2 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        bit_cnt_V_address3 = tmp_14_fu_551_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bit_cnt_V_address3 = tmp_10_fu_439_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bit_cnt_V_address3 = tmp_7_fu_423_p1;
    end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bit_cnt_V_address3 = tmp_3_fu_407_p1;
    end else begin
        bit_cnt_V_address3 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0)) & (1'b1 == ap_enable_reg_pp0_iter1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bit_cnt_V_ce0 = 1'b1;
    end else begin
        bit_cnt_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0)) & (1'b1 == ap_enable_reg_pp0_iter1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        bit_cnt_V_ce1 = 1'b1;
    end else begin
        bit_cnt_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0))))) begin
        bit_cnt_V_ce2 = 1'b1;
    end else begin
        bit_cnt_V_ce2 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_ce == 1'b1)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_ce == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2) & ~((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0))))) begin
        bit_cnt_V_ce3 = 1'b1;
    end else begin
        bit_cnt_V_ce3 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_ce == 1'b0) | ((1'b0 == ap_start) & (1'b1 == ap_enable_reg_pp0_iter0))) & ~((1'b0 == ap_start) & (1'b1 == ap_idle_pp0_1to2)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((ap_ce == 1'b1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_ce == 1'b1) & (ap_reset_idle_pp0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else if (((ap_ce == 1'b1) & (1'b1 == ap_reset_idle_pp0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((ap_ce == 1'b1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = (rhs_V_14_cast_fu_598_p1 + r_V_14_fu_593_p2);

assign lhs_V_1_cast_fu_465_p1 = r_V_reg_768;

assign lhs_V_3_cast_fu_486_p1 = r_V_2_reg_803;

assign lhs_V_7_cast_fu_526_p1 = r_V_6_reg_823;

assign lhs_V_cast_fu_443_p1 = reg_225;

assign r_V_11_fu_566_p2 = (rhs_V_10_cast_fu_563_p1 + r_V_9_fu_558_p2);

assign r_V_12_fu_575_p2 = (rhs_V_11_cast_fu_572_p1 + r_V_11_reg_843);

assign r_V_13_fu_583_p2 = (rhs_V_12_cast_fu_580_p1 + r_V_12_fu_575_p2);

assign r_V_14_fu_593_p2 = (rhs_V_13_cast_fu_589_p1 + r_V_13_reg_848);

assign r_V_16_fu_235_p2 = (in2_V ^ in1_V);

assign r_V_1_fu_471_p2 = (rhs_V_1_cast_fu_468_p1 + lhs_V_1_cast_fu_465_p1);

assign r_V_2_fu_480_p2 = (rhs_V_2_cast_fu_477_p1 + r_V_1_fu_471_p2);

assign r_V_3_fu_493_p2 = (rhs_V_3_cast_fu_489_p1 + lhs_V_3_cast_fu_486_p1);

assign r_V_4_fu_503_p2 = (rhs_V_4_cast_fu_499_p1 + r_V_3_fu_493_p2);

assign r_V_5_fu_512_p2 = (rhs_V_5_cast_fu_509_p1 + r_V_4_reg_818);

assign r_V_6_fu_520_p2 = (rhs_V_6_cast_fu_517_p1 + r_V_5_fu_512_p2);

assign r_V_7_fu_532_p2 = (rhs_V_7_cast_fu_529_p1 + lhs_V_7_cast_fu_526_p1);

assign r_V_8_fu_541_p2 = (rhs_V_8_cast_fu_538_p1 + r_V_7_fu_532_p2);

assign r_V_9_fu_558_p2 = (rhs_V_9_cast_fu_555_p1 + r_V_8_reg_828);

assign r_V_fu_451_p2 = (rhs_V_cast_fu_447_p1 + lhs_V_cast_fu_443_p1);

assign rhs_V_10_cast_fu_563_p1 = bit_cnt_V_load_11_reg_788;

assign rhs_V_11_cast_fu_572_p1 = bit_cnt_V_load_12_reg_808;

assign rhs_V_12_cast_fu_580_p1 = bit_cnt_V_load_13_reg_813;

assign rhs_V_13_cast_fu_589_p1 = reg_225;

assign rhs_V_14_cast_fu_598_p1 = reg_230;

assign rhs_V_1_cast_fu_468_p1 = bit_cnt_V_load_2_reg_708;

assign rhs_V_2_cast_fu_477_p1 = bit_cnt_V_load_3_reg_713;

assign rhs_V_3_cast_fu_489_p1 = reg_225;

assign rhs_V_4_cast_fu_499_p1 = reg_230;

assign rhs_V_5_cast_fu_509_p1 = bit_cnt_V_load_6_reg_738;

assign rhs_V_6_cast_fu_517_p1 = bit_cnt_V_load_7_reg_743;

assign rhs_V_7_cast_fu_529_p1 = bit_cnt_V_load_8_reg_773;

assign rhs_V_8_cast_fu_538_p1 = bit_cnt_V_load_9_reg_778;

assign rhs_V_9_cast_fu_555_p1 = bit_cnt_V_load_10_reg_783;

assign rhs_V_cast_fu_447_p1 = reg_230;

assign tmp_10_fu_439_p1 = p_Result_10_reg_663;

assign tmp_11_fu_457_p1 = p_Result_11_reg_668;

assign tmp_12_fu_461_p1 = p_Result_12_reg_673;

assign tmp_13_fu_547_p1 = ap_reg_pp0_iter1_p_Result_13_reg_678;

assign tmp_14_fu_551_p1 = ap_reg_pp0_iter1_p_Result_14_reg_683;

assign tmp_15_fu_241_p1 = r_V_16_fu_235_p2[7:0];

assign tmp_1_fu_399_p1 = p_Result_1_reg_613;

assign tmp_2_fu_403_p1 = p_Result_2_reg_618;

assign tmp_3_fu_407_p1 = p_Result_3_reg_623;

assign tmp_4_fu_411_p1 = p_Result_4_reg_628;

assign tmp_5_fu_415_p1 = p_Result_5_reg_633;

assign tmp_6_fu_419_p1 = p_Result_6_reg_638;

assign tmp_7_fu_423_p1 = p_Result_7_reg_643;

assign tmp_8_fu_427_p1 = p_Result_8_reg_648;

assign tmp_9_fu_431_p1 = p_Result_9_reg_653;

assign tmp_fu_395_p1 = tmp_15_reg_608;

assign tmp_s_fu_435_p1 = p_Result_s_reg_658;

endmodule //num_diff
