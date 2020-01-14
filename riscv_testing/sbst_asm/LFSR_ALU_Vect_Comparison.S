li x18, 0xc70757b3 // Random init number
li x19, 0xc7071b57 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Vect_Comparison_1:

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27
    
    
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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Vect_Comparison_1



#######################################################################################



li x18, 0x2be30e77 // Random init number
li x19, 0x98360e77 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Vect_Comparison_2:

    #  __      __       _             _       _    _____                                 _                    ____            
    #  \ \    / /      | |           (_)     | |  / ____|                               (_)                  / __ \           
    #   \ \  / /__  ___| |_ ___  _ __ _  __ _| | | |     ___  _ __ ___  _ __   __ _ _ __ _ ___  ___  _ __   | |  | |_ __  ___ 
    #    \ \/ / _ \/ __| __/ _ \| '__| |/ _` | | | |    / _ \| '_ ` _ \| '_ \ / _` | '__| / __|/ _ \| '_ \  | |  | | '_ \/ __|
    #     \  /  __/ (__| || (_) | |  | | (_| | | | |___| (_) | | | | | | |_) | (_| | |  | \__ \ (_) | | | | | |__| | |_) \__ \
    #      \/ \___|\___|\__\___/|_|  |_|\__,_|_|  \_____\___/|_| |_| |_| .__/ \__,_|_|  |_|___/\___/|_| |_|  \____/| .__/|___/
    #                                                                  | |                                         | |        
    #                                                                  |_|                                         |_|        

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27
    
    
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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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


    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Vect_Comparison_2



#######################################################################################



li x18, 0x8ae30e88 // Random init number
li x19, 0x98a88e77 // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Vect_Comparison_3:

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27
    
    
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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Vect_Comparison_3



#######################################################################################



li x18, 0x14aabadf // Random init number
li x19, 0xdfaa14ba // Random init number

li x20, 0x00000004 // 4 iterations
li x21, 0x00000001

LoopALU_Vect_Comparison_4:

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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27

    
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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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
    pv.xor.sc.b x19, x23, x27


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

    sub x20, x20, x21

    pv.xor.sc.b x18, x24, x29
    pv.xor.sc.b x19, x23, x27

bne x20, x0, LoopALU_Vect_Comparison_4