#!/usr/bin/env python3

import re, sys, io

stil_filename = sys.argv[1]

signals_bits = [
	('clk', 1),
	('rst_n', 1),
	('enable_i', 1),
	('operator_i', 7),
	('operand_a_i', 32),
	('operand_b_i', 32),
	('operand_c_i', 32),
	('vector_mode_i', 2),
	('bmask_a_i', 5),
	('bmask_b_i', 5),
	('imm_vec_ext_i', 2),
	('is_clpx_i', 1),
	('is_subrot_i', 1),
	('clpx_shift_i', 2),
	('ex_ready_i', 1)]

# Opcodes are listed in rtl/include/riscv_defines.sv

instr2operands = {

	# TODO: What about adduRN kind of operations? rD = (rs1 + rs2 + 2^(Is3-1))) >> Is3

	# Basic OPs
	'0011000' : 'add',	# rd, rs1, rs2
	'0011001' : 'sub',	# rd, rs1, rs2
	'0011010' : 'addu',
	'0011011' : 'subu',
	'0011100' : 'addr',
	'0011101' : 'subr',
	'0011110' : 'addur',
	'0011111' : 'subur',
	'0101111' : 'xor',
	'0101110' : 'or',
	'0010101' : 'and',

	# Shifts
	'0100100' : 'sra',
	'0100101' : 'srl',
	'0100110' : 'ror',	# rd, rs1, rs2
	'0100111' : 'sll',

	# Bit counting
	'0110110' : 'ff1', 	# rd, rs1
	'0110111' : 'fl1', 	# rd, rs1
	'0110100' : 'cnt',	# rd, rs1
	'0110101' : 'clb', 	# rd, rs1

	# Sign/Zero Extensions
	'0111110' : 'exts',
	'0111111' : 'ext',

	# Set Lower Than operations
	'0000010' : 'slts',
	'0000011' : 'sltu',
	'0000110' : 'slets', 	# rd, rs1, rs2
	'0000111' : 'sletu',	# rd, rs1, rs2

	# min/max
	'0010000' : 'min',	# rd, rs1, rs2
	'0010001' : 'minu',	# rd, rs1, rs2
	'0010010' : 'max',	# rd, rs1, rs2
	'0010011' : 'maxu',	# rd, rs1, rs2

	# Div/Rem
	'0110000' : 'divu', 
	'0110001' : 'div',
	'0110010' : 'remu',
	'0110011' : 'rem',

	# add others..
}

with open(stil_filename) as stil_file:
	for line in stil_file:

		# Search for "_pi" line
		matched = re.search(r'"_pi"=([01N]+)', line)
		if not matched:
			continue
		pi_string = matched.group(1)

		# Translate "_pi" line to a dictionary
		s = io.StringIO(pi_string)
		pi = {name:s.read(bits) for (name,bits) in signals_bits}
		#print(pi)

		if pi['operator_i'] in instr2operands.keys():
			instr = instr2operands[pi['operator_i']]
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2))
			# print('li t0, {}'.format(rs1))
			# print('li t1, {}'.format(rs2))
			# print('{} t2, t0, t1'.format(instr))
			# print('sw t2, 4(sp)')

			# # Swap
			# print('{} t2, t1, t0'.format(instr))
			# print('sw t2, 4(sp)')

			# # Self
			# print('{} t2, t0, t0'.format(instr))
			# print('sw t2, 4(sp)')
			# print('{} t2, t1, t1'.format(instr))
			# print('sw t2, 4(sp)')
			# print('')

			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			# Swap
			print('{} t3, t1, t0'.format(instr))
			# Self
			print('{} t4, t0, t0'.format(instr))
			print('{} t5, t1, t1'.format(instr))
			# Store
			print('sw t2, 4(sp)')
			print('sw t3, 8(sp)')
			print('sw t4, 12(sp)')
			print('sw t5, 16(sp)')
			print('')