
/mnt/e/WSL/git_clones/Programs/demo_v1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	002007b7          	lui	a5,0x200
   4:	41078793          	addi	a5,a5,1040 # 200410 <SET_DIS_I_CACHE>
   8:	0007a023          	sw	zero,0(a5)
   c:	00000013          	nop
  10:	00180117          	auipc	sp,0x180
  14:	ff010113          	addi	sp,sp,-16 # 180000 <_end>
  18:	0017e197          	auipc	gp,0x17e
  1c:	fe818193          	addi	gp,gp,-24 # 17e000 <_global_pointer>
  20:	00c000ef          	jal	ra,2c <main>
  24:	ffff                	0xffff
  26:	ffff                	0xffff
  28:	00000013          	nop

0000002c <main>:
  2c:	fd010113          	addi	sp,sp,-48
  30:	02112623          	sw	ra,44(sp)
  34:	02812423          	sw	s0,40(sp)
  38:	03010413          	addi	s0,sp,48
  3c:	00200793          	li	a5,2
  40:	fef42623          	sw	a5,-20(s0)
  44:	00100793          	li	a5,1
  48:	fef42423          	sw	a5,-24(s0)
  4c:	0ff00793          	li	a5,255
  50:	fef42223          	sw	a5,-28(s0)
  54:	fe0401a3          	sb	zero,-29(s0)
  58:	fe040123          	sb	zero,-30(s0)
  5c:	fc042e23          	sw	zero,-36(s0)
  60:	fc042c23          	sw	zero,-40(s0)
  64:	3e800513          	li	a0,1000
  68:	0c0000ef          	jal	ra,128 <_Z9uart_initi>
  6c:	00000013          	nop
  70:	03e00513          	li	a0,62
  74:	14c000ef          	jal	ra,1c0 <_Z9uart_putcc>
  78:	00000013          	nop
  7c:	03f00513          	li	a0,63
  80:	140000ef          	jal	ra,1c0 <_Z9uart_putcc>
  84:	00000013          	nop
  88:	00a00513          	li	a0,10
  8c:	134000ef          	jal	ra,1c0 <_Z9uart_putcc>
  90:	00000013          	nop
  94:	0f8000ef          	jal	ra,18c <_Z11uart_statusv>
  98:	00050793          	mv	a5,a0
  9c:	fef401a3          	sb	a5,-29(s0)
  a0:	00000013          	nop
  a4:	0b4000ef          	jal	ra,158 <_Z9uart_getcv>
  a8:	00050793          	mv	a5,a0
  ac:	fef40123          	sb	a5,-30(s0)
  b0:	00000013          	nop
  b4:	00a00513          	li	a0,10
  b8:	188000ef          	jal	ra,240 <_Z8fib_iteri>
  bc:	fca42e23          	sw	a0,-36(s0)
  c0:	00000013          	nop
  c4:	00a00513          	li	a0,10
  c8:	214000ef          	jal	ra,2dc <_Z13fib_recursivei>
  cc:	00050793          	mv	a5,a0
  d0:	fcf42c23          	sw	a5,-40(s0)
  d4:	04400513          	li	a0,68
  d8:	0e8000ef          	jal	ra,1c0 <_Z9uart_putcc>
  dc:	00000013          	nop
  e0:	fe244783          	lbu	a5,-30(s0)
  e4:	00078513          	mv	a0,a5
  e8:	0d8000ef          	jal	ra,1c0 <_Z9uart_putcc>
  ec:	00000013          	nop
  f0:	fdc42703          	lw	a4,-36(s0)
  f4:	fd842783          	lw	a5,-40(s0)
  f8:	00f71863          	bne	a4,a5,108 <main+0xdc>
  fc:	fec42783          	lw	a5,-20(s0)
 100:	fef42223          	sw	a5,-28(s0)
 104:	00c0006f          	j	110 <main+0xe4>
 108:	fe842783          	lw	a5,-24(s0)
 10c:	fef42223          	sw	a5,-28(s0)
 110:	00000793          	li	a5,0
 114:	00078513          	mv	a0,a5
 118:	02c12083          	lw	ra,44(sp)
 11c:	02812403          	lw	s0,40(sp)
 120:	03010113          	addi	sp,sp,48
 124:	00008067          	ret

00000128 <_Z9uart_initi>:
 128:	fe010113          	addi	sp,sp,-32
 12c:	00812e23          	sw	s0,28(sp)
 130:	02010413          	addi	s0,sp,32
 134:	fea42623          	sw	a0,-20(s0)
 138:	002017b7          	lui	a5,0x201
 13c:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
 140:	fec42703          	lw	a4,-20(s0)
 144:	00e7a023          	sw	a4,0(a5)
 148:	00000013          	nop
 14c:	01c12403          	lw	s0,28(sp)
 150:	02010113          	addi	sp,sp,32
 154:	00008067          	ret

00000158 <_Z9uart_getcv>:
 158:	fe010113          	addi	sp,sp,-32
 15c:	00812e23          	sw	s0,28(sp)
 160:	02010413          	addi	s0,sp,32
 164:	00000013          	nop
 168:	002017b7          	lui	a5,0x201
 16c:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
 170:	0007c783          	lbu	a5,0(a5)
 174:	fef407a3          	sb	a5,-17(s0)
 178:	fef44783          	lbu	a5,-17(s0)
 17c:	00078513          	mv	a0,a5
 180:	01c12403          	lw	s0,28(sp)
 184:	02010113          	addi	sp,sp,32
 188:	00008067          	ret

0000018c <_Z11uart_statusv>:
 18c:	fe010113          	addi	sp,sp,-32
 190:	00812e23          	sw	s0,28(sp)
 194:	02010413          	addi	s0,sp,32
 198:	00000013          	nop
 19c:	002017b7          	lui	a5,0x201
 1a0:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
 1a4:	0007c783          	lbu	a5,0(a5)
 1a8:	fef407a3          	sb	a5,-17(s0)
 1ac:	fef44783          	lbu	a5,-17(s0)
 1b0:	00078513          	mv	a0,a5
 1b4:	01c12403          	lw	s0,28(sp)
 1b8:	02010113          	addi	sp,sp,32
 1bc:	00008067          	ret

000001c0 <_Z9uart_putcc>:
 1c0:	fd010113          	addi	sp,sp,-48
 1c4:	02812623          	sw	s0,44(sp)
 1c8:	03010413          	addi	s0,sp,48
 1cc:	00050793          	mv	a5,a0
 1d0:	fcf40fa3          	sb	a5,-33(s0)
 1d4:	002017b7          	lui	a5,0x201
 1d8:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
 1dc:	0007a783          	lw	a5,0(a5)
 1e0:	fef42223          	sw	a5,-28(s0)
 1e4:	002017b7          	lui	a5,0x201
 1e8:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
 1ec:	fdf44703          	lbu	a4,-33(s0)
 1f0:	00e78023          	sb	a4,0(a5)
 1f4:	fe042623          	sw	zero,-20(s0)
 1f8:	fec42783          	lw	a5,-20(s0)
 1fc:	02f04a63          	bgtz	a5,230 <_Z9uart_putcc+0x70>
 200:	fe042423          	sw	zero,-24(s0)
 204:	fe842703          	lw	a4,-24(s0)
 208:	fe442783          	lw	a5,-28(s0)
 20c:	00f75a63          	bge	a4,a5,220 <_Z9uart_putcc+0x60>
 210:	fe842783          	lw	a5,-24(s0)
 214:	00178793          	addi	a5,a5,1
 218:	fef42423          	sw	a5,-24(s0)
 21c:	fe9ff06f          	j	204 <_Z9uart_putcc+0x44>
 220:	fec42783          	lw	a5,-20(s0)
 224:	00178793          	addi	a5,a5,1
 228:	fef42623          	sw	a5,-20(s0)
 22c:	fcdff06f          	j	1f8 <_Z9uart_putcc+0x38>
 230:	00000013          	nop
 234:	02c12403          	lw	s0,44(sp)
 238:	03010113          	addi	sp,sp,48
 23c:	00008067          	ret

00000240 <_Z8fib_iteri>:
 240:	fc010113          	addi	sp,sp,-64
 244:	02812e23          	sw	s0,60(sp)
 248:	04010413          	addi	s0,sp,64
 24c:	fca42623          	sw	a0,-52(s0)
 250:	00100793          	li	a5,1
 254:	fef42623          	sw	a5,-20(s0)
 258:	fe042423          	sw	zero,-24(s0)
 25c:	fe042223          	sw	zero,-28(s0)
 260:	fe042023          	sw	zero,-32(s0)
 264:	fcc42703          	lw	a4,-52(s0)
 268:	02f00793          	li	a5,47
 26c:	00e7d863          	bge	a5,a4,27c <_Z8fib_iteri+0x3c>
 270:	02f00793          	li	a5,47
 274:	fef42023          	sw	a5,-32(s0)
 278:	00c0006f          	j	284 <_Z8fib_iteri+0x44>
 27c:	fcc42783          	lw	a5,-52(s0)
 280:	fef42023          	sw	a5,-32(s0)
 284:	00100793          	li	a5,1
 288:	fcf42e23          	sw	a5,-36(s0)
 28c:	fdc42703          	lw	a4,-36(s0)
 290:	fe042783          	lw	a5,-32(s0)
 294:	02f75a63          	bge	a4,a5,2c8 <_Z8fib_iteri+0x88>
 298:	fec42703          	lw	a4,-20(s0)
 29c:	fe842783          	lw	a5,-24(s0)
 2a0:	00f707b3          	add	a5,a4,a5
 2a4:	fef42223          	sw	a5,-28(s0)
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	fef42423          	sw	a5,-24(s0)
 2b0:	fe442783          	lw	a5,-28(s0)
 2b4:	fef42623          	sw	a5,-20(s0)
 2b8:	fdc42783          	lw	a5,-36(s0)
 2bc:	00178793          	addi	a5,a5,1
 2c0:	fcf42e23          	sw	a5,-36(s0)
 2c4:	fc9ff06f          	j	28c <_Z8fib_iteri+0x4c>
 2c8:	fe442783          	lw	a5,-28(s0)
 2cc:	00078513          	mv	a0,a5
 2d0:	03c12403          	lw	s0,60(sp)
 2d4:	04010113          	addi	sp,sp,64
 2d8:	00008067          	ret

000002dc <_Z13fib_recursivei>:
 2dc:	fe010113          	addi	sp,sp,-32
 2e0:	00112e23          	sw	ra,28(sp)
 2e4:	00812c23          	sw	s0,24(sp)
 2e8:	00912a23          	sw	s1,20(sp)
 2ec:	02010413          	addi	s0,sp,32
 2f0:	fea42623          	sw	a0,-20(s0)
 2f4:	fec42703          	lw	a4,-20(s0)
 2f8:	00100793          	li	a5,1
 2fc:	00e7c663          	blt	a5,a4,308 <_Z13fib_recursivei+0x2c>
 300:	fec42783          	lw	a5,-20(s0)
 304:	0300006f          	j	334 <_Z13fib_recursivei+0x58>
 308:	fec42783          	lw	a5,-20(s0)
 30c:	fff78793          	addi	a5,a5,-1
 310:	00078513          	mv	a0,a5
 314:	fc9ff0ef          	jal	ra,2dc <_Z13fib_recursivei>
 318:	00050493          	mv	s1,a0
 31c:	fec42783          	lw	a5,-20(s0)
 320:	ffe78793          	addi	a5,a5,-2
 324:	00078513          	mv	a0,a5
 328:	fb5ff0ef          	jal	ra,2dc <_Z13fib_recursivei>
 32c:	00050793          	mv	a5,a0
 330:	00f487b3          	add	a5,s1,a5
 334:	00078513          	mv	a0,a5
 338:	01c12083          	lw	ra,28(sp)
 33c:	01812403          	lw	s0,24(sp)
 340:	01412483          	lw	s1,20(sp)
 344:	02010113          	addi	sp,sp,32
 348:	00008067          	ret

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
 420:	002c                	addi	a1,sp,8
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0024                	addi	s1,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fbfc                	fsw	fa5,116(a5)
 432:	ffff                	0xffff
 434:	00fc                	addi	a5,sp,76
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8148                	0x8148
 43e:	8801                	andi	s0,s0,0
 440:	4402                	lw	s0,0(sp)
 442:	080c                	addi	a1,sp,16
 444:	0300                	addi	s0,sp,384
 446:	00e0                	addi	s0,sp,76
 448:	44c1                	li	s1,16
 44a:	44c8                	lw	a0,12(s1)
 44c:	020d                	addi	tp,tp,3
 44e:	0000                	unimp
 450:	001c                	0x1c
 452:	0000                	unimp
 454:	0054                	addi	a3,sp,4
 456:	0000                	unimp
 458:	fcd0                	fsw	fa2,60(s1)
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
 478:	fce0                	fsw	fs0,124(s1)
 47a:	ffff                	0xffff
 47c:	0034                	addi	a3,sp,8
 47e:	0000                	unimp
 480:	4400                	lw	s0,8(s0)
 482:	200e                	fld	ft0,192(sp)
 484:	8844                	0x8844
 486:	4401                	li	s0,0
 488:	080c                	addi	a1,sp,16
 48a:	6000                	flw	fs0,0(s0)
 48c:	44c8                	lw	a0,12(s1)
 48e:	020d                	addi	tp,tp,3
 490:	001c                	0x1c
 492:	0000                	unimp
 494:	0094                	addi	a3,sp,64
 496:	0000                	unimp
 498:	fcf4                	fsw	fa3,124(s1)
 49a:	ffff                	0xffff
 49c:	0034                	addi	a3,sp,8
 49e:	0000                	unimp
 4a0:	4400                	lw	s0,8(s0)
 4a2:	200e                	fld	ft0,192(sp)
 4a4:	8844                	0x8844
 4a6:	4401                	li	s0,0
 4a8:	080c                	addi	a1,sp,16
 4aa:	6000                	flw	fs0,0(s0)
 4ac:	44c8                	lw	a0,12(s1)
 4ae:	020d                	addi	tp,tp,3
 4b0:	0020                	addi	s0,sp,8
 4b2:	0000                	unimp
 4b4:	00b4                	addi	a3,sp,72
 4b6:	0000                	unimp
 4b8:	fd08                	fsw	fa0,56(a0)
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
 4dc:	fd64                	fsw	fs1,124(a0)
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
 4f6:	0000                	unimp
 4f8:	0028                	addi	a0,sp,8
 4fa:	0000                	unimp
 4fc:	00fc                	addi	a5,sp,76
 4fe:	0000                	unimp
 500:	fddc                	fsw	fa5,60(a1)
 502:	ffff                	0xffff
 504:	0070                	addi	a2,sp,12
 506:	0000                	unimp
 508:	4400                	lw	s0,8(s0)
 50a:	200e                	fld	ft0,192(sp)
 50c:	814c                	0x814c
 50e:	8801                	andi	s0,s0,0
 510:	8902                	jr	s2
 512:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce1880>
 516:	0200                	addi	s0,sp,256
 518:	c14c                	sw	a1,4(a0)
 51a:	c844                	sw	s1,20(s0)
 51c:	c944                	sw	s1,20(a0)
 51e:	0d44                	addi	s1,sp,660
 520:	0002                	c.slli64	zero
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
