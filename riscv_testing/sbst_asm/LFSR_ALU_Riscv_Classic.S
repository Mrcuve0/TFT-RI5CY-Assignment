li x18, 0xAAAAAAAA // Random init number
li x19, 0x55555555 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001
    

LoopALU_Riscv_Classic_1:

    #   _____  _____  _____  _______      __   _____ _               _         ____            
    #  |  __ \|_   _|/ ____|/ ____\ \    / /  / ____| |             (_)       / __ \           
    #  | |__) | | | | (___ | |     \ \  / /  | |    | | __ _ ___ ___ _  ___  | |  | |_ __  ___ 
    #  |  _  /  | |  \___ \| |      \ \/ /   | |    | |/ _` / __/ __| |/ __| | |  | | '_ \/ __|
    #  | | \ \ _| |_ ____) | |____   \  /    | |____| | (_| \__ \__ \ | (__  | |__| | |_) \__ \
    #  |_|  \_\_____|_____/ \_____|   \/      \_____|_|\__,_|___/___/_|\___|  \____/| .__/|___/
    #                                                                               | |        
    #                                                                               |_|        

    add  x22, x18, x19
    add  x23, x19, x18
    add  x24, x18, x18
    add  x25, x19, x19

    addi x26, x18, 0x4ad
    addi x27, x19, 0x503
    addi x28, x18, 0x5f
    addi x29, x19, 0x274

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slti  x22, x18, 0x3f1
    slti  x23, x19, 0x60
    slti  x24, x18, 0x1fd
    slti  x25, x19, 0x423

    sltiu x26, x18, 0x38e
    sltiu x27, x19, 0x50a
    sltiu x28, x18, 0x69c
    sltiu x29, x19, 0x6c0

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    xor  x22, x18, x19
    xor  x23, x19, x18
    xor  x24, x18, x18
    xor  x25, x19, x19

    xori x26, x18, 0x6d3
    xori x27, x19, 0x708
    xori x28, x18, 0x799
    xori x29, x19, 0x79d

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    or  x22, x18, x19
    or  x23, x19, x18
    or  x24, x18, x18
    or  x25, x19, x19

    ori x26, x18, 0x2dd
    ori x27, x19, 0x3e8
    ori x28, x18, 0x4a2
    ori x29, x19, 0x457

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    and  x22, x18, x19
    and  x23, x19, x18
    and  x24, x18, x18
    and  x25, x19, x19

    andi x26, x18, 0x6d
    andi x27, x19, 0x2fd
    andi x28, x18, 0x78
    andi x29, x19, 0x13f

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    # sll  x22, x18, x19
    # sll  x23, x19, x18
    # sll  x24, x18, x18
    # sll  x25, x19, x19

    # slli x26, x18, 0x5c
    # slli x27, x19, 0x67d
    # slli x28, x18, 0x38
    # slli x29, x19, 0x360

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # srl  x22, x18, x19
    # srl  x23, x19, x18
    # srl  x24, x18, x18
    # srl  x25, x19, x19

    # srli x26, x18, 0x3b
    # srli x27, x19, 0x1ce
    # srli x28, x18, 0x7ec
    # srli x29, x19, 0x374

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # sra  x22, x18, x19
    # sra  x23, x19, x18
    # sra  x24, x18, x18
    # sra  x25, x19, x19

    # srai x26, x18, 0x7a4
    # srai x27, x19, 0x251
    # srai x28, x18, 0x80
    # srai x29, x19, 0x13a

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    sub  x22, x18, x19
    sub  x23, x19, x18
    sub  x24, x18, x18
    sub  x25, x19, x19
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slt  x22, x18, x19
    slt  x23, x19, x18
    slt  x24, x18, x18
    slt  x25, x19, x19

    sltu x26, x18, 0x421
    sltu x27, x19, 0x793
    sltu x28, x18, 0x76c
    sltu x29, x19, 0x385
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Riscv_Classic_1



##########################################################################



li x18, 0x240a1572 // Random init number
li x19, 0x569f246c // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Riscv_Classic_2:

    #   _____  _____  _____  _______      __   _____ _               _         ____            
    #  |  __ \|_   _|/ ____|/ ____\ \    / /  / ____| |             (_)       / __ \           
    #  | |__) | | | | (___ | |     \ \  / /  | |    | | __ _ ___ ___ _  ___  | |  | |_ __  ___ 
    #  |  _  /  | |  \___ \| |      \ \/ /   | |    | |/ _` / __/ __| |/ __| | |  | | '_ \/ __|
    #  | | \ \ _| |_ ____) | |____   \  /    | |____| | (_| \__ \__ \ | (__  | |__| | |_) \__ \
    #  |_|  \_\_____|_____/ \_____|   \/      \_____|_|\__,_|___/___/_|\___|  \____/| .__/|___/
    #                                                                               | |        
    #                                                                               |_|        

    add  x22, x18, x19
    add  x23, x19, x18
    add  x24, x18, x18
    add  x25, x19, x19

    addi x26, x18, 0x4ad
    addi x27, x19, 0x503
    addi x28, x18, 0x5f
    addi x29, x19, 0x274

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    or  x22, x18, x19
    or  x23, x19, x18
    or  x24, x18, x18
    or  x25, x19, x19

    ori x26, x18, 0x2dd
    ori x27, x19, 0x3e8
    ori x28, x18, 0x4a2
    ori x29, x19, 0x457

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slti  x22, x18, 0x3f1
    slti  x23, x19, 0x60
    slti  x24, x18, 0x1fd
    slti  x25, x19, 0x423

    sltiu x26, x18, 0x38e
    sltiu x27, x19, 0x50a
    sltiu x28, x18, 0x69c
    sltiu x29, x19, 0x6c0

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    # sll  x22, x18, x19
    # sll  x23, x19, x18
    # sll  x24, x18, x18
    # sll  x25, x19, x19

    # slli x26, x18, 0x5c
    # slli x27, x19, 0x67d
    # slli x28, x18, 0x38
    # slli x29, x19, 0x360

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # srl  x22, x18, x19
    # srl  x23, x19, x18
    # srl  x24, x18, x18
    # srl  x25, x19, x19

    # srli x26, x18, 0x3b
    # srli x27, x19, 0x1ce
    # srli x28, x18, 0x7ec
    # srli x29, x19, 0x374

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # sra  x22, x18, x19
    # sra  x23, x19, x18
    # sra  x24, x18, x18
    # sra  x25, x19, x19

    # srai x26, x18, 0x7a4
    # srai x27, x19, 0x251
    # srai x28, x18, 0x80
    # srai x29, x19, 0x13a

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    sub  x22, x18, x19
    sub  x23, x19, x18
    sub  x24, x18, x18
    sub  x25, x19, x19
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


        xor  x22, x18, x19
    xor  x23, x19, x18
    xor  x24, x18, x18
    xor  x25, x19, x19

    xori x26, x18, 0x6d3
    xori x27, x19, 0x708
    xori x28, x18, 0x799
    xori x29, x19, 0x79d

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)


    and  x22, x18, x19
    and  x23, x19, x18
    and  x24, x18, x18
    and  x25, x19, x19

    andi x26, x18, 0x6d
    andi x27, x19, 0x2fd
    andi x28, x18, 0x78
    andi x29, x19, 0x13f

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slt  x22, x18, x19
    slt  x23, x19, x18
    slt  x24, x18, x18
    slt  x25, x19, x19

    sltu x26, x18, 0x421
    sltu x27, x19, 0x793
    sltu x28, x18, 0x76c
    sltu x29, x19, 0x385
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Riscv_Classic_2



##########################################################################



li x18, 0xFFFFEEEE // Random init number
li x19, 0x000010F1 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Riscv_Classic_3:

    #   _____  _____  _____  _______      __   _____ _               _         ____            
    #  |  __ \|_   _|/ ____|/ ____\ \    / /  / ____| |             (_)       / __ \           
    #  | |__) | | | | (___ | |     \ \  / /  | |    | | __ _ ___ ___ _  ___  | |  | |_ __  ___ 
    #  |  _  /  | |  \___ \| |      \ \/ /   | |    | |/ _` / __/ __| |/ __| | |  | | '_ \/ __|
    #  | | \ \ _| |_ ____) | |____   \  /    | |____| | (_| \__ \__ \ | (__  | |__| | |_) \__ \
    #  |_|  \_\_____|_____/ \_____|   \/      \_____|_|\__,_|___/___/_|\___|  \____/| .__/|___/
    #                                                                               | |        
    #                                                                               |_|        

    add  x22, x18, x19
    add  x23, x19, x18
    add  x24, x18, x18
    add  x25, x19, x19

    addi x26, x18, 0x4ad
    addi x27, x19, 0x503
    addi x28, x18, 0x5f
    addi x29, x19, 0x274

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    or  x22, x18, x19
    or  x23, x19, x18
    or  x24, x18, x18
    or  x25, x19, x19

    ori x26, x18, 0x2dd
    ori x27, x19, 0x3e8
    ori x28, x18, 0x4a2
    ori x29, x19, 0x457

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slti  x22, x18, 0x3f1
    slti  x23, x19, 0x60
    slti  x24, x18, 0x1fd
    slti  x25, x19, 0x423

    sltiu x26, x18, 0x38e
    sltiu x27, x19, 0x50a
    sltiu x28, x18, 0x69c
    sltiu x29, x19, 0x6c0

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    # sll  x22, x18, x19
    # sll  x23, x19, x18
    # sll  x24, x18, x18
    # sll  x25, x19, x19

    # slli x26, x18, 0x5c
    # slli x27, x19, 0x67d
    # slli x28, x18, 0x38
    # slli x29, x19, 0x360

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # srl  x22, x18, x19
    # srl  x23, x19, x18
    # srl  x24, x18, x18
    # srl  x25, x19, x19

    # srli x26, x18, 0x3b
    # srli x27, x19, 0x1ce
    # srli x28, x18, 0x7ec
    # srli x29, x19, 0x374

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # sra  x22, x18, x19
    # sra  x23, x19, x18
    # sra  x24, x18, x18
    # sra  x25, x19, x19

    # srai x26, x18, 0x7a4
    # srai x27, x19, 0x251
    # srai x28, x18, 0x80
    # srai x29, x19, 0x13a

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    sub  x22, x18, x19
    sub  x23, x19, x18
    sub  x24, x18, x18
    sub  x25, x19, x19
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


        xor  x22, x18, x19
    xor  x23, x19, x18
    xor  x24, x18, x18
    xor  x25, x19, x19

    xori x26, x18, 0x6d3
    xori x27, x19, 0x708
    xori x28, x18, 0x799
    xori x29, x19, 0x79d

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)


    and  x22, x18, x19
    and  x23, x19, x18
    and  x24, x18, x18
    and  x25, x19, x19

    andi x26, x18, 0x6d
    andi x27, x19, 0x2fd
    andi x28, x18, 0x78
    andi x29, x19, 0x13f

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slt  x22, x18, x19
    slt  x23, x19, x18
    slt  x24, x18, x18
    slt  x25, x19, x19

    sltu x26, x18, 0x421
    sltu x27, x19, 0x793
    sltu x28, x18, 0x76c
    sltu x29, x19, 0x385
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Riscv_Classic_3



##########################################################################



li x18, 0xFFFFEEEE // Random init number
li x19, 0x000010F1 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Riscv_Classic_4:

    #   _____  _____  _____  _______      __   _____ _               _         ____            
    #  |  __ \|_   _|/ ____|/ ____\ \    / /  / ____| |             (_)       / __ \           
    #  | |__) | | | | (___ | |     \ \  / /  | |    | | __ _ ___ ___ _  ___  | |  | |_ __  ___ 
    #  |  _  /  | |  \___ \| |      \ \/ /   | |    | |/ _` / __/ __| |/ __| | |  | | '_ \/ __|
    #  | | \ \ _| |_ ____) | |____   \  /    | |____| | (_| \__ \__ \ | (__  | |__| | |_) \__ \
    #  |_|  \_\_____|_____/ \_____|   \/      \_____|_|\__,_|___/___/_|\___|  \____/| .__/|___/
    #                                                                               | |        
    #                                                                               |_|        
 
    slti  x22, x18, 0x3f1
    slti  x23, x19, 0x60
    slti  x24, x18, 0x1fd
    slti  x25, x19, 0x423

    sltiu x26, x18, 0x38e
    sltiu x27, x19, 0x50a
    sltiu x28, x18, 0x69c
    sltiu x29, x19, 0x6c0

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    add  x22, x18, x19
    add  x23, x19, x18
    add  x24, x18, x18
    add  x25, x19, x19

    addi x26, x18, 0x4ad
    addi x27, x19, 0x503
    addi x28, x18, 0x5f
    addi x29, x19, 0x274

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    or  x22, x18, x19
    or  x23, x19, x18
    or  x24, x18, x18
    or  x25, x19, x19

    ori x26, x18, 0x2dd
    ori x27, x19, 0x3e8
    ori x28, x18, 0x4a2
    ori x29, x19, 0x457

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    # sll  x22, x18, x19
    # sll  x23, x19, x18
    # sll  x24, x18, x18
    # sll  x25, x19, x19

    # slli x26, x18, 0x5c
    # slli x27, x19, 0x67d
    # slli x28, x18, 0x38
    # slli x29, x19, 0x360

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # srl  x22, x18, x19
    # srl  x23, x19, x18
    # srl  x24, x18, x18
    # srl  x25, x19, x19

    # srli x26, x18, 0x3b
    # srli x27, x19, 0x1ce
    # srli x28, x18, 0x7ec
    # srli x29, x19, 0x374

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27


    # sra  x22, x18, x19
    # sra  x23, x19, x18
    # sra  x24, x18, x18
    # sra  x25, x19, x19

    # srai x26, x18, 0x7a4
    # srai x27, x19, 0x251
    # srai x28, x18, 0x80
    # srai x29, x19, 0x13a

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x23, x27

    xor  x22, x18, x19
    xor  x23, x19, x18
    xor  x24, x18, x18
    xor  x25, x19, x19

    xori x26, x18, 0x6d3
    xori x27, x19, 0x708
    xori x28, x18, 0x799
    xori x29, x19, 0x79d

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    sub  x22, x18, x19
    sub  x23, x19, x18
    sub  x24, x18, x18
    sub  x25, x19, x19
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27



    and  x22, x18, x19
    and  x23, x19, x18
    and  x24, x18, x18
    and  x25, x19, x19

    andi x26, x18, 0x6d
    andi x27, x19, 0x2fd
    andi x28, x18, 0x78
    andi x29, x19, 0x13f

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    slt  x22, x18, x19
    slt  x23, x19, x18
    slt  x24, x18, x18
    slt  x25, x19, x19

    sltu x26, x18, 0x421
    sltu x27, x19, 0x793
    sltu x28, x18, 0x76c
    sltu x29, x19, 0x385
            
    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Riscv_Classic_4