proc init {cellpath otherInfo } {
  # cell initialization here
  set ip [get_bd_cells $cellpath]
   #   bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In init of gt_parent ip cellName: $cell"

  # Enabling AXILITE mode when instantiated in IPI
  set_property -dict [list CONFIG.PS_USE_M_AXI_GP0 {1}  CONFIG.PS_USE_PMCPL_CLK0 {1}] $ip
}



proc post_config_ip {cellpath otherInfo} {
      #bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "3In post config ip proc: "
    set cell [get_bd_cells $cellpath]
    set cpm_use [get_property CONFIG.CPM_PERIPHERAL_EN $cell]
    set cpm_p0_en [get_property CONFIG.CPM_PCIE0_CONTROLLER_ENABLE $cell]
    set cpm_p1_en [get_property CONFIG.CPM_PCIE1_CONTROLLER_ENABLE $cell]

    #set PARENT_ID_t [ get_property CONFIG.Component_Name $cell ] 
    set hsdp_use [get_property CONFIG.PS_HSDP_MODE $cell ]
 
    foreach fclk_intf {pl_clk0 pl_clk1 pl_clk2 pl_clk3} {
	if {([get_property CONFIG.PS_USE_PMCPL_CLK[string map {pl_clk ""} $fclk_intf] $cell] == 1)} {
            set actfreq [ get_property CONFIG.PMC_CRP_PL[string map {pl_clk ""} $fclk_intf]_REF_CTRL_ACT_FREQMHZ $cell] 
	    set MgHzToHz [ expr $actfreq * 1000000 ]
	    set_property CONFIG.FREQ_HZ [ expr round($MgHzToHz) ] [get_bd_pins ${cell}/${fclk_intf}]
		
	   }
	}
  set tandem_settings "false"  
   if {( ($cpm_use == [expr 1] ) && ($cpm_p0_en == [expr 1] )) }  {    
      cpm_p0_gt_config $cpm_use $cpm_p0_en $cpm_p1_en $cell 
   }  

   if {( ($cpm_use == [expr 1] ) && ($cpm_p1_en == [expr 1] )) }  {    
     cpm_p0_gt_config $cpm_use $cpm_p0_en $cpm_p1_en $cell 
   } 
   if { $hsdp_use != "NONE" }  {    
     if { ( ( $cpm_p0_en == [expr 1] ) &&  ($cpm_p1_en == [ expr 1]) ) }  {
       puts "USAGE VIOLATION: HSDP Cannot be used when both PCIeA0 and PCIeA1 are enabled" 
     } elseif { ( ( $cpm_p0_en == [expr 1] ) &&  ( $cpm_p1_en == [ expr 0] && $hsdp_use == "HSDP0" ) ) }  {
       puts "USAGE VIOLATION: HSDP0 Cannot be used when PCIeA0 is enabled Please chose HSDP1" 
     }  elseif { ( ( $cpm_p0_en == [expr 0] ) && ( $cpm_p1_en == [ expr 1] && $hsdp_use == "HSDP1") ) }  {
       puts "USAGE VIOLATION: HSDP1 Cannot be used when PCIeA1 is enabled Please chose HSDP0" 
     } else { 
       puts "0001"
       hsdp_gt_config $hsdp_use $cell 
     } 
 } 
  



}

proc pre_propagate {cellpath otherInfo } {
    set cell [get_bd_cells $cellpath]
    #bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In pre-propagate of gt_parent ip cellName: $cell"
}

proc ifx_puts { string_in } {
  global env;
  if {[info exists env(XIL_IFX_DEBUG)]} {
    debug::send_message -severity INFO -msg "ifx: $string_in"
  }
}

proc cpm_p0_gt_config { cpm_use cpm_p0_en cpm_p1_en cell } { 
### GT configeration for CPM A0
  #ifx_puts "----------------------------------------------------------------------"
  set cpm_p0_mode [get_property CONFIG.CPM_PCIE0_FUNCTIONAL_MODE $cell]    
  set cpm_p0_dma_intf [get_property CONFIG.CPM_PCIE0_DMA_INTF $cell]  
  set Freq [get_property CONFIG.CPM_PCIE0_USER_CLK_FREQ $cell]
  if {$cpm_p0_en == 1 && (($cpm_p0_mode != "DMA") || ($cpm_p0_mode == "DMA" && $cpm_p0_dma_intf == "AXI4S"))} {
    set tandem_settings "true"

    if {$Freq == "62.5_MHz"} {
      set Frequency "62.5"
    } elseif {$Freq == "125_MHz"} {
      set Frequency "125"
    } elseif {$Freq == "250_MHz"} {
      set Frequency "250"
    } else {
      set Frequency "500"
    }
    set New_Freq [ expr int([expr $Frequency * 1000000 ])]
    set_property CONFIG.FREQ_HZ $New_Freq [get_bd_pins $cell/cpmdpllpcie0userclk]
  }
  
  if {$cpm_p1_en == 1} {
    set Freq1 [get_property CONFIG.CPM_PCIE1_USER_CLK_FREQ $cell]
    set tandem_settings "true"

    if {$Freq1 == "62.5_MHz"} {
      set Frequency1 "62.5"
    } elseif {$Freq1 == "125_MHz"} {
      set Frequency1 "125"
    } elseif {$Freq1 == "250_MHz"} {
      set Frequency1 "250"
    } else {
      set Frequency1 "500"
    }

    set New_Freq1 [ expr int([expr $Frequency1 * 1000000 ])] 
    set_property CONFIG.FREQ_HZ $New_Freq1 [get_bd_pins $cell/cpmdpllpcie1userclk]
  } 



#n  if { [get_property CONFIG.sys_reset_polarity $cell] == "ACTIVE_LOW" } {
#n    set_property CONFIG.POLARITY "ACTIVE_LOW" [get_bd_pins $cell/sys_reset]
#n  } else {
#n    set_property CONFIG.POLARITY "ACTIVE_HIGH" [get_bd_pins $cell/sys_reset]
#n  }

##     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time 011 ip cellName: $cell"

	 ##ifx_puts "************************************************************************************************************"
    ##set c_xpackage  	 [string tolower [::xit::get_project_property PACKAGE]]
    ##set c_xspeedgrade 	 [string tolower [::xit::get_project_property SPEEDGRADE]]
    ##set part		 [string tolower [::xit::get_project_property PART]]
    ##set c_xdevice  	 [string range $part 0 [expr [string first "$c_xpackage" $part] - 2]]
    ##set SPEED_GRADE      [string toupper $c_xspeedgrade]
    set SPEED_GRADE "-3"

    set speed [get_property CONFIG.CPM_PCIE0_MAX_LINK_SPEED $cell]
    set lanes [get_property CONFIG.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH $cell]
    set userclkfreq [get_property CONFIG.CPM_PCIE0_USER_CLK_FREQ $cell]
    set gt_refclk_freq  [get_property CONFIG.CPM_PCIE0_REF_CLK_FREQ $cell]
    set core_clk [get_property CONFIG.CPM_PCIE0_CORE_CLK_FREQ $cell]
    #set pll_type [get_property CONFIG.plltype $cell]
    set pll_type "RPLL"
    
#n    set X1_CH_EN  [get_property CONFIG.X1_CH_EN $cell]
#n    set X2_CH_EN  [get_property CONFIG.X2_CH_EN $cell]
#n    set X4_CH_EN  [get_property CONFIG.X4_CH_EN $cell]
#n    set X8_CH_EN  [get_property CONFIG.X8_CH_EN $cell]
#n    set XS_CH_EN  [get_property CONFIG.XS_CH_EN $cell]
#n    set GT_TYPE   [get_property CONFIG.GT_TYPE  $cell]
#n    set TX_RX_MASTER_CHANNEL   [get_property CONFIG.TX_RX_MASTER_CHANNEL $cell]
#n    set ins_loss_profile       [get_property CONFIG.INS_LOSS_PROFILE $cell]
    set pf0_lsscc              [get_property CONFIG.CPM_PCIE0_PF0_LINK_STATUS_SLOT_CLOCK_CONFIG $cell]

##     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M002 ip cellName: $cell"

#    if { $speed == "2.5_GT/s" } {
#         set TX_LINE_RATE {2.5} 
#         set RX_LINE_RATE {2.5} 
#         set P_CORECLK_FREQ {250}
#         set TXPROGDIV_FREQVAL {125}
#         set TXPLL_TYPE {RPLL}  
#         set RXPLL_TYPE {RPLL}
#         set RX_JTOL_FC {1}
#	       set DATA_WIDTH {16}
###     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M002 ip cellName: $cell"
#    } elseif { $speed == "5.0_GT/s" } {
#       if {$pll_type == "RPLL"} {
#         set TX_LINE_RATE {5} 
#         set RX_LINE_RATE {5} 
#         set P_CORECLK_FREQ {250}
#         set TXPROGDIV_FREQVAL {250}
#         set TXPLL_TYPE {RPLL}  
#         set RXPLL_TYPE {RPLL}
#         set RX_JTOL_FC {1}
#	       set DATA_WIDTH {16}
###     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M003 ip cellName: $cell"
#       } else {
###     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M004 ip cellName: $cell"
#         set TX_LINE_RATE {8} 
#         set RX_LINE_RATE {8} 
#         set P_CORECLK_FREQ {250}
#         set TXPROGDIV_FREQVAL {400}
#         set TXPLL_TYPE {LCPLL}  
#         set RXPLL_TYPE {LCPLL}
#         set RX_JTOL_FC {1}
#         if {$SPEED_GRADE == "-2L" || $SPEED_GRADE == "-2LV" || $SPEED_GRADE == "-1" || $SPEED_GRADE == "-1L" || $SPEED_GRADE == "-1LV"} {
#	          set DATA_WIDTH {32}
#          } else {
#	          set DATA_WIDTH {16}
#          } 
#       } 
#    } elseif { $speed == "8.0_GT/s" } {
###     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M005 ip cellName: $cell"
#       set TX_LINE_RATE {8} 
#       set RX_LINE_RATE {8} 
#         if {$core_clk == "250"} {
#           set P_CORECLK_FREQ {250}
#         } else {
#           set P_CORECLK_FREQ {500}
#         } 
#         if {$SPEED_GRADE == "-2L" || $SPEED_GRADE == "-2LV" || $SPEED_GRADE == "-1" || $SPEED_GRADE == "-1L" || $SPEED_GRADE == "-1LV"} {
#	         set DATA_WIDTH {32}
#         } else {
#	         set DATA_WIDTH {16}
#         } 
#       set TXPROGDIV_FREQVAL {400}
#       if {$pll_type == "LCPLL"} {
#          set TXPLL_TYPE {LCPLL}  
#          set RXPLL_TYPE {LCPLL}
#       } elseif {$pll_type == "RPLL"} {
#          set TXPLL_TYPE {RPLL}  
#          set RXPLL_TYPE {RPLL}
#       } 
#       set RX_JTOL_FC {1}
#    } else {
###     bd::send_msg -of $cellpath -type INFO -msg_id 1 -text "In post_config_ip of gt_parent time M006 ip cellName: $cell"
#       set TX_LINE_RATE {8} 
#       set RX_LINE_RATE {8} 
#         if {$core_clk == "250"} {
#       set P_CORECLK_FREQ {250}
#         } else {
#       set P_CORECLK_FREQ {500}
#         } 
#       set TXPROGDIV_FREQVAL {400}
#       set TXPLL_TYPE {LCPLL}  
#       set RXPLL_TYPE {LCPLL}
#       set RX_JTOL_FC {1}
#         if {$SPEED_GRADE == "-2L" || $SPEED_GRADE == "-2LV" || $SPEED_GRADE == "-1" || $SPEED_GRADE == "-1L" || $SPEED_GRADE == "-1LV"} {
#	         set DATA_WIDTH {32}
#         } else {
#	         set DATA_WIDTH {16}
#         } 
#     }
#

###########################################################################################
#   Gen-1 Speed Settings
###########################################################################################
         set TX_LINE_RATE_G1      {2.5} 
         set RX_LINE_RATE_G1      {2.5} 
         set P_CORECLK_FREQ_G1    {250}
         set TXPLL_TYPE_G1        {LCPLL}  
         set RXPLL_TYPE_G1        {LCPLL}
         set RX_JTOL_FC_G1        {1}
	       set DATA_WIDTH_G1        {16}
	       set INT_DATA_WIDTH_G1    {20}
###########################################################################################
#   Gen-2 Speed Settings
###########################################################################################
         set TX_LINE_RATE_G2      {5.0} 
         set RX_LINE_RATE_G2      {5.0} 
         set P_CORECLK_FREQ_G2    {250}
         set TXPLL_TYPE_G2        {LCPLL}  
         set RXPLL_TYPE_G2        {LCPLL}
         set RX_JTOL_FC_G2        {1}
	       set DATA_WIDTH_G2        {16}
	       set INT_DATA_WIDTH_G2    {20}
###########################################################################################
#   Gen-3 Speed Settings
###########################################################################################
       set TX_LINE_RATE_G3       {8} 
       set RX_LINE_RATE_G3       {8} 
         if {$core_clk == "250"} {
           set P_CORECLK_FREQ_G3 {250}
         } else {
           set P_CORECLK_FREQ_G3 {500}
         } 
	       set DATA_WIDTH_G3        {16}
	       set INT_DATA_WIDTH_G3    {16}
          set TXPLL_TYPE_G3      {LCPLL}  
          set RXPLL_TYPE_G3      {LCPLL}
       set RX_JTOL_FC_G3 {1}
###########################################################################################
#   Gen-4 Speed Settings
###########################################################################################
       set TX_LINE_RATE_G4      {8} 
       set RX_LINE_RATE_G4      {8} 
         if {$core_clk == "250"} {
       set P_CORECLK_FREQ_G4    {250}
         } else {
       set P_CORECLK_FREQ_G4    {500}
         } 
	       set DATA_WIDTH_G4        {32}
	       set INT_DATA_WIDTH_G4    {32}
       set TXPLL_TYPE_G4        {LCPLL}  
       set RXPLL_TYPE_G4        {LCPLL}
       set RX_JTOL_FC_G4        {1}
###########################################################################################
#   
###########################################################################################
	 ##ifx_puts "************************************************************************************************************"
    if { $lanes == "X4" } {
       set width {4}
    } elseif { $lanes == "X8" } {
       set width {8}
    } else {
       set width {16}
    } 

	 ##ifx_puts "************************************************************************************************************"
    if { $gt_refclk_freq == "100_MHz" } {
       set REF_CLK_FREQ {100}
    } elseif { $gt_refclk_freq == "125_MHz" } {
       set REF_CLK_FREQ {125}
    } else {
       set REF_CLK_FREQ {250}
    } 

      if { $gt_refclk_freq == "100_MHz" } {
         set DRP_CLK_FREQ {100}
      } elseif { $gt_refclk_freq == "125_MHz" } {
         set DRP_CLK_FREQ {125}
      } else {
         set DRP_CLK_FREQ {125}
      } 

    if { $userclkfreq == "62.5_MHz" } {
       set P_USERCLK_FREQ {62.5}
    } elseif { $userclkfreq == "125_MHz" } {
       set P_USERCLK_FREQ {125}
    } elseif { $userclkfreq == "250_MHz" } {
       set P_USERCLK_FREQ {250}
    } elseif { $userclkfreq == "500_MHz" } {
       set P_USERCLK_FREQ {500}
    }

#n    if {$ins_loss_profile == "Add-in_Card"} {
#n      set ins_loss_nyq {15}
#n      set rx_eq_mode {DFE} 
#n    } elseif {$ins_loss_profile == "Chip-to-Chip"} {
#n      set ins_loss_nyq 5
#n      set rx_eq_mode {LPM} 
#n    } elseif {$ins_loss_profile == "Backplane"} {
#n      set ins_loss_nyq 20
#n      set rx_eq_mode {DFE} 
#n    } else {
#n      set ins_loss_nyq 20
#n      set rx_eq_mode {DFE} 
#n    }
        set ins_loss_nyq {15}
        set rx_eq_mode {DFE}

    if {$pf0_lsscc == "true"} {
      set ppm_rx_offset 0
    } else {
      set ppm_rx_offset 600
    }
	 ##ifx_puts "************************************************************************************************************"
   source [::bd::get_vlnv_dir xilinx.com:ip:gt_quad_base:1.0]/tcl/params.tcl

#n        set transciever_type [ get_property CONFIG.IP_TRANSCIEVER_TYPE $cell ] 
#n        set txMasterClkSrc [get_property CONFIG.IP_MASTERCLK_SRC $cell]
    
#n          set pll_type [ get_property CONFIG.plltype $cell ] 
 #         set PARENT_ID [ get_property CONFIG.Component_Name $cell ] 
          ##set txmasterclk_src [ get_property CONFIG.IP_TX_MASTERCLK_SRC $cell ] 
          ##set rxmasterclk_src [ get_property CONFIG.IP_RX_MASTERCLK_SRC $cell ] 
          set txmasterclk_src "TX0"
          set rxmasterclk_src "RX0"
          set pll_src "Both_PLL_Dedicated"
          set preset "None" 

###########################################################################################
#   TX SETTINGS
###########################################################################################
#
# Gen1
#
  puts " setting TX lanes****"
   set INT_TX0_SETTINGS [dict create TX_LINE_RATE $TX_LINE_RATE_G1]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_DATA_ENCODING "8B10B"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_USER_DATA_WIDTH $DATA_WIDTH_G1]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_INT_DATA_WIDTH $INT_DATA_WIDTH_G1]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_PLL_TYPE $TXPLL_TYPE_G1]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_REFCLK_SOURCE "R0"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_BUFFER_MODE "0"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_DIFF_SWING_EMPH_MODE "CUSTOM"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TXPROGDIV_FREQ_ENABLE "true"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TXPROGDIV_FREQ_VAL "500"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_OUTCLK_SOURCE "TXPROGDIVCLK"]]
   set INT_TX0_SETTINGS [get_TX_settings $INT_TX0_SETTINGS]
   set TXLR0_SETTINGS $INT_TX0_SETTINGS
#
# Gen2
#
   set INT_TX1_SETTINGS [dict create TX_LINE_RATE $TX_LINE_RATE_G2]
	 set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_DATA_ENCODING "8B10B"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_USER_DATA_WIDTH $DATA_WIDTH_G2]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_INT_DATA_WIDTH $INT_DATA_WIDTH_G2]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_PLL_TYPE $TXPLL_TYPE_G2]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_REFCLK_SOURCE "R0"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_BUFFER_MODE "0"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_DIFF_SWING_EMPH_MODE "CUSTOM"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TXPROGDIV_FREQ_ENABLE "true"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TXPROGDIV_FREQ_VAL "500"]]
   set INT_TX1_SETTINGS [dict merge $INT_TX1_SETTINGS [dict create TX_OUTCLK_SOURCE "TXPROGDIVCLK"]]
   set INT_TX1_SETTINGS [get_TX_settings $INT_TX1_SETTINGS]
   set TXLR1_SETTINGS $INT_TX1_SETTINGS
#
#
# Gen3
#
   set INT_TX2_SETTINGS [dict create TX_LINE_RATE $TX_LINE_RATE_G3]
	 set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_DATA_ENCODING "128B130B"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_USER_DATA_WIDTH $DATA_WIDTH_G3]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_INT_DATA_WIDTH $INT_DATA_WIDTH_G3]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_PLL_TYPE $TXPLL_TYPE_G3]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_REFCLK_SOURCE "R0"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_BUFFER_MODE "0"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_DIFF_SWING_EMPH_MODE "CUSTOM"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TXPROGDIV_FREQ_ENABLE "true"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TXPROGDIV_FREQ_VAL "500"]]
   set INT_TX2_SETTINGS [dict merge $INT_TX2_SETTINGS [dict create TX_OUTCLK_SOURCE "TXPROGDIVCLK"]]
   set INT_TX2_SETTINGS [get_TX_settings $INT_TX2_SETTINGS]
   set TXLR2_SETTINGS $INT_TX2_SETTINGS
#

   set IP_TX_SETTINGS [dict create ]
   set IP_TX_SETTINGS [dict merge $IP_TX_SETTINGS [dict create LR0_SETTINGS $TXLR0_SETTINGS]]
   set IP_TX_SETTINGS [dict merge $IP_TX_SETTINGS [dict create LR1_SETTINGS $TXLR1_SETTINGS]]
   set IP_TX_SETTINGS [dict merge $IP_TX_SETTINGS [dict create LR2_SETTINGS $TXLR2_SETTINGS]]
###########################################################################################
   puts " setting TX lanes"
    for {set tIdx 0} {$tIdx < $width} {incr tIdx} {
      set txHandle [get_bd_intf_pins $cell/M_TX${tIdx}_GT]
      if {[string length $txHandle] > 0} {
	  set PARENT_ID_t [ get_property CONFIG.Component_Name $cell ]
	  set PARENT_ID  [concat "${PARENT_ID_t}_PCIeA0"  ]
	  set_property CONFIG.PARENT_ID $PARENT_ID $txHandle
        #  set_property CONFIG.PARENT_ID [ get_property CONFIG.Component_Name $cell ] $txHandle
          set_property CONFIG.CHNL_NUMBER $tIdx  $txHandle
          set_property CONFIG.GT_DIRECTION "DUPLEX" $txHandle
          set_property CONFIG.TX_MASTERCLK_SRC $txmasterclk_src $txHandle

          set current_intf TX${tIdx}
          if { $txmasterclk_src == $current_intf } {
            set_property CONFIG.MASTERCLK_SRC 1 $txHandle
          } else {
            set_property CONFIG.MASTERCLK_SRC 0 $txHandle
          } 
          set_property CONFIG.TX_SETTINGS $IP_TX_SETTINGS $txHandle
      }
   }

  
###########################################################################################
#   RX SETTINGS
###########################################################################################
#
# Gen1
#
   set INT_RX0_SETTINGS [dict create RX_LINE_RATE $RX_LINE_RATE_G1]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create PCIE_ENABLE "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_DATA_DECODING "8B10B"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_USER_DATA_WIDTH $DATA_WIDTH_G1]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_INT_DATA_WIDTH $INT_DATA_WIDTH_G1]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_PLL_TYPE $RXPLL_TYPE_G1]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_REFCLK_SOURCE "R0"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_BUFFER_MODE "1"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_JTOL_FC $RX_JTOL_FC_G1]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create PCIE_CORECLK_FREQ $P_CORECLK_FREQ_G1]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create PCIE_USERCLK_FREQ $P_USERCLK_FREQ]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_PRESET "K28.5"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_P_ENABLE "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_M_ENABLE "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_P_VAL "1010000011"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_M_VAL "0101111100"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_MASK  "1111111111"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_DOUBLE_ENABLE  "false"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_COMMA_ALIGN_WORD  "1"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_SLIDE_MODE "OFF"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_CC_NUM_SEQ "1"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_CC_LEN_SEQ "1"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_CC_KEEP_IDLE "ENABLE"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_CC_VAL_0_0 "00011100"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_CC_K_0_0 "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create OOB_ENABLE "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_EQ_MODE $rx_eq_mode]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_PPM_OFFSET $ppm_rx_offset]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create INS_LOSS_NYQ $ins_loss_nyq]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RXPROGDIV_FREQ_ENABLE "true"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RXPROGDIV_FREQ_VAL "500"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_OUTCLK_SOURCE "RXOUTCLKPMA"]]
   set INT_RX0_SETTINGS [get_RX_settings $INT_RX0_SETTINGS]
    set RXLR0_SETTINGS $INT_RX0_SETTINGS
#
# Gen2
#
   set INT_RX1_SETTINGS [dict create RX_LINE_RATE $RX_LINE_RATE_G2]
	 set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create PCIE_ENABLE "true"]]
	 set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_DATA_DECODING "8B10B"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_USER_DATA_WIDTH $DATA_WIDTH_G2]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_INT_DATA_WIDTH $INT_DATA_WIDTH_G2]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_PLL_TYPE $RXPLL_TYPE_G2]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_REFCLK_SOURCE "R0"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_BUFFER_MODE "1"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_JTOL_FC $RX_JTOL_FC_G2]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create PCIE_CORECLK_FREQ $P_CORECLK_FREQ_G2]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create PCIE_USERCLK_FREQ $P_USERCLK_FREQ]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_PRESET "K28.5"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_P_ENABLE "true"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_M_ENABLE "true"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_P_VAL "1010000011"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_M_VAL "0101111100"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_MASK  "1111111111"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_DOUBLE_ENABLE  "false"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_COMMA_ALIGN_WORD  "1"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_SLIDE_MODE "OFF"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_CC_NUM_SEQ "1"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_CC_LEN_SEQ "1"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_CC_KEEP_IDLE "ENABLE"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_CC_VAL_0_0 "00011100"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_CC_K_0_0 "true"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create OOB_ENABLE "true"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_EQ_MODE $rx_eq_mode]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_PPM_OFFSET $ppm_rx_offset]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create INS_LOSS_NYQ $ins_loss_nyq]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RXPROGDIV_FREQ_ENABLE "true"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RXPROGDIV_FREQ_VAL "500"]]
   set INT_RX1_SETTINGS [dict merge $INT_RX1_SETTINGS [dict create RX_OUTCLK_SOURCE "RXOUTCLKPMA"]]
   set INT_RX1_SETTINGS [get_RX_settings $INT_RX1_SETTINGS]
    set RXLR1_SETTINGS $INT_RX1_SETTINGS
#
# Gen3
#
   set INT_RX2_SETTINGS [dict create RX_LINE_RATE $RX_LINE_RATE_G3]
	 set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create PCIE_ENABLE "true"]]
	 set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_DATA_DECODING "128B130B"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_USER_DATA_WIDTH $DATA_WIDTH_G3]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_INT_DATA_WIDTH $INT_DATA_WIDTH_G3]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_PLL_TYPE $RXPLL_TYPE_G3]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_REFCLK_SOURCE "R0"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_BUFFER_MODE "1"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_JTOL_FC $RX_JTOL_FC_G3]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create PCIE_CORECLK_FREQ $P_CORECLK_FREQ_G3]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create PCIE_USERCLK_FREQ $P_USERCLK_FREQ]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_PRESET "K28.5"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_P_ENABLE "true"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_M_ENABLE "true"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_P_VAL "1010000011"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_M_VAL "0101111100"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_MASK  "1111111111"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_DOUBLE_ENABLE  "false"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_COMMA_ALIGN_WORD  "1"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_SLIDE_MODE "OFF"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_CC_NUM_SEQ "1"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_CC_LEN_SEQ "1"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_CC_KEEP_IDLE "ENABLE"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_CC_VAL_0_0 "00011100"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_CC_K_0_0 "true"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create OOB_ENABLE "true"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_EQ_MODE $rx_eq_mode]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_PPM_OFFSET $ppm_rx_offset]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create INS_LOSS_NYQ $ins_loss_nyq]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RXPROGDIV_FREQ_ENABLE "true"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RXPROGDIV_FREQ_SOURCE "RPLL"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RXPROGDIV_FREQ_VAL "500"]]
   set INT_RX2_SETTINGS [dict merge $INT_RX2_SETTINGS [dict create RX_OUTCLK_SOURCE "RXOUTCLKPMA"]]
   set INT_RX2_SETTINGS [get_RX_settings $INT_RX2_SETTINGS]
    set RXLR2_SETTINGS $INT_RX2_SETTINGS

#

    set IP_RX_SETTINGS [dict create ]
    set IP_RX_SETTINGS [dict merge $IP_RX_SETTINGS [dict create LR0_SETTINGS $RXLR0_SETTINGS]]
    set IP_RX_SETTINGS [dict merge $IP_RX_SETTINGS [dict create LR1_SETTINGS $RXLR1_SETTINGS]]
    set IP_RX_SETTINGS [dict merge $IP_RX_SETTINGS [dict create LR2_SETTINGS $RXLR2_SETTINGS]]
    set IP_RX_SETTINGS [dict merge $IP_RX_SETTINGS [dict create TANDEM_SETTINGS "true"]]

###########################################################################################

    puts " setting RX lanes"
    for {set rIdx 0} {$rIdx < $width} {incr rIdx} {
      set rxHandle [get_bd_intf_pins $cell/M_RX${rIdx}_GT]
        if {[string length $rxHandle] > 0} {
	  set PARENT_ID_t [ get_property CONFIG.Component_Name $cell ]
	  set PARENT_ID  [concat "${PARENT_ID_t}_PCIeA0"  ]
 #         set_property CONFIG.PARENT_ID [ get_property CONFIG.Component_Name $cell ] $rxHandle
	  set_property CONFIG.PARENT_ID $PARENT_ID $rxHandle

          set_property CONFIG.CHNL_NUMBER $rIdx $rxHandle
          set_property CONFIG.GT_DIRECTION "DUPLEX" $rxHandle
          set_property CONFIG.RX_MASTERCLK_SRC $rxmasterclk_src $txHandle
          set_property CONFIG.PCIE_ENABLE "true" $rxHandle

          set current_intf RX${rIdx}
          if { $rxmasterclk_src == $current_intf } {
            set_property CONFIG.MASTERCLK_SRC 1 $rxHandle
          } else {
            set_property CONFIG.MASTERCLK_SRC 0 $rxHandle
          }
          set_property CONFIG.RX_SETTINGS $IP_RX_SETTINGS $rxHandle
        }
      }




}

proc cpm_p1_config { } { 

### GT configeration for CPM A1
}	

proc hsdp_gt_config { hsdp_use cell  } { 


    set REF_CLK_FREQ  [get_property CONFIG.GT_REFCLK_MHZ $cell]
    set gt_line_rate  [get_property CONFIG.AURORA_LINE_RATE_GPBS $cell]
    set gt_init_clk_mhz  [get_property CONFIG.INIT_CLK_MHZ $cell]

    set TX_LINE_RATE_G1     $gt_line_rate 
    set RX_LINE_RATE_G1     $gt_line_rate
#    set DATA_WIDTH_G1        {32}
#    set INT_DATA_WIDTH_G1    {32}

    set txmasterclk_src "TX0"
    set rxmasterclk_src "RX0"
    set width 4



###########################################################################################
#   TX SETTINGS
###########################################################################################
#
# Gen1
#
   source [::bd::get_vlnv_dir xilinx.com:ip:gt_quad_base:1.0]/tcl/params.tcl
   puts " setting TX lanes****"
   set INT_TX0_SETTINGS [dict create TX_LINE_RATE $TX_LINE_RATE_G1]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_DATA_ENCODING "64B66B_SYNC"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_USER_DATA_WIDTH 32]]  
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_INT_DATA_WIDTH 32]]  
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_BUFFER_MODE "1"]]
   set INT_TX0_SETTINGS [dict merge $INT_TX0_SETTINGS [dict create TX_OUTCLK_SOURCE "TXOUTCLKPMA"]]
   #set INT_TX0_SETTINGS [get_TX_settings $INT_TX0_SETTINGS]
   set TXLR0_SETTINGS $INT_TX0_SETTINGS


###########################################################################################
#   RX SETTINGS
###########################################################################################
   puts " setting RX lanes****"
   set INT_RX0_SETTINGS [dict create RX_LINE_RATE $RX_LINE_RATE_G1]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_REFCLK_FREQUENCY $REF_CLK_FREQ]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_DATA_DECODING "64B66B_SYNC"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_USER_DATA_WIDTH 32]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_INT_DATA_WIDTH 32]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_BUFFER_MODE "1"]]
   set INT_RX0_SETTINGS [dict merge $INT_RX0_SETTINGS [dict create RX_OUTCLK_SOURCE "RXOUTCLKPMA"]]
 #  set INT_RX0_SETTINGS [get_RX_settings $INT_RX0_SETTINGS]
    set RXLR0_SETTINGS $INT_RX0_SETTINGS



   set IP_SETTINGS [dict create ]
   set IP_SETTINGS [dict merge $IP_SETTINGS [dict create LR0 [dict merge $TXLR0_SETTINGS $RXLR0_SETTINGS]]   ]

###########################################################################################
   set IP_TX_SETTINGS [get_GT_string "None" $IP_SETTINGS "TX"]
   set IP_RX_SETTINGS [get_GT_string "None" $IP_SETTINGS "RX"]

   puts " setting TX handle"
    for {set tIdx 0} {$tIdx < $width} {incr tIdx} {
      set txHandle [get_bd_intf_pins $cell/M_TX${tIdx}_GT]
      if {[string length $txHandle] > 0} {
	  set PARENT_ID_t [ get_property CONFIG.Component_Name $cell ]
	  set PARENT_ID  [concat "${PARENT_ID_t}_HSDP"  ]
	  set_property CONFIG.PARENT_ID $PARENT_ID $txHandle
          set_property CONFIG.CHNL_NUMBER $tIdx  $txHandle
          set_property CONFIG.GT_DIRECTION "DUPLEX" $txHandle
          set_property CONFIG.TX_MASTERCLK_SRC "TX0" $txHandle
          set_property CONFIG.TX_SETTINGS $IP_TX_SETTINGS $txHandle
          set current_intf TX${tIdx}
          if { $txmasterclk_src == $current_intf } {
            set_property CONFIG.MASTERCLK_SRC 1 $txHandle
          } else {
            set_property CONFIG.MASTERCLK_SRC 0 $txHandle
          }
      }

   }
   puts " setting RX handle"

    #####  $rIdx is already set during TX settings
    for {set rIdx 0} {$rIdx < $width} {incr rIdx} {
        set rxHandle [get_bd_intf_pins $cell/M_RX${rIdx}_GT]
        if {[string length $rxHandle] > 0} {
	  set PARENT_ID_t [ get_property CONFIG.Component_Name $cell ]
	  set PARENT_ID  [concat "${PARENT_ID_t}_HSDP"  ]
	  set_property CONFIG.PARENT_ID $PARENT_ID $rxHandle
          set_property CONFIG.CHNL_NUMBER $rIdx $rxHandle
          set_property CONFIG.GT_DIRECTION "DUPLEX" $rxHandle
          set_property CONFIG.RX_MASTERCLK_SRC "RX0" $rxHandle
          set_property CONFIG.PCIE_ENABLE "true" $rxHandle
          set_property CONFIG.RX_SETTINGS $IP_RX_SETTINGS $rxHandle
          set current_intf RX${rIdx}
          if { $rxmasterclk_src == $current_intf } {
            set_property CONFIG.MASTERCLK_SRC 1 $rxHandle
          } else {
            set_property CONFIG.MASTERCLK_SRC 0 $rxHandle
          }
        }
    }
}	

