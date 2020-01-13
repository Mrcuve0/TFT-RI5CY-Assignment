#!/usr/bin/env python3

import re, sys, io, random

stil_filename = sys.argv[1]

ls3_Ops = ['p.adduN', 'p.subuN']
ls2_Ops = ['p.clip', 'p.clipu']
rs1_Ops = ['p.ff1', 'p.fl1', 'p.clb', 'p.cnt']

signals_bits = [
	('clk', 1),
	('rst_n', 1),
	('alu_operator_i', 7),
	('alu_operand_a_i', 32),
	('alu_operand_b_i', 32),
	('alu_operand_c_i', 32),
	('alu_en_i', 1),
	('alu_is_clpx_i', 1),
	('alu_is_subrot_i', 1),
	('bmask_a_i', 5),
	('bmask_b_i', 5),
	('imm_vec_ext_i', 2),
	('alu_vec_mode_i', 2),
	('alu_clpx_shift_i', 2),
	('mult_operator_i', 3),
	('mult_operand_a_i', 32),
	('mult_operand_b_i', 32),
	('mult_operand_c_i', 32),
	('mult_en_i', 1), 
	('mult_sel_subword_i', 1), 
	('mult_signed_mode_i', 2), 
	('mult_imm_i', 5),
	('mult_dot_op_a_i', 32), 
	('mult_dot_op_b_i', 32), 
	('mult_dot_op_c_i', 32), 
	('mult_dot_signed_i', 2),
	('mult_is_clpx_i', 1),
	('mult_clpx_shift_i', 2), 
	('mult_clpx_img_i', 1), 
	# ('mult_multicycle_o', 1),
	('fpu_prec_i', 5),
	# ('fpu_fflags_o', 5),
	# ('fpu_fflags_we_o', 1),
	('apu_en_i', 1),
	('apu_op_i', 6), 
	('apu_lat_i', 2),
	('apu_operands_i', 96), 
	('apu_waddr_i', 6), 
	('apu_flags_i', 15), 
	('apu_read_regs_i', 18),
	('apu_read_regs_valid_i', 3), 
	# ('apu_read_dep_o', 1), 
	('apu_write_regs_i', 12),
	('apu_write_regs_valid_i', 2), 
	# ('apu_write_dep_o', 1), 
	# ('apu_perf_type_o', 1),
	# ('apu_perf_cont_o', 1), 
	# ('apu_perf_wb_o', 1), 
	# ('apu_busy_o', 1), 
	# ('apu_ready_wb_o', 1),
	# ('apu_master_req_o', 1),
	# ('apu_master_ready_o', 1), 
	('apu_master_gnt_i', 1),
	# ('apu_master_operands_o', 96), 
	# ('apu_master_op_o', 6),
	('apu_master_valid_i', 1),
	('apu_master_result_i', 32), 
	('lsu_en_i', 1), 
	('lsu_rdata_i', 32), 
	('branch_in_ex_i', 1),
	('regfile_alu_waddr_i', 6), 
	('regfile_we_i', 1), 
	('regfile_waddr_i', 6), 
	('csr_access_i', 1),
	('csr_rdata_i', 32),
	# ('regfile_waddr_wb_o', 6), 
	# ('regfile_we_wb_o', 1), 
	# ('regfile_wdata_wb_o', 32),
	# ('regfile_alu_waddr_fw_o', 6), 
	# ('regfile_alu_we_fw_o', 1), 
	# ('regfile_alu_wdata_fw_o', 32),
	# ('jump_target_o', 32), 
	# ('branch_decision_o', 1), 
	('lsu_ready_ex_i', 1), 
	# ('ex_ready_o', 1),
	# ('ex_valid_o', 1), 
	('wb_ready_i', 1), 
	('lsu_err_i_BAR', 1), #1
	('regfile_alu_we_i', 1)]

# Opcodes are listed in rtl/include/riscv_defines.sv

instr2operands = {

	# TODO: What about adduRN kind of operations? rD = (rs1 + rs2 + 2^(Is3-1))) >> Is3

	# Basic OPs
	'0011000' : 'add',	# rd, rs1, rs2
	'0011001' : 'sub',	# rd, rs1, rs2
	'0011010' : 'p.adduN',	# rD, rs1, rs2, ls3
	'0011011' : 'p.subuN',	# rD, rs1, rs2, ls3
	'0011100' : 'addr',
	'0011101' : 'subr',
	'0011110' : 'addur',
	'0011111' : 'subur',
	'0101111' : 'xor',	# rd, rs1, rs2
	'0101110' : 'or',	# rd, rs1, rs2
	'0010101' : 'and',	# rd, rs1, rs2

	# Shifts
	'0100100' : 'sra',  # rd, rs1, rs2
	'0100101' : 'srl',  # rd, rs1, rs2
	'0100110' : 'p.ror',	# rd, rs1, rs2
	'0100111' : 'sll',  # rd, rs1, rs2

	# Bit counting
	'0110110' : 'p.ff1', 	# rd, rs1
	'0110111' : 'p.fl1', 	# rd, rs1
	'0110100' : 'p.cnt',	# rd, rs1
	'0110101' : 'p.clb', 	# rd, rs1

	# Sign/Zero Extensions
	'0111110' : 'exts',
	'0111111' : 'ext',

	# Comparisons
	'0000000' : 'lts',
	'0000001' : 'ltu',
	'0000100' : 'les',
	'0000101' : 'leu',
	'0001000' : 'gts',
	'0001001' : 'gtu',
	'0001010' : 'ges',
	'0001011' : 'geu',
	'0001100' : 'eq',
	'0001101' : 'ne',

	# Set Lower Than operations
	'0000010' : 'p.slts',
	'0000011' : 'p.sltu',
	'0000110' : 'p.slet', 	# rd, rs1, rs2
	'0000111' : 'p.sletu',	# rd, rs1, rs2

	# Absolute value
	'0010100' : 'abs',
	'0010110' : 'p.clip',	# rd, rs1, ls2
    '0010111' : 'p.clipu',	# rd, rs1, ls2

	# min/max
	'0010000' : 'p.min',	# rd, rs1, rs2
	'0010001' : 'p.minu',	# rd, rs1, rs2
	'0010010' : 'p.max',	# rd, rs1, rs2
	'0010011' : 'p.maxu',	# rd, rs1, rs2

	# Div/Rem
	'0110000' : 'divu', 
	'0110001' : 'div',
	'0110010' : 'remu',
	'0110011' : 'rem',

	'0111010' : 'shuf',
	'0111011' : 'shuf2',
	'0111000' : 'pckl0',
	'0111001' : 'pckhi',

	# MUL_
	'000' : 'mac32',
	'001' : 'msu32',
	'010' : 'i',
	'011' : 'ir',
	'100' : 'dot8',
	'101' : 'dot16',
    '110' : 'h'
}

with open(stil_filename) as stil_file:
	index = 0
	for line in stil_file:

		# Search for "_pi" line
		matched = re.search(r'"_pi"=([01N]+)', line)
		if not matched:
			continue
		pi_string = matched.group(1)

		# Translate "_pi" line to a dictionary
		s = io.StringIO(pi_string)
		pi = {name:s.read(bits) for (name,bits) in signals_bits}
		# print(pi)

		if (pi['alu_operator_i'] in instr2operands.keys() and index%2 == 0):
			instr = instr2operands[pi['alu_operator_i']]
			rs1 = hex(int(pi['alu_operand_a_i'],2))
			rs2 = hex(int(pi['alu_operand_b_i'],2))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))

			if (instr in ls3_Ops):
				# ls3 = hex(int(pi['alu_operand_c_i'],2))
				# print('li t6, {}'.format(ls3))
				# print('{} t2, t0, t1, t6'.format(instr))
				print('{} t2, t0, t1, {}'.format(instr, hex(random.randint(0, 31))))
			elif (instr in ls2_Ops):
				# ls2 = hex(int(pi['alu_operand_c_i'],2))
				# print('li t6, {}'.format(ls2))
				# print('{} t2, t0, t1, t6'.format(instr))
				print('{} t2, t0, {}'.format(instr, hex(random.randint(0, 31))))
			elif (instr in rs1_Ops):
				print('{} t2, t0'.format(instr))
			else:
				print('{} t2, t0, t1'.format(instr))

			index = index + 1 
		
		elif (pi['alu_operator_i'] in instr2operands.keys() and index%2 == 1):
			instr = instr2operands[pi['alu_operator_i']]
			rs1 = hex(int(pi['alu_operand_a_i'],2))
			rs2 = hex(int(pi['alu_operand_b_i'],2))
			print('li t3, {}'.format(rs1))
			print('li t4, {}'.format(rs2))

			if (instr in ls3_Ops):
				# ls3 = hex(int(pi['alu_operand_c_i'],2))
				# print('li t7, {}'.format(ls3))
				# print('{} t5, t3, t4, t7'.format(instr))
				print('{} t5, t3, t4, {}'.format(instr, hex(random.randint(0, 31))))
			elif (instr in ls2_Ops):
				# ls2 = hex(int(pi['alu_operand_c_i'],2))
				# print('li t6, {}'.format(ls2))
				# print('{} t2, t0, t1, t6'.format(instr))
				print('{} t5, t3, {}'.format(instr, hex(random.randint(0, 31))))
			elif (instr in rs1_Ops):
				print('{} t2, t3'.format(instr))
			else:
				print('{} t5, t3, t4'.format(instr))

			print('sw t2, 4(sp)')
			print('sw t5, 8(sp)')
			print('')
			index = 0
		
		
		
		# Swap
		# print('{} t3, t1, t0'.format(instr))
		# Self
		# print('{} t4, t0, t0'.format(instr))
		# print('{} t5, t1, t1'.format(instr))
		# Store
		# print('sw t4, 12(sp)')
		# print('sw t5, 16(sp)')