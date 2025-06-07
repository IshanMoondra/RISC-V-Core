li s0, 1
li s1, 0
li t0, 0
li t1, 1
li s2, 15
LOOP:
add t0, s1, s0
mv s1, s0
mv s0, t0
addi t1, t1, 1
blt t1, s2, LOOP