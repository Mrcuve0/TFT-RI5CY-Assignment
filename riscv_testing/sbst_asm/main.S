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


/************* YOUR ASSEMBLY CODE (BEGIN) ***************************
//31.97% in 1359s only div for alu
//36.50% in 2769s div+xor+add
//39.17% in 3496s div+xor+add+sra
//40.72% in 4217s div+xor+add+sra+slt
//41.24% in 5227s div+xor+add+sra+slt+mul

//81.98% in 150s for int_div
#include "atpg_patterns_divu.S"
#include "atpg_patterns_div.S"
#include "atpg_patterns_remu.S"
#include "atpg_patterns_rem.S"
#include "patterns_div_unit.S"
#include "patterns_lfsr_div_unit.S"

//31.72% in 6669s for mul_unit 800
//27.86% in 860 for mul_unit 100
#include "patterns_lfsr_mul_unit.S"

//17.08% in 641s on alu_i
#include "atpg_patterns_sra.S"
#include "atpg_patterns_srl.S"

*/

// XOR+OR+AND 15.67% in 703s for alu_i (no swap, no self) (no constraints on VEC_MODE)
// XOR+OR+AND 15.86% in 504s for alu_i (swap + self) (no constraints on VEC_MODE8 (11))
#include "atpg_patterns_xor.S"
#include "atpg_patterns_or.S"
#include "atpg_patterns_and.S"

// ADD+SUB 12.97% in 786s for alu_i (no swap, no self) (no constraints on VEC_MODE)
// ADD+SUB 13.05% in 1361s for alu_i (swap + self) (constraints on VEC_MODE32 (00))
// ADD+SUB 13.01% in 532s for alu_i (swap + self) (constraints on VEC_MODE8 (11))
// #include "atpg_patterns_add.S"
// #include "atpg_patterns_sub.S"


/*
//14.9% in 693s for alu_i
#include "atpg_patterns_slt.S"
#include "atpg_patterns_sltu.S"
 */


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
