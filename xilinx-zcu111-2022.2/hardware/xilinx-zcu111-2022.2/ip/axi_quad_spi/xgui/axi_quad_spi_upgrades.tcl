#####Upgrades TCL file

namespace eval axi_quad_spi_v3_2_utils {

#        proc warning_for_upgrade_from_axi_quad_spi_v2_00_a {} {
#
#return "Upgrading from AXI Quad SPI core version 2.00.a to version 3.0 will provide this warning message. User need to make sure about the updates in the parameters while upgrading to the new version.\n"
#        }
      
        proc upgrade_from_axi_quad_spi_v3_0 {xciValues} {

          namespace import ::xcoUpgradeLib::*
          upvar $xciValues valueArray


         addParameter C_SPI_MEM_ADDR_BITS 24 valueArray

	  return
        }


}

