
/out/echo_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	0003e197          	auipc	gp,0x3e
      10:	7f418193          	add	gp,gp,2036 # 3e800 <_global_pointer>
      14:	00000013          	nop
      18:	060000ef          	jal	78 <_Z10soc_bootupv>
      1c:	278000ef          	jal	294 <main>
      20:	00050793          	mv	a5,a0
      24:	00078493          	mv	s1,a5
      28:	000307b7          	lui	a5,0x30
      2c:	06078513          	add	a0,a5,96 # 30060 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28348>
      30:	4ac070ef          	jal	74dc <_Z10uart_printPKc>
      34:	00048513          	mv	a0,s1
      38:	700070ef          	jal	7738 <_Z16uart_print_int32i>
      3c:	00000013          	nop
      40:	000307b7          	lui	a5,0x30
      44:	07078513          	add	a0,a5,112 # 30070 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28358>
      48:	494070ef          	jal	74dc <_Z10uart_printPKc>
      4c:	002017b7          	lui	a5,0x201
      50:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
      54:	0007a783          	lw	a5,0(a5)
      58:	00078513          	mv	a0,a5
      5c:	6dc070ef          	jal	7738 <_Z16uart_print_int32i>
      60:	00000013          	nop
      64:	000307b7          	lui	a5,0x30
      68:	09078513          	add	a0,a5,144 # 30090 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28378>
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
      d0:	0a078513          	add	a0,a5,160 # 300a0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28388>
      d4:	408070ef          	jal	74dc <_Z10uart_printPKc>
      d8:	0e4000ef          	jal	1bc <_Z8cmd_freev>
      dc:	000307b7          	lui	a5,0x30
      e0:	0ac78513          	add	a0,a5,172 # 300ac <_Z17cmd_arg_tokenizerPcS_S_ii+0x28394>
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
     12c:	0c878513          	add	a0,a5,200 # 300c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283b0>
     130:	3ac070ef          	jal	74dc <_Z10uart_printPKc>
     134:	000307b7          	lui	a5,0x30
     138:	00078513          	mv	a0,a5
     13c:	3a0070ef          	jal	74dc <_Z10uart_printPKc>
     140:	00000013          	nop
     144:	02c12083          	lw	ra,44(sp)
     148:	02812403          	lw	s0,40(sp)
     14c:	03010113          	add	sp,sp,48
     150:	00008067          	ret

00000154 <_ZL6get_spv>:
     154:	fe010113          	add	sp,sp,-32
     158:	00812e23          	sw	s0,28(sp)
     15c:	02010413          	add	s0,sp,32
     160:	00010793          	mv	a5,sp
     164:	fef42623          	sw	a5,-20(s0)
     168:	fec42783          	lw	a5,-20(s0)
     16c:	00078513          	mv	a0,a5
     170:	01c12403          	lw	s0,28(sp)
     174:	02010113          	add	sp,sp,32
     178:	00008067          	ret

0000017c <_Z14get_free_bytesv>:
     17c:	fe010113          	add	sp,sp,-32
     180:	00112e23          	sw	ra,28(sp)
     184:	00812c23          	sw	s0,24(sp)
     188:	02010413          	add	s0,sp,32
     18c:	fc9ff0ef          	jal	154 <_ZL6get_spv>
     190:	fea42623          	sw	a0,-20(s0)
     194:	000347b7          	lui	a5,0x34
     198:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
     19c:	00078713          	mv	a4,a5
     1a0:	fec42783          	lw	a5,-20(s0)
     1a4:	40e787b3          	sub	a5,a5,a4
     1a8:	00078513          	mv	a0,a5
     1ac:	01c12083          	lw	ra,28(sp)
     1b0:	01812403          	lw	s0,24(sp)
     1b4:	02010113          	add	sp,sp,32
     1b8:	00008067          	ret

000001bc <_Z8cmd_freev>:
     1bc:	fe010113          	add	sp,sp,-32
     1c0:	00112e23          	sw	ra,28(sp)
     1c4:	00812c23          	sw	s0,24(sp)
     1c8:	02010413          	add	s0,sp,32
     1cc:	fb1ff0ef          	jal	17c <_Z14get_free_bytesv>
     1d0:	fea42623          	sw	a0,-20(s0)
     1d4:	fec42783          	lw	a5,-20(s0)
     1d8:	00078513          	mv	a0,a5
     1dc:	55c070ef          	jal	7738 <_Z16uart_print_int32i>
     1e0:	00000013          	nop
     1e4:	000307b7          	lui	a5,0x30
     1e8:	0d878513          	add	a0,a5,216 # 300d8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283c0>
     1ec:	2f0070ef          	jal	74dc <_Z10uart_printPKc>
     1f0:	00000013          	nop
     1f4:	01c12083          	lw	ra,28(sp)
     1f8:	01812403          	lw	s0,24(sp)
     1fc:	02010113          	add	sp,sp,32
     200:	00008067          	ret

00000204 <_Z5_sbrki>:
     204:	fd010113          	add	sp,sp,-48
     208:	02112623          	sw	ra,44(sp)
     20c:	02812423          	sw	s0,40(sp)
     210:	03010413          	add	s0,sp,48
     214:	fca42e23          	sw	a0,-36(s0)
     218:	000347b7          	lui	a5,0x34
     21c:	0007a783          	lw	a5,0(a5) # 34000 <_ZL8heap_end>
     220:	fef42623          	sw	a5,-20(s0)
     224:	f31ff0ef          	jal	154 <_ZL6get_spv>
     228:	fea42423          	sw	a0,-24(s0)
     22c:	000347b7          	lui	a5,0x34
     230:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
     234:	fdc42783          	lw	a5,-36(s0)
     238:	00279793          	sll	a5,a5,0x2
     23c:	00f707b3          	add	a5,a4,a5
     240:	00078713          	mv	a4,a5
     244:	fe842783          	lw	a5,-24(s0)
     248:	00f76c63          	bltu	a4,a5,260 <_Z5_sbrki+0x5c>
     24c:	000307b7          	lui	a5,0x30
     250:	0e878513          	add	a0,a5,232 # 300e8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283d0>
     254:	288070ef          	jal	74dc <_Z10uart_printPKc>
     258:	fff00793          	li	a5,-1
     25c:	0240006f          	j	280 <_Z5_sbrki+0x7c>
     260:	000347b7          	lui	a5,0x34
     264:	0007a703          	lw	a4,0(a5) # 34000 <_ZL8heap_end>
     268:	fdc42783          	lw	a5,-36(s0)
     26c:	00279793          	sll	a5,a5,0x2
     270:	00f70733          	add	a4,a4,a5
     274:	000347b7          	lui	a5,0x34
     278:	00e7a023          	sw	a4,0(a5) # 34000 <_ZL8heap_end>
     27c:	fec42783          	lw	a5,-20(s0)
     280:	00078513          	mv	a0,a5
     284:	02c12083          	lw	ra,44(sp)
     288:	02812403          	lw	s0,40(sp)
     28c:	03010113          	add	sp,sp,48
     290:	00008067          	ret

00000294 <main>:
     294:	ee010113          	add	sp,sp,-288
     298:	10112e23          	sw	ra,284(sp)
     29c:	10812c23          	sw	s0,280(sp)
     2a0:	12010413          	add	s0,sp,288
     2a4:	00100793          	li	a5,1
     2a8:	fef401a3          	sb	a5,-29(s0)
     2ac:	05000793          	li	a5,80
     2b0:	fef42623          	sw	a5,-20(s0)
     2b4:	01800793          	li	a5,24
     2b8:	fef42423          	sw	a5,-24(s0)
     2bc:	03800793          	li	a5,56
     2c0:	fef42223          	sw	a5,-28(s0)
     2c4:	0580006f          	j	31c <main+0x88>
     2c8:	f6040793          	add	a5,s0,-160
     2cc:	fec42583          	lw	a1,-20(s0)
     2d0:	00078513          	mv	a0,a5
     2d4:	6f8070ef          	jal	79cc <_Z12uart_getlinePci>
     2d8:	ee040613          	add	a2,s0,-288
     2dc:	f4040593          	add	a1,s0,-192
     2e0:	f6040793          	add	a5,s0,-160
     2e4:	fe442703          	lw	a4,-28(s0)
     2e8:	fe842683          	lw	a3,-24(s0)
     2ec:	00078513          	mv	a0,a5
     2f0:	229070ef          	jal	7d18 <_Z17cmd_arg_tokenizerPcS_S_ii>
     2f4:	fe340693          	add	a3,s0,-29
     2f8:	ee040713          	add	a4,s0,-288
     2fc:	f4040793          	add	a5,s0,-192
     300:	00068613          	mv	a2,a3
     304:	00070593          	mv	a1,a4
     308:	00078513          	mv	a0,a5
     30c:	105070ef          	jal	7c10 <_Z15process_commandPcS_PVb>
     310:	000307b7          	lui	a5,0x30
     314:	00078513          	mv	a0,a5
     318:	1c4070ef          	jal	74dc <_Z10uart_printPKc>
     31c:	fe344783          	lbu	a5,-29(s0)
     320:	0ff7f793          	zext.b	a5,a5
     324:	fa0792e3          	bnez	a5,2c8 <main+0x34>
     328:	fe344783          	lbu	a5,-29(s0)
     32c:	0ff7f793          	zext.b	a5,a5
     330:	00078513          	mv	a0,a5
     334:	11c12083          	lw	ra,284(sp)
     338:	11812403          	lw	s0,280(sp)
     33c:	12010113          	add	sp,sp,288
     340:	00008067          	ret

00000344 <_Z8cmd_echoPc>:
     344:	fe010113          	add	sp,sp,-32
     348:	00112e23          	sw	ra,28(sp)
     34c:	00812c23          	sw	s0,24(sp)
     350:	02010413          	add	s0,sp,32
     354:	fea42623          	sw	a0,-20(s0)
     358:	fec42503          	lw	a0,-20(s0)
     35c:	180070ef          	jal	74dc <_Z10uart_printPKc>
     360:	000307b7          	lui	a5,0x30
     364:	0f878513          	add	a0,a5,248 # 300f8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x283e0>
     368:	174070ef          	jal	74dc <_Z10uart_printPKc>
     36c:	00000013          	nop
     370:	01c12083          	lw	ra,28(sp)
     374:	01812403          	lw	s0,24(sp)
     378:	02010113          	add	sp,sp,32
     37c:	00008067          	ret

00000380 <_Z8cmd_helpPc>:
     380:	fe010113          	add	sp,sp,-32
     384:	00112e23          	sw	ra,28(sp)
     388:	00812c23          	sw	s0,24(sp)
     38c:	02010413          	add	s0,sp,32
     390:	fea42623          	sw	a0,-20(s0)
     394:	000307b7          	lui	a5,0x30
     398:	0fc78513          	add	a0,a5,252 # 300fc <_Z17cmd_arg_tokenizerPcS_S_ii+0x283e4>
     39c:	140070ef          	jal	74dc <_Z10uart_printPKc>
     3a0:	000307b7          	lui	a5,0x30
     3a4:	11c78513          	add	a0,a5,284 # 3011c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28404>
     3a8:	134070ef          	jal	74dc <_Z10uart_printPKc>
     3ac:	000307b7          	lui	a5,0x30
     3b0:	12c78513          	add	a0,a5,300 # 3012c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28414>
     3b4:	128070ef          	jal	74dc <_Z10uart_printPKc>
     3b8:	000307b7          	lui	a5,0x30
     3bc:	13c78513          	add	a0,a5,316 # 3013c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28424>
     3c0:	11c070ef          	jal	74dc <_Z10uart_printPKc>
     3c4:	000307b7          	lui	a5,0x30
     3c8:	14c78513          	add	a0,a5,332 # 3014c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28434>
     3cc:	110070ef          	jal	74dc <_Z10uart_printPKc>
     3d0:	000307b7          	lui	a5,0x30
     3d4:	15c78513          	add	a0,a5,348 # 3015c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28444>
     3d8:	104070ef          	jal	74dc <_Z10uart_printPKc>
     3dc:	00000013          	nop
     3e0:	01c12083          	lw	ra,28(sp)
     3e4:	01812403          	lw	s0,24(sp)
     3e8:	02010113          	add	sp,sp,32
     3ec:	00008067          	ret

000003f0 <_Z8cmd_exitPcPVb>:
     3f0:	fe010113          	add	sp,sp,-32
     3f4:	00112e23          	sw	ra,28(sp)
     3f8:	00812c23          	sw	s0,24(sp)
     3fc:	02010413          	add	s0,sp,32
     400:	fea42623          	sw	a0,-20(s0)
     404:	feb42423          	sw	a1,-24(s0)
     408:	000307b7          	lui	a5,0x30
     40c:	18078513          	add	a0,a5,384 # 30180 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28468>
     410:	0cc070ef          	jal	74dc <_Z10uart_printPKc>
     414:	fe842783          	lw	a5,-24(s0)
     418:	00078023          	sb	zero,0(a5)
     41c:	00000013          	nop
     420:	01c12083          	lw	ra,28(sp)
     424:	01812403          	lw	s0,24(sp)
     428:	02010113          	add	sp,sp,32
     42c:	00008067          	ret

00000430 <__divdi3>:
     430:	fc010113          	add	sp,sp,-64
     434:	02912a23          	sw	s1,52(sp)
     438:	03412423          	sw	s4,40(sp)
     43c:	02112e23          	sw	ra,60(sp)
     440:	02812c23          	sw	s0,56(sp)
     444:	03212823          	sw	s2,48(sp)
     448:	03312623          	sw	s3,44(sp)
     44c:	03512223          	sw	s5,36(sp)
     450:	03612023          	sw	s6,32(sp)
     454:	01712e23          	sw	s7,28(sp)
     458:	01812c23          	sw	s8,24(sp)
     45c:	01912a23          	sw	s9,20(sp)
     460:	01a12823          	sw	s10,16(sp)
     464:	01b12623          	sw	s11,12(sp)
     468:	00050a13          	mv	s4,a0
     46c:	00000493          	li	s1,0
     470:	0005dc63          	bgez	a1,488 <__divdi3+0x58>
     474:	00a037b3          	snez	a5,a0
     478:	40b005b3          	neg	a1,a1
     47c:	40f585b3          	sub	a1,a1,a5
     480:	40a00a33          	neg	s4,a0
     484:	fff00493          	li	s1,-1
     488:	0006dc63          	bgez	a3,4a0 <__divdi3+0x70>
     48c:	00c037b3          	snez	a5,a2
     490:	40d006b3          	neg	a3,a3
     494:	fff4c493          	not	s1,s1
     498:	40f686b3          	sub	a3,a3,a5
     49c:	40c00633          	neg	a2,a2
     4a0:	00060a93          	mv	s5,a2
     4a4:	000a0993          	mv	s3,s4
     4a8:	00058913          	mv	s2,a1
     4ac:	38069c63          	bnez	a3,844 <__divdi3+0x414>
     4b0:	00030697          	auipc	a3,0x30
     4b4:	cdc68693          	add	a3,a3,-804 # 3018c <__clz_tab>
     4b8:	12c5f663          	bgeu	a1,a2,5e4 <__divdi3+0x1b4>
     4bc:	000107b7          	lui	a5,0x10
     4c0:	10f67863          	bgeu	a2,a5,5d0 <__divdi3+0x1a0>
     4c4:	10063793          	sltiu	a5,a2,256
     4c8:	0017c793          	xor	a5,a5,1
     4cc:	00379793          	sll	a5,a5,0x3
     4d0:	00f65733          	srl	a4,a2,a5
     4d4:	00e686b3          	add	a3,a3,a4
     4d8:	0006c703          	lbu	a4,0(a3)
     4dc:	02000693          	li	a3,32
     4e0:	00f707b3          	add	a5,a4,a5
     4e4:	40f68733          	sub	a4,a3,a5
     4e8:	00f68c63          	beq	a3,a5,500 <__divdi3+0xd0>
     4ec:	00e59933          	sll	s2,a1,a4
     4f0:	00fa57b3          	srl	a5,s4,a5
     4f4:	00e61ab3          	sll	s5,a2,a4
     4f8:	0127e933          	or	s2,a5,s2
     4fc:	00ea19b3          	sll	s3,s4,a4
     500:	010adb13          	srl	s6,s5,0x10
     504:	000b0593          	mv	a1,s6
     508:	00090513          	mv	a0,s2
     50c:	010a9b93          	sll	s7,s5,0x10
     510:	281000ef          	jal	f90 <__hidden___udivsi3>
     514:	010bdb93          	srl	s7,s7,0x10
     518:	00050593          	mv	a1,a0
     51c:	00050a13          	mv	s4,a0
     520:	000b8513          	mv	a0,s7
     524:	241000ef          	jal	f64 <__mulsi3>
     528:	00050413          	mv	s0,a0
     52c:	000b0593          	mv	a1,s6
     530:	00090513          	mv	a0,s2
     534:	2a5000ef          	jal	fd8 <__umodsi3>
     538:	01051513          	sll	a0,a0,0x10
     53c:	0109d713          	srl	a4,s3,0x10
     540:	00a76733          	or	a4,a4,a0
     544:	000a0913          	mv	s2,s4
     548:	00877e63          	bgeu	a4,s0,564 <__divdi3+0x134>
     54c:	00ea8733          	add	a4,s5,a4
     550:	fffa0913          	add	s2,s4,-1
     554:	01576863          	bltu	a4,s5,564 <__divdi3+0x134>
     558:	00877663          	bgeu	a4,s0,564 <__divdi3+0x134>
     55c:	ffea0913          	add	s2,s4,-2
     560:	01570733          	add	a4,a4,s5
     564:	40870433          	sub	s0,a4,s0
     568:	000b0593          	mv	a1,s6
     56c:	00040513          	mv	a0,s0
     570:	221000ef          	jal	f90 <__hidden___udivsi3>
     574:	00050593          	mv	a1,a0
     578:	00050a13          	mv	s4,a0
     57c:	000b8513          	mv	a0,s7
     580:	1e5000ef          	jal	f64 <__mulsi3>
     584:	00050b93          	mv	s7,a0
     588:	000b0593          	mv	a1,s6
     58c:	00040513          	mv	a0,s0
     590:	249000ef          	jal	fd8 <__umodsi3>
     594:	01099993          	sll	s3,s3,0x10
     598:	01051513          	sll	a0,a0,0x10
     59c:	0109d993          	srl	s3,s3,0x10
     5a0:	00a9e9b3          	or	s3,s3,a0
     5a4:	000a0713          	mv	a4,s4
     5a8:	0179fc63          	bgeu	s3,s7,5c0 <__divdi3+0x190>
     5ac:	013a89b3          	add	s3,s5,s3
     5b0:	fffa0713          	add	a4,s4,-1
     5b4:	0159e663          	bltu	s3,s5,5c0 <__divdi3+0x190>
     5b8:	0179f463          	bgeu	s3,s7,5c0 <__divdi3+0x190>
     5bc:	ffea0713          	add	a4,s4,-2
     5c0:	01091793          	sll	a5,s2,0x10
     5c4:	00e7e7b3          	or	a5,a5,a4
     5c8:	00000913          	li	s2,0
     5cc:	1200006f          	j	6ec <__divdi3+0x2bc>
     5d0:	01000737          	lui	a4,0x1000
     5d4:	01000793          	li	a5,16
     5d8:	eee66ce3          	bltu	a2,a4,4d0 <__divdi3+0xa0>
     5dc:	01800793          	li	a5,24
     5e0:	ef1ff06f          	j	4d0 <__divdi3+0xa0>
     5e4:	00000713          	li	a4,0
     5e8:	00060c63          	beqz	a2,600 <__divdi3+0x1d0>
     5ec:	000107b7          	lui	a5,0x10
     5f0:	14f67a63          	bgeu	a2,a5,744 <__divdi3+0x314>
     5f4:	10063713          	sltiu	a4,a2,256
     5f8:	00174713          	xor	a4,a4,1
     5fc:	00371713          	sll	a4,a4,0x3
     600:	00e657b3          	srl	a5,a2,a4
     604:	00f686b3          	add	a3,a3,a5
     608:	0006c783          	lbu	a5,0(a3)
     60c:	02000693          	li	a3,32
     610:	00e787b3          	add	a5,a5,a4
     614:	40f68733          	sub	a4,a3,a5
     618:	14f69063          	bne	a3,a5,758 <__divdi3+0x328>
     61c:	40c58a33          	sub	s4,a1,a2
     620:	00100913          	li	s2,1
     624:	010adb13          	srl	s6,s5,0x10
     628:	000b0593          	mv	a1,s6
     62c:	000a0513          	mv	a0,s4
     630:	010a9b93          	sll	s7,s5,0x10
     634:	15d000ef          	jal	f90 <__hidden___udivsi3>
     638:	010bdb93          	srl	s7,s7,0x10
     63c:	00050593          	mv	a1,a0
     640:	00050c93          	mv	s9,a0
     644:	000b8513          	mv	a0,s7
     648:	11d000ef          	jal	f64 <__mulsi3>
     64c:	00050c13          	mv	s8,a0
     650:	000b0593          	mv	a1,s6
     654:	000a0513          	mv	a0,s4
     658:	181000ef          	jal	fd8 <__umodsi3>
     65c:	01051513          	sll	a0,a0,0x10
     660:	0109d713          	srl	a4,s3,0x10
     664:	00a76733          	or	a4,a4,a0
     668:	000c8a13          	mv	s4,s9
     66c:	01877e63          	bgeu	a4,s8,688 <__divdi3+0x258>
     670:	00ea8733          	add	a4,s5,a4
     674:	fffc8a13          	add	s4,s9,-1
     678:	01576863          	bltu	a4,s5,688 <__divdi3+0x258>
     67c:	01877663          	bgeu	a4,s8,688 <__divdi3+0x258>
     680:	ffec8a13          	add	s4,s9,-2
     684:	01570733          	add	a4,a4,s5
     688:	41870433          	sub	s0,a4,s8
     68c:	000b0593          	mv	a1,s6
     690:	00040513          	mv	a0,s0
     694:	0fd000ef          	jal	f90 <__hidden___udivsi3>
     698:	00050593          	mv	a1,a0
     69c:	00050c13          	mv	s8,a0
     6a0:	000b8513          	mv	a0,s7
     6a4:	0c1000ef          	jal	f64 <__mulsi3>
     6a8:	00050b93          	mv	s7,a0
     6ac:	000b0593          	mv	a1,s6
     6b0:	00040513          	mv	a0,s0
     6b4:	125000ef          	jal	fd8 <__umodsi3>
     6b8:	01099993          	sll	s3,s3,0x10
     6bc:	01051513          	sll	a0,a0,0x10
     6c0:	0109d993          	srl	s3,s3,0x10
     6c4:	00a9e9b3          	or	s3,s3,a0
     6c8:	000c0713          	mv	a4,s8
     6cc:	0179fc63          	bgeu	s3,s7,6e4 <__divdi3+0x2b4>
     6d0:	013a89b3          	add	s3,s5,s3
     6d4:	fffc0713          	add	a4,s8,-1
     6d8:	0159e663          	bltu	s3,s5,6e4 <__divdi3+0x2b4>
     6dc:	0179f463          	bgeu	s3,s7,6e4 <__divdi3+0x2b4>
     6e0:	ffec0713          	add	a4,s8,-2
     6e4:	010a1793          	sll	a5,s4,0x10
     6e8:	00e7e7b3          	or	a5,a5,a4
     6ec:	00078513          	mv	a0,a5
     6f0:	00090593          	mv	a1,s2
     6f4:	00048a63          	beqz	s1,708 <__divdi3+0x2d8>
     6f8:	00f037b3          	snez	a5,a5
     6fc:	412005b3          	neg	a1,s2
     700:	40f585b3          	sub	a1,a1,a5
     704:	40a00533          	neg	a0,a0
     708:	03c12083          	lw	ra,60(sp)
     70c:	03812403          	lw	s0,56(sp)
     710:	03412483          	lw	s1,52(sp)
     714:	03012903          	lw	s2,48(sp)
     718:	02c12983          	lw	s3,44(sp)
     71c:	02812a03          	lw	s4,40(sp)
     720:	02412a83          	lw	s5,36(sp)
     724:	02012b03          	lw	s6,32(sp)
     728:	01c12b83          	lw	s7,28(sp)
     72c:	01812c03          	lw	s8,24(sp)
     730:	01412c83          	lw	s9,20(sp)
     734:	01012d03          	lw	s10,16(sp)
     738:	00c12d83          	lw	s11,12(sp)
     73c:	04010113          	add	sp,sp,64
     740:	00008067          	ret
     744:	010007b7          	lui	a5,0x1000
     748:	01000713          	li	a4,16
     74c:	eaf66ae3          	bltu	a2,a5,600 <__divdi3+0x1d0>
     750:	01800713          	li	a4,24
     754:	eadff06f          	j	600 <__divdi3+0x1d0>
     758:	00e61ab3          	sll	s5,a2,a4
     75c:	00f5d933          	srl	s2,a1,a5
     760:	010adb93          	srl	s7,s5,0x10
     764:	00e595b3          	sll	a1,a1,a4
     768:	00fa57b3          	srl	a5,s4,a5
     76c:	00b7eb33          	or	s6,a5,a1
     770:	00ea19b3          	sll	s3,s4,a4
     774:	000b8593          	mv	a1,s7
     778:	00090513          	mv	a0,s2
     77c:	010a9a13          	sll	s4,s5,0x10
     780:	011000ef          	jal	f90 <__hidden___udivsi3>
     784:	010a5a13          	srl	s4,s4,0x10
     788:	00050593          	mv	a1,a0
     78c:	00050c13          	mv	s8,a0
     790:	000a0513          	mv	a0,s4
     794:	7d0000ef          	jal	f64 <__mulsi3>
     798:	00050413          	mv	s0,a0
     79c:	000b8593          	mv	a1,s7
     7a0:	00090513          	mv	a0,s2
     7a4:	035000ef          	jal	fd8 <__umodsi3>
     7a8:	01051513          	sll	a0,a0,0x10
     7ac:	010b5713          	srl	a4,s6,0x10
     7b0:	00a76733          	or	a4,a4,a0
     7b4:	000c0913          	mv	s2,s8
     7b8:	00877e63          	bgeu	a4,s0,7d4 <__divdi3+0x3a4>
     7bc:	00ea8733          	add	a4,s5,a4
     7c0:	fffc0913          	add	s2,s8,-1
     7c4:	01576863          	bltu	a4,s5,7d4 <__divdi3+0x3a4>
     7c8:	00877663          	bgeu	a4,s0,7d4 <__divdi3+0x3a4>
     7cc:	ffec0913          	add	s2,s8,-2
     7d0:	01570733          	add	a4,a4,s5
     7d4:	40870433          	sub	s0,a4,s0
     7d8:	000b8593          	mv	a1,s7
     7dc:	00040513          	mv	a0,s0
     7e0:	7b0000ef          	jal	f90 <__hidden___udivsi3>
     7e4:	00050593          	mv	a1,a0
     7e8:	00050c13          	mv	s8,a0
     7ec:	000a0513          	mv	a0,s4
     7f0:	774000ef          	jal	f64 <__mulsi3>
     7f4:	00050a13          	mv	s4,a0
     7f8:	000b8593          	mv	a1,s7
     7fc:	00040513          	mv	a0,s0
     800:	7d8000ef          	jal	fd8 <__umodsi3>
     804:	010b1793          	sll	a5,s6,0x10
     808:	01051513          	sll	a0,a0,0x10
     80c:	0107d793          	srl	a5,a5,0x10
     810:	00a7e7b3          	or	a5,a5,a0
     814:	000c0713          	mv	a4,s8
     818:	0147fe63          	bgeu	a5,s4,834 <__divdi3+0x404>
     81c:	00fa87b3          	add	a5,s5,a5
     820:	fffc0713          	add	a4,s8,-1
     824:	0157e863          	bltu	a5,s5,834 <__divdi3+0x404>
     828:	0147f663          	bgeu	a5,s4,834 <__divdi3+0x404>
     82c:	ffec0713          	add	a4,s8,-2
     830:	015787b3          	add	a5,a5,s5
     834:	01091913          	sll	s2,s2,0x10
     838:	41478a33          	sub	s4,a5,s4
     83c:	00e96933          	or	s2,s2,a4
     840:	de5ff06f          	j	624 <__divdi3+0x1f4>
     844:	1ed5ee63          	bltu	a1,a3,a40 <__divdi3+0x610>
     848:	000107b7          	lui	a5,0x10
     84c:	04f6f463          	bgeu	a3,a5,894 <__divdi3+0x464>
     850:	1006b713          	sltiu	a4,a3,256
     854:	00174713          	xor	a4,a4,1
     858:	00371713          	sll	a4,a4,0x3
     85c:	00e6d533          	srl	a0,a3,a4
     860:	00030797          	auipc	a5,0x30
     864:	92c78793          	add	a5,a5,-1748 # 3018c <__clz_tab>
     868:	00a787b3          	add	a5,a5,a0
     86c:	0007c803          	lbu	a6,0(a5)
     870:	02000793          	li	a5,32
     874:	00e80833          	add	a6,a6,a4
     878:	41078933          	sub	s2,a5,a6
     87c:	03079663          	bne	a5,a6,8a8 <__divdi3+0x478>
     880:	00100793          	li	a5,1
     884:	e6b6e4e3          	bltu	a3,a1,6ec <__divdi3+0x2bc>
     888:	00ca37b3          	sltu	a5,s4,a2
     88c:	0017c793          	xor	a5,a5,1
     890:	e5dff06f          	j	6ec <__divdi3+0x2bc>
     894:	010007b7          	lui	a5,0x1000
     898:	01000713          	li	a4,16
     89c:	fcf6e0e3          	bltu	a3,a5,85c <__divdi3+0x42c>
     8a0:	01800713          	li	a4,24
     8a4:	fb9ff06f          	j	85c <__divdi3+0x42c>
     8a8:	012696b3          	sll	a3,a3,s2
     8ac:	01065c33          	srl	s8,a2,a6
     8b0:	00dc6c33          	or	s8,s8,a3
     8b4:	0105dab3          	srl	s5,a1,a6
     8b8:	010a5733          	srl	a4,s4,a6
     8bc:	012595b3          	sll	a1,a1,s2
     8c0:	010c5b13          	srl	s6,s8,0x10
     8c4:	00b769b3          	or	s3,a4,a1
     8c8:	010c1b93          	sll	s7,s8,0x10
     8cc:	000b0593          	mv	a1,s6
     8d0:	000a8513          	mv	a0,s5
     8d4:	01261433          	sll	s0,a2,s2
     8d8:	010bdb93          	srl	s7,s7,0x10
     8dc:	6b4000ef          	jal	f90 <__hidden___udivsi3>
     8e0:	00050593          	mv	a1,a0
     8e4:	00050d93          	mv	s11,a0
     8e8:	000b8513          	mv	a0,s7
     8ec:	678000ef          	jal	f64 <__mulsi3>
     8f0:	00050d13          	mv	s10,a0
     8f4:	000b0593          	mv	a1,s6
     8f8:	000a8513          	mv	a0,s5
     8fc:	6dc000ef          	jal	fd8 <__umodsi3>
     900:	01051513          	sll	a0,a0,0x10
     904:	0109d693          	srl	a3,s3,0x10
     908:	00a6e6b3          	or	a3,a3,a0
     90c:	000d8c93          	mv	s9,s11
     910:	01a6fe63          	bgeu	a3,s10,92c <__divdi3+0x4fc>
     914:	00dc06b3          	add	a3,s8,a3
     918:	fffd8c93          	add	s9,s11,-1
     91c:	0186e863          	bltu	a3,s8,92c <__divdi3+0x4fc>
     920:	01a6f663          	bgeu	a3,s10,92c <__divdi3+0x4fc>
     924:	ffed8c93          	add	s9,s11,-2
     928:	018686b3          	add	a3,a3,s8
     92c:	41a68ab3          	sub	s5,a3,s10
     930:	000b0593          	mv	a1,s6
     934:	000a8513          	mv	a0,s5
     938:	658000ef          	jal	f90 <__hidden___udivsi3>
     93c:	00050593          	mv	a1,a0
     940:	00050d13          	mv	s10,a0
     944:	000b8513          	mv	a0,s7
     948:	61c000ef          	jal	f64 <__mulsi3>
     94c:	00050b93          	mv	s7,a0
     950:	000b0593          	mv	a1,s6
     954:	000a8513          	mv	a0,s5
     958:	680000ef          	jal	fd8 <__umodsi3>
     95c:	01099713          	sll	a4,s3,0x10
     960:	01051513          	sll	a0,a0,0x10
     964:	01075713          	srl	a4,a4,0x10
     968:	00a76733          	or	a4,a4,a0
     96c:	000d0693          	mv	a3,s10
     970:	01777e63          	bgeu	a4,s7,98c <__divdi3+0x55c>
     974:	00ec0733          	add	a4,s8,a4
     978:	fffd0693          	add	a3,s10,-1
     97c:	01876863          	bltu	a4,s8,98c <__divdi3+0x55c>
     980:	01777663          	bgeu	a4,s7,98c <__divdi3+0x55c>
     984:	ffed0693          	add	a3,s10,-2
     988:	01870733          	add	a4,a4,s8
     98c:	010c9793          	sll	a5,s9,0x10
     990:	00010e37          	lui	t3,0x10
     994:	00d7e7b3          	or	a5,a5,a3
     998:	fffe0313          	add	t1,t3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82e7>
     99c:	0067f8b3          	and	a7,a5,t1
     9a0:	00647333          	and	t1,s0,t1
     9a4:	41770733          	sub	a4,a4,s7
     9a8:	0107de93          	srl	t4,a5,0x10
     9ac:	01045413          	srl	s0,s0,0x10
     9b0:	00088513          	mv	a0,a7
     9b4:	00030593          	mv	a1,t1
     9b8:	5ac000ef          	jal	f64 <__mulsi3>
     9bc:	00050813          	mv	a6,a0
     9c0:	00040593          	mv	a1,s0
     9c4:	00088513          	mv	a0,a7
     9c8:	59c000ef          	jal	f64 <__mulsi3>
     9cc:	00050893          	mv	a7,a0
     9d0:	00030593          	mv	a1,t1
     9d4:	000e8513          	mv	a0,t4
     9d8:	58c000ef          	jal	f64 <__mulsi3>
     9dc:	00050313          	mv	t1,a0
     9e0:	00040593          	mv	a1,s0
     9e4:	000e8513          	mv	a0,t4
     9e8:	57c000ef          	jal	f64 <__mulsi3>
     9ec:	01085693          	srl	a3,a6,0x10
     9f0:	006888b3          	add	a7,a7,t1
     9f4:	011686b3          	add	a3,a3,a7
     9f8:	00050613          	mv	a2,a0
     9fc:	0066f463          	bgeu	a3,t1,a04 <__divdi3+0x5d4>
     a00:	01c50633          	add	a2,a0,t3
     a04:	0106d593          	srl	a1,a3,0x10
     a08:	00c58633          	add	a2,a1,a2
     a0c:	02c76663          	bltu	a4,a2,a38 <__divdi3+0x608>
     a10:	bac71ce3          	bne	a4,a2,5c8 <__divdi3+0x198>
     a14:	00010637          	lui	a2,0x10
     a18:	fff60613          	add	a2,a2,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82e7>
     a1c:	00c6f6b3          	and	a3,a3,a2
     a20:	01069693          	sll	a3,a3,0x10
     a24:	00c87833          	and	a6,a6,a2
     a28:	012a1733          	sll	a4,s4,s2
     a2c:	01068533          	add	a0,a3,a6
     a30:	00000913          	li	s2,0
     a34:	caa77ce3          	bgeu	a4,a0,6ec <__divdi3+0x2bc>
     a38:	fff78793          	add	a5,a5,-1 # ffffff <GET_WATCHDOG_LOW+0xdfefbf>
     a3c:	b8dff06f          	j	5c8 <__divdi3+0x198>
     a40:	00000913          	li	s2,0
     a44:	00000793          	li	a5,0
     a48:	ca5ff06f          	j	6ec <__divdi3+0x2bc>

00000a4c <__moddi3>:
     a4c:	fc010113          	add	sp,sp,-64
     a50:	02912a23          	sw	s1,52(sp)
     a54:	02112e23          	sw	ra,60(sp)
     a58:	02812c23          	sw	s0,56(sp)
     a5c:	03212823          	sw	s2,48(sp)
     a60:	03312623          	sw	s3,44(sp)
     a64:	03412423          	sw	s4,40(sp)
     a68:	03512223          	sw	s5,36(sp)
     a6c:	03612023          	sw	s6,32(sp)
     a70:	01712e23          	sw	s7,28(sp)
     a74:	01812c23          	sw	s8,24(sp)
     a78:	01912a23          	sw	s9,20(sp)
     a7c:	01a12823          	sw	s10,16(sp)
     a80:	01b12623          	sw	s11,12(sp)
     a84:	00000493          	li	s1,0
     a88:	0005dc63          	bgez	a1,aa0 <__moddi3+0x54>
     a8c:	00a037b3          	snez	a5,a0
     a90:	40b005b3          	neg	a1,a1
     a94:	40f585b3          	sub	a1,a1,a5
     a98:	40a00533          	neg	a0,a0
     a9c:	fff00493          	li	s1,-1
     aa0:	0006da63          	bgez	a3,ab4 <__moddi3+0x68>
     aa4:	00c037b3          	snez	a5,a2
     aa8:	40d006b3          	neg	a3,a3
     aac:	40f686b3          	sub	a3,a3,a5
     ab0:	40c00633          	neg	a2,a2
     ab4:	00060a13          	mv	s4,a2
     ab8:	00050413          	mv	s0,a0
     abc:	00058913          	mv	s2,a1
     ac0:	26069663          	bnez	a3,d2c <__moddi3+0x2e0>
     ac4:	0002f697          	auipc	a3,0x2f
     ac8:	6c868693          	add	a3,a3,1736 # 3018c <__clz_tab>
     acc:	14c5fa63          	bgeu	a1,a2,c20 <__moddi3+0x1d4>
     ad0:	000107b7          	lui	a5,0x10
     ad4:	12f67c63          	bgeu	a2,a5,c0c <__moddi3+0x1c0>
     ad8:	10063793          	sltiu	a5,a2,256
     adc:	0017c793          	xor	a5,a5,1
     ae0:	00379793          	sll	a5,a5,0x3
     ae4:	00f65733          	srl	a4,a2,a5
     ae8:	00e686b3          	add	a3,a3,a4
     aec:	0006c703          	lbu	a4,0(a3)
     af0:	00f707b3          	add	a5,a4,a5
     af4:	02000713          	li	a4,32
     af8:	40f709b3          	sub	s3,a4,a5
     afc:	00f70c63          	beq	a4,a5,b14 <__moddi3+0xc8>
     b00:	013595b3          	sll	a1,a1,s3
     b04:	00f557b3          	srl	a5,a0,a5
     b08:	01361a33          	sll	s4,a2,s3
     b0c:	00b7e933          	or	s2,a5,a1
     b10:	01351433          	sll	s0,a0,s3
     b14:	010a5b13          	srl	s6,s4,0x10
     b18:	000b0593          	mv	a1,s6
     b1c:	010a1b93          	sll	s7,s4,0x10
     b20:	00090513          	mv	a0,s2
     b24:	46c000ef          	jal	f90 <__hidden___udivsi3>
     b28:	010bdb93          	srl	s7,s7,0x10
     b2c:	000b8593          	mv	a1,s7
     b30:	434000ef          	jal	f64 <__mulsi3>
     b34:	00050a93          	mv	s5,a0
     b38:	000b0593          	mv	a1,s6
     b3c:	00090513          	mv	a0,s2
     b40:	498000ef          	jal	fd8 <__umodsi3>
     b44:	01051513          	sll	a0,a0,0x10
     b48:	01045793          	srl	a5,s0,0x10
     b4c:	00a7e7b3          	or	a5,a5,a0
     b50:	0157fa63          	bgeu	a5,s5,b64 <__moddi3+0x118>
     b54:	00fa07b3          	add	a5,s4,a5
     b58:	0147e663          	bltu	a5,s4,b64 <__moddi3+0x118>
     b5c:	0157f463          	bgeu	a5,s5,b64 <__moddi3+0x118>
     b60:	014787b3          	add	a5,a5,s4
     b64:	41578933          	sub	s2,a5,s5
     b68:	000b0593          	mv	a1,s6
     b6c:	00090513          	mv	a0,s2
     b70:	420000ef          	jal	f90 <__hidden___udivsi3>
     b74:	000b8593          	mv	a1,s7
     b78:	3ec000ef          	jal	f64 <__mulsi3>
     b7c:	00050a93          	mv	s5,a0
     b80:	000b0593          	mv	a1,s6
     b84:	00090513          	mv	a0,s2
     b88:	450000ef          	jal	fd8 <__umodsi3>
     b8c:	01041413          	sll	s0,s0,0x10
     b90:	01051513          	sll	a0,a0,0x10
     b94:	01045413          	srl	s0,s0,0x10
     b98:	00a46433          	or	s0,s0,a0
     b9c:	01547a63          	bgeu	s0,s5,bb0 <__moddi3+0x164>
     ba0:	008a0433          	add	s0,s4,s0
     ba4:	01446663          	bltu	s0,s4,bb0 <__moddi3+0x164>
     ba8:	01547463          	bgeu	s0,s5,bb0 <__moddi3+0x164>
     bac:	01440433          	add	s0,s0,s4
     bb0:	41540433          	sub	s0,s0,s5
     bb4:	01345533          	srl	a0,s0,s3
     bb8:	00000593          	li	a1,0
     bbc:	00048a63          	beqz	s1,bd0 <__moddi3+0x184>
     bc0:	00a037b3          	snez	a5,a0
     bc4:	40b005b3          	neg	a1,a1
     bc8:	40f585b3          	sub	a1,a1,a5
     bcc:	40a00533          	neg	a0,a0
     bd0:	03c12083          	lw	ra,60(sp)
     bd4:	03812403          	lw	s0,56(sp)
     bd8:	03412483          	lw	s1,52(sp)
     bdc:	03012903          	lw	s2,48(sp)
     be0:	02c12983          	lw	s3,44(sp)
     be4:	02812a03          	lw	s4,40(sp)
     be8:	02412a83          	lw	s5,36(sp)
     bec:	02012b03          	lw	s6,32(sp)
     bf0:	01c12b83          	lw	s7,28(sp)
     bf4:	01812c03          	lw	s8,24(sp)
     bf8:	01412c83          	lw	s9,20(sp)
     bfc:	01012d03          	lw	s10,16(sp)
     c00:	00c12d83          	lw	s11,12(sp)
     c04:	04010113          	add	sp,sp,64
     c08:	00008067          	ret
     c0c:	01000737          	lui	a4,0x1000
     c10:	01000793          	li	a5,16
     c14:	ece668e3          	bltu	a2,a4,ae4 <__moddi3+0x98>
     c18:	01800793          	li	a5,24
     c1c:	ec9ff06f          	j	ae4 <__moddi3+0x98>
     c20:	00000713          	li	a4,0
     c24:	00060c63          	beqz	a2,c3c <__moddi3+0x1f0>
     c28:	000107b7          	lui	a5,0x10
     c2c:	0ef67663          	bgeu	a2,a5,d18 <__moddi3+0x2cc>
     c30:	10063713          	sltiu	a4,a2,256
     c34:	00174713          	xor	a4,a4,1
     c38:	00371713          	sll	a4,a4,0x3
     c3c:	00e657b3          	srl	a5,a2,a4
     c40:	00f686b3          	add	a3,a3,a5
     c44:	0006c783          	lbu	a5,0(a3)
     c48:	40c58933          	sub	s2,a1,a2
     c4c:	00e787b3          	add	a5,a5,a4
     c50:	02000713          	li	a4,32
     c54:	40f709b3          	sub	s3,a4,a5
     c58:	eaf70ee3          	beq	a4,a5,b14 <__moddi3+0xc8>
     c5c:	01361a33          	sll	s4,a2,s3
     c60:	00f5d933          	srl	s2,a1,a5
     c64:	010a5b93          	srl	s7,s4,0x10
     c68:	00f557b3          	srl	a5,a0,a5
     c6c:	013595b3          	sll	a1,a1,s3
     c70:	00b7eab3          	or	s5,a5,a1
     c74:	01351433          	sll	s0,a0,s3
     c78:	000b8593          	mv	a1,s7
     c7c:	010a1b13          	sll	s6,s4,0x10
     c80:	00090513          	mv	a0,s2
     c84:	30c000ef          	jal	f90 <__hidden___udivsi3>
     c88:	010b5b13          	srl	s6,s6,0x10
     c8c:	000b0593          	mv	a1,s6
     c90:	2d4000ef          	jal	f64 <__mulsi3>
     c94:	00050c13          	mv	s8,a0
     c98:	000b8593          	mv	a1,s7
     c9c:	00090513          	mv	a0,s2
     ca0:	338000ef          	jal	fd8 <__umodsi3>
     ca4:	01051513          	sll	a0,a0,0x10
     ca8:	010ad713          	srl	a4,s5,0x10
     cac:	00a76733          	or	a4,a4,a0
     cb0:	01877a63          	bgeu	a4,s8,cc4 <__moddi3+0x278>
     cb4:	00ea0733          	add	a4,s4,a4
     cb8:	01476663          	bltu	a4,s4,cc4 <__moddi3+0x278>
     cbc:	01877463          	bgeu	a4,s8,cc4 <__moddi3+0x278>
     cc0:	01470733          	add	a4,a4,s4
     cc4:	41870c33          	sub	s8,a4,s8
     cc8:	000b8593          	mv	a1,s7
     ccc:	000c0513          	mv	a0,s8
     cd0:	2c0000ef          	jal	f90 <__hidden___udivsi3>
     cd4:	000b0593          	mv	a1,s6
     cd8:	28c000ef          	jal	f64 <__mulsi3>
     cdc:	00050b13          	mv	s6,a0
     ce0:	000b8593          	mv	a1,s7
     ce4:	000c0513          	mv	a0,s8
     ce8:	2f0000ef          	jal	fd8 <__umodsi3>
     cec:	010a9793          	sll	a5,s5,0x10
     cf0:	01051513          	sll	a0,a0,0x10
     cf4:	0107d793          	srl	a5,a5,0x10
     cf8:	00a7e7b3          	or	a5,a5,a0
     cfc:	0167fa63          	bgeu	a5,s6,d10 <__moddi3+0x2c4>
     d00:	00fa07b3          	add	a5,s4,a5
     d04:	0147e663          	bltu	a5,s4,d10 <__moddi3+0x2c4>
     d08:	0167f463          	bgeu	a5,s6,d10 <__moddi3+0x2c4>
     d0c:	014787b3          	add	a5,a5,s4
     d10:	41678933          	sub	s2,a5,s6
     d14:	e01ff06f          	j	b14 <__moddi3+0xc8>
     d18:	010007b7          	lui	a5,0x1000
     d1c:	01000713          	li	a4,16
     d20:	f0f66ee3          	bltu	a2,a5,c3c <__moddi3+0x1f0>
     d24:	01800713          	li	a4,24
     d28:	f15ff06f          	j	c3c <__moddi3+0x1f0>
     d2c:	e8d5e8e3          	bltu	a1,a3,bbc <__moddi3+0x170>
     d30:	000107b7          	lui	a5,0x10
     d34:	04f6fe63          	bgeu	a3,a5,d90 <__moddi3+0x344>
     d38:	1006b793          	sltiu	a5,a3,256
     d3c:	0017c793          	xor	a5,a5,1
     d40:	00379793          	sll	a5,a5,0x3
     d44:	00f6d833          	srl	a6,a3,a5
     d48:	0002f717          	auipc	a4,0x2f
     d4c:	44470713          	add	a4,a4,1092 # 3018c <__clz_tab>
     d50:	01070733          	add	a4,a4,a6
     d54:	00074a03          	lbu	s4,0(a4)
     d58:	00fa0a33          	add	s4,s4,a5
     d5c:	02000793          	li	a5,32
     d60:	414789b3          	sub	s3,a5,s4
     d64:	05479063          	bne	a5,s4,da4 <__moddi3+0x358>
     d68:	00b6e463          	bltu	a3,a1,d70 <__moddi3+0x324>
     d6c:	00c56c63          	bltu	a0,a2,d84 <__moddi3+0x338>
     d70:	40c50ab3          	sub	s5,a0,a2
     d74:	40d586b3          	sub	a3,a1,a3
     d78:	015535b3          	sltu	a1,a0,s5
     d7c:	000a8413          	mv	s0,s5
     d80:	40b68933          	sub	s2,a3,a1
     d84:	00040513          	mv	a0,s0
     d88:	00090593          	mv	a1,s2
     d8c:	e31ff06f          	j	bbc <__moddi3+0x170>
     d90:	01000737          	lui	a4,0x1000
     d94:	01000793          	li	a5,16
     d98:	fae6e6e3          	bltu	a3,a4,d44 <__moddi3+0x2f8>
     d9c:	01800793          	li	a5,24
     da0:	fa5ff06f          	j	d44 <__moddi3+0x2f8>
     da4:	013696b3          	sll	a3,a3,s3
     da8:	01465bb3          	srl	s7,a2,s4
     dac:	00dbebb3          	or	s7,s7,a3
     db0:	0145db33          	srl	s6,a1,s4
     db4:	01455433          	srl	s0,a0,s4
     db8:	013595b3          	sll	a1,a1,s3
     dbc:	010bdc13          	srl	s8,s7,0x10
     dc0:	00b46433          	or	s0,s0,a1
     dc4:	01351933          	sll	s2,a0,s3
     dc8:	000c0593          	mv	a1,s8
     dcc:	000b0513          	mv	a0,s6
     dd0:	010b9c93          	sll	s9,s7,0x10
     dd4:	01361ab3          	sll	s5,a2,s3
     dd8:	010cdc93          	srl	s9,s9,0x10
     ddc:	1b4000ef          	jal	f90 <__hidden___udivsi3>
     de0:	00050593          	mv	a1,a0
     de4:	00050d93          	mv	s11,a0
     de8:	000c8513          	mv	a0,s9
     dec:	178000ef          	jal	f64 <__mulsi3>
     df0:	00050d13          	mv	s10,a0
     df4:	000c0593          	mv	a1,s8
     df8:	000b0513          	mv	a0,s6
     dfc:	1dc000ef          	jal	fd8 <__umodsi3>
     e00:	01051513          	sll	a0,a0,0x10
     e04:	01045793          	srl	a5,s0,0x10
     e08:	00a7e7b3          	or	a5,a5,a0
     e0c:	000d8b13          	mv	s6,s11
     e10:	01a7fe63          	bgeu	a5,s10,e2c <__moddi3+0x3e0>
     e14:	00fb87b3          	add	a5,s7,a5
     e18:	fffd8b13          	add	s6,s11,-1
     e1c:	0177e863          	bltu	a5,s7,e2c <__moddi3+0x3e0>
     e20:	01a7f663          	bgeu	a5,s10,e2c <__moddi3+0x3e0>
     e24:	ffed8b13          	add	s6,s11,-2
     e28:	017787b3          	add	a5,a5,s7
     e2c:	41a78d33          	sub	s10,a5,s10
     e30:	000c0593          	mv	a1,s8
     e34:	000d0513          	mv	a0,s10
     e38:	158000ef          	jal	f90 <__hidden___udivsi3>
     e3c:	00050593          	mv	a1,a0
     e40:	00050d93          	mv	s11,a0
     e44:	000c8513          	mv	a0,s9
     e48:	11c000ef          	jal	f64 <__mulsi3>
     e4c:	000c0593          	mv	a1,s8
     e50:	00050c93          	mv	s9,a0
     e54:	000d0513          	mv	a0,s10
     e58:	180000ef          	jal	fd8 <__umodsi3>
     e5c:	01041593          	sll	a1,s0,0x10
     e60:	01051513          	sll	a0,a0,0x10
     e64:	0105d593          	srl	a1,a1,0x10
     e68:	00a5e5b3          	or	a1,a1,a0
     e6c:	000d8713          	mv	a4,s11
     e70:	0195fe63          	bgeu	a1,s9,e8c <__moddi3+0x440>
     e74:	00bb85b3          	add	a1,s7,a1
     e78:	fffd8713          	add	a4,s11,-1
     e7c:	0175e863          	bltu	a1,s7,e8c <__moddi3+0x440>
     e80:	0195f663          	bgeu	a1,s9,e8c <__moddi3+0x440>
     e84:	ffed8713          	add	a4,s11,-2
     e88:	017585b3          	add	a1,a1,s7
     e8c:	00010337          	lui	t1,0x10
     e90:	010b1b13          	sll	s6,s6,0x10
     e94:	00eb6b33          	or	s6,s6,a4
     e98:	fff30713          	add	a4,t1,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82e7>
     e9c:	00eb7e33          	and	t3,s6,a4
     ea0:	00eaf733          	and	a4,s5,a4
     ea4:	419587b3          	sub	a5,a1,s9
     ea8:	010b5b13          	srl	s6,s6,0x10
     eac:	010ad893          	srl	a7,s5,0x10
     eb0:	000e0513          	mv	a0,t3
     eb4:	00070593          	mv	a1,a4
     eb8:	0ac000ef          	jal	f64 <__mulsi3>
     ebc:	00050813          	mv	a6,a0
     ec0:	00088593          	mv	a1,a7
     ec4:	000e0513          	mv	a0,t3
     ec8:	09c000ef          	jal	f64 <__mulsi3>
     ecc:	00050413          	mv	s0,a0
     ed0:	00070593          	mv	a1,a4
     ed4:	000b0513          	mv	a0,s6
     ed8:	08c000ef          	jal	f64 <__mulsi3>
     edc:	00050713          	mv	a4,a0
     ee0:	00088593          	mv	a1,a7
     ee4:	000b0513          	mv	a0,s6
     ee8:	07c000ef          	jal	f64 <__mulsi3>
     eec:	00e40433          	add	s0,s0,a4
     ef0:	01085693          	srl	a3,a6,0x10
     ef4:	00d40433          	add	s0,s0,a3
     ef8:	00e47463          	bgeu	s0,a4,f00 <__moddi3+0x4b4>
     efc:	00650533          	add	a0,a0,t1
     f00:	000106b7          	lui	a3,0x10
     f04:	fff68693          	add	a3,a3,-1 # ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x82e7>
     f08:	01045713          	srl	a4,s0,0x10
     f0c:	00d47433          	and	s0,s0,a3
     f10:	01041413          	sll	s0,s0,0x10
     f14:	00d87833          	and	a6,a6,a3
     f18:	00a70733          	add	a4,a4,a0
     f1c:	01040433          	add	s0,s0,a6
     f20:	00e7e663          	bltu	a5,a4,f2c <__moddi3+0x4e0>
     f24:	00e79e63          	bne	a5,a4,f40 <__moddi3+0x4f4>
     f28:	00897c63          	bgeu	s2,s0,f40 <__moddi3+0x4f4>
     f2c:	41540ab3          	sub	s5,s0,s5
     f30:	015436b3          	sltu	a3,s0,s5
     f34:	017686b3          	add	a3,a3,s7
     f38:	000a8413          	mv	s0,s5
     f3c:	40d70733          	sub	a4,a4,a3
     f40:	40890433          	sub	s0,s2,s0
     f44:	00893933          	sltu	s2,s2,s0
     f48:	40e785b3          	sub	a1,a5,a4
     f4c:	412585b3          	sub	a1,a1,s2
     f50:	01459a33          	sll	s4,a1,s4
     f54:	01345433          	srl	s0,s0,s3
     f58:	008a6533          	or	a0,s4,s0
     f5c:	0135d5b3          	srl	a1,a1,s3
     f60:	c5dff06f          	j	bbc <__moddi3+0x170>

00000f64 <__mulsi3>:
     f64:	00050613          	mv	a2,a0
     f68:	00000513          	li	a0,0
     f6c:	0015f693          	and	a3,a1,1
     f70:	00068463          	beqz	a3,f78 <__mulsi3+0x14>
     f74:	00c50533          	add	a0,a0,a2
     f78:	0015d593          	srl	a1,a1,0x1
     f7c:	00161613          	sll	a2,a2,0x1
     f80:	fe0596e3          	bnez	a1,f6c <__mulsi3+0x8>
     f84:	00008067          	ret

00000f88 <__divsi3>:
     f88:	06054063          	bltz	a0,fe8 <__umodsi3+0x10>
     f8c:	0605c663          	bltz	a1,ff8 <__umodsi3+0x20>

00000f90 <__hidden___udivsi3>:
     f90:	00058613          	mv	a2,a1
     f94:	00050593          	mv	a1,a0
     f98:	fff00513          	li	a0,-1
     f9c:	02060c63          	beqz	a2,fd4 <__hidden___udivsi3+0x44>
     fa0:	00100693          	li	a3,1
     fa4:	00b67a63          	bgeu	a2,a1,fb8 <__hidden___udivsi3+0x28>
     fa8:	00c05863          	blez	a2,fb8 <__hidden___udivsi3+0x28>
     fac:	00161613          	sll	a2,a2,0x1
     fb0:	00169693          	sll	a3,a3,0x1
     fb4:	feb66ae3          	bltu	a2,a1,fa8 <__hidden___udivsi3+0x18>
     fb8:	00000513          	li	a0,0
     fbc:	00c5e663          	bltu	a1,a2,fc8 <__hidden___udivsi3+0x38>
     fc0:	40c585b3          	sub	a1,a1,a2
     fc4:	00d56533          	or	a0,a0,a3
     fc8:	0016d693          	srl	a3,a3,0x1
     fcc:	00165613          	srl	a2,a2,0x1
     fd0:	fe0696e3          	bnez	a3,fbc <__hidden___udivsi3+0x2c>
     fd4:	00008067          	ret

00000fd8 <__umodsi3>:
     fd8:	00008293          	mv	t0,ra
     fdc:	fb5ff0ef          	jal	f90 <__hidden___udivsi3>
     fe0:	00058513          	mv	a0,a1
     fe4:	00028067          	jr	t0
     fe8:	40a00533          	neg	a0,a0
     fec:	00b04863          	bgtz	a1,ffc <__umodsi3+0x24>
     ff0:	40b005b3          	neg	a1,a1
     ff4:	f9dff06f          	j	f90 <__hidden___udivsi3>
     ff8:	40b005b3          	neg	a1,a1
     ffc:	00008293          	mv	t0,ra
    1000:	f91ff0ef          	jal	f90 <__hidden___udivsi3>
    1004:	40a00533          	neg	a0,a0
    1008:	00028067          	jr	t0

0000100c <__modsi3>:
    100c:	00008293          	mv	t0,ra
    1010:	0005ca63          	bltz	a1,1024 <__modsi3+0x18>
    1014:	00054c63          	bltz	a0,102c <__modsi3+0x20>
    1018:	f79ff0ef          	jal	f90 <__hidden___udivsi3>
    101c:	00058513          	mv	a0,a1
    1020:	00028067          	jr	t0
    1024:	40b005b3          	neg	a1,a1
    1028:	fe0558e3          	bgez	a0,1018 <__modsi3+0xc>
    102c:	40a00533          	neg	a0,a0
    1030:	f61ff0ef          	jal	f90 <__hidden___udivsi3>
    1034:	40b00533          	neg	a0,a1
    1038:	00028067          	jr	t0

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
    7790:	87df90ef          	jal	100c <__modsi3>
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
    77d0:	fb8f90ef          	jal	f88 <__divsi3>
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
    78e4:	968f90ef          	jal	a4c <__moddi3>
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
    7934:	afdf80ef          	jal	430 <__divdi3>
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
    7a28:	00078513          	mv	a0,a5
    7a2c:	ab1ff0ef          	jal	74dc <_Z10uart_printPKc>
    7a30:	fe042623          	sw	zero,-20(s0)
    7a34:	06c0006f          	j	7aa0 <_Z12uart_getlinePci+0xd4>
    7a38:	fd842783          	lw	a5,-40(s0)
    7a3c:	fff78793          	add	a5,a5,-1 # 2ffff <_Z17cmd_arg_tokenizerPcS_S_ii+0x282e7>
    7a40:	fec42703          	lw	a4,-20(s0)
    7a44:	faf754e3          	bge	a4,a5,79ec <_Z12uart_getlinePci+0x20>
    7a48:	feb44783          	lbu	a5,-21(s0)
    7a4c:	02078263          	beqz	a5,7a70 <_Z12uart_getlinePci+0xa4>
    7a50:	feb44703          	lbu	a4,-21(s0)
    7a54:	fdc42683          	lw	a3,-36(s0)
    7a58:	fec42783          	lw	a5,-20(s0)
    7a5c:	00178613          	add	a2,a5,1
    7a60:	fec42623          	sw	a2,-20(s0)
    7a64:	00f687b3          	add	a5,a3,a5
    7a68:	00e78023          	sb	a4,0(a5)
    7a6c:	f81ff06f          	j	79ec <_Z12uart_getlinePci+0x20>
    7a70:	fd842783          	lw	a5,-40(s0)
    7a74:	fff78793          	add	a5,a5,-1
    7a78:	fdc42703          	lw	a4,-36(s0)
    7a7c:	00f707b3          	add	a5,a4,a5
    7a80:	00078023          	sb	zero,0(a5)
    7a84:	000307b7          	lui	a5,0x30
    7a88:	00878513          	add	a0,a5,8 # 30008 <_Z17cmd_arg_tokenizerPcS_S_ii+0x282f0>
    7a8c:	a51ff0ef          	jal	74dc <_Z10uart_printPKc>
    7a90:	fd842583          	lw	a1,-40(s0)
    7a94:	fdc42503          	lw	a0,-36(s0)
    7a98:	c05ff0ef          	jal	769c <_Z11dump_bufferPKci>
    7a9c:	fe042623          	sw	zero,-20(s0)
    7aa0:	00000013          	nop
    7aa4:	02c12083          	lw	ra,44(sp)
    7aa8:	02812403          	lw	s0,40(sp)
    7aac:	03010113          	add	sp,sp,48
    7ab0:	00008067          	ret

00007ab4 <_Z6strcmpPKcS0_>:
    7ab4:	fd010113          	add	sp,sp,-48
    7ab8:	02812623          	sw	s0,44(sp)
    7abc:	03010413          	add	s0,sp,48
    7ac0:	fca42e23          	sw	a0,-36(s0)
    7ac4:	fcb42c23          	sw	a1,-40(s0)
    7ac8:	fe042623          	sw	zero,-20(s0)
    7acc:	fec42783          	lw	a5,-20(s0)
    7ad0:	fdc42703          	lw	a4,-36(s0)
    7ad4:	00f707b3          	add	a5,a4,a5
    7ad8:	0007c703          	lbu	a4,0(a5)
    7adc:	fec42783          	lw	a5,-20(s0)
    7ae0:	fd842683          	lw	a3,-40(s0)
    7ae4:	00f687b3          	add	a5,a3,a5
    7ae8:	0007c783          	lbu	a5,0(a5)
    7aec:	02f70863          	beq	a4,a5,7b1c <_Z6strcmpPKcS0_+0x68>
    7af0:	fec42783          	lw	a5,-20(s0)
    7af4:	fdc42703          	lw	a4,-36(s0)
    7af8:	00f707b3          	add	a5,a4,a5
    7afc:	0007c783          	lbu	a5,0(a5)
    7b00:	00078693          	mv	a3,a5
    7b04:	fec42783          	lw	a5,-20(s0)
    7b08:	fd842703          	lw	a4,-40(s0)
    7b0c:	00f707b3          	add	a5,a4,a5
    7b10:	0007c783          	lbu	a5,0(a5)
    7b14:	40f687b3          	sub	a5,a3,a5
    7b18:	0300006f          	j	7b48 <_Z6strcmpPKcS0_+0x94>
    7b1c:	fec42783          	lw	a5,-20(s0)
    7b20:	fdc42703          	lw	a4,-36(s0)
    7b24:	00f707b3          	add	a5,a4,a5
    7b28:	0007c783          	lbu	a5,0(a5)
    7b2c:	00079663          	bnez	a5,7b38 <_Z6strcmpPKcS0_+0x84>
    7b30:	00000793          	li	a5,0
    7b34:	0140006f          	j	7b48 <_Z6strcmpPKcS0_+0x94>
    7b38:	fec42783          	lw	a5,-20(s0)
    7b3c:	00178793          	add	a5,a5,1
    7b40:	fef42623          	sw	a5,-20(s0)
    7b44:	f89ff06f          	j	7acc <_Z6strcmpPKcS0_+0x18>
    7b48:	00078513          	mv	a0,a5
    7b4c:	02c12403          	lw	s0,44(sp)
    7b50:	03010113          	add	sp,sp,48
    7b54:	00008067          	ret

00007b58 <_Z7strncmpPKcS0_i>:
    7b58:	fd010113          	add	sp,sp,-48
    7b5c:	02812623          	sw	s0,44(sp)
    7b60:	03010413          	add	s0,sp,48
    7b64:	fca42e23          	sw	a0,-36(s0)
    7b68:	fcb42c23          	sw	a1,-40(s0)
    7b6c:	fcc42a23          	sw	a2,-44(s0)
    7b70:	fe042623          	sw	zero,-20(s0)
    7b74:	07c0006f          	j	7bf0 <_Z7strncmpPKcS0_i+0x98>
    7b78:	fec42783          	lw	a5,-20(s0)
    7b7c:	fdc42703          	lw	a4,-36(s0)
    7b80:	00f707b3          	add	a5,a4,a5
    7b84:	0007c703          	lbu	a4,0(a5)
    7b88:	fec42783          	lw	a5,-20(s0)
    7b8c:	fd842683          	lw	a3,-40(s0)
    7b90:	00f687b3          	add	a5,a3,a5
    7b94:	0007c783          	lbu	a5,0(a5)
    7b98:	02f70863          	beq	a4,a5,7bc8 <_Z7strncmpPKcS0_i+0x70>
    7b9c:	fec42783          	lw	a5,-20(s0)
    7ba0:	fdc42703          	lw	a4,-36(s0)
    7ba4:	00f707b3          	add	a5,a4,a5
    7ba8:	0007c783          	lbu	a5,0(a5)
    7bac:	00078693          	mv	a3,a5
    7bb0:	fec42783          	lw	a5,-20(s0)
    7bb4:	fd842703          	lw	a4,-40(s0)
    7bb8:	00f707b3          	add	a5,a4,a5
    7bbc:	0007c783          	lbu	a5,0(a5)
    7bc0:	40f687b3          	sub	a5,a3,a5
    7bc4:	03c0006f          	j	7c00 <_Z7strncmpPKcS0_i+0xa8>
    7bc8:	fec42783          	lw	a5,-20(s0)
    7bcc:	fdc42703          	lw	a4,-36(s0)
    7bd0:	00f707b3          	add	a5,a4,a5
    7bd4:	0007c783          	lbu	a5,0(a5)
    7bd8:	00079663          	bnez	a5,7be4 <_Z7strncmpPKcS0_i+0x8c>
    7bdc:	00000793          	li	a5,0
    7be0:	0200006f          	j	7c00 <_Z7strncmpPKcS0_i+0xa8>
    7be4:	fec42783          	lw	a5,-20(s0)
    7be8:	00178793          	add	a5,a5,1
    7bec:	fef42623          	sw	a5,-20(s0)
    7bf0:	fec42703          	lw	a4,-20(s0)
    7bf4:	fd442783          	lw	a5,-44(s0)
    7bf8:	f8f740e3          	blt	a4,a5,7b78 <_Z7strncmpPKcS0_i+0x20>
    7bfc:	00000793          	li	a5,0
    7c00:	00078513          	mv	a0,a5
    7c04:	02c12403          	lw	s0,44(sp)
    7c08:	03010113          	add	sp,sp,48
    7c0c:	00008067          	ret

00007c10 <_Z15process_commandPcS_PVb>:
    7c10:	fe010113          	add	sp,sp,-32
    7c14:	00112e23          	sw	ra,28(sp)
    7c18:	00812c23          	sw	s0,24(sp)
    7c1c:	02010413          	add	s0,sp,32
    7c20:	fea42623          	sw	a0,-20(s0)
    7c24:	feb42423          	sw	a1,-24(s0)
    7c28:	fec42223          	sw	a2,-28(s0)
    7c2c:	fec42783          	lw	a5,-20(s0)
    7c30:	0007c783          	lbu	a5,0(a5)
    7c34:	0c078863          	beqz	a5,7d04 <_Z15process_commandPcS_PVb+0xf4>
    7c38:	000307b7          	lui	a5,0x30
    7c3c:	01c78593          	add	a1,a5,28 # 3001c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28304>
    7c40:	fec42503          	lw	a0,-20(s0)
    7c44:	e71ff0ef          	jal	7ab4 <_Z6strcmpPKcS0_>
    7c48:	00050793          	mv	a5,a0
    7c4c:	0017b793          	seqz	a5,a5
    7c50:	0ff7f793          	zext.b	a5,a5
    7c54:	00078863          	beqz	a5,7c64 <_Z15process_commandPcS_PVb+0x54>
    7c58:	fe842503          	lw	a0,-24(s0)
    7c5c:	ee8f80ef          	jal	344 <_Z8cmd_echoPc>
    7c60:	0a80006f          	j	7d08 <_Z15process_commandPcS_PVb+0xf8>
    7c64:	000307b7          	lui	a5,0x30
    7c68:	02478593          	add	a1,a5,36 # 30024 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2830c>
    7c6c:	fec42503          	lw	a0,-20(s0)
    7c70:	e45ff0ef          	jal	7ab4 <_Z6strcmpPKcS0_>
    7c74:	00050793          	mv	a5,a0
    7c78:	0017b793          	seqz	a5,a5
    7c7c:	0ff7f793          	zext.b	a5,a5
    7c80:	00078863          	beqz	a5,7c90 <_Z15process_commandPcS_PVb+0x80>
    7c84:	fe842503          	lw	a0,-24(s0)
    7c88:	ef8f80ef          	jal	380 <_Z8cmd_helpPc>
    7c8c:	07c0006f          	j	7d08 <_Z15process_commandPcS_PVb+0xf8>
    7c90:	000307b7          	lui	a5,0x30
    7c94:	02c78593          	add	a1,a5,44 # 3002c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28314>
    7c98:	fec42503          	lw	a0,-20(s0)
    7c9c:	e19ff0ef          	jal	7ab4 <_Z6strcmpPKcS0_>
    7ca0:	00050793          	mv	a5,a0
    7ca4:	0017b793          	seqz	a5,a5
    7ca8:	0ff7f793          	zext.b	a5,a5
    7cac:	00078663          	beqz	a5,7cb8 <_Z15process_commandPcS_PVb+0xa8>
    7cb0:	d0cf80ef          	jal	1bc <_Z8cmd_freev>
    7cb4:	0540006f          	j	7d08 <_Z15process_commandPcS_PVb+0xf8>
    7cb8:	000307b7          	lui	a5,0x30
    7cbc:	03478593          	add	a1,a5,52 # 30034 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2831c>
    7cc0:	fec42503          	lw	a0,-20(s0)
    7cc4:	df1ff0ef          	jal	7ab4 <_Z6strcmpPKcS0_>
    7cc8:	00050793          	mv	a5,a0
    7ccc:	0017b793          	seqz	a5,a5
    7cd0:	0ff7f793          	zext.b	a5,a5
    7cd4:	00078a63          	beqz	a5,7ce8 <_Z15process_commandPcS_PVb+0xd8>
    7cd8:	fe442583          	lw	a1,-28(s0)
    7cdc:	fe842503          	lw	a0,-24(s0)
    7ce0:	f10f80ef          	jal	3f0 <_Z8cmd_exitPcPVb>
    7ce4:	0240006f          	j	7d08 <_Z15process_commandPcS_PVb+0xf8>
    7ce8:	000307b7          	lui	a5,0x30
    7cec:	03c78513          	add	a0,a5,60 # 3003c <_Z17cmd_arg_tokenizerPcS_S_ii+0x28324>
    7cf0:	fecff0ef          	jal	74dc <_Z10uart_printPKc>
    7cf4:	000307b7          	lui	a5,0x30
    7cf8:	04078513          	add	a0,a5,64 # 30040 <_Z17cmd_arg_tokenizerPcS_S_ii+0x28328>
    7cfc:	fe0ff0ef          	jal	74dc <_Z10uart_printPKc>
    7d00:	0080006f          	j	7d08 <_Z15process_commandPcS_PVb+0xf8>
    7d04:	00000013          	nop
    7d08:	01c12083          	lw	ra,28(sp)
    7d0c:	01812403          	lw	s0,24(sp)
    7d10:	02010113          	add	sp,sp,32
    7d14:	00008067          	ret

00007d18 <_Z17cmd_arg_tokenizerPcS_S_ii>:
    7d18:	fc010113          	add	sp,sp,-64
    7d1c:	02812e23          	sw	s0,60(sp)
    7d20:	04010413          	add	s0,sp,64
    7d24:	fca42e23          	sw	a0,-36(s0)
    7d28:	fcb42c23          	sw	a1,-40(s0)
    7d2c:	fcc42a23          	sw	a2,-44(s0)
    7d30:	fcd42823          	sw	a3,-48(s0)
    7d34:	fce42623          	sw	a4,-52(s0)
    7d38:	fe042623          	sw	zero,-20(s0)
    7d3c:	fe042423          	sw	zero,-24(s0)
    7d40:	02c0006f          	j	7d6c <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    7d44:	fdc42783          	lw	a5,-36(s0)
    7d48:	00178713          	add	a4,a5,1
    7d4c:	fce42e23          	sw	a4,-36(s0)
    7d50:	0007c703          	lbu	a4,0(a5)
    7d54:	fd842683          	lw	a3,-40(s0)
    7d58:	fec42783          	lw	a5,-20(s0)
    7d5c:	00178613          	add	a2,a5,1
    7d60:	fec42623          	sw	a2,-20(s0)
    7d64:	00f687b3          	add	a5,a3,a5
    7d68:	00e78023          	sb	a4,0(a5)
    7d6c:	fdc42783          	lw	a5,-36(s0)
    7d70:	0007c783          	lbu	a5,0(a5)
    7d74:	02078263          	beqz	a5,7d98 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    7d78:	fdc42783          	lw	a5,-36(s0)
    7d7c:	0007c703          	lbu	a4,0(a5)
    7d80:	02000793          	li	a5,32
    7d84:	00f70a63          	beq	a4,a5,7d98 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    7d88:	fd042783          	lw	a5,-48(s0)
    7d8c:	fff78793          	add	a5,a5,-1
    7d90:	fec42703          	lw	a4,-20(s0)
    7d94:	faf748e3          	blt	a4,a5,7d44 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    7d98:	fec42783          	lw	a5,-20(s0)
    7d9c:	fd842703          	lw	a4,-40(s0)
    7da0:	00f707b3          	add	a5,a4,a5
    7da4:	00078023          	sb	zero,0(a5)
    7da8:	0100006f          	j	7db8 <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    7dac:	fdc42783          	lw	a5,-36(s0)
    7db0:	00178793          	add	a5,a5,1
    7db4:	fcf42e23          	sw	a5,-36(s0)
    7db8:	fdc42783          	lw	a5,-36(s0)
    7dbc:	0007c703          	lbu	a4,0(a5)
    7dc0:	02000793          	li	a5,32
    7dc4:	fef704e3          	beq	a4,a5,7dac <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    7dc8:	02c0006f          	j	7df4 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    7dcc:	fdc42783          	lw	a5,-36(s0)
    7dd0:	00178713          	add	a4,a5,1
    7dd4:	fce42e23          	sw	a4,-36(s0)
    7dd8:	0007c703          	lbu	a4,0(a5)
    7ddc:	fd442683          	lw	a3,-44(s0)
    7de0:	fe842783          	lw	a5,-24(s0)
    7de4:	00178613          	add	a2,a5,1
    7de8:	fec42423          	sw	a2,-24(s0)
    7dec:	00f687b3          	add	a5,a3,a5
    7df0:	00e78023          	sb	a4,0(a5)
    7df4:	fdc42783          	lw	a5,-36(s0)
    7df8:	0007c783          	lbu	a5,0(a5)
    7dfc:	00078a63          	beqz	a5,7e10 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    7e00:	fcc42783          	lw	a5,-52(s0)
    7e04:	fff78793          	add	a5,a5,-1
    7e08:	fe842703          	lw	a4,-24(s0)
    7e0c:	fcf740e3          	blt	a4,a5,7dcc <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    7e10:	fe842783          	lw	a5,-24(s0)
    7e14:	fd442703          	lw	a4,-44(s0)
    7e18:	00f707b3          	add	a5,a4,a5
    7e1c:	00078023          	sb	zero,0(a5)
    7e20:	00000013          	nop
    7e24:	03c12403          	lw	s0,60(sp)
    7e28:	04010113          	add	sp,sp,64
    7e2c:	00008067          	ret
