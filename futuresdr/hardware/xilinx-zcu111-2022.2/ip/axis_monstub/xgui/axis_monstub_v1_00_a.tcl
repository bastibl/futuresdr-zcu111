#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_REGISTER_AXIS [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REGISTER_AXIS -widget checkBox]
	set C_USE_DBG2 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_USE_DBG2 -widget checkBox]
}

proc updateModel_C_REGISTER_AXIS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REGISTER_AXIS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REGISTER_AXIS -of $ipview ]
}

proc updateModel_C_USE_DBG2 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_USE_DBG2]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_USE_DBG2 -of $ipview ]
}
