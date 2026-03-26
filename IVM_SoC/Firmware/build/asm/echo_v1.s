
/out/echo_v1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	00000013          	nop
  18:	050000ef          	jal	68 <_Z10soc_bootupv>
  1c:	134000ef          	jal	150 <main>
  20:	00050793          	mv	a5,a0
  24:	00078a13          	mv	s4,a5
  28:	41f7d793          	sra	a5,a5,0x1f
  2c:	00078a93          	mv	s5,a5
  30:	000a0513          	mv	a0,s4
  34:	000a8593          	mv	a1,s5
  38:	4b8060ef          	jal	64f0 <_Z11dump_resultx>
  3c:	002017b7          	lui	a5,0x201
  40:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
  44:	0007a783          	lw	a5,0(a5)
  48:	00078913          	mv	s2,a5
  4c:	41f7d793          	sra	a5,a5,0x1f
  50:	00078993          	mv	s3,a5
  54:	00090513          	mv	a0,s2
  58:	00098593          	mv	a1,s3
  5c:	494060ef          	jal	64f0 <_Z11dump_resultx>
  60:	ffffffff          	.word	0xffffffff
  64:	00000013          	nop

00000068 <_Z10soc_bootupv>:
  68:	fd010113          	add	sp,sp,-48
  6c:	02112623          	sw	ra,44(sp)
  70:	02812423          	sw	s0,40(sp)
  74:	03212223          	sw	s2,36(sp)
  78:	03312023          	sw	s3,32(sp)
  7c:	01412e23          	sw	s4,28(sp)
  80:	01512c23          	sw	s5,24(sp)
  84:	03010413          	add	s0,sp,48
  88:	fc042c23          	sw	zero,-40(s0)
  8c:	010007b7          	lui	a5,0x1000
  90:	fcf42a23          	sw	a5,-44(s0)
  94:	002017b7          	lui	a5,0x201
  98:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  9c:	fd842703          	lw	a4,-40(s0)
  a0:	00e7a023          	sw	a4,0(a5)
  a4:	002017b7          	lui	a5,0x201
  a8:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  ac:	fd442703          	lw	a4,-44(s0)
  b0:	00e7a023          	sw	a4,0(a5)
  b4:	03200793          	li	a5,50
  b8:	fcf42e23          	sw	a5,-36(s0)
  bc:	002017b7          	lui	a5,0x201
  c0:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  c4:	fdc42703          	lw	a4,-36(s0)
  c8:	00e7a023          	sw	a4,0(a5)
  cc:	0003d7b7          	lui	a5,0x3d
  d0:	00078513          	mv	a0,a5
  d4:	39c060ef          	jal	6470 <_Z10uart_printPKc>
  d8:	002017b7          	lui	a5,0x201
  dc:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
  e0:	0007a783          	lw	a5,0(a5)
  e4:	00078a13          	mv	s4,a5
  e8:	41f7d793          	sra	a5,a5,0x1f
  ec:	00078a93          	mv	s5,a5
  f0:	000a0513          	mv	a0,s4
  f4:	000a8593          	mv	a1,s5
  f8:	3f8060ef          	jal	64f0 <_Z11dump_resultx>
  fc:	002017b7          	lui	a5,0x201
 100:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
 104:	0007a783          	lw	a5,0(a5)
 108:	00078913          	mv	s2,a5
 10c:	41f7d793          	sra	a5,a5,0x1f
 110:	00078993          	mv	s3,a5
 114:	00090513          	mv	a0,s2
 118:	00098593          	mv	a1,s3
 11c:	3d4060ef          	jal	64f0 <_Z11dump_resultx>
 120:	0003d7b7          	lui	a5,0x3d
 124:	00c78513          	add	a0,a5,12 # 3d00c <_Z9str_equalPKcS0_+0x369dc>
 128:	348060ef          	jal	6470 <_Z10uart_printPKc>
 12c:	00000013          	nop
 130:	02c12083          	lw	ra,44(sp)
 134:	02812403          	lw	s0,40(sp)
 138:	02412903          	lw	s2,36(sp)
 13c:	02012983          	lw	s3,32(sp)
 140:	01c12a03          	lw	s4,28(sp)
 144:	01812a83          	lw	s5,24(sp)
 148:	03010113          	add	sp,sp,48
 14c:	00008067          	ret

00000150 <main>:
 150:	f6010113          	add	sp,sp,-160
 154:	08112e23          	sw	ra,156(sp)
 158:	08812c23          	sw	s0,152(sp)
 15c:	0a010413          	add	s0,sp,160
 160:	00100793          	li	a5,1
 164:	fef404a3          	sb	a5,-23(s0)
 168:	fe042623          	sw	zero,-20(s0)
 16c:	fe0405a3          	sb	zero,-21(s0)
 170:	002017b7          	lui	a5,0x201
 174:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 178:	0007c783          	lbu	a5,0(a5)
 17c:	fef40523          	sb	a5,-22(s0)
 180:	002017b7          	lui	a5,0x201
 184:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 188:	0007c783          	lbu	a5,0(a5)
 18c:	fef40523          	sb	a5,-22(s0)
 190:	fea44783          	lbu	a5,-22(s0)
 194:	0047f793          	and	a5,a5,4
 198:	fe0784e3          	beqz	a5,180 <main+0x30>
 19c:	002017b7          	lui	a5,0x201
 1a0:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 1a4:	0007c783          	lbu	a5,0(a5)
 1a8:	fef405a3          	sb	a5,-21(s0)
 1ac:	00000013          	nop
 1b0:	feb44703          	lbu	a4,-21(s0)
 1b4:	00a00793          	li	a5,10
 1b8:	00f70863          	beq	a4,a5,1c8 <main+0x78>
 1bc:	feb44703          	lbu	a4,-21(s0)
 1c0:	00d00793          	li	a5,13
 1c4:	08f71263          	bne	a4,a5,248 <main+0xf8>
 1c8:	fec42783          	lw	a5,-20(s0)
 1cc:	ff078793          	add	a5,a5,-16
 1d0:	008787b3          	add	a5,a5,s0
 1d4:	f6078c23          	sb	zero,-136(a5)
 1d8:	0003d7b7          	lui	a5,0x3d
 1dc:	01078513          	add	a0,a5,16 # 3d010 <_Z9str_equalPKcS0_+0x369e0>
 1e0:	290060ef          	jal	6470 <_Z10uart_printPKc>
 1e4:	f6840713          	add	a4,s0,-152
 1e8:	0003d7b7          	lui	a5,0x3d
 1ec:	01478593          	add	a1,a5,20 # 3d014 <_Z9str_equalPKcS0_+0x369e4>
 1f0:	00070513          	mv	a0,a4
 1f4:	43c060ef          	jal	6630 <_Z9str_equalPKcS0_>
 1f8:	00050793          	mv	a5,a0
 1fc:	00f037b3          	snez	a5,a5
 200:	0ff7f793          	zext.b	a5,a5
 204:	00078c63          	beqz	a5,21c <main+0xcc>
 208:	0003d7b7          	lui	a5,0x3d
 20c:	01c78513          	add	a0,a5,28 # 3d01c <_Z9str_equalPKcS0_+0x369ec>
 210:	260060ef          	jal	6470 <_Z10uart_printPKc>
 214:	fe0404a3          	sb	zero,-23(s0)
 218:	0800006f          	j	298 <main+0x148>
 21c:	f6840793          	add	a5,s0,-152
 220:	00078513          	mv	a0,a5
 224:	24c060ef          	jal	6470 <_Z10uart_printPKc>
 228:	0003d7b7          	lui	a5,0x3d
 22c:	01078513          	add	a0,a5,16 # 3d010 <_Z9str_equalPKcS0_+0x369e0>
 230:	240060ef          	jal	6470 <_Z10uart_printPKc>
 234:	fe042623          	sw	zero,-20(s0)
 238:	0003d7b7          	lui	a5,0x3d
 23c:	02c78513          	add	a0,a5,44 # 3d02c <_Z9str_equalPKcS0_+0x369fc>
 240:	230060ef          	jal	6470 <_Z10uart_printPKc>
 244:	0500006f          	j	294 <main+0x144>
 248:	fec42703          	lw	a4,-20(s0)
 24c:	07e00793          	li	a5,126
 250:	02e7c663          	blt	a5,a4,27c <main+0x12c>
 254:	feb44783          	lbu	a5,-21(s0)
 258:	f0078ce3          	beqz	a5,170 <main+0x20>
 25c:	feb44703          	lbu	a4,-21(s0)
 260:	fec42783          	lw	a5,-20(s0)
 264:	00178693          	add	a3,a5,1
 268:	fed42623          	sw	a3,-20(s0)
 26c:	ff078793          	add	a5,a5,-16
 270:	008787b3          	add	a5,a5,s0
 274:	f6e78c23          	sb	a4,-136(a5)
 278:	ef9ff06f          	j	170 <main+0x20>
 27c:	fe0403a3          	sb	zero,-25(s0)
 280:	0003d7b7          	lui	a5,0x3d
 284:	03078513          	add	a0,a5,48 # 3d030 <_Z9str_equalPKcS0_+0x36a00>
 288:	1e8060ef          	jal	6470 <_Z10uart_printPKc>
 28c:	fe042623          	sw	zero,-20(s0)
 290:	0080006f          	j	298 <main+0x148>
 294:	eddff06f          	j	170 <main+0x20>
 298:	fe944783          	lbu	a5,-23(s0)
 29c:	0ff7f793          	zext.b	a5,a5
 2a0:	00078513          	mv	a0,a5
 2a4:	09c12083          	lw	ra,156(sp)
 2a8:	09812403          	lw	s0,152(sp)
 2ac:	0a010113          	add	sp,sp,160
 2b0:	00008067          	ret

Disassembly of section .spi_uart:

00004400 <_Z9uart_putcc-0x2000>:
	...

00006400 <_Z9uart_putcc>:
    6400:	fd010113          	add	sp,sp,-48
    6404:	02812623          	sw	s0,44(sp)
    6408:	03010413          	add	s0,sp,48
    640c:	00050793          	mv	a5,a0
    6410:	fcf40fa3          	sb	a5,-33(s0)
    6414:	002017b7          	lui	a5,0x201
    6418:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    641c:	0007a783          	lw	a5,0(a5)
    6420:	fef42623          	sw	a5,-20(s0)
    6424:	002017b7          	lui	a5,0x201
    6428:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    642c:	fdf44703          	lbu	a4,-33(s0)
    6430:	00e78023          	sb	a4,0(a5)
    6434:	fe042423          	sw	zero,-24(s0)
    6438:	0100006f          	j	6448 <_Z9uart_putcc+0x48>
    643c:	fe842783          	lw	a5,-24(s0)
    6440:	00178793          	add	a5,a5,1
    6444:	fef42423          	sw	a5,-24(s0)
    6448:	fe842783          	lw	a5,-24(s0)
    644c:	fec42703          	lw	a4,-20(s0)
    6450:	00e7a7b3          	slt	a5,a5,a4
    6454:	0ff7f793          	zext.b	a5,a5
    6458:	fe0792e3          	bnez	a5,643c <_Z9uart_putcc+0x3c>
    645c:	00000013          	nop
    6460:	00000013          	nop
    6464:	02c12403          	lw	s0,44(sp)
    6468:	03010113          	add	sp,sp,48
    646c:	00008067          	ret

00006470 <_Z10uart_printPKc>:
    6470:	fd010113          	add	sp,sp,-48
    6474:	02112623          	sw	ra,44(sp)
    6478:	02812423          	sw	s0,40(sp)
    647c:	03010413          	add	s0,sp,48
    6480:	fca42e23          	sw	a0,-36(s0)
    6484:	fe042623          	sw	zero,-20(s0)
    6488:	0400006f          	j	64c8 <_Z10uart_printPKc+0x58>
    648c:	fec42783          	lw	a5,-20(s0)
    6490:	fdc42703          	lw	a4,-36(s0)
    6494:	00f707b3          	add	a5,a4,a5
    6498:	0007c783          	lbu	a5,0(a5)
    649c:	02078e63          	beqz	a5,64d8 <_Z10uart_printPKc+0x68>
    64a0:	fec42783          	lw	a5,-20(s0)
    64a4:	fdc42703          	lw	a4,-36(s0)
    64a8:	00f707b3          	add	a5,a4,a5
    64ac:	0007c783          	lbu	a5,0(a5)
    64b0:	00078513          	mv	a0,a5
    64b4:	f4dff0ef          	jal	6400 <_Z9uart_putcc>
    64b8:	00000013          	nop
    64bc:	fec42783          	lw	a5,-20(s0)
    64c0:	00178793          	add	a5,a5,1
    64c4:	fef42623          	sw	a5,-20(s0)
    64c8:	fec42703          	lw	a4,-20(s0)
    64cc:	07f00793          	li	a5,127
    64d0:	fae7dee3          	bge	a5,a4,648c <_Z10uart_printPKc+0x1c>
    64d4:	0080006f          	j	64dc <_Z10uart_printPKc+0x6c>
    64d8:	00000013          	nop
    64dc:	00000013          	nop
    64e0:	02c12083          	lw	ra,44(sp)
    64e4:	02812403          	lw	s0,40(sp)
    64e8:	03010113          	add	sp,sp,48
    64ec:	00008067          	ret

000064f0 <_Z11dump_resultx>:
    64f0:	fc010113          	add	sp,sp,-64
    64f4:	02112e23          	sw	ra,60(sp)
    64f8:	02812c23          	sw	s0,56(sp)
    64fc:	04010413          	add	s0,sp,64
    6500:	fca42423          	sw	a0,-56(s0)
    6504:	fcb42623          	sw	a1,-52(s0)
    6508:	fe042623          	sw	zero,-20(s0)
    650c:	0700006f          	j	657c <_Z11dump_resultx+0x8c>
    6510:	fec42683          	lw	a3,-20(s0)
    6514:	00369693          	sll	a3,a3,0x3
    6518:	fe068613          	add	a2,a3,-32
    651c:	00064c63          	bltz	a2,6534 <_Z11dump_resultx+0x44>
    6520:	fcc42683          	lw	a3,-52(s0)
    6524:	40c6d733          	sra	a4,a3,a2
    6528:	fcc42683          	lw	a3,-52(s0)
    652c:	41f6d793          	sra	a5,a3,0x1f
    6530:	02c0006f          	j	655c <_Z11dump_resultx+0x6c>
    6534:	fcc42603          	lw	a2,-52(s0)
    6538:	00161593          	sll	a1,a2,0x1
    653c:	01f00613          	li	a2,31
    6540:	40d60633          	sub	a2,a2,a3
    6544:	00c59633          	sll	a2,a1,a2
    6548:	fc842583          	lw	a1,-56(s0)
    654c:	00d5d733          	srl	a4,a1,a3
    6550:	00e66733          	or	a4,a2,a4
    6554:	fcc42603          	lw	a2,-52(s0)
    6558:	40d657b3          	sra	a5,a2,a3
    655c:	0ff77613          	zext.b	a2,a4
    6560:	fec42683          	lw	a3,-20(s0)
    6564:	ff068693          	add	a3,a3,-16
    6568:	008686b3          	add	a3,a3,s0
    656c:	fec68423          	sb	a2,-24(a3)
    6570:	fec42683          	lw	a3,-20(s0)
    6574:	00168693          	add	a3,a3,1
    6578:	fed42623          	sw	a3,-20(s0)
    657c:	fec42603          	lw	a2,-20(s0)
    6580:	00700693          	li	a3,7
    6584:	f8c6d6e3          	bge	a3,a2,6510 <_Z11dump_resultx+0x20>
    6588:	00800793          	li	a5,8
    658c:	fef42423          	sw	a5,-24(s0)
    6590:	0100006f          	j	65a0 <_Z11dump_resultx+0xb0>
    6594:	fe842783          	lw	a5,-24(s0)
    6598:	fff78793          	add	a5,a5,-1
    659c:	fef42423          	sw	a5,-24(s0)
    65a0:	fe842703          	lw	a4,-24(s0)
    65a4:	00100793          	li	a5,1
    65a8:	00e7de63          	bge	a5,a4,65c4 <_Z11dump_resultx+0xd4>
    65ac:	fe842783          	lw	a5,-24(s0)
    65b0:	fff78793          	add	a5,a5,-1
    65b4:	ff078793          	add	a5,a5,-16
    65b8:	008787b3          	add	a5,a5,s0
    65bc:	fe87c783          	lbu	a5,-24(a5)
    65c0:	fc078ae3          	beqz	a5,6594 <_Z11dump_resultx+0xa4>
    65c4:	04400513          	li	a0,68
    65c8:	e39ff0ef          	jal	6400 <_Z9uart_putcc>
    65cc:	fe842783          	lw	a5,-24(s0)
    65d0:	0ff7f793          	zext.b	a5,a5
    65d4:	00078513          	mv	a0,a5
    65d8:	e29ff0ef          	jal	6400 <_Z9uart_putcc>
    65dc:	fe042223          	sw	zero,-28(s0)
    65e0:	02c0006f          	j	660c <_Z11dump_resultx+0x11c>
    65e4:	fe442783          	lw	a5,-28(s0)
    65e8:	ff078793          	add	a5,a5,-16
    65ec:	008787b3          	add	a5,a5,s0
    65f0:	fe87c783          	lbu	a5,-24(a5)
    65f4:	00078513          	mv	a0,a5
    65f8:	e09ff0ef          	jal	6400 <_Z9uart_putcc>
    65fc:	00000013          	nop
    6600:	fe442783          	lw	a5,-28(s0)
    6604:	00178793          	add	a5,a5,1
    6608:	fef42223          	sw	a5,-28(s0)
    660c:	fe442703          	lw	a4,-28(s0)
    6610:	fe842783          	lw	a5,-24(s0)
    6614:	fcf748e3          	blt	a4,a5,65e4 <_Z11dump_resultx+0xf4>
    6618:	00000013          	nop
    661c:	00000013          	nop
    6620:	03c12083          	lw	ra,60(sp)
    6624:	03812403          	lw	s0,56(sp)
    6628:	04010113          	add	sp,sp,64
    662c:	00008067          	ret

00006630 <_Z9str_equalPKcS0_>:
    6630:	fe010113          	add	sp,sp,-32
    6634:	00812e23          	sw	s0,28(sp)
    6638:	02010413          	add	s0,sp,32
    663c:	fea42623          	sw	a0,-20(s0)
    6640:	feb42423          	sw	a1,-24(s0)
    6644:	0380006f          	j	667c <_Z9str_equalPKcS0_+0x4c>
    6648:	fec42783          	lw	a5,-20(s0)
    664c:	0007c703          	lbu	a4,0(a5)
    6650:	fe842783          	lw	a5,-24(s0)
    6654:	0007c783          	lbu	a5,0(a5)
    6658:	00f70663          	beq	a4,a5,6664 <_Z9str_equalPKcS0_+0x34>
    665c:	00000793          	li	a5,0
    6660:	0580006f          	j	66b8 <_Z9str_equalPKcS0_+0x88>
    6664:	fec42783          	lw	a5,-20(s0)
    6668:	00178793          	add	a5,a5,1
    666c:	fef42623          	sw	a5,-20(s0)
    6670:	fe842783          	lw	a5,-24(s0)
    6674:	00178793          	add	a5,a5,1
    6678:	fef42423          	sw	a5,-24(s0)
    667c:	fec42783          	lw	a5,-20(s0)
    6680:	0007c783          	lbu	a5,0(a5)
    6684:	00078863          	beqz	a5,6694 <_Z9str_equalPKcS0_+0x64>
    6688:	fe842783          	lw	a5,-24(s0)
    668c:	0007c783          	lbu	a5,0(a5)
    6690:	fa079ce3          	bnez	a5,6648 <_Z9str_equalPKcS0_+0x18>
    6694:	fec42783          	lw	a5,-20(s0)
    6698:	0007c783          	lbu	a5,0(a5)
    669c:	00079c63          	bnez	a5,66b4 <_Z9str_equalPKcS0_+0x84>
    66a0:	fe842783          	lw	a5,-24(s0)
    66a4:	0007c783          	lbu	a5,0(a5)
    66a8:	00079663          	bnez	a5,66b4 <_Z9str_equalPKcS0_+0x84>
    66ac:	00100793          	li	a5,1
    66b0:	0080006f          	j	66b8 <_Z9str_equalPKcS0_+0x88>
    66b4:	00000793          	li	a5,0
    66b8:	00078513          	mv	a0,a5
    66bc:	01c12403          	lw	s0,28(sp)
    66c0:	02010113          	add	sp,sp,32
    66c4:	00008067          	ret
