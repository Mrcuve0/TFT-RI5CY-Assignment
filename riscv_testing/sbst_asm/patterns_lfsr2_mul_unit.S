# li sp, 0x00

li x18, 0xd8ce1f45 // Random init number
li x19, 0x6ba55e43 // Random init number

li x20, 0x00000064 // 100 iterations

li x21, 0x00000001

# mulh     --> signed      * signed
# mulhu    --> unsigned    * unsigned
# mulhsu   --> signed      * unsigned

loop:
    mul     x22, x18, x19
    mulh    x23, x18, x19
    mulhu   x24, x18, x19
    mulhsu  x25, x18, x19

    sw  x22, 4(sp)
    sw  x23, 8(sp)

    pv.dotup.sc.b x26, x22, x19
    pv.dotup.sc.b x27, x23, x18

    pv.xor.sc.b x18, x23, x18
    pv.xor.sc.b x19, x24, x19

    sw  x24, 12(sp)
    sw  x25, 16(sp)

    pv.shuffle2.h x28, x24, x19
    pv.shuffle2.b x29, x25, x18

    sw  x26, 20(sp)
    sw  x27, 24(sp)

    pv.packhi.b x30, x26, x19
    pv.packlo.b x31, x27, x18

    sw  x28, 28(sp)
    sw  x29, 32(sp)

    sub x20, x20, x21

    sw  x30, 36(sp)
    sw  x31, 40(sp)
bne x20, x0, loop


