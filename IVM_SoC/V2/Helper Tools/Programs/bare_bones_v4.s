
/mnt/e/WSL/git_clones/Programs/bare_bones_v4.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	40000113          	li	sp,1024
   4:	20000193          	li	gp,512
   8:	044000ef          	jal	ra,4c <main>
   c:	ffff                	0xffff
   e:	ffff                	0xffff
  10:	00000013          	nop

00000014 <_Z3addii>:
  14:	fd010113          	addi	sp,sp,-48
  18:	02812623          	sw	s0,44(sp)
  1c:	03010413          	addi	s0,sp,48
  20:	fca42e23          	sw	a0,-36(s0)
  24:	fcb42c23          	sw	a1,-40(s0)
  28:	fdc42703          	lw	a4,-36(s0)
  2c:	fd842783          	lw	a5,-40(s0)
  30:	00f707b3          	add	a5,a4,a5
  34:	fef42623          	sw	a5,-20(s0)
  38:	fec42783          	lw	a5,-20(s0)
  3c:	00078513          	mv	a0,a5
  40:	02c12403          	lw	s0,44(sp)
  44:	03010113          	addi	sp,sp,48
  48:	00008067          	ret

0000004c <main>:
  4c:	fe010113          	addi	sp,sp,-32
  50:	00112e23          	sw	ra,28(sp)
  54:	00812c23          	sw	s0,24(sp)
  58:	02010413          	addi	s0,sp,32
  5c:	00f00593          	li	a1,15
  60:	00c00513          	li	a0,12
  64:	fb1ff0ef          	jal	ra,14 <_Z3addii>
  68:	fea42623          	sw	a0,-20(s0)
  6c:	fec42783          	lw	a5,-20(s0)
  70:	00078513          	mv	a0,a5
  74:	01c12083          	lw	ra,28(sp)
  78:	01812403          	lw	s0,24(sp)
  7c:	02010113          	addi	sp,sp,32
  80:	00008067          	ret

Disassembly of section .eh_frame:

00000084 <_ebss+0x84>:
  84:	0010                	0x10
  86:	0000                	unimp
  88:	0000                	unimp
  8a:	0000                	unimp
  8c:	7a01                	lui	s4,0xfffe0
  8e:	0052                	c.slli	zero,0x14
  90:	7c01                	lui	s8,0xfffe0
  92:	0101                	addi	sp,sp,0
  94:	00020d1b          	0x20d1b
  98:	0010                	0x10
  9a:	0000                	unimp
  9c:	0018                	0x18
  9e:	0000                	unimp
  a0:	ff60                	fsw	fs0,124(a4)
  a2:	ffff                	0xffff
  a4:	0014                	0x14
  a6:	0000                	unimp
  a8:	0000                	unimp
  aa:	0000                	unimp
  ac:	001c                	0x1c
  ae:	0000                	unimp
  b0:	002c                	addi	a1,sp,8
  b2:	0000                	unimp
  b4:	ff60                	fsw	fs0,124(a4)
  b6:	ffff                	0xffff
  b8:	0038                	addi	a4,sp,8
  ba:	0000                	unimp
  bc:	4400                	lw	s0,8(s0)
  be:	300e                	fld	ft0,224(sp)
  c0:	8844                	0x8844
  c2:	4401                	li	s0,0
  c4:	080c                	addi	a1,sp,16
  c6:	6400                	flw	fs0,8(s0)
  c8:	44c8                	lw	a0,12(s1)
  ca:	020d                	addi	tp,tp,3
  cc:	0020                	addi	s0,sp,8
  ce:	0000                	unimp
  d0:	004c                	addi	a1,sp,4
  d2:	0000                	unimp
  d4:	ff78                	fsw	fa4,124(a4)
  d6:	ffff                	0xffff
  d8:	0038                	addi	a4,sp,8
  da:	0000                	unimp
  dc:	4400                	lw	s0,8(s0)
  de:	200e                	fld	ft0,192(sp)
  e0:	8148                	0x8148
  e2:	8801                	andi	s0,s0,0
  e4:	4402                	lw	s0,0(sp)
  e6:	080c                	addi	a1,sp,16
  e8:	5c00                	lw	s0,56(s0)
  ea:	44c1                	li	s1,16
  ec:	44c8                	lw	a0,12(s1)
  ee:	020d                	addi	tp,tp,3

Disassembly of section .stack:

00000000 <_stack_start>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
