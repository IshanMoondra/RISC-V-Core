; Small Test for Control Loops Hand-Assembled
; Ishan Moondra, 04/24/2025
; For RISC V 32I GlobalFoundries 22nm Tape Out
; Setting up the Stack Pointer Like C++ does. 

; Stack Frame stuff
addi sp, sp, -32
sw s0, 28(sp)
addi s0, sp, 32
sw zero, -20(s0)
li a5, 1
sw	a5,-24(s0)
sw	zero,-32(s0)
sw	zero,-28(s0)
addi zero, zero, 0

; Branch Loop: Label L3
lw	a4,-28(s0)
li	a5,999
bgt	a4,a5, 14; Offset number to be calculated

lw	a4,-20(s0)
lw	a5,-24(s0)
add	a5,a4,a5
sw	a5,-32(s0)
lw	a5,-24(s0)
sw	a5,-20(s0)
lw	a5,-32(s0)
sw	a5,-24(s0)
lw	a5,-28(s0)
addi	a5,a5,1
sw	a5,-28(s0)
addi zero, zero, 0
j	-16 ; Branch OFfset to be calculated;

; Label L2
.word 0xFFFFFFFF