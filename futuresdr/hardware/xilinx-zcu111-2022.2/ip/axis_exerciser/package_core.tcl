proc set_global_properties {} {
  set_property display_name {BURST AXI-Stream Exerciser} $::core

  set_property description {AXI-Stream Exerciser generates AXI-Stream traffic based on core programming} $::core

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
    zynq      Production     }

  set_property supported_families $families $::core
}

proc add_port_map_axis {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

proc add_port_map_axi4 {logical_name physical_name busif_name} {
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
set ::core [::ipx::create_core xilinx.com ip axis_exerciser 1.00.b]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axis_exerciser_v1_00_b [::ipx::add_file hdl/verilog/axis_exerciser.v $current_filegroup]
  set_property model_name axis_exerciser $current_filegroup
}

# Block diagram files for IP Integrator
set current_filegroup [::ipx::add_file_group xilinx_blockdiagram $::core]
::ipx::add_file bd/bd.tcl $current_filegroup

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axis_exerciser.v -top_module_name axis_exerciser $::core

set_property data_type string [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value kintex7 [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_format STRING [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]

add_param C_BASEADDR         0xFFFFFFFF "Slave Base Address" "" BITSTRING
add_param C_HIGHADDR         0x00000000 "Slave High Address" "" BITSTRING
add_param C_S_AXI_DATA_WIDTH 32         "Data Width"
add_param C_S_AXI_ID_WIDTH   1          "ID Width"
add_param ZERO_INVALID       1          "Force Zero On Invalid" "" BOOL
add_param C_FIRST_AXIS       1          "First AXI-Stream"      "" BOOL

::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axis_exerciser.v -top_module_name axis_exerciser $::core

set_property driver_value 0 [::ipx::get_ports -of_objects $::core awid_s]
set_property driver_value 0 [::ipx::get_ports -of_objects $::core arid_s]
set_property driver_value 0 [::ipx::get_ports -of_objects $::core wlast_s]

::ipx::add_bus_interface CLK.ACLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK] CLK]
add_bus_param CLK.ACLK ASSOCIATED_BUSIF "S_AXI:AXIS_0_IN:AXIS_1_IN:AXIS_2_IN:AXIS_3_IN:AXIS_0_OUT:AXIS_1_OUT:AXIS_2_OUT:AXIS_3_OUT" string
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

::ipx::add_bus_interface S_AXI $::core
set_property bus_type_vlnv xilinx.com:interface:aximm:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property abstraction_type_vlnv xilinx.com:interface:aximm_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property display_name S_AXI [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
set_property description {Slave AXI4-Lite Interface} [::ipx::get_bus_interfaces -of_objects $::core S_AXI]
add_port_map_axi4 AWID    awid_s    S_AXI
add_port_map_axi4 AWADDR  awaddr_s  S_AXI
add_port_map_axi4 AWVALID awvalid_s S_AXI
add_port_map_axi4 AWREADY awready_s S_AXI
add_port_map_axi4 WLAST   wlast_s   S_AXI
add_port_map_axi4 WDATA   wdata_s   S_AXI
add_port_map_axi4 WSTRB   wstrb_s   S_AXI
add_port_map_axi4 WVALID  wvalid_s  S_AXI
add_port_map_axi4 WREADY  wready_s  S_AXI
add_port_map_axi4 BID     bid_s     S_AXI
add_port_map_axi4 BRESP   bresp_s   S_AXI
add_port_map_axi4 BVALID  bvalid_s  S_AXI
add_port_map_axi4 BREADY  bready_s  S_AXI
add_port_map_axi4 ARID    arid_s    S_AXI
add_port_map_axi4 ARADDR  araddr_s  S_AXI
add_port_map_axi4 ARVALID arvalid_s S_AXI
add_port_map_axi4 ARREADY arready_s S_AXI
add_port_map_axi4 RID     rid_s     S_AXI
add_port_map_axi4 RLAST   rlast_s   S_AXI
add_port_map_axi4 RDATA   rdata_s   S_AXI
add_port_map_axi4 RRESP   rresp_s   S_AXI
add_port_map_axi4 RVALID  rvalid_s  S_AXI
add_port_map_axi4 RREADY  rready_s  S_AXI

foreach i {0 1 2 3} {
::ipx::add_bus_interface AXIS_${i}_IN $::core
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_IN]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_IN]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_IN]
set_property display_name AXIS_${i}_IN [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_IN]
set_property description "Slave AXI-Stream Interface ${i}" [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_IN]
add_port_map_axis TREADY  axis${i}_in_tready AXIS_${i}_IN
add_port_map_axis TDATA   axis${i}_in_tdata  AXIS_${i}_IN
add_port_map_axis TVALID  axis${i}_in_tvalid AXIS_${i}_IN
add_port_map_axis TLAST   axis${i}_in_tlast  AXIS_${i}_IN

::ipx::add_bus_interface AXIS_${i}_OUT $::core
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_OUT]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_OUT]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_OUT]
set_property display_name AXIS_${i}_OUT [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_OUT]
set_property description "Master AXI-Stream Interface ${i}" [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}_OUT]
add_port_map_axis TREADY  axis${i}_out_tready AXIS_${i}_OUT
add_port_map_axis TDATA   axis${i}_out_tdata  AXIS_${i}_OUT
add_port_map_axis TVALID  axis${i}_out_tvalid AXIS_${i}_OUT
add_port_map_axis TLAST   axis${i}_out_tlast  AXIS_${i}_OUT
}

# GUI Customization
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core ZERO_INVALID]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_FIRST_AXIS]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property order 1020 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property order 1030 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property order 1040 [::ipx::get_user_parameters -of_objects $::core ZERO_INVALID]
set_property order 1050 [::ipx::get_user_parameters -of_objects $::core C_FIRST_AXIS]

# Memory maps
foreach slaveif {S_AXI} {
  set current_memory_map [::ipx::add_memory_map $slaveif $::core]
  set_property description "$slaveif memory map" $current_memory_map
  set current_address_block [::ipx::add_address_block Reg $current_memory_map]
  set_property width {32} $current_address_block
  set_property access {read-write} $current_address_block
  set_property usage {register} $current_address_block
  set_property base_address {0} $current_address_block
  set_property base_address_format {long} $current_address_block
  set_property range {8192} $current_address_block
  set_property range_format {long} $current_address_block
  set param_obj [ipx::add_address_block_parameter OFFSET_BASE_PARAM $current_address_block]
  set_property value "C_BASEADDR" $param_obj
  set param_obj [ipx::add_address_block_parameter OFFSET_HIGH_PARAM $current_address_block]
  set_property value "C_HIGHADDR" $param_obj

  set_property slave_memory_map_ref $slaveif [::ipx::get_bus_interfaces -of_objects $::core $slaveif]
}

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axis_exerciser_v1_00_b.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
::ipx::archive_core xilinx_com_ip_axis_exerciser_v1_00_b.zip $::core
