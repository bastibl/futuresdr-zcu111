
proc addBridgePage { IPINST pcie_a0_page} {
    #############
    ############# TAB PCIE0 BARS - Visible only in Functional Mode -> AXI Bridge 
    #############

    set PCIE0_BARS_tab1 [ipgui::add_page $IPINST -parent $pcie_a0_page -name "PCIE0_BARS_BRIDGE" -layout horizontal]
    set_property display_name "PCIe : BARs " $PCIE0_BARS_tab1
    set PCIE0_BAR_PANEL {
      set BAR<<n>>_OptionsPanel_br [ipgui::add_panel $IPINST -parent $PCIE0_BARS_tab1  -name BAR<<n>>_OptionsPanel_br  -layout horizontal]
      set pf0_bar<<n>>_option_grp_sup_br [ipgui::add_group $IPINST -parent $BAR<<n>>_OptionsPanel_br -name bar_<<n>>_option_grp_sup_br -header_param CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED  -layout horizontal ]
      set_property display_name "PF0_BAR<<n>>" [ipgui::get_guiparamspec CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED  -of $IPINST]
      ipgui::add_row $IPINST -parent $pf0_bar<<n>>_option_grp_sup_br 
      set pf0_bar<<n>>_option_grp_br [ipgui::add_panel $IPINST -parent $pf0_bar<<n>>_option_grp_sup_br  -name pf0_bar<<n>>_option_grp_br -layout horizontal]
      set pf0_bar<<n>>_type [ipgui::add_param  $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_TYPE" -layout horizontal -widget comboBox]
      set_property display_name  "Type" $pf0_bar<<n>>_type
      if {<<n>> == 0 || <<n>> == 2 || <<n>> == 4  } {
        set pf0_bar<<n>>_64bit [ipgui::add_param  $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_64BIT" -layout horizontal -widget checkBox]
        set_property display_name  "64 Bit " $pf0_bar<<n>>_64bit
        set pf0_bar<<n>>_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_PREFETCHABLE" -layout horizontal -widget checkBox]
        set_property display_name  "Prefetchable " $pf0_bar<<n>>_prefetchable
      }
      ipgui::add_row $IPINST -parent $pf0_bar<<n>>_option_grp_br
      set pf0_bar<<n>>_size [ipgui::add_param  $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SIZE" -layout horizontal -widget comboBox]
      set_property display_name  "Size" $pf0_bar<<n>>_size
      set_property tooltip "The maximum BAR size depends on 64-bit BAR option and AXI Address Width parameter, whichever smaller" $pf0_bar<<n>>_size
      set pf0_bar<<n>>_scale [ipgui::add_param  $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SCALE" -layout horizontal -widget comboBox]
      set_property display_name  "Scale" $pf0_bar<<n>>_scale
      ipgui::add_row $IPINST -parent $pf0_bar<<n>>_option_grp_br
      ipgui::add_static_text  $IPINST -name "pf0_bar<<n>>_value"  -parent  $pf0_bar<<n>>_option_grp_br  -text  "Value"  
      ipgui::add_dynamic_text $IPINST -parent $pf0_bar<<n>>_option_grp_br -name "pf0_bar<<n>>_value_dynamic"  -tclproc DT_pf0_bar_value<<n>>  -display_border true
      ipgui::add_row $IPINST -parent $pf0_bar<<n>>_option_grp_br
    }
	   
    foreach i {0 1 2 3 4 5} {
      set PR [regsub -all <<n>> $PCIE0_BAR_PANEL $i ]
      eval $PR
      if { [ expr $i %2 ] == 1 } {
        ipgui::add_row $IPINST -parent $PCIE0_BARS_tab1
      }
    }

    set  pciebar2axibar_0  [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_0" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_0
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_0
    set  pciebar2axibar_1  [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_1" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_1
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_1
    set  pciebar2axibar_2  [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_2" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_2
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_2
    set  pciebar2axibar_3  [ipgui::add_param  $IPINST -parent $pf0_bar3_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_3" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_3
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_3
    set  pciebar2axibar_4  [ipgui::add_param  $IPINST -parent $pf0_bar4_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_4" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_4
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_4
    set  pciebar2axibar_5  [ipgui::add_param  $IPINST -parent $pf0_bar5_option_grp_br -name "CPM_PCIE0_PF0_PCIEBAR2AXIBAR_BRIDGE_5" -layout horizontal -widget hexEdit]
    set_property display_name "PCIe to AXI Translation" $pciebar2axibar_5
    set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_5

  ########
    ######## TAB AXI: BARs 
    ########

    set AXI_BARS_tab [ipgui::add_page $IPINST -parent $pcie_a0_page -name "axi_bars" -layout horizontal ]
    set_property display_name "AXI : BARs" $AXI_BARS_tab
    set num_of_axi_bars [ipgui::add_param  $IPINST -parent $AXI_BARS_tab -name "CPM_PCIE0_AXIBAR_NUM" -layout horizontal -widget comboBox]
    set_property display_name "Number of AXI BARs" $num_of_axi_bars
    ipgui::add_row $IPINST -parent $AXI_BARS_tab
    set AXI_BAR_PANEL {
      set AXI_BAR<<n>>_option_grp [ipgui::add_group $IPINST -parent $AXI_BARS_tab -name bar_<<n>>_option_grp ]
      set_property display_name  "AXI Bar_<<n>> " $AXI_BAR<<n>>_option_grp
      #set axibar_<<n>> [ipgui::add_param  $IPINST -parent $AXI_BAR<<n>>_option_grp -name "axibar_<<n>>" ]
      #set_property display_name  "Aperture Base Address " $axibar_<<n>>
      #set_property tooltip "Aperture Base Address " $axibar_<<n>>
      #set axibar_highaddr_<<n>> [ipgui::add_param  $IPINST -parent $AXI_BAR<<n>>_option_grp -name "axibar_highaddr_<<n>>" ]					
      #set_property display_name  "Aperture High Address " $axibar_highaddr_<<n>>
      #set_property tooltip "Aperture High Address " $axibar_highaddr_<<n>>
      set axibar2pciebar_<<n>> [ipgui::add_param  $IPINST -parent $AXI_BAR<<n>>_option_grp -name "CPM_PCIE0_PF0_AXIBAR2PCIE_BRIDGE_<<n>>" -widget hexEdit]
      set_property display_name  "AXI to PCIe Translation " $axibar2pciebar_<<n>>
      set_property tooltip "AXI to PCIe default address translation" $axibar2pciebar_<<n>>
      # Hide AXI BAR addresses in IPI. Value is propagated from IPI Address Editor
      #if {[ipgui::get_xpg_context -of $IPINST] == "xpg_bd"} { 
      #  set_property visible false $axibar_<<n>>
      #  set_property visible false $axibar_highaddr_<<n>>
      #} else {
      #  set_property visible true $axibar_<<n>>
      #  set_property visible true $axibar_highaddr_<<n>>
      #}
  
      ipgui::add_row $IPINST -parent $AXI_BAR<<n>>_option_grp
    }

    foreach i {0 1 2 3 4 5} {
      set PR [regsub -all <<n>> $AXI_BAR_PANEL $i ]
      eval $PR
      if { [ expr $i %2 ] == 1 } {
        ipgui::add_row $IPINST -parent $AXI_BARS_tab
      }
    }



} 


set enable_PF0_BARS {
  proc DT_pf0_bar_value<<n>> { PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_TYPE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_64BIT PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_PREFETCHABLE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SCALE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SIZE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_ENABLED PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_TYPE  PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_PREFETCHABLE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_SCALE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_SIZE} {
						
    set enable_64bit [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_64BIT}]
    set prefetchable  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_PREFETCHABLE}]
    if {$enable_64bit} {
      set enable_val [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_ENABLED}] 
      set prefetchable  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_PREFETCHABLE}]
      set bar_Type  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_TYPE}] 
      set size  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_SIZE}]
      set scale [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<nm1>>_BRIDGE_SCALE}]
    } else {
      set enable_val [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED}] 
      #set prefetchable  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_PREFETCHABLE}]
      set bar_Type  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_TYPE}] 
      set size  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SIZE}]
      set scale [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SCALE}]
    }
    set val  "FFFFF000"

    if {$enable_val } { 
      switch $bar_Type {
        "IO" {
          set val  "0001"
        }
        "Memory"	{
          if {!$enable_64bit } {
            set val  "0000"
          } elseif {$enable_64bit && (!$prefetchable)} {
            set val  "0100"
          } elseif {$enable_64bit && $prefetchable} {
            set val  "1100"
          } else { 
            set val  "0000" 			
          }
        }							
      }
    } else { 
      set val  "0000" 
    }

          if {$enable_64bit } {
              set val_hex_64_0  [populate_A $size $scale $enable_64bit $val 0 ]
              set val_hex_64_1  [populate_A $size $scale $enable_64bit $val 1 ]
              set v_64 [join "$val_hex_64_1 $val_hex_64_0" "" ]
	  } else {
              set v_64  [populate_A $size $scale $enable_64bit $val 1 ]
	  }
    send_msg INFO 1 " Val_hex_64:$v_64"
      return $v_64    

  }
}

foreach j { 1  3  5} {
  set mn1 [expr $j - 1 ]
  set PR [regsub -all <<n>> $enable_PF0_BARS $j ]
  set PR1 [regsub -all <<nm1>> $PR $mn1 ]
  eval $PR1
}
#####################################  		
## EVEN
####################33	
set PCIE_BAR_PANEL_EVEN_updates {

  proc DT_pf0_bar_value<<n>> { PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_TYPE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_64BIT PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_PREFETCHABLE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SCALE PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SIZE} {
			
    set enable_val [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_ENABLED}] 
    set enable_64bit [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_64BIT}]
    set prefetchable  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_PREFETCHABLE}]
    set bar_Type  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_TYPE}] 
    set size  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SIZE}]
    set scale [get_property value ${PARAM_VALUE.CPM_PCIE0_PF0_BAR<<n>>_BRIDGE_SCALE}]
    set val  "FFFFF000"
				
    if {$enable_val } { 
      switch $bar_Type {
        "IO" {
          set val  "0001"
        }
        "Memory"	{
          if {!$enable_64bit } {
            set val  "0000"
          } elseif {$enable_64bit && (!$prefetchable)} {
            set val  "0100"
          } elseif {$enable_64bit && $prefetchable} {
            set val  "1100"
          } else { 
            set val  "0000" 			
          }
        }							
      }
    } else { 
      set val  "0000" 
    }
          if {$enable_64bit } {
              set val_hex_64_0  [populate_A $size $scale $enable_64bit $val 0 ]
              set val_hex_64_1  [populate_A $size $scale $enable_64bit $val 1 ]
              set v_64 [join "$val_hex_64_1 $val_hex_64_0" "" ]
	  } else {
              set v_64  [populate_A $size $scale $enable_64bit $val 0 ]
	  }
    send_msg INFO 1 " Val_hex_64:$v_64"
      return $v_64

  }
			
		
}
foreach i {0 2 4} {
  set j [expr $i + 1 ]
  set PR_EVEN [ regsub -all <<n>> $PCIE_BAR_PANEL_EVEN_updates $i ]
  eval $PR_EVEN
}

