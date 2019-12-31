li t0, 0x00000000
li t1, 0x00000000
divu t2, t0, t1
sw t2, 4(sp)
div t2, t0, t1
sw t2, 4(sp)
remu t2, t0, t1
sw t2, 4(sp)
rem t2, t0, t1
sw t2, 4(sp)

li t0, 0xFFFFFFFF
li t1, 0xFFFFFFFF
divu t2, t0, t1
sw t2, 4(sp)
div t2, t0, t1
sw t2, 4(sp)
remu t2, t0, t1
sw t2, 4(sp)
rem t2, t0, t1
sw t2, 4(sp)

li t0, 0xFFFFFFFF
li t1, 0x00000000
divu t2, t0, t1
sw t2, 4(sp)
div t2, t0, t1
sw t2, 4(sp)
remu t2, t0, t1
sw t2, 4(sp)
rem t2, t0, t1
sw t2, 4(sp)

li t0, 0x00000000
li t1, 0xFFFFFFFF
divu t2, t0, t1
sw t2, 4(sp)
div t2, t0, t1
sw t2, 4(sp)
remu t2, t0, t1
sw t2, 4(sp)
rem t2, t0, t1
sw t2, 4(sp)

