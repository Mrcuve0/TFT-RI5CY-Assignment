#!/usr/bin/env python3

import os
import subprocess

opcodesList = ['ADD']

def main():
    currPath = os.getcwd()

    for opcode in opcodesList:
        subprocess.call(str(currPath) + "/../lab4/run_atpg.sh " + opcode, shell=True)
        subprocess.call(str(currPath) + "/../lab4/run_parser.sh " + opcode, shell=True)
	

if __name__ == "__main__":
    main()