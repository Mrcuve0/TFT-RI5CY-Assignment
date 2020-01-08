#!/bin/bash

cd $(dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/../riscv_testing/run
sbst_dir=${root_dir}/../riscv_testing/sbst_asm

stil_file_name=atpg_patterns_$1.stil
asm_file_name=atpg_patterns_$1.S

cd ${run_dir}

${root_dir}/stil_parser.py ${run_dir}/${stil_file_name} > ${sbst_dir}/${asm_file_name}
echo "Analyzing the \”run/${stil_file_name}\" file ..."
echo "Writing the ASM \"sbst_asm/${asm_file_name}\" file ..."
