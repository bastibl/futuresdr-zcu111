-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:28:16 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_enc_ip_probe_0/project_1_enc_ip_probe_0_stub.vhdl
-- Design      : project_1_enc_ip_probe_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_1_enc_ip_probe_0 is
  Port ( 
    clk : in STD_LOGIC;
    mon_tvalid : in STD_LOGIC;
    mon_tready : in STD_LOGIC;
    mon_tlast : in STD_LOGIC;
    valid_op : out STD_LOGIC;
    ready_op : out STD_LOGIC;
    last_op : out STD_LOGIC
  );

end project_1_enc_ip_probe_0;

architecture stub of project_1_enc_ip_probe_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,mon_tvalid,mon_tready,mon_tlast,valid_op,ready_op,last_op";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axis_probe,Vivado 2022.2";
begin
end;
