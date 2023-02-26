proc init { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  bd::mark_propagate_overrideable $cell \
    {C_AXI_ADDR_WIDTH C_AXI_DATA_WIDTH C_AXI_ID_WIDTH C_AXI_AWUSER_WIDTH C_AXI_ARUSER_WIDTH}
}

proc pre_propagate { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  # Unforce bus properties
  set axi_protocol [get_property CONFIG.C_AXI_PROTOCOL $cell]
  set pin [get_bd_intf_pins $cellpath/$axi_protocol]
  foreach prop {PROTOCOL ADDR_WIDTH DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to DEFAULT
    set_property CONFIG.$prop.VALUE_SRC DEFAULT $pin
  }
}

proc post_propagate { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  # Force AXI4 bus protocol to the propagated protocol (AXI4 or AXI4Lite)
  set axi_protocol [get_property CONFIG.C_AXI_PROTOCOL $cell]
  if {$axi_protocol == "AXI4"} {
    set pin [get_bd_intf_pins $cellpath/AXI4]
    set_property CONFIG.PROTOCOL.VALUE_SRC CONSTANT $pin
  } elseif {$axi_protocol == "AXI4LITE"} {
    set pin [get_bd_intf_pins $cellpath/AXI4LITE]
    set_property CONFIG.PROTOCOL.VALUE_SRC CONSTANT $pin
  } elseif {$axi_protocol == "AXI3"} {
    set pin [get_bd_intf_pins $cellpath/AXI3]
    set_property CONFIG.PROTOCOL.VALUE_SRC CONSTANT $pin
  }

  # Force bus widths to the propagated value
  set pin [get_bd_intf_pins $cellpath/$axi_protocol]
  foreach prop {ADDR_WIDTH DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH} {
    # Always set bus properties to CONSTANT
    set_property CONFIG.$prop.VALUE_SRC CONSTANT $pin
  }
}
