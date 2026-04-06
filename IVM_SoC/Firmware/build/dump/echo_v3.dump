
/out/echo_v3.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_Z6_startv>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	7f418193          	add	gp,gp,2036 # 3e800 <_global_pointer>
  14:	00000013          	nop
  18:	060000ef          	jal	78 <_Z10soc_bootupv>
  1c:	138000ef          	jal	154 <main>
  20:	00050793          	mv	a5,a0
  24:	00078493          	mv	s1,a5
  28:	000307b7          	lui	a5,0x30
  2c:	04878513          	add	a0,a5,72 # 30048 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282f0>
  30:	4ac070ef          	jal	74dc <_Z10uart_printPKc>
  34:	00048513          	mv	a0,s1
  38:	700070ef          	jal	7738 <_Z16uart_print_int32i>
  3c:	00000013          	nop
  40:	000307b7          	lui	a5,0x30
  44:	05878513          	add	a0,a5,88 # 30058 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28300>
  48:	494070ef          	jal	74dc <_Z10uart_printPKc>
  4c:	002017b7          	lui	a5,0x201
  50:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
  54:	0007a783          	lw	a5,0(a5)
  58:	00078513          	mv	a0,a5
  5c:	6dc070ef          	jal	7738 <_Z16uart_print_int32i>
  60:	00000013          	nop
  64:	000307b7          	lui	a5,0x30
  68:	07878513          	add	a0,a5,120 # 30078 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28320>
  6c:	470070ef          	jal	74dc <_Z10uart_printPKc>
  70:	ffffffff          	.word	0xffffffff
  74:	00000013          	nop

00000078 <_Z10soc_bootupv>:
  78:	fd010113          	add	sp,sp,-48
  7c:	02112623          	sw	ra,44(sp)
  80:	02812423          	sw	s0,40(sp)
  84:	03010413          	add	s0,sp,48
  88:	fc042e23          	sw	zero,-36(s0)
  8c:	010007b7          	lui	a5,0x1000
  90:	fcf42c23          	sw	a5,-40(s0)
  94:	002017b7          	lui	a5,0x201
  98:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  9c:	fdc42703          	lw	a4,-36(s0)
  a0:	00e7a023          	sw	a4,0(a5)
  a4:	002017b7          	lui	a5,0x201
  a8:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  ac:	fd842703          	lw	a4,-40(s0)
  b0:	00e7a023          	sw	a4,0(a5)
  b4:	03200793          	li	a5,50
  b8:	fef42623          	sw	a5,-20(s0)
  bc:	002017b7          	lui	a5,0x201
  c0:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  c4:	fec42703          	lw	a4,-20(s0)
  c8:	00e7a023          	sw	a4,0(a5)
  cc:	000307b7          	lui	a5,0x30
  d0:	00878513          	add	a0,a5,8 # 30008 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282b0>
  d4:	408070ef          	jal	74dc <_Z10uart_printPKc>
  d8:	03c050ef          	jal	5114 <_Z8cmd_freev>
  dc:	000307b7          	lui	a5,0x30
  e0:	01478513          	add	a0,a5,20 # 30014 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282bc>
  e4:	3f8070ef          	jal	74dc <_Z10uart_printPKc>
  e8:	002017b7          	lui	a5,0x201
  ec:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
  f0:	0007a703          	lw	a4,0(a5)
  f4:	02000793          	li	a5,32
  f8:	00f71733          	sll	a4,a4,a5
  fc:	002017b7          	lui	a5,0x201
 100:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
 104:	0007a783          	lw	a5,0(a5)
 108:	00f767b3          	or	a5,a4,a5
 10c:	fef42023          	sw	a5,-32(s0)
 110:	41f7d793          	sra	a5,a5,0x1f
 114:	fef42223          	sw	a5,-28(s0)
 118:	fe042503          	lw	a0,-32(s0)
 11c:	fe442583          	lw	a1,-28(s0)
 120:	730070ef          	jal	7850 <_Z16uart_print_int64x>
 124:	00000013          	nop
 128:	000307b7          	lui	a5,0x30
 12c:	03078513          	add	a0,a5,48 # 30030 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282d8>
 130:	3ac070ef          	jal	74dc <_Z10uart_printPKc>
 134:	000307b7          	lui	a5,0x30
 138:	04078513          	add	a0,a5,64 # 30040 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282e8>
 13c:	3a0070ef          	jal	74dc <_Z10uart_printPKc>
 140:	00000013          	nop
 144:	02c12083          	lw	ra,44(sp)
 148:	02812403          	lw	s0,40(sp)
 14c:	03010113          	add	sp,sp,48
 150:	00008067          	ret

00000154 <main>:
 154:	ee010113          	add	sp,sp,-288
 158:	10112e23          	sw	ra,284(sp)
 15c:	10812c23          	sw	s0,280(sp)
 160:	12010413          	add	s0,sp,288
 164:	00100793          	li	a5,1
 168:	fef401a3          	sb	a5,-29(s0)
 16c:	05000793          	li	a5,80
 170:	fef42623          	sw	a5,-20(s0)
 174:	01800793          	li	a5,24
 178:	fef42423          	sw	a5,-24(s0)
 17c:	03800793          	li	a5,56
 180:	fef42223          	sw	a5,-28(s0)
 184:	0580006f          	j	1dc <main+0x88>
 188:	f6040793          	add	a5,s0,-160
 18c:	fec42583          	lw	a1,-20(s0)
 190:	00078513          	mv	a0,a5
 194:	039070ef          	jal	79cc <_Z12uart_getlinePci>
 198:	ee040613          	add	a2,s0,-288
 19c:	f4040593          	add	a1,s0,-192
 1a0:	f6040793          	add	a5,s0,-160
 1a4:	fe442703          	lw	a4,-28(s0)
 1a8:	fe842683          	lw	a3,-24(s0)
 1ac:	00078513          	mv	a0,a5
 1b0:	3a9070ef          	jal	7d58 <_Z17cmd_arg_tokenizerPcS_S_ii>
 1b4:	fe340693          	add	a3,s0,-29
 1b8:	ee040713          	add	a4,s0,-288
 1bc:	f4040793          	add	a5,s0,-192
 1c0:	00068613          	mv	a2,a3
 1c4:	00070593          	mv	a1,a4
 1c8:	00078513          	mv	a0,a5
 1cc:	285070ef          	jal	7c50 <_Z15process_commandPcS_PVb>
 1d0:	000307b7          	lui	a5,0x30
 1d4:	00078513          	mv	a0,a5
 1d8:	304070ef          	jal	74dc <_Z10uart_printPKc>
 1dc:	fe344783          	lbu	a5,-29(s0)
 1e0:	0ff7f793          	zext.b	a5,a5
 1e4:	fa0792e3          	bnez	a5,188 <main+0x34>
 1e8:	fe344783          	lbu	a5,-29(s0)
 1ec:	0ff7f793          	zext.b	a5,a5
 1f0:	00078513          	mv	a0,a5
 1f4:	11c12083          	lw	ra,284(sp)
 1f8:	11812403          	lw	s0,280(sp)
 1fc:	12010113          	add	sp,sp,288
 200:	00008067          	ret

00000204 <_Z14get_free_bytesv>:
 204:	fe010113          	add	sp,sp,-32
 208:	00112e23          	sw	ra,28(sp)
 20c:	00812c23          	sw	s0,24(sp)
 210:	02010413          	add	s0,sp,32
 214:	6d9040ef          	jal	50ec <_ZL6get_spv>
 218:	fea42623          	sw	a0,-20(s0)
 21c:	000347b7          	lui	a5,0x34
 220:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
 224:	00078713          	mv	a4,a5
 228:	fec42783          	lw	a5,-20(s0)
 22c:	40e787b3          	sub	a5,a5,a4
 230:	00078513          	mv	a0,a5
 234:	01c12083          	lw	ra,28(sp)
 238:	01812403          	lw	s0,24(sp)
 23c:	02010113          	add	sp,sp,32
 240:	00008067          	ret

00000244 <__divdi3>:
 244:	fc010113          	add	sp,sp,-64
 248:	02912a23          	sw	s1,52(sp)
 24c:	03412423          	sw	s4,40(sp)
 250:	02112e23          	sw	ra,60(sp)
 254:	02812c23          	sw	s0,56(sp)
 258:	03212823          	sw	s2,48(sp)
 25c:	03312623          	sw	s3,44(sp)
 260:	03512223          	sw	s5,36(sp)
 264:	03612023          	sw	s6,32(sp)
 268:	01712e23          	sw	s7,28(sp)
 26c:	01812c23          	sw	s8,24(sp)
 270:	01912a23          	sw	s9,20(sp)
 274:	01a12823          	sw	s10,16(sp)
 278:	01b12623          	sw	s11,12(sp)
 27c:	00050a13          	mv	s4,a0
 280:	00000493          	li	s1,0
 284:	0005dc63          	bgez	a1,29c <__divdi3+0x58>
 288:	00a037b3          	snez	a5,a0
 28c:	40b005b3          	neg	a1,a1
 290:	40f585b3          	sub	a1,a1,a5
 294:	40a00a33          	neg	s4,a0
 298:	fff00493          	li	s1,-1
 29c:	0006dc63          	bgez	a3,2b4 <__divdi3+0x70>
 2a0:	00c037b3          	snez	a5,a2
 2a4:	40d006b3          	neg	a3,a3
 2a8:	fff4c493          	not	s1,s1
 2ac:	40f686b3          	sub	a3,a3,a5
 2b0:	40c00633          	neg	a2,a2
 2b4:	00060a93          	mv	s5,a2
 2b8:	000a0993          	mv	s3,s4
 2bc:	00058913          	mv	s2,a1
 2c0:	38069c63          	bnez	a3,658 <__divdi3+0x414>
 2c4:	00030697          	auipc	a3,0x30
 2c8:	ed868693          	add	a3,a3,-296 # 3019c <__clz_tab>
 2cc:	12c5f663          	bgeu	a1,a2,3f8 <__divdi3+0x1b4>
 2d0:	000107b7          	lui	a5,0x10
 2d4:	10f67863          	bgeu	a2,a5,3e4 <__divdi3+0x1a0>
 2d8:	10063793          	sltiu	a5,a2,256
 2dc:	0017c793          	xor	a5,a5,1
 2e0:	00379793          	sll	a5,a5,0x3
 2e4:	00f65733          	srl	a4,a2,a5
 2e8:	00e686b3          	add	a3,a3,a4
 2ec:	0006c703          	lbu	a4,0(a3)
 2f0:	02000693          	li	a3,32
 2f4:	00f707b3          	add	a5,a4,a5
 2f8:	40f68733          	sub	a4,a3,a5
 2fc:	00f68c63          	beq	a3,a5,314 <__divdi3+0xd0>
 300:	00e59933          	sll	s2,a1,a4
 304:	00fa57b3          	srl	a5,s4,a5
 308:	00e61ab3          	sll	s5,a2,a4
 30c:	0127e933          	or	s2,a5,s2
 310:	00ea19b3          	sll	s3,s4,a4
 314:	010adb13          	srl	s6,s5,0x10
 318:	000b0593          	mv	a1,s6
 31c:	00090513          	mv	a0,s2
 320:	010a9b93          	sll	s7,s5,0x10
 324:	281000ef          	jal	da4 <__hidden___udivsi3>
 328:	010bdb93          	srl	s7,s7,0x10
 32c:	00050593          	mv	a1,a0
 330:	00050a13          	mv	s4,a0
 334:	000b8513          	mv	a0,s7
 338:	241000ef          	jal	d78 <__mulsi3>
 33c:	00050413          	mv	s0,a0
 340:	000b0593          	mv	a1,s6
 344:	00090513          	mv	a0,s2
 348:	2a5000ef          	jal	dec <__umodsi3>
 34c:	01051513          	sll	a0,a0,0x10
 350:	0109d713          	srl	a4,s3,0x10
 354:	00a76733          	or	a4,a4,a0
 358:	000a0913          	mv	s2,s4
 35c:	00877e63          	bgeu	a4,s0,378 <__divdi3+0x134>
 360:	00ea8733          	add	a4,s5,a4
 364:	fffa0913          	add	s2,s4,-1
 368:	01576863          	bltu	a4,s5,378 <__divdi3+0x134>
 36c:	00877663          	bgeu	a4,s0,378 <__divdi3+0x134>
 370:	ffea0913          	add	s2,s4,-2
 374:	01570733          	add	a4,a4,s5
 378:	40870433          	sub	s0,a4,s0
 37c:	000b0593          	mv	a1,s6
 380:	00040513          	mv	a0,s0
 384:	221000ef          	jal	da4 <__hidden___udivsi3>
 388:	00050593          	mv	a1,a0
 38c:	00050a13          	mv	s4,a0
 390:	000b8513          	mv	a0,s7
 394:	1e5000ef          	jal	d78 <__mulsi3>
 398:	00050b93          	mv	s7,a0
 39c:	000b0593          	mv	a1,s6
 3a0:	00040513          	mv	a0,s0
 3a4:	249000ef          	jal	dec <__umodsi3>
 3a8:	01099993          	sll	s3,s3,0x10
 3ac:	01051513          	sll	a0,a0,0x10
 3b0:	0109d993          	srl	s3,s3,0x10
 3b4:	00a9e9b3          	or	s3,s3,a0
 3b8:	000a0713          	mv	a4,s4
 3bc:	0179fc63          	bgeu	s3,s7,3d4 <__divdi3+0x190>
 3c0:	013a89b3          	add	s3,s5,s3
 3c4:	fffa0713          	add	a4,s4,-1
 3c8:	0159e663          	bltu	s3,s5,3d4 <__divdi3+0x190>
 3cc:	0179f463          	bgeu	s3,s7,3d4 <__divdi3+0x190>
 3d0:	ffea0713          	add	a4,s4,-2
 3d4:	01091793          	sll	a5,s2,0x10
 3d8:	00e7e7b3          	or	a5,a5,a4
 3dc:	00000913          	li	s2,0
 3e0:	1200006f          	j	500 <__divdi3+0x2bc>
 3e4:	01000737          	lui	a4,0x1000
 3e8:	01000793          	li	a5,16
 3ec:	eee66ce3          	bltu	a2,a4,2e4 <__divdi3+0xa0>
 3f0:	01800793          	li	a5,24
 3f4:	ef1ff06f          	j	2e4 <__divdi3+0xa0>
 3f8:	00000713          	li	a4,0
 3fc:	00060c63          	beqz	a2,414 <__divdi3+0x1d0>
 400:	000107b7          	lui	a5,0x10
 404:	14f67a63          	bgeu	a2,a5,558 <__divdi3+0x314>
 408:	10063713          	sltiu	a4,a2,256
 40c:	00174713          	xor	a4,a4,1
 410:	00371713          	sll	a4,a4,0x3
 414:	00e657b3          	srl	a5,a2,a4
 418:	00f686b3          	add	a3,a3,a5
 41c:	0006c783          	lbu	a5,0(a3)
 420:	02000693          	li	a3,32
 424:	00e787b3          	add	a5,a5,a4
 428:	40f68733          	sub	a4,a3,a5
 42c:	14f69063          	bne	a3,a5,56c <__divdi3+0x328>
 430:	40c58a33          	sub	s4,a1,a2
 434:	00100913          	li	s2,1
 438:	010adb13          	srl	s6,s5,0x10
 43c:	000b0593          	mv	a1,s6
 440:	000a0513          	mv	a0,s4
 444:	010a9b93          	sll	s7,s5,0x10
 448:	15d000ef          	jal	da4 <__hidden___udivsi3>
 44c:	010bdb93          	srl	s7,s7,0x10
 450:	00050593          	mv	a1,a0
 454:	00050c93          	mv	s9,a0
 458:	000b8513          	mv	a0,s7
 45c:	11d000ef          	jal	d78 <__mulsi3>
 460:	00050c13          	mv	s8,a0
 464:	000b0593          	mv	a1,s6
 468:	000a0513          	mv	a0,s4
 46c:	181000ef          	jal	dec <__umodsi3>
 470:	01051513          	sll	a0,a0,0x10
 474:	0109d713          	srl	a4,s3,0x10
 478:	00a76733          	or	a4,a4,a0
 47c:	000c8a13          	mv	s4,s9
 480:	01877e63          	bgeu	a4,s8,49c <__divdi3+0x258>
 484:	00ea8733          	add	a4,s5,a4
 488:	fffc8a13          	add	s4,s9,-1
 48c:	01576863          	bltu	a4,s5,49c <__divdi3+0x258>
 490:	01877663          	bgeu	a4,s8,49c <__divdi3+0x258>
 494:	ffec8a13          	add	s4,s9,-2
 498:	01570733          	add	a4,a4,s5
 49c:	41870433          	sub	s0,a4,s8
 4a0:	000b0593          	mv	a1,s6
 4a4:	00040513          	mv	a0,s0
 4a8:	0fd000ef          	jal	da4 <__hidden___udivsi3>
 4ac:	00050593          	mv	a1,a0
 4b0:	00050c13          	mv	s8,a0
 4b4:	000b8513          	mv	a0,s7
 4b8:	0c1000ef          	jal	d78 <__mulsi3>
 4bc:	00050b93          	mv	s7,a0
 4c0:	000b0593          	mv	a1,s6
 4c4:	00040513          	mv	a0,s0
 4c8:	125000ef          	jal	dec <__umodsi3>
 4cc:	01099993          	sll	s3,s3,0x10
 4d0:	01051513          	sll	a0,a0,0x10
 4d4:	0109d993          	srl	s3,s3,0x10
 4d8:	00a9e9b3          	or	s3,s3,a0
 4dc:	000c0713          	mv	a4,s8
 4e0:	0179fc63          	bgeu	s3,s7,4f8 <__divdi3+0x2b4>
 4e4:	013a89b3          	add	s3,s5,s3
 4e8:	fffc0713          	add	a4,s8,-1
 4ec:	0159e663          	bltu	s3,s5,4f8 <__divdi3+0x2b4>
 4f0:	0179f463          	bgeu	s3,s7,4f8 <__divdi3+0x2b4>
 4f4:	ffec0713          	add	a4,s8,-2
 4f8:	010a1793          	sll	a5,s4,0x10
 4fc:	00e7e7b3          	or	a5,a5,a4
 500:	00078513          	mv	a0,a5
 504:	00090593          	mv	a1,s2
 508:	00048a63          	beqz	s1,51c <__divdi3+0x2d8>
 50c:	00f037b3          	snez	a5,a5
 510:	412005b3          	neg	a1,s2
 514:	40f585b3          	sub	a1,a1,a5
 518:	40a00533          	neg	a0,a0
 51c:	03c12083          	lw	ra,60(sp)
 520:	03812403          	lw	s0,56(sp)
 524:	03412483          	lw	s1,52(sp)
 528:	03012903          	lw	s2,48(sp)
 52c:	02c12983          	lw	s3,44(sp)
 530:	02812a03          	lw	s4,40(sp)
 534:	02412a83          	lw	s5,36(sp)
 538:	02012b03          	lw	s6,32(sp)
 53c:	01c12b83          	lw	s7,28(sp)
 540:	01812c03          	lw	s8,24(sp)
 544:	01412c83          	lw	s9,20(sp)
 548:	01012d03          	lw	s10,16(sp)
 54c:	00c12d83          	lw	s11,12(sp)
 550:	04010113          	add	sp,sp,64
 554:	00008067          	ret
 558:	010007b7          	lui	a5,0x1000
 55c:	01000713          	li	a4,16
 560:	eaf66ae3          	bltu	a2,a5,414 <__divdi3+0x1d0>
 564:	01800713          	li	a4,24
 568:	eadff06f          	j	414 <__divdi3+0x1d0>
 56c:	00e61ab3          	sll	s5,a2,a4
 570:	00f5d933          	srl	s2,a1,a5
 574:	010adb93          	srl	s7,s5,0x10
 578:	00e595b3          	sll	a1,a1,a4
 57c:	00fa57b3          	srl	a5,s4,a5
 580:	00b7eb33          	or	s6,a5,a1
 584:	00ea19b3          	sll	s3,s4,a4
 588:	000b8593          	mv	a1,s7
 58c:	00090513          	mv	a0,s2
 590:	010a9a13          	sll	s4,s5,0x10
 594:	011000ef          	jal	da4 <__hidden___udivsi3>
 598:	010a5a13          	srl	s4,s4,0x10
 59c:	00050593          	mv	a1,a0
 5a0:	00050c13          	mv	s8,a0
 5a4:	000a0513          	mv	a0,s4
 5a8:	7d0000ef          	jal	d78 <__mulsi3>
 5ac:	00050413          	mv	s0,a0
 5b0:	000b8593          	mv	a1,s7
 5b4:	00090513          	mv	a0,s2
 5b8:	035000ef          	jal	dec <__umodsi3>
 5bc:	01051513          	sll	a0,a0,0x10
 5c0:	010b5713          	srl	a4,s6,0x10
 5c4:	00a76733          	or	a4,a4,a0
 5c8:	000c0913          	mv	s2,s8
 5cc:	00877e63          	bgeu	a4,s0,5e8 <__divdi3+0x3a4>
 5d0:	00ea8733          	add	a4,s5,a4
 5d4:	fffc0913          	add	s2,s8,-1
 5d8:	01576863          	bltu	a4,s5,5e8 <__divdi3+0x3a4>
 5dc:	00877663          	bgeu	a4,s0,5e8 <__divdi3+0x3a4>
 5e0:	ffec0913          	add	s2,s8,-2
 5e4:	01570733          	add	a4,a4,s5
 5e8:	40870433          	sub	s0,a4,s0
 5ec:	000b8593          	mv	a1,s7
 5f0:	00040513          	mv	a0,s0
 5f4:	7b0000ef          	jal	da4 <__hidden___udivsi3>
 5f8:	00050593          	mv	a1,a0
 5fc:	00050c13          	mv	s8,a0
 600:	000a0513          	mv	a0,s4
 604:	774000ef          	jal	d78 <__mulsi3>
 608:	00050a13          	mv	s4,a0
 60c:	000b8593          	mv	a1,s7
 610:	00040513          	mv	a0,s0
 614:	7d8000ef          	jal	dec <__umodsi3>
 618:	010b1793          	sll	a5,s6,0x10
 61c:	01051513          	sll	a0,a0,0x10
 620:	0107d793          	srl	a5,a5,0x10
 624:	00a7e7b3          	or	a5,a5,a0
 628:	000c0713          	mv	a4,s8
 62c:	0147fe63          	bgeu	a5,s4,648 <__divdi3+0x404>
 630:	00fa87b3          	add	a5,s5,a5
 634:	fffc0713          	add	a4,s8,-1
 638:	0157e863          	bltu	a5,s5,648 <__divdi3+0x404>
 63c:	0147f663          	bgeu	a5,s4,648 <__divdi3+0x404>
 640:	ffec0713          	add	a4,s8,-2
 644:	015787b3          	add	a5,a5,s5
 648:	01091913          	sll	s2,s2,0x10
 64c:	41478a33          	sub	s4,a5,s4
 650:	00e96933          	or	s2,s2,a4
 654:	de5ff06f          	j	438 <__divdi3+0x1f4>
 658:	1ed5ee63          	bltu	a1,a3,854 <__divdi3+0x610>
 65c:	000107b7          	lui	a5,0x10
 660:	04f6f463          	bgeu	a3,a5,6a8 <__divdi3+0x464>
 664:	1006b713          	sltiu	a4,a3,256
 668:	00174713          	xor	a4,a4,1
 66c:	00371713          	sll	a4,a4,0x3
 670:	00e6d533          	srl	a0,a3,a4
 674:	00030797          	auipc	a5,0x30
 678:	b2878793          	add	a5,a5,-1240 # 3019c <__clz_tab>
 67c:	00a787b3          	add	a5,a5,a0
 680:	0007c803          	lbu	a6,0(a5)
 684:	02000793          	li	a5,32
 688:	00e80833          	add	a6,a6,a4
 68c:	41078933          	sub	s2,a5,a6
 690:	03079663          	bne	a5,a6,6bc <__divdi3+0x478>
 694:	00100793          	li	a5,1
 698:	e6b6e4e3          	bltu	a3,a1,500 <__divdi3+0x2bc>
 69c:	00ca37b3          	sltu	a5,s4,a2
 6a0:	0017c793          	xor	a5,a5,1
 6a4:	e5dff06f          	j	500 <__divdi3+0x2bc>
 6a8:	010007b7          	lui	a5,0x1000
 6ac:	01000713          	li	a4,16
 6b0:	fcf6e0e3          	bltu	a3,a5,670 <__divdi3+0x42c>
 6b4:	01800713          	li	a4,24
 6b8:	fb9ff06f          	j	670 <__divdi3+0x42c>
 6bc:	012696b3          	sll	a3,a3,s2
 6c0:	01065c33          	srl	s8,a2,a6
 6c4:	00dc6c33          	or	s8,s8,a3
 6c8:	0105dab3          	srl	s5,a1,a6
 6cc:	010a5733          	srl	a4,s4,a6
 6d0:	012595b3          	sll	a1,a1,s2
 6d4:	010c5b13          	srl	s6,s8,0x10
 6d8:	00b769b3          	or	s3,a4,a1
 6dc:	010c1b93          	sll	s7,s8,0x10
 6e0:	000b0593          	mv	a1,s6
 6e4:	000a8513          	mv	a0,s5
 6e8:	01261433          	sll	s0,a2,s2
 6ec:	010bdb93          	srl	s7,s7,0x10
 6f0:	6b4000ef          	jal	da4 <__hidden___udivsi3>
 6f4:	00050593          	mv	a1,a0
 6f8:	00050d93          	mv	s11,a0
 6fc:	000b8513          	mv	a0,s7
 700:	678000ef          	jal	d78 <__mulsi3>
 704:	00050d13          	mv	s10,a0
 708:	000b0593          	mv	a1,s6
 70c:	000a8513          	mv	a0,s5
 710:	6dc000ef          	jal	dec <__umodsi3>
 714:	01051513          	sll	a0,a0,0x10
 718:	0109d693          	srl	a3,s3,0x10
 71c:	00a6e6b3          	or	a3,a3,a0
 720:	000d8c93          	mv	s9,s11
 724:	01a6fe63          	bgeu	a3,s10,740 <__divdi3+0x4fc>
 728:	00dc06b3          	add	a3,s8,a3
 72c:	fffd8c93          	add	s9,s11,-1
 730:	0186e863          	bltu	a3,s8,740 <__divdi3+0x4fc>
 734:	01a6f663          	bgeu	a3,s10,740 <__divdi3+0x4fc>
 738:	ffed8c93          	add	s9,s11,-2
 73c:	018686b3          	add	a3,a3,s8
 740:	41a68ab3          	sub	s5,a3,s10
 744:	000b0593          	mv	a1,s6
 748:	000a8513          	mv	a0,s5
 74c:	658000ef          	jal	da4 <__hidden___udivsi3>
 750:	00050593          	mv	a1,a0
 754:	00050d13          	mv	s10,a0
 758:	000b8513          	mv	a0,s7
 75c:	61c000ef          	jal	d78 <__mulsi3>
 760:	00050b93          	mv	s7,a0
 764:	000b0593          	mv	a1,s6
 768:	000a8513          	mv	a0,s5
 76c:	680000ef          	jal	dec <__umodsi3>
 770:	01099713          	sll	a4,s3,0x10
 774:	01051513          	sll	a0,a0,0x10
 778:	01075713          	srl	a4,a4,0x10
 77c:	00a76733          	or	a4,a4,a0
 780:	000d0693          	mv	a3,s10
 784:	01777e63          	bgeu	a4,s7,7a0 <__divdi3+0x55c>
 788:	00ec0733          	add	a4,s8,a4
 78c:	fffd0693          	add	a3,s10,-1
 790:	01876863          	bltu	a4,s8,7a0 <__divdi3+0x55c>
 794:	01777663          	bgeu	a4,s7,7a0 <__divdi3+0x55c>
 798:	ffed0693          	add	a3,s10,-2
 79c:	01870733          	add	a4,a4,s8
 7a0:	010c9793          	sll	a5,s9,0x10
 7a4:	00010e37          	lui	t3,0x10
 7a8:	00d7e7b3          	or	a5,a5,a3
 7ac:	fffe0313          	add	t1,t3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82a7>
 7b0:	0067f8b3          	and	a7,a5,t1
 7b4:	00647333          	and	t1,s0,t1
 7b8:	41770733          	sub	a4,a4,s7
 7bc:	0107de93          	srl	t4,a5,0x10
 7c0:	01045413          	srl	s0,s0,0x10
 7c4:	00088513          	mv	a0,a7
 7c8:	00030593          	mv	a1,t1
 7cc:	5ac000ef          	jal	d78 <__mulsi3>
 7d0:	00050813          	mv	a6,a0
 7d4:	00040593          	mv	a1,s0
 7d8:	00088513          	mv	a0,a7
 7dc:	59c000ef          	jal	d78 <__mulsi3>
 7e0:	00050893          	mv	a7,a0
 7e4:	00030593          	mv	a1,t1
 7e8:	000e8513          	mv	a0,t4
 7ec:	58c000ef          	jal	d78 <__mulsi3>
 7f0:	00050313          	mv	t1,a0
 7f4:	00040593          	mv	a1,s0
 7f8:	000e8513          	mv	a0,t4
 7fc:	57c000ef          	jal	d78 <__mulsi3>
 800:	01085693          	srl	a3,a6,0x10
 804:	006888b3          	add	a7,a7,t1
 808:	011686b3          	add	a3,a3,a7
 80c:	00050613          	mv	a2,a0
 810:	0066f463          	bgeu	a3,t1,818 <__divdi3+0x5d4>
 814:	01c50633          	add	a2,a0,t3
 818:	0106d593          	srl	a1,a3,0x10
 81c:	00c58633          	add	a2,a1,a2
 820:	02c76663          	bltu	a4,a2,84c <__divdi3+0x608>
 824:	bac71ce3          	bne	a4,a2,3dc <__divdi3+0x198>
 828:	00010637          	lui	a2,0x10
 82c:	fff60613          	add	a2,a2,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82a7>
 830:	00c6f6b3          	and	a3,a3,a2
 834:	01069693          	sll	a3,a3,0x10
 838:	00c87833          	and	a6,a6,a2
 83c:	012a1733          	sll	a4,s4,s2
 840:	01068533          	add	a0,a3,a6
 844:	00000913          	li	s2,0
 848:	caa77ce3          	bgeu	a4,a0,500 <__divdi3+0x2bc>
 84c:	fff78793          	add	a5,a5,-1 # ffffff <GET_WATCHDOG_LOW+0xdfefbf>
 850:	b8dff06f          	j	3dc <__divdi3+0x198>
 854:	00000913          	li	s2,0
 858:	00000793          	li	a5,0
 85c:	ca5ff06f          	j	500 <__divdi3+0x2bc>

00000860 <__moddi3>:
 860:	fc010113          	add	sp,sp,-64
 864:	02912a23          	sw	s1,52(sp)
 868:	02112e23          	sw	ra,60(sp)
 86c:	02812c23          	sw	s0,56(sp)
 870:	03212823          	sw	s2,48(sp)
 874:	03312623          	sw	s3,44(sp)
 878:	03412423          	sw	s4,40(sp)
 87c:	03512223          	sw	s5,36(sp)
 880:	03612023          	sw	s6,32(sp)
 884:	01712e23          	sw	s7,28(sp)
 888:	01812c23          	sw	s8,24(sp)
 88c:	01912a23          	sw	s9,20(sp)
 890:	01a12823          	sw	s10,16(sp)
 894:	01b12623          	sw	s11,12(sp)
 898:	00000493          	li	s1,0
 89c:	0005dc63          	bgez	a1,8b4 <__moddi3+0x54>
 8a0:	00a037b3          	snez	a5,a0
 8a4:	40b005b3          	neg	a1,a1
 8a8:	40f585b3          	sub	a1,a1,a5
 8ac:	40a00533          	neg	a0,a0
 8b0:	fff00493          	li	s1,-1
 8b4:	0006da63          	bgez	a3,8c8 <__moddi3+0x68>
 8b8:	00c037b3          	snez	a5,a2
 8bc:	40d006b3          	neg	a3,a3
 8c0:	40f686b3          	sub	a3,a3,a5
 8c4:	40c00633          	neg	a2,a2
 8c8:	00060a13          	mv	s4,a2
 8cc:	00050413          	mv	s0,a0
 8d0:	00058913          	mv	s2,a1
 8d4:	26069663          	bnez	a3,b40 <__moddi3+0x2e0>
 8d8:	00030697          	auipc	a3,0x30
 8dc:	8c468693          	add	a3,a3,-1852 # 3019c <__clz_tab>
 8e0:	14c5fa63          	bgeu	a1,a2,a34 <__moddi3+0x1d4>
 8e4:	000107b7          	lui	a5,0x10
 8e8:	12f67c63          	bgeu	a2,a5,a20 <__moddi3+0x1c0>
 8ec:	10063793          	sltiu	a5,a2,256
 8f0:	0017c793          	xor	a5,a5,1
 8f4:	00379793          	sll	a5,a5,0x3
 8f8:	00f65733          	srl	a4,a2,a5
 8fc:	00e686b3          	add	a3,a3,a4
 900:	0006c703          	lbu	a4,0(a3)
 904:	00f707b3          	add	a5,a4,a5
 908:	02000713          	li	a4,32
 90c:	40f709b3          	sub	s3,a4,a5
 910:	00f70c63          	beq	a4,a5,928 <__moddi3+0xc8>
 914:	013595b3          	sll	a1,a1,s3
 918:	00f557b3          	srl	a5,a0,a5
 91c:	01361a33          	sll	s4,a2,s3
 920:	00b7e933          	or	s2,a5,a1
 924:	01351433          	sll	s0,a0,s3
 928:	010a5b13          	srl	s6,s4,0x10
 92c:	000b0593          	mv	a1,s6
 930:	010a1b93          	sll	s7,s4,0x10
 934:	00090513          	mv	a0,s2
 938:	46c000ef          	jal	da4 <__hidden___udivsi3>
 93c:	010bdb93          	srl	s7,s7,0x10
 940:	000b8593          	mv	a1,s7
 944:	434000ef          	jal	d78 <__mulsi3>
 948:	00050a93          	mv	s5,a0
 94c:	000b0593          	mv	a1,s6
 950:	00090513          	mv	a0,s2
 954:	498000ef          	jal	dec <__umodsi3>
 958:	01051513          	sll	a0,a0,0x10
 95c:	01045793          	srl	a5,s0,0x10
 960:	00a7e7b3          	or	a5,a5,a0
 964:	0157fa63          	bgeu	a5,s5,978 <__moddi3+0x118>
 968:	00fa07b3          	add	a5,s4,a5
 96c:	0147e663          	bltu	a5,s4,978 <__moddi3+0x118>
 970:	0157f463          	bgeu	a5,s5,978 <__moddi3+0x118>
 974:	014787b3          	add	a5,a5,s4
 978:	41578933          	sub	s2,a5,s5
 97c:	000b0593          	mv	a1,s6
 980:	00090513          	mv	a0,s2
 984:	420000ef          	jal	da4 <__hidden___udivsi3>
 988:	000b8593          	mv	a1,s7
 98c:	3ec000ef          	jal	d78 <__mulsi3>
 990:	00050a93          	mv	s5,a0
 994:	000b0593          	mv	a1,s6
 998:	00090513          	mv	a0,s2
 99c:	450000ef          	jal	dec <__umodsi3>
 9a0:	01041413          	sll	s0,s0,0x10
 9a4:	01051513          	sll	a0,a0,0x10
 9a8:	01045413          	srl	s0,s0,0x10
 9ac:	00a46433          	or	s0,s0,a0
 9b0:	01547a63          	bgeu	s0,s5,9c4 <__moddi3+0x164>
 9b4:	008a0433          	add	s0,s4,s0
 9b8:	01446663          	bltu	s0,s4,9c4 <__moddi3+0x164>
 9bc:	01547463          	bgeu	s0,s5,9c4 <__moddi3+0x164>
 9c0:	01440433          	add	s0,s0,s4
 9c4:	41540433          	sub	s0,s0,s5
 9c8:	01345533          	srl	a0,s0,s3
 9cc:	00000593          	li	a1,0
 9d0:	00048a63          	beqz	s1,9e4 <__moddi3+0x184>
 9d4:	00a037b3          	snez	a5,a0
 9d8:	40b005b3          	neg	a1,a1
 9dc:	40f585b3          	sub	a1,a1,a5
 9e0:	40a00533          	neg	a0,a0
 9e4:	03c12083          	lw	ra,60(sp)
 9e8:	03812403          	lw	s0,56(sp)
 9ec:	03412483          	lw	s1,52(sp)
 9f0:	03012903          	lw	s2,48(sp)
 9f4:	02c12983          	lw	s3,44(sp)
 9f8:	02812a03          	lw	s4,40(sp)
 9fc:	02412a83          	lw	s5,36(sp)
 a00:	02012b03          	lw	s6,32(sp)
 a04:	01c12b83          	lw	s7,28(sp)
 a08:	01812c03          	lw	s8,24(sp)
 a0c:	01412c83          	lw	s9,20(sp)
 a10:	01012d03          	lw	s10,16(sp)
 a14:	00c12d83          	lw	s11,12(sp)
 a18:	04010113          	add	sp,sp,64
 a1c:	00008067          	ret
 a20:	01000737          	lui	a4,0x1000
 a24:	01000793          	li	a5,16
 a28:	ece668e3          	bltu	a2,a4,8f8 <__moddi3+0x98>
 a2c:	01800793          	li	a5,24
 a30:	ec9ff06f          	j	8f8 <__moddi3+0x98>
 a34:	00000713          	li	a4,0
 a38:	00060c63          	beqz	a2,a50 <__moddi3+0x1f0>
 a3c:	000107b7          	lui	a5,0x10
 a40:	0ef67663          	bgeu	a2,a5,b2c <__moddi3+0x2cc>
 a44:	10063713          	sltiu	a4,a2,256
 a48:	00174713          	xor	a4,a4,1
 a4c:	00371713          	sll	a4,a4,0x3
 a50:	00e657b3          	srl	a5,a2,a4
 a54:	00f686b3          	add	a3,a3,a5
 a58:	0006c783          	lbu	a5,0(a3)
 a5c:	40c58933          	sub	s2,a1,a2
 a60:	00e787b3          	add	a5,a5,a4
 a64:	02000713          	li	a4,32
 a68:	40f709b3          	sub	s3,a4,a5
 a6c:	eaf70ee3          	beq	a4,a5,928 <__moddi3+0xc8>
 a70:	01361a33          	sll	s4,a2,s3
 a74:	00f5d933          	srl	s2,a1,a5
 a78:	010a5b93          	srl	s7,s4,0x10
 a7c:	00f557b3          	srl	a5,a0,a5
 a80:	013595b3          	sll	a1,a1,s3
 a84:	00b7eab3          	or	s5,a5,a1
 a88:	01351433          	sll	s0,a0,s3
 a8c:	000b8593          	mv	a1,s7
 a90:	010a1b13          	sll	s6,s4,0x10
 a94:	00090513          	mv	a0,s2
 a98:	30c000ef          	jal	da4 <__hidden___udivsi3>
 a9c:	010b5b13          	srl	s6,s6,0x10
 aa0:	000b0593          	mv	a1,s6
 aa4:	2d4000ef          	jal	d78 <__mulsi3>
 aa8:	00050c13          	mv	s8,a0
 aac:	000b8593          	mv	a1,s7
 ab0:	00090513          	mv	a0,s2
 ab4:	338000ef          	jal	dec <__umodsi3>
 ab8:	01051513          	sll	a0,a0,0x10
 abc:	010ad713          	srl	a4,s5,0x10
 ac0:	00a76733          	or	a4,a4,a0
 ac4:	01877a63          	bgeu	a4,s8,ad8 <__moddi3+0x278>
 ac8:	00ea0733          	add	a4,s4,a4
 acc:	01476663          	bltu	a4,s4,ad8 <__moddi3+0x278>
 ad0:	01877463          	bgeu	a4,s8,ad8 <__moddi3+0x278>
 ad4:	01470733          	add	a4,a4,s4
 ad8:	41870c33          	sub	s8,a4,s8
 adc:	000b8593          	mv	a1,s7
 ae0:	000c0513          	mv	a0,s8
 ae4:	2c0000ef          	jal	da4 <__hidden___udivsi3>
 ae8:	000b0593          	mv	a1,s6
 aec:	28c000ef          	jal	d78 <__mulsi3>
 af0:	00050b13          	mv	s6,a0
 af4:	000b8593          	mv	a1,s7
 af8:	000c0513          	mv	a0,s8
 afc:	2f0000ef          	jal	dec <__umodsi3>
 b00:	010a9793          	sll	a5,s5,0x10
 b04:	01051513          	sll	a0,a0,0x10
 b08:	0107d793          	srl	a5,a5,0x10
 b0c:	00a7e7b3          	or	a5,a5,a0
 b10:	0167fa63          	bgeu	a5,s6,b24 <__moddi3+0x2c4>
 b14:	00fa07b3          	add	a5,s4,a5
 b18:	0147e663          	bltu	a5,s4,b24 <__moddi3+0x2c4>
 b1c:	0167f463          	bgeu	a5,s6,b24 <__moddi3+0x2c4>
 b20:	014787b3          	add	a5,a5,s4
 b24:	41678933          	sub	s2,a5,s6
 b28:	e01ff06f          	j	928 <__moddi3+0xc8>
 b2c:	010007b7          	lui	a5,0x1000
 b30:	01000713          	li	a4,16
 b34:	f0f66ee3          	bltu	a2,a5,a50 <__moddi3+0x1f0>
 b38:	01800713          	li	a4,24
 b3c:	f15ff06f          	j	a50 <__moddi3+0x1f0>
 b40:	e8d5e8e3          	bltu	a1,a3,9d0 <__moddi3+0x170>
 b44:	000107b7          	lui	a5,0x10
 b48:	04f6fe63          	bgeu	a3,a5,ba4 <__moddi3+0x344>
 b4c:	1006b793          	sltiu	a5,a3,256
 b50:	0017c793          	xor	a5,a5,1
 b54:	00379793          	sll	a5,a5,0x3
 b58:	00f6d833          	srl	a6,a3,a5
 b5c:	0002f717          	auipc	a4,0x2f
 b60:	64070713          	add	a4,a4,1600 # 3019c <__clz_tab>
 b64:	01070733          	add	a4,a4,a6
 b68:	00074a03          	lbu	s4,0(a4)
 b6c:	00fa0a33          	add	s4,s4,a5
 b70:	02000793          	li	a5,32
 b74:	414789b3          	sub	s3,a5,s4
 b78:	05479063          	bne	a5,s4,bb8 <__moddi3+0x358>
 b7c:	00b6e463          	bltu	a3,a1,b84 <__moddi3+0x324>
 b80:	00c56c63          	bltu	a0,a2,b98 <__moddi3+0x338>
 b84:	40c50ab3          	sub	s5,a0,a2
 b88:	40d586b3          	sub	a3,a1,a3
 b8c:	015535b3          	sltu	a1,a0,s5
 b90:	000a8413          	mv	s0,s5
 b94:	40b68933          	sub	s2,a3,a1
 b98:	00040513          	mv	a0,s0
 b9c:	00090593          	mv	a1,s2
 ba0:	e31ff06f          	j	9d0 <__moddi3+0x170>
 ba4:	01000737          	lui	a4,0x1000
 ba8:	01000793          	li	a5,16
 bac:	fae6e6e3          	bltu	a3,a4,b58 <__moddi3+0x2f8>
 bb0:	01800793          	li	a5,24
 bb4:	fa5ff06f          	j	b58 <__moddi3+0x2f8>
 bb8:	013696b3          	sll	a3,a3,s3
 bbc:	01465bb3          	srl	s7,a2,s4
 bc0:	00dbebb3          	or	s7,s7,a3
 bc4:	0145db33          	srl	s6,a1,s4
 bc8:	01455433          	srl	s0,a0,s4
 bcc:	013595b3          	sll	a1,a1,s3
 bd0:	010bdc13          	srl	s8,s7,0x10
 bd4:	00b46433          	or	s0,s0,a1
 bd8:	01351933          	sll	s2,a0,s3
 bdc:	000c0593          	mv	a1,s8
 be0:	000b0513          	mv	a0,s6
 be4:	010b9c93          	sll	s9,s7,0x10
 be8:	01361ab3          	sll	s5,a2,s3
 bec:	010cdc93          	srl	s9,s9,0x10
 bf0:	1b4000ef          	jal	da4 <__hidden___udivsi3>
 bf4:	00050593          	mv	a1,a0
 bf8:	00050d93          	mv	s11,a0
 bfc:	000c8513          	mv	a0,s9
 c00:	178000ef          	jal	d78 <__mulsi3>
 c04:	00050d13          	mv	s10,a0
 c08:	000c0593          	mv	a1,s8
 c0c:	000b0513          	mv	a0,s6
 c10:	1dc000ef          	jal	dec <__umodsi3>
 c14:	01051513          	sll	a0,a0,0x10
 c18:	01045793          	srl	a5,s0,0x10
 c1c:	00a7e7b3          	or	a5,a5,a0
 c20:	000d8b13          	mv	s6,s11
 c24:	01a7fe63          	bgeu	a5,s10,c40 <__moddi3+0x3e0>
 c28:	00fb87b3          	add	a5,s7,a5
 c2c:	fffd8b13          	add	s6,s11,-1
 c30:	0177e863          	bltu	a5,s7,c40 <__moddi3+0x3e0>
 c34:	01a7f663          	bgeu	a5,s10,c40 <__moddi3+0x3e0>
 c38:	ffed8b13          	add	s6,s11,-2
 c3c:	017787b3          	add	a5,a5,s7
 c40:	41a78d33          	sub	s10,a5,s10
 c44:	000c0593          	mv	a1,s8
 c48:	000d0513          	mv	a0,s10
 c4c:	158000ef          	jal	da4 <__hidden___udivsi3>
 c50:	00050593          	mv	a1,a0
 c54:	00050d93          	mv	s11,a0
 c58:	000c8513          	mv	a0,s9
 c5c:	11c000ef          	jal	d78 <__mulsi3>
 c60:	000c0593          	mv	a1,s8
 c64:	00050c93          	mv	s9,a0
 c68:	000d0513          	mv	a0,s10
 c6c:	180000ef          	jal	dec <__umodsi3>
 c70:	01041593          	sll	a1,s0,0x10
 c74:	01051513          	sll	a0,a0,0x10
 c78:	0105d593          	srl	a1,a1,0x10
 c7c:	00a5e5b3          	or	a1,a1,a0
 c80:	000d8713          	mv	a4,s11
 c84:	0195fe63          	bgeu	a1,s9,ca0 <__moddi3+0x440>
 c88:	00bb85b3          	add	a1,s7,a1
 c8c:	fffd8713          	add	a4,s11,-1
 c90:	0175e863          	bltu	a1,s7,ca0 <__moddi3+0x440>
 c94:	0195f663          	bgeu	a1,s9,ca0 <__moddi3+0x440>
 c98:	ffed8713          	add	a4,s11,-2
 c9c:	017585b3          	add	a1,a1,s7
 ca0:	00010337          	lui	t1,0x10
 ca4:	010b1b13          	sll	s6,s6,0x10
 ca8:	00eb6b33          	or	s6,s6,a4
 cac:	fff30713          	add	a4,t1,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82a7>
 cb0:	00eb7e33          	and	t3,s6,a4
 cb4:	00eaf733          	and	a4,s5,a4
 cb8:	419587b3          	sub	a5,a1,s9
 cbc:	010b5b13          	srl	s6,s6,0x10
 cc0:	010ad893          	srl	a7,s5,0x10
 cc4:	000e0513          	mv	a0,t3
 cc8:	00070593          	mv	a1,a4
 ccc:	0ac000ef          	jal	d78 <__mulsi3>
 cd0:	00050813          	mv	a6,a0
 cd4:	00088593          	mv	a1,a7
 cd8:	000e0513          	mv	a0,t3
 cdc:	09c000ef          	jal	d78 <__mulsi3>
 ce0:	00050413          	mv	s0,a0
 ce4:	00070593          	mv	a1,a4
 ce8:	000b0513          	mv	a0,s6
 cec:	08c000ef          	jal	d78 <__mulsi3>
 cf0:	00050713          	mv	a4,a0
 cf4:	00088593          	mv	a1,a7
 cf8:	000b0513          	mv	a0,s6
 cfc:	07c000ef          	jal	d78 <__mulsi3>
 d00:	00e40433          	add	s0,s0,a4
 d04:	01085693          	srl	a3,a6,0x10
 d08:	00d40433          	add	s0,s0,a3
 d0c:	00e47463          	bgeu	s0,a4,d14 <__moddi3+0x4b4>
 d10:	00650533          	add	a0,a0,t1
 d14:	000106b7          	lui	a3,0x10
 d18:	fff68693          	add	a3,a3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82a7>
 d1c:	01045713          	srl	a4,s0,0x10
 d20:	00d47433          	and	s0,s0,a3
 d24:	01041413          	sll	s0,s0,0x10
 d28:	00d87833          	and	a6,a6,a3
 d2c:	00a70733          	add	a4,a4,a0
 d30:	01040433          	add	s0,s0,a6
 d34:	00e7e663          	bltu	a5,a4,d40 <__moddi3+0x4e0>
 d38:	00e79e63          	bne	a5,a4,d54 <__moddi3+0x4f4>
 d3c:	00897c63          	bgeu	s2,s0,d54 <__moddi3+0x4f4>
 d40:	41540ab3          	sub	s5,s0,s5
 d44:	015436b3          	sltu	a3,s0,s5
 d48:	017686b3          	add	a3,a3,s7
 d4c:	000a8413          	mv	s0,s5
 d50:	40d70733          	sub	a4,a4,a3
 d54:	40890433          	sub	s0,s2,s0
 d58:	00893933          	sltu	s2,s2,s0
 d5c:	40e785b3          	sub	a1,a5,a4
 d60:	412585b3          	sub	a1,a1,s2
 d64:	01459a33          	sll	s4,a1,s4
 d68:	01345433          	srl	s0,s0,s3
 d6c:	008a6533          	or	a0,s4,s0
 d70:	0135d5b3          	srl	a1,a1,s3
 d74:	c5dff06f          	j	9d0 <__moddi3+0x170>

00000d78 <__mulsi3>:
 d78:	00050613          	mv	a2,a0
 d7c:	00000513          	li	a0,0
 d80:	0015f693          	and	a3,a1,1
 d84:	00068463          	beqz	a3,d8c <__mulsi3+0x14>
 d88:	00c50533          	add	a0,a0,a2
 d8c:	0015d593          	srl	a1,a1,0x1
 d90:	00161613          	sll	a2,a2,0x1
 d94:	fe0596e3          	bnez	a1,d80 <__mulsi3+0x8>
 d98:	00008067          	ret

00000d9c <__divsi3>:
 d9c:	06054063          	bltz	a0,dfc <__umodsi3+0x10>
 da0:	0605c663          	bltz	a1,e0c <__umodsi3+0x20>

00000da4 <__hidden___udivsi3>:
 da4:	00058613          	mv	a2,a1
 da8:	00050593          	mv	a1,a0
 dac:	fff00513          	li	a0,-1
 db0:	02060c63          	beqz	a2,de8 <__hidden___udivsi3+0x44>
 db4:	00100693          	li	a3,1
 db8:	00b67a63          	bgeu	a2,a1,dcc <__hidden___udivsi3+0x28>
 dbc:	00c05863          	blez	a2,dcc <__hidden___udivsi3+0x28>
 dc0:	00161613          	sll	a2,a2,0x1
 dc4:	00169693          	sll	a3,a3,0x1
 dc8:	feb66ae3          	bltu	a2,a1,dbc <__hidden___udivsi3+0x18>
 dcc:	00000513          	li	a0,0
 dd0:	00c5e663          	bltu	a1,a2,ddc <__hidden___udivsi3+0x38>
 dd4:	40c585b3          	sub	a1,a1,a2
 dd8:	00d56533          	or	a0,a0,a3
 ddc:	0016d693          	srl	a3,a3,0x1
 de0:	00165613          	srl	a2,a2,0x1
 de4:	fe0696e3          	bnez	a3,dd0 <__hidden___udivsi3+0x2c>
 de8:	00008067          	ret

00000dec <__umodsi3>:
 dec:	00008293          	mv	t0,ra
 df0:	fb5ff0ef          	jal	da4 <__hidden___udivsi3>
 df4:	00058513          	mv	a0,a1
 df8:	00028067          	jr	t0
 dfc:	40a00533          	neg	a0,a0
 e00:	00b04863          	bgtz	a1,e10 <__umodsi3+0x24>
 e04:	40b005b3          	neg	a1,a1
 e08:	f9dff06f          	j	da4 <__hidden___udivsi3>
 e0c:	40b005b3          	neg	a1,a1
 e10:	00008293          	mv	t0,ra
 e14:	f91ff0ef          	jal	da4 <__hidden___udivsi3>
 e18:	40a00533          	neg	a0,a0
 e1c:	00028067          	jr	t0

00000e20 <__modsi3>:
 e20:	00008293          	mv	t0,ra
 e24:	0005ca63          	bltz	a1,e38 <__modsi3+0x18>
 e28:	00054c63          	bltz	a0,e40 <__modsi3+0x20>
 e2c:	f79ff0ef          	jal	da4 <__hidden___udivsi3>
 e30:	00058513          	mv	a0,a1
 e34:	00028067          	jr	t0
 e38:	40b005b3          	neg	a1,a1
 e3c:	fe0558e3          	bgez	a0,e2c <__modsi3+0xc>
 e40:	40a00533          	neg	a0,a0
 e44:	f61ff0ef          	jal	da4 <__hidden___udivsi3>
 e48:	40b00533          	neg	a0,a1
 e4c:	00028067          	jr	t0

Disassembly of section .spi_compute:

00003000 <_Z8cmd_echoPc-0x2000>:
	...

00005000 <_Z8cmd_echoPc>:
    5000:	fe010113          	add	sp,sp,-32
    5004:	00112e23          	sw	ra,28(sp)
    5008:	00812c23          	sw	s0,24(sp)
    500c:	02010413          	add	s0,sp,32
    5010:	fea42623          	sw	a0,-20(s0)
    5014:	fec42503          	lw	a0,-20(s0)
    5018:	4c4020ef          	jal	74dc <_Z10uart_printPKc>
    501c:	000307b7          	lui	a5,0x30
    5020:	08878513          	add	a0,a5,136 # 30088 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28330>
    5024:	4b8020ef          	jal	74dc <_Z10uart_printPKc>
    5028:	00000013          	nop
    502c:	01c12083          	lw	ra,28(sp)
    5030:	01812403          	lw	s0,24(sp)
    5034:	02010113          	add	sp,sp,32
    5038:	00008067          	ret

0000503c <_Z8cmd_helpPc>:
    503c:	fe010113          	add	sp,sp,-32
    5040:	00112e23          	sw	ra,28(sp)
    5044:	00812c23          	sw	s0,24(sp)
    5048:	02010413          	add	s0,sp,32
    504c:	fea42623          	sw	a0,-20(s0)
    5050:	000307b7          	lui	a5,0x30
    5054:	08c78513          	add	a0,a5,140 # 3008c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28334>
    5058:	484020ef          	jal	74dc <_Z10uart_printPKc>
    505c:	000307b7          	lui	a5,0x30
    5060:	0ac78513          	add	a0,a5,172 # 300ac <_Z17cmd_arg_tokenizerPcS_S_ii+0x28354>
    5064:	478020ef          	jal	74dc <_Z10uart_printPKc>
    5068:	000307b7          	lui	a5,0x30
    506c:	0bc78513          	add	a0,a5,188 # 300bc <_Z17cmd_arg_tokenizerPcS_S_ii+0x28364>
    5070:	46c020ef          	jal	74dc <_Z10uart_printPKc>
    5074:	000307b7          	lui	a5,0x30
    5078:	0cc78513          	add	a0,a5,204 # 300cc <_Z17cmd_arg_tokenizerPcS_S_ii+0x28374>
    507c:	460020ef          	jal	74dc <_Z10uart_printPKc>
    5080:	000307b7          	lui	a5,0x30
    5084:	0dc78513          	add	a0,a5,220 # 300dc <_Z17cmd_arg_tokenizerPcS_S_ii+0x28384>
    5088:	454020ef          	jal	74dc <_Z10uart_printPKc>
    508c:	000307b7          	lui	a5,0x30
    5090:	0ec78513          	add	a0,a5,236 # 300ec <_Z17cmd_arg_tokenizerPcS_S_ii+0x28394>
    5094:	448020ef          	jal	74dc <_Z10uart_printPKc>
    5098:	00000013          	nop
    509c:	01c12083          	lw	ra,28(sp)
    50a0:	01812403          	lw	s0,24(sp)
    50a4:	02010113          	add	sp,sp,32
    50a8:	00008067          	ret

000050ac <_Z8cmd_exitPcPVb>:
    50ac:	fe010113          	add	sp,sp,-32
    50b0:	00112e23          	sw	ra,28(sp)
    50b4:	00812c23          	sw	s0,24(sp)
    50b8:	02010413          	add	s0,sp,32
    50bc:	fea42623          	sw	a0,-20(s0)
    50c0:	feb42423          	sw	a1,-24(s0)
    50c4:	000307b7          	lui	a5,0x30
    50c8:	11078513          	add	a0,a5,272 # 30110 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283b8>
    50cc:	410020ef          	jal	74dc <_Z10uart_printPKc>
    50d0:	fe842783          	lw	a5,-24(s0)
    50d4:	00078023          	sb	zero,0(a5)
    50d8:	00000013          	nop
    50dc:	01c12083          	lw	ra,28(sp)
    50e0:	01812403          	lw	s0,24(sp)
    50e4:	02010113          	add	sp,sp,32
    50e8:	00008067          	ret

000050ec <_ZL6get_spv>:
    50ec:	fe010113          	add	sp,sp,-32
    50f0:	00812e23          	sw	s0,28(sp)
    50f4:	02010413          	add	s0,sp,32
    50f8:	00010793          	mv	a5,sp
    50fc:	fef42623          	sw	a5,-20(s0)
    5100:	fec42783          	lw	a5,-20(s0)
    5104:	00078513          	mv	a0,a5
    5108:	01c12403          	lw	s0,28(sp)
    510c:	02010113          	add	sp,sp,32
    5110:	00008067          	ret

00005114 <_Z8cmd_freev>:
    5114:	fe010113          	add	sp,sp,-32
    5118:	00112e23          	sw	ra,28(sp)
    511c:	00812c23          	sw	s0,24(sp)
    5120:	02010413          	add	s0,sp,32
    5124:	8e0fb0ef          	jal	204 <_Z14get_free_bytesv>
    5128:	fea42623          	sw	a0,-20(s0)
    512c:	fec42783          	lw	a5,-20(s0)
    5130:	00078513          	mv	a0,a5
    5134:	604020ef          	jal	7738 <_Z16uart_print_int32i>
    5138:	00000013          	nop
    513c:	000307b7          	lui	a5,0x30
    5140:	11c78513          	add	a0,a5,284 # 3011c <_Z17cmd_arg_tokenizerPcS_S_ii+0x283c4>
    5144:	398020ef          	jal	74dc <_Z10uart_printPKc>
    5148:	00000013          	nop
    514c:	01c12083          	lw	ra,28(sp)
    5150:	01812403          	lw	s0,24(sp)
    5154:	02010113          	add	sp,sp,32
    5158:	00008067          	ret

0000515c <_Z5_sbrki>:
    515c:	fd010113          	add	sp,sp,-48
    5160:	02112623          	sw	ra,44(sp)
    5164:	02812423          	sw	s0,40(sp)
    5168:	03010413          	add	s0,sp,48
    516c:	fca42e23          	sw	a0,-36(s0)
    5170:	000347b7          	lui	a5,0x34
    5174:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
    5178:	fef42623          	sw	a5,-20(s0)
    517c:	f71ff0ef          	jal	50ec <_ZL6get_spv>
    5180:	fea42423          	sw	a0,-24(s0)
    5184:	000347b7          	lui	a5,0x34
    5188:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    518c:	fdc42783          	lw	a5,-36(s0)
    5190:	00279793          	sll	a5,a5,0x2
    5194:	00f707b3          	add	a5,a4,a5
    5198:	00078713          	mv	a4,a5
    519c:	fe842783          	lw	a5,-24(s0)
    51a0:	00f76c63          	bltu	a4,a5,51b8 <_Z5_sbrki+0x5c>
    51a4:	000307b7          	lui	a5,0x30
    51a8:	12c78513          	add	a0,a5,300 # 3012c <_Z17cmd_arg_tokenizerPcS_S_ii+0x283d4>
    51ac:	330020ef          	jal	74dc <_Z10uart_printPKc>
    51b0:	fff00793          	li	a5,-1
    51b4:	0240006f          	j	51d8 <_Z5_sbrki+0x7c>
    51b8:	000347b7          	lui	a5,0x34
    51bc:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    51c0:	fdc42783          	lw	a5,-36(s0)
    51c4:	00279793          	sll	a5,a5,0x2
    51c8:	00f70733          	add	a4,a4,a5
    51cc:	000347b7          	lui	a5,0x34
    51d0:	00e7a023          	sw	a4,0(a5) # 34000 <_ZL8heap_end>
    51d4:	fec42783          	lw	a5,-20(s0)
    51d8:	00078513          	mv	a0,a5
    51dc:	02c12083          	lw	ra,44(sp)
    51e0:	02812403          	lw	s0,40(sp)
    51e4:	03010113          	add	sp,sp,48
    51e8:	00008067          	ret

000051ec <_Z7computev>:
    51ec:	fe010113          	add	sp,sp,-32
    51f0:	00112e23          	sw	ra,28(sp)
    51f4:	00812c23          	sw	s0,24(sp)
    51f8:	02010413          	add	s0,sp,32
    51fc:	fff00793          	li	a5,-1
    5200:	fef407a3          	sb	a5,-17(s0)
    5204:	00a00793          	li	a5,10
    5208:	fef42423          	sw	a5,-24(s0)
    520c:	fe842503          	lw	a0,-24(s0)
    5210:	04c000ef          	jal	525c <_Z19fibonacci_iterativei>
    5214:	00050793          	mv	a5,a0
    5218:	fef42223          	sw	a5,-28(s0)
    521c:	fe842503          	lw	a0,-24(s0)
    5220:	0e8000ef          	jal	5308 <_Z19fibonacci_recursivei>
    5224:	00050793          	mv	a5,a0
    5228:	fef42023          	sw	a5,-32(s0)
    522c:	fe442703          	lw	a4,-28(s0)
    5230:	fe042783          	lw	a5,-32(s0)
    5234:	00f71863          	bne	a4,a5,5244 <_Z7computev+0x58>
    5238:	00100793          	li	a5,1
    523c:	fef407a3          	sb	a5,-17(s0)
    5240:	0080006f          	j	5248 <_Z7computev+0x5c>
    5244:	fe0407a3          	sb	zero,-17(s0)
    5248:	00000013          	nop
    524c:	01c12083          	lw	ra,28(sp)
    5250:	01812403          	lw	s0,24(sp)
    5254:	02010113          	add	sp,sp,32
    5258:	00008067          	ret

0000525c <_Z19fibonacci_iterativei>:
    525c:	fd010113          	add	sp,sp,-48
    5260:	02812623          	sw	s0,44(sp)
    5264:	03010413          	add	s0,sp,48
    5268:	fca42e23          	sw	a0,-36(s0)
    526c:	fdc42703          	lw	a4,-36(s0)
    5270:	00100793          	li	a5,1
    5274:	00e7c663          	blt	a5,a4,5280 <_Z19fibonacci_iterativei+0x24>
    5278:	fdc42783          	lw	a5,-36(s0)
    527c:	07c0006f          	j	52f8 <_Z19fibonacci_iterativei+0x9c>
    5280:	fdc42703          	lw	a4,-36(s0)
    5284:	02e00793          	li	a5,46
    5288:	00e7c863          	blt	a5,a4,5298 <_Z19fibonacci_iterativei+0x3c>
    528c:	fdc42783          	lw	a5,-36(s0)
    5290:	0ff7f793          	zext.b	a5,a5
    5294:	0080006f          	j	529c <_Z19fibonacci_iterativei+0x40>
    5298:	02e00793          	li	a5,46
    529c:	fef40123          	sb	a5,-30(s0)
    52a0:	fe042623          	sw	zero,-20(s0)
    52a4:	fe042423          	sw	zero,-24(s0)
    52a8:	00100793          	li	a5,1
    52ac:	fef42223          	sw	a5,-28(s0)
    52b0:	00100793          	li	a5,1
    52b4:	fef401a3          	sb	a5,-29(s0)
    52b8:	0300006f          	j	52e8 <_Z19fibonacci_iterativei+0x8c>
    52bc:	fe842703          	lw	a4,-24(s0)
    52c0:	fe442783          	lw	a5,-28(s0)
    52c4:	00f707b3          	add	a5,a4,a5
    52c8:	fef42623          	sw	a5,-20(s0)
    52cc:	fe442783          	lw	a5,-28(s0)
    52d0:	fef42423          	sw	a5,-24(s0)
    52d4:	fec42783          	lw	a5,-20(s0)
    52d8:	fef42223          	sw	a5,-28(s0)
    52dc:	fe344783          	lbu	a5,-29(s0)
    52e0:	00178793          	add	a5,a5,1
    52e4:	fef401a3          	sb	a5,-29(s0)
    52e8:	fe344703          	lbu	a4,-29(s0)
    52ec:	fe244783          	lbu	a5,-30(s0)
    52f0:	fcf766e3          	bltu	a4,a5,52bc <_Z19fibonacci_iterativei+0x60>
    52f4:	fec42783          	lw	a5,-20(s0)
    52f8:	00078513          	mv	a0,a5
    52fc:	02c12403          	lw	s0,44(sp)
    5300:	03010113          	add	sp,sp,48
    5304:	00008067          	ret

00005308 <_Z19fibonacci_recursivei>:
    5308:	fe010113          	add	sp,sp,-32
    530c:	00112e23          	sw	ra,28(sp)
    5310:	00812c23          	sw	s0,24(sp)
    5314:	00912a23          	sw	s1,20(sp)
    5318:	02010413          	add	s0,sp,32
    531c:	fea42623          	sw	a0,-20(s0)
    5320:	fec42703          	lw	a4,-20(s0)
    5324:	00100793          	li	a5,1
    5328:	00e7c663          	blt	a5,a4,5334 <_Z19fibonacci_recursivei+0x2c>
    532c:	fec42783          	lw	a5,-20(s0)
    5330:	0300006f          	j	5360 <_Z19fibonacci_recursivei+0x58>
    5334:	fec42783          	lw	a5,-20(s0)
    5338:	fff78793          	add	a5,a5,-1
    533c:	00078513          	mv	a0,a5
    5340:	fc9ff0ef          	jal	5308 <_Z19fibonacci_recursivei>
    5344:	00050493          	mv	s1,a0
    5348:	fec42783          	lw	a5,-20(s0)
    534c:	ffe78793          	add	a5,a5,-2
    5350:	00078513          	mv	a0,a5
    5354:	fb5ff0ef          	jal	5308 <_Z19fibonacci_recursivei>
    5358:	00050793          	mv	a5,a0
    535c:	00f487b3          	add	a5,s1,a5
    5360:	00078513          	mv	a0,a5
    5364:	01c12083          	lw	ra,28(sp)
    5368:	01812403          	lw	s0,24(sp)
    536c:	01412483          	lw	s1,20(sp)
    5370:	02010113          	add	sp,sp,32
    5374:	00008067          	ret

Disassembly of section .spi_uart:

00005400 <_Z9uart_getcb-0x2000>:
	...

00007400 <_Z9uart_getcb>:
    7400:	fd010113          	add	sp,sp,-48
    7404:	02812623          	sw	s0,44(sp)
    7408:	03010413          	add	s0,sp,48
    740c:	00050793          	mv	a5,a0
    7410:	fcf40fa3          	sb	a5,-33(s0)
    7414:	fe0407a3          	sb	zero,-17(s0)
    7418:	002017b7          	lui	a5,0x201
    741c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    7420:	0007c783          	lbu	a5,0(a5)
    7424:	fef407a3          	sb	a5,-17(s0)
    7428:	0340006f          	j	745c <_Z9uart_getcb+0x5c>
    742c:	002017b7          	lui	a5,0x201
    7430:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    7434:	0007c783          	lbu	a5,0(a5)
    7438:	fef40723          	sb	a5,-18(s0)
    743c:	fee44783          	lbu	a5,-18(s0)
    7440:	0027f793          	and	a5,a5,2
    7444:	00078c63          	beqz	a5,745c <_Z9uart_getcb+0x5c>
    7448:	002017b7          	lui	a5,0x201
    744c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    7450:	0007c783          	lbu	a5,0(a5)
    7454:	fef407a3          	sb	a5,-17(s0)
    7458:	00c0006f          	j	7464 <_Z9uart_getcb+0x64>
    745c:	fdf44783          	lbu	a5,-33(s0)
    7460:	fc0796e3          	bnez	a5,742c <_Z9uart_getcb+0x2c>
    7464:	fef44783          	lbu	a5,-17(s0)
    7468:	00078513          	mv	a0,a5
    746c:	02c12403          	lw	s0,44(sp)
    7470:	03010113          	add	sp,sp,48
    7474:	00008067          	ret

00007478 <_Z9uart_putcc>:
    7478:	fd010113          	add	sp,sp,-48
    747c:	02812623          	sw	s0,44(sp)
    7480:	03010413          	add	s0,sp,48
    7484:	00050793          	mv	a5,a0
    7488:	fcf40fa3          	sb	a5,-33(s0)
    748c:	002017b7          	lui	a5,0x201
    7490:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    7494:	0007c783          	lbu	a5,0(a5)
    7498:	fef407a3          	sb	a5,-17(s0)
    749c:	002017b7          	lui	a5,0x201
    74a0:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    74a4:	0007c783          	lbu	a5,0(a5)
    74a8:	fef40723          	sb	a5,-18(s0)
    74ac:	fee44783          	lbu	a5,-18(s0)
    74b0:	0017f793          	and	a5,a5,1
    74b4:	fe0784e3          	beqz	a5,749c <_Z9uart_putcc+0x24>
    74b8:	002017b7          	lui	a5,0x201
    74bc:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    74c0:	fdf44703          	lbu	a4,-33(s0)
    74c4:	00e78023          	sb	a4,0(a5)
    74c8:	00000013          	nop
    74cc:	00000013          	nop
    74d0:	02c12403          	lw	s0,44(sp)
    74d4:	03010113          	add	sp,sp,48
    74d8:	00008067          	ret

000074dc <_Z10uart_printPKc>:
    74dc:	fd010113          	add	sp,sp,-48
    74e0:	02112623          	sw	ra,44(sp)
    74e4:	02812423          	sw	s0,40(sp)
    74e8:	03010413          	add	s0,sp,48
    74ec:	fca42e23          	sw	a0,-36(s0)
    74f0:	fe042623          	sw	zero,-20(s0)
    74f4:	0400006f          	j	7534 <_Z10uart_printPKc+0x58>
    74f8:	fec42783          	lw	a5,-20(s0)
    74fc:	fdc42703          	lw	a4,-36(s0)
    7500:	00f707b3          	add	a5,a4,a5
    7504:	0007c783          	lbu	a5,0(a5)
    7508:	02078e63          	beqz	a5,7544 <_Z10uart_printPKc+0x68>
    750c:	fec42783          	lw	a5,-20(s0)
    7510:	fdc42703          	lw	a4,-36(s0)
    7514:	00f707b3          	add	a5,a4,a5
    7518:	0007c783          	lbu	a5,0(a5)
    751c:	00078513          	mv	a0,a5
    7520:	f59ff0ef          	jal	7478 <_Z9uart_putcc>
    7524:	00000013          	nop
    7528:	fec42783          	lw	a5,-20(s0)
    752c:	00178793          	add	a5,a5,1
    7530:	fef42623          	sw	a5,-20(s0)
    7534:	fec42703          	lw	a4,-20(s0)
    7538:	07f00793          	li	a5,127
    753c:	fae7dee3          	bge	a5,a4,74f8 <_Z10uart_printPKc+0x1c>
    7540:	0080006f          	j	7548 <_Z10uart_printPKc+0x6c>
    7544:	00000013          	nop
    7548:	00000013          	nop
    754c:	02c12083          	lw	ra,44(sp)
    7550:	02812403          	lw	s0,40(sp)
    7554:	03010113          	add	sp,sp,48
    7558:	00008067          	ret

0000755c <_Z11dump_resultx>:
    755c:	fc010113          	add	sp,sp,-64
    7560:	02112e23          	sw	ra,60(sp)
    7564:	02812c23          	sw	s0,56(sp)
    7568:	04010413          	add	s0,sp,64
    756c:	fca42423          	sw	a0,-56(s0)
    7570:	fcb42623          	sw	a1,-52(s0)
    7574:	fe042623          	sw	zero,-20(s0)
    7578:	0700006f          	j	75e8 <_Z11dump_resultx+0x8c>
    757c:	fec42683          	lw	a3,-20(s0)
    7580:	00369693          	sll	a3,a3,0x3
    7584:	fe068613          	add	a2,a3,-32
    7588:	00064c63          	bltz	a2,75a0 <_Z11dump_resultx+0x44>
    758c:	fcc42683          	lw	a3,-52(s0)
    7590:	40c6d733          	sra	a4,a3,a2
    7594:	fcc42683          	lw	a3,-52(s0)
    7598:	41f6d793          	sra	a5,a3,0x1f
    759c:	02c0006f          	j	75c8 <_Z11dump_resultx+0x6c>
    75a0:	fcc42603          	lw	a2,-52(s0)
    75a4:	00161593          	sll	a1,a2,0x1
    75a8:	01f00613          	li	a2,31
    75ac:	40d60633          	sub	a2,a2,a3
    75b0:	00c59633          	sll	a2,a1,a2
    75b4:	fc842583          	lw	a1,-56(s0)
    75b8:	00d5d733          	srl	a4,a1,a3
    75bc:	00e66733          	or	a4,a2,a4
    75c0:	fcc42603          	lw	a2,-52(s0)
    75c4:	40d657b3          	sra	a5,a2,a3
    75c8:	0ff77613          	zext.b	a2,a4
    75cc:	fec42683          	lw	a3,-20(s0)
    75d0:	ff068693          	add	a3,a3,-16
    75d4:	008686b3          	add	a3,a3,s0
    75d8:	fec68423          	sb	a2,-24(a3)
    75dc:	fec42683          	lw	a3,-20(s0)
    75e0:	00168693          	add	a3,a3,1
    75e4:	fed42623          	sw	a3,-20(s0)
    75e8:	fec42603          	lw	a2,-20(s0)
    75ec:	00700693          	li	a3,7
    75f0:	f8c6d6e3          	bge	a3,a2,757c <_Z11dump_resultx+0x20>
    75f4:	00800793          	li	a5,8
    75f8:	fef42423          	sw	a5,-24(s0)
    75fc:	0100006f          	j	760c <_Z11dump_resultx+0xb0>
    7600:	fe842783          	lw	a5,-24(s0)
    7604:	fff78793          	add	a5,a5,-1
    7608:	fef42423          	sw	a5,-24(s0)
    760c:	fe842703          	lw	a4,-24(s0)
    7610:	00100793          	li	a5,1
    7614:	00e7de63          	bge	a5,a4,7630 <_Z11dump_resultx+0xd4>
    7618:	fe842783          	lw	a5,-24(s0)
    761c:	fff78793          	add	a5,a5,-1
    7620:	ff078793          	add	a5,a5,-16
    7624:	008787b3          	add	a5,a5,s0
    7628:	fe87c783          	lbu	a5,-24(a5)
    762c:	fc078ae3          	beqz	a5,7600 <_Z11dump_resultx+0xa4>
    7630:	04400513          	li	a0,68
    7634:	e45ff0ef          	jal	7478 <_Z9uart_putcc>
    7638:	fe842783          	lw	a5,-24(s0)
    763c:	0ff7f793          	zext.b	a5,a5
    7640:	00078513          	mv	a0,a5
    7644:	e35ff0ef          	jal	7478 <_Z9uart_putcc>
    7648:	fe042223          	sw	zero,-28(s0)
    764c:	02c0006f          	j	7678 <_Z11dump_resultx+0x11c>
    7650:	fe442783          	lw	a5,-28(s0)
    7654:	ff078793          	add	a5,a5,-16
    7658:	008787b3          	add	a5,a5,s0
    765c:	fe87c783          	lbu	a5,-24(a5)
    7660:	00078513          	mv	a0,a5
    7664:	e15ff0ef          	jal	7478 <_Z9uart_putcc>
    7668:	00000013          	nop
    766c:	fe442783          	lw	a5,-28(s0)
    7670:	00178793          	add	a5,a5,1
    7674:	fef42223          	sw	a5,-28(s0)
    7678:	fe442703          	lw	a4,-28(s0)
    767c:	fe842783          	lw	a5,-24(s0)
    7680:	fcf748e3          	blt	a4,a5,7650 <_Z11dump_resultx+0xf4>
    7684:	00000013          	nop
    7688:	00000013          	nop
    768c:	03c12083          	lw	ra,60(sp)
    7690:	03812403          	lw	s0,56(sp)
    7694:	04010113          	add	sp,sp,64
    7698:	00008067          	ret

0000769c <_Z11dump_bufferPKci>:
    769c:	fd010113          	add	sp,sp,-48
    76a0:	02112623          	sw	ra,44(sp)
    76a4:	02812423          	sw	s0,40(sp)
    76a8:	03212223          	sw	s2,36(sp)
    76ac:	03312023          	sw	s3,32(sp)
    76b0:	03010413          	add	s0,sp,48
    76b4:	fca42e23          	sw	a0,-36(s0)
    76b8:	fcb42c23          	sw	a1,-40(s0)
    76bc:	fdc42783          	lw	a5,-36(s0)
    76c0:	fef42623          	sw	a5,-20(s0)
    76c4:	fe042423          	sw	zero,-24(s0)
    76c8:	0440006f          	j	770c <_Z11dump_bufferPKci+0x70>
    76cc:	fec42783          	lw	a5,-20(s0)
    76d0:	0007c783          	lbu	a5,0(a5)
    76d4:	fef403a3          	sb	a5,-25(s0)
    76d8:	fe744783          	lbu	a5,-25(s0)
    76dc:	0ff7f793          	zext.b	a5,a5
    76e0:	00078913          	mv	s2,a5
    76e4:	00000993          	li	s3,0
    76e8:	00090513          	mv	a0,s2
    76ec:	00098593          	mv	a1,s3
    76f0:	e6dff0ef          	jal	755c <_Z11dump_resultx>
    76f4:	fec42783          	lw	a5,-20(s0)
    76f8:	00178793          	add	a5,a5,1
    76fc:	fef42623          	sw	a5,-20(s0)
    7700:	fe842783          	lw	a5,-24(s0)
    7704:	00178793          	add	a5,a5,1
    7708:	fef42423          	sw	a5,-24(s0)
    770c:	fe842703          	lw	a4,-24(s0)
    7710:	fd842783          	lw	a5,-40(s0)
    7714:	faf74ce3          	blt	a4,a5,76cc <_Z11dump_bufferPKci+0x30>
    7718:	00000013          	nop
    771c:	00000013          	nop
    7720:	02c12083          	lw	ra,44(sp)
    7724:	02812403          	lw	s0,40(sp)
    7728:	02412903          	lw	s2,36(sp)
    772c:	02012983          	lw	s3,32(sp)
    7730:	03010113          	add	sp,sp,48
    7734:	00008067          	ret

00007738 <_Z16uart_print_int32i>:
    7738:	fc010113          	add	sp,sp,-64
    773c:	02112e23          	sw	ra,60(sp)
    7740:	02812c23          	sw	s0,56(sp)
    7744:	04010413          	add	s0,sp,64
    7748:	fca42623          	sw	a0,-52(s0)
    774c:	fe042623          	sw	zero,-20(s0)
    7750:	fe0405a3          	sb	zero,-21(s0)
    7754:	fcc42783          	lw	a5,-52(s0)
    7758:	0007dc63          	bgez	a5,7770 <_Z16uart_print_int32i+0x38>
    775c:	00100793          	li	a5,1
    7760:	fef405a3          	sb	a5,-21(s0)
    7764:	fcc42783          	lw	a5,-52(s0)
    7768:	40f007b3          	neg	a5,a5
    776c:	fcf42623          	sw	a5,-52(s0)
    7770:	fcc42783          	lw	a5,-52(s0)
    7774:	06079463          	bnez	a5,77dc <_Z16uart_print_int32i+0xa4>
    7778:	03000513          	li	a0,48
    777c:	cfdff0ef          	jal	7478 <_Z9uart_putcc>
    7780:	0c00006f          	j	7840 <_Z16uart_print_int32i+0x108>
    7784:	fcc42783          	lw	a5,-52(s0)
    7788:	00a00593          	li	a1,10
    778c:	00078513          	mv	a0,a5
    7790:	e90f90ef          	jal	e20 <__modsi3>
    7794:	00050793          	mv	a5,a0
    7798:	fef42223          	sw	a5,-28(s0)
    779c:	fe442783          	lw	a5,-28(s0)
    77a0:	0ff7f793          	zext.b	a5,a5
    77a4:	03078793          	add	a5,a5,48
    77a8:	0ff7f713          	zext.b	a4,a5
    77ac:	fec42783          	lw	a5,-20(s0)
    77b0:	00178693          	add	a3,a5,1
    77b4:	fed42623          	sw	a3,-20(s0)
    77b8:	ff078793          	add	a5,a5,-16
    77bc:	008787b3          	add	a5,a5,s0
    77c0:	fee78423          	sb	a4,-24(a5)
    77c4:	fcc42783          	lw	a5,-52(s0)
    77c8:	00a00593          	li	a1,10
    77cc:	00078513          	mv	a0,a5
    77d0:	dccf90ef          	jal	d9c <__divsi3>
    77d4:	00050793          	mv	a5,a0
    77d8:	fcf42623          	sw	a5,-52(s0)
    77dc:	fcc42783          	lw	a5,-52(s0)
    77e0:	faf042e3          	bgtz	a5,7784 <_Z16uart_print_int32i+0x4c>
    77e4:	feb44783          	lbu	a5,-21(s0)
    77e8:	04078063          	beqz	a5,7828 <_Z16uart_print_int32i+0xf0>
    77ec:	fec42783          	lw	a5,-20(s0)
    77f0:	00178713          	add	a4,a5,1
    77f4:	fee42623          	sw	a4,-20(s0)
    77f8:	ff078793          	add	a5,a5,-16
    77fc:	008787b3          	add	a5,a5,s0
    7800:	02d00713          	li	a4,45
    7804:	fee78423          	sb	a4,-24(a5)
    7808:	0200006f          	j	7828 <_Z16uart_print_int32i+0xf0>
    780c:	fec42783          	lw	a5,-20(s0)
    7810:	ff078793          	add	a5,a5,-16
    7814:	008787b3          	add	a5,a5,s0
    7818:	fe87c783          	lbu	a5,-24(a5)
    781c:	00078513          	mv	a0,a5
    7820:	c59ff0ef          	jal	7478 <_Z9uart_putcc>
    7824:	00000013          	nop
    7828:	fec42783          	lw	a5,-20(s0)
    782c:	fff78713          	add	a4,a5,-1
    7830:	fee42623          	sw	a4,-20(s0)
    7834:	00f037b3          	snez	a5,a5
    7838:	0ff7f793          	zext.b	a5,a5
    783c:	fc0798e3          	bnez	a5,780c <_Z16uart_print_int32i+0xd4>
    7840:	03c12083          	lw	ra,60(sp)
    7844:	03812403          	lw	s0,56(sp)
    7848:	04010113          	add	sp,sp,64
    784c:	00008067          	ret

00007850 <_Z16uart_print_int64x>:
    7850:	fb010113          	add	sp,sp,-80
    7854:	04112623          	sw	ra,76(sp)
    7858:	04812423          	sw	s0,72(sp)
    785c:	05010413          	add	s0,sp,80
    7860:	faa42c23          	sw	a0,-72(s0)
    7864:	fab42e23          	sw	a1,-68(s0)
    7868:	fe042623          	sw	zero,-20(s0)
    786c:	fe0405a3          	sb	zero,-21(s0)
    7870:	fbc42783          	lw	a5,-68(s0)
    7874:	0207de63          	bgez	a5,78b0 <_Z16uart_print_int64x+0x60>
    7878:	00100793          	li	a5,1
    787c:	fef405a3          	sb	a5,-21(s0)
    7880:	00000613          	li	a2,0
    7884:	00000693          	li	a3,0
    7888:	fb842503          	lw	a0,-72(s0)
    788c:	fbc42583          	lw	a1,-68(s0)
    7890:	40a60733          	sub	a4,a2,a0
    7894:	00070813          	mv	a6,a4
    7898:	01063833          	sltu	a6,a2,a6
    789c:	40b687b3          	sub	a5,a3,a1
    78a0:	410786b3          	sub	a3,a5,a6
    78a4:	00068793          	mv	a5,a3
    78a8:	fae42c23          	sw	a4,-72(s0)
    78ac:	faf42e23          	sw	a5,-68(s0)
    78b0:	fb842783          	lw	a5,-72(s0)
    78b4:	fbc42703          	lw	a4,-68(s0)
    78b8:	00e7e7b3          	or	a5,a5,a4
    78bc:	08079663          	bnez	a5,7948 <_Z16uart_print_int64x+0xf8>
    78c0:	03000513          	li	a0,48
    78c4:	bb5ff0ef          	jal	7478 <_Z9uart_putcc>
    78c8:	0f40006f          	j	79bc <_Z16uart_print_int64x+0x16c>
    78cc:	fb842703          	lw	a4,-72(s0)
    78d0:	fbc42783          	lw	a5,-68(s0)
    78d4:	00a00613          	li	a2,10
    78d8:	00000693          	li	a3,0
    78dc:	00070513          	mv	a0,a4
    78e0:	00078593          	mv	a1,a5
    78e4:	f7df80ef          	jal	860 <__moddi3>
    78e8:	00050713          	mv	a4,a0
    78ec:	00058793          	mv	a5,a1
    78f0:	fee42223          	sw	a4,-28(s0)
    78f4:	fe442783          	lw	a5,-28(s0)
    78f8:	0ff7f793          	zext.b	a5,a5
    78fc:	03078793          	add	a5,a5,48
    7900:	0ff7f713          	zext.b	a4,a5
    7904:	fec42783          	lw	a5,-20(s0)
    7908:	00178693          	add	a3,a5,1
    790c:	fed42623          	sw	a3,-20(s0)
    7910:	ff078793          	add	a5,a5,-16
    7914:	008787b3          	add	a5,a5,s0
    7918:	fce78e23          	sb	a4,-36(a5)
    791c:	fb842703          	lw	a4,-72(s0)
    7920:	fbc42783          	lw	a5,-68(s0)
    7924:	00a00613          	li	a2,10
    7928:	00000693          	li	a3,0
    792c:	00070513          	mv	a0,a4
    7930:	00078593          	mv	a1,a5
    7934:	911f80ef          	jal	244 <__divdi3>
    7938:	00050713          	mv	a4,a0
    793c:	00058793          	mv	a5,a1
    7940:	fae42c23          	sw	a4,-72(s0)
    7944:	faf42e23          	sw	a5,-68(s0)
    7948:	fbc42783          	lw	a5,-68(s0)
    794c:	f8f040e3          	bgtz	a5,78cc <_Z16uart_print_int64x+0x7c>
    7950:	fbc42783          	lw	a5,-68(s0)
    7954:	00079663          	bnez	a5,7960 <_Z16uart_print_int64x+0x110>
    7958:	fb842783          	lw	a5,-72(s0)
    795c:	f60798e3          	bnez	a5,78cc <_Z16uart_print_int64x+0x7c>
    7960:	feb44783          	lbu	a5,-21(s0)
    7964:	04078063          	beqz	a5,79a4 <_Z16uart_print_int64x+0x154>
    7968:	fec42783          	lw	a5,-20(s0)
    796c:	00178713          	add	a4,a5,1
    7970:	fee42623          	sw	a4,-20(s0)
    7974:	ff078793          	add	a5,a5,-16
    7978:	008787b3          	add	a5,a5,s0
    797c:	02d00713          	li	a4,45
    7980:	fce78e23          	sb	a4,-36(a5)
    7984:	0200006f          	j	79a4 <_Z16uart_print_int64x+0x154>
    7988:	fec42783          	lw	a5,-20(s0)
    798c:	ff078793          	add	a5,a5,-16
    7990:	008787b3          	add	a5,a5,s0
    7994:	fdc7c783          	lbu	a5,-36(a5)
    7998:	00078513          	mv	a0,a5
    799c:	addff0ef          	jal	7478 <_Z9uart_putcc>
    79a0:	00000013          	nop
    79a4:	fec42783          	lw	a5,-20(s0)
    79a8:	fff78713          	add	a4,a5,-1
    79ac:	fee42623          	sw	a4,-20(s0)
    79b0:	00f037b3          	snez	a5,a5
    79b4:	0ff7f793          	zext.b	a5,a5
    79b8:	fc0798e3          	bnez	a5,7988 <_Z16uart_print_int64x+0x138>
    79bc:	04c12083          	lw	ra,76(sp)
    79c0:	04812403          	lw	s0,72(sp)
    79c4:	05010113          	add	sp,sp,80
    79c8:	00008067          	ret

000079cc <_Z12uart_getlinePci>:
    79cc:	fd010113          	add	sp,sp,-48
    79d0:	02112623          	sw	ra,44(sp)
    79d4:	02812423          	sw	s0,40(sp)
    79d8:	03010413          	add	s0,sp,48
    79dc:	fca42e23          	sw	a0,-36(s0)
    79e0:	fcb42c23          	sw	a1,-40(s0)
    79e4:	fe0405a3          	sb	zero,-21(s0)
    79e8:	fe042623          	sw	zero,-20(s0)
    79ec:	00100513          	li	a0,1
    79f0:	a11ff0ef          	jal	7400 <_Z9uart_getcb>
    79f4:	00050793          	mv	a5,a0
    79f8:	fef405a3          	sb	a5,-21(s0)
    79fc:	feb44703          	lbu	a4,-21(s0)
    7a00:	00a00793          	li	a5,10
    7a04:	00f70863          	beq	a4,a5,7a14 <_Z12uart_getlinePci+0x48>
    7a08:	feb44703          	lbu	a4,-21(s0)
    7a0c:	00d00793          	li	a5,13
    7a10:	02f71463          	bne	a4,a5,7a38 <_Z12uart_getlinePci+0x6c>
    7a14:	fec42783          	lw	a5,-20(s0)
    7a18:	fdc42703          	lw	a4,-36(s0)
    7a1c:	00f707b3          	add	a5,a4,a5
    7a20:	00078023          	sb	zero,0(a5)
    7a24:	000307b7          	lui	a5,0x30
    7a28:	13c78513          	add	a0,a5,316 # 3013c <_Z17cmd_arg_tokenizerPcS_S_ii+0x283e4>
    7a2c:	ab1ff0ef          	jal	74dc <_Z10uart_printPKc>
    7a30:	fe042623          	sw	zero,-20(s0)
    7a34:	0ac0006f          	j	7ae0 <_Z12uart_getlinePci+0x114>
    7a38:	feb44703          	lbu	a4,-21(s0)
    7a3c:	00800793          	li	a5,8
    7a40:	00f70863          	beq	a4,a5,7a50 <_Z12uart_getlinePci+0x84>
    7a44:	feb44703          	lbu	a4,-21(s0)
    7a48:	07f00793          	li	a5,127
    7a4c:	02f71263          	bne	a4,a5,7a70 <_Z12uart_getlinePci+0xa4>
    7a50:	fec42783          	lw	a5,-20(s0)
    7a54:	00f05a63          	blez	a5,7a68 <_Z12uart_getlinePci+0x9c>
    7a58:	fec42783          	lw	a5,-20(s0)
    7a5c:	fff78793          	add	a5,a5,-1
    7a60:	fef42623          	sw	a5,-20(s0)
    7a64:	0780006f          	j	7adc <_Z12uart_getlinePci+0x110>
    7a68:	fe042623          	sw	zero,-20(s0)
    7a6c:	0700006f          	j	7adc <_Z12uart_getlinePci+0x110>
    7a70:	fd842783          	lw	a5,-40(s0)
    7a74:	fff78793          	add	a5,a5,-1
    7a78:	fec42703          	lw	a4,-20(s0)
    7a7c:	f6f758e3          	bge	a4,a5,79ec <_Z12uart_getlinePci+0x20>
    7a80:	feb44783          	lbu	a5,-21(s0)
    7a84:	02078263          	beqz	a5,7aa8 <_Z12uart_getlinePci+0xdc>
    7a88:	feb44703          	lbu	a4,-21(s0)
    7a8c:	fdc42683          	lw	a3,-36(s0)
    7a90:	fec42783          	lw	a5,-20(s0)
    7a94:	00178613          	add	a2,a5,1
    7a98:	fec42623          	sw	a2,-20(s0)
    7a9c:	00f687b3          	add	a5,a3,a5
    7aa0:	00e78023          	sb	a4,0(a5)
    7aa4:	f49ff06f          	j	79ec <_Z12uart_getlinePci+0x20>
    7aa8:	fd842783          	lw	a5,-40(s0)
    7aac:	fff78793          	add	a5,a5,-1
    7ab0:	fdc42703          	lw	a4,-36(s0)
    7ab4:	00f707b3          	add	a5,a4,a5
    7ab8:	00078023          	sb	zero,0(a5)
    7abc:	000307b7          	lui	a5,0x30
    7ac0:	14478513          	add	a0,a5,324 # 30144 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283ec>
    7ac4:	a19ff0ef          	jal	74dc <_Z10uart_printPKc>
    7ac8:	fd842583          	lw	a1,-40(s0)
    7acc:	fdc42503          	lw	a0,-36(s0)
    7ad0:	bcdff0ef          	jal	769c <_Z11dump_bufferPKci>
    7ad4:	fe042623          	sw	zero,-20(s0)
    7ad8:	0080006f          	j	7ae0 <_Z12uart_getlinePci+0x114>
    7adc:	f11ff06f          	j	79ec <_Z12uart_getlinePci+0x20>
    7ae0:	00000013          	nop
    7ae4:	02c12083          	lw	ra,44(sp)
    7ae8:	02812403          	lw	s0,40(sp)
    7aec:	03010113          	add	sp,sp,48
    7af0:	00008067          	ret

00007af4 <_Z6strcmpPKcS0_>:
    7af4:	fd010113          	add	sp,sp,-48
    7af8:	02812623          	sw	s0,44(sp)
    7afc:	03010413          	add	s0,sp,48
    7b00:	fca42e23          	sw	a0,-36(s0)
    7b04:	fcb42c23          	sw	a1,-40(s0)
    7b08:	fe042623          	sw	zero,-20(s0)
    7b0c:	fec42783          	lw	a5,-20(s0)
    7b10:	fdc42703          	lw	a4,-36(s0)
    7b14:	00f707b3          	add	a5,a4,a5
    7b18:	0007c703          	lbu	a4,0(a5)
    7b1c:	fec42783          	lw	a5,-20(s0)
    7b20:	fd842683          	lw	a3,-40(s0)
    7b24:	00f687b3          	add	a5,a3,a5
    7b28:	0007c783          	lbu	a5,0(a5)
    7b2c:	02f70863          	beq	a4,a5,7b5c <_Z6strcmpPKcS0_+0x68>
    7b30:	fec42783          	lw	a5,-20(s0)
    7b34:	fdc42703          	lw	a4,-36(s0)
    7b38:	00f707b3          	add	a5,a4,a5
    7b3c:	0007c783          	lbu	a5,0(a5)
    7b40:	00078693          	mv	a3,a5
    7b44:	fec42783          	lw	a5,-20(s0)
    7b48:	fd842703          	lw	a4,-40(s0)
    7b4c:	00f707b3          	add	a5,a4,a5
    7b50:	0007c783          	lbu	a5,0(a5)
    7b54:	40f687b3          	sub	a5,a3,a5
    7b58:	0300006f          	j	7b88 <_Z6strcmpPKcS0_+0x94>
    7b5c:	fec42783          	lw	a5,-20(s0)
    7b60:	fdc42703          	lw	a4,-36(s0)
    7b64:	00f707b3          	add	a5,a4,a5
    7b68:	0007c783          	lbu	a5,0(a5)
    7b6c:	00079663          	bnez	a5,7b78 <_Z6strcmpPKcS0_+0x84>
    7b70:	00000793          	li	a5,0
    7b74:	0140006f          	j	7b88 <_Z6strcmpPKcS0_+0x94>
    7b78:	fec42783          	lw	a5,-20(s0)
    7b7c:	00178793          	add	a5,a5,1
    7b80:	fef42623          	sw	a5,-20(s0)
    7b84:	f89ff06f          	j	7b0c <_Z6strcmpPKcS0_+0x18>
    7b88:	00078513          	mv	a0,a5
    7b8c:	02c12403          	lw	s0,44(sp)
    7b90:	03010113          	add	sp,sp,48
    7b94:	00008067          	ret

00007b98 <_Z7strncmpPKcS0_i>:
    7b98:	fd010113          	add	sp,sp,-48
    7b9c:	02812623          	sw	s0,44(sp)
    7ba0:	03010413          	add	s0,sp,48
    7ba4:	fca42e23          	sw	a0,-36(s0)
    7ba8:	fcb42c23          	sw	a1,-40(s0)
    7bac:	fcc42a23          	sw	a2,-44(s0)
    7bb0:	fe042623          	sw	zero,-20(s0)
    7bb4:	07c0006f          	j	7c30 <_Z7strncmpPKcS0_i+0x98>
    7bb8:	fec42783          	lw	a5,-20(s0)
    7bbc:	fdc42703          	lw	a4,-36(s0)
    7bc0:	00f707b3          	add	a5,a4,a5
    7bc4:	0007c703          	lbu	a4,0(a5)
    7bc8:	fec42783          	lw	a5,-20(s0)
    7bcc:	fd842683          	lw	a3,-40(s0)
    7bd0:	00f687b3          	add	a5,a3,a5
    7bd4:	0007c783          	lbu	a5,0(a5)
    7bd8:	02f70863          	beq	a4,a5,7c08 <_Z7strncmpPKcS0_i+0x70>
    7bdc:	fec42783          	lw	a5,-20(s0)
    7be0:	fdc42703          	lw	a4,-36(s0)
    7be4:	00f707b3          	add	a5,a4,a5
    7be8:	0007c783          	lbu	a5,0(a5)
    7bec:	00078693          	mv	a3,a5
    7bf0:	fec42783          	lw	a5,-20(s0)
    7bf4:	fd842703          	lw	a4,-40(s0)
    7bf8:	00f707b3          	add	a5,a4,a5
    7bfc:	0007c783          	lbu	a5,0(a5)
    7c00:	40f687b3          	sub	a5,a3,a5
    7c04:	03c0006f          	j	7c40 <_Z7strncmpPKcS0_i+0xa8>
    7c08:	fec42783          	lw	a5,-20(s0)
    7c0c:	fdc42703          	lw	a4,-36(s0)
    7c10:	00f707b3          	add	a5,a4,a5
    7c14:	0007c783          	lbu	a5,0(a5)
    7c18:	00079663          	bnez	a5,7c24 <_Z7strncmpPKcS0_i+0x8c>
    7c1c:	00000793          	li	a5,0
    7c20:	0200006f          	j	7c40 <_Z7strncmpPKcS0_i+0xa8>
    7c24:	fec42783          	lw	a5,-20(s0)
    7c28:	00178793          	add	a5,a5,1
    7c2c:	fef42623          	sw	a5,-20(s0)
    7c30:	fec42703          	lw	a4,-20(s0)
    7c34:	fd442783          	lw	a5,-44(s0)
    7c38:	f8f740e3          	blt	a4,a5,7bb8 <_Z7strncmpPKcS0_i+0x20>
    7c3c:	00000793          	li	a5,0
    7c40:	00078513          	mv	a0,a5
    7c44:	02c12403          	lw	s0,44(sp)
    7c48:	03010113          	add	sp,sp,48
    7c4c:	00008067          	ret

00007c50 <_Z15process_commandPcS_PVb>:
    7c50:	fe010113          	add	sp,sp,-32
    7c54:	00112e23          	sw	ra,28(sp)
    7c58:	00812c23          	sw	s0,24(sp)
    7c5c:	02010413          	add	s0,sp,32
    7c60:	fea42623          	sw	a0,-20(s0)
    7c64:	feb42423          	sw	a1,-24(s0)
    7c68:	fec42223          	sw	a2,-28(s0)
    7c6c:	fec42783          	lw	a5,-20(s0)
    7c70:	0007c783          	lbu	a5,0(a5)
    7c74:	0c078863          	beqz	a5,7d44 <_Z15process_commandPcS_PVb+0xf4>
    7c78:	000307b7          	lui	a5,0x30
    7c7c:	15878593          	add	a1,a5,344 # 30158 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28400>
    7c80:	fec42503          	lw	a0,-20(s0)
    7c84:	e71ff0ef          	jal	7af4 <_Z6strcmpPKcS0_>
    7c88:	00050793          	mv	a5,a0
    7c8c:	0017b793          	seqz	a5,a5
    7c90:	0ff7f793          	zext.b	a5,a5
    7c94:	00078863          	beqz	a5,7ca4 <_Z15process_commandPcS_PVb+0x54>
    7c98:	fe842503          	lw	a0,-24(s0)
    7c9c:	b64fd0ef          	jal	5000 <_Z8cmd_echoPc>
    7ca0:	0a80006f          	j	7d48 <_Z15process_commandPcS_PVb+0xf8>
    7ca4:	000307b7          	lui	a5,0x30
    7ca8:	16078593          	add	a1,a5,352 # 30160 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28408>
    7cac:	fec42503          	lw	a0,-20(s0)
    7cb0:	e45ff0ef          	jal	7af4 <_Z6strcmpPKcS0_>
    7cb4:	00050793          	mv	a5,a0
    7cb8:	0017b793          	seqz	a5,a5
    7cbc:	0ff7f793          	zext.b	a5,a5
    7cc0:	00078863          	beqz	a5,7cd0 <_Z15process_commandPcS_PVb+0x80>
    7cc4:	fe842503          	lw	a0,-24(s0)
    7cc8:	b74fd0ef          	jal	503c <_Z8cmd_helpPc>
    7ccc:	07c0006f          	j	7d48 <_Z15process_commandPcS_PVb+0xf8>
    7cd0:	000307b7          	lui	a5,0x30
    7cd4:	16878593          	add	a1,a5,360 # 30168 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28410>
    7cd8:	fec42503          	lw	a0,-20(s0)
    7cdc:	e19ff0ef          	jal	7af4 <_Z6strcmpPKcS0_>
    7ce0:	00050793          	mv	a5,a0
    7ce4:	0017b793          	seqz	a5,a5
    7ce8:	0ff7f793          	zext.b	a5,a5
    7cec:	00078663          	beqz	a5,7cf8 <_Z15process_commandPcS_PVb+0xa8>
    7cf0:	c24fd0ef          	jal	5114 <_Z8cmd_freev>
    7cf4:	0540006f          	j	7d48 <_Z15process_commandPcS_PVb+0xf8>
    7cf8:	000307b7          	lui	a5,0x30
    7cfc:	17078593          	add	a1,a5,368 # 30170 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28418>
    7d00:	fec42503          	lw	a0,-20(s0)
    7d04:	df1ff0ef          	jal	7af4 <_Z6strcmpPKcS0_>
    7d08:	00050793          	mv	a5,a0
    7d0c:	0017b793          	seqz	a5,a5
    7d10:	0ff7f793          	zext.b	a5,a5
    7d14:	00078a63          	beqz	a5,7d28 <_Z15process_commandPcS_PVb+0xd8>
    7d18:	fe442583          	lw	a1,-28(s0)
    7d1c:	fe842503          	lw	a0,-24(s0)
    7d20:	b8cfd0ef          	jal	50ac <_Z8cmd_exitPcPVb>
    7d24:	0240006f          	j	7d48 <_Z15process_commandPcS_PVb+0xf8>
    7d28:	000307b7          	lui	a5,0x30
    7d2c:	17878513          	add	a0,a5,376 # 30178 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28420>
    7d30:	facff0ef          	jal	74dc <_Z10uart_printPKc>
    7d34:	000307b7          	lui	a5,0x30
    7d38:	17c78513          	add	a0,a5,380 # 3017c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28424>
    7d3c:	fa0ff0ef          	jal	74dc <_Z10uart_printPKc>
    7d40:	0080006f          	j	7d48 <_Z15process_commandPcS_PVb+0xf8>
    7d44:	00000013          	nop
    7d48:	01c12083          	lw	ra,28(sp)
    7d4c:	01812403          	lw	s0,24(sp)
    7d50:	02010113          	add	sp,sp,32
    7d54:	00008067          	ret

00007d58 <_Z17cmd_arg_tokenizerPcS_S_ii>:
    7d58:	fc010113          	add	sp,sp,-64
    7d5c:	02812e23          	sw	s0,60(sp)
    7d60:	04010413          	add	s0,sp,64
    7d64:	fca42e23          	sw	a0,-36(s0)
    7d68:	fcb42c23          	sw	a1,-40(s0)
    7d6c:	fcc42a23          	sw	a2,-44(s0)
    7d70:	fcd42823          	sw	a3,-48(s0)
    7d74:	fce42623          	sw	a4,-52(s0)
    7d78:	fe042623          	sw	zero,-20(s0)
    7d7c:	fe042423          	sw	zero,-24(s0)
    7d80:	02c0006f          	j	7dac <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    7d84:	fdc42783          	lw	a5,-36(s0)
    7d88:	00178713          	add	a4,a5,1
    7d8c:	fce42e23          	sw	a4,-36(s0)
    7d90:	0007c703          	lbu	a4,0(a5)
    7d94:	fd842683          	lw	a3,-40(s0)
    7d98:	fec42783          	lw	a5,-20(s0)
    7d9c:	00178613          	add	a2,a5,1
    7da0:	fec42623          	sw	a2,-20(s0)
    7da4:	00f687b3          	add	a5,a3,a5
    7da8:	00e78023          	sb	a4,0(a5)
    7dac:	fdc42783          	lw	a5,-36(s0)
    7db0:	0007c783          	lbu	a5,0(a5)
    7db4:	02078263          	beqz	a5,7dd8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    7db8:	fdc42783          	lw	a5,-36(s0)
    7dbc:	0007c703          	lbu	a4,0(a5)
    7dc0:	02000793          	li	a5,32
    7dc4:	00f70a63          	beq	a4,a5,7dd8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    7dc8:	fd042783          	lw	a5,-48(s0)
    7dcc:	fff78793          	add	a5,a5,-1
    7dd0:	fec42703          	lw	a4,-20(s0)
    7dd4:	faf748e3          	blt	a4,a5,7d84 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    7dd8:	fec42783          	lw	a5,-20(s0)
    7ddc:	fd842703          	lw	a4,-40(s0)
    7de0:	00f707b3          	add	a5,a4,a5
    7de4:	00078023          	sb	zero,0(a5)
    7de8:	0100006f          	j	7df8 <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    7dec:	fdc42783          	lw	a5,-36(s0)
    7df0:	00178793          	add	a5,a5,1
    7df4:	fcf42e23          	sw	a5,-36(s0)
    7df8:	fdc42783          	lw	a5,-36(s0)
    7dfc:	0007c703          	lbu	a4,0(a5)
    7e00:	02000793          	li	a5,32
    7e04:	fef704e3          	beq	a4,a5,7dec <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    7e08:	02c0006f          	j	7e34 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    7e0c:	fdc42783          	lw	a5,-36(s0)
    7e10:	00178713          	add	a4,a5,1
    7e14:	fce42e23          	sw	a4,-36(s0)
    7e18:	0007c703          	lbu	a4,0(a5)
    7e1c:	fd442683          	lw	a3,-44(s0)
    7e20:	fe842783          	lw	a5,-24(s0)
    7e24:	00178613          	add	a2,a5,1
    7e28:	fec42423          	sw	a2,-24(s0)
    7e2c:	00f687b3          	add	a5,a3,a5
    7e30:	00e78023          	sb	a4,0(a5)
    7e34:	fdc42783          	lw	a5,-36(s0)
    7e38:	0007c783          	lbu	a5,0(a5)
    7e3c:	00078a63          	beqz	a5,7e50 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    7e40:	fcc42783          	lw	a5,-52(s0)
    7e44:	fff78793          	add	a5,a5,-1
    7e48:	fe842703          	lw	a4,-24(s0)
    7e4c:	fcf740e3          	blt	a4,a5,7e0c <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    7e50:	fe842783          	lw	a5,-24(s0)
    7e54:	fd442703          	lw	a4,-44(s0)
    7e58:	00f707b3          	add	a5,a4,a5
    7e5c:	00078023          	sb	zero,0(a5)
    7e60:	00000013          	nop
    7e64:	03c12403          	lw	s0,60(sp)
    7e68:	04010113          	add	sp,sp,64
    7e6c:	00008067          	ret
