
/out/state_dump_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	090000ef          	jal	a4 <main>
  18:	ffffffff          	.word	0xffffffff
  1c:	00000013          	nop

00000020 <_Z10soc_bootupv>:
  20:	fe010113          	add	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	add	s0,sp,32
  30:	fe042623          	sw	zero,-20(s0)
  34:	0bebc7b7          	lui	a5,0xbebc
  38:	20078793          	add	a5,a5,512 # bebc200 <SET_GPIO_CHAN0+0xbcbadd0>
  3c:	fef42423          	sw	a5,-24(s0)
  40:	002017b7          	lui	a5,0x201
  44:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  48:	fec42703          	lw	a4,-20(s0)
  4c:	00e7a023          	sw	a4,0(a5)
  50:	002017b7          	lui	a5,0x201
  54:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  58:	fe842703          	lw	a4,-24(s0)
  5c:	00e7a023          	sw	a4,0(a5)
  60:	03200793          	li	a5,50
  64:	fef42223          	sw	a5,-28(s0)
  68:	002017b7          	lui	a5,0x201
  6c:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  70:	fe442703          	lw	a4,-28(s0)
  74:	00e7a023          	sw	a4,0(a5)
  78:	00a00513          	li	a0,10
  7c:	0ec000ef          	jal	168 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	0e0000ef          	jal	168 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	01c12083          	lw	ra,28(sp)
  98:	01812403          	lw	s0,24(sp)
  9c:	02010113          	add	sp,sp,32
  a0:	00008067          	ret

000000a4 <main>:
  a4:	fd010113          	add	sp,sp,-48
  a8:	02112623          	sw	ra,44(sp)
  ac:	02812423          	sw	s0,40(sp)
  b0:	03010413          	add	s0,sp,48
  b4:	f6dff0ef          	jal	20 <_Z10soc_bootupv>
  b8:	00000013          	nop
  bc:	002017b7          	lui	a5,0x201
  c0:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  c4:	0007a783          	lw	a5,0(a5)
  c8:	fef42623          	sw	a5,-20(s0)
  cc:	002017b7          	lui	a5,0x201
  d0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  d4:	0007a783          	lw	a5,0(a5)
  d8:	fef42423          	sw	a5,-24(s0)
  dc:	324000ef          	jal	400 <_Z18uart_poll_watchdogv>
  e0:	00000013          	nop
  e4:	002017b7          	lui	a5,0x201
  e8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  ec:	0007a783          	lw	a5,0(a5)
  f0:	fef42223          	sw	a5,-28(s0)
  f4:	002017b7          	lui	a5,0x201
  f8:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  fc:	0007a783          	lw	a5,0(a5)
 100:	fef42023          	sw	a5,-32(s0)
 104:	fe042703          	lw	a4,-32(s0)
 108:	fec42783          	lw	a5,-20(s0)
 10c:	40f707b3          	sub	a5,a4,a5
 110:	fcf42e23          	sw	a5,-36(s0)
 114:	fe442703          	lw	a4,-28(s0)
 118:	fe842783          	lw	a5,-24(s0)
 11c:	40f707b3          	sub	a5,a4,a5
 120:	fcf42c23          	sw	a5,-40(s0)
 124:	05200513          	li	a0,82
 128:	040000ef          	jal	168 <_Z9uart_putcc>
 12c:	00000013          	nop
 130:	fd842503          	lw	a0,-40(s0)
 134:	1c4000ef          	jal	2f8 <_Z11dump_resulti>
 138:	05900513          	li	a0,89
 13c:	02c000ef          	jal	168 <_Z9uart_putcc>
 140:	00000013          	nop
 144:	fdc42503          	lw	a0,-36(s0)
 148:	1b0000ef          	jal	2f8 <_Z11dump_resulti>
 14c:	00000013          	nop
 150:	00000793          	li	a5,0
 154:	00078513          	mv	a0,a5
 158:	02c12083          	lw	ra,44(sp)
 15c:	02812403          	lw	s0,40(sp)
 160:	03010113          	add	sp,sp,48
 164:	00008067          	ret

00000168 <_Z9uart_putcc>:
 168:	fd010113          	add	sp,sp,-48
 16c:	02812623          	sw	s0,44(sp)
 170:	03010413          	add	s0,sp,48
 174:	00050793          	mv	a5,a0
 178:	fcf40fa3          	sb	a5,-33(s0)
 17c:	002017b7          	lui	a5,0x201
 180:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 184:	0007a783          	lw	a5,0(a5)
 188:	fef42223          	sw	a5,-28(s0)
 18c:	002017b7          	lui	a5,0x201
 190:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
 194:	fdf44703          	lbu	a4,-33(s0)
 198:	00e78023          	sb	a4,0(a5)
 19c:	fe042623          	sw	zero,-20(s0)
 1a0:	0300006f          	j	1d0 <_Z9uart_putcc+0x68>
 1a4:	fe042423          	sw	zero,-24(s0)
 1a8:	0100006f          	j	1b8 <_Z9uart_putcc+0x50>
 1ac:	fe842783          	lw	a5,-24(s0)
 1b0:	00178793          	add	a5,a5,1
 1b4:	fef42423          	sw	a5,-24(s0)
 1b8:	fe842703          	lw	a4,-24(s0)
 1bc:	fe442783          	lw	a5,-28(s0)
 1c0:	fef746e3          	blt	a4,a5,1ac <_Z9uart_putcc+0x44>
 1c4:	fec42783          	lw	a5,-20(s0)
 1c8:	00178793          	add	a5,a5,1
 1cc:	fef42623          	sw	a5,-20(s0)
 1d0:	fec42783          	lw	a5,-20(s0)
 1d4:	fcf058e3          	blez	a5,1a4 <_Z9uart_putcc+0x3c>
 1d8:	00000013          	nop
 1dc:	00000013          	nop
 1e0:	02c12403          	lw	s0,44(sp)
 1e4:	03010113          	add	sp,sp,48
 1e8:	00008067          	ret

000001ec <_Z8fib_iteri>:
 1ec:	fc010113          	add	sp,sp,-64
 1f0:	02812e23          	sw	s0,60(sp)
 1f4:	04010413          	add	s0,sp,64
 1f8:	fca42623          	sw	a0,-52(s0)
 1fc:	00100793          	li	a5,1
 200:	fef42623          	sw	a5,-20(s0)
 204:	fe042423          	sw	zero,-24(s0)
 208:	fe042223          	sw	zero,-28(s0)
 20c:	fe042023          	sw	zero,-32(s0)
 210:	fcc42703          	lw	a4,-52(s0)
 214:	02e00793          	li	a5,46
 218:	00e7d863          	bge	a5,a4,228 <_Z8fib_iteri+0x3c>
 21c:	02e00793          	li	a5,46
 220:	fef42023          	sw	a5,-32(s0)
 224:	00c0006f          	j	230 <_Z8fib_iteri+0x44>
 228:	fcc42783          	lw	a5,-52(s0)
 22c:	fef42023          	sw	a5,-32(s0)
 230:	00100793          	li	a5,1
 234:	fcf42e23          	sw	a5,-36(s0)
 238:	0300006f          	j	268 <_Z8fib_iteri+0x7c>
 23c:	fec42703          	lw	a4,-20(s0)
 240:	fe842783          	lw	a5,-24(s0)
 244:	00f707b3          	add	a5,a4,a5
 248:	fef42223          	sw	a5,-28(s0)
 24c:	fec42783          	lw	a5,-20(s0)
 250:	fef42423          	sw	a5,-24(s0)
 254:	fe442783          	lw	a5,-28(s0)
 258:	fef42623          	sw	a5,-20(s0)
 25c:	fdc42783          	lw	a5,-36(s0)
 260:	00178793          	add	a5,a5,1
 264:	fcf42e23          	sw	a5,-36(s0)
 268:	fdc42703          	lw	a4,-36(s0)
 26c:	fe042783          	lw	a5,-32(s0)
 270:	fcf746e3          	blt	a4,a5,23c <_Z8fib_iteri+0x50>
 274:	fe442783          	lw	a5,-28(s0)
 278:	00078513          	mv	a0,a5
 27c:	03c12403          	lw	s0,60(sp)
 280:	04010113          	add	sp,sp,64
 284:	00008067          	ret

00000288 <_Z13fib_recursivei>:
 288:	fe010113          	add	sp,sp,-32
 28c:	00112e23          	sw	ra,28(sp)
 290:	00812c23          	sw	s0,24(sp)
 294:	00912a23          	sw	s1,20(sp)
 298:	02010413          	add	s0,sp,32
 29c:	fea42623          	sw	a0,-20(s0)
 2a0:	fec42703          	lw	a4,-20(s0)
 2a4:	00100793          	li	a5,1
 2a8:	00e7c663          	blt	a5,a4,2b4 <_Z13fib_recursivei+0x2c>
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	0300006f          	j	2e0 <_Z13fib_recursivei+0x58>
 2b4:	fec42783          	lw	a5,-20(s0)
 2b8:	fff78793          	add	a5,a5,-1
 2bc:	00078513          	mv	a0,a5
 2c0:	fc9ff0ef          	jal	288 <_Z13fib_recursivei>
 2c4:	00050493          	mv	s1,a0
 2c8:	fec42783          	lw	a5,-20(s0)
 2cc:	ffe78793          	add	a5,a5,-2
 2d0:	00078513          	mv	a0,a5
 2d4:	fb5ff0ef          	jal	288 <_Z13fib_recursivei>
 2d8:	00050793          	mv	a5,a0
 2dc:	00f487b3          	add	a5,s1,a5
 2e0:	00078513          	mv	a0,a5
 2e4:	01c12083          	lw	ra,28(sp)
 2e8:	01812403          	lw	s0,24(sp)
 2ec:	01412483          	lw	s1,20(sp)
 2f0:	02010113          	add	sp,sp,32
 2f4:	00008067          	ret

000002f8 <_Z11dump_resulti>:
 2f8:	fd010113          	add	sp,sp,-48
 2fc:	02112623          	sw	ra,44(sp)
 300:	02812423          	sw	s0,40(sp)
 304:	03010413          	add	s0,sp,48
 308:	fca42e23          	sw	a0,-36(s0)
 30c:	00100793          	li	a5,1
 310:	fef42623          	sw	a5,-20(s0)
 314:	fdc42783          	lw	a5,-36(s0)
 318:	0ff7f793          	zext.b	a5,a5
 31c:	fef40223          	sb	a5,-28(s0)
 320:	fdc42703          	lw	a4,-36(s0)
 324:	0ff00793          	li	a5,255
 328:	00e7de63          	bge	a5,a4,344 <_Z11dump_resulti+0x4c>
 32c:	fdc42783          	lw	a5,-36(s0)
 330:	4087d793          	sra	a5,a5,0x8
 334:	0ff7f793          	zext.b	a5,a5
 338:	fef402a3          	sb	a5,-27(s0)
 33c:	00200793          	li	a5,2
 340:	fef42623          	sw	a5,-20(s0)
 344:	fdc42703          	lw	a4,-36(s0)
 348:	000107b7          	lui	a5,0x10
 34c:	00f74e63          	blt	a4,a5,368 <_Z11dump_resulti+0x70>
 350:	fdc42783          	lw	a5,-36(s0)
 354:	4107d793          	sra	a5,a5,0x10
 358:	0ff7f793          	zext.b	a5,a5
 35c:	fef40323          	sb	a5,-26(s0)
 360:	00300793          	li	a5,3
 364:	fef42623          	sw	a5,-20(s0)
 368:	fdc42703          	lw	a4,-36(s0)
 36c:	010007b7          	lui	a5,0x1000
 370:	00f74e63          	blt	a4,a5,38c <_Z11dump_resulti+0x94>
 374:	fdc42783          	lw	a5,-36(s0)
 378:	0187d793          	srl	a5,a5,0x18
 37c:	0ff7f793          	zext.b	a5,a5
 380:	fef403a3          	sb	a5,-25(s0)
 384:	00400793          	li	a5,4
 388:	fef42623          	sw	a5,-20(s0)
 38c:	04400513          	li	a0,68
 390:	dd9ff0ef          	jal	168 <_Z9uart_putcc>
 394:	00000013          	nop
 398:	fec42783          	lw	a5,-20(s0)
 39c:	0ff7f793          	zext.b	a5,a5
 3a0:	00078513          	mv	a0,a5
 3a4:	dc5ff0ef          	jal	168 <_Z9uart_putcc>
 3a8:	00000013          	nop
 3ac:	fe042423          	sw	zero,-24(s0)
 3b0:	02c0006f          	j	3dc <_Z11dump_resulti+0xe4>
 3b4:	fe842783          	lw	a5,-24(s0)
 3b8:	ff078793          	add	a5,a5,-16 # fffff0 <SET_GPIO_CHAN0+0xdfebc0>
 3bc:	008787b3          	add	a5,a5,s0
 3c0:	ff47c783          	lbu	a5,-12(a5)
 3c4:	00078513          	mv	a0,a5
 3c8:	da1ff0ef          	jal	168 <_Z9uart_putcc>
 3cc:	00000013          	nop
 3d0:	fe842783          	lw	a5,-24(s0)
 3d4:	00178793          	add	a5,a5,1
 3d8:	fef42423          	sw	a5,-24(s0)
 3dc:	fe842703          	lw	a4,-24(s0)
 3e0:	fec42783          	lw	a5,-20(s0)
 3e4:	fcf748e3          	blt	a4,a5,3b4 <_Z11dump_resulti+0xbc>
 3e8:	00000013          	nop
 3ec:	00000013          	nop
 3f0:	02c12083          	lw	ra,44(sp)
 3f4:	02812403          	lw	s0,40(sp)
 3f8:	03010113          	add	sp,sp,48
 3fc:	00008067          	ret

00000400 <_Z18uart_poll_watchdogv>:
 400:	fe010113          	add	sp,sp,-32
 404:	00112e23          	sw	ra,28(sp)
 408:	00812c23          	sw	s0,24(sp)
 40c:	02010413          	add	s0,sp,32
 410:	fe042623          	sw	zero,-20(s0)
 414:	0680006f          	j	47c <_Z18uart_poll_watchdogv+0x7c>
 418:	002017b7          	lui	a5,0x201
 41c:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 420:	0007c783          	lbu	a5,0(a5)
 424:	fef405a3          	sb	a5,-21(s0)
 428:	feb44783          	lbu	a5,-21(s0)
 42c:	0047f793          	and	a5,a5,4
 430:	04078063          	beqz	a5,470 <_Z18uart_poll_watchdogv+0x70>
 434:	002017b7          	lui	a5,0x201
 438:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 43c:	0007c783          	lbu	a5,0(a5)
 440:	fef40523          	sb	a5,-22(s0)
 444:	fea44703          	lbu	a4,-22(s0)
 448:	05300793          	li	a5,83
 44c:	02f71263          	bne	a4,a5,470 <_Z18uart_poll_watchdogv+0x70>
 450:	05c000ef          	jal	4ac <_Z7computev>
 454:	00050793          	mv	a5,a0
 458:	fef404a3          	sb	a5,-23(s0)
 45c:	00000013          	nop
 460:	03200513          	li	a0,50
 464:	214000ef          	jal	678 <_Z9gpio_demoi>
 468:	00000013          	nop
 46c:	0300006f          	j	49c <_Z18uart_poll_watchdogv+0x9c>
 470:	fec42783          	lw	a5,-20(s0)
 474:	00178793          	add	a5,a5,1
 478:	fef42623          	sw	a5,-20(s0)
 47c:	fec42703          	lw	a4,-20(s0)
 480:	000027b7          	lui	a5,0x2
 484:	70f78793          	add	a5,a5,1807 # 270f <_Z9gpio_demoi+0x2097>
 488:	f8e7d8e3          	bge	a5,a4,418 <_Z18uart_poll_watchdogv+0x18>
 48c:	03f00513          	li	a0,63
 490:	cd9ff0ef          	jal	168 <_Z9uart_putcc>
 494:	00000013          	nop
 498:	00000013          	nop
 49c:	01c12083          	lw	ra,28(sp)
 4a0:	01812403          	lw	s0,24(sp)
 4a4:	02010113          	add	sp,sp,32
 4a8:	00008067          	ret

000004ac <_Z7computev>:
 4ac:	fc010113          	add	sp,sp,-64
 4b0:	02112e23          	sw	ra,60(sp)
 4b4:	02812c23          	sw	s0,56(sp)
 4b8:	04010413          	add	s0,sp,64
 4bc:	fe042423          	sw	zero,-24(s0)
 4c0:	fe042223          	sw	zero,-28(s0)
 4c4:	01400793          	li	a5,20
 4c8:	fef42023          	sw	a5,-32(s0)
 4cc:	fff00793          	li	a5,-1
 4d0:	fef407a3          	sb	a5,-17(s0)
 4d4:	002017b7          	lui	a5,0x201
 4d8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 4dc:	0007a783          	lw	a5,0(a5)
 4e0:	fcf42e23          	sw	a5,-36(s0)
 4e4:	002017b7          	lui	a5,0x201
 4e8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 4ec:	0007a783          	lw	a5,0(a5)
 4f0:	fcf42c23          	sw	a5,-40(s0)
 4f4:	fe042503          	lw	a0,-32(s0)
 4f8:	cf5ff0ef          	jal	1ec <_Z8fib_iteri>
 4fc:	fea42423          	sw	a0,-24(s0)
 500:	00000013          	nop
 504:	002017b7          	lui	a5,0x201
 508:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 50c:	0007a783          	lw	a5,0(a5)
 510:	fcf42a23          	sw	a5,-44(s0)
 514:	002017b7          	lui	a5,0x201
 518:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 51c:	0007a783          	lw	a5,0(a5)
 520:	fcf42823          	sw	a5,-48(s0)
 524:	fd042703          	lw	a4,-48(s0)
 528:	fdc42783          	lw	a5,-36(s0)
 52c:	40f707b3          	sub	a5,a4,a5
 530:	fcf42623          	sw	a5,-52(s0)
 534:	fd442703          	lw	a4,-44(s0)
 538:	fd842783          	lw	a5,-40(s0)
 53c:	40f707b3          	sub	a5,a4,a5
 540:	fcf42423          	sw	a5,-56(s0)
 544:	05900513          	li	a0,89
 548:	c21ff0ef          	jal	168 <_Z9uart_putcc>
 54c:	00000013          	nop
 550:	fcc42503          	lw	a0,-52(s0)
 554:	da5ff0ef          	jal	2f8 <_Z11dump_resulti>
 558:	00000013          	nop
 55c:	05200513          	li	a0,82
 560:	c09ff0ef          	jal	168 <_Z9uart_putcc>
 564:	00000013          	nop
 568:	fc842503          	lw	a0,-56(s0)
 56c:	d8dff0ef          	jal	2f8 <_Z11dump_resulti>
 570:	00000013          	nop
 574:	002017b7          	lui	a5,0x201
 578:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 57c:	0007a783          	lw	a5,0(a5)
 580:	fcf42e23          	sw	a5,-36(s0)
 584:	002017b7          	lui	a5,0x201
 588:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 58c:	0007a783          	lw	a5,0(a5)
 590:	fcf42c23          	sw	a5,-40(s0)
 594:	fe042503          	lw	a0,-32(s0)
 598:	cf1ff0ef          	jal	288 <_Z13fib_recursivei>
 59c:	00050793          	mv	a5,a0
 5a0:	fef42223          	sw	a5,-28(s0)
 5a4:	002017b7          	lui	a5,0x201
 5a8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 5ac:	0007a783          	lw	a5,0(a5)
 5b0:	fcf42a23          	sw	a5,-44(s0)
 5b4:	002017b7          	lui	a5,0x201
 5b8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 5bc:	0007a783          	lw	a5,0(a5)
 5c0:	fcf42823          	sw	a5,-48(s0)
 5c4:	fd042703          	lw	a4,-48(s0)
 5c8:	fdc42783          	lw	a5,-36(s0)
 5cc:	40f707b3          	sub	a5,a4,a5
 5d0:	fcf42623          	sw	a5,-52(s0)
 5d4:	fd442703          	lw	a4,-44(s0)
 5d8:	fd842783          	lw	a5,-40(s0)
 5dc:	40f707b3          	sub	a5,a4,a5
 5e0:	fcf42423          	sw	a5,-56(s0)
 5e4:	05900513          	li	a0,89
 5e8:	b81ff0ef          	jal	168 <_Z9uart_putcc>
 5ec:	00000013          	nop
 5f0:	fcc42503          	lw	a0,-52(s0)
 5f4:	d05ff0ef          	jal	2f8 <_Z11dump_resulti>
 5f8:	00000013          	nop
 5fc:	05200513          	li	a0,82
 600:	b69ff0ef          	jal	168 <_Z9uart_putcc>
 604:	00000013          	nop
 608:	fc842503          	lw	a0,-56(s0)
 60c:	cedff0ef          	jal	2f8 <_Z11dump_resulti>
 610:	fe842703          	lw	a4,-24(s0)
 614:	fe442783          	lw	a5,-28(s0)
 618:	00f71e63          	bne	a4,a5,634 <_Z7computev+0x188>
 61c:	00100793          	li	a5,1
 620:	fef407a3          	sb	a5,-17(s0)
 624:	05000513          	li	a0,80
 628:	b41ff0ef          	jal	168 <_Z9uart_putcc>
 62c:	00000013          	nop
 630:	0140006f          	j	644 <_Z7computev+0x198>
 634:	fe0407a3          	sb	zero,-17(s0)
 638:	04600513          	li	a0,70
 63c:	b2dff0ef          	jal	168 <_Z9uart_putcc>
 640:	00000013          	nop
 644:	00000013          	nop
 648:	fe842503          	lw	a0,-24(s0)
 64c:	cadff0ef          	jal	2f8 <_Z11dump_resulti>
 650:	00000013          	nop
 654:	04300513          	li	a0,67
 658:	b11ff0ef          	jal	168 <_Z9uart_putcc>
 65c:	00000013          	nop
 660:	fef44783          	lbu	a5,-17(s0)
 664:	00078513          	mv	a0,a5
 668:	03c12083          	lw	ra,60(sp)
 66c:	03812403          	lw	s0,56(sp)
 670:	04010113          	add	sp,sp,64
 674:	00008067          	ret

00000678 <_Z9gpio_demoi>:
 678:	fd010113          	add	sp,sp,-48
 67c:	02812623          	sw	s0,44(sp)
 680:	03010413          	add	s0,sp,48
 684:	fca42e23          	sw	a0,-36(s0)
 688:	fe0407a3          	sb	zero,-17(s0)
 68c:	0700006f          	j	6fc <_Z9gpio_demoi+0x84>
 690:	fe042423          	sw	zero,-24(s0)
 694:	002017b7          	lui	a5,0x201
 698:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 69c:	00c00713          	li	a4,12
 6a0:	00e7a023          	sw	a4,0(a5)
 6a4:	0100006f          	j	6b4 <_Z9gpio_demoi+0x3c>
 6a8:	fe842783          	lw	a5,-24(s0)
 6ac:	00178793          	add	a5,a5,1
 6b0:	fef42423          	sw	a5,-24(s0)
 6b4:	fe842703          	lw	a4,-24(s0)
 6b8:	fdc42783          	lw	a5,-36(s0)
 6bc:	fef746e3          	blt	a4,a5,6a8 <_Z9gpio_demoi+0x30>
 6c0:	fe042423          	sw	zero,-24(s0)
 6c4:	002017b7          	lui	a5,0x201
 6c8:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 6cc:	00d00713          	li	a4,13
 6d0:	00e7a023          	sw	a4,0(a5)
 6d4:	0100006f          	j	6e4 <_Z9gpio_demoi+0x6c>
 6d8:	fe842783          	lw	a5,-24(s0)
 6dc:	00178793          	add	a5,a5,1
 6e0:	fef42423          	sw	a5,-24(s0)
 6e4:	fe842703          	lw	a4,-24(s0)
 6e8:	fdc42783          	lw	a5,-36(s0)
 6ec:	fef746e3          	blt	a4,a5,6d8 <_Z9gpio_demoi+0x60>
 6f0:	fef44783          	lbu	a5,-17(s0)
 6f4:	00178793          	add	a5,a5,1
 6f8:	fef407a3          	sb	a5,-17(s0)
 6fc:	fef44703          	lbu	a4,-17(s0)
 700:	00f00793          	li	a5,15
 704:	f8e7f6e3          	bgeu	a5,a4,690 <_Z9gpio_demoi+0x18>
 708:	002017b7          	lui	a5,0x201
 70c:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 710:	0007a023          	sw	zero,0(a5)
 714:	002017b7          	lui	a5,0x201
 718:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
 71c:	0007a023          	sw	zero,0(a5)
 720:	00000013          	nop
 724:	02c12403          	lw	s0,44(sp)
 728:	03010113          	add	sp,sp,48
 72c:	00008067          	ret
