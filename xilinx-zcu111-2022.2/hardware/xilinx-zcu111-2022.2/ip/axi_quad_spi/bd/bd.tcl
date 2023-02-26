proc init {cellpath otherInfo} {
	# cell initialization here
	set cell_handle [get_bd_cells $cellpath]
	set paramList "Async_Clk C_S_AXI4_ID_WIDTH"
	bd::mark_propagate_only $cell_handle $paramList

	## below line to mask the user paraemter when the core is called in IPI 
	set_property CONFIG.C_S_AXI4_ID_WIDTH 0 $cell_handle
	 set axi_interface [get_property CONFIG.C_TYPE_OF_AXI4_INTERFACE $cell_handle]
if {$axi_interface == 1} {
   #set max_burst_length [get_property CONFIG.MAX_BURST_LENGTH [get_bd_intf_pins $ip/AXI_FULL]]
     set_property  CONFIG.NUM_READ_OUTSTANDING 1 [get_bd_intf_pins $cell_handle/AXI_FULL]
     set_property  CONFIG.NUM_WRITE_OUTSTANDING 1 [get_bd_intf_pins $cell_handle/AXI_FULL]
}
}

proc post_config_ip {cellName dictArg} {
    set ip [get_bd_cells $cellName]
	 set axi_interface [get_property CONFIG.C_TYPE_OF_AXI4_INTERFACE $ip]
	 set xip_interface [get_property CONFIG.C_XIP_MODE $ip]
	 
if {$axi_interface == 1} {
	 if { $xip_interface == 0 } {
     set_property  CONFIG.MAX_BURST_LENGTH 16 [get_bd_intf_pins $ip/AXI_FULL]
} else {
     set_property  CONFIG.MAX_BURST_LENGTH 64 [get_bd_intf_pins $ip/AXI_FULL]
}
}
}

proc propagate {cellpath otherInfo} {
   # puts "in axi_intc post_propagate with cellName $cellName\n"
    set ip [get_bd_cells $cellpath]
   # puts "IP is $ip \n"
         #set ip [get_bd_cells $cellpath]
	 set axi_interface [get_property CONFIG.C_TYPE_OF_AXI4_INTERFACE $ip]
	 set xip_interface [get_property CONFIG.C_XIP_MODE $ip]
             # bd::send_msg -of $cellName -type INFO -msg_id 1 -text " 
             # ##################################################
             # value is configuration is XIP == $xip_interface
             # ##################################################    "

if {$axi_interface == 1} {
   set_base_high $cellpath
   set id_width [get_property CONFIG.ID_WIDTH [get_bd_intf_pins $ip/AXI_FULL]]
     set_property  CONFIG.C_S_AXI4_ID_WIDTH $id_width $ip
}			 
			 
 if { $xip_interface == 0 } {
	 if { $axi_interface == 0 } {

	     set clk_a_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/s_axi_aclk]]
         set clk_b_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/ext_spi_clk]]	     
	     set clk_a_phase [get_property CONFIG.PHASE [get_bd_pins $ip/s_axi_aclk]]
	     set clk_b_phase [get_property CONFIG.PHASE [get_bd_pins $ip/ext_spi_clk]]

	     set clk_a_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/s_axi_aclk]]
         set clk_b_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/ext_spi_clk]]         

	     if {($clk_a_dom == $clk_b_dom) && ($clk_a_phase == $clk_b_phase)} {    
		if {$clk_a_freq != 0 && $clk_b_freq != 0 && $clk_a_freq != $clk_b_freq} {
                  set clk_control_value 1
                  set_property  CONFIG.Async_Clk $clk_control_value $ip
                  
		  bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                  ########################################################################################
                  INFO: AXI Quad SPI core's AXI Lite Clock and EXT SPI CLK are asynchronous to each other.
                  ########################################################################################"
		
		} else {
                   set clk_control_value 0
                   set_property  CONFIG.Async_Clk $clk_control_value $ip	 
                   
		   bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                   #######################################################################################
                   INFO: AXI Quad SPI core's AXI Lite Clock and EXT SPI CLK are synchronous to each other.
                   ########################################################################################"
		
		}
	     } else {
                  bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                  ##############################################################################
                  INFO: AXI Quad SPI core's AXI Lite Clock and EXT SPI CLK are are asynchronous.
                  ##############################################################################"
		  if {$clk_a_freq != 0 && $clk_b_freq != 0} {
                     set clk_control_value 1
                     set_property  CONFIG.Async_Clk $clk_control_value $ip	 
		  } else {
                   bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                   ####################################################################################
                   INFO: AXI Quad SPI core's AXI Lite Clock and EXT SPI CLK should have non-zero value.
                   ####################################################################################"
		  }
	     } 	
	
	} else {
	     set clk_a_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/s_axi4_aclk]]
             set clk_b_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/ext_spi_clk]]	     
	     set clk_a_phase [get_property CONFIG.PHASE [get_bd_pins $ip/s_axi4_aclk]]
	     set clk_b_phase [get_property CONFIG.PHASE [get_bd_pins $ip/ext_spi_clk]]

	     set clk_a_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/s_axi4_aclk]]
             set clk_b_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/ext_spi_clk]]         
	     
	     if {($clk_a_dom == $clk_b_dom) && ($clk_a_phase == $clk_b_phase)} {  
		if {$clk_a_freq != 0 && $clk_b_freq != 0 && $clk_a_freq != $clk_b_freq} {
			set clk_control_value 1
			set_property  CONFIG.Async_Clk $clk_control_value $ip
			bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
			##################################################################################################
			INFO: AXI Quad SPI core's AXI4 Memory Mapped Clock and EXT SPI CLK are asynchronous to each other.
			##################################################################################################"
	     
		} else {
			set clk_control_value 0
			set_property  CONFIG.Async_Clk $clk_control_value $ip	 
			bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
			#################################################################################################
			INFO: AXI Quad SPI core's AXI4 Memory Mapped Clock and EXT SPI CLK are synchronous to each other.
			#################################################################################################"
	       }
	     } else {
                  bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                  ###################################################################################
                  INFO: AXI Quad SPI core's AXI Memory Mapped Clock and EXT SPI CLK are asynchronous.
                  ###################################################################################"
		  if {$clk_a_freq != 0 && $clk_b_freq != 0} {
                     set clk_control_value 1
                     set_property  CONFIG.Async_Clk $clk_control_value $ip	 
		  } else {
                   bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                   #############################################################################################
                   INFO: AXI Quad SPI core's AXI Memory Mapped Clock and EXT SPI CLK should have non-zero value.
                   #############################################################################################"
		  }
	     }

	}
 } else {
	     set clk_a_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/s_axi_aclk]]
             set clk_b_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/ext_spi_clk]]         
	     set clk_c_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/s_axi4_aclk]]

	     set clk_a_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/s_axi_aclk]]
             set clk_b_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/ext_spi_clk]]	     
             set clk_c_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/s_axi4_aclk]]	     
	     set clk_a_phase [get_property CONFIG.PHASE [get_bd_pins $ip/s_axi_aclk]]
	     set clk_b_phase [get_property CONFIG.PHASE [get_bd_pins $ip/ext_spi_clk]]
	     set clk_c_phase [get_property CONFIG.PHASE [get_bd_pins $ip/s_axi4_aclk]]
 
             if {($clk_a_dom == $clk_b_dom) && ($clk_a_dom == $clk_c_dom) && ($clk_b_dom == $clk_c_dom) && ($clk_a_phase == $clk_b_phase) && ($clk_a_phase == $clk_c_phase) && ($clk_b_phase == $clk_c_phase) } {

		if {($clk_a_freq != 0 && $clk_b_freq != 0 && $clk_c_freq != 0) && 
	  	    ($clk_a_freq != $clk_b_freq) || ($clk_c_freq != $clk_b_freq) || ($clk_a_freq != $clk_c_freq)} {
			set clk_control_value 1
			set_property  CONFIG.Async_Clk $clk_control_value $ip
			bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
			###########################################################################
			INFO: AXI Quad SPI core is configured in XIP mode with asynchronous clocks.
			###########################################################################"	     
		} else {
			set clk_control_value 0
			set_property  CONFIG.Async_Clk $clk_control_value $ip	 
			bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
			##########################################################################
			INFO: AXI Quad SPI core is configured in XIP mode with synchronous clocks.
			##########################################################################"
		}
	      } else {
		bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
		###############################################################################
		INFO: AXI Quad SPI core is configured in XIP mode with different clock sources.
		###############################################################################"
		  if {$clk_a_freq != 0 && $clk_b_freq != 0 && $clk_c_freq != 0} {
                     set clk_control_value 1
                     set_property  CONFIG.Async_Clk $clk_control_value $ip	 
		  } else {
                   bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                   ###################################################################################################################
                   INFO: AXI Quad SPI - Please check the clocks connected to AXI Quad SPI core. All clocks should have non-zero value.
                   ###################################################################################################################"
		  }
	      }			

 }	
}

 proc set_base_high {cellpath} {
	set cell_handle [get_bd_cells $cellpath]
set axi_interface [get_property CONFIG.C_TYPE_OF_AXI4_INTERFACE $cell_handle]
if {$axi_interface == 1} {

 set ip [get_bd_cells $cellpath]

 #Environment variable to turn off setting of base and high variables internally in c++ before setting them from tcl
 set  ::env(IPI_SET_BASE_HIGH) FALSE
 #puts "Making the IPI_SET_BASE_HIGH env variable as FALSE"

 #Elacing the default values for the unmapped segments to have into a dictionary.
 #Note the key is by the name of the segment, not the full name and not the name of the base/high parameter


 set dDefValues [dict create \
 MEM0 [list 0xA0000000 0xAFFFFFFF] \
 REG [list 0xB0000000 0xBFFFFFFF] ]
 #puts "Setting the default values "
  set slave_bif [get_bd_intf_pins "$ip/AXI_FULL"]
   set sl_bif_len [llength $slave_bif]
#puts "Slave BUSIF name is $slave_bif and Length $sl_bif_len "

   #Get the slave segments related to the bifs
   set slave_SEGs [get_bd_addr_segs -of_objects $slave_bif]
   set num_slv_SEGs [llength $slave_SEGs]
#puts "Slave Segment names are $slave_SEGs and Length $num_slv_SEGs "

   foreach slvSeg $slave_SEGs {
        #Get the name of the slave seg.
        set sSlvSeg [get_property name $slvSeg]

        #Getting the default values for this segment from the dictionary.
        #The convention of setting the base/high to 0xFFFFFFFFF and 0x00000000 is an old EDK convention included here for safety.

        #$set vDefValues [dict get $dDefValues $sSlvSeg]
        set vDefValues [expr [dict exists $dDefValues $sSlvSeg] ? {[dict get $dDefValues $sSlvSeg]} : {[list 0xFFFFFFF 0x00000000]}]

        #Use the ::bd:;addr tcl function to transfer the values from the mapped 
        #segment to the slave segment's base/high parameters
       ::bd::addr::cfg_base_high_of_slv $ip $slvSeg [lindex $vDefValues 0] [lindex $vDefValues 1] 
   }
}
}


