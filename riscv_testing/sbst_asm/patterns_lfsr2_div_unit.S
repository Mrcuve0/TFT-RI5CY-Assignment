# li sp, 0x00

li x18, 0x00000017 // Random init number
li x19, 0xffeeffee // Random init number

li x20, 0x00000019 // 100 iterations

li x21, 0x00000001

loop:
    remu    x31, x18, x19
    remu    x10, x19, x18
    remu    x11, x19, x19
    remu    x12, x18, x18

    div     x22, x18, x19
    div     x23, x19, x18
    div     x24, x19, x19
    div     x13, x18, x18

    divu    x25, x18, x19
    divu    x26, x19, x18
    divu    x27, x19, x19
    divu    x14, x18, x18

    rem     x28, x18, x19
    rem     x29, x19, x18
    rem     x30, x19, x19
    rem     x15, x18, x18
        
    pv.xor.sc.b x18, x23, x28
    pv.xor.sc.b x19, x24, x31

    sw  x22, 4(sp)
    sw  x23, 8(sp)
    sw  x24, 12(sp)
    sw  x25, 16(sp)
    sw  x26, 20(sp)
    sw  x27, 24(sp)
    sw  x28, 28(sp)
    sw  x29, 32(sp)
    sw  x30, 36(sp)
    sw  x31, 40(sp)
    sw  x10, 44(sp)
    sw  x11, 48(sp)
    sw  x12, 52(sp)
    sw  x13, 56(sp)
    sw  x14, 60(sp)
    sw  x15, 64(sp)
 
    sub x20, x20, x21

bne x20, x0, loop