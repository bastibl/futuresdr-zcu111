
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/axis_tieoff_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ENABLE_SAXIS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_MAXIS" -parent ${Page_0}
  #Adding Group
  set AXI4_Stream_Properties [ipgui::add_group $IPINST -name "AXI4 Stream Properties" -parent ${Page_0}]
  set_property tooltip {AXI4 Stream Properties} ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "HAS_TKEEP" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "HAS_TLAST" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "HAS_TREADY" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "HAS_TSTRB" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "TDATA_NUM_BYTES" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "TDEST_WIDTH" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "TID_WIDTH" -parent ${AXI4_Stream_Properties}
  ipgui::add_param $IPINST -name "TUSER_WIDTH" -parent ${AXI4_Stream_Properties}



}

proc update_PARAM_VALUE.HAS_TSTRB { PARAM_VALUE.HAS_TSTRB PARAM_VALUE.HAS_TKEEP } {
	# Procedure called to update HAS_TSTRB when any of the dependent parameters in the arguments change
	
	set HAS_TSTRB ${PARAM_VALUE.HAS_TSTRB}
	set HAS_TKEEP ${PARAM_VALUE.HAS_TKEEP}
	set values(HAS_TKEEP) [get_property value $HAS_TKEEP]
	set_property value [gen_USERPARAMETER_HAS_TSTRB_VALUE $values(HAS_TKEEP)] $HAS_TSTRB
}

proc validate_PARAM_VALUE.HAS_TSTRB { PARAM_VALUE.HAS_TSTRB } {
	# Procedure called to validate HAS_TSTRB
	return true
}

proc update_PARAM_VALUE.ENABLE_MAXIS { PARAM_VALUE.ENABLE_MAXIS } {
	# Procedure called to update ENABLE_MAXIS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_MAXIS { PARAM_VALUE.ENABLE_MAXIS } {
	# Procedure called to validate ENABLE_MAXIS
	return true
}

proc update_PARAM_VALUE.ENABLE_SAXIS { PARAM_VALUE.ENABLE_SAXIS } {
	# Procedure called to update ENABLE_SAXIS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_SAXIS { PARAM_VALUE.ENABLE_SAXIS } {
	# Procedure called to validate ENABLE_SAXIS
	return true
}

proc update_PARAM_VALUE.HAS_TKEEP { PARAM_VALUE.HAS_TKEEP } {
	# Procedure called to update HAS_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HAS_TKEEP { PARAM_VALUE.HAS_TKEEP } {
	# Procedure called to validate HAS_TKEEP
	return true
}

proc update_PARAM_VALUE.HAS_TLAST { PARAM_VALUE.HAS_TLAST } {
	# Procedure called to update HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HAS_TLAST { PARAM_VALUE.HAS_TLAST } {
	# Procedure called to validate HAS_TLAST
	return true
}

proc update_PARAM_VALUE.HAS_TREADY { PARAM_VALUE.HAS_TREADY } {
	# Procedure called to update HAS_TREADY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HAS_TREADY { PARAM_VALUE.HAS_TREADY } {
	# Procedure called to validate HAS_TREADY
	return true
}

proc update_PARAM_VALUE.TDATA_NUM_BYTES { PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to update TDATA_NUM_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_NUM_BYTES { PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to validate TDATA_NUM_BYTES
	return true
}

proc update_PARAM_VALUE.TDEST_WIDTH { PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to update TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDEST_WIDTH { PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to validate TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.TID_WIDTH { PARAM_VALUE.TID_WIDTH } {
	# Procedure called to update TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TID_WIDTH { PARAM_VALUE.TID_WIDTH } {
	# Procedure called to validate TID_WIDTH
	return true
}

proc update_PARAM_VALUE.TUSER_WIDTH { PARAM_VALUE.TUSER_WIDTH } {
	# Procedure called to update TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TUSER_WIDTH { PARAM_VALUE.TUSER_WIDTH } {
	# Procedure called to validate TUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.HAS_TLAST { MODELPARAM_VALUE.HAS_TLAST PARAM_VALUE.HAS_TLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HAS_TLAST}] ${MODELPARAM_VALUE.HAS_TLAST}
}

proc update_MODELPARAM_VALUE.HAS_TKEEP { MODELPARAM_VALUE.HAS_TKEEP PARAM_VALUE.HAS_TKEEP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HAS_TKEEP}] ${MODELPARAM_VALUE.HAS_TKEEP}
}

proc update_MODELPARAM_VALUE.HAS_TSTRB { MODELPARAM_VALUE.HAS_TSTRB PARAM_VALUE.HAS_TSTRB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HAS_TSTRB}] ${MODELPARAM_VALUE.HAS_TSTRB}
}

proc update_MODELPARAM_VALUE.HAS_TREADY { MODELPARAM_VALUE.HAS_TREADY PARAM_VALUE.HAS_TREADY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HAS_TREADY}] ${MODELPARAM_VALUE.HAS_TREADY}
}

proc update_MODELPARAM_VALUE.TUSER_WIDTH { MODELPARAM_VALUE.TUSER_WIDTH PARAM_VALUE.TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TUSER_WIDTH}] ${MODELPARAM_VALUE.TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.TID_WIDTH { MODELPARAM_VALUE.TID_WIDTH PARAM_VALUE.TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TID_WIDTH}] ${MODELPARAM_VALUE.TID_WIDTH}
}

proc update_MODELPARAM_VALUE.TDEST_WIDTH { MODELPARAM_VALUE.TDEST_WIDTH PARAM_VALUE.TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDEST_WIDTH}] ${MODELPARAM_VALUE.TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.TDATA_NUM_BYTES { MODELPARAM_VALUE.TDATA_NUM_BYTES PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}] ${MODELPARAM_VALUE.TDATA_NUM_BYTES}
}

