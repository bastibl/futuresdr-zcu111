proc addSysmonPage { IPINST sysmon_page } {
 set main_panel [ipgui::add_panel $IPINST -parent $sysmon_page -name "main" -layout vertical]
 
 set basicPage [ ipgui::add_page $IPINST -parent $main_panel  -name "Basic page" -layout vertical]
 set_property display_name "Basic Configuration" $basicPage

 set oc_supply_page [ ipgui::add_page $IPINST -parent $main_panel  -name "On Chip Supply Monitor" -layout vertical]
 set_property display_name "On Chip Supply Monitor" $oc_supply_page
 
 set tempPage [ ipgui::add_page $IPINST -parent $main_panel  -name "Temperature Monitor" -layout vertical]
 set_property display_name "Temperature" $tempPage
 
 set ext_supply_page [ ipgui::add_page $IPINST -parent $main_panel  -name "External Supply Monitor" -layout vertical]
 set_property display_name "External Supply Monitor" $ext_supply_page

 addSysmonBasicPage $IPINST $basicPage 
 addSysmonOCSupplyPage $IPINST $oc_supply_page 
 addSysmonTemperaturePage $IPINST $tempPage 
 addSysmonExtSupplyPage $IPINST $ext_supply_page 

 #By default except for the basic page all other pages will be hidden
 #
 #oc_supply_page will be shown based on whether param voltage monitoring is enabled or not.
 set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_VOLTAGE_MONITORING" -of $IPINST]]
 if {$val == 1} {
	 set_property enabled "true" [ ipgui::get_pagespec "On Chip Supply Monitor" -of $IPINST ]
 } else {
	 set_property enabled "false" [ ipgui::get_pagespec "On Chip Supply Monitor" -of $IPINST ]
 }
 
 #temparature_monitor_page will be shown based on whether param temp monitoring is enabled or not.
 set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_TEMP_MONITORING" -of $IPINST]]
 if {$val == 1} {
	 set_property enabled "true" [ ipgui::get_pagespec "Temperature Monitor" -of $IPINST ]
 } else {
	 set_property enabled "false" [ ipgui::get_pagespec "Temperature Monitor" -of $IPINST ]
 }


 #supply_monitor_page will be shown based on whether param voltage monitoring is enabled or not.
 set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_EXTERNALIO_MONITORING" -of $IPINST]]
 if {$val == 1} {
	 set_property enabled "true" [ ipgui::get_pagespec "External Supply Monitor" -of $IPINST ]
 } else {
	 set_property enabled "false" [ ipgui::get_pagespec "External Supply Monitor" -of $IPINST ]
 }
}


proc addSysmonBasicPage { IPINST sysmon_page } {
 
  #Default Section contents under SysmonBasicPage 
  set h_mSelection [ipgui::add_group $IPINST -name "Default" -parent $sysmon_page -layout horizontal]
  set h_mStep1 [ipgui::add_group $IPINST -name "Step1" -parent $h_mSelection -layout horizontal]
  ipgui::add_row $IPINST -parent ${h_mStep1}
  set param1 [ipgui::add_param $IPINST -name "SUBPRESET1"  -parent ${h_mStep1} -widget subPresetComboBox]
  ipgui::add_row $IPINST -parent ${h_mSelection}
  set h_mStep2 [ipgui::add_group $IPINST -name "Step2" -parent $h_mSelection -layout horizontal]
  ipgui::add_row $IPINST -parent ${h_mStep2}
  set param1 [ipgui::add_param $IPINST -name "SMON_ALARMS"  -parent ${h_mStep2} -widget comboBox]
  ipgui::add_row $IPINST -parent ${h_mSelection}
  set h_mStep3 [ipgui::add_group $IPINST -name "Step3" -parent $h_mSelection -layout vertical]
  ipgui::add_row $IPINST -parent ${h_mStep3}
  set param1 [ipgui::add_param $IPINST -name "SMON_INTERFACE_TO_USE"  -parent ${h_mStep3} -widget comboBox]
  set param1 [ipgui::add_param $IPINST -name "SMON_PMBUS_UNRESTRICTED"  -parent ${h_mStep3} -widget checkBox]
  set param1 [ipgui::add_param $IPINST -name "SMON_PMBUS_ADDRESS"  -parent ${h_mStep3} -widget textEdit]
  set param1 [ipgui::add_param $IPINST -name "PS_I2CSYSMON_PERIPHERAL_IO"  -parent ${h_mStep3} -widget comboBox]

  #Custom Section contents under SysmonBasicPage 
  set h_mCustom [ipgui::add_group $IPINST -name "Custom" -parent $sysmon_page -layout vertical] 
  set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_MONITORING"  -parent ${h_mCustom} -widget checkBox]
  set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_TEMP_MONITORING"  -parent ${h_mCustom} -widget checkBox]
  set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_EXTERNALIO_MONITORING"  -parent ${h_mCustom} -widget checkBox]
  
  set h_mSelection [ipgui::add_group $IPINST -name "Voltage Averaging" -parent $h_mCustom -layout vertical] 
  set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_AVERAGING"  -parent ${h_mSelection} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "SMON_VOLTAGE_AVERAGING_SAMPLES"  -parent ${h_mSelection} -widget comboBox]


  #set h_mSelection [ipgui::add_group $IPINST -name "On Chip Supply Monitoring" -parent $sysmon_page -layout horizontal] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_MONITORING"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_ALARM"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_AVERAGING"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  
  #set h_chGroup [ipgui::add_group $IPINST -name "Enable Common Alarms" -parent $h_mSelection -layout horizontal] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_COMMON_VOLTAGE_ALARM"  -parent ${h_chGroup} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_chGroup}
  #set param1 [ipgui::add_param $IPINST -name "SMON_COMMON_TH_LOWER"  -parent ${h_chGroup} -widget textEdit]
  #ipgui::add_row $IPINST -parent ${h_chGroup}
  #set param1 [ipgui::add_param $IPINST -name "SMON_COMMON_TH_UPPER"  -parent ${h_chGroup} -widget textEdit]
  
  #set h_mSelection [ipgui::add_group $IPINST -name "External Analog Input Monitoring" -parent $sysmon_page -layout horizontal] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_EXTERNALIO_MONITORING"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  
  #set h_mSelection [ipgui::add_group $IPINST -name "Temperature Monitoring" -parent $sysmon_page -layout horizontal] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_TEMP_MONITORING"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_TEMP_ALARM"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_TEMP_AVERAGING"  -parent ${h_mSelection} -widget checkBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
 
}

proc addSysmonTemperaturePage { IPINST sysmon_page } {

  #set h_mSelection [ipgui::add_group $IPINST -name "Temperature Averaging" -parent $sysmon_page -layout vertical] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_TEMP_AVERAGING"  -parent ${h_mSelection} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "SMON_TEMP_AVERAGING_SAMPLES"  -parent ${h_mSelection} -widget comboBox]
  
  set h_tSelection [ipgui::add_group $IPINST -name "Device Over-Temperature" -parent $sysmon_page -layout horizontal] 
  set ot_panel [ipgui::add_panel $IPINST -parent $h_tSelection -name "ot_panel" -layout vertical]
  set ot_textpanel [ipgui::add_panel $IPINST -parent $h_tSelection -name "ot_textpanel" -layout vertical]
   
  set otText  "<p><b>Last line of defence</b> <br/>When the die temperature exceeds the OT upper threshold (or 125 &#xb0 C, whichever is lower) the OT alarm is asserted. This initiates a device shutdown sequence. When
  the die temperature drops below the OT lower threshold, the start-up sequence is initiated releasing all global resources. <br/>The automatic shutdown feature is intended to prevent permanent damage to the device.</p> "
  
  set OTtext [ipgui::add_static_text $IPINST -name "OT_Text" -text $otText -parent ${ot_textpanel} ]
  #set param2 [ipgui::add_param $IPINST -name "SMON_OT_ALARM_TYPE"  -parent ${h_tSelection} -widget comboBox]
  set param3 [ipgui::add_param $IPINST -name "SMON_OT_THRESHOLD_LOWER"  -parent ${ot_panel} -widget textEdit]
  set param4 [ipgui::add_param $IPINST -name "SMON_OT_THRESHOLD_UPPER"  -parent ${ot_panel} -widget textEdit]
 


  set h_tSelection [ipgui::add_group $IPINST -name "Device Temperature" -parent $sysmon_page -layout horizonatl] 
  set dt_panel [ipgui::add_panel $IPINST -parent $h_tSelection -name "dt_panel" -layout vertical]
  set dt_textpanel [ipgui::add_panel $IPINST -parent $h_tSelection -name "dt_textpanel" -layout vertical]
   set dtText  "<b>Active Thermal Management</b><br/>
Use these temperature threshold as part of an active thermal management solution (Such as powering-on or controlling the speed of a fan)
<ul>
<li><b>Window:</b> Alarm is asserted when the temperature is between the upper and lower thresholds.</li>
<li><b>Hysteresis:</b> Alarm is asserted when the temperature goes above the upper threshold and deasseted when it goes below the lower threshold.</li>
</ul>"

  set DTtext [ipgui::add_static_text $IPINST -name "OT_Text" -text $dtText -parent ${dt_textpanel} ]
  set param2 [ipgui::add_param $IPINST -name "SMON_USER_TEMP_ALARM_TYPE"  -parent ${dt_panel} -widget comboBox]
  set param3 [ipgui::add_param $IPINST -name "SMON_USER_TEMP_THRESHOLD_LOWER"  -parent ${dt_panel} -widget textEdit]
  set param4 [ipgui::add_param $IPINST -name "SMON_USER_TEMP_THRESHOLD_UPPER"  -parent ${dt_panel} -widget textEdit]

}

proc addSysmonOCSupplyPage { IPINST oc_supply_page } {

 addSysmonOCGroup $IPINST $oc_supply_page 
 
 }

proc addSysmonExtSupplyPage { IPINST sysmon_page } {
  #set h_mSelection [ipgui::add_group $IPINST -name "Select Aux Bank" -parent $sysmon_page -layout horizontal] 
  #set param1 [ipgui::add_param $IPINST -name "SMON_VAUX_IO_BANK"  -parent ${h_mSelection} -widget comboBox]
  #ipgui::add_row $IPINST -parent ${h_mSelection}
 
 
  set table [ipgui::add_table $IPINST -name "AUX IO" -rows "19" -columns "9" -layout vertical -parent ${sysmon_page}]
  set text1 [ipgui::add_static_text $IPINST -name "Channel" -text "<b>Channel</b>" -parent ${table} ]
  set text2 [ipgui::add_static_text $IPINST -name "Channel_Enable" -text "<b>Channel Enable</b>" -parent ${table} ]
  set text3 [ipgui::add_static_text $IPINST -name "AUX_IO_P" -text "<b>AUX IO_P</b>" -parent ${table} ]
  set text4 [ipgui::add_static_text $IPINST -name "AUX_IO_N" -text "<b>AUX IO_N</b>" -parent ${table} ]
  set text5 [ipgui::add_static_text $IPINST -name "ADC MODE" -text "<b>ADC Mode</b>" -parent ${table} ]
  set text6 [ipgui::add_static_text $IPINST -name "Average_Enable" -text "<b>Average Enable</b>" -parent ${table} ]
  set text7 [ipgui::add_static_text $IPINST -name "AUX_Alarm_Enable" -text "<b>Alarm Enable</b>" -parent ${table} ]
  set text8 [ipgui::add_static_text $IPINST -name "AUX_Threshhold_Lower" -text "<b>Threshold Lower (Volt)</b>" -parent ${table} ]
  set text9 [ipgui::add_static_text $IPINST -name "AUX_Threshold_Upper" -text "<b>Threshold Upper (Volt)</b>" -parent ${table} ]
  #set text6 [ipgui::add_static_text $IPINST -name "CommonN" -text "<b>CommonN</b>" -parent ${table} ]
  
  set_property cell_location 0,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 0,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
  set_property cell_location 0,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
  set_property cell_location 0,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
  set_property cell_location 0,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
  set_property cell_location 0,5  [ ipgui::get_textspec ${text6} -of $IPINST ]
  set_property cell_location 0,6  [ ipgui::get_textspec ${text7} -of $IPINST ]
  set_property cell_location 0,7  [ ipgui::get_textspec ${text8} -of $IPINST ]
  set_property cell_location 0,8  [ ipgui::get_textspec ${text9} -of $IPINST ]
 
 set row  2;
  set text1 [ipgui::add_static_text $IPINST -name "AUX_GND" -text "GND_N" -parent ${table} ]
  set param1 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_ENABLE"  -parent ${table} -widget checkBox]
  set param3 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_IO_N"  -parent ${table} -widget comboBox]
  set param4 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_MODE"  -parent ${table} -widget comboBox]
  set param5 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_AVERAGE_EN"  -parent ${table} -widget checkBox]
  set param6 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_ALARM_EN"  -parent ${table} -widget checkBox]
  set param7 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_ALARM_LOWER"  -parent ${table} -widget textEdit]
  set param8 [ipgui::add_param $IPINST -name "SMON_VAUX_GND_ALARM_UPPER"  -parent ${table} -widget textEdit]

  set_property cell_location $row,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $row,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $row,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  set_property cell_location $row,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
  set_property cell_location $row,5  [ ipgui::get_guiparamspec ${param5} -of $IPINST ]
  set_property cell_location $row,6  [ ipgui::get_guiparamspec ${param6} -of $IPINST ]
  set_property cell_location $row,7  [ ipgui::get_guiparamspec ${param7} -of $IPINST ]
  set_property cell_location $row,8  [ ipgui::get_guiparamspec ${param8} -of $IPINST ]
 
  incr row ; 
 for {set i 0} {$i <= 15} {incr i} {
  set text1 [ipgui::add_static_text $IPINST -name "vauxp$i\/vauxn$i" -text "vauxp${i}/vauxn${i}" -parent ${table} ]
  set param1 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_ENABLE"  -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_IO_P"  -parent ${table} -widget comboBox]
  set param3 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_IO_N"  -parent ${table} -widget comboBox]
  set param4 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_MODE"  -parent ${table} -widget comboBox]
  set param5 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_AVERAGE_EN"  -parent ${table} -widget checkBox]
  set param6 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_ALARM_EN"  -parent ${table} -widget checkBox]
  set param7 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_ALARM_LOWER"  -parent ${table} -widget textEdit]
  set param8 [ipgui::add_param $IPINST -name "SMON_VAUX_CH$i\_ALARM_UPPER"  -parent ${table} -widget textEdit]

  set_property cell_location $row,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $row,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $row,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $row,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  set_property cell_location $row,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
  set_property cell_location $row,5  [ ipgui::get_guiparamspec ${param5} -of $IPINST ]
  set_property cell_location $row,6  [ ipgui::get_guiparamspec ${param6} -of $IPINST ]
  set_property cell_location $row,7  [ ipgui::get_guiparamspec ${param7} -of $IPINST ]
  set_property cell_location $row,8  [ ipgui::get_guiparamspec ${param8} -of $IPINST ]
  incr row ; 
 }
}


proc parseSysmonMeasurements {IPINST } {
    set measList [get_property value [ipgui::get_paramspec -name "SMON_MEASUREMENT_LIST" -of $IPINST] ]
		set i 0
		set splitLinesByVert [split $measList "|"]
		set finalDic {}
		foreach lineAfterSplitByVert $splitLinesByVert {
			set beforeColon [lindex [split $lineAfterSplitByVert ":"] 0]
			set afterColon [lindex [split $lineAfterSplitByVert ":"] 1]
			set val [list] 
###Process After Colon###       
			set splitLinesByHash  [split $afterColon "#"]
			foreach lineAfterSplitByHash $splitLinesByHash {
				set beforeDash [lindex [split $lineAfterSplitByHash "-"] 0]
				set afterDash [lindex [split $lineAfterSplitByHash "-"] 1]
                lappend meas$i  $beforeColon
                lappend meas$i $beforeDash
###Process after dash###
				set splitLinesByComma [split $afterDash ","]
				set var [list]
				foreach lineAfterComma $splitLinesByComma {
				    dict set finalDic $lineAfterComma [set meas$i]
				}
				incr i
			} 
		}

   return $finalDic
}


proc addSysmonOCGroup { IPINST oc_supply_page } {
  #Adding Header Voltage Averaging
 # set h_mSelection [ipgui::add_group $IPINST -name "Voltage Averaging" -parent $oc_supply_page -layout vertical] 
 # set param1 [ipgui::add_param $IPINST -name "SMON_ENABLE_VOLTAGE_AVERAGING"  -parent ${h_mSelection} -widget checkBox]
 # set param2 [ipgui::add_param $IPINST -name "SMON_VOLTAGE_AVERAGING_SAMPLES"  -parent ${h_mSelection} -widget comboBox]

	set measInfo [parseSysmonMeasurements $IPINST]
		set measParam {}

	set measCount [get_property value [ipgui::get_paramspec -name "SMON_MEASUREMENT_COUNT" -of $IPINST] ]
		for {set i 0} {$i < $measCount} {incr i} {
			set measName [get_property value [ipgui::get_paramspec -name "SMON_MEAS$i\_NAME" -of $IPINST] ]
				set Type  [lindex [dict get $measInfo $measName] 0]
				set Class  [lindex [dict get $measInfo $measName] 1]
				if {[dict exists $measParam $Type $Class]} {
					set val [dict get $measParam $Type $Class]
						lappend val $i
				} else {
					set val $i
				}

			dict set measParam $Type $Class   $val

		}


		foreach Type [dict keys $measParam] {
			set val [dict get $measParam $Type]

				set h_TypeGRP [ipgui::add_group $IPINST -name $Type -parent $oc_supply_page -layout vertical ] 

				foreach Class [dict keys $val] {
                  addSysmonTable $IPINST $Type $Class $val $h_TypeGRP

				}
		}


}

proc addSysmonTable {IPINST Type  Class meas parentGRP } {

	   set h_ClassGRP [ipgui::add_group $IPINST -name $Class -parent ${parentGRP} -layout horizontal -collapse true] 
       set names [dict get $meas $Class] 
	   set mCount [llength $names]
	   set mCount  [expr ($mCount + 1) ]; 
	   set table [ipgui::add_table $IPINST -name "$Type\_$Class" -rows $mCount -columns "7" -layout horizontal -parent ${h_ClassGRP}]

		set text1 [ipgui::add_static_text $IPINST -name "$Type\SupplyName$Class" -text "<b>Supply Name</b>" -parent ${table} ]
		set text2 [ipgui::add_static_text $IPINST -name "$Type\Enable$Class" -text "<b>Enable</b>" -parent ${table} ]
		set text3 [ipgui::add_static_text $IPINST -name "$Type\Average_Enable$Class" -text "<b>Average Enable</b>" -parent ${table} ]
		set text4 [ipgui::add_static_text $IPINST -name "$Type\Alarm_Enable$Class" -text "<b>Alarm Enable</b>" -parent ${table} ]
		set text5 [ipgui::add_static_text $IPINST -name "$Type\MODE$Class" -text "<b>ADC Mode</b>" -parent ${table} ]
		set text6 [ipgui::add_static_text $IPINST -name "$Type\Threshhold_Lower$Class" -text "<b>Threshold Lower (Volt)</b>" -parent ${table} ]
		set text7 [ipgui::add_static_text $IPINST -name "$Type\Threshold_Upper$Class" -text "<b>Threshold Upper (Volt)</b>" -parent ${table} ]

		set_property cell_location 0,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
		set_property cell_location 0,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
		set_property cell_location 0,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
		set_property cell_location 0,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
		set_property cell_location 0,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
		set_property cell_location 0,5  [ ipgui::get_textspec ${text6} -of $IPINST ]
		set_property cell_location 0,6  [ ipgui::get_textspec ${text7} -of $IPINST ]

		set row  1;
	foreach nameId $names {
		set measName [get_property value [ipgui::get_paramspec -name "SMON_MEAS$nameId\_NAME" -of $IPINST] ]
			set text1 [ipgui::add_static_text $IPINST -name $measName$nameId -text $measName -parent ${table} ]
			set param1 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_ENABLE"  -parent ${table} -widget checkBox]
			set param2 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_AVERAGE_EN"  -parent ${table} -widget checkBox]
			set param3 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_ALARM_EN"  -parent ${table} -widget checkBox]
			set param4 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_MODE"  -parent ${table} -widget comboBox]
			set param5 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_ALARM_LOWER"  -parent ${table} -widget textEdit]
			set param6 [ipgui::add_param $IPINST -name "SMON_MEAS$nameId\_ALARM_UPPER"  -parent ${table} -widget textEdit]

			set_property cell_location $row,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
			set_property cell_location $row,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
			set_property cell_location $row,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
			set_property cell_location $row,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
			set_property cell_location $row,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
			set_property cell_location $row,5  [ ipgui::get_guiparamspec ${param5} -of $IPINST ]
			set_property cell_location $row,6  [ ipgui::get_guiparamspec ${param6} -of $IPINST ]
			incr row ; 
	}


}

#This proc will be called when temparature monitoring parameter will be enabled or disabled, and based upon that the TemperatureMonitor Page will be shown. 
proc update_gui_for_PARAM_VALUE.SMON_ENABLE_TEMP_MONITORING {IPINST PARAM_VALUE.SMON_ENABLE_TEMP_MONITORING} {
	set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_TEMP_MONITORING" -of $IPINST]]
		if {$val == 1} {
			set_property enabled "true" [ ipgui::get_pagespec "Temperature Monitor" -of $IPINST ]
		} else {
			set_property enabled "false" [ ipgui::get_pagespec "Temperature Monitor" -of $IPINST ]
		}
}


#This proc will be called when External IO monitoring parameter will be enabled or disabled, and based upon that the External Supply Monitor Page will be shown. 
proc update_gui_for_PARAM_VALUE.SMON_ENABLE_EXTERNALIO_MONITORING {IPINST PARAM_VALUE.SMON_ENABLE_EXTERNALIO_MONITORING} {
	set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_EXTERNALIO_MONITORING" -of $IPINST]]
		if {$val == 1} {
			set_property enabled "true" [ ipgui::get_pagespec "External Supply Monitor" -of $IPINST ]
		} else {
			set_property enabled "false" [ ipgui::get_pagespec "External Supply Monitor" -of $IPINST ]
		}
}

#This proc will be called when Voltage monitoring parameter will be enabled or disabled, and based upon that the OnChipSupplyMonitor Page will be shown. 
proc update_gui_for_PARAM_VALUE.SMON_ENABLE_VOLTAGE_MONITORING {IPINST PARAM_VALUE.SMON_ENABLE_VOLTAGE_MONITORING} {
	set val  [get_property value [ipgui::get_paramspec -name "SMON_ENABLE_VOLTAGE_MONITORING" -of $IPINST]]
		if {$val == 1} {
			set_property enabled "true" [ ipgui::get_pagespec "On Chip Supply Monitor" -of $IPINST ]
		} else {
			set_property enabled "false" [ ipgui::get_pagespec "On Chip Supply Monitor" -of $IPINST ]
		}
}

