li t0, 0x00000001
li t1, 0x10400002
li t3, 0x00000100
li t4, 0x00020040
li t5, 0x00000001
li t6, 0x00000000
myloopmul:
mul t2, t1, t0
sw t2, 4(sp)
mulh t2, t1, t0
sw t2, 4(sp)
mulhsu t2, t1, t0
sw t2, 4(sp)
mulhu t2, t1, t0
sw t2, 4(sp)
sub t3, t3, t5
add t0, t0, t4
sub t1, t1, t4
bne t3, t6, myloopmul
