li x18, 0xAAAAAAAA // Random init number
li x19, 0x55555555 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001
    
    
    #    _____                           _            _     _    _    ____            
    #   / ____|                         | |     /\   | |   | |  | |  / __ \           
    #  | |  __  ___ _ __   ___ _ __ __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #  | |__| |  __/ | | |  __/ | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #   \_____|\___|_| |_|\___|_|  \__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                      | |        
    #                                                                      |_|                                            

LoopALU_General_1:
             
    p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_General_1



################################################################################################



li x18, 0x1210f9c9 // Random init number
li x19, 0xdd9913a4 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001
    
    
    #    _____                           _            _     _    _    ____            
    #   / ____|                         | |     /\   | |   | |  | |  / __ \           
    #  | |  __  ___ _ __   ___ _ __ __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #  | |__| |  __/ | | |  __/ | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #   \_____|\___|_| |_|\___|_|  \__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                      | |        
    #                                                                      |_|                                            

LoopALU_General_2:
             
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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


        p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_General_2



################################################################################################



li x18, 0x1e1f7453 // Random init number
li x19, 0x93833242 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001
    
    
    #    _____                           _            _     _    _    ____            
    #   / ____|                         | |     /\   | |   | |  | |  / __ \           
    #  | |  __  ___ _ __   ___ _ __ __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #  | |__| |  __/ | | |  __/ | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #   \_____|\___|_| |_|\___|_|  \__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                      | |        
    #                                                                      |_|                                            

LoopALU_General_3:

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27

             
    p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    p.adduN  x22, x18, x19, 12
    p.adduN  x23, x19, x18, 17
    p.adduN  x24, x18, x18, 17
    p.adduN  x25, x19, x19, 31

    p.addRN  x26, x18, x19, 1
    p.addRN  x27, x19, x18, 13
    p.addRN  x28, x18, x18, 21
    p.addRN  x29, x19, x19, 10


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_General_3



################################################################################################



li x18, 0x161aeb4c // Random init number
li x19, 0xd117d6b6 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001
    
    
    #    _____                           _            _     _    _    ____            
    #   / ____|                         | |     /\   | |   | |  | |  / __ \           
    #  | |  __  ___ _ __   ___ _ __ __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #  | | |_ |/ _ \ '_ \ / _ \ '__/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #  | |__| |  __/ | | |  __/ | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #   \_____|\___|_| |_|\___|_|  \__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                      | |        
    #                                                                      |_|                                            

LoopALU_General_4:
             
    p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_General_4