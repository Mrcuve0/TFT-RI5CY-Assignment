li t3, 0x0000000F
li t4, 0x00000001
li t5, 0x00000104
li t6, 0x00000000

li t0, 0x000300F0
li t1, 0x01000050

myloop:
sub t3, t3, t4
divu t2, t0, t1
sw t2, 4(sp)
div t2, t0, t1
sw t2, 4(sp)
remu t2, t0, t1
sw t2, 4(sp)
rem t2, t0, t1
sw t2, 4(sp)
add t0, t0, t5
add t1, t1, t5
bne t3, t6, myloop
