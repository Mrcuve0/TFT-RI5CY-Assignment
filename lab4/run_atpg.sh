#!/bin/bash

cd $(dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/../riscv_testing/run

cd ${run_dir}

tmax -shell ${root_dir}/tmax_atpg.tcl

