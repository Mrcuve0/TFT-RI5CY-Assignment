# Setup
set_environment_viewer -instance_names
set_messages -log tmax.log -replace

## Build and DRC
read_netlist ../gate/NangateOpenCellLibrary.tlib -library
read_netlist ../gate/riscv_core.v
run_build_model riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800
add_clocks 1 clk_i
run_drc

## Load and check patterns
set_patterns -external dumpports_gate.evcd.fixed  -sensitive -strobe_period { 10 ns } -strobe_offset { 4 ns } -vcd_clock auto
run_simulation -sequential

## Transition faults
set_faults -model transition -fault_coverage -atpg_effectiveness -summary verbose
set_delay -launch system_clock

## Fault list (select one of the following)
read_faults ../initial_faults_exe.txt
#read_faults ../initial_faults_cpu.txt
#add_faults ex_stage_i/alu_i
#add_faults ex_stage_i/alu_i/int_div_div_i
#add_faults ex_stage_i/mult_i
#add_faults id_stage_i/registers_i/riscv_register_file_i
#read_faults previous_fsim_faults.txt -force_retain_code -add

## Fault simulation
run_fault_sim -sequential

## Reports
set_faults -fault_coverage
report_faults -level {5 100} > report_faults_hierarchy.txt
report_faults -level {100 1} -verbose > report_faults_verbose.txt
report_summaries > report_summaries.txt
write_faults fsim_faults.txt -replace -all
quit
