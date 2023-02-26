proc addAuroraPage { IPINST ParentPage} {

   set core_options [ipgui::add_group $IPINST -name "Aurora Core Options" -parent ${ParentPage} -layout vertical]
 
   ipgui::add_param $IPINST -name "AURORA_LINE_RATE_GPBS"  -parent ${core_options} -widget textEdit
   ipgui::add_param $IPINST -name "GT_REFCLK_MHZ" -parent ${core_options} -widget textEdit
   ipgui::add_param $IPINST -name "INIT_CLK_MHZ" -parent ${core_options} -widget textEdit
   ipgui::add_param $IPINST -name "DIS_AUTO_POL_CHECK" -parent ${core_options} -widget checkBox
   ipgui::add_param $IPINST -name "PS_HSDP_MODE" -parent ${core_options} -widget comboBox
   ipgui::add_param $IPINST -name "PS_HSDP_INGRESS_TRAFFIC" -parent ${core_options} -widget comboBox
   ipgui::add_param $IPINST -name "PS_HSDP_EGRESS_TRAFFIC" -parent ${core_options} -widget comboBox

}
