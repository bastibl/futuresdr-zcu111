set add_axi3 1

proc set_global_properties {} {
  set_property display_name {BURST AXI Monitor} $::core

  set_property description {AXI Monitor monitors and records AXI, AXI-Stream and MicroBlaze via monitor stubs} $::core

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
  if {$dependency != ""} {
    set_property enablement_presence optional [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_value true [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_resolve_type "dependent" [::ipx::get_hdl_parameters -of_objects $::core $name]
    set_property enablement_dependency $dependency [::ipx::get_hdl_parameters -of_objects $::core $name]
  }
}

proc add_user_param {name value {display_name ""} {format LONG} {length 32}} {
  ::ipx::add_user_parameter $name $::core
  if {$format == "BOOL"} {
    set_property value_validation_list {false:0 true:1} [::ipx::get_user_parameters -of_objects $::core $name]
    set_property value_format LONG [::ipx::get_user_parameters -of_objects $::core $name]
  } else {
    set_property value_format $format [::ipx::get_user_parameters -of_objects $::core $name]
  }
  set_property value $value [::ipx::get_user_parameters -of_objects $::core $name]
  if {$display_name != ""} {
    set_property display_name $display_name [::ipx::get_user_parameters -of_objects $::core $name]
  }
  if {$format == "BITSTRING"} {
    set_property value_bit_string_length $length [::ipx::get_user_parameters -of_objects $::core $name]
  }
  set_property value_resolve_type user [::ipx::get_user_parameters -of_objects $::core $name]
}

# Create new Core
set ::core [::ipx::create_core xilinx.com ip axi_monitor 1.00.c]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name axi_monitor_v1_00_c [::ipx::add_file hdl/verilog/axi_monitor.v $current_filegroup]
  set_property model_name axi_monitor $current_filegroup
}

# Block diagram files for IP Integrator
set current_filegroup [::ipx::add_file_group xilinx_blockdiagram $::core]
::ipx::add_file bd/bd.tcl $current_filegroup

# Customization Parameters
::ipx::remove_all_hdl_parameter $::core
::ipx::add_model_parameters_from_hdl -top_level_hdl_file hdl/verilog/axi_monitor.v -top_module_name axi_monitor $::core

set_property data_type string [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value kintex7 [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_format STRING [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]
set_property value_resolve_type generated [::ipx::get_hdl_parameters -of_objects $::core C_FAMILY]

add_param C_SYSTEM_TYPE            0          "System Type" "" BITSTRING
add_param C_DEPTH_MUL              1          "Depth"
set_property value_validation_list {1024:1 2048:2 4096:4 8192:8 16384:16} [::ipx::get_hdl_parameters -of_objects $::core C_DEPTH_MUL]
set_property value_validation_list {1024:1 2048:2 4096:4 8192:8 16384:16} [::ipx::get_user_parameters -of_objects $::core C_DEPTH_MUL]
add_param C_DISABLE_LA             0          "Disable Logic Analyzer" "" BOOL
add_param C_REG_LA_INPS            1          "Register LA Inputs"     "" BOOL
add_param C_REG_LA_ADDR            0          "Register LA Address"    "" BOOL
add_param C_LA_NO_WRITE            1          "LA No Write"            "" BOOL
add_param C_REG_BRAM_OUT           1          "Register BRAM Outputs"  "" BOOL
add_param C_REGISTER_AXI           0          "Register AXI"           "" BOOL
add_param C_INVERT_PARPORT         0          "Invert Par Port"        "" BOOL
add_param C_REG0_RESET_VAL         0          "Register 0 Reset Value"
add_param C_REG6_RESET_VAL         0          "Register 6 Reset Value"
add_param C_ATOMIC_REG11           0          "Atomic Register 11"     "" BOOL
add_param C_ATOMIC_REG12           0          "Atomic Register 12"     "" BOOL
add_param C_WAKE_REG11             0          "Wake Register 11"       "" BOOL
add_param C_INTR_REG12             0          "Interrupt Register 12"  "" BOOL
add_param C_BASEADDR               0xFFFFFFFF "Base Address (Hex)"     "" BITSTRING
add_param C_HIGHADDR               0x00000000 "High Address (Hex)"     "" BITSTRING
add_param C_S_AXI_DATA_WIDTH       32         "Data Width"             ""
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_hdl_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property value_validation_list {32:32 64:64 128:128 256:256 512:512 1024:1024} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
add_param C_S_AXI_ID_WIDTH         1          "ID Width"               ""
add_param C_TRC_FILE             "aximon.trc" "Trace File"             "" STRING

add_user_param C_IS_AXI4           0          "Use AXI4"               BOOL

# Ports
::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/axi_monitor.v -top_module_name axi_monitor $::core

set ports [::ipx::get_ports -filter {DIRECTION=~in} -of_objects $::core *]
foreach port $ports {
  set portname [lindex $port 2]
  if {$portname == "Clk" || $portname == "LA_Clk" || $portname == "Rst_n"} { continue }
  set port [::ipx::get_ports -of_objects $::core $portname]
  set_property driver_value 0 $port
}

::ipx::add_bus_interface CLK.ACLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.ACLK] CLK]
if {$add_axi3} {
  add_bus_param CLK.ACLK ASSOCIATED_BUSIF "S_AXI:S_AXI3" string
} else {
  add_bus_param CLK.ACLK ASSOCIATED_BUSIF "S_AXI" string
}
add_bus_param CLK.ACLK ASSOCIATED_RESET Rst_n string

::ipx::add_bus_interface CLK.LA_CLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK]
set_property PHYSICAL_NAME LA_Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.LA_CLK] CLK]

::ipx::add_bus_interface RST.ARESETN $::core
set_property bus_type_vlnv xilinx.com:signal:reset:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property abstraction_type_vlnv xilinx.com:signal:reset_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property display_name Rst_n [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property description {Reset} [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
add_bus_param RST.ARESETN POLARITY ACTIVE_LOW string dependent
::ipx::add_port_map RST [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN]
set_property PHYSICAL_NAME Rst_n [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.ARESETN] RST]

foreach intr {dummy_irq0 dummy_irq1 dummy_irq2 dummy_irq3} {
::ipx::add_bus_interface INTERRUPT.${intr} $::core
set_property bus_type_vlnv xilinx.com:signal:interrupt:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property abstraction_type_vlnv xilinx.com:signal:interrupt_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
add_bus_param INTERRUPT.${intr} SENSITIVITY LEVEL_HIGH string
add_bus_param INTERRUPT.${intr} SUGGESTED_PRIORITY HIGH string
::ipx::add_port_map INTERRUPT [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property PHYSICAL_NAME ${intr} [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}] INTERRUPT]
}

foreach intr {out_intr0 out_intr1 out_intr2 out_intr3} {
::ipx::add_bus_interface INTERRUPT.${intr} $::core
set_property bus_type_vlnv xilinx.com:signal:interrupt:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property abstraction_type_vlnv xilinx.com:signal:interrupt_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property interface_mode master [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
add_bus_param INTERRUPT.${intr} SENSITIVITY EDGE_RISING string
add_bus_param INTERRUPT.${intr} SUGGESTED_PRIORITY HIGH string
::ipx::add_port_map INTERRUPT [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}]
set_property PHYSICAL_NAME ${intr} [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core INTERRUPT.${intr}] INTERRUPT]
}

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
add_port_map_axi4 AWID    s_awid    S_AXI $add_axi3
add_port_map_axi4 AWADDR  s_awaddr  S_AXI $add_axi3
add_port_map_axi4 AWLEN   s_awlen   S_AXI $add_axi3
add_port_map_axi4 AWSIZE  s_awsize  S_AXI $add_axi3
add_port_map_axi4 AWBURST s_awburst S_AXI $add_axi3
add_port_map_axi4 AWLOCK  s_awlock1 S_AXI $add_axi3
add_port_map_axi4 AWCACHE s_awcache S_AXI $add_axi3
add_port_map_axi4 AWPROT  s_awprot  S_AXI $add_axi3
add_port_map_axi4 AWVALID s_awvalid S_AXI $add_axi3
add_port_map_axi4 AWREADY s_awready S_AXI $add_axi3
add_port_map_axi4 WID     s_wid     S_AXI $add_axi3
add_port_map_axi4 WLAST   s_wlast   S_AXI $add_axi3
add_port_map_axi4 WDATA   s_wdata   S_AXI $add_axi3
add_port_map_axi4 WSTRB   s_wstrb   S_AXI $add_axi3
add_port_map_axi4 WVALID  s_wvalid  S_AXI $add_axi3
add_port_map_axi4 WREADY  s_wready  S_AXI $add_axi3
add_port_map_axi4 BID     s_bid     S_AXI $add_axi3
add_port_map_axi4 BRESP   s_bresp   S_AXI $add_axi3
add_port_map_axi4 BVALID  s_bvalid  S_AXI $add_axi3
add_port_map_axi4 BREADY  s_bready  S_AXI $add_axi3
add_port_map_axi4 ARID    s_arid    S_AXI $add_axi3
add_port_map_axi4 ARADDR  s_araddr  S_AXI $add_axi3
add_port_map_axi4 ARLEN   s_arlen   S_AXI $add_axi3
add_port_map_axi4 ARSIZE  s_arsize  S_AXI $add_axi3
add_port_map_axi4 ARBURST s_arburst S_AXI $add_axi3
add_port_map_axi4 ARLOCK  s_arlock1 S_AXI $add_axi3
add_port_map_axi4 ARCACHE s_arcache S_AXI $add_axi3
add_port_map_axi4 ARPROT  s_arprot  S_AXI $add_axi3
add_port_map_axi4 ARVALID s_arvalid S_AXI $add_axi3
add_port_map_axi4 ARREADY s_arready S_AXI $add_axi3
add_port_map_axi4 RID     s_rid     S_AXI $add_axi3
add_port_map_axi4 RLAST   s_rlast   S_AXI $add_axi3
add_port_map_axi4 RDATA   s_rdata   S_AXI $add_axi3
add_port_map_axi4 RRESP   s_rresp   S_AXI $add_axi3
add_port_map_axi4 RVALID  s_rvalid  S_AXI $add_axi3
add_port_map_axi4 RREADY  s_rready  S_AXI $add_axi3

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
add_port_map_axi3 AWID    s_awid    S_AXI3
add_port_map_axi3 AWADDR  s_awaddr  S_AXI3
add_port_map_axi3 AWLEN   s_awlen3  S_AXI3
add_port_map_axi3 AWSIZE  s_awsize  S_AXI3
add_port_map_axi3 AWBURST s_awburst S_AXI3
add_port_map_axi3 AWLOCK  s_awlock  S_AXI3
add_port_map_axi3 AWCACHE s_awcache S_AXI3
add_port_map_axi3 AWPROT  s_awprot  S_AXI3
add_port_map_axi3 AWVALID s_awvalid S_AXI3
add_port_map_axi3 AWREADY s_awready S_AXI3
add_port_map_axi3 WID     s_wid     S_AXI3
add_port_map_axi3 WLAST   s_wlast   S_AXI3
add_port_map_axi3 WDATA   s_wdata   S_AXI3
add_port_map_axi3 WSTRB   s_wstrb   S_AXI3
add_port_map_axi3 WVALID  s_wvalid  S_AXI3
add_port_map_axi3 WREADY  s_wready  S_AXI3
add_port_map_axi3 BID     s_bid     S_AXI3
add_port_map_axi3 BRESP   s_bresp   S_AXI3
add_port_map_axi3 BVALID  s_bvalid  S_AXI3
add_port_map_axi3 BREADY  s_bready  S_AXI3
add_port_map_axi3 ARID    s_arid    S_AXI3
add_port_map_axi3 ARADDR  s_araddr  S_AXI3
add_port_map_axi3 ARLEN   s_arlen3  S_AXI3
add_port_map_axi3 ARSIZE  s_arsize  S_AXI3
add_port_map_axi3 ARBURST s_arburst S_AXI3
add_port_map_axi3 ARLOCK  s_arlock  S_AXI3
add_port_map_axi3 ARCACHE s_arcache S_AXI3
add_port_map_axi3 ARPROT  s_arprot  S_AXI3
add_port_map_axi3 ARVALID s_arvalid S_AXI3
add_port_map_axi3 ARREADY s_arready S_AXI3
add_port_map_axi3 RID     s_rid     S_AXI3
add_port_map_axi3 RLAST   s_rlast   S_AXI3
add_port_map_axi3 RDATA   s_rdata   S_AXI3
add_port_map_axi3 RRESP   s_rresp   S_AXI3
add_port_map_axi3 RVALID  s_rvalid  S_AXI3
add_port_map_axi3 RREADY  s_rready  S_AXI3
}

# GUI Customization
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_SYSTEM_TYPE]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_DEPTH_MUL]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_DISABLE_LA]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REG_LA_INPS]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REG_LA_ADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_LA_NO_WRITE]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REG_BRAM_OUT]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXI]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_INVERT_PARPORT]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REG0_RESET_VAL]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_REG6_RESET_VAL]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ATOMIC_REG11]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_ATOMIC_REG12]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_WAKE_REG11]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_INTR_REG12]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_TRC_FILE]
set_property config_groups {1 Parameters} [::ipx::get_user_parameters -of_objects $::core C_IS_AXI4]
set_property order 1000 [::ipx::get_user_parameters -of_objects $::core C_SYSTEM_TYPE]
set_property order 1010 [::ipx::get_user_parameters -of_objects $::core C_DEPTH_MUL]
set_property order 1020 [::ipx::get_user_parameters -of_objects $::core C_DISABLE_LA]
set_property order 1030 [::ipx::get_user_parameters -of_objects $::core C_REG_LA_INPS]
set_property order 1040 [::ipx::get_user_parameters -of_objects $::core C_REG_LA_ADDR]
set_property order 1050 [::ipx::get_user_parameters -of_objects $::core C_LA_NO_WRITE]
set_property order 1060 [::ipx::get_user_parameters -of_objects $::core C_REG_BRAM_OUT]
set_property order 1070 [::ipx::get_user_parameters -of_objects $::core C_REGISTER_AXI]
set_property order 1080 [::ipx::get_user_parameters -of_objects $::core C_INVERT_PARPORT]
set_property order 1090 [::ipx::get_user_parameters -of_objects $::core C_REG0_RESET_VAL]
set_property order 1100 [::ipx::get_user_parameters -of_objects $::core C_REG6_RESET_VAL]
set_property order 1110 [::ipx::get_user_parameters -of_objects $::core C_ATOMIC_REG11]
set_property order 1120 [::ipx::get_user_parameters -of_objects $::core C_ATOMIC_REG12]
set_property order 1130 [::ipx::get_user_parameters -of_objects $::core C_WAKE_REG11]
set_property order 1140 [::ipx::get_user_parameters -of_objects $::core C_INTR_REG12]
set_property order 1150 [::ipx::get_user_parameters -of_objects $::core C_BASEADDR]
set_property order 1160 [::ipx::get_user_parameters -of_objects $::core C_HIGHADDR]
set_property order 1170 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_DATA_WIDTH]
set_property order 1180 [::ipx::get_user_parameters -of_objects $::core C_S_AXI_ID_WIDTH]
set_property order 1190 [::ipx::get_user_parameters -of_objects $::core C_TRC_FILE]
set_property order 1200 [::ipx::get_user_parameters -of_objects $::core C_IS_AXI4]

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

  set_property slave_memory_map_ref $slaveif [::ipx::get_bus_interfaces -of_objects $::core $slaveif]
}

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/axi_monitor_v1_00_c.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
#::ipx::archive_core xilinx_com_ip_axi_monitor_v1_00_c.zip $::core
