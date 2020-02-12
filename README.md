# TFT-RI5CY-Assignment

## Source files and documentation for the final assignment of the "Testing and Fault Tolerance" course.

[![DevelopmentStatus](https://img.shields.io/badge/Development-Stopped-red.svg)](https://img.shields.io/badge/Development-Stopped-red.svg)

![Twitter Follow](https://img.shields.io/twitter/follow/Mrcuve0?label=Follow%20Me%21%20%40Mrcuve0&style=social)


### **REPO ORGANIZATION && DOCUMENTATION**

You can find additional documentation [here](https://github.com/Mrcuve0/TFT-RI5CY-Assignment/blob/master/riscv_testing/report/TFT_report.pdf).

### **PROJECT OBJECTIVE**

The objective for this assignment is to develop a functional testbench in the form of a single program, either
written in C or in asm, able to target single transition delay faults for the execution unit of a RI5CY CPU.
Some assumptions made for this project are:

* Single transition delay faults
* I/O signals observable and controllable at any clock cycle

The default flow provided during the lab sessions has been used, only the tmax.tcl file has been modified to
evaluate the faults in the execution unit and to look for delay faults instead of stuck-at faults.


### **TOOLS**
* Editor: ***VS-Code w/ SSH Remote Extension***
* Simulators: ***Mentor Graphics Modelsim***
* ATPG + Fault Simulator: ***Synopsys TetraMAX***


### **OTHER**

Please, refer to the badges "`development`" you can find at the top of each README, here's some additional infos:

1. [![DevelopmentStatus](https://img.shields.io/badge/Development-Ongoing-brightgreen.svg)](https://img.shields.io/badge/Development-Ongoing-brightgreen.svg)
> This means I'm currently enhancing/fixing the project. I'm open to suggestions and Pull Requests, that will be treated as soon as possible.
2. [![DevelopmentStatus](https://img.shields.io/badge/Development-Paused-yellow.svg)](https://img.shields.io/badge/Development-Paused-yellow.svg)
> This means I'm currently not considering the project as a top priority, hence issues and Pull Request will be still treated, but with higher delays. The development status can reach a higher priority ("Ongoing") or a lower one "Stopped" at any time.
3. [![DevelopmentStatus](https://img.shields.io/badge/Development-Stopped-red.svg)](https://img.shields.io/badge/Development-Stopped-red.svg)
> This means I'd prefer to consider this project abandoned. I could reconsider this development status only if some really big opportunities present itselves and really worth the effort. Issues and PR will be probably read but not considered.

*As a general rule*, take in mind that my entire [GitHub profile](https://github.com/Mrcuve0) (themes included!) is based on my sparse time and it is mainly passion-driven. As for now, *my number one priority* is finishing my **Master's Degree in Embedded Systems**: don't panic if I cannot reply to your issue even after a week, I'm probably really busy and I'm making already restless nights.

### **LICENSES**

All the source code related to this repo is released under the [GPLv3 license](https://github.com/Mrcuve0/TFT-RI5CY-Assignment/blob/master/LICENSE)
