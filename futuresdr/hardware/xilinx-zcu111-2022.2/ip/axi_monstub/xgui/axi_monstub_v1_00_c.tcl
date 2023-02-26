#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_FILTER_SIGS  [ipgui::add_param $ipview -parent $Gnrl_grp -name C_FILTER_SIGS  -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_ALWAYS_RID   [ipgui::add_param $ipview -parent $Gnrl_grp -name C_ALWAYS_RID   -widget checkBox]
	set C_ALWAYS_BID   [ipgui::add_param $ipview -parent $Gnrl_grp -name C_ALWAYS_BID   -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_IGNORE_USER  [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IGNORE_USER  -widget checkBox]
	set C_NO_WRITE_BUS [ipgui::add_param $ipview -parent $Gnrl_grp -name C_NO_WRITE_BUS -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_REGISTER_AXI [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REGISTER_AXI -widget checkBox]

	set Monitor_grp [ipgui::add_group $ipview -parent $Page0 -name Monitor -layout vertical]
	set C_AXI_PROTOCOL [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_PROTOCOL]
        set_property tooltip "Set to AXI3, AXI4, AXI4LITE or ACE, depending on monitored bus" $C_AXI_PROTOCOL
	set C_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_ADDR_WIDTH]
	set C_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_DATA_WIDTH -widget comboBox]
	set C_AXI_ID_WIDTH [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_ID_WIDTH]
	set C_AXI_AWUSER_WIDTH [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_AWUSER_WIDTH]
	set C_AXI_ARUSER_WIDTH [ipgui::add_param $ipview -parent $Monitor_grp -name C_AXI_ARUSER_WIDTH]
}

proc validate_C_AXI_PROTOCOL {ipview} {
	set axi_protocol [get_param_value C_AXI_PROTOCOL]
	return [expr ([string equal $axi_protocol "AXI3"] || \
		      [string equal $axi_protocol "AXI4"] || \
		      [string equal $axi_protocol "AXI4LITE"] || \
		      [string equal $axi_protocol "ACE"]) ? true : false]
}

proc updateModel_C_FILTER_SIGS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_FILTER_SIGS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_FILTER_SIGS -of $ipview ]
}

proc updateModel_C_ALWAYS_RID {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ALWAYS_RID]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ALWAYS_RID -of $ipview ]
}

proc updateModel_C_ALWAYS_BID {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ALWAYS_BID]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ALWAYS_BID -of $ipview ]
}

proc updateModel_C_IGNORE_USER {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IGNORE_USER]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IGNORE_USER -of $ipview ]
}

proc updateModel_C_NO_WRITE_BUS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_NO_WRITE_BUS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_NO_WRITE_BUS -of $ipview ]
}

proc updateModel_C_REGISTER_AXI {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REGISTER_AXI]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REGISTER_AXI -of $ipview ]
}

proc updateModel_C_AXI_ADDR_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_ADDR_WIDTH] [ipgui::get_modelparamspec C_AXI_ADDR_WIDTH -of $ipview ]
}

proc updateModel_C_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_ID_WIDTH] [ipgui::get_modelparamspec C_AXI_ID_WIDTH -of $ipview ]
}

proc updateModel_C_AXI_AWUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_AWUSER_WIDTH] [ipgui::get_modelparamspec C_AXI_AWUSER_WIDTH -of $ipview ]
}

proc updateModel_C_AXI_ARUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_ARUSER_WIDTH] [ipgui::get_modelparamspec C_AXI_ARUSER_WIDTH -of $ipview ]
}

proc updateModel_C_AXI_PROTOCOL {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_AXI_PROTOCOL] [ipgui::get_modelparamspec C_AXI_PROTOCOL -of $ipview ]
}
