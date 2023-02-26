proc init { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]

  bd::mark_propagate_overrideable $cell {C_BASEADDR C_HIGHADDR}
}
