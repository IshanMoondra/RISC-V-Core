
/out/soft_mul_div_test.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	15c000ef          	jal	170 <main>
  18:	00050793          	mv	a5,a0
  1c:	00078093          	mv	ra,a5
  20:	00008a13          	mv	s4,ra
  24:	41f0d793          	sra	a5,ra,0x1f
  28:	00078a93          	mv	s5,a5
  2c:	000a0513          	mv	a0,s4
  30:	000a8593          	mv	a1,s5
  34:	4bd060ef          	jal	6cf0 <_Z11dump_resultx>
  38:	002017b7          	lui	a5,0x201
  3c:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
  40:	0007a783          	lw	a5,0(a5)
  44:	00078913          	mv	s2,a5
  48:	41f7d793          	sra	a5,a5,0x1f
  4c:	00078993          	mv	s3,a5
  50:	00090513          	mv	a0,s2
  54:	00098593          	mv	a1,s3
  58:	499060ef          	jal	6cf0 <_Z11dump_resultx>
  5c:	ffffffff          	.word	0xffffffff
  60:	00000013          	nop

00000064 <_Z7add_ptrPViS0_S0_>:
  64:	fe010113          	add	sp,sp,-32
  68:	00812e23          	sw	s0,28(sp)
  6c:	02010413          	add	s0,sp,32
  70:	fea42623          	sw	a0,-20(s0)
  74:	feb42423          	sw	a1,-24(s0)
  78:	fec42223          	sw	a2,-28(s0)
  7c:	fec42783          	lw	a5,-20(s0)
  80:	0007a703          	lw	a4,0(a5)
  84:	fe842783          	lw	a5,-24(s0)
  88:	0007a783          	lw	a5,0(a5)
  8c:	00f70733          	add	a4,a4,a5
  90:	fe442783          	lw	a5,-28(s0)
  94:	00e7a023          	sw	a4,0(a5)
  98:	00000013          	nop
  9c:	01c12403          	lw	s0,28(sp)
  a0:	02010113          	add	sp,sp,32
  a4:	00008067          	ret

000000a8 <_Z7sub_ptrPViS0_S0_>:
  a8:	fe010113          	add	sp,sp,-32
  ac:	00812e23          	sw	s0,28(sp)
  b0:	02010413          	add	s0,sp,32
  b4:	fea42623          	sw	a0,-20(s0)
  b8:	feb42423          	sw	a1,-24(s0)
  bc:	fec42223          	sw	a2,-28(s0)
  c0:	fec42783          	lw	a5,-20(s0)
  c4:	0007a703          	lw	a4,0(a5)
  c8:	fe842783          	lw	a5,-24(s0)
  cc:	0007a783          	lw	a5,0(a5)
  d0:	40f70733          	sub	a4,a4,a5
  d4:	fe442783          	lw	a5,-28(s0)
  d8:	00e7a023          	sw	a4,0(a5)
  dc:	00000013          	nop
  e0:	01c12403          	lw	s0,28(sp)
  e4:	02010113          	add	sp,sp,32
  e8:	00008067          	ret

000000ec <_Z10soc_bootupv>:
  ec:	fe010113          	add	sp,sp,-32
  f0:	00112e23          	sw	ra,28(sp)
  f4:	00812c23          	sw	s0,24(sp)
  f8:	02010413          	add	s0,sp,32
  fc:	fe042623          	sw	zero,-20(s0)
 100:	0003d7b7          	lui	a5,0x3d
 104:	09078793          	add	a5,a5,144 # 3d090 <_Z11dump_resultx+0x363a0>
 108:	fef42423          	sw	a5,-24(s0)
 10c:	002017b7          	lui	a5,0x201
 110:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
 114:	fec42703          	lw	a4,-20(s0)
 118:	00e7a023          	sw	a4,0(a5)
 11c:	002017b7          	lui	a5,0x201
 120:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
 124:	fe842703          	lw	a4,-24(s0)
 128:	00e7a023          	sw	a4,0(a5)
 12c:	03200793          	li	a5,50
 130:	fef42223          	sw	a5,-28(s0)
 134:	002017b7          	lui	a5,0x201
 138:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 13c:	fe442703          	lw	a4,-28(s0)
 140:	00e7a023          	sw	a4,0(a5)
 144:	0003d7b7          	lui	a5,0x3d
 148:	00078513          	mv	a0,a5
 14c:	325060ef          	jal	6c70 <_Z10uart_printPKc>
 150:	0003d7b7          	lui	a5,0x3d
 154:	00c78513          	add	a0,a5,12 # 3d00c <_Z11dump_resultx+0x3631c>
 158:	319060ef          	jal	6c70 <_Z10uart_printPKc>
 15c:	00000013          	nop
 160:	01c12083          	lw	ra,28(sp)
 164:	01812403          	lw	s0,24(sp)
 168:	02010113          	add	sp,sp,32
 16c:	00008067          	ret

00000170 <main>:
 170:	f7010113          	add	sp,sp,-144
 174:	08112623          	sw	ra,140(sp)
 178:	08812423          	sw	s0,136(sp)
 17c:	09212223          	sw	s2,132(sp)
 180:	09312023          	sw	s3,128(sp)
 184:	07412e23          	sw	s4,124(sp)
 188:	07512c23          	sw	s5,120(sp)
 18c:	07612a23          	sw	s6,116(sp)
 190:	07712823          	sw	s7,112(sp)
 194:	07812623          	sw	s8,108(sp)
 198:	07912423          	sw	s9,104(sp)
 19c:	07a12223          	sw	s10,100(sp)
 1a0:	07b12023          	sw	s11,96(sp)
 1a4:	09010413          	add	s0,sp,144
 1a8:	f45ff0ef          	jal	ec <_Z10soc_bootupv>
 1ac:	03000793          	li	a5,48
 1b0:	fcf42423          	sw	a5,-56(s0)
 1b4:	01000793          	li	a5,16
 1b8:	fcf42223          	sw	a5,-60(s0)
 1bc:	fc042023          	sw	zero,-64(s0)
 1c0:	fa042e23          	sw	zero,-68(s0)
 1c4:	fa042c23          	sw	zero,-72(s0)
 1c8:	fa042a23          	sw	zero,-76(s0)
 1cc:	fc040693          	add	a3,s0,-64
 1d0:	fc440713          	add	a4,s0,-60
 1d4:	fc840793          	add	a5,s0,-56
 1d8:	00068613          	mv	a2,a3
 1dc:	00070593          	mv	a1,a4
 1e0:	00078513          	mv	a0,a5
 1e4:	e81ff0ef          	jal	64 <_Z7add_ptrPViS0_S0_>
 1e8:	fbc40693          	add	a3,s0,-68
 1ec:	fc440713          	add	a4,s0,-60
 1f0:	fc840793          	add	a5,s0,-56
 1f4:	00068613          	mv	a2,a3
 1f8:	00070593          	mv	a1,a4
 1fc:	00078513          	mv	a0,a5
 200:	ea9ff0ef          	jal	a8 <_Z7sub_ptrPViS0_S0_>
 204:	fb840693          	add	a3,s0,-72
 208:	fc440713          	add	a4,s0,-60
 20c:	fc840793          	add	a5,s0,-56
 210:	00068613          	mv	a2,a3
 214:	00070593          	mv	a1,a4
 218:	00078513          	mv	a0,a5
 21c:	5e4040ef          	jal	4800 <_Z7mul_ptrPViS0_S0_>
 220:	fb440693          	add	a3,s0,-76
 224:	fc440713          	add	a4,s0,-60
 228:	fc840793          	add	a5,s0,-56
 22c:	00068613          	mv	a2,a3
 230:	00070593          	mv	a1,a4
 234:	00078513          	mv	a0,a5
 238:	624040ef          	jal	485c <_Z7div_ptrPViS0_S0_>
 23c:	fc840793          	add	a5,s0,-56
 240:	faf42423          	sw	a5,-88(s0)
 244:	41f7d793          	sra	a5,a5,0x1f
 248:	faf42623          	sw	a5,-84(s0)
 24c:	fa842503          	lw	a0,-88(s0)
 250:	fac42583          	lw	a1,-84(s0)
 254:	29d060ef          	jal	6cf0 <_Z11dump_resultx>
 258:	fc842783          	lw	a5,-56(s0)
 25c:	faf42023          	sw	a5,-96(s0)
 260:	41f7d793          	sra	a5,a5,0x1f
 264:	faf42223          	sw	a5,-92(s0)
 268:	fa042503          	lw	a0,-96(s0)
 26c:	fa442583          	lw	a1,-92(s0)
 270:	281060ef          	jal	6cf0 <_Z11dump_resultx>
 274:	fc440793          	add	a5,s0,-60
 278:	f8f42c23          	sw	a5,-104(s0)
 27c:	41f7d793          	sra	a5,a5,0x1f
 280:	f8f42e23          	sw	a5,-100(s0)
 284:	f9842503          	lw	a0,-104(s0)
 288:	f9c42583          	lw	a1,-100(s0)
 28c:	265060ef          	jal	6cf0 <_Z11dump_resultx>
 290:	fc442783          	lw	a5,-60(s0)
 294:	f8f42823          	sw	a5,-112(s0)
 298:	41f7d793          	sra	a5,a5,0x1f
 29c:	f8f42a23          	sw	a5,-108(s0)
 2a0:	f9042503          	lw	a0,-112(s0)
 2a4:	f9442583          	lw	a1,-108(s0)
 2a8:	249060ef          	jal	6cf0 <_Z11dump_resultx>
 2ac:	fc040793          	add	a5,s0,-64
 2b0:	f8f42423          	sw	a5,-120(s0)
 2b4:	41f7d793          	sra	a5,a5,0x1f
 2b8:	f8f42623          	sw	a5,-116(s0)
 2bc:	f8842503          	lw	a0,-120(s0)
 2c0:	f8c42583          	lw	a1,-116(s0)
 2c4:	22d060ef          	jal	6cf0 <_Z11dump_resultx>
 2c8:	fc042783          	lw	a5,-64(s0)
 2cc:	f8f42023          	sw	a5,-128(s0)
 2d0:	41f7d793          	sra	a5,a5,0x1f
 2d4:	f8f42223          	sw	a5,-124(s0)
 2d8:	f8042503          	lw	a0,-128(s0)
 2dc:	f8442583          	lw	a1,-124(s0)
 2e0:	211060ef          	jal	6cf0 <_Z11dump_resultx>
 2e4:	fbc40793          	add	a5,s0,-68
 2e8:	f6f42c23          	sw	a5,-136(s0)
 2ec:	41f7d793          	sra	a5,a5,0x1f
 2f0:	f6f42e23          	sw	a5,-132(s0)
 2f4:	f7842503          	lw	a0,-136(s0)
 2f8:	f7c42583          	lw	a1,-132(s0)
 2fc:	1f5060ef          	jal	6cf0 <_Z11dump_resultx>
 300:	fbc42783          	lw	a5,-68(s0)
 304:	00078d13          	mv	s10,a5
 308:	41f7d793          	sra	a5,a5,0x1f
 30c:	00078d93          	mv	s11,a5
 310:	000d0513          	mv	a0,s10
 314:	000d8593          	mv	a1,s11
 318:	1d9060ef          	jal	6cf0 <_Z11dump_resultx>
 31c:	fb840793          	add	a5,s0,-72
 320:	00078c13          	mv	s8,a5
 324:	41f7d793          	sra	a5,a5,0x1f
 328:	00078c93          	mv	s9,a5
 32c:	000c0513          	mv	a0,s8
 330:	000c8593          	mv	a1,s9
 334:	1bd060ef          	jal	6cf0 <_Z11dump_resultx>
 338:	fb842783          	lw	a5,-72(s0)
 33c:	00078b13          	mv	s6,a5
 340:	41f7d793          	sra	a5,a5,0x1f
 344:	00078b93          	mv	s7,a5
 348:	000b0513          	mv	a0,s6
 34c:	000b8593          	mv	a1,s7
 350:	1a1060ef          	jal	6cf0 <_Z11dump_resultx>
 354:	fb440793          	add	a5,s0,-76
 358:	00078a13          	mv	s4,a5
 35c:	41f7d793          	sra	a5,a5,0x1f
 360:	00078a93          	mv	s5,a5
 364:	000a0513          	mv	a0,s4
 368:	000a8593          	mv	a1,s5
 36c:	185060ef          	jal	6cf0 <_Z11dump_resultx>
 370:	fb442783          	lw	a5,-76(s0)
 374:	00078913          	mv	s2,a5
 378:	41f7d793          	sra	a5,a5,0x1f
 37c:	00078993          	mv	s3,a5
 380:	00090513          	mv	a0,s2
 384:	00098593          	mv	a1,s3
 388:	169060ef          	jal	6cf0 <_Z11dump_resultx>
 38c:	fc0407a3          	sb	zero,-49(s0)
 390:	fc842703          	lw	a4,-56(s0)
 394:	fc442783          	lw	a5,-60(s0)
 398:	00f70733          	add	a4,a4,a5
 39c:	fc042783          	lw	a5,-64(s0)
 3a0:	06f71263          	bne	a4,a5,404 <main+0x294>
 3a4:	fc842703          	lw	a4,-56(s0)
 3a8:	fc442783          	lw	a5,-60(s0)
 3ac:	40f70733          	sub	a4,a4,a5
 3b0:	fbc42783          	lw	a5,-68(s0)
 3b4:	04f71863          	bne	a4,a5,404 <main+0x294>
 3b8:	fc842783          	lw	a5,-56(s0)
 3bc:	fc442703          	lw	a4,-60(s0)
 3c0:	00070593          	mv	a1,a4
 3c4:	00078513          	mv	a0,a5
 3c8:	0ac000ef          	jal	474 <__mulsi3>
 3cc:	00050793          	mv	a5,a0
 3d0:	00078713          	mv	a4,a5
 3d4:	fb842783          	lw	a5,-72(s0)
 3d8:	02f71663          	bne	a4,a5,404 <main+0x294>
 3dc:	fc842783          	lw	a5,-56(s0)
 3e0:	fc442703          	lw	a4,-60(s0)
 3e4:	00070593          	mv	a1,a4
 3e8:	00078513          	mv	a0,a5
 3ec:	0ac000ef          	jal	498 <__divsi3>
 3f0:	00050793          	mv	a5,a0
 3f4:	faf42a23          	sw	a5,-76(s0)
 3f8:	00078663          	beqz	a5,404 <main+0x294>
 3fc:	00100793          	li	a5,1
 400:	0080006f          	j	408 <main+0x298>
 404:	00000793          	li	a5,0
 408:	00078c63          	beqz	a5,420 <main+0x2b0>
 40c:	fc0407a3          	sb	zero,-49(s0)
 410:	0003d7b7          	lui	a5,0x3d
 414:	01078513          	add	a0,a5,16 # 3d010 <_Z11dump_resultx+0x36320>
 418:	059060ef          	jal	6c70 <_Z10uart_printPKc>
 41c:	0180006f          	j	434 <main+0x2c4>
 420:	00100793          	li	a5,1
 424:	fcf407a3          	sb	a5,-49(s0)
 428:	0003d7b7          	lui	a5,0x3d
 42c:	01478513          	add	a0,a5,20 # 3d014 <_Z11dump_resultx+0x36324>
 430:	041060ef          	jal	6c70 <_Z10uart_printPKc>
 434:	fcf44783          	lbu	a5,-49(s0)
 438:	00078513          	mv	a0,a5
 43c:	08c12083          	lw	ra,140(sp)
 440:	08812403          	lw	s0,136(sp)
 444:	08412903          	lw	s2,132(sp)
 448:	08012983          	lw	s3,128(sp)
 44c:	07c12a03          	lw	s4,124(sp)
 450:	07812a83          	lw	s5,120(sp)
 454:	07412b03          	lw	s6,116(sp)
 458:	07012b83          	lw	s7,112(sp)
 45c:	06c12c03          	lw	s8,108(sp)
 460:	06812c83          	lw	s9,104(sp)
 464:	06412d03          	lw	s10,100(sp)
 468:	06012d83          	lw	s11,96(sp)
 46c:	09010113          	add	sp,sp,144
 470:	00008067          	ret

00000474 <__mulsi3>:
 474:	00050613          	mv	a2,a0
 478:	00000513          	li	a0,0
 47c:	0015f693          	and	a3,a1,1
 480:	00068463          	beqz	a3,488 <__mulsi3+0x14>
 484:	00c50533          	add	a0,a0,a2
 488:	0015d593          	srl	a1,a1,0x1
 48c:	00161613          	sll	a2,a2,0x1
 490:	fe0596e3          	bnez	a1,47c <__mulsi3+0x8>
 494:	00008067          	ret

00000498 <__divsi3>:
 498:	06054063          	bltz	a0,4f8 <__umodsi3+0x10>
 49c:	0605c663          	bltz	a1,508 <__umodsi3+0x20>

000004a0 <__hidden___udivsi3>:
 4a0:	00058613          	mv	a2,a1
 4a4:	00050593          	mv	a1,a0
 4a8:	fff00513          	li	a0,-1
 4ac:	02060c63          	beqz	a2,4e4 <__hidden___udivsi3+0x44>
 4b0:	00100693          	li	a3,1
 4b4:	00b67a63          	bgeu	a2,a1,4c8 <__hidden___udivsi3+0x28>
 4b8:	00c05863          	blez	a2,4c8 <__hidden___udivsi3+0x28>
 4bc:	00161613          	sll	a2,a2,0x1
 4c0:	00169693          	sll	a3,a3,0x1
 4c4:	feb66ae3          	bltu	a2,a1,4b8 <__hidden___udivsi3+0x18>
 4c8:	00000513          	li	a0,0
 4cc:	00c5e663          	bltu	a1,a2,4d8 <__hidden___udivsi3+0x38>
 4d0:	40c585b3          	sub	a1,a1,a2
 4d4:	00d56533          	or	a0,a0,a3
 4d8:	0016d693          	srl	a3,a3,0x1
 4dc:	00165613          	srl	a2,a2,0x1
 4e0:	fe0696e3          	bnez	a3,4cc <__hidden___udivsi3+0x2c>
 4e4:	00008067          	ret

000004e8 <__umodsi3>:
 4e8:	00008293          	mv	t0,ra
 4ec:	fb5ff0ef          	jal	4a0 <__hidden___udivsi3>
 4f0:	00058513          	mv	a0,a1
 4f4:	00028067          	jr	t0
 4f8:	40a00533          	neg	a0,a0
 4fc:	00b04863          	bgtz	a1,50c <__umodsi3+0x24>
 500:	40b005b3          	neg	a1,a1
 504:	f9dff06f          	j	4a0 <__hidden___udivsi3>
 508:	40b005b3          	neg	a1,a1
 50c:	00008293          	mv	t0,ra
 510:	f91ff0ef          	jal	4a0 <__hidden___udivsi3>
 514:	40a00533          	neg	a0,a0
 518:	00028067          	jr	t0

0000051c <__modsi3>:
 51c:	00008293          	mv	t0,ra
 520:	0005ca63          	bltz	a1,534 <__modsi3+0x18>
 524:	00054c63          	bltz	a0,53c <__modsi3+0x20>
 528:	f79ff0ef          	jal	4a0 <__hidden___udivsi3>
 52c:	00058513          	mv	a0,a1
 530:	00028067          	jr	t0
 534:	40b005b3          	neg	a1,a1
 538:	fe0558e3          	bgez	a0,528 <__modsi3+0xc>
 53c:	40a00533          	neg	a0,a0
 540:	f61ff0ef          	jal	4a0 <__hidden___udivsi3>
 544:	40b00533          	neg	a0,a1
 548:	00028067          	jr	t0

Disassembly of section .spi_compute:

00002800 <_Z7mul_ptrPViS0_S0_-0x2000>:
	...

00004800 <_Z7mul_ptrPViS0_S0_>:
    4800:	fe010113          	add	sp,sp,-32
    4804:	00112e23          	sw	ra,28(sp)
    4808:	00812c23          	sw	s0,24(sp)
    480c:	02010413          	add	s0,sp,32
    4810:	fea42623          	sw	a0,-20(s0)
    4814:	feb42423          	sw	a1,-24(s0)
    4818:	fec42223          	sw	a2,-28(s0)
    481c:	fec42783          	lw	a5,-20(s0)
    4820:	0007a703          	lw	a4,0(a5)
    4824:	fe842783          	lw	a5,-24(s0)
    4828:	0007a783          	lw	a5,0(a5)
    482c:	00078593          	mv	a1,a5
    4830:	00070513          	mv	a0,a4
    4834:	c41fb0ef          	jal	474 <__mulsi3>
    4838:	00050793          	mv	a5,a0
    483c:	00078713          	mv	a4,a5
    4840:	fe442783          	lw	a5,-28(s0)
    4844:	00e7a023          	sw	a4,0(a5)
    4848:	00000013          	nop
    484c:	01c12083          	lw	ra,28(sp)
    4850:	01812403          	lw	s0,24(sp)
    4854:	02010113          	add	sp,sp,32
    4858:	00008067          	ret

0000485c <_Z7div_ptrPViS0_S0_>:
    485c:	fe010113          	add	sp,sp,-32
    4860:	00112e23          	sw	ra,28(sp)
    4864:	00812c23          	sw	s0,24(sp)
    4868:	02010413          	add	s0,sp,32
    486c:	fea42623          	sw	a0,-20(s0)
    4870:	feb42423          	sw	a1,-24(s0)
    4874:	fec42223          	sw	a2,-28(s0)
    4878:	fec42783          	lw	a5,-20(s0)
    487c:	0007a703          	lw	a4,0(a5)
    4880:	fe842783          	lw	a5,-24(s0)
    4884:	0007a783          	lw	a5,0(a5)
    4888:	00078593          	mv	a1,a5
    488c:	00070513          	mv	a0,a4
    4890:	c09fb0ef          	jal	498 <__divsi3>
    4894:	00050793          	mv	a5,a0
    4898:	00078713          	mv	a4,a5
    489c:	fe442783          	lw	a5,-28(s0)
    48a0:	00e7a023          	sw	a4,0(a5)
    48a4:	00000013          	nop
    48a8:	01c12083          	lw	ra,28(sp)
    48ac:	01812403          	lw	s0,24(sp)
    48b0:	02010113          	add	sp,sp,32
    48b4:	00008067          	ret

Disassembly of section .spi_uart:

00004c00 <_Z9uart_putcc-0x2000>:
	...

00006c00 <_Z9uart_putcc>:
    6c00:	fd010113          	add	sp,sp,-48
    6c04:	02812623          	sw	s0,44(sp)
    6c08:	03010413          	add	s0,sp,48
    6c0c:	00050793          	mv	a5,a0
    6c10:	fcf40fa3          	sb	a5,-33(s0)
    6c14:	002017b7          	lui	a5,0x201
    6c18:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    6c1c:	0007a783          	lw	a5,0(a5)
    6c20:	fef42623          	sw	a5,-20(s0)
    6c24:	002017b7          	lui	a5,0x201
    6c28:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    6c2c:	fdf44703          	lbu	a4,-33(s0)
    6c30:	00e78023          	sb	a4,0(a5)
    6c34:	fe042423          	sw	zero,-24(s0)
    6c38:	0100006f          	j	6c48 <_Z9uart_putcc+0x48>
    6c3c:	fe842783          	lw	a5,-24(s0)
    6c40:	00178793          	add	a5,a5,1
    6c44:	fef42423          	sw	a5,-24(s0)
    6c48:	fe842783          	lw	a5,-24(s0)
    6c4c:	fec42703          	lw	a4,-20(s0)
    6c50:	00e7a7b3          	slt	a5,a5,a4
    6c54:	0ff7f793          	zext.b	a5,a5
    6c58:	fe0792e3          	bnez	a5,6c3c <_Z9uart_putcc+0x3c>
    6c5c:	00000013          	nop
    6c60:	00000013          	nop
    6c64:	02c12403          	lw	s0,44(sp)
    6c68:	03010113          	add	sp,sp,48
    6c6c:	00008067          	ret

00006c70 <_Z10uart_printPKc>:
    6c70:	fd010113          	add	sp,sp,-48
    6c74:	02112623          	sw	ra,44(sp)
    6c78:	02812423          	sw	s0,40(sp)
    6c7c:	03010413          	add	s0,sp,48
    6c80:	fca42e23          	sw	a0,-36(s0)
    6c84:	fe042623          	sw	zero,-20(s0)
    6c88:	0400006f          	j	6cc8 <_Z10uart_printPKc+0x58>
    6c8c:	fec42783          	lw	a5,-20(s0)
    6c90:	fdc42703          	lw	a4,-36(s0)
    6c94:	00f707b3          	add	a5,a4,a5
    6c98:	0007c783          	lbu	a5,0(a5)
    6c9c:	02078e63          	beqz	a5,6cd8 <_Z10uart_printPKc+0x68>
    6ca0:	fec42783          	lw	a5,-20(s0)
    6ca4:	fdc42703          	lw	a4,-36(s0)
    6ca8:	00f707b3          	add	a5,a4,a5
    6cac:	0007c783          	lbu	a5,0(a5)
    6cb0:	00078513          	mv	a0,a5
    6cb4:	f4dff0ef          	jal	6c00 <_Z9uart_putcc>
    6cb8:	00000013          	nop
    6cbc:	fec42783          	lw	a5,-20(s0)
    6cc0:	00178793          	add	a5,a5,1
    6cc4:	fef42623          	sw	a5,-20(s0)
    6cc8:	fec42703          	lw	a4,-20(s0)
    6ccc:	07f00793          	li	a5,127
    6cd0:	fae7dee3          	bge	a5,a4,6c8c <_Z10uart_printPKc+0x1c>
    6cd4:	0080006f          	j	6cdc <_Z10uart_printPKc+0x6c>
    6cd8:	00000013          	nop
    6cdc:	00000013          	nop
    6ce0:	02c12083          	lw	ra,44(sp)
    6ce4:	02812403          	lw	s0,40(sp)
    6ce8:	03010113          	add	sp,sp,48
    6cec:	00008067          	ret

00006cf0 <_Z11dump_resultx>:
    6cf0:	fc010113          	add	sp,sp,-64
    6cf4:	02112e23          	sw	ra,60(sp)
    6cf8:	02812c23          	sw	s0,56(sp)
    6cfc:	04010413          	add	s0,sp,64
    6d00:	fca42423          	sw	a0,-56(s0)
    6d04:	fcb42623          	sw	a1,-52(s0)
    6d08:	fe042623          	sw	zero,-20(s0)
    6d0c:	0700006f          	j	6d7c <_Z11dump_resultx+0x8c>
    6d10:	fec42683          	lw	a3,-20(s0)
    6d14:	00369693          	sll	a3,a3,0x3
    6d18:	fe068613          	add	a2,a3,-32
    6d1c:	00064c63          	bltz	a2,6d34 <_Z11dump_resultx+0x44>
    6d20:	fcc42683          	lw	a3,-52(s0)
    6d24:	40c6d733          	sra	a4,a3,a2
    6d28:	fcc42683          	lw	a3,-52(s0)
    6d2c:	41f6d793          	sra	a5,a3,0x1f
    6d30:	02c0006f          	j	6d5c <_Z11dump_resultx+0x6c>
    6d34:	fcc42603          	lw	a2,-52(s0)
    6d38:	00161593          	sll	a1,a2,0x1
    6d3c:	01f00613          	li	a2,31
    6d40:	40d60633          	sub	a2,a2,a3
    6d44:	00c59633          	sll	a2,a1,a2
    6d48:	fc842583          	lw	a1,-56(s0)
    6d4c:	00d5d733          	srl	a4,a1,a3
    6d50:	00e66733          	or	a4,a2,a4
    6d54:	fcc42603          	lw	a2,-52(s0)
    6d58:	40d657b3          	sra	a5,a2,a3
    6d5c:	0ff77613          	zext.b	a2,a4
    6d60:	fec42683          	lw	a3,-20(s0)
    6d64:	ff068693          	add	a3,a3,-16
    6d68:	008686b3          	add	a3,a3,s0
    6d6c:	fec68423          	sb	a2,-24(a3)
    6d70:	fec42683          	lw	a3,-20(s0)
    6d74:	00168693          	add	a3,a3,1
    6d78:	fed42623          	sw	a3,-20(s0)
    6d7c:	fec42603          	lw	a2,-20(s0)
    6d80:	00700693          	li	a3,7
    6d84:	f8c6d6e3          	bge	a3,a2,6d10 <_Z11dump_resultx+0x20>
    6d88:	00800793          	li	a5,8
    6d8c:	fef42423          	sw	a5,-24(s0)
    6d90:	0100006f          	j	6da0 <_Z11dump_resultx+0xb0>
    6d94:	fe842783          	lw	a5,-24(s0)
    6d98:	fff78793          	add	a5,a5,-1
    6d9c:	fef42423          	sw	a5,-24(s0)
    6da0:	fe842703          	lw	a4,-24(s0)
    6da4:	00100793          	li	a5,1
    6da8:	00e7de63          	bge	a5,a4,6dc4 <_Z11dump_resultx+0xd4>
    6dac:	fe842783          	lw	a5,-24(s0)
    6db0:	fff78793          	add	a5,a5,-1
    6db4:	ff078793          	add	a5,a5,-16
    6db8:	008787b3          	add	a5,a5,s0
    6dbc:	fe87c783          	lbu	a5,-24(a5)
    6dc0:	fc078ae3          	beqz	a5,6d94 <_Z11dump_resultx+0xa4>
    6dc4:	04400513          	li	a0,68
    6dc8:	e39ff0ef          	jal	6c00 <_Z9uart_putcc>
    6dcc:	fe842783          	lw	a5,-24(s0)
    6dd0:	0ff7f793          	zext.b	a5,a5
    6dd4:	00078513          	mv	a0,a5
    6dd8:	e29ff0ef          	jal	6c00 <_Z9uart_putcc>
    6ddc:	fe042223          	sw	zero,-28(s0)
    6de0:	02c0006f          	j	6e0c <_Z11dump_resultx+0x11c>
    6de4:	fe442783          	lw	a5,-28(s0)
    6de8:	ff078793          	add	a5,a5,-16
    6dec:	008787b3          	add	a5,a5,s0
    6df0:	fe87c783          	lbu	a5,-24(a5)
    6df4:	00078513          	mv	a0,a5
    6df8:	e09ff0ef          	jal	6c00 <_Z9uart_putcc>
    6dfc:	00000013          	nop
    6e00:	fe442783          	lw	a5,-28(s0)
    6e04:	00178793          	add	a5,a5,1
    6e08:	fef42223          	sw	a5,-28(s0)
    6e0c:	fe442703          	lw	a4,-28(s0)
    6e10:	fe842783          	lw	a5,-24(s0)
    6e14:	fcf748e3          	blt	a4,a5,6de4 <_Z11dump_resultx+0xf4>
    6e18:	00000013          	nop
    6e1c:	00000013          	nop
    6e20:	03c12083          	lw	ra,60(sp)
    6e24:	03812403          	lw	s0,56(sp)
    6e28:	04010113          	add	sp,sp,64
    6e2c:	00008067          	ret
