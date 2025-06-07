	.file	"mul_div.cpp"
	.option nopic
	.text
	.globl	__mulsi3
	.globl	__divsi3
	.globl	__modsi3
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	li	a5,43
	sw	a5,-20(s0)
	li	a5,7
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	sw	zero,-32(s0)
	sw	zero,-36(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__mulsi3
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	__divsi3
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	__modsi3
	mv	a5,a0
	sw	a5,-32(s0)
 #APP
# 11 "mul_div.cpp" 1
	.word 0xFFFFFFFF
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
