proc set_global_properties {} {
  set_property display_name {BURST AXI-Stream Counter} $::core

  set_property description {Clock cycle counter accessed via AXI-Stream} $::core

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
    virtexu   Production \
    zynq      Production     \
    zynquplus Pre-Production }

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
set ::core [::ipx::create_core xilinx.com ip axis_cntr 1.00.a]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axis_cntr_v1_00_a [::ipx::add_file hdl/verilog/axis_cntr.v $current_filegroup]
  set_property model_name axis_cntr $current_filegroup
}

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axis_cntr.v -top_module_name axis_cntr $::core

add_param C_EXT_RESET_HIGH    1 "External Reset Active High" "" BOOL
add_param C_USE_EXTERNAL_CNTR 0 "Use External Counter"       "" BOOL

::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axis_cntr.v -top_module_name axis_cntr $::core

set cntr_in [::ipx::get_ports -of_objects $::core cntr_in]
set_property enablement_presence optional $cntr_in
set_property enablement_value "false" $cntr_in
set_property enablement_resolve_type "dependent" $cntr_in
set_property enablement_dependency "spirit:decode(id('MODELPARAM_VALUE.C_USE_EXTERNAL_CNTR')) = 1" $cntr_in

::ipx::add_bus_interface CLK.CLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK] CLK]
add_bus_param CLK.CLK ASSOCIATED_BUSIF "AXIS_0_IN:AXIS_1_IN:AXIS_0_OUT:AXIS_1_OUT" string
add_bus_param CLK.CLK ASSOCIATED_RESET Rst string

set bif [::ipx::add_bus_interface RST.RST $::core]
set_property bus_type_vlnv xilinx.com:signal:reset:1.0 $bif
set_property abstraction_type_vlnv xilinx.com:signal:reset_rtl:1.0 $bif
set_property interface_mode slave $bif
set_property display_name Rst $bif
set_property description {Reset} $bif
set ext_reset_high {spirit:decode(id('MODELPARAM_VALUE.C_EXT_RESET_HIGH'))}
set dependency "substring(\"ACTIVE_HIGHACTIVE_LOW\", 1 + 11 * number(($ext_reset_high = 0)), 11 + 10 * number(($ext_reset_high = 0)))"
add_bus_param RST.RST POLARITY ACTIVE_HIGH string dependent $dependency
::ipx::add_port_map RST $bif
set_property PHYSICAL_NAME Rst [::ipx::get_port_maps -of_objects $bif RST]

foreach i {0 1} {
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
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_EXT_RESET_HIGH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_USE_EXTERNAL_CNTR]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_EXT_RESET_HIGH]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_USE_EXTERNAL_CNTR]

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axis_cntr_v1_00_a.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
::ipx::archive_core xilinx_com_ip_axis_cntr_v1_00_a.zip $::core
