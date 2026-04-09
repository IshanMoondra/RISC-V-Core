
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
      2c:	04878513          	add	a0,a5,72 # 30048 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27aac>
      30:	4ad070ef          	jal	7cdc <_Z10uart_printPKc>
      34:	00048513          	mv	a0,s1
      38:	701070ef          	jal	7f38 <_Z16uart_print_int32i>
      3c:	00000013          	nop
      40:	000307b7          	lui	a5,0x30
      44:	05878513          	add	a0,a5,88 # 30058 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27abc>
      48:	495070ef          	jal	7cdc <_Z10uart_printPKc>
      4c:	002017b7          	lui	a5,0x201
      50:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
      54:	0007a783          	lw	a5,0(a5)
      58:	00078513          	mv	a0,a5
      5c:	6dd070ef          	jal	7f38 <_Z16uart_print_int32i>
      60:	00000013          	nop
      64:	000307b7          	lui	a5,0x30
      68:	07878513          	add	a0,a5,120 # 30078 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27adc>
      6c:	471070ef          	jal	7cdc <_Z10uart_printPKc>
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
      d0:	00878513          	add	a0,a5,8 # 30008 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27a6c>
      d4:	409070ef          	jal	7cdc <_Z10uart_printPKc>
      d8:	448050ef          	jal	5520 <_Z8cmd_freev>
      dc:	000307b7          	lui	a5,0x30
      e0:	01478513          	add	a0,a5,20 # 30014 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27a78>
      e4:	3f9070ef          	jal	7cdc <_Z10uart_printPKc>
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
     120:	731070ef          	jal	8050 <_Z16uart_print_int64x>
     124:	00000013          	nop
     128:	000307b7          	lui	a5,0x30
     12c:	03078513          	add	a0,a5,48 # 30030 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27a94>
     130:	3ad070ef          	jal	7cdc <_Z10uart_printPKc>
     134:	000307b7          	lui	a5,0x30
     138:	04078513          	add	a0,a5,64 # 30040 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27aa4>
     13c:	3a1070ef          	jal	7cdc <_Z10uart_printPKc>
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
     194:	038080ef          	jal	81cc <_Z12uart_getlinePci>
     198:	ee040613          	add	a2,s0,-288
     19c:	f4040593          	add	a1,s0,-192
     1a0:	f6040793          	add	a5,s0,-160
     1a4:	fe442703          	lw	a4,-28(s0)
     1a8:	fe842683          	lw	a3,-24(s0)
     1ac:	00078513          	mv	a0,a5
     1b0:	3ec080ef          	jal	859c <_Z17cmd_arg_tokenizerPcS_S_ii>
     1b4:	fe340693          	add	a3,s0,-29
     1b8:	ee040713          	add	a4,s0,-288
     1bc:	f4040793          	add	a5,s0,-192
     1c0:	00068613          	mv	a2,a3
     1c4:	00070593          	mv	a1,a4
     1c8:	00078513          	mv	a0,a5
     1cc:	2a0080ef          	jal	846c <_Z15process_commandPcS_PVb>
     1d0:	000307b7          	lui	a5,0x30
     1d4:	00078513          	mv	a0,a5
     1d8:	305070ef          	jal	7cdc <_Z10uart_printPKc>
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
     214:	2e4050ef          	jal	54f8 <_ZL6get_spv>
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

00000244 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>:
     244:	fe010113          	add	sp,sp,-32
     248:	00112e23          	sw	ra,28(sp)
     24c:	00812c23          	sw	s0,24(sp)
     250:	02010413          	add	s0,sp,32
     254:	fea42623          	sw	a0,-20(s0)
     258:	fec42783          	lw	a5,-20(s0)
     25c:	0007a703          	lw	a4,0(a5)
     260:	fec42783          	lw	a5,-20(s0)
     264:	0047a683          	lw	a3,4(a5)
     268:	fec42783          	lw	a5,-20(s0)
     26c:	0087a783          	lw	a5,8(a5)
     270:	00078613          	mv	a2,a5
     274:	00068593          	mv	a1,a3
     278:	00070513          	mv	a0,a4
     27c:	3ec050ef          	jal	5668 <_Z6matmulPA3_KiPA3_iS3_>
     280:	00050793          	mv	a5,a0
     284:	00078513          	mv	a0,a5
     288:	01c12083          	lw	ra,28(sp)
     28c:	01812403          	lw	s0,24(sp)
     290:	02010113          	add	sp,sp,32
     294:	00008067          	ret

00000298 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>:
     298:	fc010113          	add	sp,sp,-64
     29c:	02112e23          	sw	ra,60(sp)
     2a0:	02812c23          	sw	s0,56(sp)
     2a4:	04010413          	add	s0,sp,64
     2a8:	fca42623          	sw	a0,-52(s0)
     2ac:	002017b7          	lui	a5,0x201
     2b0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     2b4:	0007a783          	lw	a5,0(a5)
     2b8:	fef42623          	sw	a5,-20(s0)
     2bc:	002017b7          	lui	a5,0x201
     2c0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     2c4:	0007a783          	lw	a5,0(a5)
     2c8:	fef42423          	sw	a5,-24(s0)
     2cc:	fcc42503          	lw	a0,-52(s0)
     2d0:	f75ff0ef          	jal	244 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>
     2d4:	00050793          	mv	a5,a0
     2d8:	fef403a3          	sb	a5,-25(s0)
     2dc:	002017b7          	lui	a5,0x201
     2e0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     2e4:	0007a783          	lw	a5,0(a5)
     2e8:	fef42023          	sw	a5,-32(s0)
     2ec:	002017b7          	lui	a5,0x201
     2f0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     2f4:	0007a783          	lw	a5,0(a5)
     2f8:	fcf42e23          	sw	a5,-36(s0)
     2fc:	fdc42703          	lw	a4,-36(s0)
     300:	fec42783          	lw	a5,-20(s0)
     304:	40f707b3          	sub	a5,a4,a5
     308:	fcf42c23          	sw	a5,-40(s0)
     30c:	fe042703          	lw	a4,-32(s0)
     310:	fe842783          	lw	a5,-24(s0)
     314:	40f707b3          	sub	a5,a4,a5
     318:	fcf42a23          	sw	a5,-44(s0)
     31c:	000307b7          	lui	a5,0x30
     320:	23478513          	add	a0,a5,564 # 30234 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c98>
     324:	1b9070ef          	jal	7cdc <_Z10uart_printPKc>
     328:	fd842503          	lw	a0,-40(s0)
     32c:	40d070ef          	jal	7f38 <_Z16uart_print_int32i>
     330:	00000013          	nop
     334:	000307b7          	lui	a5,0x30
     338:	25078513          	add	a0,a5,592 # 30250 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb4>
     33c:	1a1070ef          	jal	7cdc <_Z10uart_printPKc>
     340:	000307b7          	lui	a5,0x30
     344:	25478513          	add	a0,a5,596 # 30254 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb8>
     348:	195070ef          	jal	7cdc <_Z10uart_printPKc>
     34c:	fd442503          	lw	a0,-44(s0)
     350:	3e9070ef          	jal	7f38 <_Z16uart_print_int32i>
     354:	00000013          	nop
     358:	000307b7          	lui	a5,0x30
     35c:	25078513          	add	a0,a5,592 # 30250 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb4>
     360:	17d070ef          	jal	7cdc <_Z10uart_printPKc>
     364:	fe744783          	lbu	a5,-25(s0)
     368:	00078513          	mv	a0,a5
     36c:	03c12083          	lw	ra,60(sp)
     370:	03812403          	lw	s0,56(sp)
     374:	04010113          	add	sp,sp,64
     378:	00008067          	ret

0000037c <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>:
     37c:	fe010113          	add	sp,sp,-32
     380:	00112e23          	sw	ra,28(sp)
     384:	00812c23          	sw	s0,24(sp)
     388:	02010413          	add	s0,sp,32
     38c:	fea42623          	sw	a0,-20(s0)
     390:	fec42783          	lw	a5,-20(s0)
     394:	0007a703          	lw	a4,0(a5)
     398:	fec42783          	lw	a5,-20(s0)
     39c:	0047a683          	lw	a3,4(a5)
     3a0:	fec42783          	lw	a5,-20(s0)
     3a4:	0087a783          	lw	a5,8(a5)
     3a8:	00078613          	mv	a2,a5
     3ac:	00068593          	mv	a1,a3
     3b0:	00070513          	mv	a0,a4
     3b4:	2b4050ef          	jal	5668 <_Z6matmulPA3_KiPA3_iS3_>
     3b8:	00050793          	mv	a5,a0
     3bc:	00078513          	mv	a0,a5
     3c0:	01c12083          	lw	ra,28(sp)
     3c4:	01812403          	lw	s0,24(sp)
     3c8:	02010113          	add	sp,sp,32
     3cc:	00008067          	ret

000003d0 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>:
     3d0:	fc010113          	add	sp,sp,-64
     3d4:	02112e23          	sw	ra,60(sp)
     3d8:	02812c23          	sw	s0,56(sp)
     3dc:	04010413          	add	s0,sp,64
     3e0:	fca42623          	sw	a0,-52(s0)
     3e4:	002017b7          	lui	a5,0x201
     3e8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     3ec:	0007a783          	lw	a5,0(a5)
     3f0:	fef42623          	sw	a5,-20(s0)
     3f4:	002017b7          	lui	a5,0x201
     3f8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     3fc:	0007a783          	lw	a5,0(a5)
     400:	fef42423          	sw	a5,-24(s0)
     404:	fcc42503          	lw	a0,-52(s0)
     408:	f75ff0ef          	jal	37c <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>
     40c:	00050793          	mv	a5,a0
     410:	fef403a3          	sb	a5,-25(s0)
     414:	002017b7          	lui	a5,0x201
     418:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     41c:	0007a783          	lw	a5,0(a5)
     420:	fef42023          	sw	a5,-32(s0)
     424:	002017b7          	lui	a5,0x201
     428:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     42c:	0007a783          	lw	a5,0(a5)
     430:	fcf42e23          	sw	a5,-36(s0)
     434:	fdc42703          	lw	a4,-36(s0)
     438:	fec42783          	lw	a5,-20(s0)
     43c:	40f707b3          	sub	a5,a4,a5
     440:	fcf42c23          	sw	a5,-40(s0)
     444:	fe042703          	lw	a4,-32(s0)
     448:	fe842783          	lw	a5,-24(s0)
     44c:	40f707b3          	sub	a5,a4,a5
     450:	fcf42a23          	sw	a5,-44(s0)
     454:	000307b7          	lui	a5,0x30
     458:	23478513          	add	a0,a5,564 # 30234 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c98>
     45c:	081070ef          	jal	7cdc <_Z10uart_printPKc>
     460:	fd842503          	lw	a0,-40(s0)
     464:	2d5070ef          	jal	7f38 <_Z16uart_print_int32i>
     468:	00000013          	nop
     46c:	000307b7          	lui	a5,0x30
     470:	25078513          	add	a0,a5,592 # 30250 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb4>
     474:	069070ef          	jal	7cdc <_Z10uart_printPKc>
     478:	000307b7          	lui	a5,0x30
     47c:	25478513          	add	a0,a5,596 # 30254 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb8>
     480:	05d070ef          	jal	7cdc <_Z10uart_printPKc>
     484:	fd442503          	lw	a0,-44(s0)
     488:	2b1070ef          	jal	7f38 <_Z16uart_print_int32i>
     48c:	00000013          	nop
     490:	000307b7          	lui	a5,0x30
     494:	25078513          	add	a0,a5,592 # 30250 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cb4>
     498:	045070ef          	jal	7cdc <_Z10uart_printPKc>
     49c:	fe744783          	lbu	a5,-25(s0)
     4a0:	00078513          	mv	a0,a5
     4a4:	03c12083          	lw	ra,60(sp)
     4a8:	03812403          	lw	s0,56(sp)
     4ac:	04010113          	add	sp,sp,64
     4b0:	00008067          	ret

000004b4 <__divdi3>:
     4b4:	fc010113          	add	sp,sp,-64
     4b8:	02912a23          	sw	s1,52(sp)
     4bc:	03412423          	sw	s4,40(sp)
     4c0:	02112e23          	sw	ra,60(sp)
     4c4:	02812c23          	sw	s0,56(sp)
     4c8:	03212823          	sw	s2,48(sp)
     4cc:	03312623          	sw	s3,44(sp)
     4d0:	03512223          	sw	s5,36(sp)
     4d4:	03612023          	sw	s6,32(sp)
     4d8:	01712e23          	sw	s7,28(sp)
     4dc:	01812c23          	sw	s8,24(sp)
     4e0:	01912a23          	sw	s9,20(sp)
     4e4:	01a12823          	sw	s10,16(sp)
     4e8:	01b12623          	sw	s11,12(sp)
     4ec:	00050a13          	mv	s4,a0
     4f0:	00000493          	li	s1,0
     4f4:	0005dc63          	bgez	a1,50c <__divdi3+0x58>
     4f8:	00a037b3          	snez	a5,a0
     4fc:	40b005b3          	neg	a1,a1
     500:	40f585b3          	sub	a1,a1,a5
     504:	40a00a33          	neg	s4,a0
     508:	fff00493          	li	s1,-1
     50c:	0006dc63          	bgez	a3,524 <__divdi3+0x70>
     510:	00c037b3          	snez	a5,a2
     514:	40d006b3          	neg	a3,a3
     518:	fff4c493          	not	s1,s1
     51c:	40f686b3          	sub	a3,a3,a5
     520:	40c00633          	neg	a2,a2
     524:	00060a93          	mv	s5,a2
     528:	000a0993          	mv	s3,s4
     52c:	00058913          	mv	s2,a1
     530:	38069c63          	bnez	a3,8c8 <__divdi3+0x414>
     534:	00030697          	auipc	a3,0x30
     538:	db068693          	add	a3,a3,-592 # 302e4 <__clz_tab>
     53c:	12c5f663          	bgeu	a1,a2,668 <__divdi3+0x1b4>
     540:	000107b7          	lui	a5,0x10
     544:	10f67863          	bgeu	a2,a5,654 <__divdi3+0x1a0>
     548:	10063793          	sltiu	a5,a2,256
     54c:	0017c793          	xor	a5,a5,1
     550:	00379793          	sll	a5,a5,0x3
     554:	00f65733          	srl	a4,a2,a5
     558:	00e686b3          	add	a3,a3,a4
     55c:	0006c703          	lbu	a4,0(a3)
     560:	02000693          	li	a3,32
     564:	00f707b3          	add	a5,a4,a5
     568:	40f68733          	sub	a4,a3,a5
     56c:	00f68c63          	beq	a3,a5,584 <__divdi3+0xd0>
     570:	00e59933          	sll	s2,a1,a4
     574:	00fa57b3          	srl	a5,s4,a5
     578:	00e61ab3          	sll	s5,a2,a4
     57c:	0127e933          	or	s2,a5,s2
     580:	00ea19b3          	sll	s3,s4,a4
     584:	010adb13          	srl	s6,s5,0x10
     588:	000b0593          	mv	a1,s6
     58c:	00090513          	mv	a0,s2
     590:	010a9b93          	sll	s7,s5,0x10
     594:	281000ef          	jal	1014 <__hidden___udivsi3>
     598:	010bdb93          	srl	s7,s7,0x10
     59c:	00050593          	mv	a1,a0
     5a0:	00050a13          	mv	s4,a0
     5a4:	000b8513          	mv	a0,s7
     5a8:	241000ef          	jal	fe8 <__mulsi3>
     5ac:	00050413          	mv	s0,a0
     5b0:	000b0593          	mv	a1,s6
     5b4:	00090513          	mv	a0,s2
     5b8:	2a5000ef          	jal	105c <__umodsi3>
     5bc:	01051513          	sll	a0,a0,0x10
     5c0:	0109d713          	srl	a4,s3,0x10
     5c4:	00a76733          	or	a4,a4,a0
     5c8:	000a0913          	mv	s2,s4
     5cc:	00877e63          	bgeu	a4,s0,5e8 <__divdi3+0x134>
     5d0:	00ea8733          	add	a4,s5,a4
     5d4:	fffa0913          	add	s2,s4,-1
     5d8:	01576863          	bltu	a4,s5,5e8 <__divdi3+0x134>
     5dc:	00877663          	bgeu	a4,s0,5e8 <__divdi3+0x134>
     5e0:	ffea0913          	add	s2,s4,-2
     5e4:	01570733          	add	a4,a4,s5
     5e8:	40870433          	sub	s0,a4,s0
     5ec:	000b0593          	mv	a1,s6
     5f0:	00040513          	mv	a0,s0
     5f4:	221000ef          	jal	1014 <__hidden___udivsi3>
     5f8:	00050593          	mv	a1,a0
     5fc:	00050a13          	mv	s4,a0
     600:	000b8513          	mv	a0,s7
     604:	1e5000ef          	jal	fe8 <__mulsi3>
     608:	00050b93          	mv	s7,a0
     60c:	000b0593          	mv	a1,s6
     610:	00040513          	mv	a0,s0
     614:	249000ef          	jal	105c <__umodsi3>
     618:	01099993          	sll	s3,s3,0x10
     61c:	01051513          	sll	a0,a0,0x10
     620:	0109d993          	srl	s3,s3,0x10
     624:	00a9e9b3          	or	s3,s3,a0
     628:	000a0713          	mv	a4,s4
     62c:	0179fc63          	bgeu	s3,s7,644 <__divdi3+0x190>
     630:	013a89b3          	add	s3,s5,s3
     634:	fffa0713          	add	a4,s4,-1
     638:	0159e663          	bltu	s3,s5,644 <__divdi3+0x190>
     63c:	0179f463          	bgeu	s3,s7,644 <__divdi3+0x190>
     640:	ffea0713          	add	a4,s4,-2
     644:	01091793          	sll	a5,s2,0x10
     648:	00e7e7b3          	or	a5,a5,a4
     64c:	00000913          	li	s2,0
     650:	1200006f          	j	770 <__divdi3+0x2bc>
     654:	01000737          	lui	a4,0x1000
     658:	01000793          	li	a5,16
     65c:	eee66ce3          	bltu	a2,a4,554 <__divdi3+0xa0>
     660:	01800793          	li	a5,24
     664:	ef1ff06f          	j	554 <__divdi3+0xa0>
     668:	00000713          	li	a4,0
     66c:	00060c63          	beqz	a2,684 <__divdi3+0x1d0>
     670:	000107b7          	lui	a5,0x10
     674:	14f67a63          	bgeu	a2,a5,7c8 <__divdi3+0x314>
     678:	10063713          	sltiu	a4,a2,256
     67c:	00174713          	xor	a4,a4,1
     680:	00371713          	sll	a4,a4,0x3
     684:	00e657b3          	srl	a5,a2,a4
     688:	00f686b3          	add	a3,a3,a5
     68c:	0006c783          	lbu	a5,0(a3)
     690:	02000693          	li	a3,32
     694:	00e787b3          	add	a5,a5,a4
     698:	40f68733          	sub	a4,a3,a5
     69c:	14f69063          	bne	a3,a5,7dc <__divdi3+0x328>
     6a0:	40c58a33          	sub	s4,a1,a2
     6a4:	00100913          	li	s2,1
     6a8:	010adb13          	srl	s6,s5,0x10
     6ac:	000b0593          	mv	a1,s6
     6b0:	000a0513          	mv	a0,s4
     6b4:	010a9b93          	sll	s7,s5,0x10
     6b8:	15d000ef          	jal	1014 <__hidden___udivsi3>
     6bc:	010bdb93          	srl	s7,s7,0x10
     6c0:	00050593          	mv	a1,a0
     6c4:	00050c93          	mv	s9,a0
     6c8:	000b8513          	mv	a0,s7
     6cc:	11d000ef          	jal	fe8 <__mulsi3>
     6d0:	00050c13          	mv	s8,a0
     6d4:	000b0593          	mv	a1,s6
     6d8:	000a0513          	mv	a0,s4
     6dc:	181000ef          	jal	105c <__umodsi3>
     6e0:	01051513          	sll	a0,a0,0x10
     6e4:	0109d713          	srl	a4,s3,0x10
     6e8:	00a76733          	or	a4,a4,a0
     6ec:	000c8a13          	mv	s4,s9
     6f0:	01877e63          	bgeu	a4,s8,70c <__divdi3+0x258>
     6f4:	00ea8733          	add	a4,s5,a4
     6f8:	fffc8a13          	add	s4,s9,-1
     6fc:	01576863          	bltu	a4,s5,70c <__divdi3+0x258>
     700:	01877663          	bgeu	a4,s8,70c <__divdi3+0x258>
     704:	ffec8a13          	add	s4,s9,-2
     708:	01570733          	add	a4,a4,s5
     70c:	41870433          	sub	s0,a4,s8
     710:	000b0593          	mv	a1,s6
     714:	00040513          	mv	a0,s0
     718:	0fd000ef          	jal	1014 <__hidden___udivsi3>
     71c:	00050593          	mv	a1,a0
     720:	00050c13          	mv	s8,a0
     724:	000b8513          	mv	a0,s7
     728:	0c1000ef          	jal	fe8 <__mulsi3>
     72c:	00050b93          	mv	s7,a0
     730:	000b0593          	mv	a1,s6
     734:	00040513          	mv	a0,s0
     738:	125000ef          	jal	105c <__umodsi3>
     73c:	01099993          	sll	s3,s3,0x10
     740:	01051513          	sll	a0,a0,0x10
     744:	0109d993          	srl	s3,s3,0x10
     748:	00a9e9b3          	or	s3,s3,a0
     74c:	000c0713          	mv	a4,s8
     750:	0179fc63          	bgeu	s3,s7,768 <__divdi3+0x2b4>
     754:	013a89b3          	add	s3,s5,s3
     758:	fffc0713          	add	a4,s8,-1
     75c:	0159e663          	bltu	s3,s5,768 <__divdi3+0x2b4>
     760:	0179f463          	bgeu	s3,s7,768 <__divdi3+0x2b4>
     764:	ffec0713          	add	a4,s8,-2
     768:	010a1793          	sll	a5,s4,0x10
     76c:	00e7e7b3          	or	a5,a5,a4
     770:	00078513          	mv	a0,a5
     774:	00090593          	mv	a1,s2
     778:	00048a63          	beqz	s1,78c <__divdi3+0x2d8>
     77c:	00f037b3          	snez	a5,a5
     780:	412005b3          	neg	a1,s2
     784:	40f585b3          	sub	a1,a1,a5
     788:	40a00533          	neg	a0,a0
     78c:	03c12083          	lw	ra,60(sp)
     790:	03812403          	lw	s0,56(sp)
     794:	03412483          	lw	s1,52(sp)
     798:	03012903          	lw	s2,48(sp)
     79c:	02c12983          	lw	s3,44(sp)
     7a0:	02812a03          	lw	s4,40(sp)
     7a4:	02412a83          	lw	s5,36(sp)
     7a8:	02012b03          	lw	s6,32(sp)
     7ac:	01c12b83          	lw	s7,28(sp)
     7b0:	01812c03          	lw	s8,24(sp)
     7b4:	01412c83          	lw	s9,20(sp)
     7b8:	01012d03          	lw	s10,16(sp)
     7bc:	00c12d83          	lw	s11,12(sp)
     7c0:	04010113          	add	sp,sp,64
     7c4:	00008067          	ret
     7c8:	010007b7          	lui	a5,0x1000
     7cc:	01000713          	li	a4,16
     7d0:	eaf66ae3          	bltu	a2,a5,684 <__divdi3+0x1d0>
     7d4:	01800713          	li	a4,24
     7d8:	eadff06f          	j	684 <__divdi3+0x1d0>
     7dc:	00e61ab3          	sll	s5,a2,a4
     7e0:	00f5d933          	srl	s2,a1,a5
     7e4:	010adb93          	srl	s7,s5,0x10
     7e8:	00e595b3          	sll	a1,a1,a4
     7ec:	00fa57b3          	srl	a5,s4,a5
     7f0:	00b7eb33          	or	s6,a5,a1
     7f4:	00ea19b3          	sll	s3,s4,a4
     7f8:	000b8593          	mv	a1,s7
     7fc:	00090513          	mv	a0,s2
     800:	010a9a13          	sll	s4,s5,0x10
     804:	011000ef          	jal	1014 <__hidden___udivsi3>
     808:	010a5a13          	srl	s4,s4,0x10
     80c:	00050593          	mv	a1,a0
     810:	00050c13          	mv	s8,a0
     814:	000a0513          	mv	a0,s4
     818:	7d0000ef          	jal	fe8 <__mulsi3>
     81c:	00050413          	mv	s0,a0
     820:	000b8593          	mv	a1,s7
     824:	00090513          	mv	a0,s2
     828:	035000ef          	jal	105c <__umodsi3>
     82c:	01051513          	sll	a0,a0,0x10
     830:	010b5713          	srl	a4,s6,0x10
     834:	00a76733          	or	a4,a4,a0
     838:	000c0913          	mv	s2,s8
     83c:	00877e63          	bgeu	a4,s0,858 <__divdi3+0x3a4>
     840:	00ea8733          	add	a4,s5,a4
     844:	fffc0913          	add	s2,s8,-1
     848:	01576863          	bltu	a4,s5,858 <__divdi3+0x3a4>
     84c:	00877663          	bgeu	a4,s0,858 <__divdi3+0x3a4>
     850:	ffec0913          	add	s2,s8,-2
     854:	01570733          	add	a4,a4,s5
     858:	40870433          	sub	s0,a4,s0
     85c:	000b8593          	mv	a1,s7
     860:	00040513          	mv	a0,s0
     864:	7b0000ef          	jal	1014 <__hidden___udivsi3>
     868:	00050593          	mv	a1,a0
     86c:	00050c13          	mv	s8,a0
     870:	000a0513          	mv	a0,s4
     874:	774000ef          	jal	fe8 <__mulsi3>
     878:	00050a13          	mv	s4,a0
     87c:	000b8593          	mv	a1,s7
     880:	00040513          	mv	a0,s0
     884:	7d8000ef          	jal	105c <__umodsi3>
     888:	010b1793          	sll	a5,s6,0x10
     88c:	01051513          	sll	a0,a0,0x10
     890:	0107d793          	srl	a5,a5,0x10
     894:	00a7e7b3          	or	a5,a5,a0
     898:	000c0713          	mv	a4,s8
     89c:	0147fe63          	bgeu	a5,s4,8b8 <__divdi3+0x404>
     8a0:	00fa87b3          	add	a5,s5,a5
     8a4:	fffc0713          	add	a4,s8,-1
     8a8:	0157e863          	bltu	a5,s5,8b8 <__divdi3+0x404>
     8ac:	0147f663          	bgeu	a5,s4,8b8 <__divdi3+0x404>
     8b0:	ffec0713          	add	a4,s8,-2
     8b4:	015787b3          	add	a5,a5,s5
     8b8:	01091913          	sll	s2,s2,0x10
     8bc:	41478a33          	sub	s4,a5,s4
     8c0:	00e96933          	or	s2,s2,a4
     8c4:	de5ff06f          	j	6a8 <__divdi3+0x1f4>
     8c8:	1ed5ee63          	bltu	a1,a3,ac4 <__divdi3+0x610>
     8cc:	000107b7          	lui	a5,0x10
     8d0:	04f6f463          	bgeu	a3,a5,918 <__divdi3+0x464>
     8d4:	1006b713          	sltiu	a4,a3,256
     8d8:	00174713          	xor	a4,a4,1
     8dc:	00371713          	sll	a4,a4,0x3
     8e0:	00e6d533          	srl	a0,a3,a4
     8e4:	00030797          	auipc	a5,0x30
     8e8:	a0078793          	add	a5,a5,-1536 # 302e4 <__clz_tab>
     8ec:	00a787b3          	add	a5,a5,a0
     8f0:	0007c803          	lbu	a6,0(a5)
     8f4:	02000793          	li	a5,32
     8f8:	00e80833          	add	a6,a6,a4
     8fc:	41078933          	sub	s2,a5,a6
     900:	03079663          	bne	a5,a6,92c <__divdi3+0x478>
     904:	00100793          	li	a5,1
     908:	e6b6e4e3          	bltu	a3,a1,770 <__divdi3+0x2bc>
     90c:	00ca37b3          	sltu	a5,s4,a2
     910:	0017c793          	xor	a5,a5,1
     914:	e5dff06f          	j	770 <__divdi3+0x2bc>
     918:	010007b7          	lui	a5,0x1000
     91c:	01000713          	li	a4,16
     920:	fcf6e0e3          	bltu	a3,a5,8e0 <__divdi3+0x42c>
     924:	01800713          	li	a4,24
     928:	fb9ff06f          	j	8e0 <__divdi3+0x42c>
     92c:	012696b3          	sll	a3,a3,s2
     930:	01065c33          	srl	s8,a2,a6
     934:	00dc6c33          	or	s8,s8,a3
     938:	0105dab3          	srl	s5,a1,a6
     93c:	010a5733          	srl	a4,s4,a6
     940:	012595b3          	sll	a1,a1,s2
     944:	010c5b13          	srl	s6,s8,0x10
     948:	00b769b3          	or	s3,a4,a1
     94c:	010c1b93          	sll	s7,s8,0x10
     950:	000b0593          	mv	a1,s6
     954:	000a8513          	mv	a0,s5
     958:	01261433          	sll	s0,a2,s2
     95c:	010bdb93          	srl	s7,s7,0x10
     960:	6b4000ef          	jal	1014 <__hidden___udivsi3>
     964:	00050593          	mv	a1,a0
     968:	00050d93          	mv	s11,a0
     96c:	000b8513          	mv	a0,s7
     970:	678000ef          	jal	fe8 <__mulsi3>
     974:	00050d13          	mv	s10,a0
     978:	000b0593          	mv	a1,s6
     97c:	000a8513          	mv	a0,s5
     980:	6dc000ef          	jal	105c <__umodsi3>
     984:	01051513          	sll	a0,a0,0x10
     988:	0109d693          	srl	a3,s3,0x10
     98c:	00a6e6b3          	or	a3,a3,a0
     990:	000d8c93          	mv	s9,s11
     994:	01a6fe63          	bgeu	a3,s10,9b0 <__divdi3+0x4fc>
     998:	00dc06b3          	add	a3,s8,a3
     99c:	fffd8c93          	add	s9,s11,-1
     9a0:	0186e863          	bltu	a3,s8,9b0 <__divdi3+0x4fc>
     9a4:	01a6f663          	bgeu	a3,s10,9b0 <__divdi3+0x4fc>
     9a8:	ffed8c93          	add	s9,s11,-2
     9ac:	018686b3          	add	a3,a3,s8
     9b0:	41a68ab3          	sub	s5,a3,s10
     9b4:	000b0593          	mv	a1,s6
     9b8:	000a8513          	mv	a0,s5
     9bc:	658000ef          	jal	1014 <__hidden___udivsi3>
     9c0:	00050593          	mv	a1,a0
     9c4:	00050d13          	mv	s10,a0
     9c8:	000b8513          	mv	a0,s7
     9cc:	61c000ef          	jal	fe8 <__mulsi3>
     9d0:	00050b93          	mv	s7,a0
     9d4:	000b0593          	mv	a1,s6
     9d8:	000a8513          	mv	a0,s5
     9dc:	680000ef          	jal	105c <__umodsi3>
     9e0:	01099713          	sll	a4,s3,0x10
     9e4:	01051513          	sll	a0,a0,0x10
     9e8:	01075713          	srl	a4,a4,0x10
     9ec:	00a76733          	or	a4,a4,a0
     9f0:	000d0693          	mv	a3,s10
     9f4:	01777e63          	bgeu	a4,s7,a10 <__divdi3+0x55c>
     9f8:	00ec0733          	add	a4,s8,a4
     9fc:	fffd0693          	add	a3,s10,-1
     a00:	01876863          	bltu	a4,s8,a10 <__divdi3+0x55c>
     a04:	01777663          	bgeu	a4,s7,a10 <__divdi3+0x55c>
     a08:	ffed0693          	add	a3,s10,-2
     a0c:	01870733          	add	a4,a4,s8
     a10:	010c9793          	sll	a5,s9,0x10
     a14:	00010e37          	lui	t3,0x10
     a18:	00d7e7b3          	or	a5,a5,a3
     a1c:	fffe0313          	add	t1,t3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7a63>
     a20:	0067f8b3          	and	a7,a5,t1
     a24:	00647333          	and	t1,s0,t1
     a28:	41770733          	sub	a4,a4,s7
     a2c:	0107de93          	srl	t4,a5,0x10
     a30:	01045413          	srl	s0,s0,0x10
     a34:	00088513          	mv	a0,a7
     a38:	00030593          	mv	a1,t1
     a3c:	5ac000ef          	jal	fe8 <__mulsi3>
     a40:	00050813          	mv	a6,a0
     a44:	00040593          	mv	a1,s0
     a48:	00088513          	mv	a0,a7
     a4c:	59c000ef          	jal	fe8 <__mulsi3>
     a50:	00050893          	mv	a7,a0
     a54:	00030593          	mv	a1,t1
     a58:	000e8513          	mv	a0,t4
     a5c:	58c000ef          	jal	fe8 <__mulsi3>
     a60:	00050313          	mv	t1,a0
     a64:	00040593          	mv	a1,s0
     a68:	000e8513          	mv	a0,t4
     a6c:	57c000ef          	jal	fe8 <__mulsi3>
     a70:	01085693          	srl	a3,a6,0x10
     a74:	006888b3          	add	a7,a7,t1
     a78:	011686b3          	add	a3,a3,a7
     a7c:	00050613          	mv	a2,a0
     a80:	0066f463          	bgeu	a3,t1,a88 <__divdi3+0x5d4>
     a84:	01c50633          	add	a2,a0,t3
     a88:	0106d593          	srl	a1,a3,0x10
     a8c:	00c58633          	add	a2,a1,a2
     a90:	02c76663          	bltu	a4,a2,abc <__divdi3+0x608>
     a94:	bac71ce3          	bne	a4,a2,64c <__divdi3+0x198>
     a98:	00010637          	lui	a2,0x10
     a9c:	fff60613          	add	a2,a2,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7a63>
     aa0:	00c6f6b3          	and	a3,a3,a2
     aa4:	01069693          	sll	a3,a3,0x10
     aa8:	00c87833          	and	a6,a6,a2
     aac:	012a1733          	sll	a4,s4,s2
     ab0:	01068533          	add	a0,a3,a6
     ab4:	00000913          	li	s2,0
     ab8:	caa77ce3          	bgeu	a4,a0,770 <__divdi3+0x2bc>
     abc:	fff78793          	add	a5,a5,-1 # ffffff <GET_WATCHDOG_LOW+0xdfefbf>
     ac0:	b8dff06f          	j	64c <__divdi3+0x198>
     ac4:	00000913          	li	s2,0
     ac8:	00000793          	li	a5,0
     acc:	ca5ff06f          	j	770 <__divdi3+0x2bc>

00000ad0 <__moddi3>:
     ad0:	fc010113          	add	sp,sp,-64
     ad4:	02912a23          	sw	s1,52(sp)
     ad8:	02112e23          	sw	ra,60(sp)
     adc:	02812c23          	sw	s0,56(sp)
     ae0:	03212823          	sw	s2,48(sp)
     ae4:	03312623          	sw	s3,44(sp)
     ae8:	03412423          	sw	s4,40(sp)
     aec:	03512223          	sw	s5,36(sp)
     af0:	03612023          	sw	s6,32(sp)
     af4:	01712e23          	sw	s7,28(sp)
     af8:	01812c23          	sw	s8,24(sp)
     afc:	01912a23          	sw	s9,20(sp)
     b00:	01a12823          	sw	s10,16(sp)
     b04:	01b12623          	sw	s11,12(sp)
     b08:	00000493          	li	s1,0
     b0c:	0005dc63          	bgez	a1,b24 <__moddi3+0x54>
     b10:	00a037b3          	snez	a5,a0
     b14:	40b005b3          	neg	a1,a1
     b18:	40f585b3          	sub	a1,a1,a5
     b1c:	40a00533          	neg	a0,a0
     b20:	fff00493          	li	s1,-1
     b24:	0006da63          	bgez	a3,b38 <__moddi3+0x68>
     b28:	00c037b3          	snez	a5,a2
     b2c:	40d006b3          	neg	a3,a3
     b30:	40f686b3          	sub	a3,a3,a5
     b34:	40c00633          	neg	a2,a2
     b38:	00060a13          	mv	s4,a2
     b3c:	00050413          	mv	s0,a0
     b40:	00058913          	mv	s2,a1
     b44:	26069663          	bnez	a3,db0 <__moddi3+0x2e0>
     b48:	0002f697          	auipc	a3,0x2f
     b4c:	79c68693          	add	a3,a3,1948 # 302e4 <__clz_tab>
     b50:	14c5fa63          	bgeu	a1,a2,ca4 <__moddi3+0x1d4>
     b54:	000107b7          	lui	a5,0x10
     b58:	12f67c63          	bgeu	a2,a5,c90 <__moddi3+0x1c0>
     b5c:	10063793          	sltiu	a5,a2,256
     b60:	0017c793          	xor	a5,a5,1
     b64:	00379793          	sll	a5,a5,0x3
     b68:	00f65733          	srl	a4,a2,a5
     b6c:	00e686b3          	add	a3,a3,a4
     b70:	0006c703          	lbu	a4,0(a3)
     b74:	00f707b3          	add	a5,a4,a5
     b78:	02000713          	li	a4,32
     b7c:	40f709b3          	sub	s3,a4,a5
     b80:	00f70c63          	beq	a4,a5,b98 <__moddi3+0xc8>
     b84:	013595b3          	sll	a1,a1,s3
     b88:	00f557b3          	srl	a5,a0,a5
     b8c:	01361a33          	sll	s4,a2,s3
     b90:	00b7e933          	or	s2,a5,a1
     b94:	01351433          	sll	s0,a0,s3
     b98:	010a5b13          	srl	s6,s4,0x10
     b9c:	000b0593          	mv	a1,s6
     ba0:	010a1b93          	sll	s7,s4,0x10
     ba4:	00090513          	mv	a0,s2
     ba8:	46c000ef          	jal	1014 <__hidden___udivsi3>
     bac:	010bdb93          	srl	s7,s7,0x10
     bb0:	000b8593          	mv	a1,s7
     bb4:	434000ef          	jal	fe8 <__mulsi3>
     bb8:	00050a93          	mv	s5,a0
     bbc:	000b0593          	mv	a1,s6
     bc0:	00090513          	mv	a0,s2
     bc4:	498000ef          	jal	105c <__umodsi3>
     bc8:	01051513          	sll	a0,a0,0x10
     bcc:	01045793          	srl	a5,s0,0x10
     bd0:	00a7e7b3          	or	a5,a5,a0
     bd4:	0157fa63          	bgeu	a5,s5,be8 <__moddi3+0x118>
     bd8:	00fa07b3          	add	a5,s4,a5
     bdc:	0147e663          	bltu	a5,s4,be8 <__moddi3+0x118>
     be0:	0157f463          	bgeu	a5,s5,be8 <__moddi3+0x118>
     be4:	014787b3          	add	a5,a5,s4
     be8:	41578933          	sub	s2,a5,s5
     bec:	000b0593          	mv	a1,s6
     bf0:	00090513          	mv	a0,s2
     bf4:	420000ef          	jal	1014 <__hidden___udivsi3>
     bf8:	000b8593          	mv	a1,s7
     bfc:	3ec000ef          	jal	fe8 <__mulsi3>
     c00:	00050a93          	mv	s5,a0
     c04:	000b0593          	mv	a1,s6
     c08:	00090513          	mv	a0,s2
     c0c:	450000ef          	jal	105c <__umodsi3>
     c10:	01041413          	sll	s0,s0,0x10
     c14:	01051513          	sll	a0,a0,0x10
     c18:	01045413          	srl	s0,s0,0x10
     c1c:	00a46433          	or	s0,s0,a0
     c20:	01547a63          	bgeu	s0,s5,c34 <__moddi3+0x164>
     c24:	008a0433          	add	s0,s4,s0
     c28:	01446663          	bltu	s0,s4,c34 <__moddi3+0x164>
     c2c:	01547463          	bgeu	s0,s5,c34 <__moddi3+0x164>
     c30:	01440433          	add	s0,s0,s4
     c34:	41540433          	sub	s0,s0,s5
     c38:	01345533          	srl	a0,s0,s3
     c3c:	00000593          	li	a1,0
     c40:	00048a63          	beqz	s1,c54 <__moddi3+0x184>
     c44:	00a037b3          	snez	a5,a0
     c48:	40b005b3          	neg	a1,a1
     c4c:	40f585b3          	sub	a1,a1,a5
     c50:	40a00533          	neg	a0,a0
     c54:	03c12083          	lw	ra,60(sp)
     c58:	03812403          	lw	s0,56(sp)
     c5c:	03412483          	lw	s1,52(sp)
     c60:	03012903          	lw	s2,48(sp)
     c64:	02c12983          	lw	s3,44(sp)
     c68:	02812a03          	lw	s4,40(sp)
     c6c:	02412a83          	lw	s5,36(sp)
     c70:	02012b03          	lw	s6,32(sp)
     c74:	01c12b83          	lw	s7,28(sp)
     c78:	01812c03          	lw	s8,24(sp)
     c7c:	01412c83          	lw	s9,20(sp)
     c80:	01012d03          	lw	s10,16(sp)
     c84:	00c12d83          	lw	s11,12(sp)
     c88:	04010113          	add	sp,sp,64
     c8c:	00008067          	ret
     c90:	01000737          	lui	a4,0x1000
     c94:	01000793          	li	a5,16
     c98:	ece668e3          	bltu	a2,a4,b68 <__moddi3+0x98>
     c9c:	01800793          	li	a5,24
     ca0:	ec9ff06f          	j	b68 <__moddi3+0x98>
     ca4:	00000713          	li	a4,0
     ca8:	00060c63          	beqz	a2,cc0 <__moddi3+0x1f0>
     cac:	000107b7          	lui	a5,0x10
     cb0:	0ef67663          	bgeu	a2,a5,d9c <__moddi3+0x2cc>
     cb4:	10063713          	sltiu	a4,a2,256
     cb8:	00174713          	xor	a4,a4,1
     cbc:	00371713          	sll	a4,a4,0x3
     cc0:	00e657b3          	srl	a5,a2,a4
     cc4:	00f686b3          	add	a3,a3,a5
     cc8:	0006c783          	lbu	a5,0(a3)
     ccc:	40c58933          	sub	s2,a1,a2
     cd0:	00e787b3          	add	a5,a5,a4
     cd4:	02000713          	li	a4,32
     cd8:	40f709b3          	sub	s3,a4,a5
     cdc:	eaf70ee3          	beq	a4,a5,b98 <__moddi3+0xc8>
     ce0:	01361a33          	sll	s4,a2,s3
     ce4:	00f5d933          	srl	s2,a1,a5
     ce8:	010a5b93          	srl	s7,s4,0x10
     cec:	00f557b3          	srl	a5,a0,a5
     cf0:	013595b3          	sll	a1,a1,s3
     cf4:	00b7eab3          	or	s5,a5,a1
     cf8:	01351433          	sll	s0,a0,s3
     cfc:	000b8593          	mv	a1,s7
     d00:	010a1b13          	sll	s6,s4,0x10
     d04:	00090513          	mv	a0,s2
     d08:	30c000ef          	jal	1014 <__hidden___udivsi3>
     d0c:	010b5b13          	srl	s6,s6,0x10
     d10:	000b0593          	mv	a1,s6
     d14:	2d4000ef          	jal	fe8 <__mulsi3>
     d18:	00050c13          	mv	s8,a0
     d1c:	000b8593          	mv	a1,s7
     d20:	00090513          	mv	a0,s2
     d24:	338000ef          	jal	105c <__umodsi3>
     d28:	01051513          	sll	a0,a0,0x10
     d2c:	010ad713          	srl	a4,s5,0x10
     d30:	00a76733          	or	a4,a4,a0
     d34:	01877a63          	bgeu	a4,s8,d48 <__moddi3+0x278>
     d38:	00ea0733          	add	a4,s4,a4
     d3c:	01476663          	bltu	a4,s4,d48 <__moddi3+0x278>
     d40:	01877463          	bgeu	a4,s8,d48 <__moddi3+0x278>
     d44:	01470733          	add	a4,a4,s4
     d48:	41870c33          	sub	s8,a4,s8
     d4c:	000b8593          	mv	a1,s7
     d50:	000c0513          	mv	a0,s8
     d54:	2c0000ef          	jal	1014 <__hidden___udivsi3>
     d58:	000b0593          	mv	a1,s6
     d5c:	28c000ef          	jal	fe8 <__mulsi3>
     d60:	00050b13          	mv	s6,a0
     d64:	000b8593          	mv	a1,s7
     d68:	000c0513          	mv	a0,s8
     d6c:	2f0000ef          	jal	105c <__umodsi3>
     d70:	010a9793          	sll	a5,s5,0x10
     d74:	01051513          	sll	a0,a0,0x10
     d78:	0107d793          	srl	a5,a5,0x10
     d7c:	00a7e7b3          	or	a5,a5,a0
     d80:	0167fa63          	bgeu	a5,s6,d94 <__moddi3+0x2c4>
     d84:	00fa07b3          	add	a5,s4,a5
     d88:	0147e663          	bltu	a5,s4,d94 <__moddi3+0x2c4>
     d8c:	0167f463          	bgeu	a5,s6,d94 <__moddi3+0x2c4>
     d90:	014787b3          	add	a5,a5,s4
     d94:	41678933          	sub	s2,a5,s6
     d98:	e01ff06f          	j	b98 <__moddi3+0xc8>
     d9c:	010007b7          	lui	a5,0x1000
     da0:	01000713          	li	a4,16
     da4:	f0f66ee3          	bltu	a2,a5,cc0 <__moddi3+0x1f0>
     da8:	01800713          	li	a4,24
     dac:	f15ff06f          	j	cc0 <__moddi3+0x1f0>
     db0:	e8d5e8e3          	bltu	a1,a3,c40 <__moddi3+0x170>
     db4:	000107b7          	lui	a5,0x10
     db8:	04f6fe63          	bgeu	a3,a5,e14 <__moddi3+0x344>
     dbc:	1006b793          	sltiu	a5,a3,256
     dc0:	0017c793          	xor	a5,a5,1
     dc4:	00379793          	sll	a5,a5,0x3
     dc8:	00f6d833          	srl	a6,a3,a5
     dcc:	0002f717          	auipc	a4,0x2f
     dd0:	51870713          	add	a4,a4,1304 # 302e4 <__clz_tab>
     dd4:	01070733          	add	a4,a4,a6
     dd8:	00074a03          	lbu	s4,0(a4)
     ddc:	00fa0a33          	add	s4,s4,a5
     de0:	02000793          	li	a5,32
     de4:	414789b3          	sub	s3,a5,s4
     de8:	05479063          	bne	a5,s4,e28 <__moddi3+0x358>
     dec:	00b6e463          	bltu	a3,a1,df4 <__moddi3+0x324>
     df0:	00c56c63          	bltu	a0,a2,e08 <__moddi3+0x338>
     df4:	40c50ab3          	sub	s5,a0,a2
     df8:	40d586b3          	sub	a3,a1,a3
     dfc:	015535b3          	sltu	a1,a0,s5
     e00:	000a8413          	mv	s0,s5
     e04:	40b68933          	sub	s2,a3,a1
     e08:	00040513          	mv	a0,s0
     e0c:	00090593          	mv	a1,s2
     e10:	e31ff06f          	j	c40 <__moddi3+0x170>
     e14:	01000737          	lui	a4,0x1000
     e18:	01000793          	li	a5,16
     e1c:	fae6e6e3          	bltu	a3,a4,dc8 <__moddi3+0x2f8>
     e20:	01800793          	li	a5,24
     e24:	fa5ff06f          	j	dc8 <__moddi3+0x2f8>
     e28:	013696b3          	sll	a3,a3,s3
     e2c:	01465bb3          	srl	s7,a2,s4
     e30:	00dbebb3          	or	s7,s7,a3
     e34:	0145db33          	srl	s6,a1,s4
     e38:	01455433          	srl	s0,a0,s4
     e3c:	013595b3          	sll	a1,a1,s3
     e40:	010bdc13          	srl	s8,s7,0x10
     e44:	00b46433          	or	s0,s0,a1
     e48:	01351933          	sll	s2,a0,s3
     e4c:	000c0593          	mv	a1,s8
     e50:	000b0513          	mv	a0,s6
     e54:	010b9c93          	sll	s9,s7,0x10
     e58:	01361ab3          	sll	s5,a2,s3
     e5c:	010cdc93          	srl	s9,s9,0x10
     e60:	1b4000ef          	jal	1014 <__hidden___udivsi3>
     e64:	00050593          	mv	a1,a0
     e68:	00050d93          	mv	s11,a0
     e6c:	000c8513          	mv	a0,s9
     e70:	178000ef          	jal	fe8 <__mulsi3>
     e74:	00050d13          	mv	s10,a0
     e78:	000c0593          	mv	a1,s8
     e7c:	000b0513          	mv	a0,s6
     e80:	1dc000ef          	jal	105c <__umodsi3>
     e84:	01051513          	sll	a0,a0,0x10
     e88:	01045793          	srl	a5,s0,0x10
     e8c:	00a7e7b3          	or	a5,a5,a0
     e90:	000d8b13          	mv	s6,s11
     e94:	01a7fe63          	bgeu	a5,s10,eb0 <__moddi3+0x3e0>
     e98:	00fb87b3          	add	a5,s7,a5
     e9c:	fffd8b13          	add	s6,s11,-1
     ea0:	0177e863          	bltu	a5,s7,eb0 <__moddi3+0x3e0>
     ea4:	01a7f663          	bgeu	a5,s10,eb0 <__moddi3+0x3e0>
     ea8:	ffed8b13          	add	s6,s11,-2
     eac:	017787b3          	add	a5,a5,s7
     eb0:	41a78d33          	sub	s10,a5,s10
     eb4:	000c0593          	mv	a1,s8
     eb8:	000d0513          	mv	a0,s10
     ebc:	158000ef          	jal	1014 <__hidden___udivsi3>
     ec0:	00050593          	mv	a1,a0
     ec4:	00050d93          	mv	s11,a0
     ec8:	000c8513          	mv	a0,s9
     ecc:	11c000ef          	jal	fe8 <__mulsi3>
     ed0:	000c0593          	mv	a1,s8
     ed4:	00050c93          	mv	s9,a0
     ed8:	000d0513          	mv	a0,s10
     edc:	180000ef          	jal	105c <__umodsi3>
     ee0:	01041593          	sll	a1,s0,0x10
     ee4:	01051513          	sll	a0,a0,0x10
     ee8:	0105d593          	srl	a1,a1,0x10
     eec:	00a5e5b3          	or	a1,a1,a0
     ef0:	000d8713          	mv	a4,s11
     ef4:	0195fe63          	bgeu	a1,s9,f10 <__moddi3+0x440>
     ef8:	00bb85b3          	add	a1,s7,a1
     efc:	fffd8713          	add	a4,s11,-1
     f00:	0175e863          	bltu	a1,s7,f10 <__moddi3+0x440>
     f04:	0195f663          	bgeu	a1,s9,f10 <__moddi3+0x440>
     f08:	ffed8713          	add	a4,s11,-2
     f0c:	017585b3          	add	a1,a1,s7
     f10:	00010337          	lui	t1,0x10
     f14:	010b1b13          	sll	s6,s6,0x10
     f18:	00eb6b33          	or	s6,s6,a4
     f1c:	fff30713          	add	a4,t1,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7a63>
     f20:	00eb7e33          	and	t3,s6,a4
     f24:	00eaf733          	and	a4,s5,a4
     f28:	419587b3          	sub	a5,a1,s9
     f2c:	010b5b13          	srl	s6,s6,0x10
     f30:	010ad893          	srl	a7,s5,0x10
     f34:	000e0513          	mv	a0,t3
     f38:	00070593          	mv	a1,a4
     f3c:	0ac000ef          	jal	fe8 <__mulsi3>
     f40:	00050813          	mv	a6,a0
     f44:	00088593          	mv	a1,a7
     f48:	000e0513          	mv	a0,t3
     f4c:	09c000ef          	jal	fe8 <__mulsi3>
     f50:	00050413          	mv	s0,a0
     f54:	00070593          	mv	a1,a4
     f58:	000b0513          	mv	a0,s6
     f5c:	08c000ef          	jal	fe8 <__mulsi3>
     f60:	00050713          	mv	a4,a0
     f64:	00088593          	mv	a1,a7
     f68:	000b0513          	mv	a0,s6
     f6c:	07c000ef          	jal	fe8 <__mulsi3>
     f70:	00e40433          	add	s0,s0,a4
     f74:	01085693          	srl	a3,a6,0x10
     f78:	00d40433          	add	s0,s0,a3
     f7c:	00e47463          	bgeu	s0,a4,f84 <__moddi3+0x4b4>
     f80:	00650533          	add	a0,a0,t1
     f84:	000106b7          	lui	a3,0x10
     f88:	fff68693          	add	a3,a3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7a63>
     f8c:	01045713          	srl	a4,s0,0x10
     f90:	00d47433          	and	s0,s0,a3
     f94:	01041413          	sll	s0,s0,0x10
     f98:	00d87833          	and	a6,a6,a3
     f9c:	00a70733          	add	a4,a4,a0
     fa0:	01040433          	add	s0,s0,a6
     fa4:	00e7e663          	bltu	a5,a4,fb0 <__moddi3+0x4e0>
     fa8:	00e79e63          	bne	a5,a4,fc4 <__moddi3+0x4f4>
     fac:	00897c63          	bgeu	s2,s0,fc4 <__moddi3+0x4f4>
     fb0:	41540ab3          	sub	s5,s0,s5
     fb4:	015436b3          	sltu	a3,s0,s5
     fb8:	017686b3          	add	a3,a3,s7
     fbc:	000a8413          	mv	s0,s5
     fc0:	40d70733          	sub	a4,a4,a3
     fc4:	40890433          	sub	s0,s2,s0
     fc8:	00893933          	sltu	s2,s2,s0
     fcc:	40e785b3          	sub	a1,a5,a4
     fd0:	412585b3          	sub	a1,a1,s2
     fd4:	01459a33          	sll	s4,a1,s4
     fd8:	01345433          	srl	s0,s0,s3
     fdc:	008a6533          	or	a0,s4,s0
     fe0:	0135d5b3          	srl	a1,a1,s3
     fe4:	c5dff06f          	j	c40 <__moddi3+0x170>

00000fe8 <__mulsi3>:
     fe8:	00050613          	mv	a2,a0
     fec:	00000513          	li	a0,0
     ff0:	0015f693          	and	a3,a1,1
     ff4:	00068463          	beqz	a3,ffc <__mulsi3+0x14>
     ff8:	00c50533          	add	a0,a0,a2
     ffc:	0015d593          	srl	a1,a1,0x1
    1000:	00161613          	sll	a2,a2,0x1
    1004:	fe0596e3          	bnez	a1,ff0 <__mulsi3+0x8>
    1008:	00008067          	ret

0000100c <__divsi3>:
    100c:	06054063          	bltz	a0,106c <__umodsi3+0x10>
    1010:	0605c663          	bltz	a1,107c <__umodsi3+0x20>

00001014 <__hidden___udivsi3>:
    1014:	00058613          	mv	a2,a1
    1018:	00050593          	mv	a1,a0
    101c:	fff00513          	li	a0,-1
    1020:	02060c63          	beqz	a2,1058 <__hidden___udivsi3+0x44>
    1024:	00100693          	li	a3,1
    1028:	00b67a63          	bgeu	a2,a1,103c <__hidden___udivsi3+0x28>
    102c:	00c05863          	blez	a2,103c <__hidden___udivsi3+0x28>
    1030:	00161613          	sll	a2,a2,0x1
    1034:	00169693          	sll	a3,a3,0x1
    1038:	feb66ae3          	bltu	a2,a1,102c <__hidden___udivsi3+0x18>
    103c:	00000513          	li	a0,0
    1040:	00c5e663          	bltu	a1,a2,104c <__hidden___udivsi3+0x38>
    1044:	40c585b3          	sub	a1,a1,a2
    1048:	00d56533          	or	a0,a0,a3
    104c:	0016d693          	srl	a3,a3,0x1
    1050:	00165613          	srl	a2,a2,0x1
    1054:	fe0696e3          	bnez	a3,1040 <__hidden___udivsi3+0x2c>
    1058:	00008067          	ret

0000105c <__umodsi3>:
    105c:	00008293          	mv	t0,ra
    1060:	fb5ff0ef          	jal	1014 <__hidden___udivsi3>
    1064:	00058513          	mv	a0,a1
    1068:	00028067          	jr	t0
    106c:	40a00533          	neg	a0,a0
    1070:	00b04863          	bgtz	a1,1080 <__umodsi3+0x24>
    1074:	40b005b3          	neg	a1,a1
    1078:	f9dff06f          	j	1014 <__hidden___udivsi3>
    107c:	40b005b3          	neg	a1,a1
    1080:	00008293          	mv	t0,ra
    1084:	f91ff0ef          	jal	1014 <__hidden___udivsi3>
    1088:	40a00533          	neg	a0,a0
    108c:	00028067          	jr	t0

00001090 <__modsi3>:
    1090:	00008293          	mv	t0,ra
    1094:	0005ca63          	bltz	a1,10a8 <__modsi3+0x18>
    1098:	00054c63          	bltz	a0,10b0 <__modsi3+0x20>
    109c:	f79ff0ef          	jal	1014 <__hidden___udivsi3>
    10a0:	00058513          	mv	a0,a1
    10a4:	00028067          	jr	t0
    10a8:	40b005b3          	neg	a1,a1
    10ac:	fe0558e3          	bgez	a0,109c <__modsi3+0xc>
    10b0:	40a00533          	neg	a0,a0
    10b4:	f61ff0ef          	jal	1014 <__hidden___udivsi3>
    10b8:	40b00533          	neg	a0,a1
    10bc:	00028067          	jr	t0

Disassembly of section .spi_compute:

00003400 <_Z8cmd_echoPc-0x2000>:
	...

00005400 <_Z8cmd_echoPc>:
    5400:	fe010113          	add	sp,sp,-32
    5404:	00112e23          	sw	ra,28(sp)
    5408:	00812c23          	sw	s0,24(sp)
    540c:	02010413          	add	s0,sp,32
    5410:	fea42623          	sw	a0,-20(s0)
    5414:	fec42503          	lw	a0,-20(s0)
    5418:	0c5020ef          	jal	7cdc <_Z10uart_printPKc>
    541c:	000307b7          	lui	a5,0x30
    5420:	08878513          	add	a0,a5,136 # 30088 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27aec>
    5424:	0b9020ef          	jal	7cdc <_Z10uart_printPKc>
    5428:	00000013          	nop
    542c:	01c12083          	lw	ra,28(sp)
    5430:	01812403          	lw	s0,24(sp)
    5434:	02010113          	add	sp,sp,32
    5438:	00008067          	ret

0000543c <_Z8cmd_helpPc>:
    543c:	fe010113          	add	sp,sp,-32
    5440:	00112e23          	sw	ra,28(sp)
    5444:	00812c23          	sw	s0,24(sp)
    5448:	02010413          	add	s0,sp,32
    544c:	fea42623          	sw	a0,-20(s0)
    5450:	000307b7          	lui	a5,0x30
    5454:	08c78513          	add	a0,a5,140 # 3008c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27af0>
    5458:	085020ef          	jal	7cdc <_Z10uart_printPKc>
    545c:	000307b7          	lui	a5,0x30
    5460:	0ac78513          	add	a0,a5,172 # 300ac <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b10>
    5464:	079020ef          	jal	7cdc <_Z10uart_printPKc>
    5468:	000307b7          	lui	a5,0x30
    546c:	0bc78513          	add	a0,a5,188 # 300bc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b20>
    5470:	06d020ef          	jal	7cdc <_Z10uart_printPKc>
    5474:	000307b7          	lui	a5,0x30
    5478:	0cc78513          	add	a0,a5,204 # 300cc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b30>
    547c:	061020ef          	jal	7cdc <_Z10uart_printPKc>
    5480:	000307b7          	lui	a5,0x30
    5484:	0dc78513          	add	a0,a5,220 # 300dc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b40>
    5488:	055020ef          	jal	7cdc <_Z10uart_printPKc>
    548c:	000307b7          	lui	a5,0x30
    5490:	0ec78513          	add	a0,a5,236 # 300ec <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b50>
    5494:	049020ef          	jal	7cdc <_Z10uart_printPKc>
    5498:	000307b7          	lui	a5,0x30
    549c:	0fc78513          	add	a0,a5,252 # 300fc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b60>
    54a0:	03d020ef          	jal	7cdc <_Z10uart_printPKc>
    54a4:	00000013          	nop
    54a8:	01c12083          	lw	ra,28(sp)
    54ac:	01812403          	lw	s0,24(sp)
    54b0:	02010113          	add	sp,sp,32
    54b4:	00008067          	ret

000054b8 <_Z8cmd_exitPcPVb>:
    54b8:	fe010113          	add	sp,sp,-32
    54bc:	00112e23          	sw	ra,28(sp)
    54c0:	00812c23          	sw	s0,24(sp)
    54c4:	02010413          	add	s0,sp,32
    54c8:	fea42623          	sw	a0,-20(s0)
    54cc:	feb42423          	sw	a1,-24(s0)
    54d0:	000307b7          	lui	a5,0x30
    54d4:	12078513          	add	a0,a5,288 # 30120 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b84>
    54d8:	005020ef          	jal	7cdc <_Z10uart_printPKc>
    54dc:	fe842783          	lw	a5,-24(s0)
    54e0:	00078023          	sb	zero,0(a5)
    54e4:	00000013          	nop
    54e8:	01c12083          	lw	ra,28(sp)
    54ec:	01812403          	lw	s0,24(sp)
    54f0:	02010113          	add	sp,sp,32
    54f4:	00008067          	ret

000054f8 <_ZL6get_spv>:
    54f8:	fe010113          	add	sp,sp,-32
    54fc:	00812e23          	sw	s0,28(sp)
    5500:	02010413          	add	s0,sp,32
    5504:	00010793          	mv	a5,sp
    5508:	fef42623          	sw	a5,-20(s0)
    550c:	fec42783          	lw	a5,-20(s0)
    5510:	00078513          	mv	a0,a5
    5514:	01c12403          	lw	s0,28(sp)
    5518:	02010113          	add	sp,sp,32
    551c:	00008067          	ret

00005520 <_Z8cmd_freev>:
    5520:	fe010113          	add	sp,sp,-32
    5524:	00112e23          	sw	ra,28(sp)
    5528:	00812c23          	sw	s0,24(sp)
    552c:	02010413          	add	s0,sp,32
    5530:	cd5fa0ef          	jal	204 <_Z14get_free_bytesv>
    5534:	fea42623          	sw	a0,-20(s0)
    5538:	fec42783          	lw	a5,-20(s0)
    553c:	00078513          	mv	a0,a5
    5540:	1f9020ef          	jal	7f38 <_Z16uart_print_int32i>
    5544:	00000013          	nop
    5548:	000307b7          	lui	a5,0x30
    554c:	12c78513          	add	a0,a5,300 # 3012c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27b90>
    5550:	78c020ef          	jal	7cdc <_Z10uart_printPKc>
    5554:	00000013          	nop
    5558:	01c12083          	lw	ra,28(sp)
    555c:	01812403          	lw	s0,24(sp)
    5560:	02010113          	add	sp,sp,32
    5564:	00008067          	ret

00005568 <_Z5_sbrki>:
    5568:	fd010113          	add	sp,sp,-48
    556c:	02112623          	sw	ra,44(sp)
    5570:	02812423          	sw	s0,40(sp)
    5574:	03010413          	add	s0,sp,48
    5578:	fca42e23          	sw	a0,-36(s0)
    557c:	000347b7          	lui	a5,0x34
    5580:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
    5584:	fef42623          	sw	a5,-20(s0)
    5588:	f71ff0ef          	jal	54f8 <_ZL6get_spv>
    558c:	fea42423          	sw	a0,-24(s0)
    5590:	000347b7          	lui	a5,0x34
    5594:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    5598:	fdc42783          	lw	a5,-36(s0)
    559c:	00279793          	sll	a5,a5,0x2
    55a0:	00f707b3          	add	a5,a4,a5
    55a4:	00078713          	mv	a4,a5
    55a8:	fe842783          	lw	a5,-24(s0)
    55ac:	00f76c63          	bltu	a4,a5,55c4 <_Z5_sbrki+0x5c>
    55b0:	000307b7          	lui	a5,0x30
    55b4:	13c78513          	add	a0,a5,316 # 3013c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27ba0>
    55b8:	724020ef          	jal	7cdc <_Z10uart_printPKc>
    55bc:	fff00793          	li	a5,-1
    55c0:	0240006f          	j	55e4 <_Z5_sbrki+0x7c>
    55c4:	000347b7          	lui	a5,0x34
    55c8:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    55cc:	fdc42783          	lw	a5,-36(s0)
    55d0:	00279793          	sll	a5,a5,0x2
    55d4:	00f70733          	add	a4,a4,a5
    55d8:	000347b7          	lui	a5,0x34
    55dc:	00e7a023          	sw	a4,0(a5) # 34000 <_ZL8heap_end>
    55e0:	fec42783          	lw	a5,-20(s0)
    55e4:	00078513          	mv	a0,a5
    55e8:	02c12083          	lw	ra,44(sp)
    55ec:	02812403          	lw	s0,40(sp)
    55f0:	03010113          	add	sp,sp,48
    55f4:	00008067          	ret

000055f8 <_Z7computev>:
    55f8:	fe010113          	add	sp,sp,-32
    55fc:	00112e23          	sw	ra,28(sp)
    5600:	00812c23          	sw	s0,24(sp)
    5604:	02010413          	add	s0,sp,32
    5608:	fff00793          	li	a5,-1
    560c:	fef407a3          	sb	a5,-17(s0)
    5610:	00a00793          	li	a5,10
    5614:	fef42423          	sw	a5,-24(s0)
    5618:	fe842503          	lw	a0,-24(s0)
    561c:	378000ef          	jal	5994 <_Z19fibonacci_iterativei>
    5620:	00050793          	mv	a5,a0
    5624:	fef42223          	sw	a5,-28(s0)
    5628:	fe842503          	lw	a0,-24(s0)
    562c:	414000ef          	jal	5a40 <_Z19fibonacci_recursivei>
    5630:	00050793          	mv	a5,a0
    5634:	fef42023          	sw	a5,-32(s0)
    5638:	fe442703          	lw	a4,-28(s0)
    563c:	fe042783          	lw	a5,-32(s0)
    5640:	00f71863          	bne	a4,a5,5650 <_Z7computev+0x58>
    5644:	00100793          	li	a5,1
    5648:	fef407a3          	sb	a5,-17(s0)
    564c:	0080006f          	j	5654 <_Z7computev+0x5c>
    5650:	fe0407a3          	sb	zero,-17(s0)
    5654:	00000013          	nop
    5658:	01c12083          	lw	ra,28(sp)
    565c:	01812403          	lw	s0,24(sp)
    5660:	02010113          	add	sp,sp,32
    5664:	00008067          	ret

00005668 <_Z6matmulPA3_KiPA3_iS3_>:
    5668:	fd010113          	add	sp,sp,-48
    566c:	02112623          	sw	ra,44(sp)
    5670:	02812423          	sw	s0,40(sp)
    5674:	03010413          	add	s0,sp,48
    5678:	fca42e23          	sw	a0,-36(s0)
    567c:	fcb42c23          	sw	a1,-40(s0)
    5680:	fcc42a23          	sw	a2,-44(s0)
    5684:	fe042623          	sw	zero,-20(s0)
    5688:	1080006f          	j	5790 <_Z6matmulPA3_KiPA3_iS3_+0x128>
    568c:	fe042423          	sw	zero,-24(s0)
    5690:	0e80006f          	j	5778 <_Z6matmulPA3_KiPA3_iS3_+0x110>
    5694:	fe042223          	sw	zero,-28(s0)
    5698:	fe042023          	sw	zero,-32(s0)
    569c:	0900006f          	j	572c <_Z6matmulPA3_KiPA3_iS3_+0xc4>
    56a0:	fec42703          	lw	a4,-20(s0)
    56a4:	00070793          	mv	a5,a4
    56a8:	00179793          	sll	a5,a5,0x1
    56ac:	00e787b3          	add	a5,a5,a4
    56b0:	00279793          	sll	a5,a5,0x2
    56b4:	00078713          	mv	a4,a5
    56b8:	fdc42783          	lw	a5,-36(s0)
    56bc:	00e78733          	add	a4,a5,a4
    56c0:	fe042783          	lw	a5,-32(s0)
    56c4:	00279793          	sll	a5,a5,0x2
    56c8:	00f707b3          	add	a5,a4,a5
    56cc:	0007a683          	lw	a3,0(a5)
    56d0:	fe042703          	lw	a4,-32(s0)
    56d4:	00070793          	mv	a5,a4
    56d8:	00179793          	sll	a5,a5,0x1
    56dc:	00e787b3          	add	a5,a5,a4
    56e0:	00279793          	sll	a5,a5,0x2
    56e4:	00078713          	mv	a4,a5
    56e8:	fd842783          	lw	a5,-40(s0)
    56ec:	00e78733          	add	a4,a5,a4
    56f0:	fe842783          	lw	a5,-24(s0)
    56f4:	00279793          	sll	a5,a5,0x2
    56f8:	00f707b3          	add	a5,a4,a5
    56fc:	0007a783          	lw	a5,0(a5)
    5700:	00078593          	mv	a1,a5
    5704:	00068513          	mv	a0,a3
    5708:	8e1fb0ef          	jal	fe8 <__mulsi3>
    570c:	00050793          	mv	a5,a0
    5710:	00078713          	mv	a4,a5
    5714:	fe442783          	lw	a5,-28(s0)
    5718:	00e787b3          	add	a5,a5,a4
    571c:	fef42223          	sw	a5,-28(s0)
    5720:	fe042783          	lw	a5,-32(s0)
    5724:	00178793          	add	a5,a5,1
    5728:	fef42023          	sw	a5,-32(s0)
    572c:	fe042703          	lw	a4,-32(s0)
    5730:	00200793          	li	a5,2
    5734:	f6e7d6e3          	bge	a5,a4,56a0 <_Z6matmulPA3_KiPA3_iS3_+0x38>
    5738:	fec42703          	lw	a4,-20(s0)
    573c:	00070793          	mv	a5,a4
    5740:	00179793          	sll	a5,a5,0x1
    5744:	00e787b3          	add	a5,a5,a4
    5748:	00279793          	sll	a5,a5,0x2
    574c:	00078713          	mv	a4,a5
    5750:	fd442783          	lw	a5,-44(s0)
    5754:	00e78733          	add	a4,a5,a4
    5758:	fe842783          	lw	a5,-24(s0)
    575c:	00279793          	sll	a5,a5,0x2
    5760:	00f707b3          	add	a5,a4,a5
    5764:	fe442703          	lw	a4,-28(s0)
    5768:	00e7a023          	sw	a4,0(a5)
    576c:	fe842783          	lw	a5,-24(s0)
    5770:	00178793          	add	a5,a5,1
    5774:	fef42423          	sw	a5,-24(s0)
    5778:	fe842703          	lw	a4,-24(s0)
    577c:	00200793          	li	a5,2
    5780:	f0e7dae3          	bge	a5,a4,5694 <_Z6matmulPA3_KiPA3_iS3_+0x2c>
    5784:	fec42783          	lw	a5,-20(s0)
    5788:	00178793          	add	a5,a5,1
    578c:	fef42623          	sw	a5,-20(s0)
    5790:	fec42703          	lw	a4,-20(s0)
    5794:	00200793          	li	a5,2
    5798:	eee7dae3          	bge	a5,a4,568c <_Z6matmulPA3_KiPA3_iS3_+0x24>
    579c:	00000793          	li	a5,0
    57a0:	00078513          	mv	a0,a5
    57a4:	02c12083          	lw	ra,44(sp)
    57a8:	02812403          	lw	s0,40(sp)
    57ac:	03010113          	add	sp,sp,48
    57b0:	00008067          	ret

000057b4 <_Z21cmd_matrix_multiplierv>:
    57b4:	f2010113          	add	sp,sp,-224
    57b8:	0c112e23          	sw	ra,220(sp)
    57bc:	0c812c23          	sw	s0,216(sp)
    57c0:	0e010413          	add	s0,sp,224
    57c4:	00100793          	li	a5,1
    57c8:	fef407a3          	sb	a5,-17(s0)
    57cc:	000307b7          	lui	a5,0x30
    57d0:	1c878793          	add	a5,a5,456 # 301c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c2c>
    57d4:	0007a303          	lw	t1,0(a5)
    57d8:	0047a883          	lw	a7,4(a5)
    57dc:	0087a803          	lw	a6,8(a5)
    57e0:	00c7a503          	lw	a0,12(a5)
    57e4:	0107a583          	lw	a1,16(a5)
    57e8:	0147a603          	lw	a2,20(a5)
    57ec:	0187a683          	lw	a3,24(a5)
    57f0:	01c7a703          	lw	a4,28(a5)
    57f4:	0207a783          	lw	a5,32(a5)
    57f8:	fa642823          	sw	t1,-80(s0)
    57fc:	fb142a23          	sw	a7,-76(s0)
    5800:	fb042c23          	sw	a6,-72(s0)
    5804:	faa42e23          	sw	a0,-68(s0)
    5808:	fcb42023          	sw	a1,-64(s0)
    580c:	fcc42223          	sw	a2,-60(s0)
    5810:	fcd42423          	sw	a3,-56(s0)
    5814:	fce42623          	sw	a4,-52(s0)
    5818:	fcf42823          	sw	a5,-48(s0)
    581c:	000307b7          	lui	a5,0x30
    5820:	1ec78793          	add	a5,a5,492 # 301ec <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c50>
    5824:	0007a303          	lw	t1,0(a5)
    5828:	0047a883          	lw	a7,4(a5)
    582c:	0087a803          	lw	a6,8(a5)
    5830:	00c7a503          	lw	a0,12(a5)
    5834:	0107a583          	lw	a1,16(a5)
    5838:	0147a603          	lw	a2,20(a5)
    583c:	0187a683          	lw	a3,24(a5)
    5840:	01c7a703          	lw	a4,28(a5)
    5844:	0207a783          	lw	a5,32(a5)
    5848:	f8642623          	sw	t1,-116(s0)
    584c:	f9142823          	sw	a7,-112(s0)
    5850:	f9042a23          	sw	a6,-108(s0)
    5854:	f8a42c23          	sw	a0,-104(s0)
    5858:	f8b42e23          	sw	a1,-100(s0)
    585c:	fac42023          	sw	a2,-96(s0)
    5860:	fad42223          	sw	a3,-92(s0)
    5864:	fae42423          	sw	a4,-88(s0)
    5868:	faf42623          	sw	a5,-84(s0)
    586c:	000307b7          	lui	a5,0x30
    5870:	21078793          	add	a5,a5,528 # 30210 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c74>
    5874:	0007a303          	lw	t1,0(a5)
    5878:	0047a883          	lw	a7,4(a5)
    587c:	0087a803          	lw	a6,8(a5)
    5880:	00c7a503          	lw	a0,12(a5)
    5884:	0107a583          	lw	a1,16(a5)
    5888:	0147a603          	lw	a2,20(a5)
    588c:	0187a683          	lw	a3,24(a5)
    5890:	01c7a703          	lw	a4,28(a5)
    5894:	0207a783          	lw	a5,32(a5)
    5898:	f6642423          	sw	t1,-152(s0)
    589c:	f7142623          	sw	a7,-148(s0)
    58a0:	f7042823          	sw	a6,-144(s0)
    58a4:	f6a42a23          	sw	a0,-140(s0)
    58a8:	f6b42c23          	sw	a1,-136(s0)
    58ac:	f6c42e23          	sw	a2,-132(s0)
    58b0:	f8d42023          	sw	a3,-128(s0)
    58b4:	f8e42223          	sw	a4,-124(s0)
    58b8:	f8f42423          	sw	a5,-120(s0)
    58bc:	f4042223          	sw	zero,-188(s0)
    58c0:	f4042423          	sw	zero,-184(s0)
    58c4:	f4042623          	sw	zero,-180(s0)
    58c8:	f4042823          	sw	zero,-176(s0)
    58cc:	f4042a23          	sw	zero,-172(s0)
    58d0:	f4042c23          	sw	zero,-168(s0)
    58d4:	f4042e23          	sw	zero,-164(s0)
    58d8:	f6042023          	sw	zero,-160(s0)
    58dc:	f6042223          	sw	zero,-156(s0)
    58e0:	f2042023          	sw	zero,-224(s0)
    58e4:	f2042223          	sw	zero,-220(s0)
    58e8:	f2042423          	sw	zero,-216(s0)
    58ec:	f2042623          	sw	zero,-212(s0)
    58f0:	f2042823          	sw	zero,-208(s0)
    58f4:	f2042a23          	sw	zero,-204(s0)
    58f8:	f2042c23          	sw	zero,-200(s0)
    58fc:	f2042e23          	sw	zero,-196(s0)
    5900:	f4042023          	sw	zero,-192(s0)
    5904:	000307b7          	lui	a5,0x30
    5908:	14c78513          	add	a0,a5,332 # 3014c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27bb0>
    590c:	3d0020ef          	jal	7cdc <_Z10uart_printPKc>
    5910:	fb040793          	add	a5,s0,-80
    5914:	fcf42a23          	sw	a5,-44(s0)
    5918:	f8c40793          	add	a5,s0,-116
    591c:	fcf42c23          	sw	a5,-40(s0)
    5920:	f4440793          	add	a5,s0,-188
    5924:	fcf42e23          	sw	a5,-36(s0)
    5928:	fd440793          	add	a5,s0,-44
    592c:	00078513          	mv	a0,a5
    5930:	969fa0ef          	jal	298 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>
    5934:	00050793          	mv	a5,a0
    5938:	fef407a3          	sb	a5,-17(s0)
    593c:	000307b7          	lui	a5,0x30
    5940:	18478513          	add	a0,a5,388 # 30184 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27be8>
    5944:	398020ef          	jal	7cdc <_Z10uart_printPKc>
    5948:	f6840793          	add	a5,s0,-152
    594c:	fef42023          	sw	a5,-32(s0)
    5950:	f8c40793          	add	a5,s0,-116
    5954:	fef42223          	sw	a5,-28(s0)
    5958:	f2040793          	add	a5,s0,-224
    595c:	fef42423          	sw	a5,-24(s0)
    5960:	fe040793          	add	a5,s0,-32
    5964:	00078513          	mv	a0,a5
    5968:	a69fa0ef          	jal	3d0 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>
    596c:	00050793          	mv	a5,a0
    5970:	fef407a3          	sb	a5,-17(s0)
    5974:	000307b7          	lui	a5,0x30
    5978:	1b878513          	add	a0,a5,440 # 301b8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27c1c>
    597c:	360020ef          	jal	7cdc <_Z10uart_printPKc>
    5980:	00000013          	nop
    5984:	0dc12083          	lw	ra,220(sp)
    5988:	0d812403          	lw	s0,216(sp)
    598c:	0e010113          	add	sp,sp,224
    5990:	00008067          	ret

00005994 <_Z19fibonacci_iterativei>:
    5994:	fd010113          	add	sp,sp,-48
    5998:	02812623          	sw	s0,44(sp)
    599c:	03010413          	add	s0,sp,48
    59a0:	fca42e23          	sw	a0,-36(s0)
    59a4:	fdc42703          	lw	a4,-36(s0)
    59a8:	00100793          	li	a5,1
    59ac:	00e7c663          	blt	a5,a4,59b8 <_Z19fibonacci_iterativei+0x24>
    59b0:	fdc42783          	lw	a5,-36(s0)
    59b4:	07c0006f          	j	5a30 <_Z19fibonacci_iterativei+0x9c>
    59b8:	fdc42703          	lw	a4,-36(s0)
    59bc:	02e00793          	li	a5,46
    59c0:	00e7c863          	blt	a5,a4,59d0 <_Z19fibonacci_iterativei+0x3c>
    59c4:	fdc42783          	lw	a5,-36(s0)
    59c8:	0ff7f793          	zext.b	a5,a5
    59cc:	0080006f          	j	59d4 <_Z19fibonacci_iterativei+0x40>
    59d0:	02e00793          	li	a5,46
    59d4:	fef40123          	sb	a5,-30(s0)
    59d8:	fe042623          	sw	zero,-20(s0)
    59dc:	fe042423          	sw	zero,-24(s0)
    59e0:	00100793          	li	a5,1
    59e4:	fef42223          	sw	a5,-28(s0)
    59e8:	00100793          	li	a5,1
    59ec:	fef401a3          	sb	a5,-29(s0)
    59f0:	0300006f          	j	5a20 <_Z19fibonacci_iterativei+0x8c>
    59f4:	fe842703          	lw	a4,-24(s0)
    59f8:	fe442783          	lw	a5,-28(s0)
    59fc:	00f707b3          	add	a5,a4,a5
    5a00:	fef42623          	sw	a5,-20(s0)
    5a04:	fe442783          	lw	a5,-28(s0)
    5a08:	fef42423          	sw	a5,-24(s0)
    5a0c:	fec42783          	lw	a5,-20(s0)
    5a10:	fef42223          	sw	a5,-28(s0)
    5a14:	fe344783          	lbu	a5,-29(s0)
    5a18:	00178793          	add	a5,a5,1
    5a1c:	fef401a3          	sb	a5,-29(s0)
    5a20:	fe344703          	lbu	a4,-29(s0)
    5a24:	fe244783          	lbu	a5,-30(s0)
    5a28:	fcf766e3          	bltu	a4,a5,59f4 <_Z19fibonacci_iterativei+0x60>
    5a2c:	fec42783          	lw	a5,-20(s0)
    5a30:	00078513          	mv	a0,a5
    5a34:	02c12403          	lw	s0,44(sp)
    5a38:	03010113          	add	sp,sp,48
    5a3c:	00008067          	ret

00005a40 <_Z19fibonacci_recursivei>:
    5a40:	fe010113          	add	sp,sp,-32
    5a44:	00112e23          	sw	ra,28(sp)
    5a48:	00812c23          	sw	s0,24(sp)
    5a4c:	00912a23          	sw	s1,20(sp)
    5a50:	02010413          	add	s0,sp,32
    5a54:	fea42623          	sw	a0,-20(s0)
    5a58:	fec42703          	lw	a4,-20(s0)
    5a5c:	00100793          	li	a5,1
    5a60:	00e7c663          	blt	a5,a4,5a6c <_Z19fibonacci_recursivei+0x2c>
    5a64:	fec42783          	lw	a5,-20(s0)
    5a68:	0300006f          	j	5a98 <_Z19fibonacci_recursivei+0x58>
    5a6c:	fec42783          	lw	a5,-20(s0)
    5a70:	fff78793          	add	a5,a5,-1
    5a74:	00078513          	mv	a0,a5
    5a78:	fc9ff0ef          	jal	5a40 <_Z19fibonacci_recursivei>
    5a7c:	00050493          	mv	s1,a0
    5a80:	fec42783          	lw	a5,-20(s0)
    5a84:	ffe78793          	add	a5,a5,-2
    5a88:	00078513          	mv	a0,a5
    5a8c:	fb5ff0ef          	jal	5a40 <_Z19fibonacci_recursivei>
    5a90:	00050793          	mv	a5,a0
    5a94:	00f487b3          	add	a5,s1,a5
    5a98:	00078513          	mv	a0,a5
    5a9c:	01c12083          	lw	ra,28(sp)
    5aa0:	01812403          	lw	s0,24(sp)
    5aa4:	01412483          	lw	s1,20(sp)
    5aa8:	02010113          	add	sp,sp,32
    5aac:	00008067          	ret

Disassembly of section .spi_uart:

00005c00 <_Z9uart_getcb-0x2000>:
	...

00007c00 <_Z9uart_getcb>:
    7c00:	fd010113          	add	sp,sp,-48
    7c04:	02812623          	sw	s0,44(sp)
    7c08:	03010413          	add	s0,sp,48
    7c0c:	00050793          	mv	a5,a0
    7c10:	fcf40fa3          	sb	a5,-33(s0)
    7c14:	fe0407a3          	sb	zero,-17(s0)
    7c18:	002017b7          	lui	a5,0x201
    7c1c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    7c20:	0007c783          	lbu	a5,0(a5)
    7c24:	fef407a3          	sb	a5,-17(s0)
    7c28:	0340006f          	j	7c5c <_Z9uart_getcb+0x5c>
    7c2c:	002017b7          	lui	a5,0x201
    7c30:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    7c34:	0007c783          	lbu	a5,0(a5)
    7c38:	fef40723          	sb	a5,-18(s0)
    7c3c:	fee44783          	lbu	a5,-18(s0)
    7c40:	0027f793          	and	a5,a5,2
    7c44:	00078c63          	beqz	a5,7c5c <_Z9uart_getcb+0x5c>
    7c48:	002017b7          	lui	a5,0x201
    7c4c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    7c50:	0007c783          	lbu	a5,0(a5)
    7c54:	fef407a3          	sb	a5,-17(s0)
    7c58:	00c0006f          	j	7c64 <_Z9uart_getcb+0x64>
    7c5c:	fdf44783          	lbu	a5,-33(s0)
    7c60:	fc0796e3          	bnez	a5,7c2c <_Z9uart_getcb+0x2c>
    7c64:	fef44783          	lbu	a5,-17(s0)
    7c68:	00078513          	mv	a0,a5
    7c6c:	02c12403          	lw	s0,44(sp)
    7c70:	03010113          	add	sp,sp,48
    7c74:	00008067          	ret

00007c78 <_Z9uart_putcc>:
    7c78:	fd010113          	add	sp,sp,-48
    7c7c:	02812623          	sw	s0,44(sp)
    7c80:	03010413          	add	s0,sp,48
    7c84:	00050793          	mv	a5,a0
    7c88:	fcf40fa3          	sb	a5,-33(s0)
    7c8c:	002017b7          	lui	a5,0x201
    7c90:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    7c94:	0007c783          	lbu	a5,0(a5)
    7c98:	fef407a3          	sb	a5,-17(s0)
    7c9c:	002017b7          	lui	a5,0x201
    7ca0:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    7ca4:	0007c783          	lbu	a5,0(a5)
    7ca8:	fef40723          	sb	a5,-18(s0)
    7cac:	fee44783          	lbu	a5,-18(s0)
    7cb0:	0017f793          	and	a5,a5,1
    7cb4:	fe0784e3          	beqz	a5,7c9c <_Z9uart_putcc+0x24>
    7cb8:	002017b7          	lui	a5,0x201
    7cbc:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    7cc0:	fdf44703          	lbu	a4,-33(s0)
    7cc4:	00e78023          	sb	a4,0(a5)
    7cc8:	00000013          	nop
    7ccc:	00000013          	nop
    7cd0:	02c12403          	lw	s0,44(sp)
    7cd4:	03010113          	add	sp,sp,48
    7cd8:	00008067          	ret

00007cdc <_Z10uart_printPKc>:
    7cdc:	fd010113          	add	sp,sp,-48
    7ce0:	02112623          	sw	ra,44(sp)
    7ce4:	02812423          	sw	s0,40(sp)
    7ce8:	03010413          	add	s0,sp,48
    7cec:	fca42e23          	sw	a0,-36(s0)
    7cf0:	fe042623          	sw	zero,-20(s0)
    7cf4:	0400006f          	j	7d34 <_Z10uart_printPKc+0x58>
    7cf8:	fec42783          	lw	a5,-20(s0)
    7cfc:	fdc42703          	lw	a4,-36(s0)
    7d00:	00f707b3          	add	a5,a4,a5
    7d04:	0007c783          	lbu	a5,0(a5)
    7d08:	02078e63          	beqz	a5,7d44 <_Z10uart_printPKc+0x68>
    7d0c:	fec42783          	lw	a5,-20(s0)
    7d10:	fdc42703          	lw	a4,-36(s0)
    7d14:	00f707b3          	add	a5,a4,a5
    7d18:	0007c783          	lbu	a5,0(a5)
    7d1c:	00078513          	mv	a0,a5
    7d20:	f59ff0ef          	jal	7c78 <_Z9uart_putcc>
    7d24:	00000013          	nop
    7d28:	fec42783          	lw	a5,-20(s0)
    7d2c:	00178793          	add	a5,a5,1
    7d30:	fef42623          	sw	a5,-20(s0)
    7d34:	fec42703          	lw	a4,-20(s0)
    7d38:	07f00793          	li	a5,127
    7d3c:	fae7dee3          	bge	a5,a4,7cf8 <_Z10uart_printPKc+0x1c>
    7d40:	0080006f          	j	7d48 <_Z10uart_printPKc+0x6c>
    7d44:	00000013          	nop
    7d48:	00000013          	nop
    7d4c:	02c12083          	lw	ra,44(sp)
    7d50:	02812403          	lw	s0,40(sp)
    7d54:	03010113          	add	sp,sp,48
    7d58:	00008067          	ret

00007d5c <_Z11dump_resultx>:
    7d5c:	fc010113          	add	sp,sp,-64
    7d60:	02112e23          	sw	ra,60(sp)
    7d64:	02812c23          	sw	s0,56(sp)
    7d68:	04010413          	add	s0,sp,64
    7d6c:	fca42423          	sw	a0,-56(s0)
    7d70:	fcb42623          	sw	a1,-52(s0)
    7d74:	fe042623          	sw	zero,-20(s0)
    7d78:	0700006f          	j	7de8 <_Z11dump_resultx+0x8c>
    7d7c:	fec42683          	lw	a3,-20(s0)
    7d80:	00369693          	sll	a3,a3,0x3
    7d84:	fe068613          	add	a2,a3,-32
    7d88:	00064c63          	bltz	a2,7da0 <_Z11dump_resultx+0x44>
    7d8c:	fcc42683          	lw	a3,-52(s0)
    7d90:	40c6d733          	sra	a4,a3,a2
    7d94:	fcc42683          	lw	a3,-52(s0)
    7d98:	41f6d793          	sra	a5,a3,0x1f
    7d9c:	02c0006f          	j	7dc8 <_Z11dump_resultx+0x6c>
    7da0:	fcc42603          	lw	a2,-52(s0)
    7da4:	00161593          	sll	a1,a2,0x1
    7da8:	01f00613          	li	a2,31
    7dac:	40d60633          	sub	a2,a2,a3
    7db0:	00c59633          	sll	a2,a1,a2
    7db4:	fc842583          	lw	a1,-56(s0)
    7db8:	00d5d733          	srl	a4,a1,a3
    7dbc:	00e66733          	or	a4,a2,a4
    7dc0:	fcc42603          	lw	a2,-52(s0)
    7dc4:	40d657b3          	sra	a5,a2,a3
    7dc8:	0ff77613          	zext.b	a2,a4
    7dcc:	fec42683          	lw	a3,-20(s0)
    7dd0:	ff068693          	add	a3,a3,-16
    7dd4:	008686b3          	add	a3,a3,s0
    7dd8:	fec68423          	sb	a2,-24(a3)
    7ddc:	fec42683          	lw	a3,-20(s0)
    7de0:	00168693          	add	a3,a3,1
    7de4:	fed42623          	sw	a3,-20(s0)
    7de8:	fec42603          	lw	a2,-20(s0)
    7dec:	00700693          	li	a3,7
    7df0:	f8c6d6e3          	bge	a3,a2,7d7c <_Z11dump_resultx+0x20>
    7df4:	00800793          	li	a5,8
    7df8:	fef42423          	sw	a5,-24(s0)
    7dfc:	0100006f          	j	7e0c <_Z11dump_resultx+0xb0>
    7e00:	fe842783          	lw	a5,-24(s0)
    7e04:	fff78793          	add	a5,a5,-1
    7e08:	fef42423          	sw	a5,-24(s0)
    7e0c:	fe842703          	lw	a4,-24(s0)
    7e10:	00100793          	li	a5,1
    7e14:	00e7de63          	bge	a5,a4,7e30 <_Z11dump_resultx+0xd4>
    7e18:	fe842783          	lw	a5,-24(s0)
    7e1c:	fff78793          	add	a5,a5,-1
    7e20:	ff078793          	add	a5,a5,-16
    7e24:	008787b3          	add	a5,a5,s0
    7e28:	fe87c783          	lbu	a5,-24(a5)
    7e2c:	fc078ae3          	beqz	a5,7e00 <_Z11dump_resultx+0xa4>
    7e30:	04400513          	li	a0,68
    7e34:	e45ff0ef          	jal	7c78 <_Z9uart_putcc>
    7e38:	fe842783          	lw	a5,-24(s0)
    7e3c:	0ff7f793          	zext.b	a5,a5
    7e40:	00078513          	mv	a0,a5
    7e44:	e35ff0ef          	jal	7c78 <_Z9uart_putcc>
    7e48:	fe042223          	sw	zero,-28(s0)
    7e4c:	02c0006f          	j	7e78 <_Z11dump_resultx+0x11c>
    7e50:	fe442783          	lw	a5,-28(s0)
    7e54:	ff078793          	add	a5,a5,-16
    7e58:	008787b3          	add	a5,a5,s0
    7e5c:	fe87c783          	lbu	a5,-24(a5)
    7e60:	00078513          	mv	a0,a5
    7e64:	e15ff0ef          	jal	7c78 <_Z9uart_putcc>
    7e68:	00000013          	nop
    7e6c:	fe442783          	lw	a5,-28(s0)
    7e70:	00178793          	add	a5,a5,1
    7e74:	fef42223          	sw	a5,-28(s0)
    7e78:	fe442703          	lw	a4,-28(s0)
    7e7c:	fe842783          	lw	a5,-24(s0)
    7e80:	fcf748e3          	blt	a4,a5,7e50 <_Z11dump_resultx+0xf4>
    7e84:	00000013          	nop
    7e88:	00000013          	nop
    7e8c:	03c12083          	lw	ra,60(sp)
    7e90:	03812403          	lw	s0,56(sp)
    7e94:	04010113          	add	sp,sp,64
    7e98:	00008067          	ret

00007e9c <_Z11dump_bufferPKci>:
    7e9c:	fd010113          	add	sp,sp,-48
    7ea0:	02112623          	sw	ra,44(sp)
    7ea4:	02812423          	sw	s0,40(sp)
    7ea8:	03212223          	sw	s2,36(sp)
    7eac:	03312023          	sw	s3,32(sp)
    7eb0:	03010413          	add	s0,sp,48
    7eb4:	fca42e23          	sw	a0,-36(s0)
    7eb8:	fcb42c23          	sw	a1,-40(s0)
    7ebc:	fdc42783          	lw	a5,-36(s0)
    7ec0:	fef42623          	sw	a5,-20(s0)
    7ec4:	fe042423          	sw	zero,-24(s0)
    7ec8:	0440006f          	j	7f0c <_Z11dump_bufferPKci+0x70>
    7ecc:	fec42783          	lw	a5,-20(s0)
    7ed0:	0007c783          	lbu	a5,0(a5)
    7ed4:	fef403a3          	sb	a5,-25(s0)
    7ed8:	fe744783          	lbu	a5,-25(s0)
    7edc:	0ff7f793          	zext.b	a5,a5
    7ee0:	00078913          	mv	s2,a5
    7ee4:	00000993          	li	s3,0
    7ee8:	00090513          	mv	a0,s2
    7eec:	00098593          	mv	a1,s3
    7ef0:	e6dff0ef          	jal	7d5c <_Z11dump_resultx>
    7ef4:	fec42783          	lw	a5,-20(s0)
    7ef8:	00178793          	add	a5,a5,1
    7efc:	fef42623          	sw	a5,-20(s0)
    7f00:	fe842783          	lw	a5,-24(s0)
    7f04:	00178793          	add	a5,a5,1
    7f08:	fef42423          	sw	a5,-24(s0)
    7f0c:	fe842703          	lw	a4,-24(s0)
    7f10:	fd842783          	lw	a5,-40(s0)
    7f14:	faf74ce3          	blt	a4,a5,7ecc <_Z11dump_bufferPKci+0x30>
    7f18:	00000013          	nop
    7f1c:	00000013          	nop
    7f20:	02c12083          	lw	ra,44(sp)
    7f24:	02812403          	lw	s0,40(sp)
    7f28:	02412903          	lw	s2,36(sp)
    7f2c:	02012983          	lw	s3,32(sp)
    7f30:	03010113          	add	sp,sp,48
    7f34:	00008067          	ret

00007f38 <_Z16uart_print_int32i>:
    7f38:	fc010113          	add	sp,sp,-64
    7f3c:	02112e23          	sw	ra,60(sp)
    7f40:	02812c23          	sw	s0,56(sp)
    7f44:	04010413          	add	s0,sp,64
    7f48:	fca42623          	sw	a0,-52(s0)
    7f4c:	fe042623          	sw	zero,-20(s0)
    7f50:	fe0405a3          	sb	zero,-21(s0)
    7f54:	fcc42783          	lw	a5,-52(s0)
    7f58:	0007dc63          	bgez	a5,7f70 <_Z16uart_print_int32i+0x38>
    7f5c:	00100793          	li	a5,1
    7f60:	fef405a3          	sb	a5,-21(s0)
    7f64:	fcc42783          	lw	a5,-52(s0)
    7f68:	40f007b3          	neg	a5,a5
    7f6c:	fcf42623          	sw	a5,-52(s0)
    7f70:	fcc42783          	lw	a5,-52(s0)
    7f74:	06079463          	bnez	a5,7fdc <_Z16uart_print_int32i+0xa4>
    7f78:	03000513          	li	a0,48
    7f7c:	cfdff0ef          	jal	7c78 <_Z9uart_putcc>
    7f80:	0c00006f          	j	8040 <_Z16uart_print_int32i+0x108>
    7f84:	fcc42783          	lw	a5,-52(s0)
    7f88:	00a00593          	li	a1,10
    7f8c:	00078513          	mv	a0,a5
    7f90:	900f90ef          	jal	1090 <__modsi3>
    7f94:	00050793          	mv	a5,a0
    7f98:	fef42223          	sw	a5,-28(s0)
    7f9c:	fe442783          	lw	a5,-28(s0)
    7fa0:	0ff7f793          	zext.b	a5,a5
    7fa4:	03078793          	add	a5,a5,48
    7fa8:	0ff7f713          	zext.b	a4,a5
    7fac:	fec42783          	lw	a5,-20(s0)
    7fb0:	00178693          	add	a3,a5,1
    7fb4:	fed42623          	sw	a3,-20(s0)
    7fb8:	ff078793          	add	a5,a5,-16
    7fbc:	008787b3          	add	a5,a5,s0
    7fc0:	fee78423          	sb	a4,-24(a5)
    7fc4:	fcc42783          	lw	a5,-52(s0)
    7fc8:	00a00593          	li	a1,10
    7fcc:	00078513          	mv	a0,a5
    7fd0:	83cf90ef          	jal	100c <__divsi3>
    7fd4:	00050793          	mv	a5,a0
    7fd8:	fcf42623          	sw	a5,-52(s0)
    7fdc:	fcc42783          	lw	a5,-52(s0)
    7fe0:	faf042e3          	bgtz	a5,7f84 <_Z16uart_print_int32i+0x4c>
    7fe4:	feb44783          	lbu	a5,-21(s0)
    7fe8:	04078063          	beqz	a5,8028 <_Z16uart_print_int32i+0xf0>
    7fec:	fec42783          	lw	a5,-20(s0)
    7ff0:	00178713          	add	a4,a5,1
    7ff4:	fee42623          	sw	a4,-20(s0)
    7ff8:	ff078793          	add	a5,a5,-16
    7ffc:	008787b3          	add	a5,a5,s0
    8000:	02d00713          	li	a4,45
    8004:	fee78423          	sb	a4,-24(a5)
    8008:	0200006f          	j	8028 <_Z16uart_print_int32i+0xf0>
    800c:	fec42783          	lw	a5,-20(s0)
    8010:	ff078793          	add	a5,a5,-16
    8014:	008787b3          	add	a5,a5,s0
    8018:	fe87c783          	lbu	a5,-24(a5)
    801c:	00078513          	mv	a0,a5
    8020:	c59ff0ef          	jal	7c78 <_Z9uart_putcc>
    8024:	00000013          	nop
    8028:	fec42783          	lw	a5,-20(s0)
    802c:	fff78713          	add	a4,a5,-1
    8030:	fee42623          	sw	a4,-20(s0)
    8034:	00f037b3          	snez	a5,a5
    8038:	0ff7f793          	zext.b	a5,a5
    803c:	fc0798e3          	bnez	a5,800c <_Z16uart_print_int32i+0xd4>
    8040:	03c12083          	lw	ra,60(sp)
    8044:	03812403          	lw	s0,56(sp)
    8048:	04010113          	add	sp,sp,64
    804c:	00008067          	ret

00008050 <_Z16uart_print_int64x>:
    8050:	fb010113          	add	sp,sp,-80
    8054:	04112623          	sw	ra,76(sp)
    8058:	04812423          	sw	s0,72(sp)
    805c:	05010413          	add	s0,sp,80
    8060:	faa42c23          	sw	a0,-72(s0)
    8064:	fab42e23          	sw	a1,-68(s0)
    8068:	fe042623          	sw	zero,-20(s0)
    806c:	fe0405a3          	sb	zero,-21(s0)
    8070:	fbc42783          	lw	a5,-68(s0)
    8074:	0207de63          	bgez	a5,80b0 <_Z16uart_print_int64x+0x60>
    8078:	00100793          	li	a5,1
    807c:	fef405a3          	sb	a5,-21(s0)
    8080:	00000613          	li	a2,0
    8084:	00000693          	li	a3,0
    8088:	fb842503          	lw	a0,-72(s0)
    808c:	fbc42583          	lw	a1,-68(s0)
    8090:	40a60733          	sub	a4,a2,a0
    8094:	00070813          	mv	a6,a4
    8098:	01063833          	sltu	a6,a2,a6
    809c:	40b687b3          	sub	a5,a3,a1
    80a0:	410786b3          	sub	a3,a5,a6
    80a4:	00068793          	mv	a5,a3
    80a8:	fae42c23          	sw	a4,-72(s0)
    80ac:	faf42e23          	sw	a5,-68(s0)
    80b0:	fb842783          	lw	a5,-72(s0)
    80b4:	fbc42703          	lw	a4,-68(s0)
    80b8:	00e7e7b3          	or	a5,a5,a4
    80bc:	08079663          	bnez	a5,8148 <_Z16uart_print_int64x+0xf8>
    80c0:	03000513          	li	a0,48
    80c4:	bb5ff0ef          	jal	7c78 <_Z9uart_putcc>
    80c8:	0f40006f          	j	81bc <_Z16uart_print_int64x+0x16c>
    80cc:	fb842703          	lw	a4,-72(s0)
    80d0:	fbc42783          	lw	a5,-68(s0)
    80d4:	00a00613          	li	a2,10
    80d8:	00000693          	li	a3,0
    80dc:	00070513          	mv	a0,a4
    80e0:	00078593          	mv	a1,a5
    80e4:	9edf80ef          	jal	ad0 <__moddi3>
    80e8:	00050713          	mv	a4,a0
    80ec:	00058793          	mv	a5,a1
    80f0:	fee42223          	sw	a4,-28(s0)
    80f4:	fe442783          	lw	a5,-28(s0)
    80f8:	0ff7f793          	zext.b	a5,a5
    80fc:	03078793          	add	a5,a5,48
    8100:	0ff7f713          	zext.b	a4,a5
    8104:	fec42783          	lw	a5,-20(s0)
    8108:	00178693          	add	a3,a5,1
    810c:	fed42623          	sw	a3,-20(s0)
    8110:	ff078793          	add	a5,a5,-16
    8114:	008787b3          	add	a5,a5,s0
    8118:	fce78e23          	sb	a4,-36(a5)
    811c:	fb842703          	lw	a4,-72(s0)
    8120:	fbc42783          	lw	a5,-68(s0)
    8124:	00a00613          	li	a2,10
    8128:	00000693          	li	a3,0
    812c:	00070513          	mv	a0,a4
    8130:	00078593          	mv	a1,a5
    8134:	b80f80ef          	jal	4b4 <__divdi3>
    8138:	00050713          	mv	a4,a0
    813c:	00058793          	mv	a5,a1
    8140:	fae42c23          	sw	a4,-72(s0)
    8144:	faf42e23          	sw	a5,-68(s0)
    8148:	fbc42783          	lw	a5,-68(s0)
    814c:	f8f040e3          	bgtz	a5,80cc <_Z16uart_print_int64x+0x7c>
    8150:	fbc42783          	lw	a5,-68(s0)
    8154:	00079663          	bnez	a5,8160 <_Z16uart_print_int64x+0x110>
    8158:	fb842783          	lw	a5,-72(s0)
    815c:	f60798e3          	bnez	a5,80cc <_Z16uart_print_int64x+0x7c>
    8160:	feb44783          	lbu	a5,-21(s0)
    8164:	04078063          	beqz	a5,81a4 <_Z16uart_print_int64x+0x154>
    8168:	fec42783          	lw	a5,-20(s0)
    816c:	00178713          	add	a4,a5,1
    8170:	fee42623          	sw	a4,-20(s0)
    8174:	ff078793          	add	a5,a5,-16
    8178:	008787b3          	add	a5,a5,s0
    817c:	02d00713          	li	a4,45
    8180:	fce78e23          	sb	a4,-36(a5)
    8184:	0200006f          	j	81a4 <_Z16uart_print_int64x+0x154>
    8188:	fec42783          	lw	a5,-20(s0)
    818c:	ff078793          	add	a5,a5,-16
    8190:	008787b3          	add	a5,a5,s0
    8194:	fdc7c783          	lbu	a5,-36(a5)
    8198:	00078513          	mv	a0,a5
    819c:	addff0ef          	jal	7c78 <_Z9uart_putcc>
    81a0:	00000013          	nop
    81a4:	fec42783          	lw	a5,-20(s0)
    81a8:	fff78713          	add	a4,a5,-1
    81ac:	fee42623          	sw	a4,-20(s0)
    81b0:	00f037b3          	snez	a5,a5
    81b4:	0ff7f793          	zext.b	a5,a5
    81b8:	fc0798e3          	bnez	a5,8188 <_Z16uart_print_int64x+0x138>
    81bc:	04c12083          	lw	ra,76(sp)
    81c0:	04812403          	lw	s0,72(sp)
    81c4:	05010113          	add	sp,sp,80
    81c8:	00008067          	ret

000081cc <_Z12uart_getlinePci>:
    81cc:	fd010113          	add	sp,sp,-48
    81d0:	02112623          	sw	ra,44(sp)
    81d4:	02812423          	sw	s0,40(sp)
    81d8:	03010413          	add	s0,sp,48
    81dc:	fca42e23          	sw	a0,-36(s0)
    81e0:	fcb42c23          	sw	a1,-40(s0)
    81e4:	fe0405a3          	sb	zero,-21(s0)
    81e8:	fe042623          	sw	zero,-20(s0)
    81ec:	00100513          	li	a0,1
    81f0:	a11ff0ef          	jal	7c00 <_Z9uart_getcb>
    81f4:	00050793          	mv	a5,a0
    81f8:	fef405a3          	sb	a5,-21(s0)
    81fc:	feb44703          	lbu	a4,-21(s0)
    8200:	00a00793          	li	a5,10
    8204:	00f70863          	beq	a4,a5,8214 <_Z12uart_getlinePci+0x48>
    8208:	feb44703          	lbu	a4,-21(s0)
    820c:	00d00793          	li	a5,13
    8210:	02f71463          	bne	a4,a5,8238 <_Z12uart_getlinePci+0x6c>
    8214:	fec42783          	lw	a5,-20(s0)
    8218:	fdc42703          	lw	a4,-36(s0)
    821c:	00f707b3          	add	a5,a4,a5
    8220:	00078023          	sb	zero,0(a5)
    8224:	000307b7          	lui	a5,0x30
    8228:	27878513          	add	a0,a5,632 # 30278 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cdc>
    822c:	ab1ff0ef          	jal	7cdc <_Z10uart_printPKc>
    8230:	fe042623          	sw	zero,-20(s0)
    8234:	0c80006f          	j	82fc <_Z12uart_getlinePci+0x130>
    8238:	feb44703          	lbu	a4,-21(s0)
    823c:	00800793          	li	a5,8
    8240:	00f70863          	beq	a4,a5,8250 <_Z12uart_getlinePci+0x84>
    8244:	feb44703          	lbu	a4,-21(s0)
    8248:	07f00793          	li	a5,127
    824c:	02f71863          	bne	a4,a5,827c <_Z12uart_getlinePci+0xb0>
    8250:	fec42783          	lw	a5,-20(s0)
    8254:	02f05063          	blez	a5,8274 <_Z12uart_getlinePci+0xa8>
    8258:	fec42783          	lw	a5,-20(s0)
    825c:	fff78793          	add	a5,a5,-1
    8260:	fef42623          	sw	a5,-20(s0)
    8264:	000307b7          	lui	a5,0x30
    8268:	28078513          	add	a0,a5,640 # 30280 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27ce4>
    826c:	a71ff0ef          	jal	7cdc <_Z10uart_printPKc>
    8270:	0880006f          	j	82f8 <_Z12uart_getlinePci+0x12c>
    8274:	fe042623          	sw	zero,-20(s0)
    8278:	0800006f          	j	82f8 <_Z12uart_getlinePci+0x12c>
    827c:	fd842783          	lw	a5,-40(s0)
    8280:	fff78793          	add	a5,a5,-1
    8284:	fec42703          	lw	a4,-20(s0)
    8288:	f6f752e3          	bge	a4,a5,81ec <_Z12uart_getlinePci+0x20>
    828c:	feb44783          	lbu	a5,-21(s0)
    8290:	02078a63          	beqz	a5,82c4 <_Z12uart_getlinePci+0xf8>
    8294:	feb44703          	lbu	a4,-21(s0)
    8298:	fdc42683          	lw	a3,-36(s0)
    829c:	fec42783          	lw	a5,-20(s0)
    82a0:	00178613          	add	a2,a5,1
    82a4:	fec42623          	sw	a2,-20(s0)
    82a8:	00f687b3          	add	a5,a3,a5
    82ac:	00e78023          	sb	a4,0(a5)
    82b0:	feb44783          	lbu	a5,-21(s0)
    82b4:	00078513          	mv	a0,a5
    82b8:	9c1ff0ef          	jal	7c78 <_Z9uart_putcc>
    82bc:	00000013          	nop
    82c0:	f2dff06f          	j	81ec <_Z12uart_getlinePci+0x20>
    82c4:	fd842783          	lw	a5,-40(s0)
    82c8:	fff78793          	add	a5,a5,-1
    82cc:	fdc42703          	lw	a4,-36(s0)
    82d0:	00f707b3          	add	a5,a4,a5
    82d4:	00078023          	sb	zero,0(a5)
    82d8:	000307b7          	lui	a5,0x30
    82dc:	28478513          	add	a0,a5,644 # 30284 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27ce8>
    82e0:	9fdff0ef          	jal	7cdc <_Z10uart_printPKc>
    82e4:	fd842583          	lw	a1,-40(s0)
    82e8:	fdc42503          	lw	a0,-36(s0)
    82ec:	bb1ff0ef          	jal	7e9c <_Z11dump_bufferPKci>
    82f0:	fe042623          	sw	zero,-20(s0)
    82f4:	0080006f          	j	82fc <_Z12uart_getlinePci+0x130>
    82f8:	ef5ff06f          	j	81ec <_Z12uart_getlinePci+0x20>
    82fc:	00000013          	nop
    8300:	02c12083          	lw	ra,44(sp)
    8304:	02812403          	lw	s0,40(sp)
    8308:	03010113          	add	sp,sp,48
    830c:	00008067          	ret

00008310 <_Z6strcmpPKcS0_>:
    8310:	fd010113          	add	sp,sp,-48
    8314:	02812623          	sw	s0,44(sp)
    8318:	03010413          	add	s0,sp,48
    831c:	fca42e23          	sw	a0,-36(s0)
    8320:	fcb42c23          	sw	a1,-40(s0)
    8324:	fe042623          	sw	zero,-20(s0)
    8328:	fec42783          	lw	a5,-20(s0)
    832c:	fdc42703          	lw	a4,-36(s0)
    8330:	00f707b3          	add	a5,a4,a5
    8334:	0007c703          	lbu	a4,0(a5)
    8338:	fec42783          	lw	a5,-20(s0)
    833c:	fd842683          	lw	a3,-40(s0)
    8340:	00f687b3          	add	a5,a3,a5
    8344:	0007c783          	lbu	a5,0(a5)
    8348:	02f70863          	beq	a4,a5,8378 <_Z6strcmpPKcS0_+0x68>
    834c:	fec42783          	lw	a5,-20(s0)
    8350:	fdc42703          	lw	a4,-36(s0)
    8354:	00f707b3          	add	a5,a4,a5
    8358:	0007c783          	lbu	a5,0(a5)
    835c:	00078693          	mv	a3,a5
    8360:	fec42783          	lw	a5,-20(s0)
    8364:	fd842703          	lw	a4,-40(s0)
    8368:	00f707b3          	add	a5,a4,a5
    836c:	0007c783          	lbu	a5,0(a5)
    8370:	40f687b3          	sub	a5,a3,a5
    8374:	0300006f          	j	83a4 <_Z6strcmpPKcS0_+0x94>
    8378:	fec42783          	lw	a5,-20(s0)
    837c:	fdc42703          	lw	a4,-36(s0)
    8380:	00f707b3          	add	a5,a4,a5
    8384:	0007c783          	lbu	a5,0(a5)
    8388:	00079663          	bnez	a5,8394 <_Z6strcmpPKcS0_+0x84>
    838c:	00000793          	li	a5,0
    8390:	0140006f          	j	83a4 <_Z6strcmpPKcS0_+0x94>
    8394:	fec42783          	lw	a5,-20(s0)
    8398:	00178793          	add	a5,a5,1
    839c:	fef42623          	sw	a5,-20(s0)
    83a0:	f89ff06f          	j	8328 <_Z6strcmpPKcS0_+0x18>
    83a4:	00078513          	mv	a0,a5
    83a8:	02c12403          	lw	s0,44(sp)
    83ac:	03010113          	add	sp,sp,48
    83b0:	00008067          	ret

000083b4 <_Z7strncmpPKcS0_i>:
    83b4:	fd010113          	add	sp,sp,-48
    83b8:	02812623          	sw	s0,44(sp)
    83bc:	03010413          	add	s0,sp,48
    83c0:	fca42e23          	sw	a0,-36(s0)
    83c4:	fcb42c23          	sw	a1,-40(s0)
    83c8:	fcc42a23          	sw	a2,-44(s0)
    83cc:	fe042623          	sw	zero,-20(s0)
    83d0:	07c0006f          	j	844c <_Z7strncmpPKcS0_i+0x98>
    83d4:	fec42783          	lw	a5,-20(s0)
    83d8:	fdc42703          	lw	a4,-36(s0)
    83dc:	00f707b3          	add	a5,a4,a5
    83e0:	0007c703          	lbu	a4,0(a5)
    83e4:	fec42783          	lw	a5,-20(s0)
    83e8:	fd842683          	lw	a3,-40(s0)
    83ec:	00f687b3          	add	a5,a3,a5
    83f0:	0007c783          	lbu	a5,0(a5)
    83f4:	02f70863          	beq	a4,a5,8424 <_Z7strncmpPKcS0_i+0x70>
    83f8:	fec42783          	lw	a5,-20(s0)
    83fc:	fdc42703          	lw	a4,-36(s0)
    8400:	00f707b3          	add	a5,a4,a5
    8404:	0007c783          	lbu	a5,0(a5)
    8408:	00078693          	mv	a3,a5
    840c:	fec42783          	lw	a5,-20(s0)
    8410:	fd842703          	lw	a4,-40(s0)
    8414:	00f707b3          	add	a5,a4,a5
    8418:	0007c783          	lbu	a5,0(a5)
    841c:	40f687b3          	sub	a5,a3,a5
    8420:	03c0006f          	j	845c <_Z7strncmpPKcS0_i+0xa8>
    8424:	fec42783          	lw	a5,-20(s0)
    8428:	fdc42703          	lw	a4,-36(s0)
    842c:	00f707b3          	add	a5,a4,a5
    8430:	0007c783          	lbu	a5,0(a5)
    8434:	00079663          	bnez	a5,8440 <_Z7strncmpPKcS0_i+0x8c>
    8438:	00000793          	li	a5,0
    843c:	0200006f          	j	845c <_Z7strncmpPKcS0_i+0xa8>
    8440:	fec42783          	lw	a5,-20(s0)
    8444:	00178793          	add	a5,a5,1
    8448:	fef42623          	sw	a5,-20(s0)
    844c:	fec42703          	lw	a4,-20(s0)
    8450:	fd442783          	lw	a5,-44(s0)
    8454:	f8f740e3          	blt	a4,a5,83d4 <_Z7strncmpPKcS0_i+0x20>
    8458:	00000793          	li	a5,0
    845c:	00078513          	mv	a0,a5
    8460:	02c12403          	lw	s0,44(sp)
    8464:	03010113          	add	sp,sp,48
    8468:	00008067          	ret

0000846c <_Z15process_commandPcS_PVb>:
    846c:	fe010113          	add	sp,sp,-32
    8470:	00112e23          	sw	ra,28(sp)
    8474:	00812c23          	sw	s0,24(sp)
    8478:	02010413          	add	s0,sp,32
    847c:	fea42623          	sw	a0,-20(s0)
    8480:	feb42423          	sw	a1,-24(s0)
    8484:	fec42223          	sw	a2,-28(s0)
    8488:	fec42783          	lw	a5,-20(s0)
    848c:	0007c783          	lbu	a5,0(a5)
    8490:	0e078c63          	beqz	a5,8588 <_Z15process_commandPcS_PVb+0x11c>
    8494:	000307b7          	lui	a5,0x30
    8498:	29878593          	add	a1,a5,664 # 30298 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27cfc>
    849c:	fec42503          	lw	a0,-20(s0)
    84a0:	e71ff0ef          	jal	8310 <_Z6strcmpPKcS0_>
    84a4:	00050793          	mv	a5,a0
    84a8:	0017b793          	seqz	a5,a5
    84ac:	0ff7f793          	zext.b	a5,a5
    84b0:	00078863          	beqz	a5,84c0 <_Z15process_commandPcS_PVb+0x54>
    84b4:	fe842503          	lw	a0,-24(s0)
    84b8:	f49fc0ef          	jal	5400 <_Z8cmd_echoPc>
    84bc:	0d00006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    84c0:	000307b7          	lui	a5,0x30
    84c4:	2a078593          	add	a1,a5,672 # 302a0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d04>
    84c8:	fec42503          	lw	a0,-20(s0)
    84cc:	e45ff0ef          	jal	8310 <_Z6strcmpPKcS0_>
    84d0:	00050793          	mv	a5,a0
    84d4:	0017b793          	seqz	a5,a5
    84d8:	0ff7f793          	zext.b	a5,a5
    84dc:	00078863          	beqz	a5,84ec <_Z15process_commandPcS_PVb+0x80>
    84e0:	fe842503          	lw	a0,-24(s0)
    84e4:	f59fc0ef          	jal	543c <_Z8cmd_helpPc>
    84e8:	0a40006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    84ec:	000307b7          	lui	a5,0x30
    84f0:	2a878593          	add	a1,a5,680 # 302a8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d0c>
    84f4:	fec42503          	lw	a0,-20(s0)
    84f8:	e19ff0ef          	jal	8310 <_Z6strcmpPKcS0_>
    84fc:	00050793          	mv	a5,a0
    8500:	0017b793          	seqz	a5,a5
    8504:	0ff7f793          	zext.b	a5,a5
    8508:	00078663          	beqz	a5,8514 <_Z15process_commandPcS_PVb+0xa8>
    850c:	814fd0ef          	jal	5520 <_Z8cmd_freev>
    8510:	07c0006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    8514:	000307b7          	lui	a5,0x30
    8518:	2b078593          	add	a1,a5,688 # 302b0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d14>
    851c:	fec42503          	lw	a0,-20(s0)
    8520:	df1ff0ef          	jal	8310 <_Z6strcmpPKcS0_>
    8524:	00050793          	mv	a5,a0
    8528:	0017b793          	seqz	a5,a5
    852c:	0ff7f793          	zext.b	a5,a5
    8530:	00078663          	beqz	a5,853c <_Z15process_commandPcS_PVb+0xd0>
    8534:	a80fd0ef          	jal	57b4 <_Z21cmd_matrix_multiplierv>
    8538:	0540006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    853c:	000307b7          	lui	a5,0x30
    8540:	2b878593          	add	a1,a5,696 # 302b8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d1c>
    8544:	fec42503          	lw	a0,-20(s0)
    8548:	dc9ff0ef          	jal	8310 <_Z6strcmpPKcS0_>
    854c:	00050793          	mv	a5,a0
    8550:	0017b793          	seqz	a5,a5
    8554:	0ff7f793          	zext.b	a5,a5
    8558:	00078a63          	beqz	a5,856c <_Z15process_commandPcS_PVb+0x100>
    855c:	fe442583          	lw	a1,-28(s0)
    8560:	fe842503          	lw	a0,-24(s0)
    8564:	f55fc0ef          	jal	54b8 <_Z8cmd_exitPcPVb>
    8568:	0240006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    856c:	000307b7          	lui	a5,0x30
    8570:	2c078513          	add	a0,a5,704 # 302c0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d24>
    8574:	f68ff0ef          	jal	7cdc <_Z10uart_printPKc>
    8578:	000307b7          	lui	a5,0x30
    857c:	2c478513          	add	a0,a5,708 # 302c4 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27d28>
    8580:	f5cff0ef          	jal	7cdc <_Z10uart_printPKc>
    8584:	0080006f          	j	858c <_Z15process_commandPcS_PVb+0x120>
    8588:	00000013          	nop
    858c:	01c12083          	lw	ra,28(sp)
    8590:	01812403          	lw	s0,24(sp)
    8594:	02010113          	add	sp,sp,32
    8598:	00008067          	ret

0000859c <_Z17cmd_arg_tokenizerPcS_S_ii>:
    859c:	fc010113          	add	sp,sp,-64
    85a0:	02812e23          	sw	s0,60(sp)
    85a4:	04010413          	add	s0,sp,64
    85a8:	fca42e23          	sw	a0,-36(s0)
    85ac:	fcb42c23          	sw	a1,-40(s0)
    85b0:	fcc42a23          	sw	a2,-44(s0)
    85b4:	fcd42823          	sw	a3,-48(s0)
    85b8:	fce42623          	sw	a4,-52(s0)
    85bc:	fe042623          	sw	zero,-20(s0)
    85c0:	fe042423          	sw	zero,-24(s0)
    85c4:	02c0006f          	j	85f0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    85c8:	fdc42783          	lw	a5,-36(s0)
    85cc:	00178713          	add	a4,a5,1
    85d0:	fce42e23          	sw	a4,-36(s0)
    85d4:	0007c703          	lbu	a4,0(a5)
    85d8:	fd842683          	lw	a3,-40(s0)
    85dc:	fec42783          	lw	a5,-20(s0)
    85e0:	00178613          	add	a2,a5,1
    85e4:	fec42623          	sw	a2,-20(s0)
    85e8:	00f687b3          	add	a5,a3,a5
    85ec:	00e78023          	sb	a4,0(a5)
    85f0:	fdc42783          	lw	a5,-36(s0)
    85f4:	0007c783          	lbu	a5,0(a5)
    85f8:	02078263          	beqz	a5,861c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    85fc:	fdc42783          	lw	a5,-36(s0)
    8600:	0007c703          	lbu	a4,0(a5)
    8604:	02000793          	li	a5,32
    8608:	00f70a63          	beq	a4,a5,861c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    860c:	fd042783          	lw	a5,-48(s0)
    8610:	fff78793          	add	a5,a5,-1
    8614:	fec42703          	lw	a4,-20(s0)
    8618:	faf748e3          	blt	a4,a5,85c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    861c:	fec42783          	lw	a5,-20(s0)
    8620:	fd842703          	lw	a4,-40(s0)
    8624:	00f707b3          	add	a5,a4,a5
    8628:	00078023          	sb	zero,0(a5)
    862c:	0100006f          	j	863c <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    8630:	fdc42783          	lw	a5,-36(s0)
    8634:	00178793          	add	a5,a5,1
    8638:	fcf42e23          	sw	a5,-36(s0)
    863c:	fdc42783          	lw	a5,-36(s0)
    8640:	0007c703          	lbu	a4,0(a5)
    8644:	02000793          	li	a5,32
    8648:	fef704e3          	beq	a4,a5,8630 <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    864c:	02c0006f          	j	8678 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    8650:	fdc42783          	lw	a5,-36(s0)
    8654:	00178713          	add	a4,a5,1
    8658:	fce42e23          	sw	a4,-36(s0)
    865c:	0007c703          	lbu	a4,0(a5)
    8660:	fd442683          	lw	a3,-44(s0)
    8664:	fe842783          	lw	a5,-24(s0)
    8668:	00178613          	add	a2,a5,1
    866c:	fec42423          	sw	a2,-24(s0)
    8670:	00f687b3          	add	a5,a3,a5
    8674:	00e78023          	sb	a4,0(a5)
    8678:	fdc42783          	lw	a5,-36(s0)
    867c:	0007c783          	lbu	a5,0(a5)
    8680:	00078a63          	beqz	a5,8694 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    8684:	fcc42783          	lw	a5,-52(s0)
    8688:	fff78793          	add	a5,a5,-1
    868c:	fe842703          	lw	a4,-24(s0)
    8690:	fcf740e3          	blt	a4,a5,8650 <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    8694:	fe842783          	lw	a5,-24(s0)
    8698:	fd442703          	lw	a4,-44(s0)
    869c:	00f707b3          	add	a5,a4,a5
    86a0:	00078023          	sb	zero,0(a5)
    86a4:	00000013          	nop
    86a8:	03c12403          	lw	s0,60(sp)
    86ac:	04010113          	add	sp,sp,64
    86b0:	00008067          	ret
