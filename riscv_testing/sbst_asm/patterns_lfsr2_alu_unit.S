# li sp, 0x00

# li x18, 0x0000002b // Random init number
# li x19, 0xffeeffee // Random init number
li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number

li x20, 0x00000010 // 100 iterations

li x21, 0x00000001

loopALU:

    #   ____            _         ____  _____     
    #  |  _ \          (_)       / __ \|  __ \    
    #  | |_) | __ _ ___ _  ___  | |  | | |__) |__ 
    #  |  _ < / _` / __| |/ __| | |  | |  ___/ __|
    #  | |_) | (_| \__ \ | (__  | |__| | |   \__ \
    #  |____/ \__,_|___/_|\___|  \____/|_|   |___/
    #                                             
             
    pv.add.sc.b     x22, x18, x19
    pv.add.sc.b     x23, x19, x18
    pv.add.sc.b     x24, x18, x18
    pv.add.sc.b     x25, x19, x19

    pv.add.sci.b    x26, x18, 11
    pv.add.sci.b    x27, x19, 22

    pv.add.sci.h    x28, x18, 4
    pv.add.sci.h    x29, x19, 20

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

    pv.sub.sci.b    x26, x18, 6
    pv.sub.sci.b    x27, x19, 30

    pv.sub.sci.h    x28, x18, 7
    pv.sub.sci.h    x29, x19, 3

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

    pv.avg.sci.b    x26, x18, 8
    pv.avg.sci.b    x27, x19, 26

    pv.avg.sci.h    x28, x18, 29
    pv.avg.sci.h    x29, x19, 3

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

    pv.or.sci.b    x26, x18, 23
    pv.or.sci.b    x27, x19, 25

    pv.or.sci.h    x28, x18, 3
    pv.or.sci.h    x29, x19, 31

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

    #    _____ _     _  __ _       
    #   / ____| |   (_)/ _| |      
    #  | (___ | |__  _| |_| |_ ___ 
    #   \___ \| '_ \| |  _| __/ __|
    #   ____) | | | | | | | |_\__ \
    #  |_____/|_| |_|_|_|  \__|___/
    #                              

    pv.srl.sc.b     x22, x18, x19
    pv.srl.sc.b     x23, x19, x18
    pv.srl.sc.b     x24, x18, x18
    pv.srl.sc.b     x25, x19, x19

    pv.srl.sci.b    x26, x18, 14
    pv.srl.sci.b    x27, x19, 19

    pv.srl.sci.h    x28, x18, 4
    pv.srl.sci.h    x29, x19, 19

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

    pv.sra.sci.b    x26, x18, 30
    pv.sra.sci.b    x27, x19, 6

    pv.sra.sci.h    x28, x18, 11
    pv.sra.sci.h    x29, x19, 2

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


    p.ror x22, x18, x19
    p.ror x23, x19, x18
    p.ror x24, x18, x18
    p.ror x25, x19, x19

    # p.ror x26, x18, 30
    # p.ror x27, x19, 6

    # p.ror x28, x18, 11
    # p.ror x29, x19, 2

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    # sw  x26, 20(sp)
    # sw  x27, 24(sp)
    # sw  x28, 28(sp)
    # sw  x29, 32(sp)

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x22, x25


    pv.sll.sc.b     x22, x18, x19
    pv.sll.sc.b     x23, x19, x18
    pv.sll.sc.b     x24, x18, x18
    pv.sll.sc.b     x25, x19, x19

    pv.sll.sci.b    x26, x18, 26
    pv.sll.sci.b    x27, x19, 7

    pv.sll.sci.h    x28, x18, 30
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

    #   ____  _ _      _____                  _   _             
    #  |  _ \(_) |    / ____|                | | (_)            
    #  | |_) |_| |_  | |     ___  _   _ _ __ | |_ _ _ __   __ _ 
    #  |  _ <| | __| | |    / _ \| | | | '_ \| __| | '_ \ / _` |
    #  | |_) | | |_  | |___| (_) | |_| | | | | |_| | | | | (_| |
    #  |____/|_|\__|  \_____\___/ \__,_|_| |_|\__|_|_| |_|\__, |
    #                                                      __/ |
    #                                                     |___/ 

    p.ff1   x22, x18
    p.ff1   x23, x19
    
    p.fl1   x24, x18
    p.fl1   x25, x19

    p.cnt   x26, x18
    p.cnt   x27, x19

    p.clb   x28, x18
    p.clb   x29, x19

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

    #    _____ _                 ________                ______      _                 _                 
    #   / ____(_)               / /___  /               |  ____|    | |               (_)                
    #  | (___  _  __ _ _ __    / /   / / ___ _ __ ___   | |__  __  _| |_ ___ _ __  ___ _  ___  _ __  ___ 
    #   \___ \| |/ _` | '_ \  / /   / / / _ \ '__/ _ \  |  __| \ \/ / __/ _ \ '_ \/ __| |/ _ \| '_ \/ __|
    #   ____) | | (_| | | | |/ /   / /_|  __/ | | (_) | | |____ >  <| ||  __/ | | \__ \ | (_) | | | \__ \
    #  |_____/|_|\__, |_| |_/_/   /_____\___|_|  \___/  |______/_/\_\\__\___|_| |_|___/_|\___/|_| |_|___/
    #             __/ |                                                                                  
    #            |___/                                                                                   

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

    #    _____      _     _                              _______ _                 
    #   / ____|    | |   | |                            |__   __| |                
    #  | (___   ___| |_  | |     _____      _____ _ __     | |  | |__   __ _ _ __  
    #   \___ \ / _ \ __| | |    / _ \ \ /\ / / _ \ '__|    | |  | '_ \ / _` | '_ \ 
    #   ____) |  __/ |_  | |___| (_) \ V  V /  __/ |       | |  | | | | (_| | | | |
    #  |_____/ \___|\__| |______\___/ \_/\_/ \___|_|       |_|  |_| |_|\__,_|_| |_|
    #                                                                              

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

    #            _               _       _        __      __   _            
    #      /\   | |             | |     | |       \ \    / /  | |           
    #     /  \  | |__  ___  ___ | |_   _| |_ ___   \ \  / /_ _| |_   _  ___ 
    #    / /\ \ | '_ \/ __|/ _ \| | | | | __/ _ \   \ \/ / _` | | | | |/ _ \
    #   / ____ \| |_) \__ \ (_) | | |_| | ||  __/    \  / (_| | | |_| |  __/
    #  /_/    \_\_.__/|___/\___/|_|\__,_|\__\___|     \/ \__,_|_|\__,_|\___|
    #                                                                       

    p.abs  x22, x18
    p.abs  x23, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

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

    #   __  __ _           ____  __            
    #  |  \/  (_)         / /  \/  |           
    #  | \  / |_ _ __    / /| \  / | __ ___  __
    #  | |\/| | | '_ \  / / | |\/| |/ _` \ \/ /
    #  | |  | | | | | |/ /  | |  | | (_| |>  < 
    #  |_|  |_|_|_| |_/_/   |_|  |_|\__,_/_/\_\
    #                                          

    pv.min.sc.b     x22, x18, x19
    pv.min.sc.b     x23, x19, x18
    pv.min.sc.b     x24, x18, x18
    pv.min.sc.b     x25, x19, x19

    pv.min.sci.b    x26, x18, 27
    pv.min.sci.b    x27, x19, 15

    pv.min.sci.h    x28, x18, 11
    pv.min.sci.h    x29, x19, 11

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

    pv.maxu.sci.b    x26, x18, 21
    pv.maxu.sci.b    x27, x19, 27

    pv.maxu.sci.h    x28, x18, 7
    pv.maxu.sci.h    x29, x19, 28

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

 
    sub x20, x20, x21

bne x20, x0, loopALU