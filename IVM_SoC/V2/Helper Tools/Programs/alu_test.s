
/mnt/e/WSL/git_clones/Programs/alu_test.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	fc010113          	addi	sp,sp,-64
   4:	02812e23          	sw	s0,60(sp)
   8:	04010413          	addi	s0,sp,64
   c:	04000793          	li	a5,64
  10:	fef42623          	sw	a5,-20(s0)
  14:	00200793          	li	a5,2
  18:	fef42423          	sw	a5,-24(s0)
  1c:	fec42703          	lw	a4,-20(s0)
  20:	fe842783          	lw	a5,-24(s0)
  24:	00f707b3          	add	a5,a4,a5
  28:	fef42223          	sw	a5,-28(s0)
  2c:	fec42703          	lw	a4,-20(s0)
  30:	fe842783          	lw	a5,-24(s0)
  34:	40f707b3          	sub	a5,a4,a5
  38:	fef42023          	sw	a5,-32(s0)
  3c:	fe842703          	lw	a4,-24(s0)
  40:	fe442783          	lw	a5,-28(s0)
  44:	40f707b3          	sub	a5,a4,a5
  48:	fcf42e23          	sw	a5,-36(s0)
  4c:	fe842783          	lw	a5,-24(s0)
  50:	fec42703          	lw	a4,-20(s0)
  54:	40f757b3          	sra	a5,a4,a5
  58:	fcf42c23          	sw	a5,-40(s0)
  5c:	fe842783          	lw	a5,-24(s0)
  60:	fec42703          	lw	a4,-20(s0)
  64:	00f717b3          	sll	a5,a4,a5
  68:	fcf42a23          	sw	a5,-44(s0)
  6c:	fe842783          	lw	a5,-24(s0)
  70:	01e79793          	slli	a5,a5,0x1e
  74:	fcf42823          	sw	a5,-48(s0)
  78:	fec42703          	lw	a4,-20(s0)
  7c:	fe842783          	lw	a5,-24(s0)
  80:	00f747b3          	xor	a5,a4,a5
  84:	fcf42623          	sw	a5,-52(s0)
  88:	fdc42703          	lw	a4,-36(s0)
  8c:	fe842783          	lw	a5,-24(s0)
  90:	00e7a7b3          	slt	a5,a5,a4
  94:	0ff7f793          	andi	a5,a5,255
  98:	fcf42423          	sw	a5,-56(s0)
  9c:	ffff                	0xffff
  9e:	ffff                	0xffff
  a0:	00000793          	li	a5,0
  a4:	00078513          	mv	a0,a5
  a8:	03c12403          	lw	s0,60(sp)
  ac:	04010113          	addi	sp,sp,64
  b0:	00008067          	ret

Disassembly of section .eh_frame:

000000b4 <_ebss+0xb4>:
  b4:	0010                	0x10
  b6:	0000                	unimp
  b8:	0000                	unimp
  ba:	0000                	unimp
  bc:	7a01                	lui	s4,0xfffe0
  be:	0052                	c.slli	zero,0x14
  c0:	7c01                	lui	s8,0xfffe0
  c2:	0101                	addi	sp,sp,0
  c4:	00020d1b          	0x20d1b
  c8:	0020                	addi	s0,sp,8
  ca:	0000                	unimp
  cc:	0018                	0x18
  ce:	0000                	unimp
  d0:	ff30                	fsw	fa2,120(a4)
  d2:	ffff                	0xffff
  d4:	00b4                	addi	a3,sp,72
  d6:	0000                	unimp
  d8:	4400                	lw	s0,8(s0)
  da:	400e                	0x400e
  dc:	8844                	0x8844
  de:	4401                	li	s0,0
  e0:	080c                	addi	a1,sp,16
  e2:	0200                	addi	s0,sp,256
  e4:	c8a0                	sw	s0,80(s1)
  e6:	0d44                	addi	s1,sp,660
  e8:	0002                	c.slli64	zero
	...

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
