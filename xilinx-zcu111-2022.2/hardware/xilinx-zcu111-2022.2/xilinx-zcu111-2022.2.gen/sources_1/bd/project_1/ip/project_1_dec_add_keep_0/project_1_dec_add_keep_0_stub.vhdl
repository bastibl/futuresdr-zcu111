-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:28:26 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_dec_add_keep_0/project_1_dec_add_keep_0_stub.vhdl
-- Design      : project_1_dec_add_keep_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_1_dec_add_keep_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ctrl_V_V_TVALID : in STD_LOGIC;
    ctrl_V_V_TREADY : out STD_LOGIC;
    ctrl_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_TVALID : in STD_LOGIC;
    din_TREADY : out STD_LOGIC;
    din_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    din_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout_TVALID : out STD_LOGIC;
    dout_TREADY : in STD_LOGIC;
    dout_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dout_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout_TKEEP : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end project_1_dec_add_keep_0;

architecture stub of project_1_dec_add_keep_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ctrl_V_V_TVALID,ctrl_V_V_TREADY,ctrl_V_V_TDATA[15:0],din_TVALID,din_TREADY,din_TDATA[127:0],din_TLAST[0:0],dout_TVALID,dout_TREADY,dout_TDATA[127:0],dout_TLAST[0:0],dout_TKEEP[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "add_keep_128,Vivado 2022.2";
begin
end;
