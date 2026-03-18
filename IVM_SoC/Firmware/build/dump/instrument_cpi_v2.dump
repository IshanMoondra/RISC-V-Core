
/out/instrument_cpi_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	0003e197          	auipc	gp,0x3e
      10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
      14:	00000013          	nop
      18:	0e0000ef          	jal	f8 <_Z10soc_bootupv>
      1c:	525000ef          	jal	d40 <main>
      20:	00050793          	mv	a5,a0
      24:	00078a13          	mv	s4,a5
      28:	41f7d793          	sra	a5,a5,0x1f
      2c:	00078a93          	mv	s5,a5
      30:	000a0513          	mv	a0,s4
      34:	000a8593          	mv	a1,s5
      38:	0b9070ef          	jal	78f0 <_Z11dump_resultx>
      3c:	002017b7          	lui	a5,0x201
      40:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
      44:	0007a783          	lw	a5,0(a5)
      48:	00078913          	mv	s2,a5
      4c:	41f7d793          	sra	a5,a5,0x1f
      50:	00078993          	mv	s3,a5
      54:	00090513          	mv	a0,s2
      58:	00098593          	mv	a1,s3
      5c:	095070ef          	jal	78f0 <_Z11dump_resultx>
      60:	ffffffff          	.word	0xffffffff
      64:	00000013          	nop

00000068 <_Z7add_ptrPViS0_S0_>:
      68:	fe010113          	add	sp,sp,-32
      6c:	00812e23          	sw	s0,28(sp)
      70:	02010413          	add	s0,sp,32
      74:	fea42623          	sw	a0,-20(s0)
      78:	feb42423          	sw	a1,-24(s0)
      7c:	fec42223          	sw	a2,-28(s0)
      80:	fec42783          	lw	a5,-20(s0)
      84:	0007a703          	lw	a4,0(a5)
      88:	fe842783          	lw	a5,-24(s0)
      8c:	0007a783          	lw	a5,0(a5)
      90:	00f70733          	add	a4,a4,a5
      94:	fe442783          	lw	a5,-28(s0)
      98:	00e7a023          	sw	a4,0(a5)
      9c:	00000793          	li	a5,0
      a0:	00078513          	mv	a0,a5
      a4:	01c12403          	lw	s0,28(sp)
      a8:	02010113          	add	sp,sp,32
      ac:	00008067          	ret

000000b0 <_Z7sub_ptrPViS0_S0_>:
      b0:	fe010113          	add	sp,sp,-32
      b4:	00812e23          	sw	s0,28(sp)
      b8:	02010413          	add	s0,sp,32
      bc:	fea42623          	sw	a0,-20(s0)
      c0:	feb42423          	sw	a1,-24(s0)
      c4:	fec42223          	sw	a2,-28(s0)
      c8:	fec42783          	lw	a5,-20(s0)
      cc:	0007a703          	lw	a4,0(a5)
      d0:	fe842783          	lw	a5,-24(s0)
      d4:	0007a783          	lw	a5,0(a5)
      d8:	40f70733          	sub	a4,a4,a5
      dc:	fe442783          	lw	a5,-28(s0)
      e0:	00e7a023          	sw	a4,0(a5)
      e4:	00000793          	li	a5,0
      e8:	00078513          	mv	a0,a5
      ec:	01c12403          	lw	s0,28(sp)
      f0:	02010113          	add	sp,sp,32
      f4:	00008067          	ret

000000f8 <_Z10soc_bootupv>:
      f8:	fd010113          	add	sp,sp,-48
      fc:	02112623          	sw	ra,44(sp)
     100:	02812423          	sw	s0,40(sp)
     104:	03212223          	sw	s2,36(sp)
     108:	03312023          	sw	s3,32(sp)
     10c:	01412e23          	sw	s4,28(sp)
     110:	01512c23          	sw	s5,24(sp)
     114:	03010413          	add	s0,sp,48
     118:	fc042c23          	sw	zero,-40(s0)
     11c:	010007b7          	lui	a5,0x1000
     120:	fcf42a23          	sw	a5,-44(s0)
     124:	002017b7          	lui	a5,0x201
     128:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
     12c:	fd842703          	lw	a4,-40(s0)
     130:	00e7a023          	sw	a4,0(a5)
     134:	002017b7          	lui	a5,0x201
     138:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
     13c:	fd442703          	lw	a4,-44(s0)
     140:	00e7a023          	sw	a4,0(a5)
     144:	03200793          	li	a5,50
     148:	fcf42e23          	sw	a5,-36(s0)
     14c:	002017b7          	lui	a5,0x201
     150:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
     154:	fdc42703          	lw	a4,-36(s0)
     158:	00e7a023          	sw	a4,0(a5)
     15c:	0003d7b7          	lui	a5,0x3d
     160:	00078513          	mv	a0,a5
     164:	70c070ef          	jal	7870 <_Z10uart_printPKc>
     168:	002017b7          	lui	a5,0x201
     16c:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
     170:	0007a783          	lw	a5,0(a5)
     174:	00078a13          	mv	s4,a5
     178:	41f7d793          	sra	a5,a5,0x1f
     17c:	00078a93          	mv	s5,a5
     180:	000a0513          	mv	a0,s4
     184:	000a8593          	mv	a1,s5
     188:	768070ef          	jal	78f0 <_Z11dump_resultx>
     18c:	002017b7          	lui	a5,0x201
     190:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
     194:	0007a783          	lw	a5,0(a5)
     198:	00078913          	mv	s2,a5
     19c:	41f7d793          	sra	a5,a5,0x1f
     1a0:	00078993          	mv	s3,a5
     1a4:	00090513          	mv	a0,s2
     1a8:	00098593          	mv	a1,s3
     1ac:	744070ef          	jal	78f0 <_Z11dump_resultx>
     1b0:	0003d7b7          	lui	a5,0x3d
     1b4:	00c78513          	add	a0,a5,12 # 3d00c <_Z12print_matrixPA3_Ki+0x355dc>
     1b8:	6b8070ef          	jal	7870 <_Z10uart_printPKc>
     1bc:	00000013          	nop
     1c0:	02c12083          	lw	ra,44(sp)
     1c4:	02812403          	lw	s0,40(sp)
     1c8:	02412903          	lw	s2,36(sp)
     1cc:	02012983          	lw	s3,32(sp)
     1d0:	01c12a03          	lw	s4,28(sp)
     1d4:	01812a83          	lw	s5,24(sp)
     1d8:	03010113          	add	sp,sp,48
     1dc:	00008067          	ret

000001e0 <_ZZ4mainENKUlvE_clEv>:
     1e0:	fe010113          	add	sp,sp,-32
     1e4:	00112e23          	sw	ra,28(sp)
     1e8:	00812c23          	sw	s0,24(sp)
     1ec:	02010413          	add	s0,sp,32
     1f0:	fea42623          	sw	a0,-20(s0)
     1f4:	fec42783          	lw	a5,-20(s0)
     1f8:	0007a783          	lw	a5,0(a5)
     1fc:	0007a783          	lw	a5,0(a5)
     200:	00078513          	mv	a0,a5
     204:	1fc050ef          	jal	5400 <_Z8fib_iteri>
     208:	00050713          	mv	a4,a0
     20c:	00058793          	mv	a5,a1
     210:	00070513          	mv	a0,a4
     214:	00078593          	mv	a1,a5
     218:	01c12083          	lw	ra,28(sp)
     21c:	01812403          	lw	s0,24(sp)
     220:	02010113          	add	sp,sp,32
     224:	00008067          	ret

00000228 <_Z14instrument_cpiIZ4mainEUlvE_EDaOT_>:
     228:	fb010113          	add	sp,sp,-80
     22c:	04112623          	sw	ra,76(sp)
     230:	04812423          	sw	s0,72(sp)
     234:	05212223          	sw	s2,68(sp)
     238:	05312023          	sw	s3,64(sp)
     23c:	03412e23          	sw	s4,60(sp)
     240:	03512c23          	sw	s5,56(sp)
     244:	05010413          	add	s0,sp,80
     248:	faa42e23          	sw	a0,-68(s0)
     24c:	002017b7          	lui	a5,0x201
     250:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     254:	0007a783          	lw	a5,0(a5)
     258:	fcf42e23          	sw	a5,-36(s0)
     25c:	002017b7          	lui	a5,0x201
     260:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     264:	0007a783          	lw	a5,0(a5)
     268:	fcf42c23          	sw	a5,-40(s0)
     26c:	fbc42503          	lw	a0,-68(s0)
     270:	f71ff0ef          	jal	1e0 <_ZZ4mainENKUlvE_clEv>
     274:	fca42823          	sw	a0,-48(s0)
     278:	fcb42a23          	sw	a1,-44(s0)
     27c:	00000013          	nop
     280:	002017b7          	lui	a5,0x201
     284:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     288:	0007a783          	lw	a5,0(a5)
     28c:	fcf42623          	sw	a5,-52(s0)
     290:	002017b7          	lui	a5,0x201
     294:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     298:	0007a783          	lw	a5,0(a5)
     29c:	fcf42423          	sw	a5,-56(s0)
     2a0:	fc842703          	lw	a4,-56(s0)
     2a4:	fdc42783          	lw	a5,-36(s0)
     2a8:	40f707b3          	sub	a5,a4,a5
     2ac:	fcf42223          	sw	a5,-60(s0)
     2b0:	fcc42703          	lw	a4,-52(s0)
     2b4:	fd842783          	lw	a5,-40(s0)
     2b8:	40f707b3          	sub	a5,a4,a5
     2bc:	fcf42023          	sw	a5,-64(s0)
     2c0:	05900513          	li	a0,89
     2c4:	53c070ef          	jal	7800 <_Z9uart_putcc>
     2c8:	00000013          	nop
     2cc:	fc442783          	lw	a5,-60(s0)
     2d0:	00078a13          	mv	s4,a5
     2d4:	41f7d793          	sra	a5,a5,0x1f
     2d8:	00078a93          	mv	s5,a5
     2dc:	000a0513          	mv	a0,s4
     2e0:	000a8593          	mv	a1,s5
     2e4:	60c070ef          	jal	78f0 <_Z11dump_resultx>
     2e8:	00000013          	nop
     2ec:	05200513          	li	a0,82
     2f0:	510070ef          	jal	7800 <_Z9uart_putcc>
     2f4:	00000013          	nop
     2f8:	fc042783          	lw	a5,-64(s0)
     2fc:	00078913          	mv	s2,a5
     300:	41f7d793          	sra	a5,a5,0x1f
     304:	00078993          	mv	s3,a5
     308:	00090513          	mv	a0,s2
     30c:	00098593          	mv	a1,s3
     310:	5e0070ef          	jal	78f0 <_Z11dump_resultx>
     314:	00000013          	nop
     318:	fd042703          	lw	a4,-48(s0)
     31c:	fd442783          	lw	a5,-44(s0)
     320:	00070513          	mv	a0,a4
     324:	00078593          	mv	a1,a5
     328:	04c12083          	lw	ra,76(sp)
     32c:	04812403          	lw	s0,72(sp)
     330:	04412903          	lw	s2,68(sp)
     334:	04012983          	lw	s3,64(sp)
     338:	03c12a03          	lw	s4,60(sp)
     33c:	03812a83          	lw	s5,56(sp)
     340:	05010113          	add	sp,sp,80
     344:	00008067          	ret

00000348 <_ZZ4mainENKUlvE0_clEv>:
     348:	fe010113          	add	sp,sp,-32
     34c:	00112e23          	sw	ra,28(sp)
     350:	00812c23          	sw	s0,24(sp)
     354:	02010413          	add	s0,sp,32
     358:	fea42623          	sw	a0,-20(s0)
     35c:	fec42783          	lw	a5,-20(s0)
     360:	0007a783          	lw	a5,0(a5)
     364:	0007a783          	lw	a5,0(a5)
     368:	00078513          	mv	a0,a5
     36c:	180050ef          	jal	54ec <_Z13fib_recursivei>
     370:	00050713          	mv	a4,a0
     374:	00058793          	mv	a5,a1
     378:	00070513          	mv	a0,a4
     37c:	00078593          	mv	a1,a5
     380:	01c12083          	lw	ra,28(sp)
     384:	01812403          	lw	s0,24(sp)
     388:	02010113          	add	sp,sp,32
     38c:	00008067          	ret

00000390 <_Z14instrument_cpiIZ4mainEUlvE0_EDaOT_>:
     390:	fb010113          	add	sp,sp,-80
     394:	04112623          	sw	ra,76(sp)
     398:	04812423          	sw	s0,72(sp)
     39c:	05212223          	sw	s2,68(sp)
     3a0:	05312023          	sw	s3,64(sp)
     3a4:	03412e23          	sw	s4,60(sp)
     3a8:	03512c23          	sw	s5,56(sp)
     3ac:	05010413          	add	s0,sp,80
     3b0:	faa42e23          	sw	a0,-68(s0)
     3b4:	002017b7          	lui	a5,0x201
     3b8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     3bc:	0007a783          	lw	a5,0(a5)
     3c0:	fcf42e23          	sw	a5,-36(s0)
     3c4:	002017b7          	lui	a5,0x201
     3c8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     3cc:	0007a783          	lw	a5,0(a5)
     3d0:	fcf42c23          	sw	a5,-40(s0)
     3d4:	fbc42503          	lw	a0,-68(s0)
     3d8:	f71ff0ef          	jal	348 <_ZZ4mainENKUlvE0_clEv>
     3dc:	00050713          	mv	a4,a0
     3e0:	00058793          	mv	a5,a1
     3e4:	fce42823          	sw	a4,-48(s0)
     3e8:	fcf42a23          	sw	a5,-44(s0)
     3ec:	00000013          	nop
     3f0:	002017b7          	lui	a5,0x201
     3f4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     3f8:	0007a783          	lw	a5,0(a5)
     3fc:	fcf42623          	sw	a5,-52(s0)
     400:	002017b7          	lui	a5,0x201
     404:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     408:	0007a783          	lw	a5,0(a5)
     40c:	fcf42423          	sw	a5,-56(s0)
     410:	fc842703          	lw	a4,-56(s0)
     414:	fdc42783          	lw	a5,-36(s0)
     418:	40f707b3          	sub	a5,a4,a5
     41c:	fcf42223          	sw	a5,-60(s0)
     420:	fcc42703          	lw	a4,-52(s0)
     424:	fd842783          	lw	a5,-40(s0)
     428:	40f707b3          	sub	a5,a4,a5
     42c:	fcf42023          	sw	a5,-64(s0)
     430:	05900513          	li	a0,89
     434:	3cc070ef          	jal	7800 <_Z9uart_putcc>
     438:	00000013          	nop
     43c:	fc442783          	lw	a5,-60(s0)
     440:	00078a13          	mv	s4,a5
     444:	41f7d793          	sra	a5,a5,0x1f
     448:	00078a93          	mv	s5,a5
     44c:	000a0513          	mv	a0,s4
     450:	000a8593          	mv	a1,s5
     454:	49c070ef          	jal	78f0 <_Z11dump_resultx>
     458:	00000013          	nop
     45c:	05200513          	li	a0,82
     460:	3a0070ef          	jal	7800 <_Z9uart_putcc>
     464:	00000013          	nop
     468:	fc042783          	lw	a5,-64(s0)
     46c:	00078913          	mv	s2,a5
     470:	41f7d793          	sra	a5,a5,0x1f
     474:	00078993          	mv	s3,a5
     478:	00090513          	mv	a0,s2
     47c:	00098593          	mv	a1,s3
     480:	470070ef          	jal	78f0 <_Z11dump_resultx>
     484:	00000013          	nop
     488:	fd042703          	lw	a4,-48(s0)
     48c:	fd442783          	lw	a5,-44(s0)
     490:	00070513          	mv	a0,a4
     494:	00078593          	mv	a1,a5
     498:	04c12083          	lw	ra,76(sp)
     49c:	04812403          	lw	s0,72(sp)
     4a0:	04412903          	lw	s2,68(sp)
     4a4:	04012983          	lw	s3,64(sp)
     4a8:	03c12a03          	lw	s4,60(sp)
     4ac:	03812a83          	lw	s5,56(sp)
     4b0:	05010113          	add	sp,sp,80
     4b4:	00008067          	ret

000004b8 <_ZZ4mainENKUlvE1_clEv>:
     4b8:	fe010113          	add	sp,sp,-32
     4bc:	00112e23          	sw	ra,28(sp)
     4c0:	00812c23          	sw	s0,24(sp)
     4c4:	02010413          	add	s0,sp,32
     4c8:	fea42623          	sw	a0,-20(s0)
     4cc:	fec42783          	lw	a5,-20(s0)
     4d0:	0007a703          	lw	a4,0(a5)
     4d4:	fec42783          	lw	a5,-20(s0)
     4d8:	0047a683          	lw	a3,4(a5)
     4dc:	fec42783          	lw	a5,-20(s0)
     4e0:	0087a783          	lw	a5,8(a5)
     4e4:	00078613          	mv	a2,a5
     4e8:	00068593          	mv	a1,a3
     4ec:	00070513          	mv	a0,a4
     4f0:	b79ff0ef          	jal	68 <_Z7add_ptrPViS0_S0_>
     4f4:	00050793          	mv	a5,a0
     4f8:	00078513          	mv	a0,a5
     4fc:	01c12083          	lw	ra,28(sp)
     500:	01812403          	lw	s0,24(sp)
     504:	02010113          	add	sp,sp,32
     508:	00008067          	ret

0000050c <_Z14instrument_cpiIZ4mainEUlvE1_EDaOT_>:
     50c:	fb010113          	add	sp,sp,-80
     510:	04112623          	sw	ra,76(sp)
     514:	04812423          	sw	s0,72(sp)
     518:	05212223          	sw	s2,68(sp)
     51c:	05312023          	sw	s3,64(sp)
     520:	03412e23          	sw	s4,60(sp)
     524:	03512c23          	sw	s5,56(sp)
     528:	05010413          	add	s0,sp,80
     52c:	faa42e23          	sw	a0,-68(s0)
     530:	002017b7          	lui	a5,0x201
     534:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     538:	0007a783          	lw	a5,0(a5)
     53c:	fcf42e23          	sw	a5,-36(s0)
     540:	002017b7          	lui	a5,0x201
     544:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     548:	0007a783          	lw	a5,0(a5)
     54c:	fcf42c23          	sw	a5,-40(s0)
     550:	fbc42503          	lw	a0,-68(s0)
     554:	f65ff0ef          	jal	4b8 <_ZZ4mainENKUlvE1_clEv>
     558:	00050793          	mv	a5,a0
     55c:	fcf40ba3          	sb	a5,-41(s0)
     560:	00000013          	nop
     564:	002017b7          	lui	a5,0x201
     568:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     56c:	0007a783          	lw	a5,0(a5)
     570:	fcf42823          	sw	a5,-48(s0)
     574:	002017b7          	lui	a5,0x201
     578:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     57c:	0007a783          	lw	a5,0(a5)
     580:	fcf42623          	sw	a5,-52(s0)
     584:	fcc42703          	lw	a4,-52(s0)
     588:	fdc42783          	lw	a5,-36(s0)
     58c:	40f707b3          	sub	a5,a4,a5
     590:	fcf42423          	sw	a5,-56(s0)
     594:	fd042703          	lw	a4,-48(s0)
     598:	fd842783          	lw	a5,-40(s0)
     59c:	40f707b3          	sub	a5,a4,a5
     5a0:	fcf42223          	sw	a5,-60(s0)
     5a4:	05900513          	li	a0,89
     5a8:	258070ef          	jal	7800 <_Z9uart_putcc>
     5ac:	00000013          	nop
     5b0:	fc842783          	lw	a5,-56(s0)
     5b4:	00078a13          	mv	s4,a5
     5b8:	41f7d793          	sra	a5,a5,0x1f
     5bc:	00078a93          	mv	s5,a5
     5c0:	000a0513          	mv	a0,s4
     5c4:	000a8593          	mv	a1,s5
     5c8:	328070ef          	jal	78f0 <_Z11dump_resultx>
     5cc:	00000013          	nop
     5d0:	05200513          	li	a0,82
     5d4:	22c070ef          	jal	7800 <_Z9uart_putcc>
     5d8:	00000013          	nop
     5dc:	fc442783          	lw	a5,-60(s0)
     5e0:	00078913          	mv	s2,a5
     5e4:	41f7d793          	sra	a5,a5,0x1f
     5e8:	00078993          	mv	s3,a5
     5ec:	00090513          	mv	a0,s2
     5f0:	00098593          	mv	a1,s3
     5f4:	2fc070ef          	jal	78f0 <_Z11dump_resultx>
     5f8:	00000013          	nop
     5fc:	fd744783          	lbu	a5,-41(s0)
     600:	00078513          	mv	a0,a5
     604:	04c12083          	lw	ra,76(sp)
     608:	04812403          	lw	s0,72(sp)
     60c:	04412903          	lw	s2,68(sp)
     610:	04012983          	lw	s3,64(sp)
     614:	03c12a03          	lw	s4,60(sp)
     618:	03812a83          	lw	s5,56(sp)
     61c:	05010113          	add	sp,sp,80
     620:	00008067          	ret

00000624 <_ZZ4mainENKUlvE2_clEv>:
     624:	fe010113          	add	sp,sp,-32
     628:	00112e23          	sw	ra,28(sp)
     62c:	00812c23          	sw	s0,24(sp)
     630:	02010413          	add	s0,sp,32
     634:	fea42623          	sw	a0,-20(s0)
     638:	fec42783          	lw	a5,-20(s0)
     63c:	0007a703          	lw	a4,0(a5)
     640:	fec42783          	lw	a5,-20(s0)
     644:	0047a683          	lw	a3,4(a5)
     648:	fec42783          	lw	a5,-20(s0)
     64c:	0087a783          	lw	a5,8(a5)
     650:	00078613          	mv	a2,a5
     654:	00068593          	mv	a1,a3
     658:	00070513          	mv	a0,a4
     65c:	a55ff0ef          	jal	b0 <_Z7sub_ptrPViS0_S0_>
     660:	00050793          	mv	a5,a0
     664:	00078513          	mv	a0,a5
     668:	01c12083          	lw	ra,28(sp)
     66c:	01812403          	lw	s0,24(sp)
     670:	02010113          	add	sp,sp,32
     674:	00008067          	ret

00000678 <_Z14instrument_cpiIZ4mainEUlvE2_EDaOT_>:
     678:	fb010113          	add	sp,sp,-80
     67c:	04112623          	sw	ra,76(sp)
     680:	04812423          	sw	s0,72(sp)
     684:	05212223          	sw	s2,68(sp)
     688:	05312023          	sw	s3,64(sp)
     68c:	03412e23          	sw	s4,60(sp)
     690:	03512c23          	sw	s5,56(sp)
     694:	05010413          	add	s0,sp,80
     698:	faa42e23          	sw	a0,-68(s0)
     69c:	002017b7          	lui	a5,0x201
     6a0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     6a4:	0007a783          	lw	a5,0(a5)
     6a8:	fcf42e23          	sw	a5,-36(s0)
     6ac:	002017b7          	lui	a5,0x201
     6b0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     6b4:	0007a783          	lw	a5,0(a5)
     6b8:	fcf42c23          	sw	a5,-40(s0)
     6bc:	fbc42503          	lw	a0,-68(s0)
     6c0:	f65ff0ef          	jal	624 <_ZZ4mainENKUlvE2_clEv>
     6c4:	00050793          	mv	a5,a0
     6c8:	fcf40ba3          	sb	a5,-41(s0)
     6cc:	00000013          	nop
     6d0:	002017b7          	lui	a5,0x201
     6d4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     6d8:	0007a783          	lw	a5,0(a5)
     6dc:	fcf42823          	sw	a5,-48(s0)
     6e0:	002017b7          	lui	a5,0x201
     6e4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     6e8:	0007a783          	lw	a5,0(a5)
     6ec:	fcf42623          	sw	a5,-52(s0)
     6f0:	fcc42703          	lw	a4,-52(s0)
     6f4:	fdc42783          	lw	a5,-36(s0)
     6f8:	40f707b3          	sub	a5,a4,a5
     6fc:	fcf42423          	sw	a5,-56(s0)
     700:	fd042703          	lw	a4,-48(s0)
     704:	fd842783          	lw	a5,-40(s0)
     708:	40f707b3          	sub	a5,a4,a5
     70c:	fcf42223          	sw	a5,-60(s0)
     710:	05900513          	li	a0,89
     714:	0ec070ef          	jal	7800 <_Z9uart_putcc>
     718:	00000013          	nop
     71c:	fc842783          	lw	a5,-56(s0)
     720:	00078a13          	mv	s4,a5
     724:	41f7d793          	sra	a5,a5,0x1f
     728:	00078a93          	mv	s5,a5
     72c:	000a0513          	mv	a0,s4
     730:	000a8593          	mv	a1,s5
     734:	1bc070ef          	jal	78f0 <_Z11dump_resultx>
     738:	00000013          	nop
     73c:	05200513          	li	a0,82
     740:	0c0070ef          	jal	7800 <_Z9uart_putcc>
     744:	00000013          	nop
     748:	fc442783          	lw	a5,-60(s0)
     74c:	00078913          	mv	s2,a5
     750:	41f7d793          	sra	a5,a5,0x1f
     754:	00078993          	mv	s3,a5
     758:	00090513          	mv	a0,s2
     75c:	00098593          	mv	a1,s3
     760:	190070ef          	jal	78f0 <_Z11dump_resultx>
     764:	00000013          	nop
     768:	fd744783          	lbu	a5,-41(s0)
     76c:	00078513          	mv	a0,a5
     770:	04c12083          	lw	ra,76(sp)
     774:	04812403          	lw	s0,72(sp)
     778:	04412903          	lw	s2,68(sp)
     77c:	04012983          	lw	s3,64(sp)
     780:	03c12a03          	lw	s4,60(sp)
     784:	03812a83          	lw	s5,56(sp)
     788:	05010113          	add	sp,sp,80
     78c:	00008067          	ret

00000790 <_ZZ4mainENKUlvE3_clEv>:
     790:	fe010113          	add	sp,sp,-32
     794:	00112e23          	sw	ra,28(sp)
     798:	00812c23          	sw	s0,24(sp)
     79c:	02010413          	add	s0,sp,32
     7a0:	fea42623          	sw	a0,-20(s0)
     7a4:	fec42783          	lw	a5,-20(s0)
     7a8:	0007a703          	lw	a4,0(a5)
     7ac:	fec42783          	lw	a5,-20(s0)
     7b0:	0047a683          	lw	a3,4(a5)
     7b4:	fec42783          	lw	a5,-20(s0)
     7b8:	0087a783          	lw	a5,8(a5)
     7bc:	00078613          	mv	a2,a5
     7c0:	00068593          	mv	a1,a3
     7c4:	00070513          	mv	a0,a4
     7c8:	5c9040ef          	jal	5590 <_Z7mul_ptrPViS0_S0_>
     7cc:	00050793          	mv	a5,a0
     7d0:	00078513          	mv	a0,a5
     7d4:	01c12083          	lw	ra,28(sp)
     7d8:	01812403          	lw	s0,24(sp)
     7dc:	02010113          	add	sp,sp,32
     7e0:	00008067          	ret

000007e4 <_Z14instrument_cpiIZ4mainEUlvE3_EDaOT_>:
     7e4:	fb010113          	add	sp,sp,-80
     7e8:	04112623          	sw	ra,76(sp)
     7ec:	04812423          	sw	s0,72(sp)
     7f0:	05212223          	sw	s2,68(sp)
     7f4:	05312023          	sw	s3,64(sp)
     7f8:	03412e23          	sw	s4,60(sp)
     7fc:	03512c23          	sw	s5,56(sp)
     800:	05010413          	add	s0,sp,80
     804:	faa42e23          	sw	a0,-68(s0)
     808:	002017b7          	lui	a5,0x201
     80c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     810:	0007a783          	lw	a5,0(a5)
     814:	fcf42e23          	sw	a5,-36(s0)
     818:	002017b7          	lui	a5,0x201
     81c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     820:	0007a783          	lw	a5,0(a5)
     824:	fcf42c23          	sw	a5,-40(s0)
     828:	fbc42503          	lw	a0,-68(s0)
     82c:	f65ff0ef          	jal	790 <_ZZ4mainENKUlvE3_clEv>
     830:	00050793          	mv	a5,a0
     834:	fcf40ba3          	sb	a5,-41(s0)
     838:	00000013          	nop
     83c:	002017b7          	lui	a5,0x201
     840:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     844:	0007a783          	lw	a5,0(a5)
     848:	fcf42823          	sw	a5,-48(s0)
     84c:	002017b7          	lui	a5,0x201
     850:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     854:	0007a783          	lw	a5,0(a5)
     858:	fcf42623          	sw	a5,-52(s0)
     85c:	fcc42703          	lw	a4,-52(s0)
     860:	fdc42783          	lw	a5,-36(s0)
     864:	40f707b3          	sub	a5,a4,a5
     868:	fcf42423          	sw	a5,-56(s0)
     86c:	fd042703          	lw	a4,-48(s0)
     870:	fd842783          	lw	a5,-40(s0)
     874:	40f707b3          	sub	a5,a4,a5
     878:	fcf42223          	sw	a5,-60(s0)
     87c:	05900513          	li	a0,89
     880:	781060ef          	jal	7800 <_Z9uart_putcc>
     884:	00000013          	nop
     888:	fc842783          	lw	a5,-56(s0)
     88c:	00078a13          	mv	s4,a5
     890:	41f7d793          	sra	a5,a5,0x1f
     894:	00078a93          	mv	s5,a5
     898:	000a0513          	mv	a0,s4
     89c:	000a8593          	mv	a1,s5
     8a0:	050070ef          	jal	78f0 <_Z11dump_resultx>
     8a4:	00000013          	nop
     8a8:	05200513          	li	a0,82
     8ac:	755060ef          	jal	7800 <_Z9uart_putcc>
     8b0:	00000013          	nop
     8b4:	fc442783          	lw	a5,-60(s0)
     8b8:	00078913          	mv	s2,a5
     8bc:	41f7d793          	sra	a5,a5,0x1f
     8c0:	00078993          	mv	s3,a5
     8c4:	00090513          	mv	a0,s2
     8c8:	00098593          	mv	a1,s3
     8cc:	024070ef          	jal	78f0 <_Z11dump_resultx>
     8d0:	00000013          	nop
     8d4:	fd744783          	lbu	a5,-41(s0)
     8d8:	00078513          	mv	a0,a5
     8dc:	04c12083          	lw	ra,76(sp)
     8e0:	04812403          	lw	s0,72(sp)
     8e4:	04412903          	lw	s2,68(sp)
     8e8:	04012983          	lw	s3,64(sp)
     8ec:	03c12a03          	lw	s4,60(sp)
     8f0:	03812a83          	lw	s5,56(sp)
     8f4:	05010113          	add	sp,sp,80
     8f8:	00008067          	ret

000008fc <_ZZ4mainENKUlvE4_clEv>:
     8fc:	fe010113          	add	sp,sp,-32
     900:	00112e23          	sw	ra,28(sp)
     904:	00812c23          	sw	s0,24(sp)
     908:	02010413          	add	s0,sp,32
     90c:	fea42623          	sw	a0,-20(s0)
     910:	fec42783          	lw	a5,-20(s0)
     914:	0007a703          	lw	a4,0(a5)
     918:	fec42783          	lw	a5,-20(s0)
     91c:	0047a683          	lw	a3,4(a5)
     920:	fec42783          	lw	a5,-20(s0)
     924:	0087a783          	lw	a5,8(a5)
     928:	00078613          	mv	a2,a5
     92c:	00068593          	mv	a1,a3
     930:	00070513          	mv	a0,a4
     934:	4bd040ef          	jal	55f0 <_Z7div_ptrPViS0_S0_>
     938:	00050793          	mv	a5,a0
     93c:	00078513          	mv	a0,a5
     940:	01c12083          	lw	ra,28(sp)
     944:	01812403          	lw	s0,24(sp)
     948:	02010113          	add	sp,sp,32
     94c:	00008067          	ret

00000950 <_Z14instrument_cpiIZ4mainEUlvE4_EDaOT_>:
     950:	fb010113          	add	sp,sp,-80
     954:	04112623          	sw	ra,76(sp)
     958:	04812423          	sw	s0,72(sp)
     95c:	05212223          	sw	s2,68(sp)
     960:	05312023          	sw	s3,64(sp)
     964:	03412e23          	sw	s4,60(sp)
     968:	03512c23          	sw	s5,56(sp)
     96c:	05010413          	add	s0,sp,80
     970:	faa42e23          	sw	a0,-68(s0)
     974:	002017b7          	lui	a5,0x201
     978:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     97c:	0007a783          	lw	a5,0(a5)
     980:	fcf42e23          	sw	a5,-36(s0)
     984:	002017b7          	lui	a5,0x201
     988:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     98c:	0007a783          	lw	a5,0(a5)
     990:	fcf42c23          	sw	a5,-40(s0)
     994:	fbc42503          	lw	a0,-68(s0)
     998:	f65ff0ef          	jal	8fc <_ZZ4mainENKUlvE4_clEv>
     99c:	00050793          	mv	a5,a0
     9a0:	fcf40ba3          	sb	a5,-41(s0)
     9a4:	00000013          	nop
     9a8:	002017b7          	lui	a5,0x201
     9ac:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     9b0:	0007a783          	lw	a5,0(a5)
     9b4:	fcf42823          	sw	a5,-48(s0)
     9b8:	002017b7          	lui	a5,0x201
     9bc:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     9c0:	0007a783          	lw	a5,0(a5)
     9c4:	fcf42623          	sw	a5,-52(s0)
     9c8:	fcc42703          	lw	a4,-52(s0)
     9cc:	fdc42783          	lw	a5,-36(s0)
     9d0:	40f707b3          	sub	a5,a4,a5
     9d4:	fcf42423          	sw	a5,-56(s0)
     9d8:	fd042703          	lw	a4,-48(s0)
     9dc:	fd842783          	lw	a5,-40(s0)
     9e0:	40f707b3          	sub	a5,a4,a5
     9e4:	fcf42223          	sw	a5,-60(s0)
     9e8:	05900513          	li	a0,89
     9ec:	615060ef          	jal	7800 <_Z9uart_putcc>
     9f0:	00000013          	nop
     9f4:	fc842783          	lw	a5,-56(s0)
     9f8:	00078a13          	mv	s4,a5
     9fc:	41f7d793          	sra	a5,a5,0x1f
     a00:	00078a93          	mv	s5,a5
     a04:	000a0513          	mv	a0,s4
     a08:	000a8593          	mv	a1,s5
     a0c:	6e5060ef          	jal	78f0 <_Z11dump_resultx>
     a10:	00000013          	nop
     a14:	05200513          	li	a0,82
     a18:	5e9060ef          	jal	7800 <_Z9uart_putcc>
     a1c:	00000013          	nop
     a20:	fc442783          	lw	a5,-60(s0)
     a24:	00078913          	mv	s2,a5
     a28:	41f7d793          	sra	a5,a5,0x1f
     a2c:	00078993          	mv	s3,a5
     a30:	00090513          	mv	a0,s2
     a34:	00098593          	mv	a1,s3
     a38:	6b9060ef          	jal	78f0 <_Z11dump_resultx>
     a3c:	00000013          	nop
     a40:	fd744783          	lbu	a5,-41(s0)
     a44:	00078513          	mv	a0,a5
     a48:	04c12083          	lw	ra,76(sp)
     a4c:	04812403          	lw	s0,72(sp)
     a50:	04412903          	lw	s2,68(sp)
     a54:	04012983          	lw	s3,64(sp)
     a58:	03c12a03          	lw	s4,60(sp)
     a5c:	03812a83          	lw	s5,56(sp)
     a60:	05010113          	add	sp,sp,80
     a64:	00008067          	ret

00000a68 <_ZZ4mainENKUlvE5_clEv>:
     a68:	fe010113          	add	sp,sp,-32
     a6c:	00112e23          	sw	ra,28(sp)
     a70:	00812c23          	sw	s0,24(sp)
     a74:	02010413          	add	s0,sp,32
     a78:	fea42623          	sw	a0,-20(s0)
     a7c:	fec42783          	lw	a5,-20(s0)
     a80:	0007a703          	lw	a4,0(a5)
     a84:	fec42783          	lw	a5,-20(s0)
     a88:	0047a683          	lw	a3,4(a5)
     a8c:	fec42783          	lw	a5,-20(s0)
     a90:	0087a783          	lw	a5,8(a5)
     a94:	00078613          	mv	a2,a5
     a98:	00068593          	mv	a1,a3
     a9c:	00070513          	mv	a0,a4
     aa0:	3b1040ef          	jal	5650 <_Z6matmulPA3_KiPA3_iS3_>
     aa4:	00050793          	mv	a5,a0
     aa8:	00078513          	mv	a0,a5
     aac:	01c12083          	lw	ra,28(sp)
     ab0:	01812403          	lw	s0,24(sp)
     ab4:	02010113          	add	sp,sp,32
     ab8:	00008067          	ret

00000abc <_Z14instrument_cpiIZ4mainEUlvE5_EDaOT_>:
     abc:	fb010113          	add	sp,sp,-80
     ac0:	04112623          	sw	ra,76(sp)
     ac4:	04812423          	sw	s0,72(sp)
     ac8:	05212223          	sw	s2,68(sp)
     acc:	05312023          	sw	s3,64(sp)
     ad0:	03412e23          	sw	s4,60(sp)
     ad4:	03512c23          	sw	s5,56(sp)
     ad8:	05010413          	add	s0,sp,80
     adc:	faa42e23          	sw	a0,-68(s0)
     ae0:	002017b7          	lui	a5,0x201
     ae4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     ae8:	0007a783          	lw	a5,0(a5)
     aec:	fcf42e23          	sw	a5,-36(s0)
     af0:	002017b7          	lui	a5,0x201
     af4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     af8:	0007a783          	lw	a5,0(a5)
     afc:	fcf42c23          	sw	a5,-40(s0)
     b00:	fbc42503          	lw	a0,-68(s0)
     b04:	f65ff0ef          	jal	a68 <_ZZ4mainENKUlvE5_clEv>
     b08:	00050793          	mv	a5,a0
     b0c:	fcf40ba3          	sb	a5,-41(s0)
     b10:	00000013          	nop
     b14:	002017b7          	lui	a5,0x201
     b18:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     b1c:	0007a783          	lw	a5,0(a5)
     b20:	fcf42823          	sw	a5,-48(s0)
     b24:	002017b7          	lui	a5,0x201
     b28:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     b2c:	0007a783          	lw	a5,0(a5)
     b30:	fcf42623          	sw	a5,-52(s0)
     b34:	fcc42703          	lw	a4,-52(s0)
     b38:	fdc42783          	lw	a5,-36(s0)
     b3c:	40f707b3          	sub	a5,a4,a5
     b40:	fcf42423          	sw	a5,-56(s0)
     b44:	fd042703          	lw	a4,-48(s0)
     b48:	fd842783          	lw	a5,-40(s0)
     b4c:	40f707b3          	sub	a5,a4,a5
     b50:	fcf42223          	sw	a5,-60(s0)
     b54:	05900513          	li	a0,89
     b58:	4a9060ef          	jal	7800 <_Z9uart_putcc>
     b5c:	00000013          	nop
     b60:	fc842783          	lw	a5,-56(s0)
     b64:	00078a13          	mv	s4,a5
     b68:	41f7d793          	sra	a5,a5,0x1f
     b6c:	00078a93          	mv	s5,a5
     b70:	000a0513          	mv	a0,s4
     b74:	000a8593          	mv	a1,s5
     b78:	579060ef          	jal	78f0 <_Z11dump_resultx>
     b7c:	00000013          	nop
     b80:	05200513          	li	a0,82
     b84:	47d060ef          	jal	7800 <_Z9uart_putcc>
     b88:	00000013          	nop
     b8c:	fc442783          	lw	a5,-60(s0)
     b90:	00078913          	mv	s2,a5
     b94:	41f7d793          	sra	a5,a5,0x1f
     b98:	00078993          	mv	s3,a5
     b9c:	00090513          	mv	a0,s2
     ba0:	00098593          	mv	a1,s3
     ba4:	54d060ef          	jal	78f0 <_Z11dump_resultx>
     ba8:	00000013          	nop
     bac:	fd744783          	lbu	a5,-41(s0)
     bb0:	00078513          	mv	a0,a5
     bb4:	04c12083          	lw	ra,76(sp)
     bb8:	04812403          	lw	s0,72(sp)
     bbc:	04412903          	lw	s2,68(sp)
     bc0:	04012983          	lw	s3,64(sp)
     bc4:	03c12a03          	lw	s4,60(sp)
     bc8:	03812a83          	lw	s5,56(sp)
     bcc:	05010113          	add	sp,sp,80
     bd0:	00008067          	ret

00000bd4 <_ZZ4mainENKUlvE6_clEv>:
     bd4:	fe010113          	add	sp,sp,-32
     bd8:	00112e23          	sw	ra,28(sp)
     bdc:	00812c23          	sw	s0,24(sp)
     be0:	02010413          	add	s0,sp,32
     be4:	fea42623          	sw	a0,-20(s0)
     be8:	fec42783          	lw	a5,-20(s0)
     bec:	0007a703          	lw	a4,0(a5)
     bf0:	fec42783          	lw	a5,-20(s0)
     bf4:	0047a683          	lw	a3,4(a5)
     bf8:	fec42783          	lw	a5,-20(s0)
     bfc:	0087a783          	lw	a5,8(a5)
     c00:	00078613          	mv	a2,a5
     c04:	00068593          	mv	a1,a3
     c08:	00070513          	mv	a0,a4
     c0c:	245040ef          	jal	5650 <_Z6matmulPA3_KiPA3_iS3_>
     c10:	00050793          	mv	a5,a0
     c14:	00078513          	mv	a0,a5
     c18:	01c12083          	lw	ra,28(sp)
     c1c:	01812403          	lw	s0,24(sp)
     c20:	02010113          	add	sp,sp,32
     c24:	00008067          	ret

00000c28 <_Z14instrument_cpiIZ4mainEUlvE6_EDaOT_>:
     c28:	fb010113          	add	sp,sp,-80
     c2c:	04112623          	sw	ra,76(sp)
     c30:	04812423          	sw	s0,72(sp)
     c34:	05212223          	sw	s2,68(sp)
     c38:	05312023          	sw	s3,64(sp)
     c3c:	03412e23          	sw	s4,60(sp)
     c40:	03512c23          	sw	s5,56(sp)
     c44:	05010413          	add	s0,sp,80
     c48:	faa42e23          	sw	a0,-68(s0)
     c4c:	002017b7          	lui	a5,0x201
     c50:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     c54:	0007a783          	lw	a5,0(a5)
     c58:	fcf42e23          	sw	a5,-36(s0)
     c5c:	002017b7          	lui	a5,0x201
     c60:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     c64:	0007a783          	lw	a5,0(a5)
     c68:	fcf42c23          	sw	a5,-40(s0)
     c6c:	fbc42503          	lw	a0,-68(s0)
     c70:	f65ff0ef          	jal	bd4 <_ZZ4mainENKUlvE6_clEv>
     c74:	00050793          	mv	a5,a0
     c78:	fcf40ba3          	sb	a5,-41(s0)
     c7c:	00000013          	nop
     c80:	002017b7          	lui	a5,0x201
     c84:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     c88:	0007a783          	lw	a5,0(a5)
     c8c:	fcf42823          	sw	a5,-48(s0)
     c90:	002017b7          	lui	a5,0x201
     c94:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     c98:	0007a783          	lw	a5,0(a5)
     c9c:	fcf42623          	sw	a5,-52(s0)
     ca0:	fcc42703          	lw	a4,-52(s0)
     ca4:	fdc42783          	lw	a5,-36(s0)
     ca8:	40f707b3          	sub	a5,a4,a5
     cac:	fcf42423          	sw	a5,-56(s0)
     cb0:	fd042703          	lw	a4,-48(s0)
     cb4:	fd842783          	lw	a5,-40(s0)
     cb8:	40f707b3          	sub	a5,a4,a5
     cbc:	fcf42223          	sw	a5,-60(s0)
     cc0:	05900513          	li	a0,89
     cc4:	33d060ef          	jal	7800 <_Z9uart_putcc>
     cc8:	00000013          	nop
     ccc:	fc842783          	lw	a5,-56(s0)
     cd0:	00078a13          	mv	s4,a5
     cd4:	41f7d793          	sra	a5,a5,0x1f
     cd8:	00078a93          	mv	s5,a5
     cdc:	000a0513          	mv	a0,s4
     ce0:	000a8593          	mv	a1,s5
     ce4:	40d060ef          	jal	78f0 <_Z11dump_resultx>
     ce8:	00000013          	nop
     cec:	05200513          	li	a0,82
     cf0:	311060ef          	jal	7800 <_Z9uart_putcc>
     cf4:	00000013          	nop
     cf8:	fc442783          	lw	a5,-60(s0)
     cfc:	00078913          	mv	s2,a5
     d00:	41f7d793          	sra	a5,a5,0x1f
     d04:	00078993          	mv	s3,a5
     d08:	00090513          	mv	a0,s2
     d0c:	00098593          	mv	a1,s3
     d10:	3e1060ef          	jal	78f0 <_Z11dump_resultx>
     d14:	00000013          	nop
     d18:	fd744783          	lbu	a5,-41(s0)
     d1c:	00078513          	mv	a0,a5
     d20:	04c12083          	lw	ra,76(sp)
     d24:	04812403          	lw	s0,72(sp)
     d28:	04412903          	lw	s2,68(sp)
     d2c:	04012983          	lw	s3,64(sp)
     d30:	03c12a03          	lw	s4,60(sp)
     d34:	03812a83          	lw	s5,56(sp)
     d38:	05010113          	add	sp,sp,80
     d3c:	00008067          	ret

00000d40 <main>:
     d40:	e5010113          	add	sp,sp,-432
     d44:	1a112623          	sw	ra,428(sp)
     d48:	1a812423          	sw	s0,424(sp)
     d4c:	1b212223          	sw	s2,420(sp)
     d50:	1b312023          	sw	s3,416(sp)
     d54:	19412e23          	sw	s4,412(sp)
     d58:	19512c23          	sw	s5,408(sp)
     d5c:	19612a23          	sw	s6,404(sp)
     d60:	19712823          	sw	s7,400(sp)
     d64:	19812623          	sw	s8,396(sp)
     d68:	19912423          	sw	s9,392(sp)
     d6c:	19a12223          	sw	s10,388(sp)
     d70:	19b12023          	sw	s11,384(sp)
     d74:	1b010413          	add	s0,sp,432
     d78:	f60407a3          	sb	zero,-145(s0)
     d7c:	0003d7b7          	lui	a5,0x3d
     d80:	01878793          	add	a5,a5,24 # 3d018 <_Z12print_matrixPA3_Ki+0x355e8>
     d84:	0007a683          	lw	a3,0(a5)
     d88:	0047a583          	lw	a1,4(a5)
     d8c:	0087a303          	lw	t1,8(a5)
     d90:	00c7a883          	lw	a7,12(a5)
     d94:	0107a803          	lw	a6,16(a5)
     d98:	0147a503          	lw	a0,20(a5)
     d9c:	0187a603          	lw	a2,24(a5)
     da0:	01c7a703          	lw	a4,28(a5)
     da4:	0207a783          	lw	a5,32(a5)
     da8:	f4d42423          	sw	a3,-184(s0)
     dac:	f4b42623          	sw	a1,-180(s0)
     db0:	f4642823          	sw	t1,-176(s0)
     db4:	f5142a23          	sw	a7,-172(s0)
     db8:	f5042c23          	sw	a6,-168(s0)
     dbc:	f4a42e23          	sw	a0,-164(s0)
     dc0:	f6c42023          	sw	a2,-160(s0)
     dc4:	f6e42223          	sw	a4,-156(s0)
     dc8:	f6f42423          	sw	a5,-152(s0)
     dcc:	0003d7b7          	lui	a5,0x3d
     dd0:	03c78793          	add	a5,a5,60 # 3d03c <_Z12print_matrixPA3_Ki+0x3560c>
     dd4:	0007a683          	lw	a3,0(a5)
     dd8:	0047a583          	lw	a1,4(a5)
     ddc:	0087a303          	lw	t1,8(a5)
     de0:	00c7a883          	lw	a7,12(a5)
     de4:	0107a803          	lw	a6,16(a5)
     de8:	0147a503          	lw	a0,20(a5)
     dec:	0187a603          	lw	a2,24(a5)
     df0:	01c7a703          	lw	a4,28(a5)
     df4:	0207a783          	lw	a5,32(a5)
     df8:	f2d42223          	sw	a3,-220(s0)
     dfc:	f2b42423          	sw	a1,-216(s0)
     e00:	f2642623          	sw	t1,-212(s0)
     e04:	f3142823          	sw	a7,-208(s0)
     e08:	f3042a23          	sw	a6,-204(s0)
     e0c:	f2a42c23          	sw	a0,-200(s0)
     e10:	f2c42e23          	sw	a2,-196(s0)
     e14:	f4e42023          	sw	a4,-192(s0)
     e18:	f4f42223          	sw	a5,-188(s0)
     e1c:	0003d7b7          	lui	a5,0x3d
     e20:	06078793          	add	a5,a5,96 # 3d060 <_Z12print_matrixPA3_Ki+0x35630>
     e24:	0007a683          	lw	a3,0(a5)
     e28:	0047a583          	lw	a1,4(a5)
     e2c:	0087a303          	lw	t1,8(a5)
     e30:	00c7a883          	lw	a7,12(a5)
     e34:	0107a803          	lw	a6,16(a5)
     e38:	0147a503          	lw	a0,20(a5)
     e3c:	0187a603          	lw	a2,24(a5)
     e40:	01c7a703          	lw	a4,28(a5)
     e44:	0207a783          	lw	a5,32(a5)
     e48:	f0d42023          	sw	a3,-256(s0)
     e4c:	f0b42223          	sw	a1,-252(s0)
     e50:	f0642423          	sw	t1,-248(s0)
     e54:	f1142623          	sw	a7,-244(s0)
     e58:	f1042823          	sw	a6,-240(s0)
     e5c:	f0a42a23          	sw	a0,-236(s0)
     e60:	f0c42c23          	sw	a2,-232(s0)
     e64:	f0e42e23          	sw	a4,-228(s0)
     e68:	f2f42023          	sw	a5,-224(s0)
     e6c:	ec042e23          	sw	zero,-292(s0)
     e70:	ee042023          	sw	zero,-288(s0)
     e74:	ee042223          	sw	zero,-284(s0)
     e78:	ee042423          	sw	zero,-280(s0)
     e7c:	ee042623          	sw	zero,-276(s0)
     e80:	ee042823          	sw	zero,-272(s0)
     e84:	ee042a23          	sw	zero,-268(s0)
     e88:	ee042c23          	sw	zero,-264(s0)
     e8c:	ee042e23          	sw	zero,-260(s0)
     e90:	ea042c23          	sw	zero,-328(s0)
     e94:	ea042e23          	sw	zero,-324(s0)
     e98:	ec042023          	sw	zero,-320(s0)
     e9c:	ec042223          	sw	zero,-316(s0)
     ea0:	ec042423          	sw	zero,-312(s0)
     ea4:	ec042623          	sw	zero,-308(s0)
     ea8:	ec042823          	sw	zero,-304(s0)
     eac:	ec042a23          	sw	zero,-300(s0)
     eb0:	ec042c23          	sw	zero,-296(s0)
     eb4:	00000793          	li	a5,0
     eb8:	00000813          	li	a6,0
     ebc:	fcf42423          	sw	a5,-56(s0)
     ec0:	fd042623          	sw	a6,-52(s0)
     ec4:	fcf42023          	sw	a5,-64(s0)
     ec8:	fd042223          	sw	a6,-60(s0)
     ecc:	01400793          	li	a5,20
     ed0:	eaf42a23          	sw	a5,-332(s0)
     ed4:	eb440793          	add	a5,s0,-332
     ed8:	f6f42823          	sw	a5,-144(s0)
     edc:	f7040793          	add	a5,s0,-144
     ee0:	00078513          	mv	a0,a5
     ee4:	b44ff0ef          	jal	228 <_Z14instrument_cpiIZ4mainEUlvE_EDaOT_>
     ee8:	00050713          	mv	a4,a0
     eec:	00058793          	mv	a5,a1
     ef0:	fce42423          	sw	a4,-56(s0)
     ef4:	fcf42623          	sw	a5,-52(s0)
     ef8:	eb440793          	add	a5,s0,-332
     efc:	f6f42a23          	sw	a5,-140(s0)
     f00:	f7440793          	add	a5,s0,-140
     f04:	00078513          	mv	a0,a5
     f08:	c88ff0ef          	jal	390 <_Z14instrument_cpiIZ4mainEUlvE0_EDaOT_>
     f0c:	00050713          	mv	a4,a0
     f10:	00058793          	mv	a5,a1
     f14:	fce42023          	sw	a4,-64(s0)
     f18:	fcf42223          	sw	a5,-60(s0)
     f1c:	fc842503          	lw	a0,-56(s0)
     f20:	fcc42583          	lw	a1,-52(s0)
     f24:	1cd060ef          	jal	78f0 <_Z11dump_resultx>
     f28:	fc842703          	lw	a4,-56(s0)
     f2c:	fc042783          	lw	a5,-64(s0)
     f30:	02f71063          	bne	a4,a5,f50 <main+0x210>
     f34:	fcc42703          	lw	a4,-52(s0)
     f38:	fc442783          	lw	a5,-60(s0)
     f3c:	00f71a63          	bne	a4,a5,f50 <main+0x210>
     f40:	0003d7b7          	lui	a5,0x3d
     f44:	01078513          	add	a0,a5,16 # 3d010 <_Z12print_matrixPA3_Ki+0x355e0>
     f48:	129060ef          	jal	7870 <_Z10uart_printPKc>
     f4c:	0100006f          	j	f5c <main+0x21c>
     f50:	0003d7b7          	lui	a5,0x3d
     f54:	01478513          	add	a0,a5,20 # 3d014 <_Z12print_matrixPA3_Ki+0x355e4>
     f58:	119060ef          	jal	7870 <_Z10uart_printPKc>
     f5c:	05100793          	li	a5,81
     f60:	eaf42823          	sw	a5,-336(s0)
     f64:	02b00793          	li	a5,43
     f68:	eaf42623          	sw	a5,-340(s0)
     f6c:	ea042423          	sw	zero,-344(s0)
     f70:	ea042223          	sw	zero,-348(s0)
     f74:	ea042023          	sw	zero,-352(s0)
     f78:	e8042e23          	sw	zero,-356(s0)
     f7c:	e8040da3          	sb	zero,-357(s0)
     f80:	eb040793          	add	a5,s0,-336
     f84:	f6f42c23          	sw	a5,-136(s0)
     f88:	eac40793          	add	a5,s0,-340
     f8c:	f6f42e23          	sw	a5,-132(s0)
     f90:	ea840793          	add	a5,s0,-344
     f94:	f8f42023          	sw	a5,-128(s0)
     f98:	f7840793          	add	a5,s0,-136
     f9c:	00078513          	mv	a0,a5
     fa0:	d6cff0ef          	jal	50c <_Z14instrument_cpiIZ4mainEUlvE1_EDaOT_>
     fa4:	00050793          	mv	a5,a0
     fa8:	e8f40da3          	sb	a5,-357(s0)
     fac:	eb040793          	add	a5,s0,-336
     fb0:	f8f42223          	sw	a5,-124(s0)
     fb4:	eac40793          	add	a5,s0,-340
     fb8:	f8f42423          	sw	a5,-120(s0)
     fbc:	ea440793          	add	a5,s0,-348
     fc0:	f8f42623          	sw	a5,-116(s0)
     fc4:	f8440793          	add	a5,s0,-124
     fc8:	00078513          	mv	a0,a5
     fcc:	eacff0ef          	jal	678 <_Z14instrument_cpiIZ4mainEUlvE2_EDaOT_>
     fd0:	00050793          	mv	a5,a0
     fd4:	e8f40da3          	sb	a5,-357(s0)
     fd8:	eb040793          	add	a5,s0,-336
     fdc:	f8f42823          	sw	a5,-112(s0)
     fe0:	eac40793          	add	a5,s0,-340
     fe4:	f8f42a23          	sw	a5,-108(s0)
     fe8:	ea040793          	add	a5,s0,-352
     fec:	f8f42c23          	sw	a5,-104(s0)
     ff0:	f9040793          	add	a5,s0,-112
     ff4:	00078513          	mv	a0,a5
     ff8:	fecff0ef          	jal	7e4 <_Z14instrument_cpiIZ4mainEUlvE3_EDaOT_>
     ffc:	00050793          	mv	a5,a0
    1000:	e8f40da3          	sb	a5,-357(s0)
    1004:	eb040793          	add	a5,s0,-336
    1008:	f8f42e23          	sw	a5,-100(s0)
    100c:	eac40793          	add	a5,s0,-340
    1010:	faf42023          	sw	a5,-96(s0)
    1014:	e9c40793          	add	a5,s0,-356
    1018:	faf42223          	sw	a5,-92(s0)
    101c:	f9c40793          	add	a5,s0,-100
    1020:	00078513          	mv	a0,a5
    1024:	92dff0ef          	jal	950 <_Z14instrument_cpiIZ4mainEUlvE4_EDaOT_>
    1028:	00050793          	mv	a5,a0
    102c:	e8f40da3          	sb	a5,-357(s0)
    1030:	f4840793          	add	a5,s0,-184
    1034:	faf42423          	sw	a5,-88(s0)
    1038:	f2440793          	add	a5,s0,-220
    103c:	faf42623          	sw	a5,-84(s0)
    1040:	edc40793          	add	a5,s0,-292
    1044:	faf42823          	sw	a5,-80(s0)
    1048:	fa840793          	add	a5,s0,-88
    104c:	00078513          	mv	a0,a5
    1050:	a6dff0ef          	jal	abc <_Z14instrument_cpiIZ4mainEUlvE5_EDaOT_>
    1054:	00050793          	mv	a5,a0
    1058:	e8f40da3          	sb	a5,-357(s0)
    105c:	f0040793          	add	a5,s0,-256
    1060:	faf42a23          	sw	a5,-76(s0)
    1064:	f2440793          	add	a5,s0,-220
    1068:	faf42c23          	sw	a5,-72(s0)
    106c:	eb840793          	add	a5,s0,-328
    1070:	faf42e23          	sw	a5,-68(s0)
    1074:	fb440793          	add	a5,s0,-76
    1078:	00078513          	mv	a0,a5
    107c:	badff0ef          	jal	c28 <_Z14instrument_cpiIZ4mainEUlvE6_EDaOT_>
    1080:	00050793          	mv	a5,a0
    1084:	e8f40da3          	sb	a5,-357(s0)
    1088:	eb040793          	add	a5,s0,-336
    108c:	e8f42423          	sw	a5,-376(s0)
    1090:	41f7d793          	sra	a5,a5,0x1f
    1094:	e8f42623          	sw	a5,-372(s0)
    1098:	e8842503          	lw	a0,-376(s0)
    109c:	e8c42583          	lw	a1,-372(s0)
    10a0:	051060ef          	jal	78f0 <_Z11dump_resultx>
    10a4:	eb042783          	lw	a5,-336(s0)
    10a8:	e8f42023          	sw	a5,-384(s0)
    10ac:	41f7d793          	sra	a5,a5,0x1f
    10b0:	e8f42223          	sw	a5,-380(s0)
    10b4:	e8042503          	lw	a0,-384(s0)
    10b8:	e8442583          	lw	a1,-380(s0)
    10bc:	035060ef          	jal	78f0 <_Z11dump_resultx>
    10c0:	eac40793          	add	a5,s0,-340
    10c4:	e6f42c23          	sw	a5,-392(s0)
    10c8:	41f7d793          	sra	a5,a5,0x1f
    10cc:	e6f42e23          	sw	a5,-388(s0)
    10d0:	e7842503          	lw	a0,-392(s0)
    10d4:	e7c42583          	lw	a1,-388(s0)
    10d8:	019060ef          	jal	78f0 <_Z11dump_resultx>
    10dc:	eac42783          	lw	a5,-340(s0)
    10e0:	e6f42823          	sw	a5,-400(s0)
    10e4:	41f7d793          	sra	a5,a5,0x1f
    10e8:	e6f42a23          	sw	a5,-396(s0)
    10ec:	e7042503          	lw	a0,-400(s0)
    10f0:	e7442583          	lw	a1,-396(s0)
    10f4:	7fc060ef          	jal	78f0 <_Z11dump_resultx>
    10f8:	ea840793          	add	a5,s0,-344
    10fc:	e6f42423          	sw	a5,-408(s0)
    1100:	41f7d793          	sra	a5,a5,0x1f
    1104:	e6f42623          	sw	a5,-404(s0)
    1108:	e6842503          	lw	a0,-408(s0)
    110c:	e6c42583          	lw	a1,-404(s0)
    1110:	7e0060ef          	jal	78f0 <_Z11dump_resultx>
    1114:	ea842783          	lw	a5,-344(s0)
    1118:	e6f42023          	sw	a5,-416(s0)
    111c:	41f7d793          	sra	a5,a5,0x1f
    1120:	e6f42223          	sw	a5,-412(s0)
    1124:	e6042503          	lw	a0,-416(s0)
    1128:	e6442583          	lw	a1,-412(s0)
    112c:	7c4060ef          	jal	78f0 <_Z11dump_resultx>
    1130:	ea440793          	add	a5,s0,-348
    1134:	e4f42c23          	sw	a5,-424(s0)
    1138:	41f7d793          	sra	a5,a5,0x1f
    113c:	e4f42e23          	sw	a5,-420(s0)
    1140:	e5842503          	lw	a0,-424(s0)
    1144:	e5c42583          	lw	a1,-420(s0)
    1148:	7a8060ef          	jal	78f0 <_Z11dump_resultx>
    114c:	ea442783          	lw	a5,-348(s0)
    1150:	00078d13          	mv	s10,a5
    1154:	41f7d793          	sra	a5,a5,0x1f
    1158:	00078d93          	mv	s11,a5
    115c:	000d0513          	mv	a0,s10
    1160:	000d8593          	mv	a1,s11
    1164:	78c060ef          	jal	78f0 <_Z11dump_resultx>
    1168:	ea040793          	add	a5,s0,-352
    116c:	00078c13          	mv	s8,a5
    1170:	41f7d793          	sra	a5,a5,0x1f
    1174:	00078c93          	mv	s9,a5
    1178:	000c0513          	mv	a0,s8
    117c:	000c8593          	mv	a1,s9
    1180:	770060ef          	jal	78f0 <_Z11dump_resultx>
    1184:	ea042783          	lw	a5,-352(s0)
    1188:	00078b13          	mv	s6,a5
    118c:	41f7d793          	sra	a5,a5,0x1f
    1190:	00078b93          	mv	s7,a5
    1194:	000b0513          	mv	a0,s6
    1198:	000b8593          	mv	a1,s7
    119c:	754060ef          	jal	78f0 <_Z11dump_resultx>
    11a0:	e9c40793          	add	a5,s0,-356
    11a4:	00078a13          	mv	s4,a5
    11a8:	41f7d793          	sra	a5,a5,0x1f
    11ac:	00078a93          	mv	s5,a5
    11b0:	000a0513          	mv	a0,s4
    11b4:	000a8593          	mv	a1,s5
    11b8:	738060ef          	jal	78f0 <_Z11dump_resultx>
    11bc:	e9c42783          	lw	a5,-356(s0)
    11c0:	00078913          	mv	s2,a5
    11c4:	41f7d793          	sra	a5,a5,0x1f
    11c8:	00078993          	mv	s3,a5
    11cc:	00090513          	mv	a0,s2
    11d0:	00098593          	mv	a1,s3
    11d4:	71c060ef          	jal	78f0 <_Z11dump_resultx>
    11d8:	edc40793          	add	a5,s0,-292
    11dc:	00078513          	mv	a0,a5
    11e0:	051060ef          	jal	7a30 <_Z12print_matrixPA3_Ki>
    11e4:	eb840793          	add	a5,s0,-328
    11e8:	00078513          	mv	a0,a5
    11ec:	045060ef          	jal	7a30 <_Z12print_matrixPA3_Ki>
    11f0:	f6f44783          	lbu	a5,-145(s0)
    11f4:	0ff7f793          	zext.b	a5,a5
    11f8:	00078513          	mv	a0,a5
    11fc:	1ac12083          	lw	ra,428(sp)
    1200:	1a812403          	lw	s0,424(sp)
    1204:	1a412903          	lw	s2,420(sp)
    1208:	1a012983          	lw	s3,416(sp)
    120c:	19c12a03          	lw	s4,412(sp)
    1210:	19812a83          	lw	s5,408(sp)
    1214:	19412b03          	lw	s6,404(sp)
    1218:	19012b83          	lw	s7,400(sp)
    121c:	18c12c03          	lw	s8,396(sp)
    1220:	18812c83          	lw	s9,392(sp)
    1224:	18412d03          	lw	s10,388(sp)
    1228:	18012d83          	lw	s11,384(sp)
    122c:	1b010113          	add	sp,sp,432
    1230:	00008067          	ret

00001234 <__mulsi3>:
    1234:	00050613          	mv	a2,a0
    1238:	00000513          	li	a0,0
    123c:	0015f693          	and	a3,a1,1
    1240:	00068463          	beqz	a3,1248 <__mulsi3+0x14>
    1244:	00c50533          	add	a0,a0,a2
    1248:	0015d593          	srl	a1,a1,0x1
    124c:	00161613          	sll	a2,a2,0x1
    1250:	fe0596e3          	bnez	a1,123c <__mulsi3+0x8>
    1254:	00008067          	ret

00001258 <__divsi3>:
    1258:	06054063          	bltz	a0,12b8 <__umodsi3+0x10>
    125c:	0605c663          	bltz	a1,12c8 <__umodsi3+0x20>

00001260 <__hidden___udivsi3>:
    1260:	00058613          	mv	a2,a1
    1264:	00050593          	mv	a1,a0
    1268:	fff00513          	li	a0,-1
    126c:	02060c63          	beqz	a2,12a4 <__hidden___udivsi3+0x44>
    1270:	00100693          	li	a3,1
    1274:	00b67a63          	bgeu	a2,a1,1288 <__hidden___udivsi3+0x28>
    1278:	00c05863          	blez	a2,1288 <__hidden___udivsi3+0x28>
    127c:	00161613          	sll	a2,a2,0x1
    1280:	00169693          	sll	a3,a3,0x1
    1284:	feb66ae3          	bltu	a2,a1,1278 <__hidden___udivsi3+0x18>
    1288:	00000513          	li	a0,0
    128c:	00c5e663          	bltu	a1,a2,1298 <__hidden___udivsi3+0x38>
    1290:	40c585b3          	sub	a1,a1,a2
    1294:	00d56533          	or	a0,a0,a3
    1298:	0016d693          	srl	a3,a3,0x1
    129c:	00165613          	srl	a2,a2,0x1
    12a0:	fe0696e3          	bnez	a3,128c <__hidden___udivsi3+0x2c>
    12a4:	00008067          	ret

000012a8 <__umodsi3>:
    12a8:	00008293          	mv	t0,ra
    12ac:	fb5ff0ef          	jal	1260 <__hidden___udivsi3>
    12b0:	00058513          	mv	a0,a1
    12b4:	00028067          	jr	t0
    12b8:	40a00533          	neg	a0,a0
    12bc:	00b04863          	bgtz	a1,12cc <__umodsi3+0x24>
    12c0:	40b005b3          	neg	a1,a1
    12c4:	f9dff06f          	j	1260 <__hidden___udivsi3>
    12c8:	40b005b3          	neg	a1,a1
    12cc:	00008293          	mv	t0,ra
    12d0:	f91ff0ef          	jal	1260 <__hidden___udivsi3>
    12d4:	40a00533          	neg	a0,a0
    12d8:	00028067          	jr	t0

000012dc <__modsi3>:
    12dc:	00008293          	mv	t0,ra
    12e0:	0005ca63          	bltz	a1,12f4 <__modsi3+0x18>
    12e4:	00054c63          	bltz	a0,12fc <__modsi3+0x20>
    12e8:	f79ff0ef          	jal	1260 <__hidden___udivsi3>
    12ec:	00058513          	mv	a0,a1
    12f0:	00028067          	jr	t0
    12f4:	40b005b3          	neg	a1,a1
    12f8:	fe0558e3          	bgez	a0,12e8 <__modsi3+0xc>
    12fc:	40a00533          	neg	a0,a0
    1300:	f61ff0ef          	jal	1260 <__hidden___udivsi3>
    1304:	40b00533          	neg	a0,a1
    1308:	00028067          	jr	t0

Disassembly of section .spi_compute:

00003400 <_Z8fib_iteri-0x2000>:
	...

00005400 <_Z8fib_iteri>:
    5400:	fc010113          	add	sp,sp,-64
    5404:	02812e23          	sw	s0,60(sp)
    5408:	04010413          	add	s0,sp,64
    540c:	fca42623          	sw	a0,-52(s0)
    5410:	00100713          	li	a4,1
    5414:	00000793          	li	a5,0
    5418:	fee42423          	sw	a4,-24(s0)
    541c:	fef42623          	sw	a5,-20(s0)
    5420:	00000793          	li	a5,0
    5424:	00000813          	li	a6,0
    5428:	fef42023          	sw	a5,-32(s0)
    542c:	ff042223          	sw	a6,-28(s0)
    5430:	fcf42c23          	sw	a5,-40(s0)
    5434:	fd042e23          	sw	a6,-36(s0)
    5438:	fc042a23          	sw	zero,-44(s0)
    543c:	fcc42703          	lw	a4,-52(s0)
    5440:	05d00793          	li	a5,93
    5444:	00e7d863          	bge	a5,a4,5454 <_Z8fib_iteri+0x54>
    5448:	05c00793          	li	a5,92
    544c:	fcf42a23          	sw	a5,-44(s0)
    5450:	00c0006f          	j	545c <_Z8fib_iteri+0x5c>
    5454:	fcc42783          	lw	a5,-52(s0)
    5458:	fcf42a23          	sw	a5,-44(s0)
    545c:	00100793          	li	a5,1
    5460:	fcf42823          	sw	a5,-48(s0)
    5464:	0600006f          	j	54c4 <_Z8fib_iteri+0xc4>
    5468:	fe842603          	lw	a2,-24(s0)
    546c:	fec42683          	lw	a3,-20(s0)
    5470:	fe042503          	lw	a0,-32(s0)
    5474:	fe442583          	lw	a1,-28(s0)
    5478:	00a60733          	add	a4,a2,a0
    547c:	00070813          	mv	a6,a4
    5480:	00c83833          	sltu	a6,a6,a2
    5484:	00b687b3          	add	a5,a3,a1
    5488:	00f806b3          	add	a3,a6,a5
    548c:	00068793          	mv	a5,a3
    5490:	fce42c23          	sw	a4,-40(s0)
    5494:	fcf42e23          	sw	a5,-36(s0)
    5498:	fe842703          	lw	a4,-24(s0)
    549c:	fec42783          	lw	a5,-20(s0)
    54a0:	fee42023          	sw	a4,-32(s0)
    54a4:	fef42223          	sw	a5,-28(s0)
    54a8:	fd842703          	lw	a4,-40(s0)
    54ac:	fdc42783          	lw	a5,-36(s0)
    54b0:	fee42423          	sw	a4,-24(s0)
    54b4:	fef42623          	sw	a5,-20(s0)
    54b8:	fd042783          	lw	a5,-48(s0)
    54bc:	00178793          	add	a5,a5,1
    54c0:	fcf42823          	sw	a5,-48(s0)
    54c4:	fd042703          	lw	a4,-48(s0)
    54c8:	fd442783          	lw	a5,-44(s0)
    54cc:	f8f74ee3          	blt	a4,a5,5468 <_Z8fib_iteri+0x68>
    54d0:	fd842703          	lw	a4,-40(s0)
    54d4:	fdc42783          	lw	a5,-36(s0)
    54d8:	00070513          	mv	a0,a4
    54dc:	00078593          	mv	a1,a5
    54e0:	03c12403          	lw	s0,60(sp)
    54e4:	04010113          	add	sp,sp,64
    54e8:	00008067          	ret

000054ec <_Z13fib_recursivei>:
    54ec:	fe010113          	add	sp,sp,-32
    54f0:	00112e23          	sw	ra,28(sp)
    54f4:	00812c23          	sw	s0,24(sp)
    54f8:	01212a23          	sw	s2,20(sp)
    54fc:	01312823          	sw	s3,16(sp)
    5500:	02010413          	add	s0,sp,32
    5504:	fea42623          	sw	a0,-20(s0)
    5508:	fec42603          	lw	a2,-20(s0)
    550c:	00100693          	li	a3,1
    5510:	00c6cc63          	blt	a3,a2,5528 <_Z13fib_recursivei+0x3c>
    5514:	fec42683          	lw	a3,-20(s0)
    5518:	00068713          	mv	a4,a3
    551c:	41f6d693          	sra	a3,a3,0x1f
    5520:	00068793          	mv	a5,a3
    5524:	04c0006f          	j	5570 <_Z13fib_recursivei+0x84>
    5528:	fec42783          	lw	a5,-20(s0)
    552c:	fff78793          	add	a5,a5,-1
    5530:	00078513          	mv	a0,a5
    5534:	fb9ff0ef          	jal	54ec <_Z13fib_recursivei>
    5538:	00050913          	mv	s2,a0
    553c:	00058993          	mv	s3,a1
    5540:	fec42783          	lw	a5,-20(s0)
    5544:	ffe78793          	add	a5,a5,-2
    5548:	00078513          	mv	a0,a5
    554c:	fa1ff0ef          	jal	54ec <_Z13fib_recursivei>
    5550:	00050613          	mv	a2,a0
    5554:	00058693          	mv	a3,a1
    5558:	00c90733          	add	a4,s2,a2
    555c:	00070593          	mv	a1,a4
    5560:	0125b5b3          	sltu	a1,a1,s2
    5564:	00d987b3          	add	a5,s3,a3
    5568:	00f586b3          	add	a3,a1,a5
    556c:	00068793          	mv	a5,a3
    5570:	00070513          	mv	a0,a4
    5574:	00078593          	mv	a1,a5
    5578:	01c12083          	lw	ra,28(sp)
    557c:	01812403          	lw	s0,24(sp)
    5580:	01412903          	lw	s2,20(sp)
    5584:	01012983          	lw	s3,16(sp)
    5588:	02010113          	add	sp,sp,32
    558c:	00008067          	ret

00005590 <_Z7mul_ptrPViS0_S0_>:
    5590:	fe010113          	add	sp,sp,-32
    5594:	00112e23          	sw	ra,28(sp)
    5598:	00812c23          	sw	s0,24(sp)
    559c:	02010413          	add	s0,sp,32
    55a0:	fea42623          	sw	a0,-20(s0)
    55a4:	feb42423          	sw	a1,-24(s0)
    55a8:	fec42223          	sw	a2,-28(s0)
    55ac:	fec42783          	lw	a5,-20(s0)
    55b0:	0007a703          	lw	a4,0(a5)
    55b4:	fe842783          	lw	a5,-24(s0)
    55b8:	0007a783          	lw	a5,0(a5)
    55bc:	00078593          	mv	a1,a5
    55c0:	00070513          	mv	a0,a4
    55c4:	c71fb0ef          	jal	1234 <__mulsi3>
    55c8:	00050793          	mv	a5,a0
    55cc:	00078713          	mv	a4,a5
    55d0:	fe442783          	lw	a5,-28(s0)
    55d4:	00e7a023          	sw	a4,0(a5)
    55d8:	00000793          	li	a5,0
    55dc:	00078513          	mv	a0,a5
    55e0:	01c12083          	lw	ra,28(sp)
    55e4:	01812403          	lw	s0,24(sp)
    55e8:	02010113          	add	sp,sp,32
    55ec:	00008067          	ret

000055f0 <_Z7div_ptrPViS0_S0_>:
    55f0:	fe010113          	add	sp,sp,-32
    55f4:	00112e23          	sw	ra,28(sp)
    55f8:	00812c23          	sw	s0,24(sp)
    55fc:	02010413          	add	s0,sp,32
    5600:	fea42623          	sw	a0,-20(s0)
    5604:	feb42423          	sw	a1,-24(s0)
    5608:	fec42223          	sw	a2,-28(s0)
    560c:	fec42783          	lw	a5,-20(s0)
    5610:	0007a703          	lw	a4,0(a5)
    5614:	fe842783          	lw	a5,-24(s0)
    5618:	0007a783          	lw	a5,0(a5)
    561c:	00078593          	mv	a1,a5
    5620:	00070513          	mv	a0,a4
    5624:	c35fb0ef          	jal	1258 <__divsi3>
    5628:	00050793          	mv	a5,a0
    562c:	00078713          	mv	a4,a5
    5630:	fe442783          	lw	a5,-28(s0)
    5634:	00e7a023          	sw	a4,0(a5)
    5638:	00000793          	li	a5,0
    563c:	00078513          	mv	a0,a5
    5640:	01c12083          	lw	ra,28(sp)
    5644:	01812403          	lw	s0,24(sp)
    5648:	02010113          	add	sp,sp,32
    564c:	00008067          	ret

00005650 <_Z6matmulPA3_KiPA3_iS3_>:
    5650:	fd010113          	add	sp,sp,-48
    5654:	02112623          	sw	ra,44(sp)
    5658:	02812423          	sw	s0,40(sp)
    565c:	03010413          	add	s0,sp,48
    5660:	fca42e23          	sw	a0,-36(s0)
    5664:	fcb42c23          	sw	a1,-40(s0)
    5668:	fcc42a23          	sw	a2,-44(s0)
    566c:	fe042623          	sw	zero,-20(s0)
    5670:	1080006f          	j	5778 <_Z6matmulPA3_KiPA3_iS3_+0x128>
    5674:	fe042423          	sw	zero,-24(s0)
    5678:	0e80006f          	j	5760 <_Z6matmulPA3_KiPA3_iS3_+0x110>
    567c:	fe042223          	sw	zero,-28(s0)
    5680:	fe042023          	sw	zero,-32(s0)
    5684:	0900006f          	j	5714 <_Z6matmulPA3_KiPA3_iS3_+0xc4>
    5688:	fec42703          	lw	a4,-20(s0)
    568c:	00070793          	mv	a5,a4
    5690:	00179793          	sll	a5,a5,0x1
    5694:	00e787b3          	add	a5,a5,a4
    5698:	00279793          	sll	a5,a5,0x2
    569c:	00078713          	mv	a4,a5
    56a0:	fdc42783          	lw	a5,-36(s0)
    56a4:	00e78733          	add	a4,a5,a4
    56a8:	fe042783          	lw	a5,-32(s0)
    56ac:	00279793          	sll	a5,a5,0x2
    56b0:	00f707b3          	add	a5,a4,a5
    56b4:	0007a683          	lw	a3,0(a5)
    56b8:	fe042703          	lw	a4,-32(s0)
    56bc:	00070793          	mv	a5,a4
    56c0:	00179793          	sll	a5,a5,0x1
    56c4:	00e787b3          	add	a5,a5,a4
    56c8:	00279793          	sll	a5,a5,0x2
    56cc:	00078713          	mv	a4,a5
    56d0:	fd842783          	lw	a5,-40(s0)
    56d4:	00e78733          	add	a4,a5,a4
    56d8:	fe842783          	lw	a5,-24(s0)
    56dc:	00279793          	sll	a5,a5,0x2
    56e0:	00f707b3          	add	a5,a4,a5
    56e4:	0007a783          	lw	a5,0(a5)
    56e8:	00078593          	mv	a1,a5
    56ec:	00068513          	mv	a0,a3
    56f0:	b45fb0ef          	jal	1234 <__mulsi3>
    56f4:	00050793          	mv	a5,a0
    56f8:	00078713          	mv	a4,a5
    56fc:	fe442783          	lw	a5,-28(s0)
    5700:	00e787b3          	add	a5,a5,a4
    5704:	fef42223          	sw	a5,-28(s0)
    5708:	fe042783          	lw	a5,-32(s0)
    570c:	00178793          	add	a5,a5,1
    5710:	fef42023          	sw	a5,-32(s0)
    5714:	fe042703          	lw	a4,-32(s0)
    5718:	00200793          	li	a5,2
    571c:	f6e7d6e3          	bge	a5,a4,5688 <_Z6matmulPA3_KiPA3_iS3_+0x38>
    5720:	fec42703          	lw	a4,-20(s0)
    5724:	00070793          	mv	a5,a4
    5728:	00179793          	sll	a5,a5,0x1
    572c:	00e787b3          	add	a5,a5,a4
    5730:	00279793          	sll	a5,a5,0x2
    5734:	00078713          	mv	a4,a5
    5738:	fd442783          	lw	a5,-44(s0)
    573c:	00e78733          	add	a4,a5,a4
    5740:	fe842783          	lw	a5,-24(s0)
    5744:	00279793          	sll	a5,a5,0x2
    5748:	00f707b3          	add	a5,a4,a5
    574c:	fe442703          	lw	a4,-28(s0)
    5750:	00e7a023          	sw	a4,0(a5)
    5754:	fe842783          	lw	a5,-24(s0)
    5758:	00178793          	add	a5,a5,1
    575c:	fef42423          	sw	a5,-24(s0)
    5760:	fe842703          	lw	a4,-24(s0)
    5764:	00200793          	li	a5,2
    5768:	f0e7dae3          	bge	a5,a4,567c <_Z6matmulPA3_KiPA3_iS3_+0x2c>
    576c:	fec42783          	lw	a5,-20(s0)
    5770:	00178793          	add	a5,a5,1
    5774:	fef42623          	sw	a5,-20(s0)
    5778:	fec42703          	lw	a4,-20(s0)
    577c:	00200793          	li	a5,2
    5780:	eee7dae3          	bge	a5,a4,5674 <_Z6matmulPA3_KiPA3_iS3_+0x24>
    5784:	00000793          	li	a5,0
    5788:	00078513          	mv	a0,a5
    578c:	02c12083          	lw	ra,44(sp)
    5790:	02812403          	lw	s0,40(sp)
    5794:	03010113          	add	sp,sp,48
    5798:	00008067          	ret

Disassembly of section .spi_uart:

00005800 <_Z9uart_putcc-0x2000>:
	...

00007800 <_Z9uart_putcc>:
    7800:	fd010113          	add	sp,sp,-48
    7804:	02812623          	sw	s0,44(sp)
    7808:	03010413          	add	s0,sp,48
    780c:	00050793          	mv	a5,a0
    7810:	fcf40fa3          	sb	a5,-33(s0)
    7814:	002017b7          	lui	a5,0x201
    7818:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    781c:	0007a783          	lw	a5,0(a5)
    7820:	fef42623          	sw	a5,-20(s0)
    7824:	002017b7          	lui	a5,0x201
    7828:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    782c:	fdf44703          	lbu	a4,-33(s0)
    7830:	00e78023          	sb	a4,0(a5)
    7834:	fe042423          	sw	zero,-24(s0)
    7838:	0100006f          	j	7848 <_Z9uart_putcc+0x48>
    783c:	fe842783          	lw	a5,-24(s0)
    7840:	00178793          	add	a5,a5,1
    7844:	fef42423          	sw	a5,-24(s0)
    7848:	fe842783          	lw	a5,-24(s0)
    784c:	fec42703          	lw	a4,-20(s0)
    7850:	00e7a7b3          	slt	a5,a5,a4
    7854:	0ff7f793          	zext.b	a5,a5
    7858:	fe0792e3          	bnez	a5,783c <_Z9uart_putcc+0x3c>
    785c:	00000013          	nop
    7860:	00000013          	nop
    7864:	02c12403          	lw	s0,44(sp)
    7868:	03010113          	add	sp,sp,48
    786c:	00008067          	ret

00007870 <_Z10uart_printPKc>:
    7870:	fd010113          	add	sp,sp,-48
    7874:	02112623          	sw	ra,44(sp)
    7878:	02812423          	sw	s0,40(sp)
    787c:	03010413          	add	s0,sp,48
    7880:	fca42e23          	sw	a0,-36(s0)
    7884:	fe042623          	sw	zero,-20(s0)
    7888:	0400006f          	j	78c8 <_Z10uart_printPKc+0x58>
    788c:	fec42783          	lw	a5,-20(s0)
    7890:	fdc42703          	lw	a4,-36(s0)
    7894:	00f707b3          	add	a5,a4,a5
    7898:	0007c783          	lbu	a5,0(a5)
    789c:	02078e63          	beqz	a5,78d8 <_Z10uart_printPKc+0x68>
    78a0:	fec42783          	lw	a5,-20(s0)
    78a4:	fdc42703          	lw	a4,-36(s0)
    78a8:	00f707b3          	add	a5,a4,a5
    78ac:	0007c783          	lbu	a5,0(a5)
    78b0:	00078513          	mv	a0,a5
    78b4:	f4dff0ef          	jal	7800 <_Z9uart_putcc>
    78b8:	00000013          	nop
    78bc:	fec42783          	lw	a5,-20(s0)
    78c0:	00178793          	add	a5,a5,1
    78c4:	fef42623          	sw	a5,-20(s0)
    78c8:	fec42703          	lw	a4,-20(s0)
    78cc:	07f00793          	li	a5,127
    78d0:	fae7dee3          	bge	a5,a4,788c <_Z10uart_printPKc+0x1c>
    78d4:	0080006f          	j	78dc <_Z10uart_printPKc+0x6c>
    78d8:	00000013          	nop
    78dc:	00000013          	nop
    78e0:	02c12083          	lw	ra,44(sp)
    78e4:	02812403          	lw	s0,40(sp)
    78e8:	03010113          	add	sp,sp,48
    78ec:	00008067          	ret

000078f0 <_Z11dump_resultx>:
    78f0:	fc010113          	add	sp,sp,-64
    78f4:	02112e23          	sw	ra,60(sp)
    78f8:	02812c23          	sw	s0,56(sp)
    78fc:	04010413          	add	s0,sp,64
    7900:	fca42423          	sw	a0,-56(s0)
    7904:	fcb42623          	sw	a1,-52(s0)
    7908:	fe042623          	sw	zero,-20(s0)
    790c:	0700006f          	j	797c <_Z11dump_resultx+0x8c>
    7910:	fec42683          	lw	a3,-20(s0)
    7914:	00369693          	sll	a3,a3,0x3
    7918:	fe068613          	add	a2,a3,-32
    791c:	00064c63          	bltz	a2,7934 <_Z11dump_resultx+0x44>
    7920:	fcc42683          	lw	a3,-52(s0)
    7924:	40c6d733          	sra	a4,a3,a2
    7928:	fcc42683          	lw	a3,-52(s0)
    792c:	41f6d793          	sra	a5,a3,0x1f
    7930:	02c0006f          	j	795c <_Z11dump_resultx+0x6c>
    7934:	fcc42603          	lw	a2,-52(s0)
    7938:	00161593          	sll	a1,a2,0x1
    793c:	01f00613          	li	a2,31
    7940:	40d60633          	sub	a2,a2,a3
    7944:	00c59633          	sll	a2,a1,a2
    7948:	fc842583          	lw	a1,-56(s0)
    794c:	00d5d733          	srl	a4,a1,a3
    7950:	00e66733          	or	a4,a2,a4
    7954:	fcc42603          	lw	a2,-52(s0)
    7958:	40d657b3          	sra	a5,a2,a3
    795c:	0ff77613          	zext.b	a2,a4
    7960:	fec42683          	lw	a3,-20(s0)
    7964:	ff068693          	add	a3,a3,-16
    7968:	008686b3          	add	a3,a3,s0
    796c:	fec68423          	sb	a2,-24(a3)
    7970:	fec42683          	lw	a3,-20(s0)
    7974:	00168693          	add	a3,a3,1
    7978:	fed42623          	sw	a3,-20(s0)
    797c:	fec42603          	lw	a2,-20(s0)
    7980:	00700693          	li	a3,7
    7984:	f8c6d6e3          	bge	a3,a2,7910 <_Z11dump_resultx+0x20>
    7988:	00800793          	li	a5,8
    798c:	fef42423          	sw	a5,-24(s0)
    7990:	0100006f          	j	79a0 <_Z11dump_resultx+0xb0>
    7994:	fe842783          	lw	a5,-24(s0)
    7998:	fff78793          	add	a5,a5,-1
    799c:	fef42423          	sw	a5,-24(s0)
    79a0:	fe842703          	lw	a4,-24(s0)
    79a4:	00100793          	li	a5,1
    79a8:	00e7de63          	bge	a5,a4,79c4 <_Z11dump_resultx+0xd4>
    79ac:	fe842783          	lw	a5,-24(s0)
    79b0:	fff78793          	add	a5,a5,-1
    79b4:	ff078793          	add	a5,a5,-16
    79b8:	008787b3          	add	a5,a5,s0
    79bc:	fe87c783          	lbu	a5,-24(a5)
    79c0:	fc078ae3          	beqz	a5,7994 <_Z11dump_resultx+0xa4>
    79c4:	04400513          	li	a0,68
    79c8:	e39ff0ef          	jal	7800 <_Z9uart_putcc>
    79cc:	fe842783          	lw	a5,-24(s0)
    79d0:	0ff7f793          	zext.b	a5,a5
    79d4:	00078513          	mv	a0,a5
    79d8:	e29ff0ef          	jal	7800 <_Z9uart_putcc>
    79dc:	fe042223          	sw	zero,-28(s0)
    79e0:	02c0006f          	j	7a0c <_Z11dump_resultx+0x11c>
    79e4:	fe442783          	lw	a5,-28(s0)
    79e8:	ff078793          	add	a5,a5,-16
    79ec:	008787b3          	add	a5,a5,s0
    79f0:	fe87c783          	lbu	a5,-24(a5)
    79f4:	00078513          	mv	a0,a5
    79f8:	e09ff0ef          	jal	7800 <_Z9uart_putcc>
    79fc:	00000013          	nop
    7a00:	fe442783          	lw	a5,-28(s0)
    7a04:	00178793          	add	a5,a5,1
    7a08:	fef42223          	sw	a5,-28(s0)
    7a0c:	fe442703          	lw	a4,-28(s0)
    7a10:	fe842783          	lw	a5,-24(s0)
    7a14:	fcf748e3          	blt	a4,a5,79e4 <_Z11dump_resultx+0xf4>
    7a18:	00000013          	nop
    7a1c:	00000013          	nop
    7a20:	03c12083          	lw	ra,60(sp)
    7a24:	03812403          	lw	s0,56(sp)
    7a28:	04010113          	add	sp,sp,64
    7a2c:	00008067          	ret

00007a30 <_Z12print_matrixPA3_Ki>:
    7a30:	fd010113          	add	sp,sp,-48
    7a34:	02112623          	sw	ra,44(sp)
    7a38:	02812423          	sw	s0,40(sp)
    7a3c:	03212223          	sw	s2,36(sp)
    7a40:	03312023          	sw	s3,32(sp)
    7a44:	03010413          	add	s0,sp,48
    7a48:	fca42e23          	sw	a0,-36(s0)
    7a4c:	fe042623          	sw	zero,-20(s0)
    7a50:	0880006f          	j	7ad8 <_Z12print_matrixPA3_Ki+0xa8>
    7a54:	fe042423          	sw	zero,-24(s0)
    7a58:	0580006f          	j	7ab0 <_Z12print_matrixPA3_Ki+0x80>
    7a5c:	fec42703          	lw	a4,-20(s0)
    7a60:	00070793          	mv	a5,a4
    7a64:	00179793          	sll	a5,a5,0x1
    7a68:	00e787b3          	add	a5,a5,a4
    7a6c:	00279793          	sll	a5,a5,0x2
    7a70:	00078713          	mv	a4,a5
    7a74:	fdc42783          	lw	a5,-36(s0)
    7a78:	00e78733          	add	a4,a5,a4
    7a7c:	fe842783          	lw	a5,-24(s0)
    7a80:	00279793          	sll	a5,a5,0x2
    7a84:	00f707b3          	add	a5,a4,a5
    7a88:	0007a783          	lw	a5,0(a5)
    7a8c:	00078913          	mv	s2,a5
    7a90:	41f7d793          	sra	a5,a5,0x1f
    7a94:	00078993          	mv	s3,a5
    7a98:	00090513          	mv	a0,s2
    7a9c:	00098593          	mv	a1,s3
    7aa0:	e51ff0ef          	jal	78f0 <_Z11dump_resultx>
    7aa4:	fe842783          	lw	a5,-24(s0)
    7aa8:	00178793          	add	a5,a5,1
    7aac:	fef42423          	sw	a5,-24(s0)
    7ab0:	fe842703          	lw	a4,-24(s0)
    7ab4:	00200793          	li	a5,2
    7ab8:	fae7d2e3          	bge	a5,a4,7a5c <_Z12print_matrixPA3_Ki+0x2c>
    7abc:	a0a0a537          	lui	a0,0xa0a0a
    7ac0:	0a050513          	add	a0,a0,160 # a0a0a0a0 <GET_WATCHDOG_LOW+0xa0809060>
    7ac4:	00000593          	li	a1,0
    7ac8:	e29ff0ef          	jal	78f0 <_Z11dump_resultx>
    7acc:	fec42783          	lw	a5,-20(s0)
    7ad0:	00178793          	add	a5,a5,1
    7ad4:	fef42623          	sw	a5,-20(s0)
    7ad8:	fec42703          	lw	a4,-20(s0)
    7adc:	00200793          	li	a5,2
    7ae0:	f6e7dae3          	bge	a5,a4,7a54 <_Z12print_matrixPA3_Ki+0x24>
    7ae4:	fff00513          	li	a0,-1
    7ae8:	fff00593          	li	a1,-1
    7aec:	e05ff0ef          	jal	78f0 <_Z11dump_resultx>
    7af0:	00000013          	nop
    7af4:	02c12083          	lw	ra,44(sp)
    7af8:	02812403          	lw	s0,40(sp)
    7afc:	02412903          	lw	s2,36(sp)
    7b00:	02012983          	lw	s3,32(sp)
    7b04:	03010113          	add	sp,sp,48
    7b08:	00008067          	ret
