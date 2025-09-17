
/mnt/e/WSL/git_clones/Programs/bare_bones_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	40000113          	li	sp,1024
   4:	20000193          	li	gp,512
   8:	00c000ef          	jal	ra,14 <main>
   c:	ffff                	0xffff
   e:	ffff                	0xffff
  10:	00000013          	nop

00000014 <main>:
  14:	fd010113          	addi	sp,sp,-48
  18:	02812623          	sw	s0,44(sp)
  1c:	03010413          	addi	s0,sp,48
  20:	00100793          	li	a5,1
  24:	00000813          	li	a6,0
  28:	fef42423          	sw	a5,-24(s0)
  2c:	ff042623          	sw	a6,-20(s0)
  30:	00000793          	li	a5,0
  34:	00000813          	li	a6,0
  38:	fef42023          	sw	a5,-32(s0)
  3c:	ff042223          	sw	a6,-28(s0)
  40:	fcf42c23          	sw	a5,-40(s0)
  44:	fd042e23          	sw	a6,-36(s0)
  48:	fc040ba3          	sb	zero,-41(s0)

0000004c <loop_start>:
  4c:	00100793          	li	a5,1
  50:	fcf40ba3          	sb	a5,-41(s0)
  54:	fd744703          	lbu	a4,-41(s0)
  58:	0ff00793          	li	a5,255
  5c:	06f70263          	beq	a4,a5,c0 <loop_end>
  60:	fe842683          	lw	a3,-24(s0)
  64:	fec42703          	lw	a4,-20(s0)
  68:	fe042583          	lw	a1,-32(s0)
  6c:	fe442603          	lw	a2,-28(s0)
  70:	00b687b3          	add	a5,a3,a1
  74:	00078513          	mv	a0,a5
  78:	00d53533          	sltu	a0,a0,a3
  7c:	00c70833          	add	a6,a4,a2
  80:	01050733          	add	a4,a0,a6
  84:	00070813          	mv	a6,a4
  88:	fcf42c23          	sw	a5,-40(s0)
  8c:	fd042e23          	sw	a6,-36(s0)
  90:	fe842783          	lw	a5,-24(s0)
  94:	fec42803          	lw	a6,-20(s0)
  98:	fef42023          	sw	a5,-32(s0)
  9c:	ff042223          	sw	a6,-28(s0)
  a0:	fd842783          	lw	a5,-40(s0)
  a4:	fdc42803          	lw	a6,-36(s0)
  a8:	fef42423          	sw	a5,-24(s0)
  ac:	ff042623          	sw	a6,-20(s0)
  b0:	fd744783          	lbu	a5,-41(s0)
  b4:	00178793          	addi	a5,a5,1
  b8:	fcf40ba3          	sb	a5,-41(s0)
  bc:	f99ff06f          	j	54 <loop_start+0x8>

000000c0 <loop_end>:
  c0:	02f00793          	li	a5,47
  c4:	fcf42823          	sw	a5,-48(s0)
  c8:	fd842783          	lw	a5,-40(s0)
  cc:	00078513          	mv	a0,a5
  d0:	02c12403          	lw	s0,44(sp)
  d4:	03010113          	addi	sp,sp,48
  d8:	00008067          	ret

Disassembly of section .eh_frame:

000000dc <.eh_frame>:
  dc:	0010                	0x10
  de:	0000                	unimp
  e0:	0000                	unimp
  e2:	0000                	unimp
  e4:	7a01                	lui	s4,0xfffe0
  e6:	0052                	c.slli	zero,0x14
  e8:	7c01                	lui	s8,0xfffe0
  ea:	0101                	addi	sp,sp,0
  ec:	00020d1b          	0x20d1b
  f0:	0010                	0x10
  f2:	0000                	unimp
  f4:	0018                	0x18
  f6:	0000                	unimp
  f8:	ff08                	fsw	fa0,56(a4)
  fa:	ffff                	0xffff
  fc:	0014                	0x14
  fe:	0000                	unimp
 100:	0000                	unimp
 102:	0000                	unimp
 104:	0020                	addi	s0,sp,8
 106:	0000                	unimp
 108:	002c                	addi	a1,sp,8
 10a:	0000                	unimp
 10c:	ff08                	fsw	fa0,56(a4)
 10e:	ffff                	0xffff
 110:	00c8                	addi	a0,sp,68
 112:	0000                	unimp
 114:	4400                	lw	s0,8(s0)
 116:	300e                	fld	ft0,224(sp)
 118:	8844                	0x8844
 11a:	4401                	li	s0,0
 11c:	080c                	addi	a1,sp,16
 11e:	0200                	addi	s0,sp,256
 120:	c8b4                	sw	a3,80(s1)
 122:	0d44                	addi	s1,sp,660
 124:	0002                	c.slli64	zero
	...

Disassembly of section .stack:

00000000 <_stack_start>:
	...

Disassembly of section .heap:

00000400 <_heap_start>:
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
