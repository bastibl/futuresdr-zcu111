-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:28:17 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_dec_add_keep_trim_0/project_1_dec_add_keep_trim_0_stub.vhdl
-- Design      : project_1_dec_add_keep_trim_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_1_dec_add_keep_trim_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end project_1_dec_add_keep_trim_0;

architecture stub of project_1_dec_add_keep_trim_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top_project_1_dec_add_keep_trim_0,Vivado 2022.2";
begin
end;
