proc set_global_properties {} {
  set_property display_name {BURST AXI-Stream Monitor Stub} $::core

  set_property description {AXI-Stream Monitor Stub for AXI Monitor} $::core

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
set ::core [::ipx::create_core xilinx.com ip axis_monstub 1.00.a]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axis_monstub_v1_00_a [::ipx::add_file hdl/verilog/axis_monstub.v $current_filegroup]
  set_property model_name axis_monstub $current_filegroup
}

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axis_monstub.v -top_module_name axis_monstub $::core

set_property data_type string [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value kintex7 [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_format STRING [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]

add_param C_REGISTER_AXIS  0 "Register AXI-Stream" "" BOOL
add_param C_USE_DBG2       0 "Use Dbg2"            "" BOOL

::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axis_monstub.v -top_module_name axis_monstub $::core

::ipx::add_bus_interface CLK.ACLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK] CLK]
add_bus_param CLK.ACLK ASSOCIATED_BUSIF "AXIS_0:AXIS_1:AXIS_2:AXIS_3" string
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

foreach i {0 1 2 3} {
::ipx::add_bus_interface AXIS_${i} $::core
set_property bus_type_vlnv xilinx.com:interface:axis:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}]
set_property abstraction_type_vlnv xilinx.com:interface:axis_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}]
set_property interface_mode monitor [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}]
set_property display_name AXIS_${i} [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}]
set_property description "AXI-Stream Interface ${i}" [::ipx::get_bus_interfaces -of_objects $::core AXIS_${i}]
add_port_map_axis TDATA   axis${i}_tdata  AXIS_${i}
add_port_map_axis TSTRB   axis${i}_tstrb  AXIS_${i}
add_port_map_axis TVALID  axis${i}_tvalid AXIS_${i}
add_port_map_axis TREADY  axis${i}_tready AXIS_${i}
add_port_map_axis TLAST   axis${i}_tlast  AXIS_${i}
}

# GUI Customization
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXIS]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_USE_DBG2]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXIS]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_USE_DBG2]

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axis_monstub_v1_00_a.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
::ipx::archive_core xilinx_com_ip_axis_monstub_v1_00_a.zip $::core
