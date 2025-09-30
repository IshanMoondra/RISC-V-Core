
/mnt/e/WSL/git_clones/Programs/bare_bones_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	20000193          	li	gp,512
  10:	00c000ef          	jal	ra,1c <main>
  14:	ffff                	0xffff
  16:	ffff                	0xffff
  18:	00000013          	nop

0000001c <main>:
  1c:	fd010113          	addi	sp,sp,-48
  20:	02812623          	sw	s0,44(sp)
  24:	03010413          	addi	s0,sp,48
  28:	00100793          	li	a5,1
  2c:	fef42623          	sw	a5,-20(s0)
  30:	fe042423          	sw	zero,-24(s0)
  34:	fe042223          	sw	zero,-28(s0)
  38:	fe0401a3          	sb	zero,-29(s0)

0000003c <loop_start>:
  3c:	00100793          	li	a5,1
  40:	fef401a3          	sb	a5,-29(s0)
  44:	fe344703          	lbu	a4,-29(s0)
  48:	00900793          	li	a5,9
  4c:	02e7ea63          	bltu	a5,a4,80 <loop_end>
  50:	fec42703          	lw	a4,-20(s0)
  54:	fe842783          	lw	a5,-24(s0)
  58:	00f707b3          	add	a5,a4,a5
  5c:	fef42223          	sw	a5,-28(s0)
  60:	fec42783          	lw	a5,-20(s0)
  64:	fef42423          	sw	a5,-24(s0)
  68:	fe442783          	lw	a5,-28(s0)
  6c:	fef42623          	sw	a5,-20(s0)
  70:	fe344783          	lbu	a5,-29(s0)
  74:	00178793          	addi	a5,a5,1
  78:	fef401a3          	sb	a5,-29(s0)
  7c:	fc9ff06f          	j	44 <loop_start+0x8>

00000080 <loop_end>:
  80:	02f00793          	li	a5,47
  84:	fcf42e23          	sw	a5,-36(s0)
  88:	fe442783          	lw	a5,-28(s0)
  8c:	00078513          	mv	a0,a5
  90:	02c12403          	lw	s0,44(sp)
  94:	03010113          	addi	sp,sp,48
  98:	00008067          	ret

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
 428:	0020                	addi	s0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbec                	fsw	fa1,116(a5)
 432:	ffff                	0xffff
 434:	0080                	addi	s0,sp,64
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	0200                	addi	s0,sp,256
 444:	c86c                	sw	a1,84(s0)
 446:	0d44                	addi	s1,sp,660
 448:	0002                	c.slli64	zero
	...

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
