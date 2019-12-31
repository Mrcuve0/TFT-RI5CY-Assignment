# Setup
set_environment_viewer -instance_names
set_messages -log tmax.log -replace

## Build
read_netlist ../gate/NangateOpenCellLibrary.tlib -library
read_netlist ../gate/riscv_core.v
run_build_model riscv_alu_SHARED_INT_DIV0_FPU0

## DRC

# ADD Opcode - b0011000
# add_pi_constraints 0 operator_i[6]
# add_pi_constraints 0 operator_i[5]
# add_pi_constraints 1 operator_i[4]
# add_pi_constraints 1 operator_i[3]
# add_pi_constraints 0 operator_i[2]
# add_pi_constraints 0 operator_i[1]
# add_pi_constraints 0 operator_i[0]

# SUB Opcode - b0011001
add_pi_constraints 0 operator_i[6]
add_pi_constraints 0 operator_i[5]
add_pi_constraints 1 operator_i[4]
add_pi_constraints 1 operator_i[3]
add_pi_constraints 0 operator_i[2]
add_pi_constraints 0 operator_i[1]
add_pi_constraints 1 operator_i[0]

# Disables vector mode --> VEC_MODE32 = 2'b00
add_pi_constraints 1 vector_mode_i[0]
add_pi_constraints 1 vector_mode_i[1]

run_drc

## Transition faults
set_faults -model transition -fault_coverage -atpg_effectiveness -summary verbose
set_delay -launch system_clock

#set_patterns -external atpg_patterns.stil

## ATPG
add_faults -all
# add_faults ex_stage_i/alu_i
set_patterns -internal
run_atpg -auto_compression


#read_faults atpg_faults.txt -force_retain_code -add
#run_fault_sim -sequential
#remove_faults /int_div_div_i
#add_faults ex_stage_i/alu_i/int_div_div_i

## Reports
write_patterns atpg_patterns.stil -format stil -internal -replace
#set_faults -fault_coverage
#report_faults -level {5 100} > report_faults_hierarchy.txt
#report_faults -level {100 1} -verbose > report_faults_verbose.txt
#report_summaries > report_summaries.txt
write_faults atpg_faults.txt -replace -all

quit
