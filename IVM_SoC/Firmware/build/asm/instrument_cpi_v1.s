
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
  7c:	384040ef          	jal	4400 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	378040ef          	jal	4400 <_Z9uart_putcc>
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
  ec:	398040ef          	jal	4484 <_Z11dump_resultx>
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
 12c:	2d4040ef          	jal	4400 <_Z9uart_putcc>
 130:	00000013          	nop
 134:	4dd020ef          	jal	2e10 <_Z7computev>
 138:	00050793          	mv	a5,a0
 13c:	fef405a3          	sb	a5,-21(s0)
 140:	00000013          	nop
 144:	03200513          	li	a0,50
 148:	6b8010ef          	jal	1800 <_Z9gpio_demoi>
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
 188:	2f9020ef          	jal	2c80 <_Z8fib_iteri>
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
 248:	1b8040ef          	jal	4400 <_Z9uart_putcc>
 24c:	00000013          	nop
 250:	fc442783          	lw	a5,-60(s0)
 254:	00078a13          	mv	s4,a5
 258:	41f7d793          	sra	a5,a5,0x1f
 25c:	00078a93          	mv	s5,a5
 260:	000a0513          	mv	a0,s4
 264:	000a8593          	mv	a1,s5
 268:	21c040ef          	jal	4484 <_Z11dump_resultx>
 26c:	00000013          	nop
 270:	05200513          	li	a0,82
 274:	18c040ef          	jal	4400 <_Z9uart_putcc>
 278:	00000013          	nop
 27c:	fc042783          	lw	a5,-64(s0)
 280:	00078913          	mv	s2,a5
 284:	41f7d793          	sra	a5,a5,0x1f
 288:	00078993          	mv	s3,a5
 28c:	00090513          	mv	a0,s2
 290:	00098593          	mv	a1,s3
 294:	1f0040ef          	jal	4484 <_Z11dump_resultx>
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
 2f0:	27d020ef          	jal	2d6c <_Z13fib_recursivei>
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
 3b8:	048040ef          	jal	4400 <_Z9uart_putcc>
 3bc:	00000013          	nop
 3c0:	fc442783          	lw	a5,-60(s0)
 3c4:	00078a13          	mv	s4,a5
 3c8:	41f7d793          	sra	a5,a5,0x1f
 3cc:	00078a93          	mv	s5,a5
 3d0:	000a0513          	mv	a0,s4
 3d4:	000a8593          	mv	a1,s5
 3d8:	0ac040ef          	jal	4484 <_Z11dump_resultx>
 3dc:	00000013          	nop
 3e0:	05200513          	li	a0,82
 3e4:	01c040ef          	jal	4400 <_Z9uart_putcc>
 3e8:	00000013          	nop
 3ec:	fc042783          	lw	a5,-64(s0)
 3f0:	00078913          	mv	s2,a5
 3f4:	41f7d793          	sra	a5,a5,0x1f
 3f8:	00078993          	mv	s3,a5
 3fc:	00090513          	mv	a0,s2
 400:	00098593          	mv	a1,s3
 404:	080040ef          	jal	4484 <_Z11dump_resultx>
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
 470:	790020ef          	jal	2c00 <_Z3addii>
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
 524:	6dd030ef          	jal	4400 <_Z9uart_putcc>
 528:	00000013          	nop
 52c:	fc842783          	lw	a5,-56(s0)
 530:	00078a13          	mv	s4,a5
 534:	41f7d793          	sra	a5,a5,0x1f
 538:	00078a93          	mv	s5,a5
 53c:	000a0513          	mv	a0,s4
 540:	000a8593          	mv	a1,s5
 544:	741030ef          	jal	4484 <_Z11dump_resultx>
 548:	00000013          	nop
 54c:	05200513          	li	a0,82
 550:	6b1030ef          	jal	4400 <_Z9uart_putcc>
 554:	00000013          	nop
 558:	fc442783          	lw	a5,-60(s0)
 55c:	00078913          	mv	s2,a5
 560:	41f7d793          	sra	a5,a5,0x1f
 564:	00078993          	mv	s3,a5
 568:	00090513          	mv	a0,s2
 56c:	00098593          	mv	a1,s3
 570:	715030ef          	jal	4484 <_Z11dump_resultx>
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
 5d8:	660020ef          	jal	2c38 <_Z7add_ptrPViS0_S0_>
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
 68c:	575030ef          	jal	4400 <_Z9uart_putcc>
 690:	00000013          	nop
 694:	fc842783          	lw	a5,-56(s0)
 698:	00078a13          	mv	s4,a5
 69c:	41f7d793          	sra	a5,a5,0x1f
 6a0:	00078a93          	mv	s5,a5
 6a4:	000a0513          	mv	a0,s4
 6a8:	000a8593          	mv	a1,s5
 6ac:	5d9030ef          	jal	4484 <_Z11dump_resultx>
 6b0:	00000013          	nop
 6b4:	05200513          	li	a0,82
 6b8:	549030ef          	jal	4400 <_Z9uart_putcc>
 6bc:	00000013          	nop
 6c0:	fc442783          	lw	a5,-60(s0)
 6c4:	00078913          	mv	s2,a5
 6c8:	41f7d793          	sra	a5,a5,0x1f
 6cc:	00078993          	mv	s3,a5
 6d0:	00090513          	mv	a0,s2
 6d4:	00098593          	mv	a1,s3
 6d8:	5ad030ef          	jal	4484 <_Z11dump_resultx>
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

00000800 <_Z9gpio_demoi-0x1000>:
	...

00001800 <_Z9gpio_demoi>:
    1800:	fd010113          	add	sp,sp,-48
    1804:	02812623          	sw	s0,44(sp)
    1808:	03010413          	add	s0,sp,48
    180c:	fca42e23          	sw	a0,-36(s0)
    1810:	fe0407a3          	sb	zero,-17(s0)
    1814:	0700006f          	j	1884 <_Z9gpio_demoi+0x84>
    1818:	fe042423          	sw	zero,-24(s0)
    181c:	002017b7          	lui	a5,0x201
    1820:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1824:	00c00713          	li	a4,12
    1828:	00e7a023          	sw	a4,0(a5)
    182c:	0100006f          	j	183c <_Z9gpio_demoi+0x3c>
    1830:	fe842783          	lw	a5,-24(s0)
    1834:	00178793          	add	a5,a5,1
    1838:	fef42423          	sw	a5,-24(s0)
    183c:	fe842703          	lw	a4,-24(s0)
    1840:	fdc42783          	lw	a5,-36(s0)
    1844:	fef746e3          	blt	a4,a5,1830 <_Z9gpio_demoi+0x30>
    1848:	fe042423          	sw	zero,-24(s0)
    184c:	002017b7          	lui	a5,0x201
    1850:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1854:	00d00713          	li	a4,13
    1858:	00e7a023          	sw	a4,0(a5)
    185c:	0100006f          	j	186c <_Z9gpio_demoi+0x6c>
    1860:	fe842783          	lw	a5,-24(s0)
    1864:	00178793          	add	a5,a5,1
    1868:	fef42423          	sw	a5,-24(s0)
    186c:	fe842703          	lw	a4,-24(s0)
    1870:	fdc42783          	lw	a5,-36(s0)
    1874:	fef746e3          	blt	a4,a5,1860 <_Z9gpio_demoi+0x60>
    1878:	fef44783          	lbu	a5,-17(s0)
    187c:	00178793          	add	a5,a5,1
    1880:	fef407a3          	sb	a5,-17(s0)
    1884:	fef44703          	lbu	a4,-17(s0)
    1888:	00f00793          	li	a5,15
    188c:	f8e7f6e3          	bgeu	a5,a4,1818 <_Z9gpio_demoi+0x18>
    1890:	002017b7          	lui	a5,0x201
    1894:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1898:	0007a023          	sw	zero,0(a5)
    189c:	002017b7          	lui	a5,0x201
    18a0:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
    18a4:	0007a023          	sw	zero,0(a5)
    18a8:	00000013          	nop
    18ac:	02c12403          	lw	s0,44(sp)
    18b0:	03010113          	add	sp,sp,48
    18b4:	00008067          	ret

Disassembly of section .spi_compute:

00001c00 <_Z3addii-0x1000>:
	...

00002c00 <_Z3addii>:
    2c00:	fd010113          	add	sp,sp,-48
    2c04:	02812623          	sw	s0,44(sp)
    2c08:	03010413          	add	s0,sp,48
    2c0c:	fca42e23          	sw	a0,-36(s0)
    2c10:	fcb42c23          	sw	a1,-40(s0)
    2c14:	fdc42703          	lw	a4,-36(s0)
    2c18:	fd842783          	lw	a5,-40(s0)
    2c1c:	00f707b3          	add	a5,a4,a5
    2c20:	fef42623          	sw	a5,-20(s0)
    2c24:	fec42783          	lw	a5,-20(s0)
    2c28:	00078513          	mv	a0,a5
    2c2c:	02c12403          	lw	s0,44(sp)
    2c30:	03010113          	add	sp,sp,48
    2c34:	00008067          	ret

00002c38 <_Z7add_ptrPViS0_S0_>:
    2c38:	fe010113          	add	sp,sp,-32
    2c3c:	00812e23          	sw	s0,28(sp)
    2c40:	02010413          	add	s0,sp,32
    2c44:	fea42623          	sw	a0,-20(s0)
    2c48:	feb42423          	sw	a1,-24(s0)
    2c4c:	fec42223          	sw	a2,-28(s0)
    2c50:	fec42783          	lw	a5,-20(s0)
    2c54:	0007a703          	lw	a4,0(a5)
    2c58:	fe842783          	lw	a5,-24(s0)
    2c5c:	0007a783          	lw	a5,0(a5)
    2c60:	00f70733          	add	a4,a4,a5
    2c64:	fe442783          	lw	a5,-28(s0)
    2c68:	00e7a023          	sw	a4,0(a5)
    2c6c:	00000793          	li	a5,0
    2c70:	00078513          	mv	a0,a5
    2c74:	01c12403          	lw	s0,28(sp)
    2c78:	02010113          	add	sp,sp,32
    2c7c:	00008067          	ret

00002c80 <_Z8fib_iteri>:
    2c80:	fc010113          	add	sp,sp,-64
    2c84:	02812e23          	sw	s0,60(sp)
    2c88:	04010413          	add	s0,sp,64
    2c8c:	fca42623          	sw	a0,-52(s0)
    2c90:	00100713          	li	a4,1
    2c94:	00000793          	li	a5,0
    2c98:	fee42423          	sw	a4,-24(s0)
    2c9c:	fef42623          	sw	a5,-20(s0)
    2ca0:	00000793          	li	a5,0
    2ca4:	00000813          	li	a6,0
    2ca8:	fef42023          	sw	a5,-32(s0)
    2cac:	ff042223          	sw	a6,-28(s0)
    2cb0:	fcf42c23          	sw	a5,-40(s0)
    2cb4:	fd042e23          	sw	a6,-36(s0)
    2cb8:	fc042a23          	sw	zero,-44(s0)
    2cbc:	fcc42703          	lw	a4,-52(s0)
    2cc0:	05d00793          	li	a5,93
    2cc4:	00e7d863          	bge	a5,a4,2cd4 <_Z8fib_iteri+0x54>
    2cc8:	05c00793          	li	a5,92
    2ccc:	fcf42a23          	sw	a5,-44(s0)
    2cd0:	00c0006f          	j	2cdc <_Z8fib_iteri+0x5c>
    2cd4:	fcc42783          	lw	a5,-52(s0)
    2cd8:	fcf42a23          	sw	a5,-44(s0)
    2cdc:	00100793          	li	a5,1
    2ce0:	fcf42823          	sw	a5,-48(s0)
    2ce4:	0600006f          	j	2d44 <_Z8fib_iteri+0xc4>
    2ce8:	fe842603          	lw	a2,-24(s0)
    2cec:	fec42683          	lw	a3,-20(s0)
    2cf0:	fe042503          	lw	a0,-32(s0)
    2cf4:	fe442583          	lw	a1,-28(s0)
    2cf8:	00a60733          	add	a4,a2,a0
    2cfc:	00070813          	mv	a6,a4
    2d00:	00c83833          	sltu	a6,a6,a2
    2d04:	00b687b3          	add	a5,a3,a1
    2d08:	00f806b3          	add	a3,a6,a5
    2d0c:	00068793          	mv	a5,a3
    2d10:	fce42c23          	sw	a4,-40(s0)
    2d14:	fcf42e23          	sw	a5,-36(s0)
    2d18:	fe842703          	lw	a4,-24(s0)
    2d1c:	fec42783          	lw	a5,-20(s0)
    2d20:	fee42023          	sw	a4,-32(s0)
    2d24:	fef42223          	sw	a5,-28(s0)
    2d28:	fd842703          	lw	a4,-40(s0)
    2d2c:	fdc42783          	lw	a5,-36(s0)
    2d30:	fee42423          	sw	a4,-24(s0)
    2d34:	fef42623          	sw	a5,-20(s0)
    2d38:	fd042783          	lw	a5,-48(s0)
    2d3c:	00178793          	add	a5,a5,1
    2d40:	fcf42823          	sw	a5,-48(s0)
    2d44:	fd042703          	lw	a4,-48(s0)
    2d48:	fd442783          	lw	a5,-44(s0)
    2d4c:	f8f74ee3          	blt	a4,a5,2ce8 <_Z8fib_iteri+0x68>
    2d50:	fd842703          	lw	a4,-40(s0)
    2d54:	fdc42783          	lw	a5,-36(s0)
    2d58:	00070513          	mv	a0,a4
    2d5c:	00078593          	mv	a1,a5
    2d60:	03c12403          	lw	s0,60(sp)
    2d64:	04010113          	add	sp,sp,64
    2d68:	00008067          	ret

00002d6c <_Z13fib_recursivei>:
    2d6c:	fe010113          	add	sp,sp,-32
    2d70:	00112e23          	sw	ra,28(sp)
    2d74:	00812c23          	sw	s0,24(sp)
    2d78:	01212a23          	sw	s2,20(sp)
    2d7c:	01312823          	sw	s3,16(sp)
    2d80:	02010413          	add	s0,sp,32
    2d84:	fea42623          	sw	a0,-20(s0)
    2d88:	fec42603          	lw	a2,-20(s0)
    2d8c:	00100693          	li	a3,1
    2d90:	00c6cc63          	blt	a3,a2,2da8 <_Z13fib_recursivei+0x3c>
    2d94:	fec42683          	lw	a3,-20(s0)
    2d98:	00068713          	mv	a4,a3
    2d9c:	41f6d693          	sra	a3,a3,0x1f
    2da0:	00068793          	mv	a5,a3
    2da4:	04c0006f          	j	2df0 <_Z13fib_recursivei+0x84>
    2da8:	fec42783          	lw	a5,-20(s0)
    2dac:	fff78793          	add	a5,a5,-1
    2db0:	00078513          	mv	a0,a5
    2db4:	fb9ff0ef          	jal	2d6c <_Z13fib_recursivei>
    2db8:	00050913          	mv	s2,a0
    2dbc:	00058993          	mv	s3,a1
    2dc0:	fec42783          	lw	a5,-20(s0)
    2dc4:	ffe78793          	add	a5,a5,-2
    2dc8:	00078513          	mv	a0,a5
    2dcc:	fa1ff0ef          	jal	2d6c <_Z13fib_recursivei>
    2dd0:	00050613          	mv	a2,a0
    2dd4:	00058693          	mv	a3,a1
    2dd8:	00c90733          	add	a4,s2,a2
    2ddc:	00070593          	mv	a1,a4
    2de0:	0125b5b3          	sltu	a1,a1,s2
    2de4:	00d987b3          	add	a5,s3,a3
    2de8:	00f586b3          	add	a3,a1,a5
    2dec:	00068793          	mv	a5,a3
    2df0:	00070513          	mv	a0,a4
    2df4:	00078593          	mv	a1,a5
    2df8:	01c12083          	lw	ra,28(sp)
    2dfc:	01812403          	lw	s0,24(sp)
    2e00:	01412903          	lw	s2,20(sp)
    2e04:	01012983          	lw	s3,16(sp)
    2e08:	02010113          	add	sp,sp,32
    2e0c:	00008067          	ret

00002e10 <_Z7computev>:
    2e10:	f8010113          	add	sp,sp,-128
    2e14:	06112e23          	sw	ra,124(sp)
    2e18:	06812c23          	sw	s0,120(sp)
    2e1c:	07212a23          	sw	s2,116(sp)
    2e20:	07312823          	sw	s3,112(sp)
    2e24:	07412623          	sw	s4,108(sp)
    2e28:	07512423          	sw	s5,104(sp)
    2e2c:	07612223          	sw	s6,100(sp)
    2e30:	07712023          	sw	s7,96(sp)
    2e34:	08010413          	add	s0,sp,128
    2e38:	00000793          	li	a5,0
    2e3c:	00000813          	li	a6,0
    2e40:	fcf42823          	sw	a5,-48(s0)
    2e44:	fd042a23          	sw	a6,-44(s0)
    2e48:	fcf42423          	sw	a5,-56(s0)
    2e4c:	fd042623          	sw	a6,-52(s0)
    2e50:	00a00793          	li	a5,10
    2e54:	faf42023          	sw	a5,-96(s0)
    2e58:	fff00793          	li	a5,-1
    2e5c:	fcf40fa3          	sb	a5,-33(s0)
    2e60:	fa040793          	add	a5,s0,-96
    2e64:	faf42223          	sw	a5,-92(s0)
    2e68:	fa440793          	add	a5,s0,-92
    2e6c:	00078513          	mv	a0,a5
    2e70:	b3cfd0ef          	jal	1ac <_Z14instrument_cpiIZ7computevEUlvE_EDaOT_>
    2e74:	fca42823          	sw	a0,-48(s0)
    2e78:	fcb42a23          	sw	a1,-44(s0)
    2e7c:	00000013          	nop
    2e80:	fa040793          	add	a5,s0,-96
    2e84:	faf42423          	sw	a5,-88(s0)
    2e88:	fa840793          	add	a5,s0,-88
    2e8c:	00078513          	mv	a0,a5
    2e90:	c84fd0ef          	jal	314 <_Z14instrument_cpiIZ7computevEUlvE0_EDaOT_>
    2e94:	00050713          	mv	a4,a0
    2e98:	00058793          	mv	a5,a1
    2e9c:	fce42423          	sw	a4,-56(s0)
    2ea0:	fcf42623          	sw	a5,-52(s0)
    2ea4:	00000013          	nop
    2ea8:	fd042703          	lw	a4,-48(s0)
    2eac:	fc842783          	lw	a5,-56(s0)
    2eb0:	02f71463          	bne	a4,a5,2ed8 <_Z7computev+0xc8>
    2eb4:	fd442703          	lw	a4,-44(s0)
    2eb8:	fcc42783          	lw	a5,-52(s0)
    2ebc:	00f71e63          	bne	a4,a5,2ed8 <_Z7computev+0xc8>
    2ec0:	00100793          	li	a5,1
    2ec4:	fcf40fa3          	sb	a5,-33(s0)
    2ec8:	05000513          	li	a0,80
    2ecc:	534010ef          	jal	4400 <_Z9uart_putcc>
    2ed0:	00000013          	nop
    2ed4:	0140006f          	j	2ee8 <_Z7computev+0xd8>
    2ed8:	fc040fa3          	sb	zero,-33(s0)
    2edc:	04600513          	li	a0,70
    2ee0:	520010ef          	jal	4400 <_Z9uart_putcc>
    2ee4:	00000013          	nop
    2ee8:	00000013          	nop
    2eec:	fd042503          	lw	a0,-48(s0)
    2ef0:	fd442583          	lw	a1,-44(s0)
    2ef4:	590010ef          	jal	4484 <_Z11dump_resultx>
    2ef8:	00000013          	nop
    2efc:	04300513          	li	a0,67
    2f00:	500010ef          	jal	4400 <_Z9uart_putcc>
    2f04:	00000013          	nop
    2f08:	05000793          	li	a5,80
    2f0c:	f8f42e23          	sw	a5,-100(s0)
    2f10:	00500793          	li	a5,5
    2f14:	f8f42c23          	sw	a5,-104(s0)
    2f18:	fc042223          	sw	zero,-60(s0)
    2f1c:	f9c40793          	add	a5,s0,-100
    2f20:	faf42623          	sw	a5,-84(s0)
    2f24:	f9840793          	add	a5,s0,-104
    2f28:	faf42823          	sw	a5,-80(s0)
    2f2c:	fac40793          	add	a5,s0,-84
    2f30:	00078513          	mv	a0,a5
    2f34:	d58fd0ef          	jal	48c <_Z14instrument_cpiIZ7computevEUlvE1_EDaOT_>
    2f38:	fca42223          	sw	a0,-60(s0)
    2f3c:	fc442783          	lw	a5,-60(s0)
    2f40:	00078b13          	mv	s6,a5
    2f44:	41f7d793          	sra	a5,a5,0x1f
    2f48:	00078b93          	mv	s7,a5
    2f4c:	000b0513          	mv	a0,s6
    2f50:	000b8593          	mv	a1,s7
    2f54:	530010ef          	jal	4484 <_Z11dump_resultx>
    2f58:	00000013          	nop
    2f5c:	02300793          	li	a5,35
    2f60:	f8f42a23          	sw	a5,-108(s0)
    2f64:	05500793          	li	a5,85
    2f68:	f8f42823          	sw	a5,-112(s0)
    2f6c:	f8042623          	sw	zero,-116(s0)
    2f70:	fc042023          	sw	zero,-64(s0)
    2f74:	f9440793          	add	a5,s0,-108
    2f78:	faf42a23          	sw	a5,-76(s0)
    2f7c:	f9040793          	add	a5,s0,-112
    2f80:	faf42c23          	sw	a5,-72(s0)
    2f84:	f8c40793          	add	a5,s0,-116
    2f88:	faf42e23          	sw	a5,-68(s0)
    2f8c:	fb440793          	add	a5,s0,-76
    2f90:	00078513          	mv	a0,a5
    2f94:	e60fd0ef          	jal	5f4 <_Z14instrument_cpiIZ7computevEUlvE2_EDaOT_>
    2f98:	fca42023          	sw	a0,-64(s0)
    2f9c:	f8c40793          	add	a5,s0,-116
    2fa0:	00078a13          	mv	s4,a5
    2fa4:	41f7d793          	sra	a5,a5,0x1f
    2fa8:	00078a93          	mv	s5,a5
    2fac:	000a0513          	mv	a0,s4
    2fb0:	000a8593          	mv	a1,s5
    2fb4:	4d0010ef          	jal	4484 <_Z11dump_resultx>
    2fb8:	00000013          	nop
    2fbc:	f8c42783          	lw	a5,-116(s0)
    2fc0:	00078913          	mv	s2,a5
    2fc4:	41f7d793          	sra	a5,a5,0x1f
    2fc8:	00078993          	mv	s3,a5
    2fcc:	00090513          	mv	a0,s2
    2fd0:	00098593          	mv	a1,s3
    2fd4:	4b0010ef          	jal	4484 <_Z11dump_resultx>
    2fd8:	00000013          	nop
    2fdc:	fdf44783          	lbu	a5,-33(s0)
    2fe0:	00078513          	mv	a0,a5
    2fe4:	07c12083          	lw	ra,124(sp)
    2fe8:	07812403          	lw	s0,120(sp)
    2fec:	07412903          	lw	s2,116(sp)
    2ff0:	07012983          	lw	s3,112(sp)
    2ff4:	06c12a03          	lw	s4,108(sp)
    2ff8:	06812a83          	lw	s5,104(sp)
    2ffc:	06412b03          	lw	s6,100(sp)
    3000:	06012b83          	lw	s7,96(sp)
    3004:	08010113          	add	sp,sp,128
    3008:	00008067          	ret

Disassembly of section .spi_uart:

00003400 <_Z9uart_putcc-0x1000>:
	...

00004400 <_Z9uart_putcc>:
    4400:	fd010113          	add	sp,sp,-48
    4404:	02812623          	sw	s0,44(sp)
    4408:	03010413          	add	s0,sp,48
    440c:	00050793          	mv	a5,a0
    4410:	fcf40fa3          	sb	a5,-33(s0)
    4414:	002017b7          	lui	a5,0x201
    4418:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    441c:	0007a783          	lw	a5,0(a5)
    4420:	fef42223          	sw	a5,-28(s0)
    4424:	002017b7          	lui	a5,0x201
    4428:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    442c:	fdf44703          	lbu	a4,-33(s0)
    4430:	00e78023          	sb	a4,0(a5)
    4434:	fe042623          	sw	zero,-20(s0)
    4438:	0300006f          	j	4468 <_Z9uart_putcc+0x68>
    443c:	fe042423          	sw	zero,-24(s0)
    4440:	0100006f          	j	4450 <_Z9uart_putcc+0x50>
    4444:	fe842783          	lw	a5,-24(s0)
    4448:	00178793          	add	a5,a5,1
    444c:	fef42423          	sw	a5,-24(s0)
    4450:	fe842703          	lw	a4,-24(s0)
    4454:	fe442783          	lw	a5,-28(s0)
    4458:	fef746e3          	blt	a4,a5,4444 <_Z9uart_putcc+0x44>
    445c:	fec42783          	lw	a5,-20(s0)
    4460:	00178793          	add	a5,a5,1
    4464:	fef42623          	sw	a5,-20(s0)
    4468:	fec42783          	lw	a5,-20(s0)
    446c:	fcf058e3          	blez	a5,443c <_Z9uart_putcc+0x3c>
    4470:	00000013          	nop
    4474:	00000013          	nop
    4478:	02c12403          	lw	s0,44(sp)
    447c:	03010113          	add	sp,sp,48
    4480:	00008067          	ret

00004484 <_Z11dump_resultx>:
    4484:	fc010113          	add	sp,sp,-64
    4488:	02112e23          	sw	ra,60(sp)
    448c:	02812c23          	sw	s0,56(sp)
    4490:	04010413          	add	s0,sp,64
    4494:	fca42423          	sw	a0,-56(s0)
    4498:	fcb42623          	sw	a1,-52(s0)
    449c:	fe042623          	sw	zero,-20(s0)
    44a0:	0700006f          	j	4510 <_Z11dump_resultx+0x8c>
    44a4:	fec42683          	lw	a3,-20(s0)
    44a8:	00369693          	sll	a3,a3,0x3
    44ac:	fe068613          	add	a2,a3,-32
    44b0:	00064c63          	bltz	a2,44c8 <_Z11dump_resultx+0x44>
    44b4:	fcc42683          	lw	a3,-52(s0)
    44b8:	40c6d733          	sra	a4,a3,a2
    44bc:	fcc42683          	lw	a3,-52(s0)
    44c0:	41f6d793          	sra	a5,a3,0x1f
    44c4:	02c0006f          	j	44f0 <_Z11dump_resultx+0x6c>
    44c8:	fcc42603          	lw	a2,-52(s0)
    44cc:	00161593          	sll	a1,a2,0x1
    44d0:	01f00613          	li	a2,31
    44d4:	40d60633          	sub	a2,a2,a3
    44d8:	00c59633          	sll	a2,a1,a2
    44dc:	fc842583          	lw	a1,-56(s0)
    44e0:	00d5d733          	srl	a4,a1,a3
    44e4:	00e66733          	or	a4,a2,a4
    44e8:	fcc42603          	lw	a2,-52(s0)
    44ec:	40d657b3          	sra	a5,a2,a3
    44f0:	0ff77613          	zext.b	a2,a4
    44f4:	fec42683          	lw	a3,-20(s0)
    44f8:	ff068693          	add	a3,a3,-16
    44fc:	008686b3          	add	a3,a3,s0
    4500:	fec68423          	sb	a2,-24(a3)
    4504:	fec42683          	lw	a3,-20(s0)
    4508:	00168693          	add	a3,a3,1
    450c:	fed42623          	sw	a3,-20(s0)
    4510:	fec42603          	lw	a2,-20(s0)
    4514:	00700693          	li	a3,7
    4518:	f8c6d6e3          	bge	a3,a2,44a4 <_Z11dump_resultx+0x20>
    451c:	00800793          	li	a5,8
    4520:	fef42423          	sw	a5,-24(s0)
    4524:	0100006f          	j	4534 <_Z11dump_resultx+0xb0>
    4528:	fe842783          	lw	a5,-24(s0)
    452c:	fff78793          	add	a5,a5,-1
    4530:	fef42423          	sw	a5,-24(s0)
    4534:	fe842703          	lw	a4,-24(s0)
    4538:	00100793          	li	a5,1
    453c:	00e7de63          	bge	a5,a4,4558 <_Z11dump_resultx+0xd4>
    4540:	fe842783          	lw	a5,-24(s0)
    4544:	fff78793          	add	a5,a5,-1
    4548:	ff078793          	add	a5,a5,-16
    454c:	008787b3          	add	a5,a5,s0
    4550:	fe87c783          	lbu	a5,-24(a5)
    4554:	fc078ae3          	beqz	a5,4528 <_Z11dump_resultx+0xa4>
    4558:	04400513          	li	a0,68
    455c:	ea5ff0ef          	jal	4400 <_Z9uart_putcc>
    4560:	00000013          	nop
    4564:	fe842783          	lw	a5,-24(s0)
    4568:	0ff7f793          	zext.b	a5,a5
    456c:	00078513          	mv	a0,a5
    4570:	e91ff0ef          	jal	4400 <_Z9uart_putcc>
    4574:	00000013          	nop
    4578:	fe042223          	sw	zero,-28(s0)
    457c:	02c0006f          	j	45a8 <_Z11dump_resultx+0x124>
    4580:	fe442783          	lw	a5,-28(s0)
    4584:	ff078793          	add	a5,a5,-16
    4588:	008787b3          	add	a5,a5,s0
    458c:	fe87c783          	lbu	a5,-24(a5)
    4590:	00078513          	mv	a0,a5
    4594:	e6dff0ef          	jal	4400 <_Z9uart_putcc>
    4598:	00000013          	nop
    459c:	fe442783          	lw	a5,-28(s0)
    45a0:	00178793          	add	a5,a5,1
    45a4:	fef42223          	sw	a5,-28(s0)
    45a8:	fe442703          	lw	a4,-28(s0)
    45ac:	fe842783          	lw	a5,-24(s0)
    45b0:	fcf748e3          	blt	a4,a5,4580 <_Z11dump_resultx+0xfc>
    45b4:	00000013          	nop
    45b8:	00000013          	nop
    45bc:	03c12083          	lw	ra,60(sp)
    45c0:	03812403          	lw	s0,56(sp)
    45c4:	04010113          	add	sp,sp,64
    45c8:	00008067          	ret
