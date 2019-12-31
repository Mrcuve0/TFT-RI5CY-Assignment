#!/bin/bash

cd $(dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/../riscv_testing/run
sbst_dir=${root_dir}/../riscv_testing/sbst_asm

cd ${run_dir}

${root_dir}/stil_parser.py ${run_dir}/atpg_patterns.stil > ${sbst_dir}/atpg_patterns.S
