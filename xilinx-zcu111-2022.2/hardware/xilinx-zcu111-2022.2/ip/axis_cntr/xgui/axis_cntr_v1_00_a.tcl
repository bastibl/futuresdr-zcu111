#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Gnrl_grp [ipgui::add_group $ipview -parent $Page0 -name General -layout horizontal]
	set C_EXT_RESET_HIGH [ipgui::add_param $ipview -parent $Gnrl_grp -name C_EXT_RESET_HIGH -widget checkBox]
	set C_USE_EXTERNAL_CNTR [ipgui::add_param $ipview -parent $Gnrl_grp -name C_USE_EXTERNAL_CNTR -widget checkBox]
}

proc updateModel_C_EXT_RESET_HIGH {ipview} {
	set_property modelparam_value [get_param_value C_EXT_RESET_HIGH] [ipgui::get_modelparamspec C_EXT_RESET_HIGH -of $ipview ]
}

proc updateModel_C_USE_EXTERNAL_CNTR {ipview} {
	set_property modelparam_value [get_param_value C_USE_EXTERNAL_CNTR] [ipgui::get_modelparamspec C_USE_EXTERNAL_CNTR -of $ipview ]
}
