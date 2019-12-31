#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

program=${root_dir}/$1

run_dir=${root_dir}/run
export TB_DIR=${root_dir}/tb/core

export RUN_GUI=1
export RUN_GATE=1

cd ${run_dir}

vsim -gui -work work_gate tb_top_vopt "+firmware=${program}" +dumpports+nocollapse -do ${root_dir}/vsim.tcl

