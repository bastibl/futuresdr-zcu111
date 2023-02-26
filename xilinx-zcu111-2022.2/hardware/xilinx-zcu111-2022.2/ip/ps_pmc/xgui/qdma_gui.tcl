
proc addQDMAPage { IPINST pcie_a0_page} {

 #############
    ############# TAB PCIE0 BARS - Visible only in Functional Mode -> QDMA
    #############
set PF_BARs_QDMA [ipgui::add_page $IPINST -parent $pcie_a0_page -name PF_BARs_QDMA -layout horizontal]
    set_property display_name "PCIe : BARs" $PF_BARs_QDMA
    set pf0_base_addr_grp_qdma $PF_BARs_QDMA
    ipgui::add_static_text $IPINST -parent $pf0_base_addr_grp_qdma -name pf0_base_add_static_txt_qdma -text "Base Address Registers (BARs) serve two purposes.  Initially, they serve as a mechanism for the device to request blocks of address space in the system memory\nmap. After the BIOS or OS determines what addresses to assign to the device, the Base Address Registers are programmed with addresses and the device uses \nthis information to perform address decoding."

    foreach j {0 1 2 3} {
      ipgui::add_row $IPINST -parent $pf0_base_addr_grp_qdma
      if { $j == 1 } {
        ipgui::add_param $IPINST -name CPM_PCIE0_COPY_PF0_QDMA_ENABLED -parent $PF_BARs_QDMA -display_name "Copy PF0" -widget checkBox
        ipgui::add_row $IPINST -parent $pf0_base_addr_grp_qdma
      }
      if {$j == 0} {
        set pf0_option_grp_qdma [ipgui::add_group $IPINST -parent $PF_BARs_QDMA -name pf${j}_option_grp_qdma -display_name "PF${j}" -collapsed false]
      } else {
        set pf0_option_grp_qdma [ipgui::add_group $IPINST -parent $PF_BARs_QDMA -name pf${j}_option_grp_qdma -display_name "PF${j}" -collapsed true]
      }
      set table3 [ipgui::add_table $IPINST  -name pf${j}_table_qdma -rows "8" -columns "8" -parent $pf0_option_grp_qdma -table_header true]
      ipgui::add_static_text  $IPINST -name r${j}c1 -parent $table3 -text "Bar"
      ipgui::add_static_text  $IPINST -name r${j}c2 -parent $table3 -text "Type"
      ipgui::add_static_text  $IPINST -name r${j}c3 -parent $table3 -text "64 bit"
      ipgui::add_static_text  $IPINST -name r${j}c4 -parent $table3 -text "Prefetchable"
      ipgui::add_static_text  $IPINST -name r${j}c5 -parent $table3 -text "Size"
      ipgui::add_static_text  $IPINST -name r${j}c6 -parent $table3 -text "Scale"
      ipgui::add_static_text  $IPINST -name r${j}c7 -parent $table3 -text "Value (Hex)"
      ipgui::add_static_text  $IPINST -name r${j}c8 -parent $table3 -text "PCIe to AXI Translation"

      set_property cell_location 0,0 [ipgui::get_textspec r${j}c1  -of $IPINST]
      set_property cell_location 0,1 [ipgui::get_textspec r${j}c2  -of $IPINST]
      set_property cell_location 0,2 [ipgui::get_textspec r${j}c3  -of $IPINST]
      set_property cell_location 0,3 [ipgui::get_textspec r${j}c4  -of $IPINST]
      set_property cell_location 0,4 [ipgui::get_textspec r${j}c5  -of $IPINST]
      set_property cell_location 0,5 [ipgui::get_textspec r${j}c6  -of $IPINST]
      set_property cell_location 0,6 [ipgui::get_textspec r${j}c7  -of $IPINST]
      set_property cell_location 0,7 [ipgui::get_textspec r${j}c8  -of $IPINST]
      ipgui::add_row $IPINST -parent $pf0_base_addr_grp_qdma
      foreach i {0 1 2 3 4 5} {
        EvalSubstituting { i j } {
          set row_index [expr $i+1]
          set bar_param [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_ENABLED  -widget checkBox]
          set_property cell_location $row_index,0 $bar_param
          set pf0_bar$i_type [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_TYPE -widget comboBox]
          set_property cell_location $row_index,1 $pf0_bar$i_type
          if {$i == 0 || $i == 2 || $i ==4 } {
            set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_64BIT -widget checkBox]
            set_property cell_location $row_index,2 $pf0_bar$i_64bit
          } elseif { $i == 1 || $i == 3} {
            set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_64BIT -widget checkBox]
            set_property visible false $pf0_bar$i_64bit
            set_property cell_location $row_index,2 $pf0_bar$i_64bit
          }
          if {$i == 0 || $i == 2 || $i ==4 } {
            set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_PREFETCHABLE -widget checkBox]
            set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
          } else {
            set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_PREFETCHABLE -widget checkBox]
            set_property visible false $pf0_bar$i_prefetchable
            set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
          }
          set pf0_bar$i_size [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_SIZE -widget comboBox]
          set_property cell_location $row_index,4 $pf0_bar$i_size

          set pf0_bar$i_scale [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_BAR$i_QDMA_SCALE -widget comboBox]
          set_property cell_location $row_index,5 $pf0_bar$i_scale

          ipgui::add_dynamic_text $IPINST -parent $table3 -name pf$j_Bar$i_Value_qdma -tclproc "pf$j_Bar$i_Value_updated_qdma"
      if {$i == 1 || $i == 2 } {
          set pf$j_bar$i_axilite_val [ipgui::add_dynamic_text  $IPINST  -parent  $table3  -name pf$j_Bar$i_Value_qdma   -tclproc "pf$j_Bar$i_Value_updated_qdma" ]
          set_property visible false ${pf$j_bar$i_axilite_val}
          }
          set_property cell_location $row_index,6 [ipgui::get_textspec pf$j_Bar${i}_Value_qdma -of $IPINST]
          set_property display_border true [ipgui::get_textspec pf$j_Bar${i}_Value_qdma -of $IPINST]

          set pf0_pciebar2axibar_$i [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_PCIEBAR2AXIBAR_QDMA_$i -widget hexEdit]
          set_property cell_location $row_index,7 $pf0_pciebar2axibar_$i
        } 0

      }

      set Expansion_rom_bar [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF${j}_EXPANSION_ROM_QDMA_ENABLED  -widget checkBox]
      set_property cell_location 7,0 $Expansion_rom_bar

      #set pf0_expansion_rom_type [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF${j}_EXPANSION_ROM_QDMA_TYPE -widget comboBox]
      #set_property cell_location 7,1 $pf0_expansion_rom_type

      set pf0_expansion_rom_size [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF${j}_EXPANSION_ROM_QDMA_SIZE -widget comboBox]
      set_property cell_location 7,4 $pf0_expansion_rom_size

      set pf0_expansion_rom_scale [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF${j}_EXPANSION_ROM_QDMA_SCALE -widget comboBox]
      set_property cell_location 7,5 $pf0_expansion_rom_scale

      ipgui::add_dynamic_text $IPINST -parent $table3 -name pf${j}_Expansion_Rom_Bar_Value_qdma -tclproc "pf${j}_Expansion_Rom_Bar_Value_updated_qdma"
      set_property cell_location 7,6 [ipgui::get_textspec pf${j}_Expansion_Rom_Bar_Value_qdma -of $IPINST]
      set_property display_border true [ipgui::get_textspec pf${j}_Expansion_Rom_Bar_Value_qdma -of $IPINST]

      #set pf0_pciebar2axibar_6 [ipgui::add_param $IPINST -parent $table3 -name cpm_pcie0_pf${j}_pciebar2axibar_qdma_6 -widget hexEdit]
      #set_property cell_location 7,7 $pf0_pciebar2axibar_6

      ###### Tool Tips PF BAR0######
      set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement."  $pf0_bar0_64bit
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar0_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar0_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 kilobytes."  $pf0_bar0_scale

      ###### Tool Tips PF BAR1######
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar1_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar1_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar1_scale

      ###### Tool Tips PF BAR2######
      set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement."  $pf0_bar2_64bit
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar2_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar2_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar2_scale

      ###### Tool Tips PF BAR3######
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar3_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar3_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar3_scale

      ###### Tool Tips PF BAR4######
      set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement."  $pf0_bar4_64bit
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar4_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar4_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar4_scale

      ###### Tool Tips PF BAR5######
      set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar5_prefetchable
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar5_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 Kilobytes."  $pf0_bar5_scale

      ###### Tool Tips PF Expansion R0M######
      set_property tooltip "Enables the Expansion ROM Bar to be used in the design."  $Expansion_rom_bar
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 kilobytes."  $pf0_expansion_rom_size
      set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 kilobytes."  $pf0_expansion_rom_scale
    }

 #############
    ############# TAB PCIe DMA
    #############
    set xdma_tab [ipgui::add_page $IPINST -parent $pcie_a0_page -name "qdma" -layout vertical]
    set_property display_name "PCIe : DMA " $xdma_tab

    set dsc_bypass  [ipgui::add_group $IPINST -parent $xdma_tab -name "Descriptor Bypass " -layout horizontal ]
    set dsc_bypass_rd [ipgui::add_param  $IPINST -parent $dsc_bypass -name "CPM_PCIE0_DSC_BYPASS_RD" -widget checkBox]
    #set_property display_name "Descriptor Bypass for Read (H2C)" $dsc_bypass_rd
    set_property tooltip "If selected Descriptor Bypass Read-in Channel is enabled" $dsc_bypass_rd

    set dsc_bypass_wr [ipgui::add_param  $IPINST -parent $dsc_bypass -name "CPM_PCIE0_DSC_BYPASS_WR" -widget checkBox]
    #set_property display_name "Descriptor Bypass for Write (C2H)" $dsc_bypass_wr
    set_property tooltip "If selected Descriptor Bypass Write-in Channel is enabled" $dsc_bypass_wr

    set c2h_stream_cmpl  [ipgui::add_group $IPINST -parent $xdma_tab -name "C2H Stream Completion" -layout horizontal ]
    set c2h_stream_cpl_data_size [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl -name "CPM_PCIE0_C2H_STREAM_CPL_DATA_SIZE" -widget comboBox]
    set_property display_name "C2H Stream Completion data size" $c2h_stream_cpl_data_size

    ipgui::add_row $IPINST -parent $c2h_stream_cmpl
    set c2h_stream_cmpl_color  [ipgui::add_group $IPINST -parent $c2h_stream_cmpl -name "C2H Stream Completion Color bits" -layout vertical ]
    set c2h_stream_cpl_col_bit_pos0 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS0" -widget hexEdit]
    set_property display_name "Color bit position Reg0" $c2h_stream_cpl_col_bit_pos0
    set c2h_stream_cpl_col_bit_pos1 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS1" -widget hexEdit]
    set_property display_name "Color bit position Reg1 " $c2h_stream_cpl_col_bit_pos1
    set c2h_stream_cpl_col_bit_pos2 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS2" -widget hexEdit]
    set_property display_name "Color bit position Reg2" $c2h_stream_cpl_col_bit_pos2
    set c2h_stream_cpl_col_bit_pos3 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS3" -widget hexEdit]
    set_property display_name "Color bit position Reg3" $c2h_stream_cpl_col_bit_pos3
    set c2h_stream_cpl_col_bit_pos4 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS4" -widget hexEdit]
    set_property display_name "Color bit position Reg4" $c2h_stream_cpl_col_bit_pos4
    set c2h_stream_cpl_col_bit_pos5 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS5" -widget hexEdit]
    set_property display_name "Color bit position Reg5" $c2h_stream_cpl_col_bit_pos5
    set c2h_stream_cpl_col_bit_pos6 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS6" -widget hexEdit]
    set_property display_name "Color bit position Reg6" $c2h_stream_cpl_col_bit_pos6
    set c2h_stream_cpl_col_bit_pos7 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_color -name "CPM_PCIE0_C2H_STREAM_CPL_COL_BIT_POS7" -widget hexEdit]
    set_property display_name "Color bit position Reg7" $c2h_stream_cpl_col_bit_pos7
    set_property visible false $c2h_stream_cpl_col_bit_pos7

    set c2h_stream_cmpl_error  [ipgui::add_group $IPINST -parent $c2h_stream_cmpl -name "C2H Stream Completion Error bits" -layout vertical ]
    set c2h_stream_cpl_err_bit_pos0 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS0" -widget hexEdit]
    set_property display_name "Error bit position Reg0" $c2h_stream_cpl_err_bit_pos0
    set c2h_stream_cpl_err_bit_pos1 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS1" -widget hexEdit]
    set_property display_name "Error bit position Reg1" $c2h_stream_cpl_err_bit_pos1
    set c2h_stream_cpl_err_bit_pos2 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS2" -widget hexEdit]
    set_property display_name "Error bit position Reg2" $c2h_stream_cpl_err_bit_pos2
    set c2h_stream_cpl_err_bit_pos3 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS3" -widget hexEdit]
    set_property display_name "Error bit position Reg3" $c2h_stream_cpl_err_bit_pos3
    set c2h_stream_cpl_err_bit_pos4 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS4" -widget hexEdit]
    set_property display_name "Error bit position Reg4" $c2h_stream_cpl_err_bit_pos4
    set c2h_stream_cpl_err_bit_pos5 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS5" -widget hexEdit]
    set_property display_name "Error bit position Reg5" $c2h_stream_cpl_err_bit_pos5
    set c2h_stream_cpl_err_bit_pos6 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS6" -widget hexEdit]
    set_property display_name "Error bit position Reg6" $c2h_stream_cpl_err_bit_pos6
    set c2h_stream_cpl_err_bit_pos7 [ipgui::add_param  $IPINST -parent $c2h_stream_cmpl_error -name "CPM_PCIE0_C2H_STREAM_CPL_ERR_BIT_POS7" -widget hexEdit]
    set_property display_name "Error bit position Reg7" $c2h_stream_cpl_err_bit_pos7
    set_property visible false $c2h_stream_cpl_err_bit_pos7

    set performance_mode  [ipgui::add_group $IPINST -parent $xdma_tab -name "Performance mode options" -layout vertical ]

    set pfch_cache_depth [ipgui::add_param  $IPINST -parent $performance_mode -name "CPM_PCIE0_PFCH_CACHE_DEPTH" -widget comboBox]
    set_property tooltip "Pre-fetch Cache Depth" $pfch_cache_depth
    set wrb_coal_max_buf [ipgui::add_param  $IPINST -parent $performance_mode -name "CPM_PCIE0_WRB_COAL_MAX_BUF" -widget comboBox]
    set_property tooltip "Write Back Coalesce Max Buffer" $wrb_coal_max_buf



    set parity_settings [ipgui::add_param  $IPINST -parent $xdma_tab -name "CPM_PCIE0_QDMA_PARITY_SETTINGS" -layout horizontal ]
    set_property display_name "Data Protection" $parity_settings
    set_property tooltip "Enables to select the Parity options. When Check_Parity is selected, DMA checks Parity and generates Parity. When Propagate_Parity is selected, DMA propagates parity to user AXI interface. User is responsible to check and generate parity " $parity_settings



} 




