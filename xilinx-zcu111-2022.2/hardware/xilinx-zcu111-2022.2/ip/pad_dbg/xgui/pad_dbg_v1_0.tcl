#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $ipview  -parent  $Page0  -name Component_Name ]
	set tabgroup0 [ipgui::add_group $ipview -parent $Page0 -name {General} -layout vertical]
	set C_GPIO_CAN1_LOOP_BIT [ipgui::add_param $ipview -parent $tabgroup0 -name C_GPIO_CAN1_LOOP_BIT ]
	set C_GPIO_CAN0_LOOP_BIT [ipgui::add_param $ipview -parent $tabgroup0 -name C_GPIO_CAN0_LOOP_BIT ]
	set C_GPIO_I2C_SEL_BIT [ipgui::add_param $ipview -parent $tabgroup0 -name C_GPIO_I2C_SEL_BIT ]
}

proc C_GPIO_CAN1_LOOP_BIT_updated {ipview} {
	# Procedure called when C_GPIO_CAN1_LOOP_BIT is updated
	return true
}

proc validate_C_GPIO_CAN1_LOOP_BIT {ipview} {
	# Procedure called to validate C_GPIO_CAN1_LOOP_BIT
	return true
}

proc C_GPIO_CAN0_LOOP_BIT_updated {ipview} {
	# Procedure called when C_GPIO_CAN0_LOOP_BIT is updated
	return true
}

proc validate_C_GPIO_CAN0_LOOP_BIT {ipview} {
	# Procedure called to validate C_GPIO_CAN0_LOOP_BIT
	return true
}

proc C_GPIO_I2C_SEL_BIT_updated {ipview} {
	# Procedure called when C_GPIO_I2C_SEL_BIT is updated
	return true
}

proc validate_C_GPIO_I2C_SEL_BIT {ipview} {
	# Procedure called to validate C_GPIO_I2C_SEL_BIT
	return true
}


proc updateModel_C_GPIO_CAN1_LOOP_BIT {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_GPIO_CAN1_LOOP_BIT -of $ipview ]] [ipgui::get_modelparamspec C_GPIO_CAN1_LOOP_BIT -of $ipview ]

	return true
}

proc updateModel_C_GPIO_CAN0_LOOP_BIT {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_GPIO_CAN0_LOOP_BIT -of $ipview ]] [ipgui::get_modelparamspec C_GPIO_CAN0_LOOP_BIT -of $ipview ]

	return true
}

proc updateModel_C_GPIO_I2C_SEL_BIT {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_GPIO_I2C_SEL_BIT -of $ipview ]] [ipgui::get_modelparamspec C_GPIO_I2C_SEL_BIT -of $ipview ]

	return true
}

