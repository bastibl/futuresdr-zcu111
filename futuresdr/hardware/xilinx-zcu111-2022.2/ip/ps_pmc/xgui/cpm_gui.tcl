proc EvalSubstituting {parameters procedure {numlevels 1}} {
  set paramlist {}
  if {[string index $numlevels 0]!="#"} {
    set numlevels [expr $numlevels+1]
  }
  foreach parameter $parameters {
    upvar 1 $parameter $parameter\_value
    tcl::lappend paramlist \$$parameter [set $parameter\_value]
  }
  uplevel $numlevels [string map $paramlist $procedure]
}

source_ipfile "xgui/dma_gui.tcl" 
source_ipfile "xgui/qdma_gui.tcl" 
source_ipfile "xgui/bridge_gui.tcl" 

proc addCPMPLLPage {IPINST cpm_pll} {  

  ipgui::add_static_text $IPINST -name "PLL Options" -text "<b>PLL Options</b>" -parent ${cpm_pll} 
  ipgui::add_row $IPINST -parent ${cpm_pll}

  set table [ipgui::add_table $IPINST -name "PLL Options" -rows "2" -columns "3" -layout horizontal -parent ${cpm_pll}]

  set text1 [ipgui::add_static_text $IPINST -name "PLL Name" -text "<b>PLL Name</b>" -parent ${table} ]
  set text2 [ipgui::add_static_text $IPINST -name "Source" -text "<b>Source</b>" -parent ${table} ]
  set text3 [ipgui::add_static_text $IPINST -name "Multiplier" -text "<b>Multiplier</b>" -parent ${table} ]
  set_property cell_location 0,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 0,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
  set_property cell_location 0,2  [ ipgui::get_textspec ${text3} -of $IPINST ]

  set text1 [ipgui::add_static_text $IPINST -name "CPMPLL" -text "CPMPLL" -parent ${table} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_CPLL_CTRL_SRCSEL"  -parent ${table} -widget comboBox]
  set param2 [ipgui::add_param $IPINST -name "CPM_CPLL_CTRL_FBDIV"  -parent ${table} -widget textEdit]
  set_property cell_location 1,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 1,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 1,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  ipgui::add_row $IPINST -parent ${cpm_pll}
  set CPMClocks [ipgui::add_group $IPINST -name "CPM Clocks" -layout horizontal -collapse true -parent ${cpm_pll}]
  set table1 [ipgui::add_table $IPINST -name "CPM Clocks" -rows "6" -columns "4" -layout horizontal -parent ${CPMClocks}]
  set text1 [ipgui::add_static_text $IPINST -name "CPM Clocks" -text "<b>CPM Clocks Domain</b>" -parent ${table1} ]
  ipgui::add_row $IPINST -parent ${cpm_pll}
  #set table [ipgui::add_table $IPINST -name "LPD Domain" -rows "21" -columns "5" -layout horizontal -parent ${cpm_pll}]
  set psRow 0;
  #set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set text1 [ipgui::add_static_text $IPINST -name "Name1" -text "<b>Name</b>" -parent ${table1} ]
  set text2 [ipgui::add_static_text $IPINST -name "Frequency1" -text "<b>Frequency(MHz)</b>" -parent ${table1} ]
  set text3 [ipgui::add_static_text $IPINST -name "Divisor11" -text "<b>Divisor</b>" -parent ${table1} ]
  set text4 [ipgui::add_static_text $IPINST -name "Actual11" -text "<b>Actual Frequency(MHz)</b>" -parent ${table1} ]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
  incr psRow ;
  set text1 [ipgui::add_static_text $IPINST -name "CPM_CORE_REF_CTRL" -text CPM_CORE_REF_CTRL -parent ${table1} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_CORE_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
  set param2 [ipgui::add_param $IPINST -name "CPM_CORE_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
  set param3 [ipgui::add_param $IPINST -name "CPM_CORE_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  incr psRow ;
  set text1 [ipgui::add_static_text $IPINST -name "CPM_LSBUS_REF_CTRL" -text CPM_LSBUS_REF_CTRL -parent ${table1} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_LSBUS_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
  set param2 [ipgui::add_param $IPINST -name "CPM_LSBUS_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
  set param3 [ipgui::add_param $IPINST -name "CPM_LSBUS_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  incr psRow ;
  set text1 [ipgui::add_static_text $IPINST -name "CPM_DBG_REF_CTRL" -text CPM_DBG_REF_CTRL -parent ${table1} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_DBG_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
  set param2 [ipgui::add_param $IPINST -name "CPM_DBG_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
  set param3 [ipgui::add_param $IPINST -name "CPM_DBG_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  incr psRow ;
  set text1 [ipgui::add_static_text $IPINST -name "CPM_AUX0_REF_CTRL" -text CPM_AUX0_REF_CTRL -parent ${table1} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_AUX0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
  set param2 [ipgui::add_param $IPINST -name "CPM_AUX0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
  set param3 [ipgui::add_param $IPINST -name "CPM_AUX0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  incr psRow ;
  set text1 [ipgui::add_static_text $IPINST -name "CPM_AUX1_REF_CTRL" -text CPM_AUX1_REF_CTRL -parent ${table1} ]
  set param1 [ipgui::add_param $IPINST -name "CPM_AUX1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
  set param2 [ipgui::add_param $IPINST -name "CPM_AUX1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
  set param3 [ipgui::add_param $IPINST -name "CPM_AUX1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
  incr psRow ;
  #set_property visible "false" $cpm_ccix

}


proc addCPMPage { IPINST cpm_page} {
  set h_group1 [ipgui::add_group $IPINST -name "CPM Basic Configuration" -parent $cpm_page -layout horizontal] 
  #set cpm_use_modes [ipgui::add_param $IPINST -parent $h_group1 -name "CPM_USE_MODES" -widget comboBox]
  #ipgui::add_row $IPINST -parent $h_group1
  #set text1 [ipgui::add_dynamic_text $IPINST -name "Description: " -parent $h_group1 -tclproc "CPM_USE_MODES_DYN"]
  #ipgui::add_row $IPINST -parent $h_group1
  set pcie_a0 [ipgui::add_group $IPINST -parent $h_group1 -name "PCIe0 Controller" -layout horizontal]
  set cpm_pcie0 [ipgui::add_param $IPINST -parent $pcie_a0 -name "CPM_PCIE0_MODES" -widget comboBox]
  set_property display_name "PCIe0 Modes" $cpm_pcie0
  set PL_LINK_CAP_MAX_LINK_WIDTH [ipgui::add_param $IPINST -parent $pcie_a0 -name CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH -widget comboBox]
  set_property display_name "Lane Width" $PL_LINK_CAP_MAX_LINK_WIDTH
  ipgui::add_row $IPINST -parent $h_group1
  set pcie_a1 [ipgui::add_group $IPINST -parent $h_group1 -name "PCIe1 Controller" -layout horizontal]
  set cpm_pcie1 [ipgui::add_param $IPINST -parent $pcie_a1 -name "CPM_PCIE1_MODES" -widget comboBox]
  set_property display_name "PCIe1 Modes" $cpm_pcie1
  set PL_LINK_CAP_MAX_LINK_WIDTH [ipgui::add_param $IPINST -parent $pcie_a1 -name CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH -widget comboBox]
  set_property display_name "Lane Width" $PL_LINK_CAP_MAX_LINK_WIDTH
  ipgui::add_row $IPINST -parent $h_group1

  set h_PCIeIF [ipgui::add_group $IPINST -name "CPM Interfaces" -parent $h_group1 -layout horizontal] 
  set noc0 [ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PCI_0" -parent ${h_PCIeIF} -widget checkBox]
  set_property display_name "CPM to NoC 0" $noc0
  set noc1 [ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PCI_1" -parent ${h_PCIeIF} -widget checkBox]
  set_property display_name "CPM to NoC 1" $noc1
  set cpm0 [ipgui::add_param $IPINST -name "PS_USE_NOC_PS_PCI_0" -parent ${h_PCIeIF} -widget checkBox]
  set_property display_name "NoC to CPM" $cpm0
  

  ipgui::add_row $IPINST -parent $h_group1
  #ipgui::add_static_text $IPINST -parent $h_group1 -name "single port" -text "PCIe Controller A0 shall be enabled with x16 as default lane width. There will be AXI4-S interfaces between CPM and PL"
  #ipgui::add_row $IPINST -parent $h_group1
  ipgui::add_image $IPINST -name CPMUsecase -parent $h_group1 -width 670 -height 460


}

proc addPCIE1Page { IPINST pcie_a0_page} {
}
proc addCCIXPage { IPINST ccix_page} {

  set h_group1 [ipgui::add_group $IPINST -name "CCIX Configuration" -parent $ccix_page -layout horizontal] 
  ipgui::add_row $IPINST -parent $h_group1
  #set ccix_pcie0 [ipgui::add_group $IPINST -parent $h_group1 -name "PCIe0 Controller" -layout horizontal]
  #set pcie0 [ipgui::add_param $IPINST -parent $ccix_pcie0 -name "CPM_PCIE0_CCIX_EN" -widget checkBox]
  #ipgui::add_row $IPINST -parent $ccix_pcie0
  set pcie0 [ipgui::add_param $IPINST -parent $h_group1 -name "CPM_REQ_AGENTS_0_ENABLE" -widget checkBox]
  set_property display_name "Enable Request Agent 0 (CHI Interfaces)" $pcie0
  ipgui::add_row $IPINST -parent $h_group1
  set pcie0 [ipgui::add_param $IPINST -parent $h_group1 -name "CPM_REQ_AGENTS_0_L2_ENABLE" -widget checkBox]
  set_property display_name "Enable Request Agent 0 L2 Cache (CHI Interfaces)" $pcie0
  ipgui::add_row $IPINST -parent $h_group1
  set pcie0 [ipgui::add_param $IPINST -parent $h_group1 -name "CPM_REQ_AGENTS_1_ENABLE" -widget checkBox]
  set_property display_name "Enable Request Agent 1 (CHI Interfaces)" $pcie0
  ipgui::add_row $IPINST -parent $h_group1
  set pcie0 [ipgui::add_param $IPINST -parent $h_group1 -name "CPM_NUM_HNF_AGENTS" -widget comboBox]
  set_property display_name "Number of Home Agenets (HNFs inside CMN)" $pcie0

  ipgui::add_row $IPINST -parent $h_group1


  #set ccix_pcie1 [ipgui::add_group $IPINST -parent $h_group1 -name "PCIe1 Controller" -layout horizontal]
  #set pcie1 [ipgui::add_param $IPINST -parent $ccix_pcie1 -name "CPM_PCIE1_CCIX_EN" -widget checkBox]
  #ipgui::add_row $IPINST -parent $ccix_pcie1
  #ipgui::add_static_text $IPINST -parent $ccix_pcie1 -name CCIX_1_Ports -text "Number of CCIX Ports :  1,2"
  #ipgui::add_row $IPINST -parent $ccix_pcie1
  #ipgui::add_static_text $IPINST -parent $ccix_pcie1 -name CCIX_1_RQA -text "Number of Request Agenets (CHI Interfaces) :  0,1,2"
  #ipgui::add_row $IPINST -parent $ccix_pcie1
  #ipgui::add_static_text $IPINST -parent $ccix_pcie1 -name CCIX_1_HMA -text "Number of Home Agenets (HNFs inside CMN) :  0,1,2"
  #ipgui::add_row $IPINST -parent $h_group1

}
proc addXPIPEPage { IPINST xpipe_page} {
}

proc addPCIE0Page { IPINST pcie_a0_page} {

 set main_panel [ipgui::add_panel $IPINST -name "main_cpm" -layout vertical]
 
 #set basicPage [ ipgui::add_page $IPINST -name "Basic page" -layout vertical]
 #set_property display_name "Basic Configuration" $basicPage

  set Page1 [ipgui::add_page $IPINST -name Page1 -layout horizontal -parent $pcie_a0_page]
  set_property display_name "Basic" $Page1
  #set cap_page [ipgui::add_page $IPINST -name "Capabilities" -parent $pcie_a0_page]
  #set_property display_name "Capabilities" $cap_page
  #set pf_id [ipgui::add_page $IPINST -name "PF IDs" -parent $pcie_a0_page]
  #set_property display_name "PF IDs" $pf_id

  #
  #set_property visible "false" $basicPage
  #set_property visible "false" $Page1
  #set_property visible "false" $cap_page
  #set_property visible "false" $pf_id 
  
  set newPanel_1 [ipgui::add_panel $IPINST -name newPanel_1 -parent $Page1]
  ipgui::add_param $IPINST -parent $newPanel_1 -name CPM_PCIE0_MODE_SELECTION -widget comboBox

  ipgui::add_row $IPINST -parent $Page1
  #Use case page

  set newPanel_1 [ipgui::add_panel $IPINST -name newPanel_1 -parent $Page1]
  set pcie0_func_mode [ipgui::add_param $IPINST -parent $newPanel_1 -name "CPM_PCIE0_FUNCTIONAL_MODE" -widget comboBox]
  set_property display_name "PCIE0 Functional Mode" $pcie0_func_mode

  ipgui::add_row $IPINST -parent $Page1

  set newPanel12 [ipgui::add_panel $IPINST -name newPanel12 -parent $Page1]
  set device_port_type [ipgui::add_param $IPINST -parent $newPanel12 -name "CPM_PCIE0_PORT_TYPE" -widget comboBox]

#  set pcie_blk_locn [ipgui::add_param $IPINST -parent $newPanel12 -name pcie_blk_locn -widget comboBox]

    set device [string toupper [string tolower [get_project_property DEVICE]]]

#  set newPanel13 [ipgui::add_panel $IPINST -name newPanel13 -parent $Page1]
#  set en_gt_selection [ipgui::add_param $IPINST -parent $newPanel13 -name en_gt_selection -layout horizontal]
#  set_property display_name "Enable GT Quad Selection" $en_gt_selection
#  set_property tooltip "If checked enables GT selection for different PCIe Blocks" $en_gt_selection
#
#  set select_quad [ipgui::add_param $IPINST -parent $newPanel13 -name select_quad -widget comboBox]
#  set_property display_name "GT Quad" $select_quad
#  set_property tooltip "Select different GT Quads depending on the PCIe block location" $select_quad
#
#  set Generate_additional_PCIe_constrains [ipgui::add_group $IPINST -parent $Page1 -name Generate_additional_PCIe_constrains -layout horizontal]
#  set_property display_name "Generate Additional PCIe Constraints" $Generate_additional_PCIe_constrains
#  set_property visible false $Generate_additional_PCIe_constrains
#  ipgui::add_static_text $IPINST -parent $Generate_additional_PCIe_constrains -name PCIe_Block_Location -text "PCIe Block Location :"
#
#  set gen_x0y0 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y0 -widget checkBox]
#  set_property display_name X0Y0 $gen_x0y0
#  set gen_x0y1 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y1 -widget checkBox]
#  set_property display_name X0Y1 $gen_x0y1
#  set gen_x0y2 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y2 -widget checkBox]
#  set_property display_name X0Y2 $gen_x0y2
#  set gen_x0y3 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y3 -widget checkBox]
#  set_property display_name X0Y3 $gen_x0y3
#  set gen_x0y4 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y4 -widget checkBox]
#  set_property display_name X0Y4 $gen_x0y4
#  set gen_x0y5 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x0y5 -widget checkBox]
#  set_property display_name X0Y5 $gen_x0y5
#  set gen_x1y0 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y0 -widget checkBox]
#  set_property display_name X1Y0 $gen_x1y0
#  set gen_x1y1 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y1 -widget checkBox]
#  set_property display_name X1Y1 $gen_x1y1
#  set gen_x1y2 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y2 -widget checkBox]
#  set_property display_name X1Y2 $gen_x1y2
#  set gen_x1y3 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y3 -widget checkBox]
#  set_property display_name X1Y3 $gen_x1y3
#  set gen_x1y4 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y4 -widget checkBox]
#  set_property display_name X1Y4 $gen_x1y4
#  set gen_x1y5 [ipgui::add_param $IPINST -parent $Generate_additional_PCIe_constrains -name gen_x1y5 -widget checkBox]
#  set_property display_name X1Y5 $gen_x1y5
#  
  ipgui::add_row $IPINST -parent $Page1
  set No_of_lanes [ipgui::add_group $IPINST -parent $Page1 -name No_of_lanes]
  #set_property display_name "Number of Lanes" $No_of_lanes
  #set PL_LINK_CAP_MAX_LINK_WIDTH [ipgui::add_param $IPINST -parent $No_of_lanes -name CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH -widget comboBox]
  #set_property display_name "Lane Width" $PL_LINK_CAP_MAX_LINK_WIDTH
  set CPM_PCIE0_MAX_LINK_SPEED [ipgui::add_param $IPINST -parent $Page1 -name "CPM_PCIE0_MAX_LINK_SPEED" -layout horizontal]
  set_property display_name "Maximum Link Speed" $CPM_PCIE0_MAX_LINK_SPEED
  set_property enabled true $CPM_PCIE0_MAX_LINK_SPEED
  
  ipgui::add_row $IPINST -parent $Page1
   set axisten_if_width_group [ipgui::add_group $IPINST -parent $Page1 -name axisten_if_width_group]
  set axisten_if_width [ipgui::add_param $IPINST -parent $axisten_if_width_group -name CPM_PCIE0_AXISTEN_IF_WIDTH -widget comboBox]
  set_property display_name "AXI-ST Interface Width " $axisten_if_width_group
  
 set axisten_freq [ipgui::add_param $IPINST -name CPM_PCIE0_USER_CLK_FREQ -parent $Page1 -layout horizontal]
  set_property display_name "AXI-ST Interface Frequency (MHz)" $axisten_freq

  ipgui::add_row $IPINST -parent $Page1
    set AXI_DATA_WIDTH [ipgui::add_param  $IPINST -parent $Page1 -name "CPM_PCIE0_DMA_DATA_WIDTH" -widget comboBox]
    set_property display_name  "AXI Data Width" $AXI_DATA_WIDTH
    set_property tooltip  "Select the AXI Data Width" $AXI_DATA_WIDTH

  ipgui::add_row $IPINST -parent $Page1
  set axisten_if_enable_bridge_slv [ipgui::add_param $IPINST -parent $Page1 -name "CPM_PCIE0_BRIDGE_AXI_SLAVE_IF" -widget checkBox]
  set_property display_name "Enable AXI Slave interface" $axisten_if_enable_bridge_slv
  
  ipgui::add_row $IPINST -parent $Page1
  set axisten_if_enable_client_tag [ipgui::add_param $IPINST -parent $Page1 -name "CPM_PCIE0_AXISTEN_IF_ENABLE_CLIENT_TAG" -widget checkBox]
  
  ipgui::add_row $IPINST -parent $Page1

  set xdma_axi_intf_mm [ipgui::add_param  $IPINST -parent $Page1 -name "CPM_PCIE0_DMA_INTF" -layout horizontal]
  set_property display_name  "DMA Interface option" $xdma_axi_intf_mm
  set_property tooltip  "DMA interface can be either AXI Memory mapped or AXI Stream interface. If AXI Memory Map is selected all channels will be muxed into one interface. If AXI Stream is selected, each channel selected will get AXI Stream interface" $xdma_axi_intf_mm

  ipgui::add_row $IPINST -parent $Page1
  #set xdma_axi_intf_mm_mqdma [ipgui::add_group  $IPINST -parent $AXIPanel1 -name "xdma_axi_intf_mm_mqdma" -layout horizontal]
  #set_property display_name  "DMA Interface option" $xdma_axi_intf_mm_mqdma
  #set en_axi_mm_mqdma [ipgui::add_param $IPINST -parent $xdma_axi_intf_mm_mqdma -name "en_axi_mm_mqdma" -widget checkBox]
  #set_property display_name "AXI Memory Mapped" $en_axi_mm_mqdma
  #set en_axi_st_mqdma [ipgui::add_param $IPINST -parent $xdma_axi_intf_mm_mqdma -name "en_axi_st_mqdma" -widget checkBox]
  #set_property display_name "AXI Stream" $en_axi_st_mqdma

  set xdma_axilite_slave  [ipgui::add_param  $IPINST -parent $Page1 -name "CPM_PCIE0_XDMA_AXILITE_SLAVE_IF" -layout horizontal -widget checkBox]
  set_property display_name "AXI-Lite Slave Interface" $xdma_axilite_slave
  set_property tooltip "User can access DMA registers"  $xdma_axilite_slave

  ipgui::add_row $IPINST -parent $Page1
  
  set alignment_mode [ipgui::add_group $IPINST -parent $Page1 -name alignment_mode]
  set_property display_name "AXI-ST Alignment Mode" $alignment_mode
  
  set AXISTEN_IF_CQ_ALIGNMENT_MODE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE -widget comboBox]
  set_property display_name "AXISTEN CQ/CC Alignment Mode" $AXISTEN_IF_CQ_ALIGNMENT_MODE
  #set_property tooltip "No Example Design support for Address Alignment Mode." $AXISTEN_IF_CQ_ALIGNMENT_MODE
  # set_property tooltip "No Example Design support for Address Alignment Mode." $AXISTEN_IF_CQ_ALIGNMENT_MODE
  set AXISTEN_IF_EXT_512_CQ_STRADDLE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE -widget checkBox]
  set_property display_name "AXI-ST CQ/CC Frame Straddle" $AXISTEN_IF_EXT_512_CQ_STRADDLE
  set AXISTEN_IF_RQ_ALIGNMENT_MODE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_RQ_ALIGNMENT_MODE -widget comboBox]
  set_property display_name "AXISTEN RQ/RC Alignment Mode" $AXISTEN_IF_RQ_ALIGNMENT_MODE
  set_property tooltip "No Example Design support for Address Alignment Mode." $AXISTEN_IF_RQ_ALIGNMENT_MODE
  # set_property tooltip "No Example Design support for Address Alignment Mode." $AXISTEN_IF_RQ_ALIGNMENT_MODE
  set AXISTEN_IF_EXT_512_RQ_STRADDLE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_EXT_512_RQ_STRADDLE -widget checkBox]
  set_property display_name "AXI-ST RQ/RC Frame Straddle" $AXISTEN_IF_EXT_512_RQ_STRADDLE
  set_property visible true $AXISTEN_IF_EXT_512_RQ_STRADDLE
  set AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE -widget checkBox]
  set_property display_name "AXI-ST 512-bit RC 4TLP Straddle" $AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE
  
  set alignment_mode_256b [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_ENABLE_256_TAGS -widget checkBox]
  set_property display_name "AXISTEN Alignment Mode" $alignment_mode_256b
  set AXISTEN_IF_RC_STRADDLE [ipgui::add_param $IPINST -parent $alignment_mode -name CPM_PCIE0_AXISTEN_IF_RC_STRADDLE -widget checkBox]
  set_property display_name "Enable AXI-ST Frame Straddle" $AXISTEN_IF_RC_STRADDLE
  
  set coreclk_freq [ipgui::add_param $IPINST -parent $Page1 -name CPM_PCIE0_CORE_CLK_FREQ -layout horizontal]
  set_property display_name "Core Clock Frequency (MHz)" $coreclk_freq
  
  ipgui::add_row $IPINST -parent $Page1
  
  set panelFreg [ipgui::add_panel $IPINST -name panelFreq -parent $Page1]

  #set enable_ccix [ipgui::add_param $IPINST -parent $panelFreg -name CPM_PCIE0_CCIX_EN -widget checkBox] 
  #set_property display_name "AXIS CCIX Interface" $enable_ccix
  ##set_property visible false $enable_ccix

  #set enable_dvsec [ipgui::add_param $IPINST -parent $panelFreg -name CPM_PCIE0_CCIX_TRANSPORT_PF0_DVSEC_ENABLE -widget checkBox] 
  #set_property display_name "AXIS DVSEC S_AXIS Interface for PF0" $enable_dvsec
  ##set_property visible false $enable_dvsec

  #set enable_dvsec1 [ipgui::add_param $IPINST -parent $panelFreg -name CPM_PCIE0_CCIX_PROTOCOL_PF0_DVSEC_ENABLE -widget checkBox] 
  #set_property display_name "AXIS DVSEC S_AXIS Interface for PF1" $enable_dvsec1
  ##set_property visible false $enable_dvsec1

  #set enable_dvsec2 [ipgui::add_param $IPINST -parent $panelFreg -name CPM_PCIE0_CCIX_PROTOCOL_PF1_DVSEC_ENABLE -widget checkBox] 
  #set_property display_name "AXIS DVSEC S_AXIS Interface for PF2" $enable_dvsec2
  ##set_property visible false $enable_dvsec2

  set REF_CLK_FREQ [ipgui::add_param $IPINST -parent $panelFreg -name "CPM_PCIE0_REF_CLK_FREQ" -widget comboBox]
  set_property display_name "Reference Clock Frequency (MHz)" $REF_CLK_FREQ
  
#  set xlnx_ref_board [ipgui::add_param $IPINST -parent $panelFreg -name xlnx_ref_board -widget comboBox] 
#  set_property display_name "Xilinx Development Board" $xlnx_ref_board
#  set_property visible false $xlnx_ref_board

  set en_parity [ipgui::add_param $IPINST -parent $panelFreg -name "CPM_PCIE0_AXISTEN_IF_TX_PARITY_EN" -widget checkBox]
  set_property display_name "Enable Parity Tx" $en_parity
  set_property tooltip "Enables Parity on Tx/Rx interfaces including MSI-X. Example design do not support parity testing." $en_parity

  set en_parity [ipgui::add_param $IPINST -parent $panelFreg -name "CPM_PCIE0_AXISTEN_IF_RX_PARITY_EN" -widget checkBox]
  set_property display_name "Enable Parity Rx" $en_parity
  set_property tooltip "Enables Parity on Tx/Rx interfaces including MSI-X. Example design do not support parity testing." $en_parity
  
 # set en_pcie_drp [ipgui::add_param $IPINST -parent $panelFreg -name en_pcie_drp -widget checkBox]
 # set_property display_name "PCIe DRP Ports" $en_pcie_drp
 # set_property tooltip "Indicates the PCIe DRP Port interface is enabled." $en_pcie_drp
  
  #ipgui::add_row $IPINST -parent $panelFreg
  #
  #set gen4_eieos_0s7 [ipgui::add_param $IPINST -parent $panelFreg -name gen4_eieos_0s7 -widget checkBox]
  #set_property visible false $gen4_eieos_0s7

  #ipgui::add_row $IPINST -parent $panelFreg

  #set set_finite_credit [ipgui::add_param $IPINST -parent $panelFreg -name set_finite_credit -widget checkBox]
  #set_property visible false $set_finite_credit

  #ipgui::add_row $IPINST -parent $panelFreg

  #set tl_credits_cd [ipgui::add_param $IPINST -parent $panelFreg -name tl_credits_cd -widget checkBox]
  #set_property visible false $tl_credits_cd

  #ipgui::add_row $IPINST -parent $panelFreg

  #set tl_credits_ch [ipgui::add_param $IPINST -parent $panelFreg -name tl_credits_ch -widget checkBox]
  #set_property visible false $tl_credits_ch

  #ipgui::add_row $IPINST -parent $panelFreg

  #set en_ext_ch_gt_drp [ipgui::add_param $IPINST -parent $panelFreg -name en_ext_ch_gt_drp -widget checkBox]
  #set_property display_name "GT Channel DRP" $en_ext_ch_gt_drp
  #set_property tooltip "When checked enables external GT Channel DRP (GTWIZARD)." $en_ext_ch_gt_drp

  #set chckBox_Panel [ipgui::add_panel $IPINST -name chckBox_Panel -parent $Page1]
  #set enbl_pipe_sim [ipgui::add_param $IPINST -parent $chckBox_Panel -name pipe_sim ]
  #set_property display_name "Enable External PIPE Interface" $enbl_pipe_sim
  #set_property tooltip "When checked enables External PIPE Interface" $enbl_pipe_sim
  #
  #set en_transceiver_status_ports [ipgui::add_param $IPINST -parent $chckBox_Panel -name en_transceiver_status_ports]
  #set_property display_name "Additional Transceiver Control and Status Ports" $en_transceiver_status_ports
  #
  #set dis_gt_wizard [ipgui::add_param $IPINST -parent $chckBox_Panel -name dis_gt_wizard]
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set bmd_pio_mode [ipgui::add_param $IPINST -parent $chckBox_Panel -name bmd_pio_mode]
  #ipgui::add_row $IPINST -parent $Page1

  #set enable_code [ipgui::add_param $IPINST -parent $chckBox_Panel -name enable_code]
  #ipgui::add_row $IPINST -parent $Page1

  #set completer_model [ipgui::add_param $IPINST -parent $chckBox_Panel -name completer_model]
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set sriov_exd_mode [ipgui::add_param $IPINST -parent $chckBox_Panel -name sriov_exd_mode]
  #ipgui::add_row $IPINST -parent $Page1 

  #set two_port_switch [ipgui::add_param $IPINST -parent $chckBox_Panel -name two_port_switch]
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set two_port_config [ipgui::add_param $IPINST -parent $chckBox_Panel -name two_port_config]
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set enable_gen4 [ipgui::add_param $IPINST -parent $chckBox_Panel -name enable_gen4]
  #set enable_more_clk [ipgui::add_param $IPINST -parent $chckBox_Panel -name enable_more_clk]
  #set_property visible false $enable_more_clk
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set axisten_if_enable_msg_route [ipgui::add_param $IPINST -parent $chckBox_Panel -name axisten_if_enable_msg_route]
  #ipgui::add_row $IPINST -parent $Page1
  #
  #set chckBox_Panel2 [ipgui::add_panel $IPINST -name chckBox_Panel2 -parent $Page1]
  #set dedicate_perst [ipgui::add_param $IPINST -parent $chckBox_Panel2 -name dedicate_perst]
  #set_property display_name "Use the dedicated PERST routing resources" $dedicate_perst
  #set_property tooltip "Enables sys_reset dedicated routing for the PCIe_X1Y0 block." $dedicate_perst
  #
  #set sys_reset_polarity [ipgui::add_param $IPINST -parent $chckBox_Panel2 -name sys_reset_polarity -widget comboBox]
  #set_property display_name "System reset polarity" $sys_reset_polarity
  #set_property tooltip "Chose the desired reset polarity. An ACTIVE LOW reset should be selected to match the PCIe edge connector reset polarity." $sys_reset_polarity
  
  set mcap_enablement [ipgui::add_param $IPINST -parent $Page1 -name "CPM_PCIE0_MCAP_ENABLE" -widget checkBox]
  set_property display_name "Tandem Configuration or Partial Reconfiguration" $mcap_enablement
  set_property tooltip "Use this selection to enable the available Tandem configuration or Partial Reconfiguration Options." $mcap_enablement 

  # from Create Page 2
  #
  set Page2 [ipgui::add_page $IPINST -name Page2 -layout horizontal -parent $pcie_a0_page]
  set_property display_name "Capabilities" $Page2

    set User_Interrupts_Settings [ipgui::add_group $IPINST -parent $Page2 -name "User_Interrupts_Settings"]
    set_property display_name "User Interrupts" $User_Interrupts_Settings
    set xdma_num_usr_irq  [ipgui::add_param  $IPINST -parent $User_Interrupts_Settings -name CPM_PCIE0_XDMA_IRQ -widget comboBox]
    set_property display_name "Number of User Interrupts Request (1-16)" $xdma_num_usr_irq
    #set_property tooltip "Indicated number of usert interrupts request" $xdma_num_usr_irq`
    #
  ipgui::add_row $IPINST -parent $Page2

  set Physical_enable [ipgui::add_group $IPINST -parent $Page2 -name Physical_enable]
  set_property display_name "Physical Functions" $Physical_enable

  set TL_PF_ENABLE_REG [ipgui::add_param $IPINST -parent $Physical_enable -name CPM_PCIE0_TL_PF_ENABLE_REG -widget comboBox]
  set_property display_name "Total Physical Functions" $TL_PF_ENABLE_REG
  set_property tooltip "Select required physical functions and Example Design supports single function only"  $TL_PF_ENABLE_REG

  ipgui::add_row $IPINST -parent $Page2

  set Device_capabilities_register_grp [ipgui::add_group $IPINST -parent $Page2 -name Device_capabilities_register_grp -layout horizontal]
  set_property display_name "Device Capabilities Register PFx" $Device_capabilities_register_grp
  set pf0_dev_cap_max_payload [ipgui::add_param $IPINST -parent $Device_capabilities_register_grp -name CPM_PCIE0_PF0_DEV_CAP_MAX_PAYLOAD -widget comboBox]
  set_property display_name "PFx Max Payload Size" $pf0_dev_cap_max_payload
  ipgui::add_row $IPINST -parent $Device_capabilities_register_grp
  set extended_tag_field [ipgui::add_param $IPINST -parent $Device_capabilities_register_grp -name CPM_PCIE0_PF0_DEV_CAP_EXT_TAG_EN -widget checkBox]
  set_property display_name "Extended Tag Field" $extended_tag_field
  set PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE [ipgui::add_param $IPINST -parent $Device_capabilities_register_grp -name CPM_PCIE0_PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE -widget checkBox]
  set_property display_name "Function Level Reset" $PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE

  set Link_status_reg [ipgui::add_group $IPINST -parent $Page2 -name Link_status_reg]
  set_property display_name "Link Status Register" $Link_status_reg
  ipgui::add_static_text $IPINST -parent $Link_status_reg -name generate_additional_Link_status_reg_static_text -text "Selects whether the device reference clock is provided by the connector\n(Synchronous) or generated via an onboard PLL(Asynchronous)"
  set PF0_LINK_STATUS_SLOT_CLOCK_CONFIG [ipgui::add_param $IPINST -parent $Link_status_reg -name CPM_PCIE0_PF0_LINK_STATUS_SLOT_CLOCK_CONFIG -widget checkBox]
  set_property display_name "Enable Slot Clock Configuration" $PF0_LINK_STATUS_SLOT_CLOCK_CONFIG
  set_property enabled TRUE $PF0_LINK_STATUS_SLOT_CLOCK_CONFIG
  ipgui::add_row $IPINST -parent $Page2
  
   set chckBox_Panel2 [ipgui::add_panel $IPINST -name chckBox_Panel2 -parent $Page2]
   set MSI_X_OPTIONS [ipgui::add_param $IPINST -parent $chckBox_Panel2 -name CPM_PCIE0_MSI_X_OPTIONS -widget comboBox]
   set_property display_name "MSI-X Options" $MSI_X_OPTIONS
   #ipgui::add_row $IPINST -parent $Page2

  set SRIOV_CAP_ENABLE [ipgui::add_param $IPINST -parent $Page2 -name CPM_PCIE0_SRIOV_CAP_ENABLE -widget checkBox]
  set_property display_name "SRIOV Capability" $SRIOV_CAP_ENABLE

  ipgui::add_row $IPINST -parent $Page2

  #set type1_membase_memlimit_enable [ipgui::add_param $IPINST -parent $Page2 -name type1_membase_memlimit_enable];# -layout horizontal]
  #set_property display_name "Type1 Config MemBase and MemLimit" $type1_membase_memlimit_enable
  #set_property visible false $type1_membase_memlimit_enable
  #set type1_prefetchable_membase_memlimit [ipgui::add_param $IPINST -parent $Page2 -name type1_prefetchable_membase_memlimit];# -layout horizontal]
  #set_property display_name "Type1 Config Prefetchable MemBase and MemLimit" $type1_prefetchable_membase_memlimit
  #set_property visible false $type1_prefetchable_membase_memlimit
  #ipgui::add_row $IPINST -parent $Page2

  set Device_Capabilities_Register_2 [ipgui::add_group $IPINST -parent $Page2 -name Device_Capabilities_Register_2];# -layout horizontal]
  set_property display_name "Device Capabilities Register 2" $Device_Capabilities_Register_2

  set PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT [ipgui::add_param $IPINST -parent $Device_Capabilities_Register_2 -name CPM_PCIE0_PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT -widget checkBox]
  set_property display_name "32-bit AtomicOp Completer Supported" $PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT
  set PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT [ipgui::add_param $IPINST -parent $Device_Capabilities_Register_2 -name CPM_PCIE0_PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT -widget checkBox]
  set_property display_name "64-bit AtomicOp Completer Supported" $PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT

  set PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT [ipgui::add_param $IPINST -parent $Device_Capabilities_Register_2 -name CPM_PCIE0_PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT -widget checkBox]
  set_property display_name "128-bit CAS Completer Supported" $PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT
  set PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT [ipgui::add_param $IPINST -parent $Device_Capabilities_Register_2 -name CPM_PCIE0_PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT -widget checkBox]
  set_property display_name "TPH Completer Supported" $PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT

  #Device specific settings
#  ###### Tool Tips ######
#  set_property tooltip "Specifies the Maximum Payload Size supported for Physical Function 0"  $pf0_dev_cap_max_payload
#  set_property tooltip "This field indicates the maximum supported size of the Tag field as a Requester. Indicates 8-bit Tag field support."  $extended_tag_field
#  set_property tooltip "This checkbox enables Single Root I/O Virtualization. SRIOV is supported with ARI Capability only except for 1PF+7VF Configuration"  $SRIOV_CAP_ENABLE
#  set_property tooltip "This checkbox enables the device to perform Function-Level reset"  $PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE
#  set_property tooltip "This field indicates that the Port uses the same physical reference clock that the platform provides on the connector"  $PF0_LINK_STATUS_SLOT_CLOCK_CONFIG
#  set_property tooltip "Drives value on Device Capabilities2\[7\]"  $PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT
#  set_property tooltip "Drives value on Device Capabilities2\[8\]"  $PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT
#  set_property tooltip "Drives value on Device Capabilities2\[9\]"  $PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT
#  set_property tooltip "Drives value on Device Capabilities2\[13:12\]"  $PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT
#  set_property tooltip "Selects Type1 Config MemoryBase & MemoryLimit Register Enablement"  $type1_membase_memlimit_enable
#  set_property tooltip "Selects Type1 Config Prefetchable MemoryBase & MemoryLimit Register Enablement"  $type1_prefetchable_membase_memlimit  

  #from create page 3

  set Page3 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page3]
  set_property display_name "PF IDs" $Page3


  set pf0_id_grp [ipgui::add_group $IPINST -parent $Page3 -name pf0_id_grp -layout horizontal]
  set_property display_name "PF - ID Initial Values" $pf0_id_grp

  #set pcie_id_if [ipgui::add_param $IPINST -parent $pf0_id_grp -name pcie_id_if]
  #set_property display_name "Enable PCIe-ID Interface" $pcie_id_if
  #set_property tooltip "If this parameter is selected the pcie id ports cfg_vend_id,cfg_subsys_vend_id,cfg_dev_id_pf*,cfg_rev_id_pf*,cfg_subsys_id_pf* will appear at the boundary of core top and available to be driven by external logic. If unselected they do not appear at the top level and will be driven with the values set at time of customization" $pcie_id_if

  #ipgui::add_row $IPINST -parent $pf0_id_grp

  set table4 [ipgui::add_table $IPINST  -name "pf_table_id" -rows "5" -columns "6" -parent $pf0_id_grp -table_header true]

  ipgui::add_static_text  $IPINST -name r0c1_4 -parent $table4 -text "PF#"
  ipgui::add_static_text  $IPINST -name r0c2_4 -parent $table4 -text "Vendor ID"
  ipgui::add_static_text  $IPINST -name r0c3_4 -parent $table4 -text "Device ID"
  ipgui::add_static_text  $IPINST -name r0c4_4 -parent $table4 -text "Revision ID"
  ipgui::add_static_text  $IPINST -name r0c5_4 -parent $table4 -text "Subsystem Vendor ID"
  ipgui::add_static_text  $IPINST -name r0c6_4 -parent $table4 -text "Subsystem ID"

  set_property cell_location 0,0 [ipgui::get_textspec r0c1_4  -of $IPINST]
  set_property cell_location 0,1 [ipgui::get_textspec r0c2_4  -of $IPINST]
  set_property cell_location 0,2 [ipgui::get_textspec r0c3_4  -of $IPINST]
  set_property cell_location 0,3 [ipgui::get_textspec r0c4_4  -of $IPINST]
  set_property cell_location 0,4 [ipgui::get_textspec r0c5_4  -of $IPINST]
  set_property cell_location 0,5 [ipgui::get_textspec r0c6_4  -of $IPINST]

  foreach j {0 1 2 3}  { 
    set row_index [expr $j+1]
    ipgui::add_static_text  $IPINST -name pf${j}_id -parent $table4 -text "PF${j}"
    set_property cell_location $row_index,0 [ipgui::get_textspec pf${j}_id -of $IPINST]

    if {$j == 0} { 
      set vendor_id [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_CFG_VEND_ID]
      ipgui::add_static_text $IPINST -parent $table4 -name vendor_range -text "Range: 0000..FFFF"
      set_property cell_location $row_index,1 $vendor_id 
    } else { 
      set vendor_id_pf [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF${j}_VEND_ID]
      ipgui::add_static_text $IPINST -parent $table4 -name vendor_range -text "Range: 0000..FFFF"
      set_property cell_location $row_index,1  $vendor_id_pf
    }

    set device_id [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF${j}_CFG_DEV_ID]
    ipgui::add_static_text $IPINST -parent $table4 -name device_range -text "Range: 0000..FFFF"
    set_property cell_location $row_index,2 $device_id 

    set revision_id [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF${j}_CFG_REV_ID]
    ipgui::add_static_text $IPINST -parent $table4 -name revision_range -text "Range: 00..FF"
    set_property cell_location $row_index,3 $revision_id 

    if {$j == 0} { 
      set subsystem_vendor_id [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF0_CFG_SUBSYS_VEND_ID]
      ipgui::add_static_text $IPINST -parent $table4 -name subsystemven_range -text "Range: 0000..FFFF"
      set_property cell_location $row_index,4 $subsystem_vendor_id 
    } else { 
      set subsystem_vendor_id_pf [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF${j}_CFG_SUBSYS_VEND_ID]
      ipgui::add_static_text $IPINST -parent $table4 -name subsystemven_range -text "Range: 0000..FFFF"
      set_property cell_location $row_index,4 $subsystem_vendor_id_pf
    }

    set subsystem_id [ipgui::add_param $IPINST -parent $table4 -name CPM_PCIE0_PF${j}_CFG_SUBSYS_ID]
    ipgui::add_static_text $IPINST -parent $table4 -name subsys_range -text "Range: 0000..FFFF"
    set_property cell_location $row_index,5 $subsystem_id 

    set_property tooltip "This value identifies the vendor of the PCI Express device. Vendor ID values are assigned by the PCI-SIG." $vendor_id
    set_property tooltip "This value identifies the PCI Express device. Device ID values are assigned by the vendor of the PCI Express device."  $device_id
    set_property tooltip "This value is used to identify the revision level of a PCI Express device.  If you should later revise your PCI Express device design, update this field."  $revision_id
    set_property tooltip "This value is used to identify the Subsystem ID of a PCI Express device"  $subsystem_id
    set_property tooltip "This value is used to identify the Subsystem Vendor ID of a PCI Express device" $subsystem_vendor_id
  }
  
  set Class_code_lookup_grp [ipgui::add_group $IPINST -parent $Page3 -name Class_code_lookup_grp -layout horizontal]
  set_property display_name "Class Code" $Class_code_lookup_grp

  set table2 [ipgui::add_table $IPINST  -name "pf_table_class_code" -rows "5" -columns "8" -parent $Class_code_lookup_grp -table_header true]
          
  ipgui::add_static_text  $IPINST -name r0c1_2 -parent $table2 -text "PF#"
  ipgui::add_static_text  $IPINST -name r0c2_2 -parent $table2 -text "Use Classcode \n Lookup Assistant"
  ipgui::add_static_text  $IPINST -name r0c3_2 -parent $table2 -text "Base Class \n Menu"
  ipgui::add_static_text  $IPINST -name r0c4_2 -parent $table2 -text "Base Class \n Value"
  ipgui::add_static_text  $IPINST -name r0c5_2 -parent $table2 -text "Subclass \n Interface Menu"
  ipgui::add_static_text  $IPINST -name r0c6_2 -parent $table2 -text "Subclass \n Value"
  ipgui::add_static_text  $IPINST -name r0c7_2 -parent $table2 -text "Interface\n  Value"
  ipgui::add_static_text  $IPINST -name r0c8_2 -parent $table2 -text "Class \n Code"
    
  set_property cell_location 0,0 [ipgui::get_textspec r0c1_2  -of $IPINST]
  set_property cell_location 0,1 [ipgui::get_textspec r0c2_2  -of $IPINST]
  set_property cell_location 0,2 [ipgui::get_textspec r0c3_2  -of $IPINST]
  set_property cell_location 0,3 [ipgui::get_textspec r0c4_2  -of $IPINST]
  set_property cell_location 0,4 [ipgui::get_textspec r0c5_2  -of $IPINST]
  set_property cell_location 0,5 [ipgui::get_textspec r0c6_2  -of $IPINST]
  set_property cell_location 0,6 [ipgui::get_textspec r0c7_2  -of $IPINST]
  set_property cell_location 0,7 [ipgui::get_textspec r0c8_2  -of $IPINST]

  foreach j {0 1 2 3}  { 
    set row_index [expr $j+1]
    ipgui::add_static_text  $IPINST -name pf${j}_num -parent $table2 -text "PF${j}"
    set_property cell_location $row_index,0 [ipgui::get_textspec pf${j}_num -of $IPINST]

    set Lookup_asst [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_USE_CLASS_CODE_LOOKUP_ASSISTANT -widget checkBox]
    set_property cell_location $row_index,1 $Lookup_asst

    set base_class_menu [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_BASE_CLASS_MENU -widget comboBox]
    set_property cell_location $row_index,2 $base_class_menu
            
    set class_code_base [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_BASE_CLASS_VALUE]
    #ipgui::add_dynamic_text $IPINST -parent $table2 -name pf${j}_base_class_value -tclproc "pf0_base_class_value_updated"
    ipgui::add_static_text $IPINST -parent $table2 -name pf${j}_base_class_range -text "Range: 00..FF"
    set_property cell_location $row_index,3 $class_code_base

    set sub_class_interface_menu [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_SUB_CLASS_INTF_MENU -widget comboBox]
    set_property cell_location $row_index,4 $sub_class_interface_menu 
  
    set class_code_sub [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_SUB_CLASS_VALUE]
    #ipgui::add_dynamic_text $IPINST -parent $table2 -name pf${j}_sub_class_value -tclproc "pf0_sub_class_value_updated"
    ipgui::add_static_text $IPINST -parent $table2 -name pf${j}_sub_class_range -text "Range: 00..FF"
    set_property cell_location $row_index,5 $class_code_sub
    set_property display_name "Sub Class Value" $class_code_sub
    
    set class_code_interface [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_INTERFACE_VALUE]
    #ipgui::add_dynamic_text $IPINST -parent $table2 -name pf${j}_interface_value -tclproc "pf0_interface_value_updated"
    ipgui::add_static_text $IPINST -parent $table2 -name pf${j}_interface_range -text "Range: 00..FF"
    set_property cell_location $row_index,6 $class_code_interface
    set_property display_name "Interface Value" $class_code_interface
 
    set CLASS_CODE [ipgui::add_param $IPINST -parent $table2 -name CPM_PCIE0_PF${j}_CLASS_CODE]
    ipgui::add_static_text $IPINST -parent $table2 -name class_range -text "Range: 000000..FFFFFF"
    set_property cell_location $row_index,7 $CLASS_CODE

    ###### Tool Tips ######
    set_property tooltip "This value indicates the general function of a device.  There are three fields.  For a list of values, consult the PCI Local Bus Specification, Revision 3.0 and enter values directly or Use LookUp Assistant Below to retrieve values and enter"  $class_code_base
    set_property tooltip "This value indicates the general function of a device.  There are three fields.  For a list of values, consult the PCI Local Bus Specification, Revision 3.0 and enter values directly or Use LookUp Assistant Below to retrieve values and enter"  $class_code_sub
    set_property tooltip "This value indicates the general function of a device.  There are three fields.  For a list of values, consult the PCI Local Bus Specification, Revision 3.0 and enter values directly or Use LookUp Assistant Below to retrieve values and enter"  $class_code_interface
    set_property tooltip "This value indicates the general function of a device.  The value is a concatenation of the Base Class, Sub-Class, and Interface and forms the Device Class Code"  $CLASS_CODE
    set_property tooltip "Provides the list of possible Base Class options."  $base_class_menu
    set_property tooltip "Provides a list of possible Sub-Class / Interface options for the selected Base Class."  $sub_class_interface_menu
  }

  #from create page 4
  set Page4 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page4 -layout horizontal]
  set_property display_name "PF BARs" $Page4
  set pf0_base_addr_grp $Page4
  ipgui::add_static_text $IPINST -parent $pf0_base_addr_grp -name pf0_base_add_static_txt -text "Base Address Registers (BARs) serve two purposes.  Initially, they serve as a mechanism for the device to request blocks of address space in the system memory\nmap. After the BIOS or OS determines what addresses to assign to the device, the Base Address Registers are programmed with addresses and the device uses \nthis information to perform address decoding."

  foreach j {0 1 2 3} {
    ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    if { $j == 1 } {
      ipgui::add_param $IPINST -name CPM_PCIE0_COPY_PF0_ENABLED -parent $Page4 -display_name "Copy PF0" -widget checkBox
      ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    }
    if {$j == 0} {
      set pf0_option_grp [ipgui::add_group $IPINST -parent $Page4 -name pf${j}_option_grp -display_name "PF${j}" -collapsed false]
    } else { 
      set pf0_option_grp [ipgui::add_group $IPINST -parent $Page4 -name pf${j}_option_grp -display_name "PF${j}" -collapsed true]
    }
    set table [ipgui::add_table $IPINST  -name pf${j}_table -rows "8" -columns "7" -parent $pf0_option_grp -table_header true]

    ipgui::add_static_text  $IPINST -name r${j}c1 -parent $table -text "Bar"
    ipgui::add_static_text  $IPINST -name r${j}c2 -parent $table -text "Type"
    ipgui::add_static_text  $IPINST -name r${j}c3 -parent $table -text "64 bit"
    ipgui::add_static_text  $IPINST -name r${j}c4 -parent $table -text "Prefetchable"
    ipgui::add_static_text  $IPINST -name r${j}c5 -parent $table -text "Size"
    ipgui::add_static_text  $IPINST -name r${j}c6 -parent $table -text "Scale"
    ipgui::add_static_text  $IPINST -name r${j}c7 -parent $table -text "Value (Hex)"

    set_property cell_location 0,0 [ipgui::get_textspec r${j}c1  -of $IPINST]
    set_property cell_location 0,1 [ipgui::get_textspec r${j}c2  -of $IPINST]
    set_property cell_location 0,2 [ipgui::get_textspec r${j}c3  -of $IPINST]
    set_property cell_location 0,3 [ipgui::get_textspec r${j}c4  -of $IPINST]
    set_property cell_location 0,4 [ipgui::get_textspec r${j}c5  -of $IPINST]
    set_property cell_location 0,5 [ipgui::get_textspec r${j}c6  -of $IPINST]
    set_property cell_location 0,6 [ipgui::get_textspec r${j}c7  -of $IPINST]
    ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    foreach i {0 1 2 3 4 5} {
      EvalSubstituting { i j } {
        set row_index [expr $i+1]
        set bar_param [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_ENABLED  -widget checkBox]
        set_property cell_location $row_index,0 $bar_param 
        set pf0_bar$i_type [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_TYPE -widget comboBox]
        set_property cell_location $row_index,1 $pf0_bar$i_type
        if {$i == 0 || $i == 2 || $i == 4 } {
          set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_64BIT -widget checkBox]
          set_property cell_location $row_index,2 $pf0_bar$i_64bit
        } elseif {$i == 1 || $i == 3} {
          set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_64BIT -widget checkBox]
          set_property visible false $pf0_bar$i_64bit
          set_property cell_location $row_index,2 $pf0_bar$i_64bit
        }
        if {$i == 0 || $i == 2 || $i == 4 } {
          set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_PREFETCHABLE -widget checkBox]
          set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
        } elseif {$i == 1 || $i == 3 || $i == 5} { 
          set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_PREFETCHABLE -widget checkBox]
          set_property visible false $pf0_bar$i_prefetchable
          set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
        }
        set pf0_bar$i_scale [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_SIZE -widget comboBox]
        set_property cell_location $row_index,4 $pf0_bar$i_scale
        set pf0_bar$i_size [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF$j_BAR$i_SCALE -widget comboBox]
        set_property cell_location $row_index,5 $pf0_bar$i_size
        ipgui::add_dynamic_text $IPINST -parent $table -name pf$j_Bar$i_Value -tclproc "pf$j_Bar$i_Value_updated"
        set_property cell_location $row_index,6 [ipgui::get_textspec pf$j_Bar${i}_Value -of $IPINST]
        set_property display_border true [ipgui::get_textspec pf$j_Bar${i}_Value -of $IPINST]
      } 0
    }

    set Expansion_rom_bar [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF${j}_EXPANSION_ROM_ENABLED  -widget checkBox]
    set_property cell_location 7,0 $Expansion_rom_bar

    set pf0_expansion_rom_size [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF${j}_EXPANSION_ROM_SIZE -widget comboBox]
    set_property cell_location 7,4 $pf0_expansion_rom_size

    set pf0_expansion_rom_scale [ipgui::add_param $IPINST -parent $table -name CPM_PCIE0_PF${j}_EXPANSION_ROM_SCALE -widget comboBox]
    set_property cell_location 7,5 $pf0_expansion_rom_scale

    ipgui::add_dynamic_text $IPINST -parent $table -name pf${j}_Expansion_Rom_Bar_Value -tclproc "pf${j}_Expansion_Rom_Bar_Value_updated"
    set_property cell_location 7,6 [ipgui::get_textspec pf${j}_Expansion_Rom_Bar_Value -of $IPINST] 
    set_property display_border true [ipgui::get_textspec pf${j}_Expansion_Rom_Bar_Value -of $IPINST]

    ###### Tool Tips PF BAR0######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar0_type
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit. Use of this option disables use of the subsequent BAR."  $pf0_bar0_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar0_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar0_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar0_scale

    ###### Tool Tips PF BAR1######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar1_type
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar1_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar1_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar1_scale

    ###### Tool Tips PF BAR2######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar2_type
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar2_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar2_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar2_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar2_scale

    ###### Tool Tips PF BAR3######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar3_type
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar3_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar3_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar3_scale

    ###### Tool Tips PF BAR4######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar4_type
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar4_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar4_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar4_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar4_scale

    ###### Tool Tips PF BAR5######
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar5_type
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar5_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar5_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar5_size

    ###### Tool Tips PF Expansion R0M######
    set_property tooltip "Enables the Expansion ROM Bar to be used in the design."  $Expansion_rom_bar
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_expansion_rom_size
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_expansion_rom_scale
 }

  addDMAPage $IPINST $pcie_a0_page
  addBridgePage $IPINST $pcie_a0_page
  addQDMAPage $IPINST $pcie_a0_page
 #############
    ############# TAB PCIE0 BARS - Visible only in Functional Mode -> DMA
    #############
 #     set PCIE0_BARS_tab [ipgui::add_page $IPINST -parent $pcie_a0_page -name "PCIE0_BARS" -layout vertical]
 #     set pf0_base_addr_grp $PCIE0_BARS_tab
 #     set_property display_name "PCIe : BARs " $PCIE0_BARS_tab
 # foreach j {0 1 2 3} {
 #         ipgui::add_row $IPINST -parent $pf0_base_addr_grp
 #             if { $j == 1 } {
 #                 ipgui::add_param $IPINST -name CPM_PCIE0_COPY_XDMA_PF0_ENABLED -parent $PCIE0_BARS_tab -display_name "Copy PF0" -widget checkBox
 #                     ipgui::add_row $IPINST -parent $pf0_base_addr_grp
 #             }
 #         if {$j == 0} {
 #             set pf0_option_grp [ipgui::add_group $IPINST -parent $PCIE0_BARS_tab -name pf${j}_option_grp -display_name "PF${j}" -collapsed false]
 #         } else { 
 #             set pf0_option_grp [ipgui::add_group $IPINST -parent $PCIE0_BARS_tab -name pf${j}_option_grp -display_name "PF${j}" -collapsed true]
 #         }

 #         set BAR0_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp -name BAR0_OptionsPanel  -layout horizontal]
 #         set pf0_bar0_option_grp_sup [ipgui::add_group $IPINST -parent $BAR0_OptionsPanel -name bar_0_option_grp_sup -header_param CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -layout horizontal ]
 #         set_property display_name "PCIe to AXI Lite Master Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -of $IPINST]
 #         set_property tooltip "Host access to user logic via AXI-Lite interface" [ipgui::get_guiparamspec  CPM_PCIE0_PF${j}_AXILITE_MASTER_ENABLED -of $IPINST]
 #         ipgui::add_row $IPINST -parent $pf0_bar0_option_grp_sup
 #         set pf0_bar0_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar0_option_grp_sup  -name pf0_bar0_option_grp -layout horizontal]
 #         ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
 #         set axil_master_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_64BIT" -layout horizontal -widget checkBox]
 #         set_property display_name "64bit Enable" $axil_master_64bit_en
 #         set axil_master_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_PREFETCHABLE" -layout horizontal -widget checkBox]
 #         set_property display_name "Prefetchable" $axil_master_prefetchable
 #         ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
 #         set axilite_master_size [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_SIZE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Size" $axilite_master_size
 #         set axilite_master_scale [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_SCALE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Scale" $axilite_master_scale
 #         ipgui::add_row $IPINST -parent $pf0_bar0_option_grp
 #         ipgui::add_static_text  $IPINST -name "axilite_master_value"  -parent  $pf0_bar0_option_grp  -text  "Value"
 #         ipgui::add_dynamic_text $IPINST -parent $pf0_bar0_option_grp -name "axilite_master_value_dynamic"   -tclproc DT_pf${j}_bar_value_axilite_master  -display_border true
 #         ipgui::add_row $IPINST -parent $pf0_bar0_option_grp

 #         set BAR1_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp  -name BAR1_OptionsPanel  -layout horizontal]
 #         set pf0_bar1_option_grp_sup [ipgui::add_group $IPINST -parent $BAR1_OptionsPanel -name bar_1_option_grp_sup -header_param CPM_PCIE0_PF${j}_XDMA_ENABLED -layout horizontal ]
 #         set_property display_name "PCIe to DMA Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_XDMA_ENABLED -of $IPINST]
 #         set_property tooltip "Host access to DMA internal registers" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_XDMA_ENABLED -of $IPINST]
 #         ipgui::add_row $IPINST -parent $pf0_bar1_option_grp_sup
 #         set pf0_bar1_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar1_option_grp_sup  -name pf0_bar1_option_grp -layout horizontal]
 #         ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
 #         set xdma_pcie_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_64BIT" -layout horizontal -widget checkBox]
 #         set_property display_name "64bit Enable" $xdma_pcie_64bit_en
 #         set xdma_pcie_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_PREFETCHABLE" -layout horizontal -widget checkBox]
 #         set_property display_name "Prefetchable" $xdma_pcie_prefetchable
 #         ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
 #         set xdma_size [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_SIZE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Size" $xdma_size
 #         set_property visible false $xdma_size
 #         set xdma_scale [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "CPM_PCIE0_PF${j}_XDMA_SCALE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Scale" $xdma_scale
 #         set_property visible false $xdma_scale
 #         ipgui::add_row $IPINST -parent $pf0_bar1_option_grp
 #         set xdma_value [ipgui::add_static_text  $IPINST -name "xdma_value"  -parent  $pf0_bar1_option_grp  -text  "Value" ]
 #         set_property visible false $xdma_value
 #         set xdma_value1 [ipgui::add_dynamic_text $IPINST -parent $pf0_bar1_option_grp -name "xdma_value_dynamic"   -tclproc DT_pf0_bar_value_xdma  -display_border true]
 #         set_property visible false $xdma_value1
 #         ipgui::add_row $IPINST -parent $pf0_bar1_option_grp

 #         set BAR2_OptionsPanel [ipgui::add_panel $IPINST -parent $pf0_option_grp  -name BAR2_OptionsPanel  -layout horizontal]
 #         set pf0_bar2_option_grp_sup [ipgui::add_group $IPINST -parent $BAR2_OptionsPanel -name bar_2_option_grp_sup -header_param  CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED -layout horizontal ]
 #         set_property display_name "PCIe to DMA Bypass Interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED -of $IPINST]
 #         set_property tooltip "Host access to user logic via AXI Memory Map interface" [ipgui::get_guiparamspec CPM_PCIE0_PF${j}_AXIST_BYPASS_ENABLED  -of $IPINST]
 #         ipgui::add_row $IPINST -parent $pf0_bar2_option_grp_sup
 #         set pf0_bar2_option_grp [ipgui::add_panel $IPINST -parent $pf0_bar2_option_grp_sup  -name pf0_bar2_option_grp -layout horizontal]
 #         ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
 #         set axi_bypass_64bit_en [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_64BIT" -layout horizontal -widget checkBox]
 #         set_property display_name "64bit Enable" $axi_bypass_64bit_en
 #         set axi_bypass_prefetchable [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_PREFETCHABLE" -layout horizontal -widget checkBox]
 #         set_property display_name "Prefetchable" $axi_bypass_prefetchable
 #         ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
 #         set axist_bypass_size [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXILITE_MASTER_SIZE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Size" $axist_bypass_size
 #         set axist_bypass_scale [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_AXIST_BYPASS_SCALE" -layout horizontal -widget comboBox]
 #         set_property display_name  "Scale" $axist_bypass_scale
 #         ipgui::add_row $IPINST -parent $pf0_bar2_option_grp
 #         ipgui::add_static_text  $IPINST -name "axist_bypass_value"  -parent  $pf0_bar2_option_grp  -text  "Value"
 #         ipgui::add_dynamic_text $IPINST -parent $pf0_bar2_option_grp -name "axist_bypass_value_dynamic"   -tclproc DT_pf${j}_bar_value_axist_bypass -display_border true
 #         ipgui::add_row $IPINST -parent $pf0_bar2_option_grp

 #         set  pciebar2axibar_axil_master  [ipgui::add_param  $IPINST -parent $pf0_bar0_option_grp -name "CPM_PCIE0_PF${j}_PCIEBAR2AXIBAR_AXIL_MASTER" -layout horizontal -widget hexEdit]
 #         set_property display_name "PCIe to AXI Translation" $pciebar2axibar_axil_master
 #         set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_axil_master
 #         #set  pciebar2axibar_xdma  [ipgui::add_param  $IPINST -parent $pf0_bar1_option_grp -name "pciebar2axibar_xdma" -layout horizontal -widget hexEdit]
 #         #set_property display_name "PCIe to AXI Translation" $pciebar2axibar_xdma
 #         #set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_xdma
 #         #set_property visible false $pciebar2axibar_xdma
 #         set  pciebar2axibar_axist_bypass  [ipgui::add_param  $IPINST -parent $pf0_bar2_option_grp -name "CPM_PCIE0_PF${j}_PCIEBAR2AXIBAR_AXIST_BYPASS" -layout horizontal -widget hexEdit]
 #         set_property display_name "PCIe to AXI Translation" $pciebar2axibar_axist_bypass
 #         set_property tooltip "PCIe to AXI Address Translation"  $pciebar2axibar_axist_bypass
 # }

    # from create page 5
  set Page5 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page5 -layout horizontal]
  set_property display_name "SRIOV Config" $Page5

  set all_srio_config_grp [ipgui::add_group $IPINST -parent $Page5 -name all_srio_config_grp -layout horizontal]
  set_property display_name "General SRIOV Config" $all_srio_config_grp

  set SRIOV_FIRST_VF_OFFSET [ipgui::add_param $IPINST -parent $all_srio_config_grp -name CPM_PCIE0_SRIOV_FIRST_VF_OFFSET -widget comboBox]
  set_property display_name "First VF Offset" $SRIOV_FIRST_VF_OFFSET
  ipgui::add_row $IPINST -parent $all_srio_config_grp

  ipgui::add_row $IPINST -parent $Page5
  set pf0_srio_config_grp [ipgui::add_group $IPINST -parent $Page5 -name pf0_srio_config_grp -layout horizontal]
  set_property display_name "PF0 SRIOV Config" $pf0_srio_config_grp

  set pf0_sriov_cap_ver [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_CAP_VER -widget textEdit]
  set_property display_name "Cap Version" $pf0_sriov_cap_ver
  ipgui::add_static_text $IPINST -parent $pf0_srio_config_grp -name SRIOV_Cap_Version -text "Range: 0..F"
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp

  set PF0_SRIOV_CAP_INITIAL_VF [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_CAP_INITIAL_VF -widget comboBox]
  set_property display_name "Number of PF0 VF's" $PF0_SRIOV_CAP_INITIAL_VF
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp

  set PF0_SRIOV_FUNC_DEP_LINK [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_FUNC_DEP_LINK]
  set_property display_name "PF Dependency Link" $PF0_SRIOV_FUNC_DEP_LINK
  ipgui::add_static_text $IPINST -parent $pf0_srio_config_grp -name ST1 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp

  set PF0_SRIOV_FIRST_VF_OFFSET [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET -widget comboBox]
  set_property display_name "First VF Offset" $PF0_SRIOV_FIRST_VF_OFFSET
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp

  set PF0_SRIOV_VF_DEVICE_ID [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_VF_DEVICE_ID]
  set_property display_name "VF Device ID" $PF0_SRIOV_VF_DEVICE_ID
  ipgui::add_static_text $IPINST -parent $pf0_srio_config_grp -name ST1 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp
  
  set PF0_SRIOV_SUPPORTED_PAGE_SIZE [ipgui::add_param $IPINST -parent $pf0_srio_config_grp -name CPM_PCIE0_PF0_SRIOV_SUPPORTED_PAGE_SIZE]
  set_property display_name "Supported Page Size" $PF0_SRIOV_SUPPORTED_PAGE_SIZE
  ipgui::add_static_text $IPINST -parent $pf0_srio_config_grp -name ST1 -text "Range: 00000000..FFFFFFFF"
  ipgui::add_row $IPINST -parent $pf0_srio_config_grp

  set pf1_sriov_config_grp [ipgui::add_group $IPINST -parent $Page5 -name pf1_sriov_config_grp -layout horizontal]
  set_property display_name "PF1 SRIOV Config" $pf1_sriov_config_grp

  set PF1_SRIOV_CAP_VER [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_CAP_VER]
  set_property display_name "Cap Version" $PF1_SRIOV_CAP_VER
  ipgui::add_static_text $IPINST -parent $pf1_sriov_config_grp -name SRIOV_Cap_Version -text "Range: 0..F"
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp
  
  set PF1_SRIOV_CAP_INITIAL_VF [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_CAP_INITIAL_VF -widget comboBox]
  set_property display_name "Number of PF1 VF's" $PF1_SRIOV_CAP_INITIAL_VF
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp
  
  set PF1_SRIOV_FUNC_DEP_LINK [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_FUNC_DEP_LINK]
  set_property display_name "PF Dependency Link" $PF1_SRIOV_FUNC_DEP_LINK
  ipgui::add_static_text $IPINST -parent $pf1_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp

  set PF1_SRIOV_FIRST_VF_OFFSET [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_FIRST_VF_OFFSET -widget comboBox]
  set_property display_name "First VF Offset" $PF1_SRIOV_FIRST_VF_OFFSET
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp

  set PF1_SRIOV_VF_DEVICE_ID [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_VF_DEVICE_ID]
  set_property display_name "VF Device ID" $PF1_SRIOV_VF_DEVICE_ID
  ipgui::add_static_text $IPINST -parent $pf1_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp
  
  set PF1_SRIOV_SUPPORTED_PAGE_SIZE [ipgui::add_param $IPINST -parent $pf1_sriov_config_grp -name CPM_PCIE0_PF1_SRIOV_SUPPORTED_PAGE_SIZE]
  set_property display_name "Supported Page Size" $PF1_SRIOV_SUPPORTED_PAGE_SIZE
  ipgui::add_static_text $IPINST -parent $pf1_sriov_config_grp -name ST1 -text "Range: 00000000..FFFFFFFF"
  ipgui::add_row $IPINST -parent $pf1_sriov_config_grp
  
  ipgui::add_row $IPINST -parent $Page5
  set pf2_sriov_config_grp [ipgui::add_group $IPINST -parent $Page5 -name pf2_sriov_config_grp -layout horizontal]
  set_property display_name "PF2 SRIOV Config" $pf2_sriov_config_grp
  
  set PF2_SRIOV_CAP_VER [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_CAP_VER]
  set_property display_name "Cap Version" $PF2_SRIOV_CAP_VER
  ipgui::add_static_text $IPINST -parent $pf2_sriov_config_grp -name SRIOV_Cap_Version -text "Range: 0..F"
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp
  
  set PF2_SRIOV_CAP_INITIAL_VF [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_CAP_INITIAL_VF -widget comboBox]
  set_property display_name "Number of PF2 VF's" $PF2_SRIOV_CAP_INITIAL_VF
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp
  
  set PF2_SRIOV_FUNC_DEP_LINK [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_FUNC_DEP_LINK]
  set_property display_name "PF2 Dependency Link" $PF2_SRIOV_FUNC_DEP_LINK
  ipgui::add_static_text $IPINST -parent $pf2_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp
  
  set PF2_SRIOV_FIRST_VF_OFFSET [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET -widget comboBox]
  set_property display_name "First VF Offset" $PF2_SRIOV_FIRST_VF_OFFSET
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp
  
  set PF2_SRIOV_VF_DEVICE_ID [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_VF_DEVICE_ID]
  set_property display_name "VF Device ID" $PF2_SRIOV_VF_DEVICE_ID
  ipgui::add_static_text $IPINST -parent $pf2_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp
  
  set PF2_SRIOV_SUPPORTED_PAGE_SIZE [ipgui::add_param $IPINST -parent $pf2_sriov_config_grp -name CPM_PCIE0_PF2_SRIOV_SUPPORTED_PAGE_SIZE]
  set_property display_name "Supported Page Size" $PF2_SRIOV_SUPPORTED_PAGE_SIZE
  ipgui::add_static_text $IPINST -parent $pf2_sriov_config_grp -name ST1 -text "Range: 00000000..FFFFFFFF"
  ipgui::add_row $IPINST -parent $pf2_sriov_config_grp

  set pf3_sriov_config_grp [ipgui::add_group $IPINST -parent $Page5 -name pf3_sriov_config_grp -layout horizontal]
  set_property display_name "PF3 SRIOV Config" $pf3_sriov_config_grp

  set PF3_SRIOV_CAP_VER [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_CAP_VER]
  set_property display_name "Cap Version" $PF3_SRIOV_CAP_VER
  ipgui::add_static_text $IPINST -parent $pf3_sriov_config_grp -name SRIOV_Cap_Version -text "Range: 0..F"
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp

  set PF3_SRIOV_CAP_INITIAL_VF [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_CAP_INITIAL_VF -widget comboBox]
  set_property display_name "Number of PF3 VF's" $PF3_SRIOV_CAP_INITIAL_VF
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp
  
  set PF3_SRIOV_FUNC_DEP_LINK [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_FUNC_DEP_LINK]
  set_property display_name "PF Dependency Link" $PF3_SRIOV_FUNC_DEP_LINK
  ipgui::add_static_text $IPINST -parent $pf3_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp
  
  set PF3_SRIOV_FIRST_VF_OFFSET [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET -widget comboBox]
  set_property display_name "First VF Offset" $PF3_SRIOV_FIRST_VF_OFFSET
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp
  
  set PF3_SRIOV_VF_DEVICE_ID [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_VF_DEVICE_ID]
  set_property display_name "VF Device ID" $PF3_SRIOV_VF_DEVICE_ID
  ipgui::add_static_text $IPINST -parent $pf3_sriov_config_grp -name ST2 -text "Range: 0000..FFFF"
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp
  
  set PF3_SRIOV_SUPPORTED_PAGE_SIZE [ipgui::add_param $IPINST -parent $pf3_sriov_config_grp -name CPM_PCIE0_PF3_SRIOV_SUPPORTED_PAGE_SIZE]
  set_property display_name "Supported Page Size" $PF3_SRIOV_SUPPORTED_PAGE_SIZE
  ipgui::add_static_text $IPINST -parent $pf3_sriov_config_grp -name ST1 -text "Range: 00000000..FFFFFFFF"
  ipgui::add_row $IPINST -parent $pf3_sriov_config_grp
  
  ###### Tool Tips ######
  
  set_property tooltip "This value specifies the offset of the first PF with at least one enabled VF. When ARI is enabled, allowed value is 'd4 or 'd64 and total Number of VF in all PFs + this field must not be greater than 256. When ARI is disabled, this field will be set to 1 to support 1PF+7VF non-ARI SRIOV configuration only"  $SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the SRIOV Capability Version for Physical Function 0.  Bits 19:16 of the SRIOV Extended Capability Header"  $pf0_sriov_cap_ver
  set_property tooltip "Specifies the number of Virtual Functions supported by Physical Function 0. Zero indicates no Virtual Functions are supported"  $PF0_SRIOV_CAP_INITIAL_VF
  set_property tooltip "This value specifies the Physical Function Dependency Link for Physical Function 0"  $PF0_SRIOV_FUNC_DEP_LINK
  #set_property tooltip "This value specifies the first Virtual Function Offset.  The Routing IDs are mapped in the range 64-75"  $PF0_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the PF0_SRIOV_FIRST_VF_OFFSET parameter. This field is 0 when no VF is enabled for this PF. This field will be set to 1 when 1PF+7VF non-ARI SRIOV is selected. Otherwise it's automatically set to the First Enabled PF's VF Offset field specified above"  $PF0_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the Device ID that is presented for every VF attached to Physical Function 0"  $PF0_SRIOV_VF_DEVICE_ID
  set_property tooltip "This value specifies the page sizes supported by PF0.  The PF supports a page size of 2^(N+12) if bit N is set. Default value is 0x553 (4KB, 8KB, 64KB, 256KB, 1MB, 4MB supported page size)"  $PF0_SRIOV_SUPPORTED_PAGE_SIZE
  set_property tooltip "This value specifies the SRIOV Capability Version for Physical Function 1.  Bits 19:16 of the SRIOV Extended Capability Header"  $PF1_SRIOV_CAP_VER
  set_property tooltip "Specifies the number of Virtual Functions supported by Physical Function 1. Zero indicates no Virtual Functions are supported"  $PF1_SRIOV_CAP_INITIAL_VF
  set_property tooltip "This value specifies the Physical Function Dependency Link for Physical Function 1"  $PF1_SRIOV_FUNC_DEP_LINK
  #set_property tooltip "This value specifies the first Virtual Function Offset.  The Routing IDs are mapped in the range 64-75"  $PF1_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the PF1_SRIOV_FIRST_VF_OFFSET parameter. This field is 0 when no VF is enabled for this PF. Otherwise it's automatically set to (First Enabled PF's VF Offset + Number of PF0's VFs)"  $PF1_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the Device ID that is presented for every VF to Physical Function 1"  $PF1_SRIOV_VF_DEVICE_ID
  set_property tooltip "This value specifies the page sizes supported by PF1.  The PF supports a page size of 2^(N+12) if bit N is set. Default value is 0x553 (4KB, 8KB, 64KB, 256KB, 1MB, 4MB supported page size)"  $PF1_SRIOV_SUPPORTED_PAGE_SIZE
  set_property tooltip "This value specifies the SRIOV Capability Version for Physical Function 2.  Bits 19:16 of the SRIOV Extended Capability Header"  $PF2_SRIOV_CAP_VER
  set_property tooltip "Specifies the number of Virtual Functions supported by Physical Function 2. Zero indicates no Virtual Functions are supported"  $PF2_SRIOV_CAP_INITIAL_VF
  set_property tooltip "This value specifies the Physical Function Dependency Link for Physical Function 2"  $PF2_SRIOV_FUNC_DEP_LINK
  #set_property tooltip "This value specifies the first Virtual Function Offset.  The Routing IDs are mapped in the range 64-75"  $PF2_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the PF2_SRIOV_FIRST_VF_OFFSET parameter. This field is 0 when no VF is enabled for this PF. Otherwise it's automatically set to (First Enabled PF's VF Offset + Number of PF0's VFs + Number of PF1's VFs)"  $PF2_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the Device ID that is presented for every VF to Physical Function 2"  $PF2_SRIOV_VF_DEVICE_ID
  set_property tooltip "This value specifies the page sizes supported by PF2.  The PF supports a page size of 2^(N+12) if bit N is set. Default value is 0x553 (4KB, 8KB, 64KB, 256KB, 1MB, 4MB supported page size)"  $PF2_SRIOV_SUPPORTED_PAGE_SIZE
  set_property tooltip "This value specifies the SRIOV Capability Version for Physical Function 3.  Bits 19:16 of the SRIOV Extended Capability Header"  $PF3_SRIOV_CAP_VER
  set_property tooltip "Specifies the number of Virtual Functions supported by Physical Function 3. Zero indicates no Virtual Functions are supported"  $PF3_SRIOV_CAP_INITIAL_VF
  set_property tooltip "This value specifies the Physical Function Dependency Link for Physical Function 3"  $PF3_SRIOV_FUNC_DEP_LINK
  #set_property tooltip "This value specifies the first Virtual Function Offset.  The Routing IDs are mapped in the range 64-75"  $PF3_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the PF3_SRIOV_FIRST_VF_OFFSET parameter. This field is 0 when no VF is enabled for this PF. Otherwise it's automatically set to (First Enabled PF's VF Offset + Number of PF0's VFs + Number of PF1's VFs + Number of PF2's VFs)"  $PF3_SRIOV_FIRST_VF_OFFSET
  set_property tooltip "This value specifies the Device ID that is presented for every VF to Physical Function 3"  $PF3_SRIOV_VF_DEVICE_ID
  set_property tooltip "This value specifies the page sizes supported by PF3.  The PF supports a page size of 2^(N+12) if bit N is set. Default value is 0x553 (4KB, 8KB, 64KB, 256KB, 1MB, 4MB supported page size)"  $PF3_SRIOV_SUPPORTED_PAGE_SIZE


  #created from page 6
   set Page6 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page6 -layout horizontal]
  set_property display_name "SRIOV PF BARs" $Page6
  set pf0_base_addr_grp $Page6
  ipgui::add_static_text $IPINST -parent $pf0_base_addr_grp -name pf0_base_add_static_txt -text "Base Address Registers (BARs) serve two purposes.  Initially, they serve as a mechanism for the device to request blocks of address space in the system memory\nmap. After the BIOS or OS determines what addresses to assign to the device, the Base Address Registers are programmed with addresses and the device uses \nthis information to perform address decoding."

  foreach j {0 1 2 3} {
    ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    if { $j == 1 } {
      ipgui::add_param $IPINST -name CPM_PCIE0_COPY_SRIOV_PF0_ENABLED -parent $Page6 -display_name "Copy PF0" -widget checkBox
      ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    }
    if {$j == 0} { 
      set pf0_option_grp [ipgui::add_group $IPINST -parent $Page6 -name pf${j}_sriov_option_grp -display_name "PF${j}" -collapsed false]
    } else { 
      set pf0_option_grp [ipgui::add_group $IPINST -parent $Page6 -name pf${j}_sriov_option_grp -display_name "PF${j}" -collapsed true]
    }
    set table3 [ipgui::add_table $IPINST -name pf${j}_sriov_table -rows "7" -columns "7" -parent $pf0_option_grp -table_header true]

    ipgui::add_static_text  $IPINST -name r${j}c1_3 -parent $table3 -text "Bar"
    ipgui::add_static_text  $IPINST -name r${j}c2_3 -parent $table3 -text "Type"
    ipgui::add_static_text  $IPINST -name r${j}c3_3 -parent $table3 -text "64 bit"
    ipgui::add_static_text  $IPINST -name r${j}c4_3 -parent $table3 -text "Prefetchable"
    ipgui::add_static_text  $IPINST -name r${j}c5_3 -parent $table3 -text "Size"
    ipgui::add_static_text  $IPINST -name r${j}c6_3 -parent $table3 -text "Scale"
    ipgui::add_static_text  $IPINST -name r${j}c7_3 -parent $table3 -text "Value (Hex)"

    set_property cell_location 0,0 [ipgui::get_textspec r${j}c1_3  -of $IPINST]
    set_property cell_location 0,1 [ipgui::get_textspec r${j}c2_3  -of $IPINST]
    set_property cell_location 0,2 [ipgui::get_textspec r${j}c3_3  -of $IPINST]
    set_property cell_location 0,3 [ipgui::get_textspec r${j}c4_3  -of $IPINST]
    set_property cell_location 0,4 [ipgui::get_textspec r${j}c5_3  -of $IPINST]
    set_property cell_location 0,5 [ipgui::get_textspec r${j}c6_3  -of $IPINST]
    set_property cell_location 0,6 [ipgui::get_textspec r${j}c7_3  -of $IPINST]
    ipgui::add_row $IPINST -parent $pf0_base_addr_grp
    foreach i {0 1 2 3 4 5} {
      EvalSubstituting { i j } {
        set row_index [expr $i+1]
        set bar_param [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_ENABLED  -widget checkBox]
        set_property cell_location $row_index,0 $bar_param 
        set pf0_bar$i_type [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_TYPE -widget comboBox]
        set_property cell_location $row_index,1 $pf0_bar$i_type
        if {$i == 0 || $i == 2 || $i == 4} {
          set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_64BIT -widget checkBox]
          set_property cell_location $row_index,2 $pf0_bar$i_64bit
        } elseif { $i == 1 || $i == 3} {
          set pf0_bar$i_64bit [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_64BIT -widget checkBox]
          set_property visible false $pf0_bar$i_64bit
          # set_property value false $pf0_bar$i_64bit
          set_property cell_location $row_index,2 $pf0_bar$i_64bit
        }
        if {$i == 0 || $i == 2 || $i == 4} {
          set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_PREFETCHABLE -widget checkBox]
          set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
        } elseif {$i == 1 || $i == 3 || $i == 5} { 
          set pf0_bar$i_prefetchable [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_PREFETCHABLE -widget checkBox]
          set_property visible false $pf0_bar$i_prefetchable
          set_property cell_location $row_index,3 $pf0_bar$i_prefetchable
        }
        set pf0_bar$i_scale [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_SIZE -widget comboBox]
        set_property cell_location $row_index,4 $pf0_bar$i_scale
        set pf0_bar$i_size [ipgui::add_param $IPINST -parent $table3 -name CPM_PCIE0_PF$j_SRIOV_BAR$i_SCALE -widget comboBox]
        set_property cell_location $row_index,5 $pf0_bar$i_size
        ipgui::add_dynamic_text $IPINST -parent $table3 -name pf$j_sriov_Bar$i_Value -tclproc "pf0_sriov_Bar$i_Value_updated"
        set_property cell_location $row_index,6 [ipgui::get_textspec pf$j_sriov_Bar${i}_Value -of $IPINST]
        set_property display_border true [ipgui::get_textspec pf$j_sriov_Bar${i}_Value -of $IPINST]
      } 0
    }

    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar0_type
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar0_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar0_size
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar0_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar0_prefetchable
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar1_type
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar1_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar1_size
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar1_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar1_prefetchable
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar2_type
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar2_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar2_size
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar2_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar2_prefetchable
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar3_type
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar3_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar3_size
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar3_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar3_prefetchable
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar4_type
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar4_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar4_size
    set_property tooltip "A BAR that is 64-bit permits much larger address space requests and also provides the BIOS or OS more flexibility in address space assignments. Memory BARs must be 64-bit if they are prefetchable, but legacy devices are exempt from this requirement. I/O BARs must always be 32-bit.  Use of this option disables use of the subsequent BAR."  $pf0_bar4_64bit
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar4_prefetchable
    set_property tooltip "A BAR may request either Memory of I/O space. Select the desired type of address space. Most designs use Memory Space. The use of I/O space is discouraged."  $pf0_bar5_type
    set_property tooltip "Selecting this option indicates that the resources accessed in this address space range do not change state when read. For instance, RAM is prefetchable whereas a FIFO generally is not."  $pf0_bar5_prefetchable
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar5_scale
    set_property tooltip "The BAR size indicates how much address space is requested. The minimum size for a Memory BAR is 128 bytes, but sizes smaller than 4 Kbytes are discouraged. In most systems, I/O space is small and fragmented; if you must use an I/O BAR, you are encouraged to use the smallest space possible."  $pf0_bar5_size
  }
 
  # This is from create page 7
  set Page7 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page7]
  set_property display_name "Legacy/MSI Cap" $Page7
  
  set Legacy_Interrupt_Settings_grp [ipgui::add_group $IPINST -parent $Page7 -name Legacy_Interrupt_Settings_grp ]
  set_property display_name "Legacy Interrupt Settings" $Legacy_Interrupt_Settings_grp
  
  set PF0_INTERRUPT_PIN [ipgui::add_param $IPINST -parent $Legacy_Interrupt_Settings_grp -name CPM_PCIE0_PF0_INTERRUPT_PIN -widget comboBox]
  set_property display_name "PF0 Interrupt PIN" $PF0_INTERRUPT_PIN
  set PF1_INTERRUPT_PIN [ipgui::add_param $IPINST -parent $Legacy_Interrupt_Settings_grp -name CPM_PCIE0_PF1_INTERRUPT_PIN -widget comboBox]
  set_property display_name "PF1 Interrupt PIN" $PF1_INTERRUPT_PIN
  set PF2_INTERRUPT_PIN [ipgui::add_param $IPINST -parent $Legacy_Interrupt_Settings_grp -name CPM_PCIE0_PF2_INTERRUPT_PIN -widget comboBox]
  set_property display_name "PF2 Interrupt PIN" $PF2_INTERRUPT_PIN
  set PF3_INTERRUPT_PIN [ipgui::add_param $IPINST -parent $Legacy_Interrupt_Settings_grp -name CPM_PCIE0_PF3_INTERRUPT_PIN -widget comboBox]
  set_property display_name "PF3 Interrupt PIN" $PF3_INTERRUPT_PIN
  
  set MSI_Capabilities_grp [ipgui::add_group $IPINST -parent $Page7 -name MSI_Capabilities_grp -layout horizontal]
  set_property display_name "MSI Capabilities" $MSI_Capabilities_grp
  set_property tooltip "No MSI Capability Is Supported. When MSI-X_Internal(In-Built) Is Selected."  $MSI_Capabilities_grp
  
  set pf0_msi_enabled [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF0_MSI_ENABLED -widget checkBox]
  set_property display_name "Enable PF0 MSI Capability Structure" $pf0_msi_enabled
  ipgui::add_static_text $IPINST -parent $MSI_Capabilities_grp -name blank0 -text "                   "
  set PF0_MSI_CAP_MULTIMSGCAP [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF0_MSI_CAP_MULTIMSGCAP -widget comboBox]
  set_property display_name "PF0 Multiple Message Capable" $PF0_MSI_CAP_MULTIMSGCAP
  ipgui::add_row $IPINST -parent $MSI_Capabilities_grp
  
  set pf1_msi_enabled [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF1_MSI_ENABLED -widget checkBox]
  set_property display_name "Enable PF1 MSI Capability Structure" $pf1_msi_enabled
  ipgui::add_static_text $IPINST -parent $MSI_Capabilities_grp -name blank1 -text "                   "
  set PF1_MSI_CAP_MULTIMSGCAP [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF1_MSI_CAP_MULTIMSGCAP -widget comboBox]
  set_property display_name "PF1 Multiple Message Capable" $PF1_MSI_CAP_MULTIMSGCAP
  ipgui::add_row $IPINST -parent $MSI_Capabilities_grp
  
  set pf2_msi_enabled [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF2_MSI_ENABLED -widget checkBox]
  set_property display_name "Enable PF2 MSI Capability Structure" $pf2_msi_enabled
  ipgui::add_static_text $IPINST -parent $MSI_Capabilities_grp -name blank2 -text "                   "
  set PF2_MSI_CAP_MULTIMSGCAP [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF2_MSI_CAP_MULTIMSGCAP -widget comboBox]
  set_property display_name "PF2 Multiple Message Capable" $PF2_MSI_CAP_MULTIMSGCAP
  ipgui::add_row $IPINST -parent $MSI_Capabilities_grp

  set pf3_msi_enabled [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF3_MSI_ENABLED -widget checkBox]
  set_property display_name "Enable PF3 MSI Capability Structure" $pf3_msi_enabled
  ipgui::add_static_text $IPINST -parent $MSI_Capabilities_grp -name blank3 -text "                   "
  set PF3_MSI_CAP_MULTIMSGCAP [ipgui::add_param $IPINST -parent $MSI_Capabilities_grp -name CPM_PCIE0_PF3_MSI_CAP_MULTIMSGCAP -widget comboBox]
  set_property display_name "PF3 Multiple Message Capable" $PF3_MSI_CAP_MULTIMSGCAP
  ipgui::add_row $IPINST -parent $MSI_Capabilities_grp
  #set en_msi_per_vec_masking [ipgui::add_param $IPINST -name en_msi_per_vec_masking -parent $MSI_Capabilities_grp]
  #set_property display_name "Enable MSI Per Vector Masking" $en_msi_per_vec_masking
  #set_property tooltip "This field enables MSI Per Vector Masking Capability." $en_msi_per_vec_masking
  #
  #ipgui::add_dynamic_text $IPINST -name pf1_SRIOV_BarN_Warning -parent $Page7 -tclproc "pf1_SRIOV_BarN_Warning_updated"
  
  ###### Tool Tips ######
  
  set_property tooltip "Indicates the mapping for legacy interrupt messages. None means no Legacy Interrupts are used"  $PF0_INTERRUPT_PIN
  set_property tooltip "Indicates that the MSI Capability Structure exists."  $pf0_msi_enabled
  set_property tooltip "This field indicates the number of Message-Signaled Interrupt vectors that this endpoint could request. The actual number of vectors that may be created will be set by the host in the Multiple Message Enable field"  $PF0_MSI_CAP_MULTIMSGCAP
  set_property tooltip "Indicates the mapping for legacy interrupt messages. None means no Legacy Interrupts are used"  $PF1_INTERRUPT_PIN
  set_property tooltip "Indicates that the MSI Capability Structure exists"  $pf1_msi_enabled
  set_property tooltip "This field indicates the number of Message-Signaled Interrupt vectors that this endpoint could request. The actual number of vectors that may be created will be set by the host in the Multiple Message Enable field"  $PF1_MSI_CAP_MULTIMSGCAP
  set_property tooltip "Indicates the mapping for legacy interrupt messages. None means no Legacy Interrupts are used"  $PF2_INTERRUPT_PIN
  set_property tooltip "Indicates that the MSI Capability Structure exists"  $pf2_msi_enabled
  set_property tooltip "This field indicates the number of Message-Signaled Interrupt vectors that this endpoint could request. The actual number of vectors that may be created will be set by the host in the Multiple Message Enable field"  $PF2_MSI_CAP_MULTIMSGCAP
  set_property tooltip "Indicates the mapping for legacy interrupt messages. None means no Legacy Interrupts are used"  $PF3_INTERRUPT_PIN
  set_property tooltip "Indicates that the MSI Capability Structure exists"  $pf3_msi_enabled
  set_property tooltip "This field indicates the number of Message-Signaled Interrupt vectors that this endpoint could request. The actual number of vectors that may be created will be set by the host in the Multiple Message Enable field"  $PF3_MSI_CAP_MULTIMSGCAP


  # This is from create page 8
  set Page8 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page8 -layout horizontal]
  set_property display_name "MSI-X Cap" $Page8
  ipgui::add_row $IPINST -parent $Page8

  foreach i {0 1 2 3 } {
    EvalSubstituting { i } {
      set PF$i [ipgui::add_group $IPINST -parent $Page8 -name PF$i]
      if { $i == 1 } {
        ipgui::add_row $IPINST -parent $Page8
      }
      set_property display_name "PF$i" $PF$i
      set pf$i_msix_enabled [ipgui::add_param $IPINST -parent $PF$i -name CPM_PCIE0_PF$i_MSIX_ENABLED -widget checkBox]
      set_property display_name "Enable PF$i MSI-X Capability Structure" $pf$i_msix_enabled
      set MSIx_Table_settings_P$i [ipgui::add_group $IPINST -parent $PF$i -name MSIx_Table_settings_P$i -layout horizontal]
      set_property display_name "MSI-X Table Settings" $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_SIZE [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_PF$i_MSIX_CAP_TABLE_SIZE]
      set_property display_name "Table Size" $PF$i_MSIX_CAP_TABLE_SIZE
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Table_settings_P$i -text "000..7FF"
      ipgui::add_row $IPINST -parent $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_OFFSET [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_PF$i_MSIX_CAP_TABLE_OFFSET]
      set_property display_name "Table Offset" $PF$i_MSIX_CAP_TABLE_OFFSET
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Table_settings_P$i -text "00000000..1FFFFFFF"
      ipgui::add_row $IPINST -parent $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_BIR [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_PF$i_MSIX_CAP_TABLE_BIR -widget comboBox]
      set_property display_name "BAR Indicator" $PF$i_MSIX_CAP_TABLE_BIR
      
      set MSIx_Pending_Bit_Array_grp_$i [ipgui::add_group $IPINST -parent $PF$i -name MSIx_Pending_Bit_Array_grp_$i -layout horizontal]
      set_property display_name "MSI-X Pending Bit Array (PBA) Settings" $MSIx_Pending_Bit_Array_grp_$i
      set PF$i_MSIX_CAP_PBA_OFFSET [ipgui::add_param $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i -name CPM_PCIE0_PF$i_MSIX_CAP_PBA_OFFSET]
      set_property display_name "PBA Offset" $PF$i_MSIX_CAP_PBA_OFFSET
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Pending_Bit_Array_grp_$i -text "00000000..1FFFFFFF"
      ipgui::add_row $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i
      set PF$i_MSIX_CAP_PBA_BIR [ipgui::add_param $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i -name CPM_PCIE0_PF$i_MSIX_CAP_PBA_BIR -widget comboBox]
      set_property display_name "PBA BAR Indicator" $PF$i_MSIX_CAP_PBA_BIR

      ###### Tool Tips ######

      set_property tooltip "Indicates that the MSI-X Capability Structure exists. NOTE: This requires at least one Memory BAR to be configured. When SRIOV Capability is enabled, enabling MSI-X Capability Structure in PF0 will also enable MSI-X Capability Structure in all available PFs and VFs"  $pf$i_msix_enabled
      set_property tooltip "Specifies the MSIx Table size.  The table must be implemented in user logic"  $PF$i_MSIX_CAP_TABLE_SIZE
      set_property tooltip "Specifies the Offset from the Base Address Register that points to the Base of the MSI-X Table"  $PF$i_MSIX_CAP_TABLE_OFFSET
      set_property tooltip "This field indicates the Base Address Register in the Configuration Space that is used to map the function\u2019s MSI-X Table, onto Memory Space"  $PF$i_MSIX_CAP_TABLE_BIR
      set_property tooltip "Specifies the Offset from the Base Address Register that points to the Base of the MSI-X PBA"  $PF$i_MSIX_CAP_PBA_OFFSET
      set_property tooltip "This field indicates the Base Address Register in the Configuration Space that is used to map the function\u2019s MSI-X PBA, onto Memory Space"  $PF$i_MSIX_CAP_PBA_BIR
    } 0
  }

  ipgui::add_row $IPINST -parent $Page8
  foreach i {0 1 2 3 } {
    EvalSubstituting { i } {
      set PF$i [ipgui::add_group $IPINST -parent $Page8 -name VF$i]
      if { $i == 1 } {
        ipgui::add_row $IPINST -parent $Page8
      }
      set_property display_name "VFG$i" $PF$i
      set pf$i_msix_enabled [ipgui::add_param $IPINST -parent $PF$i -name CPM_PCIE0_VFG$i_MSIX_ENABLED -widget checkBox]
      set_property display_name "Enable VFG$i MSI-X Capability Structure" $pf$i_msix_enabled
      set MSIx_Table_settings_P$i [ipgui::add_group $IPINST -parent $PF$i -name MSIx_Table_settings_P$i -layout horizontal]
      set_property display_name "MSI-X Table Settings" $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_SIZE [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_VFG$i_MSIX_CAP_TABLE_SIZE]
      set_property display_name "Table Size" $PF$i_MSIX_CAP_TABLE_SIZE
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Table_settings_P$i -text "000..7FF"
      ipgui::add_row $IPINST -parent $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_OFFSET [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_VFG$i_MSIX_CAP_TABLE_OFFSET]
      set_property display_name "Table Offset" $PF$i_MSIX_CAP_TABLE_OFFSET
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Table_settings_P$i -text "00000000..1FFFFFFF"
      ipgui::add_row $IPINST -parent $MSIx_Table_settings_P$i
      set PF$i_MSIX_CAP_TABLE_BIR [ipgui::add_param $IPINST -parent $MSIx_Table_settings_P$i -name CPM_PCIE0_VFG$i_MSIX_CAP_TABLE_BIR -widget comboBox]
      set_property display_name "BAR Indicator" $PF$i_MSIX_CAP_TABLE_BIR
      
      set MSIx_Pending_Bit_Array_grp_$i [ipgui::add_group $IPINST -parent $PF$i -name MSIx_Pending_Bit_Array_grp_$i -layout horizontal]
      set_property display_name "MSI-X Pending Bit Array (PBA) Settings" $MSIx_Pending_Bit_Array_grp_$i
      set PF$i_MSIX_CAP_PBA_OFFSET [ipgui::add_param $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i -name CPM_PCIE0_VFG$i_MSIX_CAP_PBA_OFFSET]
      set_property display_name "PBA Offset" $PF$i_MSIX_CAP_PBA_OFFSET
      ipgui::add_static_text $IPINST -name ST1 -parent $MSIx_Pending_Bit_Array_grp_$i -text "00000000..1FFFFFFF"
      ipgui::add_row $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i
      set PF$i_MSIX_CAP_PBA_BIR [ipgui::add_param $IPINST -parent $MSIx_Pending_Bit_Array_grp_$i -name CPM_PCIE0_VFG$i_MSIX_CAP_PBA_BIR -widget comboBox]
      set_property display_name "PBA BAR Indicator" $PF$i_MSIX_CAP_PBA_BIR

      ###### Tool Tips ######

      set_property tooltip "Indicates that the MSI-X Capability Structure exists. NOTE: This requires at least one Memory BAR to be configured. When SRIOV Capability is enabled, enabling MSI-X Capability Structure in PF0 will also enable MSI-X Capability Structure in all available PFs and VFs"  $pf$i_msix_enabled
      set_property tooltip "Specifies the MSIx Table size.  The table must be implemented in user logic"  $PF$i_MSIX_CAP_TABLE_SIZE
      set_property tooltip "Specifies the Offset from the Base Address Register that points to the Base of the MSI-X Table"  $PF$i_MSIX_CAP_TABLE_OFFSET
      set_property tooltip "This field indicates the Base Address Register in the Configuration Space that is used to map the function\u2019s MSI-X Table, onto Memory Space"  $PF$i_MSIX_CAP_TABLE_BIR
      set_property tooltip "Specifies the Offset from the Base Address Register that points to the Base of the MSI-X PBA"  $PF$i_MSIX_CAP_PBA_OFFSET
      set_property tooltip "This field indicates the Base Address Register in the Configuration Space that is used to map the function\u2019s MSI-X PBA, onto Memory Space"  $PF$i_MSIX_CAP_PBA_BIR
    } 0
  }

   #this is created from page 9
    set Page9 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page9 ]
  set_property display_name "Adv. Options" $Page9
  set Power_Management_Registers [ipgui::add_group $IPINST -parent $Page9 -name Power_Management_Registers -layout horizontal]
  set_property display_name "Power Management Registers" $Power_Management_Registers
  set PF0_PM_CAP_SUPP_D1_STATE [ipgui::add_param $IPINST -parent $Power_Management_Registers -name CPM_PCIE0_PF0_PM_CAP_SUPP_D1_STATE  -widget checkBox]
  set_property display_name "D1 Support" $PF0_PM_CAP_SUPP_D1_STATE
  ipgui::add_row $IPINST -parent $Power_Management_Registers
  set groupPage9 [ipgui::add_group $IPINST -parent $Power_Management_Registers -name groupPage9 -layout horizontal]
  set_property display_name "PME Support" $groupPage9
  set PF0_PM_CAP_PMESUPPORT_D0 [ipgui::add_param $IPINST -parent $groupPage9 -name CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D0 -widget checkBox]
  set_property display_name "D0" $PF0_PM_CAP_PMESUPPORT_D0
  set PF0_PM_CAP_PMESUPPORT_D1 [ipgui::add_param $IPINST -parent $groupPage9 -name CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D1 -widget checkBox]
  set_property display_name "D1" $PF0_PM_CAP_PMESUPPORT_D1
  set PF0_PM_CAP_PMESUPPORT_D3HOT [ipgui::add_param $IPINST -parent $groupPage9 -name CPM_PCIE0_PF0_PM_CAP_PMESUPPORT_D3HOT -widget checkBox]
  set_property display_name "D3hot" $PF0_PM_CAP_PMESUPPORT_D3HOT
  
  set aspm [ipgui::add_param $IPINST -name CPM_PCIE0_PF0_LINK_CAP_ASPM_SUPPORT -parent $Page9 -widget radioGroup]
  set_property display_name "ASPM Support optionality" $aspm
  set_property tooltip "Indicates ASPM support is Enabled or Disabled" $aspm

  #set l23_entry [ipgui::add_group $IPINST -name l23_entry -parent $Page9 -layout horizontal]
  #set_property display_name "Support PM_L23 Entry" $l23_entry
  #set_property tooltip "When checked supports PM_L23 Entry. PM_ENABLE_L23_ENTRY attribute will be set to TRUE" $l23_entry 
  #set en_l23_entry [ipgui::add_param $IPINST -name en_l23_entry -parent $l23_entry -widget checkBox]
  #set_property display_name "Enable PM_L23 Entry" $en_l23_entry

  
  ###### Tool Tips ######
  
  set_property tooltip "A checked box indicates that this function supports the D1 Power Management State."  $PF0_PM_CAP_SUPP_D1_STATE
  set_property tooltip "A checked box indicates the power states in which the function may assert PME#."  $PF0_PM_CAP_PMESUPPORT_D0
  set_property tooltip "A checked box indicates the power states in which the function may assert PME#."  $PF0_PM_CAP_PMESUPPORT_D1
  set_property tooltip "A checked box indicates the power states in which the function may assert PME#."  $PF0_PM_CAP_PMESUPPORT_D3HOT
  

  
  # This is from create page 10
    set Page10 [ipgui::add_page $IPINST -parent $pcie_a0_page -name Page10 -layout horizontal]
  set_property display_name "Adv. Options-Capbilities" $Page10
  
  set AER_Capabilities [ipgui::add_group $IPINST -parent $Page10 -name AER_Capabilities -layout horizontal]
  set_property display_name "AER Capabilities" $AER_Capabilities
  ipgui::add_static_text $IPINST -parent $AER_Capabilities -name AER_capabil_static_txt -text "The Advanced Error Reporting(AER) Capability is an optional PCIe Extended Capability, which when enabled,allows advanced error control and reporting"
    
  ipgui::add_row $IPINST -parent $AER_Capabilities
  set pf0_aer_enabled [ipgui::add_param $IPINST -parent $AER_Capabilities -name CPM_PCIE0_AER_CAP_ENABLED -widget checkBox]
  set_property display_name "Enable AER Capability (PFx)" $pf0_aer_enabled
  set_property enabled false $pf0_aer_enabled
  set PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE [ipgui::add_param $IPINST -parent $AER_Capabilities -name CPM_PCIE0_PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE -widget checkBox]
  set_property display_name "ECRC Check Capable (PFx)" $PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE
    
  ipgui::add_row $IPINST -parent $Page10
  
  set ARI_Capability [ipgui::add_group $IPINST -parent $Page10 -name ARI_Capability -layout horizontal]
  set_property display_name "ARI Capability" $ARI_Capability
  ipgui::add_static_text $IPINST -parent $ARI_Capability -name ARI_Capa_static_txt -text "The Alternative Routing ID-Interpretation (ARI) Capability is an optional PCIe Extended Capability, which when enabled, allows a device to support up to\n256 functions by reducing the ID from 3 field vector (Bus Number, Device Number, Function Number) to a 2 field vector (Bus Number, Function Number)"

  ipgui::add_row $IPINST -parent $ARI_Capability
  set pf0_ari_enabled [ipgui::add_param $IPINST -parent $ARI_Capability -name CPM_PCIE1_ARI_CAP_ENABLED -widget checkBox]
  set_property display_name "Enable ARI Capability (PFx)" $pf0_ari_enabled

  ipgui::add_row $IPINST -parent $Page10

#  set ATS_Capability [ipgui::add_group $IPINST -parent $Page9 -name ATS_Capability -layout horizontal]
#  set_property display_name "ATS Capability" $ATS_Capability
##  ipgui::add_static_text $IPINST -parent $ARI_Capability -name ARI_Capa_static_txt -text "The Alternative Routing ID-Interpretation (ARI) Capability is an optional PCIe Extended Capability, which when enabled, allows a device to support up to\n256 functions by reducing the ID from 3 field vector (Bus Number, Device Number, Function Number) to a 2 field vector (Bus Number, Function Number)"
#
#  ipgui::add_row $IPINST -parent $ATS_Capability
#  set pf0_ats_enabled [ipgui::add_param $IPINST -parent $ATS_Capability -name pf0_ats_enabled -widget checkBox]
#  set_property display_name "Enable ATS Capability (PFx)" $pf0_ats_enabled
#
#  ipgui::add_row $IPINST -parent $Page9
#
#  set PRI_Capability [ipgui::add_group $IPINST -parent $Page9 -name PRI_Capability -layout horizontal]
#  set_property display_name "PRI Capability" $PRI_Capability
##  ipgui::add_static_text $IPINST -parent $ARI_Capability -name ARI_Capa_static_txt -text "The Alternative Routing ID-Interpretation (ARI) Capability is an optional PCIe Extended Capability, which when enabled, allows a device to support up to\n256 functions by reducing the ID from 3 field vector (Bus Number, Device Number, Function Number) to a 2 field vector (Bus Number, Function Number)"
#
#  ipgui::add_row $IPINST -parent $PRI_Capability
#  set pf0_pri_enabled [ipgui::add_param $IPINST -parent $PRI_Capability -name pf0_pri_enabled -widget checkBox]
#  set_property display_name "Enable PRI Capability (PFx)" $pf0_pri_enabled
#
#  ipgui::add_row $IPINST -parent $Page9
#    
  set Device_Serial_Number_Capability [ipgui::add_group $IPINST -parent $Page10 -name Device_Serial_Number_Capability -layout horizontal]
  set_property display_name "Device Serial Number Capability" $Device_Serial_Number_Capability
  ipgui::add_static_text $IPINST -parent $Device_Serial_Number_Capability -name Device_serial_static_text -text "The Device Serial Number (DSN) Capability is an optional PCIe Extended Capability, that contains a unique Device Serial Number. This identifier must be\npresented on the Device Serial Number Input pin of port."
  ipgui::add_row $IPINST -parent $Device_Serial_Number_Capability
  set pf0_dsn_enabled [ipgui::add_param $IPINST -parent $Device_Serial_Number_Capability -name CPM_PCIE0_PF0_DSN_CAP_ENABLE -widget checkBox]
  set_property display_name "Enable DSN Capability (PFx)" $pf0_dsn_enabled

  ###### Tool Tips ######
  
#  set_property tooltip "The Device Serial Number Capability is an optional capability that contains a 64 bit Device Serial Number value, which is unique for a given PCI Express device. The user application needs to present this value at the Device Serial Number Input pin of this port"  $pf0_dsn_enabled
  set_property tooltip "Indicates the core is capable of checking ECRC"  $PF0_AER_CAP_ECRC_GEN_AND_CHECK_CAPABLE
  set_property tooltip "Enables ARI Capability. SRIOV is supported with ARI Capability only except for 1PF+7VF Configuration"  $pf0_ari_enabled

  #this is from page 11
   # set Page11 [ipgui::add_page $IPINST -parent $IPINST -name Page11]
  #set_property display_name "Adv. Options-3" $Page11

  ipgui::add_row $IPINST -parent $Page10
  
  set TPH_Capability [ipgui::add_group $IPINST -parent $Page10 -name TPH_Capability -layout horizontal]
  set_property display_name "TPH Capability" $TPH_Capability
  ipgui::add_static_text $IPINST -parent $TPH_Capability -name tph_static_txt -text "TLP Processing Hints (TPH) is a feature which facilitates optimization of requests targeting Memory Space. The TLP Processing Hints Capability is required\nfor all functions capable of generating  request TLP's with TPH."
  ipgui::add_row $IPINST -parent $TPH_Capability
  set pf0_tphr_enable [ipgui::add_param $IPINST -parent $TPH_Capability -name CPM_PCIE0_PF0_TPHR_CAP_ENABLE -widget checkBox]
  set_property display_name "Enable TPH Capability (PFx)" $pf0_tphr_enable
  ipgui::add_row $IPINST -parent $TPH_Capability

  ipgui::add_row $IPINST -parent $Page10
  
  set Virtual_Channel_Capability [ipgui::add_group $IPINST -parent $Page10 -name Virtual_Channel_Capability]
  set_property display_name "Virtual Channel Capability" $Virtual_Channel_Capability
  ipgui::add_static_text $IPINST -parent $Virtual_Channel_Capability -name Virtual_channel_static_txt -text "The Virtual Channel (VC) Capability is an optional PCIe Extended Capability, which when enabled, allows the port to support functionality beyond the\ndefault Traffic Class (TCx) over the default Virtual Channel (VCx). Checking this allows Traffic Class (TC) filtering to be supported"
  set pf0_vc_cap_enabled [ipgui::add_param $IPINST -parent $Virtual_Channel_Capability -name CPM_PCIE0_PF0_VC_CAP_ENABLED -widget checkBox]
  set_property display_name "Enable VC Capability (PFx)" $pf0_vc_cap_enabled

  ipgui::add_row $IPINST -parent $Page10
  
  set User_Defined_Configuration_grp [ipgui::add_group $IPINST -parent $Page10 -name User_Defined_Configuration_grp]
  set_property display_name "User Defined Configuration Capabilities" $User_Defined_Configuration_grp
  set ext_pcie_cfg_space_enabled [ipgui::add_param $IPINST -parent $User_Defined_Configuration_grp -name CPM_PCIE0_EXT_PCIE_CFG_SPACE_ENABLED -widget checkBox]
  set_property display_name "PCI Express Extended Configuration Space Enable" $ext_pcie_cfg_space_enabled
  set legacy_ext_pcie_cfg_space_enabled [ipgui::add_param $IPINST -parent $User_Defined_Configuration_grp -name CPM_PCIE0_LEGACY_EXT_PCIE_CFG_SPACE_ENABLED -widget checkBox]
  set_property display_name "PCI Express Legacy Extended Configuration Space Enable" $legacy_ext_pcie_cfg_space_enabled

  ###### Tool Tips ######
  set_property tooltip "The UltraScale+ Integrated Block for PCI Express allows the client application to implement user defined capabilities from 0xE80-0xfff. When enabled, all received Configuration Type0 Requests targeting this range will be transmitted to the client application. When disabled, the core will generate completions internally with a payload of 32\u2019h0. This feature applies to every enabled function"  $ext_pcie_cfg_space_enabled
  set_property tooltip "The Virtual Channel Capability is an optional PCIe Extended capability which allows the User Application to operates in a TCn / VC0 mode"  $pf0_vc_cap_enabled


} 

set dynamic_textValues {

  proc pf<<k>>_Bar<<i>>_Value_updated {IPINST PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_TYPE PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_PREFETCHABLE PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_64BIT PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_SCALE PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<j>>_SCALE PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<j>>_SIZE  PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_ENABLED PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_SIZE} {
    set Bar_Enabled ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_ENABLED}
    set Bar_Type ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_TYPE}
    if {<<i>> != 5} { 
      set Bar_64bit ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_64BIT}
    }
    set Bar_Prefetchable ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_PREFETCHABLE}
    set Bar_Scale ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_SCALE}
    set Bar_Size ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_BAR<<i>>_SIZE}

    if {[expr {[get_property value   ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}  ] eq "Root_Port_of_PCI_Express_Root_Complex"}]} {
      if { <<i>> == 2 } {
        return "00FF00FF"
      } elseif { <<i>> == 4} {
        return "FF00FF00"
      } 
    }
    set value [expr {(([get_property value   $Bar_Type  ] eq "I/O")?1:0) | (([get_property value   $Bar_Prefetchable  ] == 1)?8:0) } ]

    if { <<i>> != 5} {
      set value [expr { $value | (([get_property value $Bar_64bit  ] == 1)?4:0) } ]
    } else {
      set value 0
    }

    set size [lsearch {Bytes Kilobytes Megabytes Gigabytes Terabytes Petabytes Exabytes} [get_property value   $Bar_Scale  ]]
    set size [expr "($size*10)+[lsearch {1 2 4 8 16 32 64 128 256 512} [get_property value   $Bar_Size  ]]"]

    if {<<i>> != 5 } { 
      if {[get_property value $Bar_64bit] == 1} { 
        if { [get_property value   $Bar_Enabled  ] == 1 } {
          set value [expr "(0xFFFFFFFFFFFFFFFF << $size) & 0xFFFFFFFFFFFFFFF0 | $value"]
#         send_msg INFO 1 "value2= $value" 
          return "[format %16X $value]"
	} else {
          return "0000000000000000"
	}
      } else { 
        if { [get_property value $Bar_Enabled] == 1 } {
          set value [expr "(0xFFFFFFFF << $size) & 0xFFFFFFF0 | $value"]
          return "[format %08X $value]"
        } else {
          return "00000000"
        }
      }
    } else { 
      if { [get_property value $Bar_Enabled] == 1 } {
        set value [expr "(0xFFFFFFFF << $size) & 0xFFFFFFF0 | $value"]
        return "[format %08X $value]"
      } else {
        return "00000000"
      }
    }


  }
  proc pf<<k>>_sriov_Bar<<i>>_Value_updated {IPINST PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_TYPE PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_PREFETCHABLE PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_64BIT PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_SCALE PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_SIZE PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_ENABLED } {

    set Bar_Size ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_SIZE} 
    set Bar_Enabled ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_ENABLED}
    set Bar_Type ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_TYPE}

    if {<<i>> != 5} { 
      set Bar_64bit ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_64BIT}
    }

    set Bar_Prefetchable ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_PREFETCHABLE}
    set Bar_Scale ${PARAM_VALUE.CPM_PCIE0_PF<<k>>_SRIOV_BAR<<i>>_SCALE}
 
    if {[expr {[get_property value   ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}  ] eq "Root_Port_of_PCI_Express_Root_Complex"}]} {
      if { <<i>> == 2 } {
        return "00FF00FF"
      } elseif { <<i>> == 4} {
        return "FF00FF00"
      }
    }
 
    set value [expr {(([get_property value   $Bar_Type  ] eq "IO")?1:0) | (([get_property value   $Bar_Prefetchable  ] == true)?8:0) } ]
    if { <<i>> != 5} {
      set value [expr { $value | (([get_property value   $Bar_64bit  ] == true)?4:0) } ]
    } else { 
      set value 0
    } 
 
    set size [lsearch {Bytes Kilobytes Megabytes Gigabytes Terabytes Petabytes Exabytes} [get_property value   $Bar_Scale  ]]
    set size [expr "($size*10)+[lsearch {1 2 4 8 16 32 64 128 256 512} [get_property value   $Bar_Size  ]]"]

    if {<<i>> != 5} { 
      if {[get_property value $Bar_64bit] == true} { 
        if { [get_property value   $Bar_Enabled  ] == true } {
          set value [expr "(0xFFFFFFFFFFFFFFFF << $size) & 0xFFFFFFFFFFFFFFF0 | $value"]
  #       send_msg INFO 1 "value2= $value" 
          return "[format %16X $value]"
        } else {
          return "0000000000000000"
        }
      } else { 
#       send_msg INFO 1 "value1= $value" 
        if { [get_property value   $Bar_Enabled  ] == true } {
          set value [expr "(0xFFFFFFFF << $size) & 0xFFFFFFF0 | $value"]
          return "[format %08X $value]"
        } else {
          return "00000000"
        }
      }
   } else { 
     if { [get_property value   $Bar_Enabled  ] == true } {
       set value [expr "(0xFFFFFFFF << $size) & 0xFFFFFFF0 | $value"]
       return "[format %08X $value]"
     } else {
       return "00000000"
     }
   }
 }
  

}
 
foreach k {0 1 2 3} {
  foreach i {0 1 2 3 4 5} {
    set OutString [regsub -all "<<i>>" $dynamic_textValues $i]
    set OutString2 [regsub -all "<<k>>" $OutString $k]
    uplevel 0 $OutString2
  }
}


foreach i {0 1 2 3} {
  EvalSubstituting {i} {
    proc pf$i_Expansion_Rom_Bar_Value_updated {IPINST PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_ENABLED PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_SCALE PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_SIZE} {
      if { [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_ENABLED}  ] } {
        set size [lsearch {Bytes Kilobytes Megabytes Gigabytes Terabytes Petabytes Exabytes} [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_SCALE}  ]]
        set size [expr "($size*10)+[lsearch {1 2 4 8 16 32 64 128 256 512} [get_property value ${PARAM_VALUE.CPM_PCIE0_PF$i_EXPANSION_ROM_SIZE}  ]]"]
        set value [expr "(0xFFFFFFFF << $size) & 0xFFFFFFF0 | 1"]
        return "[format %08X $value]"
      } else {
        return "00000000"
      }
    } ;# end pf$i_Expansion_Rom_Bar_Value_updated
  } 0
}

proc CPM_USE_MODES_DYN { IPINST PARAM_VALUE.CPM_USE_MODES } {

    if {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "None"} {
      return "Please select appropriate CPM Use case"
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_Streaming"} {
        set text_dyn "PCIe Controller A0 shall be enabled with x16 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_endpoint_Accelarator.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_Streaming"} {
        set text_dyn "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_endpoint_Accelarator.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Root_Port_DMA"} {
        set text_dyn "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_DMA_CPM.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_DMA"} {
        set text_dyn "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width"
      set image_path "xgui/images/usecase1.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_DMA"} {
        return "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_DMA.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_CCIX"} {
        set text_dyn "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_CCIX.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_CCIX"} {
        set text_dyn "PCIe Controller A0 and A1 shall be enabled with x8 as default lane width. There will be AXI4-S interfaces between CPM and PL"
      set image_path "xgui/images/PCIe_CCIX.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    }
    return $text_dyn 
}

proc update_gui_for_PARAM_VALUE.CPM_USE_MODES { IPINST PARAM_VALUE.CPM_USE_MODES } {
      set image_path "xgui/images/PCIe_endpoint_Accelarator.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    if {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "None"} {
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_Streaming"} {
      set image_path "xgui/images/PCIe_endpoint_Accelarator.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_Streaming"} {
      set image_path "xgui/images/PCIe_endpoint_Accelarator.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Root_Port_DMA"} {
      set image_path "xgui/images/PCIe_DMA_CPM.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_DMA"} {
      set image_path "xgui/images/usecase1.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_DMA"} {
      set image_path "xgui/images/PCIe_DMA.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Single_Port_CCIX"} {
      set image_path "xgui/images/PCIe_CCIX.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } elseif {[get_property value ${PARAM_VALUE.CPM_USE_MODES}] == "Dual_Port_CCIX"} {
      set image_path "xgui/images/PCIe_CCIX.JPG" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    } else {
      set image_path "" 
      set_property load_image $image_path [ipgui::get_imagespec CPMUsecase -of $IPINST]
    }
  
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG { PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS IPINST } {
  set Label_PF1_Table_PBA_Settings [ipgui::get_groupspec -name PF1 -of $IPINST]
  set Label_PF2_Table_PBA_Settings [ipgui::get_groupspec -name PF2 -of $IPINST]
  set Label_PF3_Table_PBA_Settings [ipgui::get_groupspec -name PF3 -of $IPINST]
  set Label_VFG1_Table_PBA_Settings [ipgui::get_groupspec -name VF1 -of $IPINST]
  set Label_VFG2_Table_PBA_Settings [ipgui::get_groupspec -name VF2 -of $IPINST]
  set Label_VFG3_Table_PBA_Settings [ipgui::get_groupspec -name VF3 -of $IPINST]
  set PF1 [ipgui::get_groupspec -name pf1_option_grp -of $IPINST]
  set PF2 [ipgui::get_groupspec -name pf2_option_grp -of $IPINST]
  set PF3 [ipgui::get_groupspec -name pf3_option_grp -of $IPINST]
  set DMA_PF1 [ipgui::get_groupspec -name dma_pf1_option_grp -of $IPINST]
  set DMA_PF2 [ipgui::get_groupspec -name dma_pf2_option_grp -of $IPINST]
  set DMA_PF3 [ipgui::get_groupspec -name dma_pf3_option_grp -of $IPINST]
  set SRIOV_PF1 [ipgui::get_groupspec -name pf1_sriov_option_grp -of $IPINST]
  set SRIOV_PF2 [ipgui::get_groupspec -name pf2_sriov_option_grp -of $IPINST]
  set SRIOV_PF3 [ipgui::get_groupspec -name pf3_sriov_option_grp -of $IPINST]
  set copy_pf0 [ipgui::get_guiparamspec CPM_PCIE0_COPY_PF0_ENABLED -of $IPINST]
  set copy_dma_pf0 [ipgui::get_guiparamspec CPM_PCIE0_COPY_XDMA_PF0_ENABLED -of $IPINST]
  set SRIOV_PF1_CFG [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  set SRIOV_PF2_CFG [ipgui::get_groupspec -name pf2_sriov_config_grp -of $IPINST]
  set SRIOV_PF3_CFG [ipgui::get_groupspec -name pf3_sriov_config_grp -of $IPINST]
  set copy_sriov_pf0 [ipgui::get_guiparamspec CPM_PCIE0_COPY_SRIOV_PF0_ENABLED -of $IPINST]
  set msi_cap_multmsg_pf3 [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSI_CAP_MULTIMSGCAP -of $IPINST]
  set msi_cap_multmsg_pf2 [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSI_CAP_MULTIMSGCAP -of $IPINST]
  set msi_cap_multmsg_pf1 [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSI_CAP_MULTIMSGCAP -of $IPINST]
  set msi_cap_multmsg_pf0 [ipgui::get_guiparamspec CPM_PCIE0_PF0_MSI_CAP_MULTIMSGCAP -of $IPINST]
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
    set_property hidden_rows "" [ipgui::get_tablespec pf_table_class_code -of $IPINST]
    set_property hidden_rows "" [ipgui::get_tablespec pf_table_id -of $IPINST]
    set_property visible true   $PF1
    set_property visible true   $PF2
    set_property visible true   $PF3
    set_property visible true   $DMA_PF1
    set_property visible true   $DMA_PF2
    set_property visible true   $DMA_PF3
    set_property visible true   $copy_pf0
    set_property visible true   $copy_dma_pf0
    set_property visible true   $SRIOV_PF1
    set_property visible true   $SRIOV_PF2
    set_property visible true   $SRIOV_PF3
    set_property visible true   $SRIOV_PF1_CFG
    set_property visible true   $SRIOV_PF2_CFG
    set_property visible true   $SRIOV_PF3_CFG
    set_property visible true   $copy_sriov_pf0
    set_property visible true   $Label_PF1_Table_PBA_Settings
    set_property visible true   $Label_PF2_Table_PBA_Settings
    set_property visible true   $Label_PF3_Table_PBA_Settings
    set_property visible true   $Label_VFG1_Table_PBA_Settings
    set_property visible true   $Label_VFG2_Table_PBA_Settings
    set_property visible true   $Label_VFG3_Table_PBA_Settings
    set_property visible true   $msi_cap_multmsg_pf3
    set_property visible true   $msi_cap_multmsg_pf2
    set_property visible true   $msi_cap_multmsg_pf1
    set_property visible true   $msi_cap_multmsg_pf0
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3} {
    set_property hidden_rows "4" [ipgui::get_tablespec pf_table_class_code -of $IPINST]
    set_property hidden_rows "4" [ipgui::get_tablespec pf_table_id -of $IPINST]
    set_property visible true  $PF1
    set_property visible true  $PF2
    set_property visible false $PF3
    set_property visible true  $DMA_PF1
    set_property visible true  $DMA_PF2
    set_property visible false $DMA_PF3
    set_property visible true  $copy_pf0
    set_property visible true  $copy_dma_pf0
    set_property visible true  $SRIOV_PF1
    set_property visible true  $SRIOV_PF2
    set_property visible false $SRIOV_PF3
    set_property visible true  $SRIOV_PF1_CFG
    set_property visible true  $SRIOV_PF2_CFG
    set_property visible false $SRIOV_PF3_CFG
    set_property visible true  $copy_sriov_pf0
    set_property visible true  $Label_PF1_Table_PBA_Settings
    set_property visible true  $Label_PF2_Table_PBA_Settings
    set_property visible false $Label_PF3_Table_PBA_Settings
    set_property visible true  $Label_VFG1_Table_PBA_Settings
    set_property visible true  $Label_VFG2_Table_PBA_Settings
    set_property visible false $Label_VFG3_Table_PBA_Settings
    set_property visible false $msi_cap_multmsg_pf3
    set_property visible true  $msi_cap_multmsg_pf2
    set_property visible true  $msi_cap_multmsg_pf1
    set_property visible true  $msi_cap_multmsg_pf0
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2} {
    set_property hidden_rows "3,4" [ipgui::get_tablespec pf_table_class_code -of $IPINST]
    set_property hidden_rows "3,4" [ipgui::get_tablespec pf_table_id -of $IPINST]
    set_property visible true  $PF1
    set_property visible false $PF2
    set_property visible false $PF3
    set_property visible true  $DMA_PF1
    set_property visible false $DMA_PF2
    set_property visible false $DMA_PF3
    set_property visible true  $copy_pf0
    set_property visible true  $copy_dma_pf0
    set_property visible true  $SRIOV_PF1
    set_property visible false $SRIOV_PF2
    set_property visible false $SRIOV_PF3
    set_property visible true  $SRIOV_PF1_CFG
    set_property visible false $SRIOV_PF2_CFG
    set_property visible false $SRIOV_PF3_CFG
    set_property visible true  $copy_sriov_pf0
    set_property visible true  $Label_PF1_Table_PBA_Settings
    set_property visible false $Label_PF2_Table_PBA_Settings
    set_property visible false $Label_PF3_Table_PBA_Settings
    set_property visible true  $Label_VFG1_Table_PBA_Settings
    set_property visible false $Label_VFG2_Table_PBA_Settings
    set_property visible false $Label_VFG3_Table_PBA_Settings
    set_property visible false $msi_cap_multmsg_pf3
    set_property visible false $msi_cap_multmsg_pf2
    set_property visible true  $msi_cap_multmsg_pf1
    set_property visible true  $msi_cap_multmsg_pf0
  } else {
    set_property hidden_rows "2,3,4" [ipgui::get_tablespec pf_table_class_code -of $IPINST]
    set_property hidden_rows "2,3,4" [ipgui::get_tablespec pf_table_id -of $IPINST]
    set_property visible false  $PF1
    set_property visible false  $PF2
    set_property visible false  $PF3
    set_property visible false  $DMA_PF1
    set_property visible false  $DMA_PF2
    set_property visible false  $DMA_PF3
    set_property visible false  $copy_pf0
    set_property visible false   $copy_dma_pf0
    set_property visible false  $SRIOV_PF1
    set_property visible false  $SRIOV_PF2
    set_property visible false  $SRIOV_PF3
    set_property visible false  $SRIOV_PF1_CFG
    set_property visible false  $SRIOV_PF2_CFG
    set_property visible false  $SRIOV_PF3_CFG
    set_property visible false  $copy_sriov_pf0
    set_property visible false  $Label_PF1_Table_PBA_Settings
    set_property visible false  $Label_PF2_Table_PBA_Settings
    set_property visible false  $Label_PF3_Table_PBA_Settings
    set_property visible false  $Label_VFG1_Table_PBA_Settings
    set_property visible false  $Label_VFG2_Table_PBA_Settings
    set_property visible false  $Label_VFG3_Table_PBA_Settings
    set_property visible false  $Label_PF3_Table_PBA_Settings
    set_property visible false  $msi_cap_multmsg_pf3
    set_property visible false  $msi_cap_multmsg_pf2
    set_property visible false  $msi_cap_multmsg_pf1
    set_property visible true   $msi_cap_multmsg_pf0
  }


  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF2_INTERRUPT_PIN -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF2_INTERRUPT_PIN -of $IPINST]
  } 

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF3_INTERRUPT_PIN -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF3_INTERRUPT_PIN -of $IPINST]
  } 

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF1_INTERRUPT_PIN -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF1_INTERRUPT_PIN -of $IPINST]
  } 


 if {[get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}]} {
 } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "MSI-X_Internal" && ([get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4)} {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSI_ENABLED -of $IPINST]
 } elseif { [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSI_ENABLED -of $IPINST]
 } else {
   set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSI_ENABLED -of $IPINST]
 }


 if {[get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}]} {
 } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "MSI-X_Internal" && ([get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4)} {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSI_ENABLED -of $IPINST]
 } elseif { [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSI_ENABLED -of $IPINST]
 } else {
   set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSI_ENABLED -of $IPINST]
 } 

 set pf3_msi_enabled [ipgui::get_guiparamspec -name CPM_PCIE0_PF3_MSI_ENABLED -of $IPINST] 
   if {[get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}]} {
 } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "MSI-X_Internal" && [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSI_ENABLED -of $IPINST]
 } elseif { [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
   set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSI_ENABLED -of $IPINST]
 } else {
   set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSI_ENABLED -of $IPINST]
 } 


  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSIX_ENABLED -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF1_MSIX_ENABLED  -of $IPINST]
  } 
  

    if {[get_property value  ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 || [get_property value  ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSIX_ENABLED -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF2_MSIX_ENABLED -of $IPINST]
  } 
    if {[get_property value  ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4} {
    set_property visible true [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSIX_ENABLED -of $IPINST]
  } else {
    set_property visible false [ipgui::get_guiparamspec CPM_PCIE0_PF3_MSIX_ENABLED -of $IPINST]
  } 

}
proc update_gui_for_PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE { PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_RQ_ALIGNMENT_MODE IPINST} {
# Procedure called to update AXISTEN_IF_EXT_512_CQ_STRADDLE when any of the dependent parameters in the arguments change
    set AXISTEN_IF_EXT_512_CQ_STRADDLE [ipgui::get_guiparamspec CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE -of $IPINST]

        if {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH} ] == "512"} {
            if {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE}] == "DWORD_Aligned"} {
                set_property visible true $AXISTEN_IF_EXT_512_CQ_STRADDLE
            } else {
                set_property visible true $AXISTEN_IF_EXT_512_CQ_STRADDLE
            }
        } else {
            set_property visible false $AXISTEN_IF_EXT_512_CQ_STRADDLE
        } 
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH {PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_EXT_512_RQ_STRADDLE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_EXT_512_RC_STRADDLE PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_RQ_ALIGNMENT_MODE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE IPINST} {
# Procedure called to update AXISTEN_IF_EXT_512_RC_4TLP_STRADDLE when any of the dependent parameters in the arguments change
    set AXISTEN_IF_EXT_512_RQ_STRADDLE [ipgui::get_guiparamspec CPM_PCIE0_AXISTEN_IF_EXT_512_RQ_STRADDLE -of $IPINST]

        if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH} ] == "512"} {
            set_property visible true $AXISTEN_IF_EXT_512_RQ_STRADDLE
        } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH} ] == "512"} {
            if {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_RQ_ALIGNMENT_MODE}] == "DWORD_Aligned"} {
                set_property visible true $AXISTEN_IF_EXT_512_RQ_STRADDLE
            } else {
                set_property visible true $AXISTEN_IF_EXT_512_RQ_STRADDLE
            }
        } else {
            set_property visible false $AXISTEN_IF_EXT_512_RQ_STRADDLE
        }

    set AXISTEN_IF_EXT_512_CQ_STRADDLE [ipgui::get_guiparamspec CPM_PCIE0_AXISTEN_IF_EXT_512_CQ_STRADDLE -of $IPINST]

        if {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH} ] == "512"} {
            if {[get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_CQ_ALIGNMENT_MODE}] == "DWORD_Aligned"} {
                set_property visible true $AXISTEN_IF_EXT_512_CQ_STRADDLE
            } else {
                set_property visible true $AXISTEN_IF_EXT_512_CQ_STRADDLE
            }
        } else {
            set_property visible false $AXISTEN_IF_EXT_512_CQ_STRADDLE
        } 
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_RC_STRADDLE {PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_RC_STRADDLE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH IPINST} {

    set rc_256b_strdle [ipgui::get_guiparamspec CPM_PCIE0_AXISTEN_IF_RC_STRADDLE -of $IPINST]
        set axisten_width [get_property value ${PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_WIDTH}]

        if {$axisten_width == "256"} {
            set_property visible true $rc_256b_strdle
        } else {
            set_property visible false $rc_256b_strdle
        }

}


proc update_gui_for_PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED { PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH PARAM_VALUE.CPM_PCIE0_CCIX_EN PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_CORE_CLK_FREQ PROJECT_PARAM.SPEEDGRADE IPINST} {
   set CPM_PCIE0_MAX_LINK_SPEED ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}
   set c_xspeedgrade   [string tolower [get_project_property SPEEDGRADE]]
   set speed_grade [string toupper $c_xspeedgrade] 
   #set handle ${PARAM_VALUE.plltype}

     if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "2.5_GT/s"} {
#       set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
     } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "5.0_GT/s"} {
       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
    #   if { [get_property value ${PARAM_VALUE.MODE_SELECTION}] == "Basic" } {
     #    set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
      # } else { 
       #  set_property visible true [ipgui::get_guiparamspec -name plltype -of $IPINST]
       #}
     } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
       #set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
        if { [get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic" } {
          set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
        } else { 
          if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8"} {  
            if {($speed_grade == "-2LV" || $speed_grade == "-1L" || $speed_grade == "-1LV")} {  
              set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
            } else { 
              set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
            }
          } else { 
             set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
          }
        }
     } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
       #set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
       set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
     }

      # if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8" && [get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
      #    #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
      #      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
      # } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X16" && [get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
      #    #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
      #      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
      # } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X4" && [get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
      #    #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
      #      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
      # } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8" && [get_property value ${PARAM_VALUE.CPM_PCIE0_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
      #    #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
      #      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
      # } else { 
      #      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
      # }

}

##
## PL_LINK_CAP_MAX_LINK_WIDTH - PCIE LINK WIDTH GUI UPDATE
##
proc update_gui_for_PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH { PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED PARAM_VALUE.CPM_PCIE0_CCIX_EN PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_CORE_CLK_FREQ PROJECT_PARAM.SPEEDGRADE IPINST} {
   set PL_LINK_CAP_MAX_LINK_WIDTH ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}
   set c_xspeedgrade   [string tolower [get_project_property SPEEDGRADE]]
   set speed_grade [string toupper $c_xspeedgrade] 

    if { [get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic" } {
      set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
    } else { 
       if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8" && [get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
          if {($speed_grade == "-2LV" || $speed_grade == "-1L" || $speed_grade == "-1LV")} {  
            set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
          } else { 
            set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
          }
       } else { 
         set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
       }
    }

     #  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8" && [get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
     #     #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
     #       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
     #  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X16" && [get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
     #     #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
     #       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
     #  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X4" && [get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
     #     #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
     #       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
     #  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] eq "X8" && [get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
     #     #  set_property visible true [ipgui::get_guiparamspec -name enable_ccix -of $IPINST]
     #       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
     #  } else { 
     #       set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_CCIX_EN -of $IPINST]
     #  }
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_MODE_SELECTION { PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE PARAM_VALUE.CPM_PCIE0_PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE PARAM_VALUE.CPM_PCIE0_AXISTEN_IF_TX_PARITY_EN PARAM_VALUE.CPM_PCIE0_MCAP_ENABLE PARAM_VALUE.CPM_PCIE0_CORE_CLK_FREQ PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS  PARAM_VALUE.CPM_PCIE0_MODES PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF IPINST } {
  set c_xspeedgrade   [string tolower [get_project_property SPEEDGRADE]]
  set speed_grade [string toupper $c_xspeedgrade] 
  set SRIOV_CAP_ENABLE  [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
  set SLV_IF_BRIDGE  [ipgui::get_guiparamspec -name CPM_PCIE0_BRIDGE_AXI_SLAVE_IF -of $IPINST]
  set MSI_X_OPTIONS  [ipgui::get_guiparamspec -name CPM_PCIE0_MSI_X_OPTIONS -of $IPINST]
  set PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE  [ipgui::get_guiparamspec -name CPM_PCIE0_PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE -of $IPINST]
  set Device_Capabilities_Register_2 [ipgui::get_groupspec -name Device_Capabilities_Register_2 -of $IPINST]
  set Page7 [ipgui::get_pagespec -name Page7 -of $IPINST]
  set Page8 [ipgui::get_pagespec -name Page8 -of $IPINST]
  set Page9 [ipgui::get_pagespec -name Page9 -of $IPINST]
  set Page10 [ipgui::get_pagespec -name Page10 -of $IPINST]
  #set Page11 [ipgui::get_pagespec -name Page11 -of $IPINST]
  #set Page12 [ipgui::get_pagespec -name Page12 -of $IPINST]
  #set Page13 [ipgui::get_pagespec -name Page13 -of $IPINST]
  #set Page14 [ipgui::get_pagespec -name Page14 -of $IPINST]
  #set Page15 [ipgui::get_pagespec -name Page15 -of $IPINST]
  #set en_parity [ipgui::get_guiparamspec -name en_parity -of $IPINST]
  set coreclk_freq [ipgui::get_guiparamspec -name CPM_PCIE0_CORE_CLK_FREQ -of $IPINST]
  set mcap_enablement [ipgui::get_guiparamspec -name CPM_PCIE0_MCAP_ENABLE -of $IPINST]
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic" } {
    set_property visible false $SRIOV_CAP_ENABLE
    set_property visible false $MSI_X_OPTIONS
    set_property visible false $PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE
    set_property visible false $Device_Capabilities_Register_2
    set_property visible true $Page7
    set_property visible false $Page8
    set_property visible false $Page9
    set_property visible false $Page10
    #set_property visible false $Page11
    #set_property visible false $Page12
    #set_property visible false $Page13
    #set_property visible false $Page14
    #set_property visible false $Page15
    #set_property visible false $Shared_Logic
    #set_property visible false $plltype
    set_property visible false $coreclk_freq
    #set_property visible false $en_parity
    set_property visible false $mcap_enablement
  } else {

    if {([get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] == "8.0_GT/s") && ([get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH}] == "X8")   } {
      if {($speed_grade == "-2LV" || $speed_grade == "-1L" || $speed_grade == "-1LV")} {  
	set_property visible false $coreclk_freq
      } else {
	set_property visible true $coreclk_freq
      }
    } else {
      set_property visible false $coreclk_freq
    }

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex" } {
      set_property visible false $SRIOV_CAP_ENABLE
      set_property visible false $MSI_X_OPTIONS
      set_property visible false $Page8
      #set_property visible false $Page11
      #set_property visible true $l23_entry
      #set_property visible true $en_l23_entry
    } else {
      if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}] == "DMA" } {
        set_property visible false $SRIOV_CAP_ENABLE
      } else {
        set_property visible true $SRIOV_CAP_ENABLE
      }
      set_property visible true $MSI_X_OPTIONS
      #set_property visible true $Page11
      if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "None"} {
        set_property visible false $Page8
      } else {
        set_property visible true $Page8
      }
    }
    set_property visible true $PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE
    set_property visible true $Device_Capabilities_Register_2
    set_property visible true $Page9
    set_property visible true $Page10
   # set_property visible true $Page12
   # set_property visible true $Page13
   # set_property visible true $Page14
   # set_property visible true $Page15
   # set_property visible true $en_pcie_drp
   # set_property visible true $en_ext_ch_gt_drp
   # set_property visible true $en_parity
   # set_property visible false $dedicate_perst
   # set_property visible true  $sys_reset_polarity
   # set_property visible true $mcap_enablement
   # set_property visible false $ext_startup_primitive
   # set_property visible false $RX_PPM_OFFSET
   # set_property visible false $RX_SSC_PPM
   # set_property visible false $INS_LOSS_NYQ
   # set_property visible true  $ins_loss_profile
   # set_property visible false $PL_DISABLE_LANE_REVERSAL
   # set_property visible true  $en_gt_selection
   # set_property visible true  $select_quad
   # set_property visible false $vu9p_board
   # set_property visible true $PHY_LP_TXPRESET
  }


#  set PL_LINK_CAP_MAX_LINK_SPEED ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}
#   #set handle ${PARAM_VALUE.plltype}
#
#     if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_SPEED}] eq "2.5_GT/s"} {
#       #set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
#     } elseif {[get_property value ${PARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED}] eq "5.0_GT/s"} {
#       #if { [get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic" } {
#       #  set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
#       #} else { 
#       #  set_property visible true [ipgui::get_guiparamspec -name plltype -of $IPINST]
#       #}
#     } elseif {[get_property value ${PARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED}] eq "8.0_GT/s"} {
#       set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
#     } elseif {[get_property value ${PARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED}] eq "16.0_GT/s"} {
#       set_property visible false [ipgui::get_guiparamspec -name plltype -of $IPINST]
#     }
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_MODES {PARAM_VALUE.CPM_PCIE0_MODES PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE IPINST} {
  set Page4 [ipgui::get_pagespec -name Page4 -of $IPINST]
  set Page5 [ipgui::get_pagespec -name Page5 -of $IPINST]
  set Page6 [ipgui::get_pagespec -name Page6 -of $IPINST]
  set xdma [ipgui::get_pagespec -name xdma -of $IPINST]
  set qdma [ipgui::get_pagespec -name qdma -of $IPINST]
  set SLV_IF_BRIDGE  [ipgui::get_guiparamspec -name CPM_PCIE0_BRIDGE_AXI_SLAVE_IF -of $IPINST]
  set PCIE0_BARS [ipgui::get_pagespec -name PCIE0_BARS -of $IPINST]
  set PF_BARs_QDMA [ipgui::get_pagespec -name PF_BARs_QDMA -of $IPINST]
  set PCIE0_BARS_BRIDGE [ipgui::get_pagespec -name PCIE0_BARS_BRIDGE -of $IPINST]
  set axi_bars [ipgui::get_pagespec -name axi_bars -of $IPINST]
  set pf1_sriov_config [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  set User_Interrupts_Settings [ipgui::get_groupspec -name User_Interrupts_Settings -of $IPINST]


set mode [get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}]
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "DMA"} {
    set_property visible true $PCIE0_BARS
    set_property visible true $xdma
    set_property visible false $qdma
    set_property visible false $Page4
    set_property visible false $Page5
    set_property visible false $Page6
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible false $PF_BARs_QDMA
    set_property visible false $axi_bars
    set_property visible false $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "AXI_Bridge"} {
    set_property visible true $PCIE0_BARS_BRIDGE
    set_property visible true $axi_bars
    set_property visible false $Page4
    set_property visible false $Page5
    set_property visible false $Page6
    set_property visible false $PCIE0_BARS
    set_property visible false $PF_BARs_QDMA
    set_property visible false $xdma
    set_property visible false $qdma
    set_property visible true $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "QDMA"} {
    set_property visible true $PF_BARs_QDMA
    set_property visible true $axi_bars
    set_property visible false $Page4
    set_property visible false $PCIE0_BARS
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible true $qdma
    set_property visible false $xdma
    set_property visible true $SLV_IF_BRIDGE
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 } {
      set_property visible true $Page5
      set_property visible true $Page6
    }

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Advanced"} { 
        set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    }
  } else {
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible false $PF_BARs_QDMA
    set_property visible false $axi_bars
    set_property visible false $PCIE0_BARS
    set_property visible false $xdma
    set_property visible false $qdma
    set_property visible false $SLV_IF_BRIDGE
    set_property visible true $Page4
    set_property visible false $User_Interrupts_Settings
    set_property visible false $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 } {
      set_property visible true $Page5
      set_property visible true $Page6
    }

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Advanced"} { 
        set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    }
  }
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_PORT_TYPE {PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS PARAM_VALUE.CPM_PCIE0_MODES PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE IPINST} {
  set Page5 [ipgui::get_pagespec -name Page5 -of $IPINST]
  set Page6 [ipgui::get_pagespec -name Page6 -of $IPINST]
  set Page7 [ipgui::get_pagespec -name Page7 -of $IPINST]
  set SLV_IF_BRIDGE  [ipgui::get_guiparamspec -name CPM_PCIE0_BRIDGE_AXI_SLAVE_IF -of $IPINST]
  set pf1_sriov_config [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  set pf2_sriov_config [ipgui::get_groupspec -name pf2_sriov_config_grp -of $IPINST]
  set pf3_sriov_config [ipgui::get_groupspec -name pf3_sriov_config_grp -of $IPINST]
  #set Power_Management_Registers [ipgui::get_groupspec -name Power_Management_Registers -of $IPINST]
  #set Virtual_Channel_Capability  [ipgui::get_groupspec Virtual_Channel_Capability -of $IPINST]
  #set AER_Capabilities  [ipgui::get_groupspec AER_Capabilities -of $IPINST]
  #set ARI_Capability [ipgui::get_groupspec ARI_Capability -of $IPINST]
  #set TPH_Capability [ipgui::get_groupspec TPH_Capability -of $IPINST]
  set Physical_enable [ipgui::get_groupspec Physical_enable -of $IPINST]
  set Page8 [ipgui::get_pagespec -name Page8 -of $IPINST]
  #set Page11 [ipgui::get_pagespec -name Page11 -of $IPINST]
  set AXISTEN_IF_EXT_512_RQ_STRADDLE [ipgui::get_guiparamspec CPM_PCIE0_AXISTEN_IF_EXT_512_RQ_STRADDLE -of $IPINST]
  #set ATS_Capability [ipgui::get_groupspec ATS_Capability -of $IPINST]
  #set PRI_Capability [ipgui::get_groupspec PRI_Capability -of $IPINST]
  set SRIOV_CAP_ENABLE [ipgui::get_guiparamspec CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
  set copy_pf0 [ipgui::get_guiparamspec CPM_PCIE0_COPY_PF0_ENABLED -of $IPINST]
  #set l23_entry [ipgui::get_groupspec l23_entry -of $IPINST]
  #set en_l23_entry [ipgui::get_guiparamspec en_l23_entry -of $IPINST]

  set val [get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}]
  #puts "$val\n"
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex"} {
    set_property visible false $copy_pf0

    foreach i {0 1 2 3} {
      EvalSubstituting { i } {
        set_property hidden_rows "3,4,5,6" [ipgui::get_tablespec pf${i}_table -of $IPINST]
      } 0
    }
  }

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex"} {
    set_property visible true $AXISTEN_IF_EXT_512_RQ_STRADDLE
  }

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex" || [get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "DMA" } {
    set_property visible false $SRIOV_CAP_ENABLE
  } else {
    set_property visible true $SRIOV_CAP_ENABLE
  }

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "AXI_Bridge" } {
    set_property visible true $SLV_IF_BRIDGE
    set_property visible false $SRIOV_CAP_ENABLE
  } else {
    set_property visible false $SLV_IF_BRIDGE
    set_property visible true $SRIOV_CAP_ENABLE
  }

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex"} {
    #set_property visible false $Virtual_Channel_Capability
    #set_property visible false $ARI_Capability
    #set_property visible false $TPH_Capability
    #set_property visible false $ATS_Capability
    #set_property visible false $PRI_Capability
    set_property visible false $Physical_enable
    #set_property visible false $Power_Management_Registers
    #set_property visible true [ipgui::get_guiparamspec -name type1_membase_memlimit_enable -of $IPINST]
    #set_property visible true [ipgui::get_guiparamspec -name type1_prefetchable_membase_memlimit -of $IPINST]
  } else {
    #set_property visible true $Power_Management_Registers
    #set_property visible true $Virtual_Channel_Capability
    #set_property visible true $ARI_Capability
    #set_property visible true $TPH_Capability
    #set_property visible true $ATS_Capability
    #set_property visible true $PRI_Capability
    set_property visible true $Physical_enable
    #set_property visible false [ipgui::get_guiparamspec -name type1_membase_memlimit_enable -of $IPINST]
    #set_property visible false [ipgui::get_guiparamspec -name type1_prefetchable_membase_memlimit -of $IPINST]
  }

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "PCI_Express_Endpoint_device"} {
    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic"} {
      set_property visible false $Page8
      #set_property visible false $Page11
    } else { 
      set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_MSI_X_OPTIONS -of $IPINST]
      if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "None"} {
        set_property visible false $Page8
      } else { 
        set_property visible true $Page8
      }
      #set_property visible true $Page11
    }
  } else {
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_MSI_X_OPTIONS -of $IPINST]
    set_property visible false $Page8
    #set_property visible false $Page11
  }


  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == true && [get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}] != "DMA" } { 
    set_property visible false $Page7
  } else { 
    set_property visible true $Page7
  } 

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}] != "DMA" && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == true } {
    set_property visible true $Page5
    set_property visible true $Page6
    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 } {
      set_property visible true $pf1_sriov_config
      set_property visible false $pf2_sriov_config
      set_property visible false $pf3_sriov_config
    } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 } {
      set_property visible true $pf1_sriov_config
      set_property visible true $pf2_sriov_config
      set_property visible false $pf3_sriov_config
    } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
      set_property visible true $pf1_sriov_config
      set_property visible true $pf2_sriov_config
      set_property visible true $pf3_sriov_config
    }
  } else {
    set_property visible false $pf1_sriov_config
    set_property visible false $pf2_sriov_config
    set_property visible false $pf3_sriov_config
    set_property visible false $Page5
    set_property visible false $Page6
  }
 
  #if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex"} { 
  #  if {[get_property value ${PARAM_VALUE.MODE_SELECTION}] == "Basic"} { 
  #    set_property visible false $l23_entry 
  #    set_property visible false $en_l23_entry 
  #  } else { 
  #    set_property visible true $l23_entry 
  #    set_property visible true $en_l23_entry 
  #  }
  #} else { 
  #  set_property visible false $l23_entry 
  #  set_property visible false $en_l23_entry 
  #}

}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE {PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG PARAM_VALUE.CPM_PCIE0_MODES IPINST} {
  set Page5 [ipgui::get_pagespec -name Page5 -of $IPINST]
  set Page6 [ipgui::get_pagespec -name Page6 -of $IPINST]
  set Page7 [ipgui::get_pagespec -name Page7 -of $IPINST]
  set pf1_sriov_config [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  set pf2_sriov_config [ipgui::get_groupspec -name pf2_sriov_config_grp -of $IPINST]
  set pf3_sriov_config [ipgui::get_groupspec -name pf3_sriov_config_grp -of $IPINST]

  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 && [get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}] != "DMA" } { 
    set_property visible false $Page7
  } else { 
    set_property visible true $Page7
  } 
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" &&  [get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}] != "DMA"  && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 } {
    set_property visible true $Page5
    set_property visible true $Page6
    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 2 } {
      set_property visible true $pf1_sriov_config
      set_property visible false $pf2_sriov_config
      set_property visible false $pf3_sriov_config
    } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 3 } {
      set_property visible true $pf1_sriov_config
      set_property visible true $pf2_sriov_config
      set_property visible false $pf3_sriov_config
    } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_TL_PF_ENABLE_REG}] == 4 } {
      set_property visible true $pf1_sriov_config
      set_property visible true $pf2_sriov_config
      set_property visible true $pf3_sriov_config
    }
  } else {
    set_property visible false $pf1_sriov_config
    set_property visible false $pf2_sriov_config
    set_property visible false $pf3_sriov_config
    set_property visible false $Page5
    set_property visible false $Page6
  }
}


proc update_gui_for_PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS { PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS PARAM_VALUE.CPM_PCIE0_MODE_SELECTION PARAM_VALUE.CPM_PCIE0_PORT_TYPE PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE IPINST} {
  # Procedure called to update MSI_X_OPTIONS when any of the dependent parameters in the arguments change
    set MSI_X_OPTIONS ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}
    set Page8 [ipgui::get_pagespec -name Page8 -of $IPINST]

    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Basic"} {
         set_property visible false $Page8
    } else {
     if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] == "Root_Port_of_PCI_Express_Root_Complex"} {
         set_property visible false $Page8
     } else {
      if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MSI_X_OPTIONS}] == "None"} {
         set_property visible false $Page8
      } else {
         set_property visible true $Page8
      }
     }
    } 
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF {PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF PARAM_VALUE.CPM_PCIE0_MODES IPINST} { 

  set en_axi_slave     [get_property value ${PARAM_VALUE.CPM_PCIE0_BRIDGE_AXI_SLAVE_IF}]
  set func_mode        [get_property value ${PARAM_VALUE.CPM_PCIE0_MODES}]

  if {($func_mode == "AXI_Bridge") && $en_axi_slave == "true"} { 
    set_property visible true  [ipgui::get_pagespec axi_bars -of $IPINST]
  } else { 
    set_property visible false [ipgui::get_pagespec axi_bars -of $IPINST]
  }
}

proc update_gui_for_PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE {PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE IPINST} { 
  set Page4 [ipgui::get_pagespec -name Page4 -of $IPINST]
  set Page5 [ipgui::get_pagespec -name Page5 -of $IPINST]
  set Page6 [ipgui::get_pagespec -name Page6 -of $IPINST]
  set xdma [ipgui::get_pagespec -name xdma -of $IPINST]
  set qdma [ipgui::get_pagespec -name qdma -of $IPINST]
  set SLV_IF_BRIDGE  [ipgui::get_guiparamspec -name CPM_PCIE0_BRIDGE_AXI_SLAVE_IF -of $IPINST]
  set PCIE0_BARS [ipgui::get_pagespec -name PCIE0_BARS -of $IPINST]
  set PF_BARs_QDMA [ipgui::get_pagespec -name PF_BARs_QDMA -of $IPINST]
  set PCIE0_BARS_BRIDGE [ipgui::get_pagespec -name PCIE0_BARS_BRIDGE -of $IPINST]
  set axi_bars [ipgui::get_pagespec -name axi_bars -of $IPINST]
  set pf1_sriov_config [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  set User_Interrupts_Settings [ipgui::get_groupspec -name User_Interrupts_Settings -of $IPINST]


set mode [get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}]
  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "DMA"} {
    set_property visible true $PCIE0_BARS
    set_property visible true $xdma
    set_property visible false $qdma
    set_property visible false $Page4
    set_property visible false $Page5
    set_property visible false $Page6
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible false $PF_BARs_QDMA
    set_property visible false $axi_bars
    set_property visible false $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "AXI_Bridge"} {
    set_property visible true $PCIE0_BARS_BRIDGE
    set_property visible true $axi_bars
    set_property visible false $Page4
    set_property visible false $Page5
    set_property visible false $Page6
    set_property visible false $PCIE0_BARS
    set_property visible false $PF_BARs_QDMA
    set_property visible false $xdma
    set_property visible false $qdma
    set_property visible true $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
  } elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "QDMA"} {
    set_property visible true $PF_BARs_QDMA
    set_property visible true $axi_bars
    set_property visible false $Page4
    set_property visible false $PCIE0_BARS
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible false $xdma
    set_property visible true $qdma
    set_property visible true $SLV_IF_BRIDGE
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
    set_property visible true $User_Interrupts_Settings
  #  if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 } {
 #     set_property visible true $Page5
 #     set_property visible true $Page6
 #   }

 #   if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Advanced"} { 
 #       set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
 #   }
  } else {
    set_property visible false $PCIE0_BARS_BRIDGE
    set_property visible false $PF_BARs_QDMA
    set_property visible false $axi_bars
    set_property visible false $PCIE0_BARS
    set_property visible false $xdma
    set_property visible false $qdma
    set_property visible false $SLV_IF_BRIDGE
    set_property visible true $Page4
    set_property visible false $User_Interrupts_Settings
    set_property visible false $SLV_IF_BRIDGE
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
    set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]

#    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_PORT_TYPE}] != "Root_Port_of_PCI_Express_Root_Complex" && [get_property value ${PARAM_VALUE.CPM_PCIE0_SRIOV_CAP_ENABLE}] == 1 } {
#      set_property visible true $Page5
#      set_property visible true $Page6
#    }
#
#    if {[get_property value ${PARAM_VALUE.CPM_PCIE0_MODE_SELECTION}] == "Advanced"} { 
#        set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
#    }
  }

  #set Page4 [ipgui::get_pagespec -name Page4 -of $IPINST]
  #set Page5 [ipgui::get_pagespec -name Page5 -of $IPINST]
  #set Page6 [ipgui::get_pagespec -name Page6 -of $IPINST]
  #set xdma [ipgui::get_pagespec -name xdma -of $IPINST]
  #set SLV_IF_BRIDGE  [ipgui::get_guiparamspec -name CPM_PCIE0_BRIDGE_AXI_SLAVE_IF -of $IPINST]
  #set PCIE0_BARS [ipgui::get_pagespec -name PCIE0_BARS -of $IPINST]
  #set PCIE0_BARS_BRIDGE [ipgui::get_pagespec -name PCIE0_BARS_BRIDGE -of $IPINST]
  #set axi_bars [ipgui::get_pagespec -name axi_bars -of $IPINST]
  #set pf1_sriov_config [ipgui::get_groupspec -name pf1_sriov_config_grp -of $IPINST]
  #set User_Interrupts_Settings [ipgui::get_groupspec -name User_Interrupts_Settings -of $IPINST]
  #if {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "DMA"} {
  #  set_property visible true $PCIE0_BARS
  #  set_property visible true $xdma
  #  set_property visible false $Page4
  #  set_property visible false $Page5
  #  set_property visible false $Page6
  #  set_property visible false $PCIE0_BARS_BRIDGE
  #  set_property visible false $axi_bars
  #  set_property visible false $SLV_IF_BRIDGE
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
  #  set_property visible true $User_Interrupts_Settings
  #} elseif {[get_property value ${PARAM_VALUE.CPM_PCIE0_FUNCTIONAL_MODE}] == "AXI_Bridge"} {
  #  set_property visible true $PCIE0_BARS_BRIDGE
  #  set_property visible true $axi_bars
  #  set_property visible false $Page4
  #  set_property visible false $Page5
  #  set_property visible false $Page6
  #  set_property visible false $PCIE0_BARS
  #  set_property visible false $xdma
  #  set_property visible true $SLV_IF_BRIDGE
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
  #  set_property visible true [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]
  #  set_property visible true $User_Interrupts_Settings
  #} else {
  #  set_property visible false $PCIE0_BARS_BRIDGE
  #  set_property visible false $axi_bars
  #  set_property visible false $PCIE0_BARS
  #  set_property visible false $xdma
  #  set_property visible false $SLV_IF_BRIDGE
  #  set_property visible true $Page4
  #  set_property visible false $User_Interrupts_Settings
  #  set_property visible false $SLV_IF_BRIDGE
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_SRIOV_CAP_ENABLE -of $IPINST]
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_DATA_WIDTH -of $IPINST]
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_DMA_INTF -of $IPINST]
  #  set_property visible false [ipgui::get_guiparamspec -name CPM_PCIE0_XDMA_AXILITE_SLAVE_IF -of $IPINST]

  #}
}

