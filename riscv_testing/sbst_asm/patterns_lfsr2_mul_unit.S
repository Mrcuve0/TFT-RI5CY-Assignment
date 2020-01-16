# li sp, 0x00

li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number

li x20, 0x0000000C // 0x19 iterations

li x21, 0x00000001

# mulh     --> signed      * signed
# mulhu    --> unsigned    * unsigned
# mulhsu   --> signed      * unsigned

loopMUL:

    #   ____            _         ____                       _   _                 
    #  |  _ \          (_)       / __ \                     | | (_)                
    #  | |_) | __ _ ___ _  ___  | |  | |_ __   ___ _ __ __ _| |_ _  ___  _ __  ___ 
    #  |  _ < / _` / __| |/ __| | |  | | '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \/ __|
    #  | |_) | (_| \__ \ | (__  | |__| | |_) |  __/ | | (_| | |_| | (_) | | | \__ \
    #  |____/ \__,_|___/_|\___|  \____/| .__/ \___|_|  \__,_|\__|_|\___/|_| |_|___/
    #                                  | |                                         
    #                                  |_|                                         

    mul     x22, x18, x19
    mulh    x23, x18, x19
    mulhu   x24, x18, x19
    mulhsu  x25, x18, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22

    
    #   ____ ___        _     _ _     __  __          _____    ____             
    #  |___ \__ \      | |   (_) |   |  \/  |   /\   / ____|  / __ \            
    #    __) | ) |_____| |__  _| |_  | \  / |  /  \ | |      | |  | |_ __  ___  
    #   |__ < / /______| '_ \| | __| | |\/| | / /\ \| |      | |  | | '_ \/ __| 
    #   ___) / /_      | |_) | | |_  | |  | |/ ____ \ |____  | |__| | |_) \__ \ 
    #  |____/____|     |_.__/|_|\__| |_|  |_/_/    \_\_____|  \____/| .__/|___/ 
    #                                                               | |         
    #                                                               |_|         

    p.mac   x22, x18, x19
    p.mac   x23, x19, x18
    p.mac   x24, x18, x18
    p.mac   x25, x19, x19

    p.msu   x26, x18, x19
    p.msu   x27, x19, x18
    p.msu   x28, x18, x18
    p.msu   x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    #   __   __        _     _ _     __  __       _    ____            
    #  /_ | / /       | |   (_) |   |  \/  |     | |  / __ \           
    #   | |/ /_ ______| |__  _| |_  | \  / |_   _| | | |  | |_ __  ___ 
    #   | | '_ \______| '_ \| | __| | |\/| | | | | | | |  | | '_ \/ __|
    #   | | (_) |     | |_) | | |_  | |  | | |_| | | | |__| | |_) \__ \
    #   |_|\___/      |_.__/|_|\__| |_|  |_|\__,_|_|  \____/| .__/|___/
    #                                                       | |        
    #                                                       |_|        

    p.muls   x22, x18, x19
    p.muls   x23, x19, x18
    p.muls   x24, x18, x18
    p.muls   x25, x19, x19

    p.mulhhs    x26, x18, x19
    p.mulhhs    x27, x19, x18
    p.mulhhs    x28, x18, x18
    p.mulhhs    x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.mulsN   x22, x18, x19, 1
    p.mulsN   x23, x19, x18, 26
    p.mulsN   x24, x18, x18, 12
    p.mulsN   x25, x19, x19, 2

    p.mulhhsN    x26, x18, x19, 30
    p.mulhhsN    x27, x19, x18, 7
    p.mulhhsN    x28, x18, x18, 3
    p.mulhhsN    x29, x19, x19, 21

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.mulsRN   x22, x18, x19, 1
    p.mulsRN   x23, x19, x18, 26
    p.mulsRN   x24, x18, x18, 12
    p.mulsRN   x25, x19, x19, 2

    p.mulhhsRN    x26, x18, x19, 30
    p.mulhhsRN    x27, x19, x18, 7
    p.mulhhsRN    x28, x18, x18, 3
    p.mulhhsRN    x29, x19, x19, 21

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.mulu   x22, x18, x19
    p.mulu   x23, x19, x18
    p.mulu   x24, x18, x18
    p.mulu   x25, x19, x19

    p.mulhhu    x26, x18, x19
    p.mulhhu    x27, x19, x18
    p.mulhhu    x28, x18, x18
    p.mulhhu    x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.muluN   x22, x18, x19, 5
    p.muluN   x23, x19, x18, 2
    p.muluN   x24, x18, x18, 21
    p.muluN   x25, x19, x19, 4

    p.mulhhuN    x26, x18, x19, 23
    p.mulhhuN    x27, x19, x18, 25
    p.mulhhuN    x28, x18, x18, 5
    p.mulhhuN    x29, x19, x19, 2

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.muluRN   x22, x18, x19, 29
    p.muluRN   x23, x19, x18, 3
    p.muluRN   x24, x18, x18, 20
    p.muluRN   x25, x19, x19, 21

    p.mulhhuRN    x26, x18, x19, 27
    p.mulhhuRN    x27, x19, x18, 18
    p.mulhhuRN    x28, x18, x18, 26
    p.mulhhuRN    x29, x19, x19, 8

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    #   __   __        _     _ _     __  __          _____    ____            
    #  /_ | / /       | |   (_) |   |  \/  |   /\   / ____|  / __ \           
    #   | |/ /_ ______| |__  _| |_  | \  / |  /  \ | |      | |  | |_ __  ___ 
    #   | | '_ \______| '_ \| | __| | |\/| | / /\ \| |      | |  | | '_ \/ __|
    #   | | (_) |     | |_) | | |_  | |  | |/ ____ \ |____  | |__| | |_) \__ \
    #   |_|\___/      |_.__/|_|\__| |_|  |_/_/    \_\_____|  \____/| .__/|___/
    #                                                              | |        
    #                                                              |_|        

    p.macsN   x22, x18, x19, 26
    p.macsN   x23, x19, x18, 8
    p.macsN   x24, x18, x18, 26
    p.macsN   x25, x19, x19, 21

    p.machhsN    x26, x18, x19, 30
    p.machhsN    x27, x19, x18, 19
    p.machhsN    x28, x18, x18, 3
    p.machhsN    x29, x19, x19, 4

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.macsrN   x22, x18, x19, 8
    p.macsrN   x23, x19, x18, 6
    p.macsrN   x24, x18, x18, 18
    p.macsrN   x25, x19, x19, 29

    p.machhsRN    x26, x18, x19, 15
    p.machhsRN    x27, x19, x18, 16
    p.machhsRN    x28, x18, x18, 7
    p.machhsRN    x29, x19, x19, 19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.macuN   x22, x18, x19, 3
    p.macuN   x23, x19, x18, 20
    p.macuN   x24, x18, x18, 5
    p.macuN   x25, x19, x19, 28

    p.machhuN    x26, x18, x19, 27
    p.machhuN    x27, x19, x18, 29
    p.machhuN    x28, x18, x18, 9
    p.machhuN    x29, x19, x19, 21

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    p.macuRN   x22, x18, x19, 2
    p.macuRN   x23, x19, x18, 20
    p.macuRN   x24, x18, x18, 21
    p.macuRN   x25, x19, x19, 6

    p.machhuRN    x26, x18, x19, 30
    p.machhuRN    x27, x19, x18, 29
    p.machhuRN    x28, x18, x18, 23
    p.machhuRN    x29, x19, x19, 14

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    #   _____        _     _____               _            _      ____            
    #  |  __ \      | |   |  __ \             | |          | |    / __ \           
    #  | |  | | ___ | |_  | |__) | __ ___   __| |_   _  ___| |_  | |  | |_ __  ___ 
    #  | |  | |/ _ \| __| |  ___/ '__/ _ \ / _` | | | |/ __| __| | |  | | '_ \/ __|
    #  | |__| | (_) | |_  | |   | | | (_) | (_| | |_| | (__| |_  | |__| | |_) \__ \
    #  |_____/ \___/ \__| |_|   |_|  \___/ \__,_|\__,_|\___|\__|  \____/| .__/|___/
    #                                                                   | |        
    #                                                                   |_|        

    pv.dotup.sc.h x22, x18, x19
    pv.dotup.sc.h x23, x19, x18
    pv.dotup.sc.h x24, x18, x18
    pv.dotup.sc.h x25, x19, x19

    pv.dotup.sci.h x26, x18, 30
    pv.dotup.sci.h x27, x19, 13
    pv.dotup.sci.h x28, x18, 9
    pv.dotup.sci.h x29, x19, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.dotup.sc.b x22, x18, x19
    pv.dotup.sc.b x23, x19, x18
    pv.dotup.sc.b x24, x18, x18
    pv.dotup.sc.b x25, x19, x19

    pv.dotup.sci.b x26, x18, 23
    pv.dotup.sci.b x27, x19, 2
    pv.dotup.sci.b x28, x18, 7
    pv.dotup.sci.b x29, x19, 6

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.dotusp.sc.h x22, x18, x19
    pv.dotusp.sc.h x23, x19, x18
    pv.dotusp.sc.h x24, x18, x18
    pv.dotusp.sc.h x25, x19, x19

    pv.dotusp.sci.h x26, x18, 12
    pv.dotusp.sci.h x27, x19, 1
    pv.dotusp.sci.h x28, x18, 19
    pv.dotusp.sci.h x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.dotsp.sc.b x22, x18, x19
    pv.dotsp.sc.b x23, x19, x18
    pv.dotsp.sc.b x24, x18, x18
    pv.dotsp.sc.b x25, x19, x19

    pv.dotsp.sci.b x26, x18, 20
    pv.dotsp.sci.b x27, x19, 14
    pv.dotsp.sci.b x28, x18, 18
    pv.dotsp.sci.b x29, x19, 13

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotup.sc.h x22, x18, x19
    pv.sdotup.sc.h x23, x19, x18
    pv.sdotup.sc.h x24, x18, x18
    pv.sdotup.sc.h x25, x19, x19

    pv.sdotup.sci.h x26, x18, 30
    pv.sdotup.sci.h x27, x19, 4
    pv.sdotup.sci.h x28, x18, 3
    pv.sdotup.sci.h x29, x19, 7

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotup.sc.b x22, x18, x19
    pv.sdotup.sc.b x23, x19, x18
    pv.sdotup.sc.b x24, x18, x18
    pv.sdotup.sc.b x25, x19, x19

    pv.sdotup.sci.b x26, x18, 26
    pv.sdotup.sci.b x27, x19, 4
    pv.sdotup.sci.b x28, x18, 18
    pv.sdotup.sci.b x29, x19, 15

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotusp.sc.h x22, x18, x19
    pv.sdotusp.sc.h x23, x19, x18
    pv.sdotusp.sc.h x24, x18, x18
    pv.sdotusp.sc.h x25, x19, x19

    pv.sdotusp.sci.h x26, x18, 31
    pv.sdotusp.sci.h x27, x19, 8
    pv.sdotusp.sci.h x28, x18, 21
    pv.sdotusp.sci.h x29, x19, 3

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotusp.sc.b x22, x18, x19
    pv.sdotusp.sc.b x23, x19, x18
    pv.sdotusp.sc.b x24, x18, x18
    pv.sdotusp.sc.b x25, x19, x19

    pv.sdotusp.sci.b x26, x18, 26
    pv.sdotusp.sci.b x27, x19, 12
    pv.sdotusp.sci.b x28, x18, 1
    pv.sdotusp.sci.b x29, x19, 4

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotsp.sc.h x22, x18, x19
    pv.sdotsp.sc.h x23, x19, x18
    pv.sdotsp.sc.h x24, x18, x18
    pv.sdotsp.sc.h x25, x19, x19

    pv.sdotsp.sci.h x26, x18, 7
    pv.sdotsp.sci.h x27, x19, 28
    pv.sdotsp.sci.h x28, x18, 31
    pv.sdotsp.sci.h x29, x19, 3

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.sdotsp.sc.b x22, x18, x19
    pv.sdotsp.sc.b x23, x19, x18
    pv.sdotsp.sc.b x24, x18, x18
    pv.sdotsp.sc.b x25, x19, x19

    pv.sdotsp.sci.b x26, x18, 6
    pv.sdotsp.sci.b x27, x19, 5
    pv.sdotsp.sci.b x28, x18, 9
    pv.sdotsp.sci.b x29, x19, 30

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    #    _____ _            __  __ _          _______           _    
    #   / ____| |          / _|/ _| |        / /  __ \         | |   
    #  | (___ | |__  _   _| |_| |_| | ___   / /| |__) |_ _  ___| | __
    #   \___ \| '_ \| | | |  _|  _| |/ _ \ / / |  ___/ _` |/ __| |/ /
    #   ____) | | | | |_| | | | | | |  __// /  | |  | (_| | (__|   < 
    #  |_____/|_| |_|\__,_|_| |_| |_|\___/_/   |_|   \__,_|\___|_|\_\
    #                                                                
    #                                                                

    pv.shuffle.h x22, x18, x19
    pv.shuffle.h x23, x19, x18
    pv.shuffle.h x24, x18, x18
    pv.shuffle.h x25, x19, x19

    pv.shuffle.sci.h x26, x18, 28
    pv.shuffle.sci.h x27, x19, 5
    pv.shuffle.sci.h x28, x18, 1
    pv.shuffle.sci.h x29, x19, 23

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.shuffle.b x22, x18, x19
    pv.shuffle.b x23, x19, x18
    pv.shuffle.b x24, x18, x18
    pv.shuffle.b x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.shuffleI0.sci.b x22, x18, 6
    pv.shuffleI0.sci.b x23, x19, 5
    pv.shuffleI0.sci.b x24, x18, 9
    pv.shuffleI0.sci.b x25, x19, 30

    pv.shuffleI1.sci.b x26, x18, 28
    pv.shuffleI1.sci.b x27, x19, 4
    pv.shuffleI1.sci.b x28, x18, 13
    pv.shuffleI1.sci.b x29, x19, 20

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.shuffleI2.sci.b x22, x18, 8
    pv.shuffleI2.sci.b x23, x19, 10
    pv.shuffleI2.sci.b x24, x18, 29
    pv.shuffleI2.sci.b x25, x19, 31

    pv.shuffleI3.sci.b x26, x18, 13
    pv.shuffleI3.sci.b x27, x19, 4
    pv.shuffleI3.sci.b x28, x18, 16
    pv.shuffleI3.sci.b x29, x19, 25

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.shuffle2.h x22, x18, x19
    pv.shuffle2.h x23, x19, x18
    pv.shuffle2.h x24, x18, x18
    pv.shuffle2.h x25, x19, x19

    pv.shuffle2.b x26, x18, x19
    pv.shuffle2.b x27, x19, x18
    pv.shuffle2.b x28, x18, x18
    pv.shuffle2.b x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.pack.h x22, x18, x19
    pv.pack.h x23, x19, x18
    pv.pack.h x24, x18, x18
    pv.pack.h x25, x19, x19

    pv.packhi.b x26, x18, x19
    pv.packhi.b x27, x19, x18
    pv.packhi.b x28, x18, x18
    pv.packhi.b x29, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    pv.packlo.b x22, x18, x19
    pv.packlo.b x23, x19, x18
    pv.packlo.b x24, x18, x18
    pv.packlo.b x25, x19, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.xor.sc.b x18, x23, x25
    pv.xor.sc.b x19, x24, x22


    sub x20, x20, x21

bne x20, x0, loopMUL


