
/out/state_dump_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	add	sp,sp,-4 # 180000 <_end>
   c:	0017e197          	auipc	gp,0x17e
  10:	ff418193          	add	gp,gp,-12 # 17e000 <__bss_end>
  14:	094000ef          	jal	a8 <main>
  18:	ffffffff          	.word	0xffffffff
  1c:	00000013          	nop

00000020 <_Z10soc_bootupv>:
  20:	fe010113          	add	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	add	s0,sp,32
  30:	00100793          	li	a5,1
  34:	fef42623          	sw	a5,-20(s0)
  38:	02faf7b7          	lui	a5,0x2faf
  3c:	08078793          	add	a5,a5,128 # 2faf080 <__stack_end+0x2cb0880>
  40:	fef42423          	sw	a5,-24(s0)
  44:	002017b7          	lui	a5,0x201
  48:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  4c:	fec42703          	lw	a4,-20(s0)
  50:	00e7a023          	sw	a4,0(a5)
  54:	002017b7          	lui	a5,0x201
  58:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  5c:	fe842703          	lw	a4,-24(s0)
  60:	00e7a023          	sw	a4,0(a5)
  64:	03200793          	li	a5,50
  68:	fef42223          	sw	a5,-28(s0)
  6c:	002017b7          	lui	a5,0x201
  70:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  74:	fe442703          	lw	a4,-28(s0)
  78:	00e7a023          	sw	a4,0(a5)
  7c:	00a00513          	li	a0,10
  80:	0ec000ef          	jal	16c <_Z9uart_putcc>
  84:	00000013          	nop
  88:	03e00513          	li	a0,62
  8c:	0e0000ef          	jal	16c <_Z9uart_putcc>
  90:	00000013          	nop
  94:	00000013          	nop
  98:	01c12083          	lw	ra,28(sp)
  9c:	01812403          	lw	s0,24(sp)
  a0:	02010113          	add	sp,sp,32
  a4:	00008067          	ret

000000a8 <main>:
  a8:	fd010113          	add	sp,sp,-48
  ac:	02112623          	sw	ra,44(sp)
  b0:	02812423          	sw	s0,40(sp)
  b4:	03010413          	add	s0,sp,48
  b8:	f69ff0ef          	jal	20 <_Z10soc_bootupv>
  bc:	00000013          	nop
  c0:	002017b7          	lui	a5,0x201
  c4:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  c8:	0007a783          	lw	a5,0(a5)
  cc:	fef42623          	sw	a5,-20(s0)
  d0:	002017b7          	lui	a5,0x201
  d4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  d8:	0007a783          	lw	a5,0(a5)
  dc:	fef42423          	sw	a5,-24(s0)
  e0:	324000ef          	jal	404 <_Z18uart_poll_watchdogv>
  e4:	00000013          	nop
  e8:	002017b7          	lui	a5,0x201
  ec:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  f0:	0007a783          	lw	a5,0(a5)
  f4:	fef42223          	sw	a5,-28(s0)
  f8:	002017b7          	lui	a5,0x201
  fc:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
 100:	0007a783          	lw	a5,0(a5)
 104:	fef42023          	sw	a5,-32(s0)
 108:	fe042703          	lw	a4,-32(s0)
 10c:	fec42783          	lw	a5,-20(s0)
 110:	40f707b3          	sub	a5,a4,a5
 114:	fcf42e23          	sw	a5,-36(s0)
 118:	fe442703          	lw	a4,-28(s0)
 11c:	fe842783          	lw	a5,-24(s0)
 120:	40f707b3          	sub	a5,a4,a5
 124:	fcf42c23          	sw	a5,-40(s0)
 128:	05200513          	li	a0,82
 12c:	040000ef          	jal	16c <_Z9uart_putcc>
 130:	00000013          	nop
 134:	fd842503          	lw	a0,-40(s0)
 138:	1c4000ef          	jal	2fc <_Z11dump_resulti>
 13c:	05900513          	li	a0,89
 140:	02c000ef          	jal	16c <_Z9uart_putcc>
 144:	00000013          	nop
 148:	fdc42503          	lw	a0,-36(s0)
 14c:	1b0000ef          	jal	2fc <_Z11dump_resulti>
 150:	00000013          	nop
 154:	00000793          	li	a5,0
 158:	00078513          	mv	a0,a5
 15c:	02c12083          	lw	ra,44(sp)
 160:	02812403          	lw	s0,40(sp)
 164:	03010113          	add	sp,sp,48
 168:	00008067          	ret

0000016c <_Z9uart_putcc>:
 16c:	fd010113          	add	sp,sp,-48
 170:	02812623          	sw	s0,44(sp)
 174:	03010413          	add	s0,sp,48
 178:	00050793          	mv	a5,a0
 17c:	fcf40fa3          	sb	a5,-33(s0)
 180:	002017b7          	lui	a5,0x201
 184:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 188:	0007a783          	lw	a5,0(a5)
 18c:	fef42223          	sw	a5,-28(s0)
 190:	002017b7          	lui	a5,0x201
 194:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
 198:	fdf44703          	lbu	a4,-33(s0)
 19c:	00e78023          	sb	a4,0(a5)
 1a0:	fe042623          	sw	zero,-20(s0)
 1a4:	0300006f          	j	1d4 <_Z9uart_putcc+0x68>
 1a8:	fe042423          	sw	zero,-24(s0)
 1ac:	0100006f          	j	1bc <_Z9uart_putcc+0x50>
 1b0:	fe842783          	lw	a5,-24(s0)
 1b4:	00178793          	add	a5,a5,1
 1b8:	fef42423          	sw	a5,-24(s0)
 1bc:	fe842703          	lw	a4,-24(s0)
 1c0:	fe442783          	lw	a5,-28(s0)
 1c4:	fef746e3          	blt	a4,a5,1b0 <_Z9uart_putcc+0x44>
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	00178793          	add	a5,a5,1
 1d0:	fef42623          	sw	a5,-20(s0)
 1d4:	fec42783          	lw	a5,-20(s0)
 1d8:	fcf058e3          	blez	a5,1a8 <_Z9uart_putcc+0x3c>
 1dc:	00000013          	nop
 1e0:	00000013          	nop
 1e4:	02c12403          	lw	s0,44(sp)
 1e8:	03010113          	add	sp,sp,48
 1ec:	00008067          	ret

000001f0 <_Z8fib_iteri>:
 1f0:	fc010113          	add	sp,sp,-64
 1f4:	02812e23          	sw	s0,60(sp)
 1f8:	04010413          	add	s0,sp,64
 1fc:	fca42623          	sw	a0,-52(s0)
 200:	00100793          	li	a5,1
 204:	fef42623          	sw	a5,-20(s0)
 208:	fe042423          	sw	zero,-24(s0)
 20c:	fe042223          	sw	zero,-28(s0)
 210:	fe042023          	sw	zero,-32(s0)
 214:	fcc42703          	lw	a4,-52(s0)
 218:	02e00793          	li	a5,46
 21c:	00e7d863          	bge	a5,a4,22c <_Z8fib_iteri+0x3c>
 220:	02e00793          	li	a5,46
 224:	fef42023          	sw	a5,-32(s0)
 228:	00c0006f          	j	234 <_Z8fib_iteri+0x44>
 22c:	fcc42783          	lw	a5,-52(s0)
 230:	fef42023          	sw	a5,-32(s0)
 234:	00100793          	li	a5,1
 238:	fcf42e23          	sw	a5,-36(s0)
 23c:	0300006f          	j	26c <_Z8fib_iteri+0x7c>
 240:	fec42703          	lw	a4,-20(s0)
 244:	fe842783          	lw	a5,-24(s0)
 248:	00f707b3          	add	a5,a4,a5
 24c:	fef42223          	sw	a5,-28(s0)
 250:	fec42783          	lw	a5,-20(s0)
 254:	fef42423          	sw	a5,-24(s0)
 258:	fe442783          	lw	a5,-28(s0)
 25c:	fef42623          	sw	a5,-20(s0)
 260:	fdc42783          	lw	a5,-36(s0)
 264:	00178793          	add	a5,a5,1
 268:	fcf42e23          	sw	a5,-36(s0)
 26c:	fdc42703          	lw	a4,-36(s0)
 270:	fe042783          	lw	a5,-32(s0)
 274:	fcf746e3          	blt	a4,a5,240 <_Z8fib_iteri+0x50>
 278:	fe442783          	lw	a5,-28(s0)
 27c:	00078513          	mv	a0,a5
 280:	03c12403          	lw	s0,60(sp)
 284:	04010113          	add	sp,sp,64
 288:	00008067          	ret

0000028c <_Z13fib_recursivei>:
 28c:	fe010113          	add	sp,sp,-32
 290:	00112e23          	sw	ra,28(sp)
 294:	00812c23          	sw	s0,24(sp)
 298:	00912a23          	sw	s1,20(sp)
 29c:	02010413          	add	s0,sp,32
 2a0:	fea42623          	sw	a0,-20(s0)
 2a4:	fec42703          	lw	a4,-20(s0)
 2a8:	00100793          	li	a5,1
 2ac:	00e7c663          	blt	a5,a4,2b8 <_Z13fib_recursivei+0x2c>
 2b0:	fec42783          	lw	a5,-20(s0)
 2b4:	0300006f          	j	2e4 <_Z13fib_recursivei+0x58>
 2b8:	fec42783          	lw	a5,-20(s0)
 2bc:	fff78793          	add	a5,a5,-1
 2c0:	00078513          	mv	a0,a5
 2c4:	fc9ff0ef          	jal	28c <_Z13fib_recursivei>
 2c8:	00050493          	mv	s1,a0
 2cc:	fec42783          	lw	a5,-20(s0)
 2d0:	ffe78793          	add	a5,a5,-2
 2d4:	00078513          	mv	a0,a5
 2d8:	fb5ff0ef          	jal	28c <_Z13fib_recursivei>
 2dc:	00050793          	mv	a5,a0
 2e0:	00f487b3          	add	a5,s1,a5
 2e4:	00078513          	mv	a0,a5
 2e8:	01c12083          	lw	ra,28(sp)
 2ec:	01812403          	lw	s0,24(sp)
 2f0:	01412483          	lw	s1,20(sp)
 2f4:	02010113          	add	sp,sp,32
 2f8:	00008067          	ret

000002fc <_Z11dump_resulti>:
 2fc:	fd010113          	add	sp,sp,-48
 300:	02112623          	sw	ra,44(sp)
 304:	02812423          	sw	s0,40(sp)
 308:	03010413          	add	s0,sp,48
 30c:	fca42e23          	sw	a0,-36(s0)
 310:	00100793          	li	a5,1
 314:	fef42623          	sw	a5,-20(s0)
 318:	fdc42783          	lw	a5,-36(s0)
 31c:	0ff7f793          	zext.b	a5,a5
 320:	fef40223          	sb	a5,-28(s0)
 324:	fdc42703          	lw	a4,-36(s0)
 328:	0ff00793          	li	a5,255
 32c:	00e7de63          	bge	a5,a4,348 <_Z11dump_resulti+0x4c>
 330:	fdc42783          	lw	a5,-36(s0)
 334:	4087d793          	sra	a5,a5,0x8
 338:	0ff7f793          	zext.b	a5,a5
 33c:	fef402a3          	sb	a5,-27(s0)
 340:	00200793          	li	a5,2
 344:	fef42623          	sw	a5,-20(s0)
 348:	fdc42703          	lw	a4,-36(s0)
 34c:	000107b7          	lui	a5,0x10
 350:	00f74e63          	blt	a4,a5,36c <_Z11dump_resulti+0x70>
 354:	fdc42783          	lw	a5,-36(s0)
 358:	4107d793          	sra	a5,a5,0x10
 35c:	0ff7f793          	zext.b	a5,a5
 360:	fef40323          	sb	a5,-26(s0)
 364:	00300793          	li	a5,3
 368:	fef42623          	sw	a5,-20(s0)
 36c:	fdc42703          	lw	a4,-36(s0)
 370:	010007b7          	lui	a5,0x1000
 374:	00f74e63          	blt	a4,a5,390 <_Z11dump_resulti+0x94>
 378:	fdc42783          	lw	a5,-36(s0)
 37c:	0187d793          	srl	a5,a5,0x18
 380:	0ff7f793          	zext.b	a5,a5
 384:	fef403a3          	sb	a5,-25(s0)
 388:	00400793          	li	a5,4
 38c:	fef42623          	sw	a5,-20(s0)
 390:	04400513          	li	a0,68
 394:	dd9ff0ef          	jal	16c <_Z9uart_putcc>
 398:	00000013          	nop
 39c:	fec42783          	lw	a5,-20(s0)
 3a0:	0ff7f793          	zext.b	a5,a5
 3a4:	00078513          	mv	a0,a5
 3a8:	dc5ff0ef          	jal	16c <_Z9uart_putcc>
 3ac:	00000013          	nop
 3b0:	fe042423          	sw	zero,-24(s0)
 3b4:	02c0006f          	j	3e0 <_Z11dump_resulti+0xe4>
 3b8:	fe842783          	lw	a5,-24(s0)
 3bc:	ff078793          	add	a5,a5,-16 # fffff0 <__stack_end+0xd017f0>
 3c0:	008787b3          	add	a5,a5,s0
 3c4:	ff47c783          	lbu	a5,-12(a5)
 3c8:	00078513          	mv	a0,a5
 3cc:	da1ff0ef          	jal	16c <_Z9uart_putcc>
 3d0:	00000013          	nop
 3d4:	fe842783          	lw	a5,-24(s0)
 3d8:	00178793          	add	a5,a5,1
 3dc:	fef42423          	sw	a5,-24(s0)
 3e0:	fe842703          	lw	a4,-24(s0)
 3e4:	fec42783          	lw	a5,-20(s0)
 3e8:	fcf748e3          	blt	a4,a5,3b8 <_Z11dump_resulti+0xbc>
 3ec:	00000013          	nop
 3f0:	00000013          	nop
 3f4:	02c12083          	lw	ra,44(sp)
 3f8:	02812403          	lw	s0,40(sp)
 3fc:	03010113          	add	sp,sp,48
 400:	00008067          	ret

00000404 <_Z18uart_poll_watchdogv>:
 404:	fe010113          	add	sp,sp,-32
 408:	00112e23          	sw	ra,28(sp)
 40c:	00812c23          	sw	s0,24(sp)
 410:	02010413          	add	s0,sp,32
 414:	fe042623          	sw	zero,-20(s0)
 418:	05c0006f          	j	474 <_Z18uart_poll_watchdogv+0x70>
 41c:	002017b7          	lui	a5,0x201
 420:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 424:	0007c783          	lbu	a5,0(a5)
 428:	fef40523          	sb	a5,-22(s0)
 42c:	fea44783          	lbu	a5,-22(s0)
 430:	0047f793          	and	a5,a5,4
 434:	02078a63          	beqz	a5,468 <_Z18uart_poll_watchdogv+0x64>
 438:	002017b7          	lui	a5,0x201
 43c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 440:	0007c783          	lbu	a5,0(a5)
 444:	fef404a3          	sb	a5,-23(s0)
 448:	fe944703          	lbu	a4,-23(s0)
 44c:	04100793          	li	a5,65
 450:	00f71c63          	bne	a4,a5,468 <_Z18uart_poll_watchdogv+0x64>
 454:	074000ef          	jal	4c8 <_Z7computev>
 458:	00050793          	mv	a5,a0
 45c:	fef405a3          	sb	a5,-21(s0)
 460:	00000013          	nop
 464:	0540006f          	j	4b8 <_Z18uart_poll_watchdogv+0xb4>
 468:	fec42783          	lw	a5,-20(s0)
 46c:	00178793          	add	a5,a5,1
 470:	fef42623          	sw	a5,-20(s0)
 474:	fec42703          	lw	a4,-20(s0)
 478:	06300793          	li	a5,99
 47c:	fae7d0e3          	bge	a5,a4,41c <_Z18uart_poll_watchdogv+0x18>
 480:	05400513          	li	a0,84
 484:	ce9ff0ef          	jal	16c <_Z9uart_putcc>
 488:	00000013          	nop
 48c:	03f00513          	li	a0,63
 490:	cddff0ef          	jal	16c <_Z9uart_putcc>
 494:	00000013          	nop
 498:	030000ef          	jal	4c8 <_Z7computev>
 49c:	00050793          	mv	a5,a0
 4a0:	fef405a3          	sb	a5,-21(s0)
 4a4:	00000013          	nop
 4a8:	3e800513          	li	a0,1000
 4ac:	1e8000ef          	jal	694 <_Z9gpio_demoi>
 4b0:	00000013          	nop
 4b4:	00000013          	nop
 4b8:	01c12083          	lw	ra,28(sp)
 4bc:	01812403          	lw	s0,24(sp)
 4c0:	02010113          	add	sp,sp,32
 4c4:	00008067          	ret

000004c8 <_Z7computev>:
 4c8:	fc010113          	add	sp,sp,-64
 4cc:	02112e23          	sw	ra,60(sp)
 4d0:	02812c23          	sw	s0,56(sp)
 4d4:	04010413          	add	s0,sp,64
 4d8:	fe042423          	sw	zero,-24(s0)
 4dc:	fe042223          	sw	zero,-28(s0)
 4e0:	00a00793          	li	a5,10
 4e4:	fef42023          	sw	a5,-32(s0)
 4e8:	fff00793          	li	a5,-1
 4ec:	fef407a3          	sb	a5,-17(s0)
 4f0:	002017b7          	lui	a5,0x201
 4f4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 4f8:	0007a783          	lw	a5,0(a5)
 4fc:	fcf42e23          	sw	a5,-36(s0)
 500:	002017b7          	lui	a5,0x201
 504:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 508:	0007a783          	lw	a5,0(a5)
 50c:	fcf42c23          	sw	a5,-40(s0)
 510:	fe042503          	lw	a0,-32(s0)
 514:	cddff0ef          	jal	1f0 <_Z8fib_iteri>
 518:	fea42423          	sw	a0,-24(s0)
 51c:	00000013          	nop
 520:	002017b7          	lui	a5,0x201
 524:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 528:	0007a783          	lw	a5,0(a5)
 52c:	fcf42a23          	sw	a5,-44(s0)
 530:	002017b7          	lui	a5,0x201
 534:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 538:	0007a783          	lw	a5,0(a5)
 53c:	fcf42823          	sw	a5,-48(s0)
 540:	fd042703          	lw	a4,-48(s0)
 544:	fdc42783          	lw	a5,-36(s0)
 548:	40f707b3          	sub	a5,a4,a5
 54c:	fcf42623          	sw	a5,-52(s0)
 550:	fd442703          	lw	a4,-44(s0)
 554:	fd842783          	lw	a5,-40(s0)
 558:	40f707b3          	sub	a5,a4,a5
 55c:	fcf42423          	sw	a5,-56(s0)
 560:	05900513          	li	a0,89
 564:	c09ff0ef          	jal	16c <_Z9uart_putcc>
 568:	00000013          	nop
 56c:	fcc42503          	lw	a0,-52(s0)
 570:	d8dff0ef          	jal	2fc <_Z11dump_resulti>
 574:	00000013          	nop
 578:	05200513          	li	a0,82
 57c:	bf1ff0ef          	jal	16c <_Z9uart_putcc>
 580:	00000013          	nop
 584:	fc842503          	lw	a0,-56(s0)
 588:	d75ff0ef          	jal	2fc <_Z11dump_resulti>
 58c:	00000013          	nop
 590:	002017b7          	lui	a5,0x201
 594:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 598:	0007a783          	lw	a5,0(a5)
 59c:	fcf42e23          	sw	a5,-36(s0)
 5a0:	002017b7          	lui	a5,0x201
 5a4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 5a8:	0007a783          	lw	a5,0(a5)
 5ac:	fcf42c23          	sw	a5,-40(s0)
 5b0:	fe042503          	lw	a0,-32(s0)
 5b4:	cd9ff0ef          	jal	28c <_Z13fib_recursivei>
 5b8:	00050793          	mv	a5,a0
 5bc:	fef42223          	sw	a5,-28(s0)
 5c0:	002017b7          	lui	a5,0x201
 5c4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 5c8:	0007a783          	lw	a5,0(a5)
 5cc:	fcf42a23          	sw	a5,-44(s0)
 5d0:	002017b7          	lui	a5,0x201
 5d4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 5d8:	0007a783          	lw	a5,0(a5)
 5dc:	fcf42823          	sw	a5,-48(s0)
 5e0:	fd042703          	lw	a4,-48(s0)
 5e4:	fdc42783          	lw	a5,-36(s0)
 5e8:	40f707b3          	sub	a5,a4,a5
 5ec:	fcf42623          	sw	a5,-52(s0)
 5f0:	fd442703          	lw	a4,-44(s0)
 5f4:	fd842783          	lw	a5,-40(s0)
 5f8:	40f707b3          	sub	a5,a4,a5
 5fc:	fcf42423          	sw	a5,-56(s0)
 600:	05900513          	li	a0,89
 604:	b69ff0ef          	jal	16c <_Z9uart_putcc>
 608:	00000013          	nop
 60c:	fcc42503          	lw	a0,-52(s0)
 610:	cedff0ef          	jal	2fc <_Z11dump_resulti>
 614:	00000013          	nop
 618:	05200513          	li	a0,82
 61c:	b51ff0ef          	jal	16c <_Z9uart_putcc>
 620:	00000013          	nop
 624:	fc842503          	lw	a0,-56(s0)
 628:	cd5ff0ef          	jal	2fc <_Z11dump_resulti>
 62c:	fe842703          	lw	a4,-24(s0)
 630:	fe442783          	lw	a5,-28(s0)
 634:	00f71e63          	bne	a4,a5,650 <_Z7computev+0x188>
 638:	00100793          	li	a5,1
 63c:	fef407a3          	sb	a5,-17(s0)
 640:	05000513          	li	a0,80
 644:	b29ff0ef          	jal	16c <_Z9uart_putcc>
 648:	00000013          	nop
 64c:	0140006f          	j	660 <_Z7computev+0x198>
 650:	fe0407a3          	sb	zero,-17(s0)
 654:	04600513          	li	a0,70
 658:	b15ff0ef          	jal	16c <_Z9uart_putcc>
 65c:	00000013          	nop
 660:	00000013          	nop
 664:	fe842503          	lw	a0,-24(s0)
 668:	c95ff0ef          	jal	2fc <_Z11dump_resulti>
 66c:	00000013          	nop
 670:	04300513          	li	a0,67
 674:	af9ff0ef          	jal	16c <_Z9uart_putcc>
 678:	00000013          	nop
 67c:	fef44783          	lbu	a5,-17(s0)
 680:	00078513          	mv	a0,a5
 684:	03c12083          	lw	ra,60(sp)
 688:	03812403          	lw	s0,56(sp)
 68c:	04010113          	add	sp,sp,64
 690:	00008067          	ret

00000694 <_Z9gpio_demoi>:
 694:	fd010113          	add	sp,sp,-48
 698:	02812623          	sw	s0,44(sp)
 69c:	03010413          	add	s0,sp,48
 6a0:	fca42e23          	sw	a0,-36(s0)
 6a4:	fe0407a3          	sb	zero,-17(s0)
 6a8:	0700006f          	j	718 <_Z9gpio_demoi+0x84>
 6ac:	fe042423          	sw	zero,-24(s0)
 6b0:	002017b7          	lui	a5,0x201
 6b4:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 6b8:	00c00713          	li	a4,12
 6bc:	00e7a023          	sw	a4,0(a5)
 6c0:	0100006f          	j	6d0 <_Z9gpio_demoi+0x3c>
 6c4:	fe842783          	lw	a5,-24(s0)
 6c8:	00178793          	add	a5,a5,1
 6cc:	fef42423          	sw	a5,-24(s0)
 6d0:	fe842703          	lw	a4,-24(s0)
 6d4:	fdc42783          	lw	a5,-36(s0)
 6d8:	fef746e3          	blt	a4,a5,6c4 <_Z9gpio_demoi+0x30>
 6dc:	fe042423          	sw	zero,-24(s0)
 6e0:	002017b7          	lui	a5,0x201
 6e4:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 6e8:	00d00713          	li	a4,13
 6ec:	00e7a023          	sw	a4,0(a5)
 6f0:	0100006f          	j	700 <_Z9gpio_demoi+0x6c>
 6f4:	fe842783          	lw	a5,-24(s0)
 6f8:	00178793          	add	a5,a5,1
 6fc:	fef42423          	sw	a5,-24(s0)
 700:	fe842703          	lw	a4,-24(s0)
 704:	fdc42783          	lw	a5,-36(s0)
 708:	fef746e3          	blt	a4,a5,6f4 <_Z9gpio_demoi+0x60>
 70c:	fef44783          	lbu	a5,-17(s0)
 710:	00178793          	add	a5,a5,1
 714:	fef407a3          	sb	a5,-17(s0)
 718:	fef44703          	lbu	a4,-17(s0)
 71c:	00f00793          	li	a5,15
 720:	f8e7f6e3          	bgeu	a5,a4,6ac <_Z9gpio_demoi+0x18>
 724:	002017b7          	lui	a5,0x201
 728:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 72c:	0007a023          	sw	zero,0(a5)
 730:	002017b7          	lui	a5,0x201
 734:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
 738:	0007a023          	sw	zero,0(a5)
 73c:	00000013          	nop
 740:	02c12403          	lw	s0,44(sp)
 744:	03010113          	add	sp,sp,48
 748:	00008067          	ret
