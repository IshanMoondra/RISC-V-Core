
/out/instrument_cpi_v1.elf:     file format elf32-littleriscv


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
  7c:	784040ef          	jal	4800 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	778040ef          	jal	4800 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	01c12083          	lw	ra,28(sp)
  98:	01812403          	lw	s0,24(sp)
  9c:	02010113          	add	sp,sp,32
  a0:	00008067          	ret

000000a4 <main>:
  a4:	ff010113          	add	sp,sp,-16
  a8:	00112623          	sw	ra,12(sp)
  ac:	00812423          	sw	s0,8(sp)
  b0:	01212223          	sw	s2,4(sp)
  b4:	01312023          	sw	s3,0(sp)
  b8:	01010413          	add	s0,sp,16
  bc:	f65ff0ef          	jal	20 <_Z10soc_bootupv>
  c0:	00000013          	nop
  c4:	050000ef          	jal	114 <_Z18uart_poll_watchdogv>
  c8:	00000013          	nop
  cc:	002017b7          	lui	a5,0x201
  d0:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
  d4:	0007a783          	lw	a5,0(a5)
  d8:	00078913          	mv	s2,a5
  dc:	41f7d793          	sra	a5,a5,0x1f
  e0:	00078993          	mv	s3,a5
  e4:	00090513          	mv	a0,s2
  e8:	00098593          	mv	a1,s3
  ec:	798040ef          	jal	4884 <_Z11dump_resultx>
  f0:	00000013          	nop
  f4:	00000793          	li	a5,0
  f8:	00078513          	mv	a0,a5
  fc:	00c12083          	lw	ra,12(sp)
 100:	00812403          	lw	s0,8(sp)
 104:	00412903          	lw	s2,4(sp)
 108:	00012983          	lw	s3,0(sp)
 10c:	01010113          	add	sp,sp,16
 110:	00008067          	ret

00000114 <_Z18uart_poll_watchdogv>:
 114:	fe010113          	add	sp,sp,-32
 118:	00112e23          	sw	ra,28(sp)
 11c:	00812c23          	sw	s0,24(sp)
 120:	02010413          	add	s0,sp,32
 124:	fe042623          	sw	zero,-20(s0)
 128:	03f00513          	li	a0,63
 12c:	6d4040ef          	jal	4800 <_Z9uart_putcc>
 130:	00000013          	nop
 134:	0dc030ef          	jal	3210 <_Z7computev>
 138:	00050793          	mv	a5,a0
 13c:	fef405a3          	sb	a5,-21(s0)
 140:	00000013          	nop
 144:	03200513          	li	a0,50
 148:	2b9010ef          	jal	1c00 <_Z9gpio_demoi>
 14c:	00000013          	nop
 150:	00000013          	nop
 154:	01c12083          	lw	ra,28(sp)
 158:	01812403          	lw	s0,24(sp)
 15c:	02010113          	add	sp,sp,32
 160:	00008067          	ret

00000164 <_ZZ7computevENKUlvE_clEv>:
 164:	fe010113          	add	sp,sp,-32
 168:	00112e23          	sw	ra,28(sp)
 16c:	00812c23          	sw	s0,24(sp)
 170:	02010413          	add	s0,sp,32
 174:	fea42623          	sw	a0,-20(s0)
 178:	fec42783          	lw	a5,-20(s0)
 17c:	0007a783          	lw	a5,0(a5)
 180:	0007a783          	lw	a5,0(a5)
 184:	00078513          	mv	a0,a5
 188:	6f9020ef          	jal	3080 <_Z8fib_iteri>
 18c:	00050713          	mv	a4,a0
 190:	00058793          	mv	a5,a1
 194:	00070513          	mv	a0,a4
 198:	00078593          	mv	a1,a5
 19c:	01c12083          	lw	ra,28(sp)
 1a0:	01812403          	lw	s0,24(sp)
 1a4:	02010113          	add	sp,sp,32
 1a8:	00008067          	ret

000001ac <_Z14instrument_cpiIZ7computevEUlvE_EDaOT_>:
 1ac:	fb010113          	add	sp,sp,-80
 1b0:	04112623          	sw	ra,76(sp)
 1b4:	04812423          	sw	s0,72(sp)
 1b8:	05212223          	sw	s2,68(sp)
 1bc:	05312023          	sw	s3,64(sp)
 1c0:	03412e23          	sw	s4,60(sp)
 1c4:	03512c23          	sw	s5,56(sp)
 1c8:	05010413          	add	s0,sp,80
 1cc:	faa42e23          	sw	a0,-68(s0)
 1d0:	002017b7          	lui	a5,0x201
 1d4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 1d8:	0007a783          	lw	a5,0(a5)
 1dc:	fcf42e23          	sw	a5,-36(s0)
 1e0:	002017b7          	lui	a5,0x201
 1e4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 1e8:	0007a783          	lw	a5,0(a5)
 1ec:	fcf42c23          	sw	a5,-40(s0)
 1f0:	fbc42503          	lw	a0,-68(s0)
 1f4:	f71ff0ef          	jal	164 <_ZZ7computevENKUlvE_clEv>
 1f8:	fca42823          	sw	a0,-48(s0)
 1fc:	fcb42a23          	sw	a1,-44(s0)
 200:	00000013          	nop
 204:	002017b7          	lui	a5,0x201
 208:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 20c:	0007a783          	lw	a5,0(a5)
 210:	fcf42623          	sw	a5,-52(s0)
 214:	002017b7          	lui	a5,0x201
 218:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 21c:	0007a783          	lw	a5,0(a5)
 220:	fcf42423          	sw	a5,-56(s0)
 224:	fc842703          	lw	a4,-56(s0)
 228:	fdc42783          	lw	a5,-36(s0)
 22c:	40f707b3          	sub	a5,a4,a5
 230:	fcf42223          	sw	a5,-60(s0)
 234:	fcc42703          	lw	a4,-52(s0)
 238:	fd842783          	lw	a5,-40(s0)
 23c:	40f707b3          	sub	a5,a4,a5
 240:	fcf42023          	sw	a5,-64(s0)
 244:	05900513          	li	a0,89
 248:	5b8040ef          	jal	4800 <_Z9uart_putcc>
 24c:	00000013          	nop
 250:	fc442783          	lw	a5,-60(s0)
 254:	00078a13          	mv	s4,a5
 258:	41f7d793          	sra	a5,a5,0x1f
 25c:	00078a93          	mv	s5,a5
 260:	000a0513          	mv	a0,s4
 264:	000a8593          	mv	a1,s5
 268:	61c040ef          	jal	4884 <_Z11dump_resultx>
 26c:	00000013          	nop
 270:	05200513          	li	a0,82
 274:	58c040ef          	jal	4800 <_Z9uart_putcc>
 278:	00000013          	nop
 27c:	fc042783          	lw	a5,-64(s0)
 280:	00078913          	mv	s2,a5
 284:	41f7d793          	sra	a5,a5,0x1f
 288:	00078993          	mv	s3,a5
 28c:	00090513          	mv	a0,s2
 290:	00098593          	mv	a1,s3
 294:	5f0040ef          	jal	4884 <_Z11dump_resultx>
 298:	00000013          	nop
 29c:	fd042703          	lw	a4,-48(s0)
 2a0:	fd442783          	lw	a5,-44(s0)
 2a4:	00070513          	mv	a0,a4
 2a8:	00078593          	mv	a1,a5
 2ac:	04c12083          	lw	ra,76(sp)
 2b0:	04812403          	lw	s0,72(sp)
 2b4:	04412903          	lw	s2,68(sp)
 2b8:	04012983          	lw	s3,64(sp)
 2bc:	03c12a03          	lw	s4,60(sp)
 2c0:	03812a83          	lw	s5,56(sp)
 2c4:	05010113          	add	sp,sp,80
 2c8:	00008067          	ret

000002cc <_ZZ7computevENKUlvE0_clEv>:
 2cc:	fe010113          	add	sp,sp,-32
 2d0:	00112e23          	sw	ra,28(sp)
 2d4:	00812c23          	sw	s0,24(sp)
 2d8:	02010413          	add	s0,sp,32
 2dc:	fea42623          	sw	a0,-20(s0)
 2e0:	fec42783          	lw	a5,-20(s0)
 2e4:	0007a783          	lw	a5,0(a5)
 2e8:	0007a783          	lw	a5,0(a5)
 2ec:	00078513          	mv	a0,a5
 2f0:	67d020ef          	jal	316c <_Z13fib_recursivei>
 2f4:	00050713          	mv	a4,a0
 2f8:	00058793          	mv	a5,a1
 2fc:	00070513          	mv	a0,a4
 300:	00078593          	mv	a1,a5
 304:	01c12083          	lw	ra,28(sp)
 308:	01812403          	lw	s0,24(sp)
 30c:	02010113          	add	sp,sp,32
 310:	00008067          	ret

00000314 <_Z14instrument_cpiIZ7computevEUlvE0_EDaOT_>:
 314:	fb010113          	add	sp,sp,-80
 318:	04112623          	sw	ra,76(sp)
 31c:	04812423          	sw	s0,72(sp)
 320:	05212223          	sw	s2,68(sp)
 324:	05312023          	sw	s3,64(sp)
 328:	03412e23          	sw	s4,60(sp)
 32c:	03512c23          	sw	s5,56(sp)
 330:	05010413          	add	s0,sp,80
 334:	faa42e23          	sw	a0,-68(s0)
 338:	002017b7          	lui	a5,0x201
 33c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 340:	0007a783          	lw	a5,0(a5)
 344:	fcf42e23          	sw	a5,-36(s0)
 348:	002017b7          	lui	a5,0x201
 34c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 350:	0007a783          	lw	a5,0(a5)
 354:	fcf42c23          	sw	a5,-40(s0)
 358:	fbc42503          	lw	a0,-68(s0)
 35c:	f71ff0ef          	jal	2cc <_ZZ7computevENKUlvE0_clEv>
 360:	00050713          	mv	a4,a0
 364:	00058793          	mv	a5,a1
 368:	fce42823          	sw	a4,-48(s0)
 36c:	fcf42a23          	sw	a5,-44(s0)
 370:	00000013          	nop
 374:	002017b7          	lui	a5,0x201
 378:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 37c:	0007a783          	lw	a5,0(a5)
 380:	fcf42623          	sw	a5,-52(s0)
 384:	002017b7          	lui	a5,0x201
 388:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 38c:	0007a783          	lw	a5,0(a5)
 390:	fcf42423          	sw	a5,-56(s0)
 394:	fc842703          	lw	a4,-56(s0)
 398:	fdc42783          	lw	a5,-36(s0)
 39c:	40f707b3          	sub	a5,a4,a5
 3a0:	fcf42223          	sw	a5,-60(s0)
 3a4:	fcc42703          	lw	a4,-52(s0)
 3a8:	fd842783          	lw	a5,-40(s0)
 3ac:	40f707b3          	sub	a5,a4,a5
 3b0:	fcf42023          	sw	a5,-64(s0)
 3b4:	05900513          	li	a0,89
 3b8:	448040ef          	jal	4800 <_Z9uart_putcc>
 3bc:	00000013          	nop
 3c0:	fc442783          	lw	a5,-60(s0)
 3c4:	00078a13          	mv	s4,a5
 3c8:	41f7d793          	sra	a5,a5,0x1f
 3cc:	00078a93          	mv	s5,a5
 3d0:	000a0513          	mv	a0,s4
 3d4:	000a8593          	mv	a1,s5
 3d8:	4ac040ef          	jal	4884 <_Z11dump_resultx>
 3dc:	00000013          	nop
 3e0:	05200513          	li	a0,82
 3e4:	41c040ef          	jal	4800 <_Z9uart_putcc>
 3e8:	00000013          	nop
 3ec:	fc042783          	lw	a5,-64(s0)
 3f0:	00078913          	mv	s2,a5
 3f4:	41f7d793          	sra	a5,a5,0x1f
 3f8:	00078993          	mv	s3,a5
 3fc:	00090513          	mv	a0,s2
 400:	00098593          	mv	a1,s3
 404:	480040ef          	jal	4884 <_Z11dump_resultx>
 408:	00000013          	nop
 40c:	fd042703          	lw	a4,-48(s0)
 410:	fd442783          	lw	a5,-44(s0)
 414:	00070513          	mv	a0,a4
 418:	00078593          	mv	a1,a5
 41c:	04c12083          	lw	ra,76(sp)
 420:	04812403          	lw	s0,72(sp)
 424:	04412903          	lw	s2,68(sp)
 428:	04012983          	lw	s3,64(sp)
 42c:	03c12a03          	lw	s4,60(sp)
 430:	03812a83          	lw	s5,56(sp)
 434:	05010113          	add	sp,sp,80
 438:	00008067          	ret

0000043c <_ZZ7computevENKUlvE1_clEv>:
 43c:	fe010113          	add	sp,sp,-32
 440:	00112e23          	sw	ra,28(sp)
 444:	00812c23          	sw	s0,24(sp)
 448:	02010413          	add	s0,sp,32
 44c:	fea42623          	sw	a0,-20(s0)
 450:	fec42783          	lw	a5,-20(s0)
 454:	0007a783          	lw	a5,0(a5)
 458:	0007a703          	lw	a4,0(a5)
 45c:	fec42783          	lw	a5,-20(s0)
 460:	0047a783          	lw	a5,4(a5)
 464:	0007a783          	lw	a5,0(a5)
 468:	00078593          	mv	a1,a5
 46c:	00070513          	mv	a0,a4
 470:	391020ef          	jal	3000 <_Z3addii>
 474:	00050793          	mv	a5,a0
 478:	00078513          	mv	a0,a5
 47c:	01c12083          	lw	ra,28(sp)
 480:	01812403          	lw	s0,24(sp)
 484:	02010113          	add	sp,sp,32
 488:	00008067          	ret

0000048c <_Z14instrument_cpiIZ7computevEUlvE1_EDaOT_>:
 48c:	fb010113          	add	sp,sp,-80
 490:	04112623          	sw	ra,76(sp)
 494:	04812423          	sw	s0,72(sp)
 498:	05212223          	sw	s2,68(sp)
 49c:	05312023          	sw	s3,64(sp)
 4a0:	03412e23          	sw	s4,60(sp)
 4a4:	03512c23          	sw	s5,56(sp)
 4a8:	05010413          	add	s0,sp,80
 4ac:	faa42e23          	sw	a0,-68(s0)
 4b0:	002017b7          	lui	a5,0x201
 4b4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 4b8:	0007a783          	lw	a5,0(a5)
 4bc:	fcf42e23          	sw	a5,-36(s0)
 4c0:	002017b7          	lui	a5,0x201
 4c4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 4c8:	0007a783          	lw	a5,0(a5)
 4cc:	fcf42c23          	sw	a5,-40(s0)
 4d0:	fbc42503          	lw	a0,-68(s0)
 4d4:	f69ff0ef          	jal	43c <_ZZ7computevENKUlvE1_clEv>
 4d8:	fca42a23          	sw	a0,-44(s0)
 4dc:	00000013          	nop
 4e0:	002017b7          	lui	a5,0x201
 4e4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 4e8:	0007a783          	lw	a5,0(a5)
 4ec:	fcf42823          	sw	a5,-48(s0)
 4f0:	002017b7          	lui	a5,0x201
 4f4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 4f8:	0007a783          	lw	a5,0(a5)
 4fc:	fcf42623          	sw	a5,-52(s0)
 500:	fcc42703          	lw	a4,-52(s0)
 504:	fdc42783          	lw	a5,-36(s0)
 508:	40f707b3          	sub	a5,a4,a5
 50c:	fcf42423          	sw	a5,-56(s0)
 510:	fd042703          	lw	a4,-48(s0)
 514:	fd842783          	lw	a5,-40(s0)
 518:	40f707b3          	sub	a5,a4,a5
 51c:	fcf42223          	sw	a5,-60(s0)
 520:	05900513          	li	a0,89
 524:	2dc040ef          	jal	4800 <_Z9uart_putcc>
 528:	00000013          	nop
 52c:	fc842783          	lw	a5,-56(s0)
 530:	00078a13          	mv	s4,a5
 534:	41f7d793          	sra	a5,a5,0x1f
 538:	00078a93          	mv	s5,a5
 53c:	000a0513          	mv	a0,s4
 540:	000a8593          	mv	a1,s5
 544:	340040ef          	jal	4884 <_Z11dump_resultx>
 548:	00000013          	nop
 54c:	05200513          	li	a0,82
 550:	2b0040ef          	jal	4800 <_Z9uart_putcc>
 554:	00000013          	nop
 558:	fc442783          	lw	a5,-60(s0)
 55c:	00078913          	mv	s2,a5
 560:	41f7d793          	sra	a5,a5,0x1f
 564:	00078993          	mv	s3,a5
 568:	00090513          	mv	a0,s2
 56c:	00098593          	mv	a1,s3
 570:	314040ef          	jal	4884 <_Z11dump_resultx>
 574:	00000013          	nop
 578:	fd442783          	lw	a5,-44(s0)
 57c:	00078513          	mv	a0,a5
 580:	04c12083          	lw	ra,76(sp)
 584:	04812403          	lw	s0,72(sp)
 588:	04412903          	lw	s2,68(sp)
 58c:	04012983          	lw	s3,64(sp)
 590:	03c12a03          	lw	s4,60(sp)
 594:	03812a83          	lw	s5,56(sp)
 598:	05010113          	add	sp,sp,80
 59c:	00008067          	ret

000005a0 <_ZZ7computevENKUlvE2_clEv>:
 5a0:	fe010113          	add	sp,sp,-32
 5a4:	00112e23          	sw	ra,28(sp)
 5a8:	00812c23          	sw	s0,24(sp)
 5ac:	02010413          	add	s0,sp,32
 5b0:	fea42623          	sw	a0,-20(s0)
 5b4:	fec42783          	lw	a5,-20(s0)
 5b8:	0007a703          	lw	a4,0(a5)
 5bc:	fec42783          	lw	a5,-20(s0)
 5c0:	0047a683          	lw	a3,4(a5)
 5c4:	fec42783          	lw	a5,-20(s0)
 5c8:	0087a783          	lw	a5,8(a5)
 5cc:	00078613          	mv	a2,a5
 5d0:	00068593          	mv	a1,a3
 5d4:	00070513          	mv	a0,a4
 5d8:	261020ef          	jal	3038 <_Z7add_ptrPViS0_S0_>
 5dc:	00050793          	mv	a5,a0
 5e0:	00078513          	mv	a0,a5
 5e4:	01c12083          	lw	ra,28(sp)
 5e8:	01812403          	lw	s0,24(sp)
 5ec:	02010113          	add	sp,sp,32
 5f0:	00008067          	ret

000005f4 <_Z14instrument_cpiIZ7computevEUlvE2_EDaOT_>:
 5f4:	fb010113          	add	sp,sp,-80
 5f8:	04112623          	sw	ra,76(sp)
 5fc:	04812423          	sw	s0,72(sp)
 600:	05212223          	sw	s2,68(sp)
 604:	05312023          	sw	s3,64(sp)
 608:	03412e23          	sw	s4,60(sp)
 60c:	03512c23          	sw	s5,56(sp)
 610:	05010413          	add	s0,sp,80
 614:	faa42e23          	sw	a0,-68(s0)
 618:	002017b7          	lui	a5,0x201
 61c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 620:	0007a783          	lw	a5,0(a5)
 624:	fcf42e23          	sw	a5,-36(s0)
 628:	002017b7          	lui	a5,0x201
 62c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 630:	0007a783          	lw	a5,0(a5)
 634:	fcf42c23          	sw	a5,-40(s0)
 638:	fbc42503          	lw	a0,-68(s0)
 63c:	f65ff0ef          	jal	5a0 <_ZZ7computevENKUlvE2_clEv>
 640:	fca42a23          	sw	a0,-44(s0)
 644:	00000013          	nop
 648:	002017b7          	lui	a5,0x201
 64c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 650:	0007a783          	lw	a5,0(a5)
 654:	fcf42823          	sw	a5,-48(s0)
 658:	002017b7          	lui	a5,0x201
 65c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 660:	0007a783          	lw	a5,0(a5)
 664:	fcf42623          	sw	a5,-52(s0)
 668:	fcc42703          	lw	a4,-52(s0)
 66c:	fdc42783          	lw	a5,-36(s0)
 670:	40f707b3          	sub	a5,a4,a5
 674:	fcf42423          	sw	a5,-56(s0)
 678:	fd042703          	lw	a4,-48(s0)
 67c:	fd842783          	lw	a5,-40(s0)
 680:	40f707b3          	sub	a5,a4,a5
 684:	fcf42223          	sw	a5,-60(s0)
 688:	05900513          	li	a0,89
 68c:	174040ef          	jal	4800 <_Z9uart_putcc>
 690:	00000013          	nop
 694:	fc842783          	lw	a5,-56(s0)
 698:	00078a13          	mv	s4,a5
 69c:	41f7d793          	sra	a5,a5,0x1f
 6a0:	00078a93          	mv	s5,a5
 6a4:	000a0513          	mv	a0,s4
 6a8:	000a8593          	mv	a1,s5
 6ac:	1d8040ef          	jal	4884 <_Z11dump_resultx>
 6b0:	00000013          	nop
 6b4:	05200513          	li	a0,82
 6b8:	148040ef          	jal	4800 <_Z9uart_putcc>
 6bc:	00000013          	nop
 6c0:	fc442783          	lw	a5,-60(s0)
 6c4:	00078913          	mv	s2,a5
 6c8:	41f7d793          	sra	a5,a5,0x1f
 6cc:	00078993          	mv	s3,a5
 6d0:	00090513          	mv	a0,s2
 6d4:	00098593          	mv	a1,s3
 6d8:	1ac040ef          	jal	4884 <_Z11dump_resultx>
 6dc:	00000013          	nop
 6e0:	fd442783          	lw	a5,-44(s0)
 6e4:	00078513          	mv	a0,a5
 6e8:	04c12083          	lw	ra,76(sp)
 6ec:	04812403          	lw	s0,72(sp)
 6f0:	04412903          	lw	s2,68(sp)
 6f4:	04012983          	lw	s3,64(sp)
 6f8:	03c12a03          	lw	s4,60(sp)
 6fc:	03812a83          	lw	s5,56(sp)
 700:	05010113          	add	sp,sp,80
 704:	00008067          	ret

Disassembly of section .spi_gpio:

00000c00 <_Z9gpio_demoi-0x1000>:
	...

00001c00 <_Z9gpio_demoi>:
    1c00:	fd010113          	add	sp,sp,-48
    1c04:	02812623          	sw	s0,44(sp)
    1c08:	03010413          	add	s0,sp,48
    1c0c:	fca42e23          	sw	a0,-36(s0)
    1c10:	fe0407a3          	sb	zero,-17(s0)
    1c14:	0700006f          	j	1c84 <_Z9gpio_demoi+0x84>
    1c18:	fe042423          	sw	zero,-24(s0)
    1c1c:	002017b7          	lui	a5,0x201
    1c20:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1c24:	00c00713          	li	a4,12
    1c28:	00e7a023          	sw	a4,0(a5)
    1c2c:	0100006f          	j	1c3c <_Z9gpio_demoi+0x3c>
    1c30:	fe842783          	lw	a5,-24(s0)
    1c34:	00178793          	add	a5,a5,1
    1c38:	fef42423          	sw	a5,-24(s0)
    1c3c:	fe842703          	lw	a4,-24(s0)
    1c40:	fdc42783          	lw	a5,-36(s0)
    1c44:	fef746e3          	blt	a4,a5,1c30 <_Z9gpio_demoi+0x30>
    1c48:	fe042423          	sw	zero,-24(s0)
    1c4c:	002017b7          	lui	a5,0x201
    1c50:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1c54:	00d00713          	li	a4,13
    1c58:	00e7a023          	sw	a4,0(a5)
    1c5c:	0100006f          	j	1c6c <_Z9gpio_demoi+0x6c>
    1c60:	fe842783          	lw	a5,-24(s0)
    1c64:	00178793          	add	a5,a5,1
    1c68:	fef42423          	sw	a5,-24(s0)
    1c6c:	fe842703          	lw	a4,-24(s0)
    1c70:	fdc42783          	lw	a5,-36(s0)
    1c74:	fef746e3          	blt	a4,a5,1c60 <_Z9gpio_demoi+0x60>
    1c78:	fef44783          	lbu	a5,-17(s0)
    1c7c:	00178793          	add	a5,a5,1
    1c80:	fef407a3          	sb	a5,-17(s0)
    1c84:	fef44703          	lbu	a4,-17(s0)
    1c88:	00f00793          	li	a5,15
    1c8c:	f8e7f6e3          	bgeu	a5,a4,1c18 <_Z9gpio_demoi+0x18>
    1c90:	002017b7          	lui	a5,0x201
    1c94:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1c98:	0007a023          	sw	zero,0(a5)
    1c9c:	002017b7          	lui	a5,0x201
    1ca0:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
    1ca4:	0007a023          	sw	zero,0(a5)
    1ca8:	00000013          	nop
    1cac:	02c12403          	lw	s0,44(sp)
    1cb0:	03010113          	add	sp,sp,48
    1cb4:	00008067          	ret

Disassembly of section .spi_compute:

00002000 <_Z3addii-0x1000>:
	...

00003000 <_Z3addii>:
    3000:	fd010113          	add	sp,sp,-48
    3004:	02812623          	sw	s0,44(sp)
    3008:	03010413          	add	s0,sp,48
    300c:	fca42e23          	sw	a0,-36(s0)
    3010:	fcb42c23          	sw	a1,-40(s0)
    3014:	fdc42703          	lw	a4,-36(s0)
    3018:	fd842783          	lw	a5,-40(s0)
    301c:	00f707b3          	add	a5,a4,a5
    3020:	fef42623          	sw	a5,-20(s0)
    3024:	fec42783          	lw	a5,-20(s0)
    3028:	00078513          	mv	a0,a5
    302c:	02c12403          	lw	s0,44(sp)
    3030:	03010113          	add	sp,sp,48
    3034:	00008067          	ret

00003038 <_Z7add_ptrPViS0_S0_>:
    3038:	fe010113          	add	sp,sp,-32
    303c:	00812e23          	sw	s0,28(sp)
    3040:	02010413          	add	s0,sp,32
    3044:	fea42623          	sw	a0,-20(s0)
    3048:	feb42423          	sw	a1,-24(s0)
    304c:	fec42223          	sw	a2,-28(s0)
    3050:	fec42783          	lw	a5,-20(s0)
    3054:	0007a703          	lw	a4,0(a5)
    3058:	fe842783          	lw	a5,-24(s0)
    305c:	0007a783          	lw	a5,0(a5)
    3060:	00f70733          	add	a4,a4,a5
    3064:	fe442783          	lw	a5,-28(s0)
    3068:	00e7a023          	sw	a4,0(a5)
    306c:	00000793          	li	a5,0
    3070:	00078513          	mv	a0,a5
    3074:	01c12403          	lw	s0,28(sp)
    3078:	02010113          	add	sp,sp,32
    307c:	00008067          	ret

00003080 <_Z8fib_iteri>:
    3080:	fc010113          	add	sp,sp,-64
    3084:	02812e23          	sw	s0,60(sp)
    3088:	04010413          	add	s0,sp,64
    308c:	fca42623          	sw	a0,-52(s0)
    3090:	00100713          	li	a4,1
    3094:	00000793          	li	a5,0
    3098:	fee42423          	sw	a4,-24(s0)
    309c:	fef42623          	sw	a5,-20(s0)
    30a0:	00000793          	li	a5,0
    30a4:	00000813          	li	a6,0
    30a8:	fef42023          	sw	a5,-32(s0)
    30ac:	ff042223          	sw	a6,-28(s0)
    30b0:	fcf42c23          	sw	a5,-40(s0)
    30b4:	fd042e23          	sw	a6,-36(s0)
    30b8:	fc042a23          	sw	zero,-44(s0)
    30bc:	fcc42703          	lw	a4,-52(s0)
    30c0:	05d00793          	li	a5,93
    30c4:	00e7d863          	bge	a5,a4,30d4 <_Z8fib_iteri+0x54>
    30c8:	05c00793          	li	a5,92
    30cc:	fcf42a23          	sw	a5,-44(s0)
    30d0:	00c0006f          	j	30dc <_Z8fib_iteri+0x5c>
    30d4:	fcc42783          	lw	a5,-52(s0)
    30d8:	fcf42a23          	sw	a5,-44(s0)
    30dc:	00100793          	li	a5,1
    30e0:	fcf42823          	sw	a5,-48(s0)
    30e4:	0600006f          	j	3144 <_Z8fib_iteri+0xc4>
    30e8:	fe842603          	lw	a2,-24(s0)
    30ec:	fec42683          	lw	a3,-20(s0)
    30f0:	fe042503          	lw	a0,-32(s0)
    30f4:	fe442583          	lw	a1,-28(s0)
    30f8:	00a60733          	add	a4,a2,a0
    30fc:	00070813          	mv	a6,a4
    3100:	00c83833          	sltu	a6,a6,a2
    3104:	00b687b3          	add	a5,a3,a1
    3108:	00f806b3          	add	a3,a6,a5
    310c:	00068793          	mv	a5,a3
    3110:	fce42c23          	sw	a4,-40(s0)
    3114:	fcf42e23          	sw	a5,-36(s0)
    3118:	fe842703          	lw	a4,-24(s0)
    311c:	fec42783          	lw	a5,-20(s0)
    3120:	fee42023          	sw	a4,-32(s0)
    3124:	fef42223          	sw	a5,-28(s0)
    3128:	fd842703          	lw	a4,-40(s0)
    312c:	fdc42783          	lw	a5,-36(s0)
    3130:	fee42423          	sw	a4,-24(s0)
    3134:	fef42623          	sw	a5,-20(s0)
    3138:	fd042783          	lw	a5,-48(s0)
    313c:	00178793          	add	a5,a5,1
    3140:	fcf42823          	sw	a5,-48(s0)
    3144:	fd042703          	lw	a4,-48(s0)
    3148:	fd442783          	lw	a5,-44(s0)
    314c:	f8f74ee3          	blt	a4,a5,30e8 <_Z8fib_iteri+0x68>
    3150:	fd842703          	lw	a4,-40(s0)
    3154:	fdc42783          	lw	a5,-36(s0)
    3158:	00070513          	mv	a0,a4
    315c:	00078593          	mv	a1,a5
    3160:	03c12403          	lw	s0,60(sp)
    3164:	04010113          	add	sp,sp,64
    3168:	00008067          	ret

0000316c <_Z13fib_recursivei>:
    316c:	fe010113          	add	sp,sp,-32
    3170:	00112e23          	sw	ra,28(sp)
    3174:	00812c23          	sw	s0,24(sp)
    3178:	01212a23          	sw	s2,20(sp)
    317c:	01312823          	sw	s3,16(sp)
    3180:	02010413          	add	s0,sp,32
    3184:	fea42623          	sw	a0,-20(s0)
    3188:	fec42603          	lw	a2,-20(s0)
    318c:	00100693          	li	a3,1
    3190:	00c6cc63          	blt	a3,a2,31a8 <_Z13fib_recursivei+0x3c>
    3194:	fec42683          	lw	a3,-20(s0)
    3198:	00068713          	mv	a4,a3
    319c:	41f6d693          	sra	a3,a3,0x1f
    31a0:	00068793          	mv	a5,a3
    31a4:	04c0006f          	j	31f0 <_Z13fib_recursivei+0x84>
    31a8:	fec42783          	lw	a5,-20(s0)
    31ac:	fff78793          	add	a5,a5,-1
    31b0:	00078513          	mv	a0,a5
    31b4:	fb9ff0ef          	jal	316c <_Z13fib_recursivei>
    31b8:	00050913          	mv	s2,a0
    31bc:	00058993          	mv	s3,a1
    31c0:	fec42783          	lw	a5,-20(s0)
    31c4:	ffe78793          	add	a5,a5,-2
    31c8:	00078513          	mv	a0,a5
    31cc:	fa1ff0ef          	jal	316c <_Z13fib_recursivei>
    31d0:	00050613          	mv	a2,a0
    31d4:	00058693          	mv	a3,a1
    31d8:	00c90733          	add	a4,s2,a2
    31dc:	00070593          	mv	a1,a4
    31e0:	0125b5b3          	sltu	a1,a1,s2
    31e4:	00d987b3          	add	a5,s3,a3
    31e8:	00f586b3          	add	a3,a1,a5
    31ec:	00068793          	mv	a5,a3
    31f0:	00070513          	mv	a0,a4
    31f4:	00078593          	mv	a1,a5
    31f8:	01c12083          	lw	ra,28(sp)
    31fc:	01812403          	lw	s0,24(sp)
    3200:	01412903          	lw	s2,20(sp)
    3204:	01012983          	lw	s3,16(sp)
    3208:	02010113          	add	sp,sp,32
    320c:	00008067          	ret

00003210 <_Z7computev>:
    3210:	f8010113          	add	sp,sp,-128
    3214:	06112e23          	sw	ra,124(sp)
    3218:	06812c23          	sw	s0,120(sp)
    321c:	07212a23          	sw	s2,116(sp)
    3220:	07312823          	sw	s3,112(sp)
    3224:	07412623          	sw	s4,108(sp)
    3228:	07512423          	sw	s5,104(sp)
    322c:	07612223          	sw	s6,100(sp)
    3230:	07712023          	sw	s7,96(sp)
    3234:	08010413          	add	s0,sp,128
    3238:	00000793          	li	a5,0
    323c:	00000813          	li	a6,0
    3240:	fcf42823          	sw	a5,-48(s0)
    3244:	fd042a23          	sw	a6,-44(s0)
    3248:	fcf42423          	sw	a5,-56(s0)
    324c:	fd042623          	sw	a6,-52(s0)
    3250:	00a00793          	li	a5,10
    3254:	faf42023          	sw	a5,-96(s0)
    3258:	fff00793          	li	a5,-1
    325c:	fcf40fa3          	sb	a5,-33(s0)
    3260:	fa040793          	add	a5,s0,-96
    3264:	faf42223          	sw	a5,-92(s0)
    3268:	fa440793          	add	a5,s0,-92
    326c:	00078513          	mv	a0,a5
    3270:	f3dfc0ef          	jal	1ac <_Z14instrument_cpiIZ7computevEUlvE_EDaOT_>
    3274:	fca42823          	sw	a0,-48(s0)
    3278:	fcb42a23          	sw	a1,-44(s0)
    327c:	00000013          	nop
    3280:	fa040793          	add	a5,s0,-96
    3284:	faf42423          	sw	a5,-88(s0)
    3288:	fa840793          	add	a5,s0,-88
    328c:	00078513          	mv	a0,a5
    3290:	884fd0ef          	jal	314 <_Z14instrument_cpiIZ7computevEUlvE0_EDaOT_>
    3294:	00050713          	mv	a4,a0
    3298:	00058793          	mv	a5,a1
    329c:	fce42423          	sw	a4,-56(s0)
    32a0:	fcf42623          	sw	a5,-52(s0)
    32a4:	00000013          	nop
    32a8:	fd042703          	lw	a4,-48(s0)
    32ac:	fc842783          	lw	a5,-56(s0)
    32b0:	02f71463          	bne	a4,a5,32d8 <_Z7computev+0xc8>
    32b4:	fd442703          	lw	a4,-44(s0)
    32b8:	fcc42783          	lw	a5,-52(s0)
    32bc:	00f71e63          	bne	a4,a5,32d8 <_Z7computev+0xc8>
    32c0:	00100793          	li	a5,1
    32c4:	fcf40fa3          	sb	a5,-33(s0)
    32c8:	05000513          	li	a0,80
    32cc:	534010ef          	jal	4800 <_Z9uart_putcc>
    32d0:	00000013          	nop
    32d4:	0140006f          	j	32e8 <_Z7computev+0xd8>
    32d8:	fc040fa3          	sb	zero,-33(s0)
    32dc:	04600513          	li	a0,70
    32e0:	520010ef          	jal	4800 <_Z9uart_putcc>
    32e4:	00000013          	nop
    32e8:	00000013          	nop
    32ec:	fd042503          	lw	a0,-48(s0)
    32f0:	fd442583          	lw	a1,-44(s0)
    32f4:	590010ef          	jal	4884 <_Z11dump_resultx>
    32f8:	00000013          	nop
    32fc:	04300513          	li	a0,67
    3300:	500010ef          	jal	4800 <_Z9uart_putcc>
    3304:	00000013          	nop
    3308:	05000793          	li	a5,80
    330c:	f8f42e23          	sw	a5,-100(s0)
    3310:	00500793          	li	a5,5
    3314:	f8f42c23          	sw	a5,-104(s0)
    3318:	fc042223          	sw	zero,-60(s0)
    331c:	f9c40793          	add	a5,s0,-100
    3320:	faf42623          	sw	a5,-84(s0)
    3324:	f9840793          	add	a5,s0,-104
    3328:	faf42823          	sw	a5,-80(s0)
    332c:	fac40793          	add	a5,s0,-84
    3330:	00078513          	mv	a0,a5
    3334:	958fd0ef          	jal	48c <_Z14instrument_cpiIZ7computevEUlvE1_EDaOT_>
    3338:	fca42223          	sw	a0,-60(s0)
    333c:	fc442783          	lw	a5,-60(s0)
    3340:	00078b13          	mv	s6,a5
    3344:	41f7d793          	sra	a5,a5,0x1f
    3348:	00078b93          	mv	s7,a5
    334c:	000b0513          	mv	a0,s6
    3350:	000b8593          	mv	a1,s7
    3354:	530010ef          	jal	4884 <_Z11dump_resultx>
    3358:	00000013          	nop
    335c:	02300793          	li	a5,35
    3360:	f8f42a23          	sw	a5,-108(s0)
    3364:	05500793          	li	a5,85
    3368:	f8f42823          	sw	a5,-112(s0)
    336c:	f8042623          	sw	zero,-116(s0)
    3370:	fc042023          	sw	zero,-64(s0)
    3374:	f9440793          	add	a5,s0,-108
    3378:	faf42a23          	sw	a5,-76(s0)
    337c:	f9040793          	add	a5,s0,-112
    3380:	faf42c23          	sw	a5,-72(s0)
    3384:	f8c40793          	add	a5,s0,-116
    3388:	faf42e23          	sw	a5,-68(s0)
    338c:	fb440793          	add	a5,s0,-76
    3390:	00078513          	mv	a0,a5
    3394:	a60fd0ef          	jal	5f4 <_Z14instrument_cpiIZ7computevEUlvE2_EDaOT_>
    3398:	fca42023          	sw	a0,-64(s0)
    339c:	f8c40793          	add	a5,s0,-116
    33a0:	00078a13          	mv	s4,a5
    33a4:	41f7d793          	sra	a5,a5,0x1f
    33a8:	00078a93          	mv	s5,a5
    33ac:	000a0513          	mv	a0,s4
    33b0:	000a8593          	mv	a1,s5
    33b4:	4d0010ef          	jal	4884 <_Z11dump_resultx>
    33b8:	00000013          	nop
    33bc:	f8c42783          	lw	a5,-116(s0)
    33c0:	00078913          	mv	s2,a5
    33c4:	41f7d793          	sra	a5,a5,0x1f
    33c8:	00078993          	mv	s3,a5
    33cc:	00090513          	mv	a0,s2
    33d0:	00098593          	mv	a1,s3
    33d4:	4b0010ef          	jal	4884 <_Z11dump_resultx>
    33d8:	00000013          	nop
    33dc:	fdf44783          	lbu	a5,-33(s0)
    33e0:	00078513          	mv	a0,a5
    33e4:	07c12083          	lw	ra,124(sp)
    33e8:	07812403          	lw	s0,120(sp)
    33ec:	07412903          	lw	s2,116(sp)
    33f0:	07012983          	lw	s3,112(sp)
    33f4:	06c12a03          	lw	s4,108(sp)
    33f8:	06812a83          	lw	s5,104(sp)
    33fc:	06412b03          	lw	s6,100(sp)
    3400:	06012b83          	lw	s7,96(sp)
    3404:	08010113          	add	sp,sp,128
    3408:	00008067          	ret

Disassembly of section .spi_uart:

00003800 <_Z9uart_putcc-0x1000>:
	...

00004800 <_Z9uart_putcc>:
    4800:	fd010113          	add	sp,sp,-48
    4804:	02812623          	sw	s0,44(sp)
    4808:	03010413          	add	s0,sp,48
    480c:	00050793          	mv	a5,a0
    4810:	fcf40fa3          	sb	a5,-33(s0)
    4814:	002017b7          	lui	a5,0x201
    4818:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    481c:	0007a783          	lw	a5,0(a5)
    4820:	fef42223          	sw	a5,-28(s0)
    4824:	002017b7          	lui	a5,0x201
    4828:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    482c:	fdf44703          	lbu	a4,-33(s0)
    4830:	00e78023          	sb	a4,0(a5)
    4834:	fe042623          	sw	zero,-20(s0)
    4838:	0300006f          	j	4868 <_Z9uart_putcc+0x68>
    483c:	fe042423          	sw	zero,-24(s0)
    4840:	0100006f          	j	4850 <_Z9uart_putcc+0x50>
    4844:	fe842783          	lw	a5,-24(s0)
    4848:	00178793          	add	a5,a5,1
    484c:	fef42423          	sw	a5,-24(s0)
    4850:	fe842703          	lw	a4,-24(s0)
    4854:	fe442783          	lw	a5,-28(s0)
    4858:	fef746e3          	blt	a4,a5,4844 <_Z9uart_putcc+0x44>
    485c:	fec42783          	lw	a5,-20(s0)
    4860:	00178793          	add	a5,a5,1
    4864:	fef42623          	sw	a5,-20(s0)
    4868:	fec42783          	lw	a5,-20(s0)
    486c:	fcf058e3          	blez	a5,483c <_Z9uart_putcc+0x3c>
    4870:	00000013          	nop
    4874:	00000013          	nop
    4878:	02c12403          	lw	s0,44(sp)
    487c:	03010113          	add	sp,sp,48
    4880:	00008067          	ret

00004884 <_Z11dump_resultx>:
    4884:	fc010113          	add	sp,sp,-64
    4888:	02112e23          	sw	ra,60(sp)
    488c:	02812c23          	sw	s0,56(sp)
    4890:	04010413          	add	s0,sp,64
    4894:	fca42423          	sw	a0,-56(s0)
    4898:	fcb42623          	sw	a1,-52(s0)
    489c:	fe042623          	sw	zero,-20(s0)
    48a0:	0700006f          	j	4910 <_Z11dump_resultx+0x8c>
    48a4:	fec42683          	lw	a3,-20(s0)
    48a8:	00369693          	sll	a3,a3,0x3
    48ac:	fe068613          	add	a2,a3,-32
    48b0:	00064c63          	bltz	a2,48c8 <_Z11dump_resultx+0x44>
    48b4:	fcc42683          	lw	a3,-52(s0)
    48b8:	40c6d733          	sra	a4,a3,a2
    48bc:	fcc42683          	lw	a3,-52(s0)
    48c0:	41f6d793          	sra	a5,a3,0x1f
    48c4:	02c0006f          	j	48f0 <_Z11dump_resultx+0x6c>
    48c8:	fcc42603          	lw	a2,-52(s0)
    48cc:	00161593          	sll	a1,a2,0x1
    48d0:	01f00613          	li	a2,31
    48d4:	40d60633          	sub	a2,a2,a3
    48d8:	00c59633          	sll	a2,a1,a2
    48dc:	fc842583          	lw	a1,-56(s0)
    48e0:	00d5d733          	srl	a4,a1,a3
    48e4:	00e66733          	or	a4,a2,a4
    48e8:	fcc42603          	lw	a2,-52(s0)
    48ec:	40d657b3          	sra	a5,a2,a3
    48f0:	0ff77613          	zext.b	a2,a4
    48f4:	fec42683          	lw	a3,-20(s0)
    48f8:	ff068693          	add	a3,a3,-16
    48fc:	008686b3          	add	a3,a3,s0
    4900:	fec68423          	sb	a2,-24(a3)
    4904:	fec42683          	lw	a3,-20(s0)
    4908:	00168693          	add	a3,a3,1
    490c:	fed42623          	sw	a3,-20(s0)
    4910:	fec42603          	lw	a2,-20(s0)
    4914:	00700693          	li	a3,7
    4918:	f8c6d6e3          	bge	a3,a2,48a4 <_Z11dump_resultx+0x20>
    491c:	00800793          	li	a5,8
    4920:	fef42423          	sw	a5,-24(s0)
    4924:	0100006f          	j	4934 <_Z11dump_resultx+0xb0>
    4928:	fe842783          	lw	a5,-24(s0)
    492c:	fff78793          	add	a5,a5,-1
    4930:	fef42423          	sw	a5,-24(s0)
    4934:	fe842703          	lw	a4,-24(s0)
    4938:	00100793          	li	a5,1
    493c:	00e7de63          	bge	a5,a4,4958 <_Z11dump_resultx+0xd4>
    4940:	fe842783          	lw	a5,-24(s0)
    4944:	fff78793          	add	a5,a5,-1
    4948:	ff078793          	add	a5,a5,-16
    494c:	008787b3          	add	a5,a5,s0
    4950:	fe87c783          	lbu	a5,-24(a5)
    4954:	fc078ae3          	beqz	a5,4928 <_Z11dump_resultx+0xa4>
    4958:	04400513          	li	a0,68
    495c:	ea5ff0ef          	jal	4800 <_Z9uart_putcc>
    4960:	00000013          	nop
    4964:	fe842783          	lw	a5,-24(s0)
    4968:	0ff7f793          	zext.b	a5,a5
    496c:	00078513          	mv	a0,a5
    4970:	e91ff0ef          	jal	4800 <_Z9uart_putcc>
    4974:	00000013          	nop
    4978:	fe042223          	sw	zero,-28(s0)
    497c:	02c0006f          	j	49a8 <_Z11dump_resultx+0x124>
    4980:	fe442783          	lw	a5,-28(s0)
    4984:	ff078793          	add	a5,a5,-16
    4988:	008787b3          	add	a5,a5,s0
    498c:	fe87c783          	lbu	a5,-24(a5)
    4990:	00078513          	mv	a0,a5
    4994:	e6dff0ef          	jal	4800 <_Z9uart_putcc>
    4998:	00000013          	nop
    499c:	fe442783          	lw	a5,-28(s0)
    49a0:	00178793          	add	a5,a5,1
    49a4:	fef42223          	sw	a5,-28(s0)
    49a8:	fe442703          	lw	a4,-28(s0)
    49ac:	fe842783          	lw	a5,-24(s0)
    49b0:	fcf748e3          	blt	a4,a5,4980 <_Z11dump_resultx+0xfc>
    49b4:	00000013          	nop
    49b8:	00000013          	nop
    49bc:	03c12083          	lw	ra,60(sp)
    49c0:	03812403          	lw	s0,56(sp)
    49c4:	04010113          	add	sp,sp,64
    49c8:	00008067          	ret
