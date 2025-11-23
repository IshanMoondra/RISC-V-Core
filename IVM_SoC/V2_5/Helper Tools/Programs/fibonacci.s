
/mnt/e/WSL/git_clones/Programs/fibonacci.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	0017e197          	auipc	gp,0x17e
  10:	ff418193          	addi	gp,gp,-12 # 17e000 <_global_pointer>
  14:	00c000ef          	jal	ra,20 <main>
  18:	ffff                	0xffff
  1a:	ffff                	0xffff
  1c:	00000013          	nop

00000020 <main>:
  20:	fe010113          	addi	sp,sp,-32
  24:	00812e23          	sw	s0,28(sp)
  28:	02010413          	addi	s0,sp,32
  2c:	00100793          	li	a5,1
  30:	fef42623          	sw	a5,-20(s0)
  34:	fe042423          	sw	zero,-24(s0)
  38:	00100793          	li	a5,1
  3c:	fef403a3          	sb	a5,-25(s0)
  40:	fe744703          	lbu	a4,-25(s0)
  44:	00900793          	li	a5,9
  48:	02e7ea63          	bltu	a5,a4,7c <main+0x5c>
  4c:	fec42703          	lw	a4,-20(s0)
  50:	fe842783          	lw	a5,-24(s0)
  54:	00f707b3          	add	a5,a4,a5
  58:	fef42023          	sw	a5,-32(s0)
  5c:	fec42783          	lw	a5,-20(s0)
  60:	fef42423          	sw	a5,-24(s0)
  64:	fe042783          	lw	a5,-32(s0)
  68:	fef42623          	sw	a5,-20(s0)
  6c:	fe744783          	lbu	a5,-25(s0)
  70:	00178793          	addi	a5,a5,1
  74:	fef403a3          	sb	a5,-25(s0)
  78:	fc9ff06f          	j	40 <main+0x20>
  7c:	00000793          	li	a5,0
  80:	00078513          	mv	a0,a5
  84:	01c12403          	lw	s0,28(sp)
  88:	02010113          	addi	sp,sp,32
  8c:	00008067          	ret

Disassembly of section .eh_frame:

00000400 <.eh_frame>:
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
 420:	0020                	addi	s0,sp,8
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0020                	addi	s0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbf0                	fsw	fa2,116(a5)
 432:	ffff                	0xffff
 434:	0070                	addi	a2,sp,12
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	200e                	fld	ft0,192(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	0200                	addi	s0,sp,256
 444:	c85c                	sw	a5,20(s0)
 446:	0d44                	addi	s1,sp,660
 448:	0002                	c.slli64	zero
	...

Disassembly of section .spi_compute:

00000800 <.spi_compute>:
	...

Disassembly of section .spi_uart:

00001000 <.spi_uart>:
	...

Disassembly of section .heap:

0017e000 <__bss_end>:
	...

Disassembly of section .comment:

00000000 <__stack_start-0x17e800>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
