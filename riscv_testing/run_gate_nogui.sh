#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

program=${root_dir}/$1

run_dir=${root_dir}/run
export TB_DIR=${root_dir}/tb/core

export RUN_GUI=0
export RUN_GATE=1

if [ $# -ne 1 ]; then
   echo "Usage: $0 path/to/file.hex" >&2
   exit 1
fi

if [ ! -e "${program}" ]; then
   echo "Error: ${program} not found." >&2
   exit 1
fi


cd ${run_dir}

vsim -c -work work_gate tb_top_vopt "+firmware=${program}" +dumpports+nocollapse -suppress 3015 -do ${root_dir}/vsim.tcl

