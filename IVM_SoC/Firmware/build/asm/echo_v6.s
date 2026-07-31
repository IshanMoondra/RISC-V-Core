
/out/echo_v6.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	00035197          	auipc	gp,0x35
      10:	ff418193          	add	gp,gp,-12 # 35000 <__dso_handle>
      14:	00000013          	nop
      18:	000367b7          	lui	a5,0x36
      1c:	80078093          	add	ra,a5,-2048 # 35800 <__malloc_current_mallinfo>
      20:	00c0006f          	j	2c <_start+0x2c>
      24:	0000a023          	sw	zero,0(ra)
      28:	00408093          	add	ra,ra,4
      2c:	000407b7          	lui	a5,0x40
      30:	00078793          	mv	a5,a5
      34:	fef0e8e3          	bltu	ra,a5,24 <_start+0x24>
      38:	000357b7          	lui	a5,0x35
      3c:	00078093          	mv	ra,a5
      40:	00c0006f          	j	4c <_start+0x4c>
      44:	0000a023          	sw	zero,0(ra)
      48:	00408093          	add	ra,ra,4
      4c:	000357b7          	lui	a5,0x35
      50:	03578793          	add	a5,a5,53 # 35035 <__sbss_end>
      54:	fef0e8e3          	bltu	ra,a5,44 <_start+0x44>
      58:	000357b7          	lui	a5,0x35
      5c:	00034737          	lui	a4,0x34
      60:	41870713          	add	a4,a4,1048 # 34418 <_impure_data>
      64:	80e7a623          	sw	a4,-2036(a5) # 3480c <_impure_ptr>
      68:	000357b7          	lui	a5,0x35
      6c:	80c7a783          	lw	a5,-2036(a5) # 3480c <_impure_ptr>
      70:	03478793          	add	a5,a5,52
      74:	0007a023          	sw	zero,0(a5)
      78:	000357b7          	lui	a5,0x35
      7c:	80c7a783          	lw	a5,-2036(a5) # 3480c <_impure_ptr>
      80:	00078513          	mv	a0,a5
      84:	1a1030ef          	jal	3a24 <__sinit>
      88:	00000013          	nop
      8c:	000307b7          	lui	a5,0x30
      90:	20c78513          	add	a0,a5,524 # 3020c <__fini_array_end+0x2aa0c>
      94:	41c010ef          	jal	14b0 <_Z10uart_printPKc>
      98:	000357b7          	lui	a5,0x35
      9c:	80c78793          	add	a5,a5,-2036 # 3480c <_impure_ptr>
      a0:	0007a783          	lw	a5,0(a5)
      a4:	00078513          	mv	a0,a5
      a8:	7c0010ef          	jal	1868 <_Z16uart_print_hex32i>
      ac:	00000013          	nop
      b0:	000307b7          	lui	a5,0x30
      b4:	22478513          	add	a0,a5,548 # 30224 <__fini_array_end+0x2aa24>
      b8:	3f8010ef          	jal	14b0 <_Z10uart_printPKc>
      bc:	000357b7          	lui	a5,0x35
      c0:	80c7a783          	lw	a5,-2036(a5) # 3480c <_impure_ptr>
      c4:	00036737          	lui	a4,0x36
      c8:	82870713          	add	a4,a4,-2008 # 35828 <__sf>
      cc:	00e7a223          	sw	a4,4(a5)
      d0:	000357b7          	lui	a5,0x35
      d4:	80c7a783          	lw	a5,-2036(a5) # 3480c <_impure_ptr>
      d8:	00036737          	lui	a4,0x36
      dc:	89070713          	add	a4,a4,-1904 # 35890 <__sf+0x68>
      e0:	00e7a423          	sw	a4,8(a5)
      e4:	000357b7          	lui	a5,0x35
      e8:	80c7a783          	lw	a5,-2036(a5) # 3480c <_impure_ptr>
      ec:	00036737          	lui	a4,0x36
      f0:	8f870713          	add	a4,a4,-1800 # 358f8 <__sf+0xd0>
      f4:	00e7a623          	sw	a4,12(a5)
      f8:	6ed030ef          	jal	3fe4 <__libc_init_array>
      fc:	00000013          	nop
     100:	000307b7          	lui	a5,0x30
     104:	25c78513          	add	a0,a5,604 # 3025c <__fini_array_end+0x2aa5c>
     108:	3a8010ef          	jal	14b0 <_Z10uart_printPKc>
     10c:	000357b7          	lui	a5,0x35
     110:	80c78793          	add	a5,a5,-2036 # 3480c <_impure_ptr>
     114:	0007a783          	lw	a5,0(a5)
     118:	00078513          	mv	a0,a5
     11c:	74c010ef          	jal	1868 <_Z16uart_print_hex32i>
     120:	00000013          	nop
     124:	03200613          	li	a2,50
     128:	001005b7          	lui	a1,0x100
     12c:	00000513          	li	a0,0
     130:	0c0000ef          	jal	1f0 <_Z10soc_bootupiii>
     134:	000307b7          	lui	a5,0x30
     138:	27878513          	add	a0,a5,632 # 30278 <__fini_array_end+0x2aa78>
     13c:	374010ef          	jal	14b0 <_Z10uart_printPKc>
     140:	000357b7          	lui	a5,0x35
     144:	80c78793          	add	a5,a5,-2036 # 3480c <_impure_ptr>
     148:	0007a783          	lw	a5,0(a5)
     14c:	00078513          	mv	a0,a5
     150:	718010ef          	jal	1868 <_Z16uart_print_hex32i>
     154:	00000013          	nop
     158:	1bc000ef          	jal	314 <main>
     15c:	00050793          	mv	a5,a0
     160:	00078993          	mv	s3,a5
     164:	000307b7          	lui	a5,0x30
     168:	29478513          	add	a0,a5,660 # 30294 <__fini_array_end+0x2aa94>
     16c:	344010ef          	jal	14b0 <_Z10uart_printPKc>
     170:	000357b7          	lui	a5,0x35
     174:	80c78793          	add	a5,a5,-2036 # 3480c <_impure_ptr>
     178:	0007a783          	lw	a5,0(a5)
     17c:	00078513          	mv	a0,a5
     180:	6e8010ef          	jal	1868 <_Z16uart_print_hex32i>
     184:	00000013          	nop
     188:	000357b7          	lui	a5,0x35
     18c:	80c7a903          	lw	s2,-2036(a5) # 3480c <_impure_ptr>
     190:	000307b7          	lui	a5,0x30
     194:	2a878513          	add	a0,a5,680 # 302a8 <__fini_array_end+0x2aaa8>
     198:	318010ef          	jal	14b0 <_Z10uart_printPKc>
     19c:	00000493          	li	s1,0
     1a0:	0400006f          	j	1e0 <_start+0x1e0>
     1a4:	00048793          	mv	a5,s1
     1a8:	00279793          	sll	a5,a5,0x2
     1ac:	00f907b3          	add	a5,s2,a5
     1b0:	0007a703          	lw	a4,0(a5)
     1b4:	000357b7          	lui	a5,0x35
     1b8:	86878793          	add	a5,a5,-1944 # 34868 <_impure_ptr+0x5c>
     1bc:	02f71063          	bne	a4,a5,1dc <_start+0x1dc>
     1c0:	000307b7          	lui	a5,0x30
     1c4:	2cc78513          	add	a0,a5,716 # 302cc <__fini_array_end+0x2aacc>
     1c8:	2e8010ef          	jal	14b0 <_Z10uart_printPKc>
     1cc:	00249793          	sll	a5,s1,0x2
     1d0:	00078513          	mv	a0,a5
     1d4:	694010ef          	jal	1868 <_Z16uart_print_hex32i>
     1d8:	00000013          	nop
     1dc:	00148493          	add	s1,s1,1
     1e0:	04700793          	li	a5,71
     1e4:	fc97d0e3          	bge	a5,s1,1a4 <_start+0x1a4>
     1e8:	00098513          	mv	a0,s3
     1ec:	76c000ef          	jal	958 <_exit>

000001f0 <_Z10soc_bootupiii>:
     1f0:	fd010113          	add	sp,sp,-48
     1f4:	02112623          	sw	ra,44(sp)
     1f8:	02812423          	sw	s0,40(sp)
     1fc:	03010413          	add	s0,sp,48
     200:	fca42e23          	sw	a0,-36(s0)
     204:	fcb42c23          	sw	a1,-40(s0)
     208:	fcc42a23          	sw	a2,-44(s0)
     20c:	002017b7          	lui	a5,0x201
     210:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
     214:	fdc42703          	lw	a4,-36(s0)
     218:	00e7a023          	sw	a4,0(a5)
     21c:	002017b7          	lui	a5,0x201
     220:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
     224:	fd842703          	lw	a4,-40(s0)
     228:	00e7a023          	sw	a4,0(a5)
     22c:	002017b7          	lui	a5,0x201
     230:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
     234:	fd442703          	lw	a4,-44(s0)
     238:	00e7a023          	sw	a4,0(a5)
     23c:	000307b7          	lui	a5,0x30
     240:	1cc78513          	add	a0,a5,460 # 301cc <__fini_array_end+0x2a9cc>
     244:	26c010ef          	jal	14b0 <_Z10uart_printPKc>
     248:	01d000ef          	jal	a64 <_Z8cmd_freev>
     24c:	000307b7          	lui	a5,0x30
     250:	1d878513          	add	a0,a5,472 # 301d8 <__fini_array_end+0x2a9d8>
     254:	25c010ef          	jal	14b0 <_Z10uart_printPKc>
     258:	002017b7          	lui	a5,0x201
     25c:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
     260:	0007a703          	lw	a4,0(a5)
     264:	02000793          	li	a5,32
     268:	00f71733          	sll	a4,a4,a5
     26c:	002017b7          	lui	a5,0x201
     270:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
     274:	0007a783          	lw	a5,0(a5)
     278:	00f767b3          	or	a5,a4,a5
     27c:	fef42423          	sw	a5,-24(s0)
     280:	41f7d793          	sra	a5,a5,0x1f
     284:	fef42623          	sw	a5,-20(s0)
     288:	00000013          	nop
     28c:	fe842503          	lw	a0,-24(s0)
     290:	fec42583          	lw	a1,-20(s0)
     294:	7a4010ef          	jal	1a38 <_Z16uart_print_int64x>
     298:	00000013          	nop
     29c:	000307b7          	lui	a5,0x30
     2a0:	1f478513          	add	a0,a5,500 # 301f4 <__fini_array_end+0x2a9f4>
     2a4:	20c010ef          	jal	14b0 <_Z10uart_printPKc>
     2a8:	000307b7          	lui	a5,0x30
     2ac:	20478513          	add	a0,a5,516 # 30204 <__fini_array_end+0x2aa04>
     2b0:	200010ef          	jal	14b0 <_Z10uart_printPKc>
     2b4:	00000013          	nop
     2b8:	02c12083          	lw	ra,44(sp)
     2bc:	02812403          	lw	s0,40(sp)
     2c0:	03010113          	add	sp,sp,48
     2c4:	00008067          	ret

000002c8 <get_curr_heap>:
     2c8:	ff010113          	add	sp,sp,-16
     2cc:	00812623          	sw	s0,12(sp)
     2d0:	01010413          	add	s0,sp,16
     2d4:	000357b7          	lui	a5,0x35
     2d8:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     2dc:	00078513          	mv	a0,a5
     2e0:	00c12403          	lw	s0,12(sp)
     2e4:	01010113          	add	sp,sp,16
     2e8:	00008067          	ret

000002ec <get_sp>:
     2ec:	fe010113          	add	sp,sp,-32
     2f0:	00812e23          	sw	s0,28(sp)
     2f4:	02010413          	add	s0,sp,32
     2f8:	00010793          	mv	a5,sp
     2fc:	fef42623          	sw	a5,-20(s0)
     300:	fec42783          	lw	a5,-20(s0)
     304:	00078513          	mv	a0,a5
     308:	01c12403          	lw	s0,28(sp)
     30c:	02010113          	add	sp,sp,32
     310:	00008067          	ret

00000314 <main>:
     314:	ee010113          	add	sp,sp,-288
     318:	10112e23          	sw	ra,284(sp)
     31c:	10812c23          	sw	s0,280(sp)
     320:	12010413          	add	s0,sp,288
     324:	00100793          	li	a5,1
     328:	fef401a3          	sb	a5,-29(s0)
     32c:	05000793          	li	a5,80
     330:	fef42623          	sw	a5,-20(s0)
     334:	01800793          	li	a5,24
     338:	fef42423          	sw	a5,-24(s0)
     33c:	03800793          	li	a5,56
     340:	fef42223          	sw	a5,-28(s0)
     344:	088000ef          	jal	3cc <_Z17test_small_allocsv>
     348:	fe0401a3          	sb	zero,-29(s0)
     34c:	0580006f          	j	3a4 <main+0x90>
     350:	f6040793          	add	a5,s0,-160
     354:	fec42583          	lw	a1,-20(s0)
     358:	00078513          	mv	a0,a5
     35c:	059010ef          	jal	1bb4 <_Z12uart_getlinePci>
     360:	ee040613          	add	a2,s0,-288
     364:	f4040593          	add	a1,s0,-192
     368:	f6040793          	add	a5,s0,-160
     36c:	fe442703          	lw	a4,-28(s0)
     370:	fe842683          	lw	a3,-24(s0)
     374:	00078513          	mv	a0,a5
     378:	181010ef          	jal	1cf8 <_Z17cmd_arg_tokenizerPcS_S_ii>
     37c:	fe340693          	add	a3,s0,-29
     380:	ee040713          	add	a4,s0,-288
     384:	f4040793          	add	a5,s0,-192
     388:	00068613          	mv	a2,a3
     38c:	00070593          	mv	a1,a4
     390:	00078513          	mv	a0,a5
     394:	27d010ef          	jal	1e10 <_Z15process_commandPcS_PVb>
     398:	000307b7          	lui	a5,0x30
     39c:	00078513          	mv	a0,a5
     3a0:	110010ef          	jal	14b0 <_Z10uart_printPKc>
     3a4:	fe344783          	lbu	a5,-29(s0)
     3a8:	0ff7f793          	zext.b	a5,a5
     3ac:	fa0792e3          	bnez	a5,350 <main+0x3c>
     3b0:	fe344783          	lbu	a5,-29(s0)
     3b4:	0ff7f793          	zext.b	a5,a5
     3b8:	00078513          	mv	a0,a5
     3bc:	11c12083          	lw	ra,284(sp)
     3c0:	11812403          	lw	s0,280(sp)
     3c4:	12010113          	add	sp,sp,288
     3c8:	00008067          	ret

000003cc <_Z17test_small_allocsv>:
     3cc:	fe010113          	add	sp,sp,-32
     3d0:	00112e23          	sw	ra,28(sp)
     3d4:	00812c23          	sw	s0,24(sp)
     3d8:	02010413          	add	s0,sp,32
     3dc:	000307b7          	lui	a5,0x30
     3e0:	00878513          	add	a0,a5,8 # 30008 <__fini_array_end+0x2a808>
     3e4:	0cc010ef          	jal	14b0 <_Z10uart_printPKc>
     3e8:	f05ff0ef          	jal	2ec <get_sp>
     3ec:	00050793          	mv	a5,a0
     3f0:	00078513          	mv	a0,a5
     3f4:	474010ef          	jal	1868 <_Z16uart_print_hex32i>
     3f8:	00000013          	nop
     3fc:	000307b7          	lui	a5,0x30
     400:	02c78513          	add	a0,a5,44 # 3002c <__fini_array_end+0x2a82c>
     404:	0ac010ef          	jal	14b0 <_Z10uart_printPKc>
     408:	ec1ff0ef          	jal	2c8 <get_curr_heap>
     40c:	00050793          	mv	a5,a0
     410:	00078513          	mv	a0,a5
     414:	454010ef          	jal	1868 <_Z16uart_print_hex32i>
     418:	00000013          	nop
     41c:	000307b7          	lui	a5,0x30
     420:	04c78513          	add	a0,a5,76 # 3004c <__fini_array_end+0x2a84c>
     424:	08c010ef          	jal	14b0 <_Z10uart_printPKc>
     428:	000357b7          	lui	a5,0x35
     42c:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     430:	00078513          	mv	a0,a5
     434:	434010ef          	jal	1868 <_Z16uart_print_hex32i>
     438:	00000013          	nop
     43c:	000307b7          	lui	a5,0x30
     440:	07478513          	add	a0,a5,116 # 30074 <__fini_array_end+0x2a874>
     444:	06c010ef          	jal	14b0 <_Z10uart_printPKc>
     448:	000357b7          	lui	a5,0x35
     44c:	80078793          	add	a5,a5,-2048 # 34800 <__curr_heap_end_ptr>
     450:	00078513          	mv	a0,a5
     454:	414010ef          	jal	1868 <_Z16uart_print_hex32i>
     458:	00000013          	nop
     45c:	000307b7          	lui	a5,0x30
     460:	09478513          	add	a0,a5,148 # 30094 <__fini_array_end+0x2a894>
     464:	04c010ef          	jal	14b0 <_Z10uart_printPKc>
     468:	00100513          	li	a0,1
     46c:	1ad020ef          	jal	2e18 <malloc>
     470:	00050793          	mv	a5,a0
     474:	fef42623          	sw	a5,-20(s0)
     478:	00100513          	li	a0,1
     47c:	19d020ef          	jal	2e18 <malloc>
     480:	00050793          	mv	a5,a0
     484:	fef42423          	sw	a5,-24(s0)
     488:	00100513          	li	a0,1
     48c:	18d020ef          	jal	2e18 <malloc>
     490:	00050793          	mv	a5,a0
     494:	fef42223          	sw	a5,-28(s0)
     498:	00100513          	li	a0,1
     49c:	17d020ef          	jal	2e18 <malloc>
     4a0:	00050793          	mv	a5,a0
     4a4:	fef42023          	sw	a5,-32(s0)
     4a8:	000307b7          	lui	a5,0x30
     4ac:	0b878513          	add	a0,a5,184 # 300b8 <__fini_array_end+0x2a8b8>
     4b0:	000010ef          	jal	14b0 <_Z10uart_printPKc>
     4b4:	000307b7          	lui	a5,0x30
     4b8:	0f478513          	add	a0,a5,244 # 300f4 <__fini_array_end+0x2a8f4>
     4bc:	7f5000ef          	jal	14b0 <_Z10uart_printPKc>
     4c0:	fec42783          	lw	a5,-20(s0)
     4c4:	00078513          	mv	a0,a5
     4c8:	3a0010ef          	jal	1868 <_Z16uart_print_hex32i>
     4cc:	00000013          	nop
     4d0:	000307b7          	lui	a5,0x30
     4d4:	10478513          	add	a0,a5,260 # 30104 <__fini_array_end+0x2a904>
     4d8:	7d9000ef          	jal	14b0 <_Z10uart_printPKc>
     4dc:	fe842783          	lw	a5,-24(s0)
     4e0:	00078513          	mv	a0,a5
     4e4:	384010ef          	jal	1868 <_Z16uart_print_hex32i>
     4e8:	00000013          	nop
     4ec:	000307b7          	lui	a5,0x30
     4f0:	11478513          	add	a0,a5,276 # 30114 <__fini_array_end+0x2a914>
     4f4:	7bd000ef          	jal	14b0 <_Z10uart_printPKc>
     4f8:	fe442783          	lw	a5,-28(s0)
     4fc:	00078513          	mv	a0,a5
     500:	368010ef          	jal	1868 <_Z16uart_print_hex32i>
     504:	00000013          	nop
     508:	000307b7          	lui	a5,0x30
     50c:	12478513          	add	a0,a5,292 # 30124 <__fini_array_end+0x2a924>
     510:	7a1000ef          	jal	14b0 <_Z10uart_printPKc>
     514:	fe042783          	lw	a5,-32(s0)
     518:	00078513          	mv	a0,a5
     51c:	34c010ef          	jal	1868 <_Z16uart_print_hex32i>
     520:	00000013          	nop
     524:	000307b7          	lui	a5,0x30
     528:	13478513          	add	a0,a5,308 # 30134 <__fini_array_end+0x2a934>
     52c:	785000ef          	jal	14b0 <_Z10uart_printPKc>
     530:	534000ef          	jal	a64 <_Z8cmd_freev>
     534:	000307b7          	lui	a5,0x30
     538:	18078513          	add	a0,a5,384 # 30180 <__fini_array_end+0x2a980>
     53c:	775000ef          	jal	14b0 <_Z10uart_printPKc>
     540:	fec42503          	lw	a0,-20(s0)
     544:	0e5020ef          	jal	2e28 <free>
     548:	fe842503          	lw	a0,-24(s0)
     54c:	0dd020ef          	jal	2e28 <free>
     550:	fe442503          	lw	a0,-28(s0)
     554:	0d5020ef          	jal	2e28 <free>
     558:	fe042503          	lw	a0,-32(s0)
     55c:	0cd020ef          	jal	2e28 <free>
     560:	504000ef          	jal	a64 <_Z8cmd_freev>
     564:	00000013          	nop
     568:	01c12083          	lw	ra,28(sp)
     56c:	01812403          	lw	s0,24(sp)
     570:	02010113          	add	sp,sp,32
     574:	00008067          	ret

00000578 <stdio_exit_stub>:
     578:	ff010113          	add	sp,sp,-16
     57c:	00812623          	sw	s0,12(sp)
     580:	01010413          	add	s0,sp,16
     584:	00000013          	nop
     588:	00c12403          	lw	s0,12(sp)
     58c:	01010113          	add	sp,sp,16
     590:	00008067          	ret

00000594 <get_sp>:
     594:	fe010113          	add	sp,sp,-32
     598:	00812e23          	sw	s0,28(sp)
     59c:	02010413          	add	s0,sp,32
     5a0:	00010793          	mv	a5,sp
     5a4:	fef42623          	sw	a5,-20(s0)
     5a8:	fec42783          	lw	a5,-20(s0)
     5ac:	00078513          	mv	a0,a5
     5b0:	01c12403          	lw	s0,28(sp)
     5b4:	02010113          	add	sp,sp,32
     5b8:	00008067          	ret

000005bc <_sbrk>:
     5bc:	fd010113          	add	sp,sp,-48
     5c0:	02112623          	sw	ra,44(sp)
     5c4:	02812423          	sw	s0,40(sp)
     5c8:	03010413          	add	s0,sp,48
     5cc:	fca42e23          	sw	a0,-36(s0)
     5d0:	000357b7          	lui	a5,0x35
     5d4:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     5d8:	fef42623          	sw	a5,-20(s0)
     5dc:	fb9ff0ef          	jal	594 <get_sp>
     5e0:	fea42423          	sw	a0,-24(s0)
     5e4:	000307b7          	lui	a5,0x30
     5e8:	2e078513          	add	a0,a5,736 # 302e0 <__fini_array_end+0x2aae0>
     5ec:	6c5000ef          	jal	14b0 <_Z10uart_printPKc>
     5f0:	fdc42503          	lw	a0,-36(s0)
     5f4:	274010ef          	jal	1868 <_Z16uart_print_hex32i>
     5f8:	00000013          	nop
     5fc:	000307b7          	lui	a5,0x30
     600:	2f878513          	add	a0,a5,760 # 302f8 <__fini_array_end+0x2aaf8>
     604:	6ad000ef          	jal	14b0 <_Z10uart_printPKc>
     608:	fec42783          	lw	a5,-20(s0)
     60c:	0007c783          	lbu	a5,0(a5)
     610:	00078513          	mv	a0,a5
     614:	254010ef          	jal	1868 <_Z16uart_print_hex32i>
     618:	00000013          	nop
     61c:	000307b7          	lui	a5,0x30
     620:	31078513          	add	a0,a5,784 # 30310 <__fini_array_end+0x2ab10>
     624:	68d000ef          	jal	14b0 <_Z10uart_printPKc>
     628:	000357b7          	lui	a5,0x35
     62c:	80078793          	add	a5,a5,-2048 # 34800 <__curr_heap_end_ptr>
     630:	00078513          	mv	a0,a5
     634:	234010ef          	jal	1868 <_Z16uart_print_hex32i>
     638:	00000013          	nop
     63c:	000307b7          	lui	a5,0x30
     640:	33078513          	add	a0,a5,816 # 30330 <__fini_array_end+0x2ab30>
     644:	66d000ef          	jal	14b0 <_Z10uart_printPKc>
     648:	fe842783          	lw	a5,-24(s0)
     64c:	00078513          	mv	a0,a5
     650:	218010ef          	jal	1868 <_Z16uart_print_hex32i>
     654:	00000013          	nop
     658:	fec42783          	lw	a5,-20(s0)
     65c:	0007c783          	lbu	a5,0(a5)
     660:	00078713          	mv	a4,a5
     664:	fdc42783          	lw	a5,-36(s0)
     668:	00f707b3          	add	a5,a4,a5
     66c:	00078713          	mv	a4,a5
     670:	fe842783          	lw	a5,-24(s0)
     674:	02f76463          	bltu	a4,a5,69c <_sbrk+0xe0>
     678:	000307b7          	lui	a5,0x30
     67c:	34c78513          	add	a0,a5,844 # 3034c <__fini_array_end+0x2ab4c>
     680:	631000ef          	jal	14b0 <_Z10uart_printPKc>
     684:	155030ef          	jal	3fd8 <__errno>
     688:	00050713          	mv	a4,a0
     68c:	00c00793          	li	a5,12
     690:	00f72023          	sw	a5,0(a4)
     694:	fff00793          	li	a5,-1
     698:	0200006f          	j	6b8 <_sbrk+0xfc>
     69c:	000357b7          	lui	a5,0x35
     6a0:	8007a703          	lw	a4,-2048(a5) # 34800 <__curr_heap_end_ptr>
     6a4:	fdc42783          	lw	a5,-36(s0)
     6a8:	00f70733          	add	a4,a4,a5
     6ac:	000357b7          	lui	a5,0x35
     6b0:	80e7a023          	sw	a4,-2048(a5) # 34800 <__curr_heap_end_ptr>
     6b4:	fec42783          	lw	a5,-20(s0)
     6b8:	00078513          	mv	a0,a5
     6bc:	02c12083          	lw	ra,44(sp)
     6c0:	02812403          	lw	s0,40(sp)
     6c4:	03010113          	add	sp,sp,48
     6c8:	00008067          	ret

000006cc <_write>:
     6cc:	fd010113          	add	sp,sp,-48
     6d0:	02112623          	sw	ra,44(sp)
     6d4:	02812423          	sw	s0,40(sp)
     6d8:	03010413          	add	s0,sp,48
     6dc:	fca42e23          	sw	a0,-36(s0)
     6e0:	fcb42c23          	sw	a1,-40(s0)
     6e4:	fcc42a23          	sw	a2,-44(s0)
     6e8:	000307b7          	lui	a5,0x30
     6ec:	35c78513          	add	a0,a5,860 # 3035c <__fini_array_end+0x2ab5c>
     6f0:	5c1000ef          	jal	14b0 <_Z10uart_printPKc>
     6f4:	fe042623          	sw	zero,-20(s0)
     6f8:	02c0006f          	j	724 <_write+0x58>
     6fc:	fec42783          	lw	a5,-20(s0)
     700:	fd842703          	lw	a4,-40(s0)
     704:	00f707b3          	add	a5,a4,a5
     708:	0007c783          	lbu	a5,0(a5)
     70c:	00078513          	mv	a0,a5
     710:	53d000ef          	jal	144c <_Z9uart_putcc>
     714:	00000013          	nop
     718:	fec42783          	lw	a5,-20(s0)
     71c:	00178793          	add	a5,a5,1
     720:	fef42623          	sw	a5,-20(s0)
     724:	fec42703          	lw	a4,-20(s0)
     728:	fd442783          	lw	a5,-44(s0)
     72c:	fcf748e3          	blt	a4,a5,6fc <_write+0x30>
     730:	fd442783          	lw	a5,-44(s0)
     734:	00078513          	mv	a0,a5
     738:	02c12083          	lw	ra,44(sp)
     73c:	02812403          	lw	s0,40(sp)
     740:	03010113          	add	sp,sp,48
     744:	00008067          	ret

00000748 <_read>:
     748:	fd010113          	add	sp,sp,-48
     74c:	02112623          	sw	ra,44(sp)
     750:	02812423          	sw	s0,40(sp)
     754:	02912223          	sw	s1,36(sp)
     758:	03010413          	add	s0,sp,48
     75c:	fca42e23          	sw	a0,-36(s0)
     760:	fcb42c23          	sw	a1,-40(s0)
     764:	fcc42a23          	sw	a2,-44(s0)
     768:	fe042623          	sw	zero,-20(s0)
     76c:	0300006f          	j	79c <_read+0x54>
     770:	fec42783          	lw	a5,-20(s0)
     774:	fd842703          	lw	a4,-40(s0)
     778:	00f704b3          	add	s1,a4,a5
     77c:	00100513          	li	a0,1
     780:	455000ef          	jal	13d4 <_Z9uart_getcb>
     784:	00050793          	mv	a5,a0
     788:	00f48023          	sb	a5,0(s1)
     78c:	00000013          	nop
     790:	fec42783          	lw	a5,-20(s0)
     794:	00178793          	add	a5,a5,1
     798:	fef42623          	sw	a5,-20(s0)
     79c:	fec42703          	lw	a4,-20(s0)
     7a0:	fd442783          	lw	a5,-44(s0)
     7a4:	fcf746e3          	blt	a4,a5,770 <_read+0x28>
     7a8:	fd442783          	lw	a5,-44(s0)
     7ac:	00078513          	mv	a0,a5
     7b0:	02c12083          	lw	ra,44(sp)
     7b4:	02812403          	lw	s0,40(sp)
     7b8:	02412483          	lw	s1,36(sp)
     7bc:	03010113          	add	sp,sp,48
     7c0:	00008067          	ret

000007c4 <_close>:
     7c4:	fe010113          	add	sp,sp,-32
     7c8:	00812e23          	sw	s0,28(sp)
     7cc:	02010413          	add	s0,sp,32
     7d0:	fea42623          	sw	a0,-20(s0)
     7d4:	fff00793          	li	a5,-1
     7d8:	00078513          	mv	a0,a5
     7dc:	01c12403          	lw	s0,28(sp)
     7e0:	02010113          	add	sp,sp,32
     7e4:	00008067          	ret

000007e8 <_fstat>:
     7e8:	fe010113          	add	sp,sp,-32
     7ec:	00812e23          	sw	s0,28(sp)
     7f0:	02010413          	add	s0,sp,32
     7f4:	fea42623          	sw	a0,-20(s0)
     7f8:	feb42423          	sw	a1,-24(s0)
     7fc:	fe842783          	lw	a5,-24(s0)
     800:	00002737          	lui	a4,0x2
     804:	00e7a223          	sw	a4,4(a5)
     808:	00000793          	li	a5,0
     80c:	00078513          	mv	a0,a5
     810:	01c12403          	lw	s0,28(sp)
     814:	02010113          	add	sp,sp,32
     818:	00008067          	ret

0000081c <_isatty>:
     81c:	fe010113          	add	sp,sp,-32
     820:	00812e23          	sw	s0,28(sp)
     824:	02010413          	add	s0,sp,32
     828:	fea42623          	sw	a0,-20(s0)
     82c:	00100793          	li	a5,1
     830:	00078513          	mv	a0,a5
     834:	01c12403          	lw	s0,28(sp)
     838:	02010113          	add	sp,sp,32
     83c:	00008067          	ret

00000840 <_lseek>:
     840:	fe010113          	add	sp,sp,-32
     844:	00812e23          	sw	s0,28(sp)
     848:	02010413          	add	s0,sp,32
     84c:	fea42623          	sw	a0,-20(s0)
     850:	feb42423          	sw	a1,-24(s0)
     854:	fec42223          	sw	a2,-28(s0)
     858:	00000793          	li	a5,0
     85c:	00078513          	mv	a0,a5
     860:	01c12403          	lw	s0,28(sp)
     864:	02010113          	add	sp,sp,32
     868:	00008067          	ret

0000086c <_open>:
     86c:	fe010113          	add	sp,sp,-32
     870:	00812e23          	sw	s0,28(sp)
     874:	02010413          	add	s0,sp,32
     878:	fea42623          	sw	a0,-20(s0)
     87c:	feb42423          	sw	a1,-24(s0)
     880:	fec42223          	sw	a2,-28(s0)
     884:	fff00793          	li	a5,-1
     888:	00078513          	mv	a0,a5
     88c:	01c12403          	lw	s0,28(sp)
     890:	02010113          	add	sp,sp,32
     894:	00008067          	ret

00000898 <_kill>:
     898:	fe010113          	add	sp,sp,-32
     89c:	00112e23          	sw	ra,28(sp)
     8a0:	00812c23          	sw	s0,24(sp)
     8a4:	02010413          	add	s0,sp,32
     8a8:	fea42623          	sw	a0,-20(s0)
     8ac:	feb42423          	sw	a1,-24(s0)
     8b0:	728030ef          	jal	3fd8 <__errno>
     8b4:	00050713          	mv	a4,a0
     8b8:	01600793          	li	a5,22
     8bc:	00f72023          	sw	a5,0(a4) # 2000 <__modsi3+0x18>
     8c0:	fff00793          	li	a5,-1
     8c4:	00078513          	mv	a0,a5
     8c8:	01c12083          	lw	ra,28(sp)
     8cc:	01812403          	lw	s0,24(sp)
     8d0:	02010113          	add	sp,sp,32
     8d4:	00008067          	ret

000008d8 <_getpid>:
     8d8:	ff010113          	add	sp,sp,-16
     8dc:	00812623          	sw	s0,12(sp)
     8e0:	01010413          	add	s0,sp,16
     8e4:	00100793          	li	a5,1
     8e8:	00078513          	mv	a0,a5
     8ec:	00c12403          	lw	s0,12(sp)
     8f0:	01010113          	add	sp,sp,16
     8f4:	00008067          	ret

000008f8 <__libc_fini_array>:
     8f8:	fe010113          	add	sp,sp,-32
     8fc:	00112e23          	sw	ra,28(sp)
     900:	00812c23          	sw	s0,24(sp)
     904:	02010413          	add	s0,sp,32
     908:	000067b7          	lui	a5,0x6
     90c:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     910:	fef42623          	sw	a5,-20(s0)
     914:	01c0006f          	j	930 <__libc_fini_array+0x38>
     918:	fec42783          	lw	a5,-20(s0)
     91c:	ffc78793          	add	a5,a5,-4
     920:	fef42623          	sw	a5,-20(s0)
     924:	fec42783          	lw	a5,-20(s0)
     928:	0007a783          	lw	a5,0(a5)
     92c:	000780e7          	jalr	a5
     930:	fec42703          	lw	a4,-20(s0)
     934:	000067b7          	lui	a5,0x6
     938:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     93c:	fcf71ee3          	bne	a4,a5,918 <__libc_fini_array+0x20>
     940:	00000013          	nop
     944:	00000013          	nop
     948:	01c12083          	lw	ra,28(sp)
     94c:	01812403          	lw	s0,24(sp)
     950:	02010113          	add	sp,sp,32
     954:	00008067          	ret

00000958 <_exit>:
     958:	fe010113          	add	sp,sp,-32
     95c:	00112e23          	sw	ra,28(sp)
     960:	00812c23          	sw	s0,24(sp)
     964:	02010413          	add	s0,sp,32
     968:	fea42623          	sw	a0,-20(s0)
     96c:	f8dff0ef          	jal	8f8 <__libc_fini_array>
     970:	000307b7          	lui	a5,0x30
     974:	36c78513          	add	a0,a5,876 # 3036c <__fini_array_end+0x2ab6c>
     978:	339000ef          	jal	14b0 <_Z10uart_printPKc>
     97c:	fec42503          	lw	a0,-20(s0)
     980:	7a1000ef          	jal	1920 <_Z16uart_print_int32i>
     984:	00000013          	nop
     988:	00a00513          	li	a0,10
     98c:	2c1000ef          	jal	144c <_Z9uart_putcc>
     990:	00000013          	nop
     994:	000307b7          	lui	a5,0x30
     998:	38c78513          	add	a0,a5,908 # 3038c <__fini_array_end+0x2ab8c>
     99c:	315000ef          	jal	14b0 <_Z10uart_printPKc>
     9a0:	002017b7          	lui	a5,0x201
     9a4:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     9a8:	0007a783          	lw	a5,0(a5)
     9ac:	00078513          	mv	a0,a5
     9b0:	771000ef          	jal	1920 <_Z16uart_print_int32i>
     9b4:	00000013          	nop
     9b8:	000307b7          	lui	a5,0x30
     9bc:	3ac78513          	add	a0,a5,940 # 303ac <__fini_array_end+0x2abac>
     9c0:	2f1000ef          	jal	14b0 <_Z10uart_printPKc>
     9c4:	ffffffff          	.word	0xffffffff
     9c8:	00000013          	nop
     9cc:	01c12083          	lw	ra,28(sp)
     9d0:	01812403          	lw	s0,24(sp)
     9d4:	02010113          	add	sp,sp,32
     9d8:	00008067          	ret

000009dc <get_curr_heap>:
     9dc:	ff010113          	add	sp,sp,-16
     9e0:	00812623          	sw	s0,12(sp)
     9e4:	01010413          	add	s0,sp,16
     9e8:	000357b7          	lui	a5,0x35
     9ec:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     9f0:	00078513          	mv	a0,a5
     9f4:	00c12403          	lw	s0,12(sp)
     9f8:	01010113          	add	sp,sp,16
     9fc:	00008067          	ret

00000a00 <get_sp>:
     a00:	fe010113          	add	sp,sp,-32
     a04:	00812e23          	sw	s0,28(sp)
     a08:	02010413          	add	s0,sp,32
     a0c:	00010793          	mv	a5,sp
     a10:	fef42623          	sw	a5,-20(s0)
     a14:	fec42783          	lw	a5,-20(s0)
     a18:	00078513          	mv	a0,a5
     a1c:	01c12403          	lw	s0,28(sp)
     a20:	02010113          	add	sp,sp,32
     a24:	00008067          	ret

00000a28 <_Z14get_free_bytesv>:
     a28:	fe010113          	add	sp,sp,-32
     a2c:	00112e23          	sw	ra,28(sp)
     a30:	00812c23          	sw	s0,24(sp)
     a34:	02010413          	add	s0,sp,32
     a38:	fc9ff0ef          	jal	a00 <get_sp>
     a3c:	fea42623          	sw	a0,-20(s0)
     a40:	f9dff0ef          	jal	9dc <get_curr_heap>
     a44:	00050713          	mv	a4,a0
     a48:	fec42783          	lw	a5,-20(s0)
     a4c:	40e787b3          	sub	a5,a5,a4
     a50:	00078513          	mv	a0,a5
     a54:	01c12083          	lw	ra,28(sp)
     a58:	01812403          	lw	s0,24(sp)
     a5c:	02010113          	add	sp,sp,32
     a60:	00008067          	ret

00000a64 <_Z8cmd_freev>:
     a64:	fe010113          	add	sp,sp,-32
     a68:	00112e23          	sw	ra,28(sp)
     a6c:	00812c23          	sw	s0,24(sp)
     a70:	02010413          	add	s0,sp,32
     a74:	fb5ff0ef          	jal	a28 <_Z14get_free_bytesv>
     a78:	fea42623          	sw	a0,-20(s0)
     a7c:	fec42783          	lw	a5,-20(s0)
     a80:	00078513          	mv	a0,a5
     a84:	69d000ef          	jal	1920 <_Z16uart_print_int32i>
     a88:	00000013          	nop
     a8c:	000307b7          	lui	a5,0x30
     a90:	3bc78513          	add	a0,a5,956 # 303bc <__fini_array_end+0x2abbc>
     a94:	21d000ef          	jal	14b0 <_Z10uart_printPKc>
     a98:	00000013          	nop
     a9c:	01c12083          	lw	ra,28(sp)
     aa0:	01812403          	lw	s0,24(sp)
     aa4:	02010113          	add	sp,sp,32
     aa8:	00008067          	ret

00000aac <_Z8cmd_echoPc>:
     aac:	fe010113          	add	sp,sp,-32
     ab0:	00112e23          	sw	ra,28(sp)
     ab4:	00812c23          	sw	s0,24(sp)
     ab8:	02010413          	add	s0,sp,32
     abc:	fea42623          	sw	a0,-20(s0)
     ac0:	fec42503          	lw	a0,-20(s0)
     ac4:	1ed000ef          	jal	14b0 <_Z10uart_printPKc>
     ac8:	000307b7          	lui	a5,0x30
     acc:	3cc78513          	add	a0,a5,972 # 303cc <__fini_array_end+0x2abcc>
     ad0:	1e1000ef          	jal	14b0 <_Z10uart_printPKc>
     ad4:	00000013          	nop
     ad8:	01c12083          	lw	ra,28(sp)
     adc:	01812403          	lw	s0,24(sp)
     ae0:	02010113          	add	sp,sp,32
     ae4:	00008067          	ret

00000ae8 <_Z8cmd_helpPc>:
     ae8:	fe010113          	add	sp,sp,-32
     aec:	00112e23          	sw	ra,28(sp)
     af0:	00812c23          	sw	s0,24(sp)
     af4:	02010413          	add	s0,sp,32
     af8:	fea42623          	sw	a0,-20(s0)
     afc:	000307b7          	lui	a5,0x30
     b00:	3d078513          	add	a0,a5,976 # 303d0 <__fini_array_end+0x2abd0>
     b04:	1ad000ef          	jal	14b0 <_Z10uart_printPKc>
     b08:	000307b7          	lui	a5,0x30
     b0c:	3f078513          	add	a0,a5,1008 # 303f0 <__fini_array_end+0x2abf0>
     b10:	1a1000ef          	jal	14b0 <_Z10uart_printPKc>
     b14:	000307b7          	lui	a5,0x30
     b18:	40078513          	add	a0,a5,1024 # 30400 <__fini_array_end+0x2ac00>
     b1c:	195000ef          	jal	14b0 <_Z10uart_printPKc>
     b20:	000307b7          	lui	a5,0x30
     b24:	41078513          	add	a0,a5,1040 # 30410 <__fini_array_end+0x2ac10>
     b28:	189000ef          	jal	14b0 <_Z10uart_printPKc>
     b2c:	000307b7          	lui	a5,0x30
     b30:	42078513          	add	a0,a5,1056 # 30420 <__fini_array_end+0x2ac20>
     b34:	17d000ef          	jal	14b0 <_Z10uart_printPKc>
     b38:	000307b7          	lui	a5,0x30
     b3c:	43078513          	add	a0,a5,1072 # 30430 <__fini_array_end+0x2ac30>
     b40:	171000ef          	jal	14b0 <_Z10uart_printPKc>
     b44:	000307b7          	lui	a5,0x30
     b48:	44078513          	add	a0,a5,1088 # 30440 <__fini_array_end+0x2ac40>
     b4c:	165000ef          	jal	14b0 <_Z10uart_printPKc>
     b50:	00000013          	nop
     b54:	01c12083          	lw	ra,28(sp)
     b58:	01812403          	lw	s0,24(sp)
     b5c:	02010113          	add	sp,sp,32
     b60:	00008067          	ret

00000b64 <_Z8cmd_exitPcPVb>:
     b64:	fe010113          	add	sp,sp,-32
     b68:	00112e23          	sw	ra,28(sp)
     b6c:	00812c23          	sw	s0,24(sp)
     b70:	02010413          	add	s0,sp,32
     b74:	fea42623          	sw	a0,-20(s0)
     b78:	feb42423          	sw	a1,-24(s0)
     b7c:	000307b7          	lui	a5,0x30
     b80:	46478513          	add	a0,a5,1124 # 30464 <__fini_array_end+0x2ac64>
     b84:	12d000ef          	jal	14b0 <_Z10uart_printPKc>
     b88:	fe842783          	lw	a5,-24(s0)
     b8c:	00078023          	sb	zero,0(a5)
     b90:	00000013          	nop
     b94:	01c12083          	lw	ra,28(sp)
     b98:	01812403          	lw	s0,24(sp)
     b9c:	02010113          	add	sp,sp,32
     ba0:	00008067          	ret

00000ba4 <_Z6matmulPA3_KiPA3_iS3_>:
     ba4:	fd010113          	add	sp,sp,-48
     ba8:	02112623          	sw	ra,44(sp)
     bac:	02812423          	sw	s0,40(sp)
     bb0:	03010413          	add	s0,sp,48
     bb4:	fca42e23          	sw	a0,-36(s0)
     bb8:	fcb42c23          	sw	a1,-40(s0)
     bbc:	fcc42a23          	sw	a2,-44(s0)
     bc0:	fe042623          	sw	zero,-20(s0)
     bc4:	1080006f          	j	ccc <_Z6matmulPA3_KiPA3_iS3_+0x128>
     bc8:	fe042423          	sw	zero,-24(s0)
     bcc:	0e80006f          	j	cb4 <_Z6matmulPA3_KiPA3_iS3_+0x110>
     bd0:	fe042223          	sw	zero,-28(s0)
     bd4:	fe042023          	sw	zero,-32(s0)
     bd8:	0900006f          	j	c68 <_Z6matmulPA3_KiPA3_iS3_+0xc4>
     bdc:	fec42703          	lw	a4,-20(s0)
     be0:	00070793          	mv	a5,a4
     be4:	00179793          	sll	a5,a5,0x1
     be8:	00e787b3          	add	a5,a5,a4
     bec:	00279793          	sll	a5,a5,0x2
     bf0:	00078713          	mv	a4,a5
     bf4:	fdc42783          	lw	a5,-36(s0)
     bf8:	00e78733          	add	a4,a5,a4
     bfc:	fe042783          	lw	a5,-32(s0)
     c00:	00279793          	sll	a5,a5,0x2
     c04:	00f707b3          	add	a5,a4,a5
     c08:	0007a683          	lw	a3,0(a5)
     c0c:	fe042703          	lw	a4,-32(s0)
     c10:	00070793          	mv	a5,a4
     c14:	00179793          	sll	a5,a5,0x1
     c18:	00e787b3          	add	a5,a5,a4
     c1c:	00279793          	sll	a5,a5,0x2
     c20:	00078713          	mv	a4,a5
     c24:	fd842783          	lw	a5,-40(s0)
     c28:	00e78733          	add	a4,a5,a4
     c2c:	fe842783          	lw	a5,-24(s0)
     c30:	00279793          	sll	a5,a5,0x2
     c34:	00f707b3          	add	a5,a4,a5
     c38:	0007a783          	lw	a5,0(a5)
     c3c:	00078593          	mv	a1,a5
     c40:	00068513          	mv	a0,a3
     c44:	2fc010ef          	jal	1f40 <__mulsi3>
     c48:	00050793          	mv	a5,a0
     c4c:	00078713          	mv	a4,a5
     c50:	fe442783          	lw	a5,-28(s0)
     c54:	00e787b3          	add	a5,a5,a4
     c58:	fef42223          	sw	a5,-28(s0)
     c5c:	fe042783          	lw	a5,-32(s0)
     c60:	00178793          	add	a5,a5,1
     c64:	fef42023          	sw	a5,-32(s0)
     c68:	fe042703          	lw	a4,-32(s0)
     c6c:	00200793          	li	a5,2
     c70:	f6e7d6e3          	bge	a5,a4,bdc <_Z6matmulPA3_KiPA3_iS3_+0x38>
     c74:	fec42703          	lw	a4,-20(s0)
     c78:	00070793          	mv	a5,a4
     c7c:	00179793          	sll	a5,a5,0x1
     c80:	00e787b3          	add	a5,a5,a4
     c84:	00279793          	sll	a5,a5,0x2
     c88:	00078713          	mv	a4,a5
     c8c:	fd442783          	lw	a5,-44(s0)
     c90:	00e78733          	add	a4,a5,a4
     c94:	fe842783          	lw	a5,-24(s0)
     c98:	00279793          	sll	a5,a5,0x2
     c9c:	00f707b3          	add	a5,a4,a5
     ca0:	fe442703          	lw	a4,-28(s0)
     ca4:	00e7a023          	sw	a4,0(a5)
     ca8:	fe842783          	lw	a5,-24(s0)
     cac:	00178793          	add	a5,a5,1
     cb0:	fef42423          	sw	a5,-24(s0)
     cb4:	fe842703          	lw	a4,-24(s0)
     cb8:	00200793          	li	a5,2
     cbc:	f0e7dae3          	bge	a5,a4,bd0 <_Z6matmulPA3_KiPA3_iS3_+0x2c>
     cc0:	fec42783          	lw	a5,-20(s0)
     cc4:	00178793          	add	a5,a5,1
     cc8:	fef42623          	sw	a5,-20(s0)
     ccc:	fec42703          	lw	a4,-20(s0)
     cd0:	00200793          	li	a5,2
     cd4:	eee7dae3          	bge	a5,a4,bc8 <_Z6matmulPA3_KiPA3_iS3_+0x24>
     cd8:	00000793          	li	a5,0
     cdc:	00078513          	mv	a0,a5
     ce0:	02c12083          	lw	ra,44(sp)
     ce4:	02812403          	lw	s0,40(sp)
     ce8:	03010113          	add	sp,sp,48
     cec:	00008067          	ret

00000cf0 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>:
     cf0:	fe010113          	add	sp,sp,-32
     cf4:	00112e23          	sw	ra,28(sp)
     cf8:	00812c23          	sw	s0,24(sp)
     cfc:	02010413          	add	s0,sp,32
     d00:	fea42623          	sw	a0,-20(s0)
     d04:	fec42783          	lw	a5,-20(s0)
     d08:	0007a703          	lw	a4,0(a5)
     d0c:	fec42783          	lw	a5,-20(s0)
     d10:	0047a683          	lw	a3,4(a5)
     d14:	fec42783          	lw	a5,-20(s0)
     d18:	0087a783          	lw	a5,8(a5)
     d1c:	00078613          	mv	a2,a5
     d20:	00068593          	mv	a1,a3
     d24:	00070513          	mv	a0,a4
     d28:	e7dff0ef          	jal	ba4 <_Z6matmulPA3_KiPA3_iS3_>
     d2c:	00050793          	mv	a5,a0
     d30:	00078513          	mv	a0,a5
     d34:	01c12083          	lw	ra,28(sp)
     d38:	01812403          	lw	s0,24(sp)
     d3c:	02010113          	add	sp,sp,32
     d40:	00008067          	ret

00000d44 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>:
     d44:	fc010113          	add	sp,sp,-64
     d48:	02112e23          	sw	ra,60(sp)
     d4c:	02812c23          	sw	s0,56(sp)
     d50:	04010413          	add	s0,sp,64
     d54:	fca42623          	sw	a0,-52(s0)
     d58:	002017b7          	lui	a5,0x201
     d5c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     d60:	0007a783          	lw	a5,0(a5)
     d64:	fef42623          	sw	a5,-20(s0)
     d68:	002017b7          	lui	a5,0x201
     d6c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     d70:	0007a783          	lw	a5,0(a5)
     d74:	fef42423          	sw	a5,-24(s0)
     d78:	fcc42503          	lw	a0,-52(s0)
     d7c:	f75ff0ef          	jal	cf0 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>
     d80:	00050793          	mv	a5,a0
     d84:	fef403a3          	sb	a5,-25(s0)
     d88:	002017b7          	lui	a5,0x201
     d8c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     d90:	0007a783          	lw	a5,0(a5)
     d94:	fef42023          	sw	a5,-32(s0)
     d98:	002017b7          	lui	a5,0x201
     d9c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     da0:	0007a783          	lw	a5,0(a5)
     da4:	fcf42e23          	sw	a5,-36(s0)
     da8:	fdc42703          	lw	a4,-36(s0)
     dac:	fec42783          	lw	a5,-20(s0)
     db0:	40f707b3          	sub	a5,a4,a5
     db4:	fcf42c23          	sw	a5,-40(s0)
     db8:	fe042703          	lw	a4,-32(s0)
     dbc:	fe842783          	lw	a5,-24(s0)
     dc0:	40f707b3          	sub	a5,a4,a5
     dc4:	fcf42a23          	sw	a5,-44(s0)
     dc8:	000307b7          	lui	a5,0x30
     dcc:	47078513          	add	a0,a5,1136 # 30470 <__fini_array_end+0x2ac70>
     dd0:	6e0000ef          	jal	14b0 <_Z10uart_printPKc>
     dd4:	fd842503          	lw	a0,-40(s0)
     dd8:	349000ef          	jal	1920 <_Z16uart_print_int32i>
     ddc:	00000013          	nop
     de0:	000307b7          	lui	a5,0x30
     de4:	48c78513          	add	a0,a5,1164 # 3048c <__fini_array_end+0x2ac8c>
     de8:	6c8000ef          	jal	14b0 <_Z10uart_printPKc>
     dec:	000307b7          	lui	a5,0x30
     df0:	49078513          	add	a0,a5,1168 # 30490 <__fini_array_end+0x2ac90>
     df4:	6bc000ef          	jal	14b0 <_Z10uart_printPKc>
     df8:	fd442503          	lw	a0,-44(s0)
     dfc:	325000ef          	jal	1920 <_Z16uart_print_int32i>
     e00:	00000013          	nop
     e04:	000307b7          	lui	a5,0x30
     e08:	48c78513          	add	a0,a5,1164 # 3048c <__fini_array_end+0x2ac8c>
     e0c:	6a4000ef          	jal	14b0 <_Z10uart_printPKc>
     e10:	fe744783          	lbu	a5,-25(s0)
     e14:	00078513          	mv	a0,a5
     e18:	03c12083          	lw	ra,60(sp)
     e1c:	03812403          	lw	s0,56(sp)
     e20:	04010113          	add	sp,sp,64
     e24:	00008067          	ret

00000e28 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>:
     e28:	fe010113          	add	sp,sp,-32
     e2c:	00112e23          	sw	ra,28(sp)
     e30:	00812c23          	sw	s0,24(sp)
     e34:	02010413          	add	s0,sp,32
     e38:	fea42623          	sw	a0,-20(s0)
     e3c:	fec42783          	lw	a5,-20(s0)
     e40:	0007a703          	lw	a4,0(a5)
     e44:	fec42783          	lw	a5,-20(s0)
     e48:	0047a683          	lw	a3,4(a5)
     e4c:	fec42783          	lw	a5,-20(s0)
     e50:	0087a783          	lw	a5,8(a5)
     e54:	00078613          	mv	a2,a5
     e58:	00068593          	mv	a1,a3
     e5c:	00070513          	mv	a0,a4
     e60:	d45ff0ef          	jal	ba4 <_Z6matmulPA3_KiPA3_iS3_>
     e64:	00050793          	mv	a5,a0
     e68:	00078513          	mv	a0,a5
     e6c:	01c12083          	lw	ra,28(sp)
     e70:	01812403          	lw	s0,24(sp)
     e74:	02010113          	add	sp,sp,32
     e78:	00008067          	ret

00000e7c <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>:
     e7c:	fc010113          	add	sp,sp,-64
     e80:	02112e23          	sw	ra,60(sp)
     e84:	02812c23          	sw	s0,56(sp)
     e88:	04010413          	add	s0,sp,64
     e8c:	fca42623          	sw	a0,-52(s0)
     e90:	002017b7          	lui	a5,0x201
     e94:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     e98:	0007a783          	lw	a5,0(a5)
     e9c:	fef42623          	sw	a5,-20(s0)
     ea0:	002017b7          	lui	a5,0x201
     ea4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     ea8:	0007a783          	lw	a5,0(a5)
     eac:	fef42423          	sw	a5,-24(s0)
     eb0:	fcc42503          	lw	a0,-52(s0)
     eb4:	f75ff0ef          	jal	e28 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>
     eb8:	00050793          	mv	a5,a0
     ebc:	fef403a3          	sb	a5,-25(s0)
     ec0:	002017b7          	lui	a5,0x201
     ec4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     ec8:	0007a783          	lw	a5,0(a5)
     ecc:	fef42023          	sw	a5,-32(s0)
     ed0:	002017b7          	lui	a5,0x201
     ed4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     ed8:	0007a783          	lw	a5,0(a5)
     edc:	fcf42e23          	sw	a5,-36(s0)
     ee0:	fdc42703          	lw	a4,-36(s0)
     ee4:	fec42783          	lw	a5,-20(s0)
     ee8:	40f707b3          	sub	a5,a4,a5
     eec:	fcf42c23          	sw	a5,-40(s0)
     ef0:	fe042703          	lw	a4,-32(s0)
     ef4:	fe842783          	lw	a5,-24(s0)
     ef8:	40f707b3          	sub	a5,a4,a5
     efc:	fcf42a23          	sw	a5,-44(s0)
     f00:	000307b7          	lui	a5,0x30
     f04:	47078513          	add	a0,a5,1136 # 30470 <__fini_array_end+0x2ac70>
     f08:	5a8000ef          	jal	14b0 <_Z10uart_printPKc>
     f0c:	fd842503          	lw	a0,-40(s0)
     f10:	211000ef          	jal	1920 <_Z16uart_print_int32i>
     f14:	00000013          	nop
     f18:	000307b7          	lui	a5,0x30
     f1c:	48c78513          	add	a0,a5,1164 # 3048c <__fini_array_end+0x2ac8c>
     f20:	590000ef          	jal	14b0 <_Z10uart_printPKc>
     f24:	000307b7          	lui	a5,0x30
     f28:	49078513          	add	a0,a5,1168 # 30490 <__fini_array_end+0x2ac90>
     f2c:	584000ef          	jal	14b0 <_Z10uart_printPKc>
     f30:	fd442503          	lw	a0,-44(s0)
     f34:	1ed000ef          	jal	1920 <_Z16uart_print_int32i>
     f38:	00000013          	nop
     f3c:	000307b7          	lui	a5,0x30
     f40:	48c78513          	add	a0,a5,1164 # 3048c <__fini_array_end+0x2ac8c>
     f44:	56c000ef          	jal	14b0 <_Z10uart_printPKc>
     f48:	fe744783          	lbu	a5,-25(s0)
     f4c:	00078513          	mv	a0,a5
     f50:	03c12083          	lw	ra,60(sp)
     f54:	03812403          	lw	s0,56(sp)
     f58:	04010113          	add	sp,sp,64
     f5c:	00008067          	ret

00000f60 <_Z21cmd_matrix_multiplierv>:
     f60:	f2010113          	add	sp,sp,-224
     f64:	0c112e23          	sw	ra,220(sp)
     f68:	0c812c23          	sw	s0,216(sp)
     f6c:	0e010413          	add	s0,sp,224
     f70:	00100793          	li	a5,1
     f74:	fef407a3          	sb	a5,-17(s0)
     f78:	000307b7          	lui	a5,0x30
     f7c:	53078793          	add	a5,a5,1328 # 30530 <__fini_array_end+0x2ad30>
     f80:	0007a303          	lw	t1,0(a5)
     f84:	0047a883          	lw	a7,4(a5)
     f88:	0087a803          	lw	a6,8(a5)
     f8c:	00c7a503          	lw	a0,12(a5)
     f90:	0107a583          	lw	a1,16(a5)
     f94:	0147a603          	lw	a2,20(a5)
     f98:	0187a683          	lw	a3,24(a5)
     f9c:	01c7a703          	lw	a4,28(a5)
     fa0:	0207a783          	lw	a5,32(a5)
     fa4:	fa642823          	sw	t1,-80(s0)
     fa8:	fb142a23          	sw	a7,-76(s0)
     fac:	fb042c23          	sw	a6,-72(s0)
     fb0:	faa42e23          	sw	a0,-68(s0)
     fb4:	fcb42023          	sw	a1,-64(s0)
     fb8:	fcc42223          	sw	a2,-60(s0)
     fbc:	fcd42423          	sw	a3,-56(s0)
     fc0:	fce42623          	sw	a4,-52(s0)
     fc4:	fcf42823          	sw	a5,-48(s0)
     fc8:	000307b7          	lui	a5,0x30
     fcc:	55478793          	add	a5,a5,1364 # 30554 <__fini_array_end+0x2ad54>
     fd0:	0007a303          	lw	t1,0(a5)
     fd4:	0047a883          	lw	a7,4(a5)
     fd8:	0087a803          	lw	a6,8(a5)
     fdc:	00c7a503          	lw	a0,12(a5)
     fe0:	0107a583          	lw	a1,16(a5)
     fe4:	0147a603          	lw	a2,20(a5)
     fe8:	0187a683          	lw	a3,24(a5)
     fec:	01c7a703          	lw	a4,28(a5)
     ff0:	0207a783          	lw	a5,32(a5)
     ff4:	f8642623          	sw	t1,-116(s0)
     ff8:	f9142823          	sw	a7,-112(s0)
     ffc:	f9042a23          	sw	a6,-108(s0)
    1000:	f8a42c23          	sw	a0,-104(s0)
    1004:	f8b42e23          	sw	a1,-100(s0)
    1008:	fac42023          	sw	a2,-96(s0)
    100c:	fad42223          	sw	a3,-92(s0)
    1010:	fae42423          	sw	a4,-88(s0)
    1014:	faf42623          	sw	a5,-84(s0)
    1018:	000307b7          	lui	a5,0x30
    101c:	57878793          	add	a5,a5,1400 # 30578 <__fini_array_end+0x2ad78>
    1020:	0007a303          	lw	t1,0(a5)
    1024:	0047a883          	lw	a7,4(a5)
    1028:	0087a803          	lw	a6,8(a5)
    102c:	00c7a503          	lw	a0,12(a5)
    1030:	0107a583          	lw	a1,16(a5)
    1034:	0147a603          	lw	a2,20(a5)
    1038:	0187a683          	lw	a3,24(a5)
    103c:	01c7a703          	lw	a4,28(a5)
    1040:	0207a783          	lw	a5,32(a5)
    1044:	f6642423          	sw	t1,-152(s0)
    1048:	f7142623          	sw	a7,-148(s0)
    104c:	f7042823          	sw	a6,-144(s0)
    1050:	f6a42a23          	sw	a0,-140(s0)
    1054:	f6b42c23          	sw	a1,-136(s0)
    1058:	f6c42e23          	sw	a2,-132(s0)
    105c:	f8d42023          	sw	a3,-128(s0)
    1060:	f8e42223          	sw	a4,-124(s0)
    1064:	f8f42423          	sw	a5,-120(s0)
    1068:	f4042223          	sw	zero,-188(s0)
    106c:	f4042423          	sw	zero,-184(s0)
    1070:	f4042623          	sw	zero,-180(s0)
    1074:	f4042823          	sw	zero,-176(s0)
    1078:	f4042a23          	sw	zero,-172(s0)
    107c:	f4042c23          	sw	zero,-168(s0)
    1080:	f4042e23          	sw	zero,-164(s0)
    1084:	f6042023          	sw	zero,-160(s0)
    1088:	f6042223          	sw	zero,-156(s0)
    108c:	f2042023          	sw	zero,-224(s0)
    1090:	f2042223          	sw	zero,-220(s0)
    1094:	f2042423          	sw	zero,-216(s0)
    1098:	f2042623          	sw	zero,-212(s0)
    109c:	f2042823          	sw	zero,-208(s0)
    10a0:	f2042a23          	sw	zero,-204(s0)
    10a4:	f2042c23          	sw	zero,-200(s0)
    10a8:	f2042e23          	sw	zero,-196(s0)
    10ac:	f4042023          	sw	zero,-192(s0)
    10b0:	000307b7          	lui	a5,0x30
    10b4:	4b478513          	add	a0,a5,1204 # 304b4 <__fini_array_end+0x2acb4>
    10b8:	3f8000ef          	jal	14b0 <_Z10uart_printPKc>
    10bc:	fb040793          	add	a5,s0,-80
    10c0:	fcf42a23          	sw	a5,-44(s0)
    10c4:	f8c40793          	add	a5,s0,-116
    10c8:	fcf42c23          	sw	a5,-40(s0)
    10cc:	f4440793          	add	a5,s0,-188
    10d0:	fcf42e23          	sw	a5,-36(s0)
    10d4:	fd440793          	add	a5,s0,-44
    10d8:	00078513          	mv	a0,a5
    10dc:	c69ff0ef          	jal	d44 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>
    10e0:	00050793          	mv	a5,a0
    10e4:	fef407a3          	sb	a5,-17(s0)
    10e8:	000307b7          	lui	a5,0x30
    10ec:	4ec78513          	add	a0,a5,1260 # 304ec <__fini_array_end+0x2acec>
    10f0:	3c0000ef          	jal	14b0 <_Z10uart_printPKc>
    10f4:	f6840793          	add	a5,s0,-152
    10f8:	fef42023          	sw	a5,-32(s0)
    10fc:	f8c40793          	add	a5,s0,-116
    1100:	fef42223          	sw	a5,-28(s0)
    1104:	f2040793          	add	a5,s0,-224
    1108:	fef42423          	sw	a5,-24(s0)
    110c:	fe040793          	add	a5,s0,-32
    1110:	00078513          	mv	a0,a5
    1114:	d69ff0ef          	jal	e7c <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>
    1118:	00050793          	mv	a5,a0
    111c:	fef407a3          	sb	a5,-17(s0)
    1120:	000307b7          	lui	a5,0x30
    1124:	52078513          	add	a0,a5,1312 # 30520 <__fini_array_end+0x2ad20>
    1128:	388000ef          	jal	14b0 <_Z10uart_printPKc>
    112c:	00000013          	nop
    1130:	0dc12083          	lw	ra,220(sp)
    1134:	0d812403          	lw	s0,216(sp)
    1138:	0e010113          	add	sp,sp,224
    113c:	00008067          	ret

00001140 <_Z13math_gauntletPiS_S_S_S_S_S_>:
    1140:	fc010113          	add	sp,sp,-64
    1144:	02112e23          	sw	ra,60(sp)
    1148:	02812c23          	sw	s0,56(sp)
    114c:	04010413          	add	s0,sp,64
    1150:	fca42e23          	sw	a0,-36(s0)
    1154:	fcb42c23          	sw	a1,-40(s0)
    1158:	fcc42a23          	sw	a2,-44(s0)
    115c:	fcd42823          	sw	a3,-48(s0)
    1160:	fce42623          	sw	a4,-52(s0)
    1164:	fcf42423          	sw	a5,-56(s0)
    1168:	fd042223          	sw	a6,-60(s0)
    116c:	fe0407a3          	sb	zero,-17(s0)
    1170:	fdc42783          	lw	a5,-36(s0)
    1174:	0007a703          	lw	a4,0(a5)
    1178:	fd842783          	lw	a5,-40(s0)
    117c:	0007a783          	lw	a5,0(a5)
    1180:	00f70733          	add	a4,a4,a5
    1184:	fd442783          	lw	a5,-44(s0)
    1188:	00e7a023          	sw	a4,0(a5)
    118c:	fdc42783          	lw	a5,-36(s0)
    1190:	0007a703          	lw	a4,0(a5)
    1194:	fd842783          	lw	a5,-40(s0)
    1198:	0007a783          	lw	a5,0(a5)
    119c:	40f70733          	sub	a4,a4,a5
    11a0:	fd042783          	lw	a5,-48(s0)
    11a4:	00e7a023          	sw	a4,0(a5)
    11a8:	fdc42783          	lw	a5,-36(s0)
    11ac:	0007a703          	lw	a4,0(a5)
    11b0:	fd842783          	lw	a5,-40(s0)
    11b4:	0007a783          	lw	a5,0(a5)
    11b8:	00078593          	mv	a1,a5
    11bc:	00070513          	mv	a0,a4
    11c0:	581000ef          	jal	1f40 <__mulsi3>
    11c4:	00050793          	mv	a5,a0
    11c8:	00078713          	mv	a4,a5
    11cc:	fcc42783          	lw	a5,-52(s0)
    11d0:	00e7a023          	sw	a4,0(a5)
    11d4:	fdc42783          	lw	a5,-36(s0)
    11d8:	0007a703          	lw	a4,0(a5)
    11dc:	fd842783          	lw	a5,-40(s0)
    11e0:	0007a783          	lw	a5,0(a5)
    11e4:	00078593          	mv	a1,a5
    11e8:	00070513          	mv	a0,a4
    11ec:	579000ef          	jal	1f64 <__divsi3>
    11f0:	00050793          	mv	a5,a0
    11f4:	00078713          	mv	a4,a5
    11f8:	fc842783          	lw	a5,-56(s0)
    11fc:	00e7a023          	sw	a4,0(a5)
    1200:	fdc42783          	lw	a5,-36(s0)
    1204:	0007a703          	lw	a4,0(a5)
    1208:	fd842783          	lw	a5,-40(s0)
    120c:	0007a783          	lw	a5,0(a5)
    1210:	00078593          	mv	a1,a5
    1214:	00070513          	mv	a0,a4
    1218:	5d1000ef          	jal	1fe8 <__modsi3>
    121c:	00050793          	mv	a5,a0
    1220:	00078713          	mv	a4,a5
    1224:	fc442783          	lw	a5,-60(s0)
    1228:	00e7a023          	sw	a4,0(a5)
    122c:	00100793          	li	a5,1
    1230:	fef407a3          	sb	a5,-17(s0)
    1234:	fef44783          	lbu	a5,-17(s0)
    1238:	00078513          	mv	a0,a5
    123c:	03c12083          	lw	ra,60(sp)
    1240:	03812403          	lw	s0,56(sp)
    1244:	04010113          	add	sp,sp,64
    1248:	00008067          	ret

0000124c <_Z7computev>:
    124c:	fe010113          	add	sp,sp,-32
    1250:	00112e23          	sw	ra,28(sp)
    1254:	00812c23          	sw	s0,24(sp)
    1258:	02010413          	add	s0,sp,32
    125c:	fff00793          	li	a5,-1
    1260:	fef407a3          	sb	a5,-17(s0)
    1264:	00a00793          	li	a5,10
    1268:	fef42423          	sw	a5,-24(s0)
    126c:	fe842503          	lw	a0,-24(s0)
    1270:	048000ef          	jal	12b8 <_Z19fibonacci_iterativei>
    1274:	fea42223          	sw	a0,-28(s0)
    1278:	fe842503          	lw	a0,-24(s0)
    127c:	0e8000ef          	jal	1364 <_Z19fibonacci_recursivei>
    1280:	00050793          	mv	a5,a0
    1284:	fef42023          	sw	a5,-32(s0)
    1288:	fe442703          	lw	a4,-28(s0)
    128c:	fe042783          	lw	a5,-32(s0)
    1290:	00f71863          	bne	a4,a5,12a0 <_Z7computev+0x54>
    1294:	00100793          	li	a5,1
    1298:	fef407a3          	sb	a5,-17(s0)
    129c:	0080006f          	j	12a4 <_Z7computev+0x58>
    12a0:	fe0407a3          	sb	zero,-17(s0)
    12a4:	00000013          	nop
    12a8:	01c12083          	lw	ra,28(sp)
    12ac:	01812403          	lw	s0,24(sp)
    12b0:	02010113          	add	sp,sp,32
    12b4:	00008067          	ret

000012b8 <_Z19fibonacci_iterativei>:
    12b8:	fd010113          	add	sp,sp,-48
    12bc:	02812623          	sw	s0,44(sp)
    12c0:	03010413          	add	s0,sp,48
    12c4:	fca42e23          	sw	a0,-36(s0)
    12c8:	fdc42703          	lw	a4,-36(s0)
    12cc:	00100793          	li	a5,1
    12d0:	00e7c663          	blt	a5,a4,12dc <_Z19fibonacci_iterativei+0x24>
    12d4:	fdc42783          	lw	a5,-36(s0)
    12d8:	07c0006f          	j	1354 <_Z19fibonacci_iterativei+0x9c>
    12dc:	fdc42703          	lw	a4,-36(s0)
    12e0:	02e00793          	li	a5,46
    12e4:	00e7c863          	blt	a5,a4,12f4 <_Z19fibonacci_iterativei+0x3c>
    12e8:	fdc42783          	lw	a5,-36(s0)
    12ec:	0ff7f793          	zext.b	a5,a5
    12f0:	0080006f          	j	12f8 <_Z19fibonacci_iterativei+0x40>
    12f4:	02e00793          	li	a5,46
    12f8:	fef40123          	sb	a5,-30(s0)
    12fc:	fe042623          	sw	zero,-20(s0)
    1300:	fe042423          	sw	zero,-24(s0)
    1304:	00100793          	li	a5,1
    1308:	fef42223          	sw	a5,-28(s0)
    130c:	00100793          	li	a5,1
    1310:	fef401a3          	sb	a5,-29(s0)
    1314:	0300006f          	j	1344 <_Z19fibonacci_iterativei+0x8c>
    1318:	fe842703          	lw	a4,-24(s0)
    131c:	fe442783          	lw	a5,-28(s0)
    1320:	00f707b3          	add	a5,a4,a5
    1324:	fef42623          	sw	a5,-20(s0)
    1328:	fe442783          	lw	a5,-28(s0)
    132c:	fef42423          	sw	a5,-24(s0)
    1330:	fec42783          	lw	a5,-20(s0)
    1334:	fef42223          	sw	a5,-28(s0)
    1338:	fe344783          	lbu	a5,-29(s0)
    133c:	00178793          	add	a5,a5,1
    1340:	fef401a3          	sb	a5,-29(s0)
    1344:	fe344703          	lbu	a4,-29(s0)
    1348:	fe244783          	lbu	a5,-30(s0)
    134c:	fcf766e3          	bltu	a4,a5,1318 <_Z19fibonacci_iterativei+0x60>
    1350:	fec42783          	lw	a5,-20(s0)
    1354:	00078513          	mv	a0,a5
    1358:	02c12403          	lw	s0,44(sp)
    135c:	03010113          	add	sp,sp,48
    1360:	00008067          	ret

00001364 <_Z19fibonacci_recursivei>:
    1364:	fe010113          	add	sp,sp,-32
    1368:	00112e23          	sw	ra,28(sp)
    136c:	00812c23          	sw	s0,24(sp)
    1370:	00912a23          	sw	s1,20(sp)
    1374:	02010413          	add	s0,sp,32
    1378:	fea42623          	sw	a0,-20(s0)
    137c:	fec42703          	lw	a4,-20(s0)
    1380:	00100793          	li	a5,1
    1384:	00e7c663          	blt	a5,a4,1390 <_Z19fibonacci_recursivei+0x2c>
    1388:	fec42783          	lw	a5,-20(s0)
    138c:	0300006f          	j	13bc <_Z19fibonacci_recursivei+0x58>
    1390:	fec42783          	lw	a5,-20(s0)
    1394:	fff78793          	add	a5,a5,-1
    1398:	00078513          	mv	a0,a5
    139c:	fc9ff0ef          	jal	1364 <_Z19fibonacci_recursivei>
    13a0:	00050493          	mv	s1,a0
    13a4:	fec42783          	lw	a5,-20(s0)
    13a8:	ffe78793          	add	a5,a5,-2
    13ac:	00078513          	mv	a0,a5
    13b0:	fb5ff0ef          	jal	1364 <_Z19fibonacci_recursivei>
    13b4:	00050793          	mv	a5,a0
    13b8:	00f487b3          	add	a5,s1,a5
    13bc:	00078513          	mv	a0,a5
    13c0:	01c12083          	lw	ra,28(sp)
    13c4:	01812403          	lw	s0,24(sp)
    13c8:	01412483          	lw	s1,20(sp)
    13cc:	02010113          	add	sp,sp,32
    13d0:	00008067          	ret

000013d4 <_Z9uart_getcb>:
    13d4:	fd010113          	add	sp,sp,-48
    13d8:	02812623          	sw	s0,44(sp)
    13dc:	03010413          	add	s0,sp,48
    13e0:	00050793          	mv	a5,a0
    13e4:	fcf40fa3          	sb	a5,-33(s0)
    13e8:	fe0407a3          	sb	zero,-17(s0)
    13ec:	002017b7          	lui	a5,0x201
    13f0:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    13f4:	0007c783          	lbu	a5,0(a5)
    13f8:	fef407a3          	sb	a5,-17(s0)
    13fc:	0340006f          	j	1430 <_Z9uart_getcb+0x5c>
    1400:	002017b7          	lui	a5,0x201
    1404:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    1408:	0007c783          	lbu	a5,0(a5)
    140c:	fef40723          	sb	a5,-18(s0)
    1410:	fee44783          	lbu	a5,-18(s0)
    1414:	0027f793          	and	a5,a5,2
    1418:	00078c63          	beqz	a5,1430 <_Z9uart_getcb+0x5c>
    141c:	002017b7          	lui	a5,0x201
    1420:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    1424:	0007c783          	lbu	a5,0(a5)
    1428:	fef407a3          	sb	a5,-17(s0)
    142c:	00c0006f          	j	1438 <_Z9uart_getcb+0x64>
    1430:	fdf44783          	lbu	a5,-33(s0)
    1434:	fc0796e3          	bnez	a5,1400 <_Z9uart_getcb+0x2c>
    1438:	fef44783          	lbu	a5,-17(s0)
    143c:	00078513          	mv	a0,a5
    1440:	02c12403          	lw	s0,44(sp)
    1444:	03010113          	add	sp,sp,48
    1448:	00008067          	ret

0000144c <_Z9uart_putcc>:
    144c:	fd010113          	add	sp,sp,-48
    1450:	02812623          	sw	s0,44(sp)
    1454:	03010413          	add	s0,sp,48
    1458:	00050793          	mv	a5,a0
    145c:	fcf40fa3          	sb	a5,-33(s0)
    1460:	002017b7          	lui	a5,0x201
    1464:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    1468:	0007c783          	lbu	a5,0(a5)
    146c:	fef407a3          	sb	a5,-17(s0)
    1470:	002017b7          	lui	a5,0x201
    1474:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    1478:	0007c783          	lbu	a5,0(a5)
    147c:	fef40723          	sb	a5,-18(s0)
    1480:	fee44783          	lbu	a5,-18(s0)
    1484:	0017f793          	and	a5,a5,1
    1488:	fe0784e3          	beqz	a5,1470 <_Z9uart_putcc+0x24>
    148c:	002017b7          	lui	a5,0x201
    1490:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    1494:	fdf44703          	lbu	a4,-33(s0)
    1498:	00e78023          	sb	a4,0(a5)
    149c:	00000013          	nop
    14a0:	00000013          	nop
    14a4:	02c12403          	lw	s0,44(sp)
    14a8:	03010113          	add	sp,sp,48
    14ac:	00008067          	ret

000014b0 <_Z10uart_printPKc>:
    14b0:	fd010113          	add	sp,sp,-48
    14b4:	02112623          	sw	ra,44(sp)
    14b8:	02812423          	sw	s0,40(sp)
    14bc:	03010413          	add	s0,sp,48
    14c0:	fca42e23          	sw	a0,-36(s0)
    14c4:	fe042623          	sw	zero,-20(s0)
    14c8:	0400006f          	j	1508 <_Z10uart_printPKc+0x58>
    14cc:	fec42783          	lw	a5,-20(s0)
    14d0:	fdc42703          	lw	a4,-36(s0)
    14d4:	00f707b3          	add	a5,a4,a5
    14d8:	0007c783          	lbu	a5,0(a5)
    14dc:	02078e63          	beqz	a5,1518 <_Z10uart_printPKc+0x68>
    14e0:	fec42783          	lw	a5,-20(s0)
    14e4:	fdc42703          	lw	a4,-36(s0)
    14e8:	00f707b3          	add	a5,a4,a5
    14ec:	0007c783          	lbu	a5,0(a5)
    14f0:	00078513          	mv	a0,a5
    14f4:	f59ff0ef          	jal	144c <_Z9uart_putcc>
    14f8:	00000013          	nop
    14fc:	fec42783          	lw	a5,-20(s0)
    1500:	00178793          	add	a5,a5,1
    1504:	fef42623          	sw	a5,-20(s0)
    1508:	fec42703          	lw	a4,-20(s0)
    150c:	07f00793          	li	a5,127
    1510:	fae7dee3          	bge	a5,a4,14cc <_Z10uart_printPKc+0x1c>
    1514:	0080006f          	j	151c <_Z10uart_printPKc+0x6c>
    1518:	00000013          	nop
    151c:	00000013          	nop
    1520:	02c12083          	lw	ra,44(sp)
    1524:	02812403          	lw	s0,40(sp)
    1528:	03010113          	add	sp,sp,48
    152c:	00008067          	ret

00001530 <_Z11dump_resultx>:
    1530:	fc010113          	add	sp,sp,-64
    1534:	02112e23          	sw	ra,60(sp)
    1538:	02812c23          	sw	s0,56(sp)
    153c:	04010413          	add	s0,sp,64
    1540:	fca42423          	sw	a0,-56(s0)
    1544:	fcb42623          	sw	a1,-52(s0)
    1548:	fe042623          	sw	zero,-20(s0)
    154c:	0700006f          	j	15bc <_Z11dump_resultx+0x8c>
    1550:	fec42683          	lw	a3,-20(s0)
    1554:	00369693          	sll	a3,a3,0x3
    1558:	fe068613          	add	a2,a3,-32
    155c:	00064c63          	bltz	a2,1574 <_Z11dump_resultx+0x44>
    1560:	fcc42683          	lw	a3,-52(s0)
    1564:	40c6d733          	sra	a4,a3,a2
    1568:	fcc42683          	lw	a3,-52(s0)
    156c:	41f6d793          	sra	a5,a3,0x1f
    1570:	02c0006f          	j	159c <_Z11dump_resultx+0x6c>
    1574:	fcc42603          	lw	a2,-52(s0)
    1578:	00161593          	sll	a1,a2,0x1
    157c:	01f00613          	li	a2,31
    1580:	40d60633          	sub	a2,a2,a3
    1584:	00c59633          	sll	a2,a1,a2
    1588:	fc842583          	lw	a1,-56(s0)
    158c:	00d5d733          	srl	a4,a1,a3
    1590:	00e66733          	or	a4,a2,a4
    1594:	fcc42603          	lw	a2,-52(s0)
    1598:	40d657b3          	sra	a5,a2,a3
    159c:	0ff77613          	zext.b	a2,a4
    15a0:	fec42683          	lw	a3,-20(s0)
    15a4:	ff068693          	add	a3,a3,-16
    15a8:	008686b3          	add	a3,a3,s0
    15ac:	fec68423          	sb	a2,-24(a3)
    15b0:	fec42683          	lw	a3,-20(s0)
    15b4:	00168693          	add	a3,a3,1
    15b8:	fed42623          	sw	a3,-20(s0)
    15bc:	fec42603          	lw	a2,-20(s0)
    15c0:	00700693          	li	a3,7
    15c4:	f8c6d6e3          	bge	a3,a2,1550 <_Z11dump_resultx+0x20>
    15c8:	00800793          	li	a5,8
    15cc:	fef42423          	sw	a5,-24(s0)
    15d0:	0100006f          	j	15e0 <_Z11dump_resultx+0xb0>
    15d4:	fe842783          	lw	a5,-24(s0)
    15d8:	fff78793          	add	a5,a5,-1
    15dc:	fef42423          	sw	a5,-24(s0)
    15e0:	fe842703          	lw	a4,-24(s0)
    15e4:	00100793          	li	a5,1
    15e8:	00e7de63          	bge	a5,a4,1604 <_Z11dump_resultx+0xd4>
    15ec:	fe842783          	lw	a5,-24(s0)
    15f0:	fff78793          	add	a5,a5,-1
    15f4:	ff078793          	add	a5,a5,-16
    15f8:	008787b3          	add	a5,a5,s0
    15fc:	fe87c783          	lbu	a5,-24(a5)
    1600:	fc078ae3          	beqz	a5,15d4 <_Z11dump_resultx+0xa4>
    1604:	04400513          	li	a0,68
    1608:	e45ff0ef          	jal	144c <_Z9uart_putcc>
    160c:	fe842783          	lw	a5,-24(s0)
    1610:	0ff7f793          	zext.b	a5,a5
    1614:	00078513          	mv	a0,a5
    1618:	e35ff0ef          	jal	144c <_Z9uart_putcc>
    161c:	fe042223          	sw	zero,-28(s0)
    1620:	02c0006f          	j	164c <_Z11dump_resultx+0x11c>
    1624:	fe442783          	lw	a5,-28(s0)
    1628:	ff078793          	add	a5,a5,-16
    162c:	008787b3          	add	a5,a5,s0
    1630:	fe87c783          	lbu	a5,-24(a5)
    1634:	00078513          	mv	a0,a5
    1638:	e15ff0ef          	jal	144c <_Z9uart_putcc>
    163c:	00000013          	nop
    1640:	fe442783          	lw	a5,-28(s0)
    1644:	00178793          	add	a5,a5,1
    1648:	fef42223          	sw	a5,-28(s0)
    164c:	fe442703          	lw	a4,-28(s0)
    1650:	fe842783          	lw	a5,-24(s0)
    1654:	fcf748e3          	blt	a4,a5,1624 <_Z11dump_resultx+0xf4>
    1658:	00000013          	nop
    165c:	00000013          	nop
    1660:	03c12083          	lw	ra,60(sp)
    1664:	03812403          	lw	s0,56(sp)
    1668:	04010113          	add	sp,sp,64
    166c:	00008067          	ret

00001670 <_Z7strncmpPKcS0_i>:
    1670:	fd010113          	add	sp,sp,-48
    1674:	02812623          	sw	s0,44(sp)
    1678:	03010413          	add	s0,sp,48
    167c:	fca42e23          	sw	a0,-36(s0)
    1680:	fcb42c23          	sw	a1,-40(s0)
    1684:	fcc42a23          	sw	a2,-44(s0)
    1688:	fe042623          	sw	zero,-20(s0)
    168c:	07c0006f          	j	1708 <_Z7strncmpPKcS0_i+0x98>
    1690:	fec42783          	lw	a5,-20(s0)
    1694:	fdc42703          	lw	a4,-36(s0)
    1698:	00f707b3          	add	a5,a4,a5
    169c:	0007c703          	lbu	a4,0(a5)
    16a0:	fec42783          	lw	a5,-20(s0)
    16a4:	fd842683          	lw	a3,-40(s0)
    16a8:	00f687b3          	add	a5,a3,a5
    16ac:	0007c783          	lbu	a5,0(a5)
    16b0:	02f70863          	beq	a4,a5,16e0 <_Z7strncmpPKcS0_i+0x70>
    16b4:	fec42783          	lw	a5,-20(s0)
    16b8:	fdc42703          	lw	a4,-36(s0)
    16bc:	00f707b3          	add	a5,a4,a5
    16c0:	0007c783          	lbu	a5,0(a5)
    16c4:	00078693          	mv	a3,a5
    16c8:	fec42783          	lw	a5,-20(s0)
    16cc:	fd842703          	lw	a4,-40(s0)
    16d0:	00f707b3          	add	a5,a4,a5
    16d4:	0007c783          	lbu	a5,0(a5)
    16d8:	40f687b3          	sub	a5,a3,a5
    16dc:	03c0006f          	j	1718 <_Z7strncmpPKcS0_i+0xa8>
    16e0:	fec42783          	lw	a5,-20(s0)
    16e4:	fdc42703          	lw	a4,-36(s0)
    16e8:	00f707b3          	add	a5,a4,a5
    16ec:	0007c783          	lbu	a5,0(a5)
    16f0:	00079663          	bnez	a5,16fc <_Z7strncmpPKcS0_i+0x8c>
    16f4:	00000793          	li	a5,0
    16f8:	0200006f          	j	1718 <_Z7strncmpPKcS0_i+0xa8>
    16fc:	fec42783          	lw	a5,-20(s0)
    1700:	00178793          	add	a5,a5,1
    1704:	fef42623          	sw	a5,-20(s0)
    1708:	fec42703          	lw	a4,-20(s0)
    170c:	fd442783          	lw	a5,-44(s0)
    1710:	f8f740e3          	blt	a4,a5,1690 <_Z7strncmpPKcS0_i+0x20>
    1714:	00000793          	li	a5,0
    1718:	00078513          	mv	a0,a5
    171c:	02c12403          	lw	s0,44(sp)
    1720:	03010113          	add	sp,sp,48
    1724:	00008067          	ret

00001728 <_Z6strcmpPKcS0_>:
    1728:	fd010113          	add	sp,sp,-48
    172c:	02812623          	sw	s0,44(sp)
    1730:	03010413          	add	s0,sp,48
    1734:	fca42e23          	sw	a0,-36(s0)
    1738:	fcb42c23          	sw	a1,-40(s0)
    173c:	fe042623          	sw	zero,-20(s0)
    1740:	fec42783          	lw	a5,-20(s0)
    1744:	fdc42703          	lw	a4,-36(s0)
    1748:	00f707b3          	add	a5,a4,a5
    174c:	0007c703          	lbu	a4,0(a5)
    1750:	fec42783          	lw	a5,-20(s0)
    1754:	fd842683          	lw	a3,-40(s0)
    1758:	00f687b3          	add	a5,a3,a5
    175c:	0007c783          	lbu	a5,0(a5)
    1760:	02f70863          	beq	a4,a5,1790 <_Z6strcmpPKcS0_+0x68>
    1764:	fec42783          	lw	a5,-20(s0)
    1768:	fdc42703          	lw	a4,-36(s0)
    176c:	00f707b3          	add	a5,a4,a5
    1770:	0007c783          	lbu	a5,0(a5)
    1774:	00078693          	mv	a3,a5
    1778:	fec42783          	lw	a5,-20(s0)
    177c:	fd842703          	lw	a4,-40(s0)
    1780:	00f707b3          	add	a5,a4,a5
    1784:	0007c783          	lbu	a5,0(a5)
    1788:	40f687b3          	sub	a5,a3,a5
    178c:	0300006f          	j	17bc <_Z6strcmpPKcS0_+0x94>
    1790:	fec42783          	lw	a5,-20(s0)
    1794:	fdc42703          	lw	a4,-36(s0)
    1798:	00f707b3          	add	a5,a4,a5
    179c:	0007c783          	lbu	a5,0(a5)
    17a0:	00079663          	bnez	a5,17ac <_Z6strcmpPKcS0_+0x84>
    17a4:	00000793          	li	a5,0
    17a8:	0140006f          	j	17bc <_Z6strcmpPKcS0_+0x94>
    17ac:	fec42783          	lw	a5,-20(s0)
    17b0:	00178793          	add	a5,a5,1
    17b4:	fef42623          	sw	a5,-20(s0)
    17b8:	f89ff06f          	j	1740 <_Z6strcmpPKcS0_+0x18>
    17bc:	00078513          	mv	a0,a5
    17c0:	02c12403          	lw	s0,44(sp)
    17c4:	03010113          	add	sp,sp,48
    17c8:	00008067          	ret

000017cc <_Z11dump_bufferPKci>:
    17cc:	fd010113          	add	sp,sp,-48
    17d0:	02112623          	sw	ra,44(sp)
    17d4:	02812423          	sw	s0,40(sp)
    17d8:	03212223          	sw	s2,36(sp)
    17dc:	03312023          	sw	s3,32(sp)
    17e0:	03010413          	add	s0,sp,48
    17e4:	fca42e23          	sw	a0,-36(s0)
    17e8:	fcb42c23          	sw	a1,-40(s0)
    17ec:	fdc42783          	lw	a5,-36(s0)
    17f0:	fef42623          	sw	a5,-20(s0)
    17f4:	fe042423          	sw	zero,-24(s0)
    17f8:	0440006f          	j	183c <_Z11dump_bufferPKci+0x70>
    17fc:	fec42783          	lw	a5,-20(s0)
    1800:	0007c783          	lbu	a5,0(a5)
    1804:	fef403a3          	sb	a5,-25(s0)
    1808:	fe744783          	lbu	a5,-25(s0)
    180c:	0ff7f793          	zext.b	a5,a5
    1810:	00078913          	mv	s2,a5
    1814:	00000993          	li	s3,0
    1818:	00090513          	mv	a0,s2
    181c:	00098593          	mv	a1,s3
    1820:	d11ff0ef          	jal	1530 <_Z11dump_resultx>
    1824:	fec42783          	lw	a5,-20(s0)
    1828:	00178793          	add	a5,a5,1
    182c:	fef42623          	sw	a5,-20(s0)
    1830:	fe842783          	lw	a5,-24(s0)
    1834:	00178793          	add	a5,a5,1
    1838:	fef42423          	sw	a5,-24(s0)
    183c:	fe842703          	lw	a4,-24(s0)
    1840:	fd842783          	lw	a5,-40(s0)
    1844:	faf74ce3          	blt	a4,a5,17fc <_Z11dump_bufferPKci+0x30>
    1848:	00000013          	nop
    184c:	00000013          	nop
    1850:	02c12083          	lw	ra,44(sp)
    1854:	02812403          	lw	s0,40(sp)
    1858:	02412903          	lw	s2,36(sp)
    185c:	02012983          	lw	s3,32(sp)
    1860:	03010113          	add	sp,sp,48
    1864:	00008067          	ret

00001868 <_Z16uart_print_hex32i>:
    1868:	fc010113          	add	sp,sp,-64
    186c:	02112e23          	sw	ra,60(sp)
    1870:	02812c23          	sw	s0,56(sp)
    1874:	04010413          	add	s0,sp,64
    1878:	fca42623          	sw	a0,-52(s0)
    187c:	00700793          	li	a5,7
    1880:	fef42623          	sw	a5,-20(s0)
    1884:	0700006f          	j	18f4 <_Z16uart_print_hex32i+0x8c>
    1888:	fec42783          	lw	a5,-20(s0)
    188c:	00279793          	sll	a5,a5,0x2
    1890:	fcc42703          	lw	a4,-52(s0)
    1894:	40f757b3          	sra	a5,a4,a5
    1898:	00f7f793          	and	a5,a5,15
    189c:	fef42423          	sw	a5,-24(s0)
    18a0:	fe842703          	lw	a4,-24(s0)
    18a4:	00900793          	li	a5,9
    18a8:	00e7cc63          	blt	a5,a4,18c0 <_Z16uart_print_hex32i+0x58>
    18ac:	fe842783          	lw	a5,-24(s0)
    18b0:	0ff7f793          	zext.b	a5,a5
    18b4:	03078793          	add	a5,a5,48
    18b8:	0ff7f793          	zext.b	a5,a5
    18bc:	0140006f          	j	18d0 <_Z16uart_print_hex32i+0x68>
    18c0:	fe842783          	lw	a5,-24(s0)
    18c4:	0ff7f793          	zext.b	a5,a5
    18c8:	03778793          	add	a5,a5,55
    18cc:	0ff7f793          	zext.b	a5,a5
    18d0:	00700693          	li	a3,7
    18d4:	fec42703          	lw	a4,-20(s0)
    18d8:	40e68733          	sub	a4,a3,a4
    18dc:	ff070713          	add	a4,a4,-16
    18e0:	00870733          	add	a4,a4,s0
    18e4:	fef70623          	sb	a5,-20(a4)
    18e8:	fec42783          	lw	a5,-20(s0)
    18ec:	fff78793          	add	a5,a5,-1
    18f0:	fef42623          	sw	a5,-20(s0)
    18f4:	fec42783          	lw	a5,-20(s0)
    18f8:	f807d8e3          	bgez	a5,1888 <_Z16uart_print_hex32i+0x20>
    18fc:	fe040223          	sb	zero,-28(s0)
    1900:	fdc40793          	add	a5,s0,-36
    1904:	00078513          	mv	a0,a5
    1908:	ba9ff0ef          	jal	14b0 <_Z10uart_printPKc>
    190c:	00000013          	nop
    1910:	03c12083          	lw	ra,60(sp)
    1914:	03812403          	lw	s0,56(sp)
    1918:	04010113          	add	sp,sp,64
    191c:	00008067          	ret

00001920 <_Z16uart_print_int32i>:
    1920:	fc010113          	add	sp,sp,-64
    1924:	02112e23          	sw	ra,60(sp)
    1928:	02812c23          	sw	s0,56(sp)
    192c:	04010413          	add	s0,sp,64
    1930:	fca42623          	sw	a0,-52(s0)
    1934:	fe042623          	sw	zero,-20(s0)
    1938:	fe0405a3          	sb	zero,-21(s0)
    193c:	fcc42783          	lw	a5,-52(s0)
    1940:	0007dc63          	bgez	a5,1958 <_Z16uart_print_int32i+0x38>
    1944:	00100793          	li	a5,1
    1948:	fef405a3          	sb	a5,-21(s0)
    194c:	fcc42783          	lw	a5,-52(s0)
    1950:	40f007b3          	neg	a5,a5
    1954:	fcf42623          	sw	a5,-52(s0)
    1958:	fcc42783          	lw	a5,-52(s0)
    195c:	06079463          	bnez	a5,19c4 <_Z16uart_print_int32i+0xa4>
    1960:	03000513          	li	a0,48
    1964:	ae9ff0ef          	jal	144c <_Z9uart_putcc>
    1968:	0c00006f          	j	1a28 <_Z16uart_print_int32i+0x108>
    196c:	fcc42783          	lw	a5,-52(s0)
    1970:	00a00593          	li	a1,10
    1974:	00078513          	mv	a0,a5
    1978:	670000ef          	jal	1fe8 <__modsi3>
    197c:	00050793          	mv	a5,a0
    1980:	fef42223          	sw	a5,-28(s0)
    1984:	fe442783          	lw	a5,-28(s0)
    1988:	0ff7f793          	zext.b	a5,a5
    198c:	03078793          	add	a5,a5,48
    1990:	0ff7f713          	zext.b	a4,a5
    1994:	fec42783          	lw	a5,-20(s0)
    1998:	00178693          	add	a3,a5,1
    199c:	fed42623          	sw	a3,-20(s0)
    19a0:	ff078793          	add	a5,a5,-16
    19a4:	008787b3          	add	a5,a5,s0
    19a8:	fee78423          	sb	a4,-24(a5)
    19ac:	fcc42783          	lw	a5,-52(s0)
    19b0:	00a00593          	li	a1,10
    19b4:	00078513          	mv	a0,a5
    19b8:	5ac000ef          	jal	1f64 <__divsi3>
    19bc:	00050793          	mv	a5,a0
    19c0:	fcf42623          	sw	a5,-52(s0)
    19c4:	fcc42783          	lw	a5,-52(s0)
    19c8:	faf042e3          	bgtz	a5,196c <_Z16uart_print_int32i+0x4c>
    19cc:	feb44783          	lbu	a5,-21(s0)
    19d0:	04078063          	beqz	a5,1a10 <_Z16uart_print_int32i+0xf0>
    19d4:	fec42783          	lw	a5,-20(s0)
    19d8:	00178713          	add	a4,a5,1
    19dc:	fee42623          	sw	a4,-20(s0)
    19e0:	ff078793          	add	a5,a5,-16
    19e4:	008787b3          	add	a5,a5,s0
    19e8:	02d00713          	li	a4,45
    19ec:	fee78423          	sb	a4,-24(a5)
    19f0:	0200006f          	j	1a10 <_Z16uart_print_int32i+0xf0>
    19f4:	fec42783          	lw	a5,-20(s0)
    19f8:	ff078793          	add	a5,a5,-16
    19fc:	008787b3          	add	a5,a5,s0
    1a00:	fe87c783          	lbu	a5,-24(a5)
    1a04:	00078513          	mv	a0,a5
    1a08:	a45ff0ef          	jal	144c <_Z9uart_putcc>
    1a0c:	00000013          	nop
    1a10:	fec42783          	lw	a5,-20(s0)
    1a14:	fff78713          	add	a4,a5,-1
    1a18:	fee42623          	sw	a4,-20(s0)
    1a1c:	00f037b3          	snez	a5,a5
    1a20:	0ff7f793          	zext.b	a5,a5
    1a24:	fc0798e3          	bnez	a5,19f4 <_Z16uart_print_int32i+0xd4>
    1a28:	03c12083          	lw	ra,60(sp)
    1a2c:	03812403          	lw	s0,56(sp)
    1a30:	04010113          	add	sp,sp,64
    1a34:	00008067          	ret

00001a38 <_Z16uart_print_int64x>:
    1a38:	fb010113          	add	sp,sp,-80
    1a3c:	04112623          	sw	ra,76(sp)
    1a40:	04812423          	sw	s0,72(sp)
    1a44:	05010413          	add	s0,sp,80
    1a48:	faa42c23          	sw	a0,-72(s0)
    1a4c:	fab42e23          	sw	a1,-68(s0)
    1a50:	fe042623          	sw	zero,-20(s0)
    1a54:	fe0405a3          	sb	zero,-21(s0)
    1a58:	fbc42783          	lw	a5,-68(s0)
    1a5c:	0207de63          	bgez	a5,1a98 <_Z16uart_print_int64x+0x60>
    1a60:	00100793          	li	a5,1
    1a64:	fef405a3          	sb	a5,-21(s0)
    1a68:	00000613          	li	a2,0
    1a6c:	00000693          	li	a3,0
    1a70:	fb842503          	lw	a0,-72(s0)
    1a74:	fbc42583          	lw	a1,-68(s0)
    1a78:	40a60733          	sub	a4,a2,a0
    1a7c:	00070813          	mv	a6,a4
    1a80:	01063833          	sltu	a6,a2,a6
    1a84:	40b687b3          	sub	a5,a3,a1
    1a88:	410786b3          	sub	a3,a5,a6
    1a8c:	00068793          	mv	a5,a3
    1a90:	fae42c23          	sw	a4,-72(s0)
    1a94:	faf42e23          	sw	a5,-68(s0)
    1a98:	fb842783          	lw	a5,-72(s0)
    1a9c:	fbc42703          	lw	a4,-68(s0)
    1aa0:	00e7e7b3          	or	a5,a5,a4
    1aa4:	08079663          	bnez	a5,1b30 <_Z16uart_print_int64x+0xf8>
    1aa8:	03000513          	li	a0,48
    1aac:	9a1ff0ef          	jal	144c <_Z9uart_putcc>
    1ab0:	0f40006f          	j	1ba4 <_Z16uart_print_int64x+0x16c>
    1ab4:	fb842703          	lw	a4,-72(s0)
    1ab8:	fbc42783          	lw	a5,-68(s0)
    1abc:	00a00613          	li	a2,10
    1ac0:	00000693          	li	a3,0
    1ac4:	00070513          	mv	a0,a4
    1ac8:	00078593          	mv	a1,a5
    1acc:	4f9000ef          	jal	27c4 <__moddi3>
    1ad0:	00050713          	mv	a4,a0
    1ad4:	00058793          	mv	a5,a1
    1ad8:	fee42223          	sw	a4,-28(s0)
    1adc:	fe442783          	lw	a5,-28(s0)
    1ae0:	0ff7f793          	zext.b	a5,a5
    1ae4:	03078793          	add	a5,a5,48
    1ae8:	0ff7f713          	zext.b	a4,a5
    1aec:	fec42783          	lw	a5,-20(s0)
    1af0:	00178693          	add	a3,a5,1
    1af4:	fed42623          	sw	a3,-20(s0)
    1af8:	ff078793          	add	a5,a5,-16
    1afc:	008787b3          	add	a5,a5,s0
    1b00:	fce78e23          	sb	a4,-36(a5)
    1b04:	fb842703          	lw	a4,-72(s0)
    1b08:	fbc42783          	lw	a5,-68(s0)
    1b0c:	00a00613          	li	a2,10
    1b10:	00000693          	li	a3,0
    1b14:	00070513          	mv	a0,a4
    1b18:	00078593          	mv	a1,a5
    1b1c:	5d8000ef          	jal	20f4 <__divdi3>
    1b20:	00050713          	mv	a4,a0
    1b24:	00058793          	mv	a5,a1
    1b28:	fae42c23          	sw	a4,-72(s0)
    1b2c:	faf42e23          	sw	a5,-68(s0)
    1b30:	fbc42783          	lw	a5,-68(s0)
    1b34:	f8f040e3          	bgtz	a5,1ab4 <_Z16uart_print_int64x+0x7c>
    1b38:	fbc42783          	lw	a5,-68(s0)
    1b3c:	00079663          	bnez	a5,1b48 <_Z16uart_print_int64x+0x110>
    1b40:	fb842783          	lw	a5,-72(s0)
    1b44:	f60798e3          	bnez	a5,1ab4 <_Z16uart_print_int64x+0x7c>
    1b48:	feb44783          	lbu	a5,-21(s0)
    1b4c:	04078063          	beqz	a5,1b8c <_Z16uart_print_int64x+0x154>
    1b50:	fec42783          	lw	a5,-20(s0)
    1b54:	00178713          	add	a4,a5,1
    1b58:	fee42623          	sw	a4,-20(s0)
    1b5c:	ff078793          	add	a5,a5,-16
    1b60:	008787b3          	add	a5,a5,s0
    1b64:	02d00713          	li	a4,45
    1b68:	fce78e23          	sb	a4,-36(a5)
    1b6c:	0200006f          	j	1b8c <_Z16uart_print_int64x+0x154>
    1b70:	fec42783          	lw	a5,-20(s0)
    1b74:	ff078793          	add	a5,a5,-16
    1b78:	008787b3          	add	a5,a5,s0
    1b7c:	fdc7c783          	lbu	a5,-36(a5)
    1b80:	00078513          	mv	a0,a5
    1b84:	8c9ff0ef          	jal	144c <_Z9uart_putcc>
    1b88:	00000013          	nop
    1b8c:	fec42783          	lw	a5,-20(s0)
    1b90:	fff78713          	add	a4,a5,-1
    1b94:	fee42623          	sw	a4,-20(s0)
    1b98:	00f037b3          	snez	a5,a5
    1b9c:	0ff7f793          	zext.b	a5,a5
    1ba0:	fc0798e3          	bnez	a5,1b70 <_Z16uart_print_int64x+0x138>
    1ba4:	04c12083          	lw	ra,76(sp)
    1ba8:	04812403          	lw	s0,72(sp)
    1bac:	05010113          	add	sp,sp,80
    1bb0:	00008067          	ret

00001bb4 <_Z12uart_getlinePci>:
    1bb4:	fd010113          	add	sp,sp,-48
    1bb8:	02112623          	sw	ra,44(sp)
    1bbc:	02812423          	sw	s0,40(sp)
    1bc0:	03010413          	add	s0,sp,48
    1bc4:	fca42e23          	sw	a0,-36(s0)
    1bc8:	fcb42c23          	sw	a1,-40(s0)
    1bcc:	fe0405a3          	sb	zero,-21(s0)
    1bd0:	fe042623          	sw	zero,-20(s0)
    1bd4:	00100513          	li	a0,1
    1bd8:	ffcff0ef          	jal	13d4 <_Z9uart_getcb>
    1bdc:	00050793          	mv	a5,a0
    1be0:	fef405a3          	sb	a5,-21(s0)
    1be4:	feb44703          	lbu	a4,-21(s0)
    1be8:	00a00793          	li	a5,10
    1bec:	00f70863          	beq	a4,a5,1bfc <_Z12uart_getlinePci+0x48>
    1bf0:	feb44703          	lbu	a4,-21(s0)
    1bf4:	00d00793          	li	a5,13
    1bf8:	02f71463          	bne	a4,a5,1c20 <_Z12uart_getlinePci+0x6c>
    1bfc:	fec42783          	lw	a5,-20(s0)
    1c00:	fdc42703          	lw	a4,-36(s0)
    1c04:	00f707b3          	add	a5,a4,a5
    1c08:	00078023          	sb	zero,0(a5)
    1c0c:	000307b7          	lui	a5,0x30
    1c10:	59c78513          	add	a0,a5,1436 # 3059c <__fini_array_end+0x2ad9c>
    1c14:	89dff0ef          	jal	14b0 <_Z10uart_printPKc>
    1c18:	fe042623          	sw	zero,-20(s0)
    1c1c:	0c80006f          	j	1ce4 <_Z12uart_getlinePci+0x130>
    1c20:	feb44703          	lbu	a4,-21(s0)
    1c24:	00800793          	li	a5,8
    1c28:	00f70863          	beq	a4,a5,1c38 <_Z12uart_getlinePci+0x84>
    1c2c:	feb44703          	lbu	a4,-21(s0)
    1c30:	07f00793          	li	a5,127
    1c34:	02f71863          	bne	a4,a5,1c64 <_Z12uart_getlinePci+0xb0>
    1c38:	fec42783          	lw	a5,-20(s0)
    1c3c:	02f05063          	blez	a5,1c5c <_Z12uart_getlinePci+0xa8>
    1c40:	fec42783          	lw	a5,-20(s0)
    1c44:	fff78793          	add	a5,a5,-1
    1c48:	fef42623          	sw	a5,-20(s0)
    1c4c:	000307b7          	lui	a5,0x30
    1c50:	5a478513          	add	a0,a5,1444 # 305a4 <__fini_array_end+0x2ada4>
    1c54:	85dff0ef          	jal	14b0 <_Z10uart_printPKc>
    1c58:	0880006f          	j	1ce0 <_Z12uart_getlinePci+0x12c>
    1c5c:	fe042623          	sw	zero,-20(s0)
    1c60:	0800006f          	j	1ce0 <_Z12uart_getlinePci+0x12c>
    1c64:	fd842783          	lw	a5,-40(s0)
    1c68:	fff78793          	add	a5,a5,-1
    1c6c:	fec42703          	lw	a4,-20(s0)
    1c70:	f6f752e3          	bge	a4,a5,1bd4 <_Z12uart_getlinePci+0x20>
    1c74:	feb44783          	lbu	a5,-21(s0)
    1c78:	02078a63          	beqz	a5,1cac <_Z12uart_getlinePci+0xf8>
    1c7c:	feb44703          	lbu	a4,-21(s0)
    1c80:	fdc42683          	lw	a3,-36(s0)
    1c84:	fec42783          	lw	a5,-20(s0)
    1c88:	00178613          	add	a2,a5,1
    1c8c:	fec42623          	sw	a2,-20(s0)
    1c90:	00f687b3          	add	a5,a3,a5
    1c94:	00e78023          	sb	a4,0(a5)
    1c98:	feb44783          	lbu	a5,-21(s0)
    1c9c:	00078513          	mv	a0,a5
    1ca0:	facff0ef          	jal	144c <_Z9uart_putcc>
    1ca4:	00000013          	nop
    1ca8:	f2dff06f          	j	1bd4 <_Z12uart_getlinePci+0x20>
    1cac:	fd842783          	lw	a5,-40(s0)
    1cb0:	fff78793          	add	a5,a5,-1
    1cb4:	fdc42703          	lw	a4,-36(s0)
    1cb8:	00f707b3          	add	a5,a4,a5
    1cbc:	00078023          	sb	zero,0(a5)
    1cc0:	000307b7          	lui	a5,0x30
    1cc4:	5a878513          	add	a0,a5,1448 # 305a8 <__fini_array_end+0x2ada8>
    1cc8:	fe8ff0ef          	jal	14b0 <_Z10uart_printPKc>
    1ccc:	fd842583          	lw	a1,-40(s0)
    1cd0:	fdc42503          	lw	a0,-36(s0)
    1cd4:	af9ff0ef          	jal	17cc <_Z11dump_bufferPKci>
    1cd8:	fe042623          	sw	zero,-20(s0)
    1cdc:	0080006f          	j	1ce4 <_Z12uart_getlinePci+0x130>
    1ce0:	ef5ff06f          	j	1bd4 <_Z12uart_getlinePci+0x20>
    1ce4:	00000013          	nop
    1ce8:	02c12083          	lw	ra,44(sp)
    1cec:	02812403          	lw	s0,40(sp)
    1cf0:	03010113          	add	sp,sp,48
    1cf4:	00008067          	ret

00001cf8 <_Z17cmd_arg_tokenizerPcS_S_ii>:
    1cf8:	fc010113          	add	sp,sp,-64
    1cfc:	02812e23          	sw	s0,60(sp)
    1d00:	04010413          	add	s0,sp,64
    1d04:	fca42e23          	sw	a0,-36(s0)
    1d08:	fcb42c23          	sw	a1,-40(s0)
    1d0c:	fcc42a23          	sw	a2,-44(s0)
    1d10:	fcd42823          	sw	a3,-48(s0)
    1d14:	fce42623          	sw	a4,-52(s0)
    1d18:	fe042623          	sw	zero,-20(s0)
    1d1c:	fe042423          	sw	zero,-24(s0)
    1d20:	02c0006f          	j	1d4c <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    1d24:	fdc42783          	lw	a5,-36(s0)
    1d28:	00178713          	add	a4,a5,1
    1d2c:	fce42e23          	sw	a4,-36(s0)
    1d30:	0007c703          	lbu	a4,0(a5)
    1d34:	fd842683          	lw	a3,-40(s0)
    1d38:	fec42783          	lw	a5,-20(s0)
    1d3c:	00178613          	add	a2,a5,1
    1d40:	fec42623          	sw	a2,-20(s0)
    1d44:	00f687b3          	add	a5,a3,a5
    1d48:	00e78023          	sb	a4,0(a5)
    1d4c:	fdc42783          	lw	a5,-36(s0)
    1d50:	0007c783          	lbu	a5,0(a5)
    1d54:	02078263          	beqz	a5,1d78 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    1d58:	fdc42783          	lw	a5,-36(s0)
    1d5c:	0007c703          	lbu	a4,0(a5)
    1d60:	02000793          	li	a5,32
    1d64:	00f70a63          	beq	a4,a5,1d78 <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    1d68:	fd042783          	lw	a5,-48(s0)
    1d6c:	fff78793          	add	a5,a5,-1
    1d70:	fec42703          	lw	a4,-20(s0)
    1d74:	faf748e3          	blt	a4,a5,1d24 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    1d78:	fec42783          	lw	a5,-20(s0)
    1d7c:	fd842703          	lw	a4,-40(s0)
    1d80:	00f707b3          	add	a5,a4,a5
    1d84:	00078023          	sb	zero,0(a5)
    1d88:	0100006f          	j	1d98 <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    1d8c:	fdc42783          	lw	a5,-36(s0)
    1d90:	00178793          	add	a5,a5,1
    1d94:	fcf42e23          	sw	a5,-36(s0)
    1d98:	fdc42783          	lw	a5,-36(s0)
    1d9c:	0007c703          	lbu	a4,0(a5)
    1da0:	02000793          	li	a5,32
    1da4:	fef704e3          	beq	a4,a5,1d8c <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    1da8:	02c0006f          	j	1dd4 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    1dac:	fdc42783          	lw	a5,-36(s0)
    1db0:	00178713          	add	a4,a5,1
    1db4:	fce42e23          	sw	a4,-36(s0)
    1db8:	0007c703          	lbu	a4,0(a5)
    1dbc:	fd442683          	lw	a3,-44(s0)
    1dc0:	fe842783          	lw	a5,-24(s0)
    1dc4:	00178613          	add	a2,a5,1
    1dc8:	fec42423          	sw	a2,-24(s0)
    1dcc:	00f687b3          	add	a5,a3,a5
    1dd0:	00e78023          	sb	a4,0(a5)
    1dd4:	fdc42783          	lw	a5,-36(s0)
    1dd8:	0007c783          	lbu	a5,0(a5)
    1ddc:	00078a63          	beqz	a5,1df0 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    1de0:	fcc42783          	lw	a5,-52(s0)
    1de4:	fff78793          	add	a5,a5,-1
    1de8:	fe842703          	lw	a4,-24(s0)
    1dec:	fcf740e3          	blt	a4,a5,1dac <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    1df0:	fe842783          	lw	a5,-24(s0)
    1df4:	fd442703          	lw	a4,-44(s0)
    1df8:	00f707b3          	add	a5,a4,a5
    1dfc:	00078023          	sb	zero,0(a5)
    1e00:	00000013          	nop
    1e04:	03c12403          	lw	s0,60(sp)
    1e08:	04010113          	add	sp,sp,64
    1e0c:	00008067          	ret

00001e10 <_Z15process_commandPcS_PVb>:
    1e10:	fe010113          	add	sp,sp,-32
    1e14:	00112e23          	sw	ra,28(sp)
    1e18:	00812c23          	sw	s0,24(sp)
    1e1c:	02010413          	add	s0,sp,32
    1e20:	fea42623          	sw	a0,-20(s0)
    1e24:	feb42423          	sw	a1,-24(s0)
    1e28:	fec42223          	sw	a2,-28(s0)
    1e2c:	fec42783          	lw	a5,-20(s0)
    1e30:	0007c783          	lbu	a5,0(a5)
    1e34:	0e078c63          	beqz	a5,1f2c <_Z15process_commandPcS_PVb+0x11c>
    1e38:	000307b7          	lui	a5,0x30
    1e3c:	5bc78593          	add	a1,a5,1468 # 305bc <__fini_array_end+0x2adbc>
    1e40:	fec42503          	lw	a0,-20(s0)
    1e44:	8e5ff0ef          	jal	1728 <_Z6strcmpPKcS0_>
    1e48:	00050793          	mv	a5,a0
    1e4c:	0017b793          	seqz	a5,a5
    1e50:	0ff7f793          	zext.b	a5,a5
    1e54:	00078863          	beqz	a5,1e64 <_Z15process_commandPcS_PVb+0x54>
    1e58:	fe842503          	lw	a0,-24(s0)
    1e5c:	c51fe0ef          	jal	aac <_Z8cmd_echoPc>
    1e60:	0d00006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1e64:	000307b7          	lui	a5,0x30
    1e68:	5c478593          	add	a1,a5,1476 # 305c4 <__fini_array_end+0x2adc4>
    1e6c:	fec42503          	lw	a0,-20(s0)
    1e70:	8b9ff0ef          	jal	1728 <_Z6strcmpPKcS0_>
    1e74:	00050793          	mv	a5,a0
    1e78:	0017b793          	seqz	a5,a5
    1e7c:	0ff7f793          	zext.b	a5,a5
    1e80:	00078863          	beqz	a5,1e90 <_Z15process_commandPcS_PVb+0x80>
    1e84:	fe842503          	lw	a0,-24(s0)
    1e88:	c61fe0ef          	jal	ae8 <_Z8cmd_helpPc>
    1e8c:	0a40006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1e90:	000307b7          	lui	a5,0x30
    1e94:	5cc78593          	add	a1,a5,1484 # 305cc <__fini_array_end+0x2adcc>
    1e98:	fec42503          	lw	a0,-20(s0)
    1e9c:	88dff0ef          	jal	1728 <_Z6strcmpPKcS0_>
    1ea0:	00050793          	mv	a5,a0
    1ea4:	0017b793          	seqz	a5,a5
    1ea8:	0ff7f793          	zext.b	a5,a5
    1eac:	00078663          	beqz	a5,1eb8 <_Z15process_commandPcS_PVb+0xa8>
    1eb0:	bb5fe0ef          	jal	a64 <_Z8cmd_freev>
    1eb4:	07c0006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1eb8:	000307b7          	lui	a5,0x30
    1ebc:	5d478593          	add	a1,a5,1492 # 305d4 <__fini_array_end+0x2add4>
    1ec0:	fec42503          	lw	a0,-20(s0)
    1ec4:	865ff0ef          	jal	1728 <_Z6strcmpPKcS0_>
    1ec8:	00050793          	mv	a5,a0
    1ecc:	0017b793          	seqz	a5,a5
    1ed0:	0ff7f793          	zext.b	a5,a5
    1ed4:	00078663          	beqz	a5,1ee0 <_Z15process_commandPcS_PVb+0xd0>
    1ed8:	888ff0ef          	jal	f60 <_Z21cmd_matrix_multiplierv>
    1edc:	0540006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1ee0:	000307b7          	lui	a5,0x30
    1ee4:	5dc78593          	add	a1,a5,1500 # 305dc <__fini_array_end+0x2addc>
    1ee8:	fec42503          	lw	a0,-20(s0)
    1eec:	83dff0ef          	jal	1728 <_Z6strcmpPKcS0_>
    1ef0:	00050793          	mv	a5,a0
    1ef4:	0017b793          	seqz	a5,a5
    1ef8:	0ff7f793          	zext.b	a5,a5
    1efc:	00078a63          	beqz	a5,1f10 <_Z15process_commandPcS_PVb+0x100>
    1f00:	fe442583          	lw	a1,-28(s0)
    1f04:	fe842503          	lw	a0,-24(s0)
    1f08:	c5dfe0ef          	jal	b64 <_Z8cmd_exitPcPVb>
    1f0c:	0240006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1f10:	000307b7          	lui	a5,0x30
    1f14:	5e478513          	add	a0,a5,1508 # 305e4 <__fini_array_end+0x2ade4>
    1f18:	d98ff0ef          	jal	14b0 <_Z10uart_printPKc>
    1f1c:	000307b7          	lui	a5,0x30
    1f20:	5e878513          	add	a0,a5,1512 # 305e8 <__fini_array_end+0x2ade8>
    1f24:	d8cff0ef          	jal	14b0 <_Z10uart_printPKc>
    1f28:	0080006f          	j	1f30 <_Z15process_commandPcS_PVb+0x120>
    1f2c:	00000013          	nop
    1f30:	01c12083          	lw	ra,28(sp)
    1f34:	01812403          	lw	s0,24(sp)
    1f38:	02010113          	add	sp,sp,32
    1f3c:	00008067          	ret

00001f40 <__mulsi3>:
    1f40:	00050613          	mv	a2,a0
    1f44:	00000513          	li	a0,0
    1f48:	0015f693          	and	a3,a1,1
    1f4c:	00068463          	beqz	a3,1f54 <__mulsi3+0x14>
    1f50:	00c50533          	add	a0,a0,a2
    1f54:	0015d593          	srl	a1,a1,0x1
    1f58:	00161613          	sll	a2,a2,0x1
    1f5c:	fe0596e3          	bnez	a1,1f48 <__mulsi3+0x8>
    1f60:	00008067          	ret

00001f64 <__divsi3>:
    1f64:	06054063          	bltz	a0,1fc4 <__umodsi3+0x10>
    1f68:	0605c663          	bltz	a1,1fd4 <__umodsi3+0x20>

00001f6c <__hidden___udivsi3>:
    1f6c:	00058613          	mv	a2,a1
    1f70:	00050593          	mv	a1,a0
    1f74:	fff00513          	li	a0,-1
    1f78:	02060c63          	beqz	a2,1fb0 <__hidden___udivsi3+0x44>
    1f7c:	00100693          	li	a3,1
    1f80:	00b67a63          	bgeu	a2,a1,1f94 <__hidden___udivsi3+0x28>
    1f84:	00c05863          	blez	a2,1f94 <__hidden___udivsi3+0x28>
    1f88:	00161613          	sll	a2,a2,0x1
    1f8c:	00169693          	sll	a3,a3,0x1
    1f90:	feb66ae3          	bltu	a2,a1,1f84 <__hidden___udivsi3+0x18>
    1f94:	00000513          	li	a0,0
    1f98:	00c5e663          	bltu	a1,a2,1fa4 <__hidden___udivsi3+0x38>
    1f9c:	40c585b3          	sub	a1,a1,a2
    1fa0:	00d56533          	or	a0,a0,a3
    1fa4:	0016d693          	srl	a3,a3,0x1
    1fa8:	00165613          	srl	a2,a2,0x1
    1fac:	fe0696e3          	bnez	a3,1f98 <__hidden___udivsi3+0x2c>
    1fb0:	00008067          	ret

00001fb4 <__umodsi3>:
    1fb4:	00008293          	mv	t0,ra
    1fb8:	fb5ff0ef          	jal	1f6c <__hidden___udivsi3>
    1fbc:	00058513          	mv	a0,a1
    1fc0:	00028067          	jr	t0
    1fc4:	40a00533          	neg	a0,a0
    1fc8:	00b04863          	bgtz	a1,1fd8 <__umodsi3+0x24>
    1fcc:	40b005b3          	neg	a1,a1
    1fd0:	f9dff06f          	j	1f6c <__hidden___udivsi3>
    1fd4:	40b005b3          	neg	a1,a1
    1fd8:	00008293          	mv	t0,ra
    1fdc:	f91ff0ef          	jal	1f6c <__hidden___udivsi3>
    1fe0:	40a00533          	neg	a0,a0
    1fe4:	00028067          	jr	t0

00001fe8 <__modsi3>:
    1fe8:	00008293          	mv	t0,ra
    1fec:	0005ca63          	bltz	a1,2000 <__modsi3+0x18>
    1ff0:	00054c63          	bltz	a0,2008 <__modsi3+0x20>
    1ff4:	f79ff0ef          	jal	1f6c <__hidden___udivsi3>
    1ff8:	00058513          	mv	a0,a1
    1ffc:	00028067          	jr	t0
    2000:	40b005b3          	neg	a1,a1
    2004:	fe0558e3          	bgez	a0,1ff4 <__modsi3+0xc>
    2008:	40a00533          	neg	a0,a0
    200c:	f61ff0ef          	jal	1f6c <__hidden___udivsi3>
    2010:	40b00533          	neg	a0,a1
    2014:	00028067          	jr	t0

00002018 <memset>:
    2018:	00f00313          	li	t1,15
    201c:	00050713          	mv	a4,a0
    2020:	02c37e63          	bgeu	t1,a2,205c <memset+0x44>
    2024:	00f77793          	and	a5,a4,15
    2028:	0a079063          	bnez	a5,20c8 <memset+0xb0>
    202c:	08059263          	bnez	a1,20b0 <memset+0x98>
    2030:	ff067693          	and	a3,a2,-16
    2034:	00f67613          	and	a2,a2,15
    2038:	00e686b3          	add	a3,a3,a4
    203c:	00b72023          	sw	a1,0(a4)
    2040:	00b72223          	sw	a1,4(a4)
    2044:	00b72423          	sw	a1,8(a4)
    2048:	00b72623          	sw	a1,12(a4)
    204c:	01070713          	add	a4,a4,16
    2050:	fed766e3          	bltu	a4,a3,203c <memset+0x24>
    2054:	00061463          	bnez	a2,205c <memset+0x44>
    2058:	00008067          	ret
    205c:	40c306b3          	sub	a3,t1,a2
    2060:	00269693          	sll	a3,a3,0x2
    2064:	00000297          	auipc	t0,0x0
    2068:	005686b3          	add	a3,a3,t0
    206c:	00c68067          	jr	12(a3)
    2070:	00b70723          	sb	a1,14(a4)
    2074:	00b706a3          	sb	a1,13(a4)
    2078:	00b70623          	sb	a1,12(a4)
    207c:	00b705a3          	sb	a1,11(a4)
    2080:	00b70523          	sb	a1,10(a4)
    2084:	00b704a3          	sb	a1,9(a4)
    2088:	00b70423          	sb	a1,8(a4)
    208c:	00b703a3          	sb	a1,7(a4)
    2090:	00b70323          	sb	a1,6(a4)
    2094:	00b702a3          	sb	a1,5(a4)
    2098:	00b70223          	sb	a1,4(a4)
    209c:	00b701a3          	sb	a1,3(a4)
    20a0:	00b70123          	sb	a1,2(a4)
    20a4:	00b700a3          	sb	a1,1(a4)
    20a8:	00b70023          	sb	a1,0(a4)
    20ac:	00008067          	ret
    20b0:	0ff5f593          	zext.b	a1,a1
    20b4:	00859693          	sll	a3,a1,0x8
    20b8:	00d5e5b3          	or	a1,a1,a3
    20bc:	01059693          	sll	a3,a1,0x10
    20c0:	00d5e5b3          	or	a1,a1,a3
    20c4:	f6dff06f          	j	2030 <memset+0x18>
    20c8:	00279693          	sll	a3,a5,0x2
    20cc:	00000297          	auipc	t0,0x0
    20d0:	005686b3          	add	a3,a3,t0
    20d4:	00008293          	mv	t0,ra
    20d8:	fa0680e7          	jalr	-96(a3)
    20dc:	00028093          	mv	ra,t0
    20e0:	ff078793          	add	a5,a5,-16
    20e4:	40f70733          	sub	a4,a4,a5
    20e8:	00f60633          	add	a2,a2,a5
    20ec:	f6c378e3          	bgeu	t1,a2,205c <memset+0x44>
    20f0:	f3dff06f          	j	202c <memset+0x14>

000020f4 <__divdi3>:
    20f4:	fd010113          	add	sp,sp,-48
    20f8:	03212023          	sw	s2,32(sp)
    20fc:	01412c23          	sw	s4,24(sp)
    2100:	02112623          	sw	ra,44(sp)
    2104:	02912223          	sw	s1,36(sp)
    2108:	01312e23          	sw	s3,28(sp)
    210c:	01712623          	sw	s7,12(sp)
    2110:	00050913          	mv	s2,a0
    2114:	00000a13          	li	s4,0
    2118:	1a05c663          	bltz	a1,22c4 <__divdi3+0x1d0>
    211c:	0006dc63          	bgez	a3,2134 <__divdi3+0x40>
    2120:	00c037b3          	snez	a5,a2
    2124:	40d006b3          	neg	a3,a3
    2128:	fffa4a13          	not	s4,s4
    212c:	40f686b3          	sub	a3,a3,a5
    2130:	40c00633          	neg	a2,a2
    2134:	00060b93          	mv	s7,a2
    2138:	00090993          	mv	s3,s2
    213c:	00058493          	mv	s1,a1
    2140:	14069063          	bnez	a3,2280 <__divdi3+0x18c>
    2144:	02812423          	sw	s0,40(sp)
    2148:	01512a23          	sw	s5,20(sp)
    214c:	01612823          	sw	s6,16(sp)
    2150:	1cc5fe63          	bgeu	a1,a2,232c <__divdi3+0x238>
    2154:	000107b7          	lui	a5,0x10
    2158:	2ef66463          	bltu	a2,a5,2440 <__divdi3+0x34c>
    215c:	010007b7          	lui	a5,0x1000
    2160:	01800713          	li	a4,24
    2164:	00f67463          	bgeu	a2,a5,216c <__divdi3+0x78>
    2168:	01000713          	li	a4,16
    216c:	00e656b3          	srl	a3,a2,a4
    2170:	0002e797          	auipc	a5,0x2e
    2174:	49878793          	add	a5,a5,1176 # 30608 <__clz_tab>
    2178:	00d787b3          	add	a5,a5,a3
    217c:	0007c783          	lbu	a5,0(a5)
    2180:	02000693          	li	a3,32
    2184:	00e787b3          	add	a5,a5,a4
    2188:	40f68733          	sub	a4,a3,a5
    218c:	00f68c63          	beq	a3,a5,21a4 <__divdi3+0xb0>
    2190:	00e594b3          	sll	s1,a1,a4
    2194:	00f957b3          	srl	a5,s2,a5
    2198:	00e61bb3          	sll	s7,a2,a4
    219c:	0097e4b3          	or	s1,a5,s1
    21a0:	00e919b3          	sll	s3,s2,a4
    21a4:	010bda93          	srl	s5,s7,0x10
    21a8:	000a8593          	mv	a1,s5
    21ac:	00048513          	mv	a0,s1
    21b0:	010b9b13          	sll	s6,s7,0x10
    21b4:	db9ff0ef          	jal	1f6c <__hidden___udivsi3>
    21b8:	010b5b13          	srl	s6,s6,0x10
    21bc:	00050593          	mv	a1,a0
    21c0:	00050413          	mv	s0,a0
    21c4:	000b0513          	mv	a0,s6
    21c8:	d79ff0ef          	jal	1f40 <__mulsi3>
    21cc:	00050793          	mv	a5,a0
    21d0:	000a8593          	mv	a1,s5
    21d4:	00048513          	mv	a0,s1
    21d8:	00078493          	mv	s1,a5
    21dc:	dd9ff0ef          	jal	1fb4 <__umodsi3>
    21e0:	01051513          	sll	a0,a0,0x10
    21e4:	0109d793          	srl	a5,s3,0x10
    21e8:	00a7e7b3          	or	a5,a5,a0
    21ec:	0097fc63          	bgeu	a5,s1,2204 <__divdi3+0x110>
    21f0:	00fb87b3          	add	a5,s7,a5
    21f4:	fff40713          	add	a4,s0,-1
    21f8:	0177e463          	bltu	a5,s7,2200 <__divdi3+0x10c>
    21fc:	5a97e863          	bltu	a5,s1,27ac <__divdi3+0x6b8>
    2200:	00070413          	mv	s0,a4
    2204:	409784b3          	sub	s1,a5,s1
    2208:	000a8593          	mv	a1,s5
    220c:	00048513          	mv	a0,s1
    2210:	d5dff0ef          	jal	1f6c <__hidden___udivsi3>
    2214:	00050593          	mv	a1,a0
    2218:	00050913          	mv	s2,a0
    221c:	000b0513          	mv	a0,s6
    2220:	d21ff0ef          	jal	1f40 <__mulsi3>
    2224:	00050793          	mv	a5,a0
    2228:	000a8593          	mv	a1,s5
    222c:	00048513          	mv	a0,s1
    2230:	01099993          	sll	s3,s3,0x10
    2234:	00078493          	mv	s1,a5
    2238:	d7dff0ef          	jal	1fb4 <__umodsi3>
    223c:	01051513          	sll	a0,a0,0x10
    2240:	0109d993          	srl	s3,s3,0x10
    2244:	00a9e9b3          	or	s3,s3,a0
    2248:	0099fe63          	bgeu	s3,s1,2264 <__divdi3+0x170>
    224c:	013b89b3          	add	s3,s7,s3
    2250:	fff90793          	add	a5,s2,-1
    2254:	0179e663          	bltu	s3,s7,2260 <__divdi3+0x16c>
    2258:	ffe90913          	add	s2,s2,-2
    225c:	0099e463          	bltu	s3,s1,2264 <__divdi3+0x170>
    2260:	00078913          	mv	s2,a5
    2264:	01041413          	sll	s0,s0,0x10
    2268:	01246533          	or	a0,s0,s2
    226c:	01412a83          	lw	s5,20(sp)
    2270:	02812403          	lw	s0,40(sp)
    2274:	01012b03          	lw	s6,16(sp)
    2278:	00000913          	li	s2,0
    227c:	0100006f          	j	228c <__divdi3+0x198>
    2280:	04d5fe63          	bgeu	a1,a3,22dc <__divdi3+0x1e8>
    2284:	00000913          	li	s2,0
    2288:	00000513          	li	a0,0
    228c:	00090593          	mv	a1,s2
    2290:	000a0a63          	beqz	s4,22a4 <__divdi3+0x1b0>
    2294:	00a037b3          	snez	a5,a0
    2298:	412005b3          	neg	a1,s2
    229c:	40f585b3          	sub	a1,a1,a5
    22a0:	40a00533          	neg	a0,a0
    22a4:	02c12083          	lw	ra,44(sp)
    22a8:	02412483          	lw	s1,36(sp)
    22ac:	02012903          	lw	s2,32(sp)
    22b0:	01c12983          	lw	s3,28(sp)
    22b4:	01812a03          	lw	s4,24(sp)
    22b8:	00c12b83          	lw	s7,12(sp)
    22bc:	03010113          	add	sp,sp,48
    22c0:	00008067          	ret
    22c4:	00a037b3          	snez	a5,a0
    22c8:	40b005b3          	neg	a1,a1
    22cc:	40f585b3          	sub	a1,a1,a5
    22d0:	40a00933          	neg	s2,a0
    22d4:	fff00a13          	li	s4,-1
    22d8:	e45ff06f          	j	211c <__divdi3+0x28>
    22dc:	000107b7          	lui	a5,0x10
    22e0:	28f6e463          	bltu	a3,a5,2568 <__divdi3+0x474>
    22e4:	01000737          	lui	a4,0x1000
    22e8:	01800793          	li	a5,24
    22ec:	00e6f463          	bgeu	a3,a4,22f4 <__divdi3+0x200>
    22f0:	01000793          	li	a5,16
    22f4:	00f6d533          	srl	a0,a3,a5
    22f8:	0002e717          	auipc	a4,0x2e
    22fc:	31070713          	add	a4,a4,784 # 30608 <__clz_tab>
    2300:	00a70733          	add	a4,a4,a0
    2304:	00074703          	lbu	a4,0(a4)
    2308:	02000513          	li	a0,32
    230c:	00f70733          	add	a4,a4,a5
    2310:	40e50bb3          	sub	s7,a0,a4
    2314:	28e51263          	bne	a0,a4,2598 <__divdi3+0x4a4>
    2318:	44b6ee63          	bltu	a3,a1,2774 <__divdi3+0x680>
    231c:	00c93533          	sltu	a0,s2,a2
    2320:	00153513          	seqz	a0,a0
    2324:	00000913          	li	s2,0
    2328:	f65ff06f          	j	228c <__divdi3+0x198>
    232c:	12060263          	beqz	a2,2450 <__divdi3+0x35c>
    2330:	000107b7          	lui	a5,0x10
    2334:	42f67663          	bgeu	a2,a5,2760 <__divdi3+0x66c>
    2338:	10063713          	sltiu	a4,a2,256
    233c:	00173713          	seqz	a4,a4
    2340:	00371713          	sll	a4,a4,0x3
    2344:	00e656b3          	srl	a3,a2,a4
    2348:	0002e797          	auipc	a5,0x2e
    234c:	2c078793          	add	a5,a5,704 # 30608 <__clz_tab>
    2350:	00d787b3          	add	a5,a5,a3
    2354:	0007ca83          	lbu	s5,0(a5)
    2358:	02000793          	li	a5,32
    235c:	00ea8ab3          	add	s5,s5,a4
    2360:	41578733          	sub	a4,a5,s5
    2364:	11579a63          	bne	a5,s5,2478 <__divdi3+0x384>
    2368:	01061493          	sll	s1,a2,0x10
    236c:	40c58ab3          	sub	s5,a1,a2
    2370:	01065b13          	srl	s6,a2,0x10
    2374:	0104d493          	srl	s1,s1,0x10
    2378:	00100913          	li	s2,1
    237c:	000b0593          	mv	a1,s6
    2380:	000a8513          	mv	a0,s5
    2384:	be9ff0ef          	jal	1f6c <__hidden___udivsi3>
    2388:	00048593          	mv	a1,s1
    238c:	00050413          	mv	s0,a0
    2390:	bb1ff0ef          	jal	1f40 <__mulsi3>
    2394:	00050793          	mv	a5,a0
    2398:	000b0593          	mv	a1,s6
    239c:	000a8513          	mv	a0,s5
    23a0:	00078a93          	mv	s5,a5
    23a4:	c11ff0ef          	jal	1fb4 <__umodsi3>
    23a8:	01051513          	sll	a0,a0,0x10
    23ac:	0109d793          	srl	a5,s3,0x10
    23b0:	00a7e7b3          	or	a5,a5,a0
    23b4:	0157fc63          	bgeu	a5,s5,23cc <__divdi3+0x2d8>
    23b8:	00fb87b3          	add	a5,s7,a5
    23bc:	fff40713          	add	a4,s0,-1
    23c0:	0177e463          	bltu	a5,s7,23c8 <__divdi3+0x2d4>
    23c4:	3d57ee63          	bltu	a5,s5,27a0 <__divdi3+0x6ac>
    23c8:	00070413          	mv	s0,a4
    23cc:	41578ab3          	sub	s5,a5,s5
    23d0:	000b0593          	mv	a1,s6
    23d4:	000a8513          	mv	a0,s5
    23d8:	b95ff0ef          	jal	1f6c <__hidden___udivsi3>
    23dc:	00048593          	mv	a1,s1
    23e0:	00050493          	mv	s1,a0
    23e4:	b5dff0ef          	jal	1f40 <__mulsi3>
    23e8:	00050793          	mv	a5,a0
    23ec:	000b0593          	mv	a1,s6
    23f0:	000a8513          	mv	a0,s5
    23f4:	01099993          	sll	s3,s3,0x10
    23f8:	00078a93          	mv	s5,a5
    23fc:	bb9ff0ef          	jal	1fb4 <__umodsi3>
    2400:	01051513          	sll	a0,a0,0x10
    2404:	0109d993          	srl	s3,s3,0x10
    2408:	00a9e9b3          	or	s3,s3,a0
    240c:	0159fe63          	bgeu	s3,s5,2428 <__divdi3+0x334>
    2410:	013b89b3          	add	s3,s7,s3
    2414:	fff48793          	add	a5,s1,-1
    2418:	0179e663          	bltu	s3,s7,2424 <__divdi3+0x330>
    241c:	ffe48493          	add	s1,s1,-2
    2420:	0159e463          	bltu	s3,s5,2428 <__divdi3+0x334>
    2424:	00078493          	mv	s1,a5
    2428:	01041513          	sll	a0,s0,0x10
    242c:	01412a83          	lw	s5,20(sp)
    2430:	02812403          	lw	s0,40(sp)
    2434:	01012b03          	lw	s6,16(sp)
    2438:	00956533          	or	a0,a0,s1
    243c:	e51ff06f          	j	228c <__divdi3+0x198>
    2440:	10063713          	sltiu	a4,a2,256
    2444:	00173713          	seqz	a4,a4
    2448:	00371713          	sll	a4,a4,0x3
    244c:	d21ff06f          	j	216c <__divdi3+0x78>
    2450:	00000693          	li	a3,0
    2454:	0002e797          	auipc	a5,0x2e
    2458:	1b478793          	add	a5,a5,436 # 30608 <__clz_tab>
    245c:	00d787b3          	add	a5,a5,a3
    2460:	0007ca83          	lbu	s5,0(a5)
    2464:	00000713          	li	a4,0
    2468:	02000793          	li	a5,32
    246c:	00ea8ab3          	add	s5,s5,a4
    2470:	41578733          	sub	a4,a5,s5
    2474:	ef578ae3          	beq	a5,s5,2368 <__divdi3+0x274>
    2478:	00e61bb3          	sll	s7,a2,a4
    247c:	01812423          	sw	s8,8(sp)
    2480:	010bdb13          	srl	s6,s7,0x10
    2484:	0155dc33          	srl	s8,a1,s5
    2488:	00e597b3          	sll	a5,a1,a4
    248c:	01595ab3          	srl	s5,s2,s5
    2490:	000b0593          	mv	a1,s6
    2494:	000c0513          	mv	a0,s8
    2498:	010b9493          	sll	s1,s7,0x10
    249c:	00faeab3          	or	s5,s5,a5
    24a0:	00e919b3          	sll	s3,s2,a4
    24a4:	0104d493          	srl	s1,s1,0x10
    24a8:	ac5ff0ef          	jal	1f6c <__hidden___udivsi3>
    24ac:	00050593          	mv	a1,a0
    24b0:	00050913          	mv	s2,a0
    24b4:	00048513          	mv	a0,s1
    24b8:	a89ff0ef          	jal	1f40 <__mulsi3>
    24bc:	00050413          	mv	s0,a0
    24c0:	000b0593          	mv	a1,s6
    24c4:	000c0513          	mv	a0,s8
    24c8:	aedff0ef          	jal	1fb4 <__umodsi3>
    24cc:	01051513          	sll	a0,a0,0x10
    24d0:	010ad793          	srl	a5,s5,0x10
    24d4:	00a7e7b3          	or	a5,a5,a0
    24d8:	0087fe63          	bgeu	a5,s0,24f4 <__divdi3+0x400>
    24dc:	00fb87b3          	add	a5,s7,a5
    24e0:	fff90713          	add	a4,s2,-1
    24e4:	2b77e663          	bltu	a5,s7,2790 <__divdi3+0x69c>
    24e8:	2a87f463          	bgeu	a5,s0,2790 <__divdi3+0x69c>
    24ec:	ffe90913          	add	s2,s2,-2
    24f0:	017787b3          	add	a5,a5,s7
    24f4:	40878433          	sub	s0,a5,s0
    24f8:	000b0593          	mv	a1,s6
    24fc:	00040513          	mv	a0,s0
    2500:	a6dff0ef          	jal	1f6c <__hidden___udivsi3>
    2504:	00050593          	mv	a1,a0
    2508:	00050c13          	mv	s8,a0
    250c:	00048513          	mv	a0,s1
    2510:	a31ff0ef          	jal	1f40 <__mulsi3>
    2514:	00050793          	mv	a5,a0
    2518:	000b0593          	mv	a1,s6
    251c:	00040513          	mv	a0,s0
    2520:	010a9a93          	sll	s5,s5,0x10
    2524:	00078413          	mv	s0,a5
    2528:	a8dff0ef          	jal	1fb4 <__umodsi3>
    252c:	01051513          	sll	a0,a0,0x10
    2530:	010ada93          	srl	s5,s5,0x10
    2534:	00aaeab3          	or	s5,s5,a0
    2538:	008afe63          	bgeu	s5,s0,2554 <__divdi3+0x460>
    253c:	015b8ab3          	add	s5,s7,s5
    2540:	fffc0793          	add	a5,s8,-1
    2544:	237aee63          	bltu	s5,s7,2780 <__divdi3+0x68c>
    2548:	228afc63          	bgeu	s5,s0,2780 <__divdi3+0x68c>
    254c:	ffec0c13          	add	s8,s8,-2
    2550:	017a8ab3          	add	s5,s5,s7
    2554:	01091913          	sll	s2,s2,0x10
    2558:	01896933          	or	s2,s2,s8
    255c:	408a8ab3          	sub	s5,s5,s0
    2560:	00812c03          	lw	s8,8(sp)
    2564:	e19ff06f          	j	237c <__divdi3+0x288>
    2568:	1006b793          	sltiu	a5,a3,256
    256c:	0017b793          	seqz	a5,a5
    2570:	00379793          	sll	a5,a5,0x3
    2574:	00f6d533          	srl	a0,a3,a5
    2578:	0002e717          	auipc	a4,0x2e
    257c:	09070713          	add	a4,a4,144 # 30608 <__clz_tab>
    2580:	00a70733          	add	a4,a4,a0
    2584:	00074703          	lbu	a4,0(a4)
    2588:	02000513          	li	a0,32
    258c:	00f70733          	add	a4,a4,a5
    2590:	40e50bb3          	sub	s7,a0,a4
    2594:	d8e502e3          	beq	a0,a4,2318 <__divdi3+0x224>
    2598:	017696b3          	sll	a3,a3,s7
    259c:	01a12023          	sw	s10,0(sp)
    25a0:	00e65d33          	srl	s10,a2,a4
    25a4:	00dd6d33          	or	s10,s10,a3
    25a8:	01512a23          	sw	s5,20(sp)
    25ac:	01912223          	sw	s9,4(sp)
    25b0:	010d5a93          	srl	s5,s10,0x10
    25b4:	00e5dcb3          	srl	s9,a1,a4
    25b8:	017597b3          	sll	a5,a1,s7
    25bc:	00e95733          	srl	a4,s2,a4
    25c0:	01812423          	sw	s8,8(sp)
    25c4:	000a8593          	mv	a1,s5
    25c8:	000c8513          	mv	a0,s9
    25cc:	010d1c13          	sll	s8,s10,0x10
    25d0:	00f769b3          	or	s3,a4,a5
    25d4:	017614b3          	sll	s1,a2,s7
    25d8:	02812423          	sw	s0,40(sp)
    25dc:	01612823          	sw	s6,16(sp)
    25e0:	010c5c13          	srl	s8,s8,0x10
    25e4:	989ff0ef          	jal	1f6c <__hidden___udivsi3>
    25e8:	00050593          	mv	a1,a0
    25ec:	00050413          	mv	s0,a0
    25f0:	000c0513          	mv	a0,s8
    25f4:	94dff0ef          	jal	1f40 <__mulsi3>
    25f8:	00050b13          	mv	s6,a0
    25fc:	000a8593          	mv	a1,s5
    2600:	000c8513          	mv	a0,s9
    2604:	9b1ff0ef          	jal	1fb4 <__umodsi3>
    2608:	01051513          	sll	a0,a0,0x10
    260c:	0109d793          	srl	a5,s3,0x10
    2610:	00a7e7b3          	or	a5,a5,a0
    2614:	0167fe63          	bgeu	a5,s6,2630 <__divdi3+0x53c>
    2618:	00fd07b3          	add	a5,s10,a5
    261c:	fff40713          	add	a4,s0,-1
    2620:	17a7ec63          	bltu	a5,s10,2798 <__divdi3+0x6a4>
    2624:	1767fa63          	bgeu	a5,s6,2798 <__divdi3+0x6a4>
    2628:	ffe40413          	add	s0,s0,-2
    262c:	01a787b3          	add	a5,a5,s10
    2630:	41678b33          	sub	s6,a5,s6
    2634:	000a8593          	mv	a1,s5
    2638:	000b0513          	mv	a0,s6
    263c:	931ff0ef          	jal	1f6c <__hidden___udivsi3>
    2640:	00050593          	mv	a1,a0
    2644:	00050c93          	mv	s9,a0
    2648:	000c0513          	mv	a0,s8
    264c:	8f5ff0ef          	jal	1f40 <__mulsi3>
    2650:	00050793          	mv	a5,a0
    2654:	000a8593          	mv	a1,s5
    2658:	000b0513          	mv	a0,s6
    265c:	00078a93          	mv	s5,a5
    2660:	955ff0ef          	jal	1fb4 <__umodsi3>
    2664:	01099713          	sll	a4,s3,0x10
    2668:	01051513          	sll	a0,a0,0x10
    266c:	01075713          	srl	a4,a4,0x10
    2670:	00a76733          	or	a4,a4,a0
    2674:	01577e63          	bgeu	a4,s5,2690 <__divdi3+0x59c>
    2678:	00ed0733          	add	a4,s10,a4
    267c:	fffc8793          	add	a5,s9,-1
    2680:	11a76463          	bltu	a4,s10,2788 <__divdi3+0x694>
    2684:	11577263          	bgeu	a4,s5,2788 <__divdi3+0x694>
    2688:	ffec8c93          	add	s9,s9,-2
    268c:	01a70733          	add	a4,a4,s10
    2690:	01041513          	sll	a0,s0,0x10
    2694:	00010337          	lui	t1,0x10
    2698:	01956433          	or	s0,a0,s9
    269c:	fff30793          	add	a5,t1,-1 # ffff <__fini_array_end+0xa7ff>
    26a0:	00f47833          	and	a6,s0,a5
    26a4:	00f4f7b3          	and	a5,s1,a5
    26a8:	41570733          	sub	a4,a4,s5
    26ac:	01045e93          	srl	t4,s0,0x10
    26b0:	0104d493          	srl	s1,s1,0x10
    26b4:	00080513          	mv	a0,a6
    26b8:	00078593          	mv	a1,a5
    26bc:	885ff0ef          	jal	1f40 <__mulsi3>
    26c0:	00050e13          	mv	t3,a0
    26c4:	00048593          	mv	a1,s1
    26c8:	00080513          	mv	a0,a6
    26cc:	875ff0ef          	jal	1f40 <__mulsi3>
    26d0:	00050813          	mv	a6,a0
    26d4:	00078593          	mv	a1,a5
    26d8:	000e8513          	mv	a0,t4
    26dc:	865ff0ef          	jal	1f40 <__mulsi3>
    26e0:	00050893          	mv	a7,a0
    26e4:	00048593          	mv	a1,s1
    26e8:	000e8513          	mv	a0,t4
    26ec:	855ff0ef          	jal	1f40 <__mulsi3>
    26f0:	010e5793          	srl	a5,t3,0x10
    26f4:	01180833          	add	a6,a6,a7
    26f8:	010787b3          	add	a5,a5,a6
    26fc:	0117f463          	bgeu	a5,a7,2704 <__divdi3+0x610>
    2700:	00650533          	add	a0,a0,t1
    2704:	0107d693          	srl	a3,a5,0x10
    2708:	00a686b3          	add	a3,a3,a0
    270c:	04d76663          	bltu	a4,a3,2758 <__divdi3+0x664>
    2710:	02d70463          	beq	a4,a3,2738 <__divdi3+0x644>
    2714:	00040513          	mv	a0,s0
    2718:	02812403          	lw	s0,40(sp)
    271c:	01412a83          	lw	s5,20(sp)
    2720:	01012b03          	lw	s6,16(sp)
    2724:	00812c03          	lw	s8,8(sp)
    2728:	00412c83          	lw	s9,4(sp)
    272c:	00012d03          	lw	s10,0(sp)
    2730:	00000913          	li	s2,0
    2734:	b59ff06f          	j	228c <__divdi3+0x198>
    2738:	00010737          	lui	a4,0x10
    273c:	fff70713          	add	a4,a4,-1 # ffff <__fini_array_end+0xa7ff>
    2740:	00e7f7b3          	and	a5,a5,a4
    2744:	01079793          	sll	a5,a5,0x10
    2748:	00ee7e33          	and	t3,t3,a4
    274c:	01791533          	sll	a0,s2,s7
    2750:	01c787b3          	add	a5,a5,t3
    2754:	fcf570e3          	bgeu	a0,a5,2714 <__divdi3+0x620>
    2758:	fff40513          	add	a0,s0,-1
    275c:	fbdff06f          	j	2718 <__divdi3+0x624>
    2760:	010007b7          	lui	a5,0x1000
    2764:	04f67a63          	bgeu	a2,a5,27b8 <__divdi3+0x6c4>
    2768:	01065693          	srl	a3,a2,0x10
    276c:	01000713          	li	a4,16
    2770:	bd9ff06f          	j	2348 <__divdi3+0x254>
    2774:	00000913          	li	s2,0
    2778:	00100513          	li	a0,1
    277c:	b11ff06f          	j	228c <__divdi3+0x198>
    2780:	00078c13          	mv	s8,a5
    2784:	dd1ff06f          	j	2554 <__divdi3+0x460>
    2788:	00078c93          	mv	s9,a5
    278c:	f05ff06f          	j	2690 <__divdi3+0x59c>
    2790:	00070913          	mv	s2,a4
    2794:	d61ff06f          	j	24f4 <__divdi3+0x400>
    2798:	00070413          	mv	s0,a4
    279c:	e95ff06f          	j	2630 <__divdi3+0x53c>
    27a0:	ffe40413          	add	s0,s0,-2
    27a4:	017787b3          	add	a5,a5,s7
    27a8:	c25ff06f          	j	23cc <__divdi3+0x2d8>
    27ac:	ffe40413          	add	s0,s0,-2
    27b0:	017787b3          	add	a5,a5,s7
    27b4:	a51ff06f          	j	2204 <__divdi3+0x110>
    27b8:	01865693          	srl	a3,a2,0x18
    27bc:	01800713          	li	a4,24
    27c0:	b89ff06f          	j	2348 <__divdi3+0x254>

000027c4 <__moddi3>:
    27c4:	fc010113          	add	sp,sp,-64
    27c8:	02812c23          	sw	s0,56(sp)
    27cc:	02112e23          	sw	ra,60(sp)
    27d0:	03212823          	sw	s2,48(sp)
    27d4:	03312623          	sw	s3,44(sp)
    27d8:	03412423          	sw	s4,40(sp)
    27dc:	00050793          	mv	a5,a0
    27e0:	00000413          	li	s0,0
    27e4:	1c05cc63          	bltz	a1,29bc <__moddi3+0x1f8>
    27e8:	0006da63          	bgez	a3,27fc <__moddi3+0x38>
    27ec:	00c03733          	snez	a4,a2
    27f0:	40d006b3          	neg	a3,a3
    27f4:	40e686b3          	sub	a3,a3,a4
    27f8:	40c00633          	neg	a2,a2
    27fc:	00060993          	mv	s3,a2
    2800:	00078a13          	mv	s4,a5
    2804:	00058913          	mv	s2,a1
    2808:	14069663          	bnez	a3,2954 <__moddi3+0x190>
    280c:	02912a23          	sw	s1,52(sp)
    2810:	03512223          	sw	s5,36(sp)
    2814:	03612023          	sw	s6,32(sp)
    2818:	1ac5fe63          	bgeu	a1,a2,29d4 <__moddi3+0x210>
    281c:	00010737          	lui	a4,0x10
    2820:	28e66463          	bltu	a2,a4,2aa8 <__moddi3+0x2e4>
    2824:	01000737          	lui	a4,0x1000
    2828:	01800693          	li	a3,24
    282c:	00e67463          	bgeu	a2,a4,2834 <__moddi3+0x70>
    2830:	01000693          	li	a3,16
    2834:	00d65533          	srl	a0,a2,a3
    2838:	0002e717          	auipc	a4,0x2e
    283c:	dd070713          	add	a4,a4,-560 # 30608 <__clz_tab>
    2840:	00a70733          	add	a4,a4,a0
    2844:	00074703          	lbu	a4,0(a4)
    2848:	02000513          	li	a0,32
    284c:	00d70733          	add	a4,a4,a3
    2850:	40e504b3          	sub	s1,a0,a4
    2854:	00e50c63          	beq	a0,a4,286c <__moddi3+0xa8>
    2858:	00959933          	sll	s2,a1,s1
    285c:	00e7d733          	srl	a4,a5,a4
    2860:	009619b3          	sll	s3,a2,s1
    2864:	01276933          	or	s2,a4,s2
    2868:	00979a33          	sll	s4,a5,s1
    286c:	0109da93          	srl	s5,s3,0x10
    2870:	000a8593          	mv	a1,s5
    2874:	00090513          	mv	a0,s2
    2878:	01099b13          	sll	s6,s3,0x10
    287c:	ef0ff0ef          	jal	1f6c <__hidden___udivsi3>
    2880:	010b5b13          	srl	s6,s6,0x10
    2884:	000b0593          	mv	a1,s6
    2888:	eb8ff0ef          	jal	1f40 <__mulsi3>
    288c:	00050793          	mv	a5,a0
    2890:	000a8593          	mv	a1,s5
    2894:	00090513          	mv	a0,s2
    2898:	00078913          	mv	s2,a5
    289c:	f18ff0ef          	jal	1fb4 <__umodsi3>
    28a0:	01051513          	sll	a0,a0,0x10
    28a4:	010a5793          	srl	a5,s4,0x10
    28a8:	00a7e7b3          	or	a5,a5,a0
    28ac:	0127f863          	bgeu	a5,s2,28bc <__moddi3+0xf8>
    28b0:	00f987b3          	add	a5,s3,a5
    28b4:	0137e463          	bltu	a5,s3,28bc <__moddi3+0xf8>
    28b8:	5527e663          	bltu	a5,s2,2e04 <__moddi3+0x640>
    28bc:	41278933          	sub	s2,a5,s2
    28c0:	000a8593          	mv	a1,s5
    28c4:	00090513          	mv	a0,s2
    28c8:	ea4ff0ef          	jal	1f6c <__hidden___udivsi3>
    28cc:	000b0593          	mv	a1,s6
    28d0:	e70ff0ef          	jal	1f40 <__mulsi3>
    28d4:	00050793          	mv	a5,a0
    28d8:	000a8593          	mv	a1,s5
    28dc:	00090513          	mv	a0,s2
    28e0:	00078913          	mv	s2,a5
    28e4:	ed0ff0ef          	jal	1fb4 <__umodsi3>
    28e8:	010a1793          	sll	a5,s4,0x10
    28ec:	01051513          	sll	a0,a0,0x10
    28f0:	0107d793          	srl	a5,a5,0x10
    28f4:	00a7e7b3          	or	a5,a5,a0
    28f8:	0127fa63          	bgeu	a5,s2,290c <__moddi3+0x148>
    28fc:	00f987b3          	add	a5,s3,a5
    2900:	0137e663          	bltu	a5,s3,290c <__moddi3+0x148>
    2904:	0127f463          	bgeu	a5,s2,290c <__moddi3+0x148>
    2908:	013787b3          	add	a5,a5,s3
    290c:	412787b3          	sub	a5,a5,s2
    2910:	0097d533          	srl	a0,a5,s1
    2914:	02412a83          	lw	s5,36(sp)
    2918:	03412483          	lw	s1,52(sp)
    291c:	02012b03          	lw	s6,32(sp)
    2920:	00000593          	li	a1,0
    2924:	00040a63          	beqz	s0,2938 <__moddi3+0x174>
    2928:	00a037b3          	snez	a5,a0
    292c:	40b005b3          	neg	a1,a1
    2930:	40f585b3          	sub	a1,a1,a5
    2934:	40a00533          	neg	a0,a0
    2938:	03c12083          	lw	ra,60(sp)
    293c:	03812403          	lw	s0,56(sp)
    2940:	03012903          	lw	s2,48(sp)
    2944:	02c12983          	lw	s3,44(sp)
    2948:	02812a03          	lw	s4,40(sp)
    294c:	04010113          	add	sp,sp,64
    2950:	00008067          	ret
    2954:	00078813          	mv	a6,a5
    2958:	00078513          	mv	a0,a5
    295c:	fcd5e4e3          	bltu	a1,a3,2924 <__moddi3+0x160>
    2960:	00010737          	lui	a4,0x10
    2964:	24e6e663          	bltu	a3,a4,2bb0 <__moddi3+0x3ec>
    2968:	01000537          	lui	a0,0x1000
    296c:	01800713          	li	a4,24
    2970:	00a6f463          	bgeu	a3,a0,2978 <__moddi3+0x1b4>
    2974:	01000713          	li	a4,16
    2978:	00e6d8b3          	srl	a7,a3,a4
    297c:	0002e517          	auipc	a0,0x2e
    2980:	c8c50513          	add	a0,a0,-884 # 30608 <__clz_tab>
    2984:	01150533          	add	a0,a0,a7
    2988:	00054a03          	lbu	s4,0(a0)
    298c:	02000513          	li	a0,32
    2990:	00ea0a33          	add	s4,s4,a4
    2994:	414509b3          	sub	s3,a0,s4
    2998:	25451463          	bne	a0,s4,2be0 <__moddi3+0x41c>
    299c:	00b6e463          	bltu	a3,a1,29a4 <__moddi3+0x1e0>
    29a0:	00c7ea63          	bltu	a5,a2,29b4 <__moddi3+0x1f0>
    29a4:	40c78833          	sub	a6,a5,a2
    29a8:	40d586b3          	sub	a3,a1,a3
    29ac:	0107b5b3          	sltu	a1,a5,a6
    29b0:	40b685b3          	sub	a1,a3,a1
    29b4:	00080513          	mv	a0,a6
    29b8:	f6dff06f          	j	2924 <__moddi3+0x160>
    29bc:	00a03733          	snez	a4,a0
    29c0:	40b005b3          	neg	a1,a1
    29c4:	40e585b3          	sub	a1,a1,a4
    29c8:	40a007b3          	neg	a5,a0
    29cc:	fff00413          	li	s0,-1
    29d0:	e19ff06f          	j	27e8 <__moddi3+0x24>
    29d4:	0e060263          	beqz	a2,2ab8 <__moddi3+0x2f4>
    29d8:	00010737          	lui	a4,0x10
    29dc:	40e67263          	bgeu	a2,a4,2de0 <__moddi3+0x61c>
    29e0:	10063693          	sltiu	a3,a2,256
    29e4:	0016b693          	seqz	a3,a3
    29e8:	00369693          	sll	a3,a3,0x3
    29ec:	00d65533          	srl	a0,a2,a3
    29f0:	0002e717          	auipc	a4,0x2e
    29f4:	c1870713          	add	a4,a4,-1000 # 30608 <__clz_tab>
    29f8:	00a70733          	add	a4,a4,a0
    29fc:	00074a83          	lbu	s5,0(a4)
    2a00:	02000713          	li	a4,32
    2a04:	00da8ab3          	add	s5,s5,a3
    2a08:	415704b3          	sub	s1,a4,s5
    2a0c:	0d571a63          	bne	a4,s5,2ae0 <__moddi3+0x31c>
    2a10:	01061913          	sll	s2,a2,0x10
    2a14:	40c58ab3          	sub	s5,a1,a2
    2a18:	01065b13          	srl	s6,a2,0x10
    2a1c:	01095913          	srl	s2,s2,0x10
    2a20:	000b0593          	mv	a1,s6
    2a24:	000a8513          	mv	a0,s5
    2a28:	d44ff0ef          	jal	1f6c <__hidden___udivsi3>
    2a2c:	00090593          	mv	a1,s2
    2a30:	d10ff0ef          	jal	1f40 <__mulsi3>
    2a34:	00050793          	mv	a5,a0
    2a38:	000b0593          	mv	a1,s6
    2a3c:	000a8513          	mv	a0,s5
    2a40:	00078a93          	mv	s5,a5
    2a44:	d70ff0ef          	jal	1fb4 <__umodsi3>
    2a48:	01051513          	sll	a0,a0,0x10
    2a4c:	010a5793          	srl	a5,s4,0x10
    2a50:	00a7e7b3          	or	a5,a5,a0
    2a54:	0157fa63          	bgeu	a5,s5,2a68 <__moddi3+0x2a4>
    2a58:	00f987b3          	add	a5,s3,a5
    2a5c:	0137e663          	bltu	a5,s3,2a68 <__moddi3+0x2a4>
    2a60:	0157f463          	bgeu	a5,s5,2a68 <__moddi3+0x2a4>
    2a64:	013787b3          	add	a5,a5,s3
    2a68:	41578ab3          	sub	s5,a5,s5
    2a6c:	000b0593          	mv	a1,s6
    2a70:	000a8513          	mv	a0,s5
    2a74:	cf8ff0ef          	jal	1f6c <__hidden___udivsi3>
    2a78:	00090593          	mv	a1,s2
    2a7c:	cc4ff0ef          	jal	1f40 <__mulsi3>
    2a80:	00050913          	mv	s2,a0
    2a84:	000b0593          	mv	a1,s6
    2a88:	000a8513          	mv	a0,s5
    2a8c:	d28ff0ef          	jal	1fb4 <__umodsi3>
    2a90:	010a1a13          	sll	s4,s4,0x10
    2a94:	01051793          	sll	a5,a0,0x10
    2a98:	010a5a13          	srl	s4,s4,0x10
    2a9c:	00fa67b3          	or	a5,s4,a5
    2aa0:	e727f6e3          	bgeu	a5,s2,290c <__moddi3+0x148>
    2aa4:	e59ff06f          	j	28fc <__moddi3+0x138>
    2aa8:	10063693          	sltiu	a3,a2,256
    2aac:	0016b693          	seqz	a3,a3
    2ab0:	00369693          	sll	a3,a3,0x3
    2ab4:	d81ff06f          	j	2834 <__moddi3+0x70>
    2ab8:	00000513          	li	a0,0
    2abc:	0002e717          	auipc	a4,0x2e
    2ac0:	b4c70713          	add	a4,a4,-1204 # 30608 <__clz_tab>
    2ac4:	00a70733          	add	a4,a4,a0
    2ac8:	00074a83          	lbu	s5,0(a4)
    2acc:	00000693          	li	a3,0
    2ad0:	02000713          	li	a4,32
    2ad4:	00da8ab3          	add	s5,s5,a3
    2ad8:	415704b3          	sub	s1,a4,s5
    2adc:	f3570ae3          	beq	a4,s5,2a10 <__moddi3+0x24c>
    2ae0:	009619b3          	sll	s3,a2,s1
    2ae4:	01812c23          	sw	s8,24(sp)
    2ae8:	0109db13          	srl	s6,s3,0x10
    2aec:	0155dc33          	srl	s8,a1,s5
    2af0:	00959733          	sll	a4,a1,s1
    2af4:	0157dab3          	srl	s5,a5,s5
    2af8:	000b0593          	mv	a1,s6
    2afc:	000c0513          	mv	a0,s8
    2b00:	01099913          	sll	s2,s3,0x10
    2b04:	00eaeab3          	or	s5,s5,a4
    2b08:	00979a33          	sll	s4,a5,s1
    2b0c:	01712e23          	sw	s7,28(sp)
    2b10:	01095913          	srl	s2,s2,0x10
    2b14:	c58ff0ef          	jal	1f6c <__hidden___udivsi3>
    2b18:	00090593          	mv	a1,s2
    2b1c:	c24ff0ef          	jal	1f40 <__mulsi3>
    2b20:	00050b93          	mv	s7,a0
    2b24:	000b0593          	mv	a1,s6
    2b28:	000c0513          	mv	a0,s8
    2b2c:	c88ff0ef          	jal	1fb4 <__umodsi3>
    2b30:	01051513          	sll	a0,a0,0x10
    2b34:	010ad793          	srl	a5,s5,0x10
    2b38:	00a7e7b3          	or	a5,a5,a0
    2b3c:	0177fa63          	bgeu	a5,s7,2b50 <__moddi3+0x38c>
    2b40:	00f987b3          	add	a5,s3,a5
    2b44:	0137e663          	bltu	a5,s3,2b50 <__moddi3+0x38c>
    2b48:	0177f463          	bgeu	a5,s7,2b50 <__moddi3+0x38c>
    2b4c:	013787b3          	add	a5,a5,s3
    2b50:	41778bb3          	sub	s7,a5,s7
    2b54:	000b0593          	mv	a1,s6
    2b58:	000b8513          	mv	a0,s7
    2b5c:	c10ff0ef          	jal	1f6c <__hidden___udivsi3>
    2b60:	00090593          	mv	a1,s2
    2b64:	bdcff0ef          	jal	1f40 <__mulsi3>
    2b68:	00050793          	mv	a5,a0
    2b6c:	000b0593          	mv	a1,s6
    2b70:	000b8513          	mv	a0,s7
    2b74:	010a9a93          	sll	s5,s5,0x10
    2b78:	00078b93          	mv	s7,a5
    2b7c:	c38ff0ef          	jal	1fb4 <__umodsi3>
    2b80:	01051513          	sll	a0,a0,0x10
    2b84:	010ada93          	srl	s5,s5,0x10
    2b88:	00aaeab3          	or	s5,s5,a0
    2b8c:	017afa63          	bgeu	s5,s7,2ba0 <__moddi3+0x3dc>
    2b90:	01598ab3          	add	s5,s3,s5
    2b94:	013ae663          	bltu	s5,s3,2ba0 <__moddi3+0x3dc>
    2b98:	017af463          	bgeu	s5,s7,2ba0 <__moddi3+0x3dc>
    2b9c:	013a8ab3          	add	s5,s5,s3
    2ba0:	417a8ab3          	sub	s5,s5,s7
    2ba4:	01812c03          	lw	s8,24(sp)
    2ba8:	01c12b83          	lw	s7,28(sp)
    2bac:	e75ff06f          	j	2a20 <__moddi3+0x25c>
    2bb0:	1006b713          	sltiu	a4,a3,256
    2bb4:	00173713          	seqz	a4,a4
    2bb8:	00371713          	sll	a4,a4,0x3
    2bbc:	00e6d8b3          	srl	a7,a3,a4
    2bc0:	0002e517          	auipc	a0,0x2e
    2bc4:	a4850513          	add	a0,a0,-1464 # 30608 <__clz_tab>
    2bc8:	01150533          	add	a0,a0,a7
    2bcc:	00054a03          	lbu	s4,0(a0)
    2bd0:	02000513          	li	a0,32
    2bd4:	00ea0a33          	add	s4,s4,a4
    2bd8:	414509b3          	sub	s3,a0,s4
    2bdc:	dd4500e3          	beq	a0,s4,299c <__moddi3+0x1d8>
    2be0:	03512223          	sw	s5,36(sp)
    2be4:	013696b3          	sll	a3,a3,s3
    2be8:	01465ab3          	srl	s5,a2,s4
    2bec:	00daeab3          	or	s5,s5,a3
    2bf0:	01712e23          	sw	s7,28(sp)
    2bf4:	01b12623          	sw	s11,12(sp)
    2bf8:	010adb93          	srl	s7,s5,0x10
    2bfc:	0145ddb3          	srl	s11,a1,s4
    2c00:	01359733          	sll	a4,a1,s3
    2c04:	0147d6b3          	srl	a3,a5,s4
    2c08:	01a12823          	sw	s10,16(sp)
    2c0c:	000b8593          	mv	a1,s7
    2c10:	000d8513          	mv	a0,s11
    2c14:	010a9d13          	sll	s10,s5,0x10
    2c18:	01361933          	sll	s2,a2,s3
    2c1c:	02912a23          	sw	s1,52(sp)
    2c20:	03612023          	sw	s6,32(sp)
    2c24:	013794b3          	sll	s1,a5,s3
    2c28:	00e6eb33          	or	s6,a3,a4
    2c2c:	01812c23          	sw	s8,24(sp)
    2c30:	01912a23          	sw	s9,20(sp)
    2c34:	010d5d13          	srl	s10,s10,0x10
    2c38:	b34ff0ef          	jal	1f6c <__hidden___udivsi3>
    2c3c:	00050593          	mv	a1,a0
    2c40:	00050c13          	mv	s8,a0
    2c44:	000d0513          	mv	a0,s10
    2c48:	af8ff0ef          	jal	1f40 <__mulsi3>
    2c4c:	00050c93          	mv	s9,a0
    2c50:	000b8593          	mv	a1,s7
    2c54:	000d8513          	mv	a0,s11
    2c58:	b5cff0ef          	jal	1fb4 <__umodsi3>
    2c5c:	01051513          	sll	a0,a0,0x10
    2c60:	010b5793          	srl	a5,s6,0x10
    2c64:	00a7e7b3          	or	a5,a5,a0
    2c68:	0197fe63          	bgeu	a5,s9,2c84 <__moddi3+0x4c0>
    2c6c:	00fa87b3          	add	a5,s5,a5
    2c70:	fffc0713          	add	a4,s8,-1
    2c74:	1957e463          	bltu	a5,s5,2dfc <__moddi3+0x638>
    2c78:	1997f263          	bgeu	a5,s9,2dfc <__moddi3+0x638>
    2c7c:	ffec0c13          	add	s8,s8,-2
    2c80:	015787b3          	add	a5,a5,s5
    2c84:	41978cb3          	sub	s9,a5,s9
    2c88:	000b8593          	mv	a1,s7
    2c8c:	000c8513          	mv	a0,s9
    2c90:	adcff0ef          	jal	1f6c <__hidden___udivsi3>
    2c94:	00050593          	mv	a1,a0
    2c98:	00050d93          	mv	s11,a0
    2c9c:	000d0513          	mv	a0,s10
    2ca0:	aa0ff0ef          	jal	1f40 <__mulsi3>
    2ca4:	00050793          	mv	a5,a0
    2ca8:	000b8593          	mv	a1,s7
    2cac:	000c8513          	mv	a0,s9
    2cb0:	00078b93          	mv	s7,a5
    2cb4:	b00ff0ef          	jal	1fb4 <__umodsi3>
    2cb8:	010b1593          	sll	a1,s6,0x10
    2cbc:	01051513          	sll	a0,a0,0x10
    2cc0:	0105d593          	srl	a1,a1,0x10
    2cc4:	00a5e5b3          	or	a1,a1,a0
    2cc8:	0175fe63          	bgeu	a1,s7,2ce4 <__moddi3+0x520>
    2ccc:	00ba85b3          	add	a1,s5,a1
    2cd0:	fffd8793          	add	a5,s11,-1
    2cd4:	1355e063          	bltu	a1,s5,2df4 <__moddi3+0x630>
    2cd8:	1175fe63          	bgeu	a1,s7,2df4 <__moddi3+0x630>
    2cdc:	ffed8d93          	add	s11,s11,-2
    2ce0:	015585b3          	add	a1,a1,s5
    2ce4:	010c1713          	sll	a4,s8,0x10
    2ce8:	00010e37          	lui	t3,0x10
    2cec:	01b76733          	or	a4,a4,s11
    2cf0:	fffe0313          	add	t1,t3,-1 # ffff <__fini_array_end+0xa7ff>
    2cf4:	006777b3          	and	a5,a4,t1
    2cf8:	00697333          	and	t1,s2,t1
    2cfc:	41758833          	sub	a6,a1,s7
    2d00:	01075713          	srl	a4,a4,0x10
    2d04:	01095e93          	srl	t4,s2,0x10
    2d08:	00078513          	mv	a0,a5
    2d0c:	00030593          	mv	a1,t1
    2d10:	a30ff0ef          	jal	1f40 <__mulsi3>
    2d14:	00050893          	mv	a7,a0
    2d18:	000e8593          	mv	a1,t4
    2d1c:	00078513          	mv	a0,a5
    2d20:	a20ff0ef          	jal	1f40 <__mulsi3>
    2d24:	00050793          	mv	a5,a0
    2d28:	00030593          	mv	a1,t1
    2d2c:	00070513          	mv	a0,a4
    2d30:	a10ff0ef          	jal	1f40 <__mulsi3>
    2d34:	00050313          	mv	t1,a0
    2d38:	000e8593          	mv	a1,t4
    2d3c:	00070513          	mv	a0,a4
    2d40:	a00ff0ef          	jal	1f40 <__mulsi3>
    2d44:	006787b3          	add	a5,a5,t1
    2d48:	0108d713          	srl	a4,a7,0x10
    2d4c:	00e787b3          	add	a5,a5,a4
    2d50:	0067f463          	bgeu	a5,t1,2d58 <__moddi3+0x594>
    2d54:	01c50533          	add	a0,a0,t3
    2d58:	000106b7          	lui	a3,0x10
    2d5c:	fff68693          	add	a3,a3,-1 # ffff <__fini_array_end+0xa7ff>
    2d60:	0107d713          	srl	a4,a5,0x10
    2d64:	00d7f7b3          	and	a5,a5,a3
    2d68:	01079793          	sll	a5,a5,0x10
    2d6c:	00d8f8b3          	and	a7,a7,a3
    2d70:	00a70733          	add	a4,a4,a0
    2d74:	011787b3          	add	a5,a5,a7
    2d78:	04e86863          	bltu	a6,a4,2dc8 <__moddi3+0x604>
    2d7c:	04e80463          	beq	a6,a4,2dc4 <__moddi3+0x600>
    2d80:	40f487b3          	sub	a5,s1,a5
    2d84:	00f4b4b3          	sltu	s1,s1,a5
    2d88:	40e805b3          	sub	a1,a6,a4
    2d8c:	409585b3          	sub	a1,a1,s1
    2d90:	01459a33          	sll	s4,a1,s4
    2d94:	0137d7b3          	srl	a5,a5,s3
    2d98:	03412483          	lw	s1,52(sp)
    2d9c:	02412a83          	lw	s5,36(sp)
    2da0:	02012b03          	lw	s6,32(sp)
    2da4:	01c12b83          	lw	s7,28(sp)
    2da8:	01812c03          	lw	s8,24(sp)
    2dac:	01412c83          	lw	s9,20(sp)
    2db0:	01012d03          	lw	s10,16(sp)
    2db4:	00c12d83          	lw	s11,12(sp)
    2db8:	00fa6533          	or	a0,s4,a5
    2dbc:	0135d5b3          	srl	a1,a1,s3
    2dc0:	b65ff06f          	j	2924 <__moddi3+0x160>
    2dc4:	faf4fee3          	bgeu	s1,a5,2d80 <__moddi3+0x5bc>
    2dc8:	41278633          	sub	a2,a5,s2
    2dcc:	00c7b7b3          	sltu	a5,a5,a2
    2dd0:	01578ab3          	add	s5,a5,s5
    2dd4:	41570733          	sub	a4,a4,s5
    2dd8:	00060793          	mv	a5,a2
    2ddc:	fa5ff06f          	j	2d80 <__moddi3+0x5bc>
    2de0:	01000737          	lui	a4,0x1000
    2de4:	02e67463          	bgeu	a2,a4,2e0c <__moddi3+0x648>
    2de8:	01065513          	srl	a0,a2,0x10
    2dec:	01000693          	li	a3,16
    2df0:	c01ff06f          	j	29f0 <__moddi3+0x22c>
    2df4:	00078d93          	mv	s11,a5
    2df8:	eedff06f          	j	2ce4 <__moddi3+0x520>
    2dfc:	00070c13          	mv	s8,a4
    2e00:	e85ff06f          	j	2c84 <__moddi3+0x4c0>
    2e04:	013787b3          	add	a5,a5,s3
    2e08:	ab5ff06f          	j	28bc <__moddi3+0xf8>
    2e0c:	01865513          	srl	a0,a2,0x18
    2e10:	01800693          	li	a3,24
    2e14:	bddff06f          	j	29f0 <__moddi3+0x22c>

00002e18 <malloc>:
    2e18:	00050593          	mv	a1,a0
    2e1c:	00032517          	auipc	a0,0x32
    2e20:	9f052503          	lw	a0,-1552(a0) # 3480c <_impure_ptr>
    2e24:	0140006f          	j	2e38 <_malloc_r>

00002e28 <free>:
    2e28:	00050593          	mv	a1,a0
    2e2c:	00032517          	auipc	a0,0x32
    2e30:	9e052503          	lw	a0,-1568(a0) # 3480c <_impure_ptr>
    2e34:	3b00106f          	j	41e4 <_free_r>

00002e38 <_malloc_r>:
    2e38:	fd010113          	add	sp,sp,-48
    2e3c:	03212023          	sw	s2,32(sp)
    2e40:	02112623          	sw	ra,44(sp)
    2e44:	02812423          	sw	s0,40(sp)
    2e48:	02912223          	sw	s1,36(sp)
    2e4c:	01312e23          	sw	s3,28(sp)
    2e50:	00b58793          	add	a5,a1,11 # 10000b <_end+0xc000b>
    2e54:	01600713          	li	a4,22
    2e58:	00050913          	mv	s2,a0
    2e5c:	08f76263          	bltu	a4,a5,2ee0 <_malloc_r+0xa8>
    2e60:	01000793          	li	a5,16
    2e64:	20b7e663          	bltu	a5,a1,3070 <_malloc_r+0x238>
    2e68:	7b0000ef          	jal	3618 <__malloc_lock>
    2e6c:	01800793          	li	a5,24
    2e70:	00200593          	li	a1,2
    2e74:	01000493          	li	s1,16
    2e78:	00031997          	auipc	s3,0x31
    2e7c:	18898993          	add	s3,s3,392 # 34000 <__malloc_av_>
    2e80:	00f987b3          	add	a5,s3,a5
    2e84:	0047a403          	lw	s0,4(a5) # 1000004 <GET_WATCHDOG_LOW+0xdfefc4>
    2e88:	ff878713          	add	a4,a5,-8
    2e8c:	36e40463          	beq	s0,a4,31f4 <_malloc_r+0x3bc>
    2e90:	00442783          	lw	a5,4(s0)
    2e94:	00c42683          	lw	a3,12(s0)
    2e98:	00842603          	lw	a2,8(s0)
    2e9c:	ffc7f793          	and	a5,a5,-4
    2ea0:	00f407b3          	add	a5,s0,a5
    2ea4:	0047a703          	lw	a4,4(a5)
    2ea8:	00d62623          	sw	a3,12(a2)
    2eac:	00c6a423          	sw	a2,8(a3)
    2eb0:	00176713          	or	a4,a4,1
    2eb4:	00090513          	mv	a0,s2
    2eb8:	00e7a223          	sw	a4,4(a5)
    2ebc:	768000ef          	jal	3624 <__malloc_unlock>
    2ec0:	00840513          	add	a0,s0,8
    2ec4:	02c12083          	lw	ra,44(sp)
    2ec8:	02812403          	lw	s0,40(sp)
    2ecc:	02412483          	lw	s1,36(sp)
    2ed0:	02012903          	lw	s2,32(sp)
    2ed4:	01c12983          	lw	s3,28(sp)
    2ed8:	03010113          	add	sp,sp,48
    2edc:	00008067          	ret
    2ee0:	ff87f493          	and	s1,a5,-8
    2ee4:	1807c663          	bltz	a5,3070 <_malloc_r+0x238>
    2ee8:	18b4e463          	bltu	s1,a1,3070 <_malloc_r+0x238>
    2eec:	72c000ef          	jal	3618 <__malloc_lock>
    2ef0:	1f700793          	li	a5,503
    2ef4:	4097fa63          	bgeu	a5,s1,3308 <_malloc_r+0x4d0>
    2ef8:	0094d793          	srl	a5,s1,0x9
    2efc:	18078263          	beqz	a5,3080 <_malloc_r+0x248>
    2f00:	00400713          	li	a4,4
    2f04:	36f76063          	bltu	a4,a5,3264 <_malloc_r+0x42c>
    2f08:	0064d793          	srl	a5,s1,0x6
    2f0c:	03978593          	add	a1,a5,57
    2f10:	03878813          	add	a6,a5,56
    2f14:	00359613          	sll	a2,a1,0x3
    2f18:	00031997          	auipc	s3,0x31
    2f1c:	0e898993          	add	s3,s3,232 # 34000 <__malloc_av_>
    2f20:	00c98633          	add	a2,s3,a2
    2f24:	00462403          	lw	s0,4(a2)
    2f28:	ff860613          	add	a2,a2,-8
    2f2c:	02860863          	beq	a2,s0,2f5c <_malloc_r+0x124>
    2f30:	00f00513          	li	a0,15
    2f34:	0140006f          	j	2f48 <_malloc_r+0x110>
    2f38:	00c42683          	lw	a3,12(s0)
    2f3c:	2a075863          	bgez	a4,31ec <_malloc_r+0x3b4>
    2f40:	00d60e63          	beq	a2,a3,2f5c <_malloc_r+0x124>
    2f44:	00068413          	mv	s0,a3
    2f48:	00442783          	lw	a5,4(s0)
    2f4c:	ffc7f793          	and	a5,a5,-4
    2f50:	40978733          	sub	a4,a5,s1
    2f54:	fee552e3          	bge	a0,a4,2f38 <_malloc_r+0x100>
    2f58:	00080593          	mv	a1,a6
    2f5c:	0109a403          	lw	s0,16(s3)
    2f60:	00031897          	auipc	a7,0x31
    2f64:	0a888893          	add	a7,a7,168 # 34008 <__malloc_av_+0x8>
    2f68:	27140e63          	beq	s0,a7,31e4 <_malloc_r+0x3ac>
    2f6c:	00442783          	lw	a5,4(s0)
    2f70:	00f00693          	li	a3,15
    2f74:	ffc7f793          	and	a5,a5,-4
    2f78:	40978733          	sub	a4,a5,s1
    2f7c:	38e6cc63          	blt	a3,a4,3314 <_malloc_r+0x4dc>
    2f80:	0119aa23          	sw	a7,20(s3)
    2f84:	0119a823          	sw	a7,16(s3)
    2f88:	36075063          	bgez	a4,32e8 <_malloc_r+0x4b0>
    2f8c:	1ff00713          	li	a4,511
    2f90:	0049a503          	lw	a0,4(s3)
    2f94:	26f76863          	bltu	a4,a5,3204 <_malloc_r+0x3cc>
    2f98:	ff87f713          	and	a4,a5,-8
    2f9c:	00870713          	add	a4,a4,8 # 1000008 <GET_WATCHDOG_LOW+0xdfefc8>
    2fa0:	00e98733          	add	a4,s3,a4
    2fa4:	00072683          	lw	a3,0(a4)
    2fa8:	0057d613          	srl	a2,a5,0x5
    2fac:	00100793          	li	a5,1
    2fb0:	00c797b3          	sll	a5,a5,a2
    2fb4:	00f56533          	or	a0,a0,a5
    2fb8:	ff870793          	add	a5,a4,-8
    2fbc:	00f42623          	sw	a5,12(s0)
    2fc0:	00d42423          	sw	a3,8(s0)
    2fc4:	00a9a223          	sw	a0,4(s3)
    2fc8:	00872023          	sw	s0,0(a4)
    2fcc:	0086a623          	sw	s0,12(a3)
    2fd0:	4025d793          	sra	a5,a1,0x2
    2fd4:	00100613          	li	a2,1
    2fd8:	00f61633          	sll	a2,a2,a5
    2fdc:	0ac56a63          	bltu	a0,a2,3090 <_malloc_r+0x258>
    2fe0:	00a677b3          	and	a5,a2,a0
    2fe4:	02079463          	bnez	a5,300c <_malloc_r+0x1d4>
    2fe8:	00161613          	sll	a2,a2,0x1
    2fec:	ffc5f593          	and	a1,a1,-4
    2ff0:	00a677b3          	and	a5,a2,a0
    2ff4:	00458593          	add	a1,a1,4
    2ff8:	00079a63          	bnez	a5,300c <_malloc_r+0x1d4>
    2ffc:	00161613          	sll	a2,a2,0x1
    3000:	00a677b3          	and	a5,a2,a0
    3004:	00458593          	add	a1,a1,4
    3008:	fe078ae3          	beqz	a5,2ffc <_malloc_r+0x1c4>
    300c:	00f00813          	li	a6,15
    3010:	00359313          	sll	t1,a1,0x3
    3014:	00698333          	add	t1,s3,t1
    3018:	00030513          	mv	a0,t1
    301c:	00c52783          	lw	a5,12(a0)
    3020:	00058e13          	mv	t3,a1
    3024:	26f50263          	beq	a0,a5,3288 <_malloc_r+0x450>
    3028:	0047a703          	lw	a4,4(a5)
    302c:	00078413          	mv	s0,a5
    3030:	00c7a783          	lw	a5,12(a5)
    3034:	ffc77713          	and	a4,a4,-4
    3038:	409706b3          	sub	a3,a4,s1
    303c:	26d84263          	blt	a6,a3,32a0 <_malloc_r+0x468>
    3040:	fe06c2e3          	bltz	a3,3024 <_malloc_r+0x1ec>
    3044:	00e40733          	add	a4,s0,a4
    3048:	00472683          	lw	a3,4(a4)
    304c:	00842603          	lw	a2,8(s0)
    3050:	00090513          	mv	a0,s2
    3054:	0016e693          	or	a3,a3,1
    3058:	00d72223          	sw	a3,4(a4)
    305c:	00f62623          	sw	a5,12(a2)
    3060:	00c7a423          	sw	a2,8(a5)
    3064:	5c0000ef          	jal	3624 <__malloc_unlock>
    3068:	00840513          	add	a0,s0,8
    306c:	e59ff06f          	j	2ec4 <_malloc_r+0x8c>
    3070:	00c00793          	li	a5,12
    3074:	00f92023          	sw	a5,0(s2)
    3078:	00000513          	li	a0,0
    307c:	e49ff06f          	j	2ec4 <_malloc_r+0x8c>
    3080:	20000613          	li	a2,512
    3084:	04000593          	li	a1,64
    3088:	03f00813          	li	a6,63
    308c:	e8dff06f          	j	2f18 <_malloc_r+0xe0>
    3090:	0089a403          	lw	s0,8(s3)
    3094:	01612823          	sw	s6,16(sp)
    3098:	00442783          	lw	a5,4(s0)
    309c:	ffc7fb13          	and	s6,a5,-4
    30a0:	009b6863          	bltu	s6,s1,30b0 <_malloc_r+0x278>
    30a4:	409b0733          	sub	a4,s6,s1
    30a8:	00f00793          	li	a5,15
    30ac:	0ee7ca63          	blt	a5,a4,31a0 <_malloc_r+0x368>
    30b0:	01912223          	sw	s9,4(sp)
    30b4:	00031c97          	auipc	s9,0x31
    30b8:	750c8c93          	add	s9,s9,1872 # 34804 <__malloc_sbrk_base>
    30bc:	000ca703          	lw	a4,0(s9)
    30c0:	01412c23          	sw	s4,24(sp)
    30c4:	01512a23          	sw	s5,20(sp)
    30c8:	01712623          	sw	s7,12(sp)
    30cc:	00032a97          	auipc	s5,0x32
    30d0:	f40aaa83          	lw	s5,-192(s5) # 3500c <__malloc_top_pad>
    30d4:	fff00793          	li	a5,-1
    30d8:	01640a33          	add	s4,s0,s6
    30dc:	01548ab3          	add	s5,s1,s5
    30e0:	3ef70263          	beq	a4,a5,34c4 <_malloc_r+0x68c>
    30e4:	000017b7          	lui	a5,0x1
    30e8:	00f78793          	add	a5,a5,15 # 100f <_Z21cmd_matrix_multiplierv+0xaf>
    30ec:	00fa8ab3          	add	s5,s5,a5
    30f0:	fffff7b7          	lui	a5,0xfffff
    30f4:	00fafab3          	and	s5,s5,a5
    30f8:	000a8593          	mv	a1,s5
    30fc:	00090513          	mv	a0,s2
    3100:	61d000ef          	jal	3f1c <_sbrk_r>
    3104:	fff00793          	li	a5,-1
    3108:	00050b93          	mv	s7,a0
    310c:	46f50663          	beq	a0,a5,3578 <_malloc_r+0x740>
    3110:	01812423          	sw	s8,8(sp)
    3114:	25456863          	bltu	a0,s4,3364 <_malloc_r+0x52c>
    3118:	00032c17          	auipc	s8,0x32
    311c:	6e8c0c13          	add	s8,s8,1768 # 35800 <__malloc_current_mallinfo>
    3120:	000c2583          	lw	a1,0(s8)
    3124:	00ba85b3          	add	a1,s5,a1
    3128:	00bc2023          	sw	a1,0(s8)
    312c:	00058713          	mv	a4,a1
    3130:	2caa1063          	bne	s4,a0,33f0 <_malloc_r+0x5b8>
    3134:	01451793          	sll	a5,a0,0x14
    3138:	2a079c63          	bnez	a5,33f0 <_malloc_r+0x5b8>
    313c:	0089ab83          	lw	s7,8(s3)
    3140:	015b07b3          	add	a5,s6,s5
    3144:	0017e793          	or	a5,a5,1
    3148:	00fba223          	sw	a5,4(s7)
    314c:	00032717          	auipc	a4,0x32
    3150:	ebc70713          	add	a4,a4,-324 # 35008 <__malloc_max_sbrked_mem>
    3154:	00072683          	lw	a3,0(a4)
    3158:	00b6f463          	bgeu	a3,a1,3160 <_malloc_r+0x328>
    315c:	00b72023          	sw	a1,0(a4)
    3160:	00032717          	auipc	a4,0x32
    3164:	ea470713          	add	a4,a4,-348 # 35004 <__malloc_max_total_mem>
    3168:	00072683          	lw	a3,0(a4)
    316c:	00b6f463          	bgeu	a3,a1,3174 <_malloc_r+0x33c>
    3170:	00b72023          	sw	a1,0(a4)
    3174:	00812c03          	lw	s8,8(sp)
    3178:	000b8413          	mv	s0,s7
    317c:	ffc7f793          	and	a5,a5,-4
    3180:	40978733          	sub	a4,a5,s1
    3184:	3897ec63          	bltu	a5,s1,351c <_malloc_r+0x6e4>
    3188:	00f00793          	li	a5,15
    318c:	38e7d863          	bge	a5,a4,351c <_malloc_r+0x6e4>
    3190:	01812a03          	lw	s4,24(sp)
    3194:	01412a83          	lw	s5,20(sp)
    3198:	00c12b83          	lw	s7,12(sp)
    319c:	00412c83          	lw	s9,4(sp)
    31a0:	0014e793          	or	a5,s1,1
    31a4:	00f42223          	sw	a5,4(s0)
    31a8:	009404b3          	add	s1,s0,s1
    31ac:	0099a423          	sw	s1,8(s3)
    31b0:	00176713          	or	a4,a4,1
    31b4:	00090513          	mv	a0,s2
    31b8:	00e4a223          	sw	a4,4(s1)
    31bc:	468000ef          	jal	3624 <__malloc_unlock>
    31c0:	02c12083          	lw	ra,44(sp)
    31c4:	00840513          	add	a0,s0,8
    31c8:	02812403          	lw	s0,40(sp)
    31cc:	01012b03          	lw	s6,16(sp)
    31d0:	02412483          	lw	s1,36(sp)
    31d4:	02012903          	lw	s2,32(sp)
    31d8:	01c12983          	lw	s3,28(sp)
    31dc:	03010113          	add	sp,sp,48
    31e0:	00008067          	ret
    31e4:	0049a503          	lw	a0,4(s3)
    31e8:	de9ff06f          	j	2fd0 <_malloc_r+0x198>
    31ec:	00842603          	lw	a2,8(s0)
    31f0:	cb1ff06f          	j	2ea0 <_malloc_r+0x68>
    31f4:	00c7a403          	lw	s0,12(a5) # fffff00c <GET_WATCHDOG_LOW+0xffdfdfcc>
    31f8:	00258593          	add	a1,a1,2
    31fc:	d68780e3          	beq	a5,s0,2f5c <_malloc_r+0x124>
    3200:	c91ff06f          	j	2e90 <_malloc_r+0x58>
    3204:	0097d713          	srl	a4,a5,0x9
    3208:	00400693          	li	a3,4
    320c:	14e6f263          	bgeu	a3,a4,3350 <_malloc_r+0x518>
    3210:	01400693          	li	a3,20
    3214:	32e6e663          	bltu	a3,a4,3540 <_malloc_r+0x708>
    3218:	05c70613          	add	a2,a4,92
    321c:	05b70693          	add	a3,a4,91
    3220:	00361613          	sll	a2,a2,0x3
    3224:	00c98633          	add	a2,s3,a2
    3228:	00062703          	lw	a4,0(a2)
    322c:	ff860613          	add	a2,a2,-8
    3230:	00e61863          	bne	a2,a4,3240 <_malloc_r+0x408>
    3234:	2980006f          	j	34cc <_malloc_r+0x694>
    3238:	00872703          	lw	a4,8(a4)
    323c:	00e60863          	beq	a2,a4,324c <_malloc_r+0x414>
    3240:	00472683          	lw	a3,4(a4)
    3244:	ffc6f693          	and	a3,a3,-4
    3248:	fed7e8e3          	bltu	a5,a3,3238 <_malloc_r+0x400>
    324c:	00c72603          	lw	a2,12(a4)
    3250:	00c42623          	sw	a2,12(s0)
    3254:	00e42423          	sw	a4,8(s0)
    3258:	00862423          	sw	s0,8(a2)
    325c:	00872623          	sw	s0,12(a4)
    3260:	d71ff06f          	j	2fd0 <_malloc_r+0x198>
    3264:	01400713          	li	a4,20
    3268:	10f77863          	bgeu	a4,a5,3378 <_malloc_r+0x540>
    326c:	05400713          	li	a4,84
    3270:	2ef76663          	bltu	a4,a5,355c <_malloc_r+0x724>
    3274:	00c4d793          	srl	a5,s1,0xc
    3278:	06f78593          	add	a1,a5,111
    327c:	06e78813          	add	a6,a5,110
    3280:	00359613          	sll	a2,a1,0x3
    3284:	c95ff06f          	j	2f18 <_malloc_r+0xe0>
    3288:	001e0e13          	add	t3,t3,1
    328c:	003e7793          	and	a5,t3,3
    3290:	00850513          	add	a0,a0,8
    3294:	10078063          	beqz	a5,3394 <_malloc_r+0x55c>
    3298:	00c52783          	lw	a5,12(a0)
    329c:	d89ff06f          	j	3024 <_malloc_r+0x1ec>
    32a0:	00842603          	lw	a2,8(s0)
    32a4:	0014e593          	or	a1,s1,1
    32a8:	00b42223          	sw	a1,4(s0)
    32ac:	00f62623          	sw	a5,12(a2)
    32b0:	00c7a423          	sw	a2,8(a5)
    32b4:	009404b3          	add	s1,s0,s1
    32b8:	0099aa23          	sw	s1,20(s3)
    32bc:	0099a823          	sw	s1,16(s3)
    32c0:	0016e793          	or	a5,a3,1
    32c4:	0114a623          	sw	a7,12(s1)
    32c8:	0114a423          	sw	a7,8(s1)
    32cc:	00f4a223          	sw	a5,4(s1)
    32d0:	00e40733          	add	a4,s0,a4
    32d4:	00090513          	mv	a0,s2
    32d8:	00d72023          	sw	a3,0(a4)
    32dc:	348000ef          	jal	3624 <__malloc_unlock>
    32e0:	00840513          	add	a0,s0,8
    32e4:	be1ff06f          	j	2ec4 <_malloc_r+0x8c>
    32e8:	00f407b3          	add	a5,s0,a5
    32ec:	0047a703          	lw	a4,4(a5)
    32f0:	00090513          	mv	a0,s2
    32f4:	00176713          	or	a4,a4,1
    32f8:	00e7a223          	sw	a4,4(a5)
    32fc:	328000ef          	jal	3624 <__malloc_unlock>
    3300:	00840513          	add	a0,s0,8
    3304:	bc1ff06f          	j	2ec4 <_malloc_r+0x8c>
    3308:	0034d593          	srl	a1,s1,0x3
    330c:	00848793          	add	a5,s1,8
    3310:	b69ff06f          	j	2e78 <_malloc_r+0x40>
    3314:	0014e693          	or	a3,s1,1
    3318:	00d42223          	sw	a3,4(s0)
    331c:	009404b3          	add	s1,s0,s1
    3320:	0099aa23          	sw	s1,20(s3)
    3324:	0099a823          	sw	s1,16(s3)
    3328:	00176693          	or	a3,a4,1
    332c:	0114a623          	sw	a7,12(s1)
    3330:	0114a423          	sw	a7,8(s1)
    3334:	00d4a223          	sw	a3,4(s1)
    3338:	00f407b3          	add	a5,s0,a5
    333c:	00090513          	mv	a0,s2
    3340:	00e7a023          	sw	a4,0(a5)
    3344:	2e0000ef          	jal	3624 <__malloc_unlock>
    3348:	00840513          	add	a0,s0,8
    334c:	b79ff06f          	j	2ec4 <_malloc_r+0x8c>
    3350:	0067d713          	srl	a4,a5,0x6
    3354:	03970613          	add	a2,a4,57
    3358:	03870693          	add	a3,a4,56
    335c:	00361613          	sll	a2,a2,0x3
    3360:	ec5ff06f          	j	3224 <_malloc_r+0x3ec>
    3364:	07340c63          	beq	s0,s3,33dc <_malloc_r+0x5a4>
    3368:	0089a403          	lw	s0,8(s3)
    336c:	00812c03          	lw	s8,8(sp)
    3370:	00442783          	lw	a5,4(s0)
    3374:	e09ff06f          	j	317c <_malloc_r+0x344>
    3378:	05c78593          	add	a1,a5,92
    337c:	05b78813          	add	a6,a5,91
    3380:	00359613          	sll	a2,a1,0x3
    3384:	b95ff06f          	j	2f18 <_malloc_r+0xe0>
    3388:	00832783          	lw	a5,8(t1)
    338c:	fff58593          	add	a1,a1,-1
    3390:	28679063          	bne	a5,t1,3610 <_malloc_r+0x7d8>
    3394:	0035f793          	and	a5,a1,3
    3398:	ff830313          	add	t1,t1,-8
    339c:	fe0796e3          	bnez	a5,3388 <_malloc_r+0x550>
    33a0:	0049a703          	lw	a4,4(s3)
    33a4:	fff64793          	not	a5,a2
    33a8:	00e7f7b3          	and	a5,a5,a4
    33ac:	00f9a223          	sw	a5,4(s3)
    33b0:	00161613          	sll	a2,a2,0x1
    33b4:	ccc7eee3          	bltu	a5,a2,3090 <_malloc_r+0x258>
    33b8:	cc060ce3          	beqz	a2,3090 <_malloc_r+0x258>
    33bc:	00f67733          	and	a4,a2,a5
    33c0:	00071a63          	bnez	a4,33d4 <_malloc_r+0x59c>
    33c4:	00161613          	sll	a2,a2,0x1
    33c8:	00f67733          	and	a4,a2,a5
    33cc:	004e0e13          	add	t3,t3,4
    33d0:	fe070ae3          	beqz	a4,33c4 <_malloc_r+0x58c>
    33d4:	000e0593          	mv	a1,t3
    33d8:	c39ff06f          	j	3010 <_malloc_r+0x1d8>
    33dc:	00032c17          	auipc	s8,0x32
    33e0:	424c0c13          	add	s8,s8,1060 # 35800 <__malloc_current_mallinfo>
    33e4:	000c2703          	lw	a4,0(s8)
    33e8:	00ea8733          	add	a4,s5,a4
    33ec:	00ec2023          	sw	a4,0(s8)
    33f0:	000ca683          	lw	a3,0(s9)
    33f4:	fff00793          	li	a5,-1
    33f8:	18f68663          	beq	a3,a5,3584 <_malloc_r+0x74c>
    33fc:	414b87b3          	sub	a5,s7,s4
    3400:	00e787b3          	add	a5,a5,a4
    3404:	00fc2023          	sw	a5,0(s8)
    3408:	007bfc93          	and	s9,s7,7
    340c:	0c0c8c63          	beqz	s9,34e4 <_malloc_r+0x6ac>
    3410:	419b8bb3          	sub	s7,s7,s9
    3414:	000017b7          	lui	a5,0x1
    3418:	00878793          	add	a5,a5,8 # 1008 <_Z21cmd_matrix_multiplierv+0xa8>
    341c:	008b8b93          	add	s7,s7,8
    3420:	419785b3          	sub	a1,a5,s9
    3424:	015b8ab3          	add	s5,s7,s5
    3428:	415585b3          	sub	a1,a1,s5
    342c:	01459593          	sll	a1,a1,0x14
    3430:	0145da13          	srl	s4,a1,0x14
    3434:	000a0593          	mv	a1,s4
    3438:	00090513          	mv	a0,s2
    343c:	2e1000ef          	jal	3f1c <_sbrk_r>
    3440:	fff00793          	li	a5,-1
    3444:	18f50063          	beq	a0,a5,35c4 <_malloc_r+0x78c>
    3448:	41750533          	sub	a0,a0,s7
    344c:	01450ab3          	add	s5,a0,s4
    3450:	000c2703          	lw	a4,0(s8)
    3454:	0179a423          	sw	s7,8(s3)
    3458:	001ae793          	or	a5,s5,1
    345c:	00ea05b3          	add	a1,s4,a4
    3460:	00bc2023          	sw	a1,0(s8)
    3464:	00fba223          	sw	a5,4(s7)
    3468:	cf3402e3          	beq	s0,s3,314c <_malloc_r+0x314>
    346c:	00f00693          	li	a3,15
    3470:	0b66f063          	bgeu	a3,s6,3510 <_malloc_r+0x6d8>
    3474:	00442703          	lw	a4,4(s0)
    3478:	ff4b0793          	add	a5,s6,-12
    347c:	ff87f793          	and	a5,a5,-8
    3480:	00177713          	and	a4,a4,1
    3484:	00f76733          	or	a4,a4,a5
    3488:	00e42223          	sw	a4,4(s0)
    348c:	00500613          	li	a2,5
    3490:	00f40733          	add	a4,s0,a5
    3494:	00c72223          	sw	a2,4(a4)
    3498:	00c72423          	sw	a2,8(a4)
    349c:	00f6e663          	bltu	a3,a5,34a8 <_malloc_r+0x670>
    34a0:	004ba783          	lw	a5,4(s7)
    34a4:	ca9ff06f          	j	314c <_malloc_r+0x314>
    34a8:	00840593          	add	a1,s0,8
    34ac:	00090513          	mv	a0,s2
    34b0:	535000ef          	jal	41e4 <_free_r>
    34b4:	0089ab83          	lw	s7,8(s3)
    34b8:	000c2583          	lw	a1,0(s8)
    34bc:	004ba783          	lw	a5,4(s7)
    34c0:	c8dff06f          	j	314c <_malloc_r+0x314>
    34c4:	010a8a93          	add	s5,s5,16
    34c8:	c31ff06f          	j	30f8 <_malloc_r+0x2c0>
    34cc:	4026d693          	sra	a3,a3,0x2
    34d0:	00100793          	li	a5,1
    34d4:	00d797b3          	sll	a5,a5,a3
    34d8:	00f56533          	or	a0,a0,a5
    34dc:	00a9a223          	sw	a0,4(s3)
    34e0:	d71ff06f          	j	3250 <_malloc_r+0x418>
    34e4:	015b85b3          	add	a1,s7,s5
    34e8:	40b005b3          	neg	a1,a1
    34ec:	01459593          	sll	a1,a1,0x14
    34f0:	0145da13          	srl	s4,a1,0x14
    34f4:	000a0593          	mv	a1,s4
    34f8:	00090513          	mv	a0,s2
    34fc:	221000ef          	jal	3f1c <_sbrk_r>
    3500:	fff00793          	li	a5,-1
    3504:	f4f512e3          	bne	a0,a5,3448 <_malloc_r+0x610>
    3508:	00000a13          	li	s4,0
    350c:	f45ff06f          	j	3450 <_malloc_r+0x618>
    3510:	00812c03          	lw	s8,8(sp)
    3514:	00100793          	li	a5,1
    3518:	00fba223          	sw	a5,4(s7)
    351c:	00090513          	mv	a0,s2
    3520:	104000ef          	jal	3624 <__malloc_unlock>
    3524:	00000513          	li	a0,0
    3528:	01812a03          	lw	s4,24(sp)
    352c:	01412a83          	lw	s5,20(sp)
    3530:	01012b03          	lw	s6,16(sp)
    3534:	00c12b83          	lw	s7,12(sp)
    3538:	00412c83          	lw	s9,4(sp)
    353c:	989ff06f          	j	2ec4 <_malloc_r+0x8c>
    3540:	05400693          	li	a3,84
    3544:	04e6e463          	bltu	a3,a4,358c <_malloc_r+0x754>
    3548:	00c7d713          	srl	a4,a5,0xc
    354c:	06f70613          	add	a2,a4,111
    3550:	06e70693          	add	a3,a4,110
    3554:	00361613          	sll	a2,a2,0x3
    3558:	ccdff06f          	j	3224 <_malloc_r+0x3ec>
    355c:	15400713          	li	a4,340
    3560:	04f76463          	bltu	a4,a5,35a8 <_malloc_r+0x770>
    3564:	00f4d793          	srl	a5,s1,0xf
    3568:	07878593          	add	a1,a5,120
    356c:	07778813          	add	a6,a5,119
    3570:	00359613          	sll	a2,a1,0x3
    3574:	9a5ff06f          	j	2f18 <_malloc_r+0xe0>
    3578:	0089a403          	lw	s0,8(s3)
    357c:	00442783          	lw	a5,4(s0)
    3580:	bfdff06f          	j	317c <_malloc_r+0x344>
    3584:	017ca023          	sw	s7,0(s9)
    3588:	e81ff06f          	j	3408 <_malloc_r+0x5d0>
    358c:	15400693          	li	a3,340
    3590:	04e6e463          	bltu	a3,a4,35d8 <_malloc_r+0x7a0>
    3594:	00f7d713          	srl	a4,a5,0xf
    3598:	07870613          	add	a2,a4,120
    359c:	07770693          	add	a3,a4,119
    35a0:	00361613          	sll	a2,a2,0x3
    35a4:	c81ff06f          	j	3224 <_malloc_r+0x3ec>
    35a8:	55400713          	li	a4,1364
    35ac:	04f76463          	bltu	a4,a5,35f4 <_malloc_r+0x7bc>
    35b0:	0124d793          	srl	a5,s1,0x12
    35b4:	07d78593          	add	a1,a5,125
    35b8:	07c78813          	add	a6,a5,124
    35bc:	00359613          	sll	a2,a1,0x3
    35c0:	959ff06f          	j	2f18 <_malloc_r+0xe0>
    35c4:	ff8c8c93          	add	s9,s9,-8
    35c8:	019a8ab3          	add	s5,s5,s9
    35cc:	417a8ab3          	sub	s5,s5,s7
    35d0:	00000a13          	li	s4,0
    35d4:	e7dff06f          	j	3450 <_malloc_r+0x618>
    35d8:	55400693          	li	a3,1364
    35dc:	02e6e463          	bltu	a3,a4,3604 <_malloc_r+0x7cc>
    35e0:	0127d713          	srl	a4,a5,0x12
    35e4:	07d70613          	add	a2,a4,125
    35e8:	07c70693          	add	a3,a4,124
    35ec:	00361613          	sll	a2,a2,0x3
    35f0:	c35ff06f          	j	3224 <_malloc_r+0x3ec>
    35f4:	3f800613          	li	a2,1016
    35f8:	07f00593          	li	a1,127
    35fc:	07e00813          	li	a6,126
    3600:	919ff06f          	j	2f18 <_malloc_r+0xe0>
    3604:	3f800613          	li	a2,1016
    3608:	07e00693          	li	a3,126
    360c:	c19ff06f          	j	3224 <_malloc_r+0x3ec>
    3610:	0049a783          	lw	a5,4(s3)
    3614:	d9dff06f          	j	33b0 <_malloc_r+0x578>

00003618 <__malloc_lock>:
    3618:	00032517          	auipc	a0,0x32
    361c:	a1050513          	add	a0,a0,-1520 # 35028 <__lock___malloc_recursive_mutex>
    3620:	2650006f          	j	4084 <__retarget_lock_acquire_recursive>

00003624 <__malloc_unlock>:
    3624:	00032517          	auipc	a0,0x32
    3628:	a0450513          	add	a0,a0,-1532 # 35028 <__lock___malloc_recursive_mutex>
    362c:	2710006f          	j	409c <__retarget_lock_release_recursive>

00003630 <stdio_exit_handler>:
    3630:	00031617          	auipc	a2,0x31
    3634:	dd860613          	add	a2,a2,-552 # 34408 <__sglue>
    3638:	00001597          	auipc	a1,0x1
    363c:	eb858593          	add	a1,a1,-328 # 44f0 <_fclose_r>
    3640:	00031517          	auipc	a0,0x31
    3644:	dd850513          	add	a0,a0,-552 # 34418 <_impure_data>
    3648:	4cc0006f          	j	3b14 <_fwalk_sglue>

0000364c <cleanup_stdio>:
    364c:	00452583          	lw	a1,4(a0)
    3650:	ff010113          	add	sp,sp,-16
    3654:	00812423          	sw	s0,8(sp)
    3658:	00112623          	sw	ra,12(sp)
    365c:	00032797          	auipc	a5,0x32
    3660:	1cc78793          	add	a5,a5,460 # 35828 <__sf>
    3664:	00050413          	mv	s0,a0
    3668:	00f58463          	beq	a1,a5,3670 <cleanup_stdio+0x24>
    366c:	685000ef          	jal	44f0 <_fclose_r>
    3670:	00842583          	lw	a1,8(s0)
    3674:	00032797          	auipc	a5,0x32
    3678:	21c78793          	add	a5,a5,540 # 35890 <__sf+0x68>
    367c:	00f58663          	beq	a1,a5,3688 <cleanup_stdio+0x3c>
    3680:	00040513          	mv	a0,s0
    3684:	66d000ef          	jal	44f0 <_fclose_r>
    3688:	00c42583          	lw	a1,12(s0)
    368c:	00032797          	auipc	a5,0x32
    3690:	26c78793          	add	a5,a5,620 # 358f8 <__sf+0xd0>
    3694:	00f58c63          	beq	a1,a5,36ac <cleanup_stdio+0x60>
    3698:	00040513          	mv	a0,s0
    369c:	00812403          	lw	s0,8(sp)
    36a0:	00c12083          	lw	ra,12(sp)
    36a4:	01010113          	add	sp,sp,16
    36a8:	6490006f          	j	44f0 <_fclose_r>
    36ac:	00c12083          	lw	ra,12(sp)
    36b0:	00812403          	lw	s0,8(sp)
    36b4:	01010113          	add	sp,sp,16
    36b8:	00008067          	ret

000036bc <__fp_lock>:
    36bc:	0645a783          	lw	a5,100(a1)
    36c0:	0017f793          	and	a5,a5,1
    36c4:	00079863          	bnez	a5,36d4 <__fp_lock+0x18>
    36c8:	00c5d783          	lhu	a5,12(a1)
    36cc:	2007f793          	and	a5,a5,512
    36d0:	00078663          	beqz	a5,36dc <__fp_lock+0x20>
    36d4:	00000513          	li	a0,0
    36d8:	00008067          	ret
    36dc:	0585a503          	lw	a0,88(a1)
    36e0:	ff010113          	add	sp,sp,-16
    36e4:	00112623          	sw	ra,12(sp)
    36e8:	19d000ef          	jal	4084 <__retarget_lock_acquire_recursive>
    36ec:	00c12083          	lw	ra,12(sp)
    36f0:	00000513          	li	a0,0
    36f4:	01010113          	add	sp,sp,16
    36f8:	00008067          	ret

000036fc <__fp_unlock>:
    36fc:	0645a783          	lw	a5,100(a1)
    3700:	0017f793          	and	a5,a5,1
    3704:	00079863          	bnez	a5,3714 <__fp_unlock+0x18>
    3708:	00c5d783          	lhu	a5,12(a1)
    370c:	2007f793          	and	a5,a5,512
    3710:	00078663          	beqz	a5,371c <__fp_unlock+0x20>
    3714:	00000513          	li	a0,0
    3718:	00008067          	ret
    371c:	0585a503          	lw	a0,88(a1)
    3720:	ff010113          	add	sp,sp,-16
    3724:	00112623          	sw	ra,12(sp)
    3728:	175000ef          	jal	409c <__retarget_lock_release_recursive>
    372c:	00c12083          	lw	ra,12(sp)
    3730:	00000513          	li	a0,0
    3734:	01010113          	add	sp,sp,16
    3738:	00008067          	ret

0000373c <global_stdio_init.part.0>:
    373c:	fe010113          	add	sp,sp,-32
    3740:	00000797          	auipc	a5,0x0
    3744:	ef078793          	add	a5,a5,-272 # 3630 <stdio_exit_handler>
    3748:	00112e23          	sw	ra,28(sp)
    374c:	00812c23          	sw	s0,24(sp)
    3750:	00912a23          	sw	s1,20(sp)
    3754:	00032417          	auipc	s0,0x32
    3758:	0d440413          	add	s0,s0,212 # 35828 <__sf>
    375c:	01212823          	sw	s2,16(sp)
    3760:	01312623          	sw	s3,12(sp)
    3764:	01412423          	sw	s4,8(sp)
    3768:	00800613          	li	a2,8
    376c:	00000593          	li	a1,0
    3770:	00032717          	auipc	a4,0x32
    3774:	8af72023          	sw	a5,-1888(a4) # 35010 <__stdio_exit_handler>
    3778:	00032517          	auipc	a0,0x32
    377c:	10c50513          	add	a0,a0,268 # 35884 <__sf+0x5c>
    3780:	00400793          	li	a5,4
    3784:	00f42623          	sw	a5,12(s0)
    3788:	00042023          	sw	zero,0(s0)
    378c:	00042223          	sw	zero,4(s0)
    3790:	00042423          	sw	zero,8(s0)
    3794:	06042223          	sw	zero,100(s0)
    3798:	00042823          	sw	zero,16(s0)
    379c:	00042a23          	sw	zero,20(s0)
    37a0:	00042c23          	sw	zero,24(s0)
    37a4:	875fe0ef          	jal	2018 <memset>
    37a8:	00000a17          	auipc	s4,0x0
    37ac:	420a0a13          	add	s4,s4,1056 # 3bc8 <__sread>
    37b0:	00000997          	auipc	s3,0x0
    37b4:	47c98993          	add	s3,s3,1148 # 3c2c <__swrite>
    37b8:	00000917          	auipc	s2,0x0
    37bc:	4fc90913          	add	s2,s2,1276 # 3cb4 <__sseek>
    37c0:	00000497          	auipc	s1,0x0
    37c4:	56c48493          	add	s1,s1,1388 # 3d2c <__sclose>
    37c8:	00032517          	auipc	a0,0x32
    37cc:	0b850513          	add	a0,a0,184 # 35880 <__sf+0x58>
    37d0:	03442023          	sw	s4,32(s0)
    37d4:	03342223          	sw	s3,36(s0)
    37d8:	03242423          	sw	s2,40(s0)
    37dc:	02942623          	sw	s1,44(s0)
    37e0:	00842e23          	sw	s0,28(s0)
    37e4:	091000ef          	jal	4074 <__retarget_lock_init_recursive>
    37e8:	000107b7          	lui	a5,0x10
    37ec:	00978793          	add	a5,a5,9 # 10009 <__fini_array_end+0xa809>
    37f0:	00800613          	li	a2,8
    37f4:	00000593          	li	a1,0
    37f8:	00032517          	auipc	a0,0x32
    37fc:	0f450513          	add	a0,a0,244 # 358ec <__sf+0xc4>
    3800:	06f42a23          	sw	a5,116(s0)
    3804:	06042423          	sw	zero,104(s0)
    3808:	06042623          	sw	zero,108(s0)
    380c:	06042823          	sw	zero,112(s0)
    3810:	0c042623          	sw	zero,204(s0)
    3814:	06042c23          	sw	zero,120(s0)
    3818:	06042e23          	sw	zero,124(s0)
    381c:	08042023          	sw	zero,128(s0)
    3820:	ff8fe0ef          	jal	2018 <memset>
    3824:	00032797          	auipc	a5,0x32
    3828:	06c78793          	add	a5,a5,108 # 35890 <__sf+0x68>
    382c:	00032517          	auipc	a0,0x32
    3830:	0bc50513          	add	a0,a0,188 # 358e8 <__sf+0xc0>
    3834:	08f42223          	sw	a5,132(s0)
    3838:	09442423          	sw	s4,136(s0)
    383c:	09342623          	sw	s3,140(s0)
    3840:	09242823          	sw	s2,144(s0)
    3844:	08942a23          	sw	s1,148(s0)
    3848:	02d000ef          	jal	4074 <__retarget_lock_init_recursive>
    384c:	000207b7          	lui	a5,0x20
    3850:	01278793          	add	a5,a5,18 # 20012 <__fini_array_end+0x1a812>
    3854:	00800613          	li	a2,8
    3858:	00000593          	li	a1,0
    385c:	00032517          	auipc	a0,0x32
    3860:	0f850513          	add	a0,a0,248 # 35954 <__sf+0x12c>
    3864:	0cf42e23          	sw	a5,220(s0)
    3868:	0c042823          	sw	zero,208(s0)
    386c:	0c042a23          	sw	zero,212(s0)
    3870:	0c042c23          	sw	zero,216(s0)
    3874:	12042a23          	sw	zero,308(s0)
    3878:	0e042023          	sw	zero,224(s0)
    387c:	0e042223          	sw	zero,228(s0)
    3880:	0e042423          	sw	zero,232(s0)
    3884:	f94fe0ef          	jal	2018 <memset>
    3888:	00032797          	auipc	a5,0x32
    388c:	07078793          	add	a5,a5,112 # 358f8 <__sf+0xd0>
    3890:	0f442823          	sw	s4,240(s0)
    3894:	0f342a23          	sw	s3,244(s0)
    3898:	0f242c23          	sw	s2,248(s0)
    389c:	0e942e23          	sw	s1,252(s0)
    38a0:	0ef42623          	sw	a5,236(s0)
    38a4:	01812403          	lw	s0,24(sp)
    38a8:	01c12083          	lw	ra,28(sp)
    38ac:	01412483          	lw	s1,20(sp)
    38b0:	01012903          	lw	s2,16(sp)
    38b4:	00c12983          	lw	s3,12(sp)
    38b8:	00812a03          	lw	s4,8(sp)
    38bc:	00032517          	auipc	a0,0x32
    38c0:	09450513          	add	a0,a0,148 # 35950 <__sf+0x128>
    38c4:	02010113          	add	sp,sp,32
    38c8:	7ac0006f          	j	4074 <__retarget_lock_init_recursive>

000038cc <__sfp>:
    38cc:	fe010113          	add	sp,sp,-32
    38d0:	01312623          	sw	s3,12(sp)
    38d4:	00050993          	mv	s3,a0
    38d8:	00031517          	auipc	a0,0x31
    38dc:	75c50513          	add	a0,a0,1884 # 35034 <__lock___sfp_recursive_mutex>
    38e0:	00112e23          	sw	ra,28(sp)
    38e4:	00812c23          	sw	s0,24(sp)
    38e8:	00912a23          	sw	s1,20(sp)
    38ec:	01212823          	sw	s2,16(sp)
    38f0:	794000ef          	jal	4084 <__retarget_lock_acquire_recursive>
    38f4:	00031797          	auipc	a5,0x31
    38f8:	71c7a783          	lw	a5,1820(a5) # 35010 <__stdio_exit_handler>
    38fc:	10078263          	beqz	a5,3a00 <__sfp+0x134>
    3900:	00031917          	auipc	s2,0x31
    3904:	b0890913          	add	s2,s2,-1272 # 34408 <__sglue>
    3908:	fff00493          	li	s1,-1
    390c:	00492783          	lw	a5,4(s2)
    3910:	00892403          	lw	s0,8(s2)
    3914:	fff78793          	add	a5,a5,-1
    3918:	0007d863          	bgez	a5,3928 <__sfp+0x5c>
    391c:	0940006f          	j	39b0 <__sfp+0xe4>
    3920:	06840413          	add	s0,s0,104
    3924:	08978663          	beq	a5,s1,39b0 <__sfp+0xe4>
    3928:	00c41703          	lh	a4,12(s0)
    392c:	fff78793          	add	a5,a5,-1
    3930:	fe0718e3          	bnez	a4,3920 <__sfp+0x54>
    3934:	ffff07b7          	lui	a5,0xffff0
    3938:	00178793          	add	a5,a5,1 # ffff0001 <GET_WATCHDOG_LOW+0xffdeefc1>
    393c:	00f42623          	sw	a5,12(s0)
    3940:	05840513          	add	a0,s0,88
    3944:	06042223          	sw	zero,100(s0)
    3948:	72c000ef          	jal	4074 <__retarget_lock_init_recursive>
    394c:	00031517          	auipc	a0,0x31
    3950:	6e850513          	add	a0,a0,1768 # 35034 <__lock___sfp_recursive_mutex>
    3954:	748000ef          	jal	409c <__retarget_lock_release_recursive>
    3958:	00800613          	li	a2,8
    395c:	00042023          	sw	zero,0(s0)
    3960:	00042423          	sw	zero,8(s0)
    3964:	00042223          	sw	zero,4(s0)
    3968:	00042823          	sw	zero,16(s0)
    396c:	00042a23          	sw	zero,20(s0)
    3970:	00042c23          	sw	zero,24(s0)
    3974:	00000593          	li	a1,0
    3978:	05c40513          	add	a0,s0,92
    397c:	e9cfe0ef          	jal	2018 <memset>
    3980:	02042823          	sw	zero,48(s0)
    3984:	02042a23          	sw	zero,52(s0)
    3988:	04042223          	sw	zero,68(s0)
    398c:	04042423          	sw	zero,72(s0)
    3990:	01c12083          	lw	ra,28(sp)
    3994:	00040513          	mv	a0,s0
    3998:	01812403          	lw	s0,24(sp)
    399c:	01412483          	lw	s1,20(sp)
    39a0:	01012903          	lw	s2,16(sp)
    39a4:	00c12983          	lw	s3,12(sp)
    39a8:	02010113          	add	sp,sp,32
    39ac:	00008067          	ret
    39b0:	00092403          	lw	s0,0(s2)
    39b4:	00040663          	beqz	s0,39c0 <__sfp+0xf4>
    39b8:	00040913          	mv	s2,s0
    39bc:	f51ff06f          	j	390c <__sfp+0x40>
    39c0:	1ac00593          	li	a1,428
    39c4:	00098513          	mv	a0,s3
    39c8:	c70ff0ef          	jal	2e38 <_malloc_r>
    39cc:	00050413          	mv	s0,a0
    39d0:	02050c63          	beqz	a0,3a08 <__sfp+0x13c>
    39d4:	00c50513          	add	a0,a0,12
    39d8:	00400793          	li	a5,4
    39dc:	00042023          	sw	zero,0(s0)
    39e0:	00f42223          	sw	a5,4(s0)
    39e4:	00a42423          	sw	a0,8(s0)
    39e8:	1a000613          	li	a2,416
    39ec:	00000593          	li	a1,0
    39f0:	e28fe0ef          	jal	2018 <memset>
    39f4:	00892023          	sw	s0,0(s2)
    39f8:	00040913          	mv	s2,s0
    39fc:	f11ff06f          	j	390c <__sfp+0x40>
    3a00:	d3dff0ef          	jal	373c <global_stdio_init.part.0>
    3a04:	efdff06f          	j	3900 <__sfp+0x34>
    3a08:	00092023          	sw	zero,0(s2)
    3a0c:	00031517          	auipc	a0,0x31
    3a10:	62850513          	add	a0,a0,1576 # 35034 <__lock___sfp_recursive_mutex>
    3a14:	688000ef          	jal	409c <__retarget_lock_release_recursive>
    3a18:	00c00793          	li	a5,12
    3a1c:	00f9a023          	sw	a5,0(s3)
    3a20:	f71ff06f          	j	3990 <__sfp+0xc4>

00003a24 <__sinit>:
    3a24:	ff010113          	add	sp,sp,-16
    3a28:	00812423          	sw	s0,8(sp)
    3a2c:	00050413          	mv	s0,a0
    3a30:	00031517          	auipc	a0,0x31
    3a34:	60450513          	add	a0,a0,1540 # 35034 <__lock___sfp_recursive_mutex>
    3a38:	00112623          	sw	ra,12(sp)
    3a3c:	648000ef          	jal	4084 <__retarget_lock_acquire_recursive>
    3a40:	03442783          	lw	a5,52(s0)
    3a44:	00079e63          	bnez	a5,3a60 <__sinit+0x3c>
    3a48:	00000797          	auipc	a5,0x0
    3a4c:	c0478793          	add	a5,a5,-1020 # 364c <cleanup_stdio>
    3a50:	02f42a23          	sw	a5,52(s0)
    3a54:	00031797          	auipc	a5,0x31
    3a58:	5bc7a783          	lw	a5,1468(a5) # 35010 <__stdio_exit_handler>
    3a5c:	00078e63          	beqz	a5,3a78 <__sinit+0x54>
    3a60:	00812403          	lw	s0,8(sp)
    3a64:	00c12083          	lw	ra,12(sp)
    3a68:	00031517          	auipc	a0,0x31
    3a6c:	5cc50513          	add	a0,a0,1484 # 35034 <__lock___sfp_recursive_mutex>
    3a70:	01010113          	add	sp,sp,16
    3a74:	6280006f          	j	409c <__retarget_lock_release_recursive>
    3a78:	cc5ff0ef          	jal	373c <global_stdio_init.part.0>
    3a7c:	00812403          	lw	s0,8(sp)
    3a80:	00c12083          	lw	ra,12(sp)
    3a84:	00031517          	auipc	a0,0x31
    3a88:	5b050513          	add	a0,a0,1456 # 35034 <__lock___sfp_recursive_mutex>
    3a8c:	01010113          	add	sp,sp,16
    3a90:	60c0006f          	j	409c <__retarget_lock_release_recursive>

00003a94 <__sfp_lock_acquire>:
    3a94:	00031517          	auipc	a0,0x31
    3a98:	5a050513          	add	a0,a0,1440 # 35034 <__lock___sfp_recursive_mutex>
    3a9c:	5e80006f          	j	4084 <__retarget_lock_acquire_recursive>

00003aa0 <__sfp_lock_release>:
    3aa0:	00031517          	auipc	a0,0x31
    3aa4:	59450513          	add	a0,a0,1428 # 35034 <__lock___sfp_recursive_mutex>
    3aa8:	5f40006f          	j	409c <__retarget_lock_release_recursive>

00003aac <__fp_lock_all>:
    3aac:	ff010113          	add	sp,sp,-16
    3ab0:	00031517          	auipc	a0,0x31
    3ab4:	58450513          	add	a0,a0,1412 # 35034 <__lock___sfp_recursive_mutex>
    3ab8:	00112623          	sw	ra,12(sp)
    3abc:	5c8000ef          	jal	4084 <__retarget_lock_acquire_recursive>
    3ac0:	00c12083          	lw	ra,12(sp)
    3ac4:	00031617          	auipc	a2,0x31
    3ac8:	94460613          	add	a2,a2,-1724 # 34408 <__sglue>
    3acc:	00000597          	auipc	a1,0x0
    3ad0:	bf058593          	add	a1,a1,-1040 # 36bc <__fp_lock>
    3ad4:	00000513          	li	a0,0
    3ad8:	01010113          	add	sp,sp,16
    3adc:	0380006f          	j	3b14 <_fwalk_sglue>

00003ae0 <__fp_unlock_all>:
    3ae0:	ff010113          	add	sp,sp,-16
    3ae4:	00031617          	auipc	a2,0x31
    3ae8:	92460613          	add	a2,a2,-1756 # 34408 <__sglue>
    3aec:	00000597          	auipc	a1,0x0
    3af0:	c1058593          	add	a1,a1,-1008 # 36fc <__fp_unlock>
    3af4:	00000513          	li	a0,0
    3af8:	00112623          	sw	ra,12(sp)
    3afc:	018000ef          	jal	3b14 <_fwalk_sglue>
    3b00:	00c12083          	lw	ra,12(sp)
    3b04:	00031517          	auipc	a0,0x31
    3b08:	53050513          	add	a0,a0,1328 # 35034 <__lock___sfp_recursive_mutex>
    3b0c:	01010113          	add	sp,sp,16
    3b10:	58c0006f          	j	409c <__retarget_lock_release_recursive>

00003b14 <_fwalk_sglue>:
    3b14:	fd010113          	add	sp,sp,-48
    3b18:	03212023          	sw	s2,32(sp)
    3b1c:	01312e23          	sw	s3,28(sp)
    3b20:	01412c23          	sw	s4,24(sp)
    3b24:	01512a23          	sw	s5,20(sp)
    3b28:	01612823          	sw	s6,16(sp)
    3b2c:	01712623          	sw	s7,12(sp)
    3b30:	02112623          	sw	ra,44(sp)
    3b34:	02812423          	sw	s0,40(sp)
    3b38:	02912223          	sw	s1,36(sp)
    3b3c:	00050b13          	mv	s6,a0
    3b40:	00058b93          	mv	s7,a1
    3b44:	00060a93          	mv	s5,a2
    3b48:	00000a13          	li	s4,0
    3b4c:	00100993          	li	s3,1
    3b50:	fff00913          	li	s2,-1
    3b54:	004aa483          	lw	s1,4(s5)
    3b58:	008aa403          	lw	s0,8(s5)
    3b5c:	fff48493          	add	s1,s1,-1
    3b60:	0204c863          	bltz	s1,3b90 <_fwalk_sglue+0x7c>
    3b64:	00c45783          	lhu	a5,12(s0)
    3b68:	00f9fe63          	bgeu	s3,a5,3b84 <_fwalk_sglue+0x70>
    3b6c:	00e41783          	lh	a5,14(s0)
    3b70:	00040593          	mv	a1,s0
    3b74:	000b0513          	mv	a0,s6
    3b78:	01278663          	beq	a5,s2,3b84 <_fwalk_sglue+0x70>
    3b7c:	000b80e7          	jalr	s7
    3b80:	00aa6a33          	or	s4,s4,a0
    3b84:	fff48493          	add	s1,s1,-1
    3b88:	06840413          	add	s0,s0,104
    3b8c:	fd249ce3          	bne	s1,s2,3b64 <_fwalk_sglue+0x50>
    3b90:	000aaa83          	lw	s5,0(s5)
    3b94:	fc0a90e3          	bnez	s5,3b54 <_fwalk_sglue+0x40>
    3b98:	02c12083          	lw	ra,44(sp)
    3b9c:	02812403          	lw	s0,40(sp)
    3ba0:	02412483          	lw	s1,36(sp)
    3ba4:	02012903          	lw	s2,32(sp)
    3ba8:	01c12983          	lw	s3,28(sp)
    3bac:	01412a83          	lw	s5,20(sp)
    3bb0:	01012b03          	lw	s6,16(sp)
    3bb4:	00c12b83          	lw	s7,12(sp)
    3bb8:	000a0513          	mv	a0,s4
    3bbc:	01812a03          	lw	s4,24(sp)
    3bc0:	03010113          	add	sp,sp,48
    3bc4:	00008067          	ret

00003bc8 <__sread>:
    3bc8:	ff010113          	add	sp,sp,-16
    3bcc:	00812423          	sw	s0,8(sp)
    3bd0:	00058413          	mv	s0,a1
    3bd4:	00e59583          	lh	a1,14(a1)
    3bd8:	00112623          	sw	ra,12(sp)
    3bdc:	2dc000ef          	jal	3eb8 <_read_r>
    3be0:	02054063          	bltz	a0,3c00 <__sread+0x38>
    3be4:	05042783          	lw	a5,80(s0)
    3be8:	00c12083          	lw	ra,12(sp)
    3bec:	00a787b3          	add	a5,a5,a0
    3bf0:	04f42823          	sw	a5,80(s0)
    3bf4:	00812403          	lw	s0,8(sp)
    3bf8:	01010113          	add	sp,sp,16
    3bfc:	00008067          	ret
    3c00:	00c45783          	lhu	a5,12(s0)
    3c04:	fffff737          	lui	a4,0xfffff
    3c08:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    3c0c:	00e7f7b3          	and	a5,a5,a4
    3c10:	00c12083          	lw	ra,12(sp)
    3c14:	00f41623          	sh	a5,12(s0)
    3c18:	00812403          	lw	s0,8(sp)
    3c1c:	01010113          	add	sp,sp,16
    3c20:	00008067          	ret

00003c24 <__seofread>:
    3c24:	00000513          	li	a0,0
    3c28:	00008067          	ret

00003c2c <__swrite>:
    3c2c:	00c59783          	lh	a5,12(a1)
    3c30:	fe010113          	add	sp,sp,-32
    3c34:	00812c23          	sw	s0,24(sp)
    3c38:	00912a23          	sw	s1,20(sp)
    3c3c:	01212823          	sw	s2,16(sp)
    3c40:	01312623          	sw	s3,12(sp)
    3c44:	00112e23          	sw	ra,28(sp)
    3c48:	1007f713          	and	a4,a5,256
    3c4c:	00058413          	mv	s0,a1
    3c50:	00050493          	mv	s1,a0
    3c54:	00060913          	mv	s2,a2
    3c58:	00068993          	mv	s3,a3
    3c5c:	04071063          	bnez	a4,3c9c <__swrite+0x70>
    3c60:	fffff737          	lui	a4,0xfffff
    3c64:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    3c68:	00e7f7b3          	and	a5,a5,a4
    3c6c:	00e41583          	lh	a1,14(s0)
    3c70:	00f41623          	sh	a5,12(s0)
    3c74:	01812403          	lw	s0,24(sp)
    3c78:	01c12083          	lw	ra,28(sp)
    3c7c:	00098693          	mv	a3,s3
    3c80:	00090613          	mv	a2,s2
    3c84:	00c12983          	lw	s3,12(sp)
    3c88:	01012903          	lw	s2,16(sp)
    3c8c:	00048513          	mv	a0,s1
    3c90:	01412483          	lw	s1,20(sp)
    3c94:	02010113          	add	sp,sp,32
    3c98:	2dc0006f          	j	3f74 <_write_r>
    3c9c:	00e59583          	lh	a1,14(a1)
    3ca0:	00200693          	li	a3,2
    3ca4:	00000613          	li	a2,0
    3ca8:	1ac000ef          	jal	3e54 <_lseek_r>
    3cac:	00c41783          	lh	a5,12(s0)
    3cb0:	fb1ff06f          	j	3c60 <__swrite+0x34>

00003cb4 <__sseek>:
    3cb4:	ff010113          	add	sp,sp,-16
    3cb8:	00812423          	sw	s0,8(sp)
    3cbc:	00058413          	mv	s0,a1
    3cc0:	00e59583          	lh	a1,14(a1)
    3cc4:	00112623          	sw	ra,12(sp)
    3cc8:	18c000ef          	jal	3e54 <_lseek_r>
    3ccc:	fff00793          	li	a5,-1
    3cd0:	02f50863          	beq	a0,a5,3d00 <__sseek+0x4c>
    3cd4:	00c45783          	lhu	a5,12(s0)
    3cd8:	00001737          	lui	a4,0x1
    3cdc:	00c12083          	lw	ra,12(sp)
    3ce0:	00e7e7b3          	or	a5,a5,a4
    3ce4:	01079793          	sll	a5,a5,0x10
    3ce8:	4107d793          	sra	a5,a5,0x10
    3cec:	04a42823          	sw	a0,80(s0)
    3cf0:	00f41623          	sh	a5,12(s0)
    3cf4:	00812403          	lw	s0,8(sp)
    3cf8:	01010113          	add	sp,sp,16
    3cfc:	00008067          	ret
    3d00:	00c45783          	lhu	a5,12(s0)
    3d04:	fffff737          	lui	a4,0xfffff
    3d08:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    3d0c:	00e7f7b3          	and	a5,a5,a4
    3d10:	01079793          	sll	a5,a5,0x10
    3d14:	4107d793          	sra	a5,a5,0x10
    3d18:	00c12083          	lw	ra,12(sp)
    3d1c:	00f41623          	sh	a5,12(s0)
    3d20:	00812403          	lw	s0,8(sp)
    3d24:	01010113          	add	sp,sp,16
    3d28:	00008067          	ret

00003d2c <__sclose>:
    3d2c:	00e59583          	lh	a1,14(a1)
    3d30:	0040006f          	j	3d34 <_close_r>

00003d34 <_close_r>:
    3d34:	ff010113          	add	sp,sp,-16
    3d38:	00812423          	sw	s0,8(sp)
    3d3c:	00050413          	mv	s0,a0
    3d40:	00058513          	mv	a0,a1
    3d44:	00031797          	auipc	a5,0x31
    3d48:	2c07a823          	sw	zero,720(a5) # 35014 <errno>
    3d4c:	00112623          	sw	ra,12(sp)
    3d50:	a75fc0ef          	jal	7c4 <_close>
    3d54:	fff00793          	li	a5,-1
    3d58:	00f50a63          	beq	a0,a5,3d6c <_close_r+0x38>
    3d5c:	00c12083          	lw	ra,12(sp)
    3d60:	00812403          	lw	s0,8(sp)
    3d64:	01010113          	add	sp,sp,16
    3d68:	00008067          	ret
    3d6c:	00031797          	auipc	a5,0x31
    3d70:	2a87a783          	lw	a5,680(a5) # 35014 <errno>
    3d74:	fe0784e3          	beqz	a5,3d5c <_close_r+0x28>
    3d78:	00c12083          	lw	ra,12(sp)
    3d7c:	00f42023          	sw	a5,0(s0)
    3d80:	00812403          	lw	s0,8(sp)
    3d84:	01010113          	add	sp,sp,16
    3d88:	00008067          	ret

00003d8c <_reclaim_reent>:
    3d8c:	00031797          	auipc	a5,0x31
    3d90:	a807a783          	lw	a5,-1408(a5) # 3480c <_impure_ptr>
    3d94:	0aa78e63          	beq	a5,a0,3e50 <_reclaim_reent+0xc4>
    3d98:	04452583          	lw	a1,68(a0)
    3d9c:	fe010113          	add	sp,sp,-32
    3da0:	00912a23          	sw	s1,20(sp)
    3da4:	00112e23          	sw	ra,28(sp)
    3da8:	00050493          	mv	s1,a0
    3dac:	04058c63          	beqz	a1,3e04 <_reclaim_reent+0x78>
    3db0:	01212823          	sw	s2,16(sp)
    3db4:	01312623          	sw	s3,12(sp)
    3db8:	00812c23          	sw	s0,24(sp)
    3dbc:	00000913          	li	s2,0
    3dc0:	08000993          	li	s3,128
    3dc4:	012587b3          	add	a5,a1,s2
    3dc8:	0007a403          	lw	s0,0(a5)
    3dcc:	00040e63          	beqz	s0,3de8 <_reclaim_reent+0x5c>
    3dd0:	00040593          	mv	a1,s0
    3dd4:	00042403          	lw	s0,0(s0)
    3dd8:	00048513          	mv	a0,s1
    3ddc:	408000ef          	jal	41e4 <_free_r>
    3de0:	fe0418e3          	bnez	s0,3dd0 <_reclaim_reent+0x44>
    3de4:	0444a583          	lw	a1,68(s1)
    3de8:	00490913          	add	s2,s2,4
    3dec:	fd391ce3          	bne	s2,s3,3dc4 <_reclaim_reent+0x38>
    3df0:	00048513          	mv	a0,s1
    3df4:	3f0000ef          	jal	41e4 <_free_r>
    3df8:	01812403          	lw	s0,24(sp)
    3dfc:	01012903          	lw	s2,16(sp)
    3e00:	00c12983          	lw	s3,12(sp)
    3e04:	0384a583          	lw	a1,56(s1)
    3e08:	00058663          	beqz	a1,3e14 <_reclaim_reent+0x88>
    3e0c:	00048513          	mv	a0,s1
    3e10:	3d4000ef          	jal	41e4 <_free_r>
    3e14:	04c4a583          	lw	a1,76(s1)
    3e18:	00058663          	beqz	a1,3e24 <_reclaim_reent+0x98>
    3e1c:	00048513          	mv	a0,s1
    3e20:	3c4000ef          	jal	41e4 <_free_r>
    3e24:	0344a783          	lw	a5,52(s1)
    3e28:	00078c63          	beqz	a5,3e40 <_reclaim_reent+0xb4>
    3e2c:	01c12083          	lw	ra,28(sp)
    3e30:	00048513          	mv	a0,s1
    3e34:	01412483          	lw	s1,20(sp)
    3e38:	02010113          	add	sp,sp,32
    3e3c:	00078067          	jr	a5
    3e40:	01c12083          	lw	ra,28(sp)
    3e44:	01412483          	lw	s1,20(sp)
    3e48:	02010113          	add	sp,sp,32
    3e4c:	00008067          	ret
    3e50:	00008067          	ret

00003e54 <_lseek_r>:
    3e54:	ff010113          	add	sp,sp,-16
    3e58:	00058713          	mv	a4,a1
    3e5c:	00812423          	sw	s0,8(sp)
    3e60:	00060593          	mv	a1,a2
    3e64:	00050413          	mv	s0,a0
    3e68:	00068613          	mv	a2,a3
    3e6c:	00070513          	mv	a0,a4
    3e70:	00031797          	auipc	a5,0x31
    3e74:	1a07a223          	sw	zero,420(a5) # 35014 <errno>
    3e78:	00112623          	sw	ra,12(sp)
    3e7c:	9c5fc0ef          	jal	840 <_lseek>
    3e80:	fff00793          	li	a5,-1
    3e84:	00f50a63          	beq	a0,a5,3e98 <_lseek_r+0x44>
    3e88:	00c12083          	lw	ra,12(sp)
    3e8c:	00812403          	lw	s0,8(sp)
    3e90:	01010113          	add	sp,sp,16
    3e94:	00008067          	ret
    3e98:	00031797          	auipc	a5,0x31
    3e9c:	17c7a783          	lw	a5,380(a5) # 35014 <errno>
    3ea0:	fe0784e3          	beqz	a5,3e88 <_lseek_r+0x34>
    3ea4:	00c12083          	lw	ra,12(sp)
    3ea8:	00f42023          	sw	a5,0(s0)
    3eac:	00812403          	lw	s0,8(sp)
    3eb0:	01010113          	add	sp,sp,16
    3eb4:	00008067          	ret

00003eb8 <_read_r>:
    3eb8:	ff010113          	add	sp,sp,-16
    3ebc:	00058713          	mv	a4,a1
    3ec0:	00812423          	sw	s0,8(sp)
    3ec4:	00060593          	mv	a1,a2
    3ec8:	00050413          	mv	s0,a0
    3ecc:	00068613          	mv	a2,a3
    3ed0:	00070513          	mv	a0,a4
    3ed4:	00031797          	auipc	a5,0x31
    3ed8:	1407a023          	sw	zero,320(a5) # 35014 <errno>
    3edc:	00112623          	sw	ra,12(sp)
    3ee0:	869fc0ef          	jal	748 <_read>
    3ee4:	fff00793          	li	a5,-1
    3ee8:	00f50a63          	beq	a0,a5,3efc <_read_r+0x44>
    3eec:	00c12083          	lw	ra,12(sp)
    3ef0:	00812403          	lw	s0,8(sp)
    3ef4:	01010113          	add	sp,sp,16
    3ef8:	00008067          	ret
    3efc:	00031797          	auipc	a5,0x31
    3f00:	1187a783          	lw	a5,280(a5) # 35014 <errno>
    3f04:	fe0784e3          	beqz	a5,3eec <_read_r+0x34>
    3f08:	00c12083          	lw	ra,12(sp)
    3f0c:	00f42023          	sw	a5,0(s0)
    3f10:	00812403          	lw	s0,8(sp)
    3f14:	01010113          	add	sp,sp,16
    3f18:	00008067          	ret

00003f1c <_sbrk_r>:
    3f1c:	ff010113          	add	sp,sp,-16
    3f20:	00812423          	sw	s0,8(sp)
    3f24:	00050413          	mv	s0,a0
    3f28:	00058513          	mv	a0,a1
    3f2c:	00031797          	auipc	a5,0x31
    3f30:	0e07a423          	sw	zero,232(a5) # 35014 <errno>
    3f34:	00112623          	sw	ra,12(sp)
    3f38:	e84fc0ef          	jal	5bc <_sbrk>
    3f3c:	fff00793          	li	a5,-1
    3f40:	00f50a63          	beq	a0,a5,3f54 <_sbrk_r+0x38>
    3f44:	00c12083          	lw	ra,12(sp)
    3f48:	00812403          	lw	s0,8(sp)
    3f4c:	01010113          	add	sp,sp,16
    3f50:	00008067          	ret
    3f54:	00031797          	auipc	a5,0x31
    3f58:	0c07a783          	lw	a5,192(a5) # 35014 <errno>
    3f5c:	fe0784e3          	beqz	a5,3f44 <_sbrk_r+0x28>
    3f60:	00c12083          	lw	ra,12(sp)
    3f64:	00f42023          	sw	a5,0(s0)
    3f68:	00812403          	lw	s0,8(sp)
    3f6c:	01010113          	add	sp,sp,16
    3f70:	00008067          	ret

00003f74 <_write_r>:
    3f74:	ff010113          	add	sp,sp,-16
    3f78:	00058713          	mv	a4,a1
    3f7c:	00812423          	sw	s0,8(sp)
    3f80:	00060593          	mv	a1,a2
    3f84:	00050413          	mv	s0,a0
    3f88:	00068613          	mv	a2,a3
    3f8c:	00070513          	mv	a0,a4
    3f90:	00031797          	auipc	a5,0x31
    3f94:	0807a223          	sw	zero,132(a5) # 35014 <errno>
    3f98:	00112623          	sw	ra,12(sp)
    3f9c:	f30fc0ef          	jal	6cc <_write>
    3fa0:	fff00793          	li	a5,-1
    3fa4:	00f50a63          	beq	a0,a5,3fb8 <_write_r+0x44>
    3fa8:	00c12083          	lw	ra,12(sp)
    3fac:	00812403          	lw	s0,8(sp)
    3fb0:	01010113          	add	sp,sp,16
    3fb4:	00008067          	ret
    3fb8:	00031797          	auipc	a5,0x31
    3fbc:	05c7a783          	lw	a5,92(a5) # 35014 <errno>
    3fc0:	fe0784e3          	beqz	a5,3fa8 <_write_r+0x34>
    3fc4:	00c12083          	lw	ra,12(sp)
    3fc8:	00f42023          	sw	a5,0(s0)
    3fcc:	00812403          	lw	s0,8(sp)
    3fd0:	01010113          	add	sp,sp,16
    3fd4:	00008067          	ret

00003fd8 <__errno>:
    3fd8:	00031517          	auipc	a0,0x31
    3fdc:	83452503          	lw	a0,-1996(a0) # 3480c <_impure_ptr>
    3fe0:	00008067          	ret

00003fe4 <__libc_init_array>:
    3fe4:	ff010113          	add	sp,sp,-16
    3fe8:	00812423          	sw	s0,8(sp)
    3fec:	01212023          	sw	s2,0(sp)
    3ff0:	00000793          	li	a5,0
    3ff4:	00000413          	li	s0,0
    3ff8:	00112623          	sw	ra,12(sp)
    3ffc:	00912223          	sw	s1,4(sp)
    4000:	40878933          	sub	s2,a5,s0
    4004:	02878063          	beq	a5,s0,4024 <__libc_init_array+0x40>
    4008:	40295913          	sra	s2,s2,0x2
    400c:	00000493          	li	s1,0
    4010:	00042783          	lw	a5,0(s0)
    4014:	00148493          	add	s1,s1,1
    4018:	00440413          	add	s0,s0,4
    401c:	000780e7          	jalr	a5
    4020:	ff24e8e3          	bltu	s1,s2,4010 <__libc_init_array+0x2c>
    4024:	00001797          	auipc	a5,0x1
    4028:	7dc78793          	add	a5,a5,2012 # 5800 <__fini_array_end>
    402c:	00001417          	auipc	s0,0x1
    4030:	7d440413          	add	s0,s0,2004 # 5800 <__fini_array_end>
    4034:	40878933          	sub	s2,a5,s0
    4038:	40295913          	sra	s2,s2,0x2
    403c:	00878e63          	beq	a5,s0,4058 <__libc_init_array+0x74>
    4040:	00000493          	li	s1,0
    4044:	00042783          	lw	a5,0(s0)
    4048:	00148493          	add	s1,s1,1
    404c:	00440413          	add	s0,s0,4
    4050:	000780e7          	jalr	a5
    4054:	ff24e8e3          	bltu	s1,s2,4044 <__libc_init_array+0x60>
    4058:	00c12083          	lw	ra,12(sp)
    405c:	00812403          	lw	s0,8(sp)
    4060:	00412483          	lw	s1,4(sp)
    4064:	00012903          	lw	s2,0(sp)
    4068:	01010113          	add	sp,sp,16
    406c:	00008067          	ret

00004070 <__retarget_lock_init>:
    4070:	00008067          	ret

00004074 <__retarget_lock_init_recursive>:
    4074:	00008067          	ret

00004078 <__retarget_lock_close>:
    4078:	00008067          	ret

0000407c <__retarget_lock_close_recursive>:
    407c:	00008067          	ret

00004080 <__retarget_lock_acquire>:
    4080:	00008067          	ret

00004084 <__retarget_lock_acquire_recursive>:
    4084:	00008067          	ret

00004088 <__retarget_lock_try_acquire>:
    4088:	00100513          	li	a0,1
    408c:	00008067          	ret

00004090 <__retarget_lock_try_acquire_recursive>:
    4090:	00100513          	li	a0,1
    4094:	00008067          	ret

00004098 <__retarget_lock_release>:
    4098:	00008067          	ret

0000409c <__retarget_lock_release_recursive>:
    409c:	00008067          	ret

000040a0 <_malloc_trim_r>:
    40a0:	fe010113          	add	sp,sp,-32
    40a4:	00812c23          	sw	s0,24(sp)
    40a8:	00912a23          	sw	s1,20(sp)
    40ac:	01212823          	sw	s2,16(sp)
    40b0:	01312623          	sw	s3,12(sp)
    40b4:	01412423          	sw	s4,8(sp)
    40b8:	00058993          	mv	s3,a1
    40bc:	00112e23          	sw	ra,28(sp)
    40c0:	00050913          	mv	s2,a0
    40c4:	00030a17          	auipc	s4,0x30
    40c8:	f3ca0a13          	add	s4,s4,-196 # 34000 <__malloc_av_>
    40cc:	d4cff0ef          	jal	3618 <__malloc_lock>
    40d0:	008a2703          	lw	a4,8(s4)
    40d4:	000017b7          	lui	a5,0x1
    40d8:	fef78793          	add	a5,a5,-17 # fef <_Z21cmd_matrix_multiplierv+0x8f>
    40dc:	00472483          	lw	s1,4(a4)
    40e0:	00001737          	lui	a4,0x1
    40e4:	ffc4f493          	and	s1,s1,-4
    40e8:	00f48433          	add	s0,s1,a5
    40ec:	41340433          	sub	s0,s0,s3
    40f0:	00c45413          	srl	s0,s0,0xc
    40f4:	fff40413          	add	s0,s0,-1
    40f8:	00c41413          	sll	s0,s0,0xc
    40fc:	00e44e63          	blt	s0,a4,4118 <_malloc_trim_r+0x78>
    4100:	00000593          	li	a1,0
    4104:	00090513          	mv	a0,s2
    4108:	e15ff0ef          	jal	3f1c <_sbrk_r>
    410c:	008a2783          	lw	a5,8(s4)
    4110:	009787b3          	add	a5,a5,s1
    4114:	02f50863          	beq	a0,a5,4144 <_malloc_trim_r+0xa4>
    4118:	00090513          	mv	a0,s2
    411c:	d08ff0ef          	jal	3624 <__malloc_unlock>
    4120:	01c12083          	lw	ra,28(sp)
    4124:	01812403          	lw	s0,24(sp)
    4128:	01412483          	lw	s1,20(sp)
    412c:	01012903          	lw	s2,16(sp)
    4130:	00c12983          	lw	s3,12(sp)
    4134:	00812a03          	lw	s4,8(sp)
    4138:	00000513          	li	a0,0
    413c:	02010113          	add	sp,sp,32
    4140:	00008067          	ret
    4144:	408005b3          	neg	a1,s0
    4148:	00090513          	mv	a0,s2
    414c:	dd1ff0ef          	jal	3f1c <_sbrk_r>
    4150:	fff00793          	li	a5,-1
    4154:	04f50a63          	beq	a0,a5,41a8 <_malloc_trim_r+0x108>
    4158:	00031717          	auipc	a4,0x31
    415c:	6a870713          	add	a4,a4,1704 # 35800 <__malloc_current_mallinfo>
    4160:	00072783          	lw	a5,0(a4)
    4164:	008a2683          	lw	a3,8(s4)
    4168:	408484b3          	sub	s1,s1,s0
    416c:	0014e493          	or	s1,s1,1
    4170:	408787b3          	sub	a5,a5,s0
    4174:	00090513          	mv	a0,s2
    4178:	0096a223          	sw	s1,4(a3)
    417c:	00f72023          	sw	a5,0(a4)
    4180:	ca4ff0ef          	jal	3624 <__malloc_unlock>
    4184:	01c12083          	lw	ra,28(sp)
    4188:	01812403          	lw	s0,24(sp)
    418c:	01412483          	lw	s1,20(sp)
    4190:	01012903          	lw	s2,16(sp)
    4194:	00c12983          	lw	s3,12(sp)
    4198:	00812a03          	lw	s4,8(sp)
    419c:	00100513          	li	a0,1
    41a0:	02010113          	add	sp,sp,32
    41a4:	00008067          	ret
    41a8:	00000593          	li	a1,0
    41ac:	00090513          	mv	a0,s2
    41b0:	d6dff0ef          	jal	3f1c <_sbrk_r>
    41b4:	008a2703          	lw	a4,8(s4)
    41b8:	00f00693          	li	a3,15
    41bc:	40e507b3          	sub	a5,a0,a4
    41c0:	f4f6dce3          	bge	a3,a5,4118 <_malloc_trim_r+0x78>
    41c4:	00030697          	auipc	a3,0x30
    41c8:	6406a683          	lw	a3,1600(a3) # 34804 <__malloc_sbrk_base>
    41cc:	40d50533          	sub	a0,a0,a3
    41d0:	0017e793          	or	a5,a5,1
    41d4:	00031697          	auipc	a3,0x31
    41d8:	62a6a623          	sw	a0,1580(a3) # 35800 <__malloc_current_mallinfo>
    41dc:	00f72223          	sw	a5,4(a4)
    41e0:	f39ff06f          	j	4118 <_malloc_trim_r+0x78>

000041e4 <_free_r>:
    41e4:	18058263          	beqz	a1,4368 <_free_r+0x184>
    41e8:	ff010113          	add	sp,sp,-16
    41ec:	00812423          	sw	s0,8(sp)
    41f0:	00912223          	sw	s1,4(sp)
    41f4:	00058413          	mv	s0,a1
    41f8:	00050493          	mv	s1,a0
    41fc:	00112623          	sw	ra,12(sp)
    4200:	c18ff0ef          	jal	3618 <__malloc_lock>
    4204:	ffc42583          	lw	a1,-4(s0)
    4208:	ff840713          	add	a4,s0,-8
    420c:	00030517          	auipc	a0,0x30
    4210:	df450513          	add	a0,a0,-524 # 34000 <__malloc_av_>
    4214:	ffe5f793          	and	a5,a1,-2
    4218:	00f70633          	add	a2,a4,a5
    421c:	00462683          	lw	a3,4(a2)
    4220:	00852803          	lw	a6,8(a0)
    4224:	ffc6f693          	and	a3,a3,-4
    4228:	1ac80263          	beq	a6,a2,43cc <_free_r+0x1e8>
    422c:	00d62223          	sw	a3,4(a2)
    4230:	0015f593          	and	a1,a1,1
    4234:	00d60833          	add	a6,a2,a3
    4238:	0a059063          	bnez	a1,42d8 <_free_r+0xf4>
    423c:	ff842303          	lw	t1,-8(s0)
    4240:	00482583          	lw	a1,4(a6)
    4244:	00030897          	auipc	a7,0x30
    4248:	dc488893          	add	a7,a7,-572 # 34008 <__malloc_av_+0x8>
    424c:	40670733          	sub	a4,a4,t1
    4250:	00872803          	lw	a6,8(a4)
    4254:	006787b3          	add	a5,a5,t1
    4258:	0015f593          	and	a1,a1,1
    425c:	15180263          	beq	a6,a7,43a0 <_free_r+0x1bc>
    4260:	00c72303          	lw	t1,12(a4)
    4264:	00682623          	sw	t1,12(a6)
    4268:	01032423          	sw	a6,8(t1)
    426c:	1a058a63          	beqz	a1,4420 <_free_r+0x23c>
    4270:	0017e693          	or	a3,a5,1
    4274:	00d72223          	sw	a3,4(a4)
    4278:	00f62023          	sw	a5,0(a2)
    427c:	1ff00693          	li	a3,511
    4280:	06f6ec63          	bltu	a3,a5,42f8 <_free_r+0x114>
    4284:	ff87f693          	and	a3,a5,-8
    4288:	00868693          	add	a3,a3,8
    428c:	00452583          	lw	a1,4(a0)
    4290:	00d506b3          	add	a3,a0,a3
    4294:	0006a603          	lw	a2,0(a3)
    4298:	0057d813          	srl	a6,a5,0x5
    429c:	00100793          	li	a5,1
    42a0:	010797b3          	sll	a5,a5,a6
    42a4:	00b7e7b3          	or	a5,a5,a1
    42a8:	ff868593          	add	a1,a3,-8
    42ac:	00b72623          	sw	a1,12(a4)
    42b0:	00c72423          	sw	a2,8(a4)
    42b4:	00f52223          	sw	a5,4(a0)
    42b8:	00e6a023          	sw	a4,0(a3)
    42bc:	00e62623          	sw	a4,12(a2)
    42c0:	00812403          	lw	s0,8(sp)
    42c4:	00c12083          	lw	ra,12(sp)
    42c8:	00048513          	mv	a0,s1
    42cc:	00412483          	lw	s1,4(sp)
    42d0:	01010113          	add	sp,sp,16
    42d4:	b50ff06f          	j	3624 <__malloc_unlock>
    42d8:	00482583          	lw	a1,4(a6)
    42dc:	0015f593          	and	a1,a1,1
    42e0:	08058663          	beqz	a1,436c <_free_r+0x188>
    42e4:	0017e693          	or	a3,a5,1
    42e8:	fed42e23          	sw	a3,-4(s0)
    42ec:	00f62023          	sw	a5,0(a2)
    42f0:	1ff00693          	li	a3,511
    42f4:	f8f6f8e3          	bgeu	a3,a5,4284 <_free_r+0xa0>
    42f8:	0097d693          	srl	a3,a5,0x9
    42fc:	00400613          	li	a2,4
    4300:	12d66463          	bltu	a2,a3,4428 <_free_r+0x244>
    4304:	0067d693          	srl	a3,a5,0x6
    4308:	03968593          	add	a1,a3,57
    430c:	03868613          	add	a2,a3,56
    4310:	00359593          	sll	a1,a1,0x3
    4314:	00b505b3          	add	a1,a0,a1
    4318:	0005a683          	lw	a3,0(a1)
    431c:	ff858593          	add	a1,a1,-8
    4320:	00d59863          	bne	a1,a3,4330 <_free_r+0x14c>
    4324:	15c0006f          	j	4480 <_free_r+0x29c>
    4328:	0086a683          	lw	a3,8(a3)
    432c:	00d58863          	beq	a1,a3,433c <_free_r+0x158>
    4330:	0046a603          	lw	a2,4(a3)
    4334:	ffc67613          	and	a2,a2,-4
    4338:	fec7e8e3          	bltu	a5,a2,4328 <_free_r+0x144>
    433c:	00c6a583          	lw	a1,12(a3)
    4340:	00b72623          	sw	a1,12(a4)
    4344:	00d72423          	sw	a3,8(a4)
    4348:	00812403          	lw	s0,8(sp)
    434c:	00c12083          	lw	ra,12(sp)
    4350:	00e5a423          	sw	a4,8(a1)
    4354:	00048513          	mv	a0,s1
    4358:	00412483          	lw	s1,4(sp)
    435c:	00e6a623          	sw	a4,12(a3)
    4360:	01010113          	add	sp,sp,16
    4364:	ac0ff06f          	j	3624 <__malloc_unlock>
    4368:	00008067          	ret
    436c:	00d787b3          	add	a5,a5,a3
    4370:	00030897          	auipc	a7,0x30
    4374:	c9888893          	add	a7,a7,-872 # 34008 <__malloc_av_+0x8>
    4378:	00862683          	lw	a3,8(a2)
    437c:	0f168063          	beq	a3,a7,445c <_free_r+0x278>
    4380:	00c62803          	lw	a6,12(a2)
    4384:	0017e593          	or	a1,a5,1
    4388:	00f70633          	add	a2,a4,a5
    438c:	0106a623          	sw	a6,12(a3)
    4390:	00d82423          	sw	a3,8(a6)
    4394:	00b72223          	sw	a1,4(a4)
    4398:	00f62023          	sw	a5,0(a2)
    439c:	ee1ff06f          	j	427c <_free_r+0x98>
    43a0:	14059063          	bnez	a1,44e0 <_free_r+0x2fc>
    43a4:	00862583          	lw	a1,8(a2)
    43a8:	00c62603          	lw	a2,12(a2)
    43ac:	00f686b3          	add	a3,a3,a5
    43b0:	0016e793          	or	a5,a3,1
    43b4:	00c5a623          	sw	a2,12(a1)
    43b8:	00b62423          	sw	a1,8(a2)
    43bc:	00f72223          	sw	a5,4(a4)
    43c0:	00d70733          	add	a4,a4,a3
    43c4:	00d72023          	sw	a3,0(a4)
    43c8:	ef9ff06f          	j	42c0 <_free_r+0xdc>
    43cc:	0015f593          	and	a1,a1,1
    43d0:	00d786b3          	add	a3,a5,a3
    43d4:	02059063          	bnez	a1,43f4 <_free_r+0x210>
    43d8:	ff842583          	lw	a1,-8(s0)
    43dc:	40b70733          	sub	a4,a4,a1
    43e0:	00c72783          	lw	a5,12(a4)
    43e4:	00872603          	lw	a2,8(a4)
    43e8:	00b686b3          	add	a3,a3,a1
    43ec:	00f62623          	sw	a5,12(a2)
    43f0:	00c7a423          	sw	a2,8(a5)
    43f4:	0016e793          	or	a5,a3,1
    43f8:	00f72223          	sw	a5,4(a4)
    43fc:	00e52423          	sw	a4,8(a0)
    4400:	00030797          	auipc	a5,0x30
    4404:	4087a783          	lw	a5,1032(a5) # 34808 <__malloc_trim_threshold>
    4408:	eaf6ece3          	bltu	a3,a5,42c0 <_free_r+0xdc>
    440c:	00031597          	auipc	a1,0x31
    4410:	c005a583          	lw	a1,-1024(a1) # 3500c <__malloc_top_pad>
    4414:	00048513          	mv	a0,s1
    4418:	c89ff0ef          	jal	40a0 <_malloc_trim_r>
    441c:	ea5ff06f          	j	42c0 <_free_r+0xdc>
    4420:	00d787b3          	add	a5,a5,a3
    4424:	f55ff06f          	j	4378 <_free_r+0x194>
    4428:	01400613          	li	a2,20
    442c:	02d67063          	bgeu	a2,a3,444c <_free_r+0x268>
    4430:	05400613          	li	a2,84
    4434:	06d66463          	bltu	a2,a3,449c <_free_r+0x2b8>
    4438:	00c7d693          	srl	a3,a5,0xc
    443c:	06f68593          	add	a1,a3,111
    4440:	06e68613          	add	a2,a3,110
    4444:	00359593          	sll	a1,a1,0x3
    4448:	ecdff06f          	j	4314 <_free_r+0x130>
    444c:	05c68593          	add	a1,a3,92
    4450:	05b68613          	add	a2,a3,91
    4454:	00359593          	sll	a1,a1,0x3
    4458:	ebdff06f          	j	4314 <_free_r+0x130>
    445c:	00e52a23          	sw	a4,20(a0)
    4460:	00e52823          	sw	a4,16(a0)
    4464:	0017e693          	or	a3,a5,1
    4468:	01172623          	sw	a7,12(a4)
    446c:	01172423          	sw	a7,8(a4)
    4470:	00d72223          	sw	a3,4(a4)
    4474:	00f70733          	add	a4,a4,a5
    4478:	00f72023          	sw	a5,0(a4)
    447c:	e45ff06f          	j	42c0 <_free_r+0xdc>
    4480:	00452803          	lw	a6,4(a0)
    4484:	40265613          	sra	a2,a2,0x2
    4488:	00100793          	li	a5,1
    448c:	00c797b3          	sll	a5,a5,a2
    4490:	0107e7b3          	or	a5,a5,a6
    4494:	00f52223          	sw	a5,4(a0)
    4498:	ea9ff06f          	j	4340 <_free_r+0x15c>
    449c:	15400613          	li	a2,340
    44a0:	00d66c63          	bltu	a2,a3,44b8 <_free_r+0x2d4>
    44a4:	00f7d693          	srl	a3,a5,0xf
    44a8:	07868593          	add	a1,a3,120
    44ac:	07768613          	add	a2,a3,119
    44b0:	00359593          	sll	a1,a1,0x3
    44b4:	e61ff06f          	j	4314 <_free_r+0x130>
    44b8:	55400613          	li	a2,1364
    44bc:	00d66c63          	bltu	a2,a3,44d4 <_free_r+0x2f0>
    44c0:	0127d693          	srl	a3,a5,0x12
    44c4:	07d68593          	add	a1,a3,125
    44c8:	07c68613          	add	a2,a3,124
    44cc:	00359593          	sll	a1,a1,0x3
    44d0:	e45ff06f          	j	4314 <_free_r+0x130>
    44d4:	3f800593          	li	a1,1016
    44d8:	07e00613          	li	a2,126
    44dc:	e39ff06f          	j	4314 <_free_r+0x130>
    44e0:	0017e693          	or	a3,a5,1
    44e4:	00d72223          	sw	a3,4(a4)
    44e8:	00f62023          	sw	a5,0(a2)
    44ec:	dd5ff06f          	j	42c0 <_free_r+0xdc>

000044f0 <_fclose_r>:
    44f0:	ff010113          	add	sp,sp,-16
    44f4:	00112623          	sw	ra,12(sp)
    44f8:	01212023          	sw	s2,0(sp)
    44fc:	0e058263          	beqz	a1,45e0 <_fclose_r+0xf0>
    4500:	00812423          	sw	s0,8(sp)
    4504:	00912223          	sw	s1,4(sp)
    4508:	00058413          	mv	s0,a1
    450c:	00050493          	mv	s1,a0
    4510:	00050663          	beqz	a0,451c <_fclose_r+0x2c>
    4514:	03452783          	lw	a5,52(a0)
    4518:	10078063          	beqz	a5,4618 <_fclose_r+0x128>
    451c:	06442783          	lw	a5,100(s0)
    4520:	00c41703          	lh	a4,12(s0)
    4524:	0017f793          	and	a5,a5,1
    4528:	0a079663          	bnez	a5,45d4 <_fclose_r+0xe4>
    452c:	20077713          	and	a4,a4,512
    4530:	0e070863          	beqz	a4,4620 <_fclose_r+0x130>
    4534:	00040593          	mv	a1,s0
    4538:	00048513          	mv	a0,s1
    453c:	134000ef          	jal	4670 <__sflush_r>
    4540:	02c42783          	lw	a5,44(s0)
    4544:	00050913          	mv	s2,a0
    4548:	00078a63          	beqz	a5,455c <_fclose_r+0x6c>
    454c:	01c42583          	lw	a1,28(s0)
    4550:	00048513          	mv	a0,s1
    4554:	000780e7          	jalr	a5
    4558:	0a054063          	bltz	a0,45f8 <_fclose_r+0x108>
    455c:	00c45783          	lhu	a5,12(s0)
    4560:	0807f793          	and	a5,a5,128
    4564:	0a079263          	bnez	a5,4608 <_fclose_r+0x118>
    4568:	03042583          	lw	a1,48(s0)
    456c:	00058c63          	beqz	a1,4584 <_fclose_r+0x94>
    4570:	04040793          	add	a5,s0,64
    4574:	00f58663          	beq	a1,a5,4580 <_fclose_r+0x90>
    4578:	00048513          	mv	a0,s1
    457c:	c69ff0ef          	jal	41e4 <_free_r>
    4580:	02042823          	sw	zero,48(s0)
    4584:	04442583          	lw	a1,68(s0)
    4588:	00058863          	beqz	a1,4598 <_fclose_r+0xa8>
    458c:	00048513          	mv	a0,s1
    4590:	c55ff0ef          	jal	41e4 <_free_r>
    4594:	04042223          	sw	zero,68(s0)
    4598:	cfcff0ef          	jal	3a94 <__sfp_lock_acquire>
    459c:	06442783          	lw	a5,100(s0)
    45a0:	00041623          	sh	zero,12(s0)
    45a4:	0017f793          	and	a5,a5,1
    45a8:	0a078663          	beqz	a5,4654 <_fclose_r+0x164>
    45ac:	05842503          	lw	a0,88(s0)
    45b0:	acdff0ef          	jal	407c <__retarget_lock_close_recursive>
    45b4:	cecff0ef          	jal	3aa0 <__sfp_lock_release>
    45b8:	00c12083          	lw	ra,12(sp)
    45bc:	00812403          	lw	s0,8(sp)
    45c0:	00412483          	lw	s1,4(sp)
    45c4:	00090513          	mv	a0,s2
    45c8:	00012903          	lw	s2,0(sp)
    45cc:	01010113          	add	sp,sp,16
    45d0:	00008067          	ret
    45d4:	f60710e3          	bnez	a4,4534 <_fclose_r+0x44>
    45d8:	00812403          	lw	s0,8(sp)
    45dc:	00412483          	lw	s1,4(sp)
    45e0:	00000913          	li	s2,0
    45e4:	00c12083          	lw	ra,12(sp)
    45e8:	00090513          	mv	a0,s2
    45ec:	00012903          	lw	s2,0(sp)
    45f0:	01010113          	add	sp,sp,16
    45f4:	00008067          	ret
    45f8:	00c45783          	lhu	a5,12(s0)
    45fc:	fff00913          	li	s2,-1
    4600:	0807f793          	and	a5,a5,128
    4604:	f60782e3          	beqz	a5,4568 <_fclose_r+0x78>
    4608:	01042583          	lw	a1,16(s0)
    460c:	00048513          	mv	a0,s1
    4610:	bd5ff0ef          	jal	41e4 <_free_r>
    4614:	f55ff06f          	j	4568 <_fclose_r+0x78>
    4618:	c0cff0ef          	jal	3a24 <__sinit>
    461c:	f01ff06f          	j	451c <_fclose_r+0x2c>
    4620:	05842503          	lw	a0,88(s0)
    4624:	a61ff0ef          	jal	4084 <__retarget_lock_acquire_recursive>
    4628:	00c41783          	lh	a5,12(s0)
    462c:	f00794e3          	bnez	a5,4534 <_fclose_r+0x44>
    4630:	06442783          	lw	a5,100(s0)
    4634:	0017f793          	and	a5,a5,1
    4638:	fa0790e3          	bnez	a5,45d8 <_fclose_r+0xe8>
    463c:	05842503          	lw	a0,88(s0)
    4640:	00000913          	li	s2,0
    4644:	a59ff0ef          	jal	409c <__retarget_lock_release_recursive>
    4648:	00812403          	lw	s0,8(sp)
    464c:	00412483          	lw	s1,4(sp)
    4650:	f95ff06f          	j	45e4 <_fclose_r+0xf4>
    4654:	05842503          	lw	a0,88(s0)
    4658:	a45ff0ef          	jal	409c <__retarget_lock_release_recursive>
    465c:	f51ff06f          	j	45ac <_fclose_r+0xbc>

00004660 <fclose>:
    4660:	00050593          	mv	a1,a0
    4664:	00030517          	auipc	a0,0x30
    4668:	1a852503          	lw	a0,424(a0) # 3480c <_impure_ptr>
    466c:	e85ff06f          	j	44f0 <_fclose_r>

00004670 <__sflush_r>:
    4670:	00c59703          	lh	a4,12(a1)
    4674:	fe010113          	add	sp,sp,-32
    4678:	00812c23          	sw	s0,24(sp)
    467c:	01312623          	sw	s3,12(sp)
    4680:	00112e23          	sw	ra,28(sp)
    4684:	00877793          	and	a5,a4,8
    4688:	00058413          	mv	s0,a1
    468c:	00050993          	mv	s3,a0
    4690:	12079063          	bnez	a5,47b0 <__sflush_r+0x140>
    4694:	000017b7          	lui	a5,0x1
    4698:	80078793          	add	a5,a5,-2048 # 800 <_fstat+0x18>
    469c:	0045a683          	lw	a3,4(a1)
    46a0:	00f767b3          	or	a5,a4,a5
    46a4:	00f59623          	sh	a5,12(a1)
    46a8:	18d05263          	blez	a3,482c <__sflush_r+0x1bc>
    46ac:	02842803          	lw	a6,40(s0)
    46b0:	0e080463          	beqz	a6,4798 <__sflush_r+0x128>
    46b4:	00912a23          	sw	s1,20(sp)
    46b8:	01371693          	sll	a3,a4,0x13
    46bc:	0009a483          	lw	s1,0(s3)
    46c0:	0009a023          	sw	zero,0(s3)
    46c4:	01c42583          	lw	a1,28(s0)
    46c8:	1606ce63          	bltz	a3,4844 <__sflush_r+0x1d4>
    46cc:	00000613          	li	a2,0
    46d0:	00100693          	li	a3,1
    46d4:	00098513          	mv	a0,s3
    46d8:	000800e7          	jalr	a6
    46dc:	fff00793          	li	a5,-1
    46e0:	00050613          	mv	a2,a0
    46e4:	1af50463          	beq	a0,a5,488c <__sflush_r+0x21c>
    46e8:	00c41783          	lh	a5,12(s0)
    46ec:	02842803          	lw	a6,40(s0)
    46f0:	01c42583          	lw	a1,28(s0)
    46f4:	0047f793          	and	a5,a5,4
    46f8:	00078e63          	beqz	a5,4714 <__sflush_r+0xa4>
    46fc:	00442703          	lw	a4,4(s0)
    4700:	03042783          	lw	a5,48(s0)
    4704:	40e60633          	sub	a2,a2,a4
    4708:	00078663          	beqz	a5,4714 <__sflush_r+0xa4>
    470c:	03c42783          	lw	a5,60(s0)
    4710:	40f60633          	sub	a2,a2,a5
    4714:	00000693          	li	a3,0
    4718:	00098513          	mv	a0,s3
    471c:	000800e7          	jalr	a6
    4720:	fff00793          	li	a5,-1
    4724:	12f51463          	bne	a0,a5,484c <__sflush_r+0x1dc>
    4728:	0009a683          	lw	a3,0(s3)
    472c:	01d00793          	li	a5,29
    4730:	00c41703          	lh	a4,12(s0)
    4734:	16d7ea63          	bltu	a5,a3,48a8 <__sflush_r+0x238>
    4738:	204007b7          	lui	a5,0x20400
    473c:	00178793          	add	a5,a5,1 # 20400001 <GET_WATCHDOG_LOW+0x201fefc1>
    4740:	00d7d7b3          	srl	a5,a5,a3
    4744:	0017f793          	and	a5,a5,1
    4748:	16078063          	beqz	a5,48a8 <__sflush_r+0x238>
    474c:	01042603          	lw	a2,16(s0)
    4750:	fffff7b7          	lui	a5,0xfffff
    4754:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    4758:	00f777b3          	and	a5,a4,a5
    475c:	00f41623          	sh	a5,12(s0)
    4760:	00042223          	sw	zero,4(s0)
    4764:	00c42023          	sw	a2,0(s0)
    4768:	01371793          	sll	a5,a4,0x13
    476c:	0007d463          	bgez	a5,4774 <__sflush_r+0x104>
    4770:	10068263          	beqz	a3,4874 <__sflush_r+0x204>
    4774:	03042583          	lw	a1,48(s0)
    4778:	0099a023          	sw	s1,0(s3)
    477c:	10058463          	beqz	a1,4884 <__sflush_r+0x214>
    4780:	04040793          	add	a5,s0,64
    4784:	00f58663          	beq	a1,a5,4790 <__sflush_r+0x120>
    4788:	00098513          	mv	a0,s3
    478c:	a59ff0ef          	jal	41e4 <_free_r>
    4790:	01412483          	lw	s1,20(sp)
    4794:	02042823          	sw	zero,48(s0)
    4798:	00000513          	li	a0,0
    479c:	01c12083          	lw	ra,28(sp)
    47a0:	01812403          	lw	s0,24(sp)
    47a4:	00c12983          	lw	s3,12(sp)
    47a8:	02010113          	add	sp,sp,32
    47ac:	00008067          	ret
    47b0:	01212823          	sw	s2,16(sp)
    47b4:	0105a903          	lw	s2,16(a1)
    47b8:	08090263          	beqz	s2,483c <__sflush_r+0x1cc>
    47bc:	00912a23          	sw	s1,20(sp)
    47c0:	0005a483          	lw	s1,0(a1)
    47c4:	00377713          	and	a4,a4,3
    47c8:	0125a023          	sw	s2,0(a1)
    47cc:	412484b3          	sub	s1,s1,s2
    47d0:	00000793          	li	a5,0
    47d4:	00071463          	bnez	a4,47dc <__sflush_r+0x16c>
    47d8:	0145a783          	lw	a5,20(a1)
    47dc:	00f42423          	sw	a5,8(s0)
    47e0:	00904863          	bgtz	s1,47f0 <__sflush_r+0x180>
    47e4:	0540006f          	j	4838 <__sflush_r+0x1c8>
    47e8:	00a90933          	add	s2,s2,a0
    47ec:	04905663          	blez	s1,4838 <__sflush_r+0x1c8>
    47f0:	02442783          	lw	a5,36(s0)
    47f4:	01c42583          	lw	a1,28(s0)
    47f8:	00048693          	mv	a3,s1
    47fc:	00090613          	mv	a2,s2
    4800:	00098513          	mv	a0,s3
    4804:	000780e7          	jalr	a5
    4808:	40a484b3          	sub	s1,s1,a0
    480c:	fca04ee3          	bgtz	a0,47e8 <__sflush_r+0x178>
    4810:	00c41703          	lh	a4,12(s0)
    4814:	01012903          	lw	s2,16(sp)
    4818:	04076713          	or	a4,a4,64
    481c:	01412483          	lw	s1,20(sp)
    4820:	00e41623          	sh	a4,12(s0)
    4824:	fff00513          	li	a0,-1
    4828:	f75ff06f          	j	479c <__sflush_r+0x12c>
    482c:	03c5a683          	lw	a3,60(a1)
    4830:	e6d04ee3          	bgtz	a3,46ac <__sflush_r+0x3c>
    4834:	f65ff06f          	j	4798 <__sflush_r+0x128>
    4838:	01412483          	lw	s1,20(sp)
    483c:	01012903          	lw	s2,16(sp)
    4840:	f59ff06f          	j	4798 <__sflush_r+0x128>
    4844:	05042603          	lw	a2,80(s0)
    4848:	eadff06f          	j	46f4 <__sflush_r+0x84>
    484c:	00c41703          	lh	a4,12(s0)
    4850:	01042683          	lw	a3,16(s0)
    4854:	fffff7b7          	lui	a5,0xfffff
    4858:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    485c:	00f777b3          	and	a5,a4,a5
    4860:	00f41623          	sh	a5,12(s0)
    4864:	00042223          	sw	zero,4(s0)
    4868:	00d42023          	sw	a3,0(s0)
    486c:	01371793          	sll	a5,a4,0x13
    4870:	f007d2e3          	bgez	a5,4774 <__sflush_r+0x104>
    4874:	03042583          	lw	a1,48(s0)
    4878:	04a42823          	sw	a0,80(s0)
    487c:	0099a023          	sw	s1,0(s3)
    4880:	f00590e3          	bnez	a1,4780 <__sflush_r+0x110>
    4884:	01412483          	lw	s1,20(sp)
    4888:	f11ff06f          	j	4798 <__sflush_r+0x128>
    488c:	0009a783          	lw	a5,0(s3)
    4890:	e4078ce3          	beqz	a5,46e8 <__sflush_r+0x78>
    4894:	01d00713          	li	a4,29
    4898:	00e78c63          	beq	a5,a4,48b0 <__sflush_r+0x240>
    489c:	01600713          	li	a4,22
    48a0:	00e78863          	beq	a5,a4,48b0 <__sflush_r+0x240>
    48a4:	00c41703          	lh	a4,12(s0)
    48a8:	04076713          	or	a4,a4,64
    48ac:	f71ff06f          	j	481c <__sflush_r+0x1ac>
    48b0:	0099a023          	sw	s1,0(s3)
    48b4:	01412483          	lw	s1,20(sp)
    48b8:	ee1ff06f          	j	4798 <__sflush_r+0x128>

000048bc <_fflush_r>:
    48bc:	ff010113          	add	sp,sp,-16
    48c0:	00812423          	sw	s0,8(sp)
    48c4:	00912223          	sw	s1,4(sp)
    48c8:	00112623          	sw	ra,12(sp)
    48cc:	01212023          	sw	s2,0(sp)
    48d0:	00050493          	mv	s1,a0
    48d4:	00058413          	mv	s0,a1
    48d8:	00050663          	beqz	a0,48e4 <_fflush_r+0x28>
    48dc:	03452783          	lw	a5,52(a0)
    48e0:	0a078a63          	beqz	a5,4994 <_fflush_r+0xd8>
    48e4:	00c41783          	lh	a5,12(s0)
    48e8:	00000913          	li	s2,0
    48ec:	04078063          	beqz	a5,492c <_fflush_r+0x70>
    48f0:	06442703          	lw	a4,100(s0)
    48f4:	00177713          	and	a4,a4,1
    48f8:	00071663          	bnez	a4,4904 <_fflush_r+0x48>
    48fc:	2007f793          	and	a5,a5,512
    4900:	04078463          	beqz	a5,4948 <_fflush_r+0x8c>
    4904:	00040593          	mv	a1,s0
    4908:	00048513          	mv	a0,s1
    490c:	d65ff0ef          	jal	4670 <__sflush_r>
    4910:	06442783          	lw	a5,100(s0)
    4914:	00050913          	mv	s2,a0
    4918:	0017f793          	and	a5,a5,1
    491c:	00079863          	bnez	a5,492c <_fflush_r+0x70>
    4920:	00c45783          	lhu	a5,12(s0)
    4924:	2007f793          	and	a5,a5,512
    4928:	04078463          	beqz	a5,4970 <_fflush_r+0xb4>
    492c:	00c12083          	lw	ra,12(sp)
    4930:	00812403          	lw	s0,8(sp)
    4934:	00412483          	lw	s1,4(sp)
    4938:	00090513          	mv	a0,s2
    493c:	00012903          	lw	s2,0(sp)
    4940:	01010113          	add	sp,sp,16
    4944:	00008067          	ret
    4948:	05842503          	lw	a0,88(s0)
    494c:	f38ff0ef          	jal	4084 <__retarget_lock_acquire_recursive>
    4950:	00040593          	mv	a1,s0
    4954:	00048513          	mv	a0,s1
    4958:	d19ff0ef          	jal	4670 <__sflush_r>
    495c:	06442783          	lw	a5,100(s0)
    4960:	00050913          	mv	s2,a0
    4964:	0017f793          	and	a5,a5,1
    4968:	fc0792e3          	bnez	a5,492c <_fflush_r+0x70>
    496c:	fb5ff06f          	j	4920 <_fflush_r+0x64>
    4970:	05842503          	lw	a0,88(s0)
    4974:	f28ff0ef          	jal	409c <__retarget_lock_release_recursive>
    4978:	00c12083          	lw	ra,12(sp)
    497c:	00812403          	lw	s0,8(sp)
    4980:	00412483          	lw	s1,4(sp)
    4984:	00090513          	mv	a0,s2
    4988:	00012903          	lw	s2,0(sp)
    498c:	01010113          	add	sp,sp,16
    4990:	00008067          	ret
    4994:	890ff0ef          	jal	3a24 <__sinit>
    4998:	f4dff06f          	j	48e4 <_fflush_r+0x28>

0000499c <fflush>:
    499c:	0a050c63          	beqz	a0,4a54 <fflush+0xb8>
    49a0:	ff010113          	add	sp,sp,-16
    49a4:	00812423          	sw	s0,8(sp)
    49a8:	01212023          	sw	s2,0(sp)
    49ac:	00112623          	sw	ra,12(sp)
    49b0:	00912223          	sw	s1,4(sp)
    49b4:	00030917          	auipc	s2,0x30
    49b8:	e5892903          	lw	s2,-424(s2) # 3480c <_impure_ptr>
    49bc:	00050413          	mv	s0,a0
    49c0:	00090663          	beqz	s2,49cc <fflush+0x30>
    49c4:	03492783          	lw	a5,52(s2)
    49c8:	06078463          	beqz	a5,4a30 <fflush+0x94>
    49cc:	00c41783          	lh	a5,12(s0)
    49d0:	00000493          	li	s1,0
    49d4:	04078063          	beqz	a5,4a14 <fflush+0x78>
    49d8:	06442703          	lw	a4,100(s0)
    49dc:	00177713          	and	a4,a4,1
    49e0:	00071663          	bnez	a4,49ec <fflush+0x50>
    49e4:	2007f793          	and	a5,a5,512
    49e8:	04078a63          	beqz	a5,4a3c <fflush+0xa0>
    49ec:	00040593          	mv	a1,s0
    49f0:	00090513          	mv	a0,s2
    49f4:	c7dff0ef          	jal	4670 <__sflush_r>
    49f8:	06442783          	lw	a5,100(s0)
    49fc:	00050493          	mv	s1,a0
    4a00:	0017f793          	and	a5,a5,1
    4a04:	00079863          	bnez	a5,4a14 <fflush+0x78>
    4a08:	00c45783          	lhu	a5,12(s0)
    4a0c:	2007f793          	and	a5,a5,512
    4a10:	02078c63          	beqz	a5,4a48 <fflush+0xac>
    4a14:	00c12083          	lw	ra,12(sp)
    4a18:	00812403          	lw	s0,8(sp)
    4a1c:	00012903          	lw	s2,0(sp)
    4a20:	00048513          	mv	a0,s1
    4a24:	00412483          	lw	s1,4(sp)
    4a28:	01010113          	add	sp,sp,16
    4a2c:	00008067          	ret
    4a30:	00090513          	mv	a0,s2
    4a34:	ff1fe0ef          	jal	3a24 <__sinit>
    4a38:	f95ff06f          	j	49cc <fflush+0x30>
    4a3c:	05842503          	lw	a0,88(s0)
    4a40:	e44ff0ef          	jal	4084 <__retarget_lock_acquire_recursive>
    4a44:	fa9ff06f          	j	49ec <fflush+0x50>
    4a48:	05842503          	lw	a0,88(s0)
    4a4c:	e50ff0ef          	jal	409c <__retarget_lock_release_recursive>
    4a50:	fc5ff06f          	j	4a14 <fflush+0x78>
    4a54:	00030617          	auipc	a2,0x30
    4a58:	9b460613          	add	a2,a2,-1612 # 34408 <__sglue>
    4a5c:	00000597          	auipc	a1,0x0
    4a60:	e6058593          	add	a1,a1,-416 # 48bc <_fflush_r>
    4a64:	00030517          	auipc	a0,0x30
    4a68:	9b450513          	add	a0,a0,-1612 # 34418 <_impure_data>
    4a6c:	8a8ff06f          	j	3b14 <_fwalk_sglue>
