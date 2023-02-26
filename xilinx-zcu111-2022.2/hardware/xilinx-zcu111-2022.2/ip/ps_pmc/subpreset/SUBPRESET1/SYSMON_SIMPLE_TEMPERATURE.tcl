proc getPresetInfo {} {
  set infoMsg "Enabling device and over temperature monitoring. Please make sure default threshold values are appropriate to your design."
  return [dict create name {simple_temperature_monitoring} description {Simple_temperature_Monitoring}  vlnv xilinx.com:ip:ps_pmc:1.0 display_name {Simple_Temperature_Monitoring} info_msg $infoMsg]
}

proc validate_preset {IPINST} { return true }


proc apply_preset {IPINST} {
  set count [get_property value [ipgui::get_paramspec -name "SMON_MEASUREMENT_COUNT" -of $IPINST] ]
  set params [dict create ]
  tcl::lappend params CONFIG.SMON_ENABLE_TEMP_MONITORING 
  tcl::lappend params "1" 
 return $params  
}

