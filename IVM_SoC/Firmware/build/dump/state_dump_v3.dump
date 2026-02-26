
/out/state_dump_v3.elf:     file format elf32-littleriscv


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
  7c:	134000ef          	jal	1b0 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	128000ef          	jal	1b0 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	01c12083          	lw	ra,28(sp)
  98:	01812403          	lw	s0,24(sp)
  9c:	02010113          	add	sp,sp,32
  a0:	00008067          	ret

000000a4 <main>:
  a4:	fc010113          	add	sp,sp,-64
  a8:	02112e23          	sw	ra,60(sp)
  ac:	02812c23          	sw	s0,56(sp)
  b0:	03212a23          	sw	s2,52(sp)
  b4:	03312823          	sw	s3,48(sp)
  b8:	03412623          	sw	s4,44(sp)
  bc:	03512423          	sw	s5,40(sp)
  c0:	04010413          	add	s0,sp,64
  c4:	f5dff0ef          	jal	20 <_Z10soc_bootupv>
  c8:	00000013          	nop
  cc:	002017b7          	lui	a5,0x201
  d0:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  d4:	0007a783          	lw	a5,0(a5)
  d8:	fcf42e23          	sw	a5,-36(s0)
  dc:	002017b7          	lui	a5,0x201
  e0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  e4:	0007a783          	lw	a5,0(a5)
  e8:	fcf42c23          	sw	a5,-40(s0)
  ec:	408000ef          	jal	4f4 <_Z18uart_poll_watchdogv>
  f0:	00000013          	nop
  f4:	002017b7          	lui	a5,0x201
  f8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  fc:	0007a783          	lw	a5,0(a5)
 100:	fcf42a23          	sw	a5,-44(s0)
 104:	002017b7          	lui	a5,0x201
 108:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
 10c:	0007a783          	lw	a5,0(a5)
 110:	fcf42823          	sw	a5,-48(s0)
 114:	fd042703          	lw	a4,-48(s0)
 118:	fdc42783          	lw	a5,-36(s0)
 11c:	40f707b3          	sub	a5,a4,a5
 120:	fcf42623          	sw	a5,-52(s0)
 124:	fd442703          	lw	a4,-44(s0)
 128:	fd842783          	lw	a5,-40(s0)
 12c:	40f707b3          	sub	a5,a4,a5
 130:	fcf42423          	sw	a5,-56(s0)
 134:	05200513          	li	a0,82
 138:	078000ef          	jal	1b0 <_Z9uart_putcc>
 13c:	00000013          	nop
 140:	fc842783          	lw	a5,-56(s0)
 144:	00078a13          	mv	s4,a5
 148:	41f7d793          	sra	a5,a5,0x1f
 14c:	00078a93          	mv	s5,a5
 150:	000a0513          	mv	a0,s4
 154:	000a8593          	mv	a1,s5
 158:	254000ef          	jal	3ac <_Z11dump_resultx>
 15c:	05900513          	li	a0,89
 160:	050000ef          	jal	1b0 <_Z9uart_putcc>
 164:	00000013          	nop
 168:	fcc42783          	lw	a5,-52(s0)
 16c:	00078913          	mv	s2,a5
 170:	41f7d793          	sra	a5,a5,0x1f
 174:	00078993          	mv	s3,a5
 178:	00090513          	mv	a0,s2
 17c:	00098593          	mv	a1,s3
 180:	22c000ef          	jal	3ac <_Z11dump_resultx>
 184:	00000013          	nop
 188:	00000793          	li	a5,0
 18c:	00078513          	mv	a0,a5
 190:	03c12083          	lw	ra,60(sp)
 194:	03812403          	lw	s0,56(sp)
 198:	03412903          	lw	s2,52(sp)
 19c:	03012983          	lw	s3,48(sp)
 1a0:	02c12a03          	lw	s4,44(sp)
 1a4:	02812a83          	lw	s5,40(sp)
 1a8:	04010113          	add	sp,sp,64
 1ac:	00008067          	ret

000001b0 <_Z9uart_putcc>:
 1b0:	fd010113          	add	sp,sp,-48
 1b4:	02812623          	sw	s0,44(sp)
 1b8:	03010413          	add	s0,sp,48
 1bc:	00050793          	mv	a5,a0
 1c0:	fcf40fa3          	sb	a5,-33(s0)
 1c4:	002017b7          	lui	a5,0x201
 1c8:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 1cc:	0007a783          	lw	a5,0(a5)
 1d0:	fef42223          	sw	a5,-28(s0)
 1d4:	002017b7          	lui	a5,0x201
 1d8:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
 1dc:	fdf44703          	lbu	a4,-33(s0)
 1e0:	00e78023          	sb	a4,0(a5)
 1e4:	fe042623          	sw	zero,-20(s0)
 1e8:	0300006f          	j	218 <_Z9uart_putcc+0x68>
 1ec:	fe042423          	sw	zero,-24(s0)
 1f0:	0100006f          	j	200 <_Z9uart_putcc+0x50>
 1f4:	fe842783          	lw	a5,-24(s0)
 1f8:	00178793          	add	a5,a5,1
 1fc:	fef42423          	sw	a5,-24(s0)
 200:	fe842703          	lw	a4,-24(s0)
 204:	fe442783          	lw	a5,-28(s0)
 208:	fef746e3          	blt	a4,a5,1f4 <_Z9uart_putcc+0x44>
 20c:	fec42783          	lw	a5,-20(s0)
 210:	00178793          	add	a5,a5,1
 214:	fef42623          	sw	a5,-20(s0)
 218:	fec42783          	lw	a5,-20(s0)
 21c:	fcf058e3          	blez	a5,1ec <_Z9uart_putcc+0x3c>
 220:	00000013          	nop
 224:	00000013          	nop
 228:	02c12403          	lw	s0,44(sp)
 22c:	03010113          	add	sp,sp,48
 230:	00008067          	ret

00000234 <_Z8fib_iteri>:
 234:	fc010113          	add	sp,sp,-64
 238:	02812e23          	sw	s0,60(sp)
 23c:	04010413          	add	s0,sp,64
 240:	fca42623          	sw	a0,-52(s0)
 244:	00100713          	li	a4,1
 248:	00000793          	li	a5,0
 24c:	fee42423          	sw	a4,-24(s0)
 250:	fef42623          	sw	a5,-20(s0)
 254:	00000793          	li	a5,0
 258:	00000813          	li	a6,0
 25c:	fef42023          	sw	a5,-32(s0)
 260:	ff042223          	sw	a6,-28(s0)
 264:	fcf42c23          	sw	a5,-40(s0)
 268:	fd042e23          	sw	a6,-36(s0)
 26c:	fc042823          	sw	zero,-48(s0)
 270:	fcc42783          	lw	a5,-52(s0)
 274:	fcf42823          	sw	a5,-48(s0)
 278:	00100793          	li	a5,1
 27c:	fcf42a23          	sw	a5,-44(s0)
 280:	0600006f          	j	2e0 <_Z8fib_iteri+0xac>
 284:	fe842603          	lw	a2,-24(s0)
 288:	fec42683          	lw	a3,-20(s0)
 28c:	fe042503          	lw	a0,-32(s0)
 290:	fe442583          	lw	a1,-28(s0)
 294:	00a60733          	add	a4,a2,a0
 298:	00070813          	mv	a6,a4
 29c:	00c83833          	sltu	a6,a6,a2
 2a0:	00b687b3          	add	a5,a3,a1
 2a4:	00f806b3          	add	a3,a6,a5
 2a8:	00068793          	mv	a5,a3
 2ac:	fce42c23          	sw	a4,-40(s0)
 2b0:	fcf42e23          	sw	a5,-36(s0)
 2b4:	fe842703          	lw	a4,-24(s0)
 2b8:	fec42783          	lw	a5,-20(s0)
 2bc:	fee42023          	sw	a4,-32(s0)
 2c0:	fef42223          	sw	a5,-28(s0)
 2c4:	fd842703          	lw	a4,-40(s0)
 2c8:	fdc42783          	lw	a5,-36(s0)
 2cc:	fee42423          	sw	a4,-24(s0)
 2d0:	fef42623          	sw	a5,-20(s0)
 2d4:	fd442783          	lw	a5,-44(s0)
 2d8:	00178793          	add	a5,a5,1
 2dc:	fcf42a23          	sw	a5,-44(s0)
 2e0:	fd442703          	lw	a4,-44(s0)
 2e4:	fd042783          	lw	a5,-48(s0)
 2e8:	f8f74ee3          	blt	a4,a5,284 <_Z8fib_iteri+0x50>
 2ec:	fd842703          	lw	a4,-40(s0)
 2f0:	fdc42783          	lw	a5,-36(s0)
 2f4:	00070513          	mv	a0,a4
 2f8:	00078593          	mv	a1,a5
 2fc:	03c12403          	lw	s0,60(sp)
 300:	04010113          	add	sp,sp,64
 304:	00008067          	ret

00000308 <_Z13fib_recursivei>:
 308:	fe010113          	add	sp,sp,-32
 30c:	00112e23          	sw	ra,28(sp)
 310:	00812c23          	sw	s0,24(sp)
 314:	01212a23          	sw	s2,20(sp)
 318:	01312823          	sw	s3,16(sp)
 31c:	02010413          	add	s0,sp,32
 320:	fea42623          	sw	a0,-20(s0)
 324:	fec42603          	lw	a2,-20(s0)
 328:	00100693          	li	a3,1
 32c:	00c6cc63          	blt	a3,a2,344 <_Z13fib_recursivei+0x3c>
 330:	fec42683          	lw	a3,-20(s0)
 334:	00068713          	mv	a4,a3
 338:	41f6d693          	sra	a3,a3,0x1f
 33c:	00068793          	mv	a5,a3
 340:	04c0006f          	j	38c <_Z13fib_recursivei+0x84>
 344:	fec42783          	lw	a5,-20(s0)
 348:	fff78793          	add	a5,a5,-1
 34c:	00078513          	mv	a0,a5
 350:	fb9ff0ef          	jal	308 <_Z13fib_recursivei>
 354:	00050913          	mv	s2,a0
 358:	00058993          	mv	s3,a1
 35c:	fec42783          	lw	a5,-20(s0)
 360:	ffe78793          	add	a5,a5,-2
 364:	00078513          	mv	a0,a5
 368:	fa1ff0ef          	jal	308 <_Z13fib_recursivei>
 36c:	00050613          	mv	a2,a0
 370:	00058693          	mv	a3,a1
 374:	00c90733          	add	a4,s2,a2
 378:	00070593          	mv	a1,a4
 37c:	0125b5b3          	sltu	a1,a1,s2
 380:	00d987b3          	add	a5,s3,a3
 384:	00f586b3          	add	a3,a1,a5
 388:	00068793          	mv	a5,a3
 38c:	00070513          	mv	a0,a4
 390:	00078593          	mv	a1,a5
 394:	01c12083          	lw	ra,28(sp)
 398:	01812403          	lw	s0,24(sp)
 39c:	01412903          	lw	s2,20(sp)
 3a0:	01012983          	lw	s3,16(sp)
 3a4:	02010113          	add	sp,sp,32
 3a8:	00008067          	ret

000003ac <_Z11dump_resultx>:
 3ac:	fc010113          	add	sp,sp,-64
 3b0:	02112e23          	sw	ra,60(sp)
 3b4:	02812c23          	sw	s0,56(sp)
 3b8:	04010413          	add	s0,sp,64
 3bc:	fca42423          	sw	a0,-56(s0)
 3c0:	fcb42623          	sw	a1,-52(s0)
 3c4:	fe042623          	sw	zero,-20(s0)
 3c8:	0700006f          	j	438 <_Z11dump_resultx+0x8c>
 3cc:	fec42683          	lw	a3,-20(s0)
 3d0:	00369693          	sll	a3,a3,0x3
 3d4:	fe068613          	add	a2,a3,-32
 3d8:	00064c63          	bltz	a2,3f0 <_Z11dump_resultx+0x44>
 3dc:	fcc42683          	lw	a3,-52(s0)
 3e0:	40c6d733          	sra	a4,a3,a2
 3e4:	fcc42683          	lw	a3,-52(s0)
 3e8:	41f6d793          	sra	a5,a3,0x1f
 3ec:	02c0006f          	j	418 <_Z11dump_resultx+0x6c>
 3f0:	fcc42603          	lw	a2,-52(s0)
 3f4:	00161593          	sll	a1,a2,0x1
 3f8:	01f00613          	li	a2,31
 3fc:	40d60633          	sub	a2,a2,a3
 400:	00c59633          	sll	a2,a1,a2
 404:	fc842583          	lw	a1,-56(s0)
 408:	00d5d733          	srl	a4,a1,a3
 40c:	00e66733          	or	a4,a2,a4
 410:	fcc42603          	lw	a2,-52(s0)
 414:	40d657b3          	sra	a5,a2,a3
 418:	0ff77613          	zext.b	a2,a4
 41c:	fec42683          	lw	a3,-20(s0)
 420:	ff068693          	add	a3,a3,-16
 424:	008686b3          	add	a3,a3,s0
 428:	fec68423          	sb	a2,-24(a3)
 42c:	fec42683          	lw	a3,-20(s0)
 430:	00168693          	add	a3,a3,1
 434:	fed42623          	sw	a3,-20(s0)
 438:	fec42603          	lw	a2,-20(s0)
 43c:	00700693          	li	a3,7
 440:	f8c6d6e3          	bge	a3,a2,3cc <_Z11dump_resultx+0x20>
 444:	00800793          	li	a5,8
 448:	fef42423          	sw	a5,-24(s0)
 44c:	0100006f          	j	45c <_Z11dump_resultx+0xb0>
 450:	fe842783          	lw	a5,-24(s0)
 454:	fff78793          	add	a5,a5,-1
 458:	fef42423          	sw	a5,-24(s0)
 45c:	fe842703          	lw	a4,-24(s0)
 460:	00100793          	li	a5,1
 464:	00e7de63          	bge	a5,a4,480 <_Z11dump_resultx+0xd4>
 468:	fe842783          	lw	a5,-24(s0)
 46c:	fff78793          	add	a5,a5,-1
 470:	ff078793          	add	a5,a5,-16
 474:	008787b3          	add	a5,a5,s0
 478:	fe87c783          	lbu	a5,-24(a5)
 47c:	fc078ae3          	beqz	a5,450 <_Z11dump_resultx+0xa4>
 480:	04400513          	li	a0,68
 484:	d2dff0ef          	jal	1b0 <_Z9uart_putcc>
 488:	00000013          	nop
 48c:	fe842783          	lw	a5,-24(s0)
 490:	0ff7f793          	zext.b	a5,a5
 494:	00078513          	mv	a0,a5
 498:	d19ff0ef          	jal	1b0 <_Z9uart_putcc>
 49c:	00000013          	nop
 4a0:	fe042223          	sw	zero,-28(s0)
 4a4:	02c0006f          	j	4d0 <_Z11dump_resultx+0x124>
 4a8:	fe442783          	lw	a5,-28(s0)
 4ac:	ff078793          	add	a5,a5,-16
 4b0:	008787b3          	add	a5,a5,s0
 4b4:	fe87c783          	lbu	a5,-24(a5)
 4b8:	00078513          	mv	a0,a5
 4bc:	cf5ff0ef          	jal	1b0 <_Z9uart_putcc>
 4c0:	00000013          	nop
 4c4:	fe442783          	lw	a5,-28(s0)
 4c8:	00178793          	add	a5,a5,1
 4cc:	fef42223          	sw	a5,-28(s0)
 4d0:	fe442703          	lw	a4,-28(s0)
 4d4:	fe842783          	lw	a5,-24(s0)
 4d8:	fcf748e3          	blt	a4,a5,4a8 <_Z11dump_resultx+0xfc>
 4dc:	00000013          	nop
 4e0:	00000013          	nop
 4e4:	03c12083          	lw	ra,60(sp)
 4e8:	03812403          	lw	s0,56(sp)
 4ec:	04010113          	add	sp,sp,64
 4f0:	00008067          	ret

000004f4 <_Z18uart_poll_watchdogv>:
 4f4:	fe010113          	add	sp,sp,-32
 4f8:	00112e23          	sw	ra,28(sp)
 4fc:	00812c23          	sw	s0,24(sp)
 500:	02010413          	add	s0,sp,32
 504:	fe042623          	sw	zero,-20(s0)
 508:	05c0006f          	j	564 <_Z18uart_poll_watchdogv+0x70>
 50c:	002017b7          	lui	a5,0x201
 510:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 514:	0007c783          	lbu	a5,0(a5)
 518:	fef405a3          	sb	a5,-21(s0)
 51c:	feb44783          	lbu	a5,-21(s0)
 520:	0047f793          	and	a5,a5,4
 524:	02078a63          	beqz	a5,558 <_Z18uart_poll_watchdogv+0x64>
 528:	002017b7          	lui	a5,0x201
 52c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 530:	0007c783          	lbu	a5,0(a5)
 534:	fef40523          	sb	a5,-22(s0)
 538:	fea44703          	lbu	a4,-22(s0)
 53c:	05300793          	li	a5,83
 540:	00f71c63          	bne	a4,a5,558 <_Z18uart_poll_watchdogv+0x64>
 544:	050000ef          	jal	594 <_Z7computev>
 548:	00050793          	mv	a5,a0
 54c:	fef404a3          	sb	a5,-23(s0)
 550:	00000013          	nop
 554:	0300006f          	j	584 <_Z18uart_poll_watchdogv+0x90>
 558:	fec42783          	lw	a5,-20(s0)
 55c:	00178793          	add	a5,a5,1
 560:	fef42623          	sw	a5,-20(s0)
 564:	fec42703          	lw	a4,-20(s0)
 568:	000027b7          	lui	a5,0x2
 56c:	70f78793          	add	a5,a5,1807 # 270f <_Z9gpio_demoi+0x2023>
 570:	f8e7dee3          	bge	a5,a4,50c <_Z18uart_poll_watchdogv+0x18>
 574:	03f00513          	li	a0,63
 578:	c39ff0ef          	jal	1b0 <_Z9uart_putcc>
 57c:	00000013          	nop
 580:	00000013          	nop
 584:	01c12083          	lw	ra,28(sp)
 588:	01812403          	lw	s0,24(sp)
 58c:	02010113          	add	sp,sp,32
 590:	00008067          	ret

00000594 <_Z7computev>:
 594:	fb010113          	add	sp,sp,-80
 598:	04112623          	sw	ra,76(sp)
 59c:	04812423          	sw	s0,72(sp)
 5a0:	05212223          	sw	s2,68(sp)
 5a4:	05312023          	sw	s3,64(sp)
 5a8:	03412e23          	sw	s4,60(sp)
 5ac:	03512c23          	sw	s5,56(sp)
 5b0:	05010413          	add	s0,sp,80
 5b4:	00000793          	li	a5,0
 5b8:	00000813          	li	a6,0
 5bc:	fcf42c23          	sw	a5,-40(s0)
 5c0:	fd042e23          	sw	a6,-36(s0)
 5c4:	fc042a23          	sw	zero,-44(s0)
 5c8:	05c00793          	li	a5,92
 5cc:	fcf42823          	sw	a5,-48(s0)
 5d0:	fff00793          	li	a5,-1
 5d4:	fcf407a3          	sb	a5,-49(s0)
 5d8:	002017b7          	lui	a5,0x201
 5dc:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 5e0:	0007a783          	lw	a5,0(a5)
 5e4:	fcf42423          	sw	a5,-56(s0)
 5e8:	002017b7          	lui	a5,0x201
 5ec:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 5f0:	0007a783          	lw	a5,0(a5)
 5f4:	fcf42223          	sw	a5,-60(s0)
 5f8:	fd042503          	lw	a0,-48(s0)
 5fc:	c39ff0ef          	jal	234 <_Z8fib_iteri>
 600:	fca42c23          	sw	a0,-40(s0)
 604:	fcb42e23          	sw	a1,-36(s0)
 608:	00000013          	nop
 60c:	002017b7          	lui	a5,0x201
 610:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 614:	0007a783          	lw	a5,0(a5)
 618:	fcf42023          	sw	a5,-64(s0)
 61c:	002017b7          	lui	a5,0x201
 620:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 624:	0007a783          	lw	a5,0(a5)
 628:	faf42e23          	sw	a5,-68(s0)
 62c:	fbc42703          	lw	a4,-68(s0)
 630:	fc842783          	lw	a5,-56(s0)
 634:	40f707b3          	sub	a5,a4,a5
 638:	faf42c23          	sw	a5,-72(s0)
 63c:	fc042703          	lw	a4,-64(s0)
 640:	fc442783          	lw	a5,-60(s0)
 644:	40f707b3          	sub	a5,a4,a5
 648:	faf42a23          	sw	a5,-76(s0)
 64c:	05900513          	li	a0,89
 650:	b61ff0ef          	jal	1b0 <_Z9uart_putcc>
 654:	00000013          	nop
 658:	fb842783          	lw	a5,-72(s0)
 65c:	00078a13          	mv	s4,a5
 660:	41f7d793          	sra	a5,a5,0x1f
 664:	00078a93          	mv	s5,a5
 668:	000a0513          	mv	a0,s4
 66c:	000a8593          	mv	a1,s5
 670:	d3dff0ef          	jal	3ac <_Z11dump_resultx>
 674:	00000013          	nop
 678:	05200513          	li	a0,82
 67c:	b35ff0ef          	jal	1b0 <_Z9uart_putcc>
 680:	00000013          	nop
 684:	fb442783          	lw	a5,-76(s0)
 688:	00078913          	mv	s2,a5
 68c:	41f7d793          	sra	a5,a5,0x1f
 690:	00078993          	mv	s3,a5
 694:	00090513          	mv	a0,s2
 698:	00098593          	mv	a1,s3
 69c:	d11ff0ef          	jal	3ac <_Z11dump_resultx>
 6a0:	00000013          	nop
 6a4:	00000013          	nop
 6a8:	fd842503          	lw	a0,-40(s0)
 6ac:	fdc42583          	lw	a1,-36(s0)
 6b0:	cfdff0ef          	jal	3ac <_Z11dump_resultx>
 6b4:	00000013          	nop
 6b8:	04300513          	li	a0,67
 6bc:	af5ff0ef          	jal	1b0 <_Z9uart_putcc>
 6c0:	00000013          	nop
 6c4:	fcf44783          	lbu	a5,-49(s0)
 6c8:	00078513          	mv	a0,a5
 6cc:	04c12083          	lw	ra,76(sp)
 6d0:	04812403          	lw	s0,72(sp)
 6d4:	04412903          	lw	s2,68(sp)
 6d8:	04012983          	lw	s3,64(sp)
 6dc:	03c12a03          	lw	s4,60(sp)
 6e0:	03812a83          	lw	s5,56(sp)
 6e4:	05010113          	add	sp,sp,80
 6e8:	00008067          	ret

000006ec <_Z9gpio_demoi>:
 6ec:	fd010113          	add	sp,sp,-48
 6f0:	02812623          	sw	s0,44(sp)
 6f4:	03010413          	add	s0,sp,48
 6f8:	fca42e23          	sw	a0,-36(s0)
 6fc:	fe0407a3          	sb	zero,-17(s0)
 700:	0700006f          	j	770 <_Z9gpio_demoi+0x84>
 704:	fe042423          	sw	zero,-24(s0)
 708:	002017b7          	lui	a5,0x201
 70c:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 710:	00c00713          	li	a4,12
 714:	00e7a023          	sw	a4,0(a5)
 718:	0100006f          	j	728 <_Z9gpio_demoi+0x3c>
 71c:	fe842783          	lw	a5,-24(s0)
 720:	00178793          	add	a5,a5,1
 724:	fef42423          	sw	a5,-24(s0)
 728:	fe842703          	lw	a4,-24(s0)
 72c:	fdc42783          	lw	a5,-36(s0)
 730:	fef746e3          	blt	a4,a5,71c <_Z9gpio_demoi+0x30>
 734:	fe042423          	sw	zero,-24(s0)
 738:	002017b7          	lui	a5,0x201
 73c:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 740:	00d00713          	li	a4,13
 744:	00e7a023          	sw	a4,0(a5)
 748:	0100006f          	j	758 <_Z9gpio_demoi+0x6c>
 74c:	fe842783          	lw	a5,-24(s0)
 750:	00178793          	add	a5,a5,1
 754:	fef42423          	sw	a5,-24(s0)
 758:	fe842703          	lw	a4,-24(s0)
 75c:	fdc42783          	lw	a5,-36(s0)
 760:	fef746e3          	blt	a4,a5,74c <_Z9gpio_demoi+0x60>
 764:	fef44783          	lbu	a5,-17(s0)
 768:	00178793          	add	a5,a5,1
 76c:	fef407a3          	sb	a5,-17(s0)
 770:	fef44703          	lbu	a4,-17(s0)
 774:	00f00793          	li	a5,15
 778:	f8e7f6e3          	bgeu	a5,a4,704 <_Z9gpio_demoi+0x18>
 77c:	002017b7          	lui	a5,0x201
 780:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 784:	0007a023          	sw	zero,0(a5)
 788:	002017b7          	lui	a5,0x201
 78c:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
 790:	0007a023          	sw	zero,0(a5)
 794:	00000013          	nop
 798:	02c12403          	lw	s0,44(sp)
 79c:	03010113          	add	sp,sp,48
 7a0:	00008067          	ret
