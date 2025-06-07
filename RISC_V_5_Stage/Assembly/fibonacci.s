	.file	"fibonacci.cpp"
	.option nopic
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
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
.L3:
	lw	a4,-28(s0)
	li	a5,999
	bgt	a4,a5,.L2
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
	j	.L3
.L2:
 #APP
# 15 "fibonacci.cpp" 1
	.word 0xFFFFFFFF
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
