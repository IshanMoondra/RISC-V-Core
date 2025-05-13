li s0, 4
li s1, 0
li s2, 15
LOOP:
nop
add s1, s1, s0
slt s3, s2, s1
beqz s3, LOOP