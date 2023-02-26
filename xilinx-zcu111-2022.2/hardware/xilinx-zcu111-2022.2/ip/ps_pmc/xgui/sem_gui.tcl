proc addSemPage { IPINST sem_page } {
 
  #set h_panel [ipgui::add_panel $IPINST -parent $sem_page -name h_panel -layout horizontal] 
  set h_group1 [ipgui::add_group $IPINST -name "Step 1" -parent $sem_page -layout horizontal] 
  ipgui::add_static_text $IPINST -name "text1" -text "What Soft Errors Would You Like To Mitigate For?" -parent ${h_group1} 
  ipgui::add_row $IPINST -parent ${h_group1}
  set sem_param2 [ipgui::add_param $IPINST -name "SEM_CONFIG_MEM_SCAN"  -parent ${h_group1} -widget checkBox]
  ipgui::add_row $IPINST -parent ${h_group1}
  set sem_param3 [ipgui::add_param $IPINST -name "SEM_CONFIG_NPI_SCAN"  -parent ${h_group1} -widget checkBox]
  
  ipgui::add_row $IPINST -parent ${sem_page}
  
  set h_group2 [ipgui::add_group $IPINST -name "Step 2" -parent $sem_page -layout horizontal] 
  set sem_param4 [ipgui::add_param $IPINST -name "SEM_ERROR_HANDLE_OPTIONS"  -parent ${h_group2} -widget comboBox]
  
  ipgui::add_row $IPINST -parent ${sem_page}
  
  set h_group3 [ipgui::add_group $IPINST -name "Step 3" -parent $sem_page -layout horizontal] 
  #ipgui::add_static_text $IPINST -name "text3" -text "What Do You Want To Do With The Events?" -parent ${h_group3} 
  set sem_param5 [ipgui::add_param $IPINST -name "SEM_EVENT_LOG_OPTIONS"  -parent ${h_group3} -widget comboBox]
  
  ipgui::add_row $IPINST -parent ${h_group3}
  #ipgui::add_static_text $IPINST -name "text3" -text "Time Interval Between NPI Scan(ms)" -parent ${h_group3} 
  set sem_param11 [ipgui::add_param $IPINST -name "SEM_TIME_INTERVAL_BETWEEN_SCANS"  -parent ${h_group3} -widget textEdit]
  ipgui::add_row $IPINST -parent ${sem_page}
  
  set h_group4 [ipgui::add_group $IPINST -name "Configuration Frame Options" -parent $sem_page -layout horizontal -collapse treu] 
  #ipgui::add_static_text $IPINST -name "text3" -text "Golden ECC calculated by SW" -parent ${h_group4} 
  set sem_param6 [ipgui::add_param $IPINST -name "SEM_MEM_GOLDEN_ECC_SW"  -parent ${h_group4} -widget checkBox]
  ipgui::add_row $IPINST -parent ${h_group4}
  #ipgui::add_static_text $IPINST -name "text3" -text "Enable All Test Features" -parent ${h_group4} 
  set sem_param7 [ipgui::add_param $IPINST -name "SEM_MEM_ENABLE_ALL_TEST_FEATURE"  -parent ${h_group4} -widget checkBox]
  ipgui::add_row $IPINST -parent ${h_group4}
  #ipgui::add_static_text $IPINST -name "text3" -text "Automatically enable monitoring after configuration completes" -parent ${h_group4} 
  set sem_param9 [ipgui::add_param $IPINST -name "SEM_MEM_ENABLE_SCAN_AFTER_CONFIG"  -parent ${h_group4} -widget checkBox]
  
  ipgui::add_row $IPINST -parent ${sem_page}
  
  set h_group5 [ipgui::add_group $IPINST -name "NPI Register Options" -parent $sem_page -layout horizontal -collapse true] 
 # ipgui::add_static_text $IPINST -name "text3" -text "Golden Checksum calculated by SW" -parent ${h_group5} 
  set sem_param10 [ipgui::add_param $IPINST -name "SEM_NPI_GOLDEN_CHECKSUM_SW"  -parent ${h_group5} -widget checkBox]
  ipgui::add_row $IPINST -parent ${h_group5}
  #ipgui::add_static_text $IPINST -name "text3" -text "Enable All Test Features" -parent ${h_group5} 
  set sem_param12 [ipgui::add_param $IPINST -name "SEM_NPI_ENABLE_ALL_TEST_FEATURE"  -parent ${h_group5} -widget checkBox]
  ipgui::add_row $IPINST -parent ${h_group5}
  #ipgui::add_static_text $IPINST -name "text3" -text "Automatically enable monitoring after configuration completes" -parent ${h_group5} 
  set sem_param13 [ipgui::add_param $IPINST -name "SEM_NPI_ENABLE_SCAN_AFTER_CONFIG"  -parent ${h_group5} -widget checkBox]

}
