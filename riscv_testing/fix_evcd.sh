#!/bin/bash

cd $( dirname $0)
root_dir=${PWD}
cd - &>/dev/null

original_evcd=${1}

#ports="153|157|158|159|160|161"
ports="472|473"


#-----------------------------------------------
# MAIN
#-----------------------------------------------

if [ $# -ne 1 ]; then
   echo "Usage: $0 <evcd>" >&2
   exit 1
fi

if [ ! -e "${original_evcd}" ]; then
   echo "Error: ${original_evcd} not found." >&2
   exit 1
fi


tmpdir=$(mktemp -d)
trap 'rm -rf "${tmpdir}"' EXIT INT TERM HUP
fixed_evcd=${tmpdir}/fixed.evcd

awk '{ 
   if($NF ~ /^<('"${ports}"')$/) {
      gsub("X","N",$1);
      gsub("L","D",$1);
      gsub("H","U",$1);
   }
   print
}' ${original_evcd} | awk    '
        /ext_perf_counters_i \[0\]/ {$6="[2]"}
        /ext_perf_counters_i \[-1\]/ {$6="[1]"}
        /apu_master_type_o \[0\]/ {$6="[2]"}
        /apu_master_type_o \[-1\]/ {$6="[1]"}
        {print}'  > ${fixed_evcd}

mv -v ${fixed_evcd} ${original_evcd}.fixed


