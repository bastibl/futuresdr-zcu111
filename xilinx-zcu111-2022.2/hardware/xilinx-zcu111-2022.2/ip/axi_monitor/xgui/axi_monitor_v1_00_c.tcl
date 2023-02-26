#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_SYSTEM_TYPE    [ipgui::add_param $ipview -parent $Gnrl_grp -name C_SYSTEM_TYPE]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_DEPTH_MUL      [ipgui::add_param $ipview -parent $Gnrl_grp -name C_DEPTH_MUL      -widget comboBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_LA_NO_WRITE    [ipgui::add_param $ipview -parent $Gnrl_grp -name C_LA_NO_WRITE    -widget checkBox]
	set C_DISABLE_LA     [ipgui::add_param $ipview -parent $Gnrl_grp -name C_DISABLE_LA     -widget checkBox]
	set C_INVERT_PARPORT [ipgui::add_param $ipview -parent $Gnrl_grp -name C_INVERT_PARPORT -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_REG_LA_INPS    [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REG_LA_INPS    -widget checkBox]
	set C_REG_LA_ADDR    [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REG_LA_ADDR    -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_REG_BRAM_OUT   [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REG_BRAM_OUT   -widget checkBox]
	set C_REGISTER_AXI   [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REGISTER_AXI   -widget checkBox]

	set C_TRC_FILE       [ipgui::add_param $ipview -parent $Gnrl_grp -name C_TRC_FILE]
        set_property visible false $C_TRC_FILE
	set C_IS_AXI4        [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_AXI4        -widget checkBox]
        set_property visible false $C_IS_AXI4

	set Regs_grp [ipgui::add_group $ipview -parent $Page0 -name Registers -layout horizontal]
	set C_REG0_RESET_VAL [ipgui::add_param $ipview -parent $Regs_grp -name C_REG0_RESET_VAL]
	ipgui::add_row $ipview -parent $Regs_grp
	set C_REG6_RESET_VAL [ipgui::add_param $ipview -parent $Regs_grp -name C_REG6_RESET_VAL]
	ipgui::add_row $ipview -parent $Regs_grp
	set C_ATOMIC_REG11   [ipgui::add_param $ipview -parent $Regs_grp -name C_ATOMIC_REG11   -widget checkBox]
	set C_WAKE_REG11     [ipgui::add_param $ipview -parent $Regs_grp -name C_WAKE_REG11     -widget checkBox]
	ipgui::add_row $ipview -parent $Regs_grp
	set C_ATOMIC_REG12   [ipgui::add_param $ipview -parent $Regs_grp -name C_ATOMIC_REG12   -widget checkBox]
	set C_INTR_REG12     [ipgui::add_param $ipview -parent $Regs_grp -name C_INTR_REG12     -widget checkBox]

	set Slave_grp [ipgui::add_group $ipview -parent $Page0 -name Slave -layout vertical]
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_DATA_WIDTH -widget comboBox]
	set C_S_AXI_ID_WIDTH   [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_ID_WIDTH]

	set C_BASEADDR [ipgui::add_param $ipview -parent $Slave_grp -name C_BASEADDR]
	set C_HIGHADDR [ipgui::add_param $ipview -parent $Slave_grp -name C_HIGHADDR]
}

proc updateModel_C_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_BASEADDR] [ipgui::get_modelparamspec C_BASEADDR -of $ipview ]
}

proc updateModel_C_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHADDR] [ipgui::get_modelparamspec C_HIGHADDR -of $ipview ]
}

proc updateModel_C_SYSTEM_TYPE {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_SYSTEM_TYPE] [ipgui::get_modelparamspec C_SYSTEM_TYPE -of $ipview ]
}

proc updateModel_C_DEPTH_MUL {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_DEPTH_MUL] [ipgui::get_modelparamspec C_DEPTH_MUL -of $ipview ]
}

proc updateModel_C_LA_NO_WRITE {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_LA_NO_WRITE]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_LA_NO_WRITE -of $ipview ]
}

proc updateModel_C_DISABLE_LA {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_DISABLE_LA]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_DISABLE_LA -of $ipview ]
}

proc updateModel_C_TRC_FILE {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_TRC_FILE] [ipgui::get_modelparamspec C_TRC_FILE -of $ipview ]
}

proc updateModel_C_REG_LA_INPS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REG_LA_INPS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REG_LA_INPS -of $ipview ]
}

proc updateModel_C_REG_LA_ADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REG_LA_ADDR]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REG_LA_ADDR -of $ipview ]
}

proc updateModel_C_REG_BRAM_OUT {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REG_BRAM_OUT]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REG_BRAM_OUT -of $ipview ]
}

proc updateModel_C_REGISTER_AXI {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REGISTER_AXI]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REGISTER_AXI -of $ipview ]
}

proc updateModel_C_INVERT_PARPORT {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_INVERT_PARPORT]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_INVERT_PARPORT -of $ipview ]
}

proc updateModel_C_REG0_RESET_VAL {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_REG0_RESET_VAL] [ipgui::get_modelparamspec C_REG0_RESET_VAL -of $ipview ]
}

proc updateModel_C_REG6_RESET_VAL {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_REG6_RESET_VAL] [ipgui::get_modelparamspec C_REG6_RESET_VAL -of $ipview ]
}

proc updateModel_C_ATOMIC_REG11 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ATOMIC_REG11]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ATOMIC_REG11 -of $ipview ]
}

proc updateModel_C_ATOMIC_REG12 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ATOMIC_REG12]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ATOMIC_REG12 -of $ipview ]
}

proc updateModel_C_WAKE_REG11 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_WAKE_REG11]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_WAKE_REG11 -of $ipview ]
}

proc updateModel_C_INTR_REG12 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_INTR_REG12]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_INTR_REG12 -of $ipview ]
}

proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ID_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ID_WIDTH -of $ipview ]
}
