#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set ZERO_INVALID [ipgui::add_param $ipview -parent $Gnrl_grp -name ZERO_INVALID -widget checkBox]
	set C_FIRST_AXIS [ipgui::add_param $ipview -parent $Gnrl_grp -name C_FIRST_AXIS -widget checkBox]
        set_property visible false $C_FIRST_AXIS 

	set Slave_grp [ipgui::add_group $ipview -parent $Page0 -name Slave -layout horizontal]
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_DATA_WIDTH -widget comboBox]
	set C_S_AXI_ID_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_ID_WIDTH]
	set C_BASEADDR [ipgui::add_param $ipview -parent $Page0 -name C_BASEADDR ]
	set C_HIGHADDR [ipgui::add_param $ipview -parent $Page0 -name C_HIGHADDR ]

	set_property display_name "Data Width" $C_S_AXI_DATA_WIDTH
	set_property display_name "ID Width" $C_S_AXI_ID_WIDTH
}

proc updateModel_C_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_BASEADDR] [ipgui::get_modelparamspec C_BASEADDR -of $ipview ]
}

proc updateModel_C_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHADDR] [ipgui::get_modelparamspec C_HIGHADDR -of $ipview ]
}

proc updateModel_ZERO_INVALID {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value ZERO_INVALID]
	set_property modelparam_value $value [ipgui::get_modelparamspec ZERO_INVALID -of $ipview ]
}

proc updateModel_C_FIRST_AXIS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_FIRST_AXIS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_FIRST_AXIS -of $ipview ]
}

proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ID_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ID_WIDTH -of $ipview ]
}
