#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/run

cd ${run_dir}

${root_dir}/fix_evcd.sh dumpports_gate.evcd

tmax -shell ${root_dir}/tmax.tcl

