#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

run_dir=${root_dir}/run

rm -rv ${run_dir}

cd ${root_dir}/sbst_c
make clean

cd ${root_dir}/sbst_asm
make clean

