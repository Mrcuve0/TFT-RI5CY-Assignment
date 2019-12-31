# Copyright 2018 ETH Zurich and University of Bologna.
# Copyright and related rights are licensed under the Solderpad Hardware
# License, Version 0.51 (the "License"); you may not use this file except in
# compliance with the License.  You may obtain a copy of the License at
# http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
# or agreed to in writing, software, hardware and materials distributed under
# this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

# Author: Robert Balas (balasr@student.ethz.ch)
# Description: TCL scripts to facilitate simulations

set NoQuitOnFinish 1

if { $env(RUN_GUI) == 1 } {
	source $env(TB_DIR)/software.tcl

	if { $env(RUN_GATE) == 1 } {
		source $env(TB_DIR)/waves_gate.tcl
	} {
		source $env(TB_DIR)/waves.tcl
	}
}

if { $env(RUN_GATE) == 1 } {
	vcd dumpports -file dumpports_gate.evcd sim:/tb_top/riscv_wrapper_i/riscv_core_i/*
}


when  -fast {/clk'event and /clk = 1'h0 } { 
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_flags_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_flags_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_gnt_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_gnt_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_result_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_result_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_valid_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/apu_master_valid_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/boot_addr_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/boot_addr_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/clock_en_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/clock_en_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/cluster_id_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/cluster_id_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/core_id_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/core_id_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/data_gnt_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/data_gnt_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/data_rdata_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/data_rdata_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/data_rvalid_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/data_rvalid_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/debug_req_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/debug_req_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/ext_perf_counters_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/ext_perf_counters_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/fetch_enable_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/fetch_enable_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/fregfile_disable_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/fregfile_disable_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/instr_gnt_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/instr_gnt_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/instr_rdata_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/instr_rdata_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/instr_rvalid_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/instr_rvalid_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/irq_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/irq_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/irq_id_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/irq_id_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/irq_sec_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/irq_sec_i] -cancel { 6 ns }
	force -freeze /tb_top/riscv_wrapper_i/riscv_core_i/test_en_i [examine /tb_top/riscv_wrapper_i/riscv_core_i/test_en_i] -cancel { 6 ns }
}

#when -fast {/clk'event and /clk = 1'h0 } { 
#	noforce *
#}

run -all

if { $env(RUN_GUI) != 1 } {
	quit
}
