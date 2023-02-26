#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $ipview  -parent  $Page0  -name Component_Name ]
	set C_MUX_BIT [ipgui::add_param $ipview -parent $Page0 -name C_MUX_BIT]
}

proc C_MUX_BIT_updated {ipview} {
	# Procedure called when C_MUX_BIT is updated
	return true
}

proc validate_C_MUX_BIT {ipview} {
	# Procedure called to validate C_MUX_BIT
	return true
}


proc updateModel_C_MUX_BIT {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_MUX_BIT -of $ipview ]] [ipgui::get_modelparamspec C_MUX_BIT -of $ipview ]

	return true
}

