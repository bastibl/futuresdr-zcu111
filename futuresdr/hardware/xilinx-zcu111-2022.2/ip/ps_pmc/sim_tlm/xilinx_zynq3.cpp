/*
 Xilinx SystemC/TLM-2.0 Zynq3 Wrapper.

 Written by Edgar E. Iglesias <edgar.iglesias@xilinx.com>

 Copyright (c) 2018, Xilinx Inc.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

#define SC_INCLUDE_DYNAMIC_PROCESSES

#include <inttypes.h>

#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"

using namespace sc_core;
using namespace std;

#include "xilinx_zynq3.h"
#include <sys/types.h>

xilinx_zynq3::xilinx_zynq3(sc_module_name name, const char *sk_descr)
	: remoteport_tlm(name, -1, sk_descr),
	  rp_m_axi_gp_0("rp_m_axi_gp_0"),
	  rp_m_axi_gp_2("rp_m_axi_gp_2"),
	  rp_if_ps_noc_cci_0("rp_if_ps_noc_cci_0"),
	  rp_if_ps_noc_cci_1("rp_if_ps_noc_cci_1"),
	  rp_if_ps_noc_cci_2("rp_if_ps_noc_cci_2"),
	  rp_if_ps_noc_cci_3("rp_if_ps_noc_cci_3"),
	  rp_if_ps_noc_nci_0("rp_if_ps_noc_nci_0"),
	  rp_if_ps_noc_nci_1("rp_if_ps_noc_nci_1"),
	  rp_if_ps_noc_pcie_0("rp_if_ps_noc_pcie_0"),
	  rp_if_ps_noc_pcie_1("rp_if_ps_noc_pcie_1"),
	  rp_if_ps_noc_rpu_0("rp_if_ps_noc_rpu_0"),
	  rp_if_pmc_noc_axi_0("rp_if_pmc_noc_axi_0"),

	  rp_s_axi_gp_0("rp_s_axi_gp_0"),
	  rp_s_axi_gp_2("rp_s_axi_gp_2"),
	  rp_s_axi_gp_4("rp_s_axi_gp_4"),

	  rp_s_axi_acp("rp_s_axi_acp"),
	  rp_s_axi_ace("rp_s_axi_ace"),

	  rp_if_noc_ps_nci_0("rp_if_noc_ps_nci_0"),
	  rp_if_noc_ps_nci_1("rp_if_noc_ps_nci_1"),
	  rp_if_noc_ps_cci_0("rp_if_noc_ps_cci_0"),
	  rp_if_noc_ps_cci_1("rp_if_noc_ps_cci_1"),
	  rp_if_noc_ps_pcie_0("rp_if_noc_ps_pcie_0"),
	  rp_if_noc_ps_pcie_1("rp_if_noc_ps_pcie_1"),
	  rp_if_noc_pmc_axi_0("rp_if_noc_pmc_axi_0")
{
	m_axi_gp_0 = &rp_m_axi_gp_0.sk;
	m_axi_gp_2 = &rp_m_axi_gp_2.sk;
	if_ps_noc_cci_0 = &rp_if_ps_noc_cci_0.sk;
	if_ps_noc_cci_1 = &rp_if_ps_noc_cci_1.sk;
	if_ps_noc_cci_2 = &rp_if_ps_noc_cci_2.sk;
	if_ps_noc_cci_3 = &rp_if_ps_noc_cci_3.sk;
	if_ps_noc_nci_0 = &rp_if_ps_noc_nci_0.sk;
	if_ps_noc_nci_1 = &rp_if_ps_noc_nci_1.sk;
	if_ps_noc_pcie_0 = &rp_if_ps_noc_pcie_0.sk;
	if_ps_noc_pcie_1 = &rp_if_ps_noc_pcie_1.sk;
	if_ps_noc_rpu_0 = &rp_if_ps_noc_rpu_0.sk;
	if_pmc_noc_axi_0 = &rp_if_pmc_noc_axi_0.sk;

	s_axi_gp_0 = &rp_s_axi_gp_0.sk;
	s_axi_gp_2 = &rp_s_axi_gp_2.sk;
	s_axi_gp_4 = &rp_s_axi_gp_4.sk;

	s_axi_acp = &rp_s_axi_acp.sk;
	s_axi_ace = &rp_s_axi_ace.sk;

	if_noc_ps_nci_0 = &rp_if_noc_ps_nci_0.sk;
	if_noc_ps_nci_1 = &rp_if_noc_ps_nci_1.sk;
	if_noc_ps_cci_0 = &rp_if_noc_ps_cci_0.sk;
	if_noc_ps_cci_1 = &rp_if_noc_ps_cci_1.sk;
	if_noc_ps_pcie_0 = &rp_if_noc_ps_pcie_0.sk;
	if_noc_ps_pcie_1 = &rp_if_noc_ps_pcie_1.sk;
	if_noc_pmc_axi_0 = &rp_if_noc_pmc_axi_0.sk;

	register_dev(10, &rp_s_axi_gp_0);
	register_dev(12, &rp_s_axi_gp_2);
	register_dev(14, &rp_s_axi_gp_4);
	register_dev(15, &rp_s_axi_acp);
	register_dev(16, &rp_s_axi_ace);
	register_dev(17, &rp_if_noc_ps_nci_0);
	register_dev(18, &rp_if_noc_ps_nci_1);
	register_dev(19, &rp_if_noc_ps_cci_0);
	register_dev(20, &rp_if_noc_ps_cci_1);
	register_dev(21, &rp_if_noc_ps_pcie_0);
	register_dev(22, &rp_if_noc_ps_pcie_1);
	register_dev(23, &rp_if_noc_pmc_axi_0);

	register_dev(40, &rp_m_axi_gp_0);
	register_dev(42, &rp_m_axi_gp_2);
	register_dev(50, &rp_if_ps_noc_cci_0);
	register_dev(51, &rp_if_ps_noc_cci_1);
	register_dev(52, &rp_if_ps_noc_cci_2);
	register_dev(53, &rp_if_ps_noc_cci_3);
	register_dev(54, &rp_if_ps_noc_nci_0);
	register_dev(55, &rp_if_ps_noc_nci_1);
	register_dev(56, &rp_if_ps_noc_pcie_0);
	register_dev(57, &rp_if_ps_noc_pcie_1);
	register_dev(58, &rp_if_ps_noc_rpu_0);
	register_dev(59, &rp_if_pmc_noc_axi_0);
}
