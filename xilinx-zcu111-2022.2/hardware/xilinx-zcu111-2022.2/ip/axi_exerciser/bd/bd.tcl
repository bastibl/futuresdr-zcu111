proc init { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  bd::mark_propagate_overrideable $cell {C_BASEADDR C_HIGHADDR}
}

proc post_config_ip { cellpath otherInfo } {
  # BD_ATTRIBUTE.FUNCTION
  foreach memory_mapped_intf {M_AXI M_AXI3} {
    set bif [get_bd_intf_pins -quiet -regexp "$cellpath/$memory_mapped_intf"]
    if {[string length $bif] > 0} {
      set_property BD_ATTRIBUTE.FUNCTION CPU $bif
    }
  }
}
proc pre_propagate { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  # Unforce bus properties
  set axi_protocol [get_property CONFIG.C_IS_AXI4 $cell]
  if {$axi_protocol == 1} {
    set spin [get_bd_intf_pins $cellpath/S_AXI]
    set mpin [get_bd_intf_pins $cellpath/M_AXI]
  } else {
    set spin [get_bd_intf_pins $cellpath/S_AXI3]
    set mpin [get_bd_intf_pins $cellpath/M_AXI3]
  }
  foreach prop {ADDR_WIDTH DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to DEFAULT
    set_property CONFIG.$prop.VALUE_SRC DEFAULT $spin
    set_property CONFIG.$prop.VALUE_SRC DEFAULT $mpin
  }
}

proc post_propagate { cellpath otherInfo } {
  debug::send_message -severity INFO -msg "axi_exerciser:post_propagate"
  set cell [get_bd_cells $cellpath]
  set axi_protocol [get_property CONFIG.C_IS_AXI4 $cell]
  if {$axi_protocol == 1} {
    set spin [get_bd_intf_pins $cellpath/S_AXI]
    set mpin [get_bd_intf_pins $cellpath/M_AXI]
  } else {
    set spin [get_bd_intf_pins $cellpath/S_AXI3]
    set mpin [get_bd_intf_pins $cellpath/M_AXI3]
  }


  # Force bus widths to the propagated value
  foreach prop {ADDR_WIDTH DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to CONSTANT
    set_property CONFIG.$prop.VALUE_SRC CONSTANT $spin
    set_property CONFIG.$prop.VALUE_SRC CONSTANT $mpin
    set x [get_property CONFIG.$prop $spin]
    set y [get_property CONFIG.$prop $mpin]
    debug::send_message -severity INFO -msg "axi_exerciser:$prop:$x:$y"
  }
}
