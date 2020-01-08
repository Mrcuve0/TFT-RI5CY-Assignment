# Setup
set_environment_viewer -instance_names
set_messages -log tmax.log -replace

## Build
read_netlist ../gate/NangateOpenCellLibrary.tlib -library
read_netlist ../gate/riscv_core.v
run_build_model riscv_ex_stage_FPU0_FP_DIVSQRT0_SHARED_FP0_SHARED_DSP_MULT0_SHARED_INT_DIV0_APU_NARGS_CPU3_APU_WOP_CPU6_APU_NDSFLAGS_CPU15_APU_NUSFLAGS_CPU5
#un_build_model riscv_core_0_128_1_16_1_1_0_0_0_0_0_0_0_0_0_3_6_15_5_1a110800

## DRC

# riscv_alu_SHARED_INT_DIV0_FPU0
# riscv_mult_SHARED_DSP_MULT0

# DIVU Opcode - b0110000
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]

# DIV Opcode - b0110001
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# REMU Opcode - b0110010
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]

# REM Opcode - b0110011
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# SRA Opcode - b0100100
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]

# SRL Opcode - b0100101
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# XOR Opcode - b0101111
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 1 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# OR Opcode - b0101110
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 1 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 1 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]

# AND Opcode - b0010101
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# ADD Opcode - b0011000
add_pi_constraints 0 alu_operator_i[6]
add_pi_constraints 0 alu_operator_i[5]
add_pi_constraints 1 alu_operator_i[4]
add_pi_constraints 1 alu_operator_i[3]
add_pi_constraints 0 alu_operator_i[2]
add_pi_constraints 0 alu_operator_i[1]
add_pi_constraints 0 alu_operator_i[0]

# SUB Opcode - b0011001
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 1 alu_operator_i[4]
# add_pi_constraints 1 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 0 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# SLTU Opcode - b0000011
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]

# SLETS Opcode - b0000110 UNRECOGNIZED | SLET
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]

# SLETU Opcode - b0000111 -- p.sletu RECOGNIZED
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 1 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 1 alu_operator_i[0]


### ------ IGNORE FOR NOW ------ ###
# SLTS Opcode - b0000010 -- UNRECOGNIZED
# add_pi_constraints 0 alu_operator_i[6]
# add_pi_constraints 0 alu_operator_i[5]
# add_pi_constraints 0 alu_operator_i[4]
# add_pi_constraints 0 alu_operator_i[3]
# add_pi_constraints 0 alu_operator_i[2]
# add_pi_constraints 1 alu_operator_i[1]
# add_pi_constraints 0 alu_operator_i[0]



# Disables vector mode --> VEC_MODE32 = 2'b00
# Enables vector mode --> VEC_MODE8 = 2'b11
add_pi_constraints 1 alu_vec_mode_i[0]
add_pi_constraints 1 alu_vec_mode_i[1]

# Combinational Blocks (ALU)
add_pi_constraints X clk

# Sequential Blocks (MUL e DIV)
# add_clocks 1 clk

run_drc

## Transition faults
set_faults -model transition -fault_coverage -atpg_effectiveness -summary verbose
set_delay -launch system_clock

## Fault list
read_faults /home/s256813/riscv_testing/initial_faults_exe.txt

## ATPG
# set_atpg -abort_limit 50
set_patterns -internal

# Sequential Blocks (MUL e DIV)
# set_atpg -full_seq_atpg

run_atpg -auto_compression

## Reports
write_patterns atpg_patterns.stil -format stil -internal -replace
#set_faults -fault_coverage
#report_faults -level {5 100} > report_faults_hierarchy.txt
#report_faults -level {100 1} -verbose > report_faults_verbose.txt
#report_summaries > report_summaries.txt
write_faults atpg_faults.txt -replace -all

quit
