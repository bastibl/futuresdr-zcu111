#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Component_Name [ ipgui::add_param  $ipview  -parent  $ipview  -name Component_Name ]
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	ipgui::add_static_text $ipview -name "No Configuration" -parent $Page0 -text "This core has no configurable parameters."
}
