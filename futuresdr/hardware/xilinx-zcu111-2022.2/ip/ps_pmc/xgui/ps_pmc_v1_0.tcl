# Definitional proc to organize widgets for parameters.
load librdi_iptasks[info sharedlibextension]
source_ipfile "xgui/cpm_gui.tcl"
source_ipfile "xgui/sem_gui.tcl"
source_ipfile "xgui/sysmon_gui.tcl"
source_ipfile "xgui/ps_pmc_gui.tcl"
source_ipfile "xgui/project_param_list.tcl"
source_ipfile "xgui/hsdp_gui.tcl"

proc addMainPage { IPINST parentPage} {
  set mainPage [ ipgui::add_custom_widget $IPINST -parent $parentPage -name "MainPage" -class_name EverestPage]

}


proc init_gui { IPINST } {
  #Adding Page
  #set_property tab_placement left [ipgui::get_canvasspec -of $IPINST]
  set_property navigator true  [ipgui::get_canvasspec -of $IPINST]
  set_property show_ipsymbol false [ipgui::get_canvasspec -of $IPINST]
  
  set mainPage [ipgui::add_page $IPINST -name "main_page" ]
  set_property display_name "Home" $mainPage
  addMainPage $IPINST $mainPage
  
  set ioConfigPage [ipgui::add_page $IPINST -name "IO Configuration" -group_node "PS-PMC" ]
  addIOConfigPage $IPINST $ioConfigPage
  
  set Clocks [ipgui::add_page $IPINST -name "Clock Configration" -layout horizontal -group_node "PS-PMC"]
  addClockPage $IPINST $Clocks

  set ps_pl_page [ipgui::add_page $IPINST -name "PS-PL Configuration" -group_node "PS-PMC"]
  addpsplpage $IPINST $ps_pl_page
  set nocIF_page [ipgui::add_page $IPINST -name "NoC Interface" -group_node "PS-PMC"]
  addNoCIFPage $IPINST $nocIF_page
  #set ps_pmc_addr [ipgui::add_page $IPINST -name "General Settings"]
  #addPSPMCAddrPage $IPINST $ps_pmc_addr
  set interrupt_config [ipgui::add_page $IPINST -name "Interrupt Configuration" -group_node "PS-PMC"]
  addInterruptConfigPage $IPINST $interrupt_config
  set inter_process_interrupt_config [ipgui::add_page $IPINST -name "Inter Processor Interrupt" -group_node "PS-PMC"]
  addInterProcessInterruptConfigPage $IPINST $inter_process_interrupt_config
  set sysmon [ipgui::add_page $IPINST -name "SysMon Configuration" -layout horizontal -group_node "OPERATIONAL INTEGRITY"]
  addSysmonPage $IPINST $sysmon 
  
  set sem_page [ipgui::add_page $IPINST -name "SEM Configuration" -group_node "OPERATIONAL INTEGRITY"]
  addSemPage $IPINST $sem_page 
  set secmon [ipgui::add_page $IPINST -name "SecMon Configuration" -group_node "OPERATIONAL INTEGRITY"]
  
  set cpmmain [ipgui::add_page $IPINST -name "CPM Configuration" -layout vertical -group_node "CPM"]
  addCPMPage $IPINST $cpmmain
  set pcie_a0_page [ipgui::add_page $IPINST -name "PCIe A0 Configuration" -group_node "CPM" ]
  addPCIE0Page $IPINST $pcie_a0_page
  set pcie_a1_page [ipgui::add_page $IPINST -name "PCIe A1 Configuration" -group_node "CPM" ]
  addPCIE1Page $IPINST $pcie_a1_page
  #set xpipe_page [ipgui::add_page $IPINST -name "XPIPE Configuration" -group_node "CPM" ]
  #addXPIPEPage $IPINST $xpipe_page
  set ccix_page [ipgui::add_page $IPINST -name "CCIX Configuration" -group_node "CPM" ]
  addCCIXPage $IPINST $ccix_page
  #set cpm_pll_page [ipgui::add_page $IPINST -name "CPM Clock Configuration" -layout horizontal -group_node "CPM" ]
  #addCPMPLLPage $IPINST $cpm_pll_page
  set aurora_page [ipgui::add_page $IPINST -name "Aurora Configuration" -layout horizontal -group_node "HSDP"]
  addAuroraPage $IPINST $aurora_page
  

  #set_property visible "false" $sysmon
  #set_property visible "false" $sem_page
  #set_property visible "false" $secmon
  #set_property visible "false" $ioConfigPage
  #set_property visible "false" $interrupt_config
  #set_property visible "false" $ps_pmc_addr
  #set_property visible "false" $ps_pl_page
  #set_property visible "false" $nocIF_page
  #set_property visible "false" $Clocks
  #set_property visible "false" $cpm_pll
  #set_property visible "false" $cpmmain
  #set_property visible "false" $pcie_a0_page
  #set_property visible "false" $pcie_a1_page
  #set_property visible "false" $xpipe_page
  #set_property visible "false" $ccix_page
  #set_property visible "false" $cpm_pll_page
}

 




  


global strength
global guiparamlist
set preset_applied false
set print_warn true
set debug_on false
set device_context {}
set ps_instance_valid false
set ps_data {}

set i 1

proc debug_message {severity message} {
	variable i
	variable debug_on
	incr i
	if {$debug_on == true} {
		send_msg_id PS7-$i INFO $message -verbose
	}
}



proc hwhand_off { IpView } {
    
	set paramValue	""
	set count 0
	set InstName [get_property PARAM_VALUE.Component_Name]     	
	set retString "(* HW_HANDOFF = \"${InstName}.hwdef\" *) "
	
	#send_msg_id PS7-$count INFO $retString -verbose	
	# Return the string buffer of Power Generation properties
    return $retString 
}


proc getDeviceContext { } {
 
  return [ps_context]
}

proc ps_context { } {
	  set retVal {}
    variable device_context
    set c_family  [get_project_property FAMILY]
    set c_arch    [get_project_property ARCHITECTURE]
    set c_package [get_project_property PACKAGE]
    set c_device  [get_project_property DEVICE]
    set c_speed   [get_project_property SPEEDGRADE]    
    set c_part    [get_project_property PART]
    set c_target  [get_project_property PREFHDL]
    set c_datapath [ ipgui::get_coredir]
    set c_silicon_version "3"
    set c_pcore_name "ps_pmc"
    set c_pcore_ver "1.0"
    set c_instance_name [current_instname]

    tcl::lappend retVal "family"
    tcl::lappend retVal $c_family
    tcl::lappend retVal "device"
    tcl::lappend retVal $c_device
    tcl::lappend retVal "package"
    tcl::lappend retVal $c_package
    tcl::lappend retVal "speedgrade"
    tcl::lappend retVal $c_speed
    
    tcl::lappend retVal "part"
    
    tcl::lappend retVal $c_part
    tcl::lappend retVal "language"
    tcl::lappend retVal $c_target
    tcl::lappend retVal "datapath"
    tcl::lappend retVal $c_datapath
    tcl::lappend retVal "silicon_version"
    tcl::lappend retVal $c_silicon_version
    tcl::lappend retVal "instance_name"
    tcl::lappend retVal $c_instance_name
    tcl::lappend retVal "ps_core_name"
    tcl::lappend retVal $c_pcore_name
    tcl::lappend retVal "ps_core_ver"
    tcl::lappend retVal $c_pcore_ver
    set projparamlist [getlistofprojectparam]
    
    foreach name $projparamlist {
      tcl::lappend retVal $name
      set value    [get_project_property $name]
      tcl::lappend retVal $value
#puts "$name -> $value"
    }

    set device_context  $retVal


    

    #dbg $retVal
    return  $retVal
}


proc uninit { IpView } {
     debug_message 2 "Calling 		     zynq_uninit"                                                                                                                                                                  
    set TIME_start [clock clicks -milliseconds]
     variable device_context
     set ret [ Ip_config_rdi_tcltasks_ip_uninit -context [ ps_context ]]
     #Cannot comment this out for performance. Causes CR 939277
     #set retval [ Ip_config_rdi_tcltasks_zynq_init -context $device_context ]
	 set ps_instance_valid false
	 set ps_data {}
    set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]
	debug_message 2  "Time taken by UNinit is $TIME_taken ms" 
}


proc get_ps_data { val sectionName} {
   foreach section $val {
      set secName [lindex $section 0]
      set secVal [lindex $section 1]
	  if { [string match "*$sectionName*" $secName]} {
	    return $secVal
	  }
   }

   return ""
}

proc xdc_generate { IpView val} {
    set TIME_start [clock clicks -milliseconds]
    variable ps_data
    variable ps_instance_valid
    generate_ps_data $IpView $val
    
	  # Needed to add FCLK enables information of the design for the create_clock constriants generationn
    # We may need to add FCLK[0..3]_ENABLE params in serparamlist
    set constr [get_ps_data $ps_data "XDC_DATA"] 
    #set ret [ Ip_config_rdi_tcltasks_zynq_uninit -context [ ps_context ]]
    if {$constr == ""} {
     	debug_message 2 "XDC Generation Failed"
    }
    # Return the string buffer of XDC properties
    set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]
	debug_message 2  "Time taken by XDC_generate is $TIME_taken ms" 
    return $constr
}  



proc reg_generate { IpView val} {
    set TIME_start [clock clicks -milliseconds]
    variable ps_instance_valid
	  # Needed to add FCLK enables information of the design for the create_clock constriants generationn
    # We may need to add FCLK[0..3]_ENABLE params in userparamlist
     generate_ps_data $IpView $val
    # Return the string buffer of XDC properties
    set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]
	debug_message 2 "Time taken by reg_generate is $TIME_taken ms" 
	
}   

proc  generate_ps_data { IpView val} {
    variable ps_data;
    variable ps_instance_valid;
	
	set TIME_start [clock clicks -milliseconds]

	  # Needed to add FCLK enables information of the design for the create_clock constriants generationn
    # We may need to add FCLK[0..3]_ENABLE params in userparamlist
    
	if { $ps_instance_valid == false} {
    	set ret [ Ip_config_rdi_tcltasks_ip_uninit -context [ ps_context ]]
		#set userparamlist [Ip_config_rdi_tcltasks_get_user_param_list -context [ ps_context ]]
    	set ps_data [ Ip_config_rdi_tcltasks_generateSDKSpecificFiles -context [ ps_context ] -path  $val -params [ gettclvalue $IpView ] ] 
    	# Return the string buffer of XDC properties
		set ps_instance_valid true
   }
    set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]
	debug_message 2 "Time taken by generate_ps_data $TIME_taken ms" 
	
}   

proc power_generate { IpView val} {
#set constr [ Ip_config_rdi_tcltasks_power_generate -context [ ps_context ] -params [ gettclvalue $IpView ] -path  $val]
#    if {$constr == ""} {
#      debug_message 2 "Power Generation Failed"
#    }
    # Return the string buffer of Power Generation properties
#    return $constr
}

proc iopadreport_generate { IpView val} {
    
    set TIME_start [clock clicks -milliseconds]
    variable ps_data
    generate_ps_data $IpView $val

	  # Needed to add FCLK enables information of the design for the create_clock constriants generationn
    # We may need to add FCLK[0..3]_ENABLE params in serparamlist
    set constr [get_ps_data $ps_data "IOPAD_DATA"] 
    #set ret [ Ip_config_rdi_tcltasks_zynq_uninit -context [ ps_context ]]
    if {$constr == ""} {
     	debug_message 2 "IOPAD report Generation Failed"
    }
    # Return the string buffer of XDC properties
    set TIME_taken [expr [clock clicks -milliseconds] - $TIME_start]
	debug_message 2  "Time taken by IOPAD_generate is $TIME_taken ms" 
    return $constr
	
}

proc generate_sysmon_data { IpView val} {
    variable ps_data 
	generate_ps_data $IpView $val
    set npiData [ get_ps_data $ps_data "SYSMON_DATA"]
    if {$npiData == ""} {
      debug_message 2 "Sysmon Report Generation Failed"
    }
    # Return the string buffer of Power Generation properties
    return $npiData
}

proc jitter_generate { IpView val} {
#    set constr [ Ip_config_rdi_tcltasks_jitter_constraints -context [ ps_context ] -params [ gettclvalue $IpView ] -path  $val]
#    if {$constr == ""} {
#      debug_message 2 "Jitter Constraints Generation Failed"
#    }
    # Return the string buffer of jitter Generation properties
#    return $constr
}



proc dbg { args } {
    ## Make this Zero for prodcution
    set debug 0

    if $debug {
        global  tcl_platform
        if { [ string equal $tcl_platform(platform) windows ] } {
            set f [ ::open con: w ]
        } else {
            set f [ ::open /dev/tty w ]
        }
        foreach x $args {
            ::puts $f "DBG: [ clock format [ clock seconds ] -format %T ] : $x"
        }
        ::close $f
    }
}

proc gettclvalue { ipview } {
        set retVal {}
        set userparamlist [Ip_config_rdi_tcltasks_get_user_param_list -context [ ps_context ]]
            foreach value $userparamlist {
                   set paramval  [ get_property PARAM_VALUE.${value} ]
                       tcl::lappend retVal $value
                       tcl::lappend retVal $paramval
            }
        return $retVal
}




proc update_params {IPINST} {
  global strength
  set strength "5"
}

proc getStrength {} {
  global strength
  return $strength;
}

proc init_params {IPINST PARAM_VALUE.SUBPRESET1} {

  update_ip_params $IPINST
set_property subpreset_category [getSysmonPresetParams] ${PARAM_VALUE.SUBPRESET1}
  global strength
  set strength "10"
  ipgui::update_params -params "" $IPINST
}

proc update_ip_params {IPINST} {

    set val [get_project_property DEVICE]  	
    set_property value $val [ ipgui::get_modelparamspec -name  "C_XDEVICE" -of $IPINST]


}


proc getSysmonPresetParams {} {
set params "PARAM_VALUE.SMON_CHANNEL_AVERAGING_EN,PARAM_VALUE.SMON_CHANNEL_ALARM_EN,PARAM_VALUE.SMON_NUM_OF_SAMPLES_FOR_AVERAGING,PARAM_VALUE.SMON_ENABLE_SYSMON,PARAM_VALUE.SMON_ENABLE_TEMP_ALARM,PARAM_VALUE.SMON_ENABLE_USER_TEMP_ALARM,PARAM_VALUE.SMON_ENABLE_TEMP_MONITORING,PARAM_VALUE.SMON_TEMP_THRESHOLD,PARAM_VALUE.SMON_OT_THRESHOLD,PARAM_VALUE.SMON_OT_EN,PARAM_VALUE.SMON_ENABLE_TEMP_AVERAGING,PARAM_VALUE.SMON_TEMP_AVERAGING_SAMPLES,PARAM_VALUE.SMON_OT_THRESHOLD_ALARM,PARAM_VALUE.SMON_OT_ALARM_TYPE,PARAM_VALUE.SMON_OT_THRESHOLD_UPPER,PARAM_VALUE.SMON_OT_THRESHOLD_LOWER,PARAM_VALUE.SMON_ENABLE_USER_TEMP_ALARM,PARAM_VALUE.SMON_USER_TEMP_ALARM_TYPE,PARAM_VALUE.SMON_USER_TEMP_THRESHOLD_UPPER,PARAM_VALUE.SMON_USER_TEMP_THRESHOLD_LOWER,PARAM_VALUE.SMON_ENABLE_VOLTAGE_MONITORING,PARAM_VALUE.SMON_ENABLE_VOLTAGE_AVERAGING,PARAM_VALUE.SMON_VOLTAGE_AVERAGING_SAMPLES,PARAM_VALUE.SMON_ENABLE_VOLTAGE_ALARM,PARAM_VALUE.SMON_ENABLE_COMMON_VOLTAGE_ALARM,PARAM_VALUE.SMON_COMMON_TH_UPPER,PARAM_VALUE.SMON_COMMON_TH_LOWER,PARAM_VALUE.SMON_ENABLE_EXTERNALIO_MONITORING,PARAM_VALUE.SMON_VAUX_IO_BANK,PARAM_VALUE.SMON_MONITOR_WHAT,PARAM_VALUE.SMON_ALARMS,PARAM_VALUE.SMON_INTERFACE_TO_USE"

 set i 0
 while {$i < 176} {
   set params  "$params , PARAM_VALUE.SMON_MEAS$i\_ENABLE, PARAM_VALUE.SMON_MEAS$i\_AVERAGE_EN, PARAM_VALUE.SMON_MEAS$i\_ALARM_EN"
  incr i
 }
 
 set i 0
 while {$i < 16} {
    set params  "$params , PARAM_VALUE.SMON_VAUX_CH$i\_ENABLE,  PARAM_VALUE.SMON_VAUX_CH$i\_MODE, PARAM_VALUE.SMON_VAUX_CH$i\_IO_P, PARAM_VALUE.SMON_VAUX_CH$i\_IO_N , PARAM_VALUE.SMON_VAUX_CH$i\_AVERAGE_EN, PARAM_VALUE.SMON_VAUX_CH$i\_ALARM_EN, PARAM_VALUE.SMON_VAUX_CH$i\_ALARM_UPPER, PARAM_VALUE.SMON_VAUX_CH$i\_ALARM_LOWER " 
    incr i
}

  return $params


}

proc PS_MIO_PERIPHERAL {IpView} {
  return "PS_MIO 0";
}

proc CPM_USE_MODES {IPINST} {
    set value [get_property value [ipgui::get_paramspec -name CPM_USE_MODES -of $IPINST]]
	if { [string match "Single_Port_Streaming" $value]} {
	   return "PCIe Controller A0 shall be enabled with x16 as default lane width. There will be AXI4-S interfaces between CPM and PL";
	} else if { [string match "Dual_Port_Streaming" $value]} {
    return "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL for both the controllers";
	} else if { [string match "Single_Port_DMA" $value]} {
    return "PCIe Controller A0 shall be enabled with x16 as default lane width. There will be AXI4-MM interfaces between CPM and NOC";
	} else if { [string match "Dual_Port_DMA" $value]} {
    return "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-MM interface between A0 and NOC and AXI4-S interfaces between CPM and PL for A1 the controller";
	} else if { [string match "Root_Port_DMA" $value]} {
    return "PCIe Controller A0 configured as RP shall be enabled with x16 as default late width. There will be AXI4-S interfaces between CPM and PS/PMC";
	} else if { [string match "Single_Port_CCIX" $value]} {
    return "CCIX mode with VC1 enabled for PCIe controller A0 for CCIX functionality";
	} else if { [string match "Dual_Port_CCIX" $value]} {
    return "CCIX mode with VC1 enabled for both the PCIe controllers A0 and A1 for CCIX functionality";
  }

  return "Use Modes Desc:";
}



