# li sp, 0x00

# li x18, 0x0000002b // Random init number
# li x19, 0xffeeffee // Random init number
li x20, 0x00000002 // 100 iterations
li x21, 0x00000001

li x15, 0x00000003
li x16, 0x00000002


li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number
j OPsALU  # jump to OPsALU

ALU_round_2: # x15 = 3
    li x18, 0xb7f1b0d6 // Random init number
    li x19, 0x13227978 // Random init number
j OPsALU  # jump to OPsALU

ALU_round_3: # x16 = 2
    li x18, 0x8e277dfe // Random init number
    li x19, 0xb18082bf // Random init number
j OPsALU  # jump to OPsALU

ALU_round_4: # x21 = 1
    li x18, 0xac4258ef // Random init number
    li x19, 0x3a10c5b6 // Random init number
j OPsALU  # jump to OPsALU


OPsALU:

 











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

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27


    #  __      __       _             _       _            _     _    _    ____            
    #  \ \    / /      | |           (_)     | |     /\   | |   | |  | |  / __ \           
    #   \ \  / /__  ___| |_ ___  _ __ _  __ _| |    /  \  | |   | |  | | | |  | |_ __  ___ 
    #    \ \/ / _ \/ __| __/ _ \| '__| |/ _` | |   / /\ \ | |   | |  | | | |  | | '_ \/ __|
    #     \  /  __/ (__| || (_) | |  | | (_| | |  / ____ \| |___| |__| | | |__| | |_) \__ \
    #      \/ \___|\___|\__\___/|_|  |_|\__,_|_| /_/    \_\______\____/   \____/| .__/|___/
    #                                                                           | |        
    #                                                                           |_|        

    # pv.add.h     x22, x18, x19
    # pv.add.h     x23, x19, x18
    # pv.add.h     x24, x18, x18
    # pv.add.h     x25, x19, x19

    # pv.add.b    x26, x18, x19
    # pv.add.b    x27, x19, x18
    # pv.add.b    x28, x18, x18
    # pv.add.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.sub.h     x22, x18, x19
    # pv.sub.h     x23, x19, x18
    # pv.sub.h     x24, x18, x18
    # pv.sub.h     x25, x19, x19

    # pv.sub.b    x26, x18, x19
    # pv.sub.b    x27, x19, x18
    # pv.sub.b    x28, x18, x18
    # pv.sub.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.avg.h     x22, x18, x19
    # pv.avg.h     x23, x19, x18
    # pv.avg.h     x24, x18, x18
    # pv.avg.h     x25, x19, x19

    # pv.avg.b    x26, x18, x19
    # pv.avg.b    x27, x19, x18
    # pv.avg.b    x28, x18, x18 
    # pv.avg.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.avgu.h     x22, x18, x19
    # pv.avgu.h     x23, x19, x18
    # pv.avgu.h     x24, x18, x18
    # pv.avgu.h     x25, x19, x19

    # pv.avgu.b    x26, x18, x19
    # pv.avgu.b    x27, x19, x18
    # pv.avgu.b    x28, x18, x18
    # pv.avgu.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.min.h     x22, x18, x19
    # pv.min.h     x23, x19, x18
    # pv.min.h     x24, x18, x18
    # pv.min.h     x25, x19, x19

    # pv.min.b    x26, x18, x19
    # pv.min.b    x27, x19, x18
    # pv.min.b    x28, x18, x18
    # pv.min.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.minu.h     x22, x18, x19
    # pv.minu.h     x23, x19, x18
    # pv.minu.h     x24, x18, x18
    # pv.minu.h     x25, x19, x19

    # pv.minu.b    x26, x18, x19
    # pv.minu.b    x27, x19, x18
    # pv.minu.b    x28, x18, x18
    # pv.minu.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.max.h     x22, x18, x19
    # pv.max.h     x23, x19, x18
    # pv.max.h     x24, x18, x18
    # pv.max.h     x25, x19, x19

    # pv.max.b    x26, x18, x19
    # pv.max.b    x27, x19, x18
    # pv.max.b    x28, x18, x18
    # pv.max.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.maxu.h     x22, x18, x19
    # pv.maxu.h     x23, x19, x18
    # pv.maxu.h     x24, x18, x18
    # pv.maxu.h     x25, x19, x19

    # pv.maxu.b    x26, x18, x19
    # pv.maxu.b    x27, x19, x18
    # pv.maxu.b    x28, x18, x18
    # pv.maxu.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.srl.h     x22, x18, x19
    # pv.srl.h     x23, x19, x18
    # pv.srl.h     x24, x18, x18
    # pv.srl.h     x25, x19, x19

    # pv.srl.b    x26, x18, x19
    # pv.srl.b    x27, x19, x18
    # pv.srl.b    x28, x18, x18
    # pv.srl.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.sra.h     x22, x18, x19
    # pv.sra.h     x23, x19, x18
    # pv.sra.h     x24, x18, x18
    # pv.sra.h     x25, x19, x19

    # pv.sra.b    x26, x18, x19
    # pv.sra.b    x27, x19, x18
    # pv.sra.b    x28, x18, x18
    # pv.sra.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.sll.h     x22, x18, x19
    # pv.sll.h     x23, x19, x18
    # pv.sll.h     x24, x18, x18
    # pv.sll.h     x25, x19, x19

    # pv.sll.b    x26, x18, x19
    # pv.sll.b    x27, x19, x18
    # pv.sll.b    x28, x18, x18
    # pv.sll.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.or.h     x22, x18, x19
    # pv.or.h     x23, x19, x18
    # pv.or.h     x24, x18, x18
    # pv.or.h     x25, x19, x19

    # pv.or.b    x26, x18, x19
    # pv.or.b    x27, x19, x18
    # pv.or.b    x28, x18, x18
    # pv.or.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.xor.h     x22, x18, x19
    # pv.xor.h     x23, x19, x18
    # pv.xor.h     x24, x18, x18
    # pv.xor.h     x25, x19, x19

    # pv.xor.b    x26, x18, x19
    # pv.xor.b    x27, x19, x18
    # pv.xor.b    x28, x18, x18
    # pv.xor.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


    # pv.and.h     x22, x18, x19
    # pv.and.h     x23, x19, x18
    # pv.and.h     x24, x18, x18
    # pv.and.h     x25, x19, x19

    # pv.and.b    x26, x18, x19
    # pv.and.b    x27, x19, x18
    # pv.and.b    x28, x18, x18
    # pv.and.b    x29, x19, x19

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    # pv.xor.sc.b x19, x23, x27


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

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27




beq x20, x15, ALU_round_2 # x15 = 3
beq x20, x16, ALU_round_3 # x16 = 2
beq x20, x21, ALU_round_4 # x21 = 1