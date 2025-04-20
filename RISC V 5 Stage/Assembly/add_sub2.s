	.file	"add_sub2.cpp"
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
	li	a5,10
	sw	a5,-20(s0)
	li	a5,15
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
 #APP
# 16 "add_sub2.cpp" 1
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
