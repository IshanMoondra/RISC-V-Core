
/mnt/e/WSL/git_clones/Programs/bare_bones_v3.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00112e23          	sw	ra,28(sp)
   8:	00812c23          	sw	s0,24(sp)
   c:	02010413          	addi	s0,sp,32
  10:	058000ef          	jal	ra,68 <main>
  14:	fea42623          	sw	a0,-20(s0)
  18:	ffff                	0xffff
  1a:	ffff                	0xffff
  1c:	00000013          	nop
  20:	01c12083          	lw	ra,28(sp)
  24:	01812403          	lw	s0,24(sp)
  28:	02010113          	addi	sp,sp,32
  2c:	00008067          	ret

00000030 <_Z3addii>:
  30:	fd010113          	addi	sp,sp,-48
  34:	02812623          	sw	s0,44(sp)
  38:	03010413          	addi	s0,sp,48
  3c:	fca42e23          	sw	a0,-36(s0)
  40:	fcb42c23          	sw	a1,-40(s0)
  44:	fdc42703          	lw	a4,-36(s0)
  48:	fd842783          	lw	a5,-40(s0)
  4c:	00f707b3          	add	a5,a4,a5
  50:	fef42623          	sw	a5,-20(s0)
  54:	fec42783          	lw	a5,-20(s0)
  58:	00078513          	mv	a0,a5
  5c:	02c12403          	lw	s0,44(sp)
  60:	03010113          	addi	sp,sp,48
  64:	00008067          	ret

00000068 <main>:
  68:	fe010113          	addi	sp,sp,-32
  6c:	00112e23          	sw	ra,28(sp)
  70:	00812c23          	sw	s0,24(sp)
  74:	02010413          	addi	s0,sp,32
  78:	00f00593          	li	a1,15
  7c:	00c00513          	li	a0,12
  80:	fb1ff0ef          	jal	ra,30 <_Z3addii>
  84:	fea42623          	sw	a0,-20(s0)
  88:	fec42783          	lw	a5,-20(s0)
  8c:	00078513          	mv	a0,a5
  90:	01c12083          	lw	ra,28(sp)
  94:	01812403          	lw	s0,24(sp)
  98:	02010113          	addi	sp,sp,32
  9c:	00008067          	ret

Disassembly of section .eh_frame:

000000a0 <_ebss+0xa0>:
  a0:	0010                	0x10
  a2:	0000                	unimp
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	7a01                	lui	s4,0xfffe0
  aa:	0052                	c.slli	zero,0x14
  ac:	7c01                	lui	s8,0xfffe0
  ae:	0101                	addi	sp,sp,0
  b0:	00020d1b          	0x20d1b
  b4:	0020                	addi	s0,sp,8
  b6:	0000                	unimp
  b8:	0018                	0x18
  ba:	0000                	unimp
  bc:	ff44                	fsw	fs1,60(a4)
  be:	ffff                	0xffff
  c0:	0030                	addi	a2,sp,8
  c2:	0000                	unimp
  c4:	4400                	lw	s0,8(s0)
  c6:	200e                	fld	ft0,192(sp)
  c8:	8148                	0x8148
  ca:	8801                	andi	s0,s0,0
  cc:	4402                	lw	s0,0(sp)
  ce:	080c                	addi	a1,sp,16
  d0:	5400                	lw	s0,40(s0)
  d2:	44c1                	li	s1,16
  d4:	44c8                	lw	a0,12(s1)
  d6:	020d                	addi	tp,tp,3
  d8:	001c                	0x1c
  da:	0000                	unimp
  dc:	003c                	addi	a5,sp,8
  de:	0000                	unimp
  e0:	ff50                	fsw	fa2,60(a4)
  e2:	ffff                	0xffff
  e4:	0038                	addi	a4,sp,8
  e6:	0000                	unimp
  e8:	4400                	lw	s0,8(s0)
  ea:	300e                	fld	ft0,224(sp)
  ec:	8844                	0x8844
  ee:	4401                	li	s0,0
  f0:	080c                	addi	a1,sp,16
  f2:	6400                	flw	fs0,8(s0)
  f4:	44c8                	lw	a0,12(s1)
  f6:	020d                	addi	tp,tp,3
  f8:	0020                	addi	s0,sp,8
  fa:	0000                	unimp
  fc:	005c                	addi	a5,sp,4
  fe:	0000                	unimp
 100:	ff68                	fsw	fa0,124(a4)
 102:	ffff                	0xffff
 104:	0038                	addi	a4,sp,8
 106:	0000                	unimp
 108:	4400                	lw	s0,8(s0)
 10a:	200e                	fld	ft0,192(sp)
 10c:	8148                	0x8148
 10e:	8801                	andi	s0,s0,0
 110:	4402                	lw	s0,0(sp)
 112:	080c                	addi	a1,sp,16
 114:	5c00                	lw	s0,56(s0)
 116:	44c1                	li	s1,16
 118:	44c8                	lw	a0,12(s1)
 11a:	020d                	addi	tp,tp,3

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
