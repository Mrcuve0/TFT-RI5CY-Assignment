#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

cd ${root_dir}/sbst_asm

make
