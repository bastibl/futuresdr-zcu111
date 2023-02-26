proc addIOConfigPage { IPINST parentPage} {
  set IOCustWid [ ipgui::add_custom_widget $IPINST -parent $parentPage -name "IOConfigPage" -class_name EverestPage]
 
  ipgui::add_param $IPINST -name "PMC_QSPI_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_QSPI_PERIPHERAL_MODE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_QSPI_PERIPHERAL_DATA_MODE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_QSPI_GRP_FBCLK_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_QSPI_GRP_FBCLK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_OSPI_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_OSPI_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_SLOT_TYPE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_DATA_TRANSFER_MODE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_CD_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_CD_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_WP_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_RESET_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_WP_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_RESET_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_POW_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD0_GRP_POW_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_SLOT_TYPE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_DATA_TRANSFER_MODE"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_CD_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_CD_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_WP_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_WP_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_RESET_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_RESET_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_POW_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SD1_GRP_POW_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_I2CPMC_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_I2CPMC_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_SMAP_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_SMAP_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_GPIO_EMIO_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_GPIO_EMIO_WIDTH"  -parent $IOCustWid -widget textEdit
  ipgui::add_param $IPINST -name "PMC_GPIO0_MIO_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_GPIO0_MIO_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_GPIO1_MIO_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_GPIO1_MIO_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_ENET0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_ENET0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_ENET0_GRP_MDIO_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_ENET0_GRP_MDIO_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_ENET1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_ENET1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_ENET1_GRP_MDIO_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_ENET1_GRP_MDIO_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_GEM_TSU_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_GEM_TSU_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_USB3_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_USB3_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_PCIE_RESET_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_PCIE_RESET_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_UART0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_UART0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_UART0_RTS_CTS_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_UART0_RTS_CTS_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_UART1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_UART1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_UART1_RTS_CTS_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_UART1_RTS_CTS_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS0_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS0_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS1_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS1_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS2_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI0_GRP_SS2_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS0_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS0_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS1_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS1_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS2_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_SPI1_GRP_SS2_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_CAN0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_CAN0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_CAN1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_CAN1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_I2C0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_I2C0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_I2C1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_I2C1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_I2CSYSMON_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC0_CLOCK_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC0_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC0_WAVEOUT_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC0_WAVEOUT_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC1_CLOCK_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC1_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC1_WAVEOUT_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC1_WAVEOUT_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC2_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC2_CLOCK_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC2_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC2_WAVEOUT_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC2_WAVEOUT_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC3_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC3_CLOCK_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC3_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TTC3_WAVEOUT_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TTC3_WAVEOUT_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WWDT0_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_WWDT0_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WWDT0_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WWDT1_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_WWDT1_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WWDT1_CLOCK_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT0_REF_CTRL_SEL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT0_REF_CTRL_FREQMHZ"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT0_REF_CTRL_ACT_FREQMHZ"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT1_REF_CTRL_SEL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT1_REF_CTRL_FREQMHZ"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_WDT1_REF_CTRL_ACT_FREQMHZ"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TRACE_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_TRACE_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_TRACE_WIDTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_GPIO_EMIO_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_GPIO_EMIO_WIDTH"  -parent $IOCustWid -widget textEdit
  ipgui::add_param $IPINST -name "PS_GPIO2_MIO_PERIPHERAL_ENABLE"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_GPIO2_MIO_PERIPHERAL_IO"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_0_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_1_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_2_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_3_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_4_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_5_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_6_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_7_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_8_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_9_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_10_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_11_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_12_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_13_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_14_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_15_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_16_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_17_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_18_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_19_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_20_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_21_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_22_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_23_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_24_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_25_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_26_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_27_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_28_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_29_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_30_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_31_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_32_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_33_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_34_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_35_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_36_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_37_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_38_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_39_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_40_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_41_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_42_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_43_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_44_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_45_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_46_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_47_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_48_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_49_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_50_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PMC_MIO_51_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_0_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_0_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_0_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_0_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_0_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_0_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_1_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_1_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_1_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_1_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_1_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_1_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_2_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_2_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_2_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_2_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_2_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_2_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_3_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_3_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_3_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_3_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_3_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_3_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_4_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_4_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_4_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_4_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_4_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_4_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_5_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_5_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_5_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_5_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_5_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_5_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_6_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_6_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_6_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_6_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_6_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_6_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_7_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_7_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_7_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_7_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_7_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_7_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_8_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_8_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_8_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_8_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_8_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_8_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_9_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_9_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_9_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_9_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_9_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_9_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_10_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_10_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_10_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_10_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_10_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_10_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_11_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_11_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_11_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_11_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_11_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_11_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_12_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_12_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_12_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_12_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_12_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_12_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_13_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_13_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_13_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_13_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_13_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_13_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_14_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_14_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_14_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_14_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_14_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_14_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_15_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_15_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_15_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_15_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_15_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_15_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_16_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_16_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_16_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_16_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_16_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_16_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_17_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_17_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_17_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_17_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_17_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_17_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_18_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_18_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_18_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_18_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_18_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_18_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_19_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_19_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_19_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_19_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_19_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_19_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_20_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_20_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_20_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_20_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_20_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_20_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_21_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_21_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_21_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_21_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_21_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_21_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_22_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_22_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_22_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_22_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_22_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_22_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_23_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_23_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_23_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_23_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_23_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_23_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_24_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_24_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_24_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_24_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_24_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_24_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_25_DRIVE_STRENGTH"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_25_SLEW"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_25_PULL"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_MIO_25_SCHMITT"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_25_AUX_IO"  -parent $IOCustWid -widget checkBox
  ipgui::add_param $IPINST -name "PS_MIO_25_DIRECTION"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_BANK_0_IO_STANDARD"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PMC_BANK_1_IO_STANDARD"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_BANK_2_IO_STANDARD"  -parent $IOCustWid -widget comboBox
  ipgui::add_param $IPINST -name "PS_BANK_3_IO_STANDARD"  -parent $IOCustWid -widget comboBox 
}

proc addpsplpage {IPINST ps_pl_page} {
  
  set h_fabricClk [ipgui::add_group $IPINST -name "Fabric Clocks" -parent $ps_pl_page -layout horizontal] 
  
  ipgui::add_param $IPINST -name "PS_USE_PMCPL_CLK0" -parent ${h_fabricClk} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PMCPL_CLK1" -parent ${h_fabricClk} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_fabricClk}
  ipgui::add_param $IPINST -name "PS_USE_PMCPL_CLK2" -parent ${h_fabricClk} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PMCPL_CLK3" -parent ${h_fabricClk} -widget checkBox

  set h_fabricRst [ipgui::add_group $IPINST -name "Fabric Resets" -parent $ps_pl_page -layout horizontal] 
  ipgui::add_param $IPINST -name "PS_NUM_FABRIC_RESETS" -parent ${h_fabricRst} -widget comboBox


  set h_plIF [ipgui::add_group $IPINST -name "PL Interfaces" -parent $ps_pl_page -layout horizontal] 
  
  set h_masterIF [ipgui::add_group $IPINST -name "Master Interfaces" -parent $h_plIF -layout horizontal] 
  ipgui::add_param $IPINST -name "PS_USE_M_AXI_GP0" -parent ${h_masterIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_M_AXI_GP0_DATA_WIDTH" -parent ${h_masterIF} -widget comboBox
  ipgui::add_row $IPINST -parent ${h_masterIF}
  ipgui::add_param $IPINST -name "PS_USE_M_AXI_GP2" -parent ${h_masterIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_M_AXI_GP2_DATA_WIDTH" -parent ${h_masterIF} -widget comboBox
  
  ipgui::add_row $IPINST -parent ${h_plIF}
  
  set h_slaveIF [ipgui::add_group $IPINST -name "Slave Interfaces" -parent $h_plIF -layout horizontal] 
  ipgui::add_param $IPINST -name "PS_USE_S_AXI_GP0" -parent ${h_slaveIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_S_AXI_GP0_DATA_WIDTH" -parent ${h_slaveIF} -widget comboBox
  ipgui::add_row $IPINST -parent ${h_slaveIF}

  ipgui::add_param $IPINST -name "PS_USE_S_AXI_GP2" -parent ${h_slaveIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_S_AXI_GP2_DATA_WIDTH" -parent ${h_slaveIF} -widget comboBox
  ipgui::add_row $IPINST -parent ${h_slaveIF}

  ipgui::add_param $IPINST -name "PS_USE_S_AXI_GP4" -parent ${h_slaveIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_S_AXI_GP4_DATA_WIDTH" -parent ${h_slaveIF} -widget comboBox
  ipgui::add_row $IPINST -parent ${h_slaveIF}
  
  ipgui::add_param $IPINST -name "PS_USE_S_AXI_ACP" -parent ${h_slaveIF} -widget checkBox
  
  ipgui::add_row $IPINST -parent ${h_slaveIF}
  
  ipgui::add_param $IPINST -name "PS_USE_S_AXI_ACE" -parent ${h_slaveIF} -widget checkBox

}

proc addNoCIFPage {IPINST nocPage} {

  set h_psMasterIF [ipgui::add_group $IPINST -name "PS Master Interfaces" -parent $nocPage -layout vertical] 

  set h_CoherentIF [ipgui::add_group $IPINST -name "Coherent Interfaces" -parent $h_psMasterIF -layout horizontal] 
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_CCI_0" -parent ${h_CoherentIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_CCI_1" -parent ${h_CoherentIF} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_CoherentIF}
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_CCI_2" -parent ${h_CoherentIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_CCI_3" -parent ${h_CoherentIF} -widget checkBox
  
  ipgui::add_row $IPINST -parent ${h_psMasterIF}
  
  set h_NonCoherentIF [ipgui::add_group $IPINST -name "Non Coherent Interfaces" -parent $h_psMasterIF -layout horizontal] 

  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_NCI_0" -parent ${h_NonCoherentIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_NCI_1" -parent ${h_NonCoherentIF} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_NonCoherentIF}
  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_RPU_0" -parent ${h_NonCoherentIF} -widget checkBox
  
  ipgui::add_param $IPINST -name "PMC_USE_PMC_NOC_AXI0" -parent ${h_NonCoherentIF} -widget checkBox

  
  set h_psSlaveIF [ipgui::add_group $IPINST -name "PS Slave Interfaces" -parent $nocPage -layout vertical] 

  set h_CoherentSIF [ipgui::add_group $IPINST -name "Coherent Interfaces" -parent $h_psSlaveIF -layout vertical] 
  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_CCI_0" -parent ${h_CoherentSIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_CCI_1" -parent ${h_CoherentSIF} -widget checkBox
  
  ipgui::add_row $IPINST -parent ${h_psSlaveIF}
  
  set h_NonCoherentSIF [ipgui::add_group $IPINST -name "Non Coherent Interfaces" -parent $h_psSlaveIF -layout vertical] 

  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_NCI_0" -parent ${h_NonCoherentSIF} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_NCI_1" -parent ${h_NonCoherentSIF} -widget checkBox
  ipgui::add_param $IPINST -name "PMC_USE_NOC_PMC_AXI0" -parent ${h_NonCoherentSIF} -widget checkBox




#  set h_PCIeIF [ipgui::add_group $IPINST -name "PCIe Interfaces" -parent $nocPage -layout vertical] 
#  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PCI_0" -parent ${h_PCIeIF} -widget checkBox
#  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PCI_1" -parent ${h_PCIeIF} -widget checkBox
#  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_PCI_0" -parent ${h_PCIeIF} -widget checkBox

#  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PMC_0" -parent ${ps_pl_page} -widget checkBox
#  ipgui::add_param $IPINST -name "PS_USE_PS_NOC_PMC_1" -parent ${ps_pl_page} -widget checkBox
#  ipgui::add_param $IPINST -name "PS_USE_NOC_PS_PMC_0" -parent ${ps_pl_page} -widget checkBox

#  set slpd0dwidth [ipgui::add_param $IPINST -name "PS_S_AXI_ACP_DATA_WIDTH" -parent ${ps_pl_page}]
#  set_property visible false $slpd0dwidth
#  ipgui::add_param $IPINST -name "PS_PS_ENABLE" -parent ${ps_pl_page} -widget comboBox

}

proc addClockPage { IPINST parentPage} {
  set clockPage [ ipgui::add_custom_widget $IPINST -parent $parentPage -name "ClockPage" -class_name EverestPage]

     ipgui::add_param $IPINST -name "PSPMC_MANUAL_CLOCK_ENABLE"  -parent ${clockPage} -widget checkBox
     ipgui::add_param $IPINST -name "PS_CAN0_GRP_CLK_ENABLE"  -parent ${clockPage} -widget checkBox
     ipgui::add_param $IPINST -name "PS_CAN1_GRP_CLK_ENABLE"  -parent ${clockPage} -widget checkBox
   ipgui::add_param $IPINST -name "PMC_REF_CLK_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_PL_ALT_REF_CLK_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_FBDIV"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_CLKOUTDIV"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_FBDIV"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_CLKOUTDIV"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_NPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_FBDIV"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_CLKOUTDIV"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_RPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_FBDIV"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_CLKOUTDIV"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_APLL_TO_XPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NOC_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NOC_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_NOC_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC0_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC0_SEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_TTC0_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC1_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC1_SEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_TTC1_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC2_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC2_SEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_TTC2_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC3_REF_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC3_SEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_TTC3_REF_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_FREQMHZ"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_SRCSEL"  -parent ${clockPage} -widget comboBox
   ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_DIVISOR0"  -parent ${clockPage} -widget textEdit
   ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_ACT_FREQMHZ"  -parent ${clockPage} -widget textEdit
}


#proc addClockPage {IPINST Clocks} {
#
#    ipgui::add_static_text $IPINST -name "Enable Manual Mode" -text "<b>Enable Manual Mode</b>" -parent ${Clocks} 
#  ipgui::add_row $IPINST -parent ${Clocks}
#  set param1 [ipgui::add_param $IPINST -name "PSPMC_MANUAL_CLOCK_ENABLE"  -parent ${Clocks} -widget checkBox]
#  ipgui::add_row $IPINST -parent ${Clocks}
#
#  ipgui::add_static_text $IPINST -name "Reference Clocks" -text "<b>Reference Clocks</b>" -parent ${Clocks} 
#  ipgui::add_row $IPINST -parent ${Clocks}
#
#  set param1 [ipgui::add_param $IPINST -name "PMC_REF_CLK_FREQMHZ"  -parent ${Clocks} -widget textEdit]
#  ipgui::add_row $IPINST -parent ${Clocks}
#  set param2 [ipgui::add_param $IPINST -name "PMC_PL_ALT_REF_CLK_FREQMHZ"  -parent ${Clocks} -widget textEdit]
#  ipgui::add_row $IPINST -parent ${Clocks}
#
#
#
#  ipgui::add_static_text $IPINST -name "PLL Options" -text "<b>PLL Options</b>" -parent ${Clocks} 
#  ipgui::add_row $IPINST -parent ${Clocks}
#
#  set table [ipgui::add_table $IPINST -name "PLL Options" -rows "5" -columns "5" -layout horizontal -parent ${Clocks}]
#
#  set text1 [ipgui::add_static_text $IPINST -name "PLL Name" -text "<b>PLL Name</b>" -parent ${table} ]
#  set text2 [ipgui::add_static_text $IPINST -name "Source" -text "<b>Source</b>" -parent ${table} ]
#  set text3 [ipgui::add_static_text $IPINST -name "Multiplier" -text "<b>Multiplier</b>" -parent ${table} ]
#  set text4 [ipgui::add_static_text $IPINST -name "CLKOUTDIV" -text "<b>CLKOUTDIV</b>" -parent ${table} ]
#  set text5 [ipgui::add_static_text $IPINST -name "CROSS Domain Div" -text "<b>Cross Domain Div</b>" -parent ${table} ]
#  set_property cell_location 0,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 0,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
#  set_property cell_location 0,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
#  set_property cell_location 0,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
#  set_property cell_location 0,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
#
#  set text1 [ipgui::add_static_text $IPINST -name "PPLL" -text "PPLL" -parent ${table} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_SRCSEL"  -parent ${table} -widget comboBox]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_FBDIV"  -parent ${table} -widget textEdit]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_PPLL_CTRL_CLKOUTDIV"  -parent ${table} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_PPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${table} -widget textEdit]
#  set_property cell_location 1,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 1,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 1,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 1,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 1,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#
#  set text1 [ipgui::add_static_text $IPINST -name "NPLL" -text "NPLL" -parent ${table} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_SRCSEL"  -parent ${table} -widget comboBox]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_FBDIV"  -parent ${table} -widget textEdit]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_NPLL_CTRL_CLKOUTDIV"  -parent ${table} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_NPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${table} -widget textEdit]
#  set_property cell_location 2,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 2,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 2,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 2,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 2,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#
#  set text1 [ipgui::add_static_text $IPINST -name "RPLL" -text "RPLL" -parent ${table} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_SRCSEL"  -parent ${table} -widget comboBox]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_FBDIV"  -parent ${table} -widget textEdit]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_RPLL_CTRL_CLKOUTDIV"  -parent ${table} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_RPLL_TO_XPD_CTRL_DIVISOR0"  -parent ${table} -widget textEdit]
#  set_property cell_location 3,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 3,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 3,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 3,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 3,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#
#  set text1 [ipgui::add_static_text $IPINST -name "APLL" -text "APLL" -parent ${table} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_SRCSEL"  -parent ${table} -widget comboBox]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_FBDIV"  -parent ${table} -widget textEdit]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_APLL_CTRL_CLKOUTDIV"  -parent ${table} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_APLL_TO_XPD_CTRL_DIVISOR0"  -parent ${table} -widget textEdit]
#  set_property cell_location 4,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 4,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 4,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 4,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 4,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#
#  ipgui::add_row $IPINST -parent ${Clocks}
#
#  set PMCClocks [ipgui::add_group $IPINST -name "PMC Domain Clocks" -layout horizontal -collapse true -parent ${Clocks}]
#  set table1 [ipgui::add_table $IPINST -name "PMC Domain Clocks" -rows "22" -columns "5" -layout horizontal -parent ${PMCClocks}]
#  ipgui::add_row $IPINST -parent ${Clocks}
#  ipgui::add_static_text $IPINST -name "PMC Domain" -text "<b>PMC Domain</b>" -parent ${table1} 
##  set table [ipgui::add_table $IPINST -name "PMC Domain" -rows "50" -columns "5" -layout horizontal -parent ${Clocks}]
#
#  set text1 [ipgui::add_static_text $IPINST -name "Name" -text "<b>Name</b>" -parent ${table1} ]
#  set text2 [ipgui::add_static_text $IPINST -name "Frequency" -text "<b>Frequency(MHz)</b>" -parent ${table1} ]
#  set text3 [ipgui::add_static_text $IPINST -name "PLL Source" -text "<b>Source</b>" -parent ${table1} ]
#  set text4 [ipgui::add_static_text $IPINST -name "Divisor" -text "<b>Divisor</b>" -parent ${table1} ]
#  set text5 [ipgui::add_static_text $IPINST -name "Actual" -text "<b>Actual Frequency(MHz)</b>" -parent ${table1} ]
#  set_property cell_location 0,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 0,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
#  set_property cell_location 0,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
#  set_property cell_location 0,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
#  set_property cell_location 0,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
#
#  set text1 [ipgui::add_static_text $IPINST -name "CFU" -text CFU -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_CFU_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 1,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 1,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 1,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 1,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 1,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "HSM0" -text HSM0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_HSM0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 2,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 2,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 2,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 2,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 2,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "HSM1" -text HSM1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_HSM1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 3,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 3,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 3,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 3,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 3,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "NPI" -text NPI -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_NPI_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 4,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 4,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 4,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 4,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 4,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "QSPI" -text QSPI -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_QSPI_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 5,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 5,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 5,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 5,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 5,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "OSPI" -text OSPI -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_OSPI_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 6,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 6,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 6,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 6,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 6,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "LSBUS" -text LSBUS -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_LSBUS_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 7,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 7,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 7,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 7,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 7,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "SDIO0" -text SDIO0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 8,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 8,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 8,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 8,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 8,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "SDIO1" -text SDIO1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_SDIO1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 9,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 9,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 9,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 9,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 9,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "SD_DLL" -text SD_DLL -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_SD_DLL_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 10,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 10,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 10,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 10,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 10,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "I2C" -text I2C -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_I2C_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 11,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 11,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 11,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 11,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 11,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "PL0" -text PL0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_PL0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 12,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 12,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 12,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 12,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 12,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "PL1" -text PL1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_PL1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 13,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 13,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 13,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 13,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 13,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "PL2" -text PL2 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_PL2_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 14,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 14,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 14,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 14,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 14,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "PL3" -text PL3 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_PL3_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 15,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 15,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 15,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 15,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 15,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "TEST_PATTERN" -text TEST_PATTERN -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_TEST_PATTERN_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 16,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 16,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 16,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 16,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 16,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "DFT_OSC" -text DFT_OSC -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_DFT_OSC_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 17,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 17,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 17,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 17,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 17,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "EFUSE" -text EFUSE -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_EFUSE_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 18,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 18,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 18,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 18,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "SYSMON" -text SYSMON -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_SYSMON_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 19,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 19,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 19,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 19,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "USB_SUSPEND" -text USB_SUSPEND -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_USB_SUSPEND_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 20,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 20,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 20,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 20,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 20,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "SWITCH_TIMEOUT" -text SWITCH_TIMEOUT -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PMC_CRP_SWITCH_TIMEOUT_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location 21,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location 21,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location 21,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location 21,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location 21,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#
#  ipgui::add_row $IPINST -parent ${Clocks}
#  set LPDClocks [ipgui::add_group $IPINST -name "LPD Domain Clocks" -layout horizontal -collapse true -parent ${Clocks}]
#  set table1 [ipgui::add_table $IPINST -name "LPD Domain Clocks" -rows "27" -columns "5" -layout horizontal -parent ${LPDClocks}]
#  set text1 [ipgui::add_static_text $IPINST -name "LPD Domain" -text "<b>LPD Domain</b>" -parent ${table1} ]
#  ipgui::add_row $IPINST -parent ${Clocks}
#  set psRow 0;
#  set text1 [ipgui::add_static_text $IPINST -name "Name1" -text "<b>Name</b>" -parent ${table1} ]
#  set text2 [ipgui::add_static_text $IPINST -name "Frequency1" -text "<b>Frequency(MHz)</b>" -parent ${table1} ]
#  set text3 [ipgui::add_static_text $IPINST -name "PLL Source1" -text "<b>Source</b>" -parent ${table1} ]
#  set text4 [ipgui::add_static_text $IPINST -name "Divisor1" -text "<b>Divisor</b>" -parent ${table1} ]
#  set text5 [ipgui::add_static_text $IPINST -name "Actual1" -text "<b>Actual Frequency(MHz)</b>" -parent ${table1} ]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
#  incr psRow ;
#
#  set text1 [ipgui::add_static_text $IPINST -name "CPM_TOPSW_REF_CTRL" -text CPM_TOPSW -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_CPM_TOPSW_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#
#  set text1 [ipgui::add_static_text $IPINST -name "LPD_TOP_SWITCH_CTRL" -text LPD_TOP_SWITCH -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_LPD_TOP_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "LPD_LSBUS_CTRL" -text LPD_LSBUS -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_LPD_LSBUS_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "CPU_R5_CTRL" -text CPU_R5 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_CPU_R5_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "IOU_SWITCH_CTRL" -text IOU_SWITCH -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_IOU_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "GEM0_REF_CTRL" -text GEM0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_GEM0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "GEM1_REF_CTRL" -text GEM1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_GEM1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "GEM_TSU_REF_CTRL" -text GEM_TSU -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_GEM_TSU_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "USB0_BUS_REF_CTRL" -text USB0_BUS -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_USB0_BUS_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "USB3_DUAL_REF_CTRL" -text USB3_DUAL -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_USB3_DUAL_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "UART0_REF_CTRL" -text UART0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_UART0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "UART1_REF_CTRL" -text UART1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_UART1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "SPI0_REF_CTRL" -text SPI0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_SPI0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "SPI1_REF_CTRL" -text SPI1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_SPI1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "CAN0_REF_CTRL" -text CAN0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_CAN0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "CAN1_REF_CTRL" -text CAN1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_CAN1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "I2C0_REF_CTRL" -text I2C0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_I2C0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "I2C1_REF_CTRL" -text I2C1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_I2C1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "DBG_LPD_CTRL" -text DBG_LPD -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_DBG_LPD_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "DBG_TSTMP_CTRL" -text DBG_TSTMP -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_DBG_TSTMP_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "TIMESTAMP_REF_CTRL" -text TIMESTAMP -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_TIMESTAMP_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "PSM_REF_CTRL" -text PSM_REF -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRL_PSM_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "TTC0" -text TTC0 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_TTC0_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC0_SEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_TTC0_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "TTC1" -text TTC1 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_TTC1_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC1_SEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_TTC1_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "TTC2" -text TTC2 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_TTC2_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC2_SEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_TTC2_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "TTC3" -text TTC3 -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_TTC3_REF_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_TTC_APB_CLK_TTC3_SEL"  -parent ${table1} -widget comboBox]
#  set param4 [ipgui::add_param $IPINST -name "PS_TTC3_REF_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#
#  set FPDClocks [ipgui::add_group $IPINST -name "FPD Domain Clocks" -layout horizontal -collapse true -parent ${Clocks}]
#  set table1 [ipgui::add_table $IPINST -name "FPD Domain Clocks" -rows "6" -columns "5" -layout horizontal -parent ${FPDClocks}]
#  ipgui::add_row $IPINST -parent ${Clocks}
#  #set text1 [ipgui::add_static_text $IPINST -name "FPD Domain" -text "<b>FPD Domain</b>" -parent ${table1} ]
#  ipgui::add_row $IPINST -parent ${Clocks}
#  #set table [ipgui::add_table $IPINST -name "FPD Domain" -rows "5" -columns "5" -layout horizontal -parent ${Clocks}]
#  set psRow 0;
#  #set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set text1 [ipgui::add_static_text $IPINST -name "Name2" -text "<b>Name</b>" -parent ${table1} ]
#  set text2 [ipgui::add_static_text $IPINST -name "Frequency2" -text "<b>Frequency(MHz)</b>" -parent ${table1} ]
#  set text3 [ipgui::add_static_text $IPINST -name "PLL Source2" -text "<b>Source</b>" -parent ${table1} ]
#  set text4 [ipgui::add_static_text $IPINST -name "Divisor2" -text "<b>Divisor</b>" -parent ${table1} ]
#  set text5 [ipgui::add_static_text $IPINST -name "Actual2" -text "<b>Actual Frequency(MHz)</b>" -parent ${table1} ]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_textspec ${text2} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_textspec ${text3} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_textspec ${text4} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_textspec ${text5} -of $IPINST ]
#  incr psRow ;
#
#  set text1 [ipgui::add_static_text $IPINST -name "ACPU_CTRL" -text ACPU -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_ACPU_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "FPD_TOP_SWITCH_CTRL" -text FPD_TOP_SWITCH -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_FPD_TOP_SWITCH_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "FPD_LSBUS_CTRL" -text FPD_LSBUS -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_FPD_LSBUS_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "DBG_TRACE_CTRL" -text DBG_TRACE -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_DBG_TRACE_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#  incr psRow ;
#  set text1 [ipgui::add_static_text $IPINST -name "DBG_FPD_CTRL" -text DBG_FPD -parent ${table1} ]
#  set param1 [ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set param2 [ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_SRCSEL"  -parent ${table1} -widget comboBox]
#  set param3 [ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_DIVISOR0"  -parent ${table1} -widget textEdit]
#  set param4 [ipgui::add_param $IPINST -name "PS_CRF_DBG_FPD_CTRL_ACT_FREQMHZ"  -parent ${table1} -widget textEdit]
#  set_property cell_location $psRow,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
#  set_property cell_location $psRow,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
#  set_property cell_location $psRow,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
#  set_property cell_location $psRow,3  [ ipgui::get_guiparamspec ${param3} -of $IPINST ]
#  set_property cell_location $psRow,4  [ ipgui::get_guiparamspec ${param4} -of $IPINST ]
#}

proc addPSPMCAddrPage {IPINST ps_pmc_addr} {
  ipgui::add_param $IPINST -name "PS_ADMA_ENABLE"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_DDRC_ENABLE"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_EXPAND_CORESIGHT"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_EXPAND_GIC"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_CPM_ENABLE"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_EXPAND_FPD_SLAVES"  -parent ${ps_pmc_addr} -widget checkBox
  ipgui::add_param $IPINST -name "PS_EXPAND_LPD_SLAVES"  -parent ${ps_pmc_addr} -widget checkBox
}

proc addInterProcessInterruptConfigPage {IPINST inter_process_interrupt_config} {

set h_ipi [ipgui::add_group $IPINST -name "Inter Processor Interrupt(IPI) Configuration" -parent $inter_process_interrupt_config -layout horizontal] 
  
  set table [ipgui::add_table $IPINST -name "IPI_Slave_masters" -rows "11" -columns "3" -layout horizontal -parent ${h_ipi}]
  set text0 [ipgui::add_static_text $IPINST -name "IPI" -text "<b>IPI</b>" -parent ${table} ]
  set text1 [ipgui::add_static_text $IPINST -name "IPIEnable " -text "<b>Enable</b>" -parent ${table} ]
  set text2 [ipgui::add_static_text $IPINST -name "master" -text "<b>Master</b>" -parent ${table} ]
  set_property cell_location 0,0  [ ipgui::get_textspec ${text0} -of $IPINST ]
  set_property cell_location 0,1  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 0,2  [ ipgui::get_textspec ${text2} -of $IPINST ]
  
  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMC_ENABLE"  -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMC_MASTER"  -parent ${table} -widget comboBox]
  
  set text1 [ipgui::add_static_text $IPINST -name "IPI_PMC" -text "IPI PMC" -parent ${table} ]
  set_property cell_location 1,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 1,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 1,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMCNOBUF_ENABLE"  -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMCNOBUF_MASTER"  -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI_PMCNBUF" -text "IPI PMC No BUF" -parent ${table} ]
  set_property cell_location 2,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 2,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 2,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  
  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PSM_ENABLE"  -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PSM_MASTER"  -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI_PSM" -text "IPI PSM" -parent ${table} ]
  set_property cell_location 3,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 3,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 3,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_0_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_0_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI 0" -text "IPI 0" -parent ${table} ]
  set_property cell_location 4,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 4,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 4,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
 
  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_1_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_1_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI 1" -text "IPI 1" -parent ${table} ]
  set_property cell_location 5,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 5,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 5,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
 
  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_2_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_2_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI2" -text "IPI 2" -parent ${table} ]
  set_property cell_location 6,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 6,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 6,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_3_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_3_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI3" -text "IPI 3" -parent ${table} ]
  set_property cell_location 7,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 7,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 7,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  
  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_4_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_4_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI 4" -text "IPI 4" -parent ${table} ]
  set_property cell_location 8,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 8,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 8,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_5_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_5_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI_5" -text "IPI 5" -parent ${table} ]
  set_property cell_location 9,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 9,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 9,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_6_ENABLE"    -parent ${table} -widget checkBox]
  set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_6_MASTER"    -parent ${table} -widget comboBox]
  set text1 [ipgui::add_static_text $IPINST -name "IPI 6" -text "IPI 6" -parent ${table} ]
  set_property cell_location 10,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  set_property cell_location 10,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  set_property cell_location 10,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

}


proc addInterruptConfigPage {IPINST interrupt_config} {
  #ipgui::add_param $IPINST -name "PS_PMU_PERIPHERAL_ENABLE" -parent ${interrupt_config} -widget checkBox

  #ipgui::add_param $IPINST -name "PS_USE_RTC" -parent ${interrupt_config} -widget checkBox
  
  set h_plpsint [ipgui::add_group $IPINST -name "PS to PL Interrupts" -parent $interrupt_config -layout vertical] 
  ipgui::add_param $IPINST -name "PS_USE_PSPL_IRQ_LPD" -parent ${h_plpsint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PSPL_IRQ_FPD" -parent ${h_plpsint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PSPL_IRQ_PMC" -parent ${h_plpsint} -widget checkBox

  set h_psplint [ipgui::add_group $IPINST -name "PL to PS Interrupts" -parent $interrupt_config -layout horizontal] 

  ipgui::add_param $IPINST -name "PS_USE_IRQ_0" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_1" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_2" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_3" -parent ${h_psplint} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_psplint}
  ipgui::add_param $IPINST -name "PS_USE_IRQ_4" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_5" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_6" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_7" -parent ${h_psplint} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_psplint}
  ipgui::add_param $IPINST -name "PS_USE_IRQ_8" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_9" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_10" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_11" -parent ${h_psplint} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_psplint}
  ipgui::add_param $IPINST -name "PS_USE_IRQ_12" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_13" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_14" -parent ${h_psplint} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_IRQ_15" -parent ${h_psplint} -widget checkBox

  set h_debug [ipgui::add_group $IPINST -name "Debug" -parent $interrupt_config -layout vertical] 
  set h_plpscti [ipgui::add_group $IPINST -name "PL to PS Cross Trigger Inputs" -parent $h_debug -layout horizontal] 

  ipgui::add_param $IPINST -name "PS_FTM_CTI_IN_0" -parent ${h_plpscti} -widget checkBox
  ipgui::add_param $IPINST -name "PS_FTM_CTI_IN_1" -parent ${h_plpscti} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_plpscti}
  ipgui::add_param $IPINST -name "PS_FTM_CTI_IN_2" -parent ${h_plpscti} -widget checkBox
  ipgui::add_param $IPINST -name "PS_FTM_CTI_IN_3" -parent ${h_plpscti} -widget checkBox

  set h_psplcti [ipgui::add_group $IPINST -name "PS to PL Cross Trigger Inputs" -parent $h_debug -layout horizontal] 
  ipgui::add_param $IPINST -name "PS_FTM_CTI_OUT_0" -parent ${h_psplcti} -widget checkBox
  ipgui::add_param $IPINST -name "PS_FTM_CTI_OUT_1" -parent ${h_psplcti} -widget checkBox
  ipgui::add_row $IPINST -parent ${h_psplcti}
  ipgui::add_param $IPINST -name "PS_FTM_CTI_OUT_2" -parent ${h_psplcti} -widget checkBox
  ipgui::add_param $IPINST -name "PS_FTM_CTI_OUT_3" -parent ${h_psplcti} -widget checkBox


  ipgui::add_param $IPINST -name "PS_USE_FTM_GPO" -parent ${h_debug} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_FTM_GPI" -parent ${h_debug} -widget checkBox

  set h_procInt [ipgui::add_group $IPINST -name "Processor Interrupts" -parent $h_debug -layout vertical] 
  
  ipgui::add_param $IPINST -name "PS_USE_RPU_INTERRUPT" -parent ${h_procInt} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_APU_INTERRUPT" -parent ${h_procInt} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_RPU_EVENT" -parent ${h_procInt} -widget checkBox
  ipgui::add_param $IPINST -name "PS_USE_PROC_EVENT_BUS" -parent ${h_procInt} -widget checkBox


  
  #set h_ipi [ipgui::add_group $IPINST -name "Inter Processor Interrupt(IPI) Configuration" -parent $interrupt_config -layout horizontal] 
  
  #set table [ipgui::add_table $IPINST -name "IPI_Slave_masters" -rows "11" -columns "3" -layout horizontal -parent ${h_ipi}]
  #set text0 [ipgui::add_static_text $IPINST -name "IPI" -text "<b>IPI</b>" -parent ${table} ]
  #set text1 [ipgui::add_static_text $IPINST -name "IPIEnable " -text "<b>Enable</b>" -parent ${table} ]
  #set text2 [ipgui::add_static_text $IPINST -name "master" -text "<b>Master</b>" -parent ${table} ]
  #set_property cell_location 0,0  [ ipgui::get_textspec ${text0} -of $IPINST ]
  #set_property cell_location 0,1  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 0,2  [ ipgui::get_textspec ${text2} -of $IPINST ]
  
  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMC_ENABLE"  -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMC_MASTER"  -parent ${table} -widget comboBox]
  
  #set text1 [ipgui::add_static_text $IPINST -name "IPI_PMC" -text "IPI PMC" -parent ${table} ]
  #set_property cell_location 1,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 1,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 1,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMCNOBUF_ENABLE"  -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PMCNOBUF_MASTER"  -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI_PMCNBUF" -text "IPI PMC No BUF" -parent ${table} ]
  #set_property cell_location 2,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 2,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 2,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  
  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PSM_ENABLE"  -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_PSM_MASTER"  -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI_PSM" -text "IPI PSM" -parent ${table} ]
  #set_property cell_location 3,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 3,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 3,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_0_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_0_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI 0" -text "IPI 0" -parent ${table} ]
  #set_property cell_location 4,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 4,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 4,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
 
  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_1_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_1_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI 1" -text "IPI 1" -parent ${table} ]
  #set_property cell_location 5,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 5,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 5,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
 
  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_2_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_2_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI2" -text "IPI 2" -parent ${table} ]
  #set_property cell_location 6,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 6,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 6,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_3_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_3_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI3" -text "IPI 3" -parent ${table} ]
  #set_property cell_location 7,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 7,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 7,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]
  
  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_4_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_4_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI 4" -text "IPI 4" -parent ${table} ]
  #set_property cell_location 8,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 8,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 8,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_5_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_5_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI_5" -text "IPI 5" -parent ${table} ]
  #set_property cell_location 9,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 9,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 9,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

  #set param1 [ipgui::add_param $IPINST -name "PS_GEN_IPI_6_ENABLE"    -parent ${table} -widget checkBox]
  #set param2 [ipgui::add_param $IPINST -name "PS_GEN_IPI_6_MASTER"    -parent ${table} -widget comboBox]
  #set text1 [ipgui::add_static_text $IPINST -name "IPI 6" -text "IPI 6" -parent ${table} ]
  #set_property cell_location 10,0  [ ipgui::get_textspec ${text1} -of $IPINST ]
  #set_property cell_location 10,1  [ ipgui::get_guiparamspec ${param1} -of $IPINST ]
  #set_property cell_location 10,2  [ ipgui::get_guiparamspec ${param2} -of $IPINST ]

 
}
