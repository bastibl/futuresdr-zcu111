-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:28:16 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ project_1_data_source_0_stub.vhdl
-- Design      : project_1_data_source_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CNTRL_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CNTRL_AWVALID : in STD_LOGIC;
    s_axi_CNTRL_AWREADY : out STD_LOGIC;
    s_axi_CNTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CNTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CNTRL_WVALID : in STD_LOGIC;
    s_axi_CNTRL_WREADY : out STD_LOGIC;
    s_axi_CNTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CNTRL_BVALID : out STD_LOGIC;
    s_axi_CNTRL_BREADY : in STD_LOGIC;
    s_axi_CNTRL_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CNTRL_ARVALID : in STD_LOGIC;
    s_axi_CNTRL_ARREADY : out STD_LOGIC;
    s_axi_CNTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CNTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CNTRL_RVALID : out STD_LOGIC;
    s_axi_CNTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    cntrl_aclk : in STD_LOGIC;
    ap_rst_n_cntrl_aclk : in STD_LOGIC;
    chan_ctrl_out_V_TVALID : out STD_LOGIC;
    chan_ctrl_out_V_TREADY : in STD_LOGIC;
    chan_ctrl_out_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    enc_ctrl_out_TVALID : out STD_LOGIC;
    enc_ctrl_out_TREADY : in STD_LOGIC;
    enc_ctrl_out_TDATA : out STD_LOGIC_VECTOR ( 39 downto 0 );
    enc_ctrl_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    enc_keep_ctrl_V_V_TVALID : out STD_LOGIC;
    enc_keep_ctrl_V_V_TREADY : in STD_LOGIC;
    enc_keep_ctrl_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dec_keep_ctrl_V_V_TVALID : out STD_LOGIC;
    dec_keep_ctrl_V_V_TREADY : in STD_LOGIC;
    dec_keep_ctrl_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dec_ctrl_out_TVALID : out STD_LOGIC;
    dec_ctrl_out_TREADY : in STD_LOGIC;
    dec_ctrl_out_TDATA : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dec_ctrl_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    hard_data_out_TVALID : out STD_LOGIC;
    hard_data_out_TREADY : in STD_LOGIC;
    hard_data_out_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    hard_data_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    hard_data_out_TKEEP : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CNTRL_AWADDR[7:0],s_axi_CNTRL_AWVALID,s_axi_CNTRL_AWREADY,s_axi_CNTRL_WDATA[31:0],s_axi_CNTRL_WSTRB[3:0],s_axi_CNTRL_WVALID,s_axi_CNTRL_WREADY,s_axi_CNTRL_BRESP[1:0],s_axi_CNTRL_BVALID,s_axi_CNTRL_BREADY,s_axi_CNTRL_ARADDR[7:0],s_axi_CNTRL_ARVALID,s_axi_CNTRL_ARREADY,s_axi_CNTRL_RDATA[31:0],s_axi_CNTRL_RRESP[1:0],s_axi_CNTRL_RVALID,s_axi_CNTRL_RREADY,ap_clk,ap_rst_n,interrupt,cntrl_aclk,ap_rst_n_cntrl_aclk,chan_ctrl_out_V_TVALID,chan_ctrl_out_V_TREADY,chan_ctrl_out_V_TDATA[63:0],enc_ctrl_out_TVALID,enc_ctrl_out_TREADY,enc_ctrl_out_TDATA[39:0],enc_ctrl_out_TLAST[0:0],enc_keep_ctrl_V_V_TVALID,enc_keep_ctrl_V_V_TREADY,enc_keep_ctrl_V_V_TDATA[63:0],dec_keep_ctrl_V_V_TVALID,dec_keep_ctrl_V_V_TREADY,dec_keep_ctrl_V_V_TDATA[63:0],dec_ctrl_out_TVALID,dec_ctrl_out_TREADY,dec_ctrl_out_TDATA[39:0],dec_ctrl_out_TLAST[0:0],hard_data_out_TVALID,hard_data_out_TREADY,hard_data_out_TDATA[127:0],hard_data_out_TLAST[0:0],hard_data_out_TKEEP[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_source_top,Vivado 2022.2";
begin
end;
