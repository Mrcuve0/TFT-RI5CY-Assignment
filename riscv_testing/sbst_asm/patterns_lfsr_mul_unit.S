li x1, 0x10400002
li x2, 0x00000100
li x3, 0x00020040
li x4, 0x00000001
li x5, 0x00000001

myloopmul:
    //pv.dotup.sc.b x6, x1, x5
    //pv.dotsp.sc.b x7, x1, x5
    pv.dotup.sc.b x6, x1, x5
    pv.dotsp.sc.b x7, x1, x5

    sub x2, x2, x4
    add x5, x5, x3
    sub x1, x1, x3

    nop
    sw x6, 4(sp)
    sw x7, 8(sp)

    bne x2, x0, myloopmul
