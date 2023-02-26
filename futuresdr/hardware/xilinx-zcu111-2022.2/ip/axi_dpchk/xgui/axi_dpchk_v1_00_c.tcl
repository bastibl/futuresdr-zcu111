# Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_IS_AXI4 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_AXI4 -widget checkBox]
	set C_BASEADDR [ipgui::add_param $ipview -parent $Page0 -name C_BASEADDR ]
	set C_HIGHADDR [ipgui::add_param $ipview -parent $Page0 -name C_HIGHADDR ]
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Page0 -name C_S_AXI_DATA_WIDTH -widget comboBox]
	set C_S_AXI_ID_WIDTH [ipgui::add_param $ipview -parent $Page0 -name C_S_AXI_ID_WIDTH]
	set C_TRC_FILE [ipgui::add_param $ipview -parent $Page0 -name C_TRC_FILE]
}

proc updateModel_C_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_BASEADDR] [ipgui::get_modelparamspec C_BASEADDR -of $ipview ]
}

proc updateModel_C_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHADDR] [ipgui::get_modelparamspec C_HIGHADDR -of $ipview ]
}

proc updateModel_C_IS_AXI4 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_AXI4]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_AXI4 -of $ipview ]
}


proc updateModel_C_S_AXI_ADDR_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ADDR_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]
}
proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ID_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ID_WIDTH -of $ipview ]
}
proc updateModel_C_TRC_FILE {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_TRC_FILE] [ipgui::get_modelparamspec C_TRC_FILE -of $ipview ]
}

