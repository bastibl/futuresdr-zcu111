proc init { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  bd::mark_propagate_overrideable $cell \
    {C_BASEADDR C_HIGHADDR C_S_AXI_DATA_WIDTH C_S_AXI_ID_WIDTH}
}

proc pre_propagate { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  # Unforce bus properties
  set axi_protocol [get_property CONFIG.C_IS_AXI4 $cell]
  if {$axi_protocol == 1} {
    set pin [get_bd_intf_pins $cellpath/S_AXI]
  } else {
    set pin [get_bd_intf_pins $cellpath/S_AXI3]
  }
  foreach prop {DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to DEFAULT
    set_property CONFIG.$prop.VALUE_SRC DEFAULT $pin
  }
}

proc post_propagate { cellpath otherInfo } {
  debug::send_message -severity INFO -msg "axi_monitor:post_propagate"
  set cell [get_bd_cells $cellpath]
  set axi_protocol [get_property CONFIG.C_IS_AXI4 $cell]
  if {$axi_protocol == 1} {
    set pin [get_bd_intf_pins $cellpath/S_AXI]
  } else {
    set pin [get_bd_intf_pins $cellpath/S_AXI3]
  }


  # Force bus widths to the propagated value
  foreach prop {DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to CONSTANT
    set_property CONFIG.$prop.VALUE_SRC CONSTANT $pin
    set v [get_property CONFIG.$prop $pin]
    debug::send_message -severity INFO -msg "axi_monitor:$prop:$v"
  }
}
