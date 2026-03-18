
/out/soft_matrix_multiply.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	00000013          	nop
  18:	050000ef          	jal	68 <_Z10soc_bootupv>
  1c:	118000ef          	jal	134 <main>
  20:	00050793          	mv	a5,a0
  24:	00078a13          	mv	s4,a5
  28:	41f7d793          	sra	a5,a5,0x1f
  2c:	00078a93          	mv	s5,a5
  30:	000a0513          	mv	a0,s4
  34:	000a8593          	mv	a1,s5
  38:	0b9060ef          	jal	68f0 <_Z11dump_resultx>
  3c:	002017b7          	lui	a5,0x201
  40:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
  44:	0007a783          	lw	a5,0(a5)
  48:	00078913          	mv	s2,a5
  4c:	41f7d793          	sra	a5,a5,0x1f
  50:	00078993          	mv	s3,a5
  54:	00090513          	mv	a0,s2
  58:	00098593          	mv	a1,s3
  5c:	095060ef          	jal	68f0 <_Z11dump_resultx>
  60:	ffffffff          	.word	0xffffffff
  64:	00000013          	nop

00000068 <_Z10soc_bootupv>:
  68:	fe010113          	add	sp,sp,-32
  6c:	00112e23          	sw	ra,28(sp)
  70:	00812c23          	sw	s0,24(sp)
  74:	01212a23          	sw	s2,20(sp)
  78:	01312823          	sw	s3,16(sp)
  7c:	02010413          	add	s0,sp,32
  80:	fe042623          	sw	zero,-20(s0)
  84:	004007b7          	lui	a5,0x400
  88:	fef42423          	sw	a5,-24(s0)
  8c:	002017b7          	lui	a5,0x201
  90:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  94:	fec42703          	lw	a4,-20(s0)
  98:	00e7a023          	sw	a4,0(a5)
  9c:	002017b7          	lui	a5,0x201
  a0:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  a4:	fe842703          	lw	a4,-24(s0)
  a8:	00e7a023          	sw	a4,0(a5)
  ac:	03200793          	li	a5,50
  b0:	fef42223          	sw	a5,-28(s0)
  b4:	002017b7          	lui	a5,0x201
  b8:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  bc:	fe442703          	lw	a4,-28(s0)
  c0:	00e7a023          	sw	a4,0(a5)
  c4:	002017b7          	lui	a5,0x201
  c8:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
  cc:	0007a783          	lw	a5,0(a5)
  d0:	00078613          	mv	a2,a5
  d4:	41f7d793          	sra	a5,a5,0x1f
  d8:	00078693          	mv	a3,a5
  dc:	00060513          	mv	a0,a2
  e0:	00068593          	mv	a1,a3
  e4:	00d060ef          	jal	68f0 <_Z11dump_resultx>
  e8:	002017b7          	lui	a5,0x201
  ec:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
  f0:	0007a783          	lw	a5,0(a5)
  f4:	00078913          	mv	s2,a5
  f8:	41f7d793          	sra	a5,a5,0x1f
  fc:	00078993          	mv	s3,a5
 100:	00090513          	mv	a0,s2
 104:	00098593          	mv	a1,s3
 108:	7e8060ef          	jal	68f0 <_Z11dump_resultx>
 10c:	0003d7b7          	lui	a5,0x3d
 110:	00078513          	mv	a0,a5
 114:	75c060ef          	jal	6870 <_Z10uart_printPKc>
 118:	00000013          	nop
 11c:	01c12083          	lw	ra,28(sp)
 120:	01812403          	lw	s0,24(sp)
 124:	01412903          	lw	s2,20(sp)
 128:	01012983          	lw	s3,16(sp)
 12c:	02010113          	add	sp,sp,32
 130:	00008067          	ret

00000134 <main>:
 134:	f3010113          	add	sp,sp,-208
 138:	0c112623          	sw	ra,204(sp)
 13c:	0c812423          	sw	s0,200(sp)
 140:	0d010413          	add	s0,sp,208
 144:	fe0407a3          	sb	zero,-17(s0)
 148:	0003d7b7          	lui	a5,0x3d
 14c:	00478793          	add	a5,a5,4 # 3d004 <_Z12print_matrixPA3_Ki+0x365d4>
 150:	0007a303          	lw	t1,0(a5)
 154:	0047a883          	lw	a7,4(a5)
 158:	0087a803          	lw	a6,8(a5)
 15c:	00c7a503          	lw	a0,12(a5)
 160:	0107a583          	lw	a1,16(a5)
 164:	0147a603          	lw	a2,20(a5)
 168:	0187a683          	lw	a3,24(a5)
 16c:	01c7a703          	lw	a4,28(a5)
 170:	0207a783          	lw	a5,32(a5)
 174:	fc642423          	sw	t1,-56(s0)
 178:	fd142623          	sw	a7,-52(s0)
 17c:	fd042823          	sw	a6,-48(s0)
 180:	fca42a23          	sw	a0,-44(s0)
 184:	fcb42c23          	sw	a1,-40(s0)
 188:	fcc42e23          	sw	a2,-36(s0)
 18c:	fed42023          	sw	a3,-32(s0)
 190:	fee42223          	sw	a4,-28(s0)
 194:	fef42423          	sw	a5,-24(s0)
 198:	0003d7b7          	lui	a5,0x3d
 19c:	02878793          	add	a5,a5,40 # 3d028 <_Z12print_matrixPA3_Ki+0x365f8>
 1a0:	0007a303          	lw	t1,0(a5)
 1a4:	0047a883          	lw	a7,4(a5)
 1a8:	0087a803          	lw	a6,8(a5)
 1ac:	00c7a503          	lw	a0,12(a5)
 1b0:	0107a583          	lw	a1,16(a5)
 1b4:	0147a603          	lw	a2,20(a5)
 1b8:	0187a683          	lw	a3,24(a5)
 1bc:	01c7a703          	lw	a4,28(a5)
 1c0:	0207a783          	lw	a5,32(a5)
 1c4:	fa642223          	sw	t1,-92(s0)
 1c8:	fb142423          	sw	a7,-88(s0)
 1cc:	fb042623          	sw	a6,-84(s0)
 1d0:	faa42823          	sw	a0,-80(s0)
 1d4:	fab42a23          	sw	a1,-76(s0)
 1d8:	fac42c23          	sw	a2,-72(s0)
 1dc:	fad42e23          	sw	a3,-68(s0)
 1e0:	fce42023          	sw	a4,-64(s0)
 1e4:	fcf42223          	sw	a5,-60(s0)
 1e8:	0003d7b7          	lui	a5,0x3d
 1ec:	04c78793          	add	a5,a5,76 # 3d04c <_Z12print_matrixPA3_Ki+0x3661c>
 1f0:	0007a303          	lw	t1,0(a5)
 1f4:	0047a883          	lw	a7,4(a5)
 1f8:	0087a803          	lw	a6,8(a5)
 1fc:	00c7a503          	lw	a0,12(a5)
 200:	0107a583          	lw	a1,16(a5)
 204:	0147a603          	lw	a2,20(a5)
 208:	0187a683          	lw	a3,24(a5)
 20c:	01c7a703          	lw	a4,28(a5)
 210:	0207a783          	lw	a5,32(a5)
 214:	f8642023          	sw	t1,-128(s0)
 218:	f9142223          	sw	a7,-124(s0)
 21c:	f9042423          	sw	a6,-120(s0)
 220:	f8a42623          	sw	a0,-116(s0)
 224:	f8b42823          	sw	a1,-112(s0)
 228:	f8c42a23          	sw	a2,-108(s0)
 22c:	f8d42c23          	sw	a3,-104(s0)
 230:	f8e42e23          	sw	a4,-100(s0)
 234:	faf42023          	sw	a5,-96(s0)
 238:	f4042e23          	sw	zero,-164(s0)
 23c:	f6042023          	sw	zero,-160(s0)
 240:	f6042223          	sw	zero,-156(s0)
 244:	f6042423          	sw	zero,-152(s0)
 248:	f6042623          	sw	zero,-148(s0)
 24c:	f6042823          	sw	zero,-144(s0)
 250:	f6042a23          	sw	zero,-140(s0)
 254:	f6042c23          	sw	zero,-136(s0)
 258:	f6042e23          	sw	zero,-132(s0)
 25c:	f2042c23          	sw	zero,-200(s0)
 260:	f2042e23          	sw	zero,-196(s0)
 264:	f4042023          	sw	zero,-192(s0)
 268:	f4042223          	sw	zero,-188(s0)
 26c:	f4042423          	sw	zero,-184(s0)
 270:	f4042623          	sw	zero,-180(s0)
 274:	f4042823          	sw	zero,-176(s0)
 278:	f4042a23          	sw	zero,-172(s0)
 27c:	f4042c23          	sw	zero,-168(s0)
 280:	f5c40693          	add	a3,s0,-164
 284:	fa440713          	add	a4,s0,-92
 288:	fc840793          	add	a5,s0,-56
 28c:	00068613          	mv	a2,a3
 290:	00070593          	mv	a1,a4
 294:	00078513          	mv	a0,a5
 298:	168040ef          	jal	4400 <_Z6matmulPA3_KiPA3_iS3_>
 29c:	f3840693          	add	a3,s0,-200
 2a0:	fa440713          	add	a4,s0,-92
 2a4:	f8040793          	add	a5,s0,-128
 2a8:	00068613          	mv	a2,a3
 2ac:	00070593          	mv	a1,a4
 2b0:	00078513          	mv	a0,a5
 2b4:	14c040ef          	jal	4400 <_Z6matmulPA3_KiPA3_iS3_>
 2b8:	f5c40793          	add	a5,s0,-164
 2bc:	00078513          	mv	a0,a5
 2c0:	770060ef          	jal	6a30 <_Z12print_matrixPA3_Ki>
 2c4:	f3840793          	add	a5,s0,-200
 2c8:	00078513          	mv	a0,a5
 2cc:	764060ef          	jal	6a30 <_Z12print_matrixPA3_Ki>
 2d0:	fef44783          	lbu	a5,-17(s0)
 2d4:	00078513          	mv	a0,a5
 2d8:	0cc12083          	lw	ra,204(sp)
 2dc:	0c812403          	lw	s0,200(sp)
 2e0:	0d010113          	add	sp,sp,208
 2e4:	00008067          	ret

000002e8 <__mulsi3>:
 2e8:	00050613          	mv	a2,a0
 2ec:	00000513          	li	a0,0
 2f0:	0015f693          	and	a3,a1,1
 2f4:	00068463          	beqz	a3,2fc <__mulsi3+0x14>
 2f8:	00c50533          	add	a0,a0,a2
 2fc:	0015d593          	srl	a1,a1,0x1
 300:	00161613          	sll	a2,a2,0x1
 304:	fe0596e3          	bnez	a1,2f0 <__mulsi3+0x8>
 308:	00008067          	ret

Disassembly of section .spi_compute:

00002400 <_Z6matmulPA3_KiPA3_iS3_-0x2000>:
	...

00004400 <_Z6matmulPA3_KiPA3_iS3_>:
    4400:	fd010113          	add	sp,sp,-48
    4404:	02112623          	sw	ra,44(sp)
    4408:	02812423          	sw	s0,40(sp)
    440c:	03010413          	add	s0,sp,48
    4410:	fca42e23          	sw	a0,-36(s0)
    4414:	fcb42c23          	sw	a1,-40(s0)
    4418:	fcc42a23          	sw	a2,-44(s0)
    441c:	fe042623          	sw	zero,-20(s0)
    4420:	1080006f          	j	4528 <_Z6matmulPA3_KiPA3_iS3_+0x128>
    4424:	fe042423          	sw	zero,-24(s0)
    4428:	0e80006f          	j	4510 <_Z6matmulPA3_KiPA3_iS3_+0x110>
    442c:	fe042223          	sw	zero,-28(s0)
    4430:	fe042023          	sw	zero,-32(s0)
    4434:	0900006f          	j	44c4 <_Z6matmulPA3_KiPA3_iS3_+0xc4>
    4438:	fec42703          	lw	a4,-20(s0)
    443c:	00070793          	mv	a5,a4
    4440:	00179793          	sll	a5,a5,0x1
    4444:	00e787b3          	add	a5,a5,a4
    4448:	00279793          	sll	a5,a5,0x2
    444c:	00078713          	mv	a4,a5
    4450:	fdc42783          	lw	a5,-36(s0)
    4454:	00e78733          	add	a4,a5,a4
    4458:	fe042783          	lw	a5,-32(s0)
    445c:	00279793          	sll	a5,a5,0x2
    4460:	00f707b3          	add	a5,a4,a5
    4464:	0007a683          	lw	a3,0(a5)
    4468:	fe042703          	lw	a4,-32(s0)
    446c:	00070793          	mv	a5,a4
    4470:	00179793          	sll	a5,a5,0x1
    4474:	00e787b3          	add	a5,a5,a4
    4478:	00279793          	sll	a5,a5,0x2
    447c:	00078713          	mv	a4,a5
    4480:	fd842783          	lw	a5,-40(s0)
    4484:	00e78733          	add	a4,a5,a4
    4488:	fe842783          	lw	a5,-24(s0)
    448c:	00279793          	sll	a5,a5,0x2
    4490:	00f707b3          	add	a5,a4,a5
    4494:	0007a783          	lw	a5,0(a5)
    4498:	00078593          	mv	a1,a5
    449c:	00068513          	mv	a0,a3
    44a0:	e49fb0ef          	jal	2e8 <__mulsi3>
    44a4:	00050793          	mv	a5,a0
    44a8:	00078713          	mv	a4,a5
    44ac:	fe442783          	lw	a5,-28(s0)
    44b0:	00e787b3          	add	a5,a5,a4
    44b4:	fef42223          	sw	a5,-28(s0)
    44b8:	fe042783          	lw	a5,-32(s0)
    44bc:	00178793          	add	a5,a5,1
    44c0:	fef42023          	sw	a5,-32(s0)
    44c4:	fe042703          	lw	a4,-32(s0)
    44c8:	00200793          	li	a5,2
    44cc:	f6e7d6e3          	bge	a5,a4,4438 <_Z6matmulPA3_KiPA3_iS3_+0x38>
    44d0:	fec42703          	lw	a4,-20(s0)
    44d4:	00070793          	mv	a5,a4
    44d8:	00179793          	sll	a5,a5,0x1
    44dc:	00e787b3          	add	a5,a5,a4
    44e0:	00279793          	sll	a5,a5,0x2
    44e4:	00078713          	mv	a4,a5
    44e8:	fd442783          	lw	a5,-44(s0)
    44ec:	00e78733          	add	a4,a5,a4
    44f0:	fe842783          	lw	a5,-24(s0)
    44f4:	00279793          	sll	a5,a5,0x2
    44f8:	00f707b3          	add	a5,a4,a5
    44fc:	fe442703          	lw	a4,-28(s0)
    4500:	00e7a023          	sw	a4,0(a5)
    4504:	fe842783          	lw	a5,-24(s0)
    4508:	00178793          	add	a5,a5,1
    450c:	fef42423          	sw	a5,-24(s0)
    4510:	fe842703          	lw	a4,-24(s0)
    4514:	00200793          	li	a5,2
    4518:	f0e7dae3          	bge	a5,a4,442c <_Z6matmulPA3_KiPA3_iS3_+0x2c>
    451c:	fec42783          	lw	a5,-20(s0)
    4520:	00178793          	add	a5,a5,1
    4524:	fef42623          	sw	a5,-20(s0)
    4528:	fec42703          	lw	a4,-20(s0)
    452c:	00200793          	li	a5,2
    4530:	eee7dae3          	bge	a5,a4,4424 <_Z6matmulPA3_KiPA3_iS3_+0x24>
    4534:	00000013          	nop
    4538:	00000013          	nop
    453c:	02c12083          	lw	ra,44(sp)
    4540:	02812403          	lw	s0,40(sp)
    4544:	03010113          	add	sp,sp,48
    4548:	00008067          	ret

Disassembly of section .spi_uart:

00004800 <_Z9uart_putcc-0x2000>:
	...

00006800 <_Z9uart_putcc>:
    6800:	fd010113          	add	sp,sp,-48
    6804:	02812623          	sw	s0,44(sp)
    6808:	03010413          	add	s0,sp,48
    680c:	00050793          	mv	a5,a0
    6810:	fcf40fa3          	sb	a5,-33(s0)
    6814:	002017b7          	lui	a5,0x201
    6818:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    681c:	0007a783          	lw	a5,0(a5)
    6820:	fef42623          	sw	a5,-20(s0)
    6824:	002017b7          	lui	a5,0x201
    6828:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    682c:	fdf44703          	lbu	a4,-33(s0)
    6830:	00e78023          	sb	a4,0(a5)
    6834:	fe042423          	sw	zero,-24(s0)
    6838:	0100006f          	j	6848 <_Z9uart_putcc+0x48>
    683c:	fe842783          	lw	a5,-24(s0)
    6840:	00178793          	add	a5,a5,1
    6844:	fef42423          	sw	a5,-24(s0)
    6848:	fe842783          	lw	a5,-24(s0)
    684c:	fec42703          	lw	a4,-20(s0)
    6850:	00e7a7b3          	slt	a5,a5,a4
    6854:	0ff7f793          	zext.b	a5,a5
    6858:	fe0792e3          	bnez	a5,683c <_Z9uart_putcc+0x3c>
    685c:	00000013          	nop
    6860:	00000013          	nop
    6864:	02c12403          	lw	s0,44(sp)
    6868:	03010113          	add	sp,sp,48
    686c:	00008067          	ret

00006870 <_Z10uart_printPKc>:
    6870:	fd010113          	add	sp,sp,-48
    6874:	02112623          	sw	ra,44(sp)
    6878:	02812423          	sw	s0,40(sp)
    687c:	03010413          	add	s0,sp,48
    6880:	fca42e23          	sw	a0,-36(s0)
    6884:	fe042623          	sw	zero,-20(s0)
    6888:	0400006f          	j	68c8 <_Z10uart_printPKc+0x58>
    688c:	fec42783          	lw	a5,-20(s0)
    6890:	fdc42703          	lw	a4,-36(s0)
    6894:	00f707b3          	add	a5,a4,a5
    6898:	0007c783          	lbu	a5,0(a5)
    689c:	02078e63          	beqz	a5,68d8 <_Z10uart_printPKc+0x68>
    68a0:	fec42783          	lw	a5,-20(s0)
    68a4:	fdc42703          	lw	a4,-36(s0)
    68a8:	00f707b3          	add	a5,a4,a5
    68ac:	0007c783          	lbu	a5,0(a5)
    68b0:	00078513          	mv	a0,a5
    68b4:	f4dff0ef          	jal	6800 <_Z9uart_putcc>
    68b8:	00000013          	nop
    68bc:	fec42783          	lw	a5,-20(s0)
    68c0:	00178793          	add	a5,a5,1
    68c4:	fef42623          	sw	a5,-20(s0)
    68c8:	fec42703          	lw	a4,-20(s0)
    68cc:	07f00793          	li	a5,127
    68d0:	fae7dee3          	bge	a5,a4,688c <_Z10uart_printPKc+0x1c>
    68d4:	0080006f          	j	68dc <_Z10uart_printPKc+0x6c>
    68d8:	00000013          	nop
    68dc:	00000013          	nop
    68e0:	02c12083          	lw	ra,44(sp)
    68e4:	02812403          	lw	s0,40(sp)
    68e8:	03010113          	add	sp,sp,48
    68ec:	00008067          	ret

000068f0 <_Z11dump_resultx>:
    68f0:	fc010113          	add	sp,sp,-64
    68f4:	02112e23          	sw	ra,60(sp)
    68f8:	02812c23          	sw	s0,56(sp)
    68fc:	04010413          	add	s0,sp,64
    6900:	fca42423          	sw	a0,-56(s0)
    6904:	fcb42623          	sw	a1,-52(s0)
    6908:	fe042623          	sw	zero,-20(s0)
    690c:	0700006f          	j	697c <_Z11dump_resultx+0x8c>
    6910:	fec42683          	lw	a3,-20(s0)
    6914:	00369693          	sll	a3,a3,0x3
    6918:	fe068613          	add	a2,a3,-32
    691c:	00064c63          	bltz	a2,6934 <_Z11dump_resultx+0x44>
    6920:	fcc42683          	lw	a3,-52(s0)
    6924:	40c6d733          	sra	a4,a3,a2
    6928:	fcc42683          	lw	a3,-52(s0)
    692c:	41f6d793          	sra	a5,a3,0x1f
    6930:	02c0006f          	j	695c <_Z11dump_resultx+0x6c>
    6934:	fcc42603          	lw	a2,-52(s0)
    6938:	00161593          	sll	a1,a2,0x1
    693c:	01f00613          	li	a2,31
    6940:	40d60633          	sub	a2,a2,a3
    6944:	00c59633          	sll	a2,a1,a2
    6948:	fc842583          	lw	a1,-56(s0)
    694c:	00d5d733          	srl	a4,a1,a3
    6950:	00e66733          	or	a4,a2,a4
    6954:	fcc42603          	lw	a2,-52(s0)
    6958:	40d657b3          	sra	a5,a2,a3
    695c:	0ff77613          	zext.b	a2,a4
    6960:	fec42683          	lw	a3,-20(s0)
    6964:	ff068693          	add	a3,a3,-16
    6968:	008686b3          	add	a3,a3,s0
    696c:	fec68423          	sb	a2,-24(a3)
    6970:	fec42683          	lw	a3,-20(s0)
    6974:	00168693          	add	a3,a3,1
    6978:	fed42623          	sw	a3,-20(s0)
    697c:	fec42603          	lw	a2,-20(s0)
    6980:	00700693          	li	a3,7
    6984:	f8c6d6e3          	bge	a3,a2,6910 <_Z11dump_resultx+0x20>
    6988:	00800793          	li	a5,8
    698c:	fef42423          	sw	a5,-24(s0)
    6990:	0100006f          	j	69a0 <_Z11dump_resultx+0xb0>
    6994:	fe842783          	lw	a5,-24(s0)
    6998:	fff78793          	add	a5,a5,-1
    699c:	fef42423          	sw	a5,-24(s0)
    69a0:	fe842703          	lw	a4,-24(s0)
    69a4:	00100793          	li	a5,1
    69a8:	00e7de63          	bge	a5,a4,69c4 <_Z11dump_resultx+0xd4>
    69ac:	fe842783          	lw	a5,-24(s0)
    69b0:	fff78793          	add	a5,a5,-1
    69b4:	ff078793          	add	a5,a5,-16
    69b8:	008787b3          	add	a5,a5,s0
    69bc:	fe87c783          	lbu	a5,-24(a5)
    69c0:	fc078ae3          	beqz	a5,6994 <_Z11dump_resultx+0xa4>
    69c4:	04400513          	li	a0,68
    69c8:	e39ff0ef          	jal	6800 <_Z9uart_putcc>
    69cc:	fe842783          	lw	a5,-24(s0)
    69d0:	0ff7f793          	zext.b	a5,a5
    69d4:	00078513          	mv	a0,a5
    69d8:	e29ff0ef          	jal	6800 <_Z9uart_putcc>
    69dc:	fe042223          	sw	zero,-28(s0)
    69e0:	02c0006f          	j	6a0c <_Z11dump_resultx+0x11c>
    69e4:	fe442783          	lw	a5,-28(s0)
    69e8:	ff078793          	add	a5,a5,-16
    69ec:	008787b3          	add	a5,a5,s0
    69f0:	fe87c783          	lbu	a5,-24(a5)
    69f4:	00078513          	mv	a0,a5
    69f8:	e09ff0ef          	jal	6800 <_Z9uart_putcc>
    69fc:	00000013          	nop
    6a00:	fe442783          	lw	a5,-28(s0)
    6a04:	00178793          	add	a5,a5,1
    6a08:	fef42223          	sw	a5,-28(s0)
    6a0c:	fe442703          	lw	a4,-28(s0)
    6a10:	fe842783          	lw	a5,-24(s0)
    6a14:	fcf748e3          	blt	a4,a5,69e4 <_Z11dump_resultx+0xf4>
    6a18:	00000013          	nop
    6a1c:	00000013          	nop
    6a20:	03c12083          	lw	ra,60(sp)
    6a24:	03812403          	lw	s0,56(sp)
    6a28:	04010113          	add	sp,sp,64
    6a2c:	00008067          	ret

00006a30 <_Z12print_matrixPA3_Ki>:
    6a30:	fd010113          	add	sp,sp,-48
    6a34:	02112623          	sw	ra,44(sp)
    6a38:	02812423          	sw	s0,40(sp)
    6a3c:	03212223          	sw	s2,36(sp)
    6a40:	03312023          	sw	s3,32(sp)
    6a44:	03010413          	add	s0,sp,48
    6a48:	fca42e23          	sw	a0,-36(s0)
    6a4c:	fe042623          	sw	zero,-20(s0)
    6a50:	0880006f          	j	6ad8 <_Z12print_matrixPA3_Ki+0xa8>
    6a54:	fe042423          	sw	zero,-24(s0)
    6a58:	0580006f          	j	6ab0 <_Z12print_matrixPA3_Ki+0x80>
    6a5c:	fec42703          	lw	a4,-20(s0)
    6a60:	00070793          	mv	a5,a4
    6a64:	00179793          	sll	a5,a5,0x1
    6a68:	00e787b3          	add	a5,a5,a4
    6a6c:	00279793          	sll	a5,a5,0x2
    6a70:	00078713          	mv	a4,a5
    6a74:	fdc42783          	lw	a5,-36(s0)
    6a78:	00e78733          	add	a4,a5,a4
    6a7c:	fe842783          	lw	a5,-24(s0)
    6a80:	00279793          	sll	a5,a5,0x2
    6a84:	00f707b3          	add	a5,a4,a5
    6a88:	0007a783          	lw	a5,0(a5)
    6a8c:	00078913          	mv	s2,a5
    6a90:	41f7d793          	sra	a5,a5,0x1f
    6a94:	00078993          	mv	s3,a5
    6a98:	00090513          	mv	a0,s2
    6a9c:	00098593          	mv	a1,s3
    6aa0:	e51ff0ef          	jal	68f0 <_Z11dump_resultx>
    6aa4:	fe842783          	lw	a5,-24(s0)
    6aa8:	00178793          	add	a5,a5,1
    6aac:	fef42423          	sw	a5,-24(s0)
    6ab0:	fe842703          	lw	a4,-24(s0)
    6ab4:	00200793          	li	a5,2
    6ab8:	fae7d2e3          	bge	a5,a4,6a5c <_Z12print_matrixPA3_Ki+0x2c>
    6abc:	a0a0a537          	lui	a0,0xa0a0a
    6ac0:	0a050513          	add	a0,a0,160 # a0a0a0a0 <GET_WATCHDOG_LOW+0xa0809060>
    6ac4:	00000593          	li	a1,0
    6ac8:	e29ff0ef          	jal	68f0 <_Z11dump_resultx>
    6acc:	fec42783          	lw	a5,-20(s0)
    6ad0:	00178793          	add	a5,a5,1
    6ad4:	fef42623          	sw	a5,-20(s0)
    6ad8:	fec42703          	lw	a4,-20(s0)
    6adc:	00200793          	li	a5,2
    6ae0:	f6e7dae3          	bge	a5,a4,6a54 <_Z12print_matrixPA3_Ki+0x24>
    6ae4:	fff00513          	li	a0,-1
    6ae8:	fff00593          	li	a1,-1
    6aec:	e05ff0ef          	jal	68f0 <_Z11dump_resultx>
    6af0:	00000013          	nop
    6af4:	02c12083          	lw	ra,44(sp)
    6af8:	02812403          	lw	s0,40(sp)
    6afc:	02412903          	lw	s2,36(sp)
    6b00:	02012983          	lw	s3,32(sp)
    6b04:	03010113          	add	sp,sp,48
    6b08:	00008067          	ret
