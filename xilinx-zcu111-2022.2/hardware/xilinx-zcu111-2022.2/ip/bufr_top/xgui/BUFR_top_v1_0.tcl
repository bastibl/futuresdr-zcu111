# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  set Component_Name  [  ipgui::add_param $IPINST -name "Component_Name" -display_name {Component Name}]
  set_property tooltip {Component Name} ${Component_Name}
  #Adding Page
  set CONFIG  [  ipgui::add_page $IPINST -name "CONFIG" -display_name {CONFIG}]
  set_property tooltip {CONFIG} ${CONFIG}
  set BUFR_DIVIDE  [  ipgui::add_param $IPINST -name "BUFR_DIVIDE" -parent ${CONFIG} -display_name {Bufr Divide} -widget comboBox]
  set_property tooltip {Bufr Divide} ${BUFR_DIVIDE}


}

proc update_PARAM_VALUE.BUFR_DIVIDE { PARAM_VALUE.BUFR_DIVIDE } {
	# Procedure called to update BUFR_DIVIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFR_DIVIDE { PARAM_VALUE.BUFR_DIVIDE } {
	# Procedure called to validate BUFR_DIVIDE
	return true
}


proc update_MODELPARAM_VALUE.BUFR_DIVIDE { MODELPARAM_VALUE.BUFR_DIVIDE PARAM_VALUE.BUFR_DIVIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFR_DIVIDE}] ${MODELPARAM_VALUE.BUFR_DIVIDE}
}

