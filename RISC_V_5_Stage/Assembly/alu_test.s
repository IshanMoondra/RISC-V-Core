	.file	"alu_test.cpp"
	.option nopic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,108(sp)
	.cfi_offset 8, -4
	addi	s0,sp,112
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
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	addi	a5,a5,3
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	sw	a5,-40(s0)
	lw	a5,-24(s0)
	sw	a5,-44(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	sub	a5,a4,a5
	addi	a5,a5,3
	sw	a5,-52(s0)
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-56(s0)
	li	a5,16
	sw	a5,-60(s0)
	li	a5,8
	sw	a5,-64(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	and	a5,a4,a5
	not	a5,a5
	sw	a5,-68(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	or	a5,a4,a5
	not	a5,a5
	sw	a5,-72(s0)
	lw	a5,-60(s0)
	not	a5,a5
	sw	a5,-76(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	and	a5,a4,a5
	sw	a5,-80(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	or	a5,a4,a5
	sw	a5,-84(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	xor	a5,a4,a5
	sw	a5,-88(s0)
	lw	a4,-60(s0)
	lw	a5,-64(s0)
	xor	a5,a4,a5
	not	a5,a5
	sw	a5,-92(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	slt	a5,a4,a5
	sb	a5,-93(s0)
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	sgtu	a5,a4,a5
	sb	a5,-94(s0)
	li	a5,3
	sw	a5,-100(s0)
	li	a5,-2
	sw	a5,-104(s0)
	lw	a5,-100(s0)
	lw	a4,-104(s0)
	sra	a5,a4,a5
	sw	a5,-108(s0)
	lw	a4,-104(s0)
	lw	a5,-100(s0)
	srl	a5,a4,a5
	sw	a5,-112(s0)
 #APP
# 56 "alu_test.cpp" 1
	.word 0xFFFFFFFF
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	lw	s0,108(sp)
	.cfi_restore 8
	addi	sp,sp,112
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
