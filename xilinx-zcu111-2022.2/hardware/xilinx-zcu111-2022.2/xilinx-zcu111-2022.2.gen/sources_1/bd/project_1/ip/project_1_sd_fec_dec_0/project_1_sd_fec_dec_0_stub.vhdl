-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:26:44 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_sd_fec_dec_0/project_1_sd_fec_dec_0_stub.vhdl
-- Design      : project_1_sd_fec_dec_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_1_sd_fec_dec_0 is
  Port ( 
    reset_n : in STD_LOGIC;
    core_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_ctrl_aclk : in STD_LOGIC;
    s_axis_ctrl_tready : out STD_LOGIC;
    s_axis_ctrl_tvalid : in STD_LOGIC;
    s_axis_ctrl_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_din_aclk : in STD_LOGIC;
    s_axis_din_tready : out STD_LOGIC;
    s_axis_din_tvalid : in STD_LOGIC;
    s_axis_din_tlast : in STD_LOGIC;
    s_axis_din_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_status_aclk : in STD_LOGIC;
    m_axis_status_tready : in STD_LOGIC;
    m_axis_status_tvalid : out STD_LOGIC;
    m_axis_status_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_aclk : in STD_LOGIC;
    m_axis_dout_tready : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end project_1_sd_fec_dec_0;

architecture stub of project_1_sd_fec_dec_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset_n,core_clk,s_axi_aclk,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bvalid,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rdata[31:0],s_axi_rvalid,interrupt,s_axis_ctrl_aclk,s_axis_ctrl_tready,s_axis_ctrl_tvalid,s_axis_ctrl_tdata[31:0],s_axis_din_aclk,s_axis_din_tready,s_axis_din_tvalid,s_axis_din_tlast,s_axis_din_tdata[255:0],m_axis_status_aclk,m_axis_status_tready,m_axis_status_tvalid,m_axis_status_tdata[31:0],m_axis_dout_aclk,m_axis_dout_tready,m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sd_fec_v1_1_10,Vivado 2022.2";
begin
end;
