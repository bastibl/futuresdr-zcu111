proc set_global_properties {} {
  set_property display_name {BURST MicroBlaze Monitor Stub} $::core

  set_property description {MicroBlaze Trace Monitor Stub for AXI Monitor} $::core

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

proc add_port_map_trace {logical_name physical_name busif_name} {
  set bus_interface [::ipx::get_bus_interfaces -of_objects $::core $busif_name]
  ::ipx::add_port_map $logical_name $bus_interface
  set_property PHYSICAL_NAME $physical_name [::ipx::get_port_maps -of_objects $bus_interface $logical_name]
}

# Create new Core
set ::core [::ipx::create_core xilinx.com ip mb_monstub 1.00.b]
set_property root_directory {.} $::core

# Source files
foreach fg {xilinx_vivadoverilogsynthesis xilinx_vivadoverilogbehavioralsimulation} {
  set current_filegroup [::ipx::add_file_group $fg $::core]
  set_property library_name mb_monstub_v1_00_b [::ipx::add_file hdl/verilog/mb_monstub.v $current_filegroup]
  set_property model_name mb_monstub $current_filegroup
}

# Ports
::ipx::remove_all_port $::core
::ipx::add_ports_from_hdl -top_level_hdl_file hdl/verilog/mb_monstub.v -top_module_name mb_monstub $::core

set ports [::ipx::get_ports -filter {DIRECTION=~in} -of_objects $::core *]
foreach port $ports {
  set portname [lindex $port 2]
  if {$portname == "Clk" || $portname == "Rst"} { continue }
  set port [::ipx::get_ports -of_objects $::core $portname]
  set_property driver_value 0 $port
}

::ipx::add_bus_interface CLK.CLK $::core
set_property bus_type_vlnv xilinx.com:signal:clock:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property abstraction_type_vlnv xilinx.com:signal:clock_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property display_name Clk [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property description {Clock input} [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
::ipx::add_port_map CLK [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK]
set_property PHYSICAL_NAME Clk [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core CLK.CLK] CLK]

::ipx::add_bus_interface RST.RST $::core
set_property bus_type_vlnv xilinx.com:signal:reset:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property abstraction_type_vlnv xilinx.com:signal:reset_rtl:1.0 [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property display_name Rst [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property description {Reset} [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
::ipx::add_bus_parameter POLARITY [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property value "ACTIVE_HIGH" [::ipx::get_bus_parameters -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.RST] POLARITY]
set_property value_format string [::ipx::get_bus_parameters -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.RST] POLARITY]
set_property value_resolve_type dependent [::ipx::get_bus_parameters -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.RST] POLARITY]
::ipx::add_port_map RST [::ipx::get_bus_interfaces -of_objects $::core RST.RST]
set_property PHYSICAL_NAME Rst [::ipx::get_port_maps -of_objects [::ipx::get_bus_interfaces -of_objects $::core RST.RST] RST]

::ipx::add_bus_interface TRACE $::core
set_property bus_type_vlnv xilinx.com:interface:mbtrace:2.0 [::ipx::get_bus_interfaces -of_objects $::core TRACE]
set_property abstraction_type_vlnv xilinx.com:interface:mbtrace_rtl:2.0 [::ipx::get_bus_interfaces -of_objects $::core TRACE]
set_property interface_mode slave [::ipx::get_bus_interfaces -of_objects $::core TRACE]
set_property display_name TRACE [::ipx::get_bus_interfaces -of_objects $::core TRACE]
set_property description {Slave Trace Interface} [::ipx::get_bus_interfaces -of_objects $::core TRACE]
add_port_map_trace Instruction      trace_instruction       TRACE
add_port_map_trace Valid_Instr      trace_valid_instr       TRACE
add_port_map_trace PC               trace_pc                TRACE
add_port_map_trace Reg_Write        trace_reg_write         TRACE
add_port_map_trace Reg_Addr         trace_reg_addr          TRACE
add_port_map_trace MSR_Reg          trace_msr_reg           TRACE
add_port_map_trace PID_Reg          trace_pid_reg           TRACE
add_port_map_trace New_Reg_Value    trace_new_reg_value     TRACE
add_port_map_trace Exception_Taken  trace_exception_taken   TRACE
add_port_map_trace Exception_Kind   trace_exception_kind    TRACE
add_port_map_trace Jump_Taken       trace_jump_taken        TRACE
add_port_map_trace Delay_Slot       trace_delay_slot        TRACE
add_port_map_trace Data_Address     trace_data_address      TRACE
add_port_map_trace Data_Access      trace_data_access       TRACE
add_port_map_trace Data_Read        trace_data_read         TRACE
add_port_map_trace Data_Write       trace_data_write        TRACE
add_port_map_trace Data_Write_Value trace_data_write_value  TRACE
add_port_map_trace Data_Byte_Enable trace_data_byte_enable  TRACE
add_port_map_trace DCache_Req       trace_dcache_req        TRACE
add_port_map_trace DCache_Hit       trace_dcache_hit        TRACE
add_port_map_trace ICache_Req       trace_icache_req        TRACE
add_port_map_trace ICache_Hit       trace_icache_hit        TRACE
add_port_map_trace OF_Piperun       trace_of_piperun        TRACE
add_port_map_trace EX_Piperun       trace_ex_piperun        TRACE
add_port_map_trace MEM_Piperun      trace_mem_piperun       TRACE

# GUI file groups
::ipx::add_file_group xilinx_vivadoxpgui $::core
::ipx::add_file xgui/mb_monstub_v1_00_b.tcl [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]
set_property display_name "UI Layout" [::ipx::get_file_groups -of_objects $::core xilinx_vivadoxpgui]

set_global_properties

# Validate and save core
::ipx::save_core $::core
::ipx::archive_core xilinx_com_ip_mb_monstub_v1_00_b.zip $::core
