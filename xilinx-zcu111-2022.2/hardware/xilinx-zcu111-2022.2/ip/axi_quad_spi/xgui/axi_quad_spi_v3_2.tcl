package require xilinx::board 1.0
namespace import ::xilinx::board::*
#set qspi_vlnv "xilinx.com:interface:spi_rtl:1.0"
#Definitional proc to organize widgets for parameters.


proc init_params {IPINST PARAM_VALUE.QSPI_BOARD_INTERFACE PARAM_VALUE.C_FIFO_DEPTH} {
  set_property preset_proc "QSPI_BOARD_INTERFACE_PRESET" ${PARAM_VALUE.QSPI_BOARD_INTERFACE}
  set_property range "16,256"  ${PARAM_VALUE.C_FIFO_DEPTH}
}

proc QSPI_BOARD_INTERFACE_PRESET {IPINST PRESET_VALUE} {
  if { $PRESET_VALUE == "Custom" } {
    return ""
  }
  set board [::ipxit::get_project_property BOARD]
  set vlnv [get_property ipdef $IPINST] 
  set preset_params [board_ip_presets $vlnv $PRESET_VALUE $board]
  if { $preset_params != "" } {
    return $preset_params
  } else {
    return ""
  }
}


proc init_gui { IPINST } {   
     set Component_Name [ ipgui::add_param  $IPINST  -parent  $IPINST -name Component_Name ]
##################################
# board gui 
	##set board ${PROJECT_PARAM.BOARD}

	add_board_tab $IPINST -display_name {"QSPI_BOARD_INTERFACE" SPI}

#################################
     set Page0 [ ipgui::add_page $IPINST  -name "IP Configuration" -layout vertical]
     set C_SELECT_XPM [ipgui::add_param $IPINST -name C_SELECT_XPM -parent $Page0]
     set_property visible false  [ ipgui::get_guiparamspec C_SELECT_XPM -of $IPINST]
set c_family [string tolower [get_project_property ARCHITECTURE]]

     ################################################################################
     
     set Interface_group [ipgui::add_group $IPINST -parent $Page0 -name "AXI Interface Options" ]
     set spi_group [ipgui::add_group $IPINST -parent $Page0 -name "SPI Options" ]

     ###### 
     set C_XIP_MODE [ipgui::add_param $IPINST -parent $Interface_group -name C_XIP_MODE -widget checkBox]
     set_property display_name "Enable XIP Mode" [ipgui::get_guiparamspec C_XIP_MODE   -of $IPINST]
     #######
     set C_TYPE_OF_AXI4_INTERFACE [ipgui::add_param $IPINST -parent $Interface_group -name C_TYPE_OF_AXI4_INTERFACE  -widget checkBox]
     set_property display_name "Enable Performance Mode" [ ipgui::get_guiparamspec C_TYPE_OF_AXI4_INTERFACE -of $IPINST ]
     #set_property tooltip "Enable AXI4 Memory Mapped Interface" $C_TYPE_OF_AXI4_INTERFACE 
     ########
     set C_S_AXI4_ID_WIDTH [ipgui::add_param $IPINST -parent $Interface_group -name C_S_AXI4_ID_WIDTH]
     set_property display_name "ID_WIDTH" [ ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]
     set_property visible false [ ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]
     ########
     set C_SPI_MEM_ADDR_BITS [ipgui::add_param $IPINST -parent $Interface_group -name C_SPI_MEM_ADDR_BITS -widget radioGroup -layout horizontal]
     set_property display_name "SPI Flash Address Bits(XIP Mode)" [ ipgui::get_guiparamspec C_SPI_MEM_ADDR_BITS -of $IPINST ]
     set_property visible false [ipgui::get_guiparamspec C_SPI_MEM_ADDR_BITS -of $IPINST] 
     ########      
     set_property tooltip "This parameter should be set while operating the core in eXecute In Place (XIP) mode for 24 bit or 32 bit SPI flash addressing. Please refer PG and tageted memory data sheet for more reference."  [ipgui::get_guiparamspec C_SPI_MEM_ADDR_BITS -of $IPINST ] 
################################################################################

     set C_SPI_MODE [ipgui::add_param $IPINST -parent $spi_group -name C_SPI_MODE -layout horizontal  -widget comboBox]
     set_property display_name "Mode" [ ipgui::get_guiparamspec C_SPI_MODE -of $IPINST ]
     #set_property tooltip "SPI interface protocol" $C_SPI_MODE
     ########
     set Master_mode [ipgui::add_param $IPINST -parent $Page0 -name Master_mode -widget checkBox]
     ########
     set FIFO_INCLUDED [ipgui::add_param $IPINST -parent $Page0 -name FIFO_INCLUDED -widget checkBox]
     set_property display_name "Enable FIFO" [ ipgui::get_guiparamspec FIFO_INCLUDED -of $IPINST ]
     #set_property tooltip "Include/Exclude Tx/Rx FIFO" $FIFO_INCLUDED
     ########
     set C_FIFO_DEPTH [ipgui::add_param $IPINST -parent $Page0 -name C_FIFO_DEPTH -widget comboBox]
     set_property display_name "FIFO Depth" [ ipgui::get_guiparamspec C_FIFO_DEPTH -of $IPINST ]
     #set_property tooltip "Tx/Rx FIFO Depth" $C_FIFO_DEPTH
     ########
     set C_NUM_TRANSFER_BITS [ipgui::add_param $IPINST -parent $spi_group -name C_NUM_TRANSFER_BITS -widget comboBox]
     set_property display_name "Transaction Width" [ ipgui::get_guiparamspec C_NUM_TRANSFER_BITS -of $IPINST ]
     #set_property tooltip "SPI Transaction Width in Bits" [ ipgui::get_guiparamspec C_NUM_TRANSFER_BITS -of $IPINST ]
     #

########     ########
     set tabgroup2 [ipgui::add_panel $IPINST -parent $spi_group -name "Clock" -layout horizontal]
########     ########
     #
     set C_SCK_RATIO [ipgui::add_param $IPINST -parent $tabgroup2 -name C_SCK_RATIO -widget comboBox ]
     set_property display_name "Frequency Ratio   " [ ipgui::get_guiparamspec C_SCK_RATIO -of $IPINST ]
     set multply_text [ipgui::add_static_text $IPINST -parent $tabgroup2 -name "Multiply By" -text X]
     ########     
     set Multiples16 [ipgui::add_param $IPINST -parent $tabgroup2 -name Multiples16 -show_range true -show_label false]
	 ipgui::add_static_text $IPINST -parent $tabgroup2 -name range_text -text "(1...128)"
     set_property display_name "Multiplying Factor" [ ipgui::get_guiparamspec Multiples16 -of $IPINST ]
     set_property tooltip "Multiplying Factor (1...128)" [ ipgui::get_guiparamspec Multiples16 -of $IPINST ]
 
     ########
     ########     
     set C_SCK_RATIO1 [ipgui::add_param $IPINST -parent $tabgroup2 -name C_SCK_RATIO1 -widget comboBox ]
     set_property visible false [ipgui::get_guiparamspec C_SCK_RATIO1 -of $IPINST ]

     ########
      set C_NUM_SS_BITS [ipgui::add_param $IPINST -parent $spi_group -name C_NUM_SS_BITS -widget comboBox]
     set_property display_name "No. of Slaves" [ ipgui::get_guiparamspec C_NUM_SS_BITS -of $IPINST ]
     #set_property tooltip "Slave Select Bits" [ ipgui::get_guiparamspec C_NUM_SS_BITS
if {$c_family == "kintex7" || $c_family == "virtex7" || $c_family == "zynq" || $c_family == "artix7" || $c_family == "spartan7"} {
} else {
     set C_DUAL_QUAD_MODE [ipgui::add_param $IPINST -parent $spi_group -name C_DUAL_QUAD_MODE -widget checkBox]
     set_property display_name "Enable Dual Quad Mode" [ipgui::get_guiparamspec C_DUAL_QUAD_MODE   -of $IPINST]
        set_property tooltip "Select this option to access two QSPI flash devices using one instance of IP. The Flash devices can be accessed one at a time. For more details refer PG" $C_DUAL_QUAD_MODE
}
     ########
     set C_SPI_MEMORY [ipgui::add_param $IPINST -parent $spi_group -name C_SPI_MEMORY -widget comboBox]
     set_property display_name "Slave Device" [ ipgui::get_guiparamspec C_SPI_MEMORY -of $IPINST ]
     set_property visible false [ipgui::get_guiparamspec C_SPI_MEMORY -of $IPINST ]
     ########
     #set_property tooltip "Type of SPI Slave Memory" [ ipgui::get_guiparamspec C_SPI_MEMORY
     ########
     set C_USE_STARTUP [ipgui::add_param $IPINST -parent $Page0 -name C_USE_STARTUP -widget checkBox]
     set_property display_name "Enable STARTUP Primitive" [ ipgui::get_guiparamspec C_USE_STARTUP -of $IPINST ]
     set C_USE_STARTUP_INT [ipgui::add_param $IPINST -parent $Page0 -name C_USE_STARTUP_INT -widget radioGroup]
     set C_SHARED_STARTUP [ipgui::add_param $IPINST -parent $Page0 -name C_SHARED_STARTUP -widget checkBox]
     ##set_property visible false [ipgui::get_guiparamspec C_USE_STARTUP_INT -of $IPINST ]
     #set_property tooltip "Include/Exclude STARTUP Primitive" $C_USE_STARTUP
     ########
     set Async_Clk [ipgui::add_param $IPINST -parent $Page0 -name Async_Clk -widget checkBox]
     # set_property display_name "Asynchronous Clocks" $Async_Clk
     #set_property tooltip "AXI and SPI Clocks are Asynchronous" $Async_Clk
################################################################################
     set C_SUB_FAMILY [ipgui::add_param $IPINST -parent $Page0 -name C_SUB_FAMILY]
     set_property visible false [ipgui::get_guiparamspec C_SUB_FAMILY -of $IPINST]
     set C_FAMILY [ipgui::add_param $IPINST -parent $Page0 -name C_FAMILY]
     set_property visible false [ipgui::get_guiparamspec C_FAMILY -of $IPINST]

     set UC_FAMILY [ipgui::add_param $IPINST -parent $Page0 -name UC_FAMILY]
     set_property visible false [ipgui::get_guiparamspec UC_FAMILY -of $IPINST]
     set C_INSTANCE [ipgui::add_param $IPINST -parent $Page0 -name C_INSTANCE]
     set_property visible false [ipgui::get_guiparamspec C_INSTANCE -of $IPINST]

     set C_S_AXI4_BASEADDR [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXI4_BASEADDR]
     set_property visible false [ipgui::get_guiparamspec C_S_AXI4_BASEADDR -of $IPINST]
     set C_S_AXI4_HIGHADDR [ipgui::add_param $IPINST -parent $Page0 -name C_S_AXI4_HIGHADDR]
     set_property visible false $C_S_AXI4_HIGHADDR
   set c_family [string tolower [get_project_property ARCHITECTURE]]
if {$c_family == "kintex7" || $c_family == "virtex7" || $c_family == "zynq" || $c_family == "artix7" || $c_family == "spartan7"} { 
        set_property tooltip "When this option is enabled, all unused startup ports are brought out" $C_SHARED_STARTUP   
        set_property tooltip "When this option is enabled, STARTUPE2 Primitive is instantiated inside the IP. To access flash/memory without STARTUP, this option should be disabled" $C_USE_STARTUP   
        set_property display_name "Enable STARTUP Primitive" $C_USE_STARTUP

   } else {
    set_property tooltip "When this option is enabled, IOB attributes are not set on data input ports of SPI interface (in IP XDC constraints, as these ports are routed through STARTUP Primitive)" $C_USE_STARTUP
    set_property tooltip "When startup is internal to the IP, all unused startup ports are brought out" $C_USE_STARTUP_INT   
    set_property display_name "Flash (Memory) access through STARTUP Primitive" $C_USE_STARTUP
   }
    ipgui::add_row $IPINST -parent $Page0
    ipgui::add_row $IPINST -parent $Page0
    set panel_spi_1 [ipgui::add_panel $IPINST -parent $Page0 -name panel_spi_1 -layout horizontal]
     set Important_Note [ipgui::add_group $IPINST -parent $panel_spi_1 -name "<html> <font size=5><span style=\"color:#F64430\"> <b>Note:</b></font></html>" ]

   ipgui::add_static_text $IPINST -parent $Important_Note -name constraint_text -text "<html><b>Please note that the core constraints need to be updated as per your H/W specification.</b> </html>"
   ipgui::add_static_text $IPINST -parent $Important_Note -name constraint_text -text "<html><b>Please refer PG or commented constraints in the IP generated xdc file ( ./project_*/project_*.srcs/sources_1/ip/axi_quad_spi_*/axi_quad_spi_*.xdc ).</b> </html>"
}

################################################################################
proc update_PARAM_VALUE.QSPI_BOARD_INTERFACE {IPINST PARAM_VALUE.QSPI_BOARD_INTERFACE PROJECT_PARAM.BOARD}  { 
	set param_range [get_board_interface_param_range $IPINST -name "QSPI_BOARD_INTERFACE"]
	set_property range $param_range ${PARAM_VALUE.QSPI_BOARD_INTERFACE}
}
########################################
# PARAM_VALUE.C_XIP_MODE
########################################



proc update_gui_for_PARAM_VALUE.C_XIP_MODE {IPINST PARAM_VALUE.C_XIP_MODE PARAM_VALUE.C_SPI_MODE } {
	# Procedure called when C_XIP_MODE is updated
     set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
     set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]

     if { $xip_mode == 1} {
			set_property visible true  [ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec C_SPI_MEM_ADDR_BITS -of $IPINST]
            set_property visible false [ipgui::get_guiparamspec C_TYPE_OF_AXI4_INTERFACE -of $IPINST]
			set_property visible false [ipgui::get_guiparamspec -name Master_mode -of $IPINST]
			set_property visible false [ipgui::get_guiparamspec -name FIFO_INCLUDED -of $IPINST]
            set_property visible false [ipgui::get_guiparamspec Multiples16 -of $IPINST]
			set_property visible false [ipgui::get_guiparamspec C_FIFO_DEPTH -of $IPINST]
			set_property visible false [ipgui::get_textspec "Multiply By" -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec -name C_SPI_MEMORY -of $IPINST]
    } else {
			set_property visible false [ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]	   
			set_property visible false [ipgui::get_guiparamspec C_SPI_MEM_ADDR_BITS -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec C_TYPE_OF_AXI4_INTERFACE -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec -name Master_mode -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec -name FIFO_INCLUDED -of $IPINST]
			set_property visible true  [ipgui::get_guiparamspec C_FIFO_DEPTH -of $IPINST]
			if {$spi_mode == 1 || $spi_mode == 2 } {
				set_property visible false [ipgui::get_guiparamspec Multiples16 -of $IPINST]
				set_property visible false [ipgui::get_textspec "Multiply By" -of $IPINST]
				set_property visible true [ipgui::get_guiparamspec  C_SPI_MEMORY -of $IPINST] 
			} else {
				set_property visible true  [ipgui::get_guiparamspec Multiples16 -of $IPINST]
				set_property visible true  [ipgui::get_textspec "Multiply By" -of $IPINST]
	            set_property visible false [ipgui::get_guiparamspec -name C_SPI_MEMORY -of $IPINST]	 
			}
	   }
}




########################################
# PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE
########################################

proc update_PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE { PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE  PARAM_VALUE.C_XIP_MODE } {
    set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE} ] 
	if { $xip_mode == 1  } {
		set_property value 1  ${PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE}
	} else {	
		set_property value 0  ${PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE}
	}

}

proc update_gui_for_PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE { IPINST PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE } {
 
    
   set axi4_type [get_property value ${PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE}]
	if {$axi4_type == 0 } {
		set_property visible false [ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]
	} else {
		set_property visible true  [ipgui::get_guiparamspec C_S_AXI4_ID_WIDTH -of $IPINST]
    }
 }


proc update_MODELPARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE { PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE   MODELPARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE} {
	set_property  value [get_property value ${PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE} ]  ${MODELPARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE}
}



########################################
# PARAM_VALUE.C_S_AXI4_ID_WIDTH]
########################################

proc update_PARAM_VALUE.C_S_AXI4_ID_WIDTH { PARAM_VALUE.C_S_AXI4_ID_WIDTH PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE PARAM_VALUE.C_XIP_MODE } {
	set enable_PERFORMANCE_MODE [ get_property value ${PARAM_VALUE.C_TYPE_OF_AXI4_INTERFACE} ]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	
        if { ($enable_PERFORMANCE_MODE || $xip_mode )  } { 
				set_property enabled true  ${PARAM_VALUE.C_S_AXI4_ID_WIDTH}
		} else {
				set_property value "4"  ${PARAM_VALUE.C_S_AXI4_ID_WIDTH} 
				set_property enabled false  ${PARAM_VALUE.C_S_AXI4_ID_WIDTH}
		}
      
}

proc update_MODELPARAM_VALUE.C_S_AXI4_ID_WIDTH {MODELPARAM_VALUE.C_S_AXI4_ID_WIDTH PARAM_VALUE.C_S_AXI4_ID_WIDTH} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
       set ID_WIDTH [get_property value ${PARAM_VALUE.C_S_AXI4_ID_WIDTH}]
    if { $ID_WIDTH == 0} {
         set val 1
     } else {
         set val $ID_WIDTH
     }
	set_property value $val ${MODELPARAM_VALUE.C_S_AXI4_ID_WIDTH}

}

########################################
# PARAM_VALUE.C_SPI_MODE
########################################
proc update_gui_for_PARAM_VALUE.C_SPI_MODE {IPINST  PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_XIP_MODE } {
	# Procedure called when C_SPI_MODE is updated
	set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
       	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	
	if {$spi_mode == 1 || $spi_mode == 2 } {
	    set_property visible false [ipgui::get_guiparamspec Multiples16 -of $IPINST]
	    set_property visible false [ipgui::get_textspec "Multiply By" -of $IPINST]
	    set_property visible true [ipgui::get_guiparamspec  C_SPI_MEMORY -of $IPINST] 
	} elseif {$xip_mode == 1 } {
	    set_property visible false [ipgui::get_guiparamspec -name Master_mode -of $IPINST]
   	    set_property visible false [ipgui::get_guiparamspec -name FIFO_INCLUDED -of $IPINST]
		set_property visible false [ipgui::get_guiparamspec Multiples16 -of $IPINST]
	    set_property visible false [ipgui::get_textspec "Multiply By" -of $IPINST]
	    set_property visible true  [ipgui::get_guiparamspec -name C_SPI_MEMORY -of $IPINST]  
	} else {
	    set_property visible true [ipgui::get_guiparamspec Master_mode -of $IPINST]
		set_property visible true [ipgui::get_guiparamspec  FIFO_INCLUDED -of $IPINST]
		set_property visible true [ipgui::get_guiparamspec Multiples16 -of $IPINST]
		set_property visible true [ipgui::get_textspec "Multiply By" -of $IPINST]
		set_property visible false  [ipgui::get_guiparamspec C_SPI_MEMORY -of $IPINST] 
	}


}


proc update_PARAM_VALUE.C_DUAL_QUAD_MODE  { PARAM_VALUE.C_DUAL_QUAD_MODE PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_NUM_SS_BITS PARAM_VALUE.C_FAMILY} {
	# Procedure called when C_SPI_MODE is updated
   set c_family [ string tolower [ get_property value ${PARAM_VALUE.C_FAMILY} ] ] 
   if {$c_family == "kintex7" || $c_family == "virtex7" || $c_family == "zynq" || $c_family == "artix7" || $c_family == "spartan7"} { 
	    set_property value 0 ${PARAM_VALUE.C_DUAL_QUAD_MODE}
	    set_property enabled false ${PARAM_VALUE.C_DUAL_QUAD_MODE}
   } else { 
	set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
       	set ss_bits [get_property value ${PARAM_VALUE.C_NUM_SS_BITS}]
	if {$ss_bits == 2 && $spi_mode == 2} {
	    set_property enabled true ${PARAM_VALUE.C_DUAL_QUAD_MODE}
	} else {
	    set_property value 0 ${PARAM_VALUE.C_DUAL_QUAD_MODE}
	    set_property enabled false ${PARAM_VALUE.C_DUAL_QUAD_MODE}
	}
}
	
}


########################################
# PARAM_VALUE.Master_mode
########################################
proc update_PARAM_VALUE.Master_mode  { PARAM_VALUE.Master_mode  PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_XIP_MODE } {
	# Procedure called when C_SPI_MODE is updated
	set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
       	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	if {$spi_mode == 1 || $spi_mode == 2 } {
	    set_property value "1" ${PARAM_VALUE.Master_mode}
	    set_property enabled false ${PARAM_VALUE.Master_mode}
	} else {
		set_property value "1" ${PARAM_VALUE.Master_mode}
		set_property enabled true ${PARAM_VALUE.Master_mode}
	}
	
}


proc update_gui_for_PARAM_VALUE.Master_mode {IPINST PARAM_VALUE.Master_mode PARAM_VALUE.C_SPI_MODE } {
	set mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
	set master [get_property value ${PARAM_VALUE.Master_mode}]
	if { $mode == 1 } {
		 if { $master == 0 } {
			set_property visible false [ipgui::get_guiparamspec C_SCK_RATIO -of $IPINST]
			set_property visible true [ipgui::get_guiparamspec C_SCK_RATIO1 -of $IPINST]
		 } else {
			set_property visible false [ipgui::get_guiparamspec C_SCK_RATIO1 -of $IPINST]
			set_property visible true [ipgui::get_guiparamspec C_SCK_RATIO -of $IPINST]
	 	 }
	} else {
		set_property visible false [ipgui::get_guiparamspec C_SCK_RATIO1 -of $IPINST]
		set_property visible true [ipgui::get_guiparamspec C_SCK_RATIO -of $IPINST]
	}
}




########################################
# PARAM_VALUE.FIFO_INCLUDED
########################################
proc update_PARAM_VALUE.FIFO_INCLUDED {PARAM_VALUE.FIFO_INCLUDED PARAM_VALUE.C_SPI_MODE } {
	# Procedure called when C_SPI_MODE is updated
	set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
       #	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]

	if {$spi_mode == 1 || $spi_mode == 2} {
	    set_property value "1" ${PARAM_VALUE.FIFO_INCLUDED}
	    set_property enabled false ${PARAM_VALUE.FIFO_INCLUDED}
	} else {
	    set_property value "1" ${PARAM_VALUE.FIFO_INCLUDED}
		       set_property enabled true ${PARAM_VALUE.FIFO_INCLUDED}
	}
}


proc update_gui_for_PARAM_VALUE.FIFO_INCLUDED { PARAM_VALUE.FIFO_INCLUDED PARAM_VALUE.C_XIP_MODE IPINST } {
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
    set fifo_enable [get_property value ${PARAM_VALUE.FIFO_INCLUDED}]
	if {$fifo_enable == 1 } {
	   if { $xip_mode == 1 } {
			set_property visible false [ipgui::get_guiparamspec C_FIFO_DEPTH -of $IPINST]
		} else {
				set_property visible true [ipgui::get_guiparamspec  C_FIFO_DEPTH -of $IPINST]
		}
	} else {
	    set_property visible false [ipgui::get_guiparamspec C_FIFO_DEPTH -of $IPINST] 
	}
}


########################################
# PARAM_VALUE.C_FIFO_DEPTH
########################################
proc update_PARAM_VALUE.C_FIFO_DEPTH { PARAM_VALUE.C_FIFO_DEPTH PARAM_VALUE.C_XIP_MODE PARAM_VALUE.FIFO_INCLUDED } {
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	set fifo_enable [get_property value ${PARAM_VALUE.FIFO_INCLUDED}]
	if { $xip_mode == 1 } {		  
      		set_property enabled false ${PARAM_VALUE.C_FIFO_DEPTH}
	} else {
		if {$fifo_enable == 1} {
			set_property range_value "16,16,256"  ${PARAM_VALUE.C_FIFO_DEPTH}
			set_property enabled true ${PARAM_VALUE.C_FIFO_DEPTH}
		} else {
			set_property range_value "0,0" ${PARAM_VALUE.C_FIFO_DEPTH}
			set_property value "0" ${PARAM_VALUE.C_FIFO_DEPTH}
		}	
	}
}

proc validate_C_FIFO_DEPTH { IPINST PARAM_VALUE.FIFO_INCLUDED PARAM_VALUE.C_FIFO_DEPTH PARAM_VALUE.C_XIP_MODE } {
	# Procedure called to validate C_FIFO_DEPTH
	set fifo_enable [get_property value ${PARAM_VALUE.FIFO_INCLUDED}]
	set fifo_depth [get_property value ${PARAM_VALUE.C_FIFO_DEPTH}]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
        
	if {$fifo_enable == 1} {

		if {$fifo_depth == 16 || $fifo_depth == 256} {
                        return true
                } else {
			set_property errmsg "The allowed values for fifo depth are 16 and 256" [ipgui::get_paramspec C_FIFO_DEPTH   -of  $IPINST ]
			return false
                }
	} else {
	       if {$fifo_depth == 0} {
                        return true
                } else {
                set_property errmsg "As FIFO is disabled no value other than 0 allowed to FIFO depth,provided depth of fifo is $fifo_depth" [ipgui::get_paramspec C_FIFO_DEPTH   -of  $IPINST ]
                return false
                }

	}
	

	return true
}
########################################
# PARAM_VALUE.C_NUM_TRANSFER_BITS
########################################
proc update_PARAM_VALUE.C_NUM_TRANSFER_BITS { IPINST PARAM_VALUE.C_NUM_TRANSFER_BITS PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_XIP_MODE } {
	set mode [get_property value ${PARAM_VALUE.C_SPI_MODE} ]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]

        if {$xip_mode == 1 || $mode == 1 || $mode == 2} { 
	    set_property value "8" [ipgui::get_paramspec  C_NUM_TRANSFER_BITS -of $IPINST ]
	    set_property enabled false [ipgui::get_paramspec  C_NUM_TRANSFER_BITS -of $IPINST ]
      } else {
              set_property enabled true [ipgui::get_paramspec  C_NUM_TRANSFER_BITS -of $IPINST ]
      }
      
}


########################################
# PARAM_VALUE.C_SCK_RATIO
########################################

proc update_PARAM_VALUE.C_SCK_RATIO { IPINST PARAM_VALUE.C_SCK_RATIO PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_XIP_MODE PARAM_VALUE.Master_mode} {
	set mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	set master_mode [get_property value ${PARAM_VALUE.Master_mode}]

        if { $xip_mode == 1 || $mode == 1 || $mode == 2} { 
	    set_property enabled false  ${PARAM_VALUE.C_SCK_RATIO}
	    set_property range_value "2,2"  ${PARAM_VALUE.C_SCK_RATIO}
    	#set_property visible false [ipgui::get_guiparamspec range_text -of $IPINST]
      } elseif { $master_mode == 0 } {
              set_property enabled true  ${PARAM_VALUE.C_SCK_RATIO}
  	          set_property range_value "16,4,8,16"  ${PARAM_VALUE.C_SCK_RATIO}
      } else {
              set_property enabled true  ${PARAM_VALUE.C_SCK_RATIO}
  	          set_property range_value "16,2,4,8,16"  ${PARAM_VALUE.C_SCK_RATIO}
             #  set_property value 16  ${PARAM_VALUE.C_SCK_RATIO}
      }      
}

proc update_gui_for_PARAM_VALUE.C_SCK_RATIO { IPINST PARAM_VALUE.C_SCK_RATIO PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_XIP_MODE } {
	set mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	set ratio [get_property value ${PARAM_VALUE.C_SCK_RATIO}]

    if { $xip_mode == 0 && $ratio == 16 } { 
		set_property visible true [ipgui::get_guiparamspec -name Multiples16 -of $IPINST]
		set_property visible true [ipgui::get_textspec -name range_text -of $IPINST]
    	set_property visible true [ipgui::get_textspec "Multiply By" -of $IPINST]
    } else {
  		set_property visible false [ipgui::get_guiparamspec -name Multiples16 -of $IPINST]
 		set_property visible false [ipgui::get_textspec -name range_text -of $IPINST]
		set_property visible false [ipgui::get_textspec "Multiply By" -of $IPINST]
    }
      
}


########################################
# PARAM_VALUE.Multiples16
########################################

proc validate_PARAM_VALUE.Multiples16 { PARAM_VALUE.Multiples16} {
        return true
}


proc update_PARAM_VALUE.Multiples16 {PARAM_VALUE.Multiples16 PARAM_VALUE.C_XIP_MODE PARAM_VALUE.C_SPI_MODE PARAM_VALUE.C_SCK_RATIO} {

	set spi_mode [get_property value ${PARAM_VALUE.C_SPI_MODE}]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	set ratio [get_property value ${PARAM_VALUE.C_SCK_RATIO}]
	
	if {$spi_mode == 1 || $spi_mode == 2} {
	    set_property value 1 ${PARAM_VALUE.Multiples16}
	    set_property enabled false ${PARAM_VALUE.Multiples16}
        } elseif {$xip_mode == 1} {
            set_property value 1 ${PARAM_VALUE.Multiples16}
	    set_property enabled false ${PARAM_VALUE.Multiples16}
	} else {
            if { $ratio == 16 } { 
	       set_property enabled true ${PARAM_VALUE.Multiples16}
            } else {
               set_property value 1 ${PARAM_VALUE.Multiples16}
	       set_property enabled false ${PARAM_VALUE.Multiples16}
            }
        } 
  }
	


########################################
# PARAM_VALUE.C_SCK_RATIO1
########################################

################################################################################

###############################################################################
########################################
# PARAM_VALUE.C_NUM_SS_BITS
########################################
proc update_PARAM_VALUE.C_NUM_SS_BITS  { PARAM_VALUE.C_NUM_SS_BITS  PARAM_VALUE.C_XIP_MODE PARAM_VALUE.Master_mode PARAM_VALUE.QSPI_BOARD_INTERFACE} {
	set master [get_property value ${PARAM_VALUE.Master_mode}] 
	set boardIfName [get_property value ${PARAM_VALUE.QSPI_BOARD_INTERFACE}] 
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
	if { $boardIfName ne "Custom" } {
        	##set_property value 1 ${PARAM_VALUE.C_NUM_SS_BITS}
	        set_property enabled false ${PARAM_VALUE.C_NUM_SS_BITS}
	} elseif { $xip_mode == 1 } {
    		set_property value 1 ${PARAM_VALUE.C_NUM_SS_BITS}
		set_property enabled false ${PARAM_VALUE.C_NUM_SS_BITS}
       } elseif { $master == 0 } {
    		set_property value 1 ${PARAM_VALUE.C_NUM_SS_BITS}
		set_property enabled false ${PARAM_VALUE.C_NUM_SS_BITS}
	} else {		
	set_property enabled true ${PARAM_VALUE.C_NUM_SS_BITS}
	   }
 }

########################################
# PARAM_VALUE.C_SPI_MEMORY
########################################
proc update_PARAM_VALUE.C_SPI_MEMORY  { PARAM_VALUE.C_SPI_MEMORY  PARAM_VALUE.C_XIP_MODE PARAM_VALUE.C_SPI_MEM_ADDR_BITS PARAM_VALUE.QSPI_BOARD_INTERFACE } { 
	set boardIfName [get_property value ${PARAM_VALUE.QSPI_BOARD_INTERFACE}]
 	set addr_bits [get_property value ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}]
	set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
    if { $boardIfName ne "Custom" } {
		##set_property range_value "2,2,3" ${PARAM_VALUE.C_SPI_MEMORY}
		set_property enabled true ${PARAM_VALUE.C_SPI_MEMORY}
	} elseif {$addr_bits ==32} {
	        set_property enabled true ${PARAM_VALUE.C_SPI_MEMORY}
		set_property range_value "2,2,3,4" ${PARAM_VALUE.C_SPI_MEMORY}
	} elseif { $xip_mode == 1 } {
		set_property range_value "1,1,2,3,4" ${PARAM_VALUE.C_SPI_MEMORY}
	} else {
		set_property enabled true ${PARAM_VALUE.C_SPI_MEMORY}
		set_property range_value "1,0,1,2,3,4" ${PARAM_VALUE.C_SPI_MEMORY}
	}
}

#########################################
# PARAM_VALUE.C_SPI_MEM_ADDR_BITS
#########################################
proc update_PARAM_VALUE.C_SPI_MEM_ADDR_BITS  {  PARAM_VALUE.C_XIP_MODE PARAM_VALUE.C_SPI_MEM_ADDR_BITS  } { 
                #set addr_bits [get_property value ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}]
                set xip_mode [get_property value ${PARAM_VALUE.C_XIP_MODE}]
    if {  $xip_mode == 1 } {
                                set_property enabled true ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}
                } else {
                                set_property enabled false ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}
                    set_property value 24 ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}                                       
                }
}
##################################################


########################################
# PARAM_VALUE.C_USE_STARTUP
#########################################
proc update_PARAM_VALUE.C_USE_STARTUP {PARAM_VALUE.C_USE_STARTUP PARAM_VALUE.QSPI_BOARD_INTERFACE PARAM_VALUE.Master_mode PARAM_VALUE.C_FAMILY PARAM_VALUE.C_DUAL_QUAD_MODE} {
	set master [get_property value ${PARAM_VALUE.Master_mode}] 
	set dual_quad [get_property value ${PARAM_VALUE.C_DUAL_QUAD_MODE}] 
	set boardIfName [get_property value ${PARAM_VALUE.QSPI_BOARD_INTERFACE} ]
   set c_family [ string tolower [ get_property value ${PARAM_VALUE.C_FAMILY} ] ] 
   if {$dual_quad == 0} { 
   if {$c_family == "kintex7" || $c_family == "virtex7" || $c_family == "zynq" || $c_family == "artix7" || $c_family == "spartan7"} { 
   } else { 
        set_property value "0" ${PARAM_VALUE.C_USE_STARTUP}
   } 
    if { $boardIfName ne "Custom"} {
        ##set_property value "1" ${PARAM_VALUE.C_USE_STARTUP}
        set_property enabled false ${PARAM_VALUE.C_USE_STARTUP}
       } elseif {$master == 0 } {
        set_property value "0" ${PARAM_VALUE.C_USE_STARTUP}
        set_property enabled false ${PARAM_VALUE.C_USE_STARTUP}
    } else {
        set_property enabled true ${PARAM_VALUE.C_USE_STARTUP}
    }
 } else {
        set_property value "1" ${PARAM_VALUE.C_USE_STARTUP}
        set_property enabled false ${PARAM_VALUE.C_USE_STARTUP}


 }
}

proc update_gui_for_PARAM_VALUE.C_USE_STARTUP {PARAM_VALUE.C_USE_STARTUP PARAM_VALUE.UC_FAMILY PARAM_VALUE.C_USE_STARTUP_INT PARAM_VALUE.C_SHARED_STARTUP IPINST} {
	set en_startup [get_property value ${PARAM_VALUE.C_USE_STARTUP} ]
  set en_us [ get_property value ${PARAM_VALUE.UC_FAMILY} ]
  
  if {$en_startup == 1 && $en_us == 1} {
    set_property visible true [ipgui::get_guiparamspec C_USE_STARTUP_INT -of $IPINST] 
    set_property visible false [ipgui::get_guiparamspec C_SHARED_STARTUP -of $IPINST] 
  } elseif {$en_startup == 1 && $en_us == 0} {
    set_property visible false [ipgui::get_guiparamspec C_USE_STARTUP_INT -of $IPINST] 
    set_property visible true [ipgui::get_guiparamspec C_SHARED_STARTUP -of $IPINST] 
  } else {
    set_property visible false [ipgui::get_guiparamspec C_USE_STARTUP_INT -of $IPINST] 
    set_property visible false [ipgui::get_guiparamspec C_SHARED_STARTUP -of $IPINST] 
  }
}

proc update_PARAM_VALUE.C_USE_STARTUP_INT { PARAM_VALUE.C_USE_STARTUP_INT PARAM_VALUE.UC_FAMILY PARAM_VALUE.C_USE_STARTUP} {
  set en_startup [ get_property value ${PARAM_VALUE.C_USE_STARTUP} ]
  set en_us [ get_property value ${PARAM_VALUE.UC_FAMILY} ]

  if {$en_startup == 1 && $en_us == 1} {
    set_property enabled true ${PARAM_VALUE.C_USE_STARTUP_INT} 
  } elseif {$en_startup == 1 && $en_us == 0} {
    set_property value 1 ${PARAM_VALUE.C_USE_STARTUP_INT} 
    set_property enabled false ${PARAM_VALUE.C_USE_STARTUP_INT} 
  } else {
    set_property value 0 ${PARAM_VALUE.C_USE_STARTUP_INT} 
    set_property enabled false ${PARAM_VALUE.C_USE_STARTUP_INT} 
  }
}

proc update_PARAM_VALUE.C_SHARED_STARTUP { PARAM_VALUE.C_SHARED_STARTUP PARAM_VALUE.UC_FAMILY PARAM_VALUE.C_USE_STARTUP} {
  set en_startup [ get_property value ${PARAM_VALUE.C_USE_STARTUP} ]
  set en_us [ get_property value ${PARAM_VALUE.UC_FAMILY} ]

  if {$en_startup == 1 && $en_us == 0} {
    set_property enabled true ${PARAM_VALUE.C_SHARED_STARTUP} 
  } else {
    set_property value 0 ${PARAM_VALUE.C_SHARED_STARTUP} 
    set_property enabled false ${PARAM_VALUE.C_SHARED_STARTUP} 
  }
}

#########################################################################################
# MODEL PARAMETERS _UPDATE
################################################################################
proc update_MODELPARAM_VALUE.Async_Clk {PARAM_VALUE.Async_Clk MODELPARAM_VALUE.Async_Clk} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property  value [get_property value ${PARAM_VALUE.Async_Clk}] ${MODELPARAM_VALUE.Async_Clk}

	
}


################################################################################
proc update_MODELPARAM_VALUE.C_XIP_MODE {PARAM_VALUE.C_XIP_MODE MODELPARAM_VALUE.C_XIP_MODE} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property  value [get_property value ${PARAM_VALUE.C_XIP_MODE}] ${MODELPARAM_VALUE.C_XIP_MODE}

	
}
################################################################################
proc update_MODELPARAM_VALUE.C_FIFO_DEPTH {PARAM_VALUE.C_FIFO_DEPTH PARAM_VALUE.FIFO_INCLUDED MODELPARAM_VALUE.C_FIFO_DEPTH} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
        set fifo_included [get_property value ${PARAM_VALUE.FIFO_INCLUDED} ]
        set fifo_depth [get_property value  ${PARAM_VALUE.C_FIFO_DEPTH} ]
	if { $fifo_included == 1} {
		set_property value [get_property value ${PARAM_VALUE.C_FIFO_DEPTH} ] ${MODELPARAM_VALUE.C_FIFO_DEPTH}
	} else {
		set_property value 0 ${MODELPARAM_VALUE.C_FIFO_DEPTH}
	}
}
################################################################################
proc update_MODELPARAM_VALUE.C_SCK_RATIO {PARAM_VALUE.C_SCK_RATIO  MODELPARAM_VALUE.C_SCK_RATIO PARAM_VALUE.Multiples16 } {
	
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
    set sck_ratio [get_property value ${PARAM_VALUE.C_SCK_RATIO}]
    set multiply_by [get_property value ${PARAM_VALUE.Multiples16}]
	set sck_ratio2 [expr {$sck_ratio * $multiply_by}]
	set_property value $sck_ratio2 ${MODELPARAM_VALUE.C_SCK_RATIO}

}
################################################################################
proc update_MODELPARAM_VALUE.C_NUM_SS_BITS {PARAM_VALUE.C_NUM_SS_BITS MODELPARAM_VALUE.C_NUM_SS_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_NUM_SS_BITS} ] ${MODELPARAM_VALUE.C_NUM_SS_BITS}

}
################################################################################
proc update_MODELPARAM_VALUE.C_NUM_TRANSFER_BITS {PARAM_VALUE.C_NUM_TRANSFER_BITS MODELPARAM_VALUE.C_NUM_TRANSFER_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_NUM_TRANSFER_BITS} ] ${MODELPARAM_VALUE.C_NUM_TRANSFER_BITS}

}
################################################################################
proc update_MODELPARAM_VALUE.C_SPI_MODE { PARAM_VALUE.C_SPI_MODE MODELPARAM_VALUE.C_SPI_MODE} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_SPI_MODE}] ${MODELPARAM_VALUE.C_SPI_MODE}

}
################################################################################
proc update_MODELPARAM_VALUE.C_USE_STARTUP { PARAM_VALUE.C_USE_STARTUP PARAM_VALUE.C_USE_STARTUP_INT MODELPARAM_VALUE.C_USE_STARTUP} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value  ${PARAM_VALUE.C_USE_STARTUP_INT} ]  ${MODELPARAM_VALUE.C_USE_STARTUP} 

##	set_property value [get_property value ${PARAM_VALUE.C_USE_STARTUP}] ${MODELPARAM_VALUE.C_USE_STARTUP}

}

proc update_MODELPARAM_VALUE.C_USE_STARTUP_EXT { PARAM_VALUE.C_USE_STARTUP_INT MODELPARAM_VALUE.C_USE_STARTUP_EXT PARAM_VALUE.C_USE_STARTUP} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
        set startup [ get_property value ${PARAM_VALUE.C_USE_STARTUP} ]
        set startup_int [ get_property value ${PARAM_VALUE.C_USE_STARTUP_INT} ]
        if {$startup == 1 && $startup_int == 0 } {
	set_property value 1 ${MODELPARAM_VALUE.C_USE_STARTUP_EXT} 

        } else {
	set_property value 0 ${MODELPARAM_VALUE.C_USE_STARTUP_EXT} 

        }


##	set_property value [get_property value ${PARAM_VALUE.C_USE_STARTUP}] ${MODELPARAM_VALUE.C_USE_STARTUP}

}

proc update_MODELPARAM_VALUE.C_SHARED_STARTUP { PARAM_VALUE.C_SHARED_STARTUP MODELPARAM_VALUE.C_SHARED_STARTUP} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value  ${PARAM_VALUE.C_SHARED_STARTUP} ]  ${MODELPARAM_VALUE.C_SHARED_STARTUP} 

##	set_property value [get_property value ${PARAM_VALUE.C_USE_STARTUP}] ${MODELPARAM_VALUE.C_USE_STARTUP}

}

################################################################################
proc update_MODELPARAM_VALUE.C_SPI_MEMORY { PARAM_VALUE.C_SPI_MEMORY MODELPARAM_VALUE.C_SPI_MEMORY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_SPI_MEMORY}] ${MODELPARAM_VALUE.C_SPI_MEMORY}

}
##############################################################################
################################################################################
################################################################################
proc update_MODELPARAM_VALUE.C_SPI_MEM_ADDR_BITS { PARAM_VALUE.C_SPI_MEM_ADDR_BITS MODELPARAM_VALUE.C_SPI_MEM_ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_SPI_MEM_ADDR_BITS}] ${MODELPARAM_VALUE.C_SPI_MEM_ADDR_BITS}

}
##############################################################################

################################################################################
proc update_MODELPARAM_VALUE.C_INSTANCE { PARAM_VALUE.C_INSTANCE MODELPARAM_VALUE.C_INSTANCE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_INSTANCE}] ${MODELPARAM_VALUE.C_INSTANCE}

}

################################################################################
proc update_MODELPARAM_VALUE.C_S_AXI4_BASEADDR { PARAM_VALUE.C_S_AXI4_BASEADDR MODELPARAM_VALUE.C_S_AXI4_BASEADDR} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_S_AXI4_BASEADDR}] ${MODELPARAM_VALUE.C_S_AXI4_BASEADDR}

}
################################################################################
proc update_MODELPARAM_VALUE.C_S_AXI4_HIGHADDR { PARAM_VALUE.C_S_AXI4_HIGHADDR MODELPARAM_VALUE.C_S_AXI4_HIGHADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property value [get_property value ${PARAM_VALUE.C_S_AXI4_HIGHADDR}] ${MODELPARAM_VALUE.C_S_AXI4_HIGHADDR}

}
################################################################################
# C_FAMILY and C_SUB_FAMILY
################################################################################
proc update_PARAM_VALUE.C_SUB_FAMILY {PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.C_SUB_FAMILY} {
 
     set family [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
	 set_property value $family ${PARAM_VALUE.C_SUB_FAMILY}
	  

}

proc update_MODELPARAM_VALUE.C_SELECT_XPM { MODELPARAM_VALUE.C_SELECT_XPM PARAM_VALUE.C_SELECT_XPM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SELECT_XPM}] ${MODELPARAM_VALUE.C_SELECT_XPM}
}



proc update_PARAM_VALUE.C_FAMILY {PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.C_FAMILY } {
 
     set c_family [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
	 set_property value $c_family ${PARAM_VALUE.C_FAMILY}
}
proc update_PARAM_VALUE.UC_FAMILY {PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.C_FAMILY PARAM_VALUE.UC_FAMILY } {
 
     set c_family [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
		 if {[string match -nocase *kintex7* $c_family] || [string match -nocase *virtex7* $c_family] || [string match -nocase *artix7* $c_family] || [string match -nocase *zynq $c_family]  || [string match -nocase *spartan7* $c_family]} {
	   set_property value 0 ${PARAM_VALUE.UC_FAMILY}

       } else {
	   set_property value 1 ${PARAM_VALUE.UC_FAMILY}
    }



}
proc update_MODELPARAM_VALUE.C_SUB_FAMILY {PARAM_VALUE.C_SUB_FAMILY MODELPARAM_VALUE.C_SUB_FAMILY} {

     set family [string tolower [get_property value ${PARAM_VALUE.C_SUB_FAMILY}] ]
	 set_property value $family ${MODELPARAM_VALUE.C_SUB_FAMILY}

}

proc update_MODELPARAM_VALUE.C_UC_FAMILY {PARAM_VALUE.UC_FAMILY MODELPARAM_VALUE.C_UC_FAMILY} {
 
    set_property value [get_property value ${PARAM_VALUE.UC_FAMILY}] ${MODELPARAM_VALUE.C_UC_FAMILY}
	  

}

################################################################################
proc update_MODELPARAM_VALUE.C_DUAL_QUAD_MODE {PARAM_VALUE.C_DUAL_QUAD_MODE MODELPARAM_VALUE.C_DUAL_QUAD_MODE} {
        # Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

        set_property  value [get_property value ${PARAM_VALUE.C_DUAL_QUAD_MODE}] ${MODELPARAM_VALUE.C_DUAL_QUAD_MODE}


}


proc update_MODELPARAM_VALUE.C_LSB_STUP {PARAM_VALUE.C_NUM_SS_BITS PARAM_VALUE.C_USE_STARTUP PARAM_VALUE.UC_FAMILY PARAM_VALUE.C_USE_STARTUP_INT MODELPARAM_VALUE.C_LSB_STUP PARAM_VALUE.C_DUAL_QUAD_MODE} {
     set en_startup [ get_property value ${PARAM_VALUE.C_USE_STARTUP} ]
     set en_startup_int [ get_property value ${PARAM_VALUE.C_USE_STARTUP_INT} ]
  set en_us [ get_property value ${PARAM_VALUE.UC_FAMILY} ]
 set nums  [get_property value ${PARAM_VALUE.C_NUM_SS_BITS} ]
        set dual_mode [get_property value ${PARAM_VALUE.C_DUAL_QUAD_MODE}]
 if {$dual_mode == 1} {
   set lsb 0

 } else {
 if {$en_startup == 1 && $en_us == 1 && $en_startup_int == 1 && $nums > 1 } {
       set lsb 1
   } else {
   set lsb 0
   }

}
    set_property value $lsb ${MODELPARAM_VALUE.C_LSB_STUP}
}

