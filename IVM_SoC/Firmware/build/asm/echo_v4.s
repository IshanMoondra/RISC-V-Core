
/out/echo_v4.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_Z6_startv>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	0003e197          	auipc	gp,0x3e
      10:	7f418193          	add	gp,gp,2036 # 3e800 <_global_pointer>
      14:	00000013          	nop
      18:	060000ef          	jal	78 <_Z10soc_bootupv>
      1c:	688000ef          	jal	6a4 <main>
      20:	00050793          	mv	a5,a0
      24:	00078493          	mv	s1,a5
      28:	000307b7          	lui	a5,0x30
      2c:	15878513          	add	a0,a5,344 # 30158 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273bc>
      30:	4ac080ef          	jal	84dc <_Z10uart_printPKc>
      34:	00048513          	mv	a0,s1
      38:	700080ef          	jal	8738 <_Z16uart_print_int32i>
      3c:	00000013          	nop
      40:	000307b7          	lui	a5,0x30
      44:	16878513          	add	a0,a5,360 # 30168 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273cc>
      48:	494080ef          	jal	84dc <_Z10uart_printPKc>
      4c:	002017b7          	lui	a5,0x201
      50:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
      54:	0007a783          	lw	a5,0(a5)
      58:	00078513          	mv	a0,a5
      5c:	6dc080ef          	jal	8738 <_Z16uart_print_int32i>
      60:	00000013          	nop
      64:	000307b7          	lui	a5,0x30
      68:	18878513          	add	a0,a5,392 # 30188 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273ec>
      6c:	470080ef          	jal	84dc <_Z10uart_printPKc>
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
      d0:	11878513          	add	a0,a5,280 # 30118 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2737c>
      d4:	408080ef          	jal	84dc <_Z10uart_printPKc>
      d8:	449050ef          	jal	5d20 <_Z8cmd_freev>
      dc:	000307b7          	lui	a5,0x30
      e0:	12478513          	add	a0,a5,292 # 30124 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27388>
      e4:	3f8080ef          	jal	84dc <_Z10uart_printPKc>
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
     120:	730080ef          	jal	8850 <_Z16uart_print_int64x>
     124:	00000013          	nop
     128:	000307b7          	lui	a5,0x30
     12c:	14078513          	add	a0,a5,320 # 30140 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273a4>
     130:	3ac080ef          	jal	84dc <_Z10uart_printPKc>
     134:	000307b7          	lui	a5,0x30
     138:	15078513          	add	a0,a5,336 # 30150 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273b4>
     13c:	3a0080ef          	jal	84dc <_Z10uart_printPKc>
     140:	00000013          	nop
     144:	02c12083          	lw	ra,44(sp)
     148:	02812403          	lw	s0,40(sp)
     14c:	03010113          	add	sp,sp,48
     150:	00008067          	ret

00000154 <_ZZ4mainENKUlvE_clEv>:
     154:	fe010113          	add	sp,sp,-32
     158:	00112e23          	sw	ra,28(sp)
     15c:	00812c23          	sw	s0,24(sp)
     160:	02010413          	add	s0,sp,32
     164:	fea42623          	sw	a0,-20(s0)
     168:	fec42783          	lw	a5,-20(s0)
     16c:	0007a503          	lw	a0,0(a5)
     170:	fec42783          	lw	a5,-20(s0)
     174:	0047a583          	lw	a1,4(a5)
     178:	fec42783          	lw	a5,-20(s0)
     17c:	0087a603          	lw	a2,8(a5)
     180:	fec42783          	lw	a5,-20(s0)
     184:	00c7a683          	lw	a3,12(a5)
     188:	fec42783          	lw	a5,-20(s0)
     18c:	0107a703          	lw	a4,16(a5)
     190:	fec42783          	lw	a5,-20(s0)
     194:	0147a883          	lw	a7,20(a5)
     198:	fec42783          	lw	a5,-20(s0)
     19c:	0187a783          	lw	a5,24(a5)
     1a0:	00078813          	mv	a6,a5
     1a4:	00088793          	mv	a5,a7
     1a8:	2e5000ef          	jal	c8c <_Z13math_gauntletPiS_S_S_S_S_S_>
     1ac:	00050793          	mv	a5,a0
     1b0:	00078513          	mv	a0,a5
     1b4:	01c12083          	lw	ra,28(sp)
     1b8:	01812403          	lw	s0,24(sp)
     1bc:	02010113          	add	sp,sp,32
     1c0:	00008067          	ret

000001c4 <_Z14instrument_cpiIZ4mainEUlvE_EDaOT_>:
     1c4:	fc010113          	add	sp,sp,-64
     1c8:	02112e23          	sw	ra,60(sp)
     1cc:	02812c23          	sw	s0,56(sp)
     1d0:	04010413          	add	s0,sp,64
     1d4:	fca42623          	sw	a0,-52(s0)
     1d8:	002017b7          	lui	a5,0x201
     1dc:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     1e0:	0007a783          	lw	a5,0(a5)
     1e4:	fef42623          	sw	a5,-20(s0)
     1e8:	002017b7          	lui	a5,0x201
     1ec:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     1f0:	0007a783          	lw	a5,0(a5)
     1f4:	fef42423          	sw	a5,-24(s0)
     1f8:	fcc42503          	lw	a0,-52(s0)
     1fc:	f59ff0ef          	jal	154 <_ZZ4mainENKUlvE_clEv>
     200:	00050793          	mv	a5,a0
     204:	fef403a3          	sb	a5,-25(s0)
     208:	002017b7          	lui	a5,0x201
     20c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     210:	0007a783          	lw	a5,0(a5)
     214:	fef42023          	sw	a5,-32(s0)
     218:	002017b7          	lui	a5,0x201
     21c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     220:	0007a783          	lw	a5,0(a5)
     224:	fcf42e23          	sw	a5,-36(s0)
     228:	fdc42703          	lw	a4,-36(s0)
     22c:	fec42783          	lw	a5,-20(s0)
     230:	40f707b3          	sub	a5,a4,a5
     234:	fcf42c23          	sw	a5,-40(s0)
     238:	fe042703          	lw	a4,-32(s0)
     23c:	fe842783          	lw	a5,-24(s0)
     240:	40f707b3          	sub	a5,a4,a5
     244:	fcf42a23          	sw	a5,-44(s0)
     248:	000307b7          	lui	a5,0x30
     24c:	00078513          	mv	a0,a5
     250:	28c080ef          	jal	84dc <_Z10uart_printPKc>
     254:	fd842503          	lw	a0,-40(s0)
     258:	4e0080ef          	jal	8738 <_Z16uart_print_int32i>
     25c:	00000013          	nop
     260:	000307b7          	lui	a5,0x30
     264:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     268:	274080ef          	jal	84dc <_Z10uart_printPKc>
     26c:	000307b7          	lui	a5,0x30
     270:	02078513          	add	a0,a5,32 # 30020 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27284>
     274:	268080ef          	jal	84dc <_Z10uart_printPKc>
     278:	fd442503          	lw	a0,-44(s0)
     27c:	4bc080ef          	jal	8738 <_Z16uart_print_int32i>
     280:	00000013          	nop
     284:	000307b7          	lui	a5,0x30
     288:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     28c:	250080ef          	jal	84dc <_Z10uart_printPKc>
     290:	fe744783          	lbu	a5,-25(s0)
     294:	00078513          	mv	a0,a5
     298:	03c12083          	lw	ra,60(sp)
     29c:	03812403          	lw	s0,56(sp)
     2a0:	04010113          	add	sp,sp,64
     2a4:	00008067          	ret

000002a8 <_ZZ4mainENKUlvE0_clEv>:
     2a8:	fe010113          	add	sp,sp,-32
     2ac:	00112e23          	sw	ra,28(sp)
     2b0:	00812c23          	sw	s0,24(sp)
     2b4:	02010413          	add	s0,sp,32
     2b8:	fea42623          	sw	a0,-20(s0)
     2bc:	fec42783          	lw	a5,-20(s0)
     2c0:	0007a503          	lw	a0,0(a5)
     2c4:	fec42783          	lw	a5,-20(s0)
     2c8:	0047a583          	lw	a1,4(a5)
     2cc:	fec42783          	lw	a5,-20(s0)
     2d0:	0087a603          	lw	a2,8(a5)
     2d4:	fec42783          	lw	a5,-20(s0)
     2d8:	00c7a683          	lw	a3,12(a5)
     2dc:	fec42783          	lw	a5,-20(s0)
     2e0:	0107a703          	lw	a4,16(a5)
     2e4:	fec42783          	lw	a5,-20(s0)
     2e8:	0147a883          	lw	a7,20(a5)
     2ec:	fec42783          	lw	a5,-20(s0)
     2f0:	0187a783          	lw	a5,24(a5)
     2f4:	00078813          	mv	a6,a5
     2f8:	00088793          	mv	a5,a7
     2fc:	191000ef          	jal	c8c <_Z13math_gauntletPiS_S_S_S_S_S_>
     300:	00050793          	mv	a5,a0
     304:	00078513          	mv	a0,a5
     308:	01c12083          	lw	ra,28(sp)
     30c:	01812403          	lw	s0,24(sp)
     310:	02010113          	add	sp,sp,32
     314:	00008067          	ret

00000318 <_Z14instrument_cpiIZ4mainEUlvE0_EDaOT_>:
     318:	fc010113          	add	sp,sp,-64
     31c:	02112e23          	sw	ra,60(sp)
     320:	02812c23          	sw	s0,56(sp)
     324:	04010413          	add	s0,sp,64
     328:	fca42623          	sw	a0,-52(s0)
     32c:	002017b7          	lui	a5,0x201
     330:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     334:	0007a783          	lw	a5,0(a5)
     338:	fef42623          	sw	a5,-20(s0)
     33c:	002017b7          	lui	a5,0x201
     340:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     344:	0007a783          	lw	a5,0(a5)
     348:	fef42423          	sw	a5,-24(s0)
     34c:	fcc42503          	lw	a0,-52(s0)
     350:	f59ff0ef          	jal	2a8 <_ZZ4mainENKUlvE0_clEv>
     354:	00050793          	mv	a5,a0
     358:	fef403a3          	sb	a5,-25(s0)
     35c:	002017b7          	lui	a5,0x201
     360:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     364:	0007a783          	lw	a5,0(a5)
     368:	fef42023          	sw	a5,-32(s0)
     36c:	002017b7          	lui	a5,0x201
     370:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     374:	0007a783          	lw	a5,0(a5)
     378:	fcf42e23          	sw	a5,-36(s0)
     37c:	fdc42703          	lw	a4,-36(s0)
     380:	fec42783          	lw	a5,-20(s0)
     384:	40f707b3          	sub	a5,a4,a5
     388:	fcf42c23          	sw	a5,-40(s0)
     38c:	fe042703          	lw	a4,-32(s0)
     390:	fe842783          	lw	a5,-24(s0)
     394:	40f707b3          	sub	a5,a4,a5
     398:	fcf42a23          	sw	a5,-44(s0)
     39c:	000307b7          	lui	a5,0x30
     3a0:	00078513          	mv	a0,a5
     3a4:	138080ef          	jal	84dc <_Z10uart_printPKc>
     3a8:	fd842503          	lw	a0,-40(s0)
     3ac:	38c080ef          	jal	8738 <_Z16uart_print_int32i>
     3b0:	00000013          	nop
     3b4:	000307b7          	lui	a5,0x30
     3b8:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     3bc:	120080ef          	jal	84dc <_Z10uart_printPKc>
     3c0:	000307b7          	lui	a5,0x30
     3c4:	02078513          	add	a0,a5,32 # 30020 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27284>
     3c8:	114080ef          	jal	84dc <_Z10uart_printPKc>
     3cc:	fd442503          	lw	a0,-44(s0)
     3d0:	368080ef          	jal	8738 <_Z16uart_print_int32i>
     3d4:	00000013          	nop
     3d8:	000307b7          	lui	a5,0x30
     3dc:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     3e0:	0fc080ef          	jal	84dc <_Z10uart_printPKc>
     3e4:	fe744783          	lbu	a5,-25(s0)
     3e8:	00078513          	mv	a0,a5
     3ec:	03c12083          	lw	ra,60(sp)
     3f0:	03812403          	lw	s0,56(sp)
     3f4:	04010113          	add	sp,sp,64
     3f8:	00008067          	ret

000003fc <_ZZ4mainENKUlvE1_clEv>:
     3fc:	fe010113          	add	sp,sp,-32
     400:	00112e23          	sw	ra,28(sp)
     404:	00812c23          	sw	s0,24(sp)
     408:	02010413          	add	s0,sp,32
     40c:	fea42623          	sw	a0,-20(s0)
     410:	fec42783          	lw	a5,-20(s0)
     414:	0007a503          	lw	a0,0(a5)
     418:	fec42783          	lw	a5,-20(s0)
     41c:	0047a583          	lw	a1,4(a5)
     420:	fec42783          	lw	a5,-20(s0)
     424:	0087a603          	lw	a2,8(a5)
     428:	fec42783          	lw	a5,-20(s0)
     42c:	00c7a683          	lw	a3,12(a5)
     430:	fec42783          	lw	a5,-20(s0)
     434:	0107a703          	lw	a4,16(a5)
     438:	fec42783          	lw	a5,-20(s0)
     43c:	0147a883          	lw	a7,20(a5)
     440:	fec42783          	lw	a5,-20(s0)
     444:	0187a783          	lw	a5,24(a5)
     448:	00078813          	mv	a6,a5
     44c:	00088793          	mv	a5,a7
     450:	03d000ef          	jal	c8c <_Z13math_gauntletPiS_S_S_S_S_S_>
     454:	00050793          	mv	a5,a0
     458:	00078513          	mv	a0,a5
     45c:	01c12083          	lw	ra,28(sp)
     460:	01812403          	lw	s0,24(sp)
     464:	02010113          	add	sp,sp,32
     468:	00008067          	ret

0000046c <_Z14instrument_cpiIZ4mainEUlvE1_EDaOT_>:
     46c:	fc010113          	add	sp,sp,-64
     470:	02112e23          	sw	ra,60(sp)
     474:	02812c23          	sw	s0,56(sp)
     478:	04010413          	add	s0,sp,64
     47c:	fca42623          	sw	a0,-52(s0)
     480:	002017b7          	lui	a5,0x201
     484:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     488:	0007a783          	lw	a5,0(a5)
     48c:	fef42623          	sw	a5,-20(s0)
     490:	002017b7          	lui	a5,0x201
     494:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     498:	0007a783          	lw	a5,0(a5)
     49c:	fef42423          	sw	a5,-24(s0)
     4a0:	fcc42503          	lw	a0,-52(s0)
     4a4:	f59ff0ef          	jal	3fc <_ZZ4mainENKUlvE1_clEv>
     4a8:	00050793          	mv	a5,a0
     4ac:	fef403a3          	sb	a5,-25(s0)
     4b0:	002017b7          	lui	a5,0x201
     4b4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     4b8:	0007a783          	lw	a5,0(a5)
     4bc:	fef42023          	sw	a5,-32(s0)
     4c0:	002017b7          	lui	a5,0x201
     4c4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     4c8:	0007a783          	lw	a5,0(a5)
     4cc:	fcf42e23          	sw	a5,-36(s0)
     4d0:	fdc42703          	lw	a4,-36(s0)
     4d4:	fec42783          	lw	a5,-20(s0)
     4d8:	40f707b3          	sub	a5,a4,a5
     4dc:	fcf42c23          	sw	a5,-40(s0)
     4e0:	fe042703          	lw	a4,-32(s0)
     4e4:	fe842783          	lw	a5,-24(s0)
     4e8:	40f707b3          	sub	a5,a4,a5
     4ec:	fcf42a23          	sw	a5,-44(s0)
     4f0:	000307b7          	lui	a5,0x30
     4f4:	00078513          	mv	a0,a5
     4f8:	7e5070ef          	jal	84dc <_Z10uart_printPKc>
     4fc:	fd842503          	lw	a0,-40(s0)
     500:	238080ef          	jal	8738 <_Z16uart_print_int32i>
     504:	00000013          	nop
     508:	000307b7          	lui	a5,0x30
     50c:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     510:	7cd070ef          	jal	84dc <_Z10uart_printPKc>
     514:	000307b7          	lui	a5,0x30
     518:	02078513          	add	a0,a5,32 # 30020 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27284>
     51c:	7c1070ef          	jal	84dc <_Z10uart_printPKc>
     520:	fd442503          	lw	a0,-44(s0)
     524:	214080ef          	jal	8738 <_Z16uart_print_int32i>
     528:	00000013          	nop
     52c:	000307b7          	lui	a5,0x30
     530:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     534:	7a9070ef          	jal	84dc <_Z10uart_printPKc>
     538:	fe744783          	lbu	a5,-25(s0)
     53c:	00078513          	mv	a0,a5
     540:	03c12083          	lw	ra,60(sp)
     544:	03812403          	lw	s0,56(sp)
     548:	04010113          	add	sp,sp,64
     54c:	00008067          	ret

00000550 <_ZZ4mainENKUlvE2_clEv>:
     550:	fe010113          	add	sp,sp,-32
     554:	00112e23          	sw	ra,28(sp)
     558:	00812c23          	sw	s0,24(sp)
     55c:	02010413          	add	s0,sp,32
     560:	fea42623          	sw	a0,-20(s0)
     564:	fec42783          	lw	a5,-20(s0)
     568:	0007a503          	lw	a0,0(a5)
     56c:	fec42783          	lw	a5,-20(s0)
     570:	0047a583          	lw	a1,4(a5)
     574:	fec42783          	lw	a5,-20(s0)
     578:	0087a603          	lw	a2,8(a5)
     57c:	fec42783          	lw	a5,-20(s0)
     580:	00c7a683          	lw	a3,12(a5)
     584:	fec42783          	lw	a5,-20(s0)
     588:	0107a703          	lw	a4,16(a5)
     58c:	fec42783          	lw	a5,-20(s0)
     590:	0147a883          	lw	a7,20(a5)
     594:	fec42783          	lw	a5,-20(s0)
     598:	0187a783          	lw	a5,24(a5)
     59c:	00078813          	mv	a6,a5
     5a0:	00088793          	mv	a5,a7
     5a4:	6e8000ef          	jal	c8c <_Z13math_gauntletPiS_S_S_S_S_S_>
     5a8:	00050793          	mv	a5,a0
     5ac:	00078513          	mv	a0,a5
     5b0:	01c12083          	lw	ra,28(sp)
     5b4:	01812403          	lw	s0,24(sp)
     5b8:	02010113          	add	sp,sp,32
     5bc:	00008067          	ret

000005c0 <_Z14instrument_cpiIZ4mainEUlvE2_EDaOT_>:
     5c0:	fc010113          	add	sp,sp,-64
     5c4:	02112e23          	sw	ra,60(sp)
     5c8:	02812c23          	sw	s0,56(sp)
     5cc:	04010413          	add	s0,sp,64
     5d0:	fca42623          	sw	a0,-52(s0)
     5d4:	002017b7          	lui	a5,0x201
     5d8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     5dc:	0007a783          	lw	a5,0(a5)
     5e0:	fef42623          	sw	a5,-20(s0)
     5e4:	002017b7          	lui	a5,0x201
     5e8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     5ec:	0007a783          	lw	a5,0(a5)
     5f0:	fef42423          	sw	a5,-24(s0)
     5f4:	fcc42503          	lw	a0,-52(s0)
     5f8:	f59ff0ef          	jal	550 <_ZZ4mainENKUlvE2_clEv>
     5fc:	00050793          	mv	a5,a0
     600:	fef403a3          	sb	a5,-25(s0)
     604:	002017b7          	lui	a5,0x201
     608:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     60c:	0007a783          	lw	a5,0(a5)
     610:	fef42023          	sw	a5,-32(s0)
     614:	002017b7          	lui	a5,0x201
     618:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     61c:	0007a783          	lw	a5,0(a5)
     620:	fcf42e23          	sw	a5,-36(s0)
     624:	fdc42703          	lw	a4,-36(s0)
     628:	fec42783          	lw	a5,-20(s0)
     62c:	40f707b3          	sub	a5,a4,a5
     630:	fcf42c23          	sw	a5,-40(s0)
     634:	fe042703          	lw	a4,-32(s0)
     638:	fe842783          	lw	a5,-24(s0)
     63c:	40f707b3          	sub	a5,a4,a5
     640:	fcf42a23          	sw	a5,-44(s0)
     644:	000307b7          	lui	a5,0x30
     648:	00078513          	mv	a0,a5
     64c:	691070ef          	jal	84dc <_Z10uart_printPKc>
     650:	fd842503          	lw	a0,-40(s0)
     654:	0e4080ef          	jal	8738 <_Z16uart_print_int32i>
     658:	00000013          	nop
     65c:	000307b7          	lui	a5,0x30
     660:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     664:	679070ef          	jal	84dc <_Z10uart_printPKc>
     668:	000307b7          	lui	a5,0x30
     66c:	02078513          	add	a0,a5,32 # 30020 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27284>
     670:	66d070ef          	jal	84dc <_Z10uart_printPKc>
     674:	fd442503          	lw	a0,-44(s0)
     678:	0c0080ef          	jal	8738 <_Z16uart_print_int32i>
     67c:	00000013          	nop
     680:	000307b7          	lui	a5,0x30
     684:	01c78513          	add	a0,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27280>
     688:	655070ef          	jal	84dc <_Z10uart_printPKc>
     68c:	fe744783          	lbu	a5,-25(s0)
     690:	00078513          	mv	a0,a5
     694:	03c12083          	lw	ra,60(sp)
     698:	03812403          	lw	s0,56(sp)
     69c:	04010113          	add	sp,sp,64
     6a0:	00008067          	ret

000006a4 <main>:
     6a4:	e4010113          	add	sp,sp,-448
     6a8:	1a112e23          	sw	ra,444(sp)
     6ac:	1a812c23          	sw	s0,440(sp)
     6b0:	1c010413          	add	s0,sp,448
     6b4:	00100793          	li	a5,1
     6b8:	f6f403a3          	sb	a5,-153(s0)
     6bc:	05000793          	li	a5,80
     6c0:	fef42623          	sw	a5,-20(s0)
     6c4:	01800793          	li	a5,24
     6c8:	fef42423          	sw	a5,-24(s0)
     6cc:	03800793          	li	a5,56
     6d0:	fef42223          	sw	a5,-28(s0)
     6d4:	04900793          	li	a5,73
     6d8:	e6f42023          	sw	a5,-416(s0)
     6dc:	02f00793          	li	a5,47
     6e0:	e4f42e23          	sw	a5,-420(s0)
     6e4:	e4042c23          	sw	zero,-424(s0)
     6e8:	e4042a23          	sw	zero,-428(s0)
     6ec:	e4042823          	sw	zero,-432(s0)
     6f0:	e4042623          	sw	zero,-436(s0)
     6f4:	e4042423          	sw	zero,-440(s0)
     6f8:	fe0401a3          	sb	zero,-29(s0)
     6fc:	fc042e23          	sw	zero,-36(s0)
     700:	fc042c23          	sw	zero,-40(s0)
     704:	000307b7          	lui	a5,0x30
     708:	04478513          	add	a0,a5,68 # 30044 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272a8>
     70c:	5d1070ef          	jal	84dc <_Z10uart_printPKc>
     710:	002007b7          	lui	a5,0x200
     714:	41878793          	add	a5,a5,1048 # 200418 <SET_I_LOCK>
     718:	0007a023          	sw	zero,0(a5)
     71c:	002017b7          	lui	a5,0x201
     720:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     724:	0007a783          	lw	a5,0(a5)
     728:	fcf42e23          	sw	a5,-36(s0)
     72c:	e6040793          	add	a5,s0,-416
     730:	f6f42423          	sw	a5,-152(s0)
     734:	e5c40793          	add	a5,s0,-420
     738:	f6f42623          	sw	a5,-148(s0)
     73c:	e5840793          	add	a5,s0,-424
     740:	f6f42823          	sw	a5,-144(s0)
     744:	e5440793          	add	a5,s0,-428
     748:	f6f42a23          	sw	a5,-140(s0)
     74c:	e5040793          	add	a5,s0,-432
     750:	f6f42c23          	sw	a5,-136(s0)
     754:	e4c40793          	add	a5,s0,-436
     758:	f6f42e23          	sw	a5,-132(s0)
     75c:	e4840793          	add	a5,s0,-440
     760:	f8f42023          	sw	a5,-128(s0)
     764:	f6840793          	add	a5,s0,-152
     768:	00078513          	mv	a0,a5
     76c:	a59ff0ef          	jal	1c4 <_Z14instrument_cpiIZ4mainEUlvE_EDaOT_>
     770:	00050793          	mv	a5,a0
     774:	fef401a3          	sb	a5,-29(s0)
     778:	002017b7          	lui	a5,0x201
     77c:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     780:	0007a783          	lw	a5,0(a5)
     784:	fcf42c23          	sw	a5,-40(s0)
     788:	000307b7          	lui	a5,0x30
     78c:	05478513          	add	a0,a5,84 # 30054 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272b8>
     790:	54d070ef          	jal	84dc <_Z10uart_printPKc>
     794:	fd842703          	lw	a4,-40(s0)
     798:	fdc42783          	lw	a5,-36(s0)
     79c:	40f707b3          	sub	a5,a4,a5
     7a0:	00078513          	mv	a0,a5
     7a4:	795070ef          	jal	8738 <_Z16uart_print_int32i>
     7a8:	00000013          	nop
     7ac:	000307b7          	lui	a5,0x30
     7b0:	08478513          	add	a0,a5,132 # 30084 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272e8>
     7b4:	529070ef          	jal	84dc <_Z10uart_printPKc>
     7b8:	002007b7          	lui	a5,0x200
     7bc:	41878793          	add	a5,a5,1048 # 200418 <SET_I_LOCK>
     7c0:	00100713          	li	a4,1
     7c4:	00e7a023          	sw	a4,0(a5)
     7c8:	002017b7          	lui	a5,0x201
     7cc:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     7d0:	0007a783          	lw	a5,0(a5)
     7d4:	fcf42e23          	sw	a5,-36(s0)
     7d8:	e6040793          	add	a5,s0,-416
     7dc:	f8f42223          	sw	a5,-124(s0)
     7e0:	e5c40793          	add	a5,s0,-420
     7e4:	f8f42423          	sw	a5,-120(s0)
     7e8:	e5840793          	add	a5,s0,-424
     7ec:	f8f42623          	sw	a5,-116(s0)
     7f0:	e5440793          	add	a5,s0,-428
     7f4:	f8f42823          	sw	a5,-112(s0)
     7f8:	e5040793          	add	a5,s0,-432
     7fc:	f8f42a23          	sw	a5,-108(s0)
     800:	e4c40793          	add	a5,s0,-436
     804:	f8f42c23          	sw	a5,-104(s0)
     808:	e4840793          	add	a5,s0,-440
     80c:	f8f42e23          	sw	a5,-100(s0)
     810:	f8440793          	add	a5,s0,-124
     814:	00078513          	mv	a0,a5
     818:	b01ff0ef          	jal	318 <_Z14instrument_cpiIZ4mainEUlvE0_EDaOT_>
     81c:	00050793          	mv	a5,a0
     820:	fef401a3          	sb	a5,-29(s0)
     824:	002017b7          	lui	a5,0x201
     828:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     82c:	0007a783          	lw	a5,0(a5)
     830:	fcf42c23          	sw	a5,-40(s0)
     834:	000307b7          	lui	a5,0x30
     838:	08878513          	add	a0,a5,136 # 30088 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272ec>
     83c:	4a1070ef          	jal	84dc <_Z10uart_printPKc>
     840:	fd842703          	lw	a4,-40(s0)
     844:	fdc42783          	lw	a5,-36(s0)
     848:	40f707b3          	sub	a5,a4,a5
     84c:	00078513          	mv	a0,a5
     850:	6e9070ef          	jal	8738 <_Z16uart_print_int32i>
     854:	00000013          	nop
     858:	000307b7          	lui	a5,0x30
     85c:	08478513          	add	a0,a5,132 # 30084 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272e8>
     860:	47d070ef          	jal	84dc <_Z10uart_printPKc>
     864:	002007b7          	lui	a5,0x200
     868:	41878793          	add	a5,a5,1048 # 200418 <SET_I_LOCK>
     86c:	00200713          	li	a4,2
     870:	00e7a023          	sw	a4,0(a5)
     874:	002017b7          	lui	a5,0x201
     878:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     87c:	0007a783          	lw	a5,0(a5)
     880:	fcf42e23          	sw	a5,-36(s0)
     884:	e6040793          	add	a5,s0,-416
     888:	faf42023          	sw	a5,-96(s0)
     88c:	e5c40793          	add	a5,s0,-420
     890:	faf42223          	sw	a5,-92(s0)
     894:	e5840793          	add	a5,s0,-424
     898:	faf42423          	sw	a5,-88(s0)
     89c:	e5440793          	add	a5,s0,-428
     8a0:	faf42623          	sw	a5,-84(s0)
     8a4:	e5040793          	add	a5,s0,-432
     8a8:	faf42823          	sw	a5,-80(s0)
     8ac:	e4c40793          	add	a5,s0,-436
     8b0:	faf42a23          	sw	a5,-76(s0)
     8b4:	e4840793          	add	a5,s0,-440
     8b8:	faf42c23          	sw	a5,-72(s0)
     8bc:	fa040793          	add	a5,s0,-96
     8c0:	00078513          	mv	a0,a5
     8c4:	ba9ff0ef          	jal	46c <_Z14instrument_cpiIZ4mainEUlvE1_EDaOT_>
     8c8:	00050793          	mv	a5,a0
     8cc:	fef401a3          	sb	a5,-29(s0)
     8d0:	002017b7          	lui	a5,0x201
     8d4:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     8d8:	0007a783          	lw	a5,0(a5)
     8dc:	fcf42c23          	sw	a5,-40(s0)
     8e0:	000307b7          	lui	a5,0x30
     8e4:	0b878513          	add	a0,a5,184 # 300b8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2731c>
     8e8:	3f5070ef          	jal	84dc <_Z10uart_printPKc>
     8ec:	fd842703          	lw	a4,-40(s0)
     8f0:	fdc42783          	lw	a5,-36(s0)
     8f4:	40f707b3          	sub	a5,a4,a5
     8f8:	00078513          	mv	a0,a5
     8fc:	63d070ef          	jal	8738 <_Z16uart_print_int32i>
     900:	00000013          	nop
     904:	000307b7          	lui	a5,0x30
     908:	08478513          	add	a0,a5,132 # 30084 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272e8>
     90c:	3d1070ef          	jal	84dc <_Z10uart_printPKc>
     910:	002007b7          	lui	a5,0x200
     914:	41878793          	add	a5,a5,1048 # 200418 <SET_I_LOCK>
     918:	00300713          	li	a4,3
     91c:	00e7a023          	sw	a4,0(a5)
     920:	002017b7          	lui	a5,0x201
     924:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     928:	0007a783          	lw	a5,0(a5)
     92c:	fcf42e23          	sw	a5,-36(s0)
     930:	e6040793          	add	a5,s0,-416
     934:	faf42e23          	sw	a5,-68(s0)
     938:	e5c40793          	add	a5,s0,-420
     93c:	fcf42023          	sw	a5,-64(s0)
     940:	e5840793          	add	a5,s0,-424
     944:	fcf42223          	sw	a5,-60(s0)
     948:	e5440793          	add	a5,s0,-428
     94c:	fcf42423          	sw	a5,-56(s0)
     950:	e5040793          	add	a5,s0,-432
     954:	fcf42623          	sw	a5,-52(s0)
     958:	e4c40793          	add	a5,s0,-436
     95c:	fcf42823          	sw	a5,-48(s0)
     960:	e4840793          	add	a5,s0,-440
     964:	fcf42a23          	sw	a5,-44(s0)
     968:	fbc40793          	add	a5,s0,-68
     96c:	00078513          	mv	a0,a5
     970:	c51ff0ef          	jal	5c0 <_Z14instrument_cpiIZ4mainEUlvE2_EDaOT_>
     974:	00050793          	mv	a5,a0
     978:	fef401a3          	sb	a5,-29(s0)
     97c:	002017b7          	lui	a5,0x201
     980:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     984:	0007a783          	lw	a5,0(a5)
     988:	fcf42c23          	sw	a5,-40(s0)
     98c:	000307b7          	lui	a5,0x30
     990:	0e878513          	add	a0,a5,232 # 300e8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2734c>
     994:	349070ef          	jal	84dc <_Z10uart_printPKc>
     998:	fd842703          	lw	a4,-40(s0)
     99c:	fdc42783          	lw	a5,-36(s0)
     9a0:	40f707b3          	sub	a5,a4,a5
     9a4:	00078513          	mv	a0,a5
     9a8:	591070ef          	jal	8738 <_Z16uart_print_int32i>
     9ac:	00000013          	nop
     9b0:	000307b7          	lui	a5,0x30
     9b4:	08478513          	add	a0,a5,132 # 30084 <_Z17cmd_arg_tokenizerPcS_S_ii+0x272e8>
     9b8:	325070ef          	jal	84dc <_Z10uart_printPKc>
     9bc:	f60403a3          	sb	zero,-153(s0)
     9c0:	f6744783          	lbu	a5,-153(s0)
     9c4:	0ff7f793          	zext.b	a5,a5
     9c8:	00078513          	mv	a0,a5
     9cc:	1bc12083          	lw	ra,444(sp)
     9d0:	1b812403          	lw	s0,440(sp)
     9d4:	1c010113          	add	sp,sp,448
     9d8:	00008067          	ret

000009dc <_Z14get_free_bytesv>:
     9dc:	fe010113          	add	sp,sp,-32
     9e0:	00112e23          	sw	ra,28(sp)
     9e4:	00812c23          	sw	s0,24(sp)
     9e8:	02010413          	add	s0,sp,32
     9ec:	30c050ef          	jal	5cf8 <_ZL6get_spv>
     9f0:	fea42623          	sw	a0,-20(s0)
     9f4:	000347b7          	lui	a5,0x34
     9f8:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
     9fc:	00078713          	mv	a4,a5
     a00:	fec42783          	lw	a5,-20(s0)
     a04:	40e787b3          	sub	a5,a5,a4
     a08:	00078513          	mv	a0,a5
     a0c:	01c12083          	lw	ra,28(sp)
     a10:	01812403          	lw	s0,24(sp)
     a14:	02010113          	add	sp,sp,32
     a18:	00008067          	ret

00000a1c <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>:
     a1c:	fe010113          	add	sp,sp,-32
     a20:	00112e23          	sw	ra,28(sp)
     a24:	00812c23          	sw	s0,24(sp)
     a28:	02010413          	add	s0,sp,32
     a2c:	fea42623          	sw	a0,-20(s0)
     a30:	fec42783          	lw	a5,-20(s0)
     a34:	0007a703          	lw	a4,0(a5)
     a38:	fec42783          	lw	a5,-20(s0)
     a3c:	0047a683          	lw	a3,4(a5)
     a40:	fec42783          	lw	a5,-20(s0)
     a44:	0087a783          	lw	a5,8(a5)
     a48:	00078613          	mv	a2,a5
     a4c:	00068593          	mv	a1,a3
     a50:	00070513          	mv	a0,a4
     a54:	414050ef          	jal	5e68 <_Z6matmulPA3_KiPA3_iS3_>
     a58:	00050793          	mv	a5,a0
     a5c:	00078513          	mv	a0,a5
     a60:	01c12083          	lw	ra,28(sp)
     a64:	01812403          	lw	s0,24(sp)
     a68:	02010113          	add	sp,sp,32
     a6c:	00008067          	ret

00000a70 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>:
     a70:	fc010113          	add	sp,sp,-64
     a74:	02112e23          	sw	ra,60(sp)
     a78:	02812c23          	sw	s0,56(sp)
     a7c:	04010413          	add	s0,sp,64
     a80:	fca42623          	sw	a0,-52(s0)
     a84:	002017b7          	lui	a5,0x201
     a88:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     a8c:	0007a783          	lw	a5,0(a5)
     a90:	fef42623          	sw	a5,-20(s0)
     a94:	002017b7          	lui	a5,0x201
     a98:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     a9c:	0007a783          	lw	a5,0(a5)
     aa0:	fef42423          	sw	a5,-24(s0)
     aa4:	fcc42503          	lw	a0,-52(s0)
     aa8:	f75ff0ef          	jal	a1c <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>
     aac:	00050793          	mv	a5,a0
     ab0:	fef403a3          	sb	a5,-25(s0)
     ab4:	002017b7          	lui	a5,0x201
     ab8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     abc:	0007a783          	lw	a5,0(a5)
     ac0:	fef42023          	sw	a5,-32(s0)
     ac4:	002017b7          	lui	a5,0x201
     ac8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     acc:	0007a783          	lw	a5,0(a5)
     ad0:	fcf42e23          	sw	a5,-36(s0)
     ad4:	fdc42703          	lw	a4,-36(s0)
     ad8:	fec42783          	lw	a5,-20(s0)
     adc:	40f707b3          	sub	a5,a4,a5
     ae0:	fcf42c23          	sw	a5,-40(s0)
     ae4:	fe042703          	lw	a4,-32(s0)
     ae8:	fe842783          	lw	a5,-24(s0)
     aec:	40f707b3          	sub	a5,a4,a5
     af0:	fcf42a23          	sw	a5,-44(s0)
     af4:	000307b7          	lui	a5,0x30
     af8:	34478513          	add	a0,a5,836 # 30344 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275a8>
     afc:	1e1070ef          	jal	84dc <_Z10uart_printPKc>
     b00:	fd842503          	lw	a0,-40(s0)
     b04:	435070ef          	jal	8738 <_Z16uart_print_int32i>
     b08:	00000013          	nop
     b0c:	000307b7          	lui	a5,0x30
     b10:	36078513          	add	a0,a5,864 # 30360 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c4>
     b14:	1c9070ef          	jal	84dc <_Z10uart_printPKc>
     b18:	000307b7          	lui	a5,0x30
     b1c:	36478513          	add	a0,a5,868 # 30364 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c8>
     b20:	1bd070ef          	jal	84dc <_Z10uart_printPKc>
     b24:	fd442503          	lw	a0,-44(s0)
     b28:	411070ef          	jal	8738 <_Z16uart_print_int32i>
     b2c:	00000013          	nop
     b30:	000307b7          	lui	a5,0x30
     b34:	36078513          	add	a0,a5,864 # 30360 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c4>
     b38:	1a5070ef          	jal	84dc <_Z10uart_printPKc>
     b3c:	fe744783          	lbu	a5,-25(s0)
     b40:	00078513          	mv	a0,a5
     b44:	03c12083          	lw	ra,60(sp)
     b48:	03812403          	lw	s0,56(sp)
     b4c:	04010113          	add	sp,sp,64
     b50:	00008067          	ret

00000b54 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>:
     b54:	fe010113          	add	sp,sp,-32
     b58:	00112e23          	sw	ra,28(sp)
     b5c:	00812c23          	sw	s0,24(sp)
     b60:	02010413          	add	s0,sp,32
     b64:	fea42623          	sw	a0,-20(s0)
     b68:	fec42783          	lw	a5,-20(s0)
     b6c:	0007a703          	lw	a4,0(a5)
     b70:	fec42783          	lw	a5,-20(s0)
     b74:	0047a683          	lw	a3,4(a5)
     b78:	fec42783          	lw	a5,-20(s0)
     b7c:	0087a783          	lw	a5,8(a5)
     b80:	00078613          	mv	a2,a5
     b84:	00068593          	mv	a1,a3
     b88:	00070513          	mv	a0,a4
     b8c:	2dc050ef          	jal	5e68 <_Z6matmulPA3_KiPA3_iS3_>
     b90:	00050793          	mv	a5,a0
     b94:	00078513          	mv	a0,a5
     b98:	01c12083          	lw	ra,28(sp)
     b9c:	01812403          	lw	s0,24(sp)
     ba0:	02010113          	add	sp,sp,32
     ba4:	00008067          	ret

00000ba8 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>:
     ba8:	fc010113          	add	sp,sp,-64
     bac:	02112e23          	sw	ra,60(sp)
     bb0:	02812c23          	sw	s0,56(sp)
     bb4:	04010413          	add	s0,sp,64
     bb8:	fca42623          	sw	a0,-52(s0)
     bbc:	002017b7          	lui	a5,0x201
     bc0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     bc4:	0007a783          	lw	a5,0(a5)
     bc8:	fef42623          	sw	a5,-20(s0)
     bcc:	002017b7          	lui	a5,0x201
     bd0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     bd4:	0007a783          	lw	a5,0(a5)
     bd8:	fef42423          	sw	a5,-24(s0)
     bdc:	fcc42503          	lw	a0,-52(s0)
     be0:	f75ff0ef          	jal	b54 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>
     be4:	00050793          	mv	a5,a0
     be8:	fef403a3          	sb	a5,-25(s0)
     bec:	002017b7          	lui	a5,0x201
     bf0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     bf4:	0007a783          	lw	a5,0(a5)
     bf8:	fef42023          	sw	a5,-32(s0)
     bfc:	002017b7          	lui	a5,0x201
     c00:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     c04:	0007a783          	lw	a5,0(a5)
     c08:	fcf42e23          	sw	a5,-36(s0)
     c0c:	fdc42703          	lw	a4,-36(s0)
     c10:	fec42783          	lw	a5,-20(s0)
     c14:	40f707b3          	sub	a5,a4,a5
     c18:	fcf42c23          	sw	a5,-40(s0)
     c1c:	fe042703          	lw	a4,-32(s0)
     c20:	fe842783          	lw	a5,-24(s0)
     c24:	40f707b3          	sub	a5,a4,a5
     c28:	fcf42a23          	sw	a5,-44(s0)
     c2c:	000307b7          	lui	a5,0x30
     c30:	34478513          	add	a0,a5,836 # 30344 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275a8>
     c34:	0a9070ef          	jal	84dc <_Z10uart_printPKc>
     c38:	fd842503          	lw	a0,-40(s0)
     c3c:	2fd070ef          	jal	8738 <_Z16uart_print_int32i>
     c40:	00000013          	nop
     c44:	000307b7          	lui	a5,0x30
     c48:	36078513          	add	a0,a5,864 # 30360 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c4>
     c4c:	091070ef          	jal	84dc <_Z10uart_printPKc>
     c50:	000307b7          	lui	a5,0x30
     c54:	36478513          	add	a0,a5,868 # 30364 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c8>
     c58:	085070ef          	jal	84dc <_Z10uart_printPKc>
     c5c:	fd442503          	lw	a0,-44(s0)
     c60:	2d9070ef          	jal	8738 <_Z16uart_print_int32i>
     c64:	00000013          	nop
     c68:	000307b7          	lui	a5,0x30
     c6c:	36078513          	add	a0,a5,864 # 30360 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275c4>
     c70:	06d070ef          	jal	84dc <_Z10uart_printPKc>
     c74:	fe744783          	lbu	a5,-25(s0)
     c78:	00078513          	mv	a0,a5
     c7c:	03c12083          	lw	ra,60(sp)
     c80:	03812403          	lw	s0,56(sp)
     c84:	04010113          	add	sp,sp,64
     c88:	00008067          	ret

00000c8c <_Z13math_gauntletPiS_S_S_S_S_S_>:
     c8c:	fc010113          	add	sp,sp,-64
     c90:	02112e23          	sw	ra,60(sp)
     c94:	02812c23          	sw	s0,56(sp)
     c98:	04010413          	add	s0,sp,64
     c9c:	fca42e23          	sw	a0,-36(s0)
     ca0:	fcb42c23          	sw	a1,-40(s0)
     ca4:	fcc42a23          	sw	a2,-44(s0)
     ca8:	fcd42823          	sw	a3,-48(s0)
     cac:	fce42623          	sw	a4,-52(s0)
     cb0:	fcf42423          	sw	a5,-56(s0)
     cb4:	fd042223          	sw	a6,-60(s0)
     cb8:	fe0407a3          	sb	zero,-17(s0)
     cbc:	fdc42783          	lw	a5,-36(s0)
     cc0:	0007a703          	lw	a4,0(a5)
     cc4:	fd842783          	lw	a5,-40(s0)
     cc8:	0007a783          	lw	a5,0(a5)
     ccc:	00f70733          	add	a4,a4,a5
     cd0:	fd442783          	lw	a5,-44(s0)
     cd4:	00e7a023          	sw	a4,0(a5)
     cd8:	fdc42783          	lw	a5,-36(s0)
     cdc:	0007a703          	lw	a4,0(a5)
     ce0:	fd842783          	lw	a5,-40(s0)
     ce4:	0007a783          	lw	a5,0(a5)
     ce8:	40f70733          	sub	a4,a4,a5
     cec:	fd042783          	lw	a5,-48(s0)
     cf0:	00e7a023          	sw	a4,0(a5)
     cf4:	fdc42783          	lw	a5,-36(s0)
     cf8:	0007a703          	lw	a4,0(a5)
     cfc:	fd842783          	lw	a5,-40(s0)
     d00:	0007a783          	lw	a5,0(a5)
     d04:	00078593          	mv	a1,a5
     d08:	00070513          	mv	a0,a4
     d0c:	3c1000ef          	jal	18cc <__mulsi3>
     d10:	00050793          	mv	a5,a0
     d14:	00078713          	mv	a4,a5
     d18:	fcc42783          	lw	a5,-52(s0)
     d1c:	00e7a023          	sw	a4,0(a5)
     d20:	fdc42783          	lw	a5,-36(s0)
     d24:	0007a703          	lw	a4,0(a5)
     d28:	fd842783          	lw	a5,-40(s0)
     d2c:	0007a783          	lw	a5,0(a5)
     d30:	00078593          	mv	a1,a5
     d34:	00070513          	mv	a0,a4
     d38:	3b9000ef          	jal	18f0 <__divsi3>
     d3c:	00050793          	mv	a5,a0
     d40:	00078713          	mv	a4,a5
     d44:	fc842783          	lw	a5,-56(s0)
     d48:	00e7a023          	sw	a4,0(a5)
     d4c:	fdc42783          	lw	a5,-36(s0)
     d50:	0007a703          	lw	a4,0(a5)
     d54:	fd842783          	lw	a5,-40(s0)
     d58:	0007a783          	lw	a5,0(a5)
     d5c:	00078593          	mv	a1,a5
     d60:	00070513          	mv	a0,a4
     d64:	411000ef          	jal	1974 <__modsi3>
     d68:	00050793          	mv	a5,a0
     d6c:	00078713          	mv	a4,a5
     d70:	fc442783          	lw	a5,-60(s0)
     d74:	00e7a023          	sw	a4,0(a5)
     d78:	00100793          	li	a5,1
     d7c:	fef407a3          	sb	a5,-17(s0)
     d80:	fef44783          	lbu	a5,-17(s0)
     d84:	00078513          	mv	a0,a5
     d88:	03c12083          	lw	ra,60(sp)
     d8c:	03812403          	lw	s0,56(sp)
     d90:	04010113          	add	sp,sp,64
     d94:	00008067          	ret

00000d98 <__divdi3>:
     d98:	fc010113          	add	sp,sp,-64
     d9c:	02912a23          	sw	s1,52(sp)
     da0:	03412423          	sw	s4,40(sp)
     da4:	02112e23          	sw	ra,60(sp)
     da8:	02812c23          	sw	s0,56(sp)
     dac:	03212823          	sw	s2,48(sp)
     db0:	03312623          	sw	s3,44(sp)
     db4:	03512223          	sw	s5,36(sp)
     db8:	03612023          	sw	s6,32(sp)
     dbc:	01712e23          	sw	s7,28(sp)
     dc0:	01812c23          	sw	s8,24(sp)
     dc4:	01912a23          	sw	s9,20(sp)
     dc8:	01a12823          	sw	s10,16(sp)
     dcc:	01b12623          	sw	s11,12(sp)
     dd0:	00050a13          	mv	s4,a0
     dd4:	00000493          	li	s1,0
     dd8:	0005dc63          	bgez	a1,df0 <__divdi3+0x58>
     ddc:	00a037b3          	snez	a5,a0
     de0:	40b005b3          	neg	a1,a1
     de4:	40f585b3          	sub	a1,a1,a5
     de8:	40a00a33          	neg	s4,a0
     dec:	fff00493          	li	s1,-1
     df0:	0006dc63          	bgez	a3,e08 <__divdi3+0x70>
     df4:	00c037b3          	snez	a5,a2
     df8:	40d006b3          	neg	a3,a3
     dfc:	fff4c493          	not	s1,s1
     e00:	40f686b3          	sub	a3,a3,a5
     e04:	40c00633          	neg	a2,a2
     e08:	00060a93          	mv	s5,a2
     e0c:	000a0993          	mv	s3,s4
     e10:	00058913          	mv	s2,a1
     e14:	38069c63          	bnez	a3,11ac <__divdi3+0x414>
     e18:	0002f697          	auipc	a3,0x2f
     e1c:	5dc68693          	add	a3,a3,1500 # 303f4 <__clz_tab>
     e20:	12c5f663          	bgeu	a1,a2,f4c <__divdi3+0x1b4>
     e24:	000107b7          	lui	a5,0x10
     e28:	10f67863          	bgeu	a2,a5,f38 <__divdi3+0x1a0>
     e2c:	10063793          	sltiu	a5,a2,256
     e30:	0017c793          	xor	a5,a5,1
     e34:	00379793          	sll	a5,a5,0x3
     e38:	00f65733          	srl	a4,a2,a5
     e3c:	00e686b3          	add	a3,a3,a4
     e40:	0006c703          	lbu	a4,0(a3)
     e44:	02000693          	li	a3,32
     e48:	00f707b3          	add	a5,a4,a5
     e4c:	40f68733          	sub	a4,a3,a5
     e50:	00f68c63          	beq	a3,a5,e68 <__divdi3+0xd0>
     e54:	00e59933          	sll	s2,a1,a4
     e58:	00fa57b3          	srl	a5,s4,a5
     e5c:	00e61ab3          	sll	s5,a2,a4
     e60:	0127e933          	or	s2,a5,s2
     e64:	00ea19b3          	sll	s3,s4,a4
     e68:	010adb13          	srl	s6,s5,0x10
     e6c:	000b0593          	mv	a1,s6
     e70:	00090513          	mv	a0,s2
     e74:	010a9b93          	sll	s7,s5,0x10
     e78:	281000ef          	jal	18f8 <__hidden___udivsi3>
     e7c:	010bdb93          	srl	s7,s7,0x10
     e80:	00050593          	mv	a1,a0
     e84:	00050a13          	mv	s4,a0
     e88:	000b8513          	mv	a0,s7
     e8c:	241000ef          	jal	18cc <__mulsi3>
     e90:	00050413          	mv	s0,a0
     e94:	000b0593          	mv	a1,s6
     e98:	00090513          	mv	a0,s2
     e9c:	2a5000ef          	jal	1940 <__umodsi3>
     ea0:	01051513          	sll	a0,a0,0x10
     ea4:	0109d713          	srl	a4,s3,0x10
     ea8:	00a76733          	or	a4,a4,a0
     eac:	000a0913          	mv	s2,s4
     eb0:	00877e63          	bgeu	a4,s0,ecc <__divdi3+0x134>
     eb4:	00ea8733          	add	a4,s5,a4
     eb8:	fffa0913          	add	s2,s4,-1
     ebc:	01576863          	bltu	a4,s5,ecc <__divdi3+0x134>
     ec0:	00877663          	bgeu	a4,s0,ecc <__divdi3+0x134>
     ec4:	ffea0913          	add	s2,s4,-2
     ec8:	01570733          	add	a4,a4,s5
     ecc:	40870433          	sub	s0,a4,s0
     ed0:	000b0593          	mv	a1,s6
     ed4:	00040513          	mv	a0,s0
     ed8:	221000ef          	jal	18f8 <__hidden___udivsi3>
     edc:	00050593          	mv	a1,a0
     ee0:	00050a13          	mv	s4,a0
     ee4:	000b8513          	mv	a0,s7
     ee8:	1e5000ef          	jal	18cc <__mulsi3>
     eec:	00050b93          	mv	s7,a0
     ef0:	000b0593          	mv	a1,s6
     ef4:	00040513          	mv	a0,s0
     ef8:	249000ef          	jal	1940 <__umodsi3>
     efc:	01099993          	sll	s3,s3,0x10
     f00:	01051513          	sll	a0,a0,0x10
     f04:	0109d993          	srl	s3,s3,0x10
     f08:	00a9e9b3          	or	s3,s3,a0
     f0c:	000a0713          	mv	a4,s4
     f10:	0179fc63          	bgeu	s3,s7,f28 <__divdi3+0x190>
     f14:	013a89b3          	add	s3,s5,s3
     f18:	fffa0713          	add	a4,s4,-1
     f1c:	0159e663          	bltu	s3,s5,f28 <__divdi3+0x190>
     f20:	0179f463          	bgeu	s3,s7,f28 <__divdi3+0x190>
     f24:	ffea0713          	add	a4,s4,-2
     f28:	01091793          	sll	a5,s2,0x10
     f2c:	00e7e7b3          	or	a5,a5,a4
     f30:	00000913          	li	s2,0
     f34:	1200006f          	j	1054 <__divdi3+0x2bc>
     f38:	01000737          	lui	a4,0x1000
     f3c:	01000793          	li	a5,16
     f40:	eee66ce3          	bltu	a2,a4,e38 <__divdi3+0xa0>
     f44:	01800793          	li	a5,24
     f48:	ef1ff06f          	j	e38 <__divdi3+0xa0>
     f4c:	00000713          	li	a4,0
     f50:	00060c63          	beqz	a2,f68 <__divdi3+0x1d0>
     f54:	000107b7          	lui	a5,0x10
     f58:	14f67a63          	bgeu	a2,a5,10ac <__divdi3+0x314>
     f5c:	10063713          	sltiu	a4,a2,256
     f60:	00174713          	xor	a4,a4,1
     f64:	00371713          	sll	a4,a4,0x3
     f68:	00e657b3          	srl	a5,a2,a4
     f6c:	00f686b3          	add	a3,a3,a5
     f70:	0006c783          	lbu	a5,0(a3)
     f74:	02000693          	li	a3,32
     f78:	00e787b3          	add	a5,a5,a4
     f7c:	40f68733          	sub	a4,a3,a5
     f80:	14f69063          	bne	a3,a5,10c0 <__divdi3+0x328>
     f84:	40c58a33          	sub	s4,a1,a2
     f88:	00100913          	li	s2,1
     f8c:	010adb13          	srl	s6,s5,0x10
     f90:	000b0593          	mv	a1,s6
     f94:	000a0513          	mv	a0,s4
     f98:	010a9b93          	sll	s7,s5,0x10
     f9c:	15d000ef          	jal	18f8 <__hidden___udivsi3>
     fa0:	010bdb93          	srl	s7,s7,0x10
     fa4:	00050593          	mv	a1,a0
     fa8:	00050c93          	mv	s9,a0
     fac:	000b8513          	mv	a0,s7
     fb0:	11d000ef          	jal	18cc <__mulsi3>
     fb4:	00050c13          	mv	s8,a0
     fb8:	000b0593          	mv	a1,s6
     fbc:	000a0513          	mv	a0,s4
     fc0:	181000ef          	jal	1940 <__umodsi3>
     fc4:	01051513          	sll	a0,a0,0x10
     fc8:	0109d713          	srl	a4,s3,0x10
     fcc:	00a76733          	or	a4,a4,a0
     fd0:	000c8a13          	mv	s4,s9
     fd4:	01877e63          	bgeu	a4,s8,ff0 <__divdi3+0x258>
     fd8:	00ea8733          	add	a4,s5,a4
     fdc:	fffc8a13          	add	s4,s9,-1
     fe0:	01576863          	bltu	a4,s5,ff0 <__divdi3+0x258>
     fe4:	01877663          	bgeu	a4,s8,ff0 <__divdi3+0x258>
     fe8:	ffec8a13          	add	s4,s9,-2
     fec:	01570733          	add	a4,a4,s5
     ff0:	41870433          	sub	s0,a4,s8
     ff4:	000b0593          	mv	a1,s6
     ff8:	00040513          	mv	a0,s0
     ffc:	0fd000ef          	jal	18f8 <__hidden___udivsi3>
    1000:	00050593          	mv	a1,a0
    1004:	00050c13          	mv	s8,a0
    1008:	000b8513          	mv	a0,s7
    100c:	0c1000ef          	jal	18cc <__mulsi3>
    1010:	00050b93          	mv	s7,a0
    1014:	000b0593          	mv	a1,s6
    1018:	00040513          	mv	a0,s0
    101c:	125000ef          	jal	1940 <__umodsi3>
    1020:	01099993          	sll	s3,s3,0x10
    1024:	01051513          	sll	a0,a0,0x10
    1028:	0109d993          	srl	s3,s3,0x10
    102c:	00a9e9b3          	or	s3,s3,a0
    1030:	000c0713          	mv	a4,s8
    1034:	0179fc63          	bgeu	s3,s7,104c <__divdi3+0x2b4>
    1038:	013a89b3          	add	s3,s5,s3
    103c:	fffc0713          	add	a4,s8,-1
    1040:	0159e663          	bltu	s3,s5,104c <__divdi3+0x2b4>
    1044:	0179f463          	bgeu	s3,s7,104c <__divdi3+0x2b4>
    1048:	ffec0713          	add	a4,s8,-2
    104c:	010a1793          	sll	a5,s4,0x10
    1050:	00e7e7b3          	or	a5,a5,a4
    1054:	00078513          	mv	a0,a5
    1058:	00090593          	mv	a1,s2
    105c:	00048a63          	beqz	s1,1070 <__divdi3+0x2d8>
    1060:	00f037b3          	snez	a5,a5
    1064:	412005b3          	neg	a1,s2
    1068:	40f585b3          	sub	a1,a1,a5
    106c:	40a00533          	neg	a0,a0
    1070:	03c12083          	lw	ra,60(sp)
    1074:	03812403          	lw	s0,56(sp)
    1078:	03412483          	lw	s1,52(sp)
    107c:	03012903          	lw	s2,48(sp)
    1080:	02c12983          	lw	s3,44(sp)
    1084:	02812a03          	lw	s4,40(sp)
    1088:	02412a83          	lw	s5,36(sp)
    108c:	02012b03          	lw	s6,32(sp)
    1090:	01c12b83          	lw	s7,28(sp)
    1094:	01812c03          	lw	s8,24(sp)
    1098:	01412c83          	lw	s9,20(sp)
    109c:	01012d03          	lw	s10,16(sp)
    10a0:	00c12d83          	lw	s11,12(sp)
    10a4:	04010113          	add	sp,sp,64
    10a8:	00008067          	ret
    10ac:	010007b7          	lui	a5,0x1000
    10b0:	01000713          	li	a4,16
    10b4:	eaf66ae3          	bltu	a2,a5,f68 <__divdi3+0x1d0>
    10b8:	01800713          	li	a4,24
    10bc:	eadff06f          	j	f68 <__divdi3+0x1d0>
    10c0:	00e61ab3          	sll	s5,a2,a4
    10c4:	00f5d933          	srl	s2,a1,a5
    10c8:	010adb93          	srl	s7,s5,0x10
    10cc:	00e595b3          	sll	a1,a1,a4
    10d0:	00fa57b3          	srl	a5,s4,a5
    10d4:	00b7eb33          	or	s6,a5,a1
    10d8:	00ea19b3          	sll	s3,s4,a4
    10dc:	000b8593          	mv	a1,s7
    10e0:	00090513          	mv	a0,s2
    10e4:	010a9a13          	sll	s4,s5,0x10
    10e8:	011000ef          	jal	18f8 <__hidden___udivsi3>
    10ec:	010a5a13          	srl	s4,s4,0x10
    10f0:	00050593          	mv	a1,a0
    10f4:	00050c13          	mv	s8,a0
    10f8:	000a0513          	mv	a0,s4
    10fc:	7d0000ef          	jal	18cc <__mulsi3>
    1100:	00050413          	mv	s0,a0
    1104:	000b8593          	mv	a1,s7
    1108:	00090513          	mv	a0,s2
    110c:	035000ef          	jal	1940 <__umodsi3>
    1110:	01051513          	sll	a0,a0,0x10
    1114:	010b5713          	srl	a4,s6,0x10
    1118:	00a76733          	or	a4,a4,a0
    111c:	000c0913          	mv	s2,s8
    1120:	00877e63          	bgeu	a4,s0,113c <__divdi3+0x3a4>
    1124:	00ea8733          	add	a4,s5,a4
    1128:	fffc0913          	add	s2,s8,-1
    112c:	01576863          	bltu	a4,s5,113c <__divdi3+0x3a4>
    1130:	00877663          	bgeu	a4,s0,113c <__divdi3+0x3a4>
    1134:	ffec0913          	add	s2,s8,-2
    1138:	01570733          	add	a4,a4,s5
    113c:	40870433          	sub	s0,a4,s0
    1140:	000b8593          	mv	a1,s7
    1144:	00040513          	mv	a0,s0
    1148:	7b0000ef          	jal	18f8 <__hidden___udivsi3>
    114c:	00050593          	mv	a1,a0
    1150:	00050c13          	mv	s8,a0
    1154:	000a0513          	mv	a0,s4
    1158:	774000ef          	jal	18cc <__mulsi3>
    115c:	00050a13          	mv	s4,a0
    1160:	000b8593          	mv	a1,s7
    1164:	00040513          	mv	a0,s0
    1168:	7d8000ef          	jal	1940 <__umodsi3>
    116c:	010b1793          	sll	a5,s6,0x10
    1170:	01051513          	sll	a0,a0,0x10
    1174:	0107d793          	srl	a5,a5,0x10
    1178:	00a7e7b3          	or	a5,a5,a0
    117c:	000c0713          	mv	a4,s8
    1180:	0147fe63          	bgeu	a5,s4,119c <__divdi3+0x404>
    1184:	00fa87b3          	add	a5,s5,a5
    1188:	fffc0713          	add	a4,s8,-1
    118c:	0157e863          	bltu	a5,s5,119c <__divdi3+0x404>
    1190:	0147f663          	bgeu	a5,s4,119c <__divdi3+0x404>
    1194:	ffec0713          	add	a4,s8,-2
    1198:	015787b3          	add	a5,a5,s5
    119c:	01091913          	sll	s2,s2,0x10
    11a0:	41478a33          	sub	s4,a5,s4
    11a4:	00e96933          	or	s2,s2,a4
    11a8:	de5ff06f          	j	f8c <__divdi3+0x1f4>
    11ac:	1ed5ee63          	bltu	a1,a3,13a8 <__divdi3+0x610>
    11b0:	000107b7          	lui	a5,0x10
    11b4:	04f6f463          	bgeu	a3,a5,11fc <__divdi3+0x464>
    11b8:	1006b713          	sltiu	a4,a3,256
    11bc:	00174713          	xor	a4,a4,1
    11c0:	00371713          	sll	a4,a4,0x3
    11c4:	00e6d533          	srl	a0,a3,a4
    11c8:	0002f797          	auipc	a5,0x2f
    11cc:	22c78793          	add	a5,a5,556 # 303f4 <__clz_tab>
    11d0:	00a787b3          	add	a5,a5,a0
    11d4:	0007c803          	lbu	a6,0(a5)
    11d8:	02000793          	li	a5,32
    11dc:	00e80833          	add	a6,a6,a4
    11e0:	41078933          	sub	s2,a5,a6
    11e4:	03079663          	bne	a5,a6,1210 <__divdi3+0x478>
    11e8:	00100793          	li	a5,1
    11ec:	e6b6e4e3          	bltu	a3,a1,1054 <__divdi3+0x2bc>
    11f0:	00ca37b3          	sltu	a5,s4,a2
    11f4:	0017c793          	xor	a5,a5,1
    11f8:	e5dff06f          	j	1054 <__divdi3+0x2bc>
    11fc:	010007b7          	lui	a5,0x1000
    1200:	01000713          	li	a4,16
    1204:	fcf6e0e3          	bltu	a3,a5,11c4 <__divdi3+0x42c>
    1208:	01800713          	li	a4,24
    120c:	fb9ff06f          	j	11c4 <__divdi3+0x42c>
    1210:	012696b3          	sll	a3,a3,s2
    1214:	01065c33          	srl	s8,a2,a6
    1218:	00dc6c33          	or	s8,s8,a3
    121c:	0105dab3          	srl	s5,a1,a6
    1220:	010a5733          	srl	a4,s4,a6
    1224:	012595b3          	sll	a1,a1,s2
    1228:	010c5b13          	srl	s6,s8,0x10
    122c:	00b769b3          	or	s3,a4,a1
    1230:	010c1b93          	sll	s7,s8,0x10
    1234:	000b0593          	mv	a1,s6
    1238:	000a8513          	mv	a0,s5
    123c:	01261433          	sll	s0,a2,s2
    1240:	010bdb93          	srl	s7,s7,0x10
    1244:	6b4000ef          	jal	18f8 <__hidden___udivsi3>
    1248:	00050593          	mv	a1,a0
    124c:	00050d93          	mv	s11,a0
    1250:	000b8513          	mv	a0,s7
    1254:	678000ef          	jal	18cc <__mulsi3>
    1258:	00050d13          	mv	s10,a0
    125c:	000b0593          	mv	a1,s6
    1260:	000a8513          	mv	a0,s5
    1264:	6dc000ef          	jal	1940 <__umodsi3>
    1268:	01051513          	sll	a0,a0,0x10
    126c:	0109d693          	srl	a3,s3,0x10
    1270:	00a6e6b3          	or	a3,a3,a0
    1274:	000d8c93          	mv	s9,s11
    1278:	01a6fe63          	bgeu	a3,s10,1294 <__divdi3+0x4fc>
    127c:	00dc06b3          	add	a3,s8,a3
    1280:	fffd8c93          	add	s9,s11,-1
    1284:	0186e863          	bltu	a3,s8,1294 <__divdi3+0x4fc>
    1288:	01a6f663          	bgeu	a3,s10,1294 <__divdi3+0x4fc>
    128c:	ffed8c93          	add	s9,s11,-2
    1290:	018686b3          	add	a3,a3,s8
    1294:	41a68ab3          	sub	s5,a3,s10
    1298:	000b0593          	mv	a1,s6
    129c:	000a8513          	mv	a0,s5
    12a0:	658000ef          	jal	18f8 <__hidden___udivsi3>
    12a4:	00050593          	mv	a1,a0
    12a8:	00050d13          	mv	s10,a0
    12ac:	000b8513          	mv	a0,s7
    12b0:	61c000ef          	jal	18cc <__mulsi3>
    12b4:	00050b93          	mv	s7,a0
    12b8:	000b0593          	mv	a1,s6
    12bc:	000a8513          	mv	a0,s5
    12c0:	680000ef          	jal	1940 <__umodsi3>
    12c4:	01099713          	sll	a4,s3,0x10
    12c8:	01051513          	sll	a0,a0,0x10
    12cc:	01075713          	srl	a4,a4,0x10
    12d0:	00a76733          	or	a4,a4,a0
    12d4:	000d0693          	mv	a3,s10
    12d8:	01777e63          	bgeu	a4,s7,12f4 <__divdi3+0x55c>
    12dc:	00ec0733          	add	a4,s8,a4
    12e0:	fffd0693          	add	a3,s10,-1
    12e4:	01876863          	bltu	a4,s8,12f4 <__divdi3+0x55c>
    12e8:	01777663          	bgeu	a4,s7,12f4 <__divdi3+0x55c>
    12ec:	ffed0693          	add	a3,s10,-2
    12f0:	01870733          	add	a4,a4,s8
    12f4:	010c9793          	sll	a5,s9,0x10
    12f8:	00010e37          	lui	t3,0x10
    12fc:	00d7e7b3          	or	a5,a5,a3
    1300:	fffe0313          	add	t1,t3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7263>
    1304:	0067f8b3          	and	a7,a5,t1
    1308:	00647333          	and	t1,s0,t1
    130c:	41770733          	sub	a4,a4,s7
    1310:	0107de93          	srl	t4,a5,0x10
    1314:	01045413          	srl	s0,s0,0x10
    1318:	00088513          	mv	a0,a7
    131c:	00030593          	mv	a1,t1
    1320:	5ac000ef          	jal	18cc <__mulsi3>
    1324:	00050813          	mv	a6,a0
    1328:	00040593          	mv	a1,s0
    132c:	00088513          	mv	a0,a7
    1330:	59c000ef          	jal	18cc <__mulsi3>
    1334:	00050893          	mv	a7,a0
    1338:	00030593          	mv	a1,t1
    133c:	000e8513          	mv	a0,t4
    1340:	58c000ef          	jal	18cc <__mulsi3>
    1344:	00050313          	mv	t1,a0
    1348:	00040593          	mv	a1,s0
    134c:	000e8513          	mv	a0,t4
    1350:	57c000ef          	jal	18cc <__mulsi3>
    1354:	01085693          	srl	a3,a6,0x10
    1358:	006888b3          	add	a7,a7,t1
    135c:	011686b3          	add	a3,a3,a7
    1360:	00050613          	mv	a2,a0
    1364:	0066f463          	bgeu	a3,t1,136c <__divdi3+0x5d4>
    1368:	01c50633          	add	a2,a0,t3
    136c:	0106d593          	srl	a1,a3,0x10
    1370:	00c58633          	add	a2,a1,a2
    1374:	02c76663          	bltu	a4,a2,13a0 <__divdi3+0x608>
    1378:	bac71ce3          	bne	a4,a2,f30 <__divdi3+0x198>
    137c:	00010637          	lui	a2,0x10
    1380:	fff60613          	add	a2,a2,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7263>
    1384:	00c6f6b3          	and	a3,a3,a2
    1388:	01069693          	sll	a3,a3,0x10
    138c:	00c87833          	and	a6,a6,a2
    1390:	012a1733          	sll	a4,s4,s2
    1394:	01068533          	add	a0,a3,a6
    1398:	00000913          	li	s2,0
    139c:	caa77ce3          	bgeu	a4,a0,1054 <__divdi3+0x2bc>
    13a0:	fff78793          	add	a5,a5,-1 # ffffff <GET_WATCHDOG_LOW+0xdfefbf>
    13a4:	b8dff06f          	j	f30 <__divdi3+0x198>
    13a8:	00000913          	li	s2,0
    13ac:	00000793          	li	a5,0
    13b0:	ca5ff06f          	j	1054 <__divdi3+0x2bc>

000013b4 <__moddi3>:
    13b4:	fc010113          	add	sp,sp,-64
    13b8:	02912a23          	sw	s1,52(sp)
    13bc:	02112e23          	sw	ra,60(sp)
    13c0:	02812c23          	sw	s0,56(sp)
    13c4:	03212823          	sw	s2,48(sp)
    13c8:	03312623          	sw	s3,44(sp)
    13cc:	03412423          	sw	s4,40(sp)
    13d0:	03512223          	sw	s5,36(sp)
    13d4:	03612023          	sw	s6,32(sp)
    13d8:	01712e23          	sw	s7,28(sp)
    13dc:	01812c23          	sw	s8,24(sp)
    13e0:	01912a23          	sw	s9,20(sp)
    13e4:	01a12823          	sw	s10,16(sp)
    13e8:	01b12623          	sw	s11,12(sp)
    13ec:	00000493          	li	s1,0
    13f0:	0005dc63          	bgez	a1,1408 <__moddi3+0x54>
    13f4:	00a037b3          	snez	a5,a0
    13f8:	40b005b3          	neg	a1,a1
    13fc:	40f585b3          	sub	a1,a1,a5
    1400:	40a00533          	neg	a0,a0
    1404:	fff00493          	li	s1,-1
    1408:	0006da63          	bgez	a3,141c <__moddi3+0x68>
    140c:	00c037b3          	snez	a5,a2
    1410:	40d006b3          	neg	a3,a3
    1414:	40f686b3          	sub	a3,a3,a5
    1418:	40c00633          	neg	a2,a2
    141c:	00060a13          	mv	s4,a2
    1420:	00050413          	mv	s0,a0
    1424:	00058913          	mv	s2,a1
    1428:	26069663          	bnez	a3,1694 <__moddi3+0x2e0>
    142c:	0002f697          	auipc	a3,0x2f
    1430:	fc868693          	add	a3,a3,-56 # 303f4 <__clz_tab>
    1434:	14c5fa63          	bgeu	a1,a2,1588 <__moddi3+0x1d4>
    1438:	000107b7          	lui	a5,0x10
    143c:	12f67c63          	bgeu	a2,a5,1574 <__moddi3+0x1c0>
    1440:	10063793          	sltiu	a5,a2,256
    1444:	0017c793          	xor	a5,a5,1
    1448:	00379793          	sll	a5,a5,0x3
    144c:	00f65733          	srl	a4,a2,a5
    1450:	00e686b3          	add	a3,a3,a4
    1454:	0006c703          	lbu	a4,0(a3)
    1458:	00f707b3          	add	a5,a4,a5
    145c:	02000713          	li	a4,32
    1460:	40f709b3          	sub	s3,a4,a5
    1464:	00f70c63          	beq	a4,a5,147c <__moddi3+0xc8>
    1468:	013595b3          	sll	a1,a1,s3
    146c:	00f557b3          	srl	a5,a0,a5
    1470:	01361a33          	sll	s4,a2,s3
    1474:	00b7e933          	or	s2,a5,a1
    1478:	01351433          	sll	s0,a0,s3
    147c:	010a5b13          	srl	s6,s4,0x10
    1480:	000b0593          	mv	a1,s6
    1484:	010a1b93          	sll	s7,s4,0x10
    1488:	00090513          	mv	a0,s2
    148c:	46c000ef          	jal	18f8 <__hidden___udivsi3>
    1490:	010bdb93          	srl	s7,s7,0x10
    1494:	000b8593          	mv	a1,s7
    1498:	434000ef          	jal	18cc <__mulsi3>
    149c:	00050a93          	mv	s5,a0
    14a0:	000b0593          	mv	a1,s6
    14a4:	00090513          	mv	a0,s2
    14a8:	498000ef          	jal	1940 <__umodsi3>
    14ac:	01051513          	sll	a0,a0,0x10
    14b0:	01045793          	srl	a5,s0,0x10
    14b4:	00a7e7b3          	or	a5,a5,a0
    14b8:	0157fa63          	bgeu	a5,s5,14cc <__moddi3+0x118>
    14bc:	00fa07b3          	add	a5,s4,a5
    14c0:	0147e663          	bltu	a5,s4,14cc <__moddi3+0x118>
    14c4:	0157f463          	bgeu	a5,s5,14cc <__moddi3+0x118>
    14c8:	014787b3          	add	a5,a5,s4
    14cc:	41578933          	sub	s2,a5,s5
    14d0:	000b0593          	mv	a1,s6
    14d4:	00090513          	mv	a0,s2
    14d8:	420000ef          	jal	18f8 <__hidden___udivsi3>
    14dc:	000b8593          	mv	a1,s7
    14e0:	3ec000ef          	jal	18cc <__mulsi3>
    14e4:	00050a93          	mv	s5,a0
    14e8:	000b0593          	mv	a1,s6
    14ec:	00090513          	mv	a0,s2
    14f0:	450000ef          	jal	1940 <__umodsi3>
    14f4:	01041413          	sll	s0,s0,0x10
    14f8:	01051513          	sll	a0,a0,0x10
    14fc:	01045413          	srl	s0,s0,0x10
    1500:	00a46433          	or	s0,s0,a0
    1504:	01547a63          	bgeu	s0,s5,1518 <__moddi3+0x164>
    1508:	008a0433          	add	s0,s4,s0
    150c:	01446663          	bltu	s0,s4,1518 <__moddi3+0x164>
    1510:	01547463          	bgeu	s0,s5,1518 <__moddi3+0x164>
    1514:	01440433          	add	s0,s0,s4
    1518:	41540433          	sub	s0,s0,s5
    151c:	01345533          	srl	a0,s0,s3
    1520:	00000593          	li	a1,0
    1524:	00048a63          	beqz	s1,1538 <__moddi3+0x184>
    1528:	00a037b3          	snez	a5,a0
    152c:	40b005b3          	neg	a1,a1
    1530:	40f585b3          	sub	a1,a1,a5
    1534:	40a00533          	neg	a0,a0
    1538:	03c12083          	lw	ra,60(sp)
    153c:	03812403          	lw	s0,56(sp)
    1540:	03412483          	lw	s1,52(sp)
    1544:	03012903          	lw	s2,48(sp)
    1548:	02c12983          	lw	s3,44(sp)
    154c:	02812a03          	lw	s4,40(sp)
    1550:	02412a83          	lw	s5,36(sp)
    1554:	02012b03          	lw	s6,32(sp)
    1558:	01c12b83          	lw	s7,28(sp)
    155c:	01812c03          	lw	s8,24(sp)
    1560:	01412c83          	lw	s9,20(sp)
    1564:	01012d03          	lw	s10,16(sp)
    1568:	00c12d83          	lw	s11,12(sp)
    156c:	04010113          	add	sp,sp,64
    1570:	00008067          	ret
    1574:	01000737          	lui	a4,0x1000
    1578:	01000793          	li	a5,16
    157c:	ece668e3          	bltu	a2,a4,144c <__moddi3+0x98>
    1580:	01800793          	li	a5,24
    1584:	ec9ff06f          	j	144c <__moddi3+0x98>
    1588:	00000713          	li	a4,0
    158c:	00060c63          	beqz	a2,15a4 <__moddi3+0x1f0>
    1590:	000107b7          	lui	a5,0x10
    1594:	0ef67663          	bgeu	a2,a5,1680 <__moddi3+0x2cc>
    1598:	10063713          	sltiu	a4,a2,256
    159c:	00174713          	xor	a4,a4,1
    15a0:	00371713          	sll	a4,a4,0x3
    15a4:	00e657b3          	srl	a5,a2,a4
    15a8:	00f686b3          	add	a3,a3,a5
    15ac:	0006c783          	lbu	a5,0(a3)
    15b0:	40c58933          	sub	s2,a1,a2
    15b4:	00e787b3          	add	a5,a5,a4
    15b8:	02000713          	li	a4,32
    15bc:	40f709b3          	sub	s3,a4,a5
    15c0:	eaf70ee3          	beq	a4,a5,147c <__moddi3+0xc8>
    15c4:	01361a33          	sll	s4,a2,s3
    15c8:	00f5d933          	srl	s2,a1,a5
    15cc:	010a5b93          	srl	s7,s4,0x10
    15d0:	00f557b3          	srl	a5,a0,a5
    15d4:	013595b3          	sll	a1,a1,s3
    15d8:	00b7eab3          	or	s5,a5,a1
    15dc:	01351433          	sll	s0,a0,s3
    15e0:	000b8593          	mv	a1,s7
    15e4:	010a1b13          	sll	s6,s4,0x10
    15e8:	00090513          	mv	a0,s2
    15ec:	30c000ef          	jal	18f8 <__hidden___udivsi3>
    15f0:	010b5b13          	srl	s6,s6,0x10
    15f4:	000b0593          	mv	a1,s6
    15f8:	2d4000ef          	jal	18cc <__mulsi3>
    15fc:	00050c13          	mv	s8,a0
    1600:	000b8593          	mv	a1,s7
    1604:	00090513          	mv	a0,s2
    1608:	338000ef          	jal	1940 <__umodsi3>
    160c:	01051513          	sll	a0,a0,0x10
    1610:	010ad713          	srl	a4,s5,0x10
    1614:	00a76733          	or	a4,a4,a0
    1618:	01877a63          	bgeu	a4,s8,162c <__moddi3+0x278>
    161c:	00ea0733          	add	a4,s4,a4
    1620:	01476663          	bltu	a4,s4,162c <__moddi3+0x278>
    1624:	01877463          	bgeu	a4,s8,162c <__moddi3+0x278>
    1628:	01470733          	add	a4,a4,s4
    162c:	41870c33          	sub	s8,a4,s8
    1630:	000b8593          	mv	a1,s7
    1634:	000c0513          	mv	a0,s8
    1638:	2c0000ef          	jal	18f8 <__hidden___udivsi3>
    163c:	000b0593          	mv	a1,s6
    1640:	28c000ef          	jal	18cc <__mulsi3>
    1644:	00050b13          	mv	s6,a0
    1648:	000b8593          	mv	a1,s7
    164c:	000c0513          	mv	a0,s8
    1650:	2f0000ef          	jal	1940 <__umodsi3>
    1654:	010a9793          	sll	a5,s5,0x10
    1658:	01051513          	sll	a0,a0,0x10
    165c:	0107d793          	srl	a5,a5,0x10
    1660:	00a7e7b3          	or	a5,a5,a0
    1664:	0167fa63          	bgeu	a5,s6,1678 <__moddi3+0x2c4>
    1668:	00fa07b3          	add	a5,s4,a5
    166c:	0147e663          	bltu	a5,s4,1678 <__moddi3+0x2c4>
    1670:	0167f463          	bgeu	a5,s6,1678 <__moddi3+0x2c4>
    1674:	014787b3          	add	a5,a5,s4
    1678:	41678933          	sub	s2,a5,s6
    167c:	e01ff06f          	j	147c <__moddi3+0xc8>
    1680:	010007b7          	lui	a5,0x1000
    1684:	01000713          	li	a4,16
    1688:	f0f66ee3          	bltu	a2,a5,15a4 <__moddi3+0x1f0>
    168c:	01800713          	li	a4,24
    1690:	f15ff06f          	j	15a4 <__moddi3+0x1f0>
    1694:	e8d5e8e3          	bltu	a1,a3,1524 <__moddi3+0x170>
    1698:	000107b7          	lui	a5,0x10
    169c:	04f6fe63          	bgeu	a3,a5,16f8 <__moddi3+0x344>
    16a0:	1006b793          	sltiu	a5,a3,256
    16a4:	0017c793          	xor	a5,a5,1
    16a8:	00379793          	sll	a5,a5,0x3
    16ac:	00f6d833          	srl	a6,a3,a5
    16b0:	0002f717          	auipc	a4,0x2f
    16b4:	d4470713          	add	a4,a4,-700 # 303f4 <__clz_tab>
    16b8:	01070733          	add	a4,a4,a6
    16bc:	00074a03          	lbu	s4,0(a4)
    16c0:	00fa0a33          	add	s4,s4,a5
    16c4:	02000793          	li	a5,32
    16c8:	414789b3          	sub	s3,a5,s4
    16cc:	05479063          	bne	a5,s4,170c <__moddi3+0x358>
    16d0:	00b6e463          	bltu	a3,a1,16d8 <__moddi3+0x324>
    16d4:	00c56c63          	bltu	a0,a2,16ec <__moddi3+0x338>
    16d8:	40c50ab3          	sub	s5,a0,a2
    16dc:	40d586b3          	sub	a3,a1,a3
    16e0:	015535b3          	sltu	a1,a0,s5
    16e4:	000a8413          	mv	s0,s5
    16e8:	40b68933          	sub	s2,a3,a1
    16ec:	00040513          	mv	a0,s0
    16f0:	00090593          	mv	a1,s2
    16f4:	e31ff06f          	j	1524 <__moddi3+0x170>
    16f8:	01000737          	lui	a4,0x1000
    16fc:	01000793          	li	a5,16
    1700:	fae6e6e3          	bltu	a3,a4,16ac <__moddi3+0x2f8>
    1704:	01800793          	li	a5,24
    1708:	fa5ff06f          	j	16ac <__moddi3+0x2f8>
    170c:	013696b3          	sll	a3,a3,s3
    1710:	01465bb3          	srl	s7,a2,s4
    1714:	00dbebb3          	or	s7,s7,a3
    1718:	0145db33          	srl	s6,a1,s4
    171c:	01455433          	srl	s0,a0,s4
    1720:	013595b3          	sll	a1,a1,s3
    1724:	010bdc13          	srl	s8,s7,0x10
    1728:	00b46433          	or	s0,s0,a1
    172c:	01351933          	sll	s2,a0,s3
    1730:	000c0593          	mv	a1,s8
    1734:	000b0513          	mv	a0,s6
    1738:	010b9c93          	sll	s9,s7,0x10
    173c:	01361ab3          	sll	s5,a2,s3
    1740:	010cdc93          	srl	s9,s9,0x10
    1744:	1b4000ef          	jal	18f8 <__hidden___udivsi3>
    1748:	00050593          	mv	a1,a0
    174c:	00050d93          	mv	s11,a0
    1750:	000c8513          	mv	a0,s9
    1754:	178000ef          	jal	18cc <__mulsi3>
    1758:	00050d13          	mv	s10,a0
    175c:	000c0593          	mv	a1,s8
    1760:	000b0513          	mv	a0,s6
    1764:	1dc000ef          	jal	1940 <__umodsi3>
    1768:	01051513          	sll	a0,a0,0x10
    176c:	01045793          	srl	a5,s0,0x10
    1770:	00a7e7b3          	or	a5,a5,a0
    1774:	000d8b13          	mv	s6,s11
    1778:	01a7fe63          	bgeu	a5,s10,1794 <__moddi3+0x3e0>
    177c:	00fb87b3          	add	a5,s7,a5
    1780:	fffd8b13          	add	s6,s11,-1
    1784:	0177e863          	bltu	a5,s7,1794 <__moddi3+0x3e0>
    1788:	01a7f663          	bgeu	a5,s10,1794 <__moddi3+0x3e0>
    178c:	ffed8b13          	add	s6,s11,-2
    1790:	017787b3          	add	a5,a5,s7
    1794:	41a78d33          	sub	s10,a5,s10
    1798:	000c0593          	mv	a1,s8
    179c:	000d0513          	mv	a0,s10
    17a0:	158000ef          	jal	18f8 <__hidden___udivsi3>
    17a4:	00050593          	mv	a1,a0
    17a8:	00050d93          	mv	s11,a0
    17ac:	000c8513          	mv	a0,s9
    17b0:	11c000ef          	jal	18cc <__mulsi3>
    17b4:	000c0593          	mv	a1,s8
    17b8:	00050c93          	mv	s9,a0
    17bc:	000d0513          	mv	a0,s10
    17c0:	180000ef          	jal	1940 <__umodsi3>
    17c4:	01041593          	sll	a1,s0,0x10
    17c8:	01051513          	sll	a0,a0,0x10
    17cc:	0105d593          	srl	a1,a1,0x10
    17d0:	00a5e5b3          	or	a1,a1,a0
    17d4:	000d8713          	mv	a4,s11
    17d8:	0195fe63          	bgeu	a1,s9,17f4 <__moddi3+0x440>
    17dc:	00bb85b3          	add	a1,s7,a1
    17e0:	fffd8713          	add	a4,s11,-1
    17e4:	0175e863          	bltu	a1,s7,17f4 <__moddi3+0x440>
    17e8:	0195f663          	bgeu	a1,s9,17f4 <__moddi3+0x440>
    17ec:	ffed8713          	add	a4,s11,-2
    17f0:	017585b3          	add	a1,a1,s7
    17f4:	00010337          	lui	t1,0x10
    17f8:	010b1b13          	sll	s6,s6,0x10
    17fc:	00eb6b33          	or	s6,s6,a4
    1800:	fff30713          	add	a4,t1,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7263>
    1804:	00eb7e33          	and	t3,s6,a4
    1808:	00eaf733          	and	a4,s5,a4
    180c:	419587b3          	sub	a5,a1,s9
    1810:	010b5b13          	srl	s6,s6,0x10
    1814:	010ad893          	srl	a7,s5,0x10
    1818:	000e0513          	mv	a0,t3
    181c:	00070593          	mv	a1,a4
    1820:	0ac000ef          	jal	18cc <__mulsi3>
    1824:	00050813          	mv	a6,a0
    1828:	00088593          	mv	a1,a7
    182c:	000e0513          	mv	a0,t3
    1830:	09c000ef          	jal	18cc <__mulsi3>
    1834:	00050413          	mv	s0,a0
    1838:	00070593          	mv	a1,a4
    183c:	000b0513          	mv	a0,s6
    1840:	08c000ef          	jal	18cc <__mulsi3>
    1844:	00050713          	mv	a4,a0
    1848:	00088593          	mv	a1,a7
    184c:	000b0513          	mv	a0,s6
    1850:	07c000ef          	jal	18cc <__mulsi3>
    1854:	00e40433          	add	s0,s0,a4
    1858:	01085693          	srl	a3,a6,0x10
    185c:	00d40433          	add	s0,s0,a3
    1860:	00e47463          	bgeu	s0,a4,1868 <__moddi3+0x4b4>
    1864:	00650533          	add	a0,a0,t1
    1868:	000106b7          	lui	a3,0x10
    186c:	fff68693          	add	a3,a3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x7263>
    1870:	01045713          	srl	a4,s0,0x10
    1874:	00d47433          	and	s0,s0,a3
    1878:	01041413          	sll	s0,s0,0x10
    187c:	00d87833          	and	a6,a6,a3
    1880:	00a70733          	add	a4,a4,a0
    1884:	01040433          	add	s0,s0,a6
    1888:	00e7e663          	bltu	a5,a4,1894 <__moddi3+0x4e0>
    188c:	00e79e63          	bne	a5,a4,18a8 <__moddi3+0x4f4>
    1890:	00897c63          	bgeu	s2,s0,18a8 <__moddi3+0x4f4>
    1894:	41540ab3          	sub	s5,s0,s5
    1898:	015436b3          	sltu	a3,s0,s5
    189c:	017686b3          	add	a3,a3,s7
    18a0:	000a8413          	mv	s0,s5
    18a4:	40d70733          	sub	a4,a4,a3
    18a8:	40890433          	sub	s0,s2,s0
    18ac:	00893933          	sltu	s2,s2,s0
    18b0:	40e785b3          	sub	a1,a5,a4
    18b4:	412585b3          	sub	a1,a1,s2
    18b8:	01459a33          	sll	s4,a1,s4
    18bc:	01345433          	srl	s0,s0,s3
    18c0:	008a6533          	or	a0,s4,s0
    18c4:	0135d5b3          	srl	a1,a1,s3
    18c8:	c5dff06f          	j	1524 <__moddi3+0x170>

000018cc <__mulsi3>:
    18cc:	00050613          	mv	a2,a0
    18d0:	00000513          	li	a0,0
    18d4:	0015f693          	and	a3,a1,1
    18d8:	00068463          	beqz	a3,18e0 <__mulsi3+0x14>
    18dc:	00c50533          	add	a0,a0,a2
    18e0:	0015d593          	srl	a1,a1,0x1
    18e4:	00161613          	sll	a2,a2,0x1
    18e8:	fe0596e3          	bnez	a1,18d4 <__mulsi3+0x8>
    18ec:	00008067          	ret

000018f0 <__divsi3>:
    18f0:	06054063          	bltz	a0,1950 <__umodsi3+0x10>
    18f4:	0605c663          	bltz	a1,1960 <__umodsi3+0x20>

000018f8 <__hidden___udivsi3>:
    18f8:	00058613          	mv	a2,a1
    18fc:	00050593          	mv	a1,a0
    1900:	fff00513          	li	a0,-1
    1904:	02060c63          	beqz	a2,193c <__hidden___udivsi3+0x44>
    1908:	00100693          	li	a3,1
    190c:	00b67a63          	bgeu	a2,a1,1920 <__hidden___udivsi3+0x28>
    1910:	00c05863          	blez	a2,1920 <__hidden___udivsi3+0x28>
    1914:	00161613          	sll	a2,a2,0x1
    1918:	00169693          	sll	a3,a3,0x1
    191c:	feb66ae3          	bltu	a2,a1,1910 <__hidden___udivsi3+0x18>
    1920:	00000513          	li	a0,0
    1924:	00c5e663          	bltu	a1,a2,1930 <__hidden___udivsi3+0x38>
    1928:	40c585b3          	sub	a1,a1,a2
    192c:	00d56533          	or	a0,a0,a3
    1930:	0016d693          	srl	a3,a3,0x1
    1934:	00165613          	srl	a2,a2,0x1
    1938:	fe0696e3          	bnez	a3,1924 <__hidden___udivsi3+0x2c>
    193c:	00008067          	ret

00001940 <__umodsi3>:
    1940:	00008293          	mv	t0,ra
    1944:	fb5ff0ef          	jal	18f8 <__hidden___udivsi3>
    1948:	00058513          	mv	a0,a1
    194c:	00028067          	jr	t0
    1950:	40a00533          	neg	a0,a0
    1954:	00b04863          	bgtz	a1,1964 <__umodsi3+0x24>
    1958:	40b005b3          	neg	a1,a1
    195c:	f9dff06f          	j	18f8 <__hidden___udivsi3>
    1960:	40b005b3          	neg	a1,a1
    1964:	00008293          	mv	t0,ra
    1968:	f91ff0ef          	jal	18f8 <__hidden___udivsi3>
    196c:	40a00533          	neg	a0,a0
    1970:	00028067          	jr	t0

00001974 <__modsi3>:
    1974:	00008293          	mv	t0,ra
    1978:	0005ca63          	bltz	a1,198c <__modsi3+0x18>
    197c:	00054c63          	bltz	a0,1994 <__modsi3+0x20>
    1980:	f79ff0ef          	jal	18f8 <__hidden___udivsi3>
    1984:	00058513          	mv	a0,a1
    1988:	00028067          	jr	t0
    198c:	40b005b3          	neg	a1,a1
    1990:	fe0558e3          	bgez	a0,1980 <__modsi3+0xc>
    1994:	40a00533          	neg	a0,a0
    1998:	f61ff0ef          	jal	18f8 <__hidden___udivsi3>
    199c:	40b00533          	neg	a0,a1
    19a0:	00028067          	jr	t0

Disassembly of section .spi_compute:

00003c00 <_Z8cmd_echoPc-0x2000>:
	...

00005c00 <_Z8cmd_echoPc>:
    5c00:	fe010113          	add	sp,sp,-32
    5c04:	00112e23          	sw	ra,28(sp)
    5c08:	00812c23          	sw	s0,24(sp)
    5c0c:	02010413          	add	s0,sp,32
    5c10:	fea42623          	sw	a0,-20(s0)
    5c14:	fec42503          	lw	a0,-20(s0)
    5c18:	0c5020ef          	jal	84dc <_Z10uart_printPKc>
    5c1c:	000307b7          	lui	a5,0x30
    5c20:	19878513          	add	a0,a5,408 # 30198 <_Z17cmd_arg_tokenizerPcS_S_ii+0x273fc>
    5c24:	0b9020ef          	jal	84dc <_Z10uart_printPKc>
    5c28:	00000013          	nop
    5c2c:	01c12083          	lw	ra,28(sp)
    5c30:	01812403          	lw	s0,24(sp)
    5c34:	02010113          	add	sp,sp,32
    5c38:	00008067          	ret

00005c3c <_Z8cmd_helpPc>:
    5c3c:	fe010113          	add	sp,sp,-32
    5c40:	00112e23          	sw	ra,28(sp)
    5c44:	00812c23          	sw	s0,24(sp)
    5c48:	02010413          	add	s0,sp,32
    5c4c:	fea42623          	sw	a0,-20(s0)
    5c50:	000307b7          	lui	a5,0x30
    5c54:	19c78513          	add	a0,a5,412 # 3019c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27400>
    5c58:	085020ef          	jal	84dc <_Z10uart_printPKc>
    5c5c:	000307b7          	lui	a5,0x30
    5c60:	1bc78513          	add	a0,a5,444 # 301bc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27420>
    5c64:	079020ef          	jal	84dc <_Z10uart_printPKc>
    5c68:	000307b7          	lui	a5,0x30
    5c6c:	1cc78513          	add	a0,a5,460 # 301cc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27430>
    5c70:	06d020ef          	jal	84dc <_Z10uart_printPKc>
    5c74:	000307b7          	lui	a5,0x30
    5c78:	1dc78513          	add	a0,a5,476 # 301dc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27440>
    5c7c:	061020ef          	jal	84dc <_Z10uart_printPKc>
    5c80:	000307b7          	lui	a5,0x30
    5c84:	1ec78513          	add	a0,a5,492 # 301ec <_Z17cmd_arg_tokenizerPcS_S_ii+0x27450>
    5c88:	055020ef          	jal	84dc <_Z10uart_printPKc>
    5c8c:	000307b7          	lui	a5,0x30
    5c90:	1fc78513          	add	a0,a5,508 # 301fc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27460>
    5c94:	049020ef          	jal	84dc <_Z10uart_printPKc>
    5c98:	000307b7          	lui	a5,0x30
    5c9c:	20c78513          	add	a0,a5,524 # 3020c <_Z17cmd_arg_tokenizerPcS_S_ii+0x27470>
    5ca0:	03d020ef          	jal	84dc <_Z10uart_printPKc>
    5ca4:	00000013          	nop
    5ca8:	01c12083          	lw	ra,28(sp)
    5cac:	01812403          	lw	s0,24(sp)
    5cb0:	02010113          	add	sp,sp,32
    5cb4:	00008067          	ret

00005cb8 <_Z8cmd_exitPcPVb>:
    5cb8:	fe010113          	add	sp,sp,-32
    5cbc:	00112e23          	sw	ra,28(sp)
    5cc0:	00812c23          	sw	s0,24(sp)
    5cc4:	02010413          	add	s0,sp,32
    5cc8:	fea42623          	sw	a0,-20(s0)
    5ccc:	feb42423          	sw	a1,-24(s0)
    5cd0:	000307b7          	lui	a5,0x30
    5cd4:	23078513          	add	a0,a5,560 # 30230 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27494>
    5cd8:	005020ef          	jal	84dc <_Z10uart_printPKc>
    5cdc:	fe842783          	lw	a5,-24(s0)
    5ce0:	00078023          	sb	zero,0(a5)
    5ce4:	00000013          	nop
    5ce8:	01c12083          	lw	ra,28(sp)
    5cec:	01812403          	lw	s0,24(sp)
    5cf0:	02010113          	add	sp,sp,32
    5cf4:	00008067          	ret

00005cf8 <_ZL6get_spv>:
    5cf8:	fe010113          	add	sp,sp,-32
    5cfc:	00812e23          	sw	s0,28(sp)
    5d00:	02010413          	add	s0,sp,32
    5d04:	00010793          	mv	a5,sp
    5d08:	fef42623          	sw	a5,-20(s0)
    5d0c:	fec42783          	lw	a5,-20(s0)
    5d10:	00078513          	mv	a0,a5
    5d14:	01c12403          	lw	s0,28(sp)
    5d18:	02010113          	add	sp,sp,32
    5d1c:	00008067          	ret

00005d20 <_Z8cmd_freev>:
    5d20:	fe010113          	add	sp,sp,-32
    5d24:	00112e23          	sw	ra,28(sp)
    5d28:	00812c23          	sw	s0,24(sp)
    5d2c:	02010413          	add	s0,sp,32
    5d30:	cadfa0ef          	jal	9dc <_Z14get_free_bytesv>
    5d34:	fea42623          	sw	a0,-20(s0)
    5d38:	fec42783          	lw	a5,-20(s0)
    5d3c:	00078513          	mv	a0,a5
    5d40:	1f9020ef          	jal	8738 <_Z16uart_print_int32i>
    5d44:	00000013          	nop
    5d48:	000307b7          	lui	a5,0x30
    5d4c:	23c78513          	add	a0,a5,572 # 3023c <_Z17cmd_arg_tokenizerPcS_S_ii+0x274a0>
    5d50:	78c020ef          	jal	84dc <_Z10uart_printPKc>
    5d54:	00000013          	nop
    5d58:	01c12083          	lw	ra,28(sp)
    5d5c:	01812403          	lw	s0,24(sp)
    5d60:	02010113          	add	sp,sp,32
    5d64:	00008067          	ret

00005d68 <_Z5_sbrki>:
    5d68:	fd010113          	add	sp,sp,-48
    5d6c:	02112623          	sw	ra,44(sp)
    5d70:	02812423          	sw	s0,40(sp)
    5d74:	03010413          	add	s0,sp,48
    5d78:	fca42e23          	sw	a0,-36(s0)
    5d7c:	000347b7          	lui	a5,0x34
    5d80:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
    5d84:	fef42623          	sw	a5,-20(s0)
    5d88:	f71ff0ef          	jal	5cf8 <_ZL6get_spv>
    5d8c:	fea42423          	sw	a0,-24(s0)
    5d90:	000347b7          	lui	a5,0x34
    5d94:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    5d98:	fdc42783          	lw	a5,-36(s0)
    5d9c:	00279793          	sll	a5,a5,0x2
    5da0:	00f707b3          	add	a5,a4,a5
    5da4:	00078713          	mv	a4,a5
    5da8:	fe842783          	lw	a5,-24(s0)
    5dac:	00f76c63          	bltu	a4,a5,5dc4 <_Z5_sbrki+0x5c>
    5db0:	000307b7          	lui	a5,0x30
    5db4:	24c78513          	add	a0,a5,588 # 3024c <_Z17cmd_arg_tokenizerPcS_S_ii+0x274b0>
    5db8:	724020ef          	jal	84dc <_Z10uart_printPKc>
    5dbc:	fff00793          	li	a5,-1
    5dc0:	0240006f          	j	5de4 <_Z5_sbrki+0x7c>
    5dc4:	000347b7          	lui	a5,0x34
    5dc8:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
    5dcc:	fdc42783          	lw	a5,-36(s0)
    5dd0:	00279793          	sll	a5,a5,0x2
    5dd4:	00f70733          	add	a4,a4,a5
    5dd8:	000347b7          	lui	a5,0x34
    5ddc:	00e7a023          	sw	a4,0(a5) # 34000 <_ZL8heap_end>
    5de0:	fec42783          	lw	a5,-20(s0)
    5de4:	00078513          	mv	a0,a5
    5de8:	02c12083          	lw	ra,44(sp)
    5dec:	02812403          	lw	s0,40(sp)
    5df0:	03010113          	add	sp,sp,48
    5df4:	00008067          	ret

00005df8 <_Z7computev>:
    5df8:	fe010113          	add	sp,sp,-32
    5dfc:	00112e23          	sw	ra,28(sp)
    5e00:	00812c23          	sw	s0,24(sp)
    5e04:	02010413          	add	s0,sp,32
    5e08:	fff00793          	li	a5,-1
    5e0c:	fef407a3          	sb	a5,-17(s0)
    5e10:	00a00793          	li	a5,10
    5e14:	fef42423          	sw	a5,-24(s0)
    5e18:	fe842503          	lw	a0,-24(s0)
    5e1c:	378000ef          	jal	6194 <_Z19fibonacci_iterativei>
    5e20:	00050793          	mv	a5,a0
    5e24:	fef42223          	sw	a5,-28(s0)
    5e28:	fe842503          	lw	a0,-24(s0)
    5e2c:	414000ef          	jal	6240 <_Z19fibonacci_recursivei>
    5e30:	00050793          	mv	a5,a0
    5e34:	fef42023          	sw	a5,-32(s0)
    5e38:	fe442703          	lw	a4,-28(s0)
    5e3c:	fe042783          	lw	a5,-32(s0)
    5e40:	00f71863          	bne	a4,a5,5e50 <_Z7computev+0x58>
    5e44:	00100793          	li	a5,1
    5e48:	fef407a3          	sb	a5,-17(s0)
    5e4c:	0080006f          	j	5e54 <_Z7computev+0x5c>
    5e50:	fe0407a3          	sb	zero,-17(s0)
    5e54:	00000013          	nop
    5e58:	01c12083          	lw	ra,28(sp)
    5e5c:	01812403          	lw	s0,24(sp)
    5e60:	02010113          	add	sp,sp,32
    5e64:	00008067          	ret

00005e68 <_Z6matmulPA3_KiPA3_iS3_>:
    5e68:	fd010113          	add	sp,sp,-48
    5e6c:	02112623          	sw	ra,44(sp)
    5e70:	02812423          	sw	s0,40(sp)
    5e74:	03010413          	add	s0,sp,48
    5e78:	fca42e23          	sw	a0,-36(s0)
    5e7c:	fcb42c23          	sw	a1,-40(s0)
    5e80:	fcc42a23          	sw	a2,-44(s0)
    5e84:	fe042623          	sw	zero,-20(s0)
    5e88:	1080006f          	j	5f90 <_Z6matmulPA3_KiPA3_iS3_+0x128>
    5e8c:	fe042423          	sw	zero,-24(s0)
    5e90:	0e80006f          	j	5f78 <_Z6matmulPA3_KiPA3_iS3_+0x110>
    5e94:	fe042223          	sw	zero,-28(s0)
    5e98:	fe042023          	sw	zero,-32(s0)
    5e9c:	0900006f          	j	5f2c <_Z6matmulPA3_KiPA3_iS3_+0xc4>
    5ea0:	fec42703          	lw	a4,-20(s0)
    5ea4:	00070793          	mv	a5,a4
    5ea8:	00179793          	sll	a5,a5,0x1
    5eac:	00e787b3          	add	a5,a5,a4
    5eb0:	00279793          	sll	a5,a5,0x2
    5eb4:	00078713          	mv	a4,a5
    5eb8:	fdc42783          	lw	a5,-36(s0)
    5ebc:	00e78733          	add	a4,a5,a4
    5ec0:	fe042783          	lw	a5,-32(s0)
    5ec4:	00279793          	sll	a5,a5,0x2
    5ec8:	00f707b3          	add	a5,a4,a5
    5ecc:	0007a683          	lw	a3,0(a5)
    5ed0:	fe042703          	lw	a4,-32(s0)
    5ed4:	00070793          	mv	a5,a4
    5ed8:	00179793          	sll	a5,a5,0x1
    5edc:	00e787b3          	add	a5,a5,a4
    5ee0:	00279793          	sll	a5,a5,0x2
    5ee4:	00078713          	mv	a4,a5
    5ee8:	fd842783          	lw	a5,-40(s0)
    5eec:	00e78733          	add	a4,a5,a4
    5ef0:	fe842783          	lw	a5,-24(s0)
    5ef4:	00279793          	sll	a5,a5,0x2
    5ef8:	00f707b3          	add	a5,a4,a5
    5efc:	0007a783          	lw	a5,0(a5)
    5f00:	00078593          	mv	a1,a5
    5f04:	00068513          	mv	a0,a3
    5f08:	9c5fb0ef          	jal	18cc <__mulsi3>
    5f0c:	00050793          	mv	a5,a0
    5f10:	00078713          	mv	a4,a5
    5f14:	fe442783          	lw	a5,-28(s0)
    5f18:	00e787b3          	add	a5,a5,a4
    5f1c:	fef42223          	sw	a5,-28(s0)
    5f20:	fe042783          	lw	a5,-32(s0)
    5f24:	00178793          	add	a5,a5,1
    5f28:	fef42023          	sw	a5,-32(s0)
    5f2c:	fe042703          	lw	a4,-32(s0)
    5f30:	00200793          	li	a5,2
    5f34:	f6e7d6e3          	bge	a5,a4,5ea0 <_Z6matmulPA3_KiPA3_iS3_+0x38>
    5f38:	fec42703          	lw	a4,-20(s0)
    5f3c:	00070793          	mv	a5,a4
    5f40:	00179793          	sll	a5,a5,0x1
    5f44:	00e787b3          	add	a5,a5,a4
    5f48:	00279793          	sll	a5,a5,0x2
    5f4c:	00078713          	mv	a4,a5
    5f50:	fd442783          	lw	a5,-44(s0)
    5f54:	00e78733          	add	a4,a5,a4
    5f58:	fe842783          	lw	a5,-24(s0)
    5f5c:	00279793          	sll	a5,a5,0x2
    5f60:	00f707b3          	add	a5,a4,a5
    5f64:	fe442703          	lw	a4,-28(s0)
    5f68:	00e7a023          	sw	a4,0(a5)
    5f6c:	fe842783          	lw	a5,-24(s0)
    5f70:	00178793          	add	a5,a5,1
    5f74:	fef42423          	sw	a5,-24(s0)
    5f78:	fe842703          	lw	a4,-24(s0)
    5f7c:	00200793          	li	a5,2
    5f80:	f0e7dae3          	bge	a5,a4,5e94 <_Z6matmulPA3_KiPA3_iS3_+0x2c>
    5f84:	fec42783          	lw	a5,-20(s0)
    5f88:	00178793          	add	a5,a5,1
    5f8c:	fef42623          	sw	a5,-20(s0)
    5f90:	fec42703          	lw	a4,-20(s0)
    5f94:	00200793          	li	a5,2
    5f98:	eee7dae3          	bge	a5,a4,5e8c <_Z6matmulPA3_KiPA3_iS3_+0x24>
    5f9c:	00000793          	li	a5,0
    5fa0:	00078513          	mv	a0,a5
    5fa4:	02c12083          	lw	ra,44(sp)
    5fa8:	02812403          	lw	s0,40(sp)
    5fac:	03010113          	add	sp,sp,48
    5fb0:	00008067          	ret

00005fb4 <_Z21cmd_matrix_multiplierv>:
    5fb4:	f2010113          	add	sp,sp,-224
    5fb8:	0c112e23          	sw	ra,220(sp)
    5fbc:	0c812c23          	sw	s0,216(sp)
    5fc0:	0e010413          	add	s0,sp,224
    5fc4:	00100793          	li	a5,1
    5fc8:	fef407a3          	sb	a5,-17(s0)
    5fcc:	000307b7          	lui	a5,0x30
    5fd0:	2d878793          	add	a5,a5,728 # 302d8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2753c>
    5fd4:	0007a303          	lw	t1,0(a5)
    5fd8:	0047a883          	lw	a7,4(a5)
    5fdc:	0087a803          	lw	a6,8(a5)
    5fe0:	00c7a503          	lw	a0,12(a5)
    5fe4:	0107a583          	lw	a1,16(a5)
    5fe8:	0147a603          	lw	a2,20(a5)
    5fec:	0187a683          	lw	a3,24(a5)
    5ff0:	01c7a703          	lw	a4,28(a5)
    5ff4:	0207a783          	lw	a5,32(a5)
    5ff8:	fa642823          	sw	t1,-80(s0)
    5ffc:	fb142a23          	sw	a7,-76(s0)
    6000:	fb042c23          	sw	a6,-72(s0)
    6004:	faa42e23          	sw	a0,-68(s0)
    6008:	fcb42023          	sw	a1,-64(s0)
    600c:	fcc42223          	sw	a2,-60(s0)
    6010:	fcd42423          	sw	a3,-56(s0)
    6014:	fce42623          	sw	a4,-52(s0)
    6018:	fcf42823          	sw	a5,-48(s0)
    601c:	000307b7          	lui	a5,0x30
    6020:	2fc78793          	add	a5,a5,764 # 302fc <_Z17cmd_arg_tokenizerPcS_S_ii+0x27560>
    6024:	0007a303          	lw	t1,0(a5)
    6028:	0047a883          	lw	a7,4(a5)
    602c:	0087a803          	lw	a6,8(a5)
    6030:	00c7a503          	lw	a0,12(a5)
    6034:	0107a583          	lw	a1,16(a5)
    6038:	0147a603          	lw	a2,20(a5)
    603c:	0187a683          	lw	a3,24(a5)
    6040:	01c7a703          	lw	a4,28(a5)
    6044:	0207a783          	lw	a5,32(a5)
    6048:	f8642623          	sw	t1,-116(s0)
    604c:	f9142823          	sw	a7,-112(s0)
    6050:	f9042a23          	sw	a6,-108(s0)
    6054:	f8a42c23          	sw	a0,-104(s0)
    6058:	f8b42e23          	sw	a1,-100(s0)
    605c:	fac42023          	sw	a2,-96(s0)
    6060:	fad42223          	sw	a3,-92(s0)
    6064:	fae42423          	sw	a4,-88(s0)
    6068:	faf42623          	sw	a5,-84(s0)
    606c:	000307b7          	lui	a5,0x30
    6070:	32078793          	add	a5,a5,800 # 30320 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27584>
    6074:	0007a303          	lw	t1,0(a5)
    6078:	0047a883          	lw	a7,4(a5)
    607c:	0087a803          	lw	a6,8(a5)
    6080:	00c7a503          	lw	a0,12(a5)
    6084:	0107a583          	lw	a1,16(a5)
    6088:	0147a603          	lw	a2,20(a5)
    608c:	0187a683          	lw	a3,24(a5)
    6090:	01c7a703          	lw	a4,28(a5)
    6094:	0207a783          	lw	a5,32(a5)
    6098:	f6642423          	sw	t1,-152(s0)
    609c:	f7142623          	sw	a7,-148(s0)
    60a0:	f7042823          	sw	a6,-144(s0)
    60a4:	f6a42a23          	sw	a0,-140(s0)
    60a8:	f6b42c23          	sw	a1,-136(s0)
    60ac:	f6c42e23          	sw	a2,-132(s0)
    60b0:	f8d42023          	sw	a3,-128(s0)
    60b4:	f8e42223          	sw	a4,-124(s0)
    60b8:	f8f42423          	sw	a5,-120(s0)
    60bc:	f4042223          	sw	zero,-188(s0)
    60c0:	f4042423          	sw	zero,-184(s0)
    60c4:	f4042623          	sw	zero,-180(s0)
    60c8:	f4042823          	sw	zero,-176(s0)
    60cc:	f4042a23          	sw	zero,-172(s0)
    60d0:	f4042c23          	sw	zero,-168(s0)
    60d4:	f4042e23          	sw	zero,-164(s0)
    60d8:	f6042023          	sw	zero,-160(s0)
    60dc:	f6042223          	sw	zero,-156(s0)
    60e0:	f2042023          	sw	zero,-224(s0)
    60e4:	f2042223          	sw	zero,-220(s0)
    60e8:	f2042423          	sw	zero,-216(s0)
    60ec:	f2042623          	sw	zero,-212(s0)
    60f0:	f2042823          	sw	zero,-208(s0)
    60f4:	f2042a23          	sw	zero,-204(s0)
    60f8:	f2042c23          	sw	zero,-200(s0)
    60fc:	f2042e23          	sw	zero,-196(s0)
    6100:	f4042023          	sw	zero,-192(s0)
    6104:	000307b7          	lui	a5,0x30
    6108:	25c78513          	add	a0,a5,604 # 3025c <_Z17cmd_arg_tokenizerPcS_S_ii+0x274c0>
    610c:	3d0020ef          	jal	84dc <_Z10uart_printPKc>
    6110:	fb040793          	add	a5,s0,-80
    6114:	fcf42a23          	sw	a5,-44(s0)
    6118:	f8c40793          	add	a5,s0,-116
    611c:	fcf42c23          	sw	a5,-40(s0)
    6120:	f4440793          	add	a5,s0,-188
    6124:	fcf42e23          	sw	a5,-36(s0)
    6128:	fd440793          	add	a5,s0,-44
    612c:	00078513          	mv	a0,a5
    6130:	941fa0ef          	jal	a70 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>
    6134:	00050793          	mv	a5,a0
    6138:	fef407a3          	sb	a5,-17(s0)
    613c:	000307b7          	lui	a5,0x30
    6140:	29478513          	add	a0,a5,660 # 30294 <_Z17cmd_arg_tokenizerPcS_S_ii+0x274f8>
    6144:	398020ef          	jal	84dc <_Z10uart_printPKc>
    6148:	f6840793          	add	a5,s0,-152
    614c:	fef42023          	sw	a5,-32(s0)
    6150:	f8c40793          	add	a5,s0,-116
    6154:	fef42223          	sw	a5,-28(s0)
    6158:	f2040793          	add	a5,s0,-224
    615c:	fef42423          	sw	a5,-24(s0)
    6160:	fe040793          	add	a5,s0,-32
    6164:	00078513          	mv	a0,a5
    6168:	a41fa0ef          	jal	ba8 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>
    616c:	00050793          	mv	a5,a0
    6170:	fef407a3          	sb	a5,-17(s0)
    6174:	000307b7          	lui	a5,0x30
    6178:	2c878513          	add	a0,a5,712 # 302c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2752c>
    617c:	360020ef          	jal	84dc <_Z10uart_printPKc>
    6180:	00000013          	nop
    6184:	0dc12083          	lw	ra,220(sp)
    6188:	0d812403          	lw	s0,216(sp)
    618c:	0e010113          	add	sp,sp,224
    6190:	00008067          	ret

00006194 <_Z19fibonacci_iterativei>:
    6194:	fd010113          	add	sp,sp,-48
    6198:	02812623          	sw	s0,44(sp)
    619c:	03010413          	add	s0,sp,48
    61a0:	fca42e23          	sw	a0,-36(s0)
    61a4:	fdc42703          	lw	a4,-36(s0)
    61a8:	00100793          	li	a5,1
    61ac:	00e7c663          	blt	a5,a4,61b8 <_Z19fibonacci_iterativei+0x24>
    61b0:	fdc42783          	lw	a5,-36(s0)
    61b4:	07c0006f          	j	6230 <_Z19fibonacci_iterativei+0x9c>
    61b8:	fdc42703          	lw	a4,-36(s0)
    61bc:	02e00793          	li	a5,46
    61c0:	00e7c863          	blt	a5,a4,61d0 <_Z19fibonacci_iterativei+0x3c>
    61c4:	fdc42783          	lw	a5,-36(s0)
    61c8:	0ff7f793          	zext.b	a5,a5
    61cc:	0080006f          	j	61d4 <_Z19fibonacci_iterativei+0x40>
    61d0:	02e00793          	li	a5,46
    61d4:	fef40123          	sb	a5,-30(s0)
    61d8:	fe042623          	sw	zero,-20(s0)
    61dc:	fe042423          	sw	zero,-24(s0)
    61e0:	00100793          	li	a5,1
    61e4:	fef42223          	sw	a5,-28(s0)
    61e8:	00100793          	li	a5,1
    61ec:	fef401a3          	sb	a5,-29(s0)
    61f0:	0300006f          	j	6220 <_Z19fibonacci_iterativei+0x8c>
    61f4:	fe842703          	lw	a4,-24(s0)
    61f8:	fe442783          	lw	a5,-28(s0)
    61fc:	00f707b3          	add	a5,a4,a5
    6200:	fef42623          	sw	a5,-20(s0)
    6204:	fe442783          	lw	a5,-28(s0)
    6208:	fef42423          	sw	a5,-24(s0)
    620c:	fec42783          	lw	a5,-20(s0)
    6210:	fef42223          	sw	a5,-28(s0)
    6214:	fe344783          	lbu	a5,-29(s0)
    6218:	00178793          	add	a5,a5,1
    621c:	fef401a3          	sb	a5,-29(s0)
    6220:	fe344703          	lbu	a4,-29(s0)
    6224:	fe244783          	lbu	a5,-30(s0)
    6228:	fcf766e3          	bltu	a4,a5,61f4 <_Z19fibonacci_iterativei+0x60>
    622c:	fec42783          	lw	a5,-20(s0)
    6230:	00078513          	mv	a0,a5
    6234:	02c12403          	lw	s0,44(sp)
    6238:	03010113          	add	sp,sp,48
    623c:	00008067          	ret

00006240 <_Z19fibonacci_recursivei>:
    6240:	fe010113          	add	sp,sp,-32
    6244:	00112e23          	sw	ra,28(sp)
    6248:	00812c23          	sw	s0,24(sp)
    624c:	00912a23          	sw	s1,20(sp)
    6250:	02010413          	add	s0,sp,32
    6254:	fea42623          	sw	a0,-20(s0)
    6258:	fec42703          	lw	a4,-20(s0)
    625c:	00100793          	li	a5,1
    6260:	00e7c663          	blt	a5,a4,626c <_Z19fibonacci_recursivei+0x2c>
    6264:	fec42783          	lw	a5,-20(s0)
    6268:	0300006f          	j	6298 <_Z19fibonacci_recursivei+0x58>
    626c:	fec42783          	lw	a5,-20(s0)
    6270:	fff78793          	add	a5,a5,-1
    6274:	00078513          	mv	a0,a5
    6278:	fc9ff0ef          	jal	6240 <_Z19fibonacci_recursivei>
    627c:	00050493          	mv	s1,a0
    6280:	fec42783          	lw	a5,-20(s0)
    6284:	ffe78793          	add	a5,a5,-2
    6288:	00078513          	mv	a0,a5
    628c:	fb5ff0ef          	jal	6240 <_Z19fibonacci_recursivei>
    6290:	00050793          	mv	a5,a0
    6294:	00f487b3          	add	a5,s1,a5
    6298:	00078513          	mv	a0,a5
    629c:	01c12083          	lw	ra,28(sp)
    62a0:	01812403          	lw	s0,24(sp)
    62a4:	01412483          	lw	s1,20(sp)
    62a8:	02010113          	add	sp,sp,32
    62ac:	00008067          	ret

Disassembly of section .spi_uart:

00006400 <_Z9uart_getcb-0x2000>:
	...

00008400 <_Z9uart_getcb>:
    8400:	fd010113          	add	sp,sp,-48
    8404:	02812623          	sw	s0,44(sp)
    8408:	03010413          	add	s0,sp,48
    840c:	00050793          	mv	a5,a0
    8410:	fcf40fa3          	sb	a5,-33(s0)
    8414:	fe0407a3          	sb	zero,-17(s0)
    8418:	002017b7          	lui	a5,0x201
    841c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    8420:	0007c783          	lbu	a5,0(a5)
    8424:	fef407a3          	sb	a5,-17(s0)
    8428:	0340006f          	j	845c <_Z9uart_getcb+0x5c>
    842c:	002017b7          	lui	a5,0x201
    8430:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    8434:	0007c783          	lbu	a5,0(a5)
    8438:	fef40723          	sb	a5,-18(s0)
    843c:	fee44783          	lbu	a5,-18(s0)
    8440:	0027f793          	and	a5,a5,2
    8444:	00078c63          	beqz	a5,845c <_Z9uart_getcb+0x5c>
    8448:	002017b7          	lui	a5,0x201
    844c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    8450:	0007c783          	lbu	a5,0(a5)
    8454:	fef407a3          	sb	a5,-17(s0)
    8458:	00c0006f          	j	8464 <_Z9uart_getcb+0x64>
    845c:	fdf44783          	lbu	a5,-33(s0)
    8460:	fc0796e3          	bnez	a5,842c <_Z9uart_getcb+0x2c>
    8464:	fef44783          	lbu	a5,-17(s0)
    8468:	00078513          	mv	a0,a5
    846c:	02c12403          	lw	s0,44(sp)
    8470:	03010113          	add	sp,sp,48
    8474:	00008067          	ret

00008478 <_Z9uart_putcc>:
    8478:	fd010113          	add	sp,sp,-48
    847c:	02812623          	sw	s0,44(sp)
    8480:	03010413          	add	s0,sp,48
    8484:	00050793          	mv	a5,a0
    8488:	fcf40fa3          	sb	a5,-33(s0)
    848c:	002017b7          	lui	a5,0x201
    8490:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    8494:	0007c783          	lbu	a5,0(a5)
    8498:	fef407a3          	sb	a5,-17(s0)
    849c:	002017b7          	lui	a5,0x201
    84a0:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    84a4:	0007c783          	lbu	a5,0(a5)
    84a8:	fef40723          	sb	a5,-18(s0)
    84ac:	fee44783          	lbu	a5,-18(s0)
    84b0:	0017f793          	and	a5,a5,1
    84b4:	fe0784e3          	beqz	a5,849c <_Z9uart_putcc+0x24>
    84b8:	002017b7          	lui	a5,0x201
    84bc:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    84c0:	fdf44703          	lbu	a4,-33(s0)
    84c4:	00e78023          	sb	a4,0(a5)
    84c8:	00000013          	nop
    84cc:	00000013          	nop
    84d0:	02c12403          	lw	s0,44(sp)
    84d4:	03010113          	add	sp,sp,48
    84d8:	00008067          	ret

000084dc <_Z10uart_printPKc>:
    84dc:	fd010113          	add	sp,sp,-48
    84e0:	02112623          	sw	ra,44(sp)
    84e4:	02812423          	sw	s0,40(sp)
    84e8:	03010413          	add	s0,sp,48
    84ec:	fca42e23          	sw	a0,-36(s0)
    84f0:	fe042623          	sw	zero,-20(s0)
    84f4:	0400006f          	j	8534 <_Z10uart_printPKc+0x58>
    84f8:	fec42783          	lw	a5,-20(s0)
    84fc:	fdc42703          	lw	a4,-36(s0)
    8500:	00f707b3          	add	a5,a4,a5
    8504:	0007c783          	lbu	a5,0(a5)
    8508:	02078e63          	beqz	a5,8544 <_Z10uart_printPKc+0x68>
    850c:	fec42783          	lw	a5,-20(s0)
    8510:	fdc42703          	lw	a4,-36(s0)
    8514:	00f707b3          	add	a5,a4,a5
    8518:	0007c783          	lbu	a5,0(a5)
    851c:	00078513          	mv	a0,a5
    8520:	f59ff0ef          	jal	8478 <_Z9uart_putcc>
    8524:	00000013          	nop
    8528:	fec42783          	lw	a5,-20(s0)
    852c:	00178793          	add	a5,a5,1
    8530:	fef42623          	sw	a5,-20(s0)
    8534:	fec42703          	lw	a4,-20(s0)
    8538:	07f00793          	li	a5,127
    853c:	fae7dee3          	bge	a5,a4,84f8 <_Z10uart_printPKc+0x1c>
    8540:	0080006f          	j	8548 <_Z10uart_printPKc+0x6c>
    8544:	00000013          	nop
    8548:	00000013          	nop
    854c:	02c12083          	lw	ra,44(sp)
    8550:	02812403          	lw	s0,40(sp)
    8554:	03010113          	add	sp,sp,48
    8558:	00008067          	ret

0000855c <_Z11dump_resultx>:
    855c:	fc010113          	add	sp,sp,-64
    8560:	02112e23          	sw	ra,60(sp)
    8564:	02812c23          	sw	s0,56(sp)
    8568:	04010413          	add	s0,sp,64
    856c:	fca42423          	sw	a0,-56(s0)
    8570:	fcb42623          	sw	a1,-52(s0)
    8574:	fe042623          	sw	zero,-20(s0)
    8578:	0700006f          	j	85e8 <_Z11dump_resultx+0x8c>
    857c:	fec42683          	lw	a3,-20(s0)
    8580:	00369693          	sll	a3,a3,0x3
    8584:	fe068613          	add	a2,a3,-32
    8588:	00064c63          	bltz	a2,85a0 <_Z11dump_resultx+0x44>
    858c:	fcc42683          	lw	a3,-52(s0)
    8590:	40c6d733          	sra	a4,a3,a2
    8594:	fcc42683          	lw	a3,-52(s0)
    8598:	41f6d793          	sra	a5,a3,0x1f
    859c:	02c0006f          	j	85c8 <_Z11dump_resultx+0x6c>
    85a0:	fcc42603          	lw	a2,-52(s0)
    85a4:	00161593          	sll	a1,a2,0x1
    85a8:	01f00613          	li	a2,31
    85ac:	40d60633          	sub	a2,a2,a3
    85b0:	00c59633          	sll	a2,a1,a2
    85b4:	fc842583          	lw	a1,-56(s0)
    85b8:	00d5d733          	srl	a4,a1,a3
    85bc:	00e66733          	or	a4,a2,a4
    85c0:	fcc42603          	lw	a2,-52(s0)
    85c4:	40d657b3          	sra	a5,a2,a3
    85c8:	0ff77613          	zext.b	a2,a4
    85cc:	fec42683          	lw	a3,-20(s0)
    85d0:	ff068693          	add	a3,a3,-16
    85d4:	008686b3          	add	a3,a3,s0
    85d8:	fec68423          	sb	a2,-24(a3)
    85dc:	fec42683          	lw	a3,-20(s0)
    85e0:	00168693          	add	a3,a3,1
    85e4:	fed42623          	sw	a3,-20(s0)
    85e8:	fec42603          	lw	a2,-20(s0)
    85ec:	00700693          	li	a3,7
    85f0:	f8c6d6e3          	bge	a3,a2,857c <_Z11dump_resultx+0x20>
    85f4:	00800793          	li	a5,8
    85f8:	fef42423          	sw	a5,-24(s0)
    85fc:	0100006f          	j	860c <_Z11dump_resultx+0xb0>
    8600:	fe842783          	lw	a5,-24(s0)
    8604:	fff78793          	add	a5,a5,-1
    8608:	fef42423          	sw	a5,-24(s0)
    860c:	fe842703          	lw	a4,-24(s0)
    8610:	00100793          	li	a5,1
    8614:	00e7de63          	bge	a5,a4,8630 <_Z11dump_resultx+0xd4>
    8618:	fe842783          	lw	a5,-24(s0)
    861c:	fff78793          	add	a5,a5,-1
    8620:	ff078793          	add	a5,a5,-16
    8624:	008787b3          	add	a5,a5,s0
    8628:	fe87c783          	lbu	a5,-24(a5)
    862c:	fc078ae3          	beqz	a5,8600 <_Z11dump_resultx+0xa4>
    8630:	04400513          	li	a0,68
    8634:	e45ff0ef          	jal	8478 <_Z9uart_putcc>
    8638:	fe842783          	lw	a5,-24(s0)
    863c:	0ff7f793          	zext.b	a5,a5
    8640:	00078513          	mv	a0,a5
    8644:	e35ff0ef          	jal	8478 <_Z9uart_putcc>
    8648:	fe042223          	sw	zero,-28(s0)
    864c:	02c0006f          	j	8678 <_Z11dump_resultx+0x11c>
    8650:	fe442783          	lw	a5,-28(s0)
    8654:	ff078793          	add	a5,a5,-16
    8658:	008787b3          	add	a5,a5,s0
    865c:	fe87c783          	lbu	a5,-24(a5)
    8660:	00078513          	mv	a0,a5
    8664:	e15ff0ef          	jal	8478 <_Z9uart_putcc>
    8668:	00000013          	nop
    866c:	fe442783          	lw	a5,-28(s0)
    8670:	00178793          	add	a5,a5,1
    8674:	fef42223          	sw	a5,-28(s0)
    8678:	fe442703          	lw	a4,-28(s0)
    867c:	fe842783          	lw	a5,-24(s0)
    8680:	fcf748e3          	blt	a4,a5,8650 <_Z11dump_resultx+0xf4>
    8684:	00000013          	nop
    8688:	00000013          	nop
    868c:	03c12083          	lw	ra,60(sp)
    8690:	03812403          	lw	s0,56(sp)
    8694:	04010113          	add	sp,sp,64
    8698:	00008067          	ret

0000869c <_Z11dump_bufferPKci>:
    869c:	fd010113          	add	sp,sp,-48
    86a0:	02112623          	sw	ra,44(sp)
    86a4:	02812423          	sw	s0,40(sp)
    86a8:	03212223          	sw	s2,36(sp)
    86ac:	03312023          	sw	s3,32(sp)
    86b0:	03010413          	add	s0,sp,48
    86b4:	fca42e23          	sw	a0,-36(s0)
    86b8:	fcb42c23          	sw	a1,-40(s0)
    86bc:	fdc42783          	lw	a5,-36(s0)
    86c0:	fef42623          	sw	a5,-20(s0)
    86c4:	fe042423          	sw	zero,-24(s0)
    86c8:	0440006f          	j	870c <_Z11dump_bufferPKci+0x70>
    86cc:	fec42783          	lw	a5,-20(s0)
    86d0:	0007c783          	lbu	a5,0(a5)
    86d4:	fef403a3          	sb	a5,-25(s0)
    86d8:	fe744783          	lbu	a5,-25(s0)
    86dc:	0ff7f793          	zext.b	a5,a5
    86e0:	00078913          	mv	s2,a5
    86e4:	00000993          	li	s3,0
    86e8:	00090513          	mv	a0,s2
    86ec:	00098593          	mv	a1,s3
    86f0:	e6dff0ef          	jal	855c <_Z11dump_resultx>
    86f4:	fec42783          	lw	a5,-20(s0)
    86f8:	00178793          	add	a5,a5,1
    86fc:	fef42623          	sw	a5,-20(s0)
    8700:	fe842783          	lw	a5,-24(s0)
    8704:	00178793          	add	a5,a5,1
    8708:	fef42423          	sw	a5,-24(s0)
    870c:	fe842703          	lw	a4,-24(s0)
    8710:	fd842783          	lw	a5,-40(s0)
    8714:	faf74ce3          	blt	a4,a5,86cc <_Z11dump_bufferPKci+0x30>
    8718:	00000013          	nop
    871c:	00000013          	nop
    8720:	02c12083          	lw	ra,44(sp)
    8724:	02812403          	lw	s0,40(sp)
    8728:	02412903          	lw	s2,36(sp)
    872c:	02012983          	lw	s3,32(sp)
    8730:	03010113          	add	sp,sp,48
    8734:	00008067          	ret

00008738 <_Z16uart_print_int32i>:
    8738:	fc010113          	add	sp,sp,-64
    873c:	02112e23          	sw	ra,60(sp)
    8740:	02812c23          	sw	s0,56(sp)
    8744:	04010413          	add	s0,sp,64
    8748:	fca42623          	sw	a0,-52(s0)
    874c:	fe042623          	sw	zero,-20(s0)
    8750:	fe0405a3          	sb	zero,-21(s0)
    8754:	fcc42783          	lw	a5,-52(s0)
    8758:	0007dc63          	bgez	a5,8770 <_Z16uart_print_int32i+0x38>
    875c:	00100793          	li	a5,1
    8760:	fef405a3          	sb	a5,-21(s0)
    8764:	fcc42783          	lw	a5,-52(s0)
    8768:	40f007b3          	neg	a5,a5
    876c:	fcf42623          	sw	a5,-52(s0)
    8770:	fcc42783          	lw	a5,-52(s0)
    8774:	06079463          	bnez	a5,87dc <_Z16uart_print_int32i+0xa4>
    8778:	03000513          	li	a0,48
    877c:	cfdff0ef          	jal	8478 <_Z9uart_putcc>
    8780:	0c00006f          	j	8840 <_Z16uart_print_int32i+0x108>
    8784:	fcc42783          	lw	a5,-52(s0)
    8788:	00a00593          	li	a1,10
    878c:	00078513          	mv	a0,a5
    8790:	9e4f90ef          	jal	1974 <__modsi3>
    8794:	00050793          	mv	a5,a0
    8798:	fef42223          	sw	a5,-28(s0)
    879c:	fe442783          	lw	a5,-28(s0)
    87a0:	0ff7f793          	zext.b	a5,a5
    87a4:	03078793          	add	a5,a5,48
    87a8:	0ff7f713          	zext.b	a4,a5
    87ac:	fec42783          	lw	a5,-20(s0)
    87b0:	00178693          	add	a3,a5,1
    87b4:	fed42623          	sw	a3,-20(s0)
    87b8:	ff078793          	add	a5,a5,-16
    87bc:	008787b3          	add	a5,a5,s0
    87c0:	fee78423          	sb	a4,-24(a5)
    87c4:	fcc42783          	lw	a5,-52(s0)
    87c8:	00a00593          	li	a1,10
    87cc:	00078513          	mv	a0,a5
    87d0:	920f90ef          	jal	18f0 <__divsi3>
    87d4:	00050793          	mv	a5,a0
    87d8:	fcf42623          	sw	a5,-52(s0)
    87dc:	fcc42783          	lw	a5,-52(s0)
    87e0:	faf042e3          	bgtz	a5,8784 <_Z16uart_print_int32i+0x4c>
    87e4:	feb44783          	lbu	a5,-21(s0)
    87e8:	04078063          	beqz	a5,8828 <_Z16uart_print_int32i+0xf0>
    87ec:	fec42783          	lw	a5,-20(s0)
    87f0:	00178713          	add	a4,a5,1
    87f4:	fee42623          	sw	a4,-20(s0)
    87f8:	ff078793          	add	a5,a5,-16
    87fc:	008787b3          	add	a5,a5,s0
    8800:	02d00713          	li	a4,45
    8804:	fee78423          	sb	a4,-24(a5)
    8808:	0200006f          	j	8828 <_Z16uart_print_int32i+0xf0>
    880c:	fec42783          	lw	a5,-20(s0)
    8810:	ff078793          	add	a5,a5,-16
    8814:	008787b3          	add	a5,a5,s0
    8818:	fe87c783          	lbu	a5,-24(a5)
    881c:	00078513          	mv	a0,a5
    8820:	c59ff0ef          	jal	8478 <_Z9uart_putcc>
    8824:	00000013          	nop
    8828:	fec42783          	lw	a5,-20(s0)
    882c:	fff78713          	add	a4,a5,-1
    8830:	fee42623          	sw	a4,-20(s0)
    8834:	00f037b3          	snez	a5,a5
    8838:	0ff7f793          	zext.b	a5,a5
    883c:	fc0798e3          	bnez	a5,880c <_Z16uart_print_int32i+0xd4>
    8840:	03c12083          	lw	ra,60(sp)
    8844:	03812403          	lw	s0,56(sp)
    8848:	04010113          	add	sp,sp,64
    884c:	00008067          	ret

00008850 <_Z16uart_print_int64x>:
    8850:	fb010113          	add	sp,sp,-80
    8854:	04112623          	sw	ra,76(sp)
    8858:	04812423          	sw	s0,72(sp)
    885c:	05010413          	add	s0,sp,80
    8860:	faa42c23          	sw	a0,-72(s0)
    8864:	fab42e23          	sw	a1,-68(s0)
    8868:	fe042623          	sw	zero,-20(s0)
    886c:	fe0405a3          	sb	zero,-21(s0)
    8870:	fbc42783          	lw	a5,-68(s0)
    8874:	0207de63          	bgez	a5,88b0 <_Z16uart_print_int64x+0x60>
    8878:	00100793          	li	a5,1
    887c:	fef405a3          	sb	a5,-21(s0)
    8880:	00000613          	li	a2,0
    8884:	00000693          	li	a3,0
    8888:	fb842503          	lw	a0,-72(s0)
    888c:	fbc42583          	lw	a1,-68(s0)
    8890:	40a60733          	sub	a4,a2,a0
    8894:	00070813          	mv	a6,a4
    8898:	01063833          	sltu	a6,a2,a6
    889c:	40b687b3          	sub	a5,a3,a1
    88a0:	410786b3          	sub	a3,a5,a6
    88a4:	00068793          	mv	a5,a3
    88a8:	fae42c23          	sw	a4,-72(s0)
    88ac:	faf42e23          	sw	a5,-68(s0)
    88b0:	fb842783          	lw	a5,-72(s0)
    88b4:	fbc42703          	lw	a4,-68(s0)
    88b8:	00e7e7b3          	or	a5,a5,a4
    88bc:	08079663          	bnez	a5,8948 <_Z16uart_print_int64x+0xf8>
    88c0:	03000513          	li	a0,48
    88c4:	bb5ff0ef          	jal	8478 <_Z9uart_putcc>
    88c8:	0f40006f          	j	89bc <_Z16uart_print_int64x+0x16c>
    88cc:	fb842703          	lw	a4,-72(s0)
    88d0:	fbc42783          	lw	a5,-68(s0)
    88d4:	00a00613          	li	a2,10
    88d8:	00000693          	li	a3,0
    88dc:	00070513          	mv	a0,a4
    88e0:	00078593          	mv	a1,a5
    88e4:	ad1f80ef          	jal	13b4 <__moddi3>
    88e8:	00050713          	mv	a4,a0
    88ec:	00058793          	mv	a5,a1
    88f0:	fee42223          	sw	a4,-28(s0)
    88f4:	fe442783          	lw	a5,-28(s0)
    88f8:	0ff7f793          	zext.b	a5,a5
    88fc:	03078793          	add	a5,a5,48
    8900:	0ff7f713          	zext.b	a4,a5
    8904:	fec42783          	lw	a5,-20(s0)
    8908:	00178693          	add	a3,a5,1
    890c:	fed42623          	sw	a3,-20(s0)
    8910:	ff078793          	add	a5,a5,-16
    8914:	008787b3          	add	a5,a5,s0
    8918:	fce78e23          	sb	a4,-36(a5)
    891c:	fb842703          	lw	a4,-72(s0)
    8920:	fbc42783          	lw	a5,-68(s0)
    8924:	00a00613          	li	a2,10
    8928:	00000693          	li	a3,0
    892c:	00070513          	mv	a0,a4
    8930:	00078593          	mv	a1,a5
    8934:	c64f80ef          	jal	d98 <__divdi3>
    8938:	00050713          	mv	a4,a0
    893c:	00058793          	mv	a5,a1
    8940:	fae42c23          	sw	a4,-72(s0)
    8944:	faf42e23          	sw	a5,-68(s0)
    8948:	fbc42783          	lw	a5,-68(s0)
    894c:	f8f040e3          	bgtz	a5,88cc <_Z16uart_print_int64x+0x7c>
    8950:	fbc42783          	lw	a5,-68(s0)
    8954:	00079663          	bnez	a5,8960 <_Z16uart_print_int64x+0x110>
    8958:	fb842783          	lw	a5,-72(s0)
    895c:	f60798e3          	bnez	a5,88cc <_Z16uart_print_int64x+0x7c>
    8960:	feb44783          	lbu	a5,-21(s0)
    8964:	04078063          	beqz	a5,89a4 <_Z16uart_print_int64x+0x154>
    8968:	fec42783          	lw	a5,-20(s0)
    896c:	00178713          	add	a4,a5,1
    8970:	fee42623          	sw	a4,-20(s0)
    8974:	ff078793          	add	a5,a5,-16
    8978:	008787b3          	add	a5,a5,s0
    897c:	02d00713          	li	a4,45
    8980:	fce78e23          	sb	a4,-36(a5)
    8984:	0200006f          	j	89a4 <_Z16uart_print_int64x+0x154>
    8988:	fec42783          	lw	a5,-20(s0)
    898c:	ff078793          	add	a5,a5,-16
    8990:	008787b3          	add	a5,a5,s0
    8994:	fdc7c783          	lbu	a5,-36(a5)
    8998:	00078513          	mv	a0,a5
    899c:	addff0ef          	jal	8478 <_Z9uart_putcc>
    89a0:	00000013          	nop
    89a4:	fec42783          	lw	a5,-20(s0)
    89a8:	fff78713          	add	a4,a5,-1
    89ac:	fee42623          	sw	a4,-20(s0)
    89b0:	00f037b3          	snez	a5,a5
    89b4:	0ff7f793          	zext.b	a5,a5
    89b8:	fc0798e3          	bnez	a5,8988 <_Z16uart_print_int64x+0x138>
    89bc:	04c12083          	lw	ra,76(sp)
    89c0:	04812403          	lw	s0,72(sp)
    89c4:	05010113          	add	sp,sp,80
    89c8:	00008067          	ret

000089cc <_Z12uart_getlinePci>:
    89cc:	fd010113          	add	sp,sp,-48
    89d0:	02112623          	sw	ra,44(sp)
    89d4:	02812423          	sw	s0,40(sp)
    89d8:	03010413          	add	s0,sp,48
    89dc:	fca42e23          	sw	a0,-36(s0)
    89e0:	fcb42c23          	sw	a1,-40(s0)
    89e4:	fe0405a3          	sb	zero,-21(s0)
    89e8:	fe042623          	sw	zero,-20(s0)
    89ec:	00100513          	li	a0,1
    89f0:	a11ff0ef          	jal	8400 <_Z9uart_getcb>
    89f4:	00050793          	mv	a5,a0
    89f8:	fef405a3          	sb	a5,-21(s0)
    89fc:	feb44703          	lbu	a4,-21(s0)
    8a00:	00a00793          	li	a5,10
    8a04:	00f70863          	beq	a4,a5,8a14 <_Z12uart_getlinePci+0x48>
    8a08:	feb44703          	lbu	a4,-21(s0)
    8a0c:	00d00793          	li	a5,13
    8a10:	02f71463          	bne	a4,a5,8a38 <_Z12uart_getlinePci+0x6c>
    8a14:	fec42783          	lw	a5,-20(s0)
    8a18:	fdc42703          	lw	a4,-36(s0)
    8a1c:	00f707b3          	add	a5,a4,a5
    8a20:	00078023          	sb	zero,0(a5)
    8a24:	000307b7          	lui	a5,0x30
    8a28:	38878513          	add	a0,a5,904 # 30388 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275ec>
    8a2c:	ab1ff0ef          	jal	84dc <_Z10uart_printPKc>
    8a30:	fe042623          	sw	zero,-20(s0)
    8a34:	0c80006f          	j	8afc <_Z12uart_getlinePci+0x130>
    8a38:	feb44703          	lbu	a4,-21(s0)
    8a3c:	00800793          	li	a5,8
    8a40:	00f70863          	beq	a4,a5,8a50 <_Z12uart_getlinePci+0x84>
    8a44:	feb44703          	lbu	a4,-21(s0)
    8a48:	07f00793          	li	a5,127
    8a4c:	02f71863          	bne	a4,a5,8a7c <_Z12uart_getlinePci+0xb0>
    8a50:	fec42783          	lw	a5,-20(s0)
    8a54:	02f05063          	blez	a5,8a74 <_Z12uart_getlinePci+0xa8>
    8a58:	fec42783          	lw	a5,-20(s0)
    8a5c:	fff78793          	add	a5,a5,-1
    8a60:	fef42623          	sw	a5,-20(s0)
    8a64:	000307b7          	lui	a5,0x30
    8a68:	39078513          	add	a0,a5,912 # 30390 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275f4>
    8a6c:	a71ff0ef          	jal	84dc <_Z10uart_printPKc>
    8a70:	0880006f          	j	8af8 <_Z12uart_getlinePci+0x12c>
    8a74:	fe042623          	sw	zero,-20(s0)
    8a78:	0800006f          	j	8af8 <_Z12uart_getlinePci+0x12c>
    8a7c:	fd842783          	lw	a5,-40(s0)
    8a80:	fff78793          	add	a5,a5,-1
    8a84:	fec42703          	lw	a4,-20(s0)
    8a88:	f6f752e3          	bge	a4,a5,89ec <_Z12uart_getlinePci+0x20>
    8a8c:	feb44783          	lbu	a5,-21(s0)
    8a90:	02078a63          	beqz	a5,8ac4 <_Z12uart_getlinePci+0xf8>
    8a94:	feb44703          	lbu	a4,-21(s0)
    8a98:	fdc42683          	lw	a3,-36(s0)
    8a9c:	fec42783          	lw	a5,-20(s0)
    8aa0:	00178613          	add	a2,a5,1
    8aa4:	fec42623          	sw	a2,-20(s0)
    8aa8:	00f687b3          	add	a5,a3,a5
    8aac:	00e78023          	sb	a4,0(a5)
    8ab0:	feb44783          	lbu	a5,-21(s0)
    8ab4:	00078513          	mv	a0,a5
    8ab8:	9c1ff0ef          	jal	8478 <_Z9uart_putcc>
    8abc:	00000013          	nop
    8ac0:	f2dff06f          	j	89ec <_Z12uart_getlinePci+0x20>
    8ac4:	fd842783          	lw	a5,-40(s0)
    8ac8:	fff78793          	add	a5,a5,-1
    8acc:	fdc42703          	lw	a4,-36(s0)
    8ad0:	00f707b3          	add	a5,a4,a5
    8ad4:	00078023          	sb	zero,0(a5)
    8ad8:	000307b7          	lui	a5,0x30
    8adc:	39478513          	add	a0,a5,916 # 30394 <_Z17cmd_arg_tokenizerPcS_S_ii+0x275f8>
    8ae0:	9fdff0ef          	jal	84dc <_Z10uart_printPKc>
    8ae4:	fd842583          	lw	a1,-40(s0)
    8ae8:	fdc42503          	lw	a0,-36(s0)
    8aec:	bb1ff0ef          	jal	869c <_Z11dump_bufferPKci>
    8af0:	fe042623          	sw	zero,-20(s0)
    8af4:	0080006f          	j	8afc <_Z12uart_getlinePci+0x130>
    8af8:	ef5ff06f          	j	89ec <_Z12uart_getlinePci+0x20>
    8afc:	00000013          	nop
    8b00:	02c12083          	lw	ra,44(sp)
    8b04:	02812403          	lw	s0,40(sp)
    8b08:	03010113          	add	sp,sp,48
    8b0c:	00008067          	ret

00008b10 <_Z6strcmpPKcS0_>:
    8b10:	fd010113          	add	sp,sp,-48
    8b14:	02812623          	sw	s0,44(sp)
    8b18:	03010413          	add	s0,sp,48
    8b1c:	fca42e23          	sw	a0,-36(s0)
    8b20:	fcb42c23          	sw	a1,-40(s0)
    8b24:	fe042623          	sw	zero,-20(s0)
    8b28:	fec42783          	lw	a5,-20(s0)
    8b2c:	fdc42703          	lw	a4,-36(s0)
    8b30:	00f707b3          	add	a5,a4,a5
    8b34:	0007c703          	lbu	a4,0(a5)
    8b38:	fec42783          	lw	a5,-20(s0)
    8b3c:	fd842683          	lw	a3,-40(s0)
    8b40:	00f687b3          	add	a5,a3,a5
    8b44:	0007c783          	lbu	a5,0(a5)
    8b48:	02f70863          	beq	a4,a5,8b78 <_Z6strcmpPKcS0_+0x68>
    8b4c:	fec42783          	lw	a5,-20(s0)
    8b50:	fdc42703          	lw	a4,-36(s0)
    8b54:	00f707b3          	add	a5,a4,a5
    8b58:	0007c783          	lbu	a5,0(a5)
    8b5c:	00078693          	mv	a3,a5
    8b60:	fec42783          	lw	a5,-20(s0)
    8b64:	fd842703          	lw	a4,-40(s0)
    8b68:	00f707b3          	add	a5,a4,a5
    8b6c:	0007c783          	lbu	a5,0(a5)
    8b70:	40f687b3          	sub	a5,a3,a5
    8b74:	0300006f          	j	8ba4 <_Z6strcmpPKcS0_+0x94>
    8b78:	fec42783          	lw	a5,-20(s0)
    8b7c:	fdc42703          	lw	a4,-36(s0)
    8b80:	00f707b3          	add	a5,a4,a5
    8b84:	0007c783          	lbu	a5,0(a5)
    8b88:	00079663          	bnez	a5,8b94 <_Z6strcmpPKcS0_+0x84>
    8b8c:	00000793          	li	a5,0
    8b90:	0140006f          	j	8ba4 <_Z6strcmpPKcS0_+0x94>
    8b94:	fec42783          	lw	a5,-20(s0)
    8b98:	00178793          	add	a5,a5,1
    8b9c:	fef42623          	sw	a5,-20(s0)
    8ba0:	f89ff06f          	j	8b28 <_Z6strcmpPKcS0_+0x18>
    8ba4:	00078513          	mv	a0,a5
    8ba8:	02c12403          	lw	s0,44(sp)
    8bac:	03010113          	add	sp,sp,48
    8bb0:	00008067          	ret

00008bb4 <_Z7strncmpPKcS0_i>:
    8bb4:	fd010113          	add	sp,sp,-48
    8bb8:	02812623          	sw	s0,44(sp)
    8bbc:	03010413          	add	s0,sp,48
    8bc0:	fca42e23          	sw	a0,-36(s0)
    8bc4:	fcb42c23          	sw	a1,-40(s0)
    8bc8:	fcc42a23          	sw	a2,-44(s0)
    8bcc:	fe042623          	sw	zero,-20(s0)
    8bd0:	07c0006f          	j	8c4c <_Z7strncmpPKcS0_i+0x98>
    8bd4:	fec42783          	lw	a5,-20(s0)
    8bd8:	fdc42703          	lw	a4,-36(s0)
    8bdc:	00f707b3          	add	a5,a4,a5
    8be0:	0007c703          	lbu	a4,0(a5)
    8be4:	fec42783          	lw	a5,-20(s0)
    8be8:	fd842683          	lw	a3,-40(s0)
    8bec:	00f687b3          	add	a5,a3,a5
    8bf0:	0007c783          	lbu	a5,0(a5)
    8bf4:	02f70863          	beq	a4,a5,8c24 <_Z7strncmpPKcS0_i+0x70>
    8bf8:	fec42783          	lw	a5,-20(s0)
    8bfc:	fdc42703          	lw	a4,-36(s0)
    8c00:	00f707b3          	add	a5,a4,a5
    8c04:	0007c783          	lbu	a5,0(a5)
    8c08:	00078693          	mv	a3,a5
    8c0c:	fec42783          	lw	a5,-20(s0)
    8c10:	fd842703          	lw	a4,-40(s0)
    8c14:	00f707b3          	add	a5,a4,a5
    8c18:	0007c783          	lbu	a5,0(a5)
    8c1c:	40f687b3          	sub	a5,a3,a5
    8c20:	03c0006f          	j	8c5c <_Z7strncmpPKcS0_i+0xa8>
    8c24:	fec42783          	lw	a5,-20(s0)
    8c28:	fdc42703          	lw	a4,-36(s0)
    8c2c:	00f707b3          	add	a5,a4,a5
    8c30:	0007c783          	lbu	a5,0(a5)
    8c34:	00079663          	bnez	a5,8c40 <_Z7strncmpPKcS0_i+0x8c>
    8c38:	00000793          	li	a5,0
    8c3c:	0200006f          	j	8c5c <_Z7strncmpPKcS0_i+0xa8>
    8c40:	fec42783          	lw	a5,-20(s0)
    8c44:	00178793          	add	a5,a5,1
    8c48:	fef42623          	sw	a5,-20(s0)
    8c4c:	fec42703          	lw	a4,-20(s0)
    8c50:	fd442783          	lw	a5,-44(s0)
    8c54:	f8f740e3          	blt	a4,a5,8bd4 <_Z7strncmpPKcS0_i+0x20>
    8c58:	00000793          	li	a5,0
    8c5c:	00078513          	mv	a0,a5
    8c60:	02c12403          	lw	s0,44(sp)
    8c64:	03010113          	add	sp,sp,48
    8c68:	00008067          	ret

00008c6c <_Z15process_commandPcS_PVb>:
    8c6c:	fe010113          	add	sp,sp,-32
    8c70:	00112e23          	sw	ra,28(sp)
    8c74:	00812c23          	sw	s0,24(sp)
    8c78:	02010413          	add	s0,sp,32
    8c7c:	fea42623          	sw	a0,-20(s0)
    8c80:	feb42423          	sw	a1,-24(s0)
    8c84:	fec42223          	sw	a2,-28(s0)
    8c88:	fec42783          	lw	a5,-20(s0)
    8c8c:	0007c783          	lbu	a5,0(a5)
    8c90:	0e078c63          	beqz	a5,8d88 <_Z15process_commandPcS_PVb+0x11c>
    8c94:	000307b7          	lui	a5,0x30
    8c98:	3a878593          	add	a1,a5,936 # 303a8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2760c>
    8c9c:	fec42503          	lw	a0,-20(s0)
    8ca0:	e71ff0ef          	jal	8b10 <_Z6strcmpPKcS0_>
    8ca4:	00050793          	mv	a5,a0
    8ca8:	0017b793          	seqz	a5,a5
    8cac:	0ff7f793          	zext.b	a5,a5
    8cb0:	00078863          	beqz	a5,8cc0 <_Z15process_commandPcS_PVb+0x54>
    8cb4:	fe842503          	lw	a0,-24(s0)
    8cb8:	f49fc0ef          	jal	5c00 <_Z8cmd_echoPc>
    8cbc:	0d00006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8cc0:	000307b7          	lui	a5,0x30
    8cc4:	3b078593          	add	a1,a5,944 # 303b0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27614>
    8cc8:	fec42503          	lw	a0,-20(s0)
    8ccc:	e45ff0ef          	jal	8b10 <_Z6strcmpPKcS0_>
    8cd0:	00050793          	mv	a5,a0
    8cd4:	0017b793          	seqz	a5,a5
    8cd8:	0ff7f793          	zext.b	a5,a5
    8cdc:	00078863          	beqz	a5,8cec <_Z15process_commandPcS_PVb+0x80>
    8ce0:	fe842503          	lw	a0,-24(s0)
    8ce4:	f59fc0ef          	jal	5c3c <_Z8cmd_helpPc>
    8ce8:	0a40006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8cec:	000307b7          	lui	a5,0x30
    8cf0:	3b878593          	add	a1,a5,952 # 303b8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2761c>
    8cf4:	fec42503          	lw	a0,-20(s0)
    8cf8:	e19ff0ef          	jal	8b10 <_Z6strcmpPKcS0_>
    8cfc:	00050793          	mv	a5,a0
    8d00:	0017b793          	seqz	a5,a5
    8d04:	0ff7f793          	zext.b	a5,a5
    8d08:	00078663          	beqz	a5,8d14 <_Z15process_commandPcS_PVb+0xa8>
    8d0c:	814fd0ef          	jal	5d20 <_Z8cmd_freev>
    8d10:	07c0006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8d14:	000307b7          	lui	a5,0x30
    8d18:	3c078593          	add	a1,a5,960 # 303c0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27624>
    8d1c:	fec42503          	lw	a0,-20(s0)
    8d20:	df1ff0ef          	jal	8b10 <_Z6strcmpPKcS0_>
    8d24:	00050793          	mv	a5,a0
    8d28:	0017b793          	seqz	a5,a5
    8d2c:	0ff7f793          	zext.b	a5,a5
    8d30:	00078663          	beqz	a5,8d3c <_Z15process_commandPcS_PVb+0xd0>
    8d34:	a80fd0ef          	jal	5fb4 <_Z21cmd_matrix_multiplierv>
    8d38:	0540006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8d3c:	000307b7          	lui	a5,0x30
    8d40:	3c878593          	add	a1,a5,968 # 303c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2762c>
    8d44:	fec42503          	lw	a0,-20(s0)
    8d48:	dc9ff0ef          	jal	8b10 <_Z6strcmpPKcS0_>
    8d4c:	00050793          	mv	a5,a0
    8d50:	0017b793          	seqz	a5,a5
    8d54:	0ff7f793          	zext.b	a5,a5
    8d58:	00078a63          	beqz	a5,8d6c <_Z15process_commandPcS_PVb+0x100>
    8d5c:	fe442583          	lw	a1,-28(s0)
    8d60:	fe842503          	lw	a0,-24(s0)
    8d64:	f55fc0ef          	jal	5cb8 <_Z8cmd_exitPcPVb>
    8d68:	0240006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8d6c:	000307b7          	lui	a5,0x30
    8d70:	3d078513          	add	a0,a5,976 # 303d0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27634>
    8d74:	f68ff0ef          	jal	84dc <_Z10uart_printPKc>
    8d78:	000307b7          	lui	a5,0x30
    8d7c:	3d478513          	add	a0,a5,980 # 303d4 <_Z17cmd_arg_tokenizerPcS_S_ii+0x27638>
    8d80:	f5cff0ef          	jal	84dc <_Z10uart_printPKc>
    8d84:	0080006f          	j	8d8c <_Z15process_commandPcS_PVb+0x120>
    8d88:	00000013          	nop
    8d8c:	01c12083          	lw	ra,28(sp)
    8d90:	01812403          	lw	s0,24(sp)
    8d94:	02010113          	add	sp,sp,32
    8d98:	00008067          	ret

00008d9c <_Z17cmd_arg_tokenizerPcS_S_ii>:
    8d9c:	fc010113          	add	sp,sp,-64
    8da0:	02812e23          	sw	s0,60(sp)
    8da4:	04010413          	add	s0,sp,64
    8da8:	fca42e23          	sw	a0,-36(s0)
    8dac:	fcb42c23          	sw	a1,-40(s0)
    8db0:	fcc42a23          	sw	a2,-44(s0)
    8db4:	fcd42823          	sw	a3,-48(s0)
    8db8:	fce42623          	sw	a4,-52(s0)
    8dbc:	fe042623          	sw	zero,-20(s0)
    8dc0:	fe042423          	sw	zero,-24(s0)
    8dc4:	02c0006f          	j	8df0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    8dc8:	fdc42783          	lw	a5,-36(s0)
    8dcc:	00178713          	add	a4,a5,1
    8dd0:	fce42e23          	sw	a4,-36(s0)
    8dd4:	0007c703          	lbu	a4,0(a5)
    8dd8:	fd842683          	lw	a3,-40(s0)
    8ddc:	fec42783          	lw	a5,-20(s0)
    8de0:	00178613          	add	a2,a5,1
    8de4:	fec42623          	sw	a2,-20(s0)
    8de8:	00f687b3          	add	a5,a3,a5
    8dec:	00e78023          	sb	a4,0(a5)
    8df0:	fdc42783          	lw	a5,-36(s0)
    8df4:	0007c783          	lbu	a5,0(a5)
    8df8:	02078263          	beqz	a5,8e1c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    8dfc:	fdc42783          	lw	a5,-36(s0)
    8e00:	0007c703          	lbu	a4,0(a5)
    8e04:	02000793          	li	a5,32
    8e08:	00f70a63          	beq	a4,a5,8e1c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    8e0c:	fd042783          	lw	a5,-48(s0)
    8e10:	fff78793          	add	a5,a5,-1
    8e14:	fec42703          	lw	a4,-20(s0)
    8e18:	faf748e3          	blt	a4,a5,8dc8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    8e1c:	fec42783          	lw	a5,-20(s0)
    8e20:	fd842703          	lw	a4,-40(s0)
    8e24:	00f707b3          	add	a5,a4,a5
    8e28:	00078023          	sb	zero,0(a5)
    8e2c:	0100006f          	j	8e3c <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    8e30:	fdc42783          	lw	a5,-36(s0)
    8e34:	00178793          	add	a5,a5,1
    8e38:	fcf42e23          	sw	a5,-36(s0)
    8e3c:	fdc42783          	lw	a5,-36(s0)
    8e40:	0007c703          	lbu	a4,0(a5)
    8e44:	02000793          	li	a5,32
    8e48:	fef704e3          	beq	a4,a5,8e30 <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    8e4c:	02c0006f          	j	8e78 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    8e50:	fdc42783          	lw	a5,-36(s0)
    8e54:	00178713          	add	a4,a5,1
    8e58:	fce42e23          	sw	a4,-36(s0)
    8e5c:	0007c703          	lbu	a4,0(a5)
    8e60:	fd442683          	lw	a3,-44(s0)
    8e64:	fe842783          	lw	a5,-24(s0)
    8e68:	00178613          	add	a2,a5,1
    8e6c:	fec42423          	sw	a2,-24(s0)
    8e70:	00f687b3          	add	a5,a3,a5
    8e74:	00e78023          	sb	a4,0(a5)
    8e78:	fdc42783          	lw	a5,-36(s0)
    8e7c:	0007c783          	lbu	a5,0(a5)
    8e80:	00078a63          	beqz	a5,8e94 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    8e84:	fcc42783          	lw	a5,-52(s0)
    8e88:	fff78793          	add	a5,a5,-1
    8e8c:	fe842703          	lw	a4,-24(s0)
    8e90:	fcf740e3          	blt	a4,a5,8e50 <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    8e94:	fe842783          	lw	a5,-24(s0)
    8e98:	fd442703          	lw	a4,-44(s0)
    8e9c:	00f707b3          	add	a5,a4,a5
    8ea0:	00078023          	sb	zero,0(a5)
    8ea4:	00000013          	nop
    8ea8:	03c12403          	lw	s0,60(sp)
    8eac:	04010113          	add	sp,sp,64
    8eb0:	00008067          	ret
