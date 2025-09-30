
/mnt/e/WSL/git_clones/Programs/uart_test.elf:     file format elf32-littleriscv


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
  20:	02112623          	sw	ra,44(sp)
  24:	02812423          	sw	s0,40(sp)
  28:	03010413          	addi	s0,sp,48
  2c:	3e800513          	li	a0,1000
  30:	060000ef          	jal	ra,90 <_Z9uart_initi>
  34:	01900793          	li	a5,25
  38:	fef42623          	sw	a5,-20(s0)
  3c:	00400793          	li	a5,4
  40:	fef42423          	sw	a5,-24(s0)
  44:	fe842783          	lw	a5,-24(s0)
  48:	fec42703          	lw	a4,-20(s0)
  4c:	00f717b3          	sll	a5,a4,a5
  50:	fef42223          	sw	a5,-28(s0)
  54:	05000513          	li	a0,80
  58:	090000ef          	jal	ra,e8 <_Z13uart_sendcharc>
  5c:	064000ef          	jal	ra,c0 <_Z11uart_statusv>
  60:	fea42023          	sw	a0,-32(s0)
  64:	00000013          	nop
  68:	100000ef          	jal	ra,168 <_Z12uart_getcharv>
  6c:	00050793          	mv	a5,a0
  70:	fcf40fa3          	sb	a5,-33(s0)
  74:	00000013          	nop
  78:	00000793          	li	a5,0
  7c:	00078513          	mv	a0,a5
  80:	02c12083          	lw	ra,44(sp)
  84:	02812403          	lw	s0,40(sp)
  88:	03010113          	addi	sp,sp,48
  8c:	00008067          	ret

00000090 <_Z9uart_initi>:
  90:	fe010113          	addi	sp,sp,-32
  94:	00812e23          	sw	s0,28(sp)
  98:	02010413          	addi	s0,sp,32
  9c:	fea42623          	sw	a0,-20(s0)
  a0:	002017b7          	lui	a5,0x201
  a4:	80078793          	addi	a5,a5,-2048 # 200800 <UART_RATE>
  a8:	fec42703          	lw	a4,-20(s0)
  ac:	00e7a023          	sw	a4,0(a5)
  b0:	00000013          	nop
  b4:	01c12403          	lw	s0,28(sp)
  b8:	02010113          	addi	sp,sp,32
  bc:	00008067          	ret

000000c0 <_Z11uart_statusv>:
  c0:	ff010113          	addi	sp,sp,-16
  c4:	00812623          	sw	s0,12(sp)
  c8:	01010413          	addi	s0,sp,16
  cc:	002017b7          	lui	a5,0x201
  d0:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
  d4:	0007a783          	lw	a5,0(a5)
  d8:	00078513          	mv	a0,a5
  dc:	00c12403          	lw	s0,12(sp)
  e0:	01010113          	addi	sp,sp,16
  e4:	00008067          	ret

000000e8 <_Z13uart_sendcharc>:
  e8:	fd010113          	addi	sp,sp,-48
  ec:	02812623          	sw	s0,44(sp)
  f0:	03010413          	addi	s0,sp,48
  f4:	00050793          	mv	a5,a0
  f8:	fcf40fa3          	sb	a5,-33(s0)
  fc:	002017b7          	lui	a5,0x201
 100:	80078793          	addi	a5,a5,-2048 # 200800 <UART_RATE>
 104:	0007a783          	lw	a5,0(a5)
 108:	fef42223          	sw	a5,-28(s0)
 10c:	002017b7          	lui	a5,0x201
 110:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
 114:	fdf44703          	lbu	a4,-33(s0)
 118:	00e78023          	sb	a4,0(a5)
 11c:	fe042623          	sw	zero,-20(s0)
 120:	fec42783          	lw	a5,-20(s0)
 124:	02f04a63          	bgtz	a5,158 <_Z13uart_sendcharc+0x70>
 128:	fe042423          	sw	zero,-24(s0)
 12c:	fe842703          	lw	a4,-24(s0)
 130:	fe442783          	lw	a5,-28(s0)
 134:	00f75a63          	bge	a4,a5,148 <_Z13uart_sendcharc+0x60>
 138:	fe842783          	lw	a5,-24(s0)
 13c:	00178793          	addi	a5,a5,1
 140:	fef42423          	sw	a5,-24(s0)
 144:	fe9ff06f          	j	12c <_Z13uart_sendcharc+0x44>
 148:	fec42783          	lw	a5,-20(s0)
 14c:	00178793          	addi	a5,a5,1
 150:	fef42623          	sw	a5,-20(s0)
 154:	fcdff06f          	j	120 <_Z13uart_sendcharc+0x38>
 158:	00000013          	nop
 15c:	02c12403          	lw	s0,44(sp)
 160:	03010113          	addi	sp,sp,48
 164:	00008067          	ret

00000168 <_Z12uart_getcharv>:
 168:	fe010113          	addi	sp,sp,-32
 16c:	00812e23          	sw	s0,28(sp)
 170:	02010413          	addi	s0,sp,32
 174:	002017b7          	lui	a5,0x201
 178:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
 17c:	0007c783          	lbu	a5,0(a5)
 180:	fef407a3          	sb	a5,-17(s0)
 184:	fef44783          	lbu	a5,-17(s0)
 188:	00078513          	mv	a0,a5
 18c:	01c12403          	lw	s0,28(sp)
 190:	02010113          	addi	sp,sp,32
 194:	00008067          	ret

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
 428:	0024                	addi	s1,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbec                	fsw	fa1,116(a5)
 432:	ffff                	0xffff
 434:	0074                	addi	a3,sp,12
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8148                	0x8148
 43e:	8801                	andi	s0,s0,0
 440:	4402                	lw	s0,0(sp)
 442:	080c                	addi	a1,sp,16
 444:	0200                	addi	s0,sp,256
 446:	c158                	sw	a4,4(a0)
 448:	c844                	sw	s1,20(s0)
 44a:	0d44                	addi	s1,sp,660
 44c:	0002                	c.slli64	zero
 44e:	0000                	unimp
 450:	001c                	0x1c
 452:	0000                	unimp
 454:	0054                	addi	a3,sp,4
 456:	0000                	unimp
 458:	fc38                	fsw	fa4,120(s0)
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
 478:	fc48                	fsw	fa0,60(s0)
 47a:	ffff                	0xffff
 47c:	0028                	addi	a0,sp,8
 47e:	0000                	unimp
 480:	4400                	lw	s0,8(s0)
 482:	100e                	c.slli	zero,0x23
 484:	8844                	0x8844
 486:	4401                	li	s0,0
 488:	080c                	addi	a1,sp,16
 48a:	5400                	lw	s0,40(s0)
 48c:	44c8                	lw	a0,12(s1)
 48e:	020d                	addi	tp,tp,3
 490:	0020                	addi	s0,sp,8
 492:	0000                	unimp
 494:	0094                	addi	a3,sp,64
 496:	0000                	unimp
 498:	fc50                	fsw	fa2,60(s0)
 49a:	ffff                	0xffff
 49c:	0080                	addi	s0,sp,64
 49e:	0000                	unimp
 4a0:	4400                	lw	s0,8(s0)
 4a2:	300e                	fld	ft0,224(sp)
 4a4:	8844                	0x8844
 4a6:	4401                	li	s0,0
 4a8:	080c                	addi	a1,sp,16
 4aa:	0200                	addi	s0,sp,256
 4ac:	c86c                	sw	a1,84(s0)
 4ae:	0d44                	addi	s1,sp,660
 4b0:	0002                	c.slli64	zero
 4b2:	0000                	unimp
 4b4:	001c                	0x1c
 4b6:	0000                	unimp
 4b8:	00b8                	addi	a4,sp,72
 4ba:	0000                	unimp
 4bc:	fcac                	fsw	fa1,120(s1)
 4be:	ffff                	0xffff
 4c0:	0030                	addi	a2,sp,8
 4c2:	0000                	unimp
 4c4:	4400                	lw	s0,8(s0)
 4c6:	200e                	fld	ft0,192(sp)
 4c8:	8844                	0x8844
 4ca:	4401                	li	s0,0
 4cc:	080c                	addi	a1,sp,16
 4ce:	5c00                	lw	s0,56(s0)
 4d0:	44c8                	lw	a0,12(s1)
 4d2:	020d                	addi	tp,tp,3

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
