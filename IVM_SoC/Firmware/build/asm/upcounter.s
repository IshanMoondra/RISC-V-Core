	.file	"upcounter.cpp"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a4,-20(s0)
	li	a5,5
	bne	a4,a5,.L3
	li	a5,1
	sw	a5,-24(s0)
	j	.L4
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,9
	ble	a4,a5,.L5
.L4:
 #APP
# 18 "/in/upcounter.cpp" 1
	.word 0xFFFFFFFF
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (12.2.0-14+deb12u1+11+b2) 12.2.0"
