
/mnt/e/WSL/git_clones/Programs/bare_bones_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	0017f117          	auipc	sp,0x17f
   4:	40010113          	addi	sp,sp,1024 # 17f400 <__bss_end>
   8:	20000193          	li	gp,512
   c:	00c000ef          	jal	ra,18 <main>
  10:	ffff                	0xffff
  12:	ffff                	0xffff
  14:	00000013          	nop

00000018 <main>:
  18:	fd010113          	addi	sp,sp,-48
  1c:	02812623          	sw	s0,44(sp)
  20:	03010413          	addi	s0,sp,48
  24:	00100793          	li	a5,1
  28:	00000813          	li	a6,0
  2c:	fef42423          	sw	a5,-24(s0)
  30:	ff042623          	sw	a6,-20(s0)
  34:	00000793          	li	a5,0
  38:	00000813          	li	a6,0
  3c:	fef42023          	sw	a5,-32(s0)
  40:	ff042223          	sw	a6,-28(s0)
  44:	fcf42c23          	sw	a5,-40(s0)
  48:	fd042e23          	sw	a6,-36(s0)
  4c:	fc040ba3          	sb	zero,-41(s0)

00000050 <loop_start>:
  50:	00100793          	li	a5,1
  54:	fcf40ba3          	sb	a5,-41(s0)
  58:	fd744703          	lbu	a4,-41(s0)
  5c:	0ff00793          	li	a5,255
  60:	06f70263          	beq	a4,a5,c4 <loop_end>
  64:	fe842683          	lw	a3,-24(s0)
  68:	fec42703          	lw	a4,-20(s0)
  6c:	fe042583          	lw	a1,-32(s0)
  70:	fe442603          	lw	a2,-28(s0)
  74:	00b687b3          	add	a5,a3,a1
  78:	00078513          	mv	a0,a5
  7c:	00d53533          	sltu	a0,a0,a3
  80:	00c70833          	add	a6,a4,a2
  84:	01050733          	add	a4,a0,a6
  88:	00070813          	mv	a6,a4
  8c:	fcf42c23          	sw	a5,-40(s0)
  90:	fd042e23          	sw	a6,-36(s0)
  94:	fe842783          	lw	a5,-24(s0)
  98:	fec42803          	lw	a6,-20(s0)
  9c:	fef42023          	sw	a5,-32(s0)
  a0:	ff042223          	sw	a6,-28(s0)
  a4:	fd842783          	lw	a5,-40(s0)
  a8:	fdc42803          	lw	a6,-36(s0)
  ac:	fef42423          	sw	a5,-24(s0)
  b0:	ff042623          	sw	a6,-20(s0)
  b4:	fd744783          	lbu	a5,-41(s0)
  b8:	00178793          	addi	a5,a5,1
  bc:	fcf40ba3          	sb	a5,-41(s0)
  c0:	f99ff06f          	j	58 <loop_start+0x8>

000000c4 <loop_end>:
  c4:	02f00793          	li	a5,47
  c8:	fcf42823          	sw	a5,-48(s0)
  cc:	fd842783          	lw	a5,-40(s0)
  d0:	00078513          	mv	a0,a5
  d4:	02c12403          	lw	s0,44(sp)
  d8:	03010113          	addi	sp,sp,48
  dc:	00008067          	ret

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
 420:	0018                	0x18
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0020                	addi	s0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbe8                	fsw	fa0,116(a5)
 432:	ffff                	0xffff
 434:	00c8                	addi	a0,sp,68
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	0200                	addi	s0,sp,256
 444:	c8b4                	sw	a3,80(s1)
 446:	0d44                	addi	s1,sp,660
 448:	0002                	c.slli64	zero
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
