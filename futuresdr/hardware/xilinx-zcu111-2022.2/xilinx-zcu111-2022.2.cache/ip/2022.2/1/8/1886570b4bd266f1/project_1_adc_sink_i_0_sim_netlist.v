// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Oct 14 13:26:30 2022
// Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_adc_sink_i_0_sim_netlist.v
// Design      : project_1_adc_sink_i_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc0_rfadc_exdes_ctrl_axi
   (slv_wren_done_pulse,
    slv_wren_clk2,
    slv_rden_r,
    adc00_ds_pulse_control_0,
    slv_rden_r_reg_0,
    clk2_valid_pulse_reg,
    \adc03_ds_inc_0_reg[11]_0 ,
    \adc03_ds_inc_0_reg[1]_0 ,
    \adc01_ds_inc_0_reg[1]_0 ,
    \adc02_ds_inc_0_reg[1]_0 ,
    \adc03_ds_inc_0_reg[10]_0 ,
    \adc03_ds_inc_0_reg[9]_0 ,
    \adc03_ds_inc_0_reg[8]_0 ,
    \adc03_ds_enable_0_reg[7]_0 ,
    \adc01_ds_inc_0_reg[7]_0 ,
    \adc03_ds_enable_0_reg[6]_0 ,
    \adc01_ds_inc_0_reg[6]_0 ,
    \adc03_ds_enable_0_reg[5]_0 ,
    \adc01_ds_inc_0_reg[5]_0 ,
    \adc01_ds_inc_0_reg[4]_0 ,
    \adc03_ds_enable_0_reg[4]_0 ,
    \adc03_ds_enable_0_reg[3]_0 ,
    \adc01_ds_inc_0_reg[3]_0 ,
    \adc03_ds_enable_0_reg[2]_0 ,
    \adc01_ds_inc_0_reg[2]_0 ,
    \adc03_ds_enable_0_reg[1]_0 ,
    \adc01_ds_control_0_reg[1]_0 ,
    \adc03_ds_control_0_reg[0]_0 ,
    \adc00_ds_control_0_reg[1]_0 ,
    \adc03_ds_enable_0_reg[0]_0 ,
    s00_tready,
    \adc00_ds_inc_0_reg[7]_0 ,
    \adc00_ds_type_0_reg[3]_0 ,
    \adc01_ds_type_0_reg[3]_0 ,
    \adc02_ds_type_0_reg[3]_0 ,
    \adc03_ds_type_0_reg[3]_0 ,
    slv_rdata,
    s0_axis_clock,
    s_axi_aclk,
    p_0_in,
    adc0slv_rden,
    \adc00_ds_type_0_reg[3]_1 ,
    Q,
    adc_ds_slv_rden,
    \adc00_ds_enable_0_reg[0]_0 ,
    \adc02_ds_type_0_reg[0]_0 ,
    \adc02_ds_inc_0_reg[0]_0 ,
    \adc02_ds_control_0_reg[0]_0 ,
    \adc02_ds_enable_0_reg[0]_0 ,
    \adc01_ds_control_0_reg[0]_0 ,
    \adc03_ds_type_0_reg[0]_0 ,
    \adc03_ds_inc_0_reg[0]_0 ,
    \slv_rdata_reg[12]_0 ,
    dest_rst,
    adc00_ds_pulse_control_0_reg_0,
    s_axi_wvalid,
    adc0axi_map_wready,
    E,
    s_axi_wdata,
    \adc00_ds_inc_0_reg[11]_0 ,
    \adc00_ds_control_0_reg[0]_0 ,
    \adc01_ds_enable_0_reg[7]_0 ,
    \adc01_ds_inc_0_reg[0]_0 ,
    \adc01_ds_type_0_reg[3]_1 ,
    \adc03_ds_enable_0_reg[0]_1 ,
    \adc03_ds_control_0_reg[1]_0 ,
    s_axi_aresetn,
    D,
    \slv_rdata_reg[15]_0 ,
    \slv_rdata_reg[14]_0 ,
    \slv_rdata_reg[13]_0 ,
    \slv_rdata_reg[12]_1 ,
    \slv_rdata_reg[2]_0 ,
    \slv_rdata_reg[7]_0 ,
    \slv_rdata_reg[6]_0 ,
    \slv_rdata_reg[5]_0 ,
    \slv_rdata_reg[4]_0 ,
    \slv_rdata_reg[3]_0 ,
    \slv_rdata_reg[2]_1 ,
    \slv_rdata_reg[0]_0 ,
    \slv_rdata_reg[1]_0 ,
    \slv_rdata_reg[0]_1 ,
    \slv_rdata_reg[12]_2 );
  output slv_wren_done_pulse;
  output slv_wren_clk2;
  output slv_rden_r;
  output adc00_ds_pulse_control_0;
  output slv_rden_r_reg_0;
  output clk2_valid_pulse_reg;
  output \adc03_ds_inc_0_reg[11]_0 ;
  output [1:0]\adc03_ds_inc_0_reg[1]_0 ;
  output [1:0]\adc01_ds_inc_0_reg[1]_0 ;
  output [1:0]\adc02_ds_inc_0_reg[1]_0 ;
  output \adc03_ds_inc_0_reg[10]_0 ;
  output \adc03_ds_inc_0_reg[9]_0 ;
  output \adc03_ds_inc_0_reg[8]_0 ;
  output \adc03_ds_enable_0_reg[7]_0 ;
  output \adc01_ds_inc_0_reg[7]_0 ;
  output \adc03_ds_enable_0_reg[6]_0 ;
  output \adc01_ds_inc_0_reg[6]_0 ;
  output \adc03_ds_enable_0_reg[5]_0 ;
  output \adc01_ds_inc_0_reg[5]_0 ;
  output \adc01_ds_inc_0_reg[4]_0 ;
  output \adc03_ds_enable_0_reg[4]_0 ;
  output \adc03_ds_enable_0_reg[3]_0 ;
  output \adc01_ds_inc_0_reg[3]_0 ;
  output \adc03_ds_enable_0_reg[2]_0 ;
  output \adc01_ds_inc_0_reg[2]_0 ;
  output \adc03_ds_enable_0_reg[1]_0 ;
  output \adc01_ds_control_0_reg[1]_0 ;
  output \adc03_ds_control_0_reg[0]_0 ;
  output [0:0]\adc00_ds_control_0_reg[1]_0 ;
  output \adc03_ds_enable_0_reg[0]_0 ;
  output s00_tready;
  output [7:0]\adc00_ds_inc_0_reg[7]_0 ;
  output [3:0]\adc00_ds_type_0_reg[3]_0 ;
  output [3:0]\adc01_ds_type_0_reg[3]_0 ;
  output [3:0]\adc02_ds_type_0_reg[3]_0 ;
  output [3:0]\adc03_ds_type_0_reg[3]_0 ;
  output [15:0]slv_rdata;
  input s0_axis_clock;
  input s_axi_aclk;
  input p_0_in;
  input adc0slv_rden;
  input \adc00_ds_type_0_reg[3]_1 ;
  input [0:0]Q;
  input adc_ds_slv_rden;
  input \adc00_ds_enable_0_reg[0]_0 ;
  input \adc02_ds_type_0_reg[0]_0 ;
  input \adc02_ds_inc_0_reg[0]_0 ;
  input \adc02_ds_control_0_reg[0]_0 ;
  input \adc02_ds_enable_0_reg[0]_0 ;
  input \adc01_ds_control_0_reg[0]_0 ;
  input \adc03_ds_type_0_reg[0]_0 ;
  input \adc03_ds_inc_0_reg[0]_0 ;
  input [5:0]\slv_rdata_reg[12]_0 ;
  input dest_rst;
  input adc00_ds_pulse_control_0_reg_0;
  input s_axi_wvalid;
  input adc0axi_map_wready;
  input [0:0]E;
  input [11:0]s_axi_wdata;
  input [0:0]\adc00_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc00_ds_control_0_reg[0]_0 ;
  input [0:0]\adc01_ds_enable_0_reg[7]_0 ;
  input [0:0]\adc01_ds_inc_0_reg[0]_0 ;
  input [0:0]\adc01_ds_type_0_reg[3]_1 ;
  input [0:0]\adc03_ds_enable_0_reg[0]_1 ;
  input [0:0]\adc03_ds_control_0_reg[1]_0 ;
  input s_axi_aresetn;
  input [3:0]D;
  input \slv_rdata_reg[15]_0 ;
  input \slv_rdata_reg[14]_0 ;
  input \slv_rdata_reg[13]_0 ;
  input \slv_rdata_reg[12]_1 ;
  input \slv_rdata_reg[2]_0 ;
  input \slv_rdata_reg[7]_0 ;
  input \slv_rdata_reg[6]_0 ;
  input \slv_rdata_reg[5]_0 ;
  input \slv_rdata_reg[4]_0 ;
  input \slv_rdata_reg[3]_0 ;
  input \slv_rdata_reg[2]_1 ;
  input \slv_rdata_reg[0]_0 ;
  input \slv_rdata_reg[1]_0 ;
  input \slv_rdata_reg[0]_1 ;
  input \slv_rdata_reg[12]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]adc00_ds_control_0;
  wire [0:0]\adc00_ds_control_0_reg[0]_0 ;
  wire [0:0]\adc00_ds_control_0_reg[1]_0 ;
  wire [7:1]adc00_ds_enable_0;
  wire \adc00_ds_enable_0_reg[0]_0 ;
  wire [11:8]adc00_ds_inc_0;
  wire [0:0]\adc00_ds_inc_0_reg[11]_0 ;
  wire [7:0]\adc00_ds_inc_0_reg[7]_0 ;
  wire adc00_ds_pulse_control_0;
  wire adc00_ds_pulse_control_0_reg_0;
  wire [3:0]\adc00_ds_type_0_reg[3]_0 ;
  wire \adc00_ds_type_0_reg[3]_1 ;
  wire [1:0]adc01_ds_control_0;
  wire \adc01_ds_control_0_reg[0]_0 ;
  wire \adc01_ds_control_0_reg[1]_0 ;
  wire [7:0]adc01_ds_enable_0;
  wire [0:0]\adc01_ds_enable_0_reg[7]_0 ;
  wire [11:2]adc01_ds_inc_0;
  wire [0:0]\adc01_ds_inc_0_reg[0]_0 ;
  wire [1:0]\adc01_ds_inc_0_reg[1]_0 ;
  wire \adc01_ds_inc_0_reg[2]_0 ;
  wire \adc01_ds_inc_0_reg[3]_0 ;
  wire \adc01_ds_inc_0_reg[4]_0 ;
  wire \adc01_ds_inc_0_reg[5]_0 ;
  wire \adc01_ds_inc_0_reg[6]_0 ;
  wire \adc01_ds_inc_0_reg[7]_0 ;
  wire [3:0]\adc01_ds_type_0_reg[3]_0 ;
  wire [0:0]\adc01_ds_type_0_reg[3]_1 ;
  wire [1:0]adc02_ds_control_0;
  wire \adc02_ds_control_0_reg[0]_0 ;
  wire [7:0]adc02_ds_enable_0;
  wire \adc02_ds_enable_0_reg[0]_0 ;
  wire [11:2]adc02_ds_inc_0;
  wire \adc02_ds_inc_0_reg[0]_0 ;
  wire [1:0]\adc02_ds_inc_0_reg[1]_0 ;
  wire \adc02_ds_type_0_reg[0]_0 ;
  wire [3:0]\adc02_ds_type_0_reg[3]_0 ;
  wire [1:0]adc03_ds_control_0;
  wire \adc03_ds_control_0_reg[0]_0 ;
  wire [0:0]\adc03_ds_control_0_reg[1]_0 ;
  wire [7:0]adc03_ds_enable_0;
  wire \adc03_ds_enable_0_reg[0]_0 ;
  wire [0:0]\adc03_ds_enable_0_reg[0]_1 ;
  wire \adc03_ds_enable_0_reg[1]_0 ;
  wire \adc03_ds_enable_0_reg[2]_0 ;
  wire \adc03_ds_enable_0_reg[3]_0 ;
  wire \adc03_ds_enable_0_reg[4]_0 ;
  wire \adc03_ds_enable_0_reg[5]_0 ;
  wire \adc03_ds_enable_0_reg[6]_0 ;
  wire \adc03_ds_enable_0_reg[7]_0 ;
  wire [11:2]adc03_ds_inc_0;
  wire \adc03_ds_inc_0_reg[0]_0 ;
  wire \adc03_ds_inc_0_reg[10]_0 ;
  wire \adc03_ds_inc_0_reg[11]_0 ;
  wire [1:0]\adc03_ds_inc_0_reg[1]_0 ;
  wire \adc03_ds_inc_0_reg[8]_0 ;
  wire \adc03_ds_inc_0_reg[9]_0 ;
  wire \adc03_ds_type_0_reg[0]_0 ;
  wire [3:0]\adc03_ds_type_0_reg[3]_0 ;
  wire adc0axi_map_wready;
  wire adc0slv_rden;
  wire adc_ds_slv_rden;
  wire clk2_valid_pulse_reg;
  wire clk2clk_handshake_pulse_gen_i_n_1;
  wire clk2clk_handshake_pulse_gen_i_n_10;
  wire clk2clk_handshake_pulse_gen_i_n_11;
  wire clk2clk_handshake_pulse_gen_i_n_12;
  wire clk2clk_handshake_pulse_gen_i_n_14;
  wire clk2clk_handshake_pulse_gen_i_n_15;
  wire clk2clk_handshake_pulse_gen_i_n_3;
  wire clk2clk_handshake_pulse_gen_i_n_5;
  wire clk2clk_handshake_pulse_gen_i_n_6;
  wire clk2clk_handshake_pulse_gen_i_n_7;
  wire clk2clk_handshake_pulse_gen_i_n_8;
  wire clk2clk_handshake_pulse_gen_i_n_9;
  wire dest_rst;
  wire p_0_in;
  wire s00_tready;
  wire s0_axis_clock;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire slv_access_valid_hold;
  wire [15:0]slv_rdata;
  wire \slv_rdata[15]_i_1_n_0 ;
  wire \slv_rdata_reg[0]_0 ;
  wire \slv_rdata_reg[0]_1 ;
  wire [5:0]\slv_rdata_reg[12]_0 ;
  wire \slv_rdata_reg[12]_1 ;
  wire \slv_rdata_reg[12]_2 ;
  wire \slv_rdata_reg[13]_0 ;
  wire \slv_rdata_reg[14]_0 ;
  wire \slv_rdata_reg[15]_0 ;
  wire \slv_rdata_reg[1]_0 ;
  wire \slv_rdata_reg[2]_0 ;
  wire \slv_rdata_reg[2]_1 ;
  wire \slv_rdata_reg[3]_0 ;
  wire \slv_rdata_reg[4]_0 ;
  wire \slv_rdata_reg[5]_0 ;
  wire \slv_rdata_reg[6]_0 ;
  wire \slv_rdata_reg[7]_0 ;
  wire slv_rden_r;
  wire slv_rden_r_reg_0;
  wire \slv_wdata_r_internal_reg_n_0_[0] ;
  wire \slv_wdata_r_internal_reg_n_0_[10] ;
  wire \slv_wdata_r_internal_reg_n_0_[11] ;
  wire \slv_wdata_r_internal_reg_n_0_[1] ;
  wire \slv_wdata_r_internal_reg_n_0_[2] ;
  wire \slv_wdata_r_internal_reg_n_0_[3] ;
  wire \slv_wdata_r_internal_reg_n_0_[4] ;
  wire \slv_wdata_r_internal_reg_n_0_[5] ;
  wire \slv_wdata_r_internal_reg_n_0_[6] ;
  wire \slv_wdata_r_internal_reg_n_0_[7] ;
  wire \slv_wdata_r_internal_reg_n_0_[8] ;
  wire \slv_wdata_r_internal_reg_n_0_[9] ;
  wire slv_wren_clk2;
  wire slv_wren_done_pulse;

  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_control_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_control_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc00_ds_control_0),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_control_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_control_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc00_ds_control_0_reg[1]_0 ),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(s00_tready),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc00_ds_enable_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc00_ds_enable_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc00_ds_enable_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc00_ds_enable_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc00_ds_enable_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc00_ds_enable_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_enable_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc00_ds_enable_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[10] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc00_ds_inc_0[10]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[11] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc00_ds_inc_0[11]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc00_ds_inc_0_reg[7]_0 [7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[8] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc00_ds_inc_0[8]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_inc_0_reg[9] 
       (.C(s0_axis_clock),
        .CE(\adc00_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc00_ds_inc_0[9]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    adc00_ds_pulse_control_0_reg
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(clk2clk_handshake_pulse_gen_i_n_14),
        .Q(adc00_ds_pulse_control_0),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_type_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc00_ds_type_0_reg[3]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_type_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc00_ds_type_0_reg[3]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_type_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc00_ds_type_0_reg[3]_0 [2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc00_ds_type_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc00_ds_type_0_reg[3]_0 [3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_control_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc01_ds_control_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_control_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc01_ds_control_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc01_ds_enable_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc01_ds_enable_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc01_ds_enable_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc01_ds_enable_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc01_ds_enable_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc01_ds_enable_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc01_ds_enable_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_enable_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_enable_0_reg[7]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc01_ds_enable_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc01_ds_inc_0_reg[1]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[10] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc01_ds_inc_0[10]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[11] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc01_ds_inc_0[11]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc01_ds_inc_0_reg[1]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc01_ds_inc_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc01_ds_inc_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc01_ds_inc_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc01_ds_inc_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc01_ds_inc_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc01_ds_inc_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[8] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc01_ds_inc_0[8]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_inc_0_reg[9] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_inc_0_reg[0]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc01_ds_inc_0[9]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_type_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_type_0_reg[3]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc01_ds_type_0_reg[3]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_type_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_type_0_reg[3]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc01_ds_type_0_reg[3]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_type_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_type_0_reg[3]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc01_ds_type_0_reg[3]_0 [2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc01_ds_type_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(\adc01_ds_type_0_reg[3]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc01_ds_type_0_reg[3]_0 [3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_control_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc02_ds_control_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_control_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc02_ds_control_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc02_ds_enable_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc02_ds_enable_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc02_ds_enable_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc02_ds_enable_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc02_ds_enable_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc02_ds_enable_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc02_ds_enable_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_enable_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc02_ds_enable_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc02_ds_inc_0_reg[1]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[10] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc02_ds_inc_0[10]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[11] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc02_ds_inc_0[11]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc02_ds_inc_0_reg[1]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc02_ds_inc_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc02_ds_inc_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc02_ds_inc_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc02_ds_inc_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc02_ds_inc_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc02_ds_inc_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[8] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc02_ds_inc_0[8]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_inc_0_reg[9] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc02_ds_inc_0[9]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_type_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc02_ds_type_0_reg[3]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_type_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc02_ds_type_0_reg[3]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_type_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc02_ds_type_0_reg[3]_0 [2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc02_ds_type_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc02_ds_type_0_reg[3]_0 [3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_control_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc03_ds_control_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_control_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc03_ds_control_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc03_ds_enable_0[0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc03_ds_enable_0[1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc03_ds_enable_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc03_ds_enable_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc03_ds_enable_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc03_ds_enable_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc03_ds_enable_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_enable_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(\adc03_ds_enable_0_reg[0]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc03_ds_enable_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc03_ds_inc_0_reg[1]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[10] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc03_ds_inc_0[10]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[11] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc03_ds_inc_0[11]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc03_ds_inc_0_reg[1]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc03_ds_inc_0[2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc03_ds_inc_0[3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[4] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(adc03_ds_inc_0[4]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[5] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(adc03_ds_inc_0[5]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[6] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(adc03_ds_inc_0[6]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[7] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(adc03_ds_inc_0[7]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[8] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc03_ds_inc_0[8]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_inc_0_reg[9] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_12),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc03_ds_inc_0[9]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_type_0_reg[0] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(\adc03_ds_type_0_reg[3]_0 [0]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_type_0_reg[1] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(\adc03_ds_type_0_reg[3]_0 [1]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_type_0_reg[2] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc03_ds_type_0_reg[3]_0 [2]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \adc03_ds_type_0_reg[3] 
       (.C(s0_axis_clock),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc03_ds_type_0_reg[3]_0 [3]),
        .R(clk2clk_handshake_pulse_gen_i_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1 clk2clk_handshake_pulse_gen_i
       (.E(clk2clk_handshake_pulse_gen_i_n_3),
        .Q(Q),
        .SR(clk2clk_handshake_pulse_gen_i_n_1),
        .\adc00_ds_enable_0_reg[0] (\adc00_ds_enable_0_reg[0]_0 ),
        .adc00_ds_pulse_control_0(adc00_ds_pulse_control_0),
        .adc00_ds_pulse_control_0_reg(\slv_wdata_r_internal_reg_n_0_[0] ),
        .adc00_ds_pulse_control_0_reg_0(adc00_ds_pulse_control_0_reg_0),
        .\adc00_ds_type_0_reg[3] (\adc00_ds_type_0_reg[3]_1 ),
        .\adc01_ds_control_0_reg[0] (\adc01_ds_control_0_reg[0]_0 ),
        .\adc02_ds_control_0_reg[0] (\adc02_ds_control_0_reg[0]_0 ),
        .\adc02_ds_enable_0_reg[0] (\adc02_ds_enable_0_reg[0]_0 ),
        .\adc02_ds_inc_0_reg[0] (\adc02_ds_inc_0_reg[0]_0 ),
        .\adc02_ds_type_0_reg[0] (\adc02_ds_type_0_reg[0]_0 ),
        .\adc03_ds_inc_0_reg[0] (\adc03_ds_inc_0_reg[0]_0 ),
        .\adc03_ds_type_0_reg[0] (\adc03_ds_type_0_reg[0]_0 ),
        .adc0axi_map_wready(adc0axi_map_wready),
        .adc0slv_rden(adc0slv_rden),
        .adc_ds_slv_rden(adc_ds_slv_rden),
        .clk2_valid_pulse_reg_0(slv_wren_clk2),
        .clk2_valid_pulse_reg_1(clk2_valid_pulse_reg),
        .dest_rst(dest_rst),
        .p_0_in(p_0_in),
        .s0_axis_clock(s0_axis_clock),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_rden_r),
        .slv_rden_r_reg(slv_rden_r_reg_0),
        .slv_rden_r_reg_0(clk2clk_handshake_pulse_gen_i_n_5),
        .slv_rden_r_reg_1(clk2clk_handshake_pulse_gen_i_n_6),
        .slv_rden_r_reg_2(clk2clk_handshake_pulse_gen_i_n_7),
        .slv_rden_r_reg_3(clk2clk_handshake_pulse_gen_i_n_8),
        .slv_rden_r_reg_4(clk2clk_handshake_pulse_gen_i_n_9),
        .slv_rden_r_reg_5(clk2clk_handshake_pulse_gen_i_n_10),
        .slv_rden_r_reg_6(clk2clk_handshake_pulse_gen_i_n_11),
        .slv_rden_r_reg_7(clk2clk_handshake_pulse_gen_i_n_12),
        .\slv_wdata_r_internal_reg[0] (clk2clk_handshake_pulse_gen_i_n_14),
        .slv_wren_done_pulse(slv_wren_done_pulse),
        .src_in(slv_access_valid_hold),
        .\syncstages_ff_reg[4] (clk2clk_handshake_pulse_gen_i_n_15));
  FDRE slv_access_valid_hold_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2clk_handshake_pulse_gen_i_n_15),
        .Q(slv_access_valid_hold),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_10 
       (.I0(adc03_ds_control_0[0]),
        .I1(adc01_ds_control_0[0]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_control_0[0]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_control_0),
        .O(\adc03_ds_control_0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_11 
       (.I0(adc03_ds_enable_0[0]),
        .I1(adc01_ds_enable_0[0]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[0]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(s00_tready),
        .O(\adc03_ds_enable_0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[10]_i_3 
       (.I0(adc03_ds_inc_0[10]),
        .I1(adc01_ds_inc_0[10]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_inc_0[10]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_inc_0[10]),
        .O(\adc03_ds_inc_0_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[11]_i_4 
       (.I0(adc03_ds_inc_0[11]),
        .I1(adc01_ds_inc_0[11]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_inc_0[11]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_inc_0[11]),
        .O(\adc03_ds_inc_0_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \slv_rdata[15]_i_1 
       (.I0(\slv_rdata_reg[12]_0 [5]),
        .I1(\slv_rdata_reg[12]_0 [4]),
        .I2(\slv_rdata_reg[12]_0 [0]),
        .I3(\slv_rdata_reg[12]_0 [1]),
        .I4(\slv_rdata_reg[12]_2 ),
        .I5(s_axi_aresetn),
        .O(\slv_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEF322F3)) 
    \slv_rdata[1]_i_11 
       (.I0(adc01_ds_control_0[1]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_control_0[1]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_control_0[1]),
        .O(\adc01_ds_control_0_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_9 
       (.I0(adc03_ds_enable_0[1]),
        .I1(adc01_ds_enable_0[1]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[1]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[1]),
        .O(\adc03_ds_enable_0_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[2]_i_7 
       (.I0(adc03_ds_enable_0[2]),
        .I1(adc01_ds_enable_0[2]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[2]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[2]),
        .O(\adc03_ds_enable_0_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[2]_i_8 
       (.I0(adc01_ds_inc_0[2]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[2]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[2]),
        .O(\adc01_ds_inc_0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[3]_i_7 
       (.I0(adc03_ds_enable_0[3]),
        .I1(adc01_ds_enable_0[3]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[3]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[3]),
        .O(\adc03_ds_enable_0_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[3]_i_9 
       (.I0(adc01_ds_inc_0[3]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[3]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[3]),
        .O(\adc01_ds_inc_0_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[4]_i_6 
       (.I0(adc01_ds_inc_0[4]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[4]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[4]),
        .O(\adc01_ds_inc_0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[4]_i_8 
       (.I0(adc03_ds_enable_0[4]),
        .I1(adc01_ds_enable_0[4]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[4]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[4]),
        .O(\adc03_ds_enable_0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[5]_i_6 
       (.I0(adc03_ds_enable_0[5]),
        .I1(adc01_ds_enable_0[5]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[5]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[5]),
        .O(\adc03_ds_enable_0_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[5]_i_7 
       (.I0(adc01_ds_inc_0[5]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[5]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[5]),
        .O(\adc01_ds_inc_0_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[6]_i_6 
       (.I0(adc03_ds_enable_0[6]),
        .I1(adc01_ds_enable_0[6]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[6]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[6]),
        .O(\adc03_ds_enable_0_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[6]_i_7 
       (.I0(adc01_ds_inc_0[6]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[6]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[6]),
        .O(\adc01_ds_inc_0_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h110CDD0C)) 
    \slv_rdata[7]_i_11 
       (.I0(adc01_ds_inc_0[7]),
        .I1(\slv_rdata_reg[12]_0 [3]),
        .I2(adc02_ds_inc_0[7]),
        .I3(\slv_rdata_reg[12]_0 [2]),
        .I4(adc03_ds_inc_0[7]),
        .O(\adc01_ds_inc_0_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[7]_i_9 
       (.I0(adc03_ds_enable_0[7]),
        .I1(adc01_ds_enable_0[7]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_enable_0[7]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_enable_0[7]),
        .O(\adc03_ds_enable_0_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[8]_i_3__0 
       (.I0(adc03_ds_inc_0[8]),
        .I1(adc01_ds_inc_0[8]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_inc_0[8]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_inc_0[8]),
        .O(\adc03_ds_inc_0_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[9]_i_3 
       (.I0(adc03_ds_inc_0[9]),
        .I1(adc01_ds_inc_0[9]),
        .I2(\slv_rdata_reg[12]_0 [2]),
        .I3(adc02_ds_inc_0[9]),
        .I4(\slv_rdata_reg[12]_0 [3]),
        .I5(adc00_ds_inc_0[9]),
        .O(\adc03_ds_inc_0_reg[9]_0 ));
  FDRE \slv_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[0]_1 ),
        .Q(slv_rdata[0]),
        .R(\slv_rdata_reg[0]_0 ));
  FDRE \slv_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(D[2]),
        .Q(slv_rdata[10]),
        .R(1'b0));
  FDRE \slv_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(D[3]),
        .Q(slv_rdata[11]),
        .R(1'b0));
  FDRE \slv_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[12]_1 ),
        .Q(slv_rdata[12]),
        .R(\slv_rdata[15]_i_1_n_0 ));
  FDRE \slv_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[13]_0 ),
        .Q(slv_rdata[13]),
        .R(\slv_rdata[15]_i_1_n_0 ));
  FDRE \slv_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[14]_0 ),
        .Q(slv_rdata[14]),
        .R(\slv_rdata[15]_i_1_n_0 ));
  FDRE \slv_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[15]_0 ),
        .Q(slv_rdata[15]),
        .R(\slv_rdata[15]_i_1_n_0 ));
  FDRE \slv_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[1]_0 ),
        .Q(slv_rdata[1]),
        .R(\slv_rdata_reg[0]_0 ));
  FDRE \slv_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[2]_1 ),
        .Q(slv_rdata[2]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[3]_0 ),
        .Q(slv_rdata[3]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[4]_0 ),
        .Q(slv_rdata[4]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[5]_0 ),
        .Q(slv_rdata[5]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[6]_0 ),
        .Q(slv_rdata[6]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[7]_0 ),
        .Q(slv_rdata[7]),
        .R(\slv_rdata_reg[2]_0 ));
  FDRE \slv_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(D[0]),
        .Q(slv_rdata[8]),
        .R(1'b0));
  FDRE \slv_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(D[1]),
        .Q(slv_rdata[9]),
        .R(1'b0));
  FDRE slv_rden_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc0slv_rden),
        .Q(slv_rden_r),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\slv_wdata_r_internal_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\slv_wdata_r_internal_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\slv_wdata_r_internal_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\slv_wdata_r_internal_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\slv_wdata_r_internal_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\slv_wdata_r_internal_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\slv_wdata_r_internal_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\slv_wdata_r_internal_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\slv_wdata_r_internal_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\slv_wdata_r_internal_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\slv_wdata_r_internal_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\slv_wdata_r_internal_reg_n_0_[9] ),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc1_rfadc_exdes_ctrl_axi
   (slv_wren_done_pulse,
    slv_wren_clk2,
    slv_rden_r,
    Q,
    \adc11_ds_inc_0_reg[8]_0 ,
    \adc12_ds_inc_0_reg[7]_0 ,
    \adc10_ds_inc_0_reg[7]_0 ,
    \adc12_ds_enable_0_reg[2]_0 ,
    \adc12_ds_enable_0_reg[7]_0 ,
    clk1_ready_pulse_reg,
    \adc11_ds_enable_0_reg[2]_0 ,
    \adc11_ds_enable_0_reg[7]_0 ,
    \adc13_ds_inc_0_reg[8]_0 ,
    \adc13_ds_inc_0_reg[2]_0 ,
    \adc13_ds_enable_0_reg[7]_0 ,
    \adc10_ds_type_0_reg[2]_0 ,
    \adc10_ds_enable_0_reg[7]_0 ,
    \slv_rdata_reg[3]_0 ,
    \slv_rdata_reg[1]_0 ,
    \slv_rdata_reg[0]_0 ,
    \slv_rdata_reg[8]_0 ,
    \slv_rdata_reg[7]_0 ,
    \slv_rdata_reg[6]_0 ,
    \slv_rdata_reg[5]_0 ,
    \slv_rdata_reg[4]_0 ,
    \slv_rdata_reg[2]_0 ,
    \slv_rdata_reg[11]_0 ,
    \slv_rdata_reg[10]_0 ,
    \slv_rdata_reg[9]_0 ,
    s_axi_aclk,
    p_0_in,
    adc1slv_rden,
    \slv_rdata_reg[9]_1 ,
    \slv_rdata_reg[2]_1 ,
    adc_ds_axi_map_wready,
    s_axi_wvalid,
    \slv_rdata_reg[2]_2 ,
    \adc10_ds_enable_0_reg[0]_0 ,
    \adc12_ds_type_0_reg[0]_0 ,
    \adc12_ds_inc_0_reg[0]_0 ,
    \adc10_ds_type_0_reg[0]_0 ,
    \adc12_ds_control_0_reg[0]_0 ,
    \adc12_ds_enable_0_reg[0]_0 ,
    \adc11_ds_control_0_reg[0]_0 ,
    \adc13_ds_type_0_reg[0]_0 ,
    \adc13_ds_inc_0_reg[0]_0 ,
    \slv_rdata_reg[2]_3 ,
    adc1axi_map_wready,
    E,
    s_axi_wdata,
    \adc10_ds_inc_0_reg[11]_0 ,
    \adc10_ds_control_0_reg[1]_0 ,
    \adc11_ds_enable_0_reg[7]_1 ,
    \adc11_ds_inc_0_reg[11]_0 ,
    \adc11_ds_type_0_reg[3]_0 ,
    \adc13_ds_enable_0_reg[7]_1 ,
    \adc13_ds_control_0_reg[1]_0 ,
    \slv_rdata_reg[0]_1 ,
    s_axi_aresetn,
    \slv_rdata_reg[2]_4 ,
    \slv_rdata_reg[8]_1 ,
    \slv_rdata_reg[7]_1 ,
    \slv_rdata_reg[6]_1 ,
    \slv_rdata_reg[5]_1 ,
    \slv_rdata_reg[4]_1 ,
    \slv_rdata_reg[2]_5 ,
    \slv_rdata_reg[9]_2 );
  output slv_wren_done_pulse;
  output slv_wren_clk2;
  output slv_rden_r;
  output [3:0]Q;
  output [4:0]\adc11_ds_inc_0_reg[8]_0 ;
  output [3:0]\adc12_ds_inc_0_reg[7]_0 ;
  output [4:0]\adc10_ds_inc_0_reg[7]_0 ;
  output \adc12_ds_enable_0_reg[2]_0 ;
  output [3:0]\adc12_ds_enable_0_reg[7]_0 ;
  output clk1_ready_pulse_reg;
  output \adc11_ds_enable_0_reg[2]_0 ;
  output [3:0]\adc11_ds_enable_0_reg[7]_0 ;
  output \adc13_ds_inc_0_reg[8]_0 ;
  output \adc13_ds_inc_0_reg[2]_0 ;
  output [3:0]\adc13_ds_enable_0_reg[7]_0 ;
  output [0:0]\adc10_ds_type_0_reg[2]_0 ;
  output [4:0]\adc10_ds_enable_0_reg[7]_0 ;
  output \slv_rdata_reg[3]_0 ;
  output \slv_rdata_reg[1]_0 ;
  output \slv_rdata_reg[0]_0 ;
  output \slv_rdata_reg[8]_0 ;
  output \slv_rdata_reg[7]_0 ;
  output \slv_rdata_reg[6]_0 ;
  output \slv_rdata_reg[5]_0 ;
  output \slv_rdata_reg[4]_0 ;
  output \slv_rdata_reg[2]_0 ;
  output \slv_rdata_reg[11]_0 ;
  output \slv_rdata_reg[10]_0 ;
  output \slv_rdata_reg[9]_0 ;
  input s_axi_aclk;
  input p_0_in;
  input adc1slv_rden;
  input [3:0]\slv_rdata_reg[9]_1 ;
  input \slv_rdata_reg[2]_1 ;
  input adc_ds_axi_map_wready;
  input s_axi_wvalid;
  input \slv_rdata_reg[2]_2 ;
  input \adc10_ds_enable_0_reg[0]_0 ;
  input \adc12_ds_type_0_reg[0]_0 ;
  input \adc12_ds_inc_0_reg[0]_0 ;
  input \adc10_ds_type_0_reg[0]_0 ;
  input \adc12_ds_control_0_reg[0]_0 ;
  input \adc12_ds_enable_0_reg[0]_0 ;
  input \adc11_ds_control_0_reg[0]_0 ;
  input \adc13_ds_type_0_reg[0]_0 ;
  input \adc13_ds_inc_0_reg[0]_0 ;
  input \slv_rdata_reg[2]_3 ;
  input adc1axi_map_wready;
  input [0:0]E;
  input [11:0]s_axi_wdata;
  input [0:0]\adc10_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc10_ds_control_0_reg[1]_0 ;
  input [0:0]\adc11_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc11_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc11_ds_type_0_reg[3]_0 ;
  input [0:0]\adc13_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc13_ds_control_0_reg[1]_0 ;
  input \slv_rdata_reg[0]_1 ;
  input s_axi_aresetn;
  input \slv_rdata_reg[2]_4 ;
  input \slv_rdata_reg[8]_1 ;
  input \slv_rdata_reg[7]_1 ;
  input \slv_rdata_reg[6]_1 ;
  input \slv_rdata_reg[5]_1 ;
  input \slv_rdata_reg[4]_1 ;
  input \slv_rdata_reg[2]_5 ;
  input \slv_rdata_reg[9]_2 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]adc10_ds_control_0;
  wire [0:0]\adc10_ds_control_0_reg[1]_0 ;
  wire [3:0]adc10_ds_enable_0;
  wire \adc10_ds_enable_0_reg[0]_0 ;
  wire [4:0]\adc10_ds_enable_0_reg[7]_0 ;
  wire [11:0]adc10_ds_inc_0;
  wire [0:0]\adc10_ds_inc_0_reg[11]_0 ;
  wire [4:0]\adc10_ds_inc_0_reg[7]_0 ;
  wire [3:0]adc10_ds_type_0;
  wire \adc10_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc10_ds_type_0_reg[2]_0 ;
  wire [1:0]adc11_ds_control_0;
  wire \adc11_ds_control_0_reg[0]_0 ;
  wire [3:0]adc11_ds_enable_0;
  wire \adc11_ds_enable_0_reg[2]_0 ;
  wire [3:0]\adc11_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc11_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc11_ds_inc_0;
  wire [0:0]\adc11_ds_inc_0_reg[11]_0 ;
  wire [4:0]\adc11_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc11_ds_type_0;
  wire [0:0]\adc11_ds_type_0_reg[3]_0 ;
  wire [1:0]adc12_ds_control_0;
  wire \adc12_ds_control_0_reg[0]_0 ;
  wire [3:0]adc12_ds_enable_0;
  wire \adc12_ds_enable_0_reg[0]_0 ;
  wire \adc12_ds_enable_0_reg[2]_0 ;
  wire [3:0]\adc12_ds_enable_0_reg[7]_0 ;
  wire [11:0]adc12_ds_inc_0;
  wire \adc12_ds_inc_0_reg[0]_0 ;
  wire [3:0]\adc12_ds_inc_0_reg[7]_0 ;
  wire [3:0]adc12_ds_type_0;
  wire \adc12_ds_type_0_reg[0]_0 ;
  wire [1:0]adc13_ds_control_0;
  wire [0:0]\adc13_ds_control_0_reg[1]_0 ;
  wire [3:0]adc13_ds_enable_0;
  wire [3:0]\adc13_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc13_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc13_ds_inc_0;
  wire \adc13_ds_inc_0_reg[0]_0 ;
  wire \adc13_ds_inc_0_reg[2]_0 ;
  wire \adc13_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc13_ds_type_0;
  wire \adc13_ds_type_0_reg[0]_0 ;
  wire adc1axi_map_wready;
  wire adc1slv_rden;
  wire adc_ds_axi_map_wready;
  wire clk1_ready_pulse_reg;
  wire clk2clk_handshake_pulse_gen_i_n_10;
  wire clk2clk_handshake_pulse_gen_i_n_11;
  wire clk2clk_handshake_pulse_gen_i_n_12;
  wire clk2clk_handshake_pulse_gen_i_n_3;
  wire clk2clk_handshake_pulse_gen_i_n_4;
  wire clk2clk_handshake_pulse_gen_i_n_5;
  wire clk2clk_handshake_pulse_gen_i_n_6;
  wire clk2clk_handshake_pulse_gen_i_n_7;
  wire clk2clk_handshake_pulse_gen_i_n_8;
  wire clk2clk_handshake_pulse_gen_i_n_9;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire slv_access_valid_hold;
  wire \slv_rdata[0]_i_4__0_n_0 ;
  wire \slv_rdata[0]_i_5__0_n_0 ;
  wire \slv_rdata[0]_i_6__0_n_0 ;
  wire \slv_rdata[0]_i_7__0_n_0 ;
  wire \slv_rdata[10]_i_1__2_n_0 ;
  wire \slv_rdata[11]_i_2_n_0 ;
  wire \slv_rdata[1]_i_4__0_n_0 ;
  wire \slv_rdata[1]_i_5__0_n_0 ;
  wire \slv_rdata[1]_i_6__0_n_0 ;
  wire \slv_rdata[1]_i_7__0_n_0 ;
  wire \slv_rdata[3]_i_5__0_n_0 ;
  wire \slv_rdata[3]_i_6__0_n_0 ;
  wire \slv_rdata[3]_i_7__0_n_0 ;
  wire \slv_rdata[3]_i_8_n_0 ;
  wire \slv_rdata[9]_i_1__2_n_0 ;
  wire \slv_rdata_reg[0]_0 ;
  wire \slv_rdata_reg[0]_1 ;
  wire \slv_rdata_reg[0]_i_1_n_0 ;
  wire \slv_rdata_reg[0]_i_2_n_0 ;
  wire \slv_rdata_reg[0]_i_3_n_0 ;
  wire \slv_rdata_reg[10]_0 ;
  wire \slv_rdata_reg[11]_0 ;
  wire \slv_rdata_reg[1]_0 ;
  wire \slv_rdata_reg[1]_i_1_n_0 ;
  wire \slv_rdata_reg[1]_i_2_n_0 ;
  wire \slv_rdata_reg[1]_i_3_n_0 ;
  wire \slv_rdata_reg[2]_0 ;
  wire \slv_rdata_reg[2]_1 ;
  wire \slv_rdata_reg[2]_2 ;
  wire \slv_rdata_reg[2]_3 ;
  wire \slv_rdata_reg[2]_4 ;
  wire \slv_rdata_reg[2]_5 ;
  wire \slv_rdata_reg[3]_0 ;
  wire \slv_rdata_reg[3]_i_2_n_0 ;
  wire \slv_rdata_reg[3]_i_3_n_0 ;
  wire \slv_rdata_reg[3]_i_4_n_0 ;
  wire \slv_rdata_reg[4]_0 ;
  wire \slv_rdata_reg[4]_1 ;
  wire \slv_rdata_reg[5]_0 ;
  wire \slv_rdata_reg[5]_1 ;
  wire \slv_rdata_reg[6]_0 ;
  wire \slv_rdata_reg[6]_1 ;
  wire \slv_rdata_reg[7]_0 ;
  wire \slv_rdata_reg[7]_1 ;
  wire \slv_rdata_reg[8]_0 ;
  wire \slv_rdata_reg[8]_1 ;
  wire \slv_rdata_reg[9]_0 ;
  wire [3:0]\slv_rdata_reg[9]_1 ;
  wire \slv_rdata_reg[9]_2 ;
  wire slv_rden_r;
  wire \slv_wdata_r_internal_reg_n_0_[0] ;
  wire \slv_wdata_r_internal_reg_n_0_[10] ;
  wire \slv_wdata_r_internal_reg_n_0_[11] ;
  wire \slv_wdata_r_internal_reg_n_0_[1] ;
  wire \slv_wdata_r_internal_reg_n_0_[2] ;
  wire \slv_wdata_r_internal_reg_n_0_[3] ;
  wire \slv_wdata_r_internal_reg_n_0_[4] ;
  wire \slv_wdata_r_internal_reg_n_0_[5] ;
  wire \slv_wdata_r_internal_reg_n_0_[6] ;
  wire \slv_wdata_r_internal_reg_n_0_[7] ;
  wire \slv_wdata_r_internal_reg_n_0_[8] ;
  wire \slv_wdata_r_internal_reg_n_0_[9] ;
  wire slv_wren_clk2;
  wire slv_wren_done_pulse;

  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc10_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc10_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc10_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc10_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc10_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc10_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc10_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc10_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc10_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc10_ds_enable_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc10_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc10_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc10_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc10_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc10_ds_inc_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc10_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc10_ds_inc_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc10_ds_inc_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc10_ds_inc_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc10_ds_inc_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc10_ds_inc_0[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc10_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc10_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc10_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc10_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc10_ds_type_0_reg[2]_0 ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc10_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc10_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc11_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc11_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc11_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc11_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc11_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc11_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc11_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc11_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc11_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc11_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc11_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc11_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc11_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc11_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc11_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc11_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc11_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc11_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc11_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc11_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc11_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc11_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc11_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc11_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc11_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc11_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc11_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc11_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc12_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc12_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc12_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc12_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc12_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc12_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc12_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc12_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc12_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc12_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc12_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc12_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc12_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc12_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc12_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc12_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc12_ds_inc_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc12_ds_inc_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc12_ds_inc_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc12_ds_inc_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc12_ds_inc_0[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc12_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc12_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc12_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc12_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc12_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc12_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc13_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc13_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc13_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc13_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc13_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc13_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc13_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc13_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc13_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc13_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc13_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc13_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc13_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc13_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc13_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc13_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc13_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(adc13_ds_inc_0[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc13_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc13_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc13_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc13_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc13_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc13_ds_type_0[3]),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2 clk2clk_handshake_pulse_gen_i
       (.E(clk2clk_handshake_pulse_gen_i_n_3),
        .\adc10_ds_enable_0_reg[0] (\adc10_ds_enable_0_reg[0]_0 ),
        .\adc10_ds_type_0_reg[0] (\adc10_ds_type_0_reg[0]_0 ),
        .\adc11_ds_control_0_reg[0] (\adc11_ds_control_0_reg[0]_0 ),
        .\adc12_ds_control_0_reg[0] (\adc12_ds_control_0_reg[0]_0 ),
        .\adc12_ds_enable_0_reg[0] (\adc12_ds_enable_0_reg[0]_0 ),
        .\adc12_ds_inc_0_reg[0] (\adc12_ds_inc_0_reg[0]_0 ),
        .\adc12_ds_type_0_reg[0] (\adc12_ds_type_0_reg[0]_0 ),
        .\adc13_ds_inc_0_reg[0] (\adc13_ds_inc_0_reg[0]_0 ),
        .\adc13_ds_type_0_reg[0] (\adc13_ds_type_0_reg[0]_0 ),
        .adc1axi_map_wready(adc1axi_map_wready),
        .adc1slv_rden(adc1slv_rden),
        .adc_ds_axi_map_wready(adc_ds_axi_map_wready),
        .clk1_ready_pulse_reg_0(clk1_ready_pulse_reg),
        .clk2_valid_pulse_reg_0(slv_wren_clk2),
        .clk2_valid_pulse_reg_1(clk2clk_handshake_pulse_gen_i_n_4),
        .clk2_valid_pulse_reg_2(clk2clk_handshake_pulse_gen_i_n_5),
        .clk2_valid_pulse_reg_3(clk2clk_handshake_pulse_gen_i_n_6),
        .clk2_valid_pulse_reg_4(clk2clk_handshake_pulse_gen_i_n_7),
        .clk2_valid_pulse_reg_5(clk2clk_handshake_pulse_gen_i_n_8),
        .clk2_valid_pulse_reg_6(clk2clk_handshake_pulse_gen_i_n_9),
        .clk2_valid_pulse_reg_7(clk2clk_handshake_pulse_gen_i_n_10),
        .clk2_valid_pulse_reg_8(clk2clk_handshake_pulse_gen_i_n_11),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_rden_r),
        .slv_wren_done_pulse(slv_wren_done_pulse),
        .src_in(slv_access_valid_hold),
        .\syncstages_ff_reg[4] (clk2clk_handshake_pulse_gen_i_n_12));
  FDRE slv_access_valid_hold_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2clk_handshake_pulse_gen_i_n_12),
        .Q(slv_access_valid_hold),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_4__0 
       (.I0(adc10_ds_control_0[0]),
        .I1(adc10_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc10_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc10_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_5__0 
       (.I0(adc11_ds_control_0[0]),
        .I1(adc11_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc11_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc11_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_6__0 
       (.I0(adc12_ds_control_0[0]),
        .I1(adc12_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc12_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc12_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_7__0 
       (.I0(adc13_ds_control_0[0]),
        .I1(adc13_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc13_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc13_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0AACC00F0AACC)) 
    \slv_rdata[10]_i_1__2 
       (.I0(adc12_ds_inc_0[10]),
        .I1(adc10_ds_inc_0[10]),
        .I2(adc11_ds_inc_0[10]),
        .I3(\slv_rdata_reg[9]_1 [3]),
        .I4(\slv_rdata_reg[9]_1 [2]),
        .I5(adc13_ds_inc_0[10]),
        .O(\slv_rdata[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \slv_rdata[11]_i_2 
       (.I0(adc13_ds_inc_0[11]),
        .I1(adc11_ds_inc_0[11]),
        .I2(adc12_ds_inc_0[11]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc10_ds_inc_0[11]),
        .O(\slv_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_4__0 
       (.I0(adc10_ds_control_0[1]),
        .I1(adc10_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc10_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc10_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_5__0 
       (.I0(adc11_ds_control_0[1]),
        .I1(adc11_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc11_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc11_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_6__0 
       (.I0(adc12_ds_control_0[1]),
        .I1(adc12_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc12_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc12_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_7__0 
       (.I0(adc13_ds_control_0[1]),
        .I1(adc13_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc13_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc13_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E2FFFFFFFF)) 
    \slv_rdata[2]_i_3__2 
       (.I0(adc12_ds_enable_0[2]),
        .I1(\slv_rdata_reg[9]_1 [0]),
        .I2(adc12_ds_inc_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(adc12_ds_type_0[2]),
        .I5(\slv_rdata_reg[2]_1 ),
        .O(\adc12_ds_enable_0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF550F33)) 
    \slv_rdata[2]_i_4__1 
       (.I0(adc13_ds_inc_0[2]),
        .I1(adc13_ds_enable_0[2]),
        .I2(adc13_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(\slv_rdata_reg[2]_3 ),
        .O(\adc13_ds_inc_0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCC000C44CCCC0C44)) 
    \slv_rdata[2]_i_5 
       (.I0(adc11_ds_enable_0[2]),
        .I1(\slv_rdata_reg[2]_2 ),
        .I2(adc11_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc11_ds_inc_0[2]),
        .O(\adc11_ds_enable_0_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_5__0 
       (.I0(adc10_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc10_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc10_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_6__0 
       (.I0(adc11_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc11_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc11_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_7__0 
       (.I0(adc12_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc12_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc12_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_8 
       (.I0(adc13_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc13_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc13_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40704373)) 
    \slv_rdata[8]_i_2__0 
       (.I0(adc13_ds_inc_0[8]),
        .I1(\slv_rdata_reg[9]_1 [2]),
        .I2(\slv_rdata_reg[9]_1 [3]),
        .I3(adc12_ds_inc_0[8]),
        .I4(adc10_ds_inc_0[8]),
        .O(\adc13_ds_inc_0_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \slv_rdata[9]_i_1__2 
       (.I0(adc13_ds_inc_0[9]),
        .I1(adc11_ds_inc_0[9]),
        .I2(adc12_ds_inc_0[9]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc10_ds_inc_0[9]),
        .O(\slv_rdata[9]_i_1__2_n_0 ));
  FDRE \slv_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[0]_i_1_n_0 ),
        .Q(\slv_rdata_reg[0]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[0]_i_1 
       (.I0(\slv_rdata_reg[0]_i_2_n_0 ),
        .I1(\slv_rdata_reg[0]_i_3_n_0 ),
        .O(\slv_rdata_reg[0]_i_1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[0]_i_2 
       (.I0(\slv_rdata[0]_i_4__0_n_0 ),
        .I1(\slv_rdata[0]_i_5__0_n_0 ),
        .O(\slv_rdata_reg[0]_i_2_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[0]_i_3 
       (.I0(\slv_rdata[0]_i_6__0_n_0 ),
        .I1(\slv_rdata[0]_i_7__0_n_0 ),
        .O(\slv_rdata_reg[0]_i_3_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[10]_i_1__2_n_0 ),
        .Q(\slv_rdata_reg[10]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[11]_i_2_n_0 ),
        .Q(\slv_rdata_reg[11]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[1]_i_1_n_0 ),
        .Q(\slv_rdata_reg[1]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[1]_i_1 
       (.I0(\slv_rdata_reg[1]_i_2_n_0 ),
        .I1(\slv_rdata_reg[1]_i_3_n_0 ),
        .O(\slv_rdata_reg[1]_i_1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[1]_i_2 
       (.I0(\slv_rdata[1]_i_4__0_n_0 ),
        .I1(\slv_rdata[1]_i_5__0_n_0 ),
        .O(\slv_rdata_reg[1]_i_2_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[1]_i_3 
       (.I0(\slv_rdata[1]_i_6__0_n_0 ),
        .I1(\slv_rdata[1]_i_7__0_n_0 ),
        .O(\slv_rdata_reg[1]_i_3_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[2]_5 ),
        .Q(\slv_rdata_reg[2]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[3]_i_2_n_0 ),
        .Q(\slv_rdata_reg[3]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[3]_i_2 
       (.I0(\slv_rdata_reg[3]_i_3_n_0 ),
        .I1(\slv_rdata_reg[3]_i_4_n_0 ),
        .O(\slv_rdata_reg[3]_i_2_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[3]_i_3 
       (.I0(\slv_rdata[3]_i_5__0_n_0 ),
        .I1(\slv_rdata[3]_i_6__0_n_0 ),
        .O(\slv_rdata_reg[3]_i_3_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[3]_i_4 
       (.I0(\slv_rdata[3]_i_7__0_n_0 ),
        .I1(\slv_rdata[3]_i_8_n_0 ),
        .O(\slv_rdata_reg[3]_i_4_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[4]_1 ),
        .Q(\slv_rdata_reg[4]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[5]_1 ),
        .Q(\slv_rdata_reg[5]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[6]_1 ),
        .Q(\slv_rdata_reg[6]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[7]_1 ),
        .Q(\slv_rdata_reg[7]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[8]_1 ),
        .Q(\slv_rdata_reg[8]_0 ),
        .R(\slv_rdata_reg[2]_4 ));
  FDRE \slv_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[9]_i_1__2_n_0 ),
        .Q(\slv_rdata_reg[9]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE slv_rden_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc1slv_rden),
        .Q(slv_rden_r),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\slv_wdata_r_internal_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\slv_wdata_r_internal_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\slv_wdata_r_internal_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\slv_wdata_r_internal_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\slv_wdata_r_internal_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\slv_wdata_r_internal_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\slv_wdata_r_internal_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\slv_wdata_r_internal_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\slv_wdata_r_internal_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\slv_wdata_r_internal_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\slv_wdata_r_internal_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\slv_wdata_r_internal_reg_n_0_[9] ),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc2_rfadc_exdes_ctrl_axi
   (slv_wren_clk2,
    slv_rden_r,
    Q,
    \adc20_ds_inc_0_reg[8]_0 ,
    \adc22_ds_inc_0_reg[8]_0 ,
    \adc21_ds_inc_0_reg[8]_0 ,
    slv_rden_r_reg_0,
    \adc21_ds_inc_0_reg[2]_0 ,
    \adc21_ds_enable_0_reg[7]_0 ,
    \adc23_ds_inc_0_reg[2]_0 ,
    \adc23_ds_enable_0_reg[7]_0 ,
    slv_rden_r_reg_1,
    \adc22_ds_type_0_reg[2]_0 ,
    \adc22_ds_enable_0_reg[7]_0 ,
    \adc20_ds_type_0_reg[2]_0 ,
    \adc20_ds_enable_0_reg[7]_0 ,
    \slv_rdata_reg[3]_0 ,
    \slv_rdata_reg[1]_0 ,
    \slv_rdata_reg[0]_0 ,
    \slv_rdata_reg[8]_0 ,
    \slv_rdata_reg[7]_0 ,
    \slv_rdata_reg[6]_0 ,
    \slv_rdata_reg[5]_0 ,
    \slv_rdata_reg[4]_0 ,
    \slv_rdata_reg[2]_0 ,
    \slv_rdata_reg[11]_0 ,
    \slv_rdata_reg[10]_0 ,
    \slv_rdata_reg[9]_0 ,
    s_axi_aclk,
    p_0_in,
    adc2slv_rden,
    \slv_rdata_reg[9]_1 ,
    \axi_rresp[1]_i_2 ,
    slv_rden_r_0,
    slv_wren_done_pulse,
    \slv_rdata_reg[2]_1 ,
    \adc20_ds_enable_0_reg[0]_0 ,
    \adc22_ds_type_0_reg[0]_0 ,
    \adc22_ds_inc_0_reg[0]_0 ,
    \adc20_ds_type_0_reg[0]_0 ,
    \adc22_ds_control_0_reg[0]_0 ,
    \adc22_ds_enable_0_reg[0]_0 ,
    \adc21_ds_control_0_reg[0]_0 ,
    \adc23_ds_type_0_reg[0]_0 ,
    \adc23_ds_inc_0_reg[0]_0 ,
    \slv_rdata_reg[2]_2 ,
    slv_wren_done_pulse_1,
    slv_rden_r_2,
    slv_wren_done_pulse_3,
    slv_rden_r_4,
    s_axi_wvalid,
    adc2axi_map_wready,
    E,
    s_axi_wdata,
    \adc20_ds_inc_0_reg[11]_0 ,
    \adc20_ds_control_0_reg[1]_0 ,
    \adc21_ds_enable_0_reg[7]_1 ,
    \adc21_ds_inc_0_reg[11]_0 ,
    \adc21_ds_type_0_reg[3]_0 ,
    \adc23_ds_enable_0_reg[7]_1 ,
    \adc23_ds_control_0_reg[1]_0 ,
    \slv_rdata_reg[0]_1 ,
    s_axi_aresetn,
    \slv_rdata_reg[2]_3 ,
    \slv_rdata_reg[8]_1 ,
    \slv_rdata_reg[7]_1 ,
    \slv_rdata_reg[6]_1 ,
    \slv_rdata_reg[5]_1 ,
    \slv_rdata_reg[4]_1 ,
    \slv_rdata_reg[2]_4 ,
    \slv_rdata_reg[9]_2 );
  output slv_wren_clk2;
  output slv_rden_r;
  output [4:0]Q;
  output [5:0]\adc20_ds_inc_0_reg[8]_0 ;
  output [5:0]\adc22_ds_inc_0_reg[8]_0 ;
  output [4:0]\adc21_ds_inc_0_reg[8]_0 ;
  output slv_rden_r_reg_0;
  output \adc21_ds_inc_0_reg[2]_0 ;
  output [3:0]\adc21_ds_enable_0_reg[7]_0 ;
  output \adc23_ds_inc_0_reg[2]_0 ;
  output [3:0]\adc23_ds_enable_0_reg[7]_0 ;
  output slv_rden_r_reg_1;
  output [0:0]\adc22_ds_type_0_reg[2]_0 ;
  output [4:0]\adc22_ds_enable_0_reg[7]_0 ;
  output [0:0]\adc20_ds_type_0_reg[2]_0 ;
  output [4:0]\adc20_ds_enable_0_reg[7]_0 ;
  output \slv_rdata_reg[3]_0 ;
  output \slv_rdata_reg[1]_0 ;
  output \slv_rdata_reg[0]_0 ;
  output \slv_rdata_reg[8]_0 ;
  output \slv_rdata_reg[7]_0 ;
  output \slv_rdata_reg[6]_0 ;
  output \slv_rdata_reg[5]_0 ;
  output \slv_rdata_reg[4]_0 ;
  output \slv_rdata_reg[2]_0 ;
  output \slv_rdata_reg[11]_0 ;
  output \slv_rdata_reg[10]_0 ;
  output \slv_rdata_reg[9]_0 ;
  input s_axi_aclk;
  input p_0_in;
  input adc2slv_rden;
  input [3:0]\slv_rdata_reg[9]_1 ;
  input [0:0]\axi_rresp[1]_i_2 ;
  input slv_rden_r_0;
  input slv_wren_done_pulse;
  input \slv_rdata_reg[2]_1 ;
  input \adc20_ds_enable_0_reg[0]_0 ;
  input \adc22_ds_type_0_reg[0]_0 ;
  input \adc22_ds_inc_0_reg[0]_0 ;
  input \adc20_ds_type_0_reg[0]_0 ;
  input \adc22_ds_control_0_reg[0]_0 ;
  input \adc22_ds_enable_0_reg[0]_0 ;
  input \adc21_ds_control_0_reg[0]_0 ;
  input \adc23_ds_type_0_reg[0]_0 ;
  input \adc23_ds_inc_0_reg[0]_0 ;
  input \slv_rdata_reg[2]_2 ;
  input slv_wren_done_pulse_1;
  input slv_rden_r_2;
  input slv_wren_done_pulse_3;
  input slv_rden_r_4;
  input s_axi_wvalid;
  input adc2axi_map_wready;
  input [0:0]E;
  input [11:0]s_axi_wdata;
  input [0:0]\adc20_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc20_ds_control_0_reg[1]_0 ;
  input [0:0]\adc21_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc21_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc21_ds_type_0_reg[3]_0 ;
  input [0:0]\adc23_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc23_ds_control_0_reg[1]_0 ;
  input \slv_rdata_reg[0]_1 ;
  input s_axi_aresetn;
  input \slv_rdata_reg[2]_3 ;
  input \slv_rdata_reg[8]_1 ;
  input \slv_rdata_reg[7]_1 ;
  input \slv_rdata_reg[6]_1 ;
  input \slv_rdata_reg[5]_1 ;
  input \slv_rdata_reg[4]_1 ;
  input \slv_rdata_reg[2]_4 ;
  input \slv_rdata_reg[9]_2 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]adc20_ds_control_0;
  wire [0:0]\adc20_ds_control_0_reg[1]_0 ;
  wire [3:0]adc20_ds_enable_0;
  wire \adc20_ds_enable_0_reg[0]_0 ;
  wire [4:0]\adc20_ds_enable_0_reg[7]_0 ;
  wire [11:0]adc20_ds_inc_0;
  wire [0:0]\adc20_ds_inc_0_reg[11]_0 ;
  wire [5:0]\adc20_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc20_ds_type_0;
  wire \adc20_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc20_ds_type_0_reg[2]_0 ;
  wire [1:0]adc21_ds_control_0;
  wire \adc21_ds_control_0_reg[0]_0 ;
  wire [3:0]adc21_ds_enable_0;
  wire [3:0]\adc21_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc21_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc21_ds_inc_0;
  wire [0:0]\adc21_ds_inc_0_reg[11]_0 ;
  wire \adc21_ds_inc_0_reg[2]_0 ;
  wire [4:0]\adc21_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc21_ds_type_0;
  wire [0:0]\adc21_ds_type_0_reg[3]_0 ;
  wire [1:0]adc22_ds_control_0;
  wire \adc22_ds_control_0_reg[0]_0 ;
  wire [3:0]adc22_ds_enable_0;
  wire \adc22_ds_enable_0_reg[0]_0 ;
  wire [4:0]\adc22_ds_enable_0_reg[7]_0 ;
  wire [11:0]adc22_ds_inc_0;
  wire \adc22_ds_inc_0_reg[0]_0 ;
  wire [5:0]\adc22_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc22_ds_type_0;
  wire \adc22_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc22_ds_type_0_reg[2]_0 ;
  wire [1:0]adc23_ds_control_0;
  wire [0:0]\adc23_ds_control_0_reg[1]_0 ;
  wire [3:0]adc23_ds_enable_0;
  wire [3:0]\adc23_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc23_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc23_ds_inc_0;
  wire \adc23_ds_inc_0_reg[0]_0 ;
  wire \adc23_ds_inc_0_reg[2]_0 ;
  wire [3:0]adc23_ds_type_0;
  wire \adc23_ds_type_0_reg[0]_0 ;
  wire adc2axi_map_wready;
  wire adc2slv_rden;
  wire [0:0]\axi_rresp[1]_i_2 ;
  wire clk2clk_handshake_pulse_gen_i_n_10;
  wire clk2clk_handshake_pulse_gen_i_n_12;
  wire clk2clk_handshake_pulse_gen_i_n_2;
  wire clk2clk_handshake_pulse_gen_i_n_3;
  wire clk2clk_handshake_pulse_gen_i_n_4;
  wire clk2clk_handshake_pulse_gen_i_n_5;
  wire clk2clk_handshake_pulse_gen_i_n_6;
  wire clk2clk_handshake_pulse_gen_i_n_7;
  wire clk2clk_handshake_pulse_gen_i_n_8;
  wire clk2clk_handshake_pulse_gen_i_n_9;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire slv_access_valid_hold;
  wire \slv_rdata[0]_i_4__1_n_0 ;
  wire \slv_rdata[0]_i_5__1_n_0 ;
  wire \slv_rdata[0]_i_6__1_n_0 ;
  wire \slv_rdata[0]_i_7__1_n_0 ;
  wire \slv_rdata[10]_i_1__1_n_0 ;
  wire \slv_rdata[11]_i_1__2_n_0 ;
  wire \slv_rdata[1]_i_4__1_n_0 ;
  wire \slv_rdata[1]_i_5__1_n_0 ;
  wire \slv_rdata[1]_i_6__1_n_0 ;
  wire \slv_rdata[1]_i_7__1_n_0 ;
  wire \slv_rdata[3]_i_4__1_n_0 ;
  wire \slv_rdata[3]_i_5__1_n_0 ;
  wire \slv_rdata[3]_i_6__1_n_0 ;
  wire \slv_rdata[3]_i_7__1_n_0 ;
  wire \slv_rdata[9]_i_1__1_n_0 ;
  wire \slv_rdata_reg[0]_0 ;
  wire \slv_rdata_reg[0]_1 ;
  wire \slv_rdata_reg[0]_i_1__0_n_0 ;
  wire \slv_rdata_reg[0]_i_2__0_n_0 ;
  wire \slv_rdata_reg[0]_i_3__0_n_0 ;
  wire \slv_rdata_reg[10]_0 ;
  wire \slv_rdata_reg[11]_0 ;
  wire \slv_rdata_reg[1]_0 ;
  wire \slv_rdata_reg[1]_i_1__0_n_0 ;
  wire \slv_rdata_reg[1]_i_2__0_n_0 ;
  wire \slv_rdata_reg[1]_i_3__0_n_0 ;
  wire \slv_rdata_reg[2]_0 ;
  wire \slv_rdata_reg[2]_1 ;
  wire \slv_rdata_reg[2]_2 ;
  wire \slv_rdata_reg[2]_3 ;
  wire \slv_rdata_reg[2]_4 ;
  wire \slv_rdata_reg[3]_0 ;
  wire \slv_rdata_reg[3]_i_1_n_0 ;
  wire \slv_rdata_reg[3]_i_2__0_n_0 ;
  wire \slv_rdata_reg[3]_i_3__0_n_0 ;
  wire \slv_rdata_reg[4]_0 ;
  wire \slv_rdata_reg[4]_1 ;
  wire \slv_rdata_reg[5]_0 ;
  wire \slv_rdata_reg[5]_1 ;
  wire \slv_rdata_reg[6]_0 ;
  wire \slv_rdata_reg[6]_1 ;
  wire \slv_rdata_reg[7]_0 ;
  wire \slv_rdata_reg[7]_1 ;
  wire \slv_rdata_reg[8]_0 ;
  wire \slv_rdata_reg[8]_1 ;
  wire \slv_rdata_reg[9]_0 ;
  wire [3:0]\slv_rdata_reg[9]_1 ;
  wire \slv_rdata_reg[9]_2 ;
  wire slv_rden_r;
  wire slv_rden_r_0;
  wire slv_rden_r_2;
  wire slv_rden_r_4;
  wire slv_rden_r_reg_0;
  wire slv_rden_r_reg_1;
  wire \slv_wdata_r_internal_reg_n_0_[0] ;
  wire \slv_wdata_r_internal_reg_n_0_[10] ;
  wire \slv_wdata_r_internal_reg_n_0_[11] ;
  wire \slv_wdata_r_internal_reg_n_0_[1] ;
  wire \slv_wdata_r_internal_reg_n_0_[2] ;
  wire \slv_wdata_r_internal_reg_n_0_[3] ;
  wire \slv_wdata_r_internal_reg_n_0_[4] ;
  wire \slv_wdata_r_internal_reg_n_0_[5] ;
  wire \slv_wdata_r_internal_reg_n_0_[6] ;
  wire \slv_wdata_r_internal_reg_n_0_[7] ;
  wire \slv_wdata_r_internal_reg_n_0_[8] ;
  wire \slv_wdata_r_internal_reg_n_0_[9] ;
  wire slv_wren_clk2;
  wire slv_wren_done_pulse;
  wire slv_wren_done_pulse_1;
  wire slv_wren_done_pulse_3;

  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc20_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc20_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc20_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc20_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc20_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc20_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc20_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc20_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc20_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_2),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc20_ds_enable_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc20_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc20_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc20_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc20_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc20_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc20_ds_inc_0_reg[8]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc20_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc20_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc20_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc20_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc20_ds_type_0_reg[2]_0 ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc20_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc20_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc21_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc21_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc21_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc21_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc21_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc21_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc21_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc21_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc21_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc21_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc21_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc21_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc21_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc21_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc21_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc21_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc21_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc21_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc21_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc21_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc21_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc21_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc21_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc21_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc21_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc21_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc21_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc21_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc22_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc22_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc22_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc22_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc22_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc22_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc22_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc22_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc22_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc22_ds_enable_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc22_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc22_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc22_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc22_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc22_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc22_ds_inc_0_reg[8]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc22_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc22_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc22_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc22_ds_type_0_reg[2]_0 ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc22_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc22_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc23_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc23_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc23_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc23_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc23_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc23_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc23_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc23_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc23_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc23_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc23_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc23_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc23_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc23_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc23_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc23_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc23_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc23_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc23_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc23_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc23_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc23_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc23_ds_type_0[3]),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3 clk2clk_handshake_pulse_gen_i
       (.E(clk2clk_handshake_pulse_gen_i_n_2),
        .\adc20_ds_enable_0_reg[0] (\adc20_ds_enable_0_reg[0]_0 ),
        .\adc20_ds_type_0_reg[0] (\adc20_ds_type_0_reg[0]_0 ),
        .\adc21_ds_control_0_reg[0] (\adc21_ds_control_0_reg[0]_0 ),
        .\adc22_ds_control_0_reg[0] (\adc22_ds_control_0_reg[0]_0 ),
        .\adc22_ds_enable_0_reg[0] (\adc22_ds_enable_0_reg[0]_0 ),
        .\adc22_ds_inc_0_reg[0] (\adc22_ds_inc_0_reg[0]_0 ),
        .\adc22_ds_type_0_reg[0] (\adc22_ds_type_0_reg[0]_0 ),
        .\adc23_ds_inc_0_reg[0] (\adc23_ds_inc_0_reg[0]_0 ),
        .\adc23_ds_type_0_reg[0] (\adc23_ds_type_0_reg[0]_0 ),
        .adc2axi_map_wready(adc2axi_map_wready),
        .adc2slv_rden(adc2slv_rden),
        .\axi_rresp[1]_i_2 (\axi_rresp[1]_i_2 ),
        .clk2_valid_pulse_reg_0(slv_wren_clk2),
        .clk2_valid_pulse_reg_1(clk2clk_handshake_pulse_gen_i_n_3),
        .clk2_valid_pulse_reg_2(clk2clk_handshake_pulse_gen_i_n_4),
        .clk2_valid_pulse_reg_3(clk2clk_handshake_pulse_gen_i_n_5),
        .clk2_valid_pulse_reg_4(clk2clk_handshake_pulse_gen_i_n_6),
        .clk2_valid_pulse_reg_5(clk2clk_handshake_pulse_gen_i_n_7),
        .clk2_valid_pulse_reg_6(clk2clk_handshake_pulse_gen_i_n_8),
        .clk2_valid_pulse_reg_7(clk2clk_handshake_pulse_gen_i_n_9),
        .clk2_valid_pulse_reg_8(clk2clk_handshake_pulse_gen_i_n_10),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_rden_r),
        .slv_rden_r_0(slv_rden_r_0),
        .slv_rden_r_2(slv_rden_r_2),
        .slv_rden_r_4(slv_rden_r_4),
        .slv_rden_r_reg(slv_rden_r_reg_0),
        .slv_rden_r_reg_0(slv_rden_r_reg_1),
        .slv_wren_done_pulse(slv_wren_done_pulse),
        .slv_wren_done_pulse_1(slv_wren_done_pulse_1),
        .slv_wren_done_pulse_3(slv_wren_done_pulse_3),
        .src_in(slv_access_valid_hold),
        .\syncstages_ff_reg[4] (clk2clk_handshake_pulse_gen_i_n_12));
  FDRE slv_access_valid_hold_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2clk_handshake_pulse_gen_i_n_12),
        .Q(slv_access_valid_hold),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_4__1 
       (.I0(adc20_ds_control_0[0]),
        .I1(adc20_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc20_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc20_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_5__1 
       (.I0(adc21_ds_control_0[0]),
        .I1(adc21_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc21_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc21_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_6__1 
       (.I0(adc22_ds_control_0[0]),
        .I1(adc22_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc22_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc22_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_7__1 
       (.I0(adc23_ds_control_0[0]),
        .I1(adc23_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc23_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc23_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \slv_rdata[10]_i_1__1 
       (.I0(adc23_ds_inc_0[10]),
        .I1(adc21_ds_inc_0[10]),
        .I2(adc22_ds_inc_0[10]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc20_ds_inc_0[10]),
        .O(\slv_rdata[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \slv_rdata[11]_i_1__2 
       (.I0(adc23_ds_inc_0[11]),
        .I1(adc20_ds_inc_0[11]),
        .I2(adc22_ds_inc_0[11]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc21_ds_inc_0[11]),
        .O(\slv_rdata[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_4__1 
       (.I0(adc20_ds_control_0[1]),
        .I1(adc20_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc20_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc20_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_5__1 
       (.I0(adc21_ds_control_0[1]),
        .I1(adc21_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc21_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc21_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_6__1 
       (.I0(adc22_ds_control_0[1]),
        .I1(adc22_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc22_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc22_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_7__1 
       (.I0(adc23_ds_control_0[1]),
        .I1(adc23_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc23_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc23_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF550F33)) 
    \slv_rdata[2]_i_3__1 
       (.I0(adc23_ds_inc_0[2]),
        .I1(adc23_ds_enable_0[2]),
        .I2(adc23_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(\slv_rdata_reg[2]_2 ),
        .O(\adc23_ds_inc_0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCC440C00CC440CCC)) 
    \slv_rdata[2]_i_4__0 
       (.I0(adc21_ds_inc_0[2]),
        .I1(\slv_rdata_reg[2]_1 ),
        .I2(adc21_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc21_ds_enable_0[2]),
        .O(\adc21_ds_inc_0_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_4__1 
       (.I0(adc20_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc20_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc20_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_5__1 
       (.I0(adc21_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc21_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc21_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_6__1 
       (.I0(adc22_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc22_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc22_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_6__1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \slv_rdata[3]_i_7__1 
       (.I0(adc23_ds_type_0[3]),
        .I1(\slv_rdata_reg[9]_1 [1]),
        .I2(adc23_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [0]),
        .I4(adc23_ds_enable_0[3]),
        .O(\slv_rdata[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \slv_rdata[9]_i_1__1 
       (.I0(adc23_ds_inc_0[9]),
        .I1(adc20_ds_inc_0[9]),
        .I2(adc22_ds_inc_0[9]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc21_ds_inc_0[9]),
        .O(\slv_rdata[9]_i_1__1_n_0 ));
  FDRE \slv_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[0]_i_1__0_n_0 ),
        .Q(\slv_rdata_reg[0]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[0]_i_1__0 
       (.I0(\slv_rdata_reg[0]_i_2__0_n_0 ),
        .I1(\slv_rdata_reg[0]_i_3__0_n_0 ),
        .O(\slv_rdata_reg[0]_i_1__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[0]_i_2__0 
       (.I0(\slv_rdata[0]_i_4__1_n_0 ),
        .I1(\slv_rdata[0]_i_5__1_n_0 ),
        .O(\slv_rdata_reg[0]_i_2__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[0]_i_3__0 
       (.I0(\slv_rdata[0]_i_6__1_n_0 ),
        .I1(\slv_rdata[0]_i_7__1_n_0 ),
        .O(\slv_rdata_reg[0]_i_3__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[10]_i_1__1_n_0 ),
        .Q(\slv_rdata_reg[10]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[11]_i_1__2_n_0 ),
        .Q(\slv_rdata_reg[11]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[1]_i_1__0_n_0 ),
        .Q(\slv_rdata_reg[1]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[1]_i_1__0 
       (.I0(\slv_rdata_reg[1]_i_2__0_n_0 ),
        .I1(\slv_rdata_reg[1]_i_3__0_n_0 ),
        .O(\slv_rdata_reg[1]_i_1__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[1]_i_2__0 
       (.I0(\slv_rdata[1]_i_4__1_n_0 ),
        .I1(\slv_rdata[1]_i_5__1_n_0 ),
        .O(\slv_rdata_reg[1]_i_2__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[1]_i_3__0 
       (.I0(\slv_rdata[1]_i_6__1_n_0 ),
        .I1(\slv_rdata[1]_i_7__1_n_0 ),
        .O(\slv_rdata_reg[1]_i_3__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[2]_4 ),
        .Q(\slv_rdata_reg[2]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[3]_i_1_n_0 ),
        .Q(\slv_rdata_reg[3]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[3]_i_1 
       (.I0(\slv_rdata_reg[3]_i_2__0_n_0 ),
        .I1(\slv_rdata_reg[3]_i_3__0_n_0 ),
        .O(\slv_rdata_reg[3]_i_1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[3]_i_2__0 
       (.I0(\slv_rdata[3]_i_4__1_n_0 ),
        .I1(\slv_rdata[3]_i_5__1_n_0 ),
        .O(\slv_rdata_reg[3]_i_2__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[3]_i_3__0 
       (.I0(\slv_rdata[3]_i_6__1_n_0 ),
        .I1(\slv_rdata[3]_i_7__1_n_0 ),
        .O(\slv_rdata_reg[3]_i_3__0_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[4]_1 ),
        .Q(\slv_rdata_reg[4]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[5]_1 ),
        .Q(\slv_rdata_reg[5]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[6]_1 ),
        .Q(\slv_rdata_reg[6]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[7]_1 ),
        .Q(\slv_rdata_reg[7]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[8]_1 ),
        .Q(\slv_rdata_reg[8]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[9]_i_1__1_n_0 ),
        .Q(\slv_rdata_reg[9]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE slv_rden_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc2slv_rden),
        .Q(slv_rden_r),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\slv_wdata_r_internal_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\slv_wdata_r_internal_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\slv_wdata_r_internal_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\slv_wdata_r_internal_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\slv_wdata_r_internal_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\slv_wdata_r_internal_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\slv_wdata_r_internal_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\slv_wdata_r_internal_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\slv_wdata_r_internal_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\slv_wdata_r_internal_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\slv_wdata_r_internal_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\slv_wdata_r_internal_reg_n_0_[9] ),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc3_rfadc_exdes_ctrl_axi
   (p_0_in,
    slv_wren_done_pulse,
    slv_wren_clk2,
    slv_rden_r,
    Q,
    \adc30_ds_inc_0_reg[8]_0 ,
    \adc30_ds_type_0_reg[2]_0 ,
    \adc33_ds_inc_0_reg[8]_0 ,
    \adc32_ds_inc_0_reg[8]_0 ,
    \adc31_ds_inc_0_reg[8]_0 ,
    \adc31_ds_enable_0_reg[7]_0 ,
    \adc32_ds_enable_0_reg[7]_0 ,
    \adc32_ds_type_0_reg[2]_0 ,
    \adc31_ds_inc_0_reg[2]_0 ,
    \adc33_ds_inc_0_reg[2]_0 ,
    \adc33_ds_enable_0_reg[7]_0 ,
    \adc33_ds_type_0_reg[3]_0 ,
    \slv_rdata_reg[3]_0 ,
    \slv_rdata_reg[1]_0 ,
    \slv_rdata_reg[0]_0 ,
    \slv_rdata_reg[8]_0 ,
    \slv_rdata_reg[7]_0 ,
    \slv_rdata_reg[6]_0 ,
    \slv_rdata_reg[5]_0 ,
    \slv_rdata_reg[4]_0 ,
    \slv_rdata_reg[2]_0 ,
    \slv_rdata_reg[11]_0 ,
    \slv_rdata_reg[10]_0 ,
    \slv_rdata_reg[9]_0 ,
    s_axi_aclk,
    adc3slv_rden,
    \slv_rdata_reg[9]_1 ,
    \slv_rdata_reg[3]_1 ,
    \slv_rdata_reg[2]_1 ,
    \slv_rdata_reg[3]_2 ,
    \adc30_ds_enable_0_reg[0]_0 ,
    \adc32_ds_type_0_reg[0]_0 ,
    \adc32_ds_inc_0_reg[0]_0 ,
    \slv_rdata_reg[3]_3 ,
    \slv_rdata_reg[3]_4 ,
    \adc30_ds_type_0_reg[0]_0 ,
    \adc32_ds_control_0_reg[0]_0 ,
    \adc32_ds_enable_0_reg[0]_0 ,
    \adc31_ds_control_0_reg[0]_0 ,
    \adc33_ds_type_0_reg[0]_0 ,
    \adc33_ds_inc_0_reg[0]_0 ,
    \slv_rdata_reg[2]_2 ,
    s_axi_aresetn,
    s_axi_wvalid,
    adc3axi_map_wready,
    E,
    s_axi_wdata,
    \adc30_ds_inc_0_reg[11]_0 ,
    \adc30_ds_control_0_reg[1]_0 ,
    \adc31_ds_enable_0_reg[7]_1 ,
    \adc31_ds_inc_0_reg[11]_0 ,
    \adc31_ds_type_0_reg[3]_0 ,
    \adc33_ds_enable_0_reg[7]_1 ,
    \adc33_ds_control_0_reg[1]_0 ,
    \slv_rdata_reg[0]_1 ,
    \slv_rdata_reg[2]_3 ,
    \slv_rdata_reg[8]_1 ,
    \slv_rdata_reg[7]_1 ,
    \slv_rdata_reg[6]_1 ,
    \slv_rdata_reg[5]_1 ,
    \slv_rdata_reg[4]_1 ,
    \slv_rdata_reg[2]_4 ,
    \slv_rdata_reg[9]_2 );
  output p_0_in;
  output slv_wren_done_pulse;
  output slv_wren_clk2;
  output slv_rden_r;
  output [4:0]Q;
  output [5:0]\adc30_ds_inc_0_reg[8]_0 ;
  output [0:0]\adc30_ds_type_0_reg[2]_0 ;
  output [5:0]\adc33_ds_inc_0_reg[8]_0 ;
  output [5:0]\adc32_ds_inc_0_reg[8]_0 ;
  output [4:0]\adc31_ds_inc_0_reg[8]_0 ;
  output [3:0]\adc31_ds_enable_0_reg[7]_0 ;
  output [4:0]\adc32_ds_enable_0_reg[7]_0 ;
  output [0:0]\adc32_ds_type_0_reg[2]_0 ;
  output \adc31_ds_inc_0_reg[2]_0 ;
  output \adc33_ds_inc_0_reg[2]_0 ;
  output [4:0]\adc33_ds_enable_0_reg[7]_0 ;
  output [0:0]\adc33_ds_type_0_reg[3]_0 ;
  output [0:0]\slv_rdata_reg[3]_0 ;
  output \slv_rdata_reg[1]_0 ;
  output \slv_rdata_reg[0]_0 ;
  output \slv_rdata_reg[8]_0 ;
  output \slv_rdata_reg[7]_0 ;
  output \slv_rdata_reg[6]_0 ;
  output \slv_rdata_reg[5]_0 ;
  output \slv_rdata_reg[4]_0 ;
  output \slv_rdata_reg[2]_0 ;
  output \slv_rdata_reg[11]_0 ;
  output \slv_rdata_reg[10]_0 ;
  output \slv_rdata_reg[9]_0 ;
  input s_axi_aclk;
  input adc3slv_rden;
  input [3:0]\slv_rdata_reg[9]_1 ;
  input \slv_rdata_reg[3]_1 ;
  input \slv_rdata_reg[2]_1 ;
  input \slv_rdata_reg[3]_2 ;
  input \adc30_ds_enable_0_reg[0]_0 ;
  input \adc32_ds_type_0_reg[0]_0 ;
  input \adc32_ds_inc_0_reg[0]_0 ;
  input \slv_rdata_reg[3]_3 ;
  input \slv_rdata_reg[3]_4 ;
  input \adc30_ds_type_0_reg[0]_0 ;
  input \adc32_ds_control_0_reg[0]_0 ;
  input \adc32_ds_enable_0_reg[0]_0 ;
  input \adc31_ds_control_0_reg[0]_0 ;
  input \adc33_ds_type_0_reg[0]_0 ;
  input \adc33_ds_inc_0_reg[0]_0 ;
  input \slv_rdata_reg[2]_2 ;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input adc3axi_map_wready;
  input [0:0]E;
  input [11:0]s_axi_wdata;
  input [0:0]\adc30_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc30_ds_control_0_reg[1]_0 ;
  input [0:0]\adc31_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc31_ds_inc_0_reg[11]_0 ;
  input [0:0]\adc31_ds_type_0_reg[3]_0 ;
  input [0:0]\adc33_ds_enable_0_reg[7]_1 ;
  input [0:0]\adc33_ds_control_0_reg[1]_0 ;
  input \slv_rdata_reg[0]_1 ;
  input \slv_rdata_reg[2]_3 ;
  input \slv_rdata_reg[8]_1 ;
  input \slv_rdata_reg[7]_1 ;
  input \slv_rdata_reg[6]_1 ;
  input \slv_rdata_reg[5]_1 ;
  input \slv_rdata_reg[4]_1 ;
  input \slv_rdata_reg[2]_4 ;
  input \slv_rdata_reg[9]_2 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire [1:0]adc30_ds_control_0;
  wire [0:0]\adc30_ds_control_0_reg[1]_0 ;
  wire [3:0]adc30_ds_enable_0;
  wire \adc30_ds_enable_0_reg[0]_0 ;
  wire [11:0]adc30_ds_inc_0;
  wire [0:0]\adc30_ds_inc_0_reg[11]_0 ;
  wire [5:0]\adc30_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc30_ds_type_0;
  wire \adc30_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc30_ds_type_0_reg[2]_0 ;
  wire [1:0]adc31_ds_control_0;
  wire \adc31_ds_control_0_reg[0]_0 ;
  wire [3:0]adc31_ds_enable_0;
  wire [3:0]\adc31_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc31_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc31_ds_inc_0;
  wire [0:0]\adc31_ds_inc_0_reg[11]_0 ;
  wire \adc31_ds_inc_0_reg[2]_0 ;
  wire [4:0]\adc31_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc31_ds_type_0;
  wire [0:0]\adc31_ds_type_0_reg[3]_0 ;
  wire [1:0]adc32_ds_control_0;
  wire \adc32_ds_control_0_reg[0]_0 ;
  wire [3:0]adc32_ds_enable_0;
  wire \adc32_ds_enable_0_reg[0]_0 ;
  wire [4:0]\adc32_ds_enable_0_reg[7]_0 ;
  wire [11:0]adc32_ds_inc_0;
  wire \adc32_ds_inc_0_reg[0]_0 ;
  wire [5:0]\adc32_ds_inc_0_reg[8]_0 ;
  wire [3:0]adc32_ds_type_0;
  wire \adc32_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc32_ds_type_0_reg[2]_0 ;
  wire [1:0]adc33_ds_control_0;
  wire [0:0]\adc33_ds_control_0_reg[1]_0 ;
  wire [2:0]adc33_ds_enable_0;
  wire [4:0]\adc33_ds_enable_0_reg[7]_0 ;
  wire [0:0]\adc33_ds_enable_0_reg[7]_1 ;
  wire [11:0]adc33_ds_inc_0;
  wire \adc33_ds_inc_0_reg[0]_0 ;
  wire \adc33_ds_inc_0_reg[2]_0 ;
  wire [5:0]\adc33_ds_inc_0_reg[8]_0 ;
  wire [2:0]adc33_ds_type_0;
  wire \adc33_ds_type_0_reg[0]_0 ;
  wire [0:0]\adc33_ds_type_0_reg[3]_0 ;
  wire adc3axi_map_wready;
  wire adc3slv_rden;
  wire clk2clk_handshake_pulse_gen_i_n_10;
  wire clk2clk_handshake_pulse_gen_i_n_11;
  wire clk2clk_handshake_pulse_gen_i_n_12;
  wire clk2clk_handshake_pulse_gen_i_n_3;
  wire clk2clk_handshake_pulse_gen_i_n_4;
  wire clk2clk_handshake_pulse_gen_i_n_5;
  wire clk2clk_handshake_pulse_gen_i_n_6;
  wire clk2clk_handshake_pulse_gen_i_n_7;
  wire clk2clk_handshake_pulse_gen_i_n_8;
  wire clk2clk_handshake_pulse_gen_i_n_9;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire slv_access_valid_hold;
  wire \slv_rdata[0]_i_4__2_n_0 ;
  wire \slv_rdata[0]_i_5__2_n_0 ;
  wire \slv_rdata[0]_i_6__2_n_0 ;
  wire \slv_rdata[0]_i_7__2_n_0 ;
  wire \slv_rdata[10]_i_1__0_n_0 ;
  wire \slv_rdata[11]_i_1__1_n_0 ;
  wire \slv_rdata[1]_i_4__2_n_0 ;
  wire \slv_rdata[1]_i_5__2_n_0 ;
  wire \slv_rdata[1]_i_6__2_n_0 ;
  wire \slv_rdata[1]_i_7__2_n_0 ;
  wire \slv_rdata[3]_i_1_n_0 ;
  wire \slv_rdata[3]_i_2__0_n_0 ;
  wire \slv_rdata[3]_i_3__0_n_0 ;
  wire \slv_rdata[3]_i_5__2_n_0 ;
  wire \slv_rdata[9]_i_1__0_n_0 ;
  wire \slv_rdata_reg[0]_0 ;
  wire \slv_rdata_reg[0]_1 ;
  wire \slv_rdata_reg[0]_i_1__1_n_0 ;
  wire \slv_rdata_reg[0]_i_2__1_n_0 ;
  wire \slv_rdata_reg[0]_i_3__1_n_0 ;
  wire \slv_rdata_reg[10]_0 ;
  wire \slv_rdata_reg[11]_0 ;
  wire \slv_rdata_reg[1]_0 ;
  wire \slv_rdata_reg[1]_i_1__1_n_0 ;
  wire \slv_rdata_reg[1]_i_2__1_n_0 ;
  wire \slv_rdata_reg[1]_i_3__1_n_0 ;
  wire \slv_rdata_reg[2]_0 ;
  wire \slv_rdata_reg[2]_1 ;
  wire \slv_rdata_reg[2]_2 ;
  wire \slv_rdata_reg[2]_3 ;
  wire \slv_rdata_reg[2]_4 ;
  wire [0:0]\slv_rdata_reg[3]_0 ;
  wire \slv_rdata_reg[3]_1 ;
  wire \slv_rdata_reg[3]_2 ;
  wire \slv_rdata_reg[3]_3 ;
  wire \slv_rdata_reg[3]_4 ;
  wire \slv_rdata_reg[4]_0 ;
  wire \slv_rdata_reg[4]_1 ;
  wire \slv_rdata_reg[5]_0 ;
  wire \slv_rdata_reg[5]_1 ;
  wire \slv_rdata_reg[6]_0 ;
  wire \slv_rdata_reg[6]_1 ;
  wire \slv_rdata_reg[7]_0 ;
  wire \slv_rdata_reg[7]_1 ;
  wire \slv_rdata_reg[8]_0 ;
  wire \slv_rdata_reg[8]_1 ;
  wire \slv_rdata_reg[9]_0 ;
  wire [3:0]\slv_rdata_reg[9]_1 ;
  wire \slv_rdata_reg[9]_2 ;
  wire slv_rden_r;
  wire \slv_wdata_r_internal_reg_n_0_[0] ;
  wire \slv_wdata_r_internal_reg_n_0_[10] ;
  wire \slv_wdata_r_internal_reg_n_0_[11] ;
  wire \slv_wdata_r_internal_reg_n_0_[1] ;
  wire \slv_wdata_r_internal_reg_n_0_[2] ;
  wire \slv_wdata_r_internal_reg_n_0_[3] ;
  wire \slv_wdata_r_internal_reg_n_0_[4] ;
  wire \slv_wdata_r_internal_reg_n_0_[5] ;
  wire \slv_wdata_r_internal_reg_n_0_[6] ;
  wire \slv_wdata_r_internal_reg_n_0_[7] ;
  wire \slv_wdata_r_internal_reg_n_0_[8] ;
  wire \slv_wdata_r_internal_reg_n_0_[9] ;
  wire slv_wren_clk2;
  wire slv_wren_done_pulse;

  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc30_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc30_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc30_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc30_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc30_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_3),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc30_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc30_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc30_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc30_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc30_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc30_ds_inc_0_reg[8]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc30_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc30_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc30_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc30_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc30_ds_type_0_reg[2]_0 ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc30_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_6),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc30_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc31_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_9),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc31_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc31_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc31_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc31_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc31_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc31_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc31_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc31_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc31_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc31_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc31_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc31_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc31_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc31_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc31_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc31_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc31_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc31_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc31_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc31_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_inc_0_reg[11]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc31_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc31_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc31_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc31_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc31_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc31_ds_type_0_reg[3]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc31_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc32_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_7),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc32_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc32_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc32_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc32_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc32_ds_enable_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc32_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc32_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc32_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_8),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc32_ds_enable_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc32_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc32_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc32_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc32_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc32_ds_inc_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc32_ds_inc_0_reg[8]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_5),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc32_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc32_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc32_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(\adc32_ds_type_0_reg[2]_0 ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc32_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_4),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(adc32_ds_type_0[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_control_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc33_ds_control_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_control_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_control_0_reg[1]_0 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc33_ds_control_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc33_ds_enable_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc33_ds_enable_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc33_ds_enable_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc33_ds_enable_0_reg[7]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc33_ds_enable_0_reg[7]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc33_ds_enable_0_reg[7]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc33_ds_enable_0_reg[7]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_enable_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(\adc33_ds_enable_0_reg[7]_1 ),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc33_ds_enable_0_reg[7]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc33_ds_inc_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[10] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[10] ),
        .Q(adc33_ds_inc_0[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[11] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[11] ),
        .Q(adc33_ds_inc_0[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc33_ds_inc_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc33_ds_inc_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[4] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[5] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[6] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[7] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[8] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[8] ),
        .Q(\adc33_ds_inc_0_reg[8]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_inc_0_reg[9] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_11),
        .D(\slv_wdata_r_internal_reg_n_0_[9] ),
        .Q(adc33_ds_inc_0[9]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_type_0_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[0] ),
        .Q(adc33_ds_type_0[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_type_0_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[1] ),
        .Q(adc33_ds_type_0[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_type_0_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[2] ),
        .Q(adc33_ds_type_0[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \adc33_ds_type_0_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk2clk_handshake_pulse_gen_i_n_10),
        .D(\slv_wdata_r_internal_reg_n_0_[3] ),
        .Q(\adc33_ds_type_0_reg[3]_0 ),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen clk2clk_handshake_pulse_gen_i
       (.E(clk2clk_handshake_pulse_gen_i_n_3),
        .SR(p_0_in),
        .\adc30_ds_enable_0_reg[0] (\adc30_ds_enable_0_reg[0]_0 ),
        .\adc30_ds_type_0_reg[0] (\adc30_ds_type_0_reg[0]_0 ),
        .\adc31_ds_control_0_reg[0] (\adc31_ds_control_0_reg[0]_0 ),
        .\adc32_ds_control_0_reg[0] (\adc32_ds_control_0_reg[0]_0 ),
        .\adc32_ds_enable_0_reg[0] (\adc32_ds_enable_0_reg[0]_0 ),
        .\adc32_ds_inc_0_reg[0] (\adc32_ds_inc_0_reg[0]_0 ),
        .\adc32_ds_type_0_reg[0] (\adc32_ds_type_0_reg[0]_0 ),
        .\adc33_ds_inc_0_reg[0] (\adc33_ds_inc_0_reg[0]_0 ),
        .\adc33_ds_type_0_reg[0] (\adc33_ds_type_0_reg[0]_0 ),
        .adc3axi_map_wready(adc3axi_map_wready),
        .adc3slv_rden(adc3slv_rden),
        .clk2_valid_pulse_reg_0(slv_wren_clk2),
        .clk2_valid_pulse_reg_1(clk2clk_handshake_pulse_gen_i_n_4),
        .clk2_valid_pulse_reg_2(clk2clk_handshake_pulse_gen_i_n_5),
        .clk2_valid_pulse_reg_3(clk2clk_handshake_pulse_gen_i_n_6),
        .clk2_valid_pulse_reg_4(clk2clk_handshake_pulse_gen_i_n_7),
        .clk2_valid_pulse_reg_5(clk2clk_handshake_pulse_gen_i_n_8),
        .clk2_valid_pulse_reg_6(clk2clk_handshake_pulse_gen_i_n_9),
        .clk2_valid_pulse_reg_7(clk2clk_handshake_pulse_gen_i_n_10),
        .clk2_valid_pulse_reg_8(clk2clk_handshake_pulse_gen_i_n_11),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_rden_r),
        .slv_wren_done_pulse(slv_wren_done_pulse),
        .src_in(slv_access_valid_hold),
        .\syncstages_ff_reg[4] (clk2clk_handshake_pulse_gen_i_n_12));
  FDRE slv_access_valid_hold_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2clk_handshake_pulse_gen_i_n_12),
        .Q(slv_access_valid_hold),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_4__2 
       (.I0(adc30_ds_control_0[0]),
        .I1(adc30_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc30_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc30_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_5__2 
       (.I0(adc31_ds_control_0[0]),
        .I1(adc31_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc31_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc31_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_6__2 
       (.I0(adc32_ds_control_0[0]),
        .I1(adc32_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc32_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc32_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[0]_i_7__2 
       (.I0(adc33_ds_control_0[0]),
        .I1(adc33_ds_type_0[0]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc33_ds_inc_0[0]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc33_ds_enable_0[0]),
        .O(\slv_rdata[0]_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \slv_rdata[10]_i_1__0 
       (.I0(adc33_ds_inc_0[10]),
        .I1(adc30_ds_inc_0[10]),
        .I2(adc32_ds_inc_0[10]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc31_ds_inc_0[10]),
        .O(\slv_rdata[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \slv_rdata[11]_i_1__1 
       (.I0(adc33_ds_inc_0[11]),
        .I1(adc32_ds_inc_0[11]),
        .I2(adc31_ds_inc_0[11]),
        .I3(\slv_rdata_reg[9]_1 [3]),
        .I4(\slv_rdata_reg[9]_1 [2]),
        .I5(adc30_ds_inc_0[11]),
        .O(\slv_rdata[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_4__2 
       (.I0(adc30_ds_control_0[1]),
        .I1(adc30_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc30_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc30_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_5__2 
       (.I0(adc31_ds_control_0[1]),
        .I1(adc31_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc31_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc31_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_6__2 
       (.I0(adc32_ds_control_0[1]),
        .I1(adc32_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc32_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc32_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[1]_i_7__2 
       (.I0(adc33_ds_control_0[1]),
        .I1(adc33_ds_type_0[1]),
        .I2(\slv_rdata_reg[9]_1 [1]),
        .I3(adc33_ds_inc_0[1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc33_ds_enable_0[1]),
        .O(\slv_rdata[1]_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF550F33)) 
    \slv_rdata[2]_i_3__0 
       (.I0(adc33_ds_inc_0[2]),
        .I1(adc33_ds_enable_0[2]),
        .I2(adc33_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(\slv_rdata_reg[2]_2 ),
        .O(\adc33_ds_inc_0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCC440C00CC440CCC)) 
    \slv_rdata[2]_i_4 
       (.I0(adc31_ds_inc_0[2]),
        .I1(\slv_rdata_reg[2]_1 ),
        .I2(adc31_ds_type_0[2]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(\slv_rdata_reg[9]_1 [0]),
        .I5(adc31_ds_enable_0[2]),
        .O(\adc31_ds_inc_0_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \slv_rdata[3]_i_1 
       (.I0(\slv_rdata_reg[3]_3 ),
        .I1(\slv_rdata[3]_i_2__0_n_0 ),
        .I2(\slv_rdata[3]_i_3__0_n_0 ),
        .I3(\slv_rdata_reg[3]_4 ),
        .I4(\slv_rdata[3]_i_5__2_n_0 ),
        .O(\slv_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \slv_rdata[3]_i_2__0 
       (.I0(adc30_ds_enable_0[3]),
        .I1(\slv_rdata_reg[9]_1 [0]),
        .I2(adc30_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(adc30_ds_type_0[3]),
        .I5(\slv_rdata_reg[3]_1 ),
        .O(\slv_rdata[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \slv_rdata[3]_i_3__0 
       (.I0(adc31_ds_enable_0[3]),
        .I1(\slv_rdata_reg[9]_1 [0]),
        .I2(adc31_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(adc31_ds_type_0[3]),
        .I5(\slv_rdata_reg[2]_1 ),
        .O(\slv_rdata[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \slv_rdata[3]_i_5__2 
       (.I0(adc32_ds_enable_0[3]),
        .I1(\slv_rdata_reg[9]_1 [0]),
        .I2(adc32_ds_inc_0[3]),
        .I3(\slv_rdata_reg[9]_1 [1]),
        .I4(adc32_ds_type_0[3]),
        .I5(\slv_rdata_reg[3]_2 ),
        .O(\slv_rdata[3]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0FFCCAAF000CC)) 
    \slv_rdata[9]_i_1__0 
       (.I0(adc33_ds_inc_0[9]),
        .I1(adc30_ds_inc_0[9]),
        .I2(adc32_ds_inc_0[9]),
        .I3(\slv_rdata_reg[9]_1 [2]),
        .I4(\slv_rdata_reg[9]_1 [3]),
        .I5(adc31_ds_inc_0[9]),
        .O(\slv_rdata[9]_i_1__0_n_0 ));
  FDRE \slv_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[0]_i_1__1_n_0 ),
        .Q(\slv_rdata_reg[0]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[0]_i_1__1 
       (.I0(\slv_rdata_reg[0]_i_2__1_n_0 ),
        .I1(\slv_rdata_reg[0]_i_3__1_n_0 ),
        .O(\slv_rdata_reg[0]_i_1__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[0]_i_2__1 
       (.I0(\slv_rdata[0]_i_4__2_n_0 ),
        .I1(\slv_rdata[0]_i_5__2_n_0 ),
        .O(\slv_rdata_reg[0]_i_2__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[0]_i_3__1 
       (.I0(\slv_rdata[0]_i_6__2_n_0 ),
        .I1(\slv_rdata[0]_i_7__2_n_0 ),
        .O(\slv_rdata_reg[0]_i_3__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[10]_i_1__0_n_0 ),
        .Q(\slv_rdata_reg[10]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[11]_i_1__1_n_0 ),
        .Q(\slv_rdata_reg[11]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE \slv_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[1]_i_1__1_n_0 ),
        .Q(\slv_rdata_reg[1]_0 ),
        .R(\slv_rdata_reg[0]_1 ));
  MUXF8 \slv_rdata_reg[1]_i_1__1 
       (.I0(\slv_rdata_reg[1]_i_2__1_n_0 ),
        .I1(\slv_rdata_reg[1]_i_3__1_n_0 ),
        .O(\slv_rdata_reg[1]_i_1__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [3]));
  MUXF7 \slv_rdata_reg[1]_i_2__1 
       (.I0(\slv_rdata[1]_i_4__2_n_0 ),
        .I1(\slv_rdata[1]_i_5__2_n_0 ),
        .O(\slv_rdata_reg[1]_i_2__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  MUXF7 \slv_rdata_reg[1]_i_3__1 
       (.I0(\slv_rdata[1]_i_6__2_n_0 ),
        .I1(\slv_rdata[1]_i_7__2_n_0 ),
        .O(\slv_rdata_reg[1]_i_3__1_n_0 ),
        .S(\slv_rdata_reg[9]_1 [2]));
  FDRE \slv_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[2]_4 ),
        .Q(\slv_rdata_reg[2]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[3]_i_1_n_0 ),
        .Q(\slv_rdata_reg[3]_0 ),
        .R(1'b0));
  FDRE \slv_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[4]_1 ),
        .Q(\slv_rdata_reg[4]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[5]_1 ),
        .Q(\slv_rdata_reg[5]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[6]_1 ),
        .Q(\slv_rdata_reg[6]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[7]_1 ),
        .Q(\slv_rdata_reg[7]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata_reg[8]_1 ),
        .Q(\slv_rdata_reg[8]_0 ),
        .R(\slv_rdata_reg[2]_3 ));
  FDRE \slv_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\slv_rdata[9]_i_1__0_n_0 ),
        .Q(\slv_rdata_reg[9]_0 ),
        .R(\slv_rdata_reg[9]_2 ));
  FDRE slv_rden_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc3slv_rden),
        .Q(slv_rden_r),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\slv_wdata_r_internal_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\slv_wdata_r_internal_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\slv_wdata_r_internal_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\slv_wdata_r_internal_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\slv_wdata_r_internal_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\slv_wdata_r_internal_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\slv_wdata_r_internal_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\slv_wdata_r_internal_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\slv_wdata_r_internal_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\slv_wdata_r_internal_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\slv_wdata_r_internal_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_wdata_r_internal_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\slv_wdata_r_internal_reg_n_0_[9] ),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_exdes_cfg
   (enable,
    timeout_enable,
    enable_reg_0,
    \timeout_value_reg[11]_0 ,
    p_0_in,
    enable_reg_1,
    s_axi_aclk,
    timeout_enable_reg_0,
    done_flag,
    Q,
    E,
    s_axi_wdata);
  output enable;
  output timeout_enable;
  output enable_reg_0;
  output [11:0]\timeout_value_reg[11]_0 ;
  input p_0_in;
  input enable_reg_1;
  input s_axi_aclk;
  input timeout_enable_reg_0;
  input done_flag;
  input [1:0]Q;
  input [0:0]E;
  input [11:0]s_axi_wdata;

  wire [0:0]E;
  wire [1:0]Q;
  wire done_flag;
  wire enable;
  wire enable_reg_0;
  wire enable_reg_1;
  wire p_0_in;
  wire s_axi_aclk;
  wire [11:0]s_axi_wdata;
  wire timeout_enable;
  wire timeout_enable_reg_0;
  wire [11:0]\timeout_value_reg[11]_0 ;

  LUT4 #(
    .INIT(16'h88A8)) 
    done_flag_i_1
       (.I0(enable),
        .I1(done_flag),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(enable_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(enable_reg_1),
        .Q(enable),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    timeout_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(timeout_enable_reg_0),
        .Q(timeout_enable),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\timeout_value_reg[11]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\timeout_value_reg[11]_0 [10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\timeout_value_reg[11]_0 [11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\timeout_value_reg[11]_0 [1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\timeout_value_reg[11]_0 [2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\timeout_value_reg[11]_0 [3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\timeout_value_reg[11]_0 [4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\timeout_value_reg[11]_0 [5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\timeout_value_reg[11]_0 [6]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \timeout_value_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\timeout_value_reg[11]_0 [7]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\timeout_value_reg[11]_0 [8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_value_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\timeout_value_reg[11]_0 [9]),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_exdes_rfadc_data_sink
   (axi_awready_reg,
    s_axi_arready,
    axi_rvalid_reg,
    s_axi_wready,
    error_flag,
    s00_tready,
    s_axi_rdata,
    done_flag,
    axi_bvalid_reg,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_aresetn,
    s_axi_araddr,
    s00_tdata,
    s_axi_aclk,
    s0_axis_clock,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_bready);
  output axi_awready_reg;
  output s_axi_arready;
  output axi_rvalid_reg;
  output s_axi_wready;
  output error_flag;
  output s00_tready;
  output [15:0]s_axi_rdata;
  output done_flag;
  output axi_bvalid_reg;
  output [0:0]s_axi_bresp;
  output [0:0]s_axi_rresp;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_aresetn;
  input [15:0]s_axi_araddr;
  input [127:0]s00_tdata;
  input s_axi_aclk;
  input s0_axis_clock;
  input [11:0]s_axi_wdata;
  input [15:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_bready;

  wire adc00_ds_pulse_control_0;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire axi_rvalid_reg;
  wire axis_resetn_rt_0;
  wire done_bus_rt_0;
  wire [1:0]done_delay;
  wire done_flag;
  wire error_bus_rt_0;
  wire error_flag;
  wire rfadc_exdes_ctrl_i_n_8;
  wire s00_ds_status;
  wire [127:0]s00_tdata;
  wire s00_tready;
  wire s0_axis_clock;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [15:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [11:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst cdc_arstn_0i
       (.dest_clk(s0_axis_clock),
        .dest_rst(axis_resetn_rt_0),
        .src_rst(s_axi_aresetn));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__11 cdc_done_0i
       (.dest_clk(s_axi_aclk),
        .dest_out(done_bus_rt_0),
        .src_clk(1'b0),
        .src_in(1'b0));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__10 cdc_error_0i
       (.dest_clk(s_axi_aclk),
        .dest_out(error_bus_rt_0),
        .src_clk(1'b0),
        .src_in(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \done_delay_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_bus_rt_0),
        .Q(done_delay[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \done_delay_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_delay[0]),
        .Q(done_delay[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    done_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rfadc_exdes_ctrl_i_n_8),
        .Q(done_flag),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_mem_ds_dataCap ds_slice_00
       (.adc00_ds_pulse_control_0(adc00_ds_pulse_control_0),
        .s00_ds_status(s00_ds_status),
        .s0_axis_clock(s0_axis_clock));
  FDRE #(
    .INIT(1'b0)) 
    error_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(error_bus_rt_0),
        .Q(error_flag),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl rfadc_exdes_ctrl_i
       (.D(done_bus_rt_0),
        .Q(done_delay),
        .adc00_ds_pulse_control_0(adc00_ds_pulse_control_0),
        .axi_arready_reg(s_axi_arready),
        .axi_awready_reg(axi_awready_reg),
        .axi_bvalid_reg(axi_bvalid_reg),
        .axi_rvalid_reg(axi_rvalid_reg),
        .axi_wr_access_reg(s_axi_wready),
        .dest_out(error_bus_rt_0),
        .dest_rst(axis_resetn_rt_0),
        .done_flag(done_flag),
        .enable_reg(rfadc_exdes_ctrl_i_n_8),
        .error_flag(error_flag),
        .s00_ds_status(s00_ds_status),
        .s00_tdata(s00_tdata),
        .s00_tready(s00_tready),
        .s0_axis_clock(s0_axis_clock),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "project_1_adc_sink_i_0,exdes_rfadc_data_sink,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "exdes_rfadc_data_sink,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s00_tdata,
    s00_tvalid,
    s00_tready,
    s0_axis_clock,
    error_flag,
    done_flag,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [17:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [17:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TDATA" *) input [127:0]s00_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TVALID" *) input s00_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s0_axis_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis_clock, ASSOCIATED_BUSIF s00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s0_axis_clock;
  output error_flag;
  output done_flag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire \<const0> ;
  wire done_flag;
  wire error_flag;
  wire [127:0]s00_tdata;
  wire s00_tready;
  wire s0_axis_clock;
  wire s_axi_aclk;
  wire [17:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [15:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_exdes_rfadc_data_sink inst
       (.axi_awready_reg(s_axi_awready),
        .axi_bvalid_reg(s_axi_bvalid),
        .axi_rvalid_reg(s_axi_rvalid),
        .done_flag(done_flag),
        .error_flag(error_flag),
        .s00_tdata(s00_tdata),
        .s00_tready(s00_tready),
        .s0_axis_clock(s0_axis_clock),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[17:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[17:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_wdata(s_axi_wdata[11:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl
   (axi_wr_access_reg,
    axi_arready_reg,
    adc00_ds_pulse_control_0,
    axi_rvalid_reg,
    axi_bvalid_reg,
    axi_awready_reg,
    s_axi_bresp,
    s_axi_rresp,
    enable_reg,
    s00_tready,
    s_axi_rdata,
    s0_axis_clock,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_aresetn,
    s_axi_araddr,
    s00_tdata,
    done_flag,
    Q,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_bready,
    dest_out,
    D,
    error_flag,
    s00_ds_status,
    dest_rst,
    s_axi_wdata);
  output axi_wr_access_reg;
  output axi_arready_reg;
  output adc00_ds_pulse_control_0;
  output axi_rvalid_reg;
  output axi_bvalid_reg;
  output axi_awready_reg;
  output [0:0]s_axi_bresp;
  output [0:0]s_axi_rresp;
  output enable_reg;
  output s00_tready;
  output [15:0]s_axi_rdata;
  input s0_axis_clock;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_aresetn;
  input [15:0]s_axi_araddr;
  input [127:0]s00_tdata;
  input done_flag;
  input [1:0]Q;
  input [15:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_bready;
  input dest_out;
  input [0:0]D;
  input error_flag;
  input s00_ds_status;
  input dest_rst;
  input [11:0]s_axi_wdata;

  wire [0:0]D;
  wire [1:0]Q;
  wire [1:1]adc00_ds_control_0;
  wire adc00_ds_pulse_control_0;
  wire [3:0]adc00_ds_type_0;
  wire [1:0]adc01_ds_inc_0;
  wire [3:0]adc01_ds_type_0;
  wire [1:0]adc02_ds_inc_0;
  wire [3:0]adc02_ds_type_0;
  wire [1:0]adc03_ds_inc_0;
  wire [3:0]adc03_ds_type_0;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_13;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_14;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_15;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_16;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_17;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_18;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_19;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_20;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_21;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_22;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_23;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_24;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_25;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_26;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_27;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_28;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_29;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_30;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_32;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_4;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_5;
  wire adc0_rfadc_exdes_ctrl_axi_i_n_6;
  wire adc0axi_map_wready;
  wire adc0slv_rden;
  wire [7:2]adc10_ds_enable_0;
  wire [7:2]adc10_ds_inc_0;
  wire [2:2]adc10_ds_type_0;
  wire [7:4]adc11_ds_enable_0;
  wire [8:4]adc11_ds_inc_0;
  wire [7:4]adc12_ds_enable_0;
  wire [7:4]adc12_ds_inc_0;
  wire [7:4]adc13_ds_enable_0;
  wire [7:4]adc13_ds_inc_0;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_21;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_26;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_27;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_32;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_33;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_44;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_45;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_46;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_47;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_48;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_49;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_50;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_51;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_52;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_53;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_54;
  wire adc1_rfadc_exdes_ctrl_axi_i_n_55;
  wire adc1axi_map_wready;
  wire adc1slv_rden;
  wire [7:2]adc20_ds_enable_0;
  wire [8:2]adc20_ds_inc_0;
  wire [2:2]adc20_ds_type_0;
  wire [7:4]adc21_ds_enable_0;
  wire [8:4]adc21_ds_inc_0;
  wire [7:2]adc22_ds_enable_0;
  wire [8:2]adc22_ds_inc_0;
  wire [2:2]adc22_ds_type_0;
  wire [7:4]adc23_ds_enable_0;
  wire [8:4]adc23_ds_inc_0;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_24;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_25;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_30;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_35;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_48;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_49;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_50;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_51;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_52;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_53;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_54;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_55;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_56;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_57;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_58;
  wire adc2_rfadc_exdes_ctrl_axi_i_n_59;
  wire adc2axi_map_wready;
  wire adc2slv_rden;
  wire [7:2]adc30_ds_enable_0;
  wire [8:2]adc30_ds_inc_0;
  wire [2:2]adc30_ds_type_0;
  wire [7:4]adc31_ds_enable_0;
  wire [8:4]adc31_ds_inc_0;
  wire [7:2]adc32_ds_enable_0;
  wire [8:2]adc32_ds_inc_0;
  wire [2:2]adc32_ds_type_0;
  wire [7:3]adc33_ds_enable_0;
  wire [8:3]adc33_ds_inc_0;
  wire [3:3]adc33_ds_type_0;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_43;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_44;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_51;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_52;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_53;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_54;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_55;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_56;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_57;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_58;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_59;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_60;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_61;
  wire adc3_rfadc_exdes_ctrl_axi_i_n_62;
  wire adc3axi_map_wready;
  wire adc3slv_rden;
  wire adc_ds_axi_map_wready;
  wire adc_ds_slv_rden;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire axi_register_if_i_n_100;
  wire axi_register_if_i_n_101;
  wire axi_register_if_i_n_102;
  wire axi_register_if_i_n_103;
  wire axi_register_if_i_n_104;
  wire axi_register_if_i_n_105;
  wire axi_register_if_i_n_106;
  wire axi_register_if_i_n_107;
  wire axi_register_if_i_n_108;
  wire axi_register_if_i_n_109;
  wire axi_register_if_i_n_110;
  wire axi_register_if_i_n_111;
  wire axi_register_if_i_n_112;
  wire axi_register_if_i_n_113;
  wire axi_register_if_i_n_114;
  wire axi_register_if_i_n_115;
  wire axi_register_if_i_n_17;
  wire axi_register_if_i_n_18;
  wire axi_register_if_i_n_19;
  wire axi_register_if_i_n_20;
  wire axi_register_if_i_n_21;
  wire axi_register_if_i_n_22;
  wire axi_register_if_i_n_23;
  wire axi_register_if_i_n_24;
  wire axi_register_if_i_n_25;
  wire axi_register_if_i_n_26;
  wire axi_register_if_i_n_27;
  wire axi_register_if_i_n_28;
  wire axi_register_if_i_n_29;
  wire axi_register_if_i_n_31;
  wire axi_register_if_i_n_32;
  wire axi_register_if_i_n_33;
  wire axi_register_if_i_n_34;
  wire axi_register_if_i_n_35;
  wire axi_register_if_i_n_38;
  wire axi_register_if_i_n_39;
  wire axi_register_if_i_n_40;
  wire axi_register_if_i_n_41;
  wire axi_register_if_i_n_42;
  wire axi_register_if_i_n_43;
  wire axi_register_if_i_n_44;
  wire axi_register_if_i_n_45;
  wire axi_register_if_i_n_46;
  wire axi_register_if_i_n_47;
  wire axi_register_if_i_n_48;
  wire axi_register_if_i_n_49;
  wire axi_register_if_i_n_50;
  wire axi_register_if_i_n_51;
  wire axi_register_if_i_n_52;
  wire axi_register_if_i_n_53;
  wire axi_register_if_i_n_54;
  wire axi_register_if_i_n_55;
  wire axi_register_if_i_n_56;
  wire axi_register_if_i_n_57;
  wire axi_register_if_i_n_58;
  wire axi_register_if_i_n_59;
  wire axi_register_if_i_n_60;
  wire axi_register_if_i_n_61;
  wire axi_register_if_i_n_62;
  wire axi_register_if_i_n_63;
  wire axi_register_if_i_n_64;
  wire axi_register_if_i_n_65;
  wire axi_register_if_i_n_66;
  wire axi_register_if_i_n_67;
  wire axi_register_if_i_n_68;
  wire axi_register_if_i_n_69;
  wire axi_register_if_i_n_70;
  wire axi_register_if_i_n_71;
  wire axi_register_if_i_n_72;
  wire axi_register_if_i_n_73;
  wire axi_register_if_i_n_74;
  wire axi_register_if_i_n_75;
  wire axi_register_if_i_n_76;
  wire axi_register_if_i_n_77;
  wire axi_register_if_i_n_78;
  wire axi_register_if_i_n_79;
  wire axi_register_if_i_n_80;
  wire axi_register_if_i_n_81;
  wire axi_register_if_i_n_82;
  wire axi_register_if_i_n_83;
  wire axi_register_if_i_n_84;
  wire axi_register_if_i_n_85;
  wire axi_register_if_i_n_86;
  wire axi_register_if_i_n_87;
  wire axi_register_if_i_n_88;
  wire axi_register_if_i_n_89;
  wire axi_register_if_i_n_90;
  wire axi_register_if_i_n_91;
  wire axi_register_if_i_n_92;
  wire axi_register_if_i_n_93;
  wire axi_register_if_i_n_94;
  wire axi_register_if_i_n_95;
  wire axi_register_if_i_n_96;
  wire axi_register_if_i_n_97;
  wire axi_register_if_i_n_98;
  wire axi_register_if_i_n_99;
  wire axi_rvalid_reg;
  wire axi_wr_access_reg;
  wire dest_out;
  wire dest_rst;
  wire done_flag;
  wire enable;
  wire enable_reg;
  wire error_flag;
  wire p_0_in;
  wire p_0_in0;
  wire [7:0]s00_ds_inc;
  wire s00_ds_status;
  wire [127:0]s00_tdata;
  wire s00_tready;
  wire s0_axis_clock;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [15:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [11:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [3:2]slv_addr;
  wire [15:0]slv_rdata;
  wire slv_rden_r;
  wire slv_rden_r_0;
  wire slv_rden_r_3;
  wire slv_rden_r_5;
  wire slv_wren_clk2;
  wire slv_wren_clk2_1;
  wire slv_wren_clk2_4;
  wire slv_wren_clk2_6;
  wire slv_wren_done_pulse;
  wire slv_wren_done_pulse_2;
  wire slv_wren_done_pulse_7;
  wire timeout_enable;
  wire [11:0]timeout_value;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc0_rfadc_exdes_ctrl_axi adc0_rfadc_exdes_ctrl_axi_i
       (.D({axi_register_if_i_n_86,axi_register_if_i_n_87,axi_register_if_i_n_88,axi_register_if_i_n_89}),
        .E(axi_register_if_i_n_105),
        .Q(axi_register_if_i_n_17),
        .\adc00_ds_control_0_reg[0]_0 (axi_register_if_i_n_41),
        .\adc00_ds_control_0_reg[1]_0 (adc00_ds_control_0),
        .\adc00_ds_enable_0_reg[0]_0 (axi_register_if_i_n_68),
        .\adc00_ds_inc_0_reg[11]_0 (axi_register_if_i_n_81),
        .\adc00_ds_inc_0_reg[7]_0 (s00_ds_inc),
        .adc00_ds_pulse_control_0(adc00_ds_pulse_control_0),
        .adc00_ds_pulse_control_0_reg_0(axi_register_if_i_n_67),
        .\adc00_ds_type_0_reg[3]_0 (adc00_ds_type_0),
        .\adc00_ds_type_0_reg[3]_1 (axi_register_if_i_n_85),
        .\adc01_ds_control_0_reg[0]_0 (axi_register_if_i_n_101),
        .\adc01_ds_control_0_reg[1]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_29),
        .\adc01_ds_enable_0_reg[7]_0 (axi_register_if_i_n_100),
        .\adc01_ds_inc_0_reg[0]_0 (axi_register_if_i_n_43),
        .\adc01_ds_inc_0_reg[1]_0 (adc01_ds_inc_0),
        .\adc01_ds_inc_0_reg[2]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_27),
        .\adc01_ds_inc_0_reg[3]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_25),
        .\adc01_ds_inc_0_reg[4]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_22),
        .\adc01_ds_inc_0_reg[5]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_21),
        .\adc01_ds_inc_0_reg[6]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_19),
        .\adc01_ds_inc_0_reg[7]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_17),
        .\adc01_ds_type_0_reg[3]_0 (adc01_ds_type_0),
        .\adc01_ds_type_0_reg[3]_1 (axi_register_if_i_n_96),
        .\adc02_ds_control_0_reg[0]_0 (axi_register_if_i_n_91),
        .\adc02_ds_enable_0_reg[0]_0 (axi_register_if_i_n_92),
        .\adc02_ds_inc_0_reg[0]_0 (axi_register_if_i_n_70),
        .\adc02_ds_inc_0_reg[1]_0 (adc02_ds_inc_0),
        .\adc02_ds_type_0_reg[0]_0 (axi_register_if_i_n_69),
        .\adc02_ds_type_0_reg[3]_0 (adc02_ds_type_0),
        .\adc03_ds_control_0_reg[0]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_30),
        .\adc03_ds_control_0_reg[1]_0 (axi_register_if_i_n_74),
        .\adc03_ds_enable_0_reg[0]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_32),
        .\adc03_ds_enable_0_reg[0]_1 (axi_register_if_i_n_29),
        .\adc03_ds_enable_0_reg[1]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_28),
        .\adc03_ds_enable_0_reg[2]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_26),
        .\adc03_ds_enable_0_reg[3]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_24),
        .\adc03_ds_enable_0_reg[4]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_23),
        .\adc03_ds_enable_0_reg[5]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_20),
        .\adc03_ds_enable_0_reg[6]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_18),
        .\adc03_ds_enable_0_reg[7]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_16),
        .\adc03_ds_inc_0_reg[0]_0 (axi_register_if_i_n_103),
        .\adc03_ds_inc_0_reg[10]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_13),
        .\adc03_ds_inc_0_reg[11]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_6),
        .\adc03_ds_inc_0_reg[1]_0 (adc03_ds_inc_0),
        .\adc03_ds_inc_0_reg[8]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_15),
        .\adc03_ds_inc_0_reg[9]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_14),
        .\adc03_ds_type_0_reg[0]_0 (axi_register_if_i_n_102),
        .\adc03_ds_type_0_reg[3]_0 (adc03_ds_type_0),
        .adc0axi_map_wready(adc0axi_map_wready),
        .adc0slv_rden(adc0slv_rden),
        .adc_ds_slv_rden(adc_ds_slv_rden),
        .clk2_valid_pulse_reg(adc0_rfadc_exdes_ctrl_axi_i_n_5),
        .dest_rst(dest_rst),
        .p_0_in(p_0_in),
        .s00_tready(s00_tready),
        .s0_axis_clock(s0_axis_clock),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_rdata(slv_rdata),
        .\slv_rdata_reg[0]_0 (axi_register_if_i_n_50),
        .\slv_rdata_reg[0]_1 (axi_register_if_i_n_21),
        .\slv_rdata_reg[12]_0 ({p_0_in0,axi_register_if_i_n_31,axi_register_if_i_n_32,axi_register_if_i_n_33,axi_register_if_i_n_34,axi_register_if_i_n_35}),
        .\slv_rdata_reg[12]_1 (axi_register_if_i_n_112),
        .\slv_rdata_reg[12]_2 (axi_register_if_i_n_90),
        .\slv_rdata_reg[13]_0 (axi_register_if_i_n_111),
        .\slv_rdata_reg[14]_0 (axi_register_if_i_n_110),
        .\slv_rdata_reg[15]_0 (axi_register_if_i_n_109),
        .\slv_rdata_reg[1]_0 (axi_register_if_i_n_22),
        .\slv_rdata_reg[2]_0 (axi_register_if_i_n_49),
        .\slv_rdata_reg[2]_1 (axi_register_if_i_n_23),
        .\slv_rdata_reg[3]_0 (axi_register_if_i_n_24),
        .\slv_rdata_reg[4]_0 (axi_register_if_i_n_25),
        .\slv_rdata_reg[5]_0 (axi_register_if_i_n_26),
        .\slv_rdata_reg[6]_0 (axi_register_if_i_n_27),
        .\slv_rdata_reg[7]_0 (axi_register_if_i_n_28),
        .slv_rden_r(slv_rden_r),
        .slv_rden_r_reg_0(adc0_rfadc_exdes_ctrl_axi_i_n_4),
        .slv_wren_clk2(slv_wren_clk2),
        .slv_wren_done_pulse(slv_wren_done_pulse));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc1_rfadc_exdes_ctrl_axi adc1_rfadc_exdes_ctrl_axi_i
       (.E(axi_register_if_i_n_106),
        .Q(adc13_ds_inc_0),
        .\adc10_ds_control_0_reg[1]_0 (axi_register_if_i_n_75),
        .\adc10_ds_enable_0_reg[0]_0 (axi_register_if_i_n_68),
        .\adc10_ds_enable_0_reg[7]_0 ({adc10_ds_enable_0[7:4],adc10_ds_enable_0[2]}),
        .\adc10_ds_inc_0_reg[11]_0 (axi_register_if_i_n_82),
        .\adc10_ds_inc_0_reg[7]_0 ({adc10_ds_inc_0[7:4],adc10_ds_inc_0[2]}),
        .\adc10_ds_type_0_reg[0]_0 (axi_register_if_i_n_85),
        .\adc10_ds_type_0_reg[2]_0 (adc10_ds_type_0),
        .\adc11_ds_control_0_reg[0]_0 (axi_register_if_i_n_101),
        .\adc11_ds_enable_0_reg[2]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_27),
        .\adc11_ds_enable_0_reg[7]_0 (adc11_ds_enable_0),
        .\adc11_ds_enable_0_reg[7]_1 (axi_register_if_i_n_99),
        .\adc11_ds_inc_0_reg[11]_0 (axi_register_if_i_n_78),
        .\adc11_ds_inc_0_reg[8]_0 (adc11_ds_inc_0),
        .\adc11_ds_type_0_reg[3]_0 (axi_register_if_i_n_95),
        .\adc12_ds_control_0_reg[0]_0 (axi_register_if_i_n_91),
        .\adc12_ds_enable_0_reg[0]_0 (axi_register_if_i_n_92),
        .\adc12_ds_enable_0_reg[2]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_21),
        .\adc12_ds_enable_0_reg[7]_0 (adc12_ds_enable_0),
        .\adc12_ds_inc_0_reg[0]_0 (axi_register_if_i_n_70),
        .\adc12_ds_inc_0_reg[7]_0 (adc12_ds_inc_0),
        .\adc12_ds_type_0_reg[0]_0 (axi_register_if_i_n_69),
        .\adc13_ds_control_0_reg[1]_0 (axi_register_if_i_n_73),
        .\adc13_ds_enable_0_reg[7]_0 (adc13_ds_enable_0),
        .\adc13_ds_enable_0_reg[7]_1 (axi_register_if_i_n_66),
        .\adc13_ds_inc_0_reg[0]_0 (axi_register_if_i_n_103),
        .\adc13_ds_inc_0_reg[2]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_33),
        .\adc13_ds_inc_0_reg[8]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_32),
        .\adc13_ds_type_0_reg[0]_0 (axi_register_if_i_n_102),
        .adc1axi_map_wready(adc1axi_map_wready),
        .adc1slv_rden(adc1slv_rden),
        .adc_ds_axi_map_wready(adc_ds_axi_map_wready),
        .clk1_ready_pulse_reg(adc1_rfadc_exdes_ctrl_axi_i_n_26),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_rdata_reg[0]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_46),
        .\slv_rdata_reg[0]_1 (axi_register_if_i_n_40),
        .\slv_rdata_reg[10]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_54),
        .\slv_rdata_reg[11]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_53),
        .\slv_rdata_reg[1]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_45),
        .\slv_rdata_reg[2]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_52),
        .\slv_rdata_reg[2]_1 (axi_register_if_i_n_113),
        .\slv_rdata_reg[2]_2 (axi_register_if_i_n_48),
        .\slv_rdata_reg[2]_3 (axi_register_if_i_n_38),
        .\slv_rdata_reg[2]_4 (axi_register_if_i_n_50),
        .\slv_rdata_reg[2]_5 (axi_register_if_i_n_20),
        .\slv_rdata_reg[3]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_44),
        .\slv_rdata_reg[4]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_51),
        .\slv_rdata_reg[4]_1 (axi_register_if_i_n_59),
        .\slv_rdata_reg[5]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_50),
        .\slv_rdata_reg[5]_1 (axi_register_if_i_n_60),
        .\slv_rdata_reg[6]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_49),
        .\slv_rdata_reg[6]_1 (axi_register_if_i_n_61),
        .\slv_rdata_reg[7]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_48),
        .\slv_rdata_reg[7]_1 (axi_register_if_i_n_62),
        .\slv_rdata_reg[8]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_47),
        .\slv_rdata_reg[8]_1 (axi_register_if_i_n_47),
        .\slv_rdata_reg[9]_0 (adc1_rfadc_exdes_ctrl_axi_i_n_55),
        .\slv_rdata_reg[9]_1 ({axi_register_if_i_n_32,axi_register_if_i_n_33,slv_addr}),
        .\slv_rdata_reg[9]_2 (axi_register_if_i_n_44),
        .slv_rden_r(slv_rden_r_0),
        .slv_wren_clk2(slv_wren_clk2_1),
        .slv_wren_done_pulse(slv_wren_done_pulse_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc2_rfadc_exdes_ctrl_axi adc2_rfadc_exdes_ctrl_axi_i
       (.E(axi_register_if_i_n_107),
        .Q(adc23_ds_inc_0),
        .\adc20_ds_control_0_reg[1]_0 (axi_register_if_i_n_76),
        .\adc20_ds_enable_0_reg[0]_0 (axi_register_if_i_n_68),
        .\adc20_ds_enable_0_reg[7]_0 ({adc20_ds_enable_0[7:4],adc20_ds_enable_0[2]}),
        .\adc20_ds_inc_0_reg[11]_0 (axi_register_if_i_n_83),
        .\adc20_ds_inc_0_reg[8]_0 ({adc20_ds_inc_0[8:4],adc20_ds_inc_0[2]}),
        .\adc20_ds_type_0_reg[0]_0 (axi_register_if_i_n_85),
        .\adc20_ds_type_0_reg[2]_0 (adc20_ds_type_0),
        .\adc21_ds_control_0_reg[0]_0 (axi_register_if_i_n_101),
        .\adc21_ds_enable_0_reg[7]_0 (adc21_ds_enable_0),
        .\adc21_ds_enable_0_reg[7]_1 (axi_register_if_i_n_98),
        .\adc21_ds_inc_0_reg[11]_0 (axi_register_if_i_n_79),
        .\adc21_ds_inc_0_reg[2]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_25),
        .\adc21_ds_inc_0_reg[8]_0 (adc21_ds_inc_0),
        .\adc21_ds_type_0_reg[3]_0 (axi_register_if_i_n_94),
        .\adc22_ds_control_0_reg[0]_0 (axi_register_if_i_n_91),
        .\adc22_ds_enable_0_reg[0]_0 (axi_register_if_i_n_92),
        .\adc22_ds_enable_0_reg[7]_0 ({adc22_ds_enable_0[7:4],adc22_ds_enable_0[2]}),
        .\adc22_ds_inc_0_reg[0]_0 (axi_register_if_i_n_70),
        .\adc22_ds_inc_0_reg[8]_0 ({adc22_ds_inc_0[8:4],adc22_ds_inc_0[2]}),
        .\adc22_ds_type_0_reg[0]_0 (axi_register_if_i_n_69),
        .\adc22_ds_type_0_reg[2]_0 (adc22_ds_type_0),
        .\adc23_ds_control_0_reg[1]_0 (axi_register_if_i_n_72),
        .\adc23_ds_enable_0_reg[7]_0 (adc23_ds_enable_0),
        .\adc23_ds_enable_0_reg[7]_1 (axi_register_if_i_n_65),
        .\adc23_ds_inc_0_reg[0]_0 (axi_register_if_i_n_103),
        .\adc23_ds_inc_0_reg[2]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_30),
        .\adc23_ds_type_0_reg[0]_0 (axi_register_if_i_n_102),
        .adc2axi_map_wready(adc2axi_map_wready),
        .adc2slv_rden(adc2slv_rden),
        .\axi_rresp[1]_i_2 (axi_register_if_i_n_17),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_rdata_reg[0]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_50),
        .\slv_rdata_reg[0]_1 (axi_register_if_i_n_40),
        .\slv_rdata_reg[10]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_58),
        .\slv_rdata_reg[11]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_57),
        .\slv_rdata_reg[1]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_49),
        .\slv_rdata_reg[2]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_56),
        .\slv_rdata_reg[2]_1 (axi_register_if_i_n_48),
        .\slv_rdata_reg[2]_2 (axi_register_if_i_n_38),
        .\slv_rdata_reg[2]_3 (axi_register_if_i_n_50),
        .\slv_rdata_reg[2]_4 (axi_register_if_i_n_19),
        .\slv_rdata_reg[3]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_48),
        .\slv_rdata_reg[4]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_55),
        .\slv_rdata_reg[4]_1 (axi_register_if_i_n_55),
        .\slv_rdata_reg[5]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_54),
        .\slv_rdata_reg[5]_1 (axi_register_if_i_n_56),
        .\slv_rdata_reg[6]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_53),
        .\slv_rdata_reg[6]_1 (axi_register_if_i_n_57),
        .\slv_rdata_reg[7]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_52),
        .\slv_rdata_reg[7]_1 (axi_register_if_i_n_58),
        .\slv_rdata_reg[8]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_51),
        .\slv_rdata_reg[8]_1 (axi_register_if_i_n_46),
        .\slv_rdata_reg[9]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_59),
        .\slv_rdata_reg[9]_1 ({axi_register_if_i_n_32,axi_register_if_i_n_33,slv_addr}),
        .\slv_rdata_reg[9]_2 (axi_register_if_i_n_44),
        .slv_rden_r(slv_rden_r_3),
        .slv_rden_r_0(slv_rden_r_0),
        .slv_rden_r_2(slv_rden_r_5),
        .slv_rden_r_4(slv_rden_r),
        .slv_rden_r_reg_0(adc2_rfadc_exdes_ctrl_axi_i_n_24),
        .slv_rden_r_reg_1(adc2_rfadc_exdes_ctrl_axi_i_n_35),
        .slv_wren_clk2(slv_wren_clk2_4),
        .slv_wren_done_pulse(slv_wren_done_pulse_2),
        .slv_wren_done_pulse_1(slv_wren_done_pulse_7),
        .slv_wren_done_pulse_3(slv_wren_done_pulse));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc3_rfadc_exdes_ctrl_axi adc3_rfadc_exdes_ctrl_axi_i
       (.E(axi_register_if_i_n_108),
        .Q({adc30_ds_enable_0[7:4],adc30_ds_enable_0[2]}),
        .\adc30_ds_control_0_reg[1]_0 (axi_register_if_i_n_77),
        .\adc30_ds_enable_0_reg[0]_0 (axi_register_if_i_n_68),
        .\adc30_ds_inc_0_reg[11]_0 (axi_register_if_i_n_84),
        .\adc30_ds_inc_0_reg[8]_0 ({adc30_ds_inc_0[8:4],adc30_ds_inc_0[2]}),
        .\adc30_ds_type_0_reg[0]_0 (axi_register_if_i_n_85),
        .\adc30_ds_type_0_reg[2]_0 (adc30_ds_type_0),
        .\adc31_ds_control_0_reg[0]_0 (axi_register_if_i_n_101),
        .\adc31_ds_enable_0_reg[7]_0 (adc31_ds_enable_0),
        .\adc31_ds_enable_0_reg[7]_1 (axi_register_if_i_n_97),
        .\adc31_ds_inc_0_reg[11]_0 (axi_register_if_i_n_80),
        .\adc31_ds_inc_0_reg[2]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_43),
        .\adc31_ds_inc_0_reg[8]_0 (adc31_ds_inc_0),
        .\adc31_ds_type_0_reg[3]_0 (axi_register_if_i_n_93),
        .\adc32_ds_control_0_reg[0]_0 (axi_register_if_i_n_91),
        .\adc32_ds_enable_0_reg[0]_0 (axi_register_if_i_n_92),
        .\adc32_ds_enable_0_reg[7]_0 ({adc32_ds_enable_0[7:4],adc32_ds_enable_0[2]}),
        .\adc32_ds_inc_0_reg[0]_0 (axi_register_if_i_n_70),
        .\adc32_ds_inc_0_reg[8]_0 ({adc32_ds_inc_0[8:4],adc32_ds_inc_0[2]}),
        .\adc32_ds_type_0_reg[0]_0 (axi_register_if_i_n_69),
        .\adc32_ds_type_0_reg[2]_0 (adc32_ds_type_0),
        .\adc33_ds_control_0_reg[1]_0 (axi_register_if_i_n_71),
        .\adc33_ds_enable_0_reg[7]_0 (adc33_ds_enable_0),
        .\adc33_ds_enable_0_reg[7]_1 (axi_register_if_i_n_64),
        .\adc33_ds_inc_0_reg[0]_0 (axi_register_if_i_n_103),
        .\adc33_ds_inc_0_reg[2]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_44),
        .\adc33_ds_inc_0_reg[8]_0 (adc33_ds_inc_0),
        .\adc33_ds_type_0_reg[0]_0 (axi_register_if_i_n_102),
        .\adc33_ds_type_0_reg[3]_0 (adc33_ds_type_0),
        .adc3axi_map_wready(adc3axi_map_wready),
        .adc3slv_rden(adc3slv_rden),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_rdata_reg[0]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_53),
        .\slv_rdata_reg[0]_1 (axi_register_if_i_n_40),
        .\slv_rdata_reg[10]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_61),
        .\slv_rdata_reg[11]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_60),
        .\slv_rdata_reg[1]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_52),
        .\slv_rdata_reg[2]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_59),
        .\slv_rdata_reg[2]_1 (axi_register_if_i_n_48),
        .\slv_rdata_reg[2]_2 (axi_register_if_i_n_38),
        .\slv_rdata_reg[2]_3 (axi_register_if_i_n_50),
        .\slv_rdata_reg[2]_4 (axi_register_if_i_n_18),
        .\slv_rdata_reg[3]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_51),
        .\slv_rdata_reg[3]_1 (axi_register_if_i_n_42),
        .\slv_rdata_reg[3]_2 (axi_register_if_i_n_113),
        .\slv_rdata_reg[3]_3 (axi_register_if_i_n_39),
        .\slv_rdata_reg[3]_4 (axi_register_if_i_n_104),
        .\slv_rdata_reg[4]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_58),
        .\slv_rdata_reg[4]_1 (axi_register_if_i_n_51),
        .\slv_rdata_reg[5]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_57),
        .\slv_rdata_reg[5]_1 (axi_register_if_i_n_52),
        .\slv_rdata_reg[6]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_56),
        .\slv_rdata_reg[6]_1 (axi_register_if_i_n_53),
        .\slv_rdata_reg[7]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_55),
        .\slv_rdata_reg[7]_1 (axi_register_if_i_n_54),
        .\slv_rdata_reg[8]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_54),
        .\slv_rdata_reg[8]_1 (axi_register_if_i_n_45),
        .\slv_rdata_reg[9]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_62),
        .\slv_rdata_reg[9]_1 ({axi_register_if_i_n_32,axi_register_if_i_n_33,slv_addr}),
        .\slv_rdata_reg[9]_2 (axi_register_if_i_n_44),
        .slv_rden_r(slv_rden_r_5),
        .slv_wren_clk2(slv_wren_clk2_6),
        .slv_wren_done_pulse(slv_wren_done_pulse_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_exdes_cfg adc_exdes_cfg_i
       (.E(axi_register_if_i_n_63),
        .Q(Q),
        .done_flag(done_flag),
        .enable(enable),
        .enable_reg_0(enable_reg),
        .enable_reg_1(axi_register_if_i_n_114),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .timeout_enable(timeout_enable),
        .timeout_enable_reg_0(axi_register_if_i_n_115),
        .\timeout_value_reg[11]_0 (timeout_value));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_axi axi_register_if_i
       (.D(D),
        .E(axi_register_if_i_n_63),
        .Q(axi_register_if_i_n_17),
        .\adc01_ds_inc_0_reg[0] (adc0_rfadc_exdes_ctrl_axi_i_n_5),
        .adc0axi_map_wready(adc0axi_map_wready),
        .adc0slv_rden(adc0slv_rden),
        .\adc10_ds_enable_0_reg[2] (axi_register_if_i_n_20),
        .\adc11_ds_inc_0_reg[8] (axi_register_if_i_n_47),
        .adc1axi_map_wready(adc1axi_map_wready),
        .adc1slv_rden(adc1slv_rden),
        .\adc22_ds_enable_0_reg[2] (axi_register_if_i_n_19),
        .\adc22_ds_inc_0_reg[8] (axi_register_if_i_n_46),
        .adc2axi_map_wready(adc2axi_map_wready),
        .adc2slv_rden(adc2slv_rden),
        .adc2slv_rden_reg_0(adc2_rfadc_exdes_ctrl_axi_i_n_24),
        .adc2slv_rden_reg_1(adc0_rfadc_exdes_ctrl_axi_i_n_4),
        .\adc31_ds_inc_0_reg[8] (axi_register_if_i_n_45),
        .\adc32_ds_enable_0_reg[2] (axi_register_if_i_n_18),
        .\adc33_ds_enable_0_reg[3] (axi_register_if_i_n_104),
        .adc3axi_map_wready(adc3axi_map_wready),
        .adc3slv_rden(adc3slv_rden),
        .adc_ds_axi_map_wready(adc_ds_axi_map_wready),
        .adc_ds_slv_rden(adc_ds_slv_rden),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .\axi_bresp_reg[1]_0 (adc2_rfadc_exdes_ctrl_axi_i_n_35),
        .\axi_bresp_reg[1]_1 (adc1_rfadc_exdes_ctrl_axi_i_n_26),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .\axi_rdata_reg[0]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_53),
        .\axi_rdata_reg[0]_1 (adc1_rfadc_exdes_ctrl_axi_i_n_46),
        .\axi_rdata_reg[0]_2 (adc2_rfadc_exdes_ctrl_axi_i_n_50),
        .\axi_rdata_reg[10]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_61),
        .\axi_rdata_reg[10]_1 (adc1_rfadc_exdes_ctrl_axi_i_n_54),
        .\axi_rdata_reg[10]_2 (adc2_rfadc_exdes_ctrl_axi_i_n_58),
        .\axi_rdata_reg[11]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_60),
        .\axi_rdata_reg[11]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_57),
        .\axi_rdata_reg[11]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_53),
        .\axi_rdata_reg[1]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_52),
        .\axi_rdata_reg[1]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_49),
        .\axi_rdata_reg[1]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_45),
        .\axi_rdata_reg[2]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_59),
        .\axi_rdata_reg[2]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_56),
        .\axi_rdata_reg[2]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_52),
        .\axi_rdata_reg[3]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_51),
        .\axi_rdata_reg[3]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_48),
        .\axi_rdata_reg[3]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_44),
        .\axi_rdata_reg[4]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_58),
        .\axi_rdata_reg[4]_1 (adc1_rfadc_exdes_ctrl_axi_i_n_51),
        .\axi_rdata_reg[4]_2 (adc2_rfadc_exdes_ctrl_axi_i_n_55),
        .\axi_rdata_reg[5]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_57),
        .\axi_rdata_reg[5]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_54),
        .\axi_rdata_reg[5]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_50),
        .\axi_rdata_reg[6]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_56),
        .\axi_rdata_reg[6]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_53),
        .\axi_rdata_reg[6]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_49),
        .\axi_rdata_reg[7]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_55),
        .\axi_rdata_reg[7]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_52),
        .\axi_rdata_reg[7]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_48),
        .\axi_rdata_reg[8]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_54),
        .\axi_rdata_reg[8]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_51),
        .\axi_rdata_reg[8]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_47),
        .\axi_rdata_reg[9]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_62),
        .\axi_rdata_reg[9]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_59),
        .\axi_rdata_reg[9]_2 (adc1_rfadc_exdes_ctrl_axi_i_n_55),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wr_access_reg_0(axi_wr_access_reg),
        .dest_out(dest_out),
        .enable(enable),
        .error_flag(error_flag),
        .p_0_in(p_0_in),
        .s00_ds_status(s00_ds_status),
        .s00_tdata(s00_tdata),
        .s00_tdata_32_sp_1(axi_register_if_i_n_21),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(axi_register_if_i_n_40),
        .s_axi_aresetn_1(axi_register_if_i_n_44),
        .s_axi_aresetn_2(axi_register_if_i_n_49),
        .s_axi_aresetn_3(axi_register_if_i_n_50),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata[0]),
        .\s_axi_wdata[0]_0 (axi_register_if_i_n_115),
        .s_axi_wdata_0_sp_1(axi_register_if_i_n_114),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_addr_reg[11]_0 ({p_0_in0,axi_register_if_i_n_31,axi_register_if_i_n_32,axi_register_if_i_n_33,axi_register_if_i_n_34,axi_register_if_i_n_35,slv_addr}),
        .\slv_addr_reg[2]_0 (axi_register_if_i_n_29),
        .\slv_addr_reg[2]_1 (axi_register_if_i_n_41),
        .\slv_addr_reg[2]_10 (axi_register_if_i_n_76),
        .\slv_addr_reg[2]_11 (axi_register_if_i_n_77),
        .\slv_addr_reg[2]_12 (axi_register_if_i_n_78),
        .\slv_addr_reg[2]_13 (axi_register_if_i_n_79),
        .\slv_addr_reg[2]_14 (axi_register_if_i_n_80),
        .\slv_addr_reg[2]_15 (axi_register_if_i_n_82),
        .\slv_addr_reg[2]_16 (axi_register_if_i_n_83),
        .\slv_addr_reg[2]_17 (axi_register_if_i_n_84),
        .\slv_addr_reg[2]_18 (axi_register_if_i_n_102),
        .\slv_addr_reg[2]_19 (axi_register_if_i_n_109),
        .\slv_addr_reg[2]_2 (axi_register_if_i_n_64),
        .\slv_addr_reg[2]_20 (axi_register_if_i_n_110),
        .\slv_addr_reg[2]_21 (axi_register_if_i_n_111),
        .\slv_addr_reg[2]_22 (axi_register_if_i_n_112),
        .\slv_addr_reg[2]_3 (axi_register_if_i_n_65),
        .\slv_addr_reg[2]_4 (axi_register_if_i_n_66),
        .\slv_addr_reg[2]_5 (axi_register_if_i_n_70),
        .\slv_addr_reg[2]_6 (axi_register_if_i_n_71),
        .\slv_addr_reg[2]_7 (axi_register_if_i_n_72),
        .\slv_addr_reg[2]_8 (axi_register_if_i_n_73),
        .\slv_addr_reg[2]_9 (axi_register_if_i_n_75),
        .\slv_addr_reg[3]_0 (axi_register_if_i_n_97),
        .\slv_addr_reg[3]_1 (axi_register_if_i_n_98),
        .\slv_addr_reg[3]_2 (axi_register_if_i_n_99),
        .\slv_addr_reg[3]_3 (axi_register_if_i_n_101),
        .\slv_addr_reg[4]_0 (axi_register_if_i_n_25),
        .\slv_addr_reg[4]_1 (axi_register_if_i_n_68),
        .\slv_addr_reg[4]_2 (axi_register_if_i_n_69),
        .\slv_addr_reg[4]_3 (axi_register_if_i_n_85),
        .\slv_addr_reg[4]_4 (axi_register_if_i_n_93),
        .\slv_addr_reg[4]_5 (axi_register_if_i_n_94),
        .\slv_addr_reg[4]_6 (axi_register_if_i_n_95),
        .\slv_addr_reg[5]_0 (axi_register_if_i_n_23),
        .\slv_addr_reg[5]_1 (axi_register_if_i_n_24),
        .\slv_addr_reg[5]_2 (axi_register_if_i_n_26),
        .\slv_addr_reg[5]_3 (axi_register_if_i_n_27),
        .\slv_addr_reg[5]_4 (axi_register_if_i_n_28),
        .\slv_addr_reg[5]_5 (axi_register_if_i_n_67),
        .\slv_addr_reg[5]_6 (axi_register_if_i_n_92),
        .\slv_addr_reg[6]_0 (axi_register_if_i_n_22),
        .\slv_addr_reg[6]_1 ({axi_register_if_i_n_86,axi_register_if_i_n_87,axi_register_if_i_n_88,axi_register_if_i_n_89}),
        .\slv_addr_reg[6]_2 (axi_register_if_i_n_90),
        .\slv_addr_reg[7]_0 (axi_register_if_i_n_39),
        .\slv_addr_reg[8]_0 (axi_register_if_i_n_38),
        .\slv_addr_reg[8]_1 (axi_register_if_i_n_42),
        .\slv_addr_reg[8]_2 (axi_register_if_i_n_43),
        .\slv_addr_reg[8]_3 (axi_register_if_i_n_48),
        .\slv_addr_reg[8]_4 (axi_register_if_i_n_91),
        .\slv_addr_reg[9]_0 (axi_register_if_i_n_51),
        .\slv_addr_reg[9]_1 (axi_register_if_i_n_52),
        .\slv_addr_reg[9]_10 (axi_register_if_i_n_61),
        .\slv_addr_reg[9]_11 (axi_register_if_i_n_62),
        .\slv_addr_reg[9]_12 (axi_register_if_i_n_103),
        .\slv_addr_reg[9]_13 (axi_register_if_i_n_113),
        .\slv_addr_reg[9]_2 (axi_register_if_i_n_53),
        .\slv_addr_reg[9]_3 (axi_register_if_i_n_54),
        .\slv_addr_reg[9]_4 (axi_register_if_i_n_55),
        .\slv_addr_reg[9]_5 (axi_register_if_i_n_56),
        .\slv_addr_reg[9]_6 (axi_register_if_i_n_57),
        .\slv_addr_reg[9]_7 (axi_register_if_i_n_58),
        .\slv_addr_reg[9]_8 (axi_register_if_i_n_59),
        .\slv_addr_reg[9]_9 (axi_register_if_i_n_60),
        .slv_rdata(slv_rdata),
        .\slv_rdata[1]_i_6_0 (adc00_ds_control_0),
        .\slv_rdata[7]_i_2_0 (adc12_ds_enable_0),
        .\slv_rdata[7]_i_2_1 (adc12_ds_inc_0),
        .\slv_rdata[7]_i_2__0_0 ({adc22_ds_enable_0[7:4],adc22_ds_enable_0[2]}),
        .\slv_rdata[7]_i_2__1_0 ({adc32_ds_enable_0[7:4],adc32_ds_enable_0[2]}),
        .\slv_rdata[7]_i_3__0_0 ({adc10_ds_enable_0[7:4],adc10_ds_enable_0[2]}),
        .\slv_rdata[7]_i_3__0_1 ({adc10_ds_inc_0[7:4],adc10_ds_inc_0[2]}),
        .\slv_rdata[7]_i_3__1_0 ({adc20_ds_enable_0[7:4],adc20_ds_enable_0[2]}),
        .\slv_rdata[7]_i_3__2_0 ({adc30_ds_enable_0[7:4],adc30_ds_enable_0[2]}),
        .\slv_rdata_reg[0] (adc0_rfadc_exdes_ctrl_axi_i_n_32),
        .\slv_rdata_reg[0]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_30),
        .\slv_rdata_reg[10] (adc0_rfadc_exdes_ctrl_axi_i_n_13),
        .\slv_rdata_reg[11] (adc0_rfadc_exdes_ctrl_axi_i_n_6),
        .\slv_rdata_reg[1] (adc0_rfadc_exdes_ctrl_axi_i_n_28),
        .\slv_rdata_reg[1]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_29),
        .\slv_rdata_reg[1]_1 (adc03_ds_inc_0),
        .\slv_rdata_reg[1]_2 (adc02_ds_inc_0),
        .\slv_rdata_reg[1]_3 (adc01_ds_inc_0),
        .\slv_rdata_reg[2] (adc3_rfadc_exdes_ctrl_axi_i_n_44),
        .\slv_rdata_reg[2]_0 (adc3_rfadc_exdes_ctrl_axi_i_n_43),
        .\slv_rdata_reg[2]_1 (adc2_rfadc_exdes_ctrl_axi_i_n_30),
        .\slv_rdata_reg[2]_10 (adc0_rfadc_exdes_ctrl_axi_i_n_26),
        .\slv_rdata_reg[2]_11 (adc32_ds_type_0),
        .\slv_rdata_reg[2]_12 (adc22_ds_type_0),
        .\slv_rdata_reg[2]_2 (adc2_rfadc_exdes_ctrl_axi_i_n_25),
        .\slv_rdata_reg[2]_3 (adc1_rfadc_exdes_ctrl_axi_i_n_21),
        .\slv_rdata_reg[2]_4 (adc1_rfadc_exdes_ctrl_axi_i_n_33),
        .\slv_rdata_reg[2]_5 (adc1_rfadc_exdes_ctrl_axi_i_n_27),
        .\slv_rdata_reg[2]_6 (adc30_ds_type_0),
        .\slv_rdata_reg[2]_7 (adc20_ds_type_0),
        .\slv_rdata_reg[2]_8 (adc10_ds_type_0),
        .\slv_rdata_reg[2]_9 (adc0_rfadc_exdes_ctrl_axi_i_n_27),
        .\slv_rdata_reg[3] (adc00_ds_type_0),
        .\slv_rdata_reg[3]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_25),
        .\slv_rdata_reg[3]_1 (adc03_ds_type_0),
        .\slv_rdata_reg[3]_2 (adc02_ds_type_0),
        .\slv_rdata_reg[3]_3 (adc01_ds_type_0),
        .\slv_rdata_reg[3]_4 (adc0_rfadc_exdes_ctrl_axi_i_n_24),
        .\slv_rdata_reg[3]_5 (adc33_ds_type_0),
        .\slv_rdata_reg[4] (adc0_rfadc_exdes_ctrl_axi_i_n_22),
        .\slv_rdata_reg[4]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_23),
        .\slv_rdata_reg[5] (adc0_rfadc_exdes_ctrl_axi_i_n_21),
        .\slv_rdata_reg[5]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_20),
        .\slv_rdata_reg[6] (adc0_rfadc_exdes_ctrl_axi_i_n_19),
        .\slv_rdata_reg[6]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_18),
        .\slv_rdata_reg[7] (s00_ds_inc),
        .\slv_rdata_reg[7]_0 (adc0_rfadc_exdes_ctrl_axi_i_n_17),
        .\slv_rdata_reg[7]_1 (adc0_rfadc_exdes_ctrl_axi_i_n_16),
        .\slv_rdata_reg[7]_2 (adc33_ds_enable_0),
        .\slv_rdata_reg[7]_3 (adc11_ds_enable_0),
        .\slv_rdata_reg[7]_4 (adc13_ds_enable_0),
        .\slv_rdata_reg[7]_5 (adc13_ds_inc_0),
        .\slv_rdata_reg[7]_6 (adc21_ds_enable_0),
        .\slv_rdata_reg[7]_7 (adc23_ds_enable_0),
        .\slv_rdata_reg[7]_8 (adc31_ds_enable_0),
        .\slv_rdata_reg[8] (adc31_ds_inc_0),
        .\slv_rdata_reg[8]_0 (adc33_ds_inc_0),
        .\slv_rdata_reg[8]_1 ({adc22_ds_inc_0[8:4],adc22_ds_inc_0[2]}),
        .\slv_rdata_reg[8]_2 ({adc20_ds_inc_0[8:4],adc20_ds_inc_0[2]}),
        .\slv_rdata_reg[8]_3 (adc1_rfadc_exdes_ctrl_axi_i_n_32),
        .\slv_rdata_reg[8]_4 (adc11_ds_inc_0),
        .\slv_rdata_reg[8]_5 ({adc30_ds_inc_0[8:4],adc30_ds_inc_0[2]}),
        .\slv_rdata_reg[8]_6 ({adc32_ds_inc_0[8:4],adc32_ds_inc_0[2]}),
        .\slv_rdata_reg[8]_7 (adc0_rfadc_exdes_ctrl_axi_i_n_15),
        .\slv_rdata_reg[8]_8 (adc23_ds_inc_0),
        .\slv_rdata_reg[8]_9 (adc21_ds_inc_0),
        .\slv_rdata_reg[9] (adc0_rfadc_exdes_ctrl_axi_i_n_14),
        .slv_rden_r(slv_rden_r),
        .slv_rden_r_0(slv_rden_r_5),
        .slv_rden_r_3(slv_rden_r_3),
        .slv_rden_r_5(slv_rden_r_0),
        .slv_rden_r_reg(axi_register_if_i_n_74),
        .slv_rden_r_reg_0(axi_register_if_i_n_81),
        .slv_rden_r_reg_1(axi_register_if_i_n_96),
        .slv_rden_r_reg_2(axi_register_if_i_n_100),
        .slv_rden_r_reg_3(axi_register_if_i_n_105),
        .slv_rden_r_reg_4(axi_register_if_i_n_106),
        .slv_rden_r_reg_5(axi_register_if_i_n_107),
        .slv_rden_r_reg_6(axi_register_if_i_n_108),
        .slv_wren_clk2(slv_wren_clk2),
        .slv_wren_clk2_1(slv_wren_clk2_6),
        .slv_wren_clk2_2(slv_wren_clk2_4),
        .slv_wren_clk2_4(slv_wren_clk2_1),
        .slv_wren_done_pulse(slv_wren_done_pulse_7),
        .timeout_enable(timeout_enable),
        .\timeout_timer_count_reg[11]_0 (timeout_value));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_axi
   (adc_ds_slv_rden,
    adc2axi_map_wready,
    adc_ds_axi_map_wready,
    adc0axi_map_wready,
    adc1axi_map_wready,
    adc3axi_map_wready,
    axi_wr_access_reg_0,
    axi_arready_reg_0,
    adc0slv_rden,
    adc1slv_rden,
    adc2slv_rden,
    adc3slv_rden,
    axi_rvalid_reg_0,
    axi_bvalid_reg_0,
    axi_awready_reg_0,
    s_axi_bresp,
    s_axi_rresp,
    Q,
    \adc32_ds_enable_0_reg[2] ,
    \adc22_ds_enable_0_reg[2] ,
    \adc10_ds_enable_0_reg[2] ,
    s00_tdata_32_sp_1,
    \slv_addr_reg[6]_0 ,
    \slv_addr_reg[5]_0 ,
    \slv_addr_reg[5]_1 ,
    \slv_addr_reg[4]_0 ,
    \slv_addr_reg[5]_2 ,
    \slv_addr_reg[5]_3 ,
    \slv_addr_reg[5]_4 ,
    \slv_addr_reg[2]_0 ,
    \slv_addr_reg[11]_0 ,
    \slv_addr_reg[8]_0 ,
    \slv_addr_reg[7]_0 ,
    s_axi_aresetn_0,
    \slv_addr_reg[2]_1 ,
    \slv_addr_reg[8]_1 ,
    \slv_addr_reg[8]_2 ,
    s_axi_aresetn_1,
    \adc31_ds_inc_0_reg[8] ,
    \adc22_ds_inc_0_reg[8] ,
    \adc11_ds_inc_0_reg[8] ,
    \slv_addr_reg[8]_3 ,
    s_axi_aresetn_2,
    s_axi_aresetn_3,
    \slv_addr_reg[9]_0 ,
    \slv_addr_reg[9]_1 ,
    \slv_addr_reg[9]_2 ,
    \slv_addr_reg[9]_3 ,
    \slv_addr_reg[9]_4 ,
    \slv_addr_reg[9]_5 ,
    \slv_addr_reg[9]_6 ,
    \slv_addr_reg[9]_7 ,
    \slv_addr_reg[9]_8 ,
    \slv_addr_reg[9]_9 ,
    \slv_addr_reg[9]_10 ,
    \slv_addr_reg[9]_11 ,
    E,
    \slv_addr_reg[2]_2 ,
    \slv_addr_reg[2]_3 ,
    \slv_addr_reg[2]_4 ,
    \slv_addr_reg[5]_5 ,
    \slv_addr_reg[4]_1 ,
    \slv_addr_reg[4]_2 ,
    \slv_addr_reg[2]_5 ,
    \slv_addr_reg[2]_6 ,
    \slv_addr_reg[2]_7 ,
    \slv_addr_reg[2]_8 ,
    slv_rden_r_reg,
    \slv_addr_reg[2]_9 ,
    \slv_addr_reg[2]_10 ,
    \slv_addr_reg[2]_11 ,
    \slv_addr_reg[2]_12 ,
    \slv_addr_reg[2]_13 ,
    \slv_addr_reg[2]_14 ,
    slv_rden_r_reg_0,
    \slv_addr_reg[2]_15 ,
    \slv_addr_reg[2]_16 ,
    \slv_addr_reg[2]_17 ,
    \slv_addr_reg[4]_3 ,
    \slv_addr_reg[6]_1 ,
    \slv_addr_reg[6]_2 ,
    \slv_addr_reg[8]_4 ,
    \slv_addr_reg[5]_6 ,
    \slv_addr_reg[4]_4 ,
    \slv_addr_reg[4]_5 ,
    \slv_addr_reg[4]_6 ,
    slv_rden_r_reg_1,
    \slv_addr_reg[3]_0 ,
    \slv_addr_reg[3]_1 ,
    \slv_addr_reg[3]_2 ,
    slv_rden_r_reg_2,
    \slv_addr_reg[3]_3 ,
    \slv_addr_reg[2]_18 ,
    \slv_addr_reg[9]_12 ,
    \adc33_ds_enable_0_reg[3] ,
    slv_rden_r_reg_3,
    slv_rden_r_reg_4,
    slv_rden_r_reg_5,
    slv_rden_r_reg_6,
    \slv_addr_reg[2]_19 ,
    \slv_addr_reg[2]_20 ,
    \slv_addr_reg[2]_21 ,
    \slv_addr_reg[2]_22 ,
    \slv_addr_reg[9]_13 ,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[0]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    p_0_in,
    s_axi_arvalid,
    s_axi_awvalid,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[11]_0 ,
    s_axi_aresetn,
    \slv_rdata_reg[2] ,
    \slv_rdata_reg[2]_0 ,
    \slv_rdata_reg[2]_1 ,
    \slv_rdata_reg[2]_2 ,
    \slv_rdata_reg[2]_3 ,
    \slv_rdata_reg[2]_4 ,
    \slv_rdata_reg[2]_5 ,
    slv_rden_r,
    slv_wren_clk2,
    \timeout_timer_count_reg[11]_0 ,
    \adc01_ds_inc_0_reg[0] ,
    \slv_rdata_reg[8] ,
    \slv_rdata_reg[8]_0 ,
    \slv_rdata_reg[8]_1 ,
    \slv_rdata_reg[8]_2 ,
    \slv_rdata_reg[8]_3 ,
    \slv_rdata_reg[8]_4 ,
    s_axi_araddr,
    s00_tdata,
    \slv_rdata[7]_i_3__0_0 ,
    \slv_rdata[7]_i_3__0_1 ,
    \slv_rdata[7]_i_2_0 ,
    \slv_rdata[7]_i_2_1 ,
    \slv_rdata[7]_i_3__1_0 ,
    \slv_rdata[7]_i_2__0_0 ,
    \slv_rdata[7]_i_3__2_0 ,
    \slv_rdata_reg[8]_5 ,
    \slv_rdata[7]_i_2__1_0 ,
    \slv_rdata_reg[8]_6 ,
    s_axi_awaddr,
    s_axi_wvalid,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[8]_0 ,
    adc2slv_rden_reg_0,
    adc2slv_rden_reg_1,
    slv_wren_done_pulse,
    slv_rden_r_0,
    slv_rdata,
    s_axi_rready,
    s_axi_bready,
    timeout_enable,
    \axi_bresp_reg[1]_0 ,
    \axi_bresp_reg[1]_1 ,
    \slv_rdata_reg[0] ,
    \slv_rdata_reg[1] ,
    slv_wren_clk2_1,
    slv_wren_clk2_2,
    slv_rden_r_3,
    slv_wren_clk2_4,
    slv_rden_r_5,
    dest_out,
    D,
    enable,
    error_flag,
    \slv_rdata_reg[2]_6 ,
    \slv_rdata_reg[2]_7 ,
    \slv_rdata_reg[2]_8 ,
    \slv_rdata_reg[7] ,
    \slv_rdata_reg[3] ,
    \slv_rdata_reg[1]_0 ,
    \slv_rdata[1]_i_6_0 ,
    \slv_rdata_reg[2]_9 ,
    \slv_rdata_reg[0]_0 ,
    s00_ds_status,
    \slv_rdata_reg[3]_0 ,
    \slv_rdata_reg[4] ,
    \slv_rdata_reg[5] ,
    \slv_rdata_reg[6] ,
    \slv_rdata_reg[7]_0 ,
    \slv_rdata_reg[8]_7 ,
    \slv_rdata_reg[9] ,
    \slv_rdata_reg[10] ,
    \slv_rdata_reg[11] ,
    \slv_rdata_reg[3]_1 ,
    \slv_rdata_reg[3]_2 ,
    \slv_rdata_reg[3]_3 ,
    \slv_rdata_reg[8]_8 ,
    \slv_rdata_reg[8]_9 ,
    \slv_rdata_reg[1]_1 ,
    \slv_rdata_reg[1]_2 ,
    \slv_rdata_reg[1]_3 ,
    \slv_rdata_reg[2]_10 ,
    \slv_rdata_reg[3]_4 ,
    \slv_rdata_reg[5]_0 ,
    \slv_rdata_reg[6]_0 ,
    \slv_rdata_reg[7]_1 ,
    \slv_rdata_reg[7]_2 ,
    \slv_rdata_reg[3]_5 ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[0]_2 ,
    \axi_rdata_reg[3]_1 ,
    \axi_rdata_reg[3]_2 ,
    \axi_rdata_reg[4]_1 ,
    \axi_rdata_reg[4]_2 ,
    \axi_rdata_reg[5]_1 ,
    \axi_rdata_reg[5]_2 ,
    \axi_rdata_reg[9]_1 ,
    \axi_rdata_reg[9]_2 ,
    \axi_rdata_reg[10]_1 ,
    \axi_rdata_reg[10]_2 ,
    \axi_rdata_reg[1]_1 ,
    \axi_rdata_reg[1]_2 ,
    \axi_rdata_reg[2]_1 ,
    \axi_rdata_reg[2]_2 ,
    \axi_rdata_reg[6]_1 ,
    \axi_rdata_reg[6]_2 ,
    \axi_rdata_reg[7]_1 ,
    \axi_rdata_reg[7]_2 ,
    \axi_rdata_reg[8]_1 ,
    \axi_rdata_reg[8]_2 ,
    \axi_rdata_reg[11]_1 ,
    \axi_rdata_reg[11]_2 ,
    \slv_rdata_reg[4]_0 ,
    \slv_rdata_reg[2]_11 ,
    \slv_rdata_reg[2]_12 ,
    \slv_rdata_reg[7]_3 ,
    \slv_rdata_reg[7]_4 ,
    \slv_rdata_reg[7]_5 ,
    \slv_rdata_reg[7]_6 ,
    \slv_rdata_reg[7]_7 ,
    \slv_rdata_reg[7]_8 ,
    s_axi_wdata);
  output adc_ds_slv_rden;
  output adc2axi_map_wready;
  output adc_ds_axi_map_wready;
  output adc0axi_map_wready;
  output adc1axi_map_wready;
  output adc3axi_map_wready;
  output axi_wr_access_reg_0;
  output axi_arready_reg_0;
  output adc0slv_rden;
  output adc1slv_rden;
  output adc2slv_rden;
  output adc3slv_rden;
  output axi_rvalid_reg_0;
  output axi_bvalid_reg_0;
  output axi_awready_reg_0;
  output [0:0]s_axi_bresp;
  output [0:0]s_axi_rresp;
  output [0:0]Q;
  output \adc32_ds_enable_0_reg[2] ;
  output \adc22_ds_enable_0_reg[2] ;
  output \adc10_ds_enable_0_reg[2] ;
  output s00_tdata_32_sp_1;
  output \slv_addr_reg[6]_0 ;
  output \slv_addr_reg[5]_0 ;
  output \slv_addr_reg[5]_1 ;
  output \slv_addr_reg[4]_0 ;
  output \slv_addr_reg[5]_2 ;
  output \slv_addr_reg[5]_3 ;
  output \slv_addr_reg[5]_4 ;
  output [0:0]\slv_addr_reg[2]_0 ;
  output [7:0]\slv_addr_reg[11]_0 ;
  output \slv_addr_reg[8]_0 ;
  output \slv_addr_reg[7]_0 ;
  output s_axi_aresetn_0;
  output [0:0]\slv_addr_reg[2]_1 ;
  output \slv_addr_reg[8]_1 ;
  output [0:0]\slv_addr_reg[8]_2 ;
  output s_axi_aresetn_1;
  output \adc31_ds_inc_0_reg[8] ;
  output \adc22_ds_inc_0_reg[8] ;
  output \adc11_ds_inc_0_reg[8] ;
  output \slv_addr_reg[8]_3 ;
  output s_axi_aresetn_2;
  output s_axi_aresetn_3;
  output \slv_addr_reg[9]_0 ;
  output \slv_addr_reg[9]_1 ;
  output \slv_addr_reg[9]_2 ;
  output \slv_addr_reg[9]_3 ;
  output \slv_addr_reg[9]_4 ;
  output \slv_addr_reg[9]_5 ;
  output \slv_addr_reg[9]_6 ;
  output \slv_addr_reg[9]_7 ;
  output \slv_addr_reg[9]_8 ;
  output \slv_addr_reg[9]_9 ;
  output \slv_addr_reg[9]_10 ;
  output \slv_addr_reg[9]_11 ;
  output [0:0]E;
  output [0:0]\slv_addr_reg[2]_2 ;
  output [0:0]\slv_addr_reg[2]_3 ;
  output [0:0]\slv_addr_reg[2]_4 ;
  output \slv_addr_reg[5]_5 ;
  output \slv_addr_reg[4]_1 ;
  output \slv_addr_reg[4]_2 ;
  output \slv_addr_reg[2]_5 ;
  output [0:0]\slv_addr_reg[2]_6 ;
  output [0:0]\slv_addr_reg[2]_7 ;
  output [0:0]\slv_addr_reg[2]_8 ;
  output [0:0]slv_rden_r_reg;
  output [0:0]\slv_addr_reg[2]_9 ;
  output [0:0]\slv_addr_reg[2]_10 ;
  output [0:0]\slv_addr_reg[2]_11 ;
  output [0:0]\slv_addr_reg[2]_12 ;
  output [0:0]\slv_addr_reg[2]_13 ;
  output [0:0]\slv_addr_reg[2]_14 ;
  output [0:0]slv_rden_r_reg_0;
  output [0:0]\slv_addr_reg[2]_15 ;
  output [0:0]\slv_addr_reg[2]_16 ;
  output [0:0]\slv_addr_reg[2]_17 ;
  output \slv_addr_reg[4]_3 ;
  output [3:0]\slv_addr_reg[6]_1 ;
  output \slv_addr_reg[6]_2 ;
  output \slv_addr_reg[8]_4 ;
  output \slv_addr_reg[5]_6 ;
  output [0:0]\slv_addr_reg[4]_4 ;
  output [0:0]\slv_addr_reg[4]_5 ;
  output [0:0]\slv_addr_reg[4]_6 ;
  output [0:0]slv_rden_r_reg_1;
  output [0:0]\slv_addr_reg[3]_0 ;
  output [0:0]\slv_addr_reg[3]_1 ;
  output [0:0]\slv_addr_reg[3]_2 ;
  output [0:0]slv_rden_r_reg_2;
  output \slv_addr_reg[3]_3 ;
  output \slv_addr_reg[2]_18 ;
  output \slv_addr_reg[9]_12 ;
  output \adc33_ds_enable_0_reg[3] ;
  output [0:0]slv_rden_r_reg_3;
  output [0:0]slv_rden_r_reg_4;
  output [0:0]slv_rden_r_reg_5;
  output [0:0]slv_rden_r_reg_6;
  output \slv_addr_reg[2]_19 ;
  output \slv_addr_reg[2]_20 ;
  output \slv_addr_reg[2]_21 ;
  output \slv_addr_reg[2]_22 ;
  output \slv_addr_reg[9]_13 ;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[0]_0 ;
  output [15:0]s_axi_rdata;
  input s_axi_aclk;
  input p_0_in;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[11]_0 ;
  input s_axi_aresetn;
  input \slv_rdata_reg[2] ;
  input \slv_rdata_reg[2]_0 ;
  input \slv_rdata_reg[2]_1 ;
  input \slv_rdata_reg[2]_2 ;
  input \slv_rdata_reg[2]_3 ;
  input \slv_rdata_reg[2]_4 ;
  input \slv_rdata_reg[2]_5 ;
  input slv_rden_r;
  input slv_wren_clk2;
  input [11:0]\timeout_timer_count_reg[11]_0 ;
  input \adc01_ds_inc_0_reg[0] ;
  input [4:0]\slv_rdata_reg[8] ;
  input [5:0]\slv_rdata_reg[8]_0 ;
  input [5:0]\slv_rdata_reg[8]_1 ;
  input [5:0]\slv_rdata_reg[8]_2 ;
  input \slv_rdata_reg[8]_3 ;
  input [4:0]\slv_rdata_reg[8]_4 ;
  input [15:0]s_axi_araddr;
  input [127:0]s00_tdata;
  input [4:0]\slv_rdata[7]_i_3__0_0 ;
  input [4:0]\slv_rdata[7]_i_3__0_1 ;
  input [3:0]\slv_rdata[7]_i_2_0 ;
  input [3:0]\slv_rdata[7]_i_2_1 ;
  input [4:0]\slv_rdata[7]_i_3__1_0 ;
  input [4:0]\slv_rdata[7]_i_2__0_0 ;
  input [4:0]\slv_rdata[7]_i_3__2_0 ;
  input [5:0]\slv_rdata_reg[8]_5 ;
  input [4:0]\slv_rdata[7]_i_2__1_0 ;
  input [5:0]\slv_rdata_reg[8]_6 ;
  input [15:0]s_axi_awaddr;
  input s_axi_wvalid;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[2]_0 ;
  input [0:0]\axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[8]_0 ;
  input adc2slv_rden_reg_0;
  input adc2slv_rden_reg_1;
  input slv_wren_done_pulse;
  input slv_rden_r_0;
  input [15:0]slv_rdata;
  input s_axi_rready;
  input s_axi_bready;
  input timeout_enable;
  input \axi_bresp_reg[1]_0 ;
  input \axi_bresp_reg[1]_1 ;
  input \slv_rdata_reg[0] ;
  input \slv_rdata_reg[1] ;
  input slv_wren_clk2_1;
  input slv_wren_clk2_2;
  input slv_rden_r_3;
  input slv_wren_clk2_4;
  input slv_rden_r_5;
  input dest_out;
  input [0:0]D;
  input enable;
  input error_flag;
  input [0:0]\slv_rdata_reg[2]_6 ;
  input [0:0]\slv_rdata_reg[2]_7 ;
  input [0:0]\slv_rdata_reg[2]_8 ;
  input [7:0]\slv_rdata_reg[7] ;
  input [3:0]\slv_rdata_reg[3] ;
  input \slv_rdata_reg[1]_0 ;
  input [0:0]\slv_rdata[1]_i_6_0 ;
  input \slv_rdata_reg[2]_9 ;
  input \slv_rdata_reg[0]_0 ;
  input s00_ds_status;
  input \slv_rdata_reg[3]_0 ;
  input \slv_rdata_reg[4] ;
  input \slv_rdata_reg[5] ;
  input \slv_rdata_reg[6] ;
  input \slv_rdata_reg[7]_0 ;
  input \slv_rdata_reg[8]_7 ;
  input \slv_rdata_reg[9] ;
  input \slv_rdata_reg[10] ;
  input \slv_rdata_reg[11] ;
  input [3:0]\slv_rdata_reg[3]_1 ;
  input [3:0]\slv_rdata_reg[3]_2 ;
  input [3:0]\slv_rdata_reg[3]_3 ;
  input [4:0]\slv_rdata_reg[8]_8 ;
  input [4:0]\slv_rdata_reg[8]_9 ;
  input [1:0]\slv_rdata_reg[1]_1 ;
  input [1:0]\slv_rdata_reg[1]_2 ;
  input [1:0]\slv_rdata_reg[1]_3 ;
  input \slv_rdata_reg[2]_10 ;
  input \slv_rdata_reg[3]_4 ;
  input \slv_rdata_reg[5]_0 ;
  input \slv_rdata_reg[6]_0 ;
  input \slv_rdata_reg[7]_1 ;
  input [4:0]\slv_rdata_reg[7]_2 ;
  input [0:0]\slv_rdata_reg[3]_5 ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[0]_2 ;
  input \axi_rdata_reg[3]_1 ;
  input \axi_rdata_reg[3]_2 ;
  input \axi_rdata_reg[4]_1 ;
  input \axi_rdata_reg[4]_2 ;
  input \axi_rdata_reg[5]_1 ;
  input \axi_rdata_reg[5]_2 ;
  input \axi_rdata_reg[9]_1 ;
  input \axi_rdata_reg[9]_2 ;
  input \axi_rdata_reg[10]_1 ;
  input \axi_rdata_reg[10]_2 ;
  input \axi_rdata_reg[1]_1 ;
  input \axi_rdata_reg[1]_2 ;
  input \axi_rdata_reg[2]_1 ;
  input \axi_rdata_reg[2]_2 ;
  input \axi_rdata_reg[6]_1 ;
  input \axi_rdata_reg[6]_2 ;
  input \axi_rdata_reg[7]_1 ;
  input \axi_rdata_reg[7]_2 ;
  input \axi_rdata_reg[8]_1 ;
  input \axi_rdata_reg[8]_2 ;
  input \axi_rdata_reg[11]_1 ;
  input \axi_rdata_reg[11]_2 ;
  input \slv_rdata_reg[4]_0 ;
  input [0:0]\slv_rdata_reg[2]_11 ;
  input [0:0]\slv_rdata_reg[2]_12 ;
  input [3:0]\slv_rdata_reg[7]_3 ;
  input [3:0]\slv_rdata_reg[7]_4 ;
  input [3:0]\slv_rdata_reg[7]_5 ;
  input [3:0]\slv_rdata_reg[7]_6 ;
  input [3:0]\slv_rdata_reg[7]_7 ;
  input [3:0]\slv_rdata_reg[7]_8 ;
  input [0:0]s_axi_wdata;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \adc01_ds_control_0[1]_i_3_n_0 ;
  wire \adc01_ds_enable_0[7]_i_2_n_0 ;
  wire \adc01_ds_enable_0[7]_i_3_n_0 ;
  wire \adc01_ds_inc_0_reg[0] ;
  wire \adc02_ds_control_0[1]_i_3_n_0 ;
  wire \adc02_ds_enable_0[7]_i_3_n_0 ;
  wire \adc02_ds_enable_0[7]_i_4_n_0 ;
  wire \adc02_ds_inc_0[11]_i_3_n_0 ;
  wire \adc02_ds_inc_0[11]_i_4_n_0 ;
  wire \adc03_ds_inc_0[11]_i_3_n_0 ;
  wire adc0axi_map_wready;
  wire adc0axi_map_wready0;
  wire adc0slv_rden;
  wire adc0slv_rden_i_1_n_0;
  wire \adc10_ds_enable_0_reg[2] ;
  wire \adc11_ds_inc_0_reg[8] ;
  wire adc1axi_map_wready;
  wire adc1axi_map_wready0;
  wire adc1slv_rden;
  wire adc1slv_rden_i_1_n_0;
  wire \adc22_ds_enable_0_reg[2] ;
  wire \adc22_ds_inc_0_reg[8] ;
  wire adc2axi_map_wready;
  wire adc2axi_map_wready0;
  wire adc2slv_rden;
  wire adc2slv_rden_i_1_n_0;
  wire adc2slv_rden_reg_0;
  wire adc2slv_rden_reg_1;
  wire \adc31_ds_inc_0_reg[8] ;
  wire \adc32_ds_enable_0_reg[2] ;
  wire \adc33_ds_enable_0_reg[3] ;
  wire adc3axi_map_wready;
  wire adc3axi_map_wready0;
  wire adc3slv_rden;
  wire adc3slv_rden_i_1_n_0;
  wire adc_ds_axi_map_wready;
  wire adc_ds_axi_map_wready0;
  wire adc_ds_slv_rden;
  wire adc_ds_slv_rden_i_1_n_0;
  wire adc_ds_slv_rden_i_3_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready19_in;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire \axi_bresp[1]_i_1_n_0 ;
  wire \axi_bresp[1]_i_5_n_0 ;
  wire \axi_bresp_reg[1]_0 ;
  wire \axi_bresp_reg[1]_1 ;
  wire axi_bvalid0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[10]_1 ;
  wire \axi_rdata_reg[10]_2 ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[11]_1 ;
  wire \axi_rdata_reg[11]_2 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_1 ;
  wire \axi_rdata_reg[1]_2 ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[2]_1 ;
  wire \axi_rdata_reg[2]_2 ;
  wire [0:0]\axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[3]_1 ;
  wire \axi_rdata_reg[3]_2 ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[4]_1 ;
  wire \axi_rdata_reg[4]_2 ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[5]_1 ;
  wire \axi_rdata_reg[5]_2 ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[6]_1 ;
  wire \axi_rdata_reg[6]_2 ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[7]_1 ;
  wire \axi_rdata_reg[7]_2 ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[8]_1 ;
  wire \axi_rdata_reg[8]_2 ;
  wire \axi_rdata_reg[9]_0 ;
  wire \axi_rdata_reg[9]_1 ;
  wire \axi_rdata_reg[9]_2 ;
  wire \axi_rresp[1]_i_1_n_0 ;
  wire \axi_rresp[1]_i_2_n_0 ;
  wire \axi_rresp[1]_i_5_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wr_access0;
  wire axi_wr_access_reg_0;
  wire dest_out;
  wire enable;
  wire error_flag;
  wire load_timeout_timer0;
  wire p_0_in;
  wire [12:0]p_2_in;
  wire read_in_progress;
  wire read_in_progress_i_1_n_0;
  wire read_in_progress_i_2_n_0;
  wire s00_ds_status;
  wire [127:0]s00_tdata;
  wire s00_tdata_32_sn_1;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire s_axi_aresetn_3;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [15:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[0]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wvalid;
  wire [4:4]slv_addr;
  wire \slv_addr[10]_i_1_n_0 ;
  wire \slv_addr[11]_i_1_n_0 ;
  wire \slv_addr[2]_i_1_n_0 ;
  wire \slv_addr[3]_i_1_n_0 ;
  wire \slv_addr[4]_i_1_n_0 ;
  wire \slv_addr[5]_i_1_n_0 ;
  wire \slv_addr[6]_i_1_n_0 ;
  wire \slv_addr[7]_i_1_n_0 ;
  wire \slv_addr[8]_i_1_n_0 ;
  wire \slv_addr[9]_i_1_n_0 ;
  wire [7:0]\slv_addr_reg[11]_0 ;
  wire [0:0]\slv_addr_reg[2]_0 ;
  wire [0:0]\slv_addr_reg[2]_1 ;
  wire [0:0]\slv_addr_reg[2]_10 ;
  wire [0:0]\slv_addr_reg[2]_11 ;
  wire [0:0]\slv_addr_reg[2]_12 ;
  wire [0:0]\slv_addr_reg[2]_13 ;
  wire [0:0]\slv_addr_reg[2]_14 ;
  wire [0:0]\slv_addr_reg[2]_15 ;
  wire [0:0]\slv_addr_reg[2]_16 ;
  wire [0:0]\slv_addr_reg[2]_17 ;
  wire \slv_addr_reg[2]_18 ;
  wire \slv_addr_reg[2]_19 ;
  wire [0:0]\slv_addr_reg[2]_2 ;
  wire \slv_addr_reg[2]_20 ;
  wire \slv_addr_reg[2]_21 ;
  wire \slv_addr_reg[2]_22 ;
  wire [0:0]\slv_addr_reg[2]_3 ;
  wire [0:0]\slv_addr_reg[2]_4 ;
  wire \slv_addr_reg[2]_5 ;
  wire [0:0]\slv_addr_reg[2]_6 ;
  wire [0:0]\slv_addr_reg[2]_7 ;
  wire [0:0]\slv_addr_reg[2]_8 ;
  wire [0:0]\slv_addr_reg[2]_9 ;
  wire [0:0]\slv_addr_reg[3]_0 ;
  wire [0:0]\slv_addr_reg[3]_1 ;
  wire [0:0]\slv_addr_reg[3]_2 ;
  wire \slv_addr_reg[3]_3 ;
  wire \slv_addr_reg[4]_0 ;
  wire \slv_addr_reg[4]_1 ;
  wire \slv_addr_reg[4]_2 ;
  wire \slv_addr_reg[4]_3 ;
  wire [0:0]\slv_addr_reg[4]_4 ;
  wire [0:0]\slv_addr_reg[4]_5 ;
  wire [0:0]\slv_addr_reg[4]_6 ;
  wire \slv_addr_reg[5]_0 ;
  wire \slv_addr_reg[5]_1 ;
  wire \slv_addr_reg[5]_2 ;
  wire \slv_addr_reg[5]_3 ;
  wire \slv_addr_reg[5]_4 ;
  wire \slv_addr_reg[5]_5 ;
  wire \slv_addr_reg[5]_6 ;
  wire \slv_addr_reg[6]_0 ;
  wire [3:0]\slv_addr_reg[6]_1 ;
  wire \slv_addr_reg[6]_2 ;
  wire \slv_addr_reg[7]_0 ;
  wire \slv_addr_reg[8]_0 ;
  wire \slv_addr_reg[8]_1 ;
  wire [0:0]\slv_addr_reg[8]_2 ;
  wire \slv_addr_reg[8]_3 ;
  wire \slv_addr_reg[8]_4 ;
  wire \slv_addr_reg[9]_0 ;
  wire \slv_addr_reg[9]_1 ;
  wire \slv_addr_reg[9]_10 ;
  wire \slv_addr_reg[9]_11 ;
  wire \slv_addr_reg[9]_12 ;
  wire \slv_addr_reg[9]_13 ;
  wire \slv_addr_reg[9]_2 ;
  wire \slv_addr_reg[9]_3 ;
  wire \slv_addr_reg[9]_4 ;
  wire \slv_addr_reg[9]_5 ;
  wire \slv_addr_reg[9]_6 ;
  wire \slv_addr_reg[9]_7 ;
  wire \slv_addr_reg[9]_8 ;
  wire \slv_addr_reg[9]_9 ;
  wire \slv_addr_reg_n_0_[6] ;
  wire \slv_rd_addr[0]_i_1_n_0 ;
  wire \slv_rd_addr[1]_i_1_n_0 ;
  wire \slv_rd_addr[2]_i_1_n_0 ;
  wire \slv_rd_addr[3]_i_1_n_0 ;
  wire \slv_rd_addr[4]_i_1_n_0 ;
  wire \slv_rd_addr[5]_i_1_n_0 ;
  wire \slv_rd_addr[5]_i_2_n_0 ;
  wire \slv_rd_addr_reg_n_0_[1] ;
  wire \slv_rd_addr_reg_n_0_[2] ;
  wire \slv_rd_addr_reg_n_0_[3] ;
  wire \slv_rd_addr_reg_n_0_[4] ;
  wire \slv_rd_addr_reg_n_0_[5] ;
  wire [15:0]slv_rdata;
  wire \slv_rdata[0]_i_2_n_0 ;
  wire \slv_rdata[0]_i_3_n_0 ;
  wire \slv_rdata[0]_i_4_n_0 ;
  wire \slv_rdata[0]_i_5_n_0 ;
  wire \slv_rdata[0]_i_6_n_0 ;
  wire \slv_rdata[0]_i_7_n_0 ;
  wire \slv_rdata[0]_i_8_n_0 ;
  wire \slv_rdata[0]_i_9_n_0 ;
  wire \slv_rdata[10]_i_6_n_0 ;
  wire \slv_rdata[10]_i_7_n_0 ;
  wire \slv_rdata[10]_i_8_n_0 ;
  wire \slv_rdata[10]_i_9_n_0 ;
  wire \slv_rdata[11]_i_10_n_0 ;
  wire \slv_rdata[11]_i_3_n_0 ;
  wire \slv_rdata[11]_i_7_n_0 ;
  wire \slv_rdata[11]_i_8_n_0 ;
  wire \slv_rdata[11]_i_9_n_0 ;
  wire \slv_rdata[12]_i_2_n_0 ;
  wire \slv_rdata[12]_i_3_n_0 ;
  wire \slv_rdata[13]_i_2_n_0 ;
  wire \slv_rdata[13]_i_3_n_0 ;
  wire \slv_rdata[14]_i_2_n_0 ;
  wire \slv_rdata[14]_i_3_n_0 ;
  wire \slv_rdata[15]_i_4_n_0 ;
  wire \slv_rdata[15]_i_5_n_0 ;
  wire \slv_rdata[1]_i_10_n_0 ;
  wire \slv_rdata[1]_i_12_n_0 ;
  wire \slv_rdata[1]_i_13_n_0 ;
  wire \slv_rdata[1]_i_3_n_0 ;
  wire \slv_rdata[1]_i_4_n_0 ;
  wire \slv_rdata[1]_i_5_n_0 ;
  wire [0:0]\slv_rdata[1]_i_6_0 ;
  wire \slv_rdata[1]_i_6_n_0 ;
  wire \slv_rdata[1]_i_7_n_0 ;
  wire \slv_rdata[1]_i_8_n_0 ;
  wire \slv_rdata[2]_i_2__0_n_0 ;
  wire \slv_rdata[2]_i_2__1_n_0 ;
  wire \slv_rdata[2]_i_2__2_n_0 ;
  wire \slv_rdata[2]_i_2_n_0 ;
  wire \slv_rdata[2]_i_3_n_0 ;
  wire \slv_rdata[2]_i_4__2_n_0 ;
  wire \slv_rdata[2]_i_5__0_n_0 ;
  wire \slv_rdata[2]_i_5__1_n_0 ;
  wire \slv_rdata[2]_i_5__2_n_0 ;
  wire \slv_rdata[2]_i_6_n_0 ;
  wire \slv_rdata[2]_i_9_n_0 ;
  wire \slv_rdata[3]_i_10_n_0 ;
  wire \slv_rdata[3]_i_2_n_0 ;
  wire \slv_rdata[3]_i_3_n_0 ;
  wire \slv_rdata[3]_i_4_n_0 ;
  wire \slv_rdata[3]_i_5_n_0 ;
  wire \slv_rdata[3]_i_6_n_0 ;
  wire \slv_rdata[3]_i_8__0_n_0 ;
  wire \slv_rdata[4]_i_2__0_n_0 ;
  wire \slv_rdata[4]_i_2__1_n_0 ;
  wire \slv_rdata[4]_i_2__2_n_0 ;
  wire \slv_rdata[4]_i_2_n_0 ;
  wire \slv_rdata[4]_i_3__0_n_0 ;
  wire \slv_rdata[4]_i_3__1_n_0 ;
  wire \slv_rdata[4]_i_3__2_n_0 ;
  wire \slv_rdata[4]_i_3_n_0 ;
  wire \slv_rdata[4]_i_4__0_n_0 ;
  wire \slv_rdata[4]_i_4__1_n_0 ;
  wire \slv_rdata[4]_i_4__2_n_0 ;
  wire \slv_rdata[4]_i_4_n_0 ;
  wire \slv_rdata[4]_i_5__0_n_0 ;
  wire \slv_rdata[4]_i_5__1_n_0 ;
  wire \slv_rdata[4]_i_5__2_n_0 ;
  wire \slv_rdata[4]_i_5_n_0 ;
  wire \slv_rdata[4]_i_7_n_0 ;
  wire \slv_rdata[5]_i_2__0_n_0 ;
  wire \slv_rdata[5]_i_2__1_n_0 ;
  wire \slv_rdata[5]_i_2__2_n_0 ;
  wire \slv_rdata[5]_i_2_n_0 ;
  wire \slv_rdata[5]_i_3__0_n_0 ;
  wire \slv_rdata[5]_i_3__1_n_0 ;
  wire \slv_rdata[5]_i_3__2_n_0 ;
  wire \slv_rdata[5]_i_3_n_0 ;
  wire \slv_rdata[5]_i_4__0_n_0 ;
  wire \slv_rdata[5]_i_4__1_n_0 ;
  wire \slv_rdata[5]_i_4__2_n_0 ;
  wire \slv_rdata[5]_i_4_n_0 ;
  wire \slv_rdata[5]_i_5__0_n_0 ;
  wire \slv_rdata[5]_i_5__1_n_0 ;
  wire \slv_rdata[5]_i_5__2_n_0 ;
  wire \slv_rdata[5]_i_5_n_0 ;
  wire \slv_rdata[5]_i_8_n_0 ;
  wire \slv_rdata[6]_i_2__0_n_0 ;
  wire \slv_rdata[6]_i_2__1_n_0 ;
  wire \slv_rdata[6]_i_2__2_n_0 ;
  wire \slv_rdata[6]_i_2_n_0 ;
  wire \slv_rdata[6]_i_3__0_n_0 ;
  wire \slv_rdata[6]_i_3__1_n_0 ;
  wire \slv_rdata[6]_i_3__2_n_0 ;
  wire \slv_rdata[6]_i_3_n_0 ;
  wire \slv_rdata[6]_i_4__0_n_0 ;
  wire \slv_rdata[6]_i_4__1_n_0 ;
  wire \slv_rdata[6]_i_4__2_n_0 ;
  wire \slv_rdata[6]_i_4_n_0 ;
  wire \slv_rdata[6]_i_5__0_n_0 ;
  wire \slv_rdata[6]_i_5__1_n_0 ;
  wire \slv_rdata[6]_i_5__2_n_0 ;
  wire \slv_rdata[6]_i_5_n_0 ;
  wire \slv_rdata[6]_i_8_n_0 ;
  wire \slv_rdata[7]_i_10_n_0 ;
  wire \slv_rdata[7]_i_12_n_0 ;
  wire [3:0]\slv_rdata[7]_i_2_0 ;
  wire [3:0]\slv_rdata[7]_i_2_1 ;
  wire [4:0]\slv_rdata[7]_i_2__0_0 ;
  wire \slv_rdata[7]_i_2__0_n_0 ;
  wire [4:0]\slv_rdata[7]_i_2__1_0 ;
  wire \slv_rdata[7]_i_2__1_n_0 ;
  wire \slv_rdata[7]_i_2_n_0 ;
  wire [4:0]\slv_rdata[7]_i_3__0_0 ;
  wire [4:0]\slv_rdata[7]_i_3__0_1 ;
  wire \slv_rdata[7]_i_3__0_n_0 ;
  wire [4:0]\slv_rdata[7]_i_3__1_0 ;
  wire \slv_rdata[7]_i_3__1_n_0 ;
  wire [4:0]\slv_rdata[7]_i_3__2_0 ;
  wire \slv_rdata[7]_i_3__2_n_0 ;
  wire \slv_rdata[7]_i_3_n_0 ;
  wire \slv_rdata[7]_i_4__0_n_0 ;
  wire \slv_rdata[7]_i_4__1_n_0 ;
  wire \slv_rdata[7]_i_4__2_n_0 ;
  wire \slv_rdata[7]_i_4_n_0 ;
  wire \slv_rdata[7]_i_5__0_n_0 ;
  wire \slv_rdata[7]_i_5__1_n_0 ;
  wire \slv_rdata[7]_i_5__2_n_0 ;
  wire \slv_rdata[7]_i_5_n_0 ;
  wire \slv_rdata[7]_i_6_n_0 ;
  wire \slv_rdata[7]_i_7_n_0 ;
  wire \slv_rdata[7]_i_8_n_0 ;
  wire \slv_rdata[8]_i_2__1_n_0 ;
  wire \slv_rdata[8]_i_2_n_0 ;
  wire \slv_rdata[8]_i_3_n_0 ;
  wire \slv_rdata[8]_i_4_n_0 ;
  wire \slv_rdata[8]_i_5_n_0 ;
  wire \slv_rdata[8]_i_6_n_0 ;
  wire \slv_rdata[8]_i_7_n_0 ;
  wire \slv_rdata[8]_i_8_n_0 ;
  wire \slv_rdata[8]_i_9_n_0 ;
  wire \slv_rdata[9]_i_6_n_0 ;
  wire \slv_rdata[9]_i_7_n_0 ;
  wire \slv_rdata[9]_i_8_n_0 ;
  wire \slv_rdata[9]_i_9_n_0 ;
  wire \slv_rdata_reg[0] ;
  wire \slv_rdata_reg[0]_0 ;
  wire \slv_rdata_reg[10] ;
  wire \slv_rdata_reg[10]_i_2_n_0 ;
  wire \slv_rdata_reg[10]_i_4_n_0 ;
  wire \slv_rdata_reg[10]_i_5_n_0 ;
  wire \slv_rdata_reg[11] ;
  wire \slv_rdata_reg[11]_i_2_n_0 ;
  wire \slv_rdata_reg[11]_i_5_n_0 ;
  wire \slv_rdata_reg[11]_i_6_n_0 ;
  wire \slv_rdata_reg[1] ;
  wire \slv_rdata_reg[1]_0 ;
  wire [1:0]\slv_rdata_reg[1]_1 ;
  wire [1:0]\slv_rdata_reg[1]_2 ;
  wire [1:0]\slv_rdata_reg[1]_3 ;
  wire \slv_rdata_reg[2] ;
  wire \slv_rdata_reg[2]_0 ;
  wire \slv_rdata_reg[2]_1 ;
  wire \slv_rdata_reg[2]_10 ;
  wire [0:0]\slv_rdata_reg[2]_11 ;
  wire [0:0]\slv_rdata_reg[2]_12 ;
  wire \slv_rdata_reg[2]_2 ;
  wire \slv_rdata_reg[2]_3 ;
  wire \slv_rdata_reg[2]_4 ;
  wire \slv_rdata_reg[2]_5 ;
  wire [0:0]\slv_rdata_reg[2]_6 ;
  wire [0:0]\slv_rdata_reg[2]_7 ;
  wire [0:0]\slv_rdata_reg[2]_8 ;
  wire \slv_rdata_reg[2]_9 ;
  wire [3:0]\slv_rdata_reg[3] ;
  wire \slv_rdata_reg[3]_0 ;
  wire [3:0]\slv_rdata_reg[3]_1 ;
  wire [3:0]\slv_rdata_reg[3]_2 ;
  wire [3:0]\slv_rdata_reg[3]_3 ;
  wire \slv_rdata_reg[3]_4 ;
  wire [0:0]\slv_rdata_reg[3]_5 ;
  wire \slv_rdata_reg[4] ;
  wire \slv_rdata_reg[4]_0 ;
  wire \slv_rdata_reg[5] ;
  wire \slv_rdata_reg[5]_0 ;
  wire \slv_rdata_reg[6] ;
  wire \slv_rdata_reg[6]_0 ;
  wire [7:0]\slv_rdata_reg[7] ;
  wire \slv_rdata_reg[7]_0 ;
  wire \slv_rdata_reg[7]_1 ;
  wire [4:0]\slv_rdata_reg[7]_2 ;
  wire [3:0]\slv_rdata_reg[7]_3 ;
  wire [3:0]\slv_rdata_reg[7]_4 ;
  wire [3:0]\slv_rdata_reg[7]_5 ;
  wire [3:0]\slv_rdata_reg[7]_6 ;
  wire [3:0]\slv_rdata_reg[7]_7 ;
  wire [3:0]\slv_rdata_reg[7]_8 ;
  wire [4:0]\slv_rdata_reg[8] ;
  wire [5:0]\slv_rdata_reg[8]_0 ;
  wire [5:0]\slv_rdata_reg[8]_1 ;
  wire [5:0]\slv_rdata_reg[8]_2 ;
  wire \slv_rdata_reg[8]_3 ;
  wire [4:0]\slv_rdata_reg[8]_4 ;
  wire [5:0]\slv_rdata_reg[8]_5 ;
  wire [5:0]\slv_rdata_reg[8]_6 ;
  wire \slv_rdata_reg[8]_7 ;
  wire [4:0]\slv_rdata_reg[8]_8 ;
  wire [4:0]\slv_rdata_reg[8]_9 ;
  wire \slv_rdata_reg[8]_i_2_n_0 ;
  wire \slv_rdata_reg[8]_i_4_n_0 ;
  wire \slv_rdata_reg[8]_i_5_n_0 ;
  wire \slv_rdata_reg[9] ;
  wire \slv_rdata_reg[9]_i_2_n_0 ;
  wire \slv_rdata_reg[9]_i_4_n_0 ;
  wire \slv_rdata_reg[9]_i_5_n_0 ;
  wire slv_rden_r;
  wire slv_rden_r_0;
  wire slv_rden_r_3;
  wire slv_rden_r_5;
  wire [0:0]slv_rden_r_reg;
  wire [0:0]slv_rden_r_reg_0;
  wire [0:0]slv_rden_r_reg_1;
  wire [0:0]slv_rden_r_reg_2;
  wire [0:0]slv_rden_r_reg_3;
  wire [0:0]slv_rden_r_reg_4;
  wire [0:0]slv_rden_r_reg_5;
  wire [0:0]slv_rden_r_reg_6;
  wire slv_reg_rden;
  wire slv_reg_rden0;
  wire slv_reg_rden_i_1_n_0;
  wire slv_wren_clk2;
  wire slv_wren_clk2_1;
  wire slv_wren_clk2_2;
  wire slv_wren_clk2_4;
  wire slv_wren_done_pulse;
  wire timeout;
  wire timeout_enable;
  wire \timeout_timer_count[10]_i_2_n_0 ;
  wire \timeout_timer_count[12]_i_1_n_0 ;
  wire \timeout_timer_count[12]_i_2_n_0 ;
  wire \timeout_timer_count[12]_i_4_n_0 ;
  wire \timeout_timer_count[12]_i_5_n_0 ;
  wire \timeout_timer_count[12]_i_6_n_0 ;
  wire \timeout_timer_count[12]_i_7_n_0 ;
  wire \timeout_timer_count[12]_i_8_n_0 ;
  wire \timeout_timer_count[4]_i_2_n_0 ;
  wire \timeout_timer_count[5]_i_2_n_0 ;
  wire \timeout_timer_count[8]_i_2_n_0 ;
  wire \timeout_timer_count[9]_i_2_n_0 ;
  wire [11:0]\timeout_timer_count_reg[11]_0 ;
  wire \timeout_timer_count_reg_n_0_[0] ;
  wire \timeout_timer_count_reg_n_0_[10] ;
  wire \timeout_timer_count_reg_n_0_[11] ;
  wire \timeout_timer_count_reg_n_0_[1] ;
  wire \timeout_timer_count_reg_n_0_[2] ;
  wire \timeout_timer_count_reg_n_0_[3] ;
  wire \timeout_timer_count_reg_n_0_[4] ;
  wire \timeout_timer_count_reg_n_0_[5] ;
  wire \timeout_timer_count_reg_n_0_[6] ;
  wire \timeout_timer_count_reg_n_0_[7] ;
  wire \timeout_timer_count_reg_n_0_[8] ;
  wire \timeout_timer_count_reg_n_0_[9] ;
  wire \timeout_value[11]_i_2_n_0 ;
  wire \timeout_value[11]_i_3_n_0 ;
  wire valid_waddr_i_1_n_0;
  wire valid_waddr_i_2_n_0;
  wire valid_waddr_i_3_n_0;
  wire valid_waddr_i_4_n_0;
  wire valid_waddr_reg_n_0;
  wire write_in_progress;
  wire write_in_progress_i_1_n_0;
  wire write_in_progress_i_2_n_0;

  assign s00_tdata_32_sp_1 = s00_tdata_32_sn_1;
  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \adc00_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_rden_r),
        .I5(slv_wren_clk2),
        .O(\slv_addr_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \adc00_ds_enable_0[0]_i_3 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(\timeout_value[11]_i_2_n_0 ),
        .I3(\slv_addr_reg[11]_0 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .O(\slv_addr_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \adc00_ds_inc_0[11]_i_1 
       (.I0(slv_rden_r),
        .I1(slv_wren_clk2),
        .I2(\slv_addr_reg[8]_1 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(\slv_addr_reg[11]_0 [0]),
        .I5(\slv_addr_reg[11]_0 [1]),
        .O(slv_rden_r_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    \adc00_ds_inc_0[11]_i_2 
       (.I0(\slv_addr_reg[11]_0 [4]),
        .I1(\slv_addr_reg[11]_0 [5]),
        .O(\slv_addr_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \adc00_ds_inc_0[11]_i_3 
       (.I0(\slv_addr_reg[11]_0 [3]),
        .I1(\slv_addr_reg[11]_0 [7]),
        .I2(\slv_addr_reg[11]_0 [6]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(slv_addr),
        .O(\slv_addr_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    adc00_ds_pulse_control_0_i_2
       (.I0(\timeout_value[11]_i_2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(slv_addr),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(\slv_addr_reg[11]_0 [0]),
        .O(\slv_addr_reg[5]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \adc00_ds_type_0[3]_i_2 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(\timeout_value[11]_i_2_n_0 ),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(\slv_addr_reg[11]_0 [0]),
        .O(\slv_addr_reg[4]_3 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \adc01_ds_control_0[1]_i_2 
       (.I0(\adc01_ds_control_0[1]_i_3_n_0 ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [4]),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\slv_rdata[8]_i_4_n_0 ),
        .O(\slv_addr_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \adc01_ds_control_0[1]_i_3 
       (.I0(\slv_addr_reg[11]_0 [5]),
        .I1(\slv_addr_reg[11]_0 [6]),
        .I2(\slv_addr_reg[11]_0 [7]),
        .I3(\slv_addr_reg[11]_0 [3]),
        .O(\adc01_ds_control_0[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \adc01_ds_enable_0[7]_i_1 
       (.I0(slv_rden_r),
        .I1(slv_wren_clk2),
        .I2(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_addr),
        .O(slv_rden_r_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \adc01_ds_enable_0[7]_i_2 
       (.I0(\adc01_ds_enable_0[7]_i_3_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_addr_reg[11]_0 [0]),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\slv_addr_reg[11]_0 [4]),
        .O(\adc01_ds_enable_0[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \adc01_ds_enable_0[7]_i_3 
       (.I0(\slv_addr_reg[11]_0 [3]),
        .I1(\slv_addr_reg[11]_0 [7]),
        .I2(\slv_addr_reg[11]_0 [6]),
        .O(\adc01_ds_enable_0[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \adc01_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[11]_0 [4]),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_addr_reg[7]_0 ),
        .I3(\slv_addr_reg[11]_0 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\adc01_ds_inc_0_reg[0] ),
        .O(\slv_addr_reg[8]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \adc01_ds_type_0[3]_i_1 
       (.I0(slv_rden_r),
        .I1(slv_wren_clk2),
        .I2(slv_addr),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .O(slv_rden_r_reg_1));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \adc02_ds_control_0[1]_i_2 
       (.I0(\adc02_ds_control_0[1]_i_3_n_0 ),
        .I1(\slv_rdata[8]_i_4_n_0 ),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_addr_reg[11]_0 [3]),
        .I4(\slv_addr_reg[11]_0 [0]),
        .I5(\slv_addr_reg[11]_0 [1]),
        .O(\slv_addr_reg[8]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \adc02_ds_control_0[1]_i_3 
       (.I0(\slv_addr_reg[11]_0 [7]),
        .I1(\slv_addr_reg[11]_0 [6]),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(\slv_addr_reg[11]_0 [5]),
        .O(\adc02_ds_control_0[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \adc02_ds_enable_0[7]_i_2 
       (.I0(\adc02_ds_enable_0[7]_i_3_n_0 ),
        .I1(\adc02_ds_enable_0[7]_i_4_n_0 ),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(\slv_addr_reg[11]_0 [5]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(slv_addr),
        .O(\slv_addr_reg[5]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adc02_ds_enable_0[7]_i_3 
       (.I0(\slv_addr_reg[11]_0 [4]),
        .I1(\slv_addr_reg[11]_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\adc02_ds_enable_0[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \adc02_ds_enable_0[7]_i_4 
       (.I0(\slv_addr_reg[11]_0 [6]),
        .I1(\slv_addr_reg[11]_0 [7]),
        .O(\adc02_ds_enable_0[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \adc02_ds_inc_0[11]_i_2 
       (.I0(\adc02_ds_inc_0[11]_i_3_n_0 ),
        .I1(\slv_addr_reg[11]_0 [0]),
        .I2(\slv_addr_reg[11]_0 [5]),
        .I3(\adc02_ds_inc_0[11]_i_4_n_0 ),
        .I4(\slv_addr_reg[11]_0 [3]),
        .I5(\slv_addr_reg[11]_0 [4]),
        .O(\slv_addr_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \adc02_ds_inc_0[11]_i_3 
       (.I0(\slv_addr_reg[11]_0 [7]),
        .I1(\slv_addr_reg[11]_0 [6]),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(slv_addr),
        .O(\adc02_ds_inc_0[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \adc02_ds_inc_0[11]_i_4 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .O(\adc02_ds_inc_0[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \adc02_ds_type_0[3]_i_2 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(\adc02_ds_enable_0[7]_i_4_n_0 ),
        .I3(\slv_addr_reg[11]_0 [5]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\adc02_ds_enable_0[7]_i_3_n_0 ),
        .O(\slv_addr_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \adc03_ds_control_0[1]_i_1 
       (.I0(slv_rden_r),
        .I1(slv_wren_clk2),
        .I2(\slv_addr_reg[8]_0 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(\slv_addr_reg[11]_0 [0]),
        .I5(\slv_addr_reg[11]_0 [1]),
        .O(slv_rden_r_reg));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \adc03_ds_enable_0[7]_i_1 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[8]_0 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(slv_rden_r),
        .I5(slv_wren_clk2),
        .O(\slv_addr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \adc03_ds_enable_0[7]_i_2 
       (.I0(\slv_addr_reg[11]_0 [4]),
        .I1(\slv_addr_reg[11]_0 [5]),
        .O(\slv_addr_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \adc03_ds_inc_0[11]_i_2 
       (.I0(\adc03_ds_inc_0[11]_i_3_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_addr),
        .O(\slv_addr_reg[9]_12 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \adc03_ds_inc_0[11]_i_3 
       (.I0(\slv_addr_reg[11]_0 [3]),
        .I1(\slv_addr_reg[11]_0 [7]),
        .I2(\slv_addr_reg[11]_0 [6]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_addr_reg[11]_0 [2]),
        .O(\adc03_ds_inc_0[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \adc03_ds_type_0[3]_i_2 
       (.I0(\adc03_ds_inc_0[11]_i_3_n_0 ),
        .I1(\slv_addr_reg[11]_0 [0]),
        .I2(\slv_addr_reg[11]_0 [5]),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [1]),
        .O(\slv_addr_reg[2]_18 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    adc0axi_map_wready_i_1
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(Q),
        .I4(\slv_rd_addr_reg_n_0_[1] ),
        .I5(adc0axi_map_wready),
        .O(adc0axi_map_wready0));
  FDRE adc0axi_map_wready_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(adc0axi_map_wready0),
        .Q(adc0axi_map_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    adc0slv_rden_i_1
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_araddr[13]),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_araddr[11]),
        .I4(s_axi_araddr[10]),
        .I5(s_axi_araddr[12]),
        .O(adc0slv_rden_i_1_n_0));
  FDRE adc0slv_rden_reg
       (.C(s_axi_aclk),
        .CE(slv_reg_rden0),
        .D(adc0slv_rden_i_1_n_0),
        .Q(adc0slv_rden),
        .R(adc_ds_slv_rden_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \adc10_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_4),
        .I5(slv_rden_r_5),
        .O(\slv_addr_reg[2]_9 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc10_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_4),
        .I5(slv_rden_r_5),
        .O(\slv_addr_reg[2]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \adc11_ds_enable_0[7]_i_1 
       (.I0(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(slv_addr),
        .I3(slv_wren_clk2_4),
        .I4(slv_rden_r_5),
        .O(\slv_addr_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc11_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_3 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_4),
        .I5(slv_rden_r_5),
        .O(\slv_addr_reg[2]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adc11_ds_inc_0[11]_i_2 
       (.I0(\slv_addr_reg[11]_0 [4]),
        .I1(\slv_addr_reg[11]_0 [5]),
        .O(\slv_addr_reg[8]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \adc11_ds_type_0[3]_i_1 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I3(slv_wren_clk2_4),
        .I4(slv_rden_r_5),
        .O(\slv_addr_reg[4]_6 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \adc13_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_0 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_4),
        .I5(slv_rden_r_5),
        .O(\slv_addr_reg[2]_8 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \adc13_ds_enable_0[7]_i_1 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[8]_0 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(slv_wren_clk2_4),
        .I5(slv_rden_r_5),
        .O(\slv_addr_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    adc1axi_map_wready_i_1
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(Q),
        .I4(\slv_rd_addr_reg_n_0_[1] ),
        .I5(adc1axi_map_wready),
        .O(adc1axi_map_wready0));
  FDRE adc1axi_map_wready_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(adc1axi_map_wready0),
        .Q(adc1axi_map_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    adc1slv_rden_i_1
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_araddr[12]),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_araddr[14]),
        .I4(s_axi_araddr[13]),
        .I5(s_axi_araddr[15]),
        .O(adc1slv_rden_i_1_n_0));
  FDRE adc1slv_rden_reg
       (.C(s_axi_aclk),
        .CE(slv_reg_rden0),
        .D(adc1slv_rden_i_1_n_0),
        .Q(adc1slv_rden),
        .R(adc_ds_slv_rden_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \adc20_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_2),
        .I5(slv_rden_r_3),
        .O(\slv_addr_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc20_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_2),
        .I5(slv_rden_r_3),
        .O(\slv_addr_reg[2]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \adc21_ds_enable_0[7]_i_1 
       (.I0(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(slv_addr),
        .I3(slv_wren_clk2_2),
        .I4(slv_rden_r_3),
        .O(\slv_addr_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc21_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_3 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_2),
        .I5(slv_rden_r_3),
        .O(\slv_addr_reg[2]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \adc21_ds_type_0[3]_i_1 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I3(slv_wren_clk2_2),
        .I4(slv_rden_r_3),
        .O(\slv_addr_reg[4]_5 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \adc23_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_0 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_2),
        .I5(slv_rden_r_3),
        .O(\slv_addr_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \adc23_ds_enable_0[7]_i_1 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[8]_0 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(slv_wren_clk2_2),
        .I5(slv_rden_r_3),
        .O(\slv_addr_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    adc2axi_map_wready_i_1
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(adc2axi_map_wready),
        .O(adc2axi_map_wready0));
  FDRE adc2axi_map_wready_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(adc2axi_map_wready0),
        .Q(adc2axi_map_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    adc2slv_rden_i_1
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_araddr[12]),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_araddr[14]),
        .I4(s_axi_araddr[13]),
        .I5(s_axi_araddr[15]),
        .O(adc2slv_rden_i_1_n_0));
  FDRE adc2slv_rden_reg
       (.C(s_axi_aclk),
        .CE(slv_reg_rden0),
        .D(adc2slv_rden_i_1_n_0),
        .Q(adc2slv_rden),
        .R(adc_ds_slv_rden_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \adc30_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_1),
        .I5(slv_rden_r_0),
        .O(\slv_addr_reg[2]_11 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc30_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_1),
        .I5(slv_rden_r_0),
        .O(\slv_addr_reg[2]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \adc31_ds_enable_0[7]_i_1 
       (.I0(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(slv_addr),
        .I3(slv_wren_clk2_1),
        .I4(slv_rden_r_0),
        .O(\slv_addr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \adc31_ds_inc_0[11]_i_1 
       (.I0(\slv_addr_reg[8]_3 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_1),
        .I5(slv_rden_r_0),
        .O(\slv_addr_reg[2]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \adc31_ds_type_0[3]_i_1 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\adc01_ds_enable_0[7]_i_2_n_0 ),
        .I3(slv_wren_clk2_1),
        .I4(slv_rden_r_0),
        .O(\slv_addr_reg[4]_4 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \adc33_ds_control_0[1]_i_1 
       (.I0(\slv_addr_reg[8]_0 ),
        .I1(\slv_addr_reg[7]_0 ),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(slv_wren_clk2_1),
        .I5(slv_rden_r_0),
        .O(\slv_addr_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \adc33_ds_enable_0[7]_i_1 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[8]_0 ),
        .I3(\slv_addr_reg[7]_0 ),
        .I4(slv_wren_clk2_1),
        .I5(slv_rden_r_0),
        .O(\slv_addr_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    adc3axi_map_wready_i_1
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(adc3axi_map_wready),
        .I2(s_axi_wvalid),
        .I3(valid_waddr_reg_n_0),
        .O(adc3axi_map_wready0));
  FDRE adc3axi_map_wready_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(adc3axi_map_wready0),
        .Q(adc3axi_map_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    adc3slv_rden_i_1
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_araddr[11]),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_araddr[13]),
        .I4(s_axi_araddr[14]),
        .I5(s_axi_araddr[10]),
        .O(adc3slv_rden_i_1_n_0));
  FDRE adc3slv_rden_reg
       (.C(s_axi_aclk),
        .CE(slv_reg_rden0),
        .D(adc3slv_rden_i_1_n_0),
        .Q(adc3slv_rden),
        .R(adc_ds_slv_rden_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    adc_ds_axi_map_wready_i_1
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_wvalid),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(adc_ds_axi_map_wready),
        .O(adc_ds_axi_map_wready0));
  FDRE adc_ds_axi_map_wready_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(adc_ds_axi_map_wready0),
        .Q(adc_ds_axi_map_wready),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hF700FFFF)) 
    adc_ds_slv_rden_i_1
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .I3(\axi_rresp[1]_i_2_n_0 ),
        .I4(s_axi_aresetn),
        .O(adc_ds_slv_rden_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    adc_ds_slv_rden_i_2
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(slv_reg_rden0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    adc_ds_slv_rden_i_3
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_araddr[11]),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_araddr[13]),
        .I4(s_axi_araddr[14]),
        .I5(s_axi_araddr[10]),
        .O(adc_ds_slv_rden_i_3_n_0));
  FDRE adc_ds_slv_rden_reg
       (.C(s_axi_aclk),
        .CE(slv_reg_rden0),
        .D(adc_ds_slv_rden_i_3_n_0),
        .Q(adc_ds_slv_rden),
        .R(adc_ds_slv_rden_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    axi_arready_i_1
       (.I0(read_in_progress),
        .I1(s_axi_arvalid),
        .I2(write_in_progress),
        .I3(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFF00004)) 
    axi_awready_i_2
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_awvalid),
        .I2(read_in_progress),
        .I3(s_axi_arvalid),
        .I4(axi_awready_reg_0),
        .O(axi_awready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h8BBB000088880000)) 
    \axi_bresp[1]_i_1 
       (.I0(timeout),
        .I1(axi_bvalid0),
        .I2(axi_bvalid_reg_0),
        .I3(s_axi_bready),
        .I4(s_axi_aresetn),
        .I5(s_axi_bresp),
        .O(\axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF454545)) 
    \axi_bresp[1]_i_2 
       (.I0(axi_bvalid_reg_0),
        .I1(\axi_bresp_reg[1]_0 ),
        .I2(\axi_bresp_reg[1]_1 ),
        .I3(timeout),
        .I4(write_in_progress),
        .I5(\axi_bresp[1]_i_5_n_0 ),
        .O(axi_bvalid0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \axi_bresp[1]_i_5 
       (.I0(adc3axi_map_wready),
        .I1(adc1axi_map_wready),
        .I2(adc0axi_map_wready),
        .I3(adc2axi_map_wready),
        .I4(adc_ds_axi_map_wready),
        .I5(axi_wr_access_reg_0),
        .O(\axi_bresp[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_bresp[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(axi_bvalid_reg_0),
        .I2(axi_bvalid0),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(\axi_rdata[0]_i_4_n_0 ),
        .I3(\axi_rdata[0]_i_5_n_0 ),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .I5(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0AACC00)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata_reg[0]_1 ),
        .I1(slv_rdata[0]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(Q),
        .I4(\slv_rd_addr_reg_n_0_[1] ),
        .I5(\slv_rd_addr_reg_n_0_[2] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[0]_i_3 
       (.I0(\timeout_timer_count_reg[11]_0 [0]),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .I2(error_flag),
        .I3(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000131)) 
    \axi_rdata[0]_i_4 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \axi_rdata[0]_i_5 
       (.I0(dest_out),
        .I1(D),
        .I2(\axi_rdata[0]_i_8_n_0 ),
        .I3(\axi_rdata[11]_i_5_n_0 ),
        .I4(enable),
        .I5(timeout_enable),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[0]_i_6 
       (.I0(\axi_rdata_reg[0]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFBF7)) 
    \axi_rdata[0]_i_7 
       (.I0(\slv_addr_reg[11]_0 [2]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_addr_reg[11]_0 [1]),
        .I4(\slv_addr_reg[11]_0 [0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFEFFFCFE)) 
    \axi_rdata[0]_i_8 
       (.I0(\slv_addr_reg[11]_0 [2]),
        .I1(\slv_addr_reg[11]_0 [0]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [1]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBAABA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\timeout_timer_count_reg[11]_0 [10]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCEECCCCFCEECC)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata_reg[10]_1 ),
        .I1(\slv_rd_addr_reg_n_0_[2] ),
        .I2(slv_rdata[10]),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(\axi_rdata_reg[10]_2 ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \axi_rdata[10]_i_3 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[10]_i_4 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[10]_i_5 
       (.I0(\axi_rdata_reg[10]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAAE)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .I2(\axi_rdata[11]_i_4_n_0 ),
        .I3(\axi_rdata[11]_i_5_n_0 ),
        .I4(\axi_rdata[11]_i_6_n_0 ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAF0CC00)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[11]_1 ),
        .I1(\axi_rdata_reg[11]_2 ),
        .I2(slv_rdata[11]),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(\slv_rd_addr_reg_n_0_[2] ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000400F00)) 
    \axi_rdata[11]_i_3 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\timeout_timer_count_reg[11]_0 [11]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_addr_reg[11]_0 [2]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \axi_rdata[11]_i_4 
       (.I0(\slv_rd_addr_reg_n_0_[1] ),
        .I1(Q),
        .I2(\slv_addr_reg[8]_1 ),
        .I3(\slv_addr_reg[11]_0 [3]),
        .I4(\slv_addr_reg[11]_0 [7]),
        .I5(\slv_addr_reg[11]_0 [6]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000250)) 
    \axi_rdata[11]_i_5 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(slv_addr),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [1]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[11]_i_6 
       (.I0(\axi_rdata_reg[11]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \axi_rdata[11]_i_7 
       (.I0(\slv_rd_addr_reg_n_0_[3] ),
        .I1(\slv_rd_addr_reg_n_0_[4] ),
        .I2(\slv_rd_addr_reg_n_0_[5] ),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_rd_addr_reg_n_0_[1] ),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(Q),
        .I4(slv_rdata[12]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_rd_addr_reg_n_0_[1] ),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(Q),
        .I4(slv_rdata[13]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_rd_addr_reg_n_0_[1] ),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(Q),
        .I4(slv_rdata[14]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_rd_addr_reg_n_0_[1] ),
        .I1(\axi_rdata[15]_i_2_n_0 ),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(Q),
        .I4(slv_rdata[15]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[15]_i_2 
       (.I0(\slv_rd_addr_reg_n_0_[5] ),
        .I1(\slv_rd_addr_reg_n_0_[4] ),
        .I2(\slv_rd_addr_reg_n_0_[3] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(Q),
        .I2(\slv_addr_reg[8]_1 ),
        .I3(\slv_addr_reg[11]_0 [3]),
        .I4(\slv_addr_reg[11]_0 [7]),
        .I5(\slv_addr_reg[11]_0 [6]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF100FFFFF100F100)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(\axi_rdata[15]_i_2_n_0 ),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .I5(\axi_rdata_reg[1]_0 ),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[1]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[1]_1 ),
        .I1(\axi_rdata_reg[1]_2 ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(slv_rdata[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF100FFFFF100F100)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(\axi_rdata[15]_i_2_n_0 ),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .I5(\axi_rdata_reg[2]_0 ),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[2]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[2]_1 ),
        .I1(\axi_rdata_reg[2]_2 ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(slv_rdata[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F44444444)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata_reg[3]_0 ),
        .I2(\axi_rdata[3]_i_2_n_0 ),
        .I3(\axi_rdata[11]_i_4_n_0 ),
        .I4(\axi_rdata[3]_i_3_n_0 ),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[3]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[3]_1 ),
        .I1(slv_rdata[3]),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(Q),
        .I4(\axi_rdata_reg[3]_2 ),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBAABA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\timeout_timer_count_reg[11]_0 [4]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(\axi_rdata[4]_i_3_n_0 ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCEECCCCFCEECC)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata_reg[4]_1 ),
        .I1(\slv_rd_addr_reg_n_0_[2] ),
        .I2(slv_rdata[4]),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(\axi_rdata_reg[4]_2 ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[4]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBAABA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\timeout_timer_count_reg[11]_0 [5]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(\axi_rdata[5]_i_3_n_0 ),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFCFFCCEEFCCCCC)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata_reg[5]_1 ),
        .I1(\slv_rd_addr_reg_n_0_[2] ),
        .I2(slv_rdata[5]),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(\axi_rdata_reg[5]_2 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata_reg[5]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F44444444)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata_reg[6]_0 ),
        .I2(\axi_rdata[6]_i_2_n_0 ),
        .I3(\axi_rdata[11]_i_4_n_0 ),
        .I4(\axi_rdata[6]_i_3_n_0 ),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[6]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[6]_1 ),
        .I1(\axi_rdata_reg[6]_2 ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(slv_rdata[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF444F44444444)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata_reg[7]_0 ),
        .I2(\axi_rdata[7]_i_2_n_0 ),
        .I3(\axi_rdata[11]_i_4_n_0 ),
        .I4(\axi_rdata[7]_i_3_n_0 ),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[7]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata_reg[7]_1 ),
        .I1(\axi_rdata_reg[7]_2 ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(slv_rdata[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF100FFFFF100F100)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\axi_rdata[8]_i_3_n_0 ),
        .I3(\axi_rdata[15]_i_2_n_0 ),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .I5(\axi_rdata_reg[8]_0 ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBEFFFFFFFEF)) 
    \axi_rdata[8]_i_2 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\timeout_timer_count_reg[11]_0 [8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACF0AC00)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata_reg[8]_1 ),
        .I1(\axi_rdata_reg[8]_2 ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(slv_rdata[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_rd_addr_reg_n_0_[2] ),
        .I1(\slv_rd_addr_reg_n_0_[1] ),
        .I2(Q),
        .I3(\slv_rd_addr_reg_n_0_[5] ),
        .I4(\slv_rd_addr_reg_n_0_[4] ),
        .I5(\slv_rd_addr_reg_n_0_[3] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBAABA)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .I2(\timeout_timer_count_reg[11]_0 [9]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(\axi_rdata[9]_i_3_n_0 ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFCFFCCEEFCCCCC)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[9]_1 ),
        .I1(\slv_rd_addr_reg_n_0_[2] ),
        .I2(slv_rdata[9]),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .I5(\axi_rdata_reg[9]_2 ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFD00FFFF)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata_reg[9]_0 ),
        .I1(Q),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(\slv_rd_addr_reg_n_0_[2] ),
        .I4(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFDF00C0)) 
    \axi_rresp[1]_i_1 
       (.I0(\axi_rresp[1]_i_2_n_0 ),
        .I1(timeout),
        .I2(read_in_progress),
        .I3(axi_rvalid_reg_0),
        .I4(s_axi_rresp),
        .O(\axi_rresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEA0000FFFFFFFF)) 
    \axi_rresp[1]_i_2 
       (.I0(\slv_rd_addr_reg_n_0_[2] ),
        .I1(adc2slv_rden_reg_0),
        .I2(\slv_rd_addr_reg_n_0_[1] ),
        .I3(adc2slv_rden_reg_1),
        .I4(\axi_rresp[1]_i_5_n_0 ),
        .I5(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rresp[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF8F)) 
    \axi_rresp[1]_i_5 
       (.I0(slv_wren_done_pulse),
        .I1(slv_rden_r_0),
        .I2(\slv_rd_addr_reg_n_0_[2] ),
        .I3(\slv_rd_addr_reg_n_0_[1] ),
        .I4(Q),
        .O(\axi_rresp[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_rresp[1]_i_1_n_0 ),
        .Q(s_axi_rresp),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h74747444)) 
    axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(read_in_progress),
        .I3(timeout),
        .I4(\axi_rresp[1]_i_2_n_0 ),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_wr_access_i_1
       (.I0(s_axi_arvalid),
        .O(axi_awready19_in));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wr_access_i_2
       (.I0(axi_wr_access_reg_0),
        .I1(s_axi_wvalid),
        .I2(valid_waddr_reg_n_0),
        .O(axi_wr_access0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_access_reg
       (.C(s_axi_aclk),
        .CE(axi_awready19_in),
        .D(axi_wr_access0),
        .Q(axi_wr_access_reg_0),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    enable_i_1
       (.I0(s_axi_wdata),
        .I1(\slv_addr_reg[4]_1 ),
        .I2(adc_ds_axi_map_wready),
        .I3(s_axi_wvalid),
        .I4(enable),
        .O(s_axi_wdata_0_sn_1));
  LUT6 #(
    .INIT(64'h0000000044444000)) 
    read_in_progress_i_1
       (.I0(timeout),
        .I1(s_axi_aresetn),
        .I2(axi_arready_reg_0),
        .I3(s_axi_arvalid),
        .I4(read_in_progress),
        .I5(read_in_progress_i_2_n_0),
        .O(read_in_progress_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    read_in_progress_i_2
       (.I0(axi_rvalid_reg_0),
        .I1(s_axi_rready),
        .O(read_in_progress_i_2_n_0));
  FDRE read_in_progress_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_in_progress_i_1_n_0),
        .Q(read_in_progress),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[10]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[8]),
        .O(\slv_addr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[11]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[9]),
        .O(\slv_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[0]),
        .O(\slv_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[1]),
        .O(\slv_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[2]),
        .O(\slv_addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[3]),
        .O(\slv_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[4]),
        .O(\slv_addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[5]),
        .O(\slv_addr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[6]),
        .O(\slv_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_addr[9]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[7]),
        .O(\slv_addr[9]_i_1_n_0 ));
  FDRE \slv_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[10]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [6]),
        .R(p_0_in));
  FDRE \slv_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[11]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [7]),
        .R(p_0_in));
  FDRE \slv_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[2]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [0]),
        .R(p_0_in));
  FDRE \slv_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[3]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [1]),
        .R(p_0_in));
  FDRE \slv_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[4]_i_1_n_0 ),
        .Q(slv_addr),
        .R(p_0_in));
  FDRE \slv_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[5]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [2]),
        .R(p_0_in));
  FDRE \slv_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[6]_i_1_n_0 ),
        .Q(\slv_addr_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[7]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [3]),
        .R(p_0_in));
  FDRE \slv_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[8]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [4]),
        .R(p_0_in));
  FDRE \slv_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_addr[9]_i_1_n_0 ),
        .Q(\slv_addr_reg[11]_0 [5]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[0]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[10]),
        .O(\slv_rd_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[1]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[11]),
        .O(\slv_rd_addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[2]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[12]),
        .O(\slv_rd_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[3]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[13]),
        .O(\slv_rd_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[4]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[14]),
        .O(\slv_rd_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \slv_rd_addr[5]_i_1 
       (.I0(valid_waddr_reg_n_0),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(axi_awready_reg_0),
        .I4(s_axi_awvalid),
        .O(\slv_rd_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_rd_addr[5]_i_2 
       (.I0(s_axi_araddr[15]),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .I3(s_axi_awaddr[15]),
        .O(\slv_rd_addr[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[0]_i_1_n_0 ),
        .Q(Q),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[1]_i_1_n_0 ),
        .Q(\slv_rd_addr_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[2]_i_1_n_0 ),
        .Q(\slv_rd_addr_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[3]_i_1_n_0 ),
        .Q(\slv_rd_addr_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[4]_i_1_n_0 ),
        .Q(\slv_rd_addr_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_rd_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_rd_addr[5]_i_1_n_0 ),
        .D(\slv_rd_addr[5]_i_2_n_0 ),
        .Q(\slv_rd_addr_reg_n_0_[5] ),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hF2F2FFF2FFFFFFFF)) 
    \slv_rdata[0]_i_1 
       (.I0(\slv_rdata[0]_i_2_n_0 ),
        .I1(\slv_rdata[0]_i_3_n_0 ),
        .I2(\slv_rdata[0]_i_4_n_0 ),
        .I3(\slv_rdata[0]_i_5_n_0 ),
        .I4(\slv_rdata[0]_i_6_n_0 ),
        .I5(\slv_rdata[0]_i_7_n_0 ),
        .O(s00_tdata_32_sn_1));
  LUT6 #(
    .INIT(64'hE3E0030323200303)) 
    \slv_rdata[0]_i_2 
       (.I0(s00_tdata[32]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[3] [0]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[96]),
        .O(\slv_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[0]_i_3 
       (.I0(\timeout_value[11]_i_3_n_0 ),
        .I1(\slv_rdata_reg[3]_1 [0]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[3]_2 [0]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[3]_3 [0]),
        .O(\slv_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8A888A888A88)) 
    \slv_rdata[0]_i_4 
       (.I0(\slv_rdata[0]_i_8_n_0 ),
        .I1(\slv_rdata[0]_i_9_n_0 ),
        .I2(\slv_rdata[1]_i_12_n_0 ),
        .I3(s00_tdata[48]),
        .I4(\slv_rdata[8]_i_4_n_0 ),
        .I5(\slv_rdata_reg[0]_0 ),
        .O(\slv_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE3E0030323200303)) 
    \slv_rdata[0]_i_5 
       (.I0(s00_tdata[16]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[7] [0]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[80]),
        .O(\slv_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[0]_i_6 
       (.I0(\slv_rdata[8]_i_3_n_0 ),
        .I1(\slv_rdata_reg[1]_1 [0]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[1]_2 [0]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[1]_3 [0]),
        .O(\slv_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABFFABFAFBFFF)) 
    \slv_rdata[0]_i_7 
       (.I0(\slv_rdata[1]_i_10_n_0 ),
        .I1(s00_tdata[64]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[0]),
        .I5(\slv_rdata_reg[0] ),
        .O(\slv_rdata[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_rdata[0]_i_8 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_addr_reg[11]_0 [0]),
        .O(\slv_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    \slv_rdata[0]_i_9 
       (.I0(s00_ds_status),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(s00_tdata[112]),
        .I3(\slv_addr_reg[11]_0 [4]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(slv_addr),
        .O(\slv_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080AA8080)) 
    \slv_rdata[10]_i_1 
       (.I0(\slv_rdata_reg[10]_i_2_n_0 ),
        .I1(\slv_addr_reg[8]_1 ),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_rdata_reg[10] ),
        .I5(\slv_rdata[11]_i_3_n_0 ),
        .O(\slv_addr_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[10]_i_6 
       (.I0(s00_tdata[10]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[42]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[10]_i_7 
       (.I0(s00_tdata[74]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[106]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[10]_i_8 
       (.I0(s00_tdata[26]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[58]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[10]_i_9 
       (.I0(s00_tdata[90]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[122]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h2000222220002000)) 
    \slv_rdata[11]_i_1 
       (.I0(\slv_rdata_reg[11]_i_2_n_0 ),
        .I1(\slv_rdata[11]_i_3_n_0 ),
        .I2(\slv_addr_reg[8]_1 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata_reg[11] ),
        .O(\slv_addr_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[11]_i_10 
       (.I0(s00_tdata[91]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[123]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \slv_rdata[11]_i_1__0 
       (.I0(s_axi_aresetn),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_addr_reg[7]_0 ),
        .O(s_axi_aresetn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF74FF)) 
    \slv_rdata[11]_i_3 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(\adc02_ds_enable_0[7]_i_4_n_0 ),
        .I4(\slv_addr_reg[11]_0 [2]),
        .I5(\slv_addr_reg[11]_0 [3]),
        .O(\slv_rdata[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[11]_i_7 
       (.I0(s00_tdata[11]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[43]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[11]_i_8 
       (.I0(s00_tdata[75]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[107]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[11]_i_9 
       (.I0(s00_tdata[27]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[59]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[12]_i_2 
       (.I0(s00_tdata[108]),
        .I1(s00_tdata[44]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[76]),
        .I4(slv_addr),
        .I5(s00_tdata[12]),
        .O(\slv_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[12]_i_3 
       (.I0(s00_tdata[124]),
        .I1(s00_tdata[60]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[92]),
        .I4(slv_addr),
        .I5(s00_tdata[28]),
        .O(\slv_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[13]_i_2 
       (.I0(s00_tdata[109]),
        .I1(s00_tdata[45]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[77]),
        .I4(slv_addr),
        .I5(s00_tdata[13]),
        .O(\slv_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[13]_i_3 
       (.I0(s00_tdata[125]),
        .I1(s00_tdata[61]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[93]),
        .I4(slv_addr),
        .I5(s00_tdata[29]),
        .O(\slv_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[14]_i_2 
       (.I0(s00_tdata[110]),
        .I1(s00_tdata[46]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[78]),
        .I4(slv_addr),
        .I5(s00_tdata[14]),
        .O(\slv_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[14]_i_3 
       (.I0(s00_tdata[126]),
        .I1(s00_tdata[62]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[94]),
        .I4(slv_addr),
        .I5(s00_tdata[30]),
        .O(\slv_rdata[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \slv_rdata[15]_i_3 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .O(\slv_addr_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[15]_i_4 
       (.I0(s00_tdata[111]),
        .I1(s00_tdata[47]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[79]),
        .I4(slv_addr),
        .I5(s00_tdata[15]),
        .O(\slv_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \slv_rdata[15]_i_5 
       (.I0(s00_tdata[127]),
        .I1(s00_tdata[63]),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(s00_tdata[95]),
        .I4(slv_addr),
        .I5(s00_tdata[31]),
        .O(\slv_rdata[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \slv_rdata[1]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\slv_addr_reg[11]_0 [3]),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(\slv_addr_reg[11]_0 [6]),
        .I4(\slv_addr_reg[11]_0 [7]),
        .O(s_axi_aresetn_3));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \slv_rdata[1]_i_10 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_addr_reg[11]_0 [5]),
        .I4(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \slv_rdata[1]_i_12 
       (.I0(slv_addr),
        .I1(\slv_addr_reg[11]_0 [4]),
        .I2(\slv_addr_reg[11]_0 [5]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h020200000000FFFC)) 
    \slv_rdata[1]_i_13 
       (.I0(s00_tdata[113]),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata[1]_i_6_0 ),
        .I4(\slv_addr_reg_n_0_[6] ),
        .I5(slv_addr),
        .O(\slv_rdata[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFBAFFFF)) 
    \slv_rdata[1]_i_2 
       (.I0(\slv_rdata[1]_i_3_n_0 ),
        .I1(\slv_rdata[1]_i_4_n_0 ),
        .I2(\slv_rdata[1]_i_5_n_0 ),
        .I3(\slv_rdata[1]_i_6_n_0 ),
        .I4(\slv_rdata[1]_i_7_n_0 ),
        .I5(\slv_rdata[1]_i_8_n_0 ),
        .O(\slv_addr_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \slv_rdata[1]_i_3 
       (.I0(\slv_rdata_reg[1] ),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(s00_tdata[1]),
        .I3(slv_addr),
        .I4(s00_tdata[65]),
        .I5(\slv_rdata[1]_i_10_n_0 ),
        .O(\slv_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[1]_i_4 
       (.I0(\timeout_value[11]_i_3_n_0 ),
        .I1(\slv_rdata_reg[3]_1 [1]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[3]_2 [1]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[3]_3 [1]),
        .O(\slv_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE3E0030323200303)) 
    \slv_rdata[1]_i_5 
       (.I0(s00_tdata[33]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[3] [1]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[97]),
        .O(\slv_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8080808000008000)) 
    \slv_rdata[1]_i_6 
       (.I0(\slv_rdata_reg[1]_0 ),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(s00_tdata[49]),
        .I4(\slv_rdata[1]_i_12_n_0 ),
        .I5(\slv_rdata[1]_i_13_n_0 ),
        .O(\slv_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[1]_i_7 
       (.I0(\slv_rdata[8]_i_3_n_0 ),
        .I1(\slv_rdata_reg[1]_1 [1]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[1]_2 [1]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[1]_3 [1]),
        .O(\slv_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1C1FFCFCDCDFFCFC)) 
    \slv_rdata[1]_i_8 
       (.I0(s00_tdata[17]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[7] [1]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[81]),
        .O(\slv_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \slv_rdata[2]_i_1 
       (.I0(\slv_rdata[2]_i_2__1_n_0 ),
        .I1(\slv_rdata_reg[2] ),
        .I2(\slv_rdata_reg[2]_0 ),
        .I3(\slv_rdata[8]_i_4_n_0 ),
        .I4(\slv_rdata[2]_i_5__0_n_0 ),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc32_ds_enable_0_reg[2] ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \slv_rdata[2]_i_1__0 
       (.I0(\slv_rdata[2]_i_2__2_n_0 ),
        .I1(\slv_rdata_reg[2]_1 ),
        .I2(\slv_rdata_reg[2]_2 ),
        .I3(\slv_rdata[8]_i_4_n_0 ),
        .I4(\slv_rdata[2]_i_5__1_n_0 ),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc22_ds_enable_0_reg[2] ));
  LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
    \slv_rdata[2]_i_1__1 
       (.I0(\slv_rdata[2]_i_2_n_0 ),
        .I1(\slv_rdata[8]_i_4_n_0 ),
        .I2(\slv_rdata_reg[2]_3 ),
        .I3(\slv_rdata_reg[2]_4 ),
        .I4(\slv_rdata_reg[2]_5 ),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc10_ds_enable_0_reg[2] ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \slv_rdata[2]_i_1__2 
       (.I0(\slv_rdata[7]_i_3_n_0 ),
        .I1(\slv_rdata[2]_i_2__0_n_0 ),
        .I2(\slv_rdata[2]_i_3_n_0 ),
        .I3(\slv_rdata[2]_i_4__2_n_0 ),
        .I4(\slv_rdata[2]_i_5__2_n_0 ),
        .I5(\slv_rdata[2]_i_6_n_0 ),
        .O(\slv_addr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \slv_rdata[2]_i_2 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_rdata[7]_i_3__0_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_3__0_1 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[2]_8 ),
        .O(\slv_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h0035F035)) 
    \slv_rdata[2]_i_2__0 
       (.I0(\slv_rdata_reg[2]_10 ),
        .I1(s00_tdata[2]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[66]),
        .O(\slv_rdata[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \slv_rdata[2]_i_2__1 
       (.I0(\slv_addr_reg[9]_13 ),
        .I1(\slv_rdata[7]_i_2__1_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_6 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[2]_11 ),
        .O(\slv_rdata[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \slv_rdata[2]_i_2__2 
       (.I0(\slv_addr_reg[9]_13 ),
        .I1(\slv_rdata[7]_i_2__0_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_1 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[2]_12 ),
        .O(\slv_rdata[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hE3E0030323200303)) 
    \slv_rdata[2]_i_3 
       (.I0(s00_tdata[34]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[3] [2]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[98]),
        .O(\slv_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[2]_i_4__2 
       (.I0(\slv_rdata[3]_i_10_n_0 ),
        .I1(\slv_rdata_reg[3]_1 [2]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[3]_2 [2]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[3]_3 [2]),
        .O(\slv_rdata[2]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \slv_rdata[2]_i_5__0 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_rdata[7]_i_3__2_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_5 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[2]_6 ),
        .O(\slv_rdata[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \slv_rdata[2]_i_5__1 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_rdata[7]_i_3__1_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_2 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[2]_7 ),
        .O(\slv_rdata[2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBFFBBAE)) 
    \slv_rdata[2]_i_5__2 
       (.I0(\slv_rdata_reg[2]_9 ),
        .I1(\slv_addr_reg[8]_1 ),
        .I2(\slv_rdata_reg[7] [2]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[7]_i_10_n_0 ),
        .O(\slv_rdata[2]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h57F7FFFF57F70000)) 
    \slv_rdata[2]_i_6 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[50]),
        .I2(slv_addr),
        .I3(s00_tdata[114]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[2]_i_9_n_0 ),
        .O(\slv_rdata[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_rdata[2]_i_6__0 
       (.I0(\slv_addr_reg[11]_0 [5]),
        .I1(\slv_addr_reg[11]_0 [4]),
        .O(\slv_addr_reg[9]_13 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_rdata[2]_i_9 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[18]),
        .I2(slv_addr),
        .I3(s00_tdata[82]),
        .O(\slv_rdata[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \slv_rdata[3]_i_10 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_addr_reg[11]_0 [0]),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(\slv_addr_reg[11]_0 [3]),
        .O(\slv_rdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \slv_rdata[3]_i_1__0 
       (.I0(\slv_rdata[7]_i_3_n_0 ),
        .I1(\slv_rdata[3]_i_2_n_0 ),
        .I2(\slv_rdata[3]_i_3_n_0 ),
        .I3(\slv_rdata[3]_i_4_n_0 ),
        .I4(\slv_rdata[3]_i_5_n_0 ),
        .I5(\slv_rdata[3]_i_6_n_0 ),
        .O(\slv_addr_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slv_rdata[3]_i_1__1 
       (.I0(s_axi_aresetn),
        .I1(\slv_addr_reg[7]_0 ),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h0F35FF35)) 
    \slv_rdata[3]_i_2 
       (.I0(\slv_rdata_reg[3]_4 ),
        .I1(s00_tdata[3]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[67]),
        .O(\slv_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \slv_rdata[3]_i_3 
       (.I0(s00_tdata[51]),
        .I1(slv_addr),
        .I2(s00_tdata[115]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[3]_i_8__0_n_0 ),
        .O(\slv_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF23EE)) 
    \slv_rdata[3]_i_4 
       (.I0(slv_addr),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_rdata_reg[7] [3]),
        .I3(\slv_addr_reg[8]_1 ),
        .I4(\slv_rdata_reg[3]_0 ),
        .I5(\slv_rdata[7]_i_10_n_0 ),
        .O(\slv_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \slv_rdata[3]_i_4__0 
       (.I0(\slv_addr_reg[8]_0 ),
        .I1(\slv_rdata_reg[7]_2 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_0 [0]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata_reg[3]_5 ),
        .O(\adc33_ds_enable_0_reg[3] ));
  LUT6 #(
    .INIT(64'hBABFAAAABABFFAFA)) 
    \slv_rdata[3]_i_5 
       (.I0(\slv_rdata[3]_i_10_n_0 ),
        .I1(\slv_rdata_reg[3]_1 [3]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_rdata_reg[3]_2 [3]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[3]_3 [3]),
        .O(\slv_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1C1FFCFCDCDFFCFC)) 
    \slv_rdata[3]_i_6 
       (.I0(s00_tdata[35]),
        .I1(slv_addr),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[3] [3]),
        .I4(\slv_addr_reg[8]_1 ),
        .I5(s00_tdata[99]),
        .O(\slv_rdata[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[3]_i_8__0 
       (.I0(s00_tdata[19]),
        .I1(slv_addr),
        .I2(s00_tdata[83]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \slv_rdata[4]_i_1 
       (.I0(\slv_rdata[4]_i_2_n_0 ),
        .I1(\slv_rdata[4]_i_3_n_0 ),
        .I2(\slv_rdata[7]_i_3_n_0 ),
        .I3(\slv_rdata[4]_i_4_n_0 ),
        .I4(\slv_rdata[7]_i_6_n_0 ),
        .I5(\slv_rdata[4]_i_5_n_0 ),
        .O(\slv_addr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[4]_i_1__0 
       (.I0(\slv_rdata[4]_i_2__2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[4]_i_3__2_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[4]_i_1__1 
       (.I0(\slv_rdata[4]_i_2__1_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[4]_i_3__1_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_4 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[4]_i_1__2 
       (.I0(\slv_rdata[4]_i_2__0_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[4]_i_3__0_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF23EE)) 
    \slv_rdata[4]_i_2 
       (.I0(slv_addr),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_rdata_reg[7] [4]),
        .I3(\slv_addr_reg[8]_1 ),
        .I4(\slv_rdata_reg[4] ),
        .I5(\slv_rdata[7]_i_10_n_0 ),
        .O(\slv_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_2__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_4 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[7]_5 [0]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_4__0_n_0 ),
        .O(\slv_rdata[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_2__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_7 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_8 [0]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_4__1_n_0 ),
        .O(\slv_rdata[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_2__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_2 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_0 [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_4__2_n_0 ),
        .O(\slv_rdata[4]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \slv_rdata[4]_i_3 
       (.I0(s00_tdata[52]),
        .I1(slv_addr),
        .I2(s00_tdata[116]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[4]_i_7_n_0 ),
        .O(\slv_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_3__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_3 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_4 [0]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_5__0_n_0 ),
        .O(\slv_rdata[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_3__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_6 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_9 [0]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_5__1_n_0 ),
        .O(\slv_rdata[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[4]_i_3__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_8 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8] [0]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[4]_i_5__2_n_0 ),
        .O(\slv_rdata[4]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'h0C113F11)) 
    \slv_rdata[4]_i_4 
       (.I0(\slv_rdata_reg[4]_0 ),
        .I1(slv_addr),
        .I2(s00_tdata[68]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(s00_tdata[4]),
        .O(\slv_rdata[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_4__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2_0 [0]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_2_1 [0]),
        .O(\slv_rdata[4]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_4__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__0_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_1 [1]),
        .O(\slv_rdata[4]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_4__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__1_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_6 [1]),
        .O(\slv_rdata[4]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_rdata[4]_i_5 
       (.I0(s00_tdata[100]),
        .I1(slv_addr),
        .I2(s00_tdata[36]),
        .O(\slv_rdata[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_5__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__0_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_3__0_1 [1]),
        .O(\slv_rdata[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_5__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__1_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_2 [1]),
        .O(\slv_rdata[4]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[4]_i_5__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__2_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_5 [1]),
        .O(\slv_rdata[4]_i_5__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[4]_i_7 
       (.I0(s00_tdata[20]),
        .I1(slv_addr),
        .I2(s00_tdata[84]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222F222FFFF)) 
    \slv_rdata[5]_i_1 
       (.I0(\slv_rdata[7]_i_3_n_0 ),
        .I1(\slv_rdata[5]_i_2_n_0 ),
        .I2(\slv_rdata[7]_i_6_n_0 ),
        .I3(\slv_rdata[5]_i_3_n_0 ),
        .I4(\slv_rdata[5]_i_4_n_0 ),
        .I5(\slv_rdata[5]_i_5_n_0 ),
        .O(\slv_addr_reg[5]_2 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[5]_i_1__0 
       (.I0(\slv_rdata[5]_i_2__2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[5]_i_3__2_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[5]_i_1__1 
       (.I0(\slv_rdata[5]_i_2__1_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[5]_i_3__1_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_5 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[5]_i_1__2 
       (.I0(\slv_rdata[5]_i_2__0_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[5]_i_3__0_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_9 ));
  LUT5 #(
    .INIT(32'h0035F035)) 
    \slv_rdata[5]_i_2 
       (.I0(\slv_rdata_reg[5]_0 ),
        .I1(s00_tdata[5]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[69]),
        .O(\slv_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_2__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_4 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[7]_5 [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_4__0_n_0 ),
        .O(\slv_rdata[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_2__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_7 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_8 [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_4__1_n_0 ),
        .O(\slv_rdata[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_2__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_2 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_0 [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_4__2_n_0 ),
        .O(\slv_rdata[5]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_rdata[5]_i_3 
       (.I0(s00_tdata[101]),
        .I1(slv_addr),
        .I2(s00_tdata[37]),
        .O(\slv_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_3__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_3 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_4 [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_5__0_n_0 ),
        .O(\slv_rdata[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_3__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_6 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_9 [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_5__1_n_0 ),
        .O(\slv_rdata[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[5]_i_3__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_8 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8] [1]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[5]_i_5__2_n_0 ),
        .O(\slv_rdata[5]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBFFBBAE)) 
    \slv_rdata[5]_i_4 
       (.I0(\slv_rdata_reg[5] ),
        .I1(\slv_addr_reg[8]_1 ),
        .I2(\slv_rdata_reg[7] [5]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[7]_i_10_n_0 ),
        .O(\slv_rdata[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_4__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2_0 [1]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_2_1 [1]),
        .O(\slv_rdata[5]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_4__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__0_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_1 [2]),
        .O(\slv_rdata[5]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_4__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__1_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_6 [2]),
        .O(\slv_rdata[5]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h57F7FFFF57F70000)) 
    \slv_rdata[5]_i_5 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[53]),
        .I2(slv_addr),
        .I3(s00_tdata[117]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[5]_i_8_n_0 ),
        .O(\slv_rdata[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_5__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__0_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_3__0_1 [2]),
        .O(\slv_rdata[5]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_5__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__1_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_2 [2]),
        .O(\slv_rdata[5]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[5]_i_5__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__2_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_5 [2]),
        .O(\slv_rdata[5]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_rdata[5]_i_8 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[21]),
        .I2(slv_addr),
        .I3(s00_tdata[85]),
        .O(\slv_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \slv_rdata[6]_i_1 
       (.I0(\slv_rdata[7]_i_3_n_0 ),
        .I1(\slv_rdata[6]_i_2_n_0 ),
        .I2(\slv_rdata[7]_i_6_n_0 ),
        .I3(\slv_rdata[6]_i_3_n_0 ),
        .I4(\slv_rdata[6]_i_4_n_0 ),
        .I5(\slv_rdata[6]_i_5_n_0 ),
        .O(\slv_addr_reg[5]_3 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[6]_i_1__0 
       (.I0(\slv_rdata[6]_i_2__2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[6]_i_3__2_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[6]_i_1__1 
       (.I0(\slv_rdata[6]_i_2__1_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[6]_i_3__1_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_6 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[6]_i_1__2 
       (.I0(\slv_rdata[6]_i_2__0_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[6]_i_3__0_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_10 ));
  LUT5 #(
    .INIT(32'h0035F035)) 
    \slv_rdata[6]_i_2 
       (.I0(\slv_rdata_reg[6]_0 ),
        .I1(s00_tdata[6]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[70]),
        .O(\slv_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_2__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_4 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[7]_5 [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_4__0_n_0 ),
        .O(\slv_rdata[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_2__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_7 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_8 [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_4__1_n_0 ),
        .O(\slv_rdata[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_2__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_2 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_0 [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_4__2_n_0 ),
        .O(\slv_rdata[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \slv_rdata[6]_i_3 
       (.I0(s00_tdata[38]),
        .I1(s00_tdata[102]),
        .I2(slv_addr),
        .O(\slv_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_3__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_3 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_4 [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_5__0_n_0 ),
        .O(\slv_rdata[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_3__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_6 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_9 [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_5__1_n_0 ),
        .O(\slv_rdata[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[6]_i_3__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_8 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8] [2]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[6]_i_5__2_n_0 ),
        .O(\slv_rdata[6]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF23EE)) 
    \slv_rdata[6]_i_4 
       (.I0(slv_addr),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_rdata_reg[7] [6]),
        .I3(\slv_addr_reg[8]_1 ),
        .I4(\slv_rdata_reg[6] ),
        .I5(\slv_rdata[7]_i_10_n_0 ),
        .O(\slv_rdata[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_4__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2_0 [2]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_2_1 [2]),
        .O(\slv_rdata[6]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_4__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__0_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_1 [3]),
        .O(\slv_rdata[6]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_4__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__1_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_6 [3]),
        .O(\slv_rdata[6]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h57F7FFFF57F70000)) 
    \slv_rdata[6]_i_5 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[54]),
        .I2(slv_addr),
        .I3(s00_tdata[118]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[6]_i_8_n_0 ),
        .O(\slv_rdata[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_5__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__0_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_3__0_1 [3]),
        .O(\slv_rdata[6]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_5__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__1_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_2 [3]),
        .O(\slv_rdata[6]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[6]_i_5__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__2_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_5 [3]),
        .O(\slv_rdata[6]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_rdata[6]_i_8 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[22]),
        .I2(slv_addr),
        .I3(s00_tdata[86]),
        .O(\slv_rdata[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \slv_rdata[7]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\slv_addr_reg[11]_0 [7]),
        .I2(\slv_addr_reg[11]_0 [6]),
        .O(s_axi_aresetn_2));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \slv_rdata[7]_i_10 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [2]),
        .I2(\slv_addr_reg[11]_0 [3]),
        .O(\slv_rdata[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_rdata[7]_i_12 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[23]),
        .I2(slv_addr),
        .I3(s00_tdata[87]),
        .O(\slv_rdata[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[7]_i_1__0 
       (.I0(\slv_rdata[7]_i_2__1_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[7]_i_3__2_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_3 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[7]_i_1__1 
       (.I0(\slv_rdata[7]_i_2__0_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[7]_i_3__1_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_7 ));
  LUT6 #(
    .INIT(64'h00000047FFFFFFFF)) 
    \slv_rdata[7]_i_1__2 
       (.I0(\slv_rdata[7]_i_2_n_0 ),
        .I1(\slv_addr_reg[11]_0 [5]),
        .I2(\slv_rdata[7]_i_3__0_n_0 ),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(slv_addr),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\slv_addr_reg[9]_11 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_4 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[7]_5 [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_4__0_n_0 ),
        .O(\slv_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_2__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_7 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_8 [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_4__1_n_0 ),
        .O(\slv_rdata[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_2__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_2 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_0 [4]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_4__2_n_0 ),
        .O(\slv_rdata[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222F222FFFF)) 
    \slv_rdata[7]_i_2__2 
       (.I0(\slv_rdata[7]_i_3_n_0 ),
        .I1(\slv_rdata[7]_i_4_n_0 ),
        .I2(\slv_rdata[7]_i_5_n_0 ),
        .I3(\slv_rdata[7]_i_6_n_0 ),
        .I4(\slv_rdata[7]_i_7_n_0 ),
        .I5(\slv_rdata[7]_i_8_n_0 ),
        .O(\slv_addr_reg[5]_4 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \slv_rdata[7]_i_3 
       (.I0(\slv_addr_reg[11]_0 [2]),
        .I1(\slv_addr_reg[11]_0 [3]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_addr_reg[8]_1 ),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_addr_reg[11]_0 [0]),
        .O(\slv_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_3__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_3 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_4 [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_5__0_n_0 ),
        .O(\slv_rdata[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_3__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_6 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_9 [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_5__1_n_0 ),
        .O(\slv_rdata[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \slv_rdata[7]_i_3__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata_reg[7]_8 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8] [3]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata[7]_i_5__2_n_0 ),
        .O(\slv_rdata[7]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'h0035F035)) 
    \slv_rdata[7]_i_4 
       (.I0(\slv_rdata_reg[7]_1 ),
        .I1(s00_tdata[7]),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(s00_tdata[71]),
        .O(\slv_rdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_4__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2_0 [3]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_2_1 [3]),
        .O(\slv_rdata[7]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_4__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__0_0 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_1 [4]),
        .O(\slv_rdata[7]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_4__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_2__1_0 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_6 [4]),
        .O(\slv_rdata[7]_i_4__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_rdata[7]_i_5 
       (.I0(s00_tdata[103]),
        .I1(slv_addr),
        .I2(s00_tdata[39]),
        .O(\slv_rdata[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_5__0 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__0_0 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata[7]_i_3__0_1 [4]),
        .O(\slv_rdata[7]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_5__1 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__1_0 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_2 [4]),
        .O(\slv_rdata[7]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \slv_rdata[7]_i_5__2 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_rdata[7]_i_3__2_0 [4]),
        .I2(\slv_addr_reg[11]_0 [0]),
        .I3(\slv_rdata_reg[8]_5 [4]),
        .O(\slv_rdata[7]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_rdata[7]_i_6 
       (.I0(\slv_addr_reg[8]_1 ),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_addr_reg[11]_0 [3]),
        .I3(\slv_addr_reg[11]_0 [2]),
        .I4(\slv_addr_reg[11]_0 [0]),
        .I5(\slv_addr_reg[11]_0 [1]),
        .O(\slv_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF23EE)) 
    \slv_rdata[7]_i_7 
       (.I0(slv_addr),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_rdata_reg[7] [7]),
        .I3(\slv_addr_reg[8]_1 ),
        .I4(\slv_rdata[7]_i_10_n_0 ),
        .I5(\slv_rdata_reg[7]_0 ),
        .O(\slv_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h57F7FFFF57F70000)) 
    \slv_rdata[7]_i_8 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(s00_tdata[55]),
        .I2(slv_addr),
        .I3(s00_tdata[119]),
        .I4(\slv_addr_reg[11]_0 [1]),
        .I5(\slv_rdata[7]_i_12_n_0 ),
        .O(\slv_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAA80)) 
    \slv_rdata[8]_i_1 
       (.I0(\slv_rdata_reg[8]_i_2_n_0 ),
        .I1(\slv_addr_reg[8]_1 ),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(\slv_rdata_reg[8]_7 ),
        .I4(slv_addr),
        .I5(\slv_rdata[11]_i_3_n_0 ),
        .O(\slv_addr_reg[6]_1 [0]));
  LUT6 #(
    .INIT(64'h55450545FFFFFFFF)) 
    \slv_rdata[8]_i_1__0 
       (.I0(\slv_rdata[8]_i_2_n_0 ),
        .I1(\slv_rdata_reg[8] [4]),
        .I2(\slv_addr_reg[11]_0 [4]),
        .I3(\slv_addr_reg[11]_0 [5]),
        .I4(\slv_rdata_reg[8]_0 [5]),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc31_ds_inc_0_reg[8] ));
  LUT6 #(
    .INIT(64'h55445550FFFFFFFF)) 
    \slv_rdata[8]_i_1__1 
       (.I0(\slv_rdata[8]_i_2__1_n_0 ),
        .I1(\slv_rdata_reg[8]_1 [5]),
        .I2(\slv_rdata_reg[8]_2 [5]),
        .I3(\slv_addr_reg[11]_0 [4]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc22_ds_inc_0_reg[8] ));
  LUT6 #(
    .INIT(64'h10001010FFFFFFFF)) 
    \slv_rdata[8]_i_1__2 
       (.I0(\slv_rdata_reg[8]_3 ),
        .I1(\slv_rdata[8]_i_3_n_0 ),
        .I2(\slv_rdata[8]_i_4_n_0 ),
        .I3(\slv_rdata_reg[8]_4 [4]),
        .I4(\slv_addr_reg[8]_3 ),
        .I5(\slv_rdata[8]_i_5_n_0 ),
        .O(\adc11_ds_inc_0_reg[8] ));
  LUT6 #(
    .INIT(64'hF3F3F3F7F3FFF3F7)) 
    \slv_rdata[8]_i_2 
       (.I0(\slv_rdata_reg[8]_5 [5]),
        .I1(\slv_rdata[8]_i_4_n_0 ),
        .I2(\slv_rdata[8]_i_3_n_0 ),
        .I3(\slv_addr_reg[11]_0 [4]),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_rdata_reg[8]_6 [5]),
        .O(\slv_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBBBBBFFFBBBB)) 
    \slv_rdata[8]_i_2__1 
       (.I0(\slv_rdata[8]_i_3_n_0 ),
        .I1(\slv_rdata[8]_i_4_n_0 ),
        .I2(\slv_rdata_reg[8]_8 [4]),
        .I3(\slv_addr_reg[11]_0 [5]),
        .I4(\slv_addr_reg[11]_0 [4]),
        .I5(\slv_rdata_reg[8]_9 [4]),
        .O(\slv_rdata[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_rdata[8]_i_3 
       (.I0(\slv_addr_reg[11]_0 [1]),
        .I1(\slv_addr_reg[11]_0 [0]),
        .O(\slv_rdata[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \slv_rdata[8]_i_4 
       (.I0(\slv_addr_reg_n_0_[6] ),
        .I1(slv_addr),
        .O(\slv_rdata[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \slv_rdata[8]_i_5 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg_n_0_[6] ),
        .I2(\slv_addr_reg[11]_0 [1]),
        .I3(slv_addr),
        .O(\slv_rdata[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[8]_i_6 
       (.I0(s00_tdata[8]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[40]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[8]_i_7 
       (.I0(s00_tdata[72]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[104]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[8]_i_8 
       (.I0(s00_tdata[24]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[56]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[8]_i_9 
       (.I0(s00_tdata[88]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[120]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080AA8080)) 
    \slv_rdata[9]_i_1 
       (.I0(\slv_rdata_reg[9]_i_2_n_0 ),
        .I1(\slv_addr_reg[8]_1 ),
        .I2(\slv_addr_reg_n_0_[6] ),
        .I3(slv_addr),
        .I4(\slv_rdata_reg[9] ),
        .I5(\slv_rdata[11]_i_3_n_0 ),
        .O(\slv_addr_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[9]_i_6 
       (.I0(s00_tdata[9]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[41]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[9]_i_7 
       (.I0(s00_tdata[73]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[105]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \slv_rdata[9]_i_8 
       (.I0(s00_tdata[25]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[57]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \slv_rdata[9]_i_9 
       (.I0(s00_tdata[89]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .I2(s00_tdata[121]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .O(\slv_rdata[9]_i_9_n_0 ));
  MUXF8 \slv_rdata_reg[10]_i_2 
       (.I0(\slv_rdata_reg[10]_i_4_n_0 ),
        .I1(\slv_rdata_reg[10]_i_5_n_0 ),
        .O(\slv_rdata_reg[10]_i_2_n_0 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[10]_i_4 
       (.I0(\slv_rdata[10]_i_6_n_0 ),
        .I1(\slv_rdata[10]_i_7_n_0 ),
        .O(\slv_rdata_reg[10]_i_4_n_0 ),
        .S(slv_addr));
  MUXF7 \slv_rdata_reg[10]_i_5 
       (.I0(\slv_rdata[10]_i_8_n_0 ),
        .I1(\slv_rdata[10]_i_9_n_0 ),
        .O(\slv_rdata_reg[10]_i_5_n_0 ),
        .S(slv_addr));
  MUXF8 \slv_rdata_reg[11]_i_2 
       (.I0(\slv_rdata_reg[11]_i_5_n_0 ),
        .I1(\slv_rdata_reg[11]_i_6_n_0 ),
        .O(\slv_rdata_reg[11]_i_2_n_0 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[11]_i_5 
       (.I0(\slv_rdata[11]_i_7_n_0 ),
        .I1(\slv_rdata[11]_i_8_n_0 ),
        .O(\slv_rdata_reg[11]_i_5_n_0 ),
        .S(slv_addr));
  MUXF7 \slv_rdata_reg[11]_i_6 
       (.I0(\slv_rdata[11]_i_9_n_0 ),
        .I1(\slv_rdata[11]_i_10_n_0 ),
        .O(\slv_rdata_reg[11]_i_6_n_0 ),
        .S(slv_addr));
  MUXF7 \slv_rdata_reg[12]_i_1 
       (.I0(\slv_rdata[12]_i_2_n_0 ),
        .I1(\slv_rdata[12]_i_3_n_0 ),
        .O(\slv_addr_reg[2]_22 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[13]_i_1 
       (.I0(\slv_rdata[13]_i_2_n_0 ),
        .I1(\slv_rdata[13]_i_3_n_0 ),
        .O(\slv_addr_reg[2]_21 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[14]_i_1 
       (.I0(\slv_rdata[14]_i_2_n_0 ),
        .I1(\slv_rdata[14]_i_3_n_0 ),
        .O(\slv_addr_reg[2]_20 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[15]_i_2 
       (.I0(\slv_rdata[15]_i_4_n_0 ),
        .I1(\slv_rdata[15]_i_5_n_0 ),
        .O(\slv_addr_reg[2]_19 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF8 \slv_rdata_reg[8]_i_2 
       (.I0(\slv_rdata_reg[8]_i_4_n_0 ),
        .I1(\slv_rdata_reg[8]_i_5_n_0 ),
        .O(\slv_rdata_reg[8]_i_2_n_0 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[8]_i_4 
       (.I0(\slv_rdata[8]_i_6_n_0 ),
        .I1(\slv_rdata[8]_i_7_n_0 ),
        .O(\slv_rdata_reg[8]_i_4_n_0 ),
        .S(slv_addr));
  MUXF7 \slv_rdata_reg[8]_i_5 
       (.I0(\slv_rdata[8]_i_8_n_0 ),
        .I1(\slv_rdata[8]_i_9_n_0 ),
        .O(\slv_rdata_reg[8]_i_5_n_0 ),
        .S(slv_addr));
  MUXF8 \slv_rdata_reg[9]_i_2 
       (.I0(\slv_rdata_reg[9]_i_4_n_0 ),
        .I1(\slv_rdata_reg[9]_i_5_n_0 ),
        .O(\slv_rdata_reg[9]_i_2_n_0 ),
        .S(\slv_addr_reg[11]_0 [0]));
  MUXF7 \slv_rdata_reg[9]_i_4 
       (.I0(\slv_rdata[9]_i_6_n_0 ),
        .I1(\slv_rdata[9]_i_7_n_0 ),
        .O(\slv_rdata_reg[9]_i_4_n_0 ),
        .S(slv_addr));
  MUXF7 \slv_rdata_reg[9]_i_5 
       (.I0(\slv_rdata[9]_i_8_n_0 ),
        .I1(\slv_rdata[9]_i_9_n_0 ),
        .O(\slv_rdata_reg[9]_i_5_n_0 ),
        .S(slv_addr));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h75553000)) 
    slv_reg_rden_i_1
       (.I0(\axi_rresp[1]_i_2_n_0 ),
        .I1(axi_rvalid_reg_0),
        .I2(s_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(slv_reg_rden),
        .O(slv_reg_rden_i_1_n_0));
  FDRE slv_reg_rden_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_rden_i_1_n_0),
        .Q(slv_reg_rden),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hF444)) 
    \slv_wdata_r_internal[11]_i_1 
       (.I0(slv_rden_r),
        .I1(adc0slv_rden),
        .I2(adc0axi_map_wready),
        .I3(s_axi_wvalid),
        .O(slv_rden_r_reg_3));
  LUT4 #(
    .INIT(16'hF444)) 
    \slv_wdata_r_internal[11]_i_1__0 
       (.I0(slv_rden_r_5),
        .I1(adc1slv_rden),
        .I2(adc1axi_map_wready),
        .I3(s_axi_wvalid),
        .O(slv_rden_r_reg_4));
  LUT4 #(
    .INIT(16'hF444)) 
    \slv_wdata_r_internal[11]_i_1__1 
       (.I0(slv_rden_r_3),
        .I1(adc2slv_rden),
        .I2(adc2axi_map_wready),
        .I3(s_axi_wvalid),
        .O(slv_rden_r_reg_5));
  LUT4 #(
    .INIT(16'hF444)) 
    \slv_wdata_r_internal[11]_i_1__2 
       (.I0(slv_rden_r_0),
        .I1(adc3slv_rden),
        .I2(adc3axi_map_wready),
        .I3(s_axi_wvalid),
        .O(slv_rden_r_reg_6));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    timeout_enable_i_1
       (.I0(s_axi_wdata),
        .I1(\slv_addr_reg[5]_5 ),
        .I2(adc_ds_axi_map_wready),
        .I3(s_axi_wvalid),
        .I4(timeout_enable),
        .O(\s_axi_wdata[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \timeout_timer_count[0]_i_1 
       (.I0(\timeout_timer_count_reg_n_0_[0] ),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg[11]_0 [0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h4774)) 
    \timeout_timer_count[10]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [10]),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[10] ),
        .I3(\timeout_timer_count[10]_i_2_n_0 ),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \timeout_timer_count[10]_i_2 
       (.I0(\timeout_timer_count_reg_n_0_[9] ),
        .I1(\timeout_timer_count_reg_n_0_[7] ),
        .I2(\timeout_timer_count_reg_n_0_[6] ),
        .I3(\timeout_timer_count[8]_i_2_n_0 ),
        .I4(\timeout_timer_count_reg_n_0_[8] ),
        .O(\timeout_timer_count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4774)) 
    \timeout_timer_count[11]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [11]),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[11] ),
        .I3(\timeout_timer_count[12]_i_6_n_0 ),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF8FFF8FFF8FF)) 
    \timeout_timer_count[12]_i_1 
       (.I0(s_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(timeout),
        .I3(s_axi_aresetn),
        .I4(axi_bvalid_reg_0),
        .I5(s_axi_bready),
        .O(\timeout_timer_count[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \timeout_timer_count[12]_i_2 
       (.I0(\timeout_timer_count[12]_i_4_n_0 ),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .O(\timeout_timer_count[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \timeout_timer_count[12]_i_3 
       (.I0(\timeout_timer_count_reg_n_0_[11] ),
        .I1(\timeout_timer_count[12]_i_6_n_0 ),
        .I2(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \timeout_timer_count[12]_i_4 
       (.I0(timeout_enable),
        .I1(\timeout_timer_count_reg_n_0_[2] ),
        .I2(\timeout_timer_count_reg_n_0_[7] ),
        .I3(\timeout_timer_count_reg_n_0_[9] ),
        .I4(\timeout_timer_count[12]_i_7_n_0 ),
        .I5(\timeout_timer_count[12]_i_8_n_0 ),
        .O(\timeout_timer_count[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \timeout_timer_count[12]_i_5 
       (.I0(timeout_enable),
        .I1(load_timeout_timer0),
        .I2(s_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wr_access_reg_0),
        .I5(s_axi_wvalid),
        .O(\timeout_timer_count[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \timeout_timer_count[12]_i_6 
       (.I0(\timeout_timer_count_reg_n_0_[10] ),
        .I1(\timeout_timer_count_reg_n_0_[8] ),
        .I2(\timeout_timer_count[8]_i_2_n_0 ),
        .I3(\timeout_timer_count_reg_n_0_[6] ),
        .I4(\timeout_timer_count_reg_n_0_[7] ),
        .I5(\timeout_timer_count_reg_n_0_[9] ),
        .O(\timeout_timer_count[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timeout_timer_count[12]_i_7 
       (.I0(\timeout_timer_count_reg_n_0_[11] ),
        .I1(\timeout_timer_count_reg_n_0_[10] ),
        .I2(\timeout_timer_count_reg_n_0_[5] ),
        .I3(\timeout_timer_count_reg_n_0_[3] ),
        .O(\timeout_timer_count[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timeout_timer_count[12]_i_8 
       (.I0(\timeout_timer_count_reg_n_0_[1] ),
        .I1(\timeout_timer_count_reg_n_0_[0] ),
        .I2(timeout),
        .I3(\timeout_timer_count_reg_n_0_[8] ),
        .I4(\timeout_timer_count_reg_n_0_[4] ),
        .I5(\timeout_timer_count_reg_n_0_[6] ),
        .O(\timeout_timer_count[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \timeout_timer_count[12]_i_9 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(load_timeout_timer0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4774)) 
    \timeout_timer_count[1]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [1]),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[0] ),
        .I3(\timeout_timer_count_reg_n_0_[1] ),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'h55553CCC)) 
    \timeout_timer_count[2]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [2]),
        .I1(\timeout_timer_count_reg_n_0_[2] ),
        .I2(\timeout_timer_count_reg_n_0_[1] ),
        .I3(\timeout_timer_count_reg_n_0_[0] ),
        .I4(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h555555553CCCCCCC)) 
    \timeout_timer_count[3]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [3]),
        .I1(\timeout_timer_count_reg_n_0_[3] ),
        .I2(\timeout_timer_count_reg_n_0_[2] ),
        .I3(\timeout_timer_count_reg_n_0_[0] ),
        .I4(\timeout_timer_count_reg_n_0_[1] ),
        .I5(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'h55C3)) 
    \timeout_timer_count[4]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [4]),
        .I1(\timeout_timer_count_reg_n_0_[4] ),
        .I2(\timeout_timer_count[4]_i_2_n_0 ),
        .I3(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timeout_timer_count[4]_i_2 
       (.I0(\timeout_timer_count_reg_n_0_[2] ),
        .I1(\timeout_timer_count_reg_n_0_[0] ),
        .I2(\timeout_timer_count_reg_n_0_[1] ),
        .I3(\timeout_timer_count_reg_n_0_[3] ),
        .O(\timeout_timer_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h55C3)) 
    \timeout_timer_count[5]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [5]),
        .I1(\timeout_timer_count_reg_n_0_[5] ),
        .I2(\timeout_timer_count[5]_i_2_n_0 ),
        .I3(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \timeout_timer_count[5]_i_2 
       (.I0(\timeout_timer_count_reg_n_0_[3] ),
        .I1(\timeout_timer_count_reg_n_0_[1] ),
        .I2(\timeout_timer_count_reg_n_0_[0] ),
        .I3(\timeout_timer_count_reg_n_0_[2] ),
        .I4(\timeout_timer_count_reg_n_0_[4] ),
        .O(\timeout_timer_count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h55C3)) 
    \timeout_timer_count[6]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [6]),
        .I1(\timeout_timer_count_reg_n_0_[6] ),
        .I2(\timeout_timer_count[8]_i_2_n_0 ),
        .I3(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'h5555CC3C)) 
    \timeout_timer_count[7]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [7]),
        .I1(\timeout_timer_count_reg_n_0_[7] ),
        .I2(\timeout_timer_count_reg_n_0_[6] ),
        .I3(\timeout_timer_count[8]_i_2_n_0 ),
        .I4(\timeout_timer_count[12]_i_5_n_0 ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h7447747474747474)) 
    \timeout_timer_count[8]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [8]),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[8] ),
        .I3(\timeout_timer_count[8]_i_2_n_0 ),
        .I4(\timeout_timer_count_reg_n_0_[6] ),
        .I5(\timeout_timer_count_reg_n_0_[7] ),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timeout_timer_count[8]_i_2 
       (.I0(\timeout_timer_count_reg_n_0_[4] ),
        .I1(\timeout_timer_count_reg_n_0_[2] ),
        .I2(\timeout_timer_count_reg_n_0_[0] ),
        .I3(\timeout_timer_count_reg_n_0_[1] ),
        .I4(\timeout_timer_count_reg_n_0_[3] ),
        .I5(\timeout_timer_count_reg_n_0_[5] ),
        .O(\timeout_timer_count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4774)) 
    \timeout_timer_count[9]_i_1 
       (.I0(\timeout_timer_count_reg[11]_0 [9]),
        .I1(\timeout_timer_count[12]_i_5_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[9] ),
        .I3(\timeout_timer_count[9]_i_2_n_0 ),
        .O(p_2_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \timeout_timer_count[9]_i_2 
       (.I0(\timeout_timer_count_reg_n_0_[8] ),
        .I1(\timeout_timer_count[8]_i_2_n_0 ),
        .I2(\timeout_timer_count_reg_n_0_[6] ),
        .I3(\timeout_timer_count_reg_n_0_[7] ),
        .O(\timeout_timer_count[9]_i_2_n_0 ));
  FDRE \timeout_timer_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\timeout_timer_count_reg_n_0_[0] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(\timeout_timer_count_reg_n_0_[10] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(\timeout_timer_count_reg_n_0_[11] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(timeout),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\timeout_timer_count_reg_n_0_[1] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\timeout_timer_count_reg_n_0_[2] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\timeout_timer_count_reg_n_0_[3] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\timeout_timer_count_reg_n_0_[4] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\timeout_timer_count_reg_n_0_[5] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\timeout_timer_count_reg_n_0_[6] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\timeout_timer_count_reg_n_0_[7] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(\timeout_timer_count_reg_n_0_[8] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  FDRE \timeout_timer_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\timeout_timer_count[12]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(\timeout_timer_count_reg_n_0_[9] ),
        .R(\timeout_timer_count[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \timeout_value[11]_i_1 
       (.I0(\timeout_value[11]_i_2_n_0 ),
        .I1(slv_addr),
        .I2(\slv_addr_reg[11]_0 [2]),
        .I3(adc_ds_axi_map_wready),
        .I4(s_axi_wvalid),
        .I5(\timeout_value[11]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \timeout_value[11]_i_2 
       (.I0(\slv_addr_reg[11]_0 [3]),
        .I1(\slv_addr_reg[11]_0 [7]),
        .I2(\slv_addr_reg[11]_0 [6]),
        .I3(\slv_addr_reg_n_0_[6] ),
        .I4(\slv_addr_reg[11]_0 [5]),
        .I5(\slv_addr_reg[11]_0 [4]),
        .O(\timeout_value[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \timeout_value[11]_i_3 
       (.I0(\slv_addr_reg[11]_0 [0]),
        .I1(\slv_addr_reg[11]_0 [1]),
        .O(\timeout_value[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1000100000000)) 
    valid_waddr_i_1
       (.I0(timeout),
        .I1(valid_waddr_i_2_n_0),
        .I2(valid_waddr_i_3_n_0),
        .I3(valid_waddr_i_4_n_0),
        .I4(valid_waddr_reg_n_0),
        .I5(s_axi_aresetn),
        .O(valid_waddr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    valid_waddr_i_2
       (.I0(axi_bvalid_reg_0),
        .I1(s_axi_bready),
        .O(valid_waddr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h54)) 
    valid_waddr_i_3
       (.I0(timeout),
        .I1(s_axi_arvalid),
        .I2(read_in_progress),
        .O(valid_waddr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    valid_waddr_i_4
       (.I0(axi_awready_reg_0),
        .I1(s_axi_awvalid),
        .O(valid_waddr_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_waddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(valid_waddr_i_1_n_0),
        .Q(valid_waddr_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    write_in_progress_i_1
       (.I0(s_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wr_access_reg_0),
        .I3(s_axi_wvalid),
        .I4(write_in_progress),
        .I5(write_in_progress_i_2_n_0),
        .O(write_in_progress_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    write_in_progress_i_2
       (.I0(s_axi_bready),
        .I1(axi_bvalid_reg_0),
        .I2(s_axi_aresetn),
        .I3(timeout),
        .O(write_in_progress_i_2_n_0));
  FDRE write_in_progress_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(write_in_progress_i_1_n_0),
        .Q(write_in_progress),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen
   (SR,
    slv_wren_done_pulse,
    clk2_valid_pulse_reg_0,
    E,
    clk2_valid_pulse_reg_1,
    clk2_valid_pulse_reg_2,
    clk2_valid_pulse_reg_3,
    clk2_valid_pulse_reg_4,
    clk2_valid_pulse_reg_5,
    clk2_valid_pulse_reg_6,
    clk2_valid_pulse_reg_7,
    clk2_valid_pulse_reg_8,
    \syncstages_ff_reg[4] ,
    src_in,
    s_axi_aclk,
    \adc30_ds_enable_0_reg[0] ,
    slv_access_valid_hold_reg,
    \adc32_ds_type_0_reg[0] ,
    \adc32_ds_inc_0_reg[0] ,
    \adc30_ds_type_0_reg[0] ,
    \adc32_ds_control_0_reg[0] ,
    \adc32_ds_enable_0_reg[0] ,
    \adc31_ds_control_0_reg[0] ,
    \adc33_ds_type_0_reg[0] ,
    \adc33_ds_inc_0_reg[0] ,
    s_axi_aresetn,
    s_axi_wvalid,
    adc3axi_map_wready,
    adc3slv_rden);
  output [0:0]SR;
  output slv_wren_done_pulse;
  output clk2_valid_pulse_reg_0;
  output [0:0]E;
  output [0:0]clk2_valid_pulse_reg_1;
  output [0:0]clk2_valid_pulse_reg_2;
  output [0:0]clk2_valid_pulse_reg_3;
  output [0:0]clk2_valid_pulse_reg_4;
  output [0:0]clk2_valid_pulse_reg_5;
  output [0:0]clk2_valid_pulse_reg_6;
  output [0:0]clk2_valid_pulse_reg_7;
  output [0:0]clk2_valid_pulse_reg_8;
  output \syncstages_ff_reg[4] ;
  input src_in;
  input s_axi_aclk;
  input \adc30_ds_enable_0_reg[0] ;
  input slv_access_valid_hold_reg;
  input \adc32_ds_type_0_reg[0] ;
  input \adc32_ds_inc_0_reg[0] ;
  input \adc30_ds_type_0_reg[0] ;
  input \adc32_ds_control_0_reg[0] ;
  input \adc32_ds_enable_0_reg[0] ;
  input \adc31_ds_control_0_reg[0] ;
  input \adc33_ds_type_0_reg[0] ;
  input \adc33_ds_inc_0_reg[0] ;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input adc3axi_map_wready;
  input adc3slv_rden;

  wire [0:0]E;
  wire [0:0]SR;
  wire \adc30_ds_enable_0_reg[0] ;
  wire \adc30_ds_type_0_reg[0] ;
  wire \adc31_ds_control_0_reg[0] ;
  wire \adc32_ds_control_0_reg[0] ;
  wire \adc32_ds_enable_0_reg[0] ;
  wire \adc32_ds_inc_0_reg[0] ;
  wire \adc32_ds_type_0_reg[0] ;
  wire \adc33_ds_inc_0_reg[0] ;
  wire \adc33_ds_type_0_reg[0] ;
  wire adc3axi_map_wready;
  wire adc3slv_rden;
  wire axi_2_drp_valid_i_n_0;
  wire axi_2_drp_valid_i_n_2;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire clk2_ready;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg_0;
  wire [0:0]clk2_valid_pulse_reg_1;
  wire [0:0]clk2_valid_pulse_reg_2;
  wire [0:0]clk2_valid_pulse_reg_3;
  wire [0:0]clk2_valid_pulse_reg_4;
  wire [0:0]clk2_valid_pulse_reg_5;
  wire [0:0]clk2_valid_pulse_reg_6;
  wire [0:0]clk2_valid_pulse_reg_7;
  wire [0:0]clk2_valid_pulse_reg_8;
  wire clk2_valid_sync_r;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire slv_wren_clear;
  wire slv_wren_done_pulse;
  wire src_in;
  wire \syncstages_ff_reg[4] ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc30_ds_enable_0[7]_i_1 
       (.I0(\adc30_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc30_ds_type_0[3]_i_1 
       (.I0(\adc30_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc31_ds_control_0[1]_i_1 
       (.I0(\adc31_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc32_ds_control_0[1]_i_1 
       (.I0(\adc32_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc32_ds_enable_0[7]_i_1 
       (.I0(\adc32_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc32_ds_inc_0[11]_i_1 
       (.I0(\adc32_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc32_ds_type_0[3]_i_1 
       (.I0(\adc32_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    \adc33_ds_inc_0[11]_i_1 
       (.I0(\adc33_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc33_ds_type_0[3]_i_1 
       (.I0(\adc33_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__7 axi_2_drp_valid_i
       (.clk2_ready_reg(clk2_valid_pulse_reg_0),
        .clk2_ready_reg_0(clk2_ready),
        .clk2_valid_pulse0(clk2_valid_pulse0),
        .clk2_valid_pulse_reg(axi_2_drp_valid_i_n_2),
        .clk2_valid_sync_r(clk2_valid_sync_r),
        .dest_out(axi_2_drp_valid_i_n_0),
        .s_axi_aclk(s_axi_aclk),
        .src_in(src_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  FDRE clk1_ready_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1_ready_pulse0),
        .Q(slv_wren_done_pulse),
        .R(SR));
  FDRE clk1_ready_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_wren_clear),
        .Q(clk1_ready_sync_r),
        .R(SR));
  FDRE clk2_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_2),
        .Q(clk2_ready),
        .R(SR));
  FDRE clk2_valid_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2_valid_pulse0),
        .Q(clk2_valid_pulse_reg_0),
        .R(SR));
  FDRE clk2_valid_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_0),
        .Q(clk2_valid_sync_r),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync drp_2_axi_in_progress_i
       (.adc3axi_map_wready(adc3axi_map_wready),
        .adc3slv_rden(adc3slv_rden),
        .clk1_ready_pulse0(clk1_ready_pulse0),
        .clk1_ready_sync_r(clk1_ready_sync_r),
        .dest_out(slv_wren_clear),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_access_valid_hold_reg),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (clk2_ready),
        .\syncstages_ff_reg[4] (\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_hshk_pls_gen" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1
   (slv_wren_done_pulse,
    SR,
    clk2_valid_pulse_reg_0,
    E,
    slv_rden_r_reg,
    slv_rden_r_reg_0,
    slv_rden_r_reg_1,
    slv_rden_r_reg_2,
    slv_rden_r_reg_3,
    slv_rden_r_reg_4,
    slv_rden_r_reg_5,
    slv_rden_r_reg_6,
    slv_rden_r_reg_7,
    clk2_valid_pulse_reg_1,
    \slv_wdata_r_internal_reg[0] ,
    \syncstages_ff_reg[4] ,
    src_in,
    s0_axis_clock,
    s_axi_aclk,
    p_0_in,
    \adc00_ds_type_0_reg[3] ,
    slv_access_valid_hold_reg,
    Q,
    adc_ds_slv_rden,
    \adc00_ds_enable_0_reg[0] ,
    \adc02_ds_type_0_reg[0] ,
    \adc02_ds_inc_0_reg[0] ,
    \adc02_ds_control_0_reg[0] ,
    \adc02_ds_enable_0_reg[0] ,
    \adc01_ds_control_0_reg[0] ,
    \adc03_ds_type_0_reg[0] ,
    \adc03_ds_inc_0_reg[0] ,
    dest_rst,
    adc00_ds_pulse_control_0_reg,
    adc00_ds_pulse_control_0_reg_0,
    adc00_ds_pulse_control_0,
    s_axi_wvalid,
    adc0axi_map_wready,
    adc0slv_rden);
  output slv_wren_done_pulse;
  output [0:0]SR;
  output clk2_valid_pulse_reg_0;
  output [0:0]E;
  output slv_rden_r_reg;
  output [0:0]slv_rden_r_reg_0;
  output [0:0]slv_rden_r_reg_1;
  output [0:0]slv_rden_r_reg_2;
  output [0:0]slv_rden_r_reg_3;
  output [0:0]slv_rden_r_reg_4;
  output [0:0]slv_rden_r_reg_5;
  output [0:0]slv_rden_r_reg_6;
  output [0:0]slv_rden_r_reg_7;
  output clk2_valid_pulse_reg_1;
  output \slv_wdata_r_internal_reg[0] ;
  output \syncstages_ff_reg[4] ;
  input src_in;
  input s0_axis_clock;
  input s_axi_aclk;
  input p_0_in;
  input \adc00_ds_type_0_reg[3] ;
  input slv_access_valid_hold_reg;
  input [0:0]Q;
  input adc_ds_slv_rden;
  input \adc00_ds_enable_0_reg[0] ;
  input \adc02_ds_type_0_reg[0] ;
  input \adc02_ds_inc_0_reg[0] ;
  input \adc02_ds_control_0_reg[0] ;
  input \adc02_ds_enable_0_reg[0] ;
  input \adc01_ds_control_0_reg[0] ;
  input \adc03_ds_type_0_reg[0] ;
  input \adc03_ds_inc_0_reg[0] ;
  input dest_rst;
  input [0:0]adc00_ds_pulse_control_0_reg;
  input adc00_ds_pulse_control_0_reg_0;
  input adc00_ds_pulse_control_0;
  input s_axi_wvalid;
  input adc0axi_map_wready;
  input adc0slv_rden;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \adc00_ds_enable_0_reg[0] ;
  wire adc00_ds_pulse_control_0;
  wire [0:0]adc00_ds_pulse_control_0_reg;
  wire adc00_ds_pulse_control_0_reg_0;
  wire \adc00_ds_type_0_reg[3] ;
  wire \adc01_ds_control_0_reg[0] ;
  wire \adc02_ds_control_0_reg[0] ;
  wire \adc02_ds_enable_0_reg[0] ;
  wire \adc02_ds_inc_0_reg[0] ;
  wire \adc02_ds_type_0_reg[0] ;
  wire \adc03_ds_inc_0_reg[0] ;
  wire \adc03_ds_type_0_reg[0] ;
  wire adc0axi_map_wready;
  wire adc0slv_rden;
  wire adc_ds_slv_rden;
  wire axi_2_drp_valid_i_n_0;
  wire axi_2_drp_valid_i_n_2;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire clk2_ready;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg_0;
  wire clk2_valid_pulse_reg_1;
  wire clk2_valid_sync_r;
  wire dest_rst;
  wire p_0_in;
  wire s0_axis_clock;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire slv_rden_r_reg;
  wire [0:0]slv_rden_r_reg_0;
  wire [0:0]slv_rden_r_reg_1;
  wire [0:0]slv_rden_r_reg_2;
  wire [0:0]slv_rden_r_reg_3;
  wire [0:0]slv_rden_r_reg_4;
  wire [0:0]slv_rden_r_reg_5;
  wire [0:0]slv_rden_r_reg_6;
  wire [0:0]slv_rden_r_reg_7;
  wire \slv_wdata_r_internal_reg[0] ;
  wire slv_wren_clear;
  wire slv_wren_done_pulse;
  wire src_in;
  wire \syncstages_ff_reg[4] ;

  LUT1 #(
    .INIT(2'h1)) 
    \adc00_ds_enable_0[0]_i_1 
       (.I0(dest_rst),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \adc00_ds_enable_0[0]_i_2 
       (.I0(\adc00_ds_enable_0_reg[0] ),
        .I1(slv_access_valid_hold_reg),
        .I2(clk2_valid_pulse_reg_0),
        .O(slv_rden_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    adc00_ds_pulse_control_0_i_1
       (.I0(adc00_ds_pulse_control_0_reg),
        .I1(adc00_ds_pulse_control_0_reg_0),
        .I2(slv_access_valid_hold_reg),
        .I3(clk2_valid_pulse_reg_0),
        .I4(adc00_ds_pulse_control_0),
        .O(\slv_wdata_r_internal_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \adc00_ds_type_0[3]_i_1 
       (.I0(\adc00_ds_type_0_reg[3] ),
        .I1(slv_access_valid_hold_reg),
        .I2(clk2_valid_pulse_reg_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc01_ds_control_0[1]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc01_ds_control_0_reg[0] ),
        .O(slv_rden_r_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \adc01_ds_inc_0[11]_i_2 
       (.I0(clk2_valid_pulse_reg_0),
        .I1(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc02_ds_control_0[1]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc02_ds_control_0_reg[0] ),
        .O(slv_rden_r_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc02_ds_enable_0[7]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc02_ds_enable_0_reg[0] ),
        .O(slv_rden_r_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc02_ds_inc_0[11]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc02_ds_inc_0_reg[0] ),
        .O(slv_rden_r_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc02_ds_type_0[3]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc02_ds_type_0_reg[0] ),
        .O(slv_rden_r_reg_1));
  LUT3 #(
    .INIT(8'h40)) 
    \adc03_ds_inc_0[11]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc03_ds_inc_0_reg[0] ),
        .O(slv_rden_r_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \adc03_ds_type_0[3]_i_1 
       (.I0(slv_access_valid_hold_reg),
        .I1(clk2_valid_pulse_reg_0),
        .I2(\adc03_ds_type_0_reg[0] ),
        .O(slv_rden_r_reg_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__1 axi_2_drp_valid_i
       (.clk2_ready_reg(clk2_valid_pulse_reg_0),
        .clk2_ready_reg_0(clk2_ready),
        .clk2_valid_pulse0(clk2_valid_pulse0),
        .clk2_valid_pulse_reg(axi_2_drp_valid_i_n_2),
        .clk2_valid_sync_r(clk2_valid_sync_r),
        .dest_out(axi_2_drp_valid_i_n_0),
        .s0_axis_clock(s0_axis_clock),
        .src_in(src_in));
  LUT4 #(
    .INIT(16'h8F80)) 
    \axi_rresp[1]_i_4 
       (.I0(slv_access_valid_hold_reg),
        .I1(slv_wren_done_pulse),
        .I2(Q),
        .I3(adc_ds_slv_rden),
        .O(slv_rden_r_reg));
  FDRE clk1_ready_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1_ready_pulse0),
        .Q(slv_wren_done_pulse),
        .R(p_0_in));
  FDRE clk1_ready_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_wren_clear),
        .Q(clk1_ready_sync_r),
        .R(p_0_in));
  FDRE clk2_ready_reg
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_2),
        .Q(clk2_ready),
        .R(SR));
  FDRE clk2_valid_pulse_reg
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(clk2_valid_pulse0),
        .Q(clk2_valid_pulse_reg_0),
        .R(SR));
  FDRE clk2_valid_sync_r_reg
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_0),
        .Q(clk2_valid_sync_r),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__2 drp_2_axi_in_progress_i
       (.adc0axi_map_wready(adc0axi_map_wready),
        .adc0slv_rden(adc0slv_rden),
        .clk1_ready_pulse0(clk1_ready_pulse0),
        .clk1_ready_sync_r(clk1_ready_sync_r),
        .dest_out(slv_wren_clear),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_access_valid_hold_reg),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (clk2_ready),
        .\syncstages_ff_reg[4] (\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_hshk_pls_gen" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2
   (slv_wren_done_pulse,
    clk2_valid_pulse_reg_0,
    clk1_ready_pulse_reg_0,
    E,
    clk2_valid_pulse_reg_1,
    clk2_valid_pulse_reg_2,
    clk2_valid_pulse_reg_3,
    clk2_valid_pulse_reg_4,
    clk2_valid_pulse_reg_5,
    clk2_valid_pulse_reg_6,
    clk2_valid_pulse_reg_7,
    clk2_valid_pulse_reg_8,
    \syncstages_ff_reg[4] ,
    src_in,
    s_axi_aclk,
    p_0_in,
    slv_access_valid_hold_reg,
    adc_ds_axi_map_wready,
    s_axi_wvalid,
    \adc10_ds_enable_0_reg[0] ,
    \adc12_ds_type_0_reg[0] ,
    \adc12_ds_inc_0_reg[0] ,
    \adc10_ds_type_0_reg[0] ,
    \adc12_ds_control_0_reg[0] ,
    \adc12_ds_enable_0_reg[0] ,
    \adc11_ds_control_0_reg[0] ,
    \adc13_ds_type_0_reg[0] ,
    \adc13_ds_inc_0_reg[0] ,
    adc1axi_map_wready,
    adc1slv_rden);
  output slv_wren_done_pulse;
  output clk2_valid_pulse_reg_0;
  output clk1_ready_pulse_reg_0;
  output [0:0]E;
  output [0:0]clk2_valid_pulse_reg_1;
  output [0:0]clk2_valid_pulse_reg_2;
  output [0:0]clk2_valid_pulse_reg_3;
  output [0:0]clk2_valid_pulse_reg_4;
  output [0:0]clk2_valid_pulse_reg_5;
  output [0:0]clk2_valid_pulse_reg_6;
  output [0:0]clk2_valid_pulse_reg_7;
  output [0:0]clk2_valid_pulse_reg_8;
  output \syncstages_ff_reg[4] ;
  input src_in;
  input s_axi_aclk;
  input p_0_in;
  input slv_access_valid_hold_reg;
  input adc_ds_axi_map_wready;
  input s_axi_wvalid;
  input \adc10_ds_enable_0_reg[0] ;
  input \adc12_ds_type_0_reg[0] ;
  input \adc12_ds_inc_0_reg[0] ;
  input \adc10_ds_type_0_reg[0] ;
  input \adc12_ds_control_0_reg[0] ;
  input \adc12_ds_enable_0_reg[0] ;
  input \adc11_ds_control_0_reg[0] ;
  input \adc13_ds_type_0_reg[0] ;
  input \adc13_ds_inc_0_reg[0] ;
  input adc1axi_map_wready;
  input adc1slv_rden;

  wire [0:0]E;
  wire \adc10_ds_enable_0_reg[0] ;
  wire \adc10_ds_type_0_reg[0] ;
  wire \adc11_ds_control_0_reg[0] ;
  wire \adc12_ds_control_0_reg[0] ;
  wire \adc12_ds_enable_0_reg[0] ;
  wire \adc12_ds_inc_0_reg[0] ;
  wire \adc12_ds_type_0_reg[0] ;
  wire \adc13_ds_inc_0_reg[0] ;
  wire \adc13_ds_type_0_reg[0] ;
  wire adc1axi_map_wready;
  wire adc1slv_rden;
  wire adc_ds_axi_map_wready;
  wire axi_2_drp_valid_i_n_0;
  wire axi_2_drp_valid_i_n_2;
  wire clk1_ready_pulse0;
  wire clk1_ready_pulse_reg_0;
  wire clk1_ready_sync_r;
  wire clk2_ready;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg_0;
  wire [0:0]clk2_valid_pulse_reg_1;
  wire [0:0]clk2_valid_pulse_reg_2;
  wire [0:0]clk2_valid_pulse_reg_3;
  wire [0:0]clk2_valid_pulse_reg_4;
  wire [0:0]clk2_valid_pulse_reg_5;
  wire [0:0]clk2_valid_pulse_reg_6;
  wire [0:0]clk2_valid_pulse_reg_7;
  wire [0:0]clk2_valid_pulse_reg_8;
  wire clk2_valid_sync_r;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire slv_wren_clear;
  wire slv_wren_done_pulse;
  wire src_in;
  wire \syncstages_ff_reg[4] ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc10_ds_enable_0[7]_i_1 
       (.I0(\adc10_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc10_ds_type_0[3]_i_1 
       (.I0(\adc10_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc11_ds_control_0[1]_i_1 
       (.I0(\adc11_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc12_ds_control_0[1]_i_1 
       (.I0(\adc12_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc12_ds_enable_0[7]_i_1 
       (.I0(\adc12_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc12_ds_inc_0[11]_i_1 
       (.I0(\adc12_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc12_ds_type_0[3]_i_1 
       (.I0(\adc12_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    \adc13_ds_inc_0[11]_i_1 
       (.I0(\adc13_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc13_ds_type_0[3]_i_1 
       (.I0(\adc13_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__3 axi_2_drp_valid_i
       (.clk2_ready_reg(clk2_valid_pulse_reg_0),
        .clk2_ready_reg_0(clk2_ready),
        .clk2_valid_pulse0(clk2_valid_pulse0),
        .clk2_valid_pulse_reg(axi_2_drp_valid_i_n_2),
        .clk2_valid_sync_r(clk2_valid_sync_r),
        .dest_out(axi_2_drp_valid_i_n_0),
        .s_axi_aclk(s_axi_aclk),
        .src_in(src_in));
  LUT4 #(
    .INIT(16'h0DDD)) 
    \axi_bresp[1]_i_4 
       (.I0(slv_wren_done_pulse),
        .I1(slv_access_valid_hold_reg),
        .I2(adc_ds_axi_map_wready),
        .I3(s_axi_wvalid),
        .O(clk1_ready_pulse_reg_0));
  FDRE clk1_ready_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1_ready_pulse0),
        .Q(slv_wren_done_pulse),
        .R(p_0_in));
  FDRE clk1_ready_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_wren_clear),
        .Q(clk1_ready_sync_r),
        .R(p_0_in));
  FDRE clk2_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_2),
        .Q(clk2_ready),
        .R(p_0_in));
  FDRE clk2_valid_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2_valid_pulse0),
        .Q(clk2_valid_pulse_reg_0),
        .R(p_0_in));
  FDRE clk2_valid_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_0),
        .Q(clk2_valid_sync_r),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__4 drp_2_axi_in_progress_i
       (.adc1axi_map_wready(adc1axi_map_wready),
        .adc1slv_rden(adc1slv_rden),
        .clk1_ready_pulse0(clk1_ready_pulse0),
        .clk1_ready_sync_r(clk1_ready_sync_r),
        .dest_out(slv_wren_clear),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_access_valid_hold_reg),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (clk2_ready),
        .\syncstages_ff_reg[4] (\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_hshk_pls_gen" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3
   (clk2_valid_pulse_reg_0,
    slv_rden_r_reg,
    E,
    clk2_valid_pulse_reg_1,
    clk2_valid_pulse_reg_2,
    clk2_valid_pulse_reg_3,
    clk2_valid_pulse_reg_4,
    clk2_valid_pulse_reg_5,
    clk2_valid_pulse_reg_6,
    clk2_valid_pulse_reg_7,
    clk2_valid_pulse_reg_8,
    slv_rden_r_reg_0,
    \syncstages_ff_reg[4] ,
    src_in,
    s_axi_aclk,
    p_0_in,
    slv_access_valid_hold_reg,
    \axi_rresp[1]_i_2 ,
    slv_rden_r_0,
    slv_wren_done_pulse,
    \adc20_ds_enable_0_reg[0] ,
    \adc22_ds_type_0_reg[0] ,
    \adc22_ds_inc_0_reg[0] ,
    \adc20_ds_type_0_reg[0] ,
    \adc22_ds_control_0_reg[0] ,
    \adc22_ds_enable_0_reg[0] ,
    \adc21_ds_control_0_reg[0] ,
    \adc23_ds_type_0_reg[0] ,
    \adc23_ds_inc_0_reg[0] ,
    slv_wren_done_pulse_1,
    slv_rden_r_2,
    slv_wren_done_pulse_3,
    slv_rden_r_4,
    s_axi_wvalid,
    adc2axi_map_wready,
    adc2slv_rden);
  output clk2_valid_pulse_reg_0;
  output slv_rden_r_reg;
  output [0:0]E;
  output [0:0]clk2_valid_pulse_reg_1;
  output [0:0]clk2_valid_pulse_reg_2;
  output [0:0]clk2_valid_pulse_reg_3;
  output [0:0]clk2_valid_pulse_reg_4;
  output [0:0]clk2_valid_pulse_reg_5;
  output [0:0]clk2_valid_pulse_reg_6;
  output [0:0]clk2_valid_pulse_reg_7;
  output [0:0]clk2_valid_pulse_reg_8;
  output slv_rden_r_reg_0;
  output \syncstages_ff_reg[4] ;
  input src_in;
  input s_axi_aclk;
  input p_0_in;
  input slv_access_valid_hold_reg;
  input [0:0]\axi_rresp[1]_i_2 ;
  input slv_rden_r_0;
  input slv_wren_done_pulse;
  input \adc20_ds_enable_0_reg[0] ;
  input \adc22_ds_type_0_reg[0] ;
  input \adc22_ds_inc_0_reg[0] ;
  input \adc20_ds_type_0_reg[0] ;
  input \adc22_ds_control_0_reg[0] ;
  input \adc22_ds_enable_0_reg[0] ;
  input \adc21_ds_control_0_reg[0] ;
  input \adc23_ds_type_0_reg[0] ;
  input \adc23_ds_inc_0_reg[0] ;
  input slv_wren_done_pulse_1;
  input slv_rden_r_2;
  input slv_wren_done_pulse_3;
  input slv_rden_r_4;
  input s_axi_wvalid;
  input adc2axi_map_wready;
  input adc2slv_rden;

  wire [0:0]E;
  wire \adc20_ds_enable_0_reg[0] ;
  wire \adc20_ds_type_0_reg[0] ;
  wire \adc21_ds_control_0_reg[0] ;
  wire \adc22_ds_control_0_reg[0] ;
  wire \adc22_ds_enable_0_reg[0] ;
  wire \adc22_ds_inc_0_reg[0] ;
  wire \adc22_ds_type_0_reg[0] ;
  wire \adc23_ds_inc_0_reg[0] ;
  wire \adc23_ds_type_0_reg[0] ;
  wire adc2axi_map_wready;
  wire adc2slv_rden;
  wire axi_2_drp_valid_i_n_0;
  wire axi_2_drp_valid_i_n_2;
  wire [0:0]\axi_rresp[1]_i_2 ;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire clk2_ready;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg_0;
  wire [0:0]clk2_valid_pulse_reg_1;
  wire [0:0]clk2_valid_pulse_reg_2;
  wire [0:0]clk2_valid_pulse_reg_3;
  wire [0:0]clk2_valid_pulse_reg_4;
  wire [0:0]clk2_valid_pulse_reg_5;
  wire [0:0]clk2_valid_pulse_reg_6;
  wire [0:0]clk2_valid_pulse_reg_7;
  wire [0:0]clk2_valid_pulse_reg_8;
  wire clk2_valid_sync_r;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire slv_rden_r_0;
  wire slv_rden_r_2;
  wire slv_rden_r_4;
  wire slv_rden_r_reg;
  wire slv_rden_r_reg_0;
  wire slv_wren_clear;
  wire slv_wren_done_pulse;
  wire slv_wren_done_pulse_0;
  wire slv_wren_done_pulse_1;
  wire slv_wren_done_pulse_3;
  wire src_in;
  wire \syncstages_ff_reg[4] ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc20_ds_enable_0[7]_i_1 
       (.I0(\adc20_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc20_ds_type_0[3]_i_1 
       (.I0(\adc20_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc21_ds_control_0[1]_i_1 
       (.I0(\adc21_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc22_ds_control_0[1]_i_1 
       (.I0(\adc22_ds_control_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc22_ds_enable_0[7]_i_1 
       (.I0(\adc22_ds_enable_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc22_ds_inc_0[11]_i_1 
       (.I0(\adc22_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc22_ds_type_0[3]_i_1 
       (.I0(\adc22_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_1));
  LUT3 #(
    .INIT(8'h08)) 
    \adc23_ds_inc_0[11]_i_1 
       (.I0(\adc23_ds_inc_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \adc23_ds_type_0[3]_i_1 
       (.I0(\adc23_ds_type_0_reg[0] ),
        .I1(clk2_valid_pulse_reg_0),
        .I2(slv_access_valid_hold_reg),
        .O(clk2_valid_pulse_reg_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__5 axi_2_drp_valid_i
       (.clk2_ready_reg(clk2_valid_pulse_reg_0),
        .clk2_ready_reg_0(clk2_ready),
        .clk2_valid_pulse0(clk2_valid_pulse0),
        .clk2_valid_pulse_reg(axi_2_drp_valid_i_n_2),
        .clk2_valid_sync_r(clk2_valid_sync_r),
        .dest_out(axi_2_drp_valid_i_n_0),
        .s_axi_aclk(s_axi_aclk),
        .src_in(src_in));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \axi_bresp[1]_i_3 
       (.I0(slv_access_valid_hold_reg),
        .I1(slv_wren_done_pulse_0),
        .I2(slv_wren_done_pulse_1),
        .I3(slv_rden_r_2),
        .I4(slv_wren_done_pulse_3),
        .I5(slv_rden_r_4),
        .O(slv_rden_r_reg_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \axi_rresp[1]_i_3 
       (.I0(slv_access_valid_hold_reg),
        .I1(slv_wren_done_pulse_0),
        .I2(\axi_rresp[1]_i_2 ),
        .I3(slv_rden_r_0),
        .I4(slv_wren_done_pulse),
        .O(slv_rden_r_reg));
  FDRE clk1_ready_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1_ready_pulse0),
        .Q(slv_wren_done_pulse_0),
        .R(p_0_in));
  FDRE clk1_ready_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_wren_clear),
        .Q(clk1_ready_sync_r),
        .R(p_0_in));
  FDRE clk2_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_2),
        .Q(clk2_ready),
        .R(p_0_in));
  FDRE clk2_valid_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2_valid_pulse0),
        .Q(clk2_valid_pulse_reg_0),
        .R(p_0_in));
  FDRE clk2_valid_sync_r_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_2_drp_valid_i_n_0),
        .Q(clk2_valid_sync_r),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__6 drp_2_axi_in_progress_i
       (.adc2axi_map_wready(adc2axi_map_wready),
        .adc2slv_rden(adc2slv_rden),
        .clk1_ready_pulse0(clk1_ready_pulse0),
        .clk1_ready_sync_r(clk1_ready_sync_r),
        .dest_out(slv_wren_clear),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wvalid(s_axi_wvalid),
        .slv_access_valid_hold_reg(slv_access_valid_hold_reg),
        .src_in(src_in),
        .\syncstages_ff_reg[0] (clk2_ready),
        .\syncstages_ff_reg[4] (\syncstages_ff_reg[4] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync
   (dest_out,
    clk1_ready_pulse0,
    \syncstages_ff_reg[4] ,
    \syncstages_ff_reg[0] ,
    s_axi_aclk,
    clk1_ready_sync_r,
    s_axi_wvalid,
    adc3axi_map_wready,
    adc3slv_rden,
    slv_access_valid_hold_reg,
    src_in);
  output dest_out;
  output clk1_ready_pulse0;
  output \syncstages_ff_reg[4] ;
  input \syncstages_ff_reg[0] ;
  input s_axi_aclk;
  input clk1_ready_sync_r;
  input s_axi_wvalid;
  input adc3axi_map_wready;
  input adc3slv_rden;
  input slv_access_valid_hold_reg;
  input src_in;

  wire adc3axi_map_wready;
  wire adc3slv_rden;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire src_in;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[4] ;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    clk1_ready_pulse_i_1__2
       (.I0(clk1_ready_sync_r),
        .I1(dest_out),
        .O(clk1_ready_pulse0));
  LUT6 #(
    .INIT(64'hD5D5FFD5C0C0FFC0)) 
    slv_access_valid_hold_i_1__2
       (.I0(dest_out),
        .I1(s_axi_wvalid),
        .I2(adc3axi_map_wready),
        .I3(adc3slv_rden),
        .I4(slv_access_valid_hold_reg),
        .I5(src_in),
        .O(\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__1
   (dest_out,
    clk2_valid_pulse0,
    clk2_valid_pulse_reg,
    src_in,
    s0_axis_clock,
    clk2_valid_sync_r,
    clk2_ready_reg,
    clk2_ready_reg_0);
  output dest_out;
  output clk2_valid_pulse0;
  output clk2_valid_pulse_reg;
  input src_in;
  input s0_axis_clock;
  input clk2_valid_sync_r;
  input clk2_ready_reg;
  input clk2_ready_reg_0;

  wire clk2_ready_reg;
  wire clk2_ready_reg_0;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg;
  wire clk2_valid_sync_r;
  wire dest_out;
  wire s0_axis_clock;
  wire src_in;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__12 cdc_i
       (.dest_clk(s0_axis_clock),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    clk2_ready_i_1
       (.I0(clk2_ready_reg),
        .I1(dest_out),
        .I2(clk2_ready_reg_0),
        .O(clk2_valid_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk2_valid_pulse_i_1
       (.I0(dest_out),
        .I1(clk2_valid_sync_r),
        .O(clk2_valid_pulse0));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__2
   (dest_out,
    clk1_ready_pulse0,
    \syncstages_ff_reg[4] ,
    \syncstages_ff_reg[0] ,
    s_axi_aclk,
    clk1_ready_sync_r,
    s_axi_wvalid,
    adc0axi_map_wready,
    adc0slv_rden,
    slv_access_valid_hold_reg,
    src_in);
  output dest_out;
  output clk1_ready_pulse0;
  output \syncstages_ff_reg[4] ;
  input \syncstages_ff_reg[0] ;
  input s_axi_aclk;
  input clk1_ready_sync_r;
  input s_axi_wvalid;
  input adc0axi_map_wready;
  input adc0slv_rden;
  input slv_access_valid_hold_reg;
  input src_in;

  wire adc0axi_map_wready;
  wire adc0slv_rden;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire src_in;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[4] ;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__13 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    clk1_ready_pulse_i_1
       (.I0(clk1_ready_sync_r),
        .I1(dest_out),
        .O(clk1_ready_pulse0));
  LUT6 #(
    .INIT(64'hD5D5FFD5C0C0FFC0)) 
    slv_access_valid_hold_i_1
       (.I0(dest_out),
        .I1(s_axi_wvalid),
        .I2(adc0axi_map_wready),
        .I3(adc0slv_rden),
        .I4(slv_access_valid_hold_reg),
        .I5(src_in),
        .O(\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__3
   (dest_out,
    clk2_valid_pulse0,
    clk2_valid_pulse_reg,
    src_in,
    s_axi_aclk,
    clk2_valid_sync_r,
    clk2_ready_reg,
    clk2_ready_reg_0);
  output dest_out;
  output clk2_valid_pulse0;
  output clk2_valid_pulse_reg;
  input src_in;
  input s_axi_aclk;
  input clk2_valid_sync_r;
  input clk2_ready_reg;
  input clk2_ready_reg_0;

  wire clk2_ready_reg;
  wire clk2_ready_reg_0;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg;
  wire clk2_valid_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire src_in;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__14 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    clk2_ready_i_1__0
       (.I0(clk2_ready_reg),
        .I1(dest_out),
        .I2(clk2_ready_reg_0),
        .O(clk2_valid_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk2_valid_pulse_i_1__0
       (.I0(dest_out),
        .I1(clk2_valid_sync_r),
        .O(clk2_valid_pulse0));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__4
   (dest_out,
    clk1_ready_pulse0,
    \syncstages_ff_reg[4] ,
    \syncstages_ff_reg[0] ,
    s_axi_aclk,
    clk1_ready_sync_r,
    s_axi_wvalid,
    adc1axi_map_wready,
    adc1slv_rden,
    slv_access_valid_hold_reg,
    src_in);
  output dest_out;
  output clk1_ready_pulse0;
  output \syncstages_ff_reg[4] ;
  input \syncstages_ff_reg[0] ;
  input s_axi_aclk;
  input clk1_ready_sync_r;
  input s_axi_wvalid;
  input adc1axi_map_wready;
  input adc1slv_rden;
  input slv_access_valid_hold_reg;
  input src_in;

  wire adc1axi_map_wready;
  wire adc1slv_rden;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire src_in;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[4] ;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__15 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    clk1_ready_pulse_i_1__0
       (.I0(clk1_ready_sync_r),
        .I1(dest_out),
        .O(clk1_ready_pulse0));
  LUT6 #(
    .INIT(64'hD5D5FFD5C0C0FFC0)) 
    slv_access_valid_hold_i_1__0
       (.I0(dest_out),
        .I1(s_axi_wvalid),
        .I2(adc1axi_map_wready),
        .I3(adc1slv_rden),
        .I4(slv_access_valid_hold_reg),
        .I5(src_in),
        .O(\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__5
   (dest_out,
    clk2_valid_pulse0,
    clk2_valid_pulse_reg,
    src_in,
    s_axi_aclk,
    clk2_valid_sync_r,
    clk2_ready_reg,
    clk2_ready_reg_0);
  output dest_out;
  output clk2_valid_pulse0;
  output clk2_valid_pulse_reg;
  input src_in;
  input s_axi_aclk;
  input clk2_valid_sync_r;
  input clk2_ready_reg;
  input clk2_ready_reg_0;

  wire clk2_ready_reg;
  wire clk2_ready_reg_0;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg;
  wire clk2_valid_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire src_in;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__16 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    clk2_ready_i_1__1
       (.I0(clk2_ready_reg),
        .I1(dest_out),
        .I2(clk2_ready_reg_0),
        .O(clk2_valid_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk2_valid_pulse_i_1__1
       (.I0(dest_out),
        .I1(clk2_valid_sync_r),
        .O(clk2_valid_pulse0));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__6
   (dest_out,
    clk1_ready_pulse0,
    \syncstages_ff_reg[4] ,
    \syncstages_ff_reg[0] ,
    s_axi_aclk,
    clk1_ready_sync_r,
    s_axi_wvalid,
    adc2axi_map_wready,
    adc2slv_rden,
    slv_access_valid_hold_reg,
    src_in);
  output dest_out;
  output clk1_ready_pulse0;
  output \syncstages_ff_reg[4] ;
  input \syncstages_ff_reg[0] ;
  input s_axi_aclk;
  input clk1_ready_sync_r;
  input s_axi_wvalid;
  input adc2axi_map_wready;
  input adc2slv_rden;
  input slv_access_valid_hold_reg;
  input src_in;

  wire adc2axi_map_wready;
  wire adc2slv_rden;
  wire clk1_ready_pulse0;
  wire clk1_ready_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire s_axi_wvalid;
  wire slv_access_valid_hold_reg;
  wire src_in;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[4] ;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__17 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    clk1_ready_pulse_i_1__1
       (.I0(clk1_ready_sync_r),
        .I1(dest_out),
        .O(clk1_ready_pulse0));
  LUT6 #(
    .INIT(64'hD5D5FFD5C0C0FFC0)) 
    slv_access_valid_hold_i_1__1
       (.I0(dest_out),
        .I1(s_axi_wvalid),
        .I2(adc2axi_map_wready),
        .I3(adc2slv_rden),
        .I4(slv_access_valid_hold_reg),
        .I5(src_in),
        .O(\syncstages_ff_reg[4] ));
endmodule

(* ORIG_REF_NAME = "rfadc_exdes_ctrl_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rfadc_exdes_ctrl_sync__xdcDup__7
   (dest_out,
    clk2_valid_pulse0,
    clk2_valid_pulse_reg,
    src_in,
    s_axi_aclk,
    clk2_valid_sync_r,
    clk2_ready_reg,
    clk2_ready_reg_0);
  output dest_out;
  output clk2_valid_pulse0;
  output clk2_valid_pulse_reg;
  input src_in;
  input s_axi_aclk;
  input clk2_valid_sync_r;
  input clk2_ready_reg;
  input clk2_ready_reg_0;

  wire clk2_ready_reg;
  wire clk2_ready_reg_0;
  wire clk2_valid_pulse0;
  wire clk2_valid_pulse_reg;
  wire clk2_valid_sync_r;
  wire dest_out;
  wire s_axi_aclk;
  wire src_in;

  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__18 cdc_i
       (.dest_clk(s_axi_aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    clk2_ready_i_1__2
       (.I0(clk2_ready_reg),
        .I1(dest_out),
        .I2(clk2_ready_reg_0),
        .O(clk2_valid_pulse_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk2_valid_pulse_i_1__2
       (.I0(dest_out),
        .I1(clk2_valid_sync_r),
        .O(clk2_valid_pulse0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__11
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__12
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__13
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__14
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__15
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__16
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__17
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__18
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "5" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_mem_ds_dataCap
   (s00_ds_status,
    s0_axis_clock,
    adc00_ds_pulse_control_0);
  output s00_ds_status;
  input s0_axis_clock;
  input adc00_ds_pulse_control_0;

  wire adc00_ds_pulse_control_0;
  wire [7:0]addra_reg;
  wire clear;
  wire [7:0]p_0_in__0;
  wire s00_ds_status;
  wire s0_axis_clock;
  wire wea0;
  wire wea_i_2_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \addra[0]_i_1 
       (.I0(addra_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addra[1]_i_1 
       (.I0(addra_reg[0]),
        .I1(addra_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addra[2]_i_1 
       (.I0(addra_reg[2]),
        .I1(addra_reg[1]),
        .I2(addra_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \addra[3]_i_1 
       (.I0(addra_reg[3]),
        .I1(addra_reg[0]),
        .I2(addra_reg[1]),
        .I3(addra_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \addra[4]_i_1 
       (.I0(addra_reg[4]),
        .I1(addra_reg[2]),
        .I2(addra_reg[1]),
        .I3(addra_reg[0]),
        .I4(addra_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \addra[5]_i_1 
       (.I0(addra_reg[5]),
        .I1(addra_reg[3]),
        .I2(addra_reg[0]),
        .I3(addra_reg[1]),
        .I4(addra_reg[2]),
        .I5(addra_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addra[6]_i_1 
       (.I0(addra_reg[6]),
        .I1(wea_i_2_n_0),
        .O(p_0_in__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \addra[7]_i_1 
       (.I0(s00_ds_status),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \addra[7]_i_2 
       (.I0(addra_reg[7]),
        .I1(wea_i_2_n_0),
        .I2(addra_reg[6]),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[0] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(addra_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[1] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(addra_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[2] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(addra_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[3] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(addra_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[4] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(addra_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[5] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(addra_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[6] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(addra_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \addra_reg[7] 
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(addra_reg[7]),
        .R(clear));
  LUT5 #(
    .INIT(32'h7FFF7F00)) 
    wea_i_1
       (.I0(addra_reg[7]),
        .I1(wea_i_2_n_0),
        .I2(addra_reg[6]),
        .I3(s00_ds_status),
        .I4(adc00_ds_pulse_control_0),
        .O(wea0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    wea_i_2
       (.I0(addra_reg[5]),
        .I1(addra_reg[3]),
        .I2(addra_reg[0]),
        .I3(addra_reg[1]),
        .I4(addra_reg[2]),
        .I5(addra_reg[4]),
        .O(wea_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wea_reg
       (.C(s0_axis_clock),
        .CE(1'b1),
        .D(wea0),
        .Q(s00_ds_status),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
