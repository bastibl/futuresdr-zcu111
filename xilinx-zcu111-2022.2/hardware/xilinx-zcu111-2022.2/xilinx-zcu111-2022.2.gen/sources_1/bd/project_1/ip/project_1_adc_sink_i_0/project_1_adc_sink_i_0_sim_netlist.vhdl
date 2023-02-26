-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Oct 14 13:26:32 2022
-- Host        : xcosswbld17 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /tmp/tmp.rJl7ZfSWDC/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_adc_sink_i_0/project_1_adc_sink_i_0_sim_netlist.vhdl
-- Design      : project_1_adc_sink_i_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_adc_exdes_cfg is
  port (
    enable : out STD_LOGIC;
    timeout_enable : out STD_LOGIC;
    enable_reg_0 : out STD_LOGIC;
    \timeout_value_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    p_0_in : in STD_LOGIC;
    enable_reg_1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    timeout_enable_reg_0 : in STD_LOGIC;
    done_flag : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_adc_exdes_cfg : entity is "adc_exdes_cfg";
end project_1_adc_sink_i_0_adc_exdes_cfg;

architecture STRUCTURE of project_1_adc_sink_i_0_adc_exdes_cfg is
  signal \^enable\ : STD_LOGIC;
begin
  enable <= \^enable\;
done_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88A8"
    )
        port map (
      I0 => \^enable\,
      I1 => done_flag,
      I2 => Q(0),
      I3 => Q(1),
      O => enable_reg_0
    );
enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => enable_reg_1,
      Q => \^enable\,
      R => p_0_in
    );
timeout_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => timeout_enable_reg_0,
      Q => timeout_enable,
      R => p_0_in
    );
\timeout_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \timeout_value_reg[11]_0\(0),
      R => p_0_in
    );
\timeout_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \timeout_value_reg[11]_0\(10),
      R => p_0_in
    );
\timeout_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \timeout_value_reg[11]_0\(11),
      R => p_0_in
    );
\timeout_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \timeout_value_reg[11]_0\(1),
      R => p_0_in
    );
\timeout_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \timeout_value_reg[11]_0\(2),
      R => p_0_in
    );
\timeout_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \timeout_value_reg[11]_0\(3),
      R => p_0_in
    );
\timeout_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \timeout_value_reg[11]_0\(4),
      R => p_0_in
    );
\timeout_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \timeout_value_reg[11]_0\(5),
      R => p_0_in
    );
\timeout_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \timeout_value_reg[11]_0\(6),
      R => p_0_in
    );
\timeout_value_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \timeout_value_reg[11]_0\(7),
      S => p_0_in
    );
\timeout_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \timeout_value_reg[11]_0\(8),
      R => p_0_in
    );
\timeout_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \timeout_value_reg[11]_0\(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_rfadc_exdes_ctrl_axi is
  port (
    adc_ds_slv_rden : out STD_LOGIC;
    adc2axi_map_wready : out STD_LOGIC;
    adc_ds_axi_map_wready : out STD_LOGIC;
    adc0axi_map_wready : out STD_LOGIC;
    adc1axi_map_wready : out STD_LOGIC;
    adc3axi_map_wready : out STD_LOGIC;
    axi_wr_access_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    adc0slv_rden : out STD_LOGIC;
    adc1slv_rden : out STD_LOGIC;
    adc2slv_rden : out STD_LOGIC;
    adc3slv_rden : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc32_ds_enable_0_reg[2]\ : out STD_LOGIC;
    \adc22_ds_enable_0_reg[2]\ : out STD_LOGIC;
    \adc10_ds_enable_0_reg[2]\ : out STD_LOGIC;
    s00_tdata_32_sp_1 : out STD_LOGIC;
    \slv_addr_reg[6]_0\ : out STD_LOGIC;
    \slv_addr_reg[5]_0\ : out STD_LOGIC;
    \slv_addr_reg[5]_1\ : out STD_LOGIC;
    \slv_addr_reg[4]_0\ : out STD_LOGIC;
    \slv_addr_reg[5]_2\ : out STD_LOGIC;
    \slv_addr_reg[5]_3\ : out STD_LOGIC;
    \slv_addr_reg[5]_4\ : out STD_LOGIC;
    \slv_addr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[11]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_addr_reg[8]_0\ : out STD_LOGIC;
    \slv_addr_reg[7]_0\ : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \slv_addr_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[8]_1\ : out STD_LOGIC;
    \slv_addr_reg[8]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn_1 : out STD_LOGIC;
    \adc31_ds_inc_0_reg[8]\ : out STD_LOGIC;
    \adc22_ds_inc_0_reg[8]\ : out STD_LOGIC;
    \adc11_ds_inc_0_reg[8]\ : out STD_LOGIC;
    \slv_addr_reg[8]_3\ : out STD_LOGIC;
    s_axi_aresetn_2 : out STD_LOGIC;
    s_axi_aresetn_3 : out STD_LOGIC;
    \slv_addr_reg[9]_0\ : out STD_LOGIC;
    \slv_addr_reg[9]_1\ : out STD_LOGIC;
    \slv_addr_reg[9]_2\ : out STD_LOGIC;
    \slv_addr_reg[9]_3\ : out STD_LOGIC;
    \slv_addr_reg[9]_4\ : out STD_LOGIC;
    \slv_addr_reg[9]_5\ : out STD_LOGIC;
    \slv_addr_reg[9]_6\ : out STD_LOGIC;
    \slv_addr_reg[9]_7\ : out STD_LOGIC;
    \slv_addr_reg[9]_8\ : out STD_LOGIC;
    \slv_addr_reg[9]_9\ : out STD_LOGIC;
    \slv_addr_reg[9]_10\ : out STD_LOGIC;
    \slv_addr_reg[9]_11\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[5]_5\ : out STD_LOGIC;
    \slv_addr_reg[4]_1\ : out STD_LOGIC;
    \slv_addr_reg[4]_2\ : out STD_LOGIC;
    \slv_addr_reg[2]_5\ : out STD_LOGIC;
    \slv_addr_reg[2]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_14\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_15\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_16\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_17\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[4]_3\ : out STD_LOGIC;
    \slv_addr_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_addr_reg[6]_2\ : out STD_LOGIC;
    \slv_addr_reg[8]_4\ : out STD_LOGIC;
    \slv_addr_reg[5]_6\ : out STD_LOGIC;
    \slv_addr_reg[4]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[4]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[4]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[3]_3\ : out STD_LOGIC;
    \slv_addr_reg[2]_18\ : out STD_LOGIC;
    \slv_addr_reg[9]_12\ : out STD_LOGIC;
    \adc33_ds_enable_0_reg[3]\ : out STD_LOGIC;
    slv_rden_r_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_addr_reg[2]_19\ : out STD_LOGIC;
    \slv_addr_reg[2]_20\ : out STD_LOGIC;
    \slv_addr_reg[2]_21\ : out STD_LOGIC;
    \slv_addr_reg[2]_22\ : out STD_LOGIC;
    \slv_addr_reg[9]_13\ : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \slv_rdata_reg[2]\ : in STD_LOGIC;
    \slv_rdata_reg[2]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_2\ : in STD_LOGIC;
    \slv_rdata_reg[2]_3\ : in STD_LOGIC;
    \slv_rdata_reg[2]_4\ : in STD_LOGIC;
    \slv_rdata_reg[2]_5\ : in STD_LOGIC;
    slv_rden_r : in STD_LOGIC;
    slv_wren_clk2 : in STD_LOGIC;
    \timeout_timer_count_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \adc01_ds_inc_0_reg[0]\ : in STD_LOGIC;
    \slv_rdata_reg[8]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[8]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \slv_rdata_reg[8]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \slv_rdata_reg[8]_2\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \slv_rdata_reg[8]_3\ : in STD_LOGIC;
    \slv_rdata_reg[8]_4\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    \slv_rdata[7]_i_3__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata[7]_i_3__0_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata[7]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata[7]_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata[7]_i_3__1_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata[7]_i_2__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata[7]_i_3__2_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[8]_5\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \slv_rdata[7]_i_2__1_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[8]_6\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    adc2slv_rden_reg_0 : in STD_LOGIC;
    adc2slv_rden_reg_1 : in STD_LOGIC;
    slv_wren_done_pulse : in STD_LOGIC;
    slv_rden_r_0 : in STD_LOGIC;
    slv_rdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    timeout_enable : in STD_LOGIC;
    \axi_bresp_reg[1]_0\ : in STD_LOGIC;
    \axi_bresp_reg[1]_1\ : in STD_LOGIC;
    \slv_rdata_reg[0]\ : in STD_LOGIC;
    \slv_rdata_reg[1]\ : in STD_LOGIC;
    slv_wren_clk2_1 : in STD_LOGIC;
    slv_wren_clk2_2 : in STD_LOGIC;
    slv_rden_r_3 : in STD_LOGIC;
    slv_wren_clk2_4 : in STD_LOGIC;
    slv_rden_r_5 : in STD_LOGIC;
    dest_out : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC;
    error_flag : in STD_LOGIC;
    \slv_rdata_reg[2]_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[2]_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[2]_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_rdata_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[1]_0\ : in STD_LOGIC;
    \slv_rdata[1]_i_6_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[2]_9\ : in STD_LOGIC;
    \slv_rdata_reg[0]_0\ : in STD_LOGIC;
    s00_ds_status : in STD_LOGIC;
    \slv_rdata_reg[3]_0\ : in STD_LOGIC;
    \slv_rdata_reg[4]\ : in STD_LOGIC;
    \slv_rdata_reg[5]\ : in STD_LOGIC;
    \slv_rdata_reg[6]\ : in STD_LOGIC;
    \slv_rdata_reg[7]_0\ : in STD_LOGIC;
    \slv_rdata_reg[8]_7\ : in STD_LOGIC;
    \slv_rdata_reg[9]\ : in STD_LOGIC;
    \slv_rdata_reg[10]\ : in STD_LOGIC;
    \slv_rdata_reg[11]\ : in STD_LOGIC;
    \slv_rdata_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[3]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[8]_8\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[8]_9\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_rdata_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_rdata_reg[1]_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_rdata_reg[2]_10\ : in STD_LOGIC;
    \slv_rdata_reg[3]_4\ : in STD_LOGIC;
    \slv_rdata_reg[5]_0\ : in STD_LOGIC;
    \slv_rdata_reg[6]_0\ : in STD_LOGIC;
    \slv_rdata_reg[7]_1\ : in STD_LOGIC;
    \slv_rdata_reg[7]_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[3]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[0]_2\ : in STD_LOGIC;
    \axi_rdata_reg[3]_1\ : in STD_LOGIC;
    \axi_rdata_reg[3]_2\ : in STD_LOGIC;
    \axi_rdata_reg[4]_1\ : in STD_LOGIC;
    \axi_rdata_reg[4]_2\ : in STD_LOGIC;
    \axi_rdata_reg[5]_1\ : in STD_LOGIC;
    \axi_rdata_reg[5]_2\ : in STD_LOGIC;
    \axi_rdata_reg[9]_1\ : in STD_LOGIC;
    \axi_rdata_reg[9]_2\ : in STD_LOGIC;
    \axi_rdata_reg[10]_1\ : in STD_LOGIC;
    \axi_rdata_reg[10]_2\ : in STD_LOGIC;
    \axi_rdata_reg[1]_1\ : in STD_LOGIC;
    \axi_rdata_reg[1]_2\ : in STD_LOGIC;
    \axi_rdata_reg[2]_1\ : in STD_LOGIC;
    \axi_rdata_reg[2]_2\ : in STD_LOGIC;
    \axi_rdata_reg[6]_1\ : in STD_LOGIC;
    \axi_rdata_reg[6]_2\ : in STD_LOGIC;
    \axi_rdata_reg[7]_1\ : in STD_LOGIC;
    \axi_rdata_reg[7]_2\ : in STD_LOGIC;
    \axi_rdata_reg[8]_1\ : in STD_LOGIC;
    \axi_rdata_reg[8]_2\ : in STD_LOGIC;
    \axi_rdata_reg[11]_1\ : in STD_LOGIC;
    \axi_rdata_reg[11]_2\ : in STD_LOGIC;
    \slv_rdata_reg[4]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[2]_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[7]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[7]_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[7]_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[7]_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[7]_7\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[7]_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_rfadc_exdes_ctrl_axi : entity is "rfadc_exdes_ctrl_axi";
end project_1_adc_sink_i_0_rfadc_exdes_ctrl_axi;

architecture STRUCTURE of project_1_adc_sink_i_0_rfadc_exdes_ctrl_axi is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \adc01_ds_control_0[1]_i_3_n_0\ : STD_LOGIC;
  signal \adc01_ds_enable_0[7]_i_2_n_0\ : STD_LOGIC;
  signal \adc01_ds_enable_0[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc02_ds_control_0[1]_i_3_n_0\ : STD_LOGIC;
  signal \adc02_ds_enable_0[7]_i_3_n_0\ : STD_LOGIC;
  signal \adc02_ds_enable_0[7]_i_4_n_0\ : STD_LOGIC;
  signal \adc02_ds_inc_0[11]_i_3_n_0\ : STD_LOGIC;
  signal \adc02_ds_inc_0[11]_i_4_n_0\ : STD_LOGIC;
  signal \adc03_ds_inc_0[11]_i_3_n_0\ : STD_LOGIC;
  signal \^adc0axi_map_wready\ : STD_LOGIC;
  signal adc0axi_map_wready0 : STD_LOGIC;
  signal \^adc0slv_rden\ : STD_LOGIC;
  signal adc0slv_rden_i_1_n_0 : STD_LOGIC;
  signal \^adc1axi_map_wready\ : STD_LOGIC;
  signal adc1axi_map_wready0 : STD_LOGIC;
  signal \^adc1slv_rden\ : STD_LOGIC;
  signal adc1slv_rden_i_1_n_0 : STD_LOGIC;
  signal \^adc2axi_map_wready\ : STD_LOGIC;
  signal adc2axi_map_wready0 : STD_LOGIC;
  signal \^adc2slv_rden\ : STD_LOGIC;
  signal adc2slv_rden_i_1_n_0 : STD_LOGIC;
  signal \^adc3axi_map_wready\ : STD_LOGIC;
  signal adc3axi_map_wready0 : STD_LOGIC;
  signal \^adc3slv_rden\ : STD_LOGIC;
  signal adc3slv_rden_i_1_n_0 : STD_LOGIC;
  signal \^adc_ds_axi_map_wready\ : STD_LOGIC;
  signal adc_ds_axi_map_wready0 : STD_LOGIC;
  signal adc_ds_slv_rden_i_1_n_0 : STD_LOGIC;
  signal adc_ds_slv_rden_i_3_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready19_in : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_bresp[1]_i_5_n_0\ : STD_LOGIC;
  signal axi_bvalid0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rresp[1]_i_5_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wr_access0 : STD_LOGIC;
  signal \^axi_wr_access_reg_0\ : STD_LOGIC;
  signal load_timeout_timer0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal read_in_progress : STD_LOGIC;
  signal read_in_progress_i_1_n_0 : STD_LOGIC;
  signal read_in_progress_i_2_n_0 : STD_LOGIC;
  signal s00_tdata_32_sn_1 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal slv_addr : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \slv_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_addr_reg[11]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^slv_addr_reg[4]_1\ : STD_LOGIC;
  signal \^slv_addr_reg[5]_5\ : STD_LOGIC;
  signal \^slv_addr_reg[7]_0\ : STD_LOGIC;
  signal \^slv_addr_reg[8]_0\ : STD_LOGIC;
  signal \^slv_addr_reg[8]_1\ : STD_LOGIC;
  signal \^slv_addr_reg[8]_3\ : STD_LOGIC;
  signal \^slv_addr_reg[9]_13\ : STD_LOGIC;
  signal \slv_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_rd_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rd_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rd_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_rd_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_rd_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_rd_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_rd_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_10_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_10_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_12_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_13_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[2]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_2__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_3__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_2__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_3__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_3__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_3__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_3__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_3__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[8]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_9_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal slv_reg_rden0 : STD_LOGIC;
  signal slv_reg_rden_i_1_n_0 : STD_LOGIC;
  signal timeout : STD_LOGIC;
  signal \timeout_timer_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_6_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_7_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[12]_i_8_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \timeout_timer_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \timeout_value[11]_i_2_n_0\ : STD_LOGIC;
  signal \timeout_value[11]_i_3_n_0\ : STD_LOGIC;
  signal valid_waddr_i_1_n_0 : STD_LOGIC;
  signal valid_waddr_i_2_n_0 : STD_LOGIC;
  signal valid_waddr_i_3_n_0 : STD_LOGIC;
  signal valid_waddr_i_4_n_0 : STD_LOGIC;
  signal valid_waddr_reg_n_0 : STD_LOGIC;
  signal write_in_progress : STD_LOGIC;
  signal write_in_progress_i_1_n_0 : STD_LOGIC;
  signal write_in_progress_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc00_ds_enable_0[0]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of adc00_ds_pulse_control_0_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \adc00_ds_type_0[3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \adc01_ds_control_0[1]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \adc01_ds_enable_0[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \adc01_ds_enable_0[7]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \adc01_ds_type_0[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \adc02_ds_control_0[1]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \adc02_ds_enable_0[7]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \adc02_ds_inc_0[11]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \adc02_ds_inc_0[11]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \adc03_ds_enable_0[7]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \adc03_ds_inc_0[11]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \adc03_ds_type_0[3]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \adc11_ds_enable_0[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \adc11_ds_inc_0[11]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \adc11_ds_type_0[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \adc21_ds_enable_0[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \adc21_ds_type_0[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \adc31_ds_enable_0[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \adc31_ds_type_0[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of adc3axi_map_wready_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_8\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of axi_wr_access_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of read_in_progress_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \slv_addr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \slv_rdata[0]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \slv_rdata[11]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \slv_rdata[15]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_rdata[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_rdata[1]_i_10\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_rdata[1]_i_12\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \slv_rdata[2]_i_2__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \slv_rdata[3]_i_10\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \slv_rdata[4]_i_5\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \slv_rdata[4]_i_7\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \slv_rdata[5]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \slv_rdata[6]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \slv_rdata[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_rdata[7]_i_10\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \slv_rdata[7]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \slv_rdata[7]_i_5__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \slv_rdata[8]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \slv_rdata[8]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of slv_reg_rden_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \timeout_timer_count[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \timeout_timer_count[10]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \timeout_timer_count[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \timeout_timer_count[12]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \timeout_timer_count[12]_i_9\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \timeout_timer_count[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \timeout_timer_count[4]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \timeout_timer_count[5]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \timeout_timer_count[9]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \timeout_value[11]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of valid_waddr_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of valid_waddr_i_3 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of valid_waddr_i_4 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of write_in_progress_i_2 : label is "soft_lutpair55";
begin
  Q(0) <= \^q\(0);
  adc0axi_map_wready <= \^adc0axi_map_wready\;
  adc0slv_rden <= \^adc0slv_rden\;
  adc1axi_map_wready <= \^adc1axi_map_wready\;
  adc1slv_rden <= \^adc1slv_rden\;
  adc2axi_map_wready <= \^adc2axi_map_wready\;
  adc2slv_rden <= \^adc2slv_rden\;
  adc3axi_map_wready <= \^adc3axi_map_wready\;
  adc3slv_rden <= \^adc3slv_rden\;
  adc_ds_axi_map_wready <= \^adc_ds_axi_map_wready\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wr_access_reg_0 <= \^axi_wr_access_reg_0\;
  s00_tdata_32_sp_1 <= s00_tdata_32_sn_1;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_rresp(0) <= \^s_axi_rresp\(0);
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  \slv_addr_reg[11]_0\(7 downto 0) <= \^slv_addr_reg[11]_0\(7 downto 0);
  \slv_addr_reg[4]_1\ <= \^slv_addr_reg[4]_1\;
  \slv_addr_reg[5]_5\ <= \^slv_addr_reg[5]_5\;
  \slv_addr_reg[7]_0\ <= \^slv_addr_reg[7]_0\;
  \slv_addr_reg[8]_0\ <= \^slv_addr_reg[8]_0\;
  \slv_addr_reg[8]_1\ <= \^slv_addr_reg[8]_1\;
  \slv_addr_reg[8]_3\ <= \^slv_addr_reg[8]_3\;
  \slv_addr_reg[9]_13\ <= \^slv_addr_reg[9]_13\;
\adc00_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_rden_r,
      I5 => slv_wren_clk2,
      O => \slv_addr_reg[2]_1\(0)
    );
\adc00_ds_enable_0[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => \timeout_value[11]_i_2_n_0\,
      I3 => \^slv_addr_reg[11]_0\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      O => \^slv_addr_reg[4]_1\
    );
\adc00_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => slv_rden_r,
      I1 => slv_wren_clk2,
      I2 => \^slv_addr_reg[8]_1\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => \^slv_addr_reg[11]_0\(0),
      I5 => \^slv_addr_reg[11]_0\(1),
      O => slv_rden_r_reg_0(0)
    );
\adc00_ds_inc_0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(4),
      I1 => \^slv_addr_reg[11]_0\(5),
      O => \^slv_addr_reg[8]_1\
    );
\adc00_ds_inc_0[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(3),
      I1 => \^slv_addr_reg[11]_0\(7),
      I2 => \^slv_addr_reg[11]_0\(6),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => slv_addr(4),
      O => \^slv_addr_reg[7]_0\
    );
adc00_ds_pulse_control_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \timeout_value[11]_i_2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => slv_addr(4),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => \^slv_addr_reg[11]_0\(0),
      O => \^slv_addr_reg[5]_5\
    );
\adc00_ds_type_0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => \timeout_value[11]_i_2_n_0\,
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => \^slv_addr_reg[11]_0\(0),
      O => \slv_addr_reg[4]_3\
    );
\adc01_ds_control_0[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \adc01_ds_control_0[1]_i_3_n_0\,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \slv_rdata[8]_i_4_n_0\,
      O => \slv_addr_reg[3]_3\
    );
\adc01_ds_control_0[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(5),
      I1 => \^slv_addr_reg[11]_0\(6),
      I2 => \^slv_addr_reg[11]_0\(7),
      I3 => \^slv_addr_reg[11]_0\(3),
      O => \adc01_ds_control_0[1]_i_3_n_0\
    );
\adc01_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => slv_rden_r,
      I1 => slv_wren_clk2,
      I2 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_addr(4),
      O => slv_rden_r_reg_2(0)
    );
\adc01_ds_enable_0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \adc01_ds_enable_0[7]_i_3_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \^slv_addr_reg[11]_0\(0),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \^slv_addr_reg[11]_0\(4),
      O => \adc01_ds_enable_0[7]_i_2_n_0\
    );
\adc01_ds_enable_0[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(3),
      I1 => \^slv_addr_reg[11]_0\(7),
      I2 => \^slv_addr_reg[11]_0\(6),
      O => \adc01_ds_enable_0[7]_i_3_n_0\
    );
\adc01_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(4),
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \^slv_addr_reg[7]_0\,
      I3 => \^slv_addr_reg[11]_0\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \adc01_ds_inc_0_reg[0]\,
      O => \slv_addr_reg[8]_2\(0)
    );
\adc01_ds_type_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => slv_rden_r,
      I1 => slv_wren_clk2,
      I2 => slv_addr(4),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => \adc01_ds_enable_0[7]_i_2_n_0\,
      O => slv_rden_r_reg_1(0)
    );
\adc02_ds_control_0[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \adc02_ds_control_0[1]_i_3_n_0\,
      I1 => \slv_rdata[8]_i_4_n_0\,
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \^slv_addr_reg[11]_0\(3),
      I4 => \^slv_addr_reg[11]_0\(0),
      I5 => \^slv_addr_reg[11]_0\(1),
      O => \slv_addr_reg[8]_4\
    );
\adc02_ds_control_0[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(7),
      I1 => \^slv_addr_reg[11]_0\(6),
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => \^slv_addr_reg[11]_0\(5),
      O => \adc02_ds_control_0[1]_i_3_n_0\
    );
\adc02_ds_enable_0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \adc02_ds_enable_0[7]_i_3_n_0\,
      I1 => \adc02_ds_enable_0[7]_i_4_n_0\,
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => \^slv_addr_reg[11]_0\(5),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => slv_addr(4),
      O => \slv_addr_reg[5]_6\
    );
\adc02_ds_enable_0[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(4),
      I1 => \^slv_addr_reg[11]_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \adc02_ds_enable_0[7]_i_3_n_0\
    );
\adc02_ds_enable_0[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(6),
      I1 => \^slv_addr_reg[11]_0\(7),
      O => \adc02_ds_enable_0[7]_i_4_n_0\
    );
\adc02_ds_inc_0[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \adc02_ds_inc_0[11]_i_3_n_0\,
      I1 => \^slv_addr_reg[11]_0\(0),
      I2 => \^slv_addr_reg[11]_0\(5),
      I3 => \adc02_ds_inc_0[11]_i_4_n_0\,
      I4 => \^slv_addr_reg[11]_0\(3),
      I5 => \^slv_addr_reg[11]_0\(4),
      O => \slv_addr_reg[2]_5\
    );
\adc02_ds_inc_0[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(7),
      I1 => \^slv_addr_reg[11]_0\(6),
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => slv_addr(4),
      O => \adc02_ds_inc_0[11]_i_3_n_0\
    );
\adc02_ds_inc_0[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => \^slv_addr_reg[11]_0\(1),
      O => \adc02_ds_inc_0[11]_i_4_n_0\
    );
\adc02_ds_type_0[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => \adc02_ds_enable_0[7]_i_4_n_0\,
      I3 => \^slv_addr_reg[11]_0\(5),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \adc02_ds_enable_0[7]_i_3_n_0\,
      O => \slv_addr_reg[4]_2\
    );
\adc03_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => slv_rden_r,
      I1 => slv_wren_clk2,
      I2 => \^slv_addr_reg[8]_0\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => \^slv_addr_reg[11]_0\(0),
      I5 => \^slv_addr_reg[11]_0\(1),
      O => slv_rden_r_reg(0)
    );
\adc03_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[8]_0\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => slv_rden_r,
      I5 => slv_wren_clk2,
      O => \slv_addr_reg[2]_0\(0)
    );
\adc03_ds_enable_0[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(4),
      I1 => \^slv_addr_reg[11]_0\(5),
      O => \^slv_addr_reg[8]_0\
    );
\adc03_ds_inc_0[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \adc03_ds_inc_0[11]_i_3_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_addr(4),
      O => \slv_addr_reg[9]_12\
    );
\adc03_ds_inc_0[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(3),
      I1 => \^slv_addr_reg[11]_0\(7),
      I2 => \^slv_addr_reg[11]_0\(6),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \^slv_addr_reg[11]_0\(2),
      O => \adc03_ds_inc_0[11]_i_3_n_0\
    );
\adc03_ds_type_0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \adc03_ds_inc_0[11]_i_3_n_0\,
      I1 => \^slv_addr_reg[11]_0\(0),
      I2 => \^slv_addr_reg[11]_0\(5),
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(1),
      O => \slv_addr_reg[2]_18\
    );
adc0axi_map_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => \axi_rdata[15]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \slv_rd_addr_reg_n_0_[1]\,
      I5 => \^adc0axi_map_wready\,
      O => adc0axi_map_wready0
    );
adc0axi_map_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => adc0axi_map_wready0,
      Q => \^adc0axi_map_wready\,
      R => p_0_in
    );
adc0slv_rden_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => s_axi_araddr(13),
      I2 => s_axi_araddr(15),
      I3 => s_axi_araddr(11),
      I4 => s_axi_araddr(10),
      I5 => s_axi_araddr(12),
      O => adc0slv_rden_i_1_n_0
    );
adc0slv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden0,
      D => adc0slv_rden_i_1_n_0,
      Q => \^adc0slv_rden\,
      R => adc_ds_slv_rden_i_1_n_0
    );
\adc10_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_4,
      I5 => slv_rden_r_5,
      O => \slv_addr_reg[2]_9\(0)
    );
\adc10_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_4,
      I5 => slv_rden_r_5,
      O => \slv_addr_reg[2]_15\(0)
    );
\adc11_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => slv_addr(4),
      I3 => slv_wren_clk2_4,
      I4 => slv_rden_r_5,
      O => \slv_addr_reg[3]_2\(0)
    );
\adc11_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_3\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_4,
      I5 => slv_rden_r_5,
      O => \slv_addr_reg[2]_12\(0)
    );
\adc11_ds_inc_0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(4),
      I1 => \^slv_addr_reg[11]_0\(5),
      O => \^slv_addr_reg[8]_3\
    );
\adc11_ds_type_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I3 => slv_wren_clk2_4,
      I4 => slv_rden_r_5,
      O => \slv_addr_reg[4]_6\(0)
    );
\adc13_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_0\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_4,
      I5 => slv_rden_r_5,
      O => \slv_addr_reg[2]_8\(0)
    );
\adc13_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[8]_0\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => slv_wren_clk2_4,
      I5 => slv_rden_r_5,
      O => \slv_addr_reg[2]_4\(0)
    );
adc1axi_map_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => \axi_rdata[15]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \slv_rd_addr_reg_n_0_[1]\,
      I5 => \^adc1axi_map_wready\,
      O => adc1axi_map_wready0
    );
adc1axi_map_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => adc1axi_map_wready0,
      Q => \^adc1axi_map_wready\,
      R => p_0_in
    );
adc1slv_rden_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_araddr(12),
      I2 => s_axi_araddr(11),
      I3 => s_axi_araddr(14),
      I4 => s_axi_araddr(13),
      I5 => s_axi_araddr(15),
      O => adc1slv_rden_i_1_n_0
    );
adc1slv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden0,
      D => adc1slv_rden_i_1_n_0,
      Q => \^adc1slv_rden\,
      R => adc_ds_slv_rden_i_1_n_0
    );
\adc20_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_2,
      I5 => slv_rden_r_3,
      O => \slv_addr_reg[2]_10\(0)
    );
\adc20_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_2,
      I5 => slv_rden_r_3,
      O => \slv_addr_reg[2]_16\(0)
    );
\adc21_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => slv_addr(4),
      I3 => slv_wren_clk2_2,
      I4 => slv_rden_r_3,
      O => \slv_addr_reg[3]_1\(0)
    );
\adc21_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_3\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_2,
      I5 => slv_rden_r_3,
      O => \slv_addr_reg[2]_13\(0)
    );
\adc21_ds_type_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I3 => slv_wren_clk2_2,
      I4 => slv_rden_r_3,
      O => \slv_addr_reg[4]_5\(0)
    );
\adc23_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_0\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_2,
      I5 => slv_rden_r_3,
      O => \slv_addr_reg[2]_7\(0)
    );
\adc23_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[8]_0\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => slv_wren_clk2_2,
      I5 => slv_rden_r_3,
      O => \slv_addr_reg[2]_3\(0)
    );
adc2axi_map_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => \axi_rdata[15]_i_2_n_0\,
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \^adc2axi_map_wready\,
      O => adc2axi_map_wready0
    );
adc2axi_map_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => adc2axi_map_wready0,
      Q => \^adc2axi_map_wready\,
      R => p_0_in
    );
adc2slv_rden_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_araddr(12),
      I2 => s_axi_araddr(11),
      I3 => s_axi_araddr(14),
      I4 => s_axi_araddr(13),
      I5 => s_axi_araddr(15),
      O => adc2slv_rden_i_1_n_0
    );
adc2slv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden0,
      D => adc2slv_rden_i_1_n_0,
      Q => \^adc2slv_rden\,
      R => adc_ds_slv_rden_i_1_n_0
    );
\adc30_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_1,
      I5 => slv_rden_r_0,
      O => \slv_addr_reg[2]_11\(0)
    );
\adc30_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_1,
      I5 => slv_rden_r_0,
      O => \slv_addr_reg[2]_17\(0)
    );
\adc31_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => slv_addr(4),
      I3 => slv_wren_clk2_1,
      I4 => slv_rden_r_0,
      O => \slv_addr_reg[3]_0\(0)
    );
\adc31_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_3\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_1,
      I5 => slv_rden_r_0,
      O => \slv_addr_reg[2]_14\(0)
    );
\adc31_ds_type_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \adc01_ds_enable_0[7]_i_2_n_0\,
      I3 => slv_wren_clk2_1,
      I4 => slv_rden_r_0,
      O => \slv_addr_reg[4]_4\(0)
    );
\adc33_ds_control_0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_0\,
      I1 => \^slv_addr_reg[7]_0\,
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => slv_wren_clk2_1,
      I5 => slv_rden_r_0,
      O => \slv_addr_reg[2]_6\(0)
    );
\adc33_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[8]_0\,
      I3 => \^slv_addr_reg[7]_0\,
      I4 => slv_wren_clk2_1,
      I5 => slv_rden_r_0,
      O => \slv_addr_reg[2]_2\(0)
    );
adc3axi_map_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => \^adc3axi_map_wready\,
      I2 => s_axi_wvalid,
      I3 => valid_waddr_reg_n_0,
      O => adc3axi_map_wready0
    );
adc3axi_map_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => adc3axi_map_wready0,
      Q => \^adc3axi_map_wready\,
      R => p_0_in
    );
adc3slv_rden_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_araddr(11),
      I2 => s_axi_araddr(15),
      I3 => s_axi_araddr(13),
      I4 => s_axi_araddr(14),
      I5 => s_axi_araddr(10),
      O => adc3slv_rden_i_1_n_0
    );
adc3slv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden0,
      D => adc3slv_rden_i_1_n_0,
      Q => \^adc3slv_rden\,
      R => adc_ds_slv_rden_i_1_n_0
    );
adc_ds_axi_map_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_wvalid,
      I2 => \axi_rdata[15]_i_2_n_0\,
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \^adc_ds_axi_map_wready\,
      O => adc_ds_axi_map_wready0
    );
adc_ds_axi_map_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => adc_ds_axi_map_wready0,
      Q => \^adc_ds_axi_map_wready\,
      R => p_0_in
    );
adc_ds_slv_rden_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F700FFFF"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      I3 => \axi_rresp[1]_i_2_n_0\,
      I4 => s_axi_aresetn,
      O => adc_ds_slv_rden_i_1_n_0
    );
adc_ds_slv_rden_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      O => slv_reg_rden0
    );
adc_ds_slv_rden_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_araddr(11),
      I2 => s_axi_araddr(15),
      I3 => s_axi_araddr(13),
      I4 => s_axi_araddr(14),
      I5 => s_axi_araddr(10),
      O => adc_ds_slv_rden_i_3_n_0
    );
adc_ds_slv_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden0,
      D => adc_ds_slv_rden_i_3_n_0,
      Q => adc_ds_slv_rden,
      R => adc_ds_slv_rden_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => read_in_progress,
      I1 => s_axi_arvalid,
      I2 => write_in_progress,
      I3 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF00004"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => read_in_progress,
      I3 => s_axi_arvalid,
      I4 => \^axi_awready_reg_0\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
\axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBB000088880000"
    )
        port map (
      I0 => timeout,
      I1 => axi_bvalid0,
      I2 => \^axi_bvalid_reg_0\,
      I3 => s_axi_bready,
      I4 => s_axi_aresetn,
      I5 => \^s_axi_bresp\(0),
      O => \axi_bresp[1]_i_1_n_0\
    );
\axi_bresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF454545"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => \axi_bresp_reg[1]_0\,
      I2 => \axi_bresp_reg[1]_1\,
      I3 => timeout,
      I4 => write_in_progress,
      I5 => \axi_bresp[1]_i_5_n_0\,
      O => axi_bvalid0
    );
\axi_bresp[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^adc3axi_map_wready\,
      I1 => \^adc1axi_map_wready\,
      I2 => \^adc0axi_map_wready\,
      I3 => \^adc2axi_map_wready\,
      I4 => \^adc_ds_axi_map_wready\,
      I5 => \^axi_wr_access_reg_0\,
      O => \axi_bresp[1]_i_5_n_0\
    );
\axi_bresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_reg_0\,
      I2 => axi_bvalid0,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => \axi_rdata[0]_i_4_n_0\,
      I3 => \axi_rdata[0]_i_5_n_0\,
      I4 => \axi_rdata[11]_i_4_n_0\,
      I5 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0AACC00"
    )
        port map (
      I0 => \axi_rdata_reg[0]_1\,
      I1 => slv_rdata(0),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => \^q\(0),
      I4 => \slv_rd_addr_reg_n_0_[1]\,
      I5 => \slv_rd_addr_reg_n_0_[2]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(0),
      I1 => \axi_rdata[11]_i_5_n_0\,
      I2 => error_flag,
      I3 => \axi_rdata[0]_i_7_n_0\,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000131"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503F5F305F3F"
    )
        port map (
      I0 => dest_out,
      I1 => D(0),
      I2 => \axi_rdata[0]_i_8_n_0\,
      I3 => \axi_rdata[11]_i_5_n_0\,
      I4 => enable,
      I5 => timeout_enable,
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[0]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBF7"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(2),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \^slv_addr_reg[11]_0\(1),
      I4 => \^slv_addr_reg[11]_0\(0),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFCFE"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(2),
      I1 => \^slv_addr_reg[11]_0\(0),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(1),
      O => \axi_rdata[0]_i_8_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBBAABA"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \timeout_timer_count_reg[11]_0\(10),
      I3 => \axi_rdata[10]_i_3_n_0\,
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => \axi_rdata[10]_i_5_n_0\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCEECCCCFCEECC"
    )
        port map (
      I0 => \axi_rdata_reg[10]_1\,
      I1 => \slv_rd_addr_reg_n_0_[2]\,
      I2 => slv_rdata(10),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \axi_rdata_reg[10]_2\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[10]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[10]_i_5_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAAE"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      I2 => \axi_rdata[11]_i_4_n_0\,
      I3 => \axi_rdata[11]_i_5_n_0\,
      I4 => \axi_rdata[11]_i_6_n_0\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAF0CC00"
    )
        port map (
      I0 => \axi_rdata_reg[11]_1\,
      I1 => \axi_rdata_reg[11]_2\,
      I2 => slv_rdata(11),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \slv_rd_addr_reg_n_0_[2]\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000400F00"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \timeout_timer_count_reg[11]_0\(11),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \^slv_addr_reg[11]_0\(2),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[1]\,
      I1 => \^q\(0),
      I2 => \^slv_addr_reg[8]_1\,
      I3 => \^slv_addr_reg[11]_0\(3),
      I4 => \^slv_addr_reg[11]_0\(7),
      I5 => \^slv_addr_reg[11]_0\(6),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000250"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => slv_addr(4),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(1),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[11]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[3]\,
      I1 => \slv_rd_addr_reg_n_0_[4]\,
      I2 => \slv_rd_addr_reg_n_0_[5]\,
      O => \axi_rdata[11]_i_7_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[1]\,
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => slv_rdata(12),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[1]\,
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => slv_rdata(13),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[1]\,
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => slv_rdata(14),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404040"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[1]\,
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => slv_rdata(15),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[5]\,
      I1 => \slv_rd_addr_reg_n_0_[4]\,
      I2 => \slv_rd_addr_reg_n_0_[3]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \axi_rdata[10]_i_4_n_0\,
      I1 => \^q\(0),
      I2 => \^slv_addr_reg[8]_1\,
      I3 => \^slv_addr_reg[11]_0\(3),
      I4 => \^slv_addr_reg[11]_0\(7),
      I5 => \^slv_addr_reg[11]_0\(6),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F100FFFFF100F100"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \axi_rdata[1]_i_3_n_0\,
      I3 => \axi_rdata[15]_i_2_n_0\,
      I4 => \axi_rdata[8]_i_4_n_0\,
      I5 => \axi_rdata_reg[1]_0\,
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[1]_1\,
      I1 => \axi_rdata_reg[1]_2\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => slv_rdata(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F100FFFFF100F100"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => \axi_rdata[15]_i_2_n_0\,
      I4 => \axi_rdata[8]_i_4_n_0\,
      I5 => \axi_rdata_reg[2]_0\,
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[2]_1\,
      I1 => \axi_rdata_reg[2]_2\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => slv_rdata(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F44444444"
    )
        port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => \axi_rdata_reg[3]_0\(0),
      I2 => \axi_rdata[3]_i_2_n_0\,
      I3 => \axi_rdata[11]_i_4_n_0\,
      I4 => \axi_rdata[3]_i_3_n_0\,
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[3]_1\,
      I1 => slv_rdata(3),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \^q\(0),
      I4 => \axi_rdata_reg[3]_2\,
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBBAABA"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \timeout_timer_count_reg[11]_0\(4),
      I3 => \axi_rdata[10]_i_3_n_0\,
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => \axi_rdata[4]_i_3_n_0\,
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCEECCCCFCEECC"
    )
        port map (
      I0 => \axi_rdata_reg[4]_1\,
      I1 => \slv_rd_addr_reg_n_0_[2]\,
      I2 => slv_rdata(4),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \axi_rdata_reg[4]_2\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[4]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBBAABA"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \timeout_timer_count_reg[11]_0\(5),
      I3 => \axi_rdata[10]_i_3_n_0\,
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => \axi_rdata[5]_i_3_n_0\,
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFCFFCCEEFCCCCC"
    )
        port map (
      I0 => \axi_rdata_reg[5]_1\,
      I1 => \slv_rd_addr_reg_n_0_[2]\,
      I2 => slv_rdata(5),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \axi_rdata_reg[5]_2\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[5]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F44444444"
    )
        port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => \axi_rdata_reg[6]_0\,
      I2 => \axi_rdata[6]_i_2_n_0\,
      I3 => \axi_rdata[11]_i_4_n_0\,
      I4 => \axi_rdata[6]_i_3_n_0\,
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[6]_1\,
      I1 => \axi_rdata_reg[6]_2\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => slv_rdata(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444F44444444"
    )
        port map (
      I0 => \axi_rdata[8]_i_4_n_0\,
      I1 => \axi_rdata_reg[7]_0\,
      I2 => \axi_rdata[7]_i_2_n_0\,
      I3 => \axi_rdata[11]_i_4_n_0\,
      I4 => \axi_rdata[7]_i_3_n_0\,
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[7]_1\,
      I1 => \axi_rdata_reg[7]_2\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => slv_rdata(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F100FFFFF100F100"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \axi_rdata[8]_i_3_n_0\,
      I3 => \axi_rdata[15]_i_2_n_0\,
      I4 => \axi_rdata[8]_i_4_n_0\,
      I5 => \axi_rdata_reg[8]_0\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBEFFFFFFFEF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \timeout_timer_count_reg[11]_0\(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACF0AC00"
    )
        port map (
      I0 => \axi_rdata_reg[8]_1\,
      I1 => \axi_rdata_reg[8]_2\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => slv_rdata(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[2]\,
      I1 => \slv_rd_addr_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \slv_rd_addr_reg_n_0_[5]\,
      I4 => \slv_rd_addr_reg_n_0_[4]\,
      I5 => \slv_rd_addr_reg_n_0_[3]\,
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBBAABA"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_4_n_0\,
      I2 => \timeout_timer_count_reg[11]_0\(9),
      I3 => \axi_rdata[10]_i_3_n_0\,
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => \axi_rdata[9]_i_3_n_0\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFCFFCCEEFCCCCC"
    )
        port map (
      I0 => \axi_rdata_reg[9]_1\,
      I1 => \slv_rd_addr_reg_n_0_[2]\,
      I2 => slv_rdata(9),
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      I5 => \axi_rdata_reg[9]_2\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD00FFFF"
    )
        port map (
      I0 => \axi_rdata_reg[9]_0\,
      I1 => \^q\(0),
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => \slv_rd_addr_reg_n_0_[2]\,
      I4 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => p_0_in
    );
\axi_rresp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF00C0"
    )
        port map (
      I0 => \axi_rresp[1]_i_2_n_0\,
      I1 => timeout,
      I2 => read_in_progress,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^s_axi_rresp\(0),
      O => \axi_rresp[1]_i_1_n_0\
    );
\axi_rresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEA0000FFFFFFFF"
    )
        port map (
      I0 => \slv_rd_addr_reg_n_0_[2]\,
      I1 => adc2slv_rden_reg_0,
      I2 => \slv_rd_addr_reg_n_0_[1]\,
      I3 => adc2slv_rden_reg_1,
      I4 => \axi_rresp[1]_i_5_n_0\,
      I5 => \axi_rdata[11]_i_7_n_0\,
      O => \axi_rresp[1]_i_2_n_0\
    );
\axi_rresp[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF8F"
    )
        port map (
      I0 => slv_wren_done_pulse,
      I1 => slv_rden_r_0,
      I2 => \slv_rd_addr_reg_n_0_[2]\,
      I3 => \slv_rd_addr_reg_n_0_[1]\,
      I4 => \^q\(0),
      O => \axi_rresp[1]_i_5_n_0\
    );
\axi_rresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_rresp[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74747444"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => read_in_progress,
      I3 => timeout,
      I4 => \axi_rresp[1]_i_2_n_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => p_0_in
    );
axi_wr_access_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arvalid,
      O => axi_awready19_in
    );
axi_wr_access_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^axi_wr_access_reg_0\,
      I1 => s_axi_wvalid,
      I2 => valid_waddr_reg_n_0,
      O => axi_wr_access0
    );
axi_wr_access_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_awready19_in,
      D => axi_wr_access0,
      Q => \^axi_wr_access_reg_0\,
      R => p_0_in
    );
enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^slv_addr_reg[4]_1\,
      I2 => \^adc_ds_axi_map_wready\,
      I3 => s_axi_wvalid,
      I4 => enable,
      O => s_axi_wdata_0_sn_1
    );
read_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044444000"
    )
        port map (
      I0 => timeout,
      I1 => s_axi_aresetn,
      I2 => \^axi_arready_reg_0\,
      I3 => s_axi_arvalid,
      I4 => read_in_progress,
      I5 => read_in_progress_i_2_n_0,
      O => read_in_progress_i_1_n_0
    );
read_in_progress_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s_axi_rready,
      O => read_in_progress_i_2_n_0
    );
read_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => read_in_progress_i_1_n_0,
      Q => read_in_progress,
      R => '0'
    );
\slv_addr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(8),
      O => \slv_addr[10]_i_1_n_0\
    );
\slv_addr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(9),
      O => \slv_addr[11]_i_1_n_0\
    );
\slv_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(0),
      O => \slv_addr[2]_i_1_n_0\
    );
\slv_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(1),
      O => \slv_addr[3]_i_1_n_0\
    );
\slv_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(2),
      O => \slv_addr[4]_i_1_n_0\
    );
\slv_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(3),
      O => \slv_addr[5]_i_1_n_0\
    );
\slv_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(4),
      O => \slv_addr[6]_i_1_n_0\
    );
\slv_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(5),
      O => \slv_addr[7]_i_1_n_0\
    );
\slv_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(6),
      O => \slv_addr[8]_i_1_n_0\
    );
\slv_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(7),
      O => \slv_addr[9]_i_1_n_0\
    );
\slv_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[10]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(6),
      R => p_0_in
    );
\slv_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[11]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(7),
      R => p_0_in
    );
\slv_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[2]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(0),
      R => p_0_in
    );
\slv_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[3]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(1),
      R => p_0_in
    );
\slv_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[4]_i_1_n_0\,
      Q => slv_addr(4),
      R => p_0_in
    );
\slv_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[5]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(2),
      R => p_0_in
    );
\slv_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[6]_i_1_n_0\,
      Q => \slv_addr_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[7]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(3),
      R => p_0_in
    );
\slv_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[8]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(4),
      R => p_0_in
    );
\slv_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_addr[9]_i_1_n_0\,
      Q => \^slv_addr_reg[11]_0\(5),
      R => p_0_in
    );
\slv_rd_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(10),
      O => \slv_rd_addr[0]_i_1_n_0\
    );
\slv_rd_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(11),
      O => \slv_rd_addr[1]_i_1_n_0\
    );
\slv_rd_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(12),
      O => \slv_rd_addr[2]_i_1_n_0\
    );
\slv_rd_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(13),
      O => \slv_rd_addr[3]_i_1_n_0\
    );
\slv_rd_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(14),
      O => \slv_rd_addr[4]_i_1_n_0\
    );
\slv_rd_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => valid_waddr_reg_n_0,
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => \^axi_awready_reg_0\,
      I4 => s_axi_awvalid,
      O => \slv_rd_addr[5]_i_1_n_0\
    );
\slv_rd_addr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      I3 => s_axi_awaddr(15),
      O => \slv_rd_addr[5]_i_2_n_0\
    );
\slv_rd_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[0]_i_1_n_0\,
      Q => \^q\(0),
      R => p_0_in
    );
\slv_rd_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[1]_i_1_n_0\,
      Q => \slv_rd_addr_reg_n_0_[1]\,
      R => p_0_in
    );
\slv_rd_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[2]_i_1_n_0\,
      Q => \slv_rd_addr_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_rd_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[3]_i_1_n_0\,
      Q => \slv_rd_addr_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_rd_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[4]_i_1_n_0\,
      Q => \slv_rd_addr_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_rd_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \slv_rd_addr[5]_i_1_n_0\,
      D => \slv_rd_addr[5]_i_2_n_0\,
      Q => \slv_rd_addr_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FFF2FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[0]_i_2_n_0\,
      I1 => \slv_rdata[0]_i_3_n_0\,
      I2 => \slv_rdata[0]_i_4_n_0\,
      I3 => \slv_rdata[0]_i_5_n_0\,
      I4 => \slv_rdata[0]_i_6_n_0\,
      I5 => \slv_rdata[0]_i_7_n_0\,
      O => s00_tdata_32_sn_1
    );
\slv_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E0030323200303"
    )
        port map (
      I0 => s00_tdata(32),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[3]\(0),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(96),
      O => \slv_rdata[0]_i_2_n_0\
    );
\slv_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \timeout_value[11]_i_3_n_0\,
      I1 => \slv_rdata_reg[3]_1\(0),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[3]_2\(0),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[3]_3\(0),
      O => \slv_rdata[0]_i_3_n_0\
    );
\slv_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A888A888A88"
    )
        port map (
      I0 => \slv_rdata[0]_i_8_n_0\,
      I1 => \slv_rdata[0]_i_9_n_0\,
      I2 => \slv_rdata[1]_i_12_n_0\,
      I3 => s00_tdata(48),
      I4 => \slv_rdata[8]_i_4_n_0\,
      I5 => \slv_rdata_reg[0]_0\,
      O => \slv_rdata[0]_i_4_n_0\
    );
\slv_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E0030323200303"
    )
        port map (
      I0 => s00_tdata(16),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[7]\(0),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(80),
      O => \slv_rdata[0]_i_5_n_0\
    );
\slv_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \slv_rdata[8]_i_3_n_0\,
      I1 => \slv_rdata_reg[1]_1\(0),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[1]_2\(0),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[1]_3\(0),
      O => \slv_rdata[0]_i_6_n_0\
    );
\slv_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABFFABFAFBFFF"
    )
        port map (
      I0 => \slv_rdata[1]_i_10_n_0\,
      I1 => s00_tdata(64),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(0),
      I5 => \slv_rdata_reg[0]\,
      O => \slv_rdata[0]_i_7_n_0\
    );
\slv_rdata[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \^slv_addr_reg[11]_0\(0),
      O => \slv_rdata[0]_i_8_n_0\
    );
\slv_rdata[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200000000"
    )
        port map (
      I0 => s00_ds_status,
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => s00_tdata(112),
      I3 => \^slv_addr_reg[11]_0\(4),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => slv_addr(4),
      O => \slv_rdata[0]_i_9_n_0\
    );
\slv_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080AA8080"
    )
        port map (
      I0 => \slv_rdata_reg[10]_i_2_n_0\,
      I1 => \^slv_addr_reg[8]_1\,
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \slv_rdata_reg[10]\,
      I5 => \slv_rdata[11]_i_3_n_0\,
      O => \slv_addr_reg[6]_1\(2)
    );
\slv_rdata[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(10),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(42),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[10]_i_6_n_0\
    );
\slv_rdata[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(74),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(106),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[10]_i_7_n_0\
    );
\slv_rdata[10]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(26),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(58),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[10]_i_8_n_0\
    );
\slv_rdata[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(90),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(122),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[10]_i_9_n_0\
    );
\slv_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000222220002000"
    )
        port map (
      I0 => \slv_rdata_reg[11]_i_2_n_0\,
      I1 => \slv_rdata[11]_i_3_n_0\,
      I2 => \^slv_addr_reg[8]_1\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata_reg[11]\,
      O => \slv_addr_reg[6]_1\(3)
    );
\slv_rdata[11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(91),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(123),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[11]_i_10_n_0\
    );
\slv_rdata[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \^slv_addr_reg[7]_0\,
      O => s_axi_aresetn_1
    );
\slv_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF74FF"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => \adc02_ds_enable_0[7]_i_4_n_0\,
      I4 => \^slv_addr_reg[11]_0\(2),
      I5 => \^slv_addr_reg[11]_0\(3),
      O => \slv_rdata[11]_i_3_n_0\
    );
\slv_rdata[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(11),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(43),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[11]_i_7_n_0\
    );
\slv_rdata[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(75),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(107),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[11]_i_8_n_0\
    );
\slv_rdata[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(27),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(59),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[11]_i_9_n_0\
    );
\slv_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(108),
      I1 => s00_tdata(44),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(76),
      I4 => slv_addr(4),
      I5 => s00_tdata(12),
      O => \slv_rdata[12]_i_2_n_0\
    );
\slv_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(124),
      I1 => s00_tdata(60),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(92),
      I4 => slv_addr(4),
      I5 => s00_tdata(28),
      O => \slv_rdata[12]_i_3_n_0\
    );
\slv_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(109),
      I1 => s00_tdata(45),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(77),
      I4 => slv_addr(4),
      I5 => s00_tdata(13),
      O => \slv_rdata[13]_i_2_n_0\
    );
\slv_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(125),
      I1 => s00_tdata(61),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(93),
      I4 => slv_addr(4),
      I5 => s00_tdata(29),
      O => \slv_rdata[13]_i_3_n_0\
    );
\slv_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(110),
      I1 => s00_tdata(46),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(78),
      I4 => slv_addr(4),
      I5 => s00_tdata(14),
      O => \slv_rdata[14]_i_2_n_0\
    );
\slv_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(126),
      I1 => s00_tdata(62),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(94),
      I4 => slv_addr(4),
      I5 => s00_tdata(30),
      O => \slv_rdata[14]_i_3_n_0\
    );
\slv_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \^slv_addr_reg[11]_0\(4),
      O => \slv_addr_reg[6]_2\
    );
\slv_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(111),
      I1 => s00_tdata(47),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(79),
      I4 => slv_addr(4),
      I5 => s00_tdata(15),
      O => \slv_rdata[15]_i_4_n_0\
    );
\slv_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s00_tdata(127),
      I1 => s00_tdata(63),
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => s00_tdata(95),
      I4 => slv_addr(4),
      I5 => s00_tdata(31),
      O => \slv_rdata[15]_i_5_n_0\
    );
\slv_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^slv_addr_reg[11]_0\(3),
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => \^slv_addr_reg[11]_0\(6),
      I4 => \^slv_addr_reg[11]_0\(7),
      O => s_axi_aresetn_3
    );
\slv_rdata[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEE"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \^slv_addr_reg[11]_0\(5),
      I4 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[1]_i_10_n_0\
    );
\slv_rdata[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \^slv_addr_reg[11]_0\(4),
      I2 => \^slv_addr_reg[11]_0\(5),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[1]_i_12_n_0\
    );
\slv_rdata[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020200000000FFFC"
    )
        port map (
      I0 => s00_tdata(113),
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata[1]_i_6_0\(0),
      I4 => \slv_addr_reg_n_0_[6]\,
      I5 => slv_addr(4),
      O => \slv_rdata[1]_i_13_n_0\
    );
\slv_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFBAFFFF"
    )
        port map (
      I0 => \slv_rdata[1]_i_3_n_0\,
      I1 => \slv_rdata[1]_i_4_n_0\,
      I2 => \slv_rdata[1]_i_5_n_0\,
      I3 => \slv_rdata[1]_i_6_n_0\,
      I4 => \slv_rdata[1]_i_7_n_0\,
      I5 => \slv_rdata[1]_i_8_n_0\,
      O => \slv_addr_reg[6]_0\
    );
\slv_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \slv_rdata_reg[1]\,
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => s00_tdata(1),
      I3 => slv_addr(4),
      I4 => s00_tdata(65),
      I5 => \slv_rdata[1]_i_10_n_0\,
      O => \slv_rdata[1]_i_3_n_0\
    );
\slv_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \timeout_value[11]_i_3_n_0\,
      I1 => \slv_rdata_reg[3]_1\(1),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[3]_2\(1),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[3]_3\(1),
      O => \slv_rdata[1]_i_4_n_0\
    );
\slv_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E0030323200303"
    )
        port map (
      I0 => s00_tdata(33),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[3]\(1),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(97),
      O => \slv_rdata[1]_i_5_n_0\
    );
\slv_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808000008000"
    )
        port map (
      I0 => \slv_rdata_reg[1]_0\,
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => s00_tdata(49),
      I4 => \slv_rdata[1]_i_12_n_0\,
      I5 => \slv_rdata[1]_i_13_n_0\,
      O => \slv_rdata[1]_i_6_n_0\
    );
\slv_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \slv_rdata[8]_i_3_n_0\,
      I1 => \slv_rdata_reg[1]_1\(1),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[1]_2\(1),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[1]_3\(1),
      O => \slv_rdata[1]_i_7_n_0\
    );
\slv_rdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C1FFCFCDCDFFCFC"
    )
        port map (
      I0 => s00_tdata(17),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[7]\(1),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(81),
      O => \slv_rdata[1]_i_8_n_0\
    );
\slv_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[2]_i_2__1_n_0\,
      I1 => \slv_rdata_reg[2]\,
      I2 => \slv_rdata_reg[2]_0\,
      I3 => \slv_rdata[8]_i_4_n_0\,
      I4 => \slv_rdata[2]_i_5__0_n_0\,
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc32_ds_enable_0_reg[2]\
    );
\slv_rdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000100FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[2]_i_2__2_n_0\,
      I1 => \slv_rdata_reg[2]_1\,
      I2 => \slv_rdata_reg[2]_2\,
      I3 => \slv_rdata[8]_i_4_n_0\,
      I4 => \slv_rdata[2]_i_5__1_n_0\,
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc22_ds_enable_0_reg[2]\
    );
\slv_rdata[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000040FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[2]_i_2_n_0\,
      I1 => \slv_rdata[8]_i_4_n_0\,
      I2 => \slv_rdata_reg[2]_3\,
      I3 => \slv_rdata_reg[2]_4\,
      I4 => \slv_rdata_reg[2]_5\,
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc10_ds_enable_0_reg[2]\
    );
\slv_rdata[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_3_n_0\,
      I1 => \slv_rdata[2]_i_2__0_n_0\,
      I2 => \slv_rdata[2]_i_3_n_0\,
      I3 => \slv_rdata[2]_i_4__2_n_0\,
      I4 => \slv_rdata[2]_i_5__2_n_0\,
      I5 => \slv_rdata[2]_i_6_n_0\,
      O => \slv_addr_reg[5]_0\
    );
\slv_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \slv_rdata[7]_i_3__0_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_3__0_1\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[2]_8\(0),
      O => \slv_rdata[2]_i_2_n_0\
    );
\slv_rdata[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0035F035"
    )
        port map (
      I0 => \slv_rdata_reg[2]_10\,
      I1 => s00_tdata(2),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(66),
      O => \slv_rdata[2]_i_2__0_n_0\
    );
\slv_rdata[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^slv_addr_reg[9]_13\,
      I1 => \slv_rdata[7]_i_2__1_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_6\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[2]_11\(0),
      O => \slv_rdata[2]_i_2__1_n_0\
    );
\slv_rdata[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^slv_addr_reg[9]_13\,
      I1 => \slv_rdata[7]_i_2__0_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_1\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[2]_12\(0),
      O => \slv_rdata[2]_i_2__2_n_0\
    );
\slv_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3E0030323200303"
    )
        port map (
      I0 => s00_tdata(34),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[3]\(2),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(98),
      O => \slv_rdata[2]_i_3_n_0\
    );
\slv_rdata[2]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \slv_rdata[3]_i_10_n_0\,
      I1 => \slv_rdata_reg[3]_1\(2),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[3]_2\(2),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[3]_3\(2),
      O => \slv_rdata[2]_i_4__2_n_0\
    );
\slv_rdata[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \slv_rdata[7]_i_3__2_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_5\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[2]_6\(0),
      O => \slv_rdata[2]_i_5__0_n_0\
    );
\slv_rdata[2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \slv_rdata[7]_i_3__1_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_2\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[2]_7\(0),
      O => \slv_rdata[2]_i_5__1_n_0\
    );
\slv_rdata[2]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBFFBBAE"
    )
        port map (
      I0 => \slv_rdata_reg[2]_9\,
      I1 => \^slv_addr_reg[8]_1\,
      I2 => \slv_rdata_reg[7]\(2),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[7]_i_10_n_0\,
      O => \slv_rdata[2]_i_5__2_n_0\
    );
\slv_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFF57F70000"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(50),
      I2 => slv_addr(4),
      I3 => s00_tdata(114),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[2]_i_9_n_0\,
      O => \slv_rdata[2]_i_6_n_0\
    );
\slv_rdata[2]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(5),
      I1 => \^slv_addr_reg[11]_0\(4),
      O => \^slv_addr_reg[9]_13\
    );
\slv_rdata[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(18),
      I2 => slv_addr(4),
      I3 => s00_tdata(82),
      O => \slv_rdata[2]_i_9_n_0\
    );
\slv_rdata[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \^slv_addr_reg[11]_0\(0),
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => \^slv_addr_reg[11]_0\(3),
      O => \slv_rdata[3]_i_10_n_0\
    );
\slv_rdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_3_n_0\,
      I1 => \slv_rdata[3]_i_2_n_0\,
      I2 => \slv_rdata[3]_i_3_n_0\,
      I3 => \slv_rdata[3]_i_4_n_0\,
      I4 => \slv_rdata[3]_i_5_n_0\,
      I5 => \slv_rdata[3]_i_6_n_0\,
      O => \slv_addr_reg[5]_1\
    );
\slv_rdata[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^slv_addr_reg[7]_0\,
      O => s_axi_aresetn_0
    );
\slv_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F35FF35"
    )
        port map (
      I0 => \slv_rdata_reg[3]_4\,
      I1 => s00_tdata(3),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(67),
      O => \slv_rdata[3]_i_2_n_0\
    );
\slv_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => s00_tdata(51),
      I1 => slv_addr(4),
      I2 => s00_tdata(115),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[3]_i_8__0_n_0\,
      O => \slv_rdata[3]_i_3_n_0\
    );
\slv_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF23EE"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \slv_rdata_reg[7]\(3),
      I3 => \^slv_addr_reg[8]_1\,
      I4 => \slv_rdata_reg[3]_0\,
      I5 => \slv_rdata[7]_i_10_n_0\,
      O => \slv_rdata[3]_i_4_n_0\
    );
\slv_rdata[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => \^slv_addr_reg[8]_0\,
      I1 => \slv_rdata_reg[7]_2\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_0\(0),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata_reg[3]_5\(0),
      O => \adc33_ds_enable_0_reg[3]\
    );
\slv_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABFFAFA"
    )
        port map (
      I0 => \slv_rdata[3]_i_10_n_0\,
      I1 => \slv_rdata_reg[3]_1\(3),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \slv_rdata_reg[3]_2\(3),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[3]_3\(3),
      O => \slv_rdata[3]_i_5_n_0\
    );
\slv_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C1FFCFCDCDFFCFC"
    )
        port map (
      I0 => s00_tdata(35),
      I1 => slv_addr(4),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[3]\(3),
      I4 => \^slv_addr_reg[8]_1\,
      I5 => s00_tdata(99),
      O => \slv_rdata[3]_i_6_n_0\
    );
\slv_rdata[3]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(19),
      I1 => slv_addr(4),
      I2 => s00_tdata(83),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[3]_i_8__0_n_0\
    );
\slv_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \slv_rdata[4]_i_2_n_0\,
      I1 => \slv_rdata[4]_i_3_n_0\,
      I2 => \slv_rdata[7]_i_3_n_0\,
      I3 => \slv_rdata[4]_i_4_n_0\,
      I4 => \slv_rdata[7]_i_6_n_0\,
      I5 => \slv_rdata[4]_i_5_n_0\,
      O => \slv_addr_reg[4]_0\
    );
\slv_rdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[4]_i_2__2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[4]_i_3__2_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_0\
    );
\slv_rdata[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[4]_i_2__1_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[4]_i_3__1_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_4\
    );
\slv_rdata[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[4]_i_2__0_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[4]_i_3__0_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_8\
    );
\slv_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF23EE"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \slv_rdata_reg[7]\(4),
      I3 => \^slv_addr_reg[8]_1\,
      I4 => \slv_rdata_reg[4]\,
      I5 => \slv_rdata[7]_i_10_n_0\,
      O => \slv_rdata[4]_i_2_n_0\
    );
\slv_rdata[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_4\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[7]_5\(0),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_4__0_n_0\,
      O => \slv_rdata[4]_i_2__0_n_0\
    );
\slv_rdata[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_7\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_8\(0),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_4__1_n_0\,
      O => \slv_rdata[4]_i_2__1_n_0\
    );
\slv_rdata[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_2\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_0\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_4__2_n_0\,
      O => \slv_rdata[4]_i_2__2_n_0\
    );
\slv_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FFFFE2000000"
    )
        port map (
      I0 => s00_tdata(52),
      I1 => slv_addr(4),
      I2 => s00_tdata(116),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[4]_i_7_n_0\,
      O => \slv_rdata[4]_i_3_n_0\
    );
\slv_rdata[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_3\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_4\(0),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_5__0_n_0\,
      O => \slv_rdata[4]_i_3__0_n_0\
    );
\slv_rdata[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_6\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_9\(0),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_5__1_n_0\,
      O => \slv_rdata[4]_i_3__1_n_0\
    );
\slv_rdata[4]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_8\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]\(0),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[4]_i_5__2_n_0\,
      O => \slv_rdata[4]_i_3__2_n_0\
    );
\slv_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C113F11"
    )
        port map (
      I0 => \slv_rdata_reg[4]_0\,
      I1 => slv_addr(4),
      I2 => s00_tdata(68),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => s00_tdata(4),
      O => \slv_rdata[4]_i_4_n_0\
    );
\slv_rdata[4]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2_0\(0),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_2_1\(0),
      O => \slv_rdata[4]_i_4__0_n_0\
    );
\slv_rdata[4]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__0_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_1\(1),
      O => \slv_rdata[4]_i_4__1_n_0\
    );
\slv_rdata[4]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__1_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_6\(1),
      O => \slv_rdata[4]_i_4__2_n_0\
    );
\slv_rdata[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_tdata(100),
      I1 => slv_addr(4),
      I2 => s00_tdata(36),
      O => \slv_rdata[4]_i_5_n_0\
    );
\slv_rdata[4]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__0_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_3__0_1\(1),
      O => \slv_rdata[4]_i_5__0_n_0\
    );
\slv_rdata[4]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__1_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_2\(1),
      O => \slv_rdata[4]_i_5__1_n_0\
    );
\slv_rdata[4]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__2_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_5\(1),
      O => \slv_rdata[4]_i_5__2_n_0\
    );
\slv_rdata[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(20),
      I1 => slv_addr(4),
      I2 => s00_tdata(84),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[4]_i_7_n_0\
    );
\slv_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222F222FFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_3_n_0\,
      I1 => \slv_rdata[5]_i_2_n_0\,
      I2 => \slv_rdata[7]_i_6_n_0\,
      I3 => \slv_rdata[5]_i_3_n_0\,
      I4 => \slv_rdata[5]_i_4_n_0\,
      I5 => \slv_rdata[5]_i_5_n_0\,
      O => \slv_addr_reg[5]_2\
    );
\slv_rdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[5]_i_2__2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[5]_i_3__2_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_1\
    );
\slv_rdata[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[5]_i_2__1_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[5]_i_3__1_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_5\
    );
\slv_rdata[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[5]_i_2__0_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[5]_i_3__0_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_9\
    );
\slv_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0035F035"
    )
        port map (
      I0 => \slv_rdata_reg[5]_0\,
      I1 => s00_tdata(5),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(69),
      O => \slv_rdata[5]_i_2_n_0\
    );
\slv_rdata[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_4\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[7]_5\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_4__0_n_0\,
      O => \slv_rdata[5]_i_2__0_n_0\
    );
\slv_rdata[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_7\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_8\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_4__1_n_0\,
      O => \slv_rdata[5]_i_2__1_n_0\
    );
\slv_rdata[5]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_2\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_0\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_4__2_n_0\,
      O => \slv_rdata[5]_i_2__2_n_0\
    );
\slv_rdata[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_tdata(101),
      I1 => slv_addr(4),
      I2 => s00_tdata(37),
      O => \slv_rdata[5]_i_3_n_0\
    );
\slv_rdata[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_3\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_4\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_5__0_n_0\,
      O => \slv_rdata[5]_i_3__0_n_0\
    );
\slv_rdata[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_6\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_9\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_5__1_n_0\,
      O => \slv_rdata[5]_i_3__1_n_0\
    );
\slv_rdata[5]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_8\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]\(1),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[5]_i_5__2_n_0\,
      O => \slv_rdata[5]_i_3__2_n_0\
    );
\slv_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBFFBBAE"
    )
        port map (
      I0 => \slv_rdata_reg[5]\,
      I1 => \^slv_addr_reg[8]_1\,
      I2 => \slv_rdata_reg[7]\(5),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[7]_i_10_n_0\,
      O => \slv_rdata[5]_i_4_n_0\
    );
\slv_rdata[5]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2_0\(1),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_2_1\(1),
      O => \slv_rdata[5]_i_4__0_n_0\
    );
\slv_rdata[5]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__0_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_1\(2),
      O => \slv_rdata[5]_i_4__1_n_0\
    );
\slv_rdata[5]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__1_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_6\(2),
      O => \slv_rdata[5]_i_4__2_n_0\
    );
\slv_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFF57F70000"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(53),
      I2 => slv_addr(4),
      I3 => s00_tdata(117),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[5]_i_8_n_0\,
      O => \slv_rdata[5]_i_5_n_0\
    );
\slv_rdata[5]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__0_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_3__0_1\(2),
      O => \slv_rdata[5]_i_5__0_n_0\
    );
\slv_rdata[5]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__1_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_2\(2),
      O => \slv_rdata[5]_i_5__1_n_0\
    );
\slv_rdata[5]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__2_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_5\(2),
      O => \slv_rdata[5]_i_5__2_n_0\
    );
\slv_rdata[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(21),
      I2 => slv_addr(4),
      I3 => s00_tdata(85),
      O => \slv_rdata[5]_i_8_n_0\
    );
\slv_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_3_n_0\,
      I1 => \slv_rdata[6]_i_2_n_0\,
      I2 => \slv_rdata[7]_i_6_n_0\,
      I3 => \slv_rdata[6]_i_3_n_0\,
      I4 => \slv_rdata[6]_i_4_n_0\,
      I5 => \slv_rdata[6]_i_5_n_0\,
      O => \slv_addr_reg[5]_3\
    );
\slv_rdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[6]_i_2__2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[6]_i_3__2_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_2\
    );
\slv_rdata[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[6]_i_2__1_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[6]_i_3__1_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_6\
    );
\slv_rdata[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[6]_i_2__0_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[6]_i_3__0_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_10\
    );
\slv_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0035F035"
    )
        port map (
      I0 => \slv_rdata_reg[6]_0\,
      I1 => s00_tdata(6),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(70),
      O => \slv_rdata[6]_i_2_n_0\
    );
\slv_rdata[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_4\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[7]_5\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_4__0_n_0\,
      O => \slv_rdata[6]_i_2__0_n_0\
    );
\slv_rdata[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_7\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_8\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_4__1_n_0\,
      O => \slv_rdata[6]_i_2__1_n_0\
    );
\slv_rdata[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_2\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_0\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_4__2_n_0\,
      O => \slv_rdata[6]_i_2__2_n_0\
    );
\slv_rdata[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => s00_tdata(38),
      I1 => s00_tdata(102),
      I2 => slv_addr(4),
      O => \slv_rdata[6]_i_3_n_0\
    );
\slv_rdata[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_3\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_4\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_5__0_n_0\,
      O => \slv_rdata[6]_i_3__0_n_0\
    );
\slv_rdata[6]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_6\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_9\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_5__1_n_0\,
      O => \slv_rdata[6]_i_3__1_n_0\
    );
\slv_rdata[6]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_8\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]\(2),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[6]_i_5__2_n_0\,
      O => \slv_rdata[6]_i_3__2_n_0\
    );
\slv_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF23EE"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \slv_rdata_reg[7]\(6),
      I3 => \^slv_addr_reg[8]_1\,
      I4 => \slv_rdata_reg[6]\,
      I5 => \slv_rdata[7]_i_10_n_0\,
      O => \slv_rdata[6]_i_4_n_0\
    );
\slv_rdata[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2_0\(2),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_2_1\(2),
      O => \slv_rdata[6]_i_4__0_n_0\
    );
\slv_rdata[6]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__0_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_1\(3),
      O => \slv_rdata[6]_i_4__1_n_0\
    );
\slv_rdata[6]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__1_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_6\(3),
      O => \slv_rdata[6]_i_4__2_n_0\
    );
\slv_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFF57F70000"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(54),
      I2 => slv_addr(4),
      I3 => s00_tdata(118),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[6]_i_8_n_0\,
      O => \slv_rdata[6]_i_5_n_0\
    );
\slv_rdata[6]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__0_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_3__0_1\(3),
      O => \slv_rdata[6]_i_5__0_n_0\
    );
\slv_rdata[6]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__1_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_2\(3),
      O => \slv_rdata[6]_i_5__1_n_0\
    );
\slv_rdata[6]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__2_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_5\(3),
      O => \slv_rdata[6]_i_5__2_n_0\
    );
\slv_rdata[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(22),
      I2 => slv_addr(4),
      I3 => s00_tdata(86),
      O => \slv_rdata[6]_i_8_n_0\
    );
\slv_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^slv_addr_reg[11]_0\(7),
      I2 => \^slv_addr_reg[11]_0\(6),
      O => s_axi_aresetn_2
    );
\slv_rdata[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(2),
      I2 => \^slv_addr_reg[11]_0\(3),
      O => \slv_rdata[7]_i_10_n_0\
    );
\slv_rdata[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(23),
      I2 => slv_addr(4),
      I3 => s00_tdata(87),
      O => \slv_rdata[7]_i_12_n_0\
    );
\slv_rdata[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_2__1_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[7]_i_3__2_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_3\
    );
\slv_rdata[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_2__0_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[7]_i_3__1_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_7\
    );
\slv_rdata[7]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_2_n_0\,
      I1 => \^slv_addr_reg[11]_0\(5),
      I2 => \slv_rdata[7]_i_3__0_n_0\,
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \slv_addr_reg[9]_11\
    );
\slv_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_4\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[7]_5\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_4__0_n_0\,
      O => \slv_rdata[7]_i_2_n_0\
    );
\slv_rdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_7\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_8\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_4__1_n_0\,
      O => \slv_rdata[7]_i_2__0_n_0\
    );
\slv_rdata[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_2\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_0\(4),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_4__2_n_0\,
      O => \slv_rdata[7]_i_2__1_n_0\
    );
\slv_rdata[7]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222F222FFFF"
    )
        port map (
      I0 => \slv_rdata[7]_i_3_n_0\,
      I1 => \slv_rdata[7]_i_4_n_0\,
      I2 => \slv_rdata[7]_i_5_n_0\,
      I3 => \slv_rdata[7]_i_6_n_0\,
      I4 => \slv_rdata[7]_i_7_n_0\,
      I5 => \slv_rdata[7]_i_8_n_0\,
      O => \slv_addr_reg[5]_4\
    );
\slv_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001101"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(2),
      I1 => \^slv_addr_reg[11]_0\(3),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \^slv_addr_reg[8]_1\,
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \^slv_addr_reg[11]_0\(0),
      O => \slv_rdata[7]_i_3_n_0\
    );
\slv_rdata[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_3\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_4\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_5__0_n_0\,
      O => \slv_rdata[7]_i_3__0_n_0\
    );
\slv_rdata[7]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_6\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_9\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_5__1_n_0\,
      O => \slv_rdata[7]_i_3__1_n_0\
    );
\slv_rdata[7]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFABFB0000"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata_reg[7]_8\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]\(3),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata[7]_i_5__2_n_0\,
      O => \slv_rdata[7]_i_3__2_n_0\
    );
\slv_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0035F035"
    )
        port map (
      I0 => \slv_rdata_reg[7]_1\,
      I1 => s00_tdata(7),
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => s00_tdata(71),
      O => \slv_rdata[7]_i_4_n_0\
    );
\slv_rdata[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2_0\(3),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_2_1\(3),
      O => \slv_rdata[7]_i_4__0_n_0\
    );
\slv_rdata[7]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__0_0\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_1\(4),
      O => \slv_rdata[7]_i_4__1_n_0\
    );
\slv_rdata[7]_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_2__1_0\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_6\(4),
      O => \slv_rdata[7]_i_4__2_n_0\
    );
\slv_rdata[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_tdata(103),
      I1 => slv_addr(4),
      I2 => s00_tdata(39),
      O => \slv_rdata[7]_i_5_n_0\
    );
\slv_rdata[7]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__0_0\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata[7]_i_3__0_1\(4),
      O => \slv_rdata[7]_i_5__0_n_0\
    );
\slv_rdata[7]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__1_0\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_2\(4),
      O => \slv_rdata[7]_i_5__1_n_0\
    );
\slv_rdata[7]_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \slv_rdata[7]_i_3__2_0\(4),
      I2 => \^slv_addr_reg[11]_0\(0),
      I3 => \slv_rdata_reg[8]_5\(4),
      O => \slv_rdata[7]_i_5__2_n_0\
    );
\slv_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^slv_addr_reg[8]_1\,
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \^slv_addr_reg[11]_0\(3),
      I3 => \^slv_addr_reg[11]_0\(2),
      I4 => \^slv_addr_reg[11]_0\(0),
      I5 => \^slv_addr_reg[11]_0\(1),
      O => \slv_rdata[7]_i_6_n_0\
    );
\slv_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF23EE"
    )
        port map (
      I0 => slv_addr(4),
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \slv_rdata_reg[7]\(7),
      I3 => \^slv_addr_reg[8]_1\,
      I4 => \slv_rdata[7]_i_10_n_0\,
      I5 => \slv_rdata_reg[7]_0\,
      O => \slv_rdata[7]_i_7_n_0\
    );
\slv_rdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFF57F70000"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => s00_tdata(55),
      I2 => slv_addr(4),
      I3 => s00_tdata(119),
      I4 => \^slv_addr_reg[11]_0\(1),
      I5 => \slv_rdata[7]_i_12_n_0\,
      O => \slv_rdata[7]_i_8_n_0\
    );
\slv_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAA80"
    )
        port map (
      I0 => \slv_rdata_reg[8]_i_2_n_0\,
      I1 => \^slv_addr_reg[8]_1\,
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => \slv_rdata_reg[8]_7\,
      I4 => slv_addr(4),
      I5 => \slv_rdata[11]_i_3_n_0\,
      O => \slv_addr_reg[6]_1\(0)
    );
\slv_rdata[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[8]_i_2_n_0\,
      I1 => \slv_rdata_reg[8]\(4),
      I2 => \^slv_addr_reg[11]_0\(4),
      I3 => \^slv_addr_reg[11]_0\(5),
      I4 => \slv_rdata_reg[8]_0\(5),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc31_ds_inc_0_reg[8]\
    );
\slv_rdata[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55445550FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata[8]_i_2__1_n_0\,
      I1 => \slv_rdata_reg[8]_1\(5),
      I2 => \slv_rdata_reg[8]_2\(5),
      I3 => \^slv_addr_reg[11]_0\(4),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc22_ds_inc_0_reg[8]\
    );
\slv_rdata[8]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10001010FFFFFFFF"
    )
        port map (
      I0 => \slv_rdata_reg[8]_3\,
      I1 => \slv_rdata[8]_i_3_n_0\,
      I2 => \slv_rdata[8]_i_4_n_0\,
      I3 => \slv_rdata_reg[8]_4\(4),
      I4 => \^slv_addr_reg[8]_3\,
      I5 => \slv_rdata[8]_i_5_n_0\,
      O => \adc11_ds_inc_0_reg[8]\
    );
\slv_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3F3F7F3FFF3F7"
    )
        port map (
      I0 => \slv_rdata_reg[8]_5\(5),
      I1 => \slv_rdata[8]_i_4_n_0\,
      I2 => \slv_rdata[8]_i_3_n_0\,
      I3 => \^slv_addr_reg[11]_0\(4),
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \slv_rdata_reg[8]_6\(5),
      O => \slv_rdata[8]_i_2_n_0\
    );
\slv_rdata[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBBBBBFFFBBBB"
    )
        port map (
      I0 => \slv_rdata[8]_i_3_n_0\,
      I1 => \slv_rdata[8]_i_4_n_0\,
      I2 => \slv_rdata_reg[8]_8\(4),
      I3 => \^slv_addr_reg[11]_0\(5),
      I4 => \^slv_addr_reg[11]_0\(4),
      I5 => \slv_rdata_reg[8]_9\(4),
      O => \slv_rdata[8]_i_2__1_n_0\
    );
\slv_rdata[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(1),
      I1 => \^slv_addr_reg[11]_0\(0),
      O => \slv_rdata[8]_i_3_n_0\
    );
\slv_rdata[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_addr_reg_n_0_[6]\,
      I1 => slv_addr(4),
      O => \slv_rdata[8]_i_4_n_0\
    );
\slv_rdata[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \slv_addr_reg_n_0_[6]\,
      I2 => \^slv_addr_reg[11]_0\(1),
      I3 => slv_addr(4),
      O => \slv_rdata[8]_i_5_n_0\
    );
\slv_rdata[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(8),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(40),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[8]_i_6_n_0\
    );
\slv_rdata[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(72),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(104),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[8]_i_7_n_0\
    );
\slv_rdata[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(24),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(56),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[8]_i_8_n_0\
    );
\slv_rdata[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(88),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(120),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[8]_i_9_n_0\
    );
\slv_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080AA8080"
    )
        port map (
      I0 => \slv_rdata_reg[9]_i_2_n_0\,
      I1 => \^slv_addr_reg[8]_1\,
      I2 => \slv_addr_reg_n_0_[6]\,
      I3 => slv_addr(4),
      I4 => \slv_rdata_reg[9]\,
      I5 => \slv_rdata[11]_i_3_n_0\,
      O => \slv_addr_reg[6]_1\(1)
    );
\slv_rdata[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(9),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(41),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[9]_i_6_n_0\
    );
\slv_rdata[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(73),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(105),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[9]_i_7_n_0\
    );
\slv_rdata[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => s00_tdata(25),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(57),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[9]_i_8_n_0\
    );
\slv_rdata[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => s00_tdata(89),
      I1 => \^slv_addr_reg[11]_0\(1),
      I2 => s00_tdata(121),
      I3 => \slv_addr_reg_n_0_[6]\,
      O => \slv_rdata[9]_i_9_n_0\
    );
\slv_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[10]_i_4_n_0\,
      I1 => \slv_rdata_reg[10]_i_5_n_0\,
      O => \slv_rdata_reg[10]_i_2_n_0\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[10]_i_6_n_0\,
      I1 => \slv_rdata[10]_i_7_n_0\,
      O => \slv_rdata_reg[10]_i_4_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[10]_i_8_n_0\,
      I1 => \slv_rdata[10]_i_9_n_0\,
      O => \slv_rdata_reg[10]_i_5_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[11]_i_5_n_0\,
      I1 => \slv_rdata_reg[11]_i_6_n_0\,
      O => \slv_rdata_reg[11]_i_2_n_0\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[11]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[11]_i_7_n_0\,
      I1 => \slv_rdata[11]_i_8_n_0\,
      O => \slv_rdata_reg[11]_i_5_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[11]_i_9_n_0\,
      I1 => \slv_rdata[11]_i_10_n_0\,
      O => \slv_rdata_reg[11]_i_6_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[12]_i_2_n_0\,
      I1 => \slv_rdata[12]_i_3_n_0\,
      O => \slv_addr_reg[2]_22\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[13]_i_2_n_0\,
      I1 => \slv_rdata[13]_i_3_n_0\,
      O => \slv_addr_reg[2]_21\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[14]_i_2_n_0\,
      I1 => \slv_rdata[14]_i_3_n_0\,
      O => \slv_addr_reg[2]_20\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[15]_i_4_n_0\,
      I1 => \slv_rdata[15]_i_5_n_0\,
      O => \slv_addr_reg[2]_19\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[8]_i_4_n_0\,
      I1 => \slv_rdata_reg[8]_i_5_n_0\,
      O => \slv_rdata_reg[8]_i_2_n_0\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[8]_i_6_n_0\,
      I1 => \slv_rdata[8]_i_7_n_0\,
      O => \slv_rdata_reg[8]_i_4_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[8]_i_8_n_0\,
      I1 => \slv_rdata[8]_i_9_n_0\,
      O => \slv_rdata_reg[8]_i_5_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[9]_i_4_n_0\,
      I1 => \slv_rdata_reg[9]_i_5_n_0\,
      O => \slv_rdata_reg[9]_i_2_n_0\,
      S => \^slv_addr_reg[11]_0\(0)
    );
\slv_rdata_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[9]_i_6_n_0\,
      I1 => \slv_rdata[9]_i_7_n_0\,
      O => \slv_rdata_reg[9]_i_4_n_0\,
      S => slv_addr(4)
    );
\slv_rdata_reg[9]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[9]_i_8_n_0\,
      I1 => \slv_rdata[9]_i_9_n_0\,
      O => \slv_rdata_reg[9]_i_5_n_0\,
      S => slv_addr(4)
    );
slv_reg_rden_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => \axi_rresp[1]_i_2_n_0\,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => slv_reg_rden,
      O => slv_reg_rden_i_1_n_0
    );
slv_reg_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slv_reg_rden_i_1_n_0,
      Q => slv_reg_rden,
      R => p_0_in
    );
\slv_wdata_r_internal[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => slv_rden_r,
      I1 => \^adc0slv_rden\,
      I2 => \^adc0axi_map_wready\,
      I3 => s_axi_wvalid,
      O => slv_rden_r_reg_3(0)
    );
\slv_wdata_r_internal[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => slv_rden_r_5,
      I1 => \^adc1slv_rden\,
      I2 => \^adc1axi_map_wready\,
      I3 => s_axi_wvalid,
      O => slv_rden_r_reg_4(0)
    );
\slv_wdata_r_internal[11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => slv_rden_r_3,
      I1 => \^adc2slv_rden\,
      I2 => \^adc2axi_map_wready\,
      I3 => s_axi_wvalid,
      O => slv_rden_r_reg_5(0)
    );
\slv_wdata_r_internal[11]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => slv_rden_r_0,
      I1 => \^adc3slv_rden\,
      I2 => \^adc3axi_map_wready\,
      I3 => s_axi_wvalid,
      O => slv_rden_r_reg_6(0)
    );
timeout_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^slv_addr_reg[5]_5\,
      I2 => \^adc_ds_axi_map_wready\,
      I3 => s_axi_wvalid,
      I4 => timeout_enable,
      O => \s_axi_wdata[0]_0\
    );
\timeout_timer_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[0]\,
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg[11]_0\(0),
      O => p_2_in(0)
    );
\timeout_timer_count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(10),
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[10]\,
      I3 => \timeout_timer_count[10]_i_2_n_0\,
      O => p_2_in(10)
    );
\timeout_timer_count[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[9]\,
      I1 => \timeout_timer_count_reg_n_0_[7]\,
      I2 => \timeout_timer_count_reg_n_0_[6]\,
      I3 => \timeout_timer_count[8]_i_2_n_0\,
      I4 => \timeout_timer_count_reg_n_0_[8]\,
      O => \timeout_timer_count[10]_i_2_n_0\
    );
\timeout_timer_count[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(11),
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[11]\,
      I3 => \timeout_timer_count[12]_i_6_n_0\,
      O => p_2_in(11)
    );
\timeout_timer_count[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FFF8FFF8FF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => timeout,
      I3 => s_axi_aresetn,
      I4 => \^axi_bvalid_reg_0\,
      I5 => s_axi_bready,
      O => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \timeout_timer_count[12]_i_4_n_0\,
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      O => \timeout_timer_count[12]_i_2_n_0\
    );
\timeout_timer_count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[11]\,
      I1 => \timeout_timer_count[12]_i_6_n_0\,
      I2 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(12)
    );
\timeout_timer_count[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => timeout_enable,
      I1 => \timeout_timer_count_reg_n_0_[2]\,
      I2 => \timeout_timer_count_reg_n_0_[7]\,
      I3 => \timeout_timer_count_reg_n_0_[9]\,
      I4 => \timeout_timer_count[12]_i_7_n_0\,
      I5 => \timeout_timer_count[12]_i_8_n_0\,
      O => \timeout_timer_count[12]_i_4_n_0\
    );
\timeout_timer_count[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => timeout_enable,
      I1 => load_timeout_timer0,
      I2 => s_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => \^axi_wr_access_reg_0\,
      I5 => s_axi_wvalid,
      O => \timeout_timer_count[12]_i_5_n_0\
    );
\timeout_timer_count[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[10]\,
      I1 => \timeout_timer_count_reg_n_0_[8]\,
      I2 => \timeout_timer_count[8]_i_2_n_0\,
      I3 => \timeout_timer_count_reg_n_0_[6]\,
      I4 => \timeout_timer_count_reg_n_0_[7]\,
      I5 => \timeout_timer_count_reg_n_0_[9]\,
      O => \timeout_timer_count[12]_i_6_n_0\
    );
\timeout_timer_count[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[11]\,
      I1 => \timeout_timer_count_reg_n_0_[10]\,
      I2 => \timeout_timer_count_reg_n_0_[5]\,
      I3 => \timeout_timer_count_reg_n_0_[3]\,
      O => \timeout_timer_count[12]_i_7_n_0\
    );
\timeout_timer_count[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[1]\,
      I1 => \timeout_timer_count_reg_n_0_[0]\,
      I2 => timeout,
      I3 => \timeout_timer_count_reg_n_0_[8]\,
      I4 => \timeout_timer_count_reg_n_0_[4]\,
      I5 => \timeout_timer_count_reg_n_0_[6]\,
      O => \timeout_timer_count[12]_i_8_n_0\
    );
\timeout_timer_count[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => load_timeout_timer0
    );
\timeout_timer_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(1),
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[0]\,
      I3 => \timeout_timer_count_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\timeout_timer_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55553CCC"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(2),
      I1 => \timeout_timer_count_reg_n_0_[2]\,
      I2 => \timeout_timer_count_reg_n_0_[1]\,
      I3 => \timeout_timer_count_reg_n_0_[0]\,
      I4 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(2)
    );
\timeout_timer_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555553CCCCCCC"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(3),
      I1 => \timeout_timer_count_reg_n_0_[3]\,
      I2 => \timeout_timer_count_reg_n_0_[2]\,
      I3 => \timeout_timer_count_reg_n_0_[0]\,
      I4 => \timeout_timer_count_reg_n_0_[1]\,
      I5 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(3)
    );
\timeout_timer_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C3"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(4),
      I1 => \timeout_timer_count_reg_n_0_[4]\,
      I2 => \timeout_timer_count[4]_i_2_n_0\,
      I3 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(4)
    );
\timeout_timer_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[2]\,
      I1 => \timeout_timer_count_reg_n_0_[0]\,
      I2 => \timeout_timer_count_reg_n_0_[1]\,
      I3 => \timeout_timer_count_reg_n_0_[3]\,
      O => \timeout_timer_count[4]_i_2_n_0\
    );
\timeout_timer_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C3"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(5),
      I1 => \timeout_timer_count_reg_n_0_[5]\,
      I2 => \timeout_timer_count[5]_i_2_n_0\,
      I3 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(5)
    );
\timeout_timer_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[3]\,
      I1 => \timeout_timer_count_reg_n_0_[1]\,
      I2 => \timeout_timer_count_reg_n_0_[0]\,
      I3 => \timeout_timer_count_reg_n_0_[2]\,
      I4 => \timeout_timer_count_reg_n_0_[4]\,
      O => \timeout_timer_count[5]_i_2_n_0\
    );
\timeout_timer_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C3"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(6),
      I1 => \timeout_timer_count_reg_n_0_[6]\,
      I2 => \timeout_timer_count[8]_i_2_n_0\,
      I3 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(6)
    );
\timeout_timer_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555CC3C"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(7),
      I1 => \timeout_timer_count_reg_n_0_[7]\,
      I2 => \timeout_timer_count_reg_n_0_[6]\,
      I3 => \timeout_timer_count[8]_i_2_n_0\,
      I4 => \timeout_timer_count[12]_i_5_n_0\,
      O => p_2_in(7)
    );
\timeout_timer_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7447747474747474"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(8),
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[8]\,
      I3 => \timeout_timer_count[8]_i_2_n_0\,
      I4 => \timeout_timer_count_reg_n_0_[6]\,
      I5 => \timeout_timer_count_reg_n_0_[7]\,
      O => p_2_in(8)
    );
\timeout_timer_count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[4]\,
      I1 => \timeout_timer_count_reg_n_0_[2]\,
      I2 => \timeout_timer_count_reg_n_0_[0]\,
      I3 => \timeout_timer_count_reg_n_0_[1]\,
      I4 => \timeout_timer_count_reg_n_0_[3]\,
      I5 => \timeout_timer_count_reg_n_0_[5]\,
      O => \timeout_timer_count[8]_i_2_n_0\
    );
\timeout_timer_count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \timeout_timer_count_reg[11]_0\(9),
      I1 => \timeout_timer_count[12]_i_5_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[9]\,
      I3 => \timeout_timer_count[9]_i_2_n_0\,
      O => p_2_in(9)
    );
\timeout_timer_count[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \timeout_timer_count_reg_n_0_[8]\,
      I1 => \timeout_timer_count[8]_i_2_n_0\,
      I2 => \timeout_timer_count_reg_n_0_[6]\,
      I3 => \timeout_timer_count_reg_n_0_[7]\,
      O => \timeout_timer_count[9]_i_2_n_0\
    );
\timeout_timer_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(0),
      Q => \timeout_timer_count_reg_n_0_[0]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(10),
      Q => \timeout_timer_count_reg_n_0_[10]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(11),
      Q => \timeout_timer_count_reg_n_0_[11]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(12),
      Q => timeout,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(1),
      Q => \timeout_timer_count_reg_n_0_[1]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(2),
      Q => \timeout_timer_count_reg_n_0_[2]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(3),
      Q => \timeout_timer_count_reg_n_0_[3]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(4),
      Q => \timeout_timer_count_reg_n_0_[4]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(5),
      Q => \timeout_timer_count_reg_n_0_[5]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(6),
      Q => \timeout_timer_count_reg_n_0_[6]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(7),
      Q => \timeout_timer_count_reg_n_0_[7]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(8),
      Q => \timeout_timer_count_reg_n_0_[8]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_timer_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \timeout_timer_count[12]_i_2_n_0\,
      D => p_2_in(9),
      Q => \timeout_timer_count_reg_n_0_[9]\,
      R => \timeout_timer_count[12]_i_1_n_0\
    );
\timeout_value[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \timeout_value[11]_i_2_n_0\,
      I1 => slv_addr(4),
      I2 => \^slv_addr_reg[11]_0\(2),
      I3 => \^adc_ds_axi_map_wready\,
      I4 => s_axi_wvalid,
      I5 => \timeout_value[11]_i_3_n_0\,
      O => E(0)
    );
\timeout_value[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(3),
      I1 => \^slv_addr_reg[11]_0\(7),
      I2 => \^slv_addr_reg[11]_0\(6),
      I3 => \slv_addr_reg_n_0_[6]\,
      I4 => \^slv_addr_reg[11]_0\(5),
      I5 => \^slv_addr_reg[11]_0\(4),
      O => \timeout_value[11]_i_2_n_0\
    );
\timeout_value[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^slv_addr_reg[11]_0\(0),
      I1 => \^slv_addr_reg[11]_0\(1),
      O => \timeout_value[11]_i_3_n_0\
    );
valid_waddr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1000100000000"
    )
        port map (
      I0 => timeout,
      I1 => valid_waddr_i_2_n_0,
      I2 => valid_waddr_i_3_n_0,
      I3 => valid_waddr_i_4_n_0,
      I4 => valid_waddr_reg_n_0,
      I5 => s_axi_aresetn,
      O => valid_waddr_i_1_n_0
    );
valid_waddr_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => s_axi_bready,
      O => valid_waddr_i_2_n_0
    );
valid_waddr_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => timeout,
      I1 => s_axi_arvalid,
      I2 => read_in_progress,
      O => valid_waddr_i_3_n_0
    );
valid_waddr_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s_axi_awvalid,
      O => valid_waddr_i_4_n_0
    );
valid_waddr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => valid_waddr_i_1_n_0,
      Q => valid_waddr_reg_n_0,
      R => '0'
    );
write_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF888"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wr_access_reg_0\,
      I3 => s_axi_wvalid,
      I4 => write_in_progress,
      I5 => write_in_progress_i_2_n_0,
      O => write_in_progress_i_1_n_0
    );
write_in_progress_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8F"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_reg_0\,
      I2 => s_axi_aresetn,
      I3 => timeout,
      O => write_in_progress_i_2_n_0
    );
write_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => write_in_progress_i_1_n_0,
      Q => write_in_progress,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of project_1_adc_sink_i_0_xpm_cdc_single : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of project_1_adc_sink_i_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of project_1_adc_sink_i_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of project_1_adc_sink_i_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of project_1_adc_sink_i_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of project_1_adc_sink_i_0_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of project_1_adc_sink_i_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of project_1_adc_sink_i_0_xpm_cdc_single : entity is "SINGLE";
end project_1_adc_sink_i_0_xpm_cdc_single;

architecture STRUCTURE of project_1_adc_sink_i_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__10\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__10\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__10\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__10\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__11\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__11\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__11\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__11\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__12\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__12\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__12\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__12\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__13\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__13\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__13\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__13\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__14\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__14\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__14\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__14\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__15\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__15\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__15\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__15\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__16\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__16\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__16\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__16\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__17\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__17\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__17\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__17\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_xpm_cdc_single__18\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \project_1_adc_sink_i_0_xpm_cdc_single__18\ : entity is "SINGLE";
end \project_1_adc_sink_i_0_xpm_cdc_single__18\;

architecture STRUCTURE of \project_1_adc_sink_i_0_xpm_cdc_single__18\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of project_1_adc_sink_i_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end project_1_adc_sink_i_0_xpm_cdc_sync_rst;

architecture STRUCTURE of project_1_adc_sink_i_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_xpm_mem_ds_dataCap is
  port (
    s00_ds_status : out STD_LOGIC;
    s0_axis_clock : in STD_LOGIC;
    adc00_ds_pulse_control_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_xpm_mem_ds_dataCap : entity is "xpm_mem_ds_dataCap";
end project_1_adc_sink_i_0_xpm_mem_ds_dataCap;

architecture STRUCTURE of project_1_adc_sink_i_0_xpm_mem_ds_dataCap is
  signal addra_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s00_ds_status\ : STD_LOGIC;
  signal wea0 : STD_LOGIC;
  signal wea_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addra[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addra[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addra[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addra[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addra[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addra[7]_i_2\ : label is "soft_lutpair2";
begin
  s00_ds_status <= \^s00_ds_status\;
\addra[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra_reg(0),
      O => \p_0_in__0\(0)
    );
\addra[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra_reg(0),
      I1 => addra_reg(1),
      O => \p_0_in__0\(1)
    );
\addra[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra_reg(2),
      I1 => addra_reg(1),
      I2 => addra_reg(0),
      O => \p_0_in__0\(2)
    );
\addra[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addra_reg(3),
      I1 => addra_reg(0),
      I2 => addra_reg(1),
      I3 => addra_reg(2),
      O => \p_0_in__0\(3)
    );
\addra[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addra_reg(4),
      I1 => addra_reg(2),
      I2 => addra_reg(1),
      I3 => addra_reg(0),
      I4 => addra_reg(3),
      O => \p_0_in__0\(4)
    );
\addra[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => addra_reg(5),
      I1 => addra_reg(3),
      I2 => addra_reg(0),
      I3 => addra_reg(1),
      I4 => addra_reg(2),
      I5 => addra_reg(4),
      O => \p_0_in__0\(5)
    );
\addra[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra_reg(6),
      I1 => wea_i_2_n_0,
      O => \p_0_in__0\(6)
    );
\addra[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s00_ds_status\,
      O => clear
    );
\addra[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra_reg(7),
      I1 => wea_i_2_n_0,
      I2 => addra_reg(6),
      O => \p_0_in__0\(7)
    );
\addra_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => addra_reg(0),
      R => clear
    );
\addra_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => addra_reg(1),
      R => clear
    );
\addra_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => addra_reg(2),
      R => clear
    );
\addra_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => addra_reg(3),
      R => clear
    );
\addra_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => addra_reg(4),
      R => clear
    );
\addra_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => addra_reg(5),
      R => clear
    );
\addra_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => addra_reg(6),
      R => clear
    );
\addra_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => addra_reg(7),
      R => clear
    );
wea_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF7F00"
    )
        port map (
      I0 => addra_reg(7),
      I1 => wea_i_2_n_0,
      I2 => addra_reg(6),
      I3 => \^s00_ds_status\,
      I4 => adc00_ds_pulse_control_0,
      O => wea0
    );
wea_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addra_reg(5),
      I1 => addra_reg(3),
      I2 => addra_reg(0),
      I3 => addra_reg(1),
      I4 => addra_reg(2),
      I5 => addra_reg(4),
      O => wea_i_2_n_0
    );
wea_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => wea0,
      Q => \^s00_ds_status\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync is
  port (
    dest_out : out STD_LOGIC;
    clk1_ready_pulse0 : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk1_ready_sync_r : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc3axi_map_wready : in STD_LOGIC;
    adc3slv_rden : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    src_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync : entity is "rfadc_exdes_ctrl_sync";
end project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync;

architecture STRUCTURE of project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.project_1_adc_sink_i_0_xpm_cdc_single
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => \syncstages_ff_reg[0]\
    );
\clk1_ready_pulse_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk1_ready_sync_r,
      I1 => \^dest_out\,
      O => clk1_ready_pulse0
    );
\slv_access_valid_hold_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5FFD5C0C0FFC0"
    )
        port map (
      I0 => \^dest_out\,
      I1 => s_axi_wvalid,
      I2 => adc3axi_map_wready,
      I3 => adc3slv_rden,
      I4 => slv_access_valid_hold_reg,
      I5 => src_in,
      O => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__1\ is
  port (
    dest_out : out STD_LOGIC;
    clk2_valid_pulse0 : out STD_LOGIC;
    clk2_valid_pulse_reg : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s0_axis_clock : in STD_LOGIC;
    clk2_valid_sync_r : in STD_LOGIC;
    clk2_ready_reg : in STD_LOGIC;
    clk2_ready_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__1\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__1\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__1\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk2_ready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of clk2_valid_pulse_i_1 : label is "soft_lutpair3";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__12\
     port map (
      dest_clk => s0_axis_clock,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => src_in
    );
clk2_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => clk2_ready_reg,
      I1 => \^dest_out\,
      I2 => clk2_ready_reg_0,
      O => clk2_valid_pulse_reg
    );
clk2_valid_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dest_out\,
      I1 => clk2_valid_sync_r,
      O => clk2_valid_pulse0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__2\ is
  port (
    dest_out : out STD_LOGIC;
    clk1_ready_pulse0 : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk1_ready_sync_r : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc0axi_map_wready : in STD_LOGIC;
    adc0slv_rden : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    src_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__2\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__2\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__2\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__13\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => \syncstages_ff_reg[0]\
    );
clk1_ready_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk1_ready_sync_r,
      I1 => \^dest_out\,
      O => clk1_ready_pulse0
    );
slv_access_valid_hold_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5FFD5C0C0FFC0"
    )
        port map (
      I0 => \^dest_out\,
      I1 => s_axi_wvalid,
      I2 => adc0axi_map_wready,
      I3 => adc0slv_rden,
      I4 => slv_access_valid_hold_reg,
      I5 => src_in,
      O => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__3\ is
  port (
    dest_out : out STD_LOGIC;
    clk2_valid_pulse0 : out STD_LOGIC;
    clk2_valid_pulse_reg : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk2_valid_sync_r : in STD_LOGIC;
    clk2_ready_reg : in STD_LOGIC;
    clk2_ready_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__3\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__3\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__3\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk2_ready_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk2_valid_pulse_i_1__0\ : label is "soft_lutpair9";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__14\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => src_in
    );
\clk2_ready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => clk2_ready_reg,
      I1 => \^dest_out\,
      I2 => clk2_ready_reg_0,
      O => clk2_valid_pulse_reg
    );
\clk2_valid_pulse_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dest_out\,
      I1 => clk2_valid_sync_r,
      O => clk2_valid_pulse0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__4\ is
  port (
    dest_out : out STD_LOGIC;
    clk1_ready_pulse0 : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk1_ready_sync_r : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc1axi_map_wready : in STD_LOGIC;
    adc1slv_rden : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    src_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__4\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__4\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__4\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__15\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => \syncstages_ff_reg[0]\
    );
\clk1_ready_pulse_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk1_ready_sync_r,
      I1 => \^dest_out\,
      O => clk1_ready_pulse0
    );
\slv_access_valid_hold_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5FFD5C0C0FFC0"
    )
        port map (
      I0 => \^dest_out\,
      I1 => s_axi_wvalid,
      I2 => adc1axi_map_wready,
      I3 => adc1slv_rden,
      I4 => slv_access_valid_hold_reg,
      I5 => src_in,
      O => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__5\ is
  port (
    dest_out : out STD_LOGIC;
    clk2_valid_pulse0 : out STD_LOGIC;
    clk2_valid_pulse_reg : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk2_valid_sync_r : in STD_LOGIC;
    clk2_ready_reg : in STD_LOGIC;
    clk2_ready_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__5\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__5\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__5\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk2_ready_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk2_valid_pulse_i_1__1\ : label is "soft_lutpair14";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__16\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => src_in
    );
\clk2_ready_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => clk2_ready_reg,
      I1 => \^dest_out\,
      I2 => clk2_ready_reg_0,
      O => clk2_valid_pulse_reg
    );
\clk2_valid_pulse_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dest_out\,
      I1 => clk2_valid_sync_r,
      O => clk2_valid_pulse0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__6\ is
  port (
    dest_out : out STD_LOGIC;
    clk1_ready_pulse0 : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk1_ready_sync_r : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc2axi_map_wready : in STD_LOGIC;
    adc2slv_rden : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    src_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__6\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__6\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__6\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__17\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => \syncstages_ff_reg[0]\
    );
\clk1_ready_pulse_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk1_ready_sync_r,
      I1 => \^dest_out\,
      O => clk1_ready_pulse0
    );
\slv_access_valid_hold_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5FFD5C0C0FFC0"
    )
        port map (
      I0 => \^dest_out\,
      I1 => s_axi_wvalid,
      I2 => adc2axi_map_wready,
      I3 => adc2slv_rden,
      I4 => slv_access_valid_hold_reg,
      I5 => src_in,
      O => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__7\ is
  port (
    dest_out : out STD_LOGIC;
    clk2_valid_pulse0 : out STD_LOGIC;
    clk2_valid_pulse_reg : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    clk2_valid_sync_r : in STD_LOGIC;
    clk2_ready_reg : in STD_LOGIC;
    clk2_ready_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__7\ : entity is "rfadc_exdes_ctrl_sync";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__7\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__7\ is
  signal \^dest_out\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_i : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_i : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_i : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_i : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk2_ready_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \clk2_valid_pulse_i_1__2\ : label is "soft_lutpair19";
begin
  dest_out <= \^dest_out\;
cdc_i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__18\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => \^dest_out\,
      src_clk => '0',
      src_in => src_in
    );
\clk2_ready_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => clk2_ready_reg,
      I1 => \^dest_out\,
      I2 => clk2_ready_reg_0,
      O => clk2_valid_pulse_reg
    );
\clk2_valid_pulse_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dest_out\,
      I1 => clk2_valid_sync_r,
      O => clk2_valid_pulse0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_wren_done_pulse : out STD_LOGIC;
    clk2_valid_pulse_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \adc30_ds_enable_0_reg[0]\ : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    \adc32_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc32_ds_inc_0_reg[0]\ : in STD_LOGIC;
    \adc30_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc32_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc32_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc31_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc33_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc33_ds_inc_0_reg[0]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc3axi_map_wready : in STD_LOGIC;
    adc3slv_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen : entity is "rfadc_exdes_ctrl_hshk_pls_gen";
end project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen;

architecture STRUCTURE of project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_2_drp_valid_i_n_0 : STD_LOGIC;
  signal axi_2_drp_valid_i_n_2 : STD_LOGIC;
  signal clk1_ready_pulse0 : STD_LOGIC;
  signal clk1_ready_sync_r : STD_LOGIC;
  signal clk2_ready : STD_LOGIC;
  signal clk2_valid_pulse0 : STD_LOGIC;
  signal \^clk2_valid_pulse_reg_0\ : STD_LOGIC;
  signal clk2_valid_sync_r : STD_LOGIC;
  signal slv_wren_clear : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc30_ds_enable_0[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \adc30_ds_type_0[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \adc31_ds_control_0[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \adc32_ds_control_0[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \adc32_ds_enable_0[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \adc32_ds_inc_0[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \adc32_ds_type_0[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \adc33_ds_type_0[3]_i_1\ : label is "soft_lutpair23";
begin
  SR(0) <= \^sr\(0);
  clk2_valid_pulse_reg_0 <= \^clk2_valid_pulse_reg_0\;
\adc30_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc30_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => E(0)
    );
\adc30_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc30_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_3(0)
    );
\adc31_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc31_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_6(0)
    );
\adc32_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc32_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_4(0)
    );
\adc32_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc32_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_5(0)
    );
\adc32_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc32_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_2(0)
    );
\adc32_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc32_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_1(0)
    );
\adc33_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc33_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_8(0)
    );
\adc33_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc33_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_7(0)
    );
axi_2_drp_valid_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__7\
     port map (
      clk2_ready_reg => \^clk2_valid_pulse_reg_0\,
      clk2_ready_reg_0 => clk2_ready,
      clk2_valid_pulse0 => clk2_valid_pulse0,
      clk2_valid_pulse_reg => axi_2_drp_valid_i_n_2,
      clk2_valid_sync_r => clk2_valid_sync_r,
      dest_out => axi_2_drp_valid_i_n_0,
      s_axi_aclk => s_axi_aclk,
      src_in => src_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
clk1_ready_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk1_ready_pulse0,
      Q => slv_wren_done_pulse,
      R => \^sr\(0)
    );
clk1_ready_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slv_wren_clear,
      Q => clk1_ready_sync_r,
      R => \^sr\(0)
    );
clk2_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_2,
      Q => clk2_ready,
      R => \^sr\(0)
    );
clk2_valid_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2_valid_pulse0,
      Q => \^clk2_valid_pulse_reg_0\,
      R => \^sr\(0)
    );
clk2_valid_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_0,
      Q => clk2_valid_sync_r,
      R => \^sr\(0)
    );
drp_2_axi_in_progress_i: entity work.project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync
     port map (
      adc3axi_map_wready => adc3axi_map_wready,
      adc3slv_rden => adc3slv_rden,
      clk1_ready_pulse0 => clk1_ready_pulse0,
      clk1_ready_sync_r => clk1_ready_sync_r,
      dest_out => slv_wren_clear,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => slv_access_valid_hold_reg,
      src_in => src_in,
      \syncstages_ff_reg[0]\ => clk2_ready,
      \syncstages_ff_reg[4]\ => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1\ is
  port (
    slv_wren_done_pulse : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg : out STD_LOGIC;
    slv_rden_r_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_1 : out STD_LOGIC;
    \slv_wdata_r_internal_reg[0]\ : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s0_axis_clock : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \adc00_ds_type_0_reg[3]\ : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc_ds_slv_rden : in STD_LOGIC;
    \adc00_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc02_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc02_ds_inc_0_reg[0]\ : in STD_LOGIC;
    \adc02_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc02_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc01_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc03_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc03_ds_inc_0_reg[0]\ : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    adc00_ds_pulse_control_0_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc00_ds_pulse_control_0_reg_0 : in STD_LOGIC;
    adc00_ds_pulse_control_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc0axi_map_wready : in STD_LOGIC;
    adc0slv_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1\ : entity is "rfadc_exdes_ctrl_hshk_pls_gen";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_2_drp_valid_i_n_0 : STD_LOGIC;
  signal axi_2_drp_valid_i_n_2 : STD_LOGIC;
  signal clk1_ready_pulse0 : STD_LOGIC;
  signal clk1_ready_sync_r : STD_LOGIC;
  signal clk2_ready : STD_LOGIC;
  signal clk2_valid_pulse0 : STD_LOGIC;
  signal \^clk2_valid_pulse_reg_0\ : STD_LOGIC;
  signal clk2_valid_sync_r : STD_LOGIC;
  signal slv_wren_clear : STD_LOGIC;
  signal \^slv_wren_done_pulse\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc00_ds_enable_0[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of adc00_ds_pulse_control_0_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc00_ds_type_0[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adc01_ds_control_0[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adc01_ds_inc_0[11]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adc02_ds_control_0[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc02_ds_enable_0[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adc02_ds_inc_0[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc02_ds_type_0[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adc03_ds_type_0[3]_i_1\ : label is "soft_lutpair8";
begin
  SR(0) <= \^sr\(0);
  clk2_valid_pulse_reg_0 <= \^clk2_valid_pulse_reg_0\;
  slv_wren_done_pulse <= \^slv_wren_done_pulse\;
\adc00_ds_enable_0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dest_rst,
      O => \^sr\(0)
    );
\adc00_ds_enable_0[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \adc00_ds_enable_0_reg[0]\,
      I1 => slv_access_valid_hold_reg,
      I2 => \^clk2_valid_pulse_reg_0\,
      O => slv_rden_r_reg_0(0)
    );
adc00_ds_pulse_control_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => adc00_ds_pulse_control_0_reg(0),
      I1 => adc00_ds_pulse_control_0_reg_0,
      I2 => slv_access_valid_hold_reg,
      I3 => \^clk2_valid_pulse_reg_0\,
      I4 => adc00_ds_pulse_control_0,
      O => \slv_wdata_r_internal_reg[0]\
    );
\adc00_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \adc00_ds_type_0_reg[3]\,
      I1 => slv_access_valid_hold_reg,
      I2 => \^clk2_valid_pulse_reg_0\,
      O => E(0)
    );
\adc01_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc01_ds_control_0_reg[0]\,
      O => slv_rden_r_reg_5(0)
    );
\adc01_ds_inc_0[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^clk2_valid_pulse_reg_0\,
      I1 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_1
    );
\adc02_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc02_ds_control_0_reg[0]\,
      O => slv_rden_r_reg_3(0)
    );
\adc02_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc02_ds_enable_0_reg[0]\,
      O => slv_rden_r_reg_4(0)
    );
\adc02_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc02_ds_inc_0_reg[0]\,
      O => slv_rden_r_reg_2(0)
    );
\adc02_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc02_ds_type_0_reg[0]\,
      O => slv_rden_r_reg_1(0)
    );
\adc03_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc03_ds_inc_0_reg[0]\,
      O => slv_rden_r_reg_7(0)
    );
\adc03_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => \adc03_ds_type_0_reg[0]\,
      O => slv_rden_r_reg_6(0)
    );
axi_2_drp_valid_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__1\
     port map (
      clk2_ready_reg => \^clk2_valid_pulse_reg_0\,
      clk2_ready_reg_0 => clk2_ready,
      clk2_valid_pulse0 => clk2_valid_pulse0,
      clk2_valid_pulse_reg => axi_2_drp_valid_i_n_2,
      clk2_valid_sync_r => clk2_valid_sync_r,
      dest_out => axi_2_drp_valid_i_n_0,
      s0_axis_clock => s0_axis_clock,
      src_in => src_in
    );
\axi_rresp[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => \^slv_wren_done_pulse\,
      I2 => Q(0),
      I3 => adc_ds_slv_rden,
      O => slv_rden_r_reg
    );
clk1_ready_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk1_ready_pulse0,
      Q => \^slv_wren_done_pulse\,
      R => p_0_in
    );
clk1_ready_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slv_wren_clear,
      Q => clk1_ready_sync_r,
      R => p_0_in
    );
clk2_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axis_clock,
      CE => '1',
      D => axi_2_drp_valid_i_n_2,
      Q => clk2_ready,
      R => \^sr\(0)
    );
clk2_valid_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axis_clock,
      CE => '1',
      D => clk2_valid_pulse0,
      Q => \^clk2_valid_pulse_reg_0\,
      R => \^sr\(0)
    );
clk2_valid_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axis_clock,
      CE => '1',
      D => axi_2_drp_valid_i_n_0,
      Q => clk2_valid_sync_r,
      R => \^sr\(0)
    );
drp_2_axi_in_progress_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__2\
     port map (
      adc0axi_map_wready => adc0axi_map_wready,
      adc0slv_rden => adc0slv_rden,
      clk1_ready_pulse0 => clk1_ready_pulse0,
      clk1_ready_sync_r => clk1_ready_sync_r,
      dest_out => slv_wren_clear,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => slv_access_valid_hold_reg,
      src_in => src_in,
      \syncstages_ff_reg[0]\ => clk2_ready,
      \syncstages_ff_reg[4]\ => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2\ is
  port (
    slv_wren_done_pulse : out STD_LOGIC;
    clk2_valid_pulse_reg_0 : out STD_LOGIC;
    clk1_ready_pulse_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    adc_ds_axi_map_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \adc10_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc12_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc12_ds_inc_0_reg[0]\ : in STD_LOGIC;
    \adc10_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc12_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc12_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc11_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc13_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc13_ds_inc_0_reg[0]\ : in STD_LOGIC;
    adc1axi_map_wready : in STD_LOGIC;
    adc1slv_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2\ : entity is "rfadc_exdes_ctrl_hshk_pls_gen";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2\ is
  signal axi_2_drp_valid_i_n_0 : STD_LOGIC;
  signal axi_2_drp_valid_i_n_2 : STD_LOGIC;
  signal clk1_ready_pulse0 : STD_LOGIC;
  signal clk1_ready_sync_r : STD_LOGIC;
  signal clk2_ready : STD_LOGIC;
  signal clk2_valid_pulse0 : STD_LOGIC;
  signal \^clk2_valid_pulse_reg_0\ : STD_LOGIC;
  signal clk2_valid_sync_r : STD_LOGIC;
  signal slv_wren_clear : STD_LOGIC;
  signal \^slv_wren_done_pulse\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc10_ds_enable_0[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc10_ds_type_0[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc11_ds_control_0[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adc12_ds_control_0[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc12_ds_enable_0[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adc12_ds_inc_0[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adc12_ds_type_0[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc13_ds_type_0[3]_i_1\ : label is "soft_lutpair13";
begin
  clk2_valid_pulse_reg_0 <= \^clk2_valid_pulse_reg_0\;
  slv_wren_done_pulse <= \^slv_wren_done_pulse\;
\adc10_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc10_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => E(0)
    );
\adc10_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc10_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_3(0)
    );
\adc11_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc11_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_6(0)
    );
\adc12_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc12_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_4(0)
    );
\adc12_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc12_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_5(0)
    );
\adc12_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc12_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_2(0)
    );
\adc12_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc12_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_1(0)
    );
\adc13_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc13_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_8(0)
    );
\adc13_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc13_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_7(0)
    );
axi_2_drp_valid_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__3\
     port map (
      clk2_ready_reg => \^clk2_valid_pulse_reg_0\,
      clk2_ready_reg_0 => clk2_ready,
      clk2_valid_pulse0 => clk2_valid_pulse0,
      clk2_valid_pulse_reg => axi_2_drp_valid_i_n_2,
      clk2_valid_sync_r => clk2_valid_sync_r,
      dest_out => axi_2_drp_valid_i_n_0,
      s_axi_aclk => s_axi_aclk,
      src_in => src_in
    );
\axi_bresp[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDD"
    )
        port map (
      I0 => \^slv_wren_done_pulse\,
      I1 => slv_access_valid_hold_reg,
      I2 => adc_ds_axi_map_wready,
      I3 => s_axi_wvalid,
      O => clk1_ready_pulse_reg_0
    );
clk1_ready_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk1_ready_pulse0,
      Q => \^slv_wren_done_pulse\,
      R => p_0_in
    );
clk1_ready_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slv_wren_clear,
      Q => clk1_ready_sync_r,
      R => p_0_in
    );
clk2_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_2,
      Q => clk2_ready,
      R => p_0_in
    );
clk2_valid_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2_valid_pulse0,
      Q => \^clk2_valid_pulse_reg_0\,
      R => p_0_in
    );
clk2_valid_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_0,
      Q => clk2_valid_sync_r,
      R => p_0_in
    );
drp_2_axi_in_progress_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__4\
     port map (
      adc1axi_map_wready => adc1axi_map_wready,
      adc1slv_rden => adc1slv_rden,
      clk1_ready_pulse0 => clk1_ready_pulse0,
      clk1_ready_sync_r => clk1_ready_sync_r,
      dest_out => slv_wren_clear,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => slv_access_valid_hold_reg,
      src_in => src_in,
      \syncstages_ff_reg[0]\ => clk2_ready,
      \syncstages_ff_reg[4]\ => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3\ is
  port (
    clk2_valid_pulse_reg_0 : out STD_LOGIC;
    slv_rden_r_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk2_valid_pulse_reg_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_reg_0 : out STD_LOGIC;
    \syncstages_ff_reg[4]\ : out STD_LOGIC;
    src_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    slv_access_valid_hold_reg : in STD_LOGIC;
    \axi_rresp[1]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_0 : in STD_LOGIC;
    slv_wren_done_pulse : in STD_LOGIC;
    \adc20_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc22_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc22_ds_inc_0_reg[0]\ : in STD_LOGIC;
    \adc20_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc22_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc22_ds_enable_0_reg[0]\ : in STD_LOGIC;
    \adc21_ds_control_0_reg[0]\ : in STD_LOGIC;
    \adc23_ds_type_0_reg[0]\ : in STD_LOGIC;
    \adc23_ds_inc_0_reg[0]\ : in STD_LOGIC;
    slv_wren_done_pulse_1 : in STD_LOGIC;
    slv_rden_r_2 : in STD_LOGIC;
    slv_wren_done_pulse_3 : in STD_LOGIC;
    slv_rden_r_4 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc2axi_map_wready : in STD_LOGIC;
    adc2slv_rden : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3\ : entity is "rfadc_exdes_ctrl_hshk_pls_gen";
end \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3\;

architecture STRUCTURE of \project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3\ is
  signal axi_2_drp_valid_i_n_0 : STD_LOGIC;
  signal axi_2_drp_valid_i_n_2 : STD_LOGIC;
  signal clk1_ready_pulse0 : STD_LOGIC;
  signal clk1_ready_sync_r : STD_LOGIC;
  signal clk2_ready : STD_LOGIC;
  signal clk2_valid_pulse0 : STD_LOGIC;
  signal \^clk2_valid_pulse_reg_0\ : STD_LOGIC;
  signal clk2_valid_sync_r : STD_LOGIC;
  signal slv_wren_clear : STD_LOGIC;
  signal slv_wren_done_pulse_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adc20_ds_enable_0[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc20_ds_type_0[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc21_ds_control_0[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \adc22_ds_control_0[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc22_ds_enable_0[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \adc22_ds_inc_0[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \adc22_ds_type_0[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adc23_ds_type_0[3]_i_1\ : label is "soft_lutpair18";
begin
  clk2_valid_pulse_reg_0 <= \^clk2_valid_pulse_reg_0\;
\adc20_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc20_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => E(0)
    );
\adc20_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc20_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_3(0)
    );
\adc21_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc21_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_6(0)
    );
\adc22_ds_control_0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc22_ds_control_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_4(0)
    );
\adc22_ds_enable_0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc22_ds_enable_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_5(0)
    );
\adc22_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc22_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_2(0)
    );
\adc22_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc22_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_1(0)
    );
\adc23_ds_inc_0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc23_ds_inc_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_8(0)
    );
\adc23_ds_type_0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \adc23_ds_type_0_reg[0]\,
      I1 => \^clk2_valid_pulse_reg_0\,
      I2 => slv_access_valid_hold_reg,
      O => clk2_valid_pulse_reg_7(0)
    );
axi_2_drp_valid_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__5\
     port map (
      clk2_ready_reg => \^clk2_valid_pulse_reg_0\,
      clk2_ready_reg_0 => clk2_ready,
      clk2_valid_pulse0 => clk2_valid_pulse0,
      clk2_valid_pulse_reg => axi_2_drp_valid_i_n_2,
      clk2_valid_sync_r => clk2_valid_sync_r,
      dest_out => axi_2_drp_valid_i_n_0,
      s_axi_aclk => s_axi_aclk,
      src_in => src_in
    );
\axi_bresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => slv_wren_done_pulse_0,
      I2 => slv_wren_done_pulse_1,
      I3 => slv_rden_r_2,
      I4 => slv_wren_done_pulse_3,
      I5 => slv_rden_r_4,
      O => slv_rden_r_reg_0
    );
\axi_rresp[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => slv_access_valid_hold_reg,
      I1 => slv_wren_done_pulse_0,
      I2 => \axi_rresp[1]_i_2\(0),
      I3 => slv_rden_r_0,
      I4 => slv_wren_done_pulse,
      O => slv_rden_r_reg
    );
clk1_ready_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk1_ready_pulse0,
      Q => slv_wren_done_pulse_0,
      R => p_0_in
    );
clk1_ready_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => slv_wren_clear,
      Q => clk1_ready_sync_r,
      R => p_0_in
    );
clk2_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_2,
      Q => clk2_ready,
      R => p_0_in
    );
clk2_valid_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2_valid_pulse0,
      Q => \^clk2_valid_pulse_reg_0\,
      R => p_0_in
    );
clk2_valid_sync_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_2_drp_valid_i_n_0,
      Q => clk2_valid_sync_r,
      R => p_0_in
    );
drp_2_axi_in_progress_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_sync__xdcDup__6\
     port map (
      adc2axi_map_wready => adc2axi_map_wready,
      adc2slv_rden => adc2slv_rden,
      clk1_ready_pulse0 => clk1_ready_pulse0,
      clk1_ready_sync_r => clk1_ready_sync_r,
      dest_out => slv_wren_clear,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => slv_access_valid_hold_reg,
      src_in => src_in,
      \syncstages_ff_reg[0]\ => clk2_ready,
      \syncstages_ff_reg[4]\ => \syncstages_ff_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_adc0_rfadc_exdes_ctrl_axi is
  port (
    slv_wren_done_pulse : out STD_LOGIC;
    slv_wren_clk2 : out STD_LOGIC;
    slv_rden_r : out STD_LOGIC;
    adc00_ds_pulse_control_0 : out STD_LOGIC;
    slv_rden_r_reg_0 : out STD_LOGIC;
    clk2_valid_pulse_reg : out STD_LOGIC;
    \adc03_ds_inc_0_reg[11]_0\ : out STD_LOGIC;
    \adc03_ds_inc_0_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \adc01_ds_inc_0_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \adc02_ds_inc_0_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \adc03_ds_inc_0_reg[10]_0\ : out STD_LOGIC;
    \adc03_ds_inc_0_reg[9]_0\ : out STD_LOGIC;
    \adc03_ds_inc_0_reg[8]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[7]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[7]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[6]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[6]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[5]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[5]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[4]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[4]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[3]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[3]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[2]_0\ : out STD_LOGIC;
    \adc01_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc03_ds_enable_0_reg[1]_0\ : out STD_LOGIC;
    \adc01_ds_control_0_reg[1]_0\ : out STD_LOGIC;
    \adc03_ds_control_0_reg[0]_0\ : out STD_LOGIC;
    \adc00_ds_control_0_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc03_ds_enable_0_reg[0]_0\ : out STD_LOGIC;
    s00_tready : out STD_LOGIC;
    \adc00_ds_inc_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \adc00_ds_type_0_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc01_ds_type_0_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc02_ds_type_0_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc03_ds_type_0_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    slv_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s0_axis_clock : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    adc0slv_rden : in STD_LOGIC;
    \adc00_ds_type_0_reg[3]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc_ds_slv_rden : in STD_LOGIC;
    \adc00_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc02_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc02_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \adc02_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc02_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc01_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc03_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc03_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[12]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dest_rst : in STD_LOGIC;
    adc00_ds_pulse_control_0_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc0axi_map_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \adc00_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc00_ds_control_0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc01_ds_enable_0_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc01_ds_inc_0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc01_ds_type_0_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc03_ds_enable_0_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc03_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[15]_0\ : in STD_LOGIC;
    \slv_rdata_reg[14]_0\ : in STD_LOGIC;
    \slv_rdata_reg[13]_0\ : in STD_LOGIC;
    \slv_rdata_reg[12]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_0\ : in STD_LOGIC;
    \slv_rdata_reg[7]_0\ : in STD_LOGIC;
    \slv_rdata_reg[6]_0\ : in STD_LOGIC;
    \slv_rdata_reg[5]_0\ : in STD_LOGIC;
    \slv_rdata_reg[4]_0\ : in STD_LOGIC;
    \slv_rdata_reg[3]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_1\ : in STD_LOGIC;
    \slv_rdata_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[1]_0\ : in STD_LOGIC;
    \slv_rdata_reg[0]_1\ : in STD_LOGIC;
    \slv_rdata_reg[12]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_adc0_rfadc_exdes_ctrl_axi : entity is "adc0_rfadc_exdes_ctrl_axi";
end project_1_adc_sink_i_0_adc0_rfadc_exdes_ctrl_axi;

architecture STRUCTURE of project_1_adc_sink_i_0_adc0_rfadc_exdes_ctrl_axi is
  signal adc00_ds_control_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal adc00_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal adc00_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \^adc00_ds_pulse_control_0\ : STD_LOGIC;
  signal adc01_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc01_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adc01_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal adc02_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc02_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adc02_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal adc03_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc03_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal adc03_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal clk2clk_handshake_pulse_gen_i_n_1 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_10 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_11 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_12 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_14 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_15 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_3 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_5 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_6 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_7 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_8 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_9 : STD_LOGIC;
  signal \^s00_tready\ : STD_LOGIC;
  signal slv_access_valid_hold : STD_LOGIC;
  signal \slv_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_rden_r\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[9]\ : STD_LOGIC;
begin
  adc00_ds_pulse_control_0 <= \^adc00_ds_pulse_control_0\;
  s00_tready <= \^s00_tready\;
  slv_rden_r <= \^slv_rden_r\;
\adc00_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_control_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc00_ds_control_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_control_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc00_ds_control_0_reg[1]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \^s00_tready\,
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc00_ds_enable_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc00_ds_enable_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc00_ds_enable_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc00_ds_enable_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc00_ds_enable_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc00_ds_enable_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc00_ds_enable_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc00_ds_inc_0(10),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc00_ds_inc_0(11),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc00_ds_inc_0_reg[7]_0\(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc00_ds_inc_0(8),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc00_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc00_ds_inc_0(9),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
adc00_ds_pulse_control_0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => '1',
      D => clk2clk_handshake_pulse_gen_i_n_14,
      Q => \^adc00_ds_pulse_control_0\,
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc00_ds_type_0_reg[3]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc00_ds_type_0_reg[3]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc00_ds_type_0_reg[3]_0\(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc00_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc00_ds_type_0_reg[3]_0\(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc01_ds_control_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc01_ds_control_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc01_ds_enable_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc01_ds_enable_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc01_ds_enable_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc01_ds_enable_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc01_ds_enable_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc01_ds_enable_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc01_ds_enable_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_enable_0_reg[7]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc01_ds_enable_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc01_ds_inc_0_reg[1]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc01_ds_inc_0(10),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc01_ds_inc_0(11),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc01_ds_inc_0_reg[1]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc01_ds_inc_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc01_ds_inc_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc01_ds_inc_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc01_ds_inc_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc01_ds_inc_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc01_ds_inc_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc01_ds_inc_0(8),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_inc_0_reg[0]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc01_ds_inc_0(9),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_type_0_reg[3]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc01_ds_type_0_reg[3]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_type_0_reg[3]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc01_ds_type_0_reg[3]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_type_0_reg[3]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc01_ds_type_0_reg[3]_0\(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc01_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc01_ds_type_0_reg[3]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc01_ds_type_0_reg[3]_0\(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc02_ds_control_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc02_ds_control_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc02_ds_enable_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc02_ds_enable_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc02_ds_enable_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc02_ds_enable_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc02_ds_enable_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc02_ds_enable_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc02_ds_enable_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc02_ds_enable_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc02_ds_inc_0_reg[1]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc02_ds_inc_0(10),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc02_ds_inc_0(11),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc02_ds_inc_0_reg[1]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc02_ds_inc_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc02_ds_inc_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc02_ds_inc_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc02_ds_inc_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc02_ds_inc_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc02_ds_inc_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc02_ds_inc_0(8),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc02_ds_inc_0(9),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc02_ds_type_0_reg[3]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc02_ds_type_0_reg[3]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc02_ds_type_0_reg[3]_0\(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc02_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc02_ds_type_0_reg[3]_0\(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc03_ds_control_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc03_ds_control_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc03_ds_enable_0(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc03_ds_enable_0(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc03_ds_enable_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc03_ds_enable_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc03_ds_enable_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc03_ds_enable_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc03_ds_enable_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => \adc03_ds_enable_0_reg[0]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc03_ds_enable_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc03_ds_inc_0_reg[1]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc03_ds_inc_0(10),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc03_ds_inc_0(11),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc03_ds_inc_0_reg[1]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc03_ds_inc_0(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc03_ds_inc_0(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => adc03_ds_inc_0(4),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => adc03_ds_inc_0(5),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => adc03_ds_inc_0(6),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => adc03_ds_inc_0(7),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc03_ds_inc_0(8),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_12,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc03_ds_inc_0(9),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => \adc03_ds_type_0_reg[3]_0\(0),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => \adc03_ds_type_0_reg[3]_0\(1),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc03_ds_type_0_reg[3]_0\(2),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
\adc03_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s0_axis_clock,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc03_ds_type_0_reg[3]_0\(3),
      R => clk2clk_handshake_pulse_gen_i_n_1
    );
clk2clk_handshake_pulse_gen_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__1\
     port map (
      E(0) => clk2clk_handshake_pulse_gen_i_n_3,
      Q(0) => Q(0),
      SR(0) => clk2clk_handshake_pulse_gen_i_n_1,
      \adc00_ds_enable_0_reg[0]\ => \adc00_ds_enable_0_reg[0]_0\,
      adc00_ds_pulse_control_0 => \^adc00_ds_pulse_control_0\,
      adc00_ds_pulse_control_0_reg(0) => \slv_wdata_r_internal_reg_n_0_[0]\,
      adc00_ds_pulse_control_0_reg_0 => adc00_ds_pulse_control_0_reg_0,
      \adc00_ds_type_0_reg[3]\ => \adc00_ds_type_0_reg[3]_1\,
      \adc01_ds_control_0_reg[0]\ => \adc01_ds_control_0_reg[0]_0\,
      \adc02_ds_control_0_reg[0]\ => \adc02_ds_control_0_reg[0]_0\,
      \adc02_ds_enable_0_reg[0]\ => \adc02_ds_enable_0_reg[0]_0\,
      \adc02_ds_inc_0_reg[0]\ => \adc02_ds_inc_0_reg[0]_0\,
      \adc02_ds_type_0_reg[0]\ => \adc02_ds_type_0_reg[0]_0\,
      \adc03_ds_inc_0_reg[0]\ => \adc03_ds_inc_0_reg[0]_0\,
      \adc03_ds_type_0_reg[0]\ => \adc03_ds_type_0_reg[0]_0\,
      adc0axi_map_wready => adc0axi_map_wready,
      adc0slv_rden => adc0slv_rden,
      adc_ds_slv_rden => adc_ds_slv_rden,
      clk2_valid_pulse_reg_0 => slv_wren_clk2,
      clk2_valid_pulse_reg_1 => clk2_valid_pulse_reg,
      dest_rst => dest_rst,
      p_0_in => p_0_in,
      s0_axis_clock => s0_axis_clock,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => \^slv_rden_r\,
      slv_rden_r_reg => slv_rden_r_reg_0,
      slv_rden_r_reg_0(0) => clk2clk_handshake_pulse_gen_i_n_5,
      slv_rden_r_reg_1(0) => clk2clk_handshake_pulse_gen_i_n_6,
      slv_rden_r_reg_2(0) => clk2clk_handshake_pulse_gen_i_n_7,
      slv_rden_r_reg_3(0) => clk2clk_handshake_pulse_gen_i_n_8,
      slv_rden_r_reg_4(0) => clk2clk_handshake_pulse_gen_i_n_9,
      slv_rden_r_reg_5(0) => clk2clk_handshake_pulse_gen_i_n_10,
      slv_rden_r_reg_6(0) => clk2clk_handshake_pulse_gen_i_n_11,
      slv_rden_r_reg_7(0) => clk2clk_handshake_pulse_gen_i_n_12,
      \slv_wdata_r_internal_reg[0]\ => clk2clk_handshake_pulse_gen_i_n_14,
      slv_wren_done_pulse => slv_wren_done_pulse,
      src_in => slv_access_valid_hold,
      \syncstages_ff_reg[4]\ => clk2clk_handshake_pulse_gen_i_n_15
    );
slv_access_valid_hold_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2clk_handshake_pulse_gen_i_n_15,
      Q => slv_access_valid_hold,
      R => p_0_in
    );
\slv_rdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_control_0(0),
      I1 => adc01_ds_control_0(0),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_control_0(0),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_control_0(0),
      O => \adc03_ds_control_0_reg[0]_0\
    );
\slv_rdata[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(0),
      I1 => adc01_ds_enable_0(0),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(0),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => \^s00_tready\,
      O => \adc03_ds_enable_0_reg[0]_0\
    );
\slv_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_inc_0(10),
      I1 => adc01_ds_inc_0(10),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_inc_0(10),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_inc_0(10),
      O => \adc03_ds_inc_0_reg[10]_0\
    );
\slv_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_inc_0(11),
      I1 => adc01_ds_inc_0(11),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_inc_0(11),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_inc_0(11),
      O => \adc03_ds_inc_0_reg[11]_0\
    );
\slv_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \slv_rdata_reg[12]_0\(5),
      I1 => \slv_rdata_reg[12]_0\(4),
      I2 => \slv_rdata_reg[12]_0\(0),
      I3 => \slv_rdata_reg[12]_0\(1),
      I4 => \slv_rdata_reg[12]_2\,
      I5 => s_axi_aresetn,
      O => \slv_rdata[15]_i_1_n_0\
    );
\slv_rdata[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF322F3"
    )
        port map (
      I0 => adc01_ds_control_0(1),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_control_0(1),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_control_0(1),
      O => \adc01_ds_control_0_reg[1]_0\
    );
\slv_rdata[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(1),
      I1 => adc01_ds_enable_0(1),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(1),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(1),
      O => \adc03_ds_enable_0_reg[1]_0\
    );
\slv_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(2),
      I1 => adc01_ds_enable_0(2),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(2),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(2),
      O => \adc03_ds_enable_0_reg[2]_0\
    );
\slv_rdata[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(2),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(2),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(2),
      O => \adc01_ds_inc_0_reg[2]_0\
    );
\slv_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(3),
      I1 => adc01_ds_enable_0(3),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(3),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(3),
      O => \adc03_ds_enable_0_reg[3]_0\
    );
\slv_rdata[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(3),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(3),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(3),
      O => \adc01_ds_inc_0_reg[3]_0\
    );
\slv_rdata[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(4),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(4),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(4),
      O => \adc01_ds_inc_0_reg[4]_0\
    );
\slv_rdata[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(4),
      I1 => adc01_ds_enable_0(4),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(4),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(4),
      O => \adc03_ds_enable_0_reg[4]_0\
    );
\slv_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(5),
      I1 => adc01_ds_enable_0(5),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(5),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(5),
      O => \adc03_ds_enable_0_reg[5]_0\
    );
\slv_rdata[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(5),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(5),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(5),
      O => \adc01_ds_inc_0_reg[5]_0\
    );
\slv_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(6),
      I1 => adc01_ds_enable_0(6),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(6),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(6),
      O => \adc03_ds_enable_0_reg[6]_0\
    );
\slv_rdata[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(6),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(6),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(6),
      O => \adc01_ds_inc_0_reg[6]_0\
    );
\slv_rdata[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110CDD0C"
    )
        port map (
      I0 => adc01_ds_inc_0(7),
      I1 => \slv_rdata_reg[12]_0\(3),
      I2 => adc02_ds_inc_0(7),
      I3 => \slv_rdata_reg[12]_0\(2),
      I4 => adc03_ds_inc_0(7),
      O => \adc01_ds_inc_0_reg[7]_0\
    );
\slv_rdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_enable_0(7),
      I1 => adc01_ds_enable_0(7),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_enable_0(7),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_enable_0(7),
      O => \adc03_ds_enable_0_reg[7]_0\
    );
\slv_rdata[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_inc_0(8),
      I1 => adc01_ds_inc_0(8),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_inc_0(8),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_inc_0(8),
      O => \adc03_ds_inc_0_reg[8]_0\
    );
\slv_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc03_ds_inc_0(9),
      I1 => adc01_ds_inc_0(9),
      I2 => \slv_rdata_reg[12]_0\(2),
      I3 => adc02_ds_inc_0(9),
      I4 => \slv_rdata_reg[12]_0\(3),
      I5 => adc00_ds_inc_0(9),
      O => \adc03_ds_inc_0_reg[9]_0\
    );
\slv_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[0]_1\,
      Q => slv_rdata(0),
      R => \slv_rdata_reg[0]_0\
    );
\slv_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => D(2),
      Q => slv_rdata(10),
      R => '0'
    );
\slv_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => D(3),
      Q => slv_rdata(11),
      R => '0'
    );
\slv_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[12]_1\,
      Q => slv_rdata(12),
      R => \slv_rdata[15]_i_1_n_0\
    );
\slv_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[13]_0\,
      Q => slv_rdata(13),
      R => \slv_rdata[15]_i_1_n_0\
    );
\slv_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[14]_0\,
      Q => slv_rdata(14),
      R => \slv_rdata[15]_i_1_n_0\
    );
\slv_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[15]_0\,
      Q => slv_rdata(15),
      R => \slv_rdata[15]_i_1_n_0\
    );
\slv_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[1]_0\,
      Q => slv_rdata(1),
      R => \slv_rdata_reg[0]_0\
    );
\slv_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[2]_1\,
      Q => slv_rdata(2),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[3]_0\,
      Q => slv_rdata(3),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[4]_0\,
      Q => slv_rdata(4),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[5]_0\,
      Q => slv_rdata(5),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[6]_0\,
      Q => slv_rdata(6),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[7]_0\,
      Q => slv_rdata(7),
      R => \slv_rdata_reg[2]_0\
    );
\slv_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => D(0),
      Q => slv_rdata(8),
      R => '0'
    );
\slv_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => D(1),
      Q => slv_rdata(9),
      R => '0'
    );
slv_rden_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => adc0slv_rden,
      Q => \^slv_rden_r\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \slv_wdata_r_internal_reg_n_0_[0]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \slv_wdata_r_internal_reg_n_0_[10]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \slv_wdata_r_internal_reg_n_0_[11]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \slv_wdata_r_internal_reg_n_0_[1]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \slv_wdata_r_internal_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \slv_wdata_r_internal_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \slv_wdata_r_internal_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \slv_wdata_r_internal_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \slv_wdata_r_internal_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \slv_wdata_r_internal_reg_n_0_[7]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \slv_wdata_r_internal_reg_n_0_[8]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \slv_wdata_r_internal_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_adc1_rfadc_exdes_ctrl_axi is
  port (
    slv_wren_done_pulse : out STD_LOGIC;
    slv_wren_clk2 : out STD_LOGIC;
    slv_rden_r : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc11_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc12_ds_inc_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc10_ds_inc_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc12_ds_enable_0_reg[2]_0\ : out STD_LOGIC;
    \adc12_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk1_ready_pulse_reg : out STD_LOGIC;
    \adc11_ds_enable_0_reg[2]_0\ : out STD_LOGIC;
    \adc11_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc13_ds_inc_0_reg[8]_0\ : out STD_LOGIC;
    \adc13_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc13_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc10_ds_type_0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc10_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[3]_0\ : out STD_LOGIC;
    \slv_rdata_reg[1]_0\ : out STD_LOGIC;
    \slv_rdata_reg[0]_0\ : out STD_LOGIC;
    \slv_rdata_reg[8]_0\ : out STD_LOGIC;
    \slv_rdata_reg[7]_0\ : out STD_LOGIC;
    \slv_rdata_reg[6]_0\ : out STD_LOGIC;
    \slv_rdata_reg[5]_0\ : out STD_LOGIC;
    \slv_rdata_reg[4]_0\ : out STD_LOGIC;
    \slv_rdata_reg[2]_0\ : out STD_LOGIC;
    \slv_rdata_reg[11]_0\ : out STD_LOGIC;
    \slv_rdata_reg[10]_0\ : out STD_LOGIC;
    \slv_rdata_reg[9]_0\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    adc1slv_rden : in STD_LOGIC;
    \slv_rdata_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[2]_1\ : in STD_LOGIC;
    adc_ds_axi_map_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \slv_rdata_reg[2]_2\ : in STD_LOGIC;
    \adc10_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc12_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc12_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \adc10_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc12_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc12_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc11_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc13_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc13_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_3\ : in STD_LOGIC;
    adc1axi_map_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \adc10_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc10_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc11_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc11_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc11_ds_type_0_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc13_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc13_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[0]_1\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \slv_rdata_reg[2]_4\ : in STD_LOGIC;
    \slv_rdata_reg[8]_1\ : in STD_LOGIC;
    \slv_rdata_reg[7]_1\ : in STD_LOGIC;
    \slv_rdata_reg[6]_1\ : in STD_LOGIC;
    \slv_rdata_reg[5]_1\ : in STD_LOGIC;
    \slv_rdata_reg[4]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_5\ : in STD_LOGIC;
    \slv_rdata_reg[9]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_adc1_rfadc_exdes_ctrl_axi : entity is "adc1_rfadc_exdes_ctrl_axi";
end project_1_adc_sink_i_0_adc1_rfadc_exdes_ctrl_axi;

architecture STRUCTURE of project_1_adc_sink_i_0_adc1_rfadc_exdes_ctrl_axi is
  signal adc10_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc10_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc10_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc10_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc11_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc11_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc11_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc11_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc12_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc12_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc12_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc12_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc13_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc13_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc13_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc13_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk2clk_handshake_pulse_gen_i_n_10 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_11 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_12 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_3 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_4 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_5 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_6 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_7 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_8 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_9 : STD_LOGIC;
  signal slv_access_valid_hold : STD_LOGIC;
  signal \slv_rdata[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \^slv_rden_r\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[9]\ : STD_LOGIC;
begin
  slv_rden_r <= \^slv_rden_r\;
\adc10_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc10_ds_control_0(0),
      R => p_0_in
    );
\adc10_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc10_ds_control_0(1),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc10_ds_enable_0(0),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc10_ds_enable_0(1),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc10_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc10_ds_enable_0(3),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc10_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc10_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc10_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc10_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc10_ds_enable_0_reg[7]_0\(4),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc10_ds_inc_0(0),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc10_ds_inc_0(10),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc10_ds_inc_0(11),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc10_ds_inc_0(1),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc10_ds_inc_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc10_ds_inc_0(3),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc10_ds_inc_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc10_ds_inc_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc10_ds_inc_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc10_ds_inc_0_reg[7]_0\(4),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc10_ds_inc_0(8),
      R => p_0_in
    );
\adc10_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc10_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc10_ds_inc_0(9),
      R => p_0_in
    );
\adc10_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc10_ds_type_0(0),
      R => p_0_in
    );
\adc10_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc10_ds_type_0(1),
      R => p_0_in
    );
\adc10_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc10_ds_type_0_reg[2]_0\(0),
      R => p_0_in
    );
\adc10_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc10_ds_type_0(3),
      R => p_0_in
    );
\adc11_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc11_ds_control_0(0),
      R => p_0_in
    );
\adc11_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc11_ds_control_0(1),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc11_ds_enable_0(0),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc11_ds_enable_0(1),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc11_ds_enable_0(2),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc11_ds_enable_0(3),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc11_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc11_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc11_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc11_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc11_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc11_ds_inc_0(0),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc11_ds_inc_0(10),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc11_ds_inc_0(11),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc11_ds_inc_0(1),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc11_ds_inc_0(2),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc11_ds_inc_0(3),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc11_ds_inc_0_reg[8]_0\(0),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc11_ds_inc_0_reg[8]_0\(1),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc11_ds_inc_0_reg[8]_0\(2),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc11_ds_inc_0_reg[8]_0\(3),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc11_ds_inc_0_reg[8]_0\(4),
      R => p_0_in
    );
\adc11_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc11_ds_inc_0(9),
      R => p_0_in
    );
\adc11_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc11_ds_type_0(0),
      R => p_0_in
    );
\adc11_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc11_ds_type_0(1),
      R => p_0_in
    );
\adc11_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc11_ds_type_0(2),
      R => p_0_in
    );
\adc11_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc11_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc11_ds_type_0(3),
      R => p_0_in
    );
\adc12_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc12_ds_control_0(0),
      R => p_0_in
    );
\adc12_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc12_ds_control_0(1),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc12_ds_enable_0(0),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc12_ds_enable_0(1),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc12_ds_enable_0(2),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc12_ds_enable_0(3),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc12_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc12_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc12_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc12_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc12_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc12_ds_inc_0(0),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc12_ds_inc_0(10),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc12_ds_inc_0(11),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc12_ds_inc_0(1),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc12_ds_inc_0(2),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc12_ds_inc_0(3),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc12_ds_inc_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc12_ds_inc_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc12_ds_inc_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc12_ds_inc_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc12_ds_inc_0(8),
      R => p_0_in
    );
\adc12_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc12_ds_inc_0(9),
      R => p_0_in
    );
\adc12_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc12_ds_type_0(0),
      R => p_0_in
    );
\adc12_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc12_ds_type_0(1),
      R => p_0_in
    );
\adc12_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc12_ds_type_0(2),
      R => p_0_in
    );
\adc12_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc12_ds_type_0(3),
      R => p_0_in
    );
\adc13_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc13_ds_control_0(0),
      R => p_0_in
    );
\adc13_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc13_ds_control_0(1),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc13_ds_enable_0(0),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc13_ds_enable_0(1),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc13_ds_enable_0(2),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc13_ds_enable_0(3),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc13_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc13_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc13_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc13_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc13_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc13_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc13_ds_inc_0(0),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc13_ds_inc_0(10),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc13_ds_inc_0(11),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc13_ds_inc_0(1),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc13_ds_inc_0(2),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc13_ds_inc_0(3),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => Q(0),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => Q(1),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => Q(2),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => Q(3),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => adc13_ds_inc_0(8),
      R => p_0_in
    );
\adc13_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc13_ds_inc_0(9),
      R => p_0_in
    );
\adc13_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc13_ds_type_0(0),
      R => p_0_in
    );
\adc13_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc13_ds_type_0(1),
      R => p_0_in
    );
\adc13_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc13_ds_type_0(2),
      R => p_0_in
    );
\adc13_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc13_ds_type_0(3),
      R => p_0_in
    );
clk2clk_handshake_pulse_gen_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__2\
     port map (
      E(0) => clk2clk_handshake_pulse_gen_i_n_3,
      \adc10_ds_enable_0_reg[0]\ => \adc10_ds_enable_0_reg[0]_0\,
      \adc10_ds_type_0_reg[0]\ => \adc10_ds_type_0_reg[0]_0\,
      \adc11_ds_control_0_reg[0]\ => \adc11_ds_control_0_reg[0]_0\,
      \adc12_ds_control_0_reg[0]\ => \adc12_ds_control_0_reg[0]_0\,
      \adc12_ds_enable_0_reg[0]\ => \adc12_ds_enable_0_reg[0]_0\,
      \adc12_ds_inc_0_reg[0]\ => \adc12_ds_inc_0_reg[0]_0\,
      \adc12_ds_type_0_reg[0]\ => \adc12_ds_type_0_reg[0]_0\,
      \adc13_ds_inc_0_reg[0]\ => \adc13_ds_inc_0_reg[0]_0\,
      \adc13_ds_type_0_reg[0]\ => \adc13_ds_type_0_reg[0]_0\,
      adc1axi_map_wready => adc1axi_map_wready,
      adc1slv_rden => adc1slv_rden,
      adc_ds_axi_map_wready => adc_ds_axi_map_wready,
      clk1_ready_pulse_reg_0 => clk1_ready_pulse_reg,
      clk2_valid_pulse_reg_0 => slv_wren_clk2,
      clk2_valid_pulse_reg_1(0) => clk2clk_handshake_pulse_gen_i_n_4,
      clk2_valid_pulse_reg_2(0) => clk2clk_handshake_pulse_gen_i_n_5,
      clk2_valid_pulse_reg_3(0) => clk2clk_handshake_pulse_gen_i_n_6,
      clk2_valid_pulse_reg_4(0) => clk2clk_handshake_pulse_gen_i_n_7,
      clk2_valid_pulse_reg_5(0) => clk2clk_handshake_pulse_gen_i_n_8,
      clk2_valid_pulse_reg_6(0) => clk2clk_handshake_pulse_gen_i_n_9,
      clk2_valid_pulse_reg_7(0) => clk2clk_handshake_pulse_gen_i_n_10,
      clk2_valid_pulse_reg_8(0) => clk2clk_handshake_pulse_gen_i_n_11,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => \^slv_rden_r\,
      slv_wren_done_pulse => slv_wren_done_pulse,
      src_in => slv_access_valid_hold,
      \syncstages_ff_reg[4]\ => clk2clk_handshake_pulse_gen_i_n_12
    );
slv_access_valid_hold_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2clk_handshake_pulse_gen_i_n_12,
      Q => slv_access_valid_hold,
      R => p_0_in
    );
\slv_rdata[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc10_ds_control_0(0),
      I1 => adc10_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc10_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc10_ds_enable_0(0),
      O => \slv_rdata[0]_i_4__0_n_0\
    );
\slv_rdata[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc11_ds_control_0(0),
      I1 => adc11_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc11_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc11_ds_enable_0(0),
      O => \slv_rdata[0]_i_5__0_n_0\
    );
\slv_rdata[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc12_ds_control_0(0),
      I1 => adc12_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc12_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc12_ds_enable_0(0),
      O => \slv_rdata[0]_i_6__0_n_0\
    );
\slv_rdata[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc13_ds_control_0(0),
      I1 => adc13_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc13_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc13_ds_enable_0(0),
      O => \slv_rdata[0]_i_7__0_n_0\
    );
\slv_rdata[10]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0AACC00F0AACC"
    )
        port map (
      I0 => adc12_ds_inc_0(10),
      I1 => adc10_ds_inc_0(10),
      I2 => adc11_ds_inc_0(10),
      I3 => \slv_rdata_reg[9]_1\(3),
      I4 => \slv_rdata_reg[9]_1\(2),
      I5 => adc13_ds_inc_0(10),
      O => \slv_rdata[10]_i_1__2_n_0\
    );
\slv_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => adc13_ds_inc_0(11),
      I1 => adc11_ds_inc_0(11),
      I2 => adc12_ds_inc_0(11),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc10_ds_inc_0(11),
      O => \slv_rdata[11]_i_2_n_0\
    );
\slv_rdata[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc10_ds_control_0(1),
      I1 => adc10_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc10_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc10_ds_enable_0(1),
      O => \slv_rdata[1]_i_4__0_n_0\
    );
\slv_rdata[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc11_ds_control_0(1),
      I1 => adc11_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc11_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc11_ds_enable_0(1),
      O => \slv_rdata[1]_i_5__0_n_0\
    );
\slv_rdata[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc12_ds_control_0(1),
      I1 => adc12_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc12_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc12_ds_enable_0(1),
      O => \slv_rdata[1]_i_6__0_n_0\
    );
\slv_rdata[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc13_ds_control_0(1),
      I1 => adc13_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc13_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc13_ds_enable_0(1),
      O => \slv_rdata[1]_i_7__0_n_0\
    );
\slv_rdata[2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E2FFFFFFFF"
    )
        port map (
      I0 => adc12_ds_enable_0(2),
      I1 => \slv_rdata_reg[9]_1\(0),
      I2 => adc12_ds_inc_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => adc12_ds_type_0(2),
      I5 => \slv_rdata_reg[2]_1\,
      O => \adc12_ds_enable_0_reg[2]_0\
    );
\slv_rdata[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF550F33"
    )
        port map (
      I0 => adc13_ds_inc_0(2),
      I1 => adc13_ds_enable_0(2),
      I2 => adc13_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => \slv_rdata_reg[2]_3\,
      O => \adc13_ds_inc_0_reg[2]_0\
    );
\slv_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000C44CCCC0C44"
    )
        port map (
      I0 => adc11_ds_enable_0(2),
      I1 => \slv_rdata_reg[2]_2\,
      I2 => adc11_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc11_ds_inc_0(2),
      O => \adc11_ds_enable_0_reg[2]_0\
    );
\slv_rdata[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc10_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc10_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc10_ds_enable_0(3),
      O => \slv_rdata[3]_i_5__0_n_0\
    );
\slv_rdata[3]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc11_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc11_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc11_ds_enable_0(3),
      O => \slv_rdata[3]_i_6__0_n_0\
    );
\slv_rdata[3]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc12_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc12_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc12_ds_enable_0(3),
      O => \slv_rdata[3]_i_7__0_n_0\
    );
\slv_rdata[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc13_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc13_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc13_ds_enable_0(3),
      O => \slv_rdata[3]_i_8_n_0\
    );
\slv_rdata[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40704373"
    )
        port map (
      I0 => adc13_ds_inc_0(8),
      I1 => \slv_rdata_reg[9]_1\(2),
      I2 => \slv_rdata_reg[9]_1\(3),
      I3 => adc12_ds_inc_0(8),
      I4 => adc10_ds_inc_0(8),
      O => \adc13_ds_inc_0_reg[8]_0\
    );
\slv_rdata[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => adc13_ds_inc_0(9),
      I1 => adc11_ds_inc_0(9),
      I2 => adc12_ds_inc_0(9),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc10_ds_inc_0(9),
      O => \slv_rdata[9]_i_1__2_n_0\
    );
\slv_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[0]_i_1_n_0\,
      Q => \slv_rdata_reg[0]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[0]_i_2_n_0\,
      I1 => \slv_rdata_reg[0]_i_3_n_0\,
      O => \slv_rdata_reg[0]_i_1_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_4__0_n_0\,
      I1 => \slv_rdata[0]_i_5__0_n_0\,
      O => \slv_rdata_reg[0]_i_2_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_6__0_n_0\,
      I1 => \slv_rdata[0]_i_7__0_n_0\,
      O => \slv_rdata_reg[0]_i_3_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[10]_i_1__2_n_0\,
      Q => \slv_rdata_reg[10]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[11]_i_2_n_0\,
      Q => \slv_rdata_reg[11]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[1]_i_1_n_0\,
      Q => \slv_rdata_reg[1]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[1]_i_2_n_0\,
      I1 => \slv_rdata_reg[1]_i_3_n_0\,
      O => \slv_rdata_reg[1]_i_1_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_4__0_n_0\,
      I1 => \slv_rdata[1]_i_5__0_n_0\,
      O => \slv_rdata_reg[1]_i_2_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_6__0_n_0\,
      I1 => \slv_rdata[1]_i_7__0_n_0\,
      O => \slv_rdata_reg[1]_i_3_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[2]_5\,
      Q => \slv_rdata_reg[2]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[3]_i_2_n_0\,
      Q => \slv_rdata_reg[3]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[3]_i_3_n_0\,
      I1 => \slv_rdata_reg[3]_i_4_n_0\,
      O => \slv_rdata_reg[3]_i_2_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[3]_i_5__0_n_0\,
      I1 => \slv_rdata[3]_i_6__0_n_0\,
      O => \slv_rdata_reg[3]_i_3_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[3]_i_7__0_n_0\,
      I1 => \slv_rdata[3]_i_8_n_0\,
      O => \slv_rdata_reg[3]_i_4_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[4]_1\,
      Q => \slv_rdata_reg[4]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[5]_1\,
      Q => \slv_rdata_reg[5]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[6]_1\,
      Q => \slv_rdata_reg[6]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[7]_1\,
      Q => \slv_rdata_reg[7]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[8]_1\,
      Q => \slv_rdata_reg[8]_0\,
      R => \slv_rdata_reg[2]_4\
    );
\slv_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[9]_i_1__2_n_0\,
      Q => \slv_rdata_reg[9]_0\,
      R => \slv_rdata_reg[9]_2\
    );
slv_rden_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => adc1slv_rden,
      Q => \^slv_rden_r\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \slv_wdata_r_internal_reg_n_0_[0]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \slv_wdata_r_internal_reg_n_0_[10]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \slv_wdata_r_internal_reg_n_0_[11]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \slv_wdata_r_internal_reg_n_0_[1]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \slv_wdata_r_internal_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \slv_wdata_r_internal_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \slv_wdata_r_internal_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \slv_wdata_r_internal_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \slv_wdata_r_internal_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \slv_wdata_r_internal_reg_n_0_[7]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \slv_wdata_r_internal_reg_n_0_[8]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \slv_wdata_r_internal_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_adc2_rfadc_exdes_ctrl_axi is
  port (
    slv_wren_clk2 : out STD_LOGIC;
    slv_rden_r : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc20_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \adc22_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \adc21_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    slv_rden_r_reg_0 : out STD_LOGIC;
    \adc21_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc21_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc23_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc23_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    slv_rden_r_reg_1 : out STD_LOGIC;
    \adc22_ds_type_0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc22_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc20_ds_type_0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc20_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_rdata_reg[3]_0\ : out STD_LOGIC;
    \slv_rdata_reg[1]_0\ : out STD_LOGIC;
    \slv_rdata_reg[0]_0\ : out STD_LOGIC;
    \slv_rdata_reg[8]_0\ : out STD_LOGIC;
    \slv_rdata_reg[7]_0\ : out STD_LOGIC;
    \slv_rdata_reg[6]_0\ : out STD_LOGIC;
    \slv_rdata_reg[5]_0\ : out STD_LOGIC;
    \slv_rdata_reg[4]_0\ : out STD_LOGIC;
    \slv_rdata_reg[2]_0\ : out STD_LOGIC;
    \slv_rdata_reg[11]_0\ : out STD_LOGIC;
    \slv_rdata_reg[10]_0\ : out STD_LOGIC;
    \slv_rdata_reg[9]_0\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    adc2slv_rden : in STD_LOGIC;
    \slv_rdata_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rresp[1]_i_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    slv_rden_r_0 : in STD_LOGIC;
    slv_wren_done_pulse : in STD_LOGIC;
    \slv_rdata_reg[2]_1\ : in STD_LOGIC;
    \adc20_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc22_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc22_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \adc20_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc22_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc22_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc21_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc23_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc23_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_2\ : in STD_LOGIC;
    slv_wren_done_pulse_1 : in STD_LOGIC;
    slv_rden_r_2 : in STD_LOGIC;
    slv_wren_done_pulse_3 : in STD_LOGIC;
    slv_rden_r_4 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc2axi_map_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \adc20_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc20_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc21_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc21_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc21_ds_type_0_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc23_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc23_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[0]_1\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \slv_rdata_reg[2]_3\ : in STD_LOGIC;
    \slv_rdata_reg[8]_1\ : in STD_LOGIC;
    \slv_rdata_reg[7]_1\ : in STD_LOGIC;
    \slv_rdata_reg[6]_1\ : in STD_LOGIC;
    \slv_rdata_reg[5]_1\ : in STD_LOGIC;
    \slv_rdata_reg[4]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_4\ : in STD_LOGIC;
    \slv_rdata_reg[9]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_adc2_rfadc_exdes_ctrl_axi : entity is "adc2_rfadc_exdes_ctrl_axi";
end project_1_adc_sink_i_0_adc2_rfadc_exdes_ctrl_axi;

architecture STRUCTURE of project_1_adc_sink_i_0_adc2_rfadc_exdes_ctrl_axi is
  signal adc20_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc20_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc20_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc20_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc21_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc21_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc21_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc21_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc22_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc22_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc22_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc22_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc23_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc23_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc23_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc23_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk2clk_handshake_pulse_gen_i_n_10 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_12 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_2 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_3 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_4 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_5 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_6 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_7 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_8 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_9 : STD_LOGIC;
  signal slv_access_valid_hold : STD_LOGIC;
  signal \slv_rdata[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_6__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_7__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \^slv_rden_r\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[9]\ : STD_LOGIC;
begin
  slv_rden_r <= \^slv_rden_r\;
\adc20_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc20_ds_control_0(0),
      R => p_0_in
    );
\adc20_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc20_ds_control_0(1),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc20_ds_enable_0(0),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc20_ds_enable_0(1),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc20_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc20_ds_enable_0(3),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc20_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc20_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc20_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc20_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_2,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc20_ds_enable_0_reg[7]_0\(4),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc20_ds_inc_0(0),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc20_ds_inc_0(10),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc20_ds_inc_0(11),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc20_ds_inc_0(1),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(0),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc20_ds_inc_0(3),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(1),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(2),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(3),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(4),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc20_ds_inc_0_reg[8]_0\(5),
      R => p_0_in
    );
\adc20_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc20_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc20_ds_inc_0(9),
      R => p_0_in
    );
\adc20_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc20_ds_type_0(0),
      R => p_0_in
    );
\adc20_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc20_ds_type_0(1),
      R => p_0_in
    );
\adc20_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc20_ds_type_0_reg[2]_0\(0),
      R => p_0_in
    );
\adc20_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc20_ds_type_0(3),
      R => p_0_in
    );
\adc21_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc21_ds_control_0(0),
      R => p_0_in
    );
\adc21_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc21_ds_control_0(1),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc21_ds_enable_0(0),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc21_ds_enable_0(1),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc21_ds_enable_0(2),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc21_ds_enable_0(3),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc21_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc21_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc21_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc21_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc21_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc21_ds_inc_0(0),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc21_ds_inc_0(10),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc21_ds_inc_0(11),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc21_ds_inc_0(1),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc21_ds_inc_0(2),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc21_ds_inc_0(3),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc21_ds_inc_0_reg[8]_0\(0),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc21_ds_inc_0_reg[8]_0\(1),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc21_ds_inc_0_reg[8]_0\(2),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc21_ds_inc_0_reg[8]_0\(3),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc21_ds_inc_0_reg[8]_0\(4),
      R => p_0_in
    );
\adc21_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc21_ds_inc_0(9),
      R => p_0_in
    );
\adc21_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc21_ds_type_0(0),
      R => p_0_in
    );
\adc21_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc21_ds_type_0(1),
      R => p_0_in
    );
\adc21_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc21_ds_type_0(2),
      R => p_0_in
    );
\adc21_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc21_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc21_ds_type_0(3),
      R => p_0_in
    );
\adc22_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc22_ds_control_0(0),
      R => p_0_in
    );
\adc22_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc22_ds_control_0(1),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc22_ds_enable_0(0),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc22_ds_enable_0(1),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc22_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc22_ds_enable_0(3),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc22_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc22_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc22_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc22_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc22_ds_enable_0_reg[7]_0\(4),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc22_ds_inc_0(0),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc22_ds_inc_0(10),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc22_ds_inc_0(11),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc22_ds_inc_0(1),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(0),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc22_ds_inc_0(3),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(1),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(2),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(3),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(4),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc22_ds_inc_0_reg[8]_0\(5),
      R => p_0_in
    );
\adc22_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc22_ds_inc_0(9),
      R => p_0_in
    );
\adc22_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc22_ds_type_0(0),
      R => p_0_in
    );
\adc22_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc22_ds_type_0(1),
      R => p_0_in
    );
\adc22_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc22_ds_type_0_reg[2]_0\(0),
      R => p_0_in
    );
\adc22_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc22_ds_type_0(3),
      R => p_0_in
    );
\adc23_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc23_ds_control_0(0),
      R => p_0_in
    );
\adc23_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc23_ds_control_0(1),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc23_ds_enable_0(0),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc23_ds_enable_0(1),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc23_ds_enable_0(2),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc23_ds_enable_0(3),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc23_ds_enable_0_reg[7]_0\(0),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc23_ds_enable_0_reg[7]_0\(1),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc23_ds_enable_0_reg[7]_0\(2),
      R => p_0_in
    );
\adc23_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc23_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc23_ds_enable_0_reg[7]_0\(3),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc23_ds_inc_0(0),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc23_ds_inc_0(10),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc23_ds_inc_0(11),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc23_ds_inc_0(1),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc23_ds_inc_0(2),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc23_ds_inc_0(3),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => Q(0),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => Q(1),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => Q(2),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => Q(3),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => Q(4),
      R => p_0_in
    );
\adc23_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc23_ds_inc_0(9),
      R => p_0_in
    );
\adc23_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc23_ds_type_0(0),
      R => p_0_in
    );
\adc23_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc23_ds_type_0(1),
      R => p_0_in
    );
\adc23_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc23_ds_type_0(2),
      R => p_0_in
    );
\adc23_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc23_ds_type_0(3),
      R => p_0_in
    );
clk2clk_handshake_pulse_gen_i: entity work.\project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen__xdcDup__3\
     port map (
      E(0) => clk2clk_handshake_pulse_gen_i_n_2,
      \adc20_ds_enable_0_reg[0]\ => \adc20_ds_enable_0_reg[0]_0\,
      \adc20_ds_type_0_reg[0]\ => \adc20_ds_type_0_reg[0]_0\,
      \adc21_ds_control_0_reg[0]\ => \adc21_ds_control_0_reg[0]_0\,
      \adc22_ds_control_0_reg[0]\ => \adc22_ds_control_0_reg[0]_0\,
      \adc22_ds_enable_0_reg[0]\ => \adc22_ds_enable_0_reg[0]_0\,
      \adc22_ds_inc_0_reg[0]\ => \adc22_ds_inc_0_reg[0]_0\,
      \adc22_ds_type_0_reg[0]\ => \adc22_ds_type_0_reg[0]_0\,
      \adc23_ds_inc_0_reg[0]\ => \adc23_ds_inc_0_reg[0]_0\,
      \adc23_ds_type_0_reg[0]\ => \adc23_ds_type_0_reg[0]_0\,
      adc2axi_map_wready => adc2axi_map_wready,
      adc2slv_rden => adc2slv_rden,
      \axi_rresp[1]_i_2\(0) => \axi_rresp[1]_i_2\(0),
      clk2_valid_pulse_reg_0 => slv_wren_clk2,
      clk2_valid_pulse_reg_1(0) => clk2clk_handshake_pulse_gen_i_n_3,
      clk2_valid_pulse_reg_2(0) => clk2clk_handshake_pulse_gen_i_n_4,
      clk2_valid_pulse_reg_3(0) => clk2clk_handshake_pulse_gen_i_n_5,
      clk2_valid_pulse_reg_4(0) => clk2clk_handshake_pulse_gen_i_n_6,
      clk2_valid_pulse_reg_5(0) => clk2clk_handshake_pulse_gen_i_n_7,
      clk2_valid_pulse_reg_6(0) => clk2clk_handshake_pulse_gen_i_n_8,
      clk2_valid_pulse_reg_7(0) => clk2clk_handshake_pulse_gen_i_n_9,
      clk2_valid_pulse_reg_8(0) => clk2clk_handshake_pulse_gen_i_n_10,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => \^slv_rden_r\,
      slv_rden_r_0 => slv_rden_r_0,
      slv_rden_r_2 => slv_rden_r_2,
      slv_rden_r_4 => slv_rden_r_4,
      slv_rden_r_reg => slv_rden_r_reg_0,
      slv_rden_r_reg_0 => slv_rden_r_reg_1,
      slv_wren_done_pulse => slv_wren_done_pulse,
      slv_wren_done_pulse_1 => slv_wren_done_pulse_1,
      slv_wren_done_pulse_3 => slv_wren_done_pulse_3,
      src_in => slv_access_valid_hold,
      \syncstages_ff_reg[4]\ => clk2clk_handshake_pulse_gen_i_n_12
    );
slv_access_valid_hold_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2clk_handshake_pulse_gen_i_n_12,
      Q => slv_access_valid_hold,
      R => p_0_in
    );
\slv_rdata[0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc20_ds_control_0(0),
      I1 => adc20_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc20_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc20_ds_enable_0(0),
      O => \slv_rdata[0]_i_4__1_n_0\
    );
\slv_rdata[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc21_ds_control_0(0),
      I1 => adc21_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc21_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc21_ds_enable_0(0),
      O => \slv_rdata[0]_i_5__1_n_0\
    );
\slv_rdata[0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc22_ds_control_0(0),
      I1 => adc22_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc22_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc22_ds_enable_0(0),
      O => \slv_rdata[0]_i_6__1_n_0\
    );
\slv_rdata[0]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc23_ds_control_0(0),
      I1 => adc23_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc23_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc23_ds_enable_0(0),
      O => \slv_rdata[0]_i_7__1_n_0\
    );
\slv_rdata[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => adc23_ds_inc_0(10),
      I1 => adc21_ds_inc_0(10),
      I2 => adc22_ds_inc_0(10),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc20_ds_inc_0(10),
      O => \slv_rdata[10]_i_1__1_n_0\
    );
\slv_rdata[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0FFCCAAF000CC"
    )
        port map (
      I0 => adc23_ds_inc_0(11),
      I1 => adc20_ds_inc_0(11),
      I2 => adc22_ds_inc_0(11),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc21_ds_inc_0(11),
      O => \slv_rdata[11]_i_1__2_n_0\
    );
\slv_rdata[1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc20_ds_control_0(1),
      I1 => adc20_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc20_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc20_ds_enable_0(1),
      O => \slv_rdata[1]_i_4__1_n_0\
    );
\slv_rdata[1]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc21_ds_control_0(1),
      I1 => adc21_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc21_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc21_ds_enable_0(1),
      O => \slv_rdata[1]_i_5__1_n_0\
    );
\slv_rdata[1]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc22_ds_control_0(1),
      I1 => adc22_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc22_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc22_ds_enable_0(1),
      O => \slv_rdata[1]_i_6__1_n_0\
    );
\slv_rdata[1]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc23_ds_control_0(1),
      I1 => adc23_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc23_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc23_ds_enable_0(1),
      O => \slv_rdata[1]_i_7__1_n_0\
    );
\slv_rdata[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF550F33"
    )
        port map (
      I0 => adc23_ds_inc_0(2),
      I1 => adc23_ds_enable_0(2),
      I2 => adc23_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => \slv_rdata_reg[2]_2\,
      O => \adc23_ds_inc_0_reg[2]_0\
    );
\slv_rdata[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC440C00CC440CCC"
    )
        port map (
      I0 => adc21_ds_inc_0(2),
      I1 => \slv_rdata_reg[2]_1\,
      I2 => adc21_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc21_ds_enable_0(2),
      O => \adc21_ds_inc_0_reg[2]_0\
    );
\slv_rdata[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc20_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc20_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc20_ds_enable_0(3),
      O => \slv_rdata[3]_i_4__1_n_0\
    );
\slv_rdata[3]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc21_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc21_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc21_ds_enable_0(3),
      O => \slv_rdata[3]_i_5__1_n_0\
    );
\slv_rdata[3]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc22_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc22_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc22_ds_enable_0(3),
      O => \slv_rdata[3]_i_6__1_n_0\
    );
\slv_rdata[3]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => adc23_ds_type_0(3),
      I1 => \slv_rdata_reg[9]_1\(1),
      I2 => adc23_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(0),
      I4 => adc23_ds_enable_0(3),
      O => \slv_rdata[3]_i_7__1_n_0\
    );
\slv_rdata[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0FFCCAAF000CC"
    )
        port map (
      I0 => adc23_ds_inc_0(9),
      I1 => adc20_ds_inc_0(9),
      I2 => adc22_ds_inc_0(9),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc21_ds_inc_0(9),
      O => \slv_rdata[9]_i_1__1_n_0\
    );
\slv_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[0]_i_1__0_n_0\,
      Q => \slv_rdata_reg[0]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[0]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[0]_i_2__0_n_0\,
      I1 => \slv_rdata_reg[0]_i_3__0_n_0\,
      O => \slv_rdata_reg[0]_i_1__0_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[0]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_4__1_n_0\,
      I1 => \slv_rdata[0]_i_5__1_n_0\,
      O => \slv_rdata_reg[0]_i_2__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[0]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_6__1_n_0\,
      I1 => \slv_rdata[0]_i_7__1_n_0\,
      O => \slv_rdata_reg[0]_i_3__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[10]_i_1__1_n_0\,
      Q => \slv_rdata_reg[10]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[11]_i_1__2_n_0\,
      Q => \slv_rdata_reg[11]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[1]_i_1__0_n_0\,
      Q => \slv_rdata_reg[1]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[1]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[1]_i_2__0_n_0\,
      I1 => \slv_rdata_reg[1]_i_3__0_n_0\,
      O => \slv_rdata_reg[1]_i_1__0_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[1]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_4__1_n_0\,
      I1 => \slv_rdata[1]_i_5__1_n_0\,
      O => \slv_rdata_reg[1]_i_2__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[1]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_6__1_n_0\,
      I1 => \slv_rdata[1]_i_7__1_n_0\,
      O => \slv_rdata_reg[1]_i_3__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[2]_4\,
      Q => \slv_rdata_reg[2]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[3]_i_1_n_0\,
      Q => \slv_rdata_reg[3]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[3]_i_2__0_n_0\,
      I1 => \slv_rdata_reg[3]_i_3__0_n_0\,
      O => \slv_rdata_reg[3]_i_1_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[3]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[3]_i_4__1_n_0\,
      I1 => \slv_rdata[3]_i_5__1_n_0\,
      O => \slv_rdata_reg[3]_i_2__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[3]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[3]_i_6__1_n_0\,
      I1 => \slv_rdata[3]_i_7__1_n_0\,
      O => \slv_rdata_reg[3]_i_3__0_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[4]_1\,
      Q => \slv_rdata_reg[4]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[5]_1\,
      Q => \slv_rdata_reg[5]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[6]_1\,
      Q => \slv_rdata_reg[6]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[7]_1\,
      Q => \slv_rdata_reg[7]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[8]_1\,
      Q => \slv_rdata_reg[8]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[9]_i_1__1_n_0\,
      Q => \slv_rdata_reg[9]_0\,
      R => \slv_rdata_reg[9]_2\
    );
slv_rden_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => adc2slv_rden,
      Q => \^slv_rden_r\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \slv_wdata_r_internal_reg_n_0_[0]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \slv_wdata_r_internal_reg_n_0_[10]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \slv_wdata_r_internal_reg_n_0_[11]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \slv_wdata_r_internal_reg_n_0_[1]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \slv_wdata_r_internal_reg_n_0_[2]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \slv_wdata_r_internal_reg_n_0_[3]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \slv_wdata_r_internal_reg_n_0_[4]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \slv_wdata_r_internal_reg_n_0_[5]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \slv_wdata_r_internal_reg_n_0_[6]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \slv_wdata_r_internal_reg_n_0_[7]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \slv_wdata_r_internal_reg_n_0_[8]\,
      R => p_0_in
    );
\slv_wdata_r_internal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \slv_wdata_r_internal_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_adc3_rfadc_exdes_ctrl_axi is
  port (
    p_0_in : out STD_LOGIC;
    slv_wren_done_pulse : out STD_LOGIC;
    slv_wren_clk2 : out STD_LOGIC;
    slv_rden_r : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc30_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \adc30_ds_type_0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc33_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \adc32_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \adc31_ds_inc_0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc31_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \adc32_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc32_ds_type_0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc31_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc33_ds_inc_0_reg[2]_0\ : out STD_LOGIC;
    \adc33_ds_enable_0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \adc33_ds_type_0_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[1]_0\ : out STD_LOGIC;
    \slv_rdata_reg[0]_0\ : out STD_LOGIC;
    \slv_rdata_reg[8]_0\ : out STD_LOGIC;
    \slv_rdata_reg[7]_0\ : out STD_LOGIC;
    \slv_rdata_reg[6]_0\ : out STD_LOGIC;
    \slv_rdata_reg[5]_0\ : out STD_LOGIC;
    \slv_rdata_reg[4]_0\ : out STD_LOGIC;
    \slv_rdata_reg[2]_0\ : out STD_LOGIC;
    \slv_rdata_reg[11]_0\ : out STD_LOGIC;
    \slv_rdata_reg[10]_0\ : out STD_LOGIC;
    \slv_rdata_reg[9]_0\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    adc3slv_rden : in STD_LOGIC;
    \slv_rdata_reg[9]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_rdata_reg[3]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_1\ : in STD_LOGIC;
    \slv_rdata_reg[3]_2\ : in STD_LOGIC;
    \adc30_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc32_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc32_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[3]_3\ : in STD_LOGIC;
    \slv_rdata_reg[3]_4\ : in STD_LOGIC;
    \adc30_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc32_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc32_ds_enable_0_reg[0]_0\ : in STD_LOGIC;
    \adc31_ds_control_0_reg[0]_0\ : in STD_LOGIC;
    \adc33_ds_type_0_reg[0]_0\ : in STD_LOGIC;
    \adc33_ds_inc_0_reg[0]_0\ : in STD_LOGIC;
    \slv_rdata_reg[2]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    adc3axi_map_wready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \adc30_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc30_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc31_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc31_ds_inc_0_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc31_ds_type_0_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc33_ds_enable_0_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \adc33_ds_control_0_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_rdata_reg[0]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_3\ : in STD_LOGIC;
    \slv_rdata_reg[8]_1\ : in STD_LOGIC;
    \slv_rdata_reg[7]_1\ : in STD_LOGIC;
    \slv_rdata_reg[6]_1\ : in STD_LOGIC;
    \slv_rdata_reg[5]_1\ : in STD_LOGIC;
    \slv_rdata_reg[4]_1\ : in STD_LOGIC;
    \slv_rdata_reg[2]_4\ : in STD_LOGIC;
    \slv_rdata_reg[9]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_adc3_rfadc_exdes_ctrl_axi : entity is "adc3_rfadc_exdes_ctrl_axi";
end project_1_adc_sink_i_0_adc3_rfadc_exdes_ctrl_axi;

architecture STRUCTURE of project_1_adc_sink_i_0_adc3_rfadc_exdes_ctrl_axi is
  signal adc30_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc30_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc30_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc30_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc31_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc31_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc31_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc31_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc32_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc32_ds_enable_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc32_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc32_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc33_ds_control_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc33_ds_enable_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal adc33_ds_inc_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal adc33_ds_type_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clk2clk_handshake_pulse_gen_i_n_10 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_11 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_12 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_3 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_4 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_5 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_6 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_7 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_8 : STD_LOGIC;
  signal clk2clk_handshake_pulse_gen_i_n_9 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal slv_access_valid_hold : STD_LOGIC;
  signal \slv_rdata[0]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_6__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[0]_i_7__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_4__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_6__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[1]_i_7__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \slv_rdata[3]_i_5__2_n_0\ : STD_LOGIC;
  signal \slv_rdata[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \slv_rdata_reg[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \^slv_rden_r\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_wdata_r_internal_reg_n_0_[9]\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
  slv_rden_r <= \^slv_rden_r\;
\adc30_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc30_ds_control_0(0),
      R => \^p_0_in\
    );
\adc30_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc30_ds_control_0(1),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc30_ds_enable_0(0),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc30_ds_enable_0(1),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => Q(0),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc30_ds_enable_0(3),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => Q(1),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => Q(2),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => Q(3),
      R => \^p_0_in\
    );
\adc30_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_3,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => Q(4),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc30_ds_inc_0(0),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc30_ds_inc_0(10),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc30_ds_inc_0(11),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc30_ds_inc_0(1),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(0),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc30_ds_inc_0(3),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(1),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(2),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(3),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(4),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc30_ds_inc_0_reg[8]_0\(5),
      R => \^p_0_in\
    );
\adc30_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc30_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc30_ds_inc_0(9),
      R => \^p_0_in\
    );
\adc30_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc30_ds_type_0(0),
      R => \^p_0_in\
    );
\adc30_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc30_ds_type_0(1),
      R => \^p_0_in\
    );
\adc30_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc30_ds_type_0_reg[2]_0\(0),
      R => \^p_0_in\
    );
\adc30_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_6,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc30_ds_type_0(3),
      R => \^p_0_in\
    );
\adc31_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc31_ds_control_0(0),
      R => \^p_0_in\
    );
\adc31_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_9,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc31_ds_control_0(1),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc31_ds_enable_0(0),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc31_ds_enable_0(1),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc31_ds_enable_0(2),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc31_ds_enable_0(3),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc31_ds_enable_0_reg[7]_0\(0),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc31_ds_enable_0_reg[7]_0\(1),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc31_ds_enable_0_reg[7]_0\(2),
      R => \^p_0_in\
    );
\adc31_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc31_ds_enable_0_reg[7]_0\(3),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc31_ds_inc_0(0),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc31_ds_inc_0(10),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc31_ds_inc_0(11),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc31_ds_inc_0(1),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc31_ds_inc_0(2),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc31_ds_inc_0(3),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc31_ds_inc_0_reg[8]_0\(0),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc31_ds_inc_0_reg[8]_0\(1),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc31_ds_inc_0_reg[8]_0\(2),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc31_ds_inc_0_reg[8]_0\(3),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc31_ds_inc_0_reg[8]_0\(4),
      R => \^p_0_in\
    );
\adc31_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_inc_0_reg[11]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc31_ds_inc_0(9),
      R => \^p_0_in\
    );
\adc31_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc31_ds_type_0(0),
      R => \^p_0_in\
    );
\adc31_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc31_ds_type_0(1),
      R => \^p_0_in\
    );
\adc31_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc31_ds_type_0(2),
      R => \^p_0_in\
    );
\adc31_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc31_ds_type_0_reg[3]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc31_ds_type_0(3),
      R => \^p_0_in\
    );
\adc32_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc32_ds_control_0(0),
      R => \^p_0_in\
    );
\adc32_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_7,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc32_ds_control_0(1),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc32_ds_enable_0(0),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc32_ds_enable_0(1),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc32_ds_enable_0_reg[7]_0\(0),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc32_ds_enable_0(3),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc32_ds_enable_0_reg[7]_0\(1),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc32_ds_enable_0_reg[7]_0\(2),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc32_ds_enable_0_reg[7]_0\(3),
      R => \^p_0_in\
    );
\adc32_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_8,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc32_ds_enable_0_reg[7]_0\(4),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc32_ds_inc_0(0),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc32_ds_inc_0(10),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc32_ds_inc_0(11),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc32_ds_inc_0(1),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(0),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc32_ds_inc_0(3),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(1),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(2),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(3),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(4),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc32_ds_inc_0_reg[8]_0\(5),
      R => \^p_0_in\
    );
\adc32_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_5,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc32_ds_inc_0(9),
      R => \^p_0_in\
    );
\adc32_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc32_ds_type_0(0),
      R => \^p_0_in\
    );
\adc32_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc32_ds_type_0(1),
      R => \^p_0_in\
    );
\adc32_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => \adc32_ds_type_0_reg[2]_0\(0),
      R => \^p_0_in\
    );
\adc32_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_4,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => adc32_ds_type_0(3),
      R => \^p_0_in\
    );
\adc33_ds_control_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc33_ds_control_0(0),
      R => \^p_0_in\
    );
\adc33_ds_control_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_control_0_reg[1]_0\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc33_ds_control_0(1),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc33_ds_enable_0(0),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc33_ds_enable_0(1),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc33_ds_enable_0(2),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc33_ds_enable_0_reg[7]_0\(0),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc33_ds_enable_0_reg[7]_0\(1),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc33_ds_enable_0_reg[7]_0\(2),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc33_ds_enable_0_reg[7]_0\(3),
      R => \^p_0_in\
    );
\adc33_ds_enable_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \adc33_ds_enable_0_reg[7]_1\(0),
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc33_ds_enable_0_reg[7]_0\(4),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc33_ds_inc_0(0),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[10]\,
      Q => adc33_ds_inc_0(10),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[11]\,
      Q => adc33_ds_inc_0(11),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc33_ds_inc_0(1),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc33_ds_inc_0(2),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(0),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[4]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(1),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[5]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(2),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[6]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(3),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[7]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(4),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[8]\,
      Q => \adc33_ds_inc_0_reg[8]_0\(5),
      R => \^p_0_in\
    );
\adc33_ds_inc_0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_11,
      D => \slv_wdata_r_internal_reg_n_0_[9]\,
      Q => adc33_ds_inc_0(9),
      R => \^p_0_in\
    );
\adc33_ds_type_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[0]\,
      Q => adc33_ds_type_0(0),
      R => \^p_0_in\
    );
\adc33_ds_type_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[1]\,
      Q => adc33_ds_type_0(1),
      R => \^p_0_in\
    );
\adc33_ds_type_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[2]\,
      Q => adc33_ds_type_0(2),
      R => \^p_0_in\
    );
\adc33_ds_type_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => clk2clk_handshake_pulse_gen_i_n_10,
      D => \slv_wdata_r_internal_reg_n_0_[3]\,
      Q => \adc33_ds_type_0_reg[3]_0\(0),
      R => \^p_0_in\
    );
clk2clk_handshake_pulse_gen_i: entity work.project_1_adc_sink_i_0_rfadc_exdes_ctrl_hshk_pls_gen
     port map (
      E(0) => clk2clk_handshake_pulse_gen_i_n_3,
      SR(0) => \^p_0_in\,
      \adc30_ds_enable_0_reg[0]\ => \adc30_ds_enable_0_reg[0]_0\,
      \adc30_ds_type_0_reg[0]\ => \adc30_ds_type_0_reg[0]_0\,
      \adc31_ds_control_0_reg[0]\ => \adc31_ds_control_0_reg[0]_0\,
      \adc32_ds_control_0_reg[0]\ => \adc32_ds_control_0_reg[0]_0\,
      \adc32_ds_enable_0_reg[0]\ => \adc32_ds_enable_0_reg[0]_0\,
      \adc32_ds_inc_0_reg[0]\ => \adc32_ds_inc_0_reg[0]_0\,
      \adc32_ds_type_0_reg[0]\ => \adc32_ds_type_0_reg[0]_0\,
      \adc33_ds_inc_0_reg[0]\ => \adc33_ds_inc_0_reg[0]_0\,
      \adc33_ds_type_0_reg[0]\ => \adc33_ds_type_0_reg[0]_0\,
      adc3axi_map_wready => adc3axi_map_wready,
      adc3slv_rden => adc3slv_rden,
      clk2_valid_pulse_reg_0 => slv_wren_clk2,
      clk2_valid_pulse_reg_1(0) => clk2clk_handshake_pulse_gen_i_n_4,
      clk2_valid_pulse_reg_2(0) => clk2clk_handshake_pulse_gen_i_n_5,
      clk2_valid_pulse_reg_3(0) => clk2clk_handshake_pulse_gen_i_n_6,
      clk2_valid_pulse_reg_4(0) => clk2clk_handshake_pulse_gen_i_n_7,
      clk2_valid_pulse_reg_5(0) => clk2clk_handshake_pulse_gen_i_n_8,
      clk2_valid_pulse_reg_6(0) => clk2clk_handshake_pulse_gen_i_n_9,
      clk2_valid_pulse_reg_7(0) => clk2clk_handshake_pulse_gen_i_n_10,
      clk2_valid_pulse_reg_8(0) => clk2clk_handshake_pulse_gen_i_n_11,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wvalid => s_axi_wvalid,
      slv_access_valid_hold_reg => \^slv_rden_r\,
      slv_wren_done_pulse => slv_wren_done_pulse,
      src_in => slv_access_valid_hold,
      \syncstages_ff_reg[4]\ => clk2clk_handshake_pulse_gen_i_n_12
    );
slv_access_valid_hold_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk2clk_handshake_pulse_gen_i_n_12,
      Q => slv_access_valid_hold,
      R => \^p_0_in\
    );
\slv_rdata[0]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc30_ds_control_0(0),
      I1 => adc30_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc30_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc30_ds_enable_0(0),
      O => \slv_rdata[0]_i_4__2_n_0\
    );
\slv_rdata[0]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc31_ds_control_0(0),
      I1 => adc31_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc31_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc31_ds_enable_0(0),
      O => \slv_rdata[0]_i_5__2_n_0\
    );
\slv_rdata[0]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc32_ds_control_0(0),
      I1 => adc32_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc32_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc32_ds_enable_0(0),
      O => \slv_rdata[0]_i_6__2_n_0\
    );
\slv_rdata[0]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc33_ds_control_0(0),
      I1 => adc33_ds_type_0(0),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc33_ds_inc_0(0),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc33_ds_enable_0(0),
      O => \slv_rdata[0]_i_7__2_n_0\
    );
\slv_rdata[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0FFCCAAF000CC"
    )
        port map (
      I0 => adc33_ds_inc_0(10),
      I1 => adc30_ds_inc_0(10),
      I2 => adc32_ds_inc_0(10),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc31_ds_inc_0(10),
      O => \slv_rdata[10]_i_1__0_n_0\
    );
\slv_rdata[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0CCFFAAF0CC00"
    )
        port map (
      I0 => adc33_ds_inc_0(11),
      I1 => adc32_ds_inc_0(11),
      I2 => adc31_ds_inc_0(11),
      I3 => \slv_rdata_reg[9]_1\(3),
      I4 => \slv_rdata_reg[9]_1\(2),
      I5 => adc30_ds_inc_0(11),
      O => \slv_rdata[11]_i_1__1_n_0\
    );
\slv_rdata[1]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc30_ds_control_0(1),
      I1 => adc30_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc30_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc30_ds_enable_0(1),
      O => \slv_rdata[1]_i_4__2_n_0\
    );
\slv_rdata[1]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc31_ds_control_0(1),
      I1 => adc31_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc31_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc31_ds_enable_0(1),
      O => \slv_rdata[1]_i_5__2_n_0\
    );
\slv_rdata[1]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc32_ds_control_0(1),
      I1 => adc32_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc32_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc32_ds_enable_0(1),
      O => \slv_rdata[1]_i_6__2_n_0\
    );
\slv_rdata[1]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => adc33_ds_control_0(1),
      I1 => adc33_ds_type_0(1),
      I2 => \slv_rdata_reg[9]_1\(1),
      I3 => adc33_ds_inc_0(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc33_ds_enable_0(1),
      O => \slv_rdata[1]_i_7__2_n_0\
    );
\slv_rdata[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF550F33"
    )
        port map (
      I0 => adc33_ds_inc_0(2),
      I1 => adc33_ds_enable_0(2),
      I2 => adc33_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => \slv_rdata_reg[2]_2\,
      O => \adc33_ds_inc_0_reg[2]_0\
    );
\slv_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC440C00CC440CCC"
    )
        port map (
      I0 => adc31_ds_inc_0(2),
      I1 => \slv_rdata_reg[2]_1\,
      I2 => adc31_ds_type_0(2),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => \slv_rdata_reg[9]_1\(0),
      I5 => adc31_ds_enable_0(2),
      O => \adc31_ds_inc_0_reg[2]_0\
    );
\slv_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \slv_rdata_reg[3]_3\,
      I1 => \slv_rdata[3]_i_2__0_n_0\,
      I2 => \slv_rdata[3]_i_3__0_n_0\,
      I3 => \slv_rdata_reg[3]_4\,
      I4 => \slv_rdata[3]_i_5__2_n_0\,
      O => \slv_rdata[3]_i_1_n_0\
    );
\slv_rdata[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => adc30_ds_enable_0(3),
      I1 => \slv_rdata_reg[9]_1\(0),
      I2 => adc30_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => adc30_ds_type_0(3),
      I5 => \slv_rdata_reg[3]_1\,
      O => \slv_rdata[3]_i_2__0_n_0\
    );
\slv_rdata[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => adc31_ds_enable_0(3),
      I1 => \slv_rdata_reg[9]_1\(0),
      I2 => adc31_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => adc31_ds_type_0(3),
      I5 => \slv_rdata_reg[2]_1\,
      O => \slv_rdata[3]_i_3__0_n_0\
    );
\slv_rdata[3]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => adc32_ds_enable_0(3),
      I1 => \slv_rdata_reg[9]_1\(0),
      I2 => adc32_ds_inc_0(3),
      I3 => \slv_rdata_reg[9]_1\(1),
      I4 => adc32_ds_type_0(3),
      I5 => \slv_rdata_reg[3]_2\,
      O => \slv_rdata[3]_i_5__2_n_0\
    );
\slv_rdata[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0FFCCAAF000CC"
    )
        port map (
      I0 => adc33_ds_inc_0(9),
      I1 => adc30_ds_inc_0(9),
      I2 => adc32_ds_inc_0(9),
      I3 => \slv_rdata_reg[9]_1\(2),
      I4 => \slv_rdata_reg[9]_1\(3),
      I5 => adc31_ds_inc_0(9),
      O => \slv_rdata[9]_i_1__0_n_0\
    );
\slv_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[0]_i_1__1_n_0\,
      Q => \slv_rdata_reg[0]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[0]_i_1__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[0]_i_2__1_n_0\,
      I1 => \slv_rdata_reg[0]_i_3__1_n_0\,
      O => \slv_rdata_reg[0]_i_1__1_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[0]_i_2__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_4__2_n_0\,
      I1 => \slv_rdata[0]_i_5__2_n_0\,
      O => \slv_rdata_reg[0]_i_2__1_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[0]_i_3__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[0]_i_6__2_n_0\,
      I1 => \slv_rdata[0]_i_7__2_n_0\,
      O => \slv_rdata_reg[0]_i_3__1_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[10]_i_1__0_n_0\,
      Q => \slv_rdata_reg[10]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[11]_i_1__1_n_0\,
      Q => \slv_rdata_reg[11]_0\,
      R => \slv_rdata_reg[9]_2\
    );
\slv_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[1]_i_1__1_n_0\,
      Q => \slv_rdata_reg[1]_0\,
      R => \slv_rdata_reg[0]_1\
    );
\slv_rdata_reg[1]_i_1__1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \slv_rdata_reg[1]_i_2__1_n_0\,
      I1 => \slv_rdata_reg[1]_i_3__1_n_0\,
      O => \slv_rdata_reg[1]_i_1__1_n_0\,
      S => \slv_rdata_reg[9]_1\(3)
    );
\slv_rdata_reg[1]_i_2__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_4__2_n_0\,
      I1 => \slv_rdata[1]_i_5__2_n_0\,
      O => \slv_rdata_reg[1]_i_2__1_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[1]_i_3__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \slv_rdata[1]_i_6__2_n_0\,
      I1 => \slv_rdata[1]_i_7__2_n_0\,
      O => \slv_rdata_reg[1]_i_3__1_n_0\,
      S => \slv_rdata_reg[9]_1\(2)
    );
\slv_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[2]_4\,
      Q => \slv_rdata_reg[2]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[3]_i_1_n_0\,
      Q => \slv_rdata_reg[3]_0\(0),
      R => '0'
    );
\slv_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[4]_1\,
      Q => \slv_rdata_reg[4]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[5]_1\,
      Q => \slv_rdata_reg[5]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[6]_1\,
      Q => \slv_rdata_reg[6]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[7]_1\,
      Q => \slv_rdata_reg[7]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata_reg[8]_1\,
      Q => \slv_rdata_reg[8]_0\,
      R => \slv_rdata_reg[2]_3\
    );
\slv_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => s_axi_aresetn,
      D => \slv_rdata[9]_i_1__0_n_0\,
      Q => \slv_rdata_reg[9]_0\,
      R => \slv_rdata_reg[9]_2\
    );
slv_rden_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => adc3slv_rden,
      Q => \^slv_rden_r\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \slv_wdata_r_internal_reg_n_0_[0]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \slv_wdata_r_internal_reg_n_0_[10]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \slv_wdata_r_internal_reg_n_0_[11]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \slv_wdata_r_internal_reg_n_0_[1]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \slv_wdata_r_internal_reg_n_0_[2]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \slv_wdata_r_internal_reg_n_0_[3]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \slv_wdata_r_internal_reg_n_0_[4]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \slv_wdata_r_internal_reg_n_0_[5]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \slv_wdata_r_internal_reg_n_0_[6]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \slv_wdata_r_internal_reg_n_0_[7]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \slv_wdata_r_internal_reg_n_0_[8]\,
      R => \^p_0_in\
    );
\slv_wdata_r_internal_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \slv_wdata_r_internal_reg_n_0_[9]\,
      R => \^p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_rfadc_exdes_ctrl is
  port (
    axi_wr_access_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    adc00_ds_pulse_control_0 : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_bvalid_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable_reg : out STD_LOGIC;
    s00_tready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s0_axis_clock : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    done_flag : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    dest_out : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    error_flag : in STD_LOGIC;
    s00_ds_status : in STD_LOGIC;
    dest_rst : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_rfadc_exdes_ctrl : entity is "rfadc_exdes_ctrl";
end project_1_adc_sink_i_0_rfadc_exdes_ctrl;

architecture STRUCTURE of project_1_adc_sink_i_0_rfadc_exdes_ctrl is
  signal adc00_ds_control_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal adc00_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc01_ds_inc_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc01_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc02_ds_inc_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc02_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc03_ds_inc_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal adc03_ds_type_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal adc0_rfadc_exdes_ctrl_axi_i_n_13 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_14 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_15 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_16 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_17 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_18 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_19 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_20 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_21 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_22 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_23 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_24 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_25 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_26 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_27 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_28 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_29 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_30 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_32 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_4 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_5 : STD_LOGIC;
  signal adc0_rfadc_exdes_ctrl_axi_i_n_6 : STD_LOGIC;
  signal adc0axi_map_wready : STD_LOGIC;
  signal adc0slv_rden : STD_LOGIC;
  signal adc10_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc10_ds_inc_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc10_ds_type_0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal adc11_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc11_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal adc12_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc12_ds_inc_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc13_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc13_ds_inc_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc1_rfadc_exdes_ctrl_axi_i_n_21 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_26 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_27 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_32 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_33 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_44 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_45 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_46 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_47 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_48 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_49 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_50 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_51 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_52 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_53 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_54 : STD_LOGIC;
  signal adc1_rfadc_exdes_ctrl_axi_i_n_55 : STD_LOGIC;
  signal adc1axi_map_wready : STD_LOGIC;
  signal adc1slv_rden : STD_LOGIC;
  signal adc20_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc20_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal adc20_ds_type_0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal adc21_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc21_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal adc22_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc22_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal adc22_ds_type_0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal adc23_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc23_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal adc2_rfadc_exdes_ctrl_axi_i_n_24 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_25 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_30 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_35 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_48 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_49 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_50 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_51 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_52 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_53 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_54 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_55 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_56 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_57 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_58 : STD_LOGIC;
  signal adc2_rfadc_exdes_ctrl_axi_i_n_59 : STD_LOGIC;
  signal adc2axi_map_wready : STD_LOGIC;
  signal adc2slv_rden : STD_LOGIC;
  signal adc30_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc30_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal adc30_ds_type_0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal adc31_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal adc31_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal adc32_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal adc32_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal adc32_ds_type_0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal adc33_ds_enable_0 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal adc33_ds_inc_0 : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal adc33_ds_type_0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal adc3_rfadc_exdes_ctrl_axi_i_n_43 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_44 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_51 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_52 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_53 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_54 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_55 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_56 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_57 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_58 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_59 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_60 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_61 : STD_LOGIC;
  signal adc3_rfadc_exdes_ctrl_axi_i_n_62 : STD_LOGIC;
  signal adc3axi_map_wready : STD_LOGIC;
  signal adc3slv_rden : STD_LOGIC;
  signal adc_ds_axi_map_wready : STD_LOGIC;
  signal adc_ds_slv_rden : STD_LOGIC;
  signal axi_register_if_i_n_100 : STD_LOGIC;
  signal axi_register_if_i_n_101 : STD_LOGIC;
  signal axi_register_if_i_n_102 : STD_LOGIC;
  signal axi_register_if_i_n_103 : STD_LOGIC;
  signal axi_register_if_i_n_104 : STD_LOGIC;
  signal axi_register_if_i_n_105 : STD_LOGIC;
  signal axi_register_if_i_n_106 : STD_LOGIC;
  signal axi_register_if_i_n_107 : STD_LOGIC;
  signal axi_register_if_i_n_108 : STD_LOGIC;
  signal axi_register_if_i_n_109 : STD_LOGIC;
  signal axi_register_if_i_n_110 : STD_LOGIC;
  signal axi_register_if_i_n_111 : STD_LOGIC;
  signal axi_register_if_i_n_112 : STD_LOGIC;
  signal axi_register_if_i_n_113 : STD_LOGIC;
  signal axi_register_if_i_n_114 : STD_LOGIC;
  signal axi_register_if_i_n_115 : STD_LOGIC;
  signal axi_register_if_i_n_17 : STD_LOGIC;
  signal axi_register_if_i_n_18 : STD_LOGIC;
  signal axi_register_if_i_n_19 : STD_LOGIC;
  signal axi_register_if_i_n_20 : STD_LOGIC;
  signal axi_register_if_i_n_21 : STD_LOGIC;
  signal axi_register_if_i_n_22 : STD_LOGIC;
  signal axi_register_if_i_n_23 : STD_LOGIC;
  signal axi_register_if_i_n_24 : STD_LOGIC;
  signal axi_register_if_i_n_25 : STD_LOGIC;
  signal axi_register_if_i_n_26 : STD_LOGIC;
  signal axi_register_if_i_n_27 : STD_LOGIC;
  signal axi_register_if_i_n_28 : STD_LOGIC;
  signal axi_register_if_i_n_29 : STD_LOGIC;
  signal axi_register_if_i_n_31 : STD_LOGIC;
  signal axi_register_if_i_n_32 : STD_LOGIC;
  signal axi_register_if_i_n_33 : STD_LOGIC;
  signal axi_register_if_i_n_34 : STD_LOGIC;
  signal axi_register_if_i_n_35 : STD_LOGIC;
  signal axi_register_if_i_n_38 : STD_LOGIC;
  signal axi_register_if_i_n_39 : STD_LOGIC;
  signal axi_register_if_i_n_40 : STD_LOGIC;
  signal axi_register_if_i_n_41 : STD_LOGIC;
  signal axi_register_if_i_n_42 : STD_LOGIC;
  signal axi_register_if_i_n_43 : STD_LOGIC;
  signal axi_register_if_i_n_44 : STD_LOGIC;
  signal axi_register_if_i_n_45 : STD_LOGIC;
  signal axi_register_if_i_n_46 : STD_LOGIC;
  signal axi_register_if_i_n_47 : STD_LOGIC;
  signal axi_register_if_i_n_48 : STD_LOGIC;
  signal axi_register_if_i_n_49 : STD_LOGIC;
  signal axi_register_if_i_n_50 : STD_LOGIC;
  signal axi_register_if_i_n_51 : STD_LOGIC;
  signal axi_register_if_i_n_52 : STD_LOGIC;
  signal axi_register_if_i_n_53 : STD_LOGIC;
  signal axi_register_if_i_n_54 : STD_LOGIC;
  signal axi_register_if_i_n_55 : STD_LOGIC;
  signal axi_register_if_i_n_56 : STD_LOGIC;
  signal axi_register_if_i_n_57 : STD_LOGIC;
  signal axi_register_if_i_n_58 : STD_LOGIC;
  signal axi_register_if_i_n_59 : STD_LOGIC;
  signal axi_register_if_i_n_60 : STD_LOGIC;
  signal axi_register_if_i_n_61 : STD_LOGIC;
  signal axi_register_if_i_n_62 : STD_LOGIC;
  signal axi_register_if_i_n_63 : STD_LOGIC;
  signal axi_register_if_i_n_64 : STD_LOGIC;
  signal axi_register_if_i_n_65 : STD_LOGIC;
  signal axi_register_if_i_n_66 : STD_LOGIC;
  signal axi_register_if_i_n_67 : STD_LOGIC;
  signal axi_register_if_i_n_68 : STD_LOGIC;
  signal axi_register_if_i_n_69 : STD_LOGIC;
  signal axi_register_if_i_n_70 : STD_LOGIC;
  signal axi_register_if_i_n_71 : STD_LOGIC;
  signal axi_register_if_i_n_72 : STD_LOGIC;
  signal axi_register_if_i_n_73 : STD_LOGIC;
  signal axi_register_if_i_n_74 : STD_LOGIC;
  signal axi_register_if_i_n_75 : STD_LOGIC;
  signal axi_register_if_i_n_76 : STD_LOGIC;
  signal axi_register_if_i_n_77 : STD_LOGIC;
  signal axi_register_if_i_n_78 : STD_LOGIC;
  signal axi_register_if_i_n_79 : STD_LOGIC;
  signal axi_register_if_i_n_80 : STD_LOGIC;
  signal axi_register_if_i_n_81 : STD_LOGIC;
  signal axi_register_if_i_n_82 : STD_LOGIC;
  signal axi_register_if_i_n_83 : STD_LOGIC;
  signal axi_register_if_i_n_84 : STD_LOGIC;
  signal axi_register_if_i_n_85 : STD_LOGIC;
  signal axi_register_if_i_n_86 : STD_LOGIC;
  signal axi_register_if_i_n_87 : STD_LOGIC;
  signal axi_register_if_i_n_88 : STD_LOGIC;
  signal axi_register_if_i_n_89 : STD_LOGIC;
  signal axi_register_if_i_n_90 : STD_LOGIC;
  signal axi_register_if_i_n_91 : STD_LOGIC;
  signal axi_register_if_i_n_92 : STD_LOGIC;
  signal axi_register_if_i_n_93 : STD_LOGIC;
  signal axi_register_if_i_n_94 : STD_LOGIC;
  signal axi_register_if_i_n_95 : STD_LOGIC;
  signal axi_register_if_i_n_96 : STD_LOGIC;
  signal axi_register_if_i_n_97 : STD_LOGIC;
  signal axi_register_if_i_n_98 : STD_LOGIC;
  signal axi_register_if_i_n_99 : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal s00_ds_inc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slv_addr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal slv_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal slv_rden_r : STD_LOGIC;
  signal slv_rden_r_0 : STD_LOGIC;
  signal slv_rden_r_3 : STD_LOGIC;
  signal slv_rden_r_5 : STD_LOGIC;
  signal slv_wren_clk2 : STD_LOGIC;
  signal slv_wren_clk2_1 : STD_LOGIC;
  signal slv_wren_clk2_4 : STD_LOGIC;
  signal slv_wren_clk2_6 : STD_LOGIC;
  signal slv_wren_done_pulse : STD_LOGIC;
  signal slv_wren_done_pulse_2 : STD_LOGIC;
  signal slv_wren_done_pulse_7 : STD_LOGIC;
  signal timeout_enable : STD_LOGIC;
  signal timeout_value : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
adc0_rfadc_exdes_ctrl_axi_i: entity work.project_1_adc_sink_i_0_adc0_rfadc_exdes_ctrl_axi
     port map (
      D(3) => axi_register_if_i_n_86,
      D(2) => axi_register_if_i_n_87,
      D(1) => axi_register_if_i_n_88,
      D(0) => axi_register_if_i_n_89,
      E(0) => axi_register_if_i_n_105,
      Q(0) => axi_register_if_i_n_17,
      \adc00_ds_control_0_reg[0]_0\(0) => axi_register_if_i_n_41,
      \adc00_ds_control_0_reg[1]_0\(0) => adc00_ds_control_0(1),
      \adc00_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_68,
      \adc00_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_81,
      \adc00_ds_inc_0_reg[7]_0\(7 downto 0) => s00_ds_inc(7 downto 0),
      adc00_ds_pulse_control_0 => adc00_ds_pulse_control_0,
      adc00_ds_pulse_control_0_reg_0 => axi_register_if_i_n_67,
      \adc00_ds_type_0_reg[3]_0\(3 downto 0) => adc00_ds_type_0(3 downto 0),
      \adc00_ds_type_0_reg[3]_1\ => axi_register_if_i_n_85,
      \adc01_ds_control_0_reg[0]_0\ => axi_register_if_i_n_101,
      \adc01_ds_control_0_reg[1]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_29,
      \adc01_ds_enable_0_reg[7]_0\(0) => axi_register_if_i_n_100,
      \adc01_ds_inc_0_reg[0]_0\(0) => axi_register_if_i_n_43,
      \adc01_ds_inc_0_reg[1]_0\(1 downto 0) => adc01_ds_inc_0(1 downto 0),
      \adc01_ds_inc_0_reg[2]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_27,
      \adc01_ds_inc_0_reg[3]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_25,
      \adc01_ds_inc_0_reg[4]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_22,
      \adc01_ds_inc_0_reg[5]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_21,
      \adc01_ds_inc_0_reg[6]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_19,
      \adc01_ds_inc_0_reg[7]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_17,
      \adc01_ds_type_0_reg[3]_0\(3 downto 0) => adc01_ds_type_0(3 downto 0),
      \adc01_ds_type_0_reg[3]_1\(0) => axi_register_if_i_n_96,
      \adc02_ds_control_0_reg[0]_0\ => axi_register_if_i_n_91,
      \adc02_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_92,
      \adc02_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_70,
      \adc02_ds_inc_0_reg[1]_0\(1 downto 0) => adc02_ds_inc_0(1 downto 0),
      \adc02_ds_type_0_reg[0]_0\ => axi_register_if_i_n_69,
      \adc02_ds_type_0_reg[3]_0\(3 downto 0) => adc02_ds_type_0(3 downto 0),
      \adc03_ds_control_0_reg[0]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_30,
      \adc03_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_74,
      \adc03_ds_enable_0_reg[0]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_32,
      \adc03_ds_enable_0_reg[0]_1\(0) => axi_register_if_i_n_29,
      \adc03_ds_enable_0_reg[1]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_28,
      \adc03_ds_enable_0_reg[2]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_26,
      \adc03_ds_enable_0_reg[3]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_24,
      \adc03_ds_enable_0_reg[4]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_23,
      \adc03_ds_enable_0_reg[5]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_20,
      \adc03_ds_enable_0_reg[6]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_18,
      \adc03_ds_enable_0_reg[7]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_16,
      \adc03_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_103,
      \adc03_ds_inc_0_reg[10]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_13,
      \adc03_ds_inc_0_reg[11]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_6,
      \adc03_ds_inc_0_reg[1]_0\(1 downto 0) => adc03_ds_inc_0(1 downto 0),
      \adc03_ds_inc_0_reg[8]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_15,
      \adc03_ds_inc_0_reg[9]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_14,
      \adc03_ds_type_0_reg[0]_0\ => axi_register_if_i_n_102,
      \adc03_ds_type_0_reg[3]_0\(3 downto 0) => adc03_ds_type_0(3 downto 0),
      adc0axi_map_wready => adc0axi_map_wready,
      adc0slv_rden => adc0slv_rden,
      adc_ds_slv_rden => adc_ds_slv_rden,
      clk2_valid_pulse_reg => adc0_rfadc_exdes_ctrl_axi_i_n_5,
      dest_rst => dest_rst,
      p_0_in => p_0_in,
      s00_tready => s00_tready,
      s0_axis_clock => s0_axis_clock,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      slv_rdata(15 downto 0) => slv_rdata(15 downto 0),
      \slv_rdata_reg[0]_0\ => axi_register_if_i_n_50,
      \slv_rdata_reg[0]_1\ => axi_register_if_i_n_21,
      \slv_rdata_reg[12]_0\(5) => p_0_in0,
      \slv_rdata_reg[12]_0\(4) => axi_register_if_i_n_31,
      \slv_rdata_reg[12]_0\(3) => axi_register_if_i_n_32,
      \slv_rdata_reg[12]_0\(2) => axi_register_if_i_n_33,
      \slv_rdata_reg[12]_0\(1) => axi_register_if_i_n_34,
      \slv_rdata_reg[12]_0\(0) => axi_register_if_i_n_35,
      \slv_rdata_reg[12]_1\ => axi_register_if_i_n_112,
      \slv_rdata_reg[12]_2\ => axi_register_if_i_n_90,
      \slv_rdata_reg[13]_0\ => axi_register_if_i_n_111,
      \slv_rdata_reg[14]_0\ => axi_register_if_i_n_110,
      \slv_rdata_reg[15]_0\ => axi_register_if_i_n_109,
      \slv_rdata_reg[1]_0\ => axi_register_if_i_n_22,
      \slv_rdata_reg[2]_0\ => axi_register_if_i_n_49,
      \slv_rdata_reg[2]_1\ => axi_register_if_i_n_23,
      \slv_rdata_reg[3]_0\ => axi_register_if_i_n_24,
      \slv_rdata_reg[4]_0\ => axi_register_if_i_n_25,
      \slv_rdata_reg[5]_0\ => axi_register_if_i_n_26,
      \slv_rdata_reg[6]_0\ => axi_register_if_i_n_27,
      \slv_rdata_reg[7]_0\ => axi_register_if_i_n_28,
      slv_rden_r => slv_rden_r,
      slv_rden_r_reg_0 => adc0_rfadc_exdes_ctrl_axi_i_n_4,
      slv_wren_clk2 => slv_wren_clk2,
      slv_wren_done_pulse => slv_wren_done_pulse
    );
adc1_rfadc_exdes_ctrl_axi_i: entity work.project_1_adc_sink_i_0_adc1_rfadc_exdes_ctrl_axi
     port map (
      E(0) => axi_register_if_i_n_106,
      Q(3 downto 0) => adc13_ds_inc_0(7 downto 4),
      \adc10_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_75,
      \adc10_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_68,
      \adc10_ds_enable_0_reg[7]_0\(4 downto 1) => adc10_ds_enable_0(7 downto 4),
      \adc10_ds_enable_0_reg[7]_0\(0) => adc10_ds_enable_0(2),
      \adc10_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_82,
      \adc10_ds_inc_0_reg[7]_0\(4 downto 1) => adc10_ds_inc_0(7 downto 4),
      \adc10_ds_inc_0_reg[7]_0\(0) => adc10_ds_inc_0(2),
      \adc10_ds_type_0_reg[0]_0\ => axi_register_if_i_n_85,
      \adc10_ds_type_0_reg[2]_0\(0) => adc10_ds_type_0(2),
      \adc11_ds_control_0_reg[0]_0\ => axi_register_if_i_n_101,
      \adc11_ds_enable_0_reg[2]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_27,
      \adc11_ds_enable_0_reg[7]_0\(3 downto 0) => adc11_ds_enable_0(7 downto 4),
      \adc11_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_99,
      \adc11_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_78,
      \adc11_ds_inc_0_reg[8]_0\(4 downto 0) => adc11_ds_inc_0(8 downto 4),
      \adc11_ds_type_0_reg[3]_0\(0) => axi_register_if_i_n_95,
      \adc12_ds_control_0_reg[0]_0\ => axi_register_if_i_n_91,
      \adc12_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_92,
      \adc12_ds_enable_0_reg[2]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_21,
      \adc12_ds_enable_0_reg[7]_0\(3 downto 0) => adc12_ds_enable_0(7 downto 4),
      \adc12_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_70,
      \adc12_ds_inc_0_reg[7]_0\(3 downto 0) => adc12_ds_inc_0(7 downto 4),
      \adc12_ds_type_0_reg[0]_0\ => axi_register_if_i_n_69,
      \adc13_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_73,
      \adc13_ds_enable_0_reg[7]_0\(3 downto 0) => adc13_ds_enable_0(7 downto 4),
      \adc13_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_66,
      \adc13_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_103,
      \adc13_ds_inc_0_reg[2]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_33,
      \adc13_ds_inc_0_reg[8]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_32,
      \adc13_ds_type_0_reg[0]_0\ => axi_register_if_i_n_102,
      adc1axi_map_wready => adc1axi_map_wready,
      adc1slv_rden => adc1slv_rden,
      adc_ds_axi_map_wready => adc_ds_axi_map_wready,
      clk1_ready_pulse_reg => adc1_rfadc_exdes_ctrl_axi_i_n_26,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \slv_rdata_reg[0]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_46,
      \slv_rdata_reg[0]_1\ => axi_register_if_i_n_40,
      \slv_rdata_reg[10]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_54,
      \slv_rdata_reg[11]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_53,
      \slv_rdata_reg[1]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_45,
      \slv_rdata_reg[2]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_52,
      \slv_rdata_reg[2]_1\ => axi_register_if_i_n_113,
      \slv_rdata_reg[2]_2\ => axi_register_if_i_n_48,
      \slv_rdata_reg[2]_3\ => axi_register_if_i_n_38,
      \slv_rdata_reg[2]_4\ => axi_register_if_i_n_50,
      \slv_rdata_reg[2]_5\ => axi_register_if_i_n_20,
      \slv_rdata_reg[3]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_44,
      \slv_rdata_reg[4]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_51,
      \slv_rdata_reg[4]_1\ => axi_register_if_i_n_59,
      \slv_rdata_reg[5]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_50,
      \slv_rdata_reg[5]_1\ => axi_register_if_i_n_60,
      \slv_rdata_reg[6]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_49,
      \slv_rdata_reg[6]_1\ => axi_register_if_i_n_61,
      \slv_rdata_reg[7]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_48,
      \slv_rdata_reg[7]_1\ => axi_register_if_i_n_62,
      \slv_rdata_reg[8]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_47,
      \slv_rdata_reg[8]_1\ => axi_register_if_i_n_47,
      \slv_rdata_reg[9]_0\ => adc1_rfadc_exdes_ctrl_axi_i_n_55,
      \slv_rdata_reg[9]_1\(3) => axi_register_if_i_n_32,
      \slv_rdata_reg[9]_1\(2) => axi_register_if_i_n_33,
      \slv_rdata_reg[9]_1\(1 downto 0) => slv_addr(3 downto 2),
      \slv_rdata_reg[9]_2\ => axi_register_if_i_n_44,
      slv_rden_r => slv_rden_r_0,
      slv_wren_clk2 => slv_wren_clk2_1,
      slv_wren_done_pulse => slv_wren_done_pulse_2
    );
adc2_rfadc_exdes_ctrl_axi_i: entity work.project_1_adc_sink_i_0_adc2_rfadc_exdes_ctrl_axi
     port map (
      E(0) => axi_register_if_i_n_107,
      Q(4 downto 0) => adc23_ds_inc_0(8 downto 4),
      \adc20_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_76,
      \adc20_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_68,
      \adc20_ds_enable_0_reg[7]_0\(4 downto 1) => adc20_ds_enable_0(7 downto 4),
      \adc20_ds_enable_0_reg[7]_0\(0) => adc20_ds_enable_0(2),
      \adc20_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_83,
      \adc20_ds_inc_0_reg[8]_0\(5 downto 1) => adc20_ds_inc_0(8 downto 4),
      \adc20_ds_inc_0_reg[8]_0\(0) => adc20_ds_inc_0(2),
      \adc20_ds_type_0_reg[0]_0\ => axi_register_if_i_n_85,
      \adc20_ds_type_0_reg[2]_0\(0) => adc20_ds_type_0(2),
      \adc21_ds_control_0_reg[0]_0\ => axi_register_if_i_n_101,
      \adc21_ds_enable_0_reg[7]_0\(3 downto 0) => adc21_ds_enable_0(7 downto 4),
      \adc21_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_98,
      \adc21_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_79,
      \adc21_ds_inc_0_reg[2]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_25,
      \adc21_ds_inc_0_reg[8]_0\(4 downto 0) => adc21_ds_inc_0(8 downto 4),
      \adc21_ds_type_0_reg[3]_0\(0) => axi_register_if_i_n_94,
      \adc22_ds_control_0_reg[0]_0\ => axi_register_if_i_n_91,
      \adc22_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_92,
      \adc22_ds_enable_0_reg[7]_0\(4 downto 1) => adc22_ds_enable_0(7 downto 4),
      \adc22_ds_enable_0_reg[7]_0\(0) => adc22_ds_enable_0(2),
      \adc22_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_70,
      \adc22_ds_inc_0_reg[8]_0\(5 downto 1) => adc22_ds_inc_0(8 downto 4),
      \adc22_ds_inc_0_reg[8]_0\(0) => adc22_ds_inc_0(2),
      \adc22_ds_type_0_reg[0]_0\ => axi_register_if_i_n_69,
      \adc22_ds_type_0_reg[2]_0\(0) => adc22_ds_type_0(2),
      \adc23_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_72,
      \adc23_ds_enable_0_reg[7]_0\(3 downto 0) => adc23_ds_enable_0(7 downto 4),
      \adc23_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_65,
      \adc23_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_103,
      \adc23_ds_inc_0_reg[2]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_30,
      \adc23_ds_type_0_reg[0]_0\ => axi_register_if_i_n_102,
      adc2axi_map_wready => adc2axi_map_wready,
      adc2slv_rden => adc2slv_rden,
      \axi_rresp[1]_i_2\(0) => axi_register_if_i_n_17,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \slv_rdata_reg[0]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_50,
      \slv_rdata_reg[0]_1\ => axi_register_if_i_n_40,
      \slv_rdata_reg[10]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_58,
      \slv_rdata_reg[11]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_57,
      \slv_rdata_reg[1]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_49,
      \slv_rdata_reg[2]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_56,
      \slv_rdata_reg[2]_1\ => axi_register_if_i_n_48,
      \slv_rdata_reg[2]_2\ => axi_register_if_i_n_38,
      \slv_rdata_reg[2]_3\ => axi_register_if_i_n_50,
      \slv_rdata_reg[2]_4\ => axi_register_if_i_n_19,
      \slv_rdata_reg[3]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_48,
      \slv_rdata_reg[4]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_55,
      \slv_rdata_reg[4]_1\ => axi_register_if_i_n_55,
      \slv_rdata_reg[5]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_54,
      \slv_rdata_reg[5]_1\ => axi_register_if_i_n_56,
      \slv_rdata_reg[6]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_53,
      \slv_rdata_reg[6]_1\ => axi_register_if_i_n_57,
      \slv_rdata_reg[7]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_52,
      \slv_rdata_reg[7]_1\ => axi_register_if_i_n_58,
      \slv_rdata_reg[8]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_51,
      \slv_rdata_reg[8]_1\ => axi_register_if_i_n_46,
      \slv_rdata_reg[9]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_59,
      \slv_rdata_reg[9]_1\(3) => axi_register_if_i_n_32,
      \slv_rdata_reg[9]_1\(2) => axi_register_if_i_n_33,
      \slv_rdata_reg[9]_1\(1 downto 0) => slv_addr(3 downto 2),
      \slv_rdata_reg[9]_2\ => axi_register_if_i_n_44,
      slv_rden_r => slv_rden_r_3,
      slv_rden_r_0 => slv_rden_r_0,
      slv_rden_r_2 => slv_rden_r_5,
      slv_rden_r_4 => slv_rden_r,
      slv_rden_r_reg_0 => adc2_rfadc_exdes_ctrl_axi_i_n_24,
      slv_rden_r_reg_1 => adc2_rfadc_exdes_ctrl_axi_i_n_35,
      slv_wren_clk2 => slv_wren_clk2_4,
      slv_wren_done_pulse => slv_wren_done_pulse_2,
      slv_wren_done_pulse_1 => slv_wren_done_pulse_7,
      slv_wren_done_pulse_3 => slv_wren_done_pulse
    );
adc3_rfadc_exdes_ctrl_axi_i: entity work.project_1_adc_sink_i_0_adc3_rfadc_exdes_ctrl_axi
     port map (
      E(0) => axi_register_if_i_n_108,
      Q(4 downto 1) => adc30_ds_enable_0(7 downto 4),
      Q(0) => adc30_ds_enable_0(2),
      \adc30_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_77,
      \adc30_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_68,
      \adc30_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_84,
      \adc30_ds_inc_0_reg[8]_0\(5 downto 1) => adc30_ds_inc_0(8 downto 4),
      \adc30_ds_inc_0_reg[8]_0\(0) => adc30_ds_inc_0(2),
      \adc30_ds_type_0_reg[0]_0\ => axi_register_if_i_n_85,
      \adc30_ds_type_0_reg[2]_0\(0) => adc30_ds_type_0(2),
      \adc31_ds_control_0_reg[0]_0\ => axi_register_if_i_n_101,
      \adc31_ds_enable_0_reg[7]_0\(3 downto 0) => adc31_ds_enable_0(7 downto 4),
      \adc31_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_97,
      \adc31_ds_inc_0_reg[11]_0\(0) => axi_register_if_i_n_80,
      \adc31_ds_inc_0_reg[2]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_43,
      \adc31_ds_inc_0_reg[8]_0\(4 downto 0) => adc31_ds_inc_0(8 downto 4),
      \adc31_ds_type_0_reg[3]_0\(0) => axi_register_if_i_n_93,
      \adc32_ds_control_0_reg[0]_0\ => axi_register_if_i_n_91,
      \adc32_ds_enable_0_reg[0]_0\ => axi_register_if_i_n_92,
      \adc32_ds_enable_0_reg[7]_0\(4 downto 1) => adc32_ds_enable_0(7 downto 4),
      \adc32_ds_enable_0_reg[7]_0\(0) => adc32_ds_enable_0(2),
      \adc32_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_70,
      \adc32_ds_inc_0_reg[8]_0\(5 downto 1) => adc32_ds_inc_0(8 downto 4),
      \adc32_ds_inc_0_reg[8]_0\(0) => adc32_ds_inc_0(2),
      \adc32_ds_type_0_reg[0]_0\ => axi_register_if_i_n_69,
      \adc32_ds_type_0_reg[2]_0\(0) => adc32_ds_type_0(2),
      \adc33_ds_control_0_reg[1]_0\(0) => axi_register_if_i_n_71,
      \adc33_ds_enable_0_reg[7]_0\(4 downto 0) => adc33_ds_enable_0(7 downto 3),
      \adc33_ds_enable_0_reg[7]_1\(0) => axi_register_if_i_n_64,
      \adc33_ds_inc_0_reg[0]_0\ => axi_register_if_i_n_103,
      \adc33_ds_inc_0_reg[2]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_44,
      \adc33_ds_inc_0_reg[8]_0\(5 downto 0) => adc33_ds_inc_0(8 downto 3),
      \adc33_ds_type_0_reg[0]_0\ => axi_register_if_i_n_102,
      \adc33_ds_type_0_reg[3]_0\(0) => adc33_ds_type_0(3),
      adc3axi_map_wready => adc3axi_map_wready,
      adc3slv_rden => adc3slv_rden,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \slv_rdata_reg[0]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_53,
      \slv_rdata_reg[0]_1\ => axi_register_if_i_n_40,
      \slv_rdata_reg[10]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_61,
      \slv_rdata_reg[11]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_60,
      \slv_rdata_reg[1]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_52,
      \slv_rdata_reg[2]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_59,
      \slv_rdata_reg[2]_1\ => axi_register_if_i_n_48,
      \slv_rdata_reg[2]_2\ => axi_register_if_i_n_38,
      \slv_rdata_reg[2]_3\ => axi_register_if_i_n_50,
      \slv_rdata_reg[2]_4\ => axi_register_if_i_n_18,
      \slv_rdata_reg[3]_0\(0) => adc3_rfadc_exdes_ctrl_axi_i_n_51,
      \slv_rdata_reg[3]_1\ => axi_register_if_i_n_42,
      \slv_rdata_reg[3]_2\ => axi_register_if_i_n_113,
      \slv_rdata_reg[3]_3\ => axi_register_if_i_n_39,
      \slv_rdata_reg[3]_4\ => axi_register_if_i_n_104,
      \slv_rdata_reg[4]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_58,
      \slv_rdata_reg[4]_1\ => axi_register_if_i_n_51,
      \slv_rdata_reg[5]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_57,
      \slv_rdata_reg[5]_1\ => axi_register_if_i_n_52,
      \slv_rdata_reg[6]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_56,
      \slv_rdata_reg[6]_1\ => axi_register_if_i_n_53,
      \slv_rdata_reg[7]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_55,
      \slv_rdata_reg[7]_1\ => axi_register_if_i_n_54,
      \slv_rdata_reg[8]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_54,
      \slv_rdata_reg[8]_1\ => axi_register_if_i_n_45,
      \slv_rdata_reg[9]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_62,
      \slv_rdata_reg[9]_1\(3) => axi_register_if_i_n_32,
      \slv_rdata_reg[9]_1\(2) => axi_register_if_i_n_33,
      \slv_rdata_reg[9]_1\(1 downto 0) => slv_addr(3 downto 2),
      \slv_rdata_reg[9]_2\ => axi_register_if_i_n_44,
      slv_rden_r => slv_rden_r_5,
      slv_wren_clk2 => slv_wren_clk2_6,
      slv_wren_done_pulse => slv_wren_done_pulse_7
    );
adc_exdes_cfg_i: entity work.project_1_adc_sink_i_0_adc_exdes_cfg
     port map (
      E(0) => axi_register_if_i_n_63,
      Q(1 downto 0) => Q(1 downto 0),
      done_flag => done_flag,
      enable => enable,
      enable_reg_0 => enable_reg,
      enable_reg_1 => axi_register_if_i_n_114,
      p_0_in => p_0_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      timeout_enable => timeout_enable,
      timeout_enable_reg_0 => axi_register_if_i_n_115,
      \timeout_value_reg[11]_0\(11 downto 0) => timeout_value(11 downto 0)
    );
axi_register_if_i: entity work.project_1_adc_sink_i_0_rfadc_exdes_ctrl_axi
     port map (
      D(0) => D(0),
      E(0) => axi_register_if_i_n_63,
      Q(0) => axi_register_if_i_n_17,
      \adc01_ds_inc_0_reg[0]\ => adc0_rfadc_exdes_ctrl_axi_i_n_5,
      adc0axi_map_wready => adc0axi_map_wready,
      adc0slv_rden => adc0slv_rden,
      \adc10_ds_enable_0_reg[2]\ => axi_register_if_i_n_20,
      \adc11_ds_inc_0_reg[8]\ => axi_register_if_i_n_47,
      adc1axi_map_wready => adc1axi_map_wready,
      adc1slv_rden => adc1slv_rden,
      \adc22_ds_enable_0_reg[2]\ => axi_register_if_i_n_19,
      \adc22_ds_inc_0_reg[8]\ => axi_register_if_i_n_46,
      adc2axi_map_wready => adc2axi_map_wready,
      adc2slv_rden => adc2slv_rden,
      adc2slv_rden_reg_0 => adc2_rfadc_exdes_ctrl_axi_i_n_24,
      adc2slv_rden_reg_1 => adc0_rfadc_exdes_ctrl_axi_i_n_4,
      \adc31_ds_inc_0_reg[8]\ => axi_register_if_i_n_45,
      \adc32_ds_enable_0_reg[2]\ => axi_register_if_i_n_18,
      \adc33_ds_enable_0_reg[3]\ => axi_register_if_i_n_104,
      adc3axi_map_wready => adc3axi_map_wready,
      adc3slv_rden => adc3slv_rden,
      adc_ds_axi_map_wready => adc_ds_axi_map_wready,
      adc_ds_slv_rden => adc_ds_slv_rden,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      \axi_bresp_reg[1]_0\ => adc2_rfadc_exdes_ctrl_axi_i_n_35,
      \axi_bresp_reg[1]_1\ => adc1_rfadc_exdes_ctrl_axi_i_n_26,
      axi_bvalid_reg_0 => axi_bvalid_reg,
      \axi_rdata_reg[0]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_53,
      \axi_rdata_reg[0]_1\ => adc1_rfadc_exdes_ctrl_axi_i_n_46,
      \axi_rdata_reg[0]_2\ => adc2_rfadc_exdes_ctrl_axi_i_n_50,
      \axi_rdata_reg[10]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_61,
      \axi_rdata_reg[10]_1\ => adc1_rfadc_exdes_ctrl_axi_i_n_54,
      \axi_rdata_reg[10]_2\ => adc2_rfadc_exdes_ctrl_axi_i_n_58,
      \axi_rdata_reg[11]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_60,
      \axi_rdata_reg[11]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_57,
      \axi_rdata_reg[11]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_53,
      \axi_rdata_reg[1]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_52,
      \axi_rdata_reg[1]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_49,
      \axi_rdata_reg[1]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_45,
      \axi_rdata_reg[2]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_59,
      \axi_rdata_reg[2]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_56,
      \axi_rdata_reg[2]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_52,
      \axi_rdata_reg[3]_0\(0) => adc3_rfadc_exdes_ctrl_axi_i_n_51,
      \axi_rdata_reg[3]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_48,
      \axi_rdata_reg[3]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_44,
      \axi_rdata_reg[4]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_58,
      \axi_rdata_reg[4]_1\ => adc1_rfadc_exdes_ctrl_axi_i_n_51,
      \axi_rdata_reg[4]_2\ => adc2_rfadc_exdes_ctrl_axi_i_n_55,
      \axi_rdata_reg[5]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_57,
      \axi_rdata_reg[5]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_54,
      \axi_rdata_reg[5]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_50,
      \axi_rdata_reg[6]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_56,
      \axi_rdata_reg[6]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_53,
      \axi_rdata_reg[6]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_49,
      \axi_rdata_reg[7]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_55,
      \axi_rdata_reg[7]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_52,
      \axi_rdata_reg[7]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_48,
      \axi_rdata_reg[8]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_54,
      \axi_rdata_reg[8]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_51,
      \axi_rdata_reg[8]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_47,
      \axi_rdata_reg[9]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_62,
      \axi_rdata_reg[9]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_59,
      \axi_rdata_reg[9]_2\ => adc1_rfadc_exdes_ctrl_axi_i_n_55,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wr_access_reg_0 => axi_wr_access_reg,
      dest_out => dest_out,
      enable => enable,
      error_flag => error_flag,
      p_0_in => p_0_in,
      s00_ds_status => s00_ds_status,
      s00_tdata(127 downto 0) => s00_tdata(127 downto 0),
      s00_tdata_32_sp_1 => axi_register_if_i_n_21,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => axi_register_if_i_n_40,
      s_axi_aresetn_1 => axi_register_if_i_n_44,
      s_axi_aresetn_2 => axi_register_if_i_n_49,
      s_axi_aresetn_3 => axi_register_if_i_n_50,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_rdata(15 downto 0) => s_axi_rdata(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_wdata(0) => s_axi_wdata(0),
      \s_axi_wdata[0]_0\ => axi_register_if_i_n_115,
      s_axi_wdata_0_sp_1 => axi_register_if_i_n_114,
      s_axi_wvalid => s_axi_wvalid,
      \slv_addr_reg[11]_0\(7) => p_0_in0,
      \slv_addr_reg[11]_0\(6) => axi_register_if_i_n_31,
      \slv_addr_reg[11]_0\(5) => axi_register_if_i_n_32,
      \slv_addr_reg[11]_0\(4) => axi_register_if_i_n_33,
      \slv_addr_reg[11]_0\(3) => axi_register_if_i_n_34,
      \slv_addr_reg[11]_0\(2) => axi_register_if_i_n_35,
      \slv_addr_reg[11]_0\(1 downto 0) => slv_addr(3 downto 2),
      \slv_addr_reg[2]_0\(0) => axi_register_if_i_n_29,
      \slv_addr_reg[2]_1\(0) => axi_register_if_i_n_41,
      \slv_addr_reg[2]_10\(0) => axi_register_if_i_n_76,
      \slv_addr_reg[2]_11\(0) => axi_register_if_i_n_77,
      \slv_addr_reg[2]_12\(0) => axi_register_if_i_n_78,
      \slv_addr_reg[2]_13\(0) => axi_register_if_i_n_79,
      \slv_addr_reg[2]_14\(0) => axi_register_if_i_n_80,
      \slv_addr_reg[2]_15\(0) => axi_register_if_i_n_82,
      \slv_addr_reg[2]_16\(0) => axi_register_if_i_n_83,
      \slv_addr_reg[2]_17\(0) => axi_register_if_i_n_84,
      \slv_addr_reg[2]_18\ => axi_register_if_i_n_102,
      \slv_addr_reg[2]_19\ => axi_register_if_i_n_109,
      \slv_addr_reg[2]_2\(0) => axi_register_if_i_n_64,
      \slv_addr_reg[2]_20\ => axi_register_if_i_n_110,
      \slv_addr_reg[2]_21\ => axi_register_if_i_n_111,
      \slv_addr_reg[2]_22\ => axi_register_if_i_n_112,
      \slv_addr_reg[2]_3\(0) => axi_register_if_i_n_65,
      \slv_addr_reg[2]_4\(0) => axi_register_if_i_n_66,
      \slv_addr_reg[2]_5\ => axi_register_if_i_n_70,
      \slv_addr_reg[2]_6\(0) => axi_register_if_i_n_71,
      \slv_addr_reg[2]_7\(0) => axi_register_if_i_n_72,
      \slv_addr_reg[2]_8\(0) => axi_register_if_i_n_73,
      \slv_addr_reg[2]_9\(0) => axi_register_if_i_n_75,
      \slv_addr_reg[3]_0\(0) => axi_register_if_i_n_97,
      \slv_addr_reg[3]_1\(0) => axi_register_if_i_n_98,
      \slv_addr_reg[3]_2\(0) => axi_register_if_i_n_99,
      \slv_addr_reg[3]_3\ => axi_register_if_i_n_101,
      \slv_addr_reg[4]_0\ => axi_register_if_i_n_25,
      \slv_addr_reg[4]_1\ => axi_register_if_i_n_68,
      \slv_addr_reg[4]_2\ => axi_register_if_i_n_69,
      \slv_addr_reg[4]_3\ => axi_register_if_i_n_85,
      \slv_addr_reg[4]_4\(0) => axi_register_if_i_n_93,
      \slv_addr_reg[4]_5\(0) => axi_register_if_i_n_94,
      \slv_addr_reg[4]_6\(0) => axi_register_if_i_n_95,
      \slv_addr_reg[5]_0\ => axi_register_if_i_n_23,
      \slv_addr_reg[5]_1\ => axi_register_if_i_n_24,
      \slv_addr_reg[5]_2\ => axi_register_if_i_n_26,
      \slv_addr_reg[5]_3\ => axi_register_if_i_n_27,
      \slv_addr_reg[5]_4\ => axi_register_if_i_n_28,
      \slv_addr_reg[5]_5\ => axi_register_if_i_n_67,
      \slv_addr_reg[5]_6\ => axi_register_if_i_n_92,
      \slv_addr_reg[6]_0\ => axi_register_if_i_n_22,
      \slv_addr_reg[6]_1\(3) => axi_register_if_i_n_86,
      \slv_addr_reg[6]_1\(2) => axi_register_if_i_n_87,
      \slv_addr_reg[6]_1\(1) => axi_register_if_i_n_88,
      \slv_addr_reg[6]_1\(0) => axi_register_if_i_n_89,
      \slv_addr_reg[6]_2\ => axi_register_if_i_n_90,
      \slv_addr_reg[7]_0\ => axi_register_if_i_n_39,
      \slv_addr_reg[8]_0\ => axi_register_if_i_n_38,
      \slv_addr_reg[8]_1\ => axi_register_if_i_n_42,
      \slv_addr_reg[8]_2\(0) => axi_register_if_i_n_43,
      \slv_addr_reg[8]_3\ => axi_register_if_i_n_48,
      \slv_addr_reg[8]_4\ => axi_register_if_i_n_91,
      \slv_addr_reg[9]_0\ => axi_register_if_i_n_51,
      \slv_addr_reg[9]_1\ => axi_register_if_i_n_52,
      \slv_addr_reg[9]_10\ => axi_register_if_i_n_61,
      \slv_addr_reg[9]_11\ => axi_register_if_i_n_62,
      \slv_addr_reg[9]_12\ => axi_register_if_i_n_103,
      \slv_addr_reg[9]_13\ => axi_register_if_i_n_113,
      \slv_addr_reg[9]_2\ => axi_register_if_i_n_53,
      \slv_addr_reg[9]_3\ => axi_register_if_i_n_54,
      \slv_addr_reg[9]_4\ => axi_register_if_i_n_55,
      \slv_addr_reg[9]_5\ => axi_register_if_i_n_56,
      \slv_addr_reg[9]_6\ => axi_register_if_i_n_57,
      \slv_addr_reg[9]_7\ => axi_register_if_i_n_58,
      \slv_addr_reg[9]_8\ => axi_register_if_i_n_59,
      \slv_addr_reg[9]_9\ => axi_register_if_i_n_60,
      slv_rdata(15 downto 0) => slv_rdata(15 downto 0),
      \slv_rdata[1]_i_6_0\(0) => adc00_ds_control_0(1),
      \slv_rdata[7]_i_2_0\(3 downto 0) => adc12_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_2_1\(3 downto 0) => adc12_ds_inc_0(7 downto 4),
      \slv_rdata[7]_i_2__0_0\(4 downto 1) => adc22_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_2__0_0\(0) => adc22_ds_enable_0(2),
      \slv_rdata[7]_i_2__1_0\(4 downto 1) => adc32_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_2__1_0\(0) => adc32_ds_enable_0(2),
      \slv_rdata[7]_i_3__0_0\(4 downto 1) => adc10_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_3__0_0\(0) => adc10_ds_enable_0(2),
      \slv_rdata[7]_i_3__0_1\(4 downto 1) => adc10_ds_inc_0(7 downto 4),
      \slv_rdata[7]_i_3__0_1\(0) => adc10_ds_inc_0(2),
      \slv_rdata[7]_i_3__1_0\(4 downto 1) => adc20_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_3__1_0\(0) => adc20_ds_enable_0(2),
      \slv_rdata[7]_i_3__2_0\(4 downto 1) => adc30_ds_enable_0(7 downto 4),
      \slv_rdata[7]_i_3__2_0\(0) => adc30_ds_enable_0(2),
      \slv_rdata_reg[0]\ => adc0_rfadc_exdes_ctrl_axi_i_n_32,
      \slv_rdata_reg[0]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_30,
      \slv_rdata_reg[10]\ => adc0_rfadc_exdes_ctrl_axi_i_n_13,
      \slv_rdata_reg[11]\ => adc0_rfadc_exdes_ctrl_axi_i_n_6,
      \slv_rdata_reg[1]\ => adc0_rfadc_exdes_ctrl_axi_i_n_28,
      \slv_rdata_reg[1]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_29,
      \slv_rdata_reg[1]_1\(1 downto 0) => adc03_ds_inc_0(1 downto 0),
      \slv_rdata_reg[1]_2\(1 downto 0) => adc02_ds_inc_0(1 downto 0),
      \slv_rdata_reg[1]_3\(1 downto 0) => adc01_ds_inc_0(1 downto 0),
      \slv_rdata_reg[2]\ => adc3_rfadc_exdes_ctrl_axi_i_n_44,
      \slv_rdata_reg[2]_0\ => adc3_rfadc_exdes_ctrl_axi_i_n_43,
      \slv_rdata_reg[2]_1\ => adc2_rfadc_exdes_ctrl_axi_i_n_30,
      \slv_rdata_reg[2]_10\ => adc0_rfadc_exdes_ctrl_axi_i_n_26,
      \slv_rdata_reg[2]_11\(0) => adc32_ds_type_0(2),
      \slv_rdata_reg[2]_12\(0) => adc22_ds_type_0(2),
      \slv_rdata_reg[2]_2\ => adc2_rfadc_exdes_ctrl_axi_i_n_25,
      \slv_rdata_reg[2]_3\ => adc1_rfadc_exdes_ctrl_axi_i_n_21,
      \slv_rdata_reg[2]_4\ => adc1_rfadc_exdes_ctrl_axi_i_n_33,
      \slv_rdata_reg[2]_5\ => adc1_rfadc_exdes_ctrl_axi_i_n_27,
      \slv_rdata_reg[2]_6\(0) => adc30_ds_type_0(2),
      \slv_rdata_reg[2]_7\(0) => adc20_ds_type_0(2),
      \slv_rdata_reg[2]_8\(0) => adc10_ds_type_0(2),
      \slv_rdata_reg[2]_9\ => adc0_rfadc_exdes_ctrl_axi_i_n_27,
      \slv_rdata_reg[3]\(3 downto 0) => adc00_ds_type_0(3 downto 0),
      \slv_rdata_reg[3]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_25,
      \slv_rdata_reg[3]_1\(3 downto 0) => adc03_ds_type_0(3 downto 0),
      \slv_rdata_reg[3]_2\(3 downto 0) => adc02_ds_type_0(3 downto 0),
      \slv_rdata_reg[3]_3\(3 downto 0) => adc01_ds_type_0(3 downto 0),
      \slv_rdata_reg[3]_4\ => adc0_rfadc_exdes_ctrl_axi_i_n_24,
      \slv_rdata_reg[3]_5\(0) => adc33_ds_type_0(3),
      \slv_rdata_reg[4]\ => adc0_rfadc_exdes_ctrl_axi_i_n_22,
      \slv_rdata_reg[4]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_23,
      \slv_rdata_reg[5]\ => adc0_rfadc_exdes_ctrl_axi_i_n_21,
      \slv_rdata_reg[5]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_20,
      \slv_rdata_reg[6]\ => adc0_rfadc_exdes_ctrl_axi_i_n_19,
      \slv_rdata_reg[6]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_18,
      \slv_rdata_reg[7]\(7 downto 0) => s00_ds_inc(7 downto 0),
      \slv_rdata_reg[7]_0\ => adc0_rfadc_exdes_ctrl_axi_i_n_17,
      \slv_rdata_reg[7]_1\ => adc0_rfadc_exdes_ctrl_axi_i_n_16,
      \slv_rdata_reg[7]_2\(4 downto 0) => adc33_ds_enable_0(7 downto 3),
      \slv_rdata_reg[7]_3\(3 downto 0) => adc11_ds_enable_0(7 downto 4),
      \slv_rdata_reg[7]_4\(3 downto 0) => adc13_ds_enable_0(7 downto 4),
      \slv_rdata_reg[7]_5\(3 downto 0) => adc13_ds_inc_0(7 downto 4),
      \slv_rdata_reg[7]_6\(3 downto 0) => adc21_ds_enable_0(7 downto 4),
      \slv_rdata_reg[7]_7\(3 downto 0) => adc23_ds_enable_0(7 downto 4),
      \slv_rdata_reg[7]_8\(3 downto 0) => adc31_ds_enable_0(7 downto 4),
      \slv_rdata_reg[8]\(4 downto 0) => adc31_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_0\(5 downto 0) => adc33_ds_inc_0(8 downto 3),
      \slv_rdata_reg[8]_1\(5 downto 1) => adc22_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_1\(0) => adc22_ds_inc_0(2),
      \slv_rdata_reg[8]_2\(5 downto 1) => adc20_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_2\(0) => adc20_ds_inc_0(2),
      \slv_rdata_reg[8]_3\ => adc1_rfadc_exdes_ctrl_axi_i_n_32,
      \slv_rdata_reg[8]_4\(4 downto 0) => adc11_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_5\(5 downto 1) => adc30_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_5\(0) => adc30_ds_inc_0(2),
      \slv_rdata_reg[8]_6\(5 downto 1) => adc32_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_6\(0) => adc32_ds_inc_0(2),
      \slv_rdata_reg[8]_7\ => adc0_rfadc_exdes_ctrl_axi_i_n_15,
      \slv_rdata_reg[8]_8\(4 downto 0) => adc23_ds_inc_0(8 downto 4),
      \slv_rdata_reg[8]_9\(4 downto 0) => adc21_ds_inc_0(8 downto 4),
      \slv_rdata_reg[9]\ => adc0_rfadc_exdes_ctrl_axi_i_n_14,
      slv_rden_r => slv_rden_r,
      slv_rden_r_0 => slv_rden_r_5,
      slv_rden_r_3 => slv_rden_r_3,
      slv_rden_r_5 => slv_rden_r_0,
      slv_rden_r_reg(0) => axi_register_if_i_n_74,
      slv_rden_r_reg_0(0) => axi_register_if_i_n_81,
      slv_rden_r_reg_1(0) => axi_register_if_i_n_96,
      slv_rden_r_reg_2(0) => axi_register_if_i_n_100,
      slv_rden_r_reg_3(0) => axi_register_if_i_n_105,
      slv_rden_r_reg_4(0) => axi_register_if_i_n_106,
      slv_rden_r_reg_5(0) => axi_register_if_i_n_107,
      slv_rden_r_reg_6(0) => axi_register_if_i_n_108,
      slv_wren_clk2 => slv_wren_clk2,
      slv_wren_clk2_1 => slv_wren_clk2_6,
      slv_wren_clk2_2 => slv_wren_clk2_4,
      slv_wren_clk2_4 => slv_wren_clk2_1,
      slv_wren_done_pulse => slv_wren_done_pulse_7,
      timeout_enable => timeout_enable,
      \timeout_timer_count_reg[11]_0\(11 downto 0) => timeout_value(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0_exdes_rfadc_data_sink is
  port (
    axi_awready_reg : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    error_flag : out STD_LOGIC;
    s00_tready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_flag : out STD_LOGIC;
    axi_bvalid_reg : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s0_axis_clock : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of project_1_adc_sink_i_0_exdes_rfadc_data_sink : entity is "exdes_rfadc_data_sink";
end project_1_adc_sink_i_0_exdes_rfadc_data_sink;

architecture STRUCTURE of project_1_adc_sink_i_0_exdes_rfadc_data_sink is
  signal adc00_ds_pulse_control_0 : STD_LOGIC;
  signal axis_resetn_rt_0 : STD_LOGIC;
  signal done_bus_rt_0 : STD_LOGIC;
  signal done_delay : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^done_flag\ : STD_LOGIC;
  signal error_bus_rt_0 : STD_LOGIC;
  signal \^error_flag\ : STD_LOGIC;
  signal rfadc_exdes_ctrl_i_n_8 : STD_LOGIC;
  signal s00_ds_status : STD_LOGIC;
  attribute DEF_VAL : string;
  attribute DEF_VAL of cdc_arstn_0i : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of cdc_arstn_0i : label is 5;
  attribute INIT : string;
  attribute INIT of cdc_arstn_0i : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of cdc_arstn_0i : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of cdc_arstn_0i : label is 0;
  attribute VERSION : integer;
  attribute VERSION of cdc_arstn_0i : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of cdc_arstn_0i : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of cdc_arstn_0i : label is "TRUE";
  attribute DEST_SYNC_FF of cdc_done_0i : label is 5;
  attribute INIT_SYNC_FF of cdc_done_0i : label is 0;
  attribute SIM_ASSERT_CHK of cdc_done_0i : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of cdc_done_0i : label is 0;
  attribute VERSION of cdc_done_0i : label is 0;
  attribute XPM_CDC of cdc_done_0i : label is "SINGLE";
  attribute XPM_MODULE of cdc_done_0i : label is "TRUE";
  attribute DEST_SYNC_FF of cdc_error_0i : label is 5;
  attribute INIT_SYNC_FF of cdc_error_0i : label is 0;
  attribute SIM_ASSERT_CHK of cdc_error_0i : label is 0;
  attribute SRC_INPUT_REG of cdc_error_0i : label is 0;
  attribute VERSION of cdc_error_0i : label is 0;
  attribute XPM_CDC of cdc_error_0i : label is "SINGLE";
  attribute XPM_MODULE of cdc_error_0i : label is "TRUE";
begin
  done_flag <= \^done_flag\;
  error_flag <= \^error_flag\;
cdc_arstn_0i: entity work.project_1_adc_sink_i_0_xpm_cdc_sync_rst
     port map (
      dest_clk => s0_axis_clock,
      dest_rst => axis_resetn_rt_0,
      src_rst => s_axi_aresetn
    );
cdc_done_0i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__11\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => done_bus_rt_0,
      src_clk => '0',
      src_in => '0'
    );
cdc_error_0i: entity work.\project_1_adc_sink_i_0_xpm_cdc_single__10\
     port map (
      dest_clk => s_axi_aclk,
      dest_out => error_bus_rt_0,
      src_clk => '0',
      src_in => '0'
    );
\done_delay_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => done_bus_rt_0,
      Q => done_delay(0),
      R => '0'
    );
\done_delay_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => done_delay(0),
      Q => done_delay(1),
      R => '0'
    );
done_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rfadc_exdes_ctrl_i_n_8,
      Q => \^done_flag\,
      R => '0'
    );
ds_slice_00: entity work.project_1_adc_sink_i_0_xpm_mem_ds_dataCap
     port map (
      adc00_ds_pulse_control_0 => adc00_ds_pulse_control_0,
      s00_ds_status => s00_ds_status,
      s0_axis_clock => s0_axis_clock
    );
error_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => error_bus_rt_0,
      Q => \^error_flag\,
      R => '0'
    );
rfadc_exdes_ctrl_i: entity work.project_1_adc_sink_i_0_rfadc_exdes_ctrl
     port map (
      D(0) => done_bus_rt_0,
      Q(1 downto 0) => done_delay(1 downto 0),
      adc00_ds_pulse_control_0 => adc00_ds_pulse_control_0,
      axi_arready_reg => s_axi_arready,
      axi_awready_reg => axi_awready_reg,
      axi_bvalid_reg => axi_bvalid_reg,
      axi_rvalid_reg => axi_rvalid_reg,
      axi_wr_access_reg => s_axi_wready,
      dest_out => error_bus_rt_0,
      dest_rst => axis_resetn_rt_0,
      done_flag => \^done_flag\,
      enable_reg => rfadc_exdes_ctrl_i_n_8,
      error_flag => \^error_flag\,
      s00_ds_status => s00_ds_status,
      s00_tdata(127 downto 0) => s00_tdata(127 downto 0),
      s00_tready => s00_tready,
      s0_axis_clock => s0_axis_clock,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_rdata(15 downto 0) => s_axi_rdata(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_1_adc_sink_i_0 is
  port (
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s00_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s00_tvalid : in STD_LOGIC;
    s00_tready : out STD_LOGIC;
    s0_axis_clock : in STD_LOGIC;
    error_flag : out STD_LOGIC;
    done_flag : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_1_adc_sink_i_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of project_1_adc_sink_i_0 : entity is "project_1_adc_sink_i_0,exdes_rfadc_data_sink,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of project_1_adc_sink_i_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of project_1_adc_sink_i_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of project_1_adc_sink_i_0 : entity is "exdes_rfadc_data_sink,Vivado 2022.2";
end project_1_adc_sink_i_0;

architecture STRUCTURE of project_1_adc_sink_i_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_tready : signal is "xilinx.com:interface:axis:1.0 s00 TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_tready : signal is "XIL_INTERFACENAME s00, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_tvalid : signal is "xilinx.com:interface:axis:1.0 s00 TVALID";
  attribute X_INTERFACE_INFO of s0_axis_clock : signal is "xilinx.com:signal:clock:1.0 s0_axis_clock CLK";
  attribute X_INTERFACE_PARAMETER of s0_axis_clock : signal is "XIL_INTERFACENAME s0_axis_clock, ASSOCIATED_BUSIF s00, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN project_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s00_tdata : signal is "xilinx.com:interface:axis:1.0 s00 TDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.project_1_adc_sink_i_0_exdes_rfadc_data_sink
     port map (
      axi_awready_reg => s_axi_awready,
      axi_bvalid_reg => s_axi_bvalid,
      axi_rvalid_reg => s_axi_rvalid,
      done_flag => done_flag,
      error_flag => error_flag,
      s00_tdata(127 downto 0) => s00_tdata(127 downto 0),
      s00_tready => s00_tready,
      s0_axis_clock => s0_axis_clock,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(17 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(17 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_wdata(11 downto 0) => s_axi_wdata(11 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
