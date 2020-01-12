li x18, 0x00000000

li x28, 0x00000001
li x29, 0x00000005

li x21, 0x00000001

loopMUL3_ext:

    li x19, 0x11111111
    li x20, 0x00000004

    loopMUL3_int:
        # mulh     --> signed      * signed
        # mulhu    --> unsigned    * unsigned
        # mulhsu   --> signed      * unsigned

        mulh    x22, x18, x19
        mulhu   x23, x18, x19
        mulhsu  x24, x18, x19
        mulh    x25, x19, x18
        mulhu   x26, x19, x18
        mulhsu  x27, x19, x18 

        slli x19, x19, 1

        sub x20, x20, x21 # x20 = x20 - x21

        sw x22, 4(sp) 
        sw x23, 8(sp)
        sw x24, 12(sp)
        sw x25, 16(sp)
        sw x26, 20(sp)
        sw x27, 24(sp)

        bne x20, x0, loopMUL3_int # if x20 != x0 then loopMUL3

    sll     x18, x19, x28

    addi    x28, x28, 1; # x28 = x28 + 1
    

    bne     x28, x29, loopMUL3_ext # if x28 != x29 then loopMUL3_ext
    
    

    
    
     
