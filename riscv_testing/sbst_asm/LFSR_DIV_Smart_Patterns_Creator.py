#!/usr/bin/env python3

import random

listDIVOps = ['div', 'divu', 'rem', 'remu']
operands = ['x18', 'x19']
storeRegs = ['x22', 'x23', 'x24', 'x25']


def writeSection(DIV_file):
    DIV_file.write('li {}, {}\n\n'.format(operands[0], hex(random.randint(0, pow(2, 32) - 1))))

    imm = 1
    imm3 = 1

    for i in range(1, 32):

        DIV_file.write('li {}, '.format(operands[1]) + hex(imm3) + '\n')

        for j in range(0, 4):
            DIV_file.write('{} {}, {}, {}\n'.format(listDIVOps[j], storeRegs[j], operands[0], operands[1]))
        
        for j in range(0, 4):
            DIV_file.write('sw  {},'.format(storeRegs[j]) +  str(4*j) + '(sp)\n')

        imm = (1 << i)
        # print('imm:' + str(hex(imm)))
        # print('imm:' + str(bin(imm)))
        imm2 = random.randint(0, pow(2, i))
        # print('imm2:' + str(hex(imm2)))

        imm3 = imm | imm2
        # print(hex(imm3))
        # print(bin(imm3))
        DIV_file.write('\n')

def main(): 
    DIV_file = open('LFSR_DIV_Smart_Patterns.S', 'w')
    writeSection(DIV_file)
    writeSection(DIV_file)

if __name__ == "__main__":
    main()

    

