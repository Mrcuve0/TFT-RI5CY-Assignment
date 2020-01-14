li x18, 0x00000017 // Random init number
li x19, 0xffeeffee // Random init number

li x20, 0x00000010 // 16 iterations

li x21, 0x00000001

loopDIV:
    remu    x22, x18, x19
    remu    x23, x19, x18
    remu    x24, x19, x19
    remu    x25, x18, x18

    div     x26, x18, x19
    div     x27, x19, x18
    div     x28, x19, x19
    div     x29, x18, x18

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)

    pv.xor.sc.b x18, x23, x28
    pv.xor.sc.b x19, x24, x27


    divu    x22, x18, x19
    divu    x23, x19, x18
    divu    x24, x19, x19
    divu    x25, x18, x18

    rem     x26, x18, x19
    rem     x27, x19, x18
    rem     x28, x19, x19
    rem     x29, x18, x18
        
    pv.xor.sc.b x18, x23, x28
    pv.xor.sc.b x19, x24, x27

 
    sub x20, x20, x21

bne x20, x0, loopDIV