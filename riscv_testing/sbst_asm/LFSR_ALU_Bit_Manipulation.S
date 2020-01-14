li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number
  

LoopALU_Bit_Manipulation_1: 
  
    #   ____  _ _     __  __             _             _       _   _                ____            
    #  |  _ \(_) |   |  \/  |           (_)           | |     | | (_)              / __ \           
    #  | |_) |_| |_  | \  / | __ _ _ __  _ _ __  _   _| | __ _| |_ _  ___  _ __   | |  | |_ __  ___ 
    #  |  _ <| | __| | |\/| |/ _` | '_ \| | '_ \| | | | |/ _` | __| |/ _ \| '_ \  | |  | | '_ \/ __|
    #  | |_) | | |_  | |  | | (_| | | | | | |_) | |_| | | (_| | |_| | (_) | | | | | |__| | |_) \__ \
    #  |____/|_|\__| |_|  |_|\__,_|_| |_|_| .__/ \__,_|_|\__,_|\__|_|\___/|_| |_|  \____/| .__/|___/
    #                                     | |                                            | |        
    #                                     |_|                                            |_|        

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    p.ror   x22, x18, x19 
    p.ror   x23, x19, x18
    p.ror   x24, x18, x18
    p.ror   x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

    bne x20, x0, LoopALU_Bit_Manipulation_1



####################################################################################################


li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

li x18, 0x4b4f9e7e // Random init number
li x19, 0x65072bc5 // Random init number
  

LoopALU_Bit_Manipulation_2: 
  
    #   ____  _ _     __  __             _             _       _   _                ____            
    #  |  _ \(_) |   |  \/  |           (_)           | |     | | (_)              / __ \           
    #  | |_) |_| |_  | \  / | __ _ _ __  _ _ __  _   _| | __ _| |_ _  ___  _ __   | |  | |_ __  ___ 
    #  |  _ <| | __| | |\/| |/ _` | '_ \| | '_ \| | | | |/ _` | __| |/ _ \| '_ \  | |  | | '_ \/ __|
    #  | |_) | | |_  | |  | | (_| | | | | | |_) | |_| | | (_| | |_| | (_) | | | | | |__| | |_) \__ \
    #  |____/|_|\__| |_|  |_|\__,_|_| |_|_| .__/ \__,_|_|\__,_|\__|_|\___/|_| |_|  \____/| .__/|___/
    #                                     | |                                            | |        
    #                                     |_|                                            |_|        

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    p.ror   x22, x18, x19 
    p.ror   x23, x19, x18
    p.ror   x24, x18, x18
    p.ror   x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

    bne x20, x0, LoopALU_Bit_Manipulation_2



####################################################################################################


li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

li x18, 0x0020300F // Random init number
li x19, 0xFFFF0000 // Random init number
  

LoopALU_Bit_Manipulation_3: 
  
    #   ____  _ _     __  __             _             _       _   _                ____            
    #  |  _ \(_) |   |  \/  |           (_)           | |     | | (_)              / __ \           
    #  | |_) |_| |_  | \  / | __ _ _ __  _ _ __  _   _| | __ _| |_ _  ___  _ __   | |  | |_ __  ___ 
    #  |  _ <| | __| | |\/| |/ _` | '_ \| | '_ \| | | | |/ _` | __| |/ _ \| '_ \  | |  | | '_ \/ __|
    #  | |_) | | |_  | |  | | (_| | | | | | |_) | |_| | | (_| | |_| | (_) | | | | | |__| | |_) \__ \
    #  |____/|_|\__| |_|  |_|\__,_|_| |_|_| .__/ \__,_|_|\__,_|\__|_|\___/|_| |_|  \____/| .__/|___/
    #                                     | |                                            | |        
    #                                     |_|                                            |_|        

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    p.ror   x22, x18, x19 
    p.ror   x23, x19, x18
    p.ror   x24, x18, x18
    p.ror   x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

    bne x20, x0, LoopALU_Bit_Manipulation_3