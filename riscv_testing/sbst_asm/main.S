/* Copyright (c) 2017  SiFive Inc. All rights reserved.
 * Copyright (c) 2019  ETH Zürich and University of Bologna
 * This copyrighted material is made available to anyone wishing to use,
 * modify, copy, or redistribute it subject to the terms and conditions
 * of the FreeBSD License.   This program is distributed in the hope that
 * it will be useful, but WITHOUT ANY WARRANTY expressed or implied,
 * including the implied warranties of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE.  A copy of this license is available at
 * http://www.opensource.org/licenses.
 */

/* Entry point for bare metal programs */
.section .text.start
.global _start
.type _start, @function

_start:
/* initialize global pointer */
.option push
.option norelax
1:	auipc gp, %pcrel_hi(__global_pointer$)
	addi  gp, gp, %pcrel_lo(1b)
.option pop

/* initialize stack pointer */
	la sp, _sp

/* set vector table address */
	la a0, __vector_start
	csrw mtvec, a0

/* clear the bss segment */
//	la a0, __bss_start
//	la a2, __bss_end
//	sub a2, a2, a0
//	li a1, 0
//	call memset

/* new-style constructors and destructors */
//	la a0, __libc_fini_array
//	call atexit
//	call __libc_init_array
 
/* call main */
//	lw a0, 0(sp)                    /* a0 = argc */
//	addi a1, sp, __SIZEOF_POINTER__ /* a1 = argv */
//	li a2, 0                        /* a2 = envp = NULL */
//	call main


/************* YOUR ASSEMBLY CODE (BEGIN) ***************************/
// Add Faults
//31.97% in 1359s only div for alu
//36.50% in 2769s div+xor+add
//39.17% in 3496s div+xor+add+sra
//40.72% in 4217s div+xor+add+sra+slt
//41.24% in 5227s div+xor+add+sra+slt+mul
//41.73% in 5116s div+mul+(sra+srl+xor+or+and+add+sub+slt+sltu)VEC_MODE8 
//45.69% in 4572s div+mul+slts+sltu+(sra+srl+xor+or+and+add+sub)VEC_MODE8 

// Faults read from file "initial_faults_exe.txt"
//35.85% in 9059s div+mul+(sra+srl+xor+or+and+add+sub+sltu+slets)VEC_MODE8 

// ALU Patterns
#include "patterns_lfsr2_alu_unit.S"  

// Additional ALU ATPG Patterns (to use with LFSR2 ALU)
#include "atpg_patterns_FF1.S"
#include "atpg_patterns_FL1.S"
#include "atpg_patterns_CNT.S"
#include "atpg_patterns_CLB.S"

//81.98% in 150s for int_div  
//#include "atpg_patterns_divu.S"
//#include "atpg_patterns_div.S"
//#include "atpg_patterns_remu.S"
//#include "atpg_patterns_rem.S"
//#include "patterns_div_unit.S"
//#include "patterns_lfsr_div_unit.S" 
//#include "patterns_lfsr2_div_unit.S" 

//31.72% in 6669s for mul_unit 800
//27.86% in 860 for mul_unit 100
//#include "patterns_lfsr_mul_unit.S"
//#include "patterns_lfsr2_mul_unit.S" 
//#include "patterns_lfsr3_mul_unit.S" 
      
// SRA+SRL 17.08% in 641s for alu_i
// SRA+SRL 17.07% in 392s for alu_i (swap + self) (constraints on VEC_MODE8 (11))
// SRA+SRL 19.78% in 286s for alu_i (swap + self + noStalls) (constraints on VEC_MODE8 (11))
//#include "atpg_patterns_SRA.S"
//#include "atpg_patterns_SRL.S"
//#include "atpg_patterns_ROR.S"
//#include "atpg_patterns_SLL.S"

// XOR+OR+AND 15.67% in 703s for alu_i (no swap, no self) (no constraints on VEC_MODE)
// XOR+OR+AND 15.86% in 504s for alu_i (swap + self) (constraints on VEC_MODE8 (11))
//#include "atpg_patterns_XOR.S"
//#include "atpg_patterns_OR.S"
//#include "atpg_patterns_AND.S"

// ADD+SUB 12.97% in 786s for alu_i (no swap, no self) (no constraints on VEC_MODE)
// ADD+SUB 13.05% in 1361s for alu_i (swap + self) (constraints on VEC_MODE32 (00))
// ADD+SUB 13.01% in 532s for alu_i (swap + self) (constraints on VEC_MODE8 (11))
//#include "atpg_patterns_ADD.S"
//#include "atpg_patterns_SUB.S"
//#include "atpg_patterns_ADDUN.S" // rD, rs1, rs2, ls3 | Instruction p.addun requires absolute expression (SOLVED w/ random extraction)
//#include "atpg_patterns_SUBUN.S" // rD, rs1, rs2, ls3 | Instruction p.subun requires absolute expression (SOLVED w/ random extraction)
//#include "atpg_patterns_CLIPR.S"	// Cannot find related OPCODE in riscv_defines
//#include "atpg_patterns_CLIPUR.S" // Cannot find related OPCODE in riscv_defines
//#include "atpg_patterns_CLIP.S"
//#include "atpg_patterns_CLIPU.S"
//#include "atpg_patterns_MIN.S"
//#include "atpg_patterns_MINU.S"
//#include "atpg_patterns_MAX.S"
//#include "atpg_patterns_MAXU.S"

//14.9% in 693s for alu_i
//#include "atpg_patterns_slts.S" 	// <-- NOT in RISCY
//#include "atpg_patterns_SLTU.S" 	// <-- NOT in RISCY
//#include "atpg_patterns_slets.S" 	// <-- NOT in RISCY
//#include "atpg_patterns_SLET.S" 	// <-- p.slet in RISCY
//#include "atpg_patterns_SLETU.S"	// <-- p.sletu in RISCY



/************* YOUR ASSEMBLY CODE (END) *****************************/

	tail exit

.size  _start, .-_start

.global _init
.type   _init, @function
.global _fini
.type   _fini, @function
_init:
_fini:
 /* These don't have to do anything since we use init_array/fini_array. Prevent
    missing symbol error */
	ret
.size  _init, .-_init
.size _fini, .-_fini
