proc set_global_properties {} {
  set_property display_name {BURST AXI Monitor Stub} $::core

  set_property description {AXI Monitor Stub for AXI Monitor} $::core

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
    virtex7   Production     \
    virtexu   Pre-Production \
    virtexu   Production     \
    zynq      Production     \
    zynquplus Pre-Production }

  set_property supported_families $families $::core
}

proc add_port_map_axi4 {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_port_map_axi4lite {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_port_map_axi3 {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_port_map_ace {logical_name physical_name busif_name} {
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
  if {$dependency != ""} {
    set_property enablement_presence optional [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_value true [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_resolve_type "dependent" [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_dependency $dependency [::ipx::get_hdl_parameters -of_objects $::core $name]
  }
}

# Create new Core
set ::core [::ipx::create_core xilinx.com ip axi_monstub 1.00.c]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axi_monstub_v1_00_c [::ipx::add_file hdl/verilog/axi_monstub.v $current_filegroup]
  set_property model_name axi_monstub $current_filegroup
}

# Block diagram files for IP Integrator
set current_filegroup [::ipx::add_file_group xilinx_blockdiagram $::core]
::ipx::add_file bd/bd.tcl $current_filegroup

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axi_monstub.v -top_module_name axi_monstub $::core

set_property data_type string [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value kintex7 [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_format STRING [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]

add_param C_FILTER_SIGS      0  "Filter Signals"      "" BOOL
add_param C_ALWAYS_RID       0  "Always RID"          "" BOOL
add_param C_ALWAYS_BID       0  "Always BID"          "" BOOL
add_param C_IGNORE_USER      0  "Ignore User Signals" "" BOOL
add_param C_NO_WRITE_BUS     0  "No Write Bus"        "" BOOL
add_param C_REGISTER_AXI     0  "Register AXI"        "" BOOL
add_param C_AXI_ID_WIDTH     1  "ID Width"
add_param C_AXI_ADDR_WIDTH   32 "Addr Width"
add_param C_AXI_DATA_WIDTH   32 "Data Width"
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_hdl_parameters  -of_objects $::core C_AXI_DATA_WIDTH]
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_user_parameters -of_objects $::core C_AXI_DATA_WIDTH]
add_param C_AXI_AWUSER_WIDTH 8  "AWUSER Width"
add_param C_AXI_ARUSER_WIDTH 8  "ARUSER Width"
add_param C_AXI_PROTOCOL "AXI3" "AXI Protocol"        "" STRING

::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axi_monstub.v -top_module_name axi_monstub $::core

set_property driver_value 0 [::ipx::get_ports -of_objects $::core aux_dbg_in]

::ipx::add_bus_interface CLK.ACLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK] CLK]
add_bus_param CLK.ACLK ASSOCIATED_BUSIF "AXI4:AXI4LITE:AXI3:ACE" string
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

::ipx::add_bus_interface AXI4 $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property interface_mode monitor [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property display_name AXI4 [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property description {Monitor AXI4 Interface} [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core AXI4]
set_property enablement_dependency {id('MODELPARAM_VALUE.C_AXI_PROTOCOL') = "AXI4"} [::ipx::get_bus_interfaces -of_objects $::core AXI4]
add_port_map_axi4 ARREADY arready AXI4
add_port_map_axi4 BID     bid     AXI4
add_port_map_axi4 ARSIZE  arsize  AXI4
add_port_map_axi4 RDATA   rdata   AXI4
add_port_map_axi4 AWREADY awready AXI4
add_port_map_axi4 AWADDR  awaddr  AXI4
add_port_map_axi4 ARADDR  araddr  AXI4
add_port_map_axi4 RID     rid     AXI4
add_port_map_axi4 ARBURST arburst AXI4
add_port_map_axi4 RRESP   rresp   AXI4
add_port_map_axi4 AWLEN   awlen   AXI4
add_port_map_axi4 ARPROT  arprot  AXI4
add_port_map_axi4 AWBURST awburst AXI4
add_port_map_axi4 AWSIZE  awsize  AXI4
add_port_map_axi4 ARLOCK  arlock1 AXI4
add_port_map_axi4 RLAST   rlast   AXI4
add_port_map_axi4 AWLOCK  awlock1 AXI4
add_port_map_axi4 ARCACHE arcache AXI4
add_port_map_axi4 WDATA   wdata   AXI4
add_port_map_axi4 AWVALID awvalid AXI4
add_port_map_axi4 RREADY  rready  AXI4
add_port_map_axi4 BREADY  bready  AXI4
add_port_map_axi4 BVALID  bvalid  AXI4
add_port_map_axi4 WSTRB   wstrb   AXI4
add_port_map_axi4 AWID    awid    AXI4
add_port_map_axi4 AWPROT  awprot  AXI4
add_port_map_axi4 BRESP   bresp   AXI4
add_port_map_axi4 AWCACHE awcache AXI4
add_port_map_axi4 WVALID  wvalid  AXI4
add_port_map_axi4 WLAST   wlast   AXI4
add_port_map_axi4 ARVALID arvalid AXI4
add_port_map_axi4 RVALID  rvalid  AXI4
add_port_map_axi4 WREADY  wready  AXI4
add_port_map_axi4 ARLEN   arlen   AXI4
add_port_map_axi4 ARID    arid    AXI4
add_port_map_axi4 AWUSER  awuser  AXI4
add_port_map_axi4 ARUSER  aruser  AXI4

::ipx::add_bus_interface AXI4LITE $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property interface_mode monitor [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property display_name AXI4LITE [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property description {Monitor AXI4LITE Interface} [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
set_property enablement_dependency {id('MODELPARAM_VALUE.C_AXI_PROTOCOL') = "AXI4LITE"} [::ipx::get_bus_interfaces -of_objects $::core AXI4LITE]
add_port_map_axi4lite ARREADY arready AXI4LITE
add_port_map_axi4lite RDATA   rdata   AXI4LITE
add_port_map_axi4lite AWREADY awready AXI4LITE
add_port_map_axi4lite AWADDR  awaddr  AXI4LITE
add_port_map_axi4lite ARADDR  araddr  AXI4LITE
add_port_map_axi4lite RRESP   rresp   AXI4LITE
add_port_map_axi4lite ARPROT  arprot  AXI4LITE
add_port_map_axi4lite WDATA   wdata   AXI4LITE
add_port_map_axi4lite AWVALID awvalid AXI4LITE
add_port_map_axi4lite RREADY  rready  AXI4LITE
add_port_map_axi4lite BREADY  bready  AXI4LITE
add_port_map_axi4lite BVALID  bvalid  AXI4LITE
add_port_map_axi4lite WSTRB   wstrb   AXI4LITE
add_port_map_axi4lite AWPROT  awprot  AXI4LITE
add_port_map_axi4lite BRESP   bresp   AXI4LITE
add_port_map_axi4lite WVALID  wvalid  AXI4LITE
add_port_map_axi4lite ARVALID arvalid AXI4LITE
add_port_map_axi4lite RVALID  rvalid  AXI4LITE
add_port_map_axi4lite WREADY  wready  AXI4LITE

::ipx::add_bus_interface AXI3 $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property interface_mode monitor [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property display_name AXI3 [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property description {Monitor AXI3 Interface} [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core AXI3]
set_property enablement_dependency {id('MODELPARAM_VALUE.C_AXI_PROTOCOL') = "AXI3"} [::ipx::get_bus_interfaces -of_objects $::core AXI3]
add_port_map_axi3 ARREADY arready AXI3
add_port_map_axi3 BID     bid     AXI3
add_port_map_axi3 ARSIZE  arsize  AXI3
add_port_map_axi3 RDATA   rdata   AXI3
add_port_map_axi3 AWREADY awready AXI3
add_port_map_axi3 AWADDR  awaddr  AXI3
add_port_map_axi3 ARADDR  araddr  AXI3
add_port_map_axi3 RID     rid     AXI3
add_port_map_axi3 ARBURST arburst AXI3
add_port_map_axi3 RRESP   rresp   AXI3
add_port_map_axi3 AWLEN   awlen3  AXI3
add_port_map_axi3 ARPROT  arprot  AXI3
add_port_map_axi3 AWBURST awburst AXI3
add_port_map_axi3 AWSIZE  awsize  AXI3
add_port_map_axi3 ARLOCK  arlock  AXI3
add_port_map_axi3 RLAST   rlast   AXI3
add_port_map_axi3 AWLOCK  awlock  AXI3
add_port_map_axi3 ARCACHE arcache AXI3
add_port_map_axi3 WDATA   wdata   AXI3
add_port_map_axi3 AWVALID awvalid AXI3
add_port_map_axi3 RREADY  rready  AXI3
add_port_map_axi3 BREADY  bready  AXI3
add_port_map_axi3 BVALID  bvalid  AXI3
add_port_map_axi3 WSTRB   wstrb   AXI3
add_port_map_axi3 AWID    awid    AXI3
add_port_map_axi3 WID     wid     AXI3
add_port_map_axi3 AWPROT  awprot  AXI3
add_port_map_axi3 BRESP   bresp   AXI3
add_port_map_axi3 AWCACHE awcache AXI3
add_port_map_axi3 WVALID  wvalid  AXI3
add_port_map_axi3 WLAST   wlast   AXI3
add_port_map_axi3 ARVALID arvalid AXI3
add_port_map_axi3 RVALID  rvalid  AXI3
add_port_map_axi3 WREADY  wready  AXI3
add_port_map_axi3 ARLEN   arlen3  AXI3
add_port_map_axi3 ARID    arid    AXI3
add_port_map_axi3 AWUSER  awuser  AXI3
add_port_map_axi3 ARUSER  aruser  AXI3

::ipx::add_bus_interface ACE $::core
set_property bus_type_vlnv xilinx.com:interface:acemm:1.0 [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property abstraction_type_vlnv xilinx.com:interface:acemm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property interface_mode monitor [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property display_name ACE [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property description {Monitor ACE Interface} [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property enablement_presence "optional" [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property enablement_value "false" [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property enablement_resolve_type "dependent" [::ipx::get_bus_interfaces -of_objects $::core ACE]
set_property enablement_dependency {id('MODELPARAM_VALUE.C_AXI_PROTOCOL') = "ACE"} [::ipx::get_bus_interfaces -of_objects $::core ACE]
add_port_map_ace AWID    awid    ACE
add_port_map_ace AWADDR  awaddr  ACE
add_port_map_ace AWLEN   awlen   ACE
add_port_map_ace AWSIZE  awsize  ACE
add_port_map_ace AWBURST awburst ACE
add_port_map_ace AWLOCK  awlock1 ACE
add_port_map_ace AWCACHE awcache ACE
add_port_map_ace AWPROT  awprot  ACE
add_port_map_ace AWUSER  awuser  ACE
add_port_map_ace AWSNOOP awsnoop ACE
add_port_map_ace AWDOMAIN awdomain ACE
add_port_map_ace AWBAR   awbar   ACE
add_port_map_ace AWVALID awvalid ACE
add_port_map_ace AWREADY awready ACE
add_port_map_ace WLAST   wlast   ACE
add_port_map_ace WDATA   wdata   ACE
add_port_map_ace WSTRB   wstrb   ACE
add_port_map_ace WVALID  wvalid  ACE
add_port_map_ace WREADY  wready  ACE
add_port_map_ace WACK    wack    ACE
add_port_map_ace BID     bid     ACE
add_port_map_ace BRESP   bresp   ACE
add_port_map_ace BVALID  bvalid  ACE
add_port_map_ace BREADY  bready  ACE
add_port_map_ace ARID    arid    ACE
add_port_map_ace ARADDR  araddr  ACE
add_port_map_ace ARLEN   arlen   ACE
add_port_map_ace ARSIZE  arsize  ACE
add_port_map_ace ARBURST arburst ACE
add_port_map_ace ARLOCK  arlock1 ACE
add_port_map_ace ARCACHE arcache ACE
add_port_map_ace ARPROT  arprot  ACE
add_port_map_ace ARUSER  aruser  ACE
add_port_map_ace ARSNOOP arsnoop ACE
add_port_map_ace ARDOMAIN ardomain ACE
add_port_map_ace ARBAR   arbar   ACE
add_port_map_ace ARVALID arvalid ACE
add_port_map_ace ARREADY arready ACE
add_port_map_ace RID     rid     ACE
add_port_map_ace RLAST   rlast   ACE
add_port_map_ace RDATA   rdata   ACE
add_port_map_ace RRESP   rresp4  ACE
add_port_map_ace RVALID  rvalid  ACE
add_port_map_ace RREADY  rready  ACE
add_port_map_ace RACK    rack    ACE
add_port_map_ace ACADDR  acaddr  ACE
add_port_map_ace ACSNOOP acsnoop ACE
add_port_map_ace ACVALID acvalid ACE
add_port_map_ace ACREADY acready ACE
add_port_map_ace CRRESP  crresp  ACE
add_port_map_ace CRVALID crvalid ACE
add_port_map_ace CRREADY crready ACE

# GUI Customization
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_FILTER_SIGS]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ALWAYS_RID]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ALWAYS_BID]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IGNORE_USER]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_NO_WRITE_BUS]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXI]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_ID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_ADDR_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_DATA_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_AWUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_ARUSER_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_AXI_PROTOCOL]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_FILTER_SIGS]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_ALWAYS_RID]
set_property order 1020 [::ipx::get_user_parameters -of_objects $::core C_ALWAYS_BID]
set_property order 1030 [::ipx::get_user_parameters -of_objects $::core C_IGNORE_USER]
set_property order 1040 [::ipx::get_user_parameters -of_objects $::core C_NO_WRITE_BUS]
set_property order 1050 [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXI]
set_property order 1060 [::ipx::get_user_parameters -of_objects $::core C_AXI_ID_WIDTH]
set_property order 1070 [::ipx::get_user_parameters -of_objects $::core C_AXI_ADDR_WIDTH]
set_property order 1080 [::ipx::get_user_parameters -of_objects $::core C_AXI_DATA_WIDTH]
set_property order 1090 [::ipx::get_user_parameters -of_objects $::core C_AXI_AWUSER_WIDTH]
set_property order 1100 [::ipx::get_user_parameters -of_objects $::core C_AXI_ARUSER_WIDTH]
set_property order 1110 [::ipx::get_user_parameters -of_objects $::core C_AXI_PROTOCOL]

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axi_monstub_v1_00_c.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
#::ipx::archive_core xilinx_com_ip_axi_monstub_v1_00_c.zip $::core
