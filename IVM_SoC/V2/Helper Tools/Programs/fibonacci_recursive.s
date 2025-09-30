
/mnt/e/WSL/git_clones/Programs/fibonacci_recursive.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	20000193          	li	gp,512
  10:	07c000ef          	jal	ra,8c <main>
  14:	ffff                	0xffff
  16:	ffff                	0xffff
  18:	00000013          	nop

0000001c <_Z9fibonaccii>:
  1c:	fe010113          	addi	sp,sp,-32
  20:	00112e23          	sw	ra,28(sp)
  24:	00812c23          	sw	s0,24(sp)
  28:	00912a23          	sw	s1,20(sp)
  2c:	02010413          	addi	s0,sp,32
  30:	fea42623          	sw	a0,-20(s0)
  34:	fec42703          	lw	a4,-20(s0)
  38:	00100793          	li	a5,1
  3c:	00e7c663          	blt	a5,a4,48 <_Z9fibonaccii+0x2c>
  40:	fec42783          	lw	a5,-20(s0)
  44:	0300006f          	j	74 <_Z9fibonaccii+0x58>
  48:	fec42783          	lw	a5,-20(s0)
  4c:	fff78793          	addi	a5,a5,-1
  50:	00078513          	mv	a0,a5
  54:	fc9ff0ef          	jal	ra,1c <_Z9fibonaccii>
  58:	00050493          	mv	s1,a0
  5c:	fec42783          	lw	a5,-20(s0)
  60:	ffe78793          	addi	a5,a5,-2
  64:	00078513          	mv	a0,a5
  68:	fb5ff0ef          	jal	ra,1c <_Z9fibonaccii>
  6c:	00050793          	mv	a5,a0
  70:	00f487b3          	add	a5,s1,a5
  74:	00078513          	mv	a0,a5
  78:	01c12083          	lw	ra,28(sp)
  7c:	01812403          	lw	s0,24(sp)
  80:	01412483          	lw	s1,20(sp)
  84:	02010113          	addi	sp,sp,32
  88:	00008067          	ret

0000008c <main>:
  8c:	fe010113          	addi	sp,sp,-32
  90:	00112e23          	sw	ra,28(sp)
  94:	00812c23          	sw	s0,24(sp)
  98:	02010413          	addi	s0,sp,32
  9c:	fe042623          	sw	zero,-20(s0)
  a0:	02e00513          	li	a0,46
  a4:	f79ff0ef          	jal	ra,1c <_Z9fibonaccii>
  a8:	00050793          	mv	a5,a0
  ac:	fef42623          	sw	a5,-20(s0)
  b0:	00000793          	li	a5,0
  b4:	00078513          	mv	a0,a5
  b8:	01c12083          	lw	ra,28(sp)
  bc:	01812403          	lw	s0,24(sp)
  c0:	02010113          	addi	sp,sp,32
  c4:	00008067          	ret

Disassembly of section .eh_frame:

00000400 <__bss_end-0x17f000>:
 400:	0010                	0x10
 402:	0000                	unimp
 404:	0000                	unimp
 406:	0000                	unimp
 408:	7a01                	lui	s4,0xfffe0
 40a:	0052                	c.slli	zero,0x14
 40c:	7c01                	lui	s8,0xfffe0
 40e:	0101                	addi	sp,sp,0
 410:	00020d1b          	0x20d1b
 414:	0010                	0x10
 416:	0000                	unimp
 418:	0018                	0x18
 41a:	0000                	unimp
 41c:	fbe4                	fsw	fs1,116(a5)
 41e:	ffff                	0xffff
 420:	001c                	0x1c
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0028                	addi	a0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbec                	fsw	fa1,116(a5)
 432:	ffff                	0xffff
 434:	0070                	addi	a2,sp,12
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	200e                	fld	ft0,192(sp)
 43c:	814c                	0x814c
 43e:	8801                	andi	s0,s0,0
 440:	8902                	jr	s2
 442:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce0880>
 446:	0200                	addi	s0,sp,256
 448:	c14c                	sw	a1,4(a0)
 44a:	c844                	sw	s1,20(s0)
 44c:	c944                	sw	s1,20(a0)
 44e:	0d44                	addi	s1,sp,660
 450:	0002                	c.slli64	zero
 452:	0000                	unimp
 454:	0020                	addi	s0,sp,8
 456:	0000                	unimp
 458:	0058                	addi	a4,sp,4
 45a:	0000                	unimp
 45c:	fc30                	fsw	fa2,120(s0)
 45e:	ffff                	0xffff
 460:	003c                	addi	a5,sp,8
 462:	0000                	unimp
 464:	4400                	lw	s0,8(s0)
 466:	200e                	fld	ft0,192(sp)
 468:	8148                	0x8148
 46a:	8801                	andi	s0,s0,0
 46c:	4402                	lw	s0,0(sp)
 46e:	080c                	addi	a1,sp,16
 470:	6000                	flw	fs0,0(s0)
 472:	44c1                	li	s1,16
 474:	44c8                	lw	a0,12(s1)
 476:	020d                	addi	tp,tp,3

Disassembly of section .heap:

0017f400 <__heap_start>:
	...

Disassembly of section .comment:

00000000 <__stack_start-0x17f800>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
