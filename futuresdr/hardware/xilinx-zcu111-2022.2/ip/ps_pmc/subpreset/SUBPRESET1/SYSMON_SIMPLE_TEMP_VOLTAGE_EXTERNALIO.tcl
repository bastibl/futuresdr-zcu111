proc getPresetInfo {} {
  set presetMeas  [getMeasuremetList]
  set infoMsg "Enabling temperature , voltage and external supply monitoring. The preset will enable device temperature and over temperature monitoring along with  on-chip supply ($presetMeas) and external supply monitoring.  Please make sure default threshold values are appropriate to your design. "

  return [dict create name {simple_temperature_voltage_and_external_IO_monitoring} description {Simple temperature, voltage and external measurement monitoring}  vlnv xilinx.com:ip:ps_pmc:1.0 display_name {Simple Temperature, Voltage and External IO Monitoring} info_msg $infoMsg]
}

proc validate_preset {IPINST} { return true }


proc apply_preset {IPINST} {
  set count [get_property value [ipgui::get_paramspec -name "SMON_MEASUREMENT_COUNT" -of $IPINST] ]
  set presets [preset_measurements] 
  set params {}
  tcl::lappend params CONFIG.SMON_ENABLE_VOLTAGE_MONITORING 
  tcl::lappend params "1" 
  tcl::lappend params CONFIG.SMON_ENABLE_TEMP_MONITORING 
  tcl::lappend params "1" 
  tcl::lappend params CONFIG.SMON_ENABLE_EXTERNALIO_MONITORING 
  tcl::lappend params "1" 
  set i 0
  while {$i < $count} {
	 set measName [get_property value [ipgui::get_paramspec -name "SMON_MEAS$i\_NAME" -of $IPINST] ]
     if {[dict exists $presets $measName]} {
	   tcl::lappend params CONFIG.SMON_MEAS$i\_ENABLE 
	   tcl::lappend params "1" 
	   tcl::lappend params CONFIG.SMON_MEAS$i\_AVERAGE_EN 
	   tcl::lappend params "1" 
	   tcl::lappend params CONFIG.SMON_MEAS$i\_ALARM_EN 
	   tcl::lappend params "1" 
	 } 
    incr i
  }
 return $params  
}

proc getMeasuremetList {} {
   set meas [preset_measurements]
   set preset ""
   set delim ""
   foreach item [dict keys $meas] {
        set preset "$preset$delim $item"
		set delim ","
    }

	return $preset
 
}


proc preset_measurements {} {
	return [dict create \
		VCC_PSFP {1} \
		VCC_PSLP {1} \
		VCC_PMC  {1}\
		VCC_SOC  {1}\
		VCC_PMC  {1}\
		VCCAUX_PMC  {1}\
		VCCAUX  {1}\
		VP_VN  {1}\
	]

}
