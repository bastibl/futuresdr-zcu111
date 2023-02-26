# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_MEM_PIPELINE" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_MEM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_NUM_AXI_STREAM_M" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_NUM_TILES" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_MEM_PIPELINE { PARAM_VALUE.C_MEM_PIPELINE } {
	# Procedure called to update C_MEM_PIPELINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MEM_PIPELINE { PARAM_VALUE.C_MEM_PIPELINE } {
	# Procedure called to validate C_MEM_PIPELINE
	return true
}

proc update_PARAM_VALUE.C_MEM_SIZE { PARAM_VALUE.C_MEM_SIZE } {
	# Procedure called to update C_MEM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MEM_SIZE { PARAM_VALUE.C_MEM_SIZE } {
	# Procedure called to validate C_MEM_SIZE
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_NUM_AXI_STREAM_M { PARAM_VALUE.C_NUM_AXI_STREAM_M } {
	# Procedure called to update C_NUM_AXI_STREAM_M when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_AXI_STREAM_M { PARAM_VALUE.C_NUM_AXI_STREAM_M } {
	# Procedure called to validate C_NUM_AXI_STREAM_M
	return true
}

proc update_PARAM_VALUE.C_NUM_TILES { PARAM_VALUE.C_NUM_TILES } {
	# Procedure called to update C_NUM_TILES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_TILES { PARAM_VALUE.C_NUM_TILES } {
	# Procedure called to validate C_NUM_TILES
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_NUM_AXI_STREAM_M { MODELPARAM_VALUE.C_NUM_AXI_STREAM_M PARAM_VALUE.C_NUM_AXI_STREAM_M } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_AXI_STREAM_M}] ${MODELPARAM_VALUE.C_NUM_AXI_STREAM_M}
}

proc update_MODELPARAM_VALUE.C_NUM_TILES { MODELPARAM_VALUE.C_NUM_TILES PARAM_VALUE.C_NUM_TILES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_TILES}] ${MODELPARAM_VALUE.C_NUM_TILES}
}

proc update_MODELPARAM_VALUE.C_MEM_PIPELINE { MODELPARAM_VALUE.C_MEM_PIPELINE PARAM_VALUE.C_MEM_PIPELINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MEM_PIPELINE}] ${MODELPARAM_VALUE.C_MEM_PIPELINE}
}

proc update_MODELPARAM_VALUE.C_MEM_SIZE { MODELPARAM_VALUE.C_MEM_SIZE PARAM_VALUE.C_MEM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MEM_SIZE}] ${MODELPARAM_VALUE.C_MEM_SIZE}
}

