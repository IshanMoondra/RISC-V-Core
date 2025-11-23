
/mnt/e/WSL/git_clones/Programs/jal_debug.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	0017f197          	auipc	gp,0x17f
  10:	ff418193          	addi	gp,gp,-12 # 17f000 <_global_pointer>
  14:	00c000ef          	jal	ra,20 <main>
  18:	ffff                	0xffff
  1a:	ffff                	0xffff
  1c:	00000013          	nop

00000020 <main>:
  20:	fe010113          	addi	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	addi	s0,sp,32
  30:	3e800513          	li	a0,1000
  34:	054000ef          	jal	ra,88 <_Z9uart_initi>
  38:	00000013          	nop
  3c:	002017b7          	lui	a5,0x201
  40:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
  44:	0007c783          	lbu	a5,0(a5)
  48:	fef407a3          	sb	a5,-17(s0)
  4c:	00000013          	nop
  50:	fef44783          	lbu	a5,-17(s0)
  54:	00078513          	mv	a0,a5
  58:	0c0000ef          	jal	ra,118 <_Z9uart_putcc>
  5c:	00000013          	nop
  60:	00a00513          	li	a0,10
  64:	134000ef          	jal	ra,198 <_Z14fibonacci_iteri>
  68:	fea42423          	sw	a0,-24(s0)
  6c:	00000013          	nop
  70:	00000793          	li	a5,0
  74:	00078513          	mv	a0,a5
  78:	01c12083          	lw	ra,28(sp)
  7c:	01812403          	lw	s0,24(sp)
  80:	02010113          	addi	sp,sp,32
  84:	00008067          	ret

00000088 <_Z9uart_initi>:
  88:	fe010113          	addi	sp,sp,-32
  8c:	00812e23          	sw	s0,28(sp)
  90:	02010413          	addi	s0,sp,32
  94:	fea42623          	sw	a0,-20(s0)
  98:	002017b7          	lui	a5,0x201
  9c:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
  a0:	fec42703          	lw	a4,-20(s0)
  a4:	00e7a023          	sw	a4,0(a5)
  a8:	00000013          	nop
  ac:	01c12403          	lw	s0,28(sp)
  b0:	02010113          	addi	sp,sp,32
  b4:	00008067          	ret

000000b8 <_Z9uart_getcv>:
  b8:	fe010113          	addi	sp,sp,-32
  bc:	00812e23          	sw	s0,28(sp)
  c0:	02010413          	addi	s0,sp,32
  c4:	002017b7          	lui	a5,0x201
  c8:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
  cc:	0007c783          	lbu	a5,0(a5)
  d0:	fef407a3          	sb	a5,-17(s0)
  d4:	fef44783          	lbu	a5,-17(s0)
  d8:	00078513          	mv	a0,a5
  dc:	01c12403          	lw	s0,28(sp)
  e0:	02010113          	addi	sp,sp,32
  e4:	00008067          	ret

000000e8 <_Z11uart_statusv>:
  e8:	fe010113          	addi	sp,sp,-32
  ec:	00812e23          	sw	s0,28(sp)
  f0:	02010413          	addi	s0,sp,32
  f4:	002017b7          	lui	a5,0x201
  f8:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
  fc:	0007c783          	lbu	a5,0(a5)
 100:	fef407a3          	sb	a5,-17(s0)
 104:	fef44783          	lbu	a5,-17(s0)
 108:	00078513          	mv	a0,a5
 10c:	01c12403          	lw	s0,28(sp)
 110:	02010113          	addi	sp,sp,32
 114:	00008067          	ret

00000118 <_Z9uart_putcc>:
 118:	fd010113          	addi	sp,sp,-48
 11c:	02812623          	sw	s0,44(sp)
 120:	03010413          	addi	s0,sp,48
 124:	00050793          	mv	a5,a0
 128:	fcf40fa3          	sb	a5,-33(s0)
 12c:	002017b7          	lui	a5,0x201
 130:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
 134:	0007a783          	lw	a5,0(a5)
 138:	fef42223          	sw	a5,-28(s0)
 13c:	002017b7          	lui	a5,0x201
 140:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
 144:	fdf44703          	lbu	a4,-33(s0)
 148:	00e78023          	sb	a4,0(a5)
 14c:	fe042623          	sw	zero,-20(s0)
 150:	fec42783          	lw	a5,-20(s0)
 154:	02f04a63          	bgtz	a5,188 <_Z9uart_putcc+0x70>
 158:	fe042423          	sw	zero,-24(s0)
 15c:	fe842703          	lw	a4,-24(s0)
 160:	fe442783          	lw	a5,-28(s0)
 164:	00f75a63          	bge	a4,a5,178 <_Z9uart_putcc+0x60>
 168:	fe842783          	lw	a5,-24(s0)
 16c:	00178793          	addi	a5,a5,1
 170:	fef42423          	sw	a5,-24(s0)
 174:	fe9ff06f          	j	15c <_Z9uart_putcc+0x44>
 178:	fec42783          	lw	a5,-20(s0)
 17c:	00178793          	addi	a5,a5,1
 180:	fef42623          	sw	a5,-20(s0)
 184:	fcdff06f          	j	150 <_Z9uart_putcc+0x38>
 188:	00000013          	nop
 18c:	02c12403          	lw	s0,44(sp)
 190:	03010113          	addi	sp,sp,48
 194:	00008067          	ret

00000198 <_Z14fibonacci_iteri>:
 198:	fc010113          	addi	sp,sp,-64
 19c:	02812e23          	sw	s0,60(sp)
 1a0:	04010413          	addi	s0,sp,64
 1a4:	fca42623          	sw	a0,-52(s0)
 1a8:	fe042623          	sw	zero,-20(s0)
 1ac:	00100793          	li	a5,1
 1b0:	fef42423          	sw	a5,-24(s0)
 1b4:	fe042223          	sw	zero,-28(s0)
 1b8:	fe042023          	sw	zero,-32(s0)
 1bc:	fcc42703          	lw	a4,-52(s0)
 1c0:	02e00793          	li	a5,46
 1c4:	00e7d863          	bge	a5,a4,1d4 <_Z14fibonacci_iteri+0x3c>
 1c8:	02e00793          	li	a5,46
 1cc:	fef42023          	sw	a5,-32(s0)
 1d0:	00c0006f          	j	1dc <_Z14fibonacci_iteri+0x44>
 1d4:	fcc42783          	lw	a5,-52(s0)
 1d8:	fef42023          	sw	a5,-32(s0)
 1dc:	00100793          	li	a5,1
 1e0:	fcf42e23          	sw	a5,-36(s0)
 1e4:	fdc42703          	lw	a4,-36(s0)
 1e8:	fe042783          	lw	a5,-32(s0)
 1ec:	02f75a63          	bge	a4,a5,220 <_Z14fibonacci_iteri+0x88>
 1f0:	fec42703          	lw	a4,-20(s0)
 1f4:	fe842783          	lw	a5,-24(s0)
 1f8:	00f707b3          	add	a5,a4,a5
 1fc:	fef42223          	sw	a5,-28(s0)
 200:	fe842783          	lw	a5,-24(s0)
 204:	fef42623          	sw	a5,-20(s0)
 208:	fe442783          	lw	a5,-28(s0)
 20c:	fef42423          	sw	a5,-24(s0)
 210:	fdc42783          	lw	a5,-36(s0)
 214:	00178793          	addi	a5,a5,1
 218:	fcf42e23          	sw	a5,-36(s0)
 21c:	fc9ff06f          	j	1e4 <_Z14fibonacci_iteri+0x4c>
 220:	fe442783          	lw	a5,-28(s0)
 224:	00078513          	mv	a0,a5
 228:	03c12403          	lw	s0,60(sp)
 22c:	04010113          	addi	sp,sp,64
 230:	00008067          	ret

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
 428:	0024                	addi	s1,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbf0                	fsw	fa2,116(a5)
 432:	ffff                	0xffff
 434:	0068                	addi	a0,sp,12
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	200e                	fld	ft0,192(sp)
 43c:	8148                	0x8148
 43e:	8801                	andi	s0,s0,0
 440:	4402                	lw	s0,0(sp)
 442:	080c                	addi	a1,sp,16
 444:	0200                	addi	s0,sp,256
 446:	c14c                	sw	a1,4(a0)
 448:	c844                	sw	s1,20(s0)
 44a:	0d44                	addi	s1,sp,660
 44c:	0002                	c.slli64	zero
 44e:	0000                	unimp
 450:	001c                	0x1c
 452:	0000                	unimp
 454:	0054                	addi	a3,sp,4
 456:	0000                	unimp
 458:	fc30                	fsw	fa2,120(s0)
 45a:	ffff                	0xffff
 45c:	0030                	addi	a2,sp,8
 45e:	0000                	unimp
 460:	4400                	lw	s0,8(s0)
 462:	200e                	fld	ft0,192(sp)
 464:	8844                	0x8844
 466:	4401                	li	s0,0
 468:	080c                	addi	a1,sp,16
 46a:	5c00                	lw	s0,56(s0)
 46c:	44c8                	lw	a0,12(s1)
 46e:	020d                	addi	tp,tp,3
 470:	001c                	0x1c
 472:	0000                	unimp
 474:	0074                	addi	a3,sp,12
 476:	0000                	unimp
 478:	fc40                	fsw	fs0,60(s0)
 47a:	ffff                	0xffff
 47c:	0030                	addi	a2,sp,8
 47e:	0000                	unimp
 480:	4400                	lw	s0,8(s0)
 482:	200e                	fld	ft0,192(sp)
 484:	8844                	0x8844
 486:	4401                	li	s0,0
 488:	080c                	addi	a1,sp,16
 48a:	5c00                	lw	s0,56(s0)
 48c:	44c8                	lw	a0,12(s1)
 48e:	020d                	addi	tp,tp,3
 490:	001c                	0x1c
 492:	0000                	unimp
 494:	0094                	addi	a3,sp,64
 496:	0000                	unimp
 498:	fc50                	fsw	fa2,60(s0)
 49a:	ffff                	0xffff
 49c:	0030                	addi	a2,sp,8
 49e:	0000                	unimp
 4a0:	4400                	lw	s0,8(s0)
 4a2:	200e                	fld	ft0,192(sp)
 4a4:	8844                	0x8844
 4a6:	4401                	li	s0,0
 4a8:	080c                	addi	a1,sp,16
 4aa:	5c00                	lw	s0,56(s0)
 4ac:	44c8                	lw	a0,12(s1)
 4ae:	020d                	addi	tp,tp,3
 4b0:	0020                	addi	s0,sp,8
 4b2:	0000                	unimp
 4b4:	00b4                	addi	a3,sp,72
 4b6:	0000                	unimp
 4b8:	fc60                	fsw	fs0,124(s0)
 4ba:	ffff                	0xffff
 4bc:	0080                	addi	s0,sp,64
 4be:	0000                	unimp
 4c0:	4400                	lw	s0,8(s0)
 4c2:	300e                	fld	ft0,224(sp)
 4c4:	8844                	0x8844
 4c6:	4401                	li	s0,0
 4c8:	080c                	addi	a1,sp,16
 4ca:	0200                	addi	s0,sp,256
 4cc:	c86c                	sw	a1,84(s0)
 4ce:	0d44                	addi	s1,sp,660
 4d0:	0002                	c.slli64	zero
 4d2:	0000                	unimp
 4d4:	0020                	addi	s0,sp,8
 4d6:	0000                	unimp
 4d8:	00d8                	addi	a4,sp,68
 4da:	0000                	unimp
 4dc:	fcbc                	fsw	fa5,120(s1)
 4de:	ffff                	0xffff
 4e0:	009c                	addi	a5,sp,64
 4e2:	0000                	unimp
 4e4:	4400                	lw	s0,8(s0)
 4e6:	400e                	0x400e
 4e8:	8844                	0x8844
 4ea:	4401                	li	s0,0
 4ec:	080c                	addi	a1,sp,16
 4ee:	0200                	addi	s0,sp,256
 4f0:	c888                	sw	a0,16(s1)
 4f2:	0d44                	addi	s1,sp,660
 4f4:	0002                	c.slli64	zero
	...

Disassembly of section .spi_compute:

00000800 <.spi_compute>:
	...

Disassembly of section .spi_uart:

00001000 <.spi_uart>:
	...

Disassembly of section .heap:

0017f000 <__bss_end>:
	...

Disassembly of section .comment:

00000000 <__stack_start-0x17f400>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
