
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_NUM_EXCL [ipgui::add_param $ipview -parent $Gnrl_grp -name C_NUM_EXCL -widget checkBox]
	set C_ZERO_INVALID [ipgui::add_param $ipview -parent $Gnrl_grp -name C_ZERO_INVALID -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_IS_AXI4 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_AXI4 -widget checkBox]
	set C_IS_ACE [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_ACE -widget checkBox]
	set C_IS_ACP [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_ACP -widget checkBox]
	ipgui::add_row $ipview -parent $Gnrl_grp
	set C_IS_AFI [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_AFI -widget checkBox]
	set C_AFI_NUM [ipgui::add_param $ipview -parent $Gnrl_grp -name C_AFI_NUM -widget checkBox]
        set_property visible false $C_AFI_NUM
	set C_IS_PELE_GS [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_PELE_GS -widget checkBox]
        set_property visible false $C_IS_PELE_GS
	set C_REGISTER_CMD [ipgui::add_param $ipview -parent $Gnrl_grp -name C_REGISTER_CMD -widget checkBox]
        set_property visible false $C_REGISTER_CMD
	set C_IS_ON_SEMI_CCI400 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_ON_SEMI_CCI400 -widget checkBox]
        set_property visible false $C_IS_ON_SEMI_CCI400
	set C_IS_ON_CCI400 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_ON_CCI400 -widget checkBox]
        set_property visible false $C_IS_ON_CCI400
	set C_IS_ON_SYSCACHE [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_ON_SYSCACHE -widget checkBox]
        set_property visible false $C_IS_ON_SYSCACHE
	set C_IS_FLAG0 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_FLAG0 -widget checkBox]
        set_property visible false $C_IS_FLAG0
	set C_IS_FLAG1 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_FLAG1 -widget checkBox]
        set_property visible false $C_IS_FLAG1
	set C_IS_FLAG2 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_FLAG2 -widget checkBox]
        set_property visible false $C_IS_FLAG2
	set C_IS_FLAG3 [ipgui::add_param $ipview -parent $Gnrl_grp -name C_IS_FLAG3 -widget checkBox]
        set_property visible false $C_IS_FLAG3
	set C_S_RD_IN_ORDER [ipgui::add_param $ipview -parent $Gnrl_grp -name C_S_RD_IN_ORDER -widget checkBox]
        set_property visible false $C_S_RD_IN_ORDER
	set C_S_B_IN_ORDER [ipgui::add_param $ipview -parent $Gnrl_grp -name C_S_B_IN_ORDER -widget checkBox]
        set_property visible false $C_S_B_IN_ORDER

	set Slave_grp [ipgui::add_group $ipview -parent $Page0 -name Slave -layout horizontal]
	set C_S_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_ADDR_WIDTH -widget comboBox]
	set C_S_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_DATA_WIDTH -widget comboBox]
	set C_S_AXI_ID_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_ID_WIDTH]
	set C_SMID_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_SMID_WIDTH]
	ipgui::add_row $ipview -parent $Slave_grp
	set C_S_AXI_AWUSER_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_AWUSER_WIDTH]
	set C_S_AXI_ARUSER_WIDTH [ipgui::add_param $ipview -parent $Slave_grp -name C_S_AXI_ARUSER_WIDTH]

	set Master_grp [ipgui::add_group $ipview -parent $Page0 -name Master -layout horizontal]
	set C_M_AXI_ADDR_WIDTH [ipgui::add_param $ipview -parent $Master_grp -name C_M_AXI_ADDR_WIDTH -widget comboBox]
	set C_M_AXI_DATA_WIDTH [ipgui::add_param $ipview -parent $Master_grp -name C_M_AXI_DATA_WIDTH -widget comboBox]
	set C_M_AXI_THREAD_ID_WIDTH [ipgui::add_param $ipview -parent $Master_grp -name C_M_AXI_THREAD_ID_WIDTH]
	ipgui::add_row $ipview -parent $Master_grp
	set C_M_AXI_AWUSER_WIDTH [ipgui::add_param $ipview -parent $Master_grp -name C_M_AXI_AWUSER_WIDTH]
	set C_M_AXI_ARUSER_WIDTH [ipgui::add_param $ipview -parent $Master_grp -name C_M_AXI_ARUSER_WIDTH]

	set C_BASEADDR [ipgui::add_param $ipview -parent $Page0 -name C_BASEADDR ]
	set C_HIGHADDR [ipgui::add_param $ipview -parent $Page0 -name C_HIGHADDR ]

	set HighMem_grp [ipgui::add_group $ipview -parent $Page0 -name HighMemory -layout horizontal]
	ipgui::add_row $ipview -parent $HighMem_grp
	set C_ENABLE_HIGHMEM [ipgui::add_param $ipview -parent $HighMem_grp -name C_ENABLE_HIGHMEM -widget checkBox]
	ipgui::add_row $ipview -parent $HighMem_grp
	set C_HIGHMEM_BASEADDR [ipgui::add_param $ipview -parent $HighMem_grp -name C_HIGHMEM_BASEADDR ]
	ipgui::add_row $ipview -parent $HighMem_grp
	set C_HIGHMEM_HIGHADDR [ipgui::add_param $ipview -parent $HighMem_grp -name C_HIGHMEM_HIGHADDR ]
}

proc updateModel_C_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_BASEADDR] [ipgui::get_modelparamspec C_BASEADDR -of $ipview ]
}

proc updateModel_C_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHADDR] [ipgui::get_modelparamspec C_HIGHADDR -of $ipview ]
}

proc updateModel_C_ZERO_INVALID {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ZERO_INVALID]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ZERO_INVALID -of $ipview ]
}

proc updateModel_C_IS_AXI4 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_AXI4]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_AXI4 -of $ipview ]
}

proc updateModel_C_IS_ACE {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_ACE]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_ACE -of $ipview ]
}

proc updateModel_C_IS_ACP {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_ACP]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_ACP -of $ipview ]
}

proc updateModel_C_IS_AFI {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_AFI]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_AFI -of $ipview ]
}

proc updateModel_C_AFI_NUM {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_AFI_NUM]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_AFI_NUM -of $ipview ]
}

proc updateModel_C_IS_PELE_GS {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_PELE_GS]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_PELE_GS -of $ipview ]
}

proc updateModel_C_REGISTER_CMD {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_REGISTER_CMD]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_REGISTER_CMD -of $ipview ]
}

proc updateModel_C_IS_ON_SEMI_CCI400 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_ON_SEMI_CCI400]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_ON_SEMI_CCI400 -of $ipview ]
}
proc updateModel_C_IS_ON_CCI400 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_ON_CCI400]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_ON_CCI400 -of $ipview ]
}
proc updateModel_C_IS_ON_SYSCACHE {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_ON_SYSCACHE]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_ON_SYSCACHE -of $ipview ]
}
proc updateModel_C_IS_FLAG0 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_FLAG0]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_FLAG0 -of $ipview ]
}
proc updateModel_C_IS_FLAG1 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_FLAG1]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_FLAG1 -of $ipview ]
}
proc updateModel_C_IS_FLAG2 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_FLAG2]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_FLAG2 -of $ipview ]
}
proc updateModel_C_IS_FLAG3 {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_IS_FLAG3]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_IS_FLAG3 -of $ipview ]
}
proc updateModel_C_S_RD_IN_ORDER {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_S_RD_IN_ORDER]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_S_RD_IN_ORDER -of $ipview ]
}

proc updateModel_C_S_B_IN_ORDER {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_S_B_IN_ORDER]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_S_B_IN_ORDER -of $ipview ]
}

proc updateModel_C_NUM_EXCL {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_NUM_EXCL]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_NUM_EXCL -of $ipview ]
}

proc updateModel_C_S_AXI_ADDR_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ADDR_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ADDR_WIDTH -of $ipview ]
}
proc updateModel_C_S_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_S_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_AWUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_AWUSER_WIDTH] [ipgui::get_modelparamspec C_S_AXI_AWUSER_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ARUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ARUSER_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ARUSER_WIDTH -of $ipview ]
}

proc updateModel_C_S_AXI_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_S_AXI_ID_WIDTH] [ipgui::get_modelparamspec C_S_AXI_ID_WIDTH -of $ipview ]
}

proc updateModel_C_SMID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_SMID_WIDTH] [ipgui::get_modelparamspec C_SMID_WIDTH -of $ipview ]
}

proc updateModel_C_ENABLE_HIGHMEM {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set value [get_param_value C_ENABLE_HIGHMEM]
	set_property modelparam_value $value [ipgui::get_modelparamspec C_ENABLE_HIGHMEM -of $ipview ]
}

proc updateModel_C_HIGHMEM_BASEADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHMEM_BASEADDR] [ipgui::get_modelparamspec C_HIGHMEM_BASEADDR -of $ipview ]
}

proc updateModel_C_HIGHMEM_HIGHADDR {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_HIGHMEM_HIGHADDR] [ipgui::get_modelparamspec C_HIGHMEM_HIGHADDR -of $ipview ]
}

proc updateModel_C_M_AXI_THREAD_ID_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_M_AXI_THREAD_ID_WIDTH] [ipgui::get_modelparamspec C_M_AXI_THREAD_ID_WIDTH -of $ipview ]
}

proc updateModel_C_M_AXI_ADDR_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_M_AXI_ADDR_WIDTH] [ipgui::get_modelparamspec C_M_AXI_ADDR_WIDTH -of $ipview ]
}

proc updateModel_C_M_AXI_DATA_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_M_AXI_DATA_WIDTH] [ipgui::get_modelparamspec C_M_AXI_DATA_WIDTH -of $ipview ]
}

proc updateModel_C_M_AXI_AWUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_M_AXI_AWUSER_WIDTH] [ipgui::get_modelparamspec C_M_AXI_AWUSER_WIDTH -of $ipview ]
}

proc updateModel_C_M_AXI_ARUSER_WIDTH {ipview} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property modelparam_value [get_param_value C_M_AXI_ARUSER_WIDTH] [ipgui::get_modelparamspec C_M_AXI_ARUSER_WIDTH -of $ipview ]
}
