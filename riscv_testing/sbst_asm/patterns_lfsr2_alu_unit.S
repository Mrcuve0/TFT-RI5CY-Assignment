# li sp, 0x00

# li x18, 0x0000002b // Random init number
# li x19, 0xffeeffee // Random init number
li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number

li x20, 0x00000004 // 100 iterations

li x21, 0x00000001

loopALU:

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
    pv.xor.sc.b x19, x22, x25


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
    pv.xor.sc.b x19, x22, x25


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
    pv.xor.sc.b x19, x22, x25


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
    pv.xor.sc.b x19, x22, x25


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
    pv.xor.sc.b x19, x22, x25


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
    # pv.xor.sc.b x19, x22, x25


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
    # pv.xor.sc.b x19, x22, x25


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
    # pv.xor.sc.b x19, x22, x25


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
    pv.xor.sc.b x19, x22, x25


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

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    # #   ____  _ _     __  __             _             _       _   _                ____            
    # #  |  _ \(_) |   |  \/  |           (_)           | |     | | (_)              / __ \           
    # #  | |_) |_| |_  | \  / | __ _ _ __  _ _ __  _   _| | __ _| |_ _  ___  _ __   | |  | |_ __  ___ 
    # #  |  _ <| | __| | |\/| |/ _` | '_ \| | '_ \| | | | |/ _` | __| |/ _ \| '_ \  | |  | | '_ \/ __|
    # #  | |_) | | |_  | |  | | (_| | | | | | |_) | |_| | | (_| | |_| | (_) | | | | | |__| | |_) \__ \
    # #  |____/|_|\__| |_|  |_|\__,_|_| |_|_| .__/ \__,_|_|\__,_|\__|_|\___/|_| |_|  \____/| .__/|___/
    # #                                     | |                                            | |        
    # #                                     |_|                                            |_|        

    p.extract  x22, x18, 29, 2
    p.extract  x23, x19, 31, 1
    p.extract  x24, x18, 12, 7
    p.extract  x25, x19, 13, 4

    p.extractu x26, x18, 28, 2
    p.extractu x27, x19, 16, 9
    p.extractu x28, x18, 11, 12
    p.extractu x29, x19, 6, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.insert  x22, x18, 14, 7
    p.insert  x23, x19, 26, 3
    p.insert  x24, x18, 1, 16
    p.insert  x25, x19, 23, 5

    # p.insertr x26, x18, 17, 5
    # p.insertr x27, x19, 5, 13
    # p.insertr x28, x18, 23, 3
    # p.insertr x29, x19, 15, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.bclr  x22, x18, 9, 11
    p.bclr  x23, x19, 0, 17
    p.bclr  x24, x18, 15, 12
    p.bclr  x25, x19, 21, 6

    p.bset   x26, x18, 1, 23
    p.bset   x27, x19, 2, 12
    p.bset   x28, x18, 5, 5
    p.bset   x29, x19, 10, 6

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.ff1   x22, x25
    p.ff1   x23, x26
    p.ff1   x24, x27
    p.ff1   x25, x28

    p.fl1   x26, x22
    p.fl1   x27, x23
    p.fl1   x28, x24
    p.fl1   x29, x25

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.clb   x22, x25
    p.clb   x23, x26
    p.clb   x24, x27
    p.clb   x25, x28

    p.cnt   x26, x22
    p.cnt   x27, x23
    p.cnt   x28, x24
    p.cnt   x29, x25

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.ror   x22, x18, x19 
    p.ror   x23, x19, x18
    p.ror   x24, x18, x18
    p.ror   x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25



    #    _____                           _            _     _    _    ____            
    #   / ____|                         | |     /\   | |   | |  | |  / __ \           
    #  | |  __  ___ _ __   ___ _ __ __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #  | |__| |  __/ | | |  __/ | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #   \_____|\___|_| |_|\___|_|  \__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                      | |        
    #                                                                      |_|                                            
             
    p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.slet  x22, x18, x19
    p.slet  x23, x19, x18
    p.slet  x24, x18, x18
    p.slet  x25, x19, x19

    p.sletu x26, x18, x19
    p.sletu x27, x19, x18
    p.sletu x28, x18, x18
    p.sletu x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.min  x22, x18, x19
    p.min  x23, x19, x18
    p.min  x24, x18, x18
    p.min  x25, x19, x19

    p.minu x26, x18, x19
    p.minu x27, x19, x18
    p.minu x28, x18, x18
    p.minu x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.max  x22, x18, x19
    p.max  x23, x19, x18
    p.max  x24, x18, x18
    p.max  x25, x19, x19

    p.maxu x26, x18, x19
    p.maxu x27, x19, x18
    p.maxu x28, x18, x18
    p.maxu x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.exths x22, x18
    p.exths x23, x19

    p.exthz x24, x18
    p.exthz x25, x19

    p.extbs x26, x18
    p.extbs x27, x19

    p.extbz x28, x18
    p.extbz x29, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.clip  x22, x18, 28
    p.clip  x23, x19, 31
    p.clip  x24, x18, 21
    p.clip  x25, x19, 12

    p.clipu  x26, x18, 30
    p.clipu  x27, x19, 22
    p.clipu  x28, x18, 27
    p.clipu  x29, x19, 13

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.clipr  x22, x18, x19
    p.clipr  x23, x19, x18
    p.clipr  x24, x18, x18
    p.clipr  x25, x19, x19

    p.clipur  x26, x18, x19
    p.clipur  x27, x19, x18
    p.clipur  x28, x18, x18
    p.clipur  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.addN  x22, x18, x19, 15
    p.addN  x23, x19, x18, 3
    p.addN  x24, x18, x18, 20
    p.addN  x25, x19, x19, 25

    p.adduN  x26, x18, x19, 2
    p.adduN  x27, x19, x18, 13
    p.adduN  x28, x18, x18, 3
    p.adduN  x29, x19, x19, 9

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.adduN  x22, x18, x19, 12
    p.adduN  x23, x19, x18, 17
    p.adduN  x24, x18, x18, 17
    p.adduN  x25, x19, x19, 31

    p.addRN  x26, x18, x19, 1
    p.addRN  x27, x19, x18, 13
    p.addRN  x28, x18, x18, 21
    p.addRN  x29, x19, x19, 10

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.adduRN  x22, x18, x19, 13
    p.adduRN  x23, x19, x18, 17
    p.adduRN  x24, x18, x18, 21
    p.adduRN  x25, x19, x19, 5

    p.addNr  x26, x18, x19
    p.addNr  x27, x19, x18
    p.addNr  x28, x18, x18
    p.addNr  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.adduNr  x22, x18, x19
    p.adduNr  x23, x19, x18
    p.adduNr  x24, x18, x18
    p.adduNr  x25, x19, x19

    p.addRNr  x26, x18, x19
    p.addRNr  x27, x19, x18
    p.addRNr  x28, x18, x18
    p.addRNr  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.adduRNr  x22, x18, x19
    p.adduRNr  x23, x19, x18
    p.adduRNr  x24, x18, x18
    p.adduRNr  x25, x19, x19

    p.subN  x26, x18, x19, 31
    p.subN  x27, x19, x18, 5
    p.subN  x28, x18, x18, 28
    p.subN  x29, x19, x19, 21

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.subuN  x22, x18, x19, 10
    p.subuN  x23, x19, x18, 24
    p.subuN  x24, x18, x18, 11
    p.subuN  x25, x19, x19, 29

    p.subRN  x26, x18, x19, 20
    p.subRN  x27, x19, x18, 11
    p.subRN  x28, x18, x18, 10
    p.subRN  x29, x19, x19, 29

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.subuRN  x22, x18, x19, 5
    p.subuRN  x23, x19, x18, 4
    p.subuRN  x24, x18, x18, 24
    p.subuRN  x25, x19, x19, 13

    p.subNr  x26, x18, x19
    p.subNr  x27, x19, x18
    p.subNr  x28, x18, x18
    p.subNr  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.subuNr  x22, x18, x19
    p.subuNr  x23, x19, x18
    p.subuNr  x24, x18, x18
    p.subuNr  x25, x19, x19

    p.subRNr  x26, x18, x19
    p.subRNr  x27, x19, x18
    p.subRNr  x28, x18, x18
    p.subRNr  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    p.subuRNr  x26, x18, x19
    p.subuRNr  x27, x19, x18
    p.subuRNr  x28, x18, x18
    p.subuRNr  x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    #  __      __       _             _       _            _     _    _    ____            
    #  \ \    / /      | |           (_)     | |     /\   | |   | |  | |  / __ \           
    #   \ \  / /__  ___| |_ ___  _ __ _  __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #    \ \/ / _ \/ __| __/ _ \| '__| |/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #     \  /  __/ (__| || (_) | |  | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #      \/ \___|\___|\__\___/|_|  |_|\__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                           | |        
    #                                                                           |_|        

    pv.add.sc.h     x22, x18, x19
    pv.add.sc.h     x23, x19, x18
    pv.add.sc.h     x24, x18, x18
    pv.add.sc.h     x25, x19, x19

    pv.add.sci.h    x26, x18, 12
    pv.add.sci.h    x27, x19, 17
    pv.add.sci.h    x28, x18, 14
    pv.add.sci.h    x29, x19, 28

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.add.sc.b     x22, x18, x19
    pv.add.sc.b     x23, x19, x18
    pv.add.sc.b     x24, x18, x18
    pv.add.sc.b     x25, x19, x19

    pv.add.sci.b    x26, x18, 11
    pv.add.sci.b    x27, x19, 22
    pv.add.sci.b    x28, x18, 3
    pv.add.sci.b    x29, x19, 29

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25

    
    pv.sub.sc.h     x22, x18, x19
    pv.sub.sc.h     x23, x19, x18
    pv.sub.sc.h     x24, x18, x18
    pv.sub.sc.h     x25, x19, x19

    pv.sub.sci.h    x26, x18, 19
    pv.sub.sci.h    x27, x19, 25
    pv.sub.sci.h    x28, x18, 26
    pv.sub.sci.h    x29, x19, 27

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sub.sc.b     x22, x18, x19
    pv.sub.sc.b     x23, x19, x18
    pv.sub.sc.b     x24, x18, x18
    pv.sub.sc.b     x25, x19, x19

    pv.sub.sci.b    x26, x18, 4
    pv.sub.sci.b    x27, x19, 22
    pv.sub.sci.b    x28, x18, 25
    pv.sub.sci.b    x29, x19, 9

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.avg.sc.h     x22, x18, x19
    pv.avg.sc.h     x23, x19, x18
    pv.avg.sc.h     x24, x18, x18
    pv.avg.sc.h     x25, x19, x19

    pv.avg.sci.h    x26, x18, 2
    pv.avg.sci.h    x27, x19, 6
    pv.avg.sci.h    x28, x18, 28
    pv.avg.sci.h    x29, x19, 5

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.avg.sc.b     x22, x18, x19
    pv.avg.sc.b     x23, x19, x18
    pv.avg.sc.b     x24, x18, x18
    pv.avg.sc.b     x25, x19, x19

    pv.avg.sci.b    x26, x18, 13
    pv.avg.sci.b    x27, x19, 18
    pv.avg.sci.b    x28, x18, 25
    pv.avg.sci.b    x29, x19, 31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.avgu.sc.h     x22, x18, x19
    pv.avgu.sc.h     x23, x19, x18
    pv.avgu.sc.h     x24, x18, x18
    pv.avgu.sc.h     x25, x19, x19

    pv.avgu.sci.h    x26, x18, 23
    pv.avgu.sci.h    x27, x19, 9
    pv.avgu.sci.h    x28, x18, 6
    pv.avgu.sci.h    x29, x19, 5

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.avgu.sc.b     x22, x18, x19
    pv.avgu.sc.b     x23, x19, x18
    pv.avgu.sc.b     x24, x18, x18
    pv.avgu.sc.b     x25, x19, x19

    pv.avgu.sci.b    x26, x18, 1
    pv.avgu.sci.b    x27, x19, 30
    pv.avgu.sci.b    x28, x18, 20
    pv.avgu.sci.b    x29, x19, 14

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.min.sc.h     x22, x18, x19
    pv.min.sc.h     x23, x19, x18
    pv.min.sc.h     x24, x18, x18
    pv.min.sc.h     x25, x19, x19

    pv.min.sci.h    x26, x18, 6
    pv.min.sci.h    x27, x19, 31
    pv.min.sci.h    x28, x18, 28
    pv.min.sci.h    x29, x19, 19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.min.sc.b     x22, x18, x19
    pv.min.sc.b     x23, x19, x18
    pv.min.sc.b     x24, x18, x18
    pv.min.sc.b     x25, x19, x19

    pv.min.sci.b    x26, x18, 6
    pv.min.sci.b    x27, x19, 31
    pv.min.sci.b    x28, x18, 28
    pv.min.sci.b    x29, x19, 19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.minu.sc.h     x22, x18, x19
    pv.minu.sc.h     x23, x19, x18
    pv.minu.sc.h     x24, x18, x18
    pv.minu.sc.h     x25, x19, x19

    pv.minu.sci.h    x26, x18, 10
    pv.minu.sci.h    x27, x19, 17
    pv.minu.sci.h    x28, x18, 24
    pv.minu.sci.h    x29, x19, 31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.minu.sc.b     x22, x18, x19
    pv.minu.sc.b     x23, x19, x18
    pv.minu.sc.b     x24, x18, x18
    pv.minu.sc.b     x25, x19, x19

    pv.minu.sci.b    x26, x18, 27
    pv.minu.sci.b    x27, x19, 7
    pv.minu.sci.b    x28, x18, 9
    pv.minu.sci.b    x29, x19, 30

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.max.sc.h     x22, x18, x19
    pv.max.sc.h     x23, x19, x18
    pv.max.sc.h     x24, x18, x18
    pv.max.sc.h     x25, x19, x19

    pv.max.sci.h    x26, x18, 4
    pv.max.sci.h    x27, x19, 7
    pv.max.sci.h    x28, x18, 21
    pv.max.sci.h    x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.max.sc.b     x22, x18, x19
    pv.max.sc.b     x23, x19, x18
    pv.max.sc.b     x24, x18, x18
    pv.max.sc.b     x25, x19, x19

    pv.max.sci.b    x26, x18, 3
    pv.max.sci.b    x27, x19, 16
    pv.max.sci.b    x28, x18, 17
    pv.max.sci.b    x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.maxu.sc.h     x22, x18, x19
    pv.maxu.sc.h     x23, x19, x18
    pv.maxu.sc.h     x24, x18, x18
    pv.maxu.sc.h     x25, x19, x19

    pv.maxu.sci.h    x26, x18, 1
    pv.maxu.sci.h    x27, x19, 7
    pv.maxu.sci.h    x28, x18, 3
    pv.maxu.sci.h    x29, x19, 16

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.maxu.sc.b     x22, x18, x19
    pv.maxu.sc.b     x23, x19, x18
    pv.maxu.sc.b     x24, x18, x18
    pv.maxu.sc.b     x25, x19, x19

    pv.maxu.sci.b    x26, x18, 11
    pv.maxu.sci.b    x27, x19, 25
    pv.maxu.sci.b    x28, x18, 9
    pv.maxu.sci.b    x29, x19, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.srl.sc.h     x22, x18, x19
    pv.srl.sc.h     x23, x19, x18
    pv.srl.sc.h     x24, x18, x18
    pv.srl.sc.h     x25, x19, x19

    pv.srl.sci.h    x26, x18, 23
    pv.srl.sci.h    x27, x19, 3
    pv.srl.sci.h    x28, x18, 8
    pv.srl.sci.h    x29, x19, 13

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.srl.sc.b     x22, x18, x19
    pv.srl.sc.b     x23, x19, x18
    pv.srl.sc.b     x24, x18, x18
    pv.srl.sc.b     x25, x19, x19

    pv.srl.sci.b    x26, x18, 8
    pv.srl.sci.b    x27, x19, 23
    pv.srl.sci.b    x28, x18, 4
    pv.srl.sci.b    x29, x19, 12

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sra.sc.h     x22, x18, x19
    pv.sra.sc.h     x23, x19, x18
    pv.sra.sc.h     x24, x18, x18
    pv.sra.sc.h     x25, x19, x19

    pv.sra.sci.h    x26, x18, 18
    pv.sra.sci.h    x27, x19, 14
    pv.sra.sci.h    x28, x18, 1
    pv.sra.sci.h    x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sra.sc.b     x22, x18, x19
    pv.sra.sc.b     x23, x19, x18
    pv.sra.sc.b     x24, x18, x18
    pv.sra.sc.b     x25, x19, x19

    pv.sra.sci.b    x26, x18, 7
    pv.sra.sci.b    x27, x19, 23
    pv.sra.sci.b    x28, x18, 9
    pv.sra.sci.b    x29, x19, 19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sll.sc.h     x22, x18, x19
    pv.sll.sc.h     x23, x19, x18
    pv.sll.sc.h     x24, x18, x18
    pv.sll.sc.h     x25, x19, x19

    pv.sll.sci.h    x26, x18, 25
    pv.sll.sci.h    x27, x19, 16
    pv.sll.sci.h    x28, x18, 18
    pv.sll.sci.h    x29, x19, 4

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sll.sc.b     x22, x18, x19
    pv.sll.sc.b     x23, x19, x18
    pv.sll.sc.b     x24, x18, x18
    pv.sll.sc.b     x25, x19, x19

    pv.sll.sci.b    x26, x18, 1
    pv.sll.sci.b    x27, x19, 2
    pv.sll.sci.b    x28, x18, 16
    pv.sll.sci.b    x29, x19, 31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.or.sc.h     x22, x18, x19
    pv.or.sc.h     x23, x19, x18
    pv.or.sc.h     x24, x18, x18
    pv.or.sc.h     x25, x19, x19

    pv.or.sci.h    x26, x18, 24
    pv.or.sci.h    x27, x19, 18
    pv.or.sci.h    x28, x18, 27
    pv.or.sci.h    x29, x19, 6

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.or.sc.b     x22, x18, x19
    pv.or.sc.b     x23, x19, x18
    pv.or.sc.b     x24, x18, x18
    pv.or.sc.b     x25, x19, x19

    pv.or.sci.b    x26, x18, 16
    pv.or.sci.b    x27, x19, 4
    pv.or.sci.b    x28, x18, 3
    pv.or.sci.b    x29, x19, 26

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.xor.sc.h     x22, x18, x19
    pv.xor.sc.h     x23, x19, x18
    pv.xor.sc.h     x24, x18, x18
    pv.xor.sc.h     x25, x19, x19

    pv.xor.sci.h    x26, x18, 28
    pv.xor.sci.h    x27, x19, 13
    pv.xor.sci.h    x28, x18, 4
    pv.xor.sci.h    x29, x19, 5

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.xor.sc.b     x22, x18, x19
    pv.xor.sc.b     x23, x19, x18
    pv.xor.sc.b     x24, x18, x18
    pv.xor.sc.b     x25, x19, x19

    pv.xor.sci.b    x26, x18, 2
    pv.xor.sci.b    x27, x19, 16
    pv.xor.sci.b    x28, x18, 21
    pv.xor.sci.b    x29, x19, 5

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.and.sc.h     x22, x18, x19
    pv.and.sc.h     x23, x19, x18
    pv.and.sc.h     x24, x18, x18
    pv.and.sc.h     x25, x19, x19

    pv.and.sci.h    x26, x18, 2
    pv.and.sci.h    x27, x19, 9
    pv.and.sci.h    x28, x18, 15
    pv.and.sci.h    x29, x19, 24

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.and.sc.b     x22, x18, x19
    pv.and.sc.b     x23, x19, x18
    pv.and.sc.b     x24, x18, x18
    pv.and.sc.b     x25, x19, x19

    pv.and.sci.b    x26, x18, 20
    pv.and.sci.b    x27, x19, 11
    pv.and.sci.b    x28, x18, 23
    pv.and.sci.b    x29, x19, 14

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.abs.h     x22, x18
    pv.abs.h     x23, x19

    pv.abs.b    x26, x18
    pv.abs.b    x27, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    # pv.extract.h    x22, x18, 3
    # pv.extract.h    x23, x19, 1
    # pv.extract.b    x24, x18, 2
    # pv.extract.b    x25, x19, 0

    # pv.extractu.h   x26, x18, 5
    # pv.extractu.h   x27, x19, 1
    # pv.extractu.b   x28, x18, 1
    # pv.extractu.b   x29, x19, 3

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    # pv.xor.sc.b x18, x24, x29
    # pv.xor.sc.b x19, x22, x25


    # pv.insert.h    x22, x18, 3
    # pv.insert.h    x23, x19, 11
    # pv.insert.b    x24, x18, 5
    # pv.insert.b    x25, x19, 4

    # sw  x22, 4(sp)
    # sw  x23, 8(sp)
    # sw  x24, 12(sp)
    # sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    #  __      __       _             _       _    _____                                 _                    ____            
    #  \ \    / /      | |           (_)     | |  / ____|                               (_)                  / __ \           
    #   \ \  / /__  ___| |_ ___  _ __ _  __ _| | | |     ___  _ __ ___  _ __   __ _ _ __ _ ___  ___  _ __   | |  | |_ __  ___ 
    #    \ \/ / _ \/ __| __/ _ \| '__| |/ _` | | | |    / _ \| '_ ` _ \| '_ \ / _` | '__| / __|/ _ \| '_ \  | |  | | '_ \/ __|
    #     \  /  __/ (__| || (_) | |  | | (_| | | | |___| (_) | | | | | | |_) | (_| | |  | \__ \ (_) | | | | | |__| | |_) \__ \
    #      \/ \___|\___|\__\___/|_|  |_|\__,_|_|  \_____\___/|_| |_| |_| .__/ \__,_|_|  |_|___/\___/|_| |_|  \____/| .__/|___/
    #                                                                  | |                                         | |        
    #                                                                  |_|                                         |_|        

    pv.cmpeq.h   x22, x18, x19
    pv.cmpeq.h   x23, x19, x18
    pv.cmpeq.h   x24, x18, x18
    pv.cmpeq.h   x25, x19, x19

    pv.cmpeq.b   x26, x18, x19
    pv.cmpeq.b   x27, x19, x18
    pv.cmpeq.b   x28, x18, x18
    pv.cmpeq.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpeq.sc.h   x22, x18, x19
    pv.cmpeq.sc.h   x23, x19, x18
    pv.cmpeq.sc.h   x24, x18, x18
    pv.cmpeq.sc.h   x25, x19, x19

    pv.cmpeq.sc.b   x26, x18, x19
    pv.cmpeq.sc.b   x27, x19, x18
    pv.cmpeq.sc.b   x28, x18, x18
    pv.cmpeq.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpeq.sci.h   x22, x18, 4
    pv.cmpeq.sci.h   x23, x19, 16
    pv.cmpeq.sci.h   x24, x18, 6
    pv.cmpeq.sci.h   x25, x19, 21

    pv.cmpeq.sci.b   x26, x18, 2
    pv.cmpeq.sci.b   x27, x19, 5
    pv.cmpeq.sci.b   x28, x18, 12
    pv.cmpeq.sci.b   x29, x19, 31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpne.h   x22, x18, x19
    pv.cmpne.h   x23, x19, x18
    pv.cmpne.h   x24, x18, x18
    pv.cmpne.h   x25, x19, x19

    pv.cmpne.b   x26, x18, x19
    pv.cmpne.b   x27, x19, x18
    pv.cmpne.b   x28, x18, x18
    pv.cmpne.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpne.sc.h   x22, x18, x19
    pv.cmpne.sc.h   x23, x19, x18
    pv.cmpne.sc.h   x24, x18, x18
    pv.cmpne.sc.h   x25, x19, x19

    pv.cmpne.sc.b   x26, x18, x19
    pv.cmpne.sc.b   x27, x19, x18
    pv.cmpne.sc.b   x28, x18, x18
    pv.cmpne.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpne.sci.h   x22, x18, 4
    pv.cmpne.sci.h   x23, x19, 24
    pv.cmpne.sci.h   x24, x18, 17
    pv.cmpne.sci.h   x25, x19, 14

    pv.cmpne.sci.b   x26, x18, 4
    pv.cmpne.sci.b   x27, x19, 28
    pv.cmpne.sci.b   x28, x18, 13
    pv.cmpne.sci.b   x29, x19, 31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgt.h   x22, x18, x19
    pv.cmpgt.h   x23, x19, x18
    pv.cmpgt.h   x24, x18, x18
    pv.cmpgt.h   x25, x19, x19

    pv.cmpgt.b   x26, x18, x19
    pv.cmpgt.b   x27, x19, x18
    pv.cmpgt.b   x28, x18, x18
    pv.cmpgt.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgt.sc.h   x22, x18, x19
    pv.cmpgt.sc.h   x23, x19, x18
    pv.cmpgt.sc.h   x24, x18, x18
    pv.cmpgt.sc.h   x25, x19, x19

    pv.cmpgt.sc.b   x26, x18, x19
    pv.cmpgt.sc.b   x27, x19, x18
    pv.cmpgt.sc.b   x28, x18, x18
    pv.cmpgt.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgt.sci.h   x22, x18, 19
    pv.cmpgt.sci.h   x23, x19, 8
    pv.cmpgt.sci.h   x24, x18, 29
    pv.cmpgt.sci.h   x25, x19, 11

    pv.cmpgt.sci.b   x26, x18, 7
    pv.cmpgt.sci.b   x27, x19, 31
    pv.cmpgt.sci.b   x28, x18, 2
    pv.cmpgt.sci.b   x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpge.h   x22, x18, x19
    pv.cmpge.h   x23, x19, x18
    pv.cmpge.h   x24, x18, x18
    pv.cmpge.h   x25, x19, x19

    pv.cmpge.b   x26, x18, x19
    pv.cmpge.b   x27, x19, x18
    pv.cmpge.b   x28, x18, x18
    pv.cmpge.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpge.sc.h   x22, x18, x19
    pv.cmpge.sc.h   x23, x19, x18
    pv.cmpge.sc.h   x24, x18, x18
    pv.cmpge.sc.h   x25, x19, x19

    pv.cmpge.sc.b   x26, x18, x19
    pv.cmpge.sc.b   x27, x19, x18
    pv.cmpge.sc.b   x28, x18, x18
    pv.cmpge.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpge.sci.h   x22, x18, 10
    pv.cmpge.sci.h   x23, x19, 27
    pv.cmpge.sci.h   x24, x18, 30
    pv.cmpge.sci.h   x25, x19, 7

    pv.cmpge.sci.b   x26, x18, 6
    pv.cmpge.sci.b   x27, x19, 5
    pv.cmpge.sci.b   x28, x18, 16
    pv.cmpge.sci.b   x29, x19, 1

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmplt.h   x22, x18, x19
    pv.cmplt.h   x23, x19, x18
    pv.cmplt.h   x24, x18, x18
    pv.cmplt.h   x25, x19, x19

    pv.cmplt.b   x26, x18, x19
    pv.cmplt.b   x27, x19, x18
    pv.cmplt.b   x28, x18, x18
    pv.cmplt.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmplt.sc.h   x22, x18, x19
    pv.cmplt.sc.h   x23, x19, x18
    pv.cmplt.sc.h   x24, x18, x18
    pv.cmplt.sc.h   x25, x19, x19

    pv.cmplt.sc.b   x26, x18, x19
    pv.cmplt.sc.b   x27, x19, x18
    pv.cmplt.sc.b   x28, x18, x18
    pv.cmplt.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmplt.sci.h   x22, x18, 18
    pv.cmplt.sci.h   x23, x19, 7
    pv.cmplt.sci.h   x24, x18, 26
    pv.cmplt.sci.h   x25, x19, 0

    pv.cmplt.sci.b   x26, x18, 21
    pv.cmplt.sci.b   x27, x19, 13
    pv.cmplt.sci.b   x28, x18, 5
    pv.cmplt.sci.b   x29, x19, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmple.sc.h   x22, x18, x19
    pv.cmple.sc.h   x23, x19, x18
    pv.cmple.sc.h   x24, x18, x18
    pv.cmple.sc.h   x25, x19, x19

    pv.cmple.sc.b   x26, x18, x19
    pv.cmple.sc.b   x27, x19, x18
    pv.cmple.sc.b   x28, x18, x18
    pv.cmple.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmple.sci.h   x22, x18, 15
    pv.cmple.sci.h   x23, x19, 28
    pv.cmple.sci.h   x24, x18, 4
    pv.cmple.sci.h   x25, x19, 25

    pv.cmple.sci.b   x26, x18, 30
    pv.cmple.sci.b   x27, x19, 16
    pv.cmple.sci.b   x28, x18, 24
    pv.cmple.sci.b   x29, x19, 2

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25
    
    
    pv.cmpgtu.h   x22, x18, x19
    pv.cmpgtu.h   x23, x19, x18
    pv.cmpgtu.h   x24, x18, x18
    pv.cmpgtu.h   x25, x19, x19

    pv.cmpgtu.b   x26, x18, x19
    pv.cmpgtu.b   x27, x19, x18
    pv.cmpgtu.b   x28, x18, x18
    pv.cmpgtu.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgtu.sc.h   x22, x18, x19
    pv.cmpgtu.sc.h   x23, x19, x18
    pv.cmpgtu.sc.h   x24, x18, x18
    pv.cmpgtu.sc.h   x25, x19, x19

    pv.cmpgtu.sc.b   x26, x18, x19
    pv.cmpgtu.sc.b   x27, x19, x18
    pv.cmpgtu.sc.b   x28, x18, x18
    pv.cmpgtu.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgtu.sci.h   x22, x18, 8
    pv.cmpgtu.sci.h   x23, x19, 30
    pv.cmpgtu.sci.h   x24, x18, 13
    pv.cmpgtu.sci.h   x25, x19, 15

    pv.cmpgtu.sci.b   x26, x18, 21
    pv.cmpgtu.sci.b   x27, x19, 4
    pv.cmpgtu.sci.b   x28, x18, 25
    pv.cmpgtu.sci.b   x29, x19, 11

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgeu.h   x22, x18, x19
    pv.cmpgeu.h   x23, x19, x18
    pv.cmpgeu.h   x24, x18, x18
    pv.cmpgeu.h   x25, x19, x19

    pv.cmpgeu.b   x26, x18, x19
    pv.cmpgeu.b   x27, x19, x18
    pv.cmpgeu.b   x28, x18, x18
    pv.cmpgeu.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgeu.sc.h   x22, x18, x19
    pv.cmpgeu.sc.h   x23, x19, x18
    pv.cmpgeu.sc.h   x24, x18, x18
    pv.cmpgeu.sc.h   x25, x19, x19

    pv.cmpgeu.sc.b   x26, x18, x19
    pv.cmpgeu.sc.b   x27, x19, x18
    pv.cmpgeu.sc.b   x28, x18, x18
    pv.cmpgeu.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpgeu.sci.h   x22, x18, 11
    pv.cmpgeu.sci.h   x23, x19, 5
    pv.cmpgeu.sci.h   x24, x18, 22
    pv.cmpgeu.sci.h   x25, x19, 9

    pv.cmpgeu.sci.b   x26, x18, 29
    pv.cmpgeu.sci.b   x27, x19, 2
    pv.cmpgeu.sci.b   x28, x18, 31
    pv.cmpgeu.sci.b   x29, x19, 18

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpltu.h   x22, x18, x19
    pv.cmpltu.h   x23, x19, x18
    pv.cmpltu.h   x24, x18, x18
    pv.cmpltu.h   x25, x19, x19

    pv.cmpltu.b   x26, x18, x19
    pv.cmpltu.b   x27, x19, x18
    pv.cmpltu.b   x28, x18, x18
    pv.cmpltu.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpltu.sc.h   x22, x18, x19
    pv.cmpltu.sc.h   x23, x19, x18
    pv.cmpltu.sc.h   x24, x18, x18
    pv.cmpltu.sc.h   x25, x19, x19

    pv.cmpltu.sc.b   x26, x18, x19
    pv.cmpltu.sc.b   x27, x19, x18
    pv.cmpltu.sc.b   x28, x18, x18
    pv.cmpltu.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpltu.sci.h   x22, x18, 28
    pv.cmpltu.sci.h   x23, x19, 14
    pv.cmpltu.sci.h   x24, x18, 13
    pv.cmpltu.sci.h   x25, x19, 17

    pv.cmpltu.sci.b   x26, x18, 11
    pv.cmpltu.sci.b   x27, x19, 26
    pv.cmpltu.sci.b   x28, x18, 19
    pv.cmpltu.sci.b   x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpleu.sc.h   x22, x18, x19
    pv.cmpleu.sc.h   x23, x19, x18
    pv.cmpleu.sc.h   x24, x18, x18
    pv.cmpleu.sc.h   x25, x19, x19

    pv.cmpleu.sc.b   x26, x18, x19
    pv.cmpleu.sc.b   x27, x19, x18
    pv.cmpleu.sc.b   x28, x18, x18
    pv.cmpleu.sc.b   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.cmpleu.sci.h   x22, x18, 16
    pv.cmpleu.sci.h   x23, x19, 21
    pv.cmpleu.sci.h   x24, x18, 17
    pv.cmpleu.sci.h   x25, x19, 5

    pv.cmpleu.sci.b   x26, x18, 6
    pv.cmpleu.sci.b   x27, x19, 13
    pv.cmpleu.sci.b   x28, x18, 23
    pv.cmpleu.sci.b   x29, x19, 4

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25



bne x20, x0, loopALU