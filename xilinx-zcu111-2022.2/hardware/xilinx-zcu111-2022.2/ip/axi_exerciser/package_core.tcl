set add_axi3 1

proc set_global_properties {} {
  set_property display_name {BURST AXI Exerciser} $::core

  set_property description {AXI Exerciser generates AXI traffic based on core programming} $::core

  set_property taxonomy {{/Embedded Processing/Debug & Verification/Debug}} $::core

  set families { \
    aartix7   Production     \
    artix7    Production     \
    artix7l   Production     \
    azynq     Production     \
    kintex7   Production     \
    kintex7l  Production     \
    kintexu   Pre-Production \
    qartix7   Production     \
    qkintex7  Production     \
    qkintex7l Production     \
    qvirtex7  Production     \
    qzynq     Production     \
    versal    Production     \
    virtex7   Production     \
    virtexu   Pre-Production \
    virtexu   Production     \
    zynq      Production     \
    zynquplus Pre-Production }

  set_property supported_families $families $::core
}

proc add_port_map_axi4 {logical_name physical_name busif_name enablement} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_port_map_axi3 {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_bus_param {busif_name name value {value_format long} {type immediate} {dependency ""}} {
  set current_bus_parameter [::ipx::add_bus_parameter $name [::ipx::get_bus_interfaces -of_objects $::core $busif_name]]
  set_property value $value $current_bus_parameter
  set_property value_format $value_format $current_bus_parameter
  set_property value_resolve_type $type $current_bus_parameter
  if {$dependency != ""} {
    set_property value_dependency $dependency $current_bus_parameter
  }
}

proc add_param {name value {display_name ""} {dependency ""} {format LONG} {length 32}} {
  ::ipx::add_user_parameter $name $::core
  if {$format == "LONG"} {
    set_property data_type integer [::ipx::get_hdl_parameters -of_objects $::core $name]
  }
  if {$format == "BITSTRING"} {
    set_property data_type std_logic_vector [::ipx::get_hdl_parameters -of_objects $::core $name]
  }
  if {$format == "BOOL"} {
    set_property data_type integer [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property value_validation_list {false:0 true:1} [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property value_validation_list {false:0 true:1} [::ipx::get_user_parameters -of_objects $::core $name]
    set_property value_format LONG [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property value_format LONG [::ipx::get_user_parameters -of_objects $::core $name]
  } else {
    set_property value_format $format [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property value_format $format [::ipx::get_user_parameters -of_objects $::core $name]
  }
  set_property value $value [::ipx::get_hdl_parameters -of_objects $::core $name]
  set_property value $value [::ipx::get_user_parameters -of_objects $::core $name]
  if {$display_name != ""} {
    set_property display_name $display_name [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property display_name $display_name [::ipx::get_user_parameters -of_objects $::core $name]
  }
  if {$format == "BITSTRING"} {
    set_property value_bit_string_length $length [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property value_bit_string_length $length [::ipx::get_user_parameters -of_objects $::core $name]
  }
  set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core $name]
  set_property value_resolve_type user [::ipx::get_user_parameters -of_objects $::core $name]
  if {[string length $dependency] > 0} {
    set_property enablement_presence optional [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_value true [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_resolve_type "dependent" [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_dependency $dependency [::ipx::get_hdl_parameters -of_objects $::core $name]
  }
}

# Create new Core
set ::core [::ipx::create_core xilinx.com ip axi_exerciser 1.00.b]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axi_exerciser_v1_00_b [::ipx::add_file hdl/verilog/axi_exerciser.v $current_filegroup]
  set_property model_name axi_exerciser $current_filegroup
}

# Block diagram files for IP Integrator
set current_filegroup [::ipx::add_file_group xilinx_blockdiagram $::core]
::ipx::add_file bd/bd.tcl $current_filegroup

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axi_exerciser.v -top_module_name axi_exerciser $::core

set_property data_type string [::ipx::get_hdl_parameters -of_object $::core C_FAMILY]
set_property value kintex7 [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_format STRING [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]

add_param C_ZERO_INVALID           1          "Force Zero On Invalid"  "" BOOL
add_param C_IS_AXI4                0          "Is AXI4"                "" BOOL
add_param C_IS_AFI                 0          "AFI Connection"         "" BOOL
add_param C_IS_ACE                 0          "ACE Connection"         "" BOOL
add_param C_AFI_NUM                0
add_param C_IS_ACP                 0          "Coherent Connection"    "" BOOL
add_param C_IS_PELE_GS             0          ""                       "" BOOL
add_param C_REGISTER_CMD           0          ""                       "" BOOL
add_param C_IS_ON_CCI400           0          ""                       "" BOOL
add_param C_IS_ON_SEMI_CCI400      0          ""                       "" BOOL
add_param C_IS_ON_SYSCACHE         0          ""                       "" BOOL
add_param C_IS_FLAG0               0          ""                       "" BOOL
add_param C_IS_FLAG1               0          ""                       "" BOOL
add_param C_IS_FLAG2               0          ""                       "" BOOL
add_param C_IS_FLAG3               0          ""                       "" BOOL
add_param C_NUM_EXCL               2
add_param C_S_RD_IN_ORDER          0          ""                       "" BOOL
add_param C_S_B_IN_ORDER           0          ""                       "" BOOL
add_param C_S_AXI_ADDR_WIDTH       32         "Addr Width"             ""
add_param C_S_AXI_DATA_WIDTH       32         "Data Width"             ""
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_hdl_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
add_param C_S_AXI_ID_WIDTH         1          "ID Width"               ""
add_param C_SMID_WIDTH             1          "SMID Width"             ""
add_param C_S_AXI_AWUSER_WIDTH     1          "AWUSER Width"           ""
add_param C_S_AXI_ARUSER_WIDTH     1          "ARUSER Width"           ""
add_param C_M_AXI_ADDR_WIDTH       32         "Addr Width"             ""
add_param C_M_AXI_DATA_WIDTH       32         "Data Width"             ""
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_hdl_parameters -of_objects $::core C_M_AXI_DATA_WIDTH]
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_DATA_WIDTH]
add_param C_M_AXI_THREAD_ID_WIDTH  1          "Thread ID Width"        ""
add_param C_M_AXI_AWUSER_WIDTH     1          "AWUSER Width"           ""
add_param C_M_AXI_ARUSER_WIDTH     1          "ARUSER Width"           ""
add_param C_BASEADDR               0xFFFFFFFF "Base Address (Hex)"     "" BITSTRING
add_param C_HIGHADDR               0x00000000 "High Address (Hex)"     "" BITSTRING
add_param C_ENABLE_HIGHMEM         0          "Enable SAXI high memory range"  "" BOOL
add_param C_HIGHMEM_BASEADDR       0xFFFFFFFFFF "High Memory Base Address (Hex)" "" STRING
add_param C_HIGHMEM_HIGHADDR       0x0000000000 "High Memory High Address (Hex)" "" STRING

::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axi_exerciser.v -top_module_name axi_exerciser $::core

::ipx::add_bus_interface CLK.ACLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK] CLK]
if {$add_axi3} {
  add_bus_param CLK.ACLK ASSOCIATED_BUSIF "ACE:S_AXI:M_AXI:S_AXI3:M_AXI3" string
} else {
  add_bus_param CLK.ACLK ASSOCIATED_BUSIF "ACE:S_AXI:M_AXI" string
}
add_bus_param CLK.ACLK ASSOCIATED_RESET Rst_n string

::ipx::add_bus_interface RST.ARESETN $::core
set_property bus_type_vlnv xilinx.com:signal:reset:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property abstraction_type_vlnv xilinx.com:signal:reset_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property display_name Rst_n [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property description {Reset} [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
add_bus_param RST.ARESETN POLARITY ACTIVE_LOW string dependent
::ipx::add_port_map RST [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property PHYSICAL_NAME Rst_n [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN] RST]

::ipx::add_bus_interface INTERRUPT.irq_out $::core
set_property bus_type_vlnv xilinx.com:signal:interrupt:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.irq_out]
set_property abstraction_type_vlnv xilinx.com:signal:interrupt_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.irq_out]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.irq_out]
add_bus_param INTERRUPT.irq_out SENSITIVITY LEVEL_HIGH string
add_bus_param INTERRUPT.irq_out SUGGESTED_PRIORITY HIGH string
::ipx::add_port_map INTERRUPT [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.irq_out]
set_property PHYSICAL_NAME irq_out [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.irq_out] INTERRUPT]

::ipx::add_bus_interface S_AXI $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property display_name S_AXI [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property description {Slave AXI4 Interface} [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
if {$add_axi3} {
  set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
  set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
  set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
  set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.C_IS_AXI4')) = 1" [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
}
add_bus_param S_AXI NUM_READ_OUTSTANDING  8
add_bus_param S_AXI NUM_WRITE_OUTSTANDING 8
add_port_map_axi4 ARREADY arready_s S_AXI $add_axi3
add_port_map_axi4 BID     bid_s     S_AXI $add_axi3
add_port_map_axi4 ARSIZE  arsize_s  S_AXI $add_axi3
add_port_map_axi4 RDATA   rdata_s   S_AXI $add_axi3
add_port_map_axi4 AWREADY awready_s S_AXI $add_axi3
add_port_map_axi4 ARQOS   arqos_s   S_AXI $add_axi3
add_port_map_axi4 AWADDR  awaddr_s  S_AXI $add_axi3
add_port_map_axi4 ARADDR  araddr_s  S_AXI $add_axi3
add_port_map_axi4 RID     rid_s     S_AXI $add_axi3
add_port_map_axi4 ARBURST arburst_s S_AXI $add_axi3
add_port_map_axi4 RRESP   rresp_s   S_AXI $add_axi3
add_port_map_axi4 AWLEN   awlen_s   S_AXI $add_axi3
add_port_map_axi4 ARPROT  arprot_s  S_AXI $add_axi3
add_port_map_axi4 AWBURST awburst_s S_AXI $add_axi3
add_port_map_axi4 AWSIZE  awsize_s  S_AXI $add_axi3
add_port_map_axi4 ARLOCK  arlock1_s S_AXI $add_axi3
add_port_map_axi4 RLAST   rlast_s   S_AXI $add_axi3
add_port_map_axi4 AWLOCK  awlock1_s S_AXI $add_axi3
add_port_map_axi4 ARCACHE arcache_s S_AXI $add_axi3
add_port_map_axi4 WDATA   wdata_s   S_AXI $add_axi3
add_port_map_axi4 AWVALID awvalid_s S_AXI $add_axi3
add_port_map_axi4 RREADY  rready_s  S_AXI $add_axi3
add_port_map_axi4 AWQOS   awqos_s   S_AXI $add_axi3
add_port_map_axi4 BREADY  bready_s  S_AXI $add_axi3
add_port_map_axi4 BVALID  bvalid_s  S_AXI $add_axi3
add_port_map_axi4 WSTRB   wstrb_s   S_AXI $add_axi3
add_port_map_axi4 AWID    awid_s    S_AXI $add_axi3
add_port_map_axi4 AWPROT  awprot_s  S_AXI $add_axi3
add_port_map_axi4 BRESP   bresp_s   S_AXI $add_axi3
add_port_map_axi4 AWCACHE awcache_s S_AXI $add_axi3
add_port_map_axi4 WVALID  wvalid_s  S_AXI $add_axi3
add_port_map_axi4 WLAST   wlast_s   S_AXI $add_axi3
add_port_map_axi4 ARVALID arvalid_s S_AXI $add_axi3
add_port_map_axi4 RVALID  rvalid_s  S_AXI $add_axi3
add_port_map_axi4 WREADY  wready_s  S_AXI $add_axi3
add_port_map_axi4 ARLEN   arlen_s   S_AXI $add_axi3
add_port_map_axi4 ARID    arid_s    S_AXI $add_axi3
add_port_map_axi4 AWUSER  awuser_s  S_AXI $add_axi3
add_port_map_axi4 ARUSER  aruser_s  S_AXI $add_axi3

::ipx::add_bus_interface M_AXI $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
set_property display_name M_AXI [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
set_property description {Master AXI4 Interface} [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
if {$add_axi3} {
  set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
  set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
  set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
  set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.C_IS_AXI4')) = 1" [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
}
add_bus_param M_AXI NUM_READ_OUTSTANDING  8
add_bus_param M_AXI NUM_WRITE_OUTSTANDING 8
add_port_map_axi4 ARREADY arready_m M_AXI $add_axi3
add_port_map_axi4 BID     bid_m     M_AXI $add_axi3
add_port_map_axi4 ARSIZE  arsize_m  M_AXI $add_axi3
add_port_map_axi4 RDATA   rdata_m   M_AXI $add_axi3
add_port_map_axi4 AWREADY awready_m M_AXI $add_axi3
add_port_map_axi4 ARQOS   arqos_m   M_AXI $add_axi3
add_port_map_axi4 AWADDR  awaddr_m  M_AXI $add_axi3
add_port_map_axi4 ARADDR  araddr_m  M_AXI $add_axi3
add_port_map_axi4 RID     rid_m     M_AXI $add_axi3
add_port_map_axi4 ARBURST arburst_m M_AXI $add_axi3
add_port_map_axi4 RRESP   rresp_m   M_AXI $add_axi3
add_port_map_axi4 AWLEN   awlen_m   M_AXI $add_axi3
add_port_map_axi4 ARPROT  arprot_m  M_AXI $add_axi3
add_port_map_axi4 AWBURST awburst_m M_AXI $add_axi3
add_port_map_axi4 AWSIZE  awsize_m  M_AXI $add_axi3
add_port_map_axi4 ARLOCK  arlock1_m M_AXI $add_axi3
add_port_map_axi4 RLAST   rlast_m   M_AXI $add_axi3
add_port_map_axi4 AWLOCK  awlock1_m M_AXI $add_axi3
add_port_map_axi4 ARCACHE arcache_m M_AXI $add_axi3
add_port_map_axi4 WDATA   wdata_m   M_AXI $add_axi3
add_port_map_axi4 AWVALID awvalid_m M_AXI $add_axi3
add_port_map_axi4 RREADY  rready_m  M_AXI $add_axi3
add_port_map_axi4 AWQOS   awqos_m   M_AXI $add_axi3
add_port_map_axi4 BREADY  bready_m  M_AXI $add_axi3
add_port_map_axi4 BVALID  bvalid_m  M_AXI $add_axi3
add_port_map_axi4 WSTRB   wstrb_m   M_AXI $add_axi3
add_port_map_axi4 AWID    awid_m    M_AXI $add_axi3
add_port_map_axi4 AWPROT  awprot_m  M_AXI $add_axi3
add_port_map_axi4 BRESP   bresp_m   M_AXI $add_axi3
add_port_map_axi4 AWCACHE awcache_m M_AXI $add_axi3
add_port_map_axi4 WVALID  wvalid_m  M_AXI $add_axi3
add_port_map_axi4 WLAST   wlast_m   M_AXI $add_axi3
add_port_map_axi4 ARVALID arvalid_m M_AXI $add_axi3
add_port_map_axi4 RVALID  rvalid_m  M_AXI $add_axi3
add_port_map_axi4 WREADY  wready_m  M_AXI $add_axi3
add_port_map_axi4 ARLEN   arlen_m   M_AXI $add_axi3
add_port_map_axi4 ARID    arid_m    M_AXI $add_axi3
add_port_map_axi4 AWUSER  awuser_m  M_AXI $add_axi3
add_port_map_axi4 ARUSER  aruser_m  M_AXI $add_axi3

::ipx::add_bus_interface ACE $::core
set_property bus_type_vlnv xilinx.com:interface:acemm:1.0 [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property abstraction_type_vlnv xilinx.com:interface:acemm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property display_name ACE [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property description {Master ACE Interface} [::ipx::get_bus_interfaces -of_objects $::core ACE]
add_bus_param ACE NUM_READ_OUTSTANDING  8
add_bus_param ACE NUM_WRITE_OUTSTANDING 8
add_port_map_axi4 ARREADY mace_arready ACE $add_axi3
add_port_map_axi4 BID     mace_bid     ACE $add_axi3
add_port_map_axi4 ARSIZE  mace_arsize  ACE $add_axi3
add_port_map_axi4 RDATA   mace_rdata   ACE $add_axi3
add_port_map_axi4 AWREADY mace_awready ACE $add_axi3
add_port_map_axi4 ARQOS   mace_arqos   ACE $add_axi3
add_port_map_axi4 AWADDR  mace_awaddr  ACE $add_axi3
add_port_map_axi4 ARADDR  mace_araddr  ACE $add_axi3
add_port_map_axi4 RID     mace_rid     ACE $add_axi3
add_port_map_axi4 ARBURST mace_arburst ACE $add_axi3
add_port_map_axi4 RRESP   mace_rresp   ACE $add_axi3
add_port_map_axi4 AWLEN   mace_awlen   ACE $add_axi3
add_port_map_axi4 ARPROT  mace_arprot  ACE $add_axi3
add_port_map_axi4 AWBURST mace_awburst ACE $add_axi3
add_port_map_axi4 AWSIZE  mace_awsize  ACE $add_axi3
add_port_map_axi4 ARLOCK  mace_arlock  ACE $add_axi3
add_port_map_axi4 RLAST   mace_rlast   ACE $add_axi3
add_port_map_axi4 AWLOCK  mace_awlock  ACE $add_axi3
add_port_map_axi4 ARCACHE mace_arcache ACE $add_axi3
add_port_map_axi4 WDATA   mace_wdata   ACE $add_axi3
add_port_map_axi4 AWVALID mace_awvalid ACE $add_axi3
add_port_map_axi4 RREADY  mace_rready  ACE $add_axi3
add_port_map_axi4 AWQOS   mace_awqos   ACE $add_axi3
add_port_map_axi4 BREADY  mace_bready  ACE $add_axi3
add_port_map_axi4 BVALID  mace_bvalid  ACE $add_axi3
add_port_map_axi4 WSTRB   mace_wstrb   ACE $add_axi3
add_port_map_axi4 AWID    mace_awid    ACE $add_axi3
add_port_map_axi4 AWPROT  mace_awprot  ACE $add_axi3
add_port_map_axi4 BRESP   mace_bresp   ACE $add_axi3
add_port_map_axi4 AWCACHE mace_awcache ACE $add_axi3
add_port_map_axi4 WVALID  mace_wvalid  ACE $add_axi3
add_port_map_axi4 WLAST   mace_wlast   ACE $add_axi3
add_port_map_axi4 ARVALID mace_arvalid ACE $add_axi3
add_port_map_axi4 RVALID  mace_rvalid  ACE $add_axi3
add_port_map_axi4 WREADY  mace_wready  ACE $add_axi3
add_port_map_axi4 ARLEN   mace_arlen   ACE $add_axi3
add_port_map_axi4 ARID    mace_arid    ACE $add_axi3
add_port_map_axi4 AWUSER  mace_awuser  ACE $add_axi3
add_port_map_axi4 ARUSER  mace_aruser  ACE $add_axi3
add_port_map_axi4 ARDOMAIN mace_ardomain ACE $add_axi3
add_port_map_axi4 ARSNOOP mace_arsnoop ACE $add_axi3
add_port_map_axi4 ARBAR   mace_arbar   ACE $add_axi3
add_port_map_axi4 AWDOMAIN mace_awdomain ACE $add_axi3
add_port_map_axi4 AWSNOOP mace_awsnoop ACE $add_axi3
add_port_map_axi4 AWBAR   mace_awbar   ACE $add_axi3
add_port_map_axi4 WUSER   mace_wuser   ACE $add_axi3
add_port_map_axi4 BUSER   mace_buser   ACE $add_axi3
add_port_map_axi4 RUSER   mace_ruser   ACE $add_axi3
add_port_map_axi4 ACADDR  mace_acaddr  ACE $add_axi3
add_port_map_axi4 ACSNOOP mace_acsnoop ACE $add_axi3
add_port_map_axi4 ACPROT  mace_acprot  ACE $add_axi3
add_port_map_axi4 ACVALID mace_acvalid ACE $add_axi3
add_port_map_axi4 ACREADY mace_acready ACE $add_axi3
add_port_map_axi4 CRRESP  mace_crresp  ACE $add_axi3
add_port_map_axi4 CRVALID mace_crvalid ACE $add_axi3
add_port_map_axi4 CRREADY mace_crready ACE $add_axi3
add_port_map_axi4 CDDATA  mace_cddata  ACE $add_axi3
add_port_map_axi4 CDLAST  mace_cdlast  ACE $add_axi3
add_port_map_axi4 CDVALID mace_cdvalid ACE $add_axi3
add_port_map_axi4 CDREADY mace_cdready ACE $add_axi3
add_port_map_axi4 RACK    mace_rack    ACE $add_axi3
add_port_map_axi4 WACK    mace_wack    ACE $add_axi3

if {$add_axi3} {
::ipx::add_bus_interface S_AXI3 $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property display_name S_AXI3 [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property description {Slave AXI3 Interface} [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.C_IS_AXI4')) = 0" [::ipx::get_bus_interfaces -of_objects $::core S_AXI3]
add_bus_param S_AXI3 NUM_READ_OUTSTANDING  8
add_bus_param S_AXI3 NUM_WRITE_OUTSTANDING 8
add_port_map_axi3 ARREADY arready_s S_AXI3
add_port_map_axi3 BID     bid_s     S_AXI3
add_port_map_axi3 ARSIZE  arsize_s  S_AXI3
add_port_map_axi3 RDATA   rdata_s   S_AXI3
add_port_map_axi3 AWREADY awready_s S_AXI3
add_port_map_axi3 ARQOS   arqos_s   S_AXI3
add_port_map_axi3 AWADDR  awaddr_s  S_AXI3
add_port_map_axi3 ARADDR  araddr_s  S_AXI3
add_port_map_axi3 RID     rid_s     S_AXI3
add_port_map_axi3 ARBURST arburst_s S_AXI3
add_port_map_axi3 RRESP   rresp_s   S_AXI3
add_port_map_axi3 AWLEN   awlen3_s  S_AXI3
add_port_map_axi3 ARPROT  arprot_s  S_AXI3
add_port_map_axi3 AWBURST awburst_s S_AXI3
add_port_map_axi3 AWSIZE  awsize_s  S_AXI3
add_port_map_axi3 ARLOCK  arlock_s  S_AXI3
add_port_map_axi3 RLAST   rlast_s   S_AXI3
add_port_map_axi3 AWLOCK  awlock_s  S_AXI3
add_port_map_axi3 ARCACHE arcache_s S_AXI3
add_port_map_axi3 WDATA   wdata_s   S_AXI3
add_port_map_axi3 AWVALID awvalid_s S_AXI3
add_port_map_axi3 RREADY  rready_s  S_AXI3
add_port_map_axi3 AWQOS   awqos_s   S_AXI3
add_port_map_axi3 BREADY  bready_s  S_AXI3
add_port_map_axi3 BVALID  bvalid_s  S_AXI3
add_port_map_axi3 WSTRB   wstrb_s   S_AXI3
add_port_map_axi3 AWID    awid_s    S_AXI3
add_port_map_axi3 WID     wid_s     S_AXI3
add_port_map_axi3 AWPROT  awprot_s  S_AXI3
add_port_map_axi3 BRESP   bresp_s   S_AXI3
add_port_map_axi3 AWCACHE awcache_s S_AXI3
add_port_map_axi3 WVALID  wvalid_s  S_AXI3
add_port_map_axi3 WLAST   wlast_s   S_AXI3
add_port_map_axi3 ARVALID arvalid_s S_AXI3
add_port_map_axi3 RVALID  rvalid_s  S_AXI3
add_port_map_axi3 WREADY  wready_s  S_AXI3
add_port_map_axi3 ARLEN   arlen3_s  S_AXI3
add_port_map_axi3 ARID    arid_s    S_AXI3
add_port_map_axi3 AWUSER  awuser_s  S_AXI3
add_port_map_axi3 ARUSER  aruser_s  S_AXI3

::ipx::add_bus_interface M_AXI3 $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property display_name M_AXI3 [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property description {Master AXI3 Interface} [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.C_IS_AXI4')) = 0" [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
add_bus_param M_AXI3 NUM_READ_OUTSTANDING  8
add_bus_param M_AXI3 NUM_WRITE_OUTSTANDING 8
add_port_map_axi3 ARREADY arready_m M_AXI3
add_port_map_axi3 BID     bid_m     M_AXI3
add_port_map_axi3 ARSIZE  arsize_m  M_AXI3
add_port_map_axi3 RDATA   rdata_m   M_AXI3
add_port_map_axi3 AWREADY awready_m M_AXI3
add_port_map_axi3 ARQOS   arqos_m   M_AXI3
add_port_map_axi3 AWADDR  awaddr_m  M_AXI3
add_port_map_axi3 ARADDR  araddr_m  M_AXI3
add_port_map_axi3 RID     rid_m     M_AXI3
add_port_map_axi3 ARBURST arburst_m M_AXI3
add_port_map_axi3 RRESP   rresp_m   M_AXI3
add_port_map_axi3 AWLEN   awlen3_m  M_AXI3
add_port_map_axi3 ARPROT  arprot_m  M_AXI3
add_port_map_axi3 AWBURST awburst_m M_AXI3
add_port_map_axi3 AWSIZE  awsize_m  M_AXI3
add_port_map_axi3 ARLOCK  arlock_m  M_AXI3
add_port_map_axi3 RLAST   rlast_m   M_AXI3
add_port_map_axi3 AWLOCK  awlock_m  M_AXI3
add_port_map_axi3 ARCACHE arcache_m M_AXI3
add_port_map_axi3 WDATA   wdata_m   M_AXI3
add_port_map_axi3 AWVALID awvalid_m M_AXI3
add_port_map_axi3 RREADY  rready_m  M_AXI3
add_port_map_axi3 AWQOS   awqos_m   M_AXI3
add_port_map_axi3 BREADY  bready_m  M_AXI3
add_port_map_axi3 BVALID  bvalid_m  M_AXI3
add_port_map_axi3 WSTRB   wstrb_m   M_AXI3
add_port_map_axi3 AWID    awid_m    M_AXI3
add_port_map_axi3 WID     wid_m     M_AXI3
add_port_map_axi3 AWPROT  awprot_m  M_AXI3
add_port_map_axi3 BRESP   bresp_m   M_AXI3
add_port_map_axi3 AWCACHE awcache_m M_AXI3
add_port_map_axi3 WVALID  wvalid_m  M_AXI3
add_port_map_axi3 WLAST   wlast_m   M_AXI3
add_port_map_axi3 ARVALID arvalid_m M_AXI3
add_port_map_axi3 RVALID  rvalid_m  M_AXI3
add_port_map_axi3 WREADY  wready_m  M_AXI3
add_port_map_axi3 ARLEN   arlen3_m  M_AXI3
add_port_map_axi3 ARID    arid_m    M_AXI3
add_port_map_axi3 AWUSER  awuser_m  M_AXI3
add_port_map_axi3 ARUSER  aruser_m  M_AXI3
}

# GUI Customization
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ZERO_INVALID]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_AXI4]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_ACE]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_AFI]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AFI_NUM]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_ACP]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_PELE_GS]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REGISTER_CMD]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_ON_CCI400]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_ON_SEMI_CCI400]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_ON_SYSCACHE]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG0]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG1]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG2]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG3]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_NUM_EXCL]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_RD_IN_ORDER]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_B_IN_ORDER]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ADDR_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_SMID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_AWUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ARUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_ADDR_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_DATA_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_THREAD_ID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_AWUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_M_AXI_ARUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ENABLE_HIGHMEM]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_HIGHMEM_BASEADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_HIGHMEM_HIGHADDR]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_ZERO_INVALID]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_IS_AXI4]
set_property order 1020 [::ipx::get_user_parameters -of_objects $::core C_IS_AFI]
set_property order 1030 [::ipx::get_user_parameters -of_objects $::core C_AFI_NUM]
set_property order 1040 [::ipx::get_user_parameters -of_objects $::core C_IS_ACP]
set_property order 1050 [::ipx::get_user_parameters -of_objects $::core C_IS_PELE_GS]
set_property order 1060 [::ipx::get_user_parameters -of_objects $::core C_REGISTER_CMD]
set_property order 1070 [::ipx::get_user_parameters -of_objects $::core C_NUM_EXCL]
set_property order 1080 [::ipx::get_user_parameters -of_objects $::core C_S_RD_IN_ORDER]
set_property order 1090 [::ipx::get_user_parameters -of_objects $::core C_S_B_IN_ORDER]
set_property order 1100 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property order 1110 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property order 1120 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_AWUSER_WIDTH]
set_property order 1130 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ARUSER_WIDTH]
set_property order 1140 [::ipx::get_user_parameters -of_objects $::core C_M_AXI_DATA_WIDTH]
set_property order 1150 [::ipx::get_user_parameters -of_objects $::core C_M_AXI_THREAD_ID_WIDTH]
set_property order 1160 [::ipx::get_user_parameters -of_objects $::core C_M_AXI_AWUSER_WIDTH]
set_property order 1170 [::ipx::get_user_parameters -of_objects $::core C_M_AXI_ARUSER_WIDTH]
set_property order 1180 [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property order 1190 [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property order 1200 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ADDR_WIDTH]
set_property order 1210 [::ipx::get_user_parameters -of_objects $::core C_M_AXI_ADDR_WIDTH]
set_property order 1220 [::ipx::get_user_parameters -of_objects $::core C_ENABLE_HIGHMEM]
set_property order 1230 [::ipx::get_user_parameters -of_objects $::core C_HIGHMEM_BASEADDR]
set_property order 1240 [::ipx::get_user_parameters -of_objects $::core C_HIGHMEM_BASEADDR]
set_property order 1250 [::ipx::get_user_parameters -of_objects $::core C_IS_ACE]
set_property order 1260 [::ipx::get_user_parameters -of_objects $::core C_IS_ON_SEMI_CCI400]
set_property order 1270 [::ipx::get_user_parameters -of_objects $::core C_SMID_WIDTH]
set_property order 1280 [::ipx::get_user_parameters -of_objects $::core C_IS_ON_CCI400]
set_property order 1290 [::ipx::get_user_parameters -of_objects $::core C_IS_ON_SYSCACHE]
set_property order 1300 [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG0]
set_property order 1310 [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG1]
set_property order 1320 [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG2]
set_property order 1330 [::ipx::get_user_parameters -of_objects $::core C_IS_FLAG3]

# Address Spaces
set current_addrspace [::ipx::add_address_space {Data} $::core]
set_property range {281474976710656} $current_addrspace
set_property range_format {long} $current_addrspace
set_property range_resolve_type {dependent} $current_addrspace
set_property width 48 $current_addrspace
set_property width_format {long} $current_addrspace
set_property master_address_space_ref {Data} [::ipx::get_bus_interfaces -of_objects $::core M_AXI]
set_property master_address_space_ref {Data} [::ipx::get_bus_interfaces -of_objects $::core ACE]
if {$add_axi3} {
  set_property master_address_space_ref {Data} [::ipx::get_bus_interfaces -of_objects $::core M_AXI3]
}

# Memory maps
set slaveifs {S_AXI}
if {$add_axi3} { lappend slaveifs S_AXI3 }
foreach slaveif $slaveifs {
  set current_memory_map [::ipx::add_memory_map $slaveif $::core]
  set_property description "$slaveif memory map" $current_memory_map
  set current_address_block [::ipx::add_address_block Mem $current_memory_map]
  set_property width {32} $current_address_block
  set_property access {read-write} $current_address_block
  set_property usage {memory} $current_address_block
  set_property base_address {0} $current_address_block
  set_property base_address_format {long} $current_address_block
  set_property range {8192} $current_address_block
  set_property range_format {long} $current_address_block
  set param_obj [ipx::add_address_block_parameter OFFSET_BASE_PARAM $current_address_block]
  set_property value "C_BASEADDR" $param_obj
  set param_obj [ipx::add_address_block_parameter OFFSET_HIGH_PARAM $current_address_block]
  set_property value "C_HIGHADDR" $param_obj

  set current_highaddress_block [::ipx::add_address_block HighMem $current_memory_map]
  set_property width {40} $current_highaddress_block
  set_property access {read-write} $current_highaddress_block
  set_property usage {memory} $current_highaddress_block
  set_property base_address {0} $current_highaddress_block
  set_property base_address_format {string} $current_highaddress_block
  set_property range {8192} $current_highaddress_block
  set_property range_format {string} $current_highaddress_block
  set param_obj [ipx::add_address_block_parameter OFFSET_BASE_PARAM $current_highaddress_block]
  set_property value "C_HIGHMEM_BASEADDR" $param_obj
  set param_obj [ipx::add_address_block_parameter OFFSET_HIGH_PARAM $current_highaddress_block]
  set_property value "C_HIGHMEM_HIGHADDR" $param_obj

  set_property enablement_presence "optional" $current_highaddress_block
  set_property enablement_value "false" $current_highaddress_block
  set_property enablement_resolve_type "dependent" $current_highaddress_block
  set_property enablement_dependency "spirit:decode(id('PARAM_VALUE.C_ENABLE_HIGHMEM')) = 1" $current_highaddress_block
  

   set_property slave_memory_map_ref $slaveif [::ipx::get_bus_interfaces -of_objects $::core $slaveif]
}

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axi_exerciser_v1_00_b.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
#::ipx::archive_core xilinx_com_ip_axi_exerciser_v1_00_b.zip $::core
