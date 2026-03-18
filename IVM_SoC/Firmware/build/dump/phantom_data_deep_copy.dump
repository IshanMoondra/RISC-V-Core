
/out/phantom_data_deep_copy.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	130000ef          	jal	144 <main>
  18:	00050793          	mv	a5,a0
  1c:	00078093          	mv	ra,a5
  20:	00008913          	mv	s2,ra
  24:	41f0d793          	sra	a5,ra,0x1f
  28:	00078993          	mv	s3,a5
  2c:	00090513          	mv	a0,s2
  30:	00098593          	mv	a1,s3
  34:	0bd030ef          	jal	38f0 <_Z11dump_resultx>
  38:	ffffffff          	.word	0xffffffff
  3c:	00000013          	nop

00000040 <_Z7add_ptrPViS0_S0_>:
  40:	fe010113          	add	sp,sp,-32
  44:	00812e23          	sw	s0,28(sp)
  48:	02010413          	add	s0,sp,32
  4c:	fea42623          	sw	a0,-20(s0)
  50:	feb42423          	sw	a1,-24(s0)
  54:	fec42223          	sw	a2,-28(s0)
  58:	fec42783          	lw	a5,-20(s0)
  5c:	0007a703          	lw	a4,0(a5)
  60:	fe842783          	lw	a5,-24(s0)
  64:	0007a783          	lw	a5,0(a5)
  68:	00f70733          	add	a4,a4,a5
  6c:	fe442783          	lw	a5,-28(s0)
  70:	00e7a023          	sw	a4,0(a5)
  74:	00000013          	nop
  78:	01c12403          	lw	s0,28(sp)
  7c:	02010113          	add	sp,sp,32
  80:	00008067          	ret

00000084 <_Z7sub_ptrPViS0_S0_>:
  84:	fe010113          	add	sp,sp,-32
  88:	00812e23          	sw	s0,28(sp)
  8c:	02010413          	add	s0,sp,32
  90:	fea42623          	sw	a0,-20(s0)
  94:	feb42423          	sw	a1,-24(s0)
  98:	fec42223          	sw	a2,-28(s0)
  9c:	fec42783          	lw	a5,-20(s0)
  a0:	0007a703          	lw	a4,0(a5)
  a4:	fe842783          	lw	a5,-24(s0)
  a8:	0007a783          	lw	a5,0(a5)
  ac:	40f70733          	sub	a4,a4,a5
  b0:	fe442783          	lw	a5,-28(s0)
  b4:	00e7a023          	sw	a4,0(a5)
  b8:	00000013          	nop
  bc:	01c12403          	lw	s0,28(sp)
  c0:	02010113          	add	sp,sp,32
  c4:	00008067          	ret

000000c8 <_Z10soc_bootupv>:
  c8:	fe010113          	add	sp,sp,-32
  cc:	00112e23          	sw	ra,28(sp)
  d0:	00812c23          	sw	s0,24(sp)
  d4:	02010413          	add	s0,sp,32
  d8:	fe042623          	sw	zero,-20(s0)
  dc:	0003d7b7          	lui	a5,0x3d
  e0:	09078793          	add	a5,a5,144 # 3d090 <_Z11dump_resultx+0x397a0>
  e4:	fef42423          	sw	a5,-24(s0)
  e8:	002017b7          	lui	a5,0x201
  ec:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  f0:	fec42703          	lw	a4,-20(s0)
  f4:	00e7a023          	sw	a4,0(a5)
  f8:	002017b7          	lui	a5,0x201
  fc:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
 100:	fe842703          	lw	a4,-24(s0)
 104:	00e7a023          	sw	a4,0(a5)
 108:	03200793          	li	a5,50
 10c:	fef42223          	sw	a5,-28(s0)
 110:	002017b7          	lui	a5,0x201
 114:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 118:	fe442703          	lw	a4,-28(s0)
 11c:	00e7a023          	sw	a4,0(a5)
 120:	00a00513          	li	a0,10
 124:	6dc030ef          	jal	3800 <_Z9uart_putcc>
 128:	03e00513          	li	a0,62
 12c:	6d4030ef          	jal	3800 <_Z9uart_putcc>
 130:	00000013          	nop
 134:	01c12083          	lw	ra,28(sp)
 138:	01812403          	lw	s0,24(sp)
 13c:	02010113          	add	sp,sp,32
 140:	00008067          	ret

00000144 <main>:
 144:	f6010113          	add	sp,sp,-160
 148:	08112e23          	sw	ra,156(sp)
 14c:	08812c23          	sw	s0,152(sp)
 150:	09212a23          	sw	s2,148(sp)
 154:	09312823          	sw	s3,144(sp)
 158:	09412623          	sw	s4,140(sp)
 15c:	09512423          	sw	s5,136(sp)
 160:	09612223          	sw	s6,132(sp)
 164:	09712023          	sw	s7,128(sp)
 168:	07812e23          	sw	s8,124(sp)
 16c:	07912c23          	sw	s9,120(sp)
 170:	07a12a23          	sw	s10,116(sp)
 174:	07b12823          	sw	s11,112(sp)
 178:	0a010413          	add	s0,sp,160
 17c:	f4dff0ef          	jal	c8 <_Z10soc_bootupv>
 180:	02000793          	li	a5,32
 184:	fcf42623          	sw	a5,-52(s0)
 188:	00800793          	li	a5,8
 18c:	fcf42423          	sw	a5,-56(s0)
 190:	fc042223          	sw	zero,-60(s0)
 194:	fc042023          	sw	zero,-64(s0)
 198:	fa042e23          	sw	zero,-68(s0)
 19c:	fa042c23          	sw	zero,-72(s0)
 1a0:	fc440793          	add	a5,s0,-60
 1a4:	fc840693          	add	a3,s0,-56
 1a8:	fcc40713          	add	a4,s0,-52
 1ac:	00078613          	mv	a2,a5
 1b0:	00068593          	mv	a1,a3
 1b4:	00070513          	mv	a0,a4
 1b8:	e89ff0ef          	jal	40 <_Z7add_ptrPViS0_S0_>
 1bc:	fc040793          	add	a5,s0,-64
 1c0:	fc840693          	add	a3,s0,-56
 1c4:	fcc40713          	add	a4,s0,-52
 1c8:	00078613          	mv	a2,a5
 1cc:	00068593          	mv	a1,a3
 1d0:	00070513          	mv	a0,a4
 1d4:	eb1ff0ef          	jal	84 <_Z7sub_ptrPViS0_S0_>
 1d8:	fcc40793          	add	a5,s0,-52
 1dc:	f8f42c23          	sw	a5,-104(s0)
 1e0:	41f7d793          	sra	a5,a5,0x1f
 1e4:	f8f42e23          	sw	a5,-100(s0)
 1e8:	f9842503          	lw	a0,-104(s0)
 1ec:	f9c42583          	lw	a1,-100(s0)
 1f0:	700030ef          	jal	38f0 <_Z11dump_resultx>
 1f4:	fcc42783          	lw	a5,-52(s0)
 1f8:	f8f42823          	sw	a5,-112(s0)
 1fc:	41f7d793          	sra	a5,a5,0x1f
 200:	f8f42a23          	sw	a5,-108(s0)
 204:	f9042503          	lw	a0,-112(s0)
 208:	f9442583          	lw	a1,-108(s0)
 20c:	6e4030ef          	jal	38f0 <_Z11dump_resultx>
 210:	fc840793          	add	a5,s0,-56
 214:	f8f42423          	sw	a5,-120(s0)
 218:	41f7d793          	sra	a5,a5,0x1f
 21c:	f8f42623          	sw	a5,-116(s0)
 220:	f8842503          	lw	a0,-120(s0)
 224:	f8c42583          	lw	a1,-116(s0)
 228:	6c8030ef          	jal	38f0 <_Z11dump_resultx>
 22c:	fc842783          	lw	a5,-56(s0)
 230:	f8f42023          	sw	a5,-128(s0)
 234:	41f7d793          	sra	a5,a5,0x1f
 238:	f8f42223          	sw	a5,-124(s0)
 23c:	f8042503          	lw	a0,-128(s0)
 240:	f8442583          	lw	a1,-124(s0)
 244:	6ac030ef          	jal	38f0 <_Z11dump_resultx>
 248:	fc440793          	add	a5,s0,-60
 24c:	f6f42c23          	sw	a5,-136(s0)
 250:	41f7d793          	sra	a5,a5,0x1f
 254:	f6f42e23          	sw	a5,-132(s0)
 258:	f7842503          	lw	a0,-136(s0)
 25c:	f7c42583          	lw	a1,-132(s0)
 260:	690030ef          	jal	38f0 <_Z11dump_resultx>
 264:	fc442783          	lw	a5,-60(s0)
 268:	f6f42823          	sw	a5,-144(s0)
 26c:	41f7d793          	sra	a5,a5,0x1f
 270:	f6f42a23          	sw	a5,-140(s0)
 274:	f7042503          	lw	a0,-144(s0)
 278:	f7442583          	lw	a1,-140(s0)
 27c:	674030ef          	jal	38f0 <_Z11dump_resultx>
 280:	fc040793          	add	a5,s0,-64
 284:	f6f42423          	sw	a5,-152(s0)
 288:	41f7d793          	sra	a5,a5,0x1f
 28c:	f6f42623          	sw	a5,-148(s0)
 290:	f6842503          	lw	a0,-152(s0)
 294:	f6c42583          	lw	a1,-148(s0)
 298:	658030ef          	jal	38f0 <_Z11dump_resultx>
 29c:	fc042783          	lw	a5,-64(s0)
 2a0:	f6f42023          	sw	a5,-160(s0)
 2a4:	41f7d793          	sra	a5,a5,0x1f
 2a8:	f6f42223          	sw	a5,-156(s0)
 2ac:	f6042503          	lw	a0,-160(s0)
 2b0:	f6442583          	lw	a1,-156(s0)
 2b4:	63c030ef          	jal	38f0 <_Z11dump_resultx>
 2b8:	fcc42783          	lw	a5,-52(s0)
 2bc:	fc842703          	lw	a4,-56(s0)
 2c0:	00070593          	mv	a1,a4
 2c4:	00078513          	mv	a0,a5
 2c8:	144000ef          	jal	40c <__mulsi3>
 2cc:	00050793          	mv	a5,a0
 2d0:	faf42e23          	sw	a5,-68(s0)
 2d4:	fcc42783          	lw	a5,-52(s0)
 2d8:	fc842703          	lw	a4,-56(s0)
 2dc:	00070593          	mv	a1,a4
 2e0:	00078513          	mv	a0,a5
 2e4:	14c000ef          	jal	430 <__divsi3>
 2e8:	00050793          	mv	a5,a0
 2ec:	faf42c23          	sw	a5,-72(s0)
 2f0:	fbc40793          	add	a5,s0,-68
 2f4:	00078d13          	mv	s10,a5
 2f8:	41f7d793          	sra	a5,a5,0x1f
 2fc:	00078d93          	mv	s11,a5
 300:	000d0513          	mv	a0,s10
 304:	000d8593          	mv	a1,s11
 308:	5e8030ef          	jal	38f0 <_Z11dump_resultx>
 30c:	fbc42783          	lw	a5,-68(s0)
 310:	00078c13          	mv	s8,a5
 314:	41f7d793          	sra	a5,a5,0x1f
 318:	00078c93          	mv	s9,a5
 31c:	000c0513          	mv	a0,s8
 320:	000c8593          	mv	a1,s9
 324:	5cc030ef          	jal	38f0 <_Z11dump_resultx>
 328:	fb840793          	add	a5,s0,-72
 32c:	00078b13          	mv	s6,a5
 330:	41f7d793          	sra	a5,a5,0x1f
 334:	00078b93          	mv	s7,a5
 338:	000b0513          	mv	a0,s6
 33c:	000b8593          	mv	a1,s7
 340:	5b0030ef          	jal	38f0 <_Z11dump_resultx>
 344:	fb842783          	lw	a5,-72(s0)
 348:	00078a13          	mv	s4,a5
 34c:	41f7d793          	sra	a5,a5,0x1f
 350:	00078a93          	mv	s5,a5
 354:	000a0513          	mv	a0,s4
 358:	000a8593          	mv	a1,s5
 35c:	594030ef          	jal	38f0 <_Z11dump_resultx>
 360:	0003d7b7          	lui	a5,0x3d
 364:	01078793          	add	a5,a5,16 # 3d010 <_Z11dump_resultx+0x39720>
 368:	0007a603          	lw	a2,0(a5)
 36c:	0047a683          	lw	a3,4(a5)
 370:	0087a703          	lw	a4,8(a5)
 374:	fac42423          	sw	a2,-88(s0)
 378:	fad42623          	sw	a3,-84(s0)
 37c:	fae42823          	sw	a4,-80(s0)
 380:	00c7c783          	lbu	a5,12(a5)
 384:	faf40a23          	sb	a5,-76(s0)
 388:	0003d7b7          	lui	a5,0x3d
 38c:	00078513          	mv	a0,a5
 390:	4e0030ef          	jal	3870 <_Z10uart_printPKc>
 394:	00a00513          	li	a0,10
 398:	468030ef          	jal	3800 <_Z9uart_putcc>
 39c:	fa840793          	add	a5,s0,-88
 3a0:	00078513          	mv	a0,a5
 3a4:	4cc030ef          	jal	3870 <_Z10uart_printPKc>
 3a8:	002017b7          	lui	a5,0x201
 3ac:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
 3b0:	0007a783          	lw	a5,0(a5)
 3b4:	00078913          	mv	s2,a5
 3b8:	41f7d793          	sra	a5,a5,0x1f
 3bc:	00078993          	mv	s3,a5
 3c0:	00090513          	mv	a0,s2
 3c4:	00098593          	mv	a1,s3
 3c8:	528030ef          	jal	38f0 <_Z11dump_resultx>
 3cc:	00000793          	li	a5,0
 3d0:	00078513          	mv	a0,a5
 3d4:	09c12083          	lw	ra,156(sp)
 3d8:	09812403          	lw	s0,152(sp)
 3dc:	09412903          	lw	s2,148(sp)
 3e0:	09012983          	lw	s3,144(sp)
 3e4:	08c12a03          	lw	s4,140(sp)
 3e8:	08812a83          	lw	s5,136(sp)
 3ec:	08412b03          	lw	s6,132(sp)
 3f0:	08012b83          	lw	s7,128(sp)
 3f4:	07c12c03          	lw	s8,124(sp)
 3f8:	07812c83          	lw	s9,120(sp)
 3fc:	07412d03          	lw	s10,116(sp)
 400:	07012d83          	lw	s11,112(sp)
 404:	0a010113          	add	sp,sp,160
 408:	00008067          	ret

0000040c <__mulsi3>:
 40c:	00050613          	mv	a2,a0
 410:	00000513          	li	a0,0
 414:	0015f693          	and	a3,a1,1
 418:	00068463          	beqz	a3,420 <__mulsi3+0x14>
 41c:	00c50533          	add	a0,a0,a2
 420:	0015d593          	srl	a1,a1,0x1
 424:	00161613          	sll	a2,a2,0x1
 428:	fe0596e3          	bnez	a1,414 <__mulsi3+0x8>
 42c:	00008067          	ret

00000430 <__divsi3>:
 430:	06054063          	bltz	a0,490 <__umodsi3+0x10>
 434:	0605c663          	bltz	a1,4a0 <__umodsi3+0x20>

00000438 <__hidden___udivsi3>:
 438:	00058613          	mv	a2,a1
 43c:	00050593          	mv	a1,a0
 440:	fff00513          	li	a0,-1
 444:	02060c63          	beqz	a2,47c <__hidden___udivsi3+0x44>
 448:	00100693          	li	a3,1
 44c:	00b67a63          	bgeu	a2,a1,460 <__hidden___udivsi3+0x28>
 450:	00c05863          	blez	a2,460 <__hidden___udivsi3+0x28>
 454:	00161613          	sll	a2,a2,0x1
 458:	00169693          	sll	a3,a3,0x1
 45c:	feb66ae3          	bltu	a2,a1,450 <__hidden___udivsi3+0x18>
 460:	00000513          	li	a0,0
 464:	00c5e663          	bltu	a1,a2,470 <__hidden___udivsi3+0x38>
 468:	40c585b3          	sub	a1,a1,a2
 46c:	00d56533          	or	a0,a0,a3
 470:	0016d693          	srl	a3,a3,0x1
 474:	00165613          	srl	a2,a2,0x1
 478:	fe0696e3          	bnez	a3,464 <__hidden___udivsi3+0x2c>
 47c:	00008067          	ret

00000480 <__umodsi3>:
 480:	00008293          	mv	t0,ra
 484:	fb5ff0ef          	jal	438 <__hidden___udivsi3>
 488:	00058513          	mv	a0,a1
 48c:	00028067          	jr	t0
 490:	40a00533          	neg	a0,a0
 494:	00b04863          	bgtz	a1,4a4 <__umodsi3+0x24>
 498:	40b005b3          	neg	a1,a1
 49c:	f9dff06f          	j	438 <__hidden___udivsi3>
 4a0:	40b005b3          	neg	a1,a1
 4a4:	00008293          	mv	t0,ra
 4a8:	f91ff0ef          	jal	438 <__hidden___udivsi3>
 4ac:	40a00533          	neg	a0,a0
 4b0:	00028067          	jr	t0

000004b4 <__modsi3>:
 4b4:	00008293          	mv	t0,ra
 4b8:	0005ca63          	bltz	a1,4cc <__modsi3+0x18>
 4bc:	00054c63          	bltz	a0,4d4 <__modsi3+0x20>
 4c0:	f79ff0ef          	jal	438 <__hidden___udivsi3>
 4c4:	00058513          	mv	a0,a1
 4c8:	00028067          	jr	t0
 4cc:	40b005b3          	neg	a1,a1
 4d0:	fe0558e3          	bgez	a0,4c0 <__modsi3+0xc>
 4d4:	40a00533          	neg	a0,a0
 4d8:	f61ff0ef          	jal	438 <__hidden___udivsi3>
 4dc:	40b00533          	neg	a0,a1
 4e0:	00028067          	jr	t0

Disassembly of section .spi_uart:

00002800 <_Z9uart_putcc-0x1000>:
	...

00003800 <_Z9uart_putcc>:
    3800:	fd010113          	add	sp,sp,-48
    3804:	02812623          	sw	s0,44(sp)
    3808:	03010413          	add	s0,sp,48
    380c:	00050793          	mv	a5,a0
    3810:	fcf40fa3          	sb	a5,-33(s0)
    3814:	002017b7          	lui	a5,0x201
    3818:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    381c:	0007a783          	lw	a5,0(a5)
    3820:	fef42623          	sw	a5,-20(s0)
    3824:	002017b7          	lui	a5,0x201
    3828:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    382c:	fdf44703          	lbu	a4,-33(s0)
    3830:	00e78023          	sb	a4,0(a5)
    3834:	fe042423          	sw	zero,-24(s0)
    3838:	0100006f          	j	3848 <_Z9uart_putcc+0x48>
    383c:	fe842783          	lw	a5,-24(s0)
    3840:	00178793          	add	a5,a5,1
    3844:	fef42423          	sw	a5,-24(s0)
    3848:	fe842783          	lw	a5,-24(s0)
    384c:	fec42703          	lw	a4,-20(s0)
    3850:	00e7a7b3          	slt	a5,a5,a4
    3854:	0ff7f793          	zext.b	a5,a5
    3858:	fe0792e3          	bnez	a5,383c <_Z9uart_putcc+0x3c>
    385c:	00000013          	nop
    3860:	00000013          	nop
    3864:	02c12403          	lw	s0,44(sp)
    3868:	03010113          	add	sp,sp,48
    386c:	00008067          	ret

00003870 <_Z10uart_printPKc>:
    3870:	fd010113          	add	sp,sp,-48
    3874:	02112623          	sw	ra,44(sp)
    3878:	02812423          	sw	s0,40(sp)
    387c:	03010413          	add	s0,sp,48
    3880:	fca42e23          	sw	a0,-36(s0)
    3884:	fe042623          	sw	zero,-20(s0)
    3888:	0400006f          	j	38c8 <_Z10uart_printPKc+0x58>
    388c:	fec42783          	lw	a5,-20(s0)
    3890:	fdc42703          	lw	a4,-36(s0)
    3894:	00f707b3          	add	a5,a4,a5
    3898:	0007c783          	lbu	a5,0(a5)
    389c:	02078e63          	beqz	a5,38d8 <_Z10uart_printPKc+0x68>
    38a0:	fec42783          	lw	a5,-20(s0)
    38a4:	fdc42703          	lw	a4,-36(s0)
    38a8:	00f707b3          	add	a5,a4,a5
    38ac:	0007c783          	lbu	a5,0(a5)
    38b0:	00078513          	mv	a0,a5
    38b4:	f4dff0ef          	jal	3800 <_Z9uart_putcc>
    38b8:	00000013          	nop
    38bc:	fec42783          	lw	a5,-20(s0)
    38c0:	00178793          	add	a5,a5,1
    38c4:	fef42623          	sw	a5,-20(s0)
    38c8:	fec42703          	lw	a4,-20(s0)
    38cc:	07f00793          	li	a5,127
    38d0:	fae7dee3          	bge	a5,a4,388c <_Z10uart_printPKc+0x1c>
    38d4:	0080006f          	j	38dc <_Z10uart_printPKc+0x6c>
    38d8:	00000013          	nop
    38dc:	00000013          	nop
    38e0:	02c12083          	lw	ra,44(sp)
    38e4:	02812403          	lw	s0,40(sp)
    38e8:	03010113          	add	sp,sp,48
    38ec:	00008067          	ret

000038f0 <_Z11dump_resultx>:
    38f0:	fc010113          	add	sp,sp,-64
    38f4:	02112e23          	sw	ra,60(sp)
    38f8:	02812c23          	sw	s0,56(sp)
    38fc:	04010413          	add	s0,sp,64
    3900:	fca42423          	sw	a0,-56(s0)
    3904:	fcb42623          	sw	a1,-52(s0)
    3908:	fe042623          	sw	zero,-20(s0)
    390c:	0700006f          	j	397c <_Z11dump_resultx+0x8c>
    3910:	fec42683          	lw	a3,-20(s0)
    3914:	00369693          	sll	a3,a3,0x3
    3918:	fe068613          	add	a2,a3,-32
    391c:	00064c63          	bltz	a2,3934 <_Z11dump_resultx+0x44>
    3920:	fcc42683          	lw	a3,-52(s0)
    3924:	40c6d733          	sra	a4,a3,a2
    3928:	fcc42683          	lw	a3,-52(s0)
    392c:	41f6d793          	sra	a5,a3,0x1f
    3930:	02c0006f          	j	395c <_Z11dump_resultx+0x6c>
    3934:	fcc42603          	lw	a2,-52(s0)
    3938:	00161593          	sll	a1,a2,0x1
    393c:	01f00613          	li	a2,31
    3940:	40d60633          	sub	a2,a2,a3
    3944:	00c59633          	sll	a2,a1,a2
    3948:	fc842583          	lw	a1,-56(s0)
    394c:	00d5d733          	srl	a4,a1,a3
    3950:	00e66733          	or	a4,a2,a4
    3954:	fcc42603          	lw	a2,-52(s0)
    3958:	40d657b3          	sra	a5,a2,a3
    395c:	0ff77613          	zext.b	a2,a4
    3960:	fec42683          	lw	a3,-20(s0)
    3964:	ff068693          	add	a3,a3,-16
    3968:	008686b3          	add	a3,a3,s0
    396c:	fec68423          	sb	a2,-24(a3)
    3970:	fec42683          	lw	a3,-20(s0)
    3974:	00168693          	add	a3,a3,1
    3978:	fed42623          	sw	a3,-20(s0)
    397c:	fec42603          	lw	a2,-20(s0)
    3980:	00700693          	li	a3,7
    3984:	f8c6d6e3          	bge	a3,a2,3910 <_Z11dump_resultx+0x20>
    3988:	00800793          	li	a5,8
    398c:	fef42423          	sw	a5,-24(s0)
    3990:	0100006f          	j	39a0 <_Z11dump_resultx+0xb0>
    3994:	fe842783          	lw	a5,-24(s0)
    3998:	fff78793          	add	a5,a5,-1
    399c:	fef42423          	sw	a5,-24(s0)
    39a0:	fe842703          	lw	a4,-24(s0)
    39a4:	00100793          	li	a5,1
    39a8:	00e7de63          	bge	a5,a4,39c4 <_Z11dump_resultx+0xd4>
    39ac:	fe842783          	lw	a5,-24(s0)
    39b0:	fff78793          	add	a5,a5,-1
    39b4:	ff078793          	add	a5,a5,-16
    39b8:	008787b3          	add	a5,a5,s0
    39bc:	fe87c783          	lbu	a5,-24(a5)
    39c0:	fc078ae3          	beqz	a5,3994 <_Z11dump_resultx+0xa4>
    39c4:	04400513          	li	a0,68
    39c8:	e39ff0ef          	jal	3800 <_Z9uart_putcc>
    39cc:	fe842783          	lw	a5,-24(s0)
    39d0:	0ff7f793          	zext.b	a5,a5
    39d4:	00078513          	mv	a0,a5
    39d8:	e29ff0ef          	jal	3800 <_Z9uart_putcc>
    39dc:	fe042223          	sw	zero,-28(s0)
    39e0:	02c0006f          	j	3a0c <_Z11dump_resultx+0x11c>
    39e4:	fe442783          	lw	a5,-28(s0)
    39e8:	ff078793          	add	a5,a5,-16
    39ec:	008787b3          	add	a5,a5,s0
    39f0:	fe87c783          	lbu	a5,-24(a5)
    39f4:	00078513          	mv	a0,a5
    39f8:	e09ff0ef          	jal	3800 <_Z9uart_putcc>
    39fc:	00000013          	nop
    3a00:	fe442783          	lw	a5,-28(s0)
    3a04:	00178793          	add	a5,a5,1
    3a08:	fef42223          	sw	a5,-28(s0)
    3a0c:	fe442703          	lw	a4,-28(s0)
    3a10:	fe842783          	lw	a5,-24(s0)
    3a14:	fcf748e3          	blt	a4,a5,39e4 <_Z11dump_resultx+0xf4>
    3a18:	00000013          	nop
    3a1c:	00000013          	nop
    3a20:	03c12083          	lw	ra,60(sp)
    3a24:	03812403          	lw	s0,56(sp)
    3a28:	04010113          	add	sp,sp,64
    3a2c:	00008067          	ret
