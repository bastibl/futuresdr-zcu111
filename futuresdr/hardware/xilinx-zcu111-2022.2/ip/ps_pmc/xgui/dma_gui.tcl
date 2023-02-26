
proc addDMAPage { IPINST pcie_a0_page} {

 #############
    ############# TAB PCIE0 BARS - Visible only in Functional Mode -> DMA
    #############
      set PCIE0_BARS_tab [ipgui::add_page $IPINST -parent $pcie_a0_page -name "PCIE0_BARS" -layout vertical]
      set pf0_base_addr_grp $PCIE0_BARS_tab
      set_property display_name "PCIe : BARs " $PCIE0_BARS_tab
  foreach j {0 1 2 3} {
          ipgui::add_row $IPINST -parent $pf0_base_addr_grp
              if { $j == 1 } {
                  ipgui::add_param $IPINST -name CPM_PCIE0_COPY_XDMA_PF0_ENABLED -parent $PCIE0_BARS_tab -display_name "Copy PF0" -widget checkBox
                      ipgui::add_row $IPINST -parent $pf0_base_addr_grp
              }
          if {$j == 0} {
              set pf0_option_grp [ipgui::add_group $IPINST -parent $PCIE0_BARS_tab -name dma_pf${j}_option_grp -display_name "PF${j}" -collapsed false]
          } else { 
              set pf0_option_grp [ipgui::add_group $IPINST -parent $PCIE0_BARS_tab -name dma_pf${j}_option_grp -display_name "PF${j}" -collapsed true]
          }

          set BAR0_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp -name BAR0_OptionsPanel  -layout horizontal]
          set pf0_bar0_option_grp_sup [ipgui::add_group $IPINST -parent $BAR0_OptionsPanel -name bar_0_option_grp_sup -header_param CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -layout horizontal ]
          set_property display_name "PCIe to AXI Lite Master Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -of $IPINST]
          set_property tooltip "Host access to user logic via AXI-Lite interface" [ipgui::get_guiparamspec  CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -of $IPINST]
          ipgui::add_row $IPINST -parent $pf0_bar0_option_grp_sup
          set pf0_bar0_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar0_option_grp_sup  -name pf0_bar0_option_grp -layout horizontal]
          ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
          set axil_master_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_64BIT" -layout horizontal -widget checkBox]
          set_property display_name "64bit Enable" $axil_master_64bit_en
          set axil_master_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_PREFETCHABLE" -layout horizontal -widget checkBox]
          set_property display_name "Prefetchable" $axil_master_prefetchable
          ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
          set axilite_master_size [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_SIZE" -layout horizontal -widget comboBox]
          set_property display_name  "Size" $axilite_master_size
          set axilite_master_scale [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_SCALE" -layout horizontal -widget comboBox]
          set_property display_name  "Scale" $axilite_master_scale
          ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
          ipgui::add_static_text  $IPINST -name "axilite_master_value"  -parent  $pf0_bar0_option_grp  -text  "Value"
          ipgui::add_dynamic_text $IPINST -parent $pf0_bar0_option_grp -name "axilite_master_value_dynamic"   -tclproc DT_pf${j}_bar_value_axilite_master  -display_border true
          ipgui::add_row $IPINST -parent $pf0_bar0_option_grp

          set BAR1_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp  -name BAR1_OptionsPanel  -layout horizontal]
          set pf0_bar1_option_grp_sup [ipgui::add_group $IPINST -parent $BAR1_OptionsPanel -name bar_1_option_grp_sup -header_param CPM_PCIE0_PF${j}_XDMA_ENABLED -layout horizontal ]
          set_property display_name "PCIe to DMA Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_XDMA_ENABLED -of $IPINST]
          set_property tooltip "Host access to DMA internal registers" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_XDMA_ENABLED -of $IPINST]
          ipgui::add_row $IPINST -parent $pf0_bar1_option_grp_sup
          set pf0_bar1_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar1_option_grp_sup  -name pf0_bar1_option_grp -layout horizontal]
          ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
          set xdma_pcie_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_64BIT" -layout horizontal -widget checkBox]
          set_property display_name "64bit Enable" $xdma_pcie_64bit_en
          set xdma_pcie_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_PREFETCHABLE" -layout horizontal -widget checkBox]
          set_property display_name "Prefetchable" $xdma_pcie_prefetchable
          ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
          set xdma_size [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_SIZE" -layout horizontal -widget comboBox]
          set_property display_name  "Size" $xdma_size
          set_property visible false $xdma_size
          set xdma_scale [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_SCALE" -layout horizontal -widget comboBox]
          set_property display_name  "Scale" $xdma_scale
          set_property visible false $xdma_scale
          ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
          set xdma_value [ipgui::add_static_text  $IPINST -name "xdma_value"  -parent  $pf0_bar1_option_grp  -text  "Value" ]
          set_property visible false $xdma_value
          set xdma_value1 [ipgui::add_dynamic_text $IPINST -parent $pf0_bar1_option_grp -name "xdma_value_dynamic"   -tclproc DT_pf0_bar_value_xdma  -display_border true]
          set_property visible false $xdma_value1
          ipgui::add_row $IPINST -parent $pf0_bar1_option_grp

          set BAR2_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp  -name BAR2_OptionsPanel  -layout horizontal]
          set pf0_bar2_option_grp_sup [ipgui::add_group $IPINST -parent $BAR2_OptionsPanel -name bar_2_option_grp_sup -header_param  CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED -layout horizontal ]
          set_property display_name "PCIe to DMA Bypass Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED -of $IPINST]
          set_property tooltip "Host access to user logic via AXI Memory Map interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED  -of $IPINST]
          ipgui::add_row $IPINST -parent $pf0_bar2_option_grp_sup
          set pf0_bar2_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar2_option_grp_sup  -name pf0_bar2_option_grp -layout horizontal]
          ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
          set axi_bypass_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXIST_BYPASS_64BIT" -layout horizontal -widget checkBox]
          set_property display_name "64bit Enable" $axi_bypass_64bit_en
          set axi_bypass_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXIST_BYPASS_PREFETCHABLE" -layout horizontal -widget checkBox]
          set_property display_name "Prefetchable" $axi_bypass_prefetchable
          ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
          set axist_bypass_size [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXIST_BYPASS_SIZE" -layout horizontal -widget comboBox]
          set_property display_name  "Size" $axist_bypass_size
          set axist_bypass_scale [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXIST_BYPASS_SCALE" -layout horizontal -widget comboBox]
          set_property display_name  "Scale" $axist_bypass_scale
          ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
          ipgui::add_static_text  $IPINST -name "axist_bypass_value"  -parent  $pf0_bar2_option_grp  -text  "Value"
          ipgui::add_dynamic_text $IPINST -parent $pf0_bar2_option_grp -name "axist_bypass_value_dynamic"   -tclproc DT_pf${j}_bar_value_axist_bypass -display_border true
          ipgui::add_row $IPINST -parent $pf0_bar2_option_grp

          set  pciebar2axibar_axil_master  [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_PCIEBAR2AXIBAR_AXIL_MASTER" -layout horizontal -widget hexEdit]
          set_property display_name "PCIe to AXI Translation" $pciebar2axibar_axil_master
          set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_axil_master
          #set  pciebar2axibar_xdma  [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "pciebar2axibar_xdma" -layout horizontal -widget hexEdit]
          #set_property display_name "PCIe to AXI Translation" $pciebar2axibar_xdma
          #set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_xdma
          #set_property visible false $pciebar2axibar_xdma
          set  pciebar2axibar_axist_bypass  [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_PCIEBAR2AXIBAR_AXIST_BYPASS" -layout horizontal -widget hexEdit]
          set_property display_name "PCIe to AXI Translation" $pciebar2axibar_axist_bypass
          set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_axist_bypass
  }

    #############
    ############# TAB PCIe DMA 
    #############
    set xdma_tab [ipgui::add_page $IPINST -parent $pcie_a0_page -name "xdma" -layout vertical]
    set_property display_name "PCIe : DMA " $xdma_tab

    set xdma_rnum_chnl  [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_RNUM_CHNL" -widget comboBox]
    set_property display_name "Number of DMA Read Channel (H2C)" $xdma_rnum_chnl
    set_property tooltip "NUM_H2C_CHANNEL" $xdma_rnum_chnl

    set xdma_wnum_chnl  [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_WNUM_CHNL" -widget comboBox]
    set_property display_name "Number of DMA Write Channel (C2H)" $xdma_wnum_chnl
    set_property tooltip "NUM_C2H_CHANNEL" $xdma_wnum_chnl


    set xdma_rnum_rids [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_RNUM_RIDS"]
    set_property display_name "Number of Request IDs for Read channel (2,4,8,16,32,64)" $xdma_rnum_rids
    set_property tooltip "The value should be set in powers of two, that is 2, 4, 8, 16, 32, 64" $xdma_rnum_rids

    set xdma_wnum_rids  [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_WNUM_RIDS"]
    set_property display_name "Number of Request IDs for Write channel (2,4,8,16,32)" $xdma_wnum_rids
    set_property tooltip "The value should be set in powers of two, that is 2, 4, 8, 16, 32"  $xdma_wnum_rids

    ipgui::add_row $IPINST -parent $xdma_tab

    set dsc_bypass_rd [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_DSC_BYPASS_RD" -widget comboBox]
    #set_property display_name "Descriptor Bypass for Read (H2C)" $dsc_bypass_rd
    set_property tooltip "Each binary digit corresponds to a channel. LSB corresponds to Channel 0. Value of 1 in bit position means corresponding channel has descriptor bypass enabled" $dsc_bypass_rd

    set dsc_bypass_wr [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_DSC_BYPASS_WR" -widget comboBox]
    #set_property display_name "Descriptor Bypass for Write (C2H)" $dsc_bypass_wr
    set_property tooltip "Each binary digit corresponds to a channel. LSB corresponds to Channel 0. Value of 1 in bit position means corresponding channel has descriptor bypass enabled" $dsc_bypass_wr

    #set dsc_bypass_rd_out [ipgui::add_param  $IPINST -parent $xdma_tab -name "dsc_bypass_rd_out" -widget comboBox]
    #set_property tooltip "Each binary digit corresponds to a channel. LSB corresponds to Channel 0. Value of 1 in bit position means corresponding channel has descriptor bypass enabled" $dsc_bypass_rd_out
    #set_property display_name "Descriptor Bypass-out for Read (H2C)" $dsc_bypass_rd_out

    #set dsc_bypass_wr_out [ipgui::add_param  $IPINST -parent $xdma_tab -name "dsc_bypass_wr_out" -widget comboBox]
    #set_property tooltip "Each binary digit corresponds to a channel. LSB corresponds to Channel 0. Value of 1 in bit position means corresponding channel has descriptor bypass enabled" $dsc_bypass_wr_out
    #set_property display_name "Descriptor Bypass-out for Write (C2H)" $dsc_bypass_wr_out

    set axi_id_width [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_AXI_ID_WIDTH" -widget comboBox] 
    set_property display_name "AXI ID Width" $axi_id_width
    set_property tooltip "Enables to select C_M_AXI_ID_WIDTH between the values given" $axi_id_width

    set xdma_sts_ports [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_STS_PORTS" -widget checkBox]
    set_property display_name "DMA Status Ports" $xdma_sts_ports
    set_property tooltip "If selected enables C2H and H2C status ports" $xdma_sts_ports

    #set en_debug_ports [ipgui::add_param  $IPINST -parent $xdma_tab -name "en_debug_ports" -widget checkBox]
    #set_property display_name "Enable Debug Ports" $en_debug_ports
    #set_property tooltip "If selected enables debug ports" $en_debug_ports

    set parity_settings [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_XDMA_PARITY_SETTINGS" -layout horizontal ]
    set_property display_name "Data Protection" $parity_settings
    set_property tooltip "Enables to select the Parity options. When Check_Parity is selected, DMA checks Parity and generates Parity. When Propagate_Parity is selected, DMA propagates parity to user AXI interface. User is responsible to check and generate parity " $parity_settings

    #set ecc_en  [ipgui::add_param  $IPINST -parent $xdma_tab -name "ecc_en" -layout horizontal -widget checkBox]
    #set_property display_name "Enable ECC" $ecc_en
    #set_property tooltip "Enables ECC. Requires one of the Parity option to be turned on."  $ecc_en

    #set num_queues [ipgui::add_param $IPINST -parent $xdma_tab -name "num_queues"]
    #set_property  display_name "Number of Queues (upto 2048)" $num_queues 
    #set_property  tooltip "Select number of Queues" $num_queues


} 


######################################
## PCIE0_BAR_PANE procs
########################################
proc populate_A { size scale en_64 val n}    {

    set powerof2   [expr int ( (log( $size))/ log(2) )]
    set bit_list_64 [split $val ""]

    if {$en_64 } {
        set loop_bits     60
    } else {
        set loop_bits    28
    }

    switch $scale {
        "Bytes"      { set scale_X  0  }
        "Kilobytes"  { set scale_X  10 }
        "Megabytes"  { set scale_X  20 }
        "Gigabytes"  { set scale_X  30 }
        "Terabytes"  { set scale_X  40 }
        "Petabytes"  { set scale_X  50 }
        "Exabytes"   { set scale_X  60 }
        default  { set scale_X  10 }
    }

    set val_size_scale  [expr   $scale_X +  $powerof2 - 4]

    for {set i 0  } { $i  < $loop_bits } {incr i } {
        if { $i < $val_size_scale } {
            set append_bit 0
        } else {
            set append_bit 1
        }
        set bit_list_64 [linsert $bit_list_64 0  $append_bit ]
    }

    if { $en_64 } {
        if {$n == 0} {
            set bit_strem_32 [join [lrange $bit_list_64 32 63 ] ""]
        } else {
            set bit_strem_32  [join [lrange $bit_list_64  0 31 ] ""]
        }
    } else {
        set bit_strem_32 [join  $bit_list_64 ""]
    }
    set hex_val [ipgen::number_utils::bin2hex $bit_strem_32 ]
    return [format %08s $hex_val]
 }


foreach i {0 1 2 3} {
    EvalSubstituting {i} {
        proc DT_pf$i_bar_value_axist_bypass {PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_ENABLED PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_64BIT PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_SCALE PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_SIZE } {
        puts "Value fucntion\n"

            set enable_val [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_ENABLED}]
                set enable_64bit [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_64BIT}]

                set size  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_SIZE}]
                set scale [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXIST_BYPASS_SCALE}]
                set val  "FFFFF000"

                if {$enable_val } {
                    if {$enable_64bit } {
                        set val  "0100"
                    } else {
                        set val  "0000"
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
            puts "$v_64"
            return $v_64
        }


        proc DT_pf$i_bar_value_axilite_master { PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_ENABLED PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_64BIT PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_SCALE PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_SIZE } {

            set enable_val [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_ENABLED}]
                set enable_64bit [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_64BIT}]
                set size  [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_SIZE}]
                set scale [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_AXILITE_MASTER_SCALE}]
                set val  "FFFFF000"

                if {$enable_val } {
                    if {$enable_64bit } {
                        set val  "0100"
                    } else {
                        set val  "0000"
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
            return $v_64
        }

    } 0
}

