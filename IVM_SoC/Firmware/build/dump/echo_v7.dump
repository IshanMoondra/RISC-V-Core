
/out/echo_v7.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	00035197          	auipc	gp,0x35
      10:	ff418193          	add	gp,gp,-12 # 35000 <__dso_handle>
      14:	00000013          	nop
      18:	000367b7          	lui	a5,0x36
      1c:	80078093          	add	ra,a5,-2048 # 35800 <__sf>
      20:	0100006f          	j	30 <_start+0x30>
      24:	0000a023          	sw	zero,0(ra)
      28:	00000013          	nop
      2c:	00408093          	add	ra,ra,4
      30:	000367b7          	lui	a5,0x36
      34:	d9878793          	add	a5,a5,-616 # 35d98 <__bss_end>
      38:	fef0e6e3          	bltu	ra,a5,24 <_start+0x24>
      3c:	000357b7          	lui	a5,0x35
      40:	00078093          	mv	ra,a5
      44:	0100006f          	j	54 <_start+0x54>
      48:	0000a023          	sw	zero,0(ra)
      4c:	00000013          	nop
      50:	00408093          	add	ra,ra,4
      54:	000357b7          	lui	a5,0x35
      58:	04478793          	add	a5,a5,68 # 35044 <__sbss_end>
      5c:	fef0e6e3          	bltu	ra,a5,48 <_start+0x48>
      60:	000357b7          	lui	a5,0x35
      64:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
      68:	03478793          	add	a5,a5,52
      6c:	0007a023          	sw	zero,0(a5)
      70:	000307b7          	lui	a5,0x30
      74:	19c78513          	add	a0,a5,412 # 3019c <__fini_array_end+0x2519c>
      78:	791000ef          	jal	1008 <uart_print>
      7c:	000357b7          	lui	a5,0x35
      80:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
      84:	03478793          	add	a5,a5,52
      88:	0007a783          	lw	a5,0(a5)
      8c:	00078513          	mv	a0,a5
      90:	330010ef          	jal	13c0 <uart_print_hex32>
      94:	00000013          	nop
      98:	000357b7          	lui	a5,0x35
      9c:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
      a0:	00078513          	mv	a0,a5
      a4:	54d020ef          	jal	2df0 <__sinit>
      a8:	000307b7          	lui	a5,0x30
      ac:	1b878513          	add	a0,a5,440 # 301b8 <__fini_array_end+0x251b8>
      b0:	759000ef          	jal	1008 <uart_print>
      b4:	000357b7          	lui	a5,0x35
      b8:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
      bc:	03478793          	add	a5,a5,52
      c0:	0007a783          	lw	a5,0(a5)
      c4:	00078513          	mv	a0,a5
      c8:	2f8010ef          	jal	13c0 <uart_print_hex32>
      cc:	00000013          	nop
      d0:	000307b7          	lui	a5,0x30
      d4:	1d478513          	add	a0,a5,468 # 301d4 <__fini_array_end+0x251d4>
      d8:	731000ef          	jal	1008 <uart_print>
      dc:	000357b7          	lui	a5,0x35
      e0:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
      e4:	08478793          	add	a5,a5,132
      e8:	0007a783          	lw	a5,0(a5)
      ec:	00078513          	mv	a0,a5
      f0:	2d0010ef          	jal	13c0 <uart_print_hex32>
      f4:	00000013          	nop
      f8:	000357b7          	lui	a5,0x35
      fc:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     100:	0087a783          	lw	a5,8(a5)
     104:	00000693          	li	a3,0
     108:	00200613          	li	a2,2
     10c:	00000593          	li	a1,0
     110:	00078513          	mv	a0,a5
     114:	7f1020ef          	jal	3104 <setvbuf>
     118:	00000013          	nop
     11c:	000357b7          	lui	a5,0x35
     120:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     124:	0047a903          	lw	s2,4(a5)
     128:	000357b7          	lui	a5,0x35
     12c:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     130:	0087a083          	lw	ra,8(a5)
     134:	000357b7          	lui	a5,0x35
     138:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     13c:	00c7a483          	lw	s1,12(a5)
     140:	02408793          	add	a5,ra,36
     144:	00003737          	lui	a4,0x3
     148:	3a070713          	add	a4,a4,928 # 33a0 <__sread>
     14c:	00e7a023          	sw	a4,0(a5)
     150:	02808793          	add	a5,ra,40
     154:	00003737          	lui	a4,0x3
     158:	40470713          	add	a4,a4,1028 # 3404 <__swrite>
     15c:	00e7a023          	sw	a4,0(a5)
     160:	02490793          	add	a5,s2,36
     164:	00003737          	lui	a4,0x3
     168:	3a070713          	add	a4,a4,928 # 33a0 <__sread>
     16c:	00e7a023          	sw	a4,0(a5)
     170:	02890793          	add	a5,s2,40
     174:	00003737          	lui	a4,0x3
     178:	40470713          	add	a4,a4,1028 # 3404 <__swrite>
     17c:	00e7a023          	sw	a4,0(a5)
     180:	02448793          	add	a5,s1,36
     184:	00003737          	lui	a4,0x3
     188:	3a070713          	add	a4,a4,928 # 33a0 <__sread>
     18c:	00e7a023          	sw	a4,0(a5)
     190:	02848793          	add	a5,s1,40
     194:	00003737          	lui	a4,0x3
     198:	40470713          	add	a4,a4,1028 # 3404 <__swrite>
     19c:	00e7a023          	sw	a4,0(a5)
     1a0:	000357b7          	lui	a5,0x35
     1a4:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     1a8:	0087a703          	lw	a4,8(a5)
     1ac:	02008793          	add	a5,ra,32
     1b0:	00e7a023          	sw	a4,0(a5)
     1b4:	000357b7          	lui	a5,0x35
     1b8:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     1bc:	0047a703          	lw	a4,4(a5)
     1c0:	02090793          	add	a5,s2,32
     1c4:	00e7a023          	sw	a4,0(a5)
     1c8:	000357b7          	lui	a5,0x35
     1cc:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     1d0:	00c7a703          	lw	a4,12(a5)
     1d4:	02048793          	add	a5,s1,32
     1d8:	00e7a023          	sw	a4,0(a5)
     1dc:	01408793          	add	a5,ra,20
     1e0:	0007a023          	sw	zero,0(a5)
     1e4:	01008793          	add	a5,ra,16
     1e8:	0007a023          	sw	zero,0(a5)
     1ec:	00808793          	add	a5,ra,8
     1f0:	00008737          	lui	a4,0x8
     1f4:	fff70713          	add	a4,a4,-1 # 7fff <__register_exitproc+0xef>
     1f8:	00e7a023          	sw	a4,0(a5)
     1fc:	00000013          	nop
     200:	03200613          	li	a2,50
     204:	001005b7          	lui	a1,0x100
     208:	00000513          	li	a0,0
     20c:	014000ef          	jal	220 <soc_bootup>
     210:	0e4000ef          	jal	2f4 <main>
     214:	00050093          	mv	ra,a0
     218:	00008513          	mv	a0,ra
     21c:	708020ef          	jal	2924 <exit>

00000220 <soc_bootup>:
     220:	fd010113          	add	sp,sp,-48
     224:	02112623          	sw	ra,44(sp)
     228:	02812423          	sw	s0,40(sp)
     22c:	03010413          	add	s0,sp,48
     230:	fca42e23          	sw	a0,-36(s0)
     234:	fcb42c23          	sw	a1,-40(s0)
     238:	fcc42a23          	sw	a2,-44(s0)
     23c:	002017b7          	lui	a5,0x201
     240:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
     244:	fdc42703          	lw	a4,-36(s0)
     248:	00e7a023          	sw	a4,0(a5)
     24c:	002017b7          	lui	a5,0x201
     250:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
     254:	fd842703          	lw	a4,-40(s0)
     258:	00e7a023          	sw	a4,0(a5)
     25c:	002017b7          	lui	a5,0x201
     260:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
     264:	fd442703          	lw	a4,-44(s0)
     268:	00e7a023          	sw	a4,0(a5)
     26c:	000307b7          	lui	a5,0x30
     270:	1f078513          	add	a0,a5,496 # 301f0 <__fini_array_end+0x251f0>
     274:	595000ef          	jal	1008 <uart_print>
     278:	0f1000ef          	jal	b68 <cmd_free>
     27c:	000307b7          	lui	a5,0x30
     280:	1fc78513          	add	a0,a5,508 # 301fc <__fini_array_end+0x251fc>
     284:	585000ef          	jal	1008 <uart_print>
     288:	002017b7          	lui	a5,0x201
     28c:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
     290:	0007a703          	lw	a4,0(a5)
     294:	02000793          	li	a5,32
     298:	00f71733          	sll	a4,a4,a5
     29c:	002017b7          	lui	a5,0x201
     2a0:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
     2a4:	0007a783          	lw	a5,0(a5)
     2a8:	00f767b3          	or	a5,a4,a5
     2ac:	fef42423          	sw	a5,-24(s0)
     2b0:	41f7d793          	sra	a5,a5,0x1f
     2b4:	fef42623          	sw	a5,-20(s0)
     2b8:	fe842503          	lw	a0,-24(s0)
     2bc:	fec42583          	lw	a1,-20(s0)
     2c0:	2c8010ef          	jal	1588 <uart_print_int64>
     2c4:	00000013          	nop
     2c8:	000307b7          	lui	a5,0x30
     2cc:	21878513          	add	a0,a5,536 # 30218 <__fini_array_end+0x25218>
     2d0:	539000ef          	jal	1008 <uart_print>
     2d4:	000307b7          	lui	a5,0x30
     2d8:	22878513          	add	a0,a5,552 # 30228 <__fini_array_end+0x25228>
     2dc:	52d000ef          	jal	1008 <uart_print>
     2e0:	00000013          	nop
     2e4:	02c12083          	lw	ra,44(sp)
     2e8:	02812403          	lw	s0,40(sp)
     2ec:	03010113          	add	sp,sp,48
     2f0:	00008067          	ret

000002f4 <main>:
     2f4:	e8010113          	add	sp,sp,-384
     2f8:	16112e23          	sw	ra,380(sp)
     2fc:	16812c23          	sw	s0,376(sp)
     300:	18010413          	add	s0,sp,384
     304:	00100793          	li	a5,1
     308:	fcf40ba3          	sb	a5,-41(s0)
     30c:	05000793          	li	a5,80
     310:	fef42623          	sw	a5,-20(s0)
     314:	01800793          	li	a5,24
     318:	fef42423          	sw	a5,-24(s0)
     31c:	03800793          	li	a5,56
     320:	fef42223          	sw	a5,-28(s0)
     324:	000307b7          	lui	a5,0x30
     328:	00078513          	mv	a0,a5
     32c:	6f0000ef          	jal	a1c <puts>
     330:	fec42583          	lw	a1,-20(s0)
     334:	000307b7          	lui	a5,0x30
     338:	01478513          	add	a0,a5,20 # 30014 <__fini_array_end+0x25014>
     33c:	720000ef          	jal	a5c <printf>
     340:	000307b7          	lui	a5,0x30
     344:	02878513          	add	a0,a5,40 # 30028 <__fini_array_end+0x25028>
     348:	4c1000ef          	jal	1008 <uart_print>
     34c:	000357b7          	lui	a5,0x35
     350:	8047a703          	lw	a4,-2044(a5) # 34804 <_impure_ptr>
     354:	000357b7          	lui	a5,0x35
     358:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     35c:	0087a583          	lw	a1,8(a5)
     360:	00700693          	li	a3,7
     364:	000307b7          	lui	a5,0x30
     368:	04478613          	add	a2,a5,68 # 30044 <__fini_array_end+0x25044>
     36c:	00070513          	mv	a0,a4
     370:	094030ef          	jal	3404 <__swrite>
     374:	fea42023          	sw	a0,-32(s0)
     378:	000307b7          	lui	a5,0x30
     37c:	04c78513          	add	a0,a5,76 # 3004c <__fini_array_end+0x2504c>
     380:	489000ef          	jal	1008 <uart_print>
     384:	fe042503          	lw	a0,-32(s0)
     388:	038010ef          	jal	13c0 <uart_print_hex32>
     38c:	00000013          	nop
     390:	000307b7          	lui	a5,0x30
     394:	06078513          	add	a0,a5,96 # 30060 <__fini_array_end+0x25060>
     398:	471000ef          	jal	1008 <uart_print>
     39c:	000357b7          	lui	a5,0x35
     3a0:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     3a4:	0087a783          	lw	a5,8(a5)
     3a8:	00078693          	mv	a3,a5
     3ac:	00700613          	li	a2,7
     3b0:	00100593          	li	a1,1
     3b4:	000307b7          	lui	a5,0x30
     3b8:	07c78513          	add	a0,a5,124 # 3007c <__fini_array_end+0x2507c>
     3bc:	52d020ef          	jal	30e8 <fwrite>
     3c0:	fca42e23          	sw	a0,-36(s0)
     3c4:	000307b7          	lui	a5,0x30
     3c8:	08478513          	add	a0,a5,132 # 30084 <__fini_array_end+0x25084>
     3cc:	43d000ef          	jal	1008 <uart_print>
     3d0:	fdc42783          	lw	a5,-36(s0)
     3d4:	00078513          	mv	a0,a5
     3d8:	7e9000ef          	jal	13c0 <uart_print_hex32>
     3dc:	00000013          	nop
     3e0:	000357b7          	lui	a5,0x35
     3e4:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     3e8:	0087a783          	lw	a5,8(a5)
     3ec:	fcf42c23          	sw	a5,-40(s0)
     3f0:	000307b7          	lui	a5,0x30
     3f4:	09878513          	add	a0,a5,152 # 30098 <__fini_array_end+0x25098>
     3f8:	411000ef          	jal	1008 <uart_print>
     3fc:	fd842783          	lw	a5,-40(s0)
     400:	00478793          	add	a5,a5,4
     404:	0007a783          	lw	a5,0(a5)
     408:	00078513          	mv	a0,a5
     40c:	7b5000ef          	jal	13c0 <uart_print_hex32>
     410:	00000013          	nop
     414:	000307b7          	lui	a5,0x30
     418:	0ac78513          	add	a0,a5,172 # 300ac <__fini_array_end+0x250ac>
     41c:	3ed000ef          	jal	1008 <uart_print>
     420:	fd842783          	lw	a5,-40(s0)
     424:	0007a783          	lw	a5,0(a5)
     428:	00078513          	mv	a0,a5
     42c:	795000ef          	jal	13c0 <uart_print_hex32>
     430:	00000013          	nop
     434:	000307b7          	lui	a5,0x30
     438:	0c078513          	add	a0,a5,192 # 300c0 <__fini_array_end+0x250c0>
     43c:	3cd000ef          	jal	1008 <uart_print>
     440:	fd842783          	lw	a5,-40(s0)
     444:	00878793          	add	a5,a5,8
     448:	0007a783          	lw	a5,0(a5)
     44c:	00078513          	mv	a0,a5
     450:	771000ef          	jal	13c0 <uart_print_hex32>
     454:	00000013          	nop
     458:	000307b7          	lui	a5,0x30
     45c:	0d478513          	add	a0,a5,212 # 300d4 <__fini_array_end+0x250d4>
     460:	3a9000ef          	jal	1008 <uart_print>
     464:	fd842783          	lw	a5,-40(s0)
     468:	00c78793          	add	a5,a5,12
     46c:	0007a783          	lw	a5,0(a5)
     470:	00078513          	mv	a0,a5
     474:	74d000ef          	jal	13c0 <uart_print_hex32>
     478:	00000013          	nop
     47c:	000307b7          	lui	a5,0x30
     480:	0e878513          	add	a0,a5,232 # 300e8 <__fini_array_end+0x250e8>
     484:	385000ef          	jal	1008 <uart_print>
     488:	fd842783          	lw	a5,-40(s0)
     48c:	01078793          	add	a5,a5,16
     490:	0007a783          	lw	a5,0(a5)
     494:	00078513          	mv	a0,a5
     498:	729000ef          	jal	13c0 <uart_print_hex32>
     49c:	00000013          	nop
     4a0:	000307b7          	lui	a5,0x30
     4a4:	0fc78513          	add	a0,a5,252 # 300fc <__fini_array_end+0x250fc>
     4a8:	361000ef          	jal	1008 <uart_print>
     4ac:	fd842783          	lw	a5,-40(s0)
     4b0:	01478793          	add	a5,a5,20
     4b4:	0007a783          	lw	a5,0(a5)
     4b8:	00078513          	mv	a0,a5
     4bc:	705000ef          	jal	13c0 <uart_print_hex32>
     4c0:	00000013          	nop
     4c4:	000307b7          	lui	a5,0x30
     4c8:	11078513          	add	a0,a5,272 # 30110 <__fini_array_end+0x25110>
     4cc:	33d000ef          	jal	1008 <uart_print>
     4d0:	fd842783          	lw	a5,-40(s0)
     4d4:	01878793          	add	a5,a5,24
     4d8:	0007a783          	lw	a5,0(a5)
     4dc:	00078513          	mv	a0,a5
     4e0:	6e1000ef          	jal	13c0 <uart_print_hex32>
     4e4:	00000013          	nop
     4e8:	000307b7          	lui	a5,0x30
     4ec:	12478513          	add	a0,a5,292 # 30124 <__fini_array_end+0x25124>
     4f0:	319000ef          	jal	1008 <uart_print>
     4f4:	fd842783          	lw	a5,-40(s0)
     4f8:	01c78793          	add	a5,a5,28
     4fc:	0007a783          	lw	a5,0(a5)
     500:	00078513          	mv	a0,a5
     504:	6bd000ef          	jal	13c0 <uart_print_hex32>
     508:	00000013          	nop
     50c:	000307b7          	lui	a5,0x30
     510:	13878513          	add	a0,a5,312 # 30138 <__fini_array_end+0x25138>
     514:	2f5000ef          	jal	1008 <uart_print>
     518:	fd842783          	lw	a5,-40(s0)
     51c:	02078793          	add	a5,a5,32
     520:	0007a783          	lw	a5,0(a5)
     524:	00078513          	mv	a0,a5
     528:	699000ef          	jal	13c0 <uart_print_hex32>
     52c:	00000013          	nop
     530:	000307b7          	lui	a5,0x30
     534:	14c78513          	add	a0,a5,332 # 3014c <__fini_array_end+0x2514c>
     538:	2d1000ef          	jal	1008 <uart_print>
     53c:	000357b7          	lui	a5,0x35
     540:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     544:	03478793          	add	a5,a5,52
     548:	0007a783          	lw	a5,0(a5)
     54c:	00078513          	mv	a0,a5
     550:	671000ef          	jal	13c0 <uart_print_hex32>
     554:	00000013          	nop
     558:	000307b7          	lui	a5,0x30
     55c:	15c78513          	add	a0,a5,348 # 3015c <__fini_array_end+0x2515c>
     560:	2a9000ef          	jal	1008 <uart_print>
     564:	000357b7          	lui	a5,0x35
     568:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     56c:	08478793          	add	a5,a5,132
     570:	0007a783          	lw	a5,0(a5)
     574:	00078513          	mv	a0,a5
     578:	649000ef          	jal	13c0 <uart_print_hex32>
     57c:	00000013          	nop
     580:	fd842783          	lw	a5,-40(s0)
     584:	01078793          	add	a5,a5,16
     588:	0007a023          	sw	zero,0(a5)
     58c:	fd842783          	lw	a5,-40(s0)
     590:	01478793          	add	a5,a5,20
     594:	0007a023          	sw	zero,0(a5)
     598:	fd842783          	lw	a5,-40(s0)
     59c:	00878793          	add	a5,a5,8
     5a0:	0007a023          	sw	zero,0(a5)
     5a4:	000307b7          	lui	a5,0x30
     5a8:	16c78513          	add	a0,a5,364 # 3016c <__fini_array_end+0x2516c>
     5ac:	25d000ef          	jal	1008 <uart_print>
     5b0:	000357b7          	lui	a5,0x35
     5b4:	8047a783          	lw	a5,-2044(a5) # 34804 <_impure_ptr>
     5b8:	0087a783          	lw	a5,8(a5)
     5bc:	00078693          	mv	a3,a5
     5c0:	00700613          	li	a2,7
     5c4:	00100593          	li	a1,1
     5c8:	000307b7          	lui	a5,0x30
     5cc:	07c78513          	add	a0,a5,124 # 3007c <__fini_array_end+0x2507c>
     5d0:	319020ef          	jal	30e8 <fwrite>
     5d4:	fca42e23          	sw	a0,-36(s0)
     5d8:	000307b7          	lui	a5,0x30
     5dc:	08478513          	add	a0,a5,132 # 30084 <__fini_array_end+0x25084>
     5e0:	229000ef          	jal	1008 <uart_print>
     5e4:	fdc42783          	lw	a5,-36(s0)
     5e8:	00078513          	mv	a0,a5
     5ec:	5d5000ef          	jal	13c0 <uart_print_hex32>
     5f0:	00000013          	nop
     5f4:	fd744783          	lbu	a5,-41(s0)
     5f8:	0ff7f793          	zext.b	a5,a5
     5fc:	00078513          	mv	a0,a5
     600:	17c12083          	lw	ra,380(sp)
     604:	17812403          	lw	s0,376(sp)
     608:	18010113          	add	sp,sp,384
     60c:	00008067          	ret

00000610 <stdio_exit_stub>:
     610:	ff010113          	add	sp,sp,-16
     614:	00812623          	sw	s0,12(sp)
     618:	01010413          	add	s0,sp,16
     61c:	00000013          	nop
     620:	00c12403          	lw	s0,12(sp)
     624:	01010113          	add	sp,sp,16
     628:	00008067          	ret

0000062c <get_curr_heap>:
     62c:	ff010113          	add	sp,sp,-16
     630:	00812623          	sw	s0,12(sp)
     634:	01010413          	add	s0,sp,16
     638:	000357b7          	lui	a5,0x35
     63c:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     640:	00078513          	mv	a0,a5
     644:	00c12403          	lw	s0,12(sp)
     648:	01010113          	add	sp,sp,16
     64c:	00008067          	ret

00000650 <get_sp>:
     650:	fe010113          	add	sp,sp,-32
     654:	00812e23          	sw	s0,28(sp)
     658:	02010413          	add	s0,sp,32
     65c:	00010793          	mv	a5,sp
     660:	fef42623          	sw	a5,-20(s0)
     664:	fec42783          	lw	a5,-20(s0)
     668:	00078513          	mv	a0,a5
     66c:	01c12403          	lw	s0,28(sp)
     670:	02010113          	add	sp,sp,32
     674:	00008067          	ret

00000678 <_sbrk>:
     678:	fd010113          	add	sp,sp,-48
     67c:	02112623          	sw	ra,44(sp)
     680:	02812423          	sw	s0,40(sp)
     684:	02912223          	sw	s1,36(sp)
     688:	03010413          	add	s0,sp,48
     68c:	fca42e23          	sw	a0,-36(s0)
     690:	000357b7          	lui	a5,0x35
     694:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     698:	fef42623          	sw	a5,-20(s0)
     69c:	fb5ff0ef          	jal	650 <get_sp>
     6a0:	fea42423          	sw	a0,-24(s0)
     6a4:	f89ff0ef          	jal	62c <get_curr_heap>
     6a8:	00050713          	mv	a4,a0
     6ac:	fdc42783          	lw	a5,-36(s0)
     6b0:	00f704b3          	add	s1,a4,a5
     6b4:	f9dff0ef          	jal	650 <get_sp>
     6b8:	00050793          	mv	a5,a0
     6bc:	02f4e463          	bltu	s1,a5,6e4 <_sbrk+0x6c>
     6c0:	000307b7          	lui	a5,0x30
     6c4:	23078513          	add	a0,a5,560 # 30230 <__fini_array_end+0x25230>
     6c8:	141000ef          	jal	1008 <uart_print>
     6cc:	08c030ef          	jal	3758 <__errno>
     6d0:	00050713          	mv	a4,a0
     6d4:	00c00793          	li	a5,12
     6d8:	00f72023          	sw	a5,0(a4)
     6dc:	fff00793          	li	a5,-1
     6e0:	0200006f          	j	700 <_sbrk+0x88>
     6e4:	000357b7          	lui	a5,0x35
     6e8:	8007a703          	lw	a4,-2048(a5) # 34800 <__curr_heap_end_ptr>
     6ec:	fdc42783          	lw	a5,-36(s0)
     6f0:	00f70733          	add	a4,a4,a5
     6f4:	000357b7          	lui	a5,0x35
     6f8:	80e7a023          	sw	a4,-2048(a5) # 34800 <__curr_heap_end_ptr>
     6fc:	fec42783          	lw	a5,-20(s0)
     700:	00078513          	mv	a0,a5
     704:	02c12083          	lw	ra,44(sp)
     708:	02812403          	lw	s0,40(sp)
     70c:	02412483          	lw	s1,36(sp)
     710:	03010113          	add	sp,sp,48
     714:	00008067          	ret

00000718 <_write>:
     718:	fd010113          	add	sp,sp,-48
     71c:	02112623          	sw	ra,44(sp)
     720:	02812423          	sw	s0,40(sp)
     724:	03010413          	add	s0,sp,48
     728:	fca42e23          	sw	a0,-36(s0)
     72c:	fcb42c23          	sw	a1,-40(s0)
     730:	fcc42a23          	sw	a2,-44(s0)
     734:	fe042623          	sw	zero,-20(s0)
     738:	02c0006f          	j	764 <_write+0x4c>
     73c:	fec42783          	lw	a5,-20(s0)
     740:	fd842703          	lw	a4,-40(s0)
     744:	00f707b3          	add	a5,a4,a5
     748:	0007c783          	lbu	a5,0(a5)
     74c:	00078513          	mv	a0,a5
     750:	055000ef          	jal	fa4 <uart_putc>
     754:	00000013          	nop
     758:	fec42783          	lw	a5,-20(s0)
     75c:	00178793          	add	a5,a5,1
     760:	fef42623          	sw	a5,-20(s0)
     764:	fec42703          	lw	a4,-20(s0)
     768:	fd442783          	lw	a5,-44(s0)
     76c:	fcf748e3          	blt	a4,a5,73c <_write+0x24>
     770:	fd442783          	lw	a5,-44(s0)
     774:	00078513          	mv	a0,a5
     778:	02c12083          	lw	ra,44(sp)
     77c:	02812403          	lw	s0,40(sp)
     780:	03010113          	add	sp,sp,48
     784:	00008067          	ret

00000788 <_read>:
     788:	fd010113          	add	sp,sp,-48
     78c:	02112623          	sw	ra,44(sp)
     790:	02812423          	sw	s0,40(sp)
     794:	02912223          	sw	s1,36(sp)
     798:	03010413          	add	s0,sp,48
     79c:	fca42e23          	sw	a0,-36(s0)
     7a0:	fcb42c23          	sw	a1,-40(s0)
     7a4:	fcc42a23          	sw	a2,-44(s0)
     7a8:	fe042623          	sw	zero,-20(s0)
     7ac:	0300006f          	j	7dc <_read+0x54>
     7b0:	fec42783          	lw	a5,-20(s0)
     7b4:	fd842703          	lw	a4,-40(s0)
     7b8:	00f704b3          	add	s1,a4,a5
     7bc:	00100513          	li	a0,1
     7c0:	76c000ef          	jal	f2c <uart_getc>
     7c4:	00050793          	mv	a5,a0
     7c8:	00f48023          	sb	a5,0(s1)
     7cc:	00000013          	nop
     7d0:	fec42783          	lw	a5,-20(s0)
     7d4:	00178793          	add	a5,a5,1
     7d8:	fef42623          	sw	a5,-20(s0)
     7dc:	fec42703          	lw	a4,-20(s0)
     7e0:	fd442783          	lw	a5,-44(s0)
     7e4:	fcf746e3          	blt	a4,a5,7b0 <_read+0x28>
     7e8:	fd442783          	lw	a5,-44(s0)
     7ec:	00078513          	mv	a0,a5
     7f0:	02c12083          	lw	ra,44(sp)
     7f4:	02812403          	lw	s0,40(sp)
     7f8:	02412483          	lw	s1,36(sp)
     7fc:	03010113          	add	sp,sp,48
     800:	00008067          	ret

00000804 <_close>:
     804:	fe010113          	add	sp,sp,-32
     808:	00812e23          	sw	s0,28(sp)
     80c:	02010413          	add	s0,sp,32
     810:	fea42623          	sw	a0,-20(s0)
     814:	fff00793          	li	a5,-1
     818:	00078513          	mv	a0,a5
     81c:	01c12403          	lw	s0,28(sp)
     820:	02010113          	add	sp,sp,32
     824:	00008067          	ret

00000828 <_fstat>:
     828:	fe010113          	add	sp,sp,-32
     82c:	00812e23          	sw	s0,28(sp)
     830:	02010413          	add	s0,sp,32
     834:	fea42623          	sw	a0,-20(s0)
     838:	feb42423          	sw	a1,-24(s0)
     83c:	fe842783          	lw	a5,-24(s0)
     840:	00002737          	lui	a4,0x2
     844:	00e7a223          	sw	a4,4(a5)
     848:	00000793          	li	a5,0
     84c:	00078513          	mv	a0,a5
     850:	01c12403          	lw	s0,28(sp)
     854:	02010113          	add	sp,sp,32
     858:	00008067          	ret

0000085c <_isatty>:
     85c:	fe010113          	add	sp,sp,-32
     860:	00812e23          	sw	s0,28(sp)
     864:	02010413          	add	s0,sp,32
     868:	fea42623          	sw	a0,-20(s0)
     86c:	00100793          	li	a5,1
     870:	00078513          	mv	a0,a5
     874:	01c12403          	lw	s0,28(sp)
     878:	02010113          	add	sp,sp,32
     87c:	00008067          	ret

00000880 <_lseek>:
     880:	fe010113          	add	sp,sp,-32
     884:	00812e23          	sw	s0,28(sp)
     888:	02010413          	add	s0,sp,32
     88c:	fea42623          	sw	a0,-20(s0)
     890:	feb42423          	sw	a1,-24(s0)
     894:	fec42223          	sw	a2,-28(s0)
     898:	00000793          	li	a5,0
     89c:	00078513          	mv	a0,a5
     8a0:	01c12403          	lw	s0,28(sp)
     8a4:	02010113          	add	sp,sp,32
     8a8:	00008067          	ret

000008ac <_open>:
     8ac:	fe010113          	add	sp,sp,-32
     8b0:	00812e23          	sw	s0,28(sp)
     8b4:	02010413          	add	s0,sp,32
     8b8:	fea42623          	sw	a0,-20(s0)
     8bc:	feb42423          	sw	a1,-24(s0)
     8c0:	fec42223          	sw	a2,-28(s0)
     8c4:	fff00793          	li	a5,-1
     8c8:	00078513          	mv	a0,a5
     8cc:	01c12403          	lw	s0,28(sp)
     8d0:	02010113          	add	sp,sp,32
     8d4:	00008067          	ret

000008d8 <_kill>:
     8d8:	fe010113          	add	sp,sp,-32
     8dc:	00112e23          	sw	ra,28(sp)
     8e0:	00812c23          	sw	s0,24(sp)
     8e4:	02010413          	add	s0,sp,32
     8e8:	fea42623          	sw	a0,-20(s0)
     8ec:	feb42423          	sw	a1,-24(s0)
     8f0:	669020ef          	jal	3758 <__errno>
     8f4:	00050713          	mv	a4,a0
     8f8:	01600793          	li	a5,22
     8fc:	00f72023          	sw	a5,0(a4) # 2000 <__divdi3+0x400>
     900:	fff00793          	li	a5,-1
     904:	00078513          	mv	a0,a5
     908:	01c12083          	lw	ra,28(sp)
     90c:	01812403          	lw	s0,24(sp)
     910:	02010113          	add	sp,sp,32
     914:	00008067          	ret

00000918 <_getpid>:
     918:	ff010113          	add	sp,sp,-16
     91c:	00812623          	sw	s0,12(sp)
     920:	01010413          	add	s0,sp,16
     924:	00100793          	li	a5,1
     928:	00078513          	mv	a0,a5
     92c:	00c12403          	lw	s0,12(sp)
     930:	01010113          	add	sp,sp,16
     934:	00008067          	ret

00000938 <__libc_fini_array>:
     938:	fe010113          	add	sp,sp,-32
     93c:	00112e23          	sw	ra,28(sp)
     940:	00812c23          	sw	s0,24(sp)
     944:	02010413          	add	s0,sp,32
     948:	0000b7b7          	lui	a5,0xb
     94c:	00078793          	mv	a5,a5
     950:	fef42623          	sw	a5,-20(s0)
     954:	01c0006f          	j	970 <__libc_fini_array+0x38>
     958:	fec42783          	lw	a5,-20(s0)
     95c:	ffc78793          	add	a5,a5,-4 # affc <__umoddi3+0xd70>
     960:	fef42623          	sw	a5,-20(s0)
     964:	fec42783          	lw	a5,-20(s0)
     968:	0007a783          	lw	a5,0(a5)
     96c:	000780e7          	jalr	a5
     970:	fec42703          	lw	a4,-20(s0)
     974:	0000b7b7          	lui	a5,0xb
     978:	00078793          	mv	a5,a5
     97c:	fcf71ee3          	bne	a4,a5,958 <__libc_fini_array+0x20>
     980:	00000013          	nop
     984:	00000013          	nop
     988:	01c12083          	lw	ra,28(sp)
     98c:	01812403          	lw	s0,24(sp)
     990:	02010113          	add	sp,sp,32
     994:	00008067          	ret

00000998 <_exit>:
     998:	fe010113          	add	sp,sp,-32
     99c:	00112e23          	sw	ra,28(sp)
     9a0:	00812c23          	sw	s0,24(sp)
     9a4:	02010413          	add	s0,sp,32
     9a8:	fea42623          	sw	a0,-20(s0)
     9ac:	f8dff0ef          	jal	938 <__libc_fini_array>
     9b0:	000307b7          	lui	a5,0x30
     9b4:	24078513          	add	a0,a5,576 # 30240 <__fini_array_end+0x25240>
     9b8:	650000ef          	jal	1008 <uart_print>
     9bc:	fec42503          	lw	a0,-20(s0)
     9c0:	2b9000ef          	jal	1478 <uart_print_int32>
     9c4:	00000013          	nop
     9c8:	00a00513          	li	a0,10
     9cc:	5d8000ef          	jal	fa4 <uart_putc>
     9d0:	00000013          	nop
     9d4:	000307b7          	lui	a5,0x30
     9d8:	26078513          	add	a0,a5,608 # 30260 <__fini_array_end+0x25260>
     9dc:	62c000ef          	jal	1008 <uart_print>
     9e0:	002017b7          	lui	a5,0x201
     9e4:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     9e8:	0007a783          	lw	a5,0(a5)
     9ec:	00078513          	mv	a0,a5
     9f0:	289000ef          	jal	1478 <uart_print_int32>
     9f4:	00000013          	nop
     9f8:	000307b7          	lui	a5,0x30
     9fc:	28078513          	add	a0,a5,640 # 30280 <__fini_array_end+0x25280>
     a00:	608000ef          	jal	1008 <uart_print>
     a04:	ffffffff          	.word	0xffffffff
     a08:	00000013          	nop
     a0c:	01c12083          	lw	ra,28(sp)
     a10:	01812403          	lw	s0,24(sp)
     a14:	02010113          	add	sp,sp,32
     a18:	00008067          	ret

00000a1c <puts>:
     a1c:	fe010113          	add	sp,sp,-32
     a20:	00112e23          	sw	ra,28(sp)
     a24:	00812c23          	sw	s0,24(sp)
     a28:	02010413          	add	s0,sp,32
     a2c:	fea42623          	sw	a0,-20(s0)
     a30:	fec42503          	lw	a0,-20(s0)
     a34:	5d4000ef          	jal	1008 <uart_print>
     a38:	00a00513          	li	a0,10
     a3c:	568000ef          	jal	fa4 <uart_putc>
     a40:	00000013          	nop
     a44:	00100793          	li	a5,1
     a48:	00078513          	mv	a0,a5
     a4c:	01c12083          	lw	ra,28(sp)
     a50:	01812403          	lw	s0,24(sp)
     a54:	02010113          	add	sp,sp,32
     a58:	00008067          	ret

00000a5c <printf>:
     a5c:	eb010113          	add	sp,sp,-336
     a60:	12112623          	sw	ra,300(sp)
     a64:	12812423          	sw	s0,296(sp)
     a68:	13010413          	add	s0,sp,304
     a6c:	eca42e23          	sw	a0,-292(s0)
     a70:	00b42223          	sw	a1,4(s0)
     a74:	00c42423          	sw	a2,8(s0)
     a78:	00d42623          	sw	a3,12(s0)
     a7c:	00e42823          	sw	a4,16(s0)
     a80:	00f42a23          	sw	a5,20(s0)
     a84:	01042c23          	sw	a6,24(s0)
     a88:	01142e23          	sw	a7,28(s0)
     a8c:	02040793          	add	a5,s0,32
     a90:	ecf42c23          	sw	a5,-296(s0)
     a94:	ed842783          	lw	a5,-296(s0)
     a98:	fe478793          	add	a5,a5,-28
     a9c:	eef42423          	sw	a5,-280(s0)
     aa0:	ee842703          	lw	a4,-280(s0)
     aa4:	eec40793          	add	a5,s0,-276
     aa8:	00070613          	mv	a2,a4
     aac:	edc42583          	lw	a1,-292(s0)
     ab0:	00078513          	mv	a0,a5
     ab4:	6a1010ef          	jal	2954 <vsiprintf>
     ab8:	fea42623          	sw	a0,-20(s0)
     abc:	eec40793          	add	a5,s0,-276
     ac0:	00078513          	mv	a0,a5
     ac4:	544000ef          	jal	1008 <uart_print>
     ac8:	fec42783          	lw	a5,-20(s0)
     acc:	00078513          	mv	a0,a5
     ad0:	12c12083          	lw	ra,300(sp)
     ad4:	12812403          	lw	s0,296(sp)
     ad8:	15010113          	add	sp,sp,336
     adc:	00008067          	ret

00000ae0 <get_curr_heap>:
     ae0:	ff010113          	add	sp,sp,-16
     ae4:	00812623          	sw	s0,12(sp)
     ae8:	01010413          	add	s0,sp,16
     aec:	000357b7          	lui	a5,0x35
     af0:	8007a783          	lw	a5,-2048(a5) # 34800 <__curr_heap_end_ptr>
     af4:	00078513          	mv	a0,a5
     af8:	00c12403          	lw	s0,12(sp)
     afc:	01010113          	add	sp,sp,16
     b00:	00008067          	ret

00000b04 <get_sp>:
     b04:	fe010113          	add	sp,sp,-32
     b08:	00812e23          	sw	s0,28(sp)
     b0c:	02010413          	add	s0,sp,32
     b10:	00010793          	mv	a5,sp
     b14:	fef42623          	sw	a5,-20(s0)
     b18:	fec42783          	lw	a5,-20(s0)
     b1c:	00078513          	mv	a0,a5
     b20:	01c12403          	lw	s0,28(sp)
     b24:	02010113          	add	sp,sp,32
     b28:	00008067          	ret

00000b2c <get_free_bytes>:
     b2c:	fe010113          	add	sp,sp,-32
     b30:	00112e23          	sw	ra,28(sp)
     b34:	00812c23          	sw	s0,24(sp)
     b38:	02010413          	add	s0,sp,32
     b3c:	fc9ff0ef          	jal	b04 <get_sp>
     b40:	fea42623          	sw	a0,-20(s0)
     b44:	f9dff0ef          	jal	ae0 <get_curr_heap>
     b48:	00050713          	mv	a4,a0
     b4c:	fec42783          	lw	a5,-20(s0)
     b50:	40e787b3          	sub	a5,a5,a4
     b54:	00078513          	mv	a0,a5
     b58:	01c12083          	lw	ra,28(sp)
     b5c:	01812403          	lw	s0,24(sp)
     b60:	02010113          	add	sp,sp,32
     b64:	00008067          	ret

00000b68 <cmd_free>:
     b68:	fe010113          	add	sp,sp,-32
     b6c:	00112e23          	sw	ra,28(sp)
     b70:	00812c23          	sw	s0,24(sp)
     b74:	02010413          	add	s0,sp,32
     b78:	fb5ff0ef          	jal	b2c <get_free_bytes>
     b7c:	fea42623          	sw	a0,-20(s0)
     b80:	fec42783          	lw	a5,-20(s0)
     b84:	00078513          	mv	a0,a5
     b88:	0f1000ef          	jal	1478 <uart_print_int32>
     b8c:	00000013          	nop
     b90:	000307b7          	lui	a5,0x30
     b94:	29078513          	add	a0,a5,656 # 30290 <__fini_array_end+0x25290>
     b98:	470000ef          	jal	1008 <uart_print>
     b9c:	00000013          	nop
     ba0:	01c12083          	lw	ra,28(sp)
     ba4:	01812403          	lw	s0,24(sp)
     ba8:	02010113          	add	sp,sp,32
     bac:	00008067          	ret

00000bb0 <cmd_echo>:
     bb0:	fe010113          	add	sp,sp,-32
     bb4:	00112e23          	sw	ra,28(sp)
     bb8:	00812c23          	sw	s0,24(sp)
     bbc:	02010413          	add	s0,sp,32
     bc0:	fea42623          	sw	a0,-20(s0)
     bc4:	fec42503          	lw	a0,-20(s0)
     bc8:	440000ef          	jal	1008 <uart_print>
     bcc:	000307b7          	lui	a5,0x30
     bd0:	2a078513          	add	a0,a5,672 # 302a0 <__fini_array_end+0x252a0>
     bd4:	434000ef          	jal	1008 <uart_print>
     bd8:	00000013          	nop
     bdc:	01c12083          	lw	ra,28(sp)
     be0:	01812403          	lw	s0,24(sp)
     be4:	02010113          	add	sp,sp,32
     be8:	00008067          	ret

00000bec <cmd_help>:
     bec:	fe010113          	add	sp,sp,-32
     bf0:	00112e23          	sw	ra,28(sp)
     bf4:	00812c23          	sw	s0,24(sp)
     bf8:	02010413          	add	s0,sp,32
     bfc:	fea42623          	sw	a0,-20(s0)
     c00:	000307b7          	lui	a5,0x30
     c04:	2a478513          	add	a0,a5,676 # 302a4 <__fini_array_end+0x252a4>
     c08:	400000ef          	jal	1008 <uart_print>
     c0c:	000307b7          	lui	a5,0x30
     c10:	2c478513          	add	a0,a5,708 # 302c4 <__fini_array_end+0x252c4>
     c14:	3f4000ef          	jal	1008 <uart_print>
     c18:	000307b7          	lui	a5,0x30
     c1c:	2d078513          	add	a0,a5,720 # 302d0 <__fini_array_end+0x252d0>
     c20:	3e8000ef          	jal	1008 <uart_print>
     c24:	000307b7          	lui	a5,0x30
     c28:	2dc78513          	add	a0,a5,732 # 302dc <__fini_array_end+0x252dc>
     c2c:	3dc000ef          	jal	1008 <uart_print>
     c30:	000307b7          	lui	a5,0x30
     c34:	2e878513          	add	a0,a5,744 # 302e8 <__fini_array_end+0x252e8>
     c38:	3d0000ef          	jal	1008 <uart_print>
     c3c:	000307b7          	lui	a5,0x30
     c40:	2f478513          	add	a0,a5,756 # 302f4 <__fini_array_end+0x252f4>
     c44:	3c4000ef          	jal	1008 <uart_print>
     c48:	00000013          	nop
     c4c:	01c12083          	lw	ra,28(sp)
     c50:	01812403          	lw	s0,24(sp)
     c54:	02010113          	add	sp,sp,32
     c58:	00008067          	ret

00000c5c <cmd_exit>:
     c5c:	fe010113          	add	sp,sp,-32
     c60:	00112e23          	sw	ra,28(sp)
     c64:	00812c23          	sw	s0,24(sp)
     c68:	02010413          	add	s0,sp,32
     c6c:	fea42623          	sw	a0,-20(s0)
     c70:	feb42423          	sw	a1,-24(s0)
     c74:	000307b7          	lui	a5,0x30
     c78:	31878513          	add	a0,a5,792 # 30318 <__fini_array_end+0x25318>
     c7c:	38c000ef          	jal	1008 <uart_print>
     c80:	fe842783          	lw	a5,-24(s0)
     c84:	00078023          	sb	zero,0(a5)
     c88:	00000013          	nop
     c8c:	01c12083          	lw	ra,28(sp)
     c90:	01812403          	lw	s0,24(sp)
     c94:	02010113          	add	sp,sp,32
     c98:	00008067          	ret

00000c9c <math_gauntlet>:
     c9c:	fc010113          	add	sp,sp,-64
     ca0:	02112e23          	sw	ra,60(sp)
     ca4:	02812c23          	sw	s0,56(sp)
     ca8:	04010413          	add	s0,sp,64
     cac:	fca42e23          	sw	a0,-36(s0)
     cb0:	fcb42c23          	sw	a1,-40(s0)
     cb4:	fcc42a23          	sw	a2,-44(s0)
     cb8:	fcd42823          	sw	a3,-48(s0)
     cbc:	fce42623          	sw	a4,-52(s0)
     cc0:	fcf42423          	sw	a5,-56(s0)
     cc4:	fd042223          	sw	a6,-60(s0)
     cc8:	fe0407a3          	sb	zero,-17(s0)
     ccc:	fdc42783          	lw	a5,-36(s0)
     cd0:	0007a703          	lw	a4,0(a5)
     cd4:	fd842783          	lw	a5,-40(s0)
     cd8:	0007a783          	lw	a5,0(a5)
     cdc:	00f70733          	add	a4,a4,a5
     ce0:	fd442783          	lw	a5,-44(s0)
     ce4:	00e7a023          	sw	a4,0(a5)
     ce8:	fdc42783          	lw	a5,-36(s0)
     cec:	0007a703          	lw	a4,0(a5)
     cf0:	fd842783          	lw	a5,-40(s0)
     cf4:	0007a783          	lw	a5,0(a5)
     cf8:	40f70733          	sub	a4,a4,a5
     cfc:	fd042783          	lw	a5,-48(s0)
     d00:	00e7a023          	sw	a4,0(a5)
     d04:	fdc42783          	lw	a5,-36(s0)
     d08:	0007a703          	lw	a4,0(a5)
     d0c:	fd842783          	lw	a5,-40(s0)
     d10:	0007a783          	lw	a5,0(a5)
     d14:	00078593          	mv	a1,a5
     d18:	00070513          	mv	a0,a4
     d1c:	531000ef          	jal	1a4c <__mulsi3>
     d20:	00050793          	mv	a5,a0
     d24:	00078713          	mv	a4,a5
     d28:	fcc42783          	lw	a5,-52(s0)
     d2c:	00e7a023          	sw	a4,0(a5)
     d30:	fdc42783          	lw	a5,-36(s0)
     d34:	0007a703          	lw	a4,0(a5)
     d38:	fd842783          	lw	a5,-40(s0)
     d3c:	0007a783          	lw	a5,0(a5)
     d40:	00078593          	mv	a1,a5
     d44:	00070513          	mv	a0,a4
     d48:	529000ef          	jal	1a70 <__divsi3>
     d4c:	00050793          	mv	a5,a0
     d50:	00078713          	mv	a4,a5
     d54:	fc842783          	lw	a5,-56(s0)
     d58:	00e7a023          	sw	a4,0(a5)
     d5c:	fdc42783          	lw	a5,-36(s0)
     d60:	0007a703          	lw	a4,0(a5)
     d64:	fd842783          	lw	a5,-40(s0)
     d68:	0007a783          	lw	a5,0(a5)
     d6c:	00078593          	mv	a1,a5
     d70:	00070513          	mv	a0,a4
     d74:	581000ef          	jal	1af4 <__modsi3>
     d78:	00050793          	mv	a5,a0
     d7c:	00078713          	mv	a4,a5
     d80:	fc442783          	lw	a5,-60(s0)
     d84:	00e7a023          	sw	a4,0(a5)
     d88:	00100793          	li	a5,1
     d8c:	fef407a3          	sb	a5,-17(s0)
     d90:	fef44783          	lbu	a5,-17(s0)
     d94:	00078513          	mv	a0,a5
     d98:	03c12083          	lw	ra,60(sp)
     d9c:	03812403          	lw	s0,56(sp)
     da0:	04010113          	add	sp,sp,64
     da4:	00008067          	ret

00000da8 <compute>:
     da8:	fe010113          	add	sp,sp,-32
     dac:	00112e23          	sw	ra,28(sp)
     db0:	00812c23          	sw	s0,24(sp)
     db4:	02010413          	add	s0,sp,32
     db8:	fff00793          	li	a5,-1
     dbc:	fef407a3          	sb	a5,-17(s0)
     dc0:	00a00793          	li	a5,10
     dc4:	fef42423          	sw	a5,-24(s0)
     dc8:	fe842503          	lw	a0,-24(s0)
     dcc:	044000ef          	jal	e10 <fibonacci_iterative>
     dd0:	fea42223          	sw	a0,-28(s0)
     dd4:	fe842503          	lw	a0,-24(s0)
     dd8:	0e4000ef          	jal	ebc <fibonacci_recursive>
     ddc:	fea42023          	sw	a0,-32(s0)
     de0:	fe442703          	lw	a4,-28(s0)
     de4:	fe042783          	lw	a5,-32(s0)
     de8:	00f71863          	bne	a4,a5,df8 <compute+0x50>
     dec:	00100793          	li	a5,1
     df0:	fef407a3          	sb	a5,-17(s0)
     df4:	0080006f          	j	dfc <compute+0x54>
     df8:	fe0407a3          	sb	zero,-17(s0)
     dfc:	00000013          	nop
     e00:	01c12083          	lw	ra,28(sp)
     e04:	01812403          	lw	s0,24(sp)
     e08:	02010113          	add	sp,sp,32
     e0c:	00008067          	ret

00000e10 <fibonacci_iterative>:
     e10:	fd010113          	add	sp,sp,-48
     e14:	02812623          	sw	s0,44(sp)
     e18:	03010413          	add	s0,sp,48
     e1c:	fca42e23          	sw	a0,-36(s0)
     e20:	fdc42703          	lw	a4,-36(s0)
     e24:	00100793          	li	a5,1
     e28:	00e7c663          	blt	a5,a4,e34 <fibonacci_iterative+0x24>
     e2c:	fdc42783          	lw	a5,-36(s0)
     e30:	07c0006f          	j	eac <fibonacci_iterative+0x9c>
     e34:	fdc42703          	lw	a4,-36(s0)
     e38:	02e00793          	li	a5,46
     e3c:	00e7c863          	blt	a5,a4,e4c <fibonacci_iterative+0x3c>
     e40:	fdc42783          	lw	a5,-36(s0)
     e44:	0ff7f793          	zext.b	a5,a5
     e48:	0080006f          	j	e50 <fibonacci_iterative+0x40>
     e4c:	02e00793          	li	a5,46
     e50:	fef40123          	sb	a5,-30(s0)
     e54:	fe042623          	sw	zero,-20(s0)
     e58:	fe042423          	sw	zero,-24(s0)
     e5c:	00100793          	li	a5,1
     e60:	fef42223          	sw	a5,-28(s0)
     e64:	00100793          	li	a5,1
     e68:	fef401a3          	sb	a5,-29(s0)
     e6c:	0300006f          	j	e9c <fibonacci_iterative+0x8c>
     e70:	fe842703          	lw	a4,-24(s0)
     e74:	fe442783          	lw	a5,-28(s0)
     e78:	00f707b3          	add	a5,a4,a5
     e7c:	fef42623          	sw	a5,-20(s0)
     e80:	fe442783          	lw	a5,-28(s0)
     e84:	fef42423          	sw	a5,-24(s0)
     e88:	fec42783          	lw	a5,-20(s0)
     e8c:	fef42223          	sw	a5,-28(s0)
     e90:	fe344783          	lbu	a5,-29(s0)
     e94:	00178793          	add	a5,a5,1
     e98:	fef401a3          	sb	a5,-29(s0)
     e9c:	fe344703          	lbu	a4,-29(s0)
     ea0:	fe244783          	lbu	a5,-30(s0)
     ea4:	fcf766e3          	bltu	a4,a5,e70 <fibonacci_iterative+0x60>
     ea8:	fec42783          	lw	a5,-20(s0)
     eac:	00078513          	mv	a0,a5
     eb0:	02c12403          	lw	s0,44(sp)
     eb4:	03010113          	add	sp,sp,48
     eb8:	00008067          	ret

00000ebc <fibonacci_recursive>:
     ebc:	fe010113          	add	sp,sp,-32
     ec0:	00112e23          	sw	ra,28(sp)
     ec4:	00812c23          	sw	s0,24(sp)
     ec8:	00912a23          	sw	s1,20(sp)
     ecc:	02010413          	add	s0,sp,32
     ed0:	fea42623          	sw	a0,-20(s0)
     ed4:	fec42703          	lw	a4,-20(s0)
     ed8:	00100793          	li	a5,1
     edc:	00e7c663          	blt	a5,a4,ee8 <fibonacci_recursive+0x2c>
     ee0:	fec42783          	lw	a5,-20(s0)
     ee4:	0300006f          	j	f14 <fibonacci_recursive+0x58>
     ee8:	fec42783          	lw	a5,-20(s0)
     eec:	fff78793          	add	a5,a5,-1
     ef0:	00078513          	mv	a0,a5
     ef4:	fc9ff0ef          	jal	ebc <fibonacci_recursive>
     ef8:	00050493          	mv	s1,a0
     efc:	fec42783          	lw	a5,-20(s0)
     f00:	ffe78793          	add	a5,a5,-2
     f04:	00078513          	mv	a0,a5
     f08:	fb5ff0ef          	jal	ebc <fibonacci_recursive>
     f0c:	00050793          	mv	a5,a0
     f10:	00f487b3          	add	a5,s1,a5
     f14:	00078513          	mv	a0,a5
     f18:	01c12083          	lw	ra,28(sp)
     f1c:	01812403          	lw	s0,24(sp)
     f20:	01412483          	lw	s1,20(sp)
     f24:	02010113          	add	sp,sp,32
     f28:	00008067          	ret

00000f2c <uart_getc>:
     f2c:	fd010113          	add	sp,sp,-48
     f30:	02812623          	sw	s0,44(sp)
     f34:	03010413          	add	s0,sp,48
     f38:	00050793          	mv	a5,a0
     f3c:	fcf40fa3          	sb	a5,-33(s0)
     f40:	fe0407a3          	sb	zero,-17(s0)
     f44:	002017b7          	lui	a5,0x201
     f48:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
     f4c:	0007c783          	lbu	a5,0(a5)
     f50:	fef407a3          	sb	a5,-17(s0)
     f54:	0340006f          	j	f88 <uart_getc+0x5c>
     f58:	002017b7          	lui	a5,0x201
     f5c:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
     f60:	0007c783          	lbu	a5,0(a5)
     f64:	fef40723          	sb	a5,-18(s0)
     f68:	fee44783          	lbu	a5,-18(s0)
     f6c:	0027f793          	and	a5,a5,2
     f70:	00078c63          	beqz	a5,f88 <uart_getc+0x5c>
     f74:	002017b7          	lui	a5,0x201
     f78:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
     f7c:	0007c783          	lbu	a5,0(a5)
     f80:	fef407a3          	sb	a5,-17(s0)
     f84:	00c0006f          	j	f90 <uart_getc+0x64>
     f88:	fdf44783          	lbu	a5,-33(s0)
     f8c:	fc0796e3          	bnez	a5,f58 <uart_getc+0x2c>
     f90:	fef44783          	lbu	a5,-17(s0)
     f94:	00078513          	mv	a0,a5
     f98:	02c12403          	lw	s0,44(sp)
     f9c:	03010113          	add	sp,sp,48
     fa0:	00008067          	ret

00000fa4 <uart_putc>:
     fa4:	fd010113          	add	sp,sp,-48
     fa8:	02812623          	sw	s0,44(sp)
     fac:	03010413          	add	s0,sp,48
     fb0:	00050793          	mv	a5,a0
     fb4:	fcf40fa3          	sb	a5,-33(s0)
     fb8:	002017b7          	lui	a5,0x201
     fbc:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
     fc0:	0007c783          	lbu	a5,0(a5)
     fc4:	fef407a3          	sb	a5,-17(s0)
     fc8:	002017b7          	lui	a5,0x201
     fcc:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
     fd0:	0007c783          	lbu	a5,0(a5)
     fd4:	fef40723          	sb	a5,-18(s0)
     fd8:	fee44783          	lbu	a5,-18(s0)
     fdc:	0017f793          	and	a5,a5,1
     fe0:	fe0784e3          	beqz	a5,fc8 <uart_putc+0x24>
     fe4:	002017b7          	lui	a5,0x201
     fe8:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
     fec:	fdf44703          	lbu	a4,-33(s0)
     ff0:	00e78023          	sb	a4,0(a5)
     ff4:	00000013          	nop
     ff8:	00000013          	nop
     ffc:	02c12403          	lw	s0,44(sp)
    1000:	03010113          	add	sp,sp,48
    1004:	00008067          	ret

00001008 <uart_print>:
    1008:	fd010113          	add	sp,sp,-48
    100c:	02112623          	sw	ra,44(sp)
    1010:	02812423          	sw	s0,40(sp)
    1014:	03010413          	add	s0,sp,48
    1018:	fca42e23          	sw	a0,-36(s0)
    101c:	fe042623          	sw	zero,-20(s0)
    1020:	0400006f          	j	1060 <uart_print+0x58>
    1024:	fec42783          	lw	a5,-20(s0)
    1028:	fdc42703          	lw	a4,-36(s0)
    102c:	00f707b3          	add	a5,a4,a5
    1030:	0007c783          	lbu	a5,0(a5)
    1034:	02078e63          	beqz	a5,1070 <uart_print+0x68>
    1038:	fec42783          	lw	a5,-20(s0)
    103c:	fdc42703          	lw	a4,-36(s0)
    1040:	00f707b3          	add	a5,a4,a5
    1044:	0007c783          	lbu	a5,0(a5)
    1048:	00078513          	mv	a0,a5
    104c:	f59ff0ef          	jal	fa4 <uart_putc>
    1050:	00000013          	nop
    1054:	fec42783          	lw	a5,-20(s0)
    1058:	00178793          	add	a5,a5,1
    105c:	fef42623          	sw	a5,-20(s0)
    1060:	fec42703          	lw	a4,-20(s0)
    1064:	07f00793          	li	a5,127
    1068:	fae7dee3          	bge	a5,a4,1024 <uart_print+0x1c>
    106c:	0080006f          	j	1074 <uart_print+0x6c>
    1070:	00000013          	nop
    1074:	00000013          	nop
    1078:	02c12083          	lw	ra,44(sp)
    107c:	02812403          	lw	s0,40(sp)
    1080:	03010113          	add	sp,sp,48
    1084:	00008067          	ret

00001088 <dump_result>:
    1088:	fc010113          	add	sp,sp,-64
    108c:	02112e23          	sw	ra,60(sp)
    1090:	02812c23          	sw	s0,56(sp)
    1094:	04010413          	add	s0,sp,64
    1098:	fca42423          	sw	a0,-56(s0)
    109c:	fcb42623          	sw	a1,-52(s0)
    10a0:	fe042623          	sw	zero,-20(s0)
    10a4:	0700006f          	j	1114 <dump_result+0x8c>
    10a8:	fec42683          	lw	a3,-20(s0)
    10ac:	00369693          	sll	a3,a3,0x3
    10b0:	fe068613          	add	a2,a3,-32
    10b4:	00064c63          	bltz	a2,10cc <dump_result+0x44>
    10b8:	fcc42683          	lw	a3,-52(s0)
    10bc:	40c6d733          	sra	a4,a3,a2
    10c0:	fcc42683          	lw	a3,-52(s0)
    10c4:	41f6d793          	sra	a5,a3,0x1f
    10c8:	02c0006f          	j	10f4 <dump_result+0x6c>
    10cc:	fcc42603          	lw	a2,-52(s0)
    10d0:	00161593          	sll	a1,a2,0x1
    10d4:	01f00613          	li	a2,31
    10d8:	40d60633          	sub	a2,a2,a3
    10dc:	00c59633          	sll	a2,a1,a2
    10e0:	fc842583          	lw	a1,-56(s0)
    10e4:	00d5d733          	srl	a4,a1,a3
    10e8:	00e66733          	or	a4,a2,a4
    10ec:	fcc42603          	lw	a2,-52(s0)
    10f0:	40d657b3          	sra	a5,a2,a3
    10f4:	0ff77613          	zext.b	a2,a4
    10f8:	fec42683          	lw	a3,-20(s0)
    10fc:	ff068693          	add	a3,a3,-16
    1100:	008686b3          	add	a3,a3,s0
    1104:	fec68423          	sb	a2,-24(a3)
    1108:	fec42683          	lw	a3,-20(s0)
    110c:	00168693          	add	a3,a3,1
    1110:	fed42623          	sw	a3,-20(s0)
    1114:	fec42603          	lw	a2,-20(s0)
    1118:	00700693          	li	a3,7
    111c:	f8c6d6e3          	bge	a3,a2,10a8 <dump_result+0x20>
    1120:	00800793          	li	a5,8
    1124:	fef42423          	sw	a5,-24(s0)
    1128:	0100006f          	j	1138 <dump_result+0xb0>
    112c:	fe842783          	lw	a5,-24(s0)
    1130:	fff78793          	add	a5,a5,-1
    1134:	fef42423          	sw	a5,-24(s0)
    1138:	fe842703          	lw	a4,-24(s0)
    113c:	00100793          	li	a5,1
    1140:	00e7de63          	bge	a5,a4,115c <dump_result+0xd4>
    1144:	fe842783          	lw	a5,-24(s0)
    1148:	fff78793          	add	a5,a5,-1
    114c:	ff078793          	add	a5,a5,-16
    1150:	008787b3          	add	a5,a5,s0
    1154:	fe87c783          	lbu	a5,-24(a5)
    1158:	fc078ae3          	beqz	a5,112c <dump_result+0xa4>
    115c:	04400513          	li	a0,68
    1160:	e45ff0ef          	jal	fa4 <uart_putc>
    1164:	fe842783          	lw	a5,-24(s0)
    1168:	0ff7f793          	zext.b	a5,a5
    116c:	00078513          	mv	a0,a5
    1170:	e35ff0ef          	jal	fa4 <uart_putc>
    1174:	fe042223          	sw	zero,-28(s0)
    1178:	02c0006f          	j	11a4 <dump_result+0x11c>
    117c:	fe442783          	lw	a5,-28(s0)
    1180:	ff078793          	add	a5,a5,-16
    1184:	008787b3          	add	a5,a5,s0
    1188:	fe87c783          	lbu	a5,-24(a5)
    118c:	00078513          	mv	a0,a5
    1190:	e15ff0ef          	jal	fa4 <uart_putc>
    1194:	00000013          	nop
    1198:	fe442783          	lw	a5,-28(s0)
    119c:	00178793          	add	a5,a5,1
    11a0:	fef42223          	sw	a5,-28(s0)
    11a4:	fe442703          	lw	a4,-28(s0)
    11a8:	fe842783          	lw	a5,-24(s0)
    11ac:	fcf748e3          	blt	a4,a5,117c <dump_result+0xf4>
    11b0:	00000013          	nop
    11b4:	00000013          	nop
    11b8:	03c12083          	lw	ra,60(sp)
    11bc:	03812403          	lw	s0,56(sp)
    11c0:	04010113          	add	sp,sp,64
    11c4:	00008067          	ret

000011c8 <strncmp>:
    11c8:	fd010113          	add	sp,sp,-48
    11cc:	02812623          	sw	s0,44(sp)
    11d0:	03010413          	add	s0,sp,48
    11d4:	fca42e23          	sw	a0,-36(s0)
    11d8:	fcb42c23          	sw	a1,-40(s0)
    11dc:	fcc42a23          	sw	a2,-44(s0)
    11e0:	fe042623          	sw	zero,-20(s0)
    11e4:	07c0006f          	j	1260 <strncmp+0x98>
    11e8:	fec42783          	lw	a5,-20(s0)
    11ec:	fdc42703          	lw	a4,-36(s0)
    11f0:	00f707b3          	add	a5,a4,a5
    11f4:	0007c703          	lbu	a4,0(a5)
    11f8:	fec42783          	lw	a5,-20(s0)
    11fc:	fd842683          	lw	a3,-40(s0)
    1200:	00f687b3          	add	a5,a3,a5
    1204:	0007c783          	lbu	a5,0(a5)
    1208:	02f70863          	beq	a4,a5,1238 <strncmp+0x70>
    120c:	fec42783          	lw	a5,-20(s0)
    1210:	fdc42703          	lw	a4,-36(s0)
    1214:	00f707b3          	add	a5,a4,a5
    1218:	0007c783          	lbu	a5,0(a5)
    121c:	00078693          	mv	a3,a5
    1220:	fec42783          	lw	a5,-20(s0)
    1224:	fd842703          	lw	a4,-40(s0)
    1228:	00f707b3          	add	a5,a4,a5
    122c:	0007c783          	lbu	a5,0(a5)
    1230:	40f687b3          	sub	a5,a3,a5
    1234:	03c0006f          	j	1270 <strncmp+0xa8>
    1238:	fec42783          	lw	a5,-20(s0)
    123c:	fdc42703          	lw	a4,-36(s0)
    1240:	00f707b3          	add	a5,a4,a5
    1244:	0007c783          	lbu	a5,0(a5)
    1248:	00079663          	bnez	a5,1254 <strncmp+0x8c>
    124c:	00000793          	li	a5,0
    1250:	0200006f          	j	1270 <strncmp+0xa8>
    1254:	fec42783          	lw	a5,-20(s0)
    1258:	00178793          	add	a5,a5,1
    125c:	fef42623          	sw	a5,-20(s0)
    1260:	fec42703          	lw	a4,-20(s0)
    1264:	fd442783          	lw	a5,-44(s0)
    1268:	f8f740e3          	blt	a4,a5,11e8 <strncmp+0x20>
    126c:	00000793          	li	a5,0
    1270:	00078513          	mv	a0,a5
    1274:	02c12403          	lw	s0,44(sp)
    1278:	03010113          	add	sp,sp,48
    127c:	00008067          	ret

00001280 <strcmp>:
    1280:	fd010113          	add	sp,sp,-48
    1284:	02812623          	sw	s0,44(sp)
    1288:	03010413          	add	s0,sp,48
    128c:	fca42e23          	sw	a0,-36(s0)
    1290:	fcb42c23          	sw	a1,-40(s0)
    1294:	fe042623          	sw	zero,-20(s0)
    1298:	fec42783          	lw	a5,-20(s0)
    129c:	fdc42703          	lw	a4,-36(s0)
    12a0:	00f707b3          	add	a5,a4,a5
    12a4:	0007c703          	lbu	a4,0(a5)
    12a8:	fec42783          	lw	a5,-20(s0)
    12ac:	fd842683          	lw	a3,-40(s0)
    12b0:	00f687b3          	add	a5,a3,a5
    12b4:	0007c783          	lbu	a5,0(a5)
    12b8:	02f70863          	beq	a4,a5,12e8 <strcmp+0x68>
    12bc:	fec42783          	lw	a5,-20(s0)
    12c0:	fdc42703          	lw	a4,-36(s0)
    12c4:	00f707b3          	add	a5,a4,a5
    12c8:	0007c783          	lbu	a5,0(a5)
    12cc:	00078693          	mv	a3,a5
    12d0:	fec42783          	lw	a5,-20(s0)
    12d4:	fd842703          	lw	a4,-40(s0)
    12d8:	00f707b3          	add	a5,a4,a5
    12dc:	0007c783          	lbu	a5,0(a5)
    12e0:	40f687b3          	sub	a5,a3,a5
    12e4:	0300006f          	j	1314 <strcmp+0x94>
    12e8:	fec42783          	lw	a5,-20(s0)
    12ec:	fdc42703          	lw	a4,-36(s0)
    12f0:	00f707b3          	add	a5,a4,a5
    12f4:	0007c783          	lbu	a5,0(a5)
    12f8:	00079663          	bnez	a5,1304 <strcmp+0x84>
    12fc:	00000793          	li	a5,0
    1300:	0140006f          	j	1314 <strcmp+0x94>
    1304:	fec42783          	lw	a5,-20(s0)
    1308:	00178793          	add	a5,a5,1
    130c:	fef42623          	sw	a5,-20(s0)
    1310:	f89ff06f          	j	1298 <strcmp+0x18>
    1314:	00078513          	mv	a0,a5
    1318:	02c12403          	lw	s0,44(sp)
    131c:	03010113          	add	sp,sp,48
    1320:	00008067          	ret

00001324 <dump_buffer>:
    1324:	fd010113          	add	sp,sp,-48
    1328:	02112623          	sw	ra,44(sp)
    132c:	02812423          	sw	s0,40(sp)
    1330:	03212223          	sw	s2,36(sp)
    1334:	03312023          	sw	s3,32(sp)
    1338:	03010413          	add	s0,sp,48
    133c:	fca42e23          	sw	a0,-36(s0)
    1340:	fcb42c23          	sw	a1,-40(s0)
    1344:	fdc42783          	lw	a5,-36(s0)
    1348:	fef42623          	sw	a5,-20(s0)
    134c:	fe042423          	sw	zero,-24(s0)
    1350:	0440006f          	j	1394 <dump_buffer+0x70>
    1354:	fec42783          	lw	a5,-20(s0)
    1358:	0007c783          	lbu	a5,0(a5)
    135c:	fef403a3          	sb	a5,-25(s0)
    1360:	fe744783          	lbu	a5,-25(s0)
    1364:	0ff7f793          	zext.b	a5,a5
    1368:	00078913          	mv	s2,a5
    136c:	00000993          	li	s3,0
    1370:	00090513          	mv	a0,s2
    1374:	00098593          	mv	a1,s3
    1378:	d11ff0ef          	jal	1088 <dump_result>
    137c:	fec42783          	lw	a5,-20(s0)
    1380:	00178793          	add	a5,a5,1
    1384:	fef42623          	sw	a5,-20(s0)
    1388:	fe842783          	lw	a5,-24(s0)
    138c:	00178793          	add	a5,a5,1
    1390:	fef42423          	sw	a5,-24(s0)
    1394:	fe842703          	lw	a4,-24(s0)
    1398:	fd842783          	lw	a5,-40(s0)
    139c:	faf74ce3          	blt	a4,a5,1354 <dump_buffer+0x30>
    13a0:	00000013          	nop
    13a4:	00000013          	nop
    13a8:	02c12083          	lw	ra,44(sp)
    13ac:	02812403          	lw	s0,40(sp)
    13b0:	02412903          	lw	s2,36(sp)
    13b4:	02012983          	lw	s3,32(sp)
    13b8:	03010113          	add	sp,sp,48
    13bc:	00008067          	ret

000013c0 <uart_print_hex32>:
    13c0:	fc010113          	add	sp,sp,-64
    13c4:	02112e23          	sw	ra,60(sp)
    13c8:	02812c23          	sw	s0,56(sp)
    13cc:	04010413          	add	s0,sp,64
    13d0:	fca42623          	sw	a0,-52(s0)
    13d4:	00700793          	li	a5,7
    13d8:	fef42623          	sw	a5,-20(s0)
    13dc:	0700006f          	j	144c <uart_print_hex32+0x8c>
    13e0:	fec42783          	lw	a5,-20(s0)
    13e4:	00279793          	sll	a5,a5,0x2
    13e8:	fcc42703          	lw	a4,-52(s0)
    13ec:	40f757b3          	sra	a5,a4,a5
    13f0:	00f7f793          	and	a5,a5,15
    13f4:	fef42423          	sw	a5,-24(s0)
    13f8:	fe842703          	lw	a4,-24(s0)
    13fc:	00900793          	li	a5,9
    1400:	00e7cc63          	blt	a5,a4,1418 <uart_print_hex32+0x58>
    1404:	fe842783          	lw	a5,-24(s0)
    1408:	0ff7f793          	zext.b	a5,a5
    140c:	03078793          	add	a5,a5,48
    1410:	0ff7f793          	zext.b	a5,a5
    1414:	0140006f          	j	1428 <uart_print_hex32+0x68>
    1418:	fe842783          	lw	a5,-24(s0)
    141c:	0ff7f793          	zext.b	a5,a5
    1420:	03778793          	add	a5,a5,55
    1424:	0ff7f793          	zext.b	a5,a5
    1428:	00700693          	li	a3,7
    142c:	fec42703          	lw	a4,-20(s0)
    1430:	40e68733          	sub	a4,a3,a4
    1434:	ff070713          	add	a4,a4,-16
    1438:	00870733          	add	a4,a4,s0
    143c:	fef70623          	sb	a5,-20(a4)
    1440:	fec42783          	lw	a5,-20(s0)
    1444:	fff78793          	add	a5,a5,-1
    1448:	fef42623          	sw	a5,-20(s0)
    144c:	fec42783          	lw	a5,-20(s0)
    1450:	f807d8e3          	bgez	a5,13e0 <uart_print_hex32+0x20>
    1454:	fe040223          	sb	zero,-28(s0)
    1458:	fdc40793          	add	a5,s0,-36
    145c:	00078513          	mv	a0,a5
    1460:	ba9ff0ef          	jal	1008 <uart_print>
    1464:	00000013          	nop
    1468:	03c12083          	lw	ra,60(sp)
    146c:	03812403          	lw	s0,56(sp)
    1470:	04010113          	add	sp,sp,64
    1474:	00008067          	ret

00001478 <uart_print_int32>:
    1478:	fc010113          	add	sp,sp,-64
    147c:	02112e23          	sw	ra,60(sp)
    1480:	02812c23          	sw	s0,56(sp)
    1484:	04010413          	add	s0,sp,64
    1488:	fca42623          	sw	a0,-52(s0)
    148c:	fe042623          	sw	zero,-20(s0)
    1490:	fe0405a3          	sb	zero,-21(s0)
    1494:	fcc42783          	lw	a5,-52(s0)
    1498:	0007dc63          	bgez	a5,14b0 <uart_print_int32+0x38>
    149c:	00100793          	li	a5,1
    14a0:	fef405a3          	sb	a5,-21(s0)
    14a4:	fcc42783          	lw	a5,-52(s0)
    14a8:	40f007b3          	neg	a5,a5
    14ac:	fcf42623          	sw	a5,-52(s0)
    14b0:	fcc42783          	lw	a5,-52(s0)
    14b4:	06079463          	bnez	a5,151c <uart_print_int32+0xa4>
    14b8:	03000513          	li	a0,48
    14bc:	ae9ff0ef          	jal	fa4 <uart_putc>
    14c0:	0b80006f          	j	1578 <uart_print_int32+0x100>
    14c4:	fcc42783          	lw	a5,-52(s0)
    14c8:	00a00593          	li	a1,10
    14cc:	00078513          	mv	a0,a5
    14d0:	624000ef          	jal	1af4 <__modsi3>
    14d4:	00050793          	mv	a5,a0
    14d8:	fef42223          	sw	a5,-28(s0)
    14dc:	fe442783          	lw	a5,-28(s0)
    14e0:	0ff7f713          	zext.b	a4,a5
    14e4:	fec42783          	lw	a5,-20(s0)
    14e8:	00178693          	add	a3,a5,1
    14ec:	fed42623          	sw	a3,-20(s0)
    14f0:	03070713          	add	a4,a4,48
    14f4:	0ff77713          	zext.b	a4,a4
    14f8:	ff078793          	add	a5,a5,-16
    14fc:	008787b3          	add	a5,a5,s0
    1500:	fee78423          	sb	a4,-24(a5)
    1504:	fcc42783          	lw	a5,-52(s0)
    1508:	00a00593          	li	a1,10
    150c:	00078513          	mv	a0,a5
    1510:	560000ef          	jal	1a70 <__divsi3>
    1514:	00050793          	mv	a5,a0
    1518:	fcf42623          	sw	a5,-52(s0)
    151c:	fcc42783          	lw	a5,-52(s0)
    1520:	faf042e3          	bgtz	a5,14c4 <uart_print_int32+0x4c>
    1524:	feb44783          	lbu	a5,-21(s0)
    1528:	04078063          	beqz	a5,1568 <uart_print_int32+0xf0>
    152c:	fec42783          	lw	a5,-20(s0)
    1530:	00178713          	add	a4,a5,1
    1534:	fee42623          	sw	a4,-20(s0)
    1538:	ff078793          	add	a5,a5,-16
    153c:	008787b3          	add	a5,a5,s0
    1540:	02d00713          	li	a4,45
    1544:	fee78423          	sb	a4,-24(a5)
    1548:	0200006f          	j	1568 <uart_print_int32+0xf0>
    154c:	fec42783          	lw	a5,-20(s0)
    1550:	ff078793          	add	a5,a5,-16
    1554:	008787b3          	add	a5,a5,s0
    1558:	fe87c783          	lbu	a5,-24(a5)
    155c:	00078513          	mv	a0,a5
    1560:	a45ff0ef          	jal	fa4 <uart_putc>
    1564:	00000013          	nop
    1568:	fec42783          	lw	a5,-20(s0)
    156c:	fff78713          	add	a4,a5,-1
    1570:	fee42623          	sw	a4,-20(s0)
    1574:	fc079ce3          	bnez	a5,154c <uart_print_int32+0xd4>
    1578:	03c12083          	lw	ra,60(sp)
    157c:	03812403          	lw	s0,56(sp)
    1580:	04010113          	add	sp,sp,64
    1584:	00008067          	ret

00001588 <uart_print_int64>:
    1588:	fb010113          	add	sp,sp,-80
    158c:	04112623          	sw	ra,76(sp)
    1590:	04812423          	sw	s0,72(sp)
    1594:	05010413          	add	s0,sp,80
    1598:	faa42c23          	sw	a0,-72(s0)
    159c:	fab42e23          	sw	a1,-68(s0)
    15a0:	fe042623          	sw	zero,-20(s0)
    15a4:	fe0405a3          	sb	zero,-21(s0)
    15a8:	fbc42783          	lw	a5,-68(s0)
    15ac:	0207de63          	bgez	a5,15e8 <uart_print_int64+0x60>
    15b0:	00100793          	li	a5,1
    15b4:	fef405a3          	sb	a5,-21(s0)
    15b8:	00000613          	li	a2,0
    15bc:	00000693          	li	a3,0
    15c0:	fb842503          	lw	a0,-72(s0)
    15c4:	fbc42583          	lw	a1,-68(s0)
    15c8:	40a60733          	sub	a4,a2,a0
    15cc:	00070813          	mv	a6,a4
    15d0:	01063833          	sltu	a6,a2,a6
    15d4:	40b687b3          	sub	a5,a3,a1
    15d8:	410786b3          	sub	a3,a5,a6
    15dc:	00068793          	mv	a5,a3
    15e0:	fae42c23          	sw	a4,-72(s0)
    15e4:	faf42e23          	sw	a5,-68(s0)
    15e8:	fb842783          	lw	a5,-72(s0)
    15ec:	fbc42703          	lw	a4,-68(s0)
    15f0:	00e7e7b3          	or	a5,a5,a4
    15f4:	08079663          	bnez	a5,1680 <uart_print_int64+0xf8>
    15f8:	03000513          	li	a0,48
    15fc:	9a9ff0ef          	jal	fa4 <uart_putc>
    1600:	0ec0006f          	j	16ec <uart_print_int64+0x164>
    1604:	fb842703          	lw	a4,-72(s0)
    1608:	fbc42783          	lw	a5,-68(s0)
    160c:	00a00613          	li	a2,10
    1610:	00000693          	li	a3,0
    1614:	00070513          	mv	a0,a4
    1618:	00078593          	mv	a1,a5
    161c:	4b5000ef          	jal	22d0 <__moddi3>
    1620:	00050713          	mv	a4,a0
    1624:	00058793          	mv	a5,a1
    1628:	fee42223          	sw	a4,-28(s0)
    162c:	fe442783          	lw	a5,-28(s0)
    1630:	0ff7f713          	zext.b	a4,a5
    1634:	fec42783          	lw	a5,-20(s0)
    1638:	00178693          	add	a3,a5,1
    163c:	fed42623          	sw	a3,-20(s0)
    1640:	03070713          	add	a4,a4,48
    1644:	0ff77713          	zext.b	a4,a4
    1648:	ff078793          	add	a5,a5,-16
    164c:	008787b3          	add	a5,a5,s0
    1650:	fce78e23          	sb	a4,-36(a5)
    1654:	fb842703          	lw	a4,-72(s0)
    1658:	fbc42783          	lw	a5,-68(s0)
    165c:	00a00613          	li	a2,10
    1660:	00000693          	li	a3,0
    1664:	00070513          	mv	a0,a4
    1668:	00078593          	mv	a1,a5
    166c:	594000ef          	jal	1c00 <__divdi3>
    1670:	00050713          	mv	a4,a0
    1674:	00058793          	mv	a5,a1
    1678:	fae42c23          	sw	a4,-72(s0)
    167c:	faf42e23          	sw	a5,-68(s0)
    1680:	fbc42783          	lw	a5,-68(s0)
    1684:	f8f040e3          	bgtz	a5,1604 <uart_print_int64+0x7c>
    1688:	fbc42783          	lw	a5,-68(s0)
    168c:	00079663          	bnez	a5,1698 <uart_print_int64+0x110>
    1690:	fb842783          	lw	a5,-72(s0)
    1694:	f60798e3          	bnez	a5,1604 <uart_print_int64+0x7c>
    1698:	feb44783          	lbu	a5,-21(s0)
    169c:	04078063          	beqz	a5,16dc <uart_print_int64+0x154>
    16a0:	fec42783          	lw	a5,-20(s0)
    16a4:	00178713          	add	a4,a5,1
    16a8:	fee42623          	sw	a4,-20(s0)
    16ac:	ff078793          	add	a5,a5,-16
    16b0:	008787b3          	add	a5,a5,s0
    16b4:	02d00713          	li	a4,45
    16b8:	fce78e23          	sb	a4,-36(a5)
    16bc:	0200006f          	j	16dc <uart_print_int64+0x154>
    16c0:	fec42783          	lw	a5,-20(s0)
    16c4:	ff078793          	add	a5,a5,-16
    16c8:	008787b3          	add	a5,a5,s0
    16cc:	fdc7c783          	lbu	a5,-36(a5)
    16d0:	00078513          	mv	a0,a5
    16d4:	8d1ff0ef          	jal	fa4 <uart_putc>
    16d8:	00000013          	nop
    16dc:	fec42783          	lw	a5,-20(s0)
    16e0:	fff78713          	add	a4,a5,-1
    16e4:	fee42623          	sw	a4,-20(s0)
    16e8:	fc079ce3          	bnez	a5,16c0 <uart_print_int64+0x138>
    16ec:	04c12083          	lw	ra,76(sp)
    16f0:	04812403          	lw	s0,72(sp)
    16f4:	05010113          	add	sp,sp,80
    16f8:	00008067          	ret

000016fc <uart_getline>:
    16fc:	fd010113          	add	sp,sp,-48
    1700:	02112623          	sw	ra,44(sp)
    1704:	02812423          	sw	s0,40(sp)
    1708:	03010413          	add	s0,sp,48
    170c:	fca42e23          	sw	a0,-36(s0)
    1710:	fcb42c23          	sw	a1,-40(s0)
    1714:	fe0405a3          	sb	zero,-21(s0)
    1718:	fe042623          	sw	zero,-20(s0)
    171c:	00100513          	li	a0,1
    1720:	80dff0ef          	jal	f2c <uart_getc>
    1724:	00050793          	mv	a5,a0
    1728:	fef405a3          	sb	a5,-21(s0)
    172c:	feb44703          	lbu	a4,-21(s0)
    1730:	00a00793          	li	a5,10
    1734:	00f70863          	beq	a4,a5,1744 <uart_getline+0x48>
    1738:	feb44703          	lbu	a4,-21(s0)
    173c:	00d00793          	li	a5,13
    1740:	02f71463          	bne	a4,a5,1768 <uart_getline+0x6c>
    1744:	fec42783          	lw	a5,-20(s0)
    1748:	fdc42703          	lw	a4,-36(s0)
    174c:	00f707b3          	add	a5,a4,a5
    1750:	00078023          	sb	zero,0(a5)
    1754:	000307b7          	lui	a5,0x30
    1758:	32478513          	add	a0,a5,804 # 30324 <__fini_array_end+0x25324>
    175c:	8adff0ef          	jal	1008 <uart_print>
    1760:	fe042623          	sw	zero,-20(s0)
    1764:	0cc0006f          	j	1830 <uart_getline+0x134>
    1768:	feb44703          	lbu	a4,-21(s0)
    176c:	00800793          	li	a5,8
    1770:	00f70863          	beq	a4,a5,1780 <uart_getline+0x84>
    1774:	feb44703          	lbu	a4,-21(s0)
    1778:	07f00793          	li	a5,127
    177c:	02f71863          	bne	a4,a5,17ac <uart_getline+0xb0>
    1780:	fec42783          	lw	a5,-20(s0)
    1784:	02f05063          	blez	a5,17a4 <uart_getline+0xa8>
    1788:	fec42783          	lw	a5,-20(s0)
    178c:	fff78793          	add	a5,a5,-1
    1790:	fef42623          	sw	a5,-20(s0)
    1794:	000307b7          	lui	a5,0x30
    1798:	32c78513          	add	a0,a5,812 # 3032c <__fini_array_end+0x2532c>
    179c:	86dff0ef          	jal	1008 <uart_print>
    17a0:	08c0006f          	j	182c <uart_getline+0x130>
    17a4:	fe042623          	sw	zero,-20(s0)
    17a8:	0840006f          	j	182c <uart_getline+0x130>
    17ac:	fd842783          	lw	a5,-40(s0)
    17b0:	fff78793          	add	a5,a5,-1
    17b4:	fec42703          	lw	a4,-20(s0)
    17b8:	f6f752e3          	bge	a4,a5,171c <uart_getline+0x20>
    17bc:	feb44783          	lbu	a5,-21(s0)
    17c0:	02078c63          	beqz	a5,17f8 <uart_getline+0xfc>
    17c4:	fec42783          	lw	a5,-20(s0)
    17c8:	00178713          	add	a4,a5,1
    17cc:	fee42623          	sw	a4,-20(s0)
    17d0:	00078713          	mv	a4,a5
    17d4:	fdc42783          	lw	a5,-36(s0)
    17d8:	00e787b3          	add	a5,a5,a4
    17dc:	feb44703          	lbu	a4,-21(s0)
    17e0:	00e78023          	sb	a4,0(a5)
    17e4:	feb44783          	lbu	a5,-21(s0)
    17e8:	00078513          	mv	a0,a5
    17ec:	fb8ff0ef          	jal	fa4 <uart_putc>
    17f0:	00000013          	nop
    17f4:	f29ff06f          	j	171c <uart_getline+0x20>
    17f8:	fd842783          	lw	a5,-40(s0)
    17fc:	fff78793          	add	a5,a5,-1
    1800:	fdc42703          	lw	a4,-36(s0)
    1804:	00f707b3          	add	a5,a4,a5
    1808:	00078023          	sb	zero,0(a5)
    180c:	000307b7          	lui	a5,0x30
    1810:	33078513          	add	a0,a5,816 # 30330 <__fini_array_end+0x25330>
    1814:	ff4ff0ef          	jal	1008 <uart_print>
    1818:	fd842583          	lw	a1,-40(s0)
    181c:	fdc42503          	lw	a0,-36(s0)
    1820:	b05ff0ef          	jal	1324 <dump_buffer>
    1824:	fe042623          	sw	zero,-20(s0)
    1828:	0080006f          	j	1830 <uart_getline+0x134>
    182c:	ef1ff06f          	j	171c <uart_getline+0x20>
    1830:	00000013          	nop
    1834:	02c12083          	lw	ra,44(sp)
    1838:	02812403          	lw	s0,40(sp)
    183c:	03010113          	add	sp,sp,48
    1840:	00008067          	ret

00001844 <cmd_arg_tokenizer>:
    1844:	fc010113          	add	sp,sp,-64
    1848:	02812e23          	sw	s0,60(sp)
    184c:	04010413          	add	s0,sp,64
    1850:	fca42e23          	sw	a0,-36(s0)
    1854:	fcb42c23          	sw	a1,-40(s0)
    1858:	fcc42a23          	sw	a2,-44(s0)
    185c:	fcd42823          	sw	a3,-48(s0)
    1860:	fce42623          	sw	a4,-52(s0)
    1864:	fe042623          	sw	zero,-20(s0)
    1868:	fe042423          	sw	zero,-24(s0)
    186c:	0300006f          	j	189c <cmd_arg_tokenizer+0x58>
    1870:	fdc42783          	lw	a5,-36(s0)
    1874:	00178713          	add	a4,a5,1
    1878:	fce42e23          	sw	a4,-36(s0)
    187c:	fec42703          	lw	a4,-20(s0)
    1880:	00170693          	add	a3,a4,1
    1884:	fed42623          	sw	a3,-20(s0)
    1888:	00070693          	mv	a3,a4
    188c:	fd842703          	lw	a4,-40(s0)
    1890:	00d70733          	add	a4,a4,a3
    1894:	0007c783          	lbu	a5,0(a5)
    1898:	00f70023          	sb	a5,0(a4)
    189c:	fdc42783          	lw	a5,-36(s0)
    18a0:	0007c783          	lbu	a5,0(a5)
    18a4:	02078263          	beqz	a5,18c8 <cmd_arg_tokenizer+0x84>
    18a8:	fdc42783          	lw	a5,-36(s0)
    18ac:	0007c703          	lbu	a4,0(a5)
    18b0:	02000793          	li	a5,32
    18b4:	00f70a63          	beq	a4,a5,18c8 <cmd_arg_tokenizer+0x84>
    18b8:	fd042783          	lw	a5,-48(s0)
    18bc:	fff78793          	add	a5,a5,-1
    18c0:	fec42703          	lw	a4,-20(s0)
    18c4:	faf746e3          	blt	a4,a5,1870 <cmd_arg_tokenizer+0x2c>
    18c8:	fec42783          	lw	a5,-20(s0)
    18cc:	fd842703          	lw	a4,-40(s0)
    18d0:	00f707b3          	add	a5,a4,a5
    18d4:	00078023          	sb	zero,0(a5)
    18d8:	0100006f          	j	18e8 <cmd_arg_tokenizer+0xa4>
    18dc:	fdc42783          	lw	a5,-36(s0)
    18e0:	00178793          	add	a5,a5,1
    18e4:	fcf42e23          	sw	a5,-36(s0)
    18e8:	fdc42783          	lw	a5,-36(s0)
    18ec:	0007c703          	lbu	a4,0(a5)
    18f0:	02000793          	li	a5,32
    18f4:	fef704e3          	beq	a4,a5,18dc <cmd_arg_tokenizer+0x98>
    18f8:	0300006f          	j	1928 <cmd_arg_tokenizer+0xe4>
    18fc:	fdc42783          	lw	a5,-36(s0)
    1900:	00178713          	add	a4,a5,1
    1904:	fce42e23          	sw	a4,-36(s0)
    1908:	fe842703          	lw	a4,-24(s0)
    190c:	00170693          	add	a3,a4,1
    1910:	fed42423          	sw	a3,-24(s0)
    1914:	00070693          	mv	a3,a4
    1918:	fd442703          	lw	a4,-44(s0)
    191c:	00d70733          	add	a4,a4,a3
    1920:	0007c783          	lbu	a5,0(a5)
    1924:	00f70023          	sb	a5,0(a4)
    1928:	fdc42783          	lw	a5,-36(s0)
    192c:	0007c783          	lbu	a5,0(a5)
    1930:	00078a63          	beqz	a5,1944 <cmd_arg_tokenizer+0x100>
    1934:	fcc42783          	lw	a5,-52(s0)
    1938:	fff78793          	add	a5,a5,-1
    193c:	fe842703          	lw	a4,-24(s0)
    1940:	faf74ee3          	blt	a4,a5,18fc <cmd_arg_tokenizer+0xb8>
    1944:	fe842783          	lw	a5,-24(s0)
    1948:	fd442703          	lw	a4,-44(s0)
    194c:	00f707b3          	add	a5,a4,a5
    1950:	00078023          	sb	zero,0(a5)
    1954:	00000013          	nop
    1958:	03c12403          	lw	s0,60(sp)
    195c:	04010113          	add	sp,sp,64
    1960:	00008067          	ret

00001964 <process_command>:
    1964:	fe010113          	add	sp,sp,-32
    1968:	00112e23          	sw	ra,28(sp)
    196c:	00812c23          	sw	s0,24(sp)
    1970:	02010413          	add	s0,sp,32
    1974:	fea42623          	sw	a0,-20(s0)
    1978:	feb42423          	sw	a1,-24(s0)
    197c:	fec42223          	sw	a2,-28(s0)
    1980:	fec42783          	lw	a5,-20(s0)
    1984:	0007c783          	lbu	a5,0(a5)
    1988:	0a078863          	beqz	a5,1a38 <process_command+0xd4>
    198c:	000307b7          	lui	a5,0x30
    1990:	34478593          	add	a1,a5,836 # 30344 <__fini_array_end+0x25344>
    1994:	fec42503          	lw	a0,-20(s0)
    1998:	8e9ff0ef          	jal	1280 <strcmp>
    199c:	00050793          	mv	a5,a0
    19a0:	00079863          	bnez	a5,19b0 <process_command+0x4c>
    19a4:	fe842503          	lw	a0,-24(s0)
    19a8:	a08ff0ef          	jal	bb0 <cmd_echo>
    19ac:	0900006f          	j	1a3c <process_command+0xd8>
    19b0:	000307b7          	lui	a5,0x30
    19b4:	34c78593          	add	a1,a5,844 # 3034c <__fini_array_end+0x2534c>
    19b8:	fec42503          	lw	a0,-20(s0)
    19bc:	8c5ff0ef          	jal	1280 <strcmp>
    19c0:	00050793          	mv	a5,a0
    19c4:	00079863          	bnez	a5,19d4 <process_command+0x70>
    19c8:	fe842503          	lw	a0,-24(s0)
    19cc:	a20ff0ef          	jal	bec <cmd_help>
    19d0:	06c0006f          	j	1a3c <process_command+0xd8>
    19d4:	000307b7          	lui	a5,0x30
    19d8:	35478593          	add	a1,a5,852 # 30354 <__fini_array_end+0x25354>
    19dc:	fec42503          	lw	a0,-20(s0)
    19e0:	8a1ff0ef          	jal	1280 <strcmp>
    19e4:	00050793          	mv	a5,a0
    19e8:	00079663          	bnez	a5,19f4 <process_command+0x90>
    19ec:	97cff0ef          	jal	b68 <cmd_free>
    19f0:	04c0006f          	j	1a3c <process_command+0xd8>
    19f4:	000307b7          	lui	a5,0x30
    19f8:	35c78593          	add	a1,a5,860 # 3035c <__fini_array_end+0x2535c>
    19fc:	fec42503          	lw	a0,-20(s0)
    1a00:	881ff0ef          	jal	1280 <strcmp>
    1a04:	00050793          	mv	a5,a0
    1a08:	00079a63          	bnez	a5,1a1c <process_command+0xb8>
    1a0c:	fe442583          	lw	a1,-28(s0)
    1a10:	fe842503          	lw	a0,-24(s0)
    1a14:	a48ff0ef          	jal	c5c <cmd_exit>
    1a18:	0240006f          	j	1a3c <process_command+0xd8>
    1a1c:	000307b7          	lui	a5,0x30
    1a20:	36478513          	add	a0,a5,868 # 30364 <__fini_array_end+0x25364>
    1a24:	de4ff0ef          	jal	1008 <uart_print>
    1a28:	000307b7          	lui	a5,0x30
    1a2c:	36878513          	add	a0,a5,872 # 30368 <__fini_array_end+0x25368>
    1a30:	dd8ff0ef          	jal	1008 <uart_print>
    1a34:	0080006f          	j	1a3c <process_command+0xd8>
    1a38:	00000013          	nop
    1a3c:	01c12083          	lw	ra,28(sp)
    1a40:	01812403          	lw	s0,24(sp)
    1a44:	02010113          	add	sp,sp,32
    1a48:	00008067          	ret

00001a4c <__mulsi3>:
    1a4c:	00050613          	mv	a2,a0
    1a50:	00000513          	li	a0,0
    1a54:	0015f693          	and	a3,a1,1
    1a58:	00068463          	beqz	a3,1a60 <__mulsi3+0x14>
    1a5c:	00c50533          	add	a0,a0,a2
    1a60:	0015d593          	srl	a1,a1,0x1
    1a64:	00161613          	sll	a2,a2,0x1
    1a68:	fe0596e3          	bnez	a1,1a54 <__mulsi3+0x8>
    1a6c:	00008067          	ret

00001a70 <__divsi3>:
    1a70:	06054063          	bltz	a0,1ad0 <__umodsi3+0x10>
    1a74:	0605c663          	bltz	a1,1ae0 <__umodsi3+0x20>

00001a78 <__hidden___udivsi3>:
    1a78:	00058613          	mv	a2,a1
    1a7c:	00050593          	mv	a1,a0
    1a80:	fff00513          	li	a0,-1
    1a84:	02060c63          	beqz	a2,1abc <__hidden___udivsi3+0x44>
    1a88:	00100693          	li	a3,1
    1a8c:	00b67a63          	bgeu	a2,a1,1aa0 <__hidden___udivsi3+0x28>
    1a90:	00c05863          	blez	a2,1aa0 <__hidden___udivsi3+0x28>
    1a94:	00161613          	sll	a2,a2,0x1
    1a98:	00169693          	sll	a3,a3,0x1
    1a9c:	feb66ae3          	bltu	a2,a1,1a90 <__hidden___udivsi3+0x18>
    1aa0:	00000513          	li	a0,0
    1aa4:	00c5e663          	bltu	a1,a2,1ab0 <__hidden___udivsi3+0x38>
    1aa8:	40c585b3          	sub	a1,a1,a2
    1aac:	00d56533          	or	a0,a0,a3
    1ab0:	0016d693          	srl	a3,a3,0x1
    1ab4:	00165613          	srl	a2,a2,0x1
    1ab8:	fe0696e3          	bnez	a3,1aa4 <__hidden___udivsi3+0x2c>
    1abc:	00008067          	ret

00001ac0 <__umodsi3>:
    1ac0:	00008293          	mv	t0,ra
    1ac4:	fb5ff0ef          	jal	1a78 <__hidden___udivsi3>
    1ac8:	00058513          	mv	a0,a1
    1acc:	00028067          	jr	t0
    1ad0:	40a00533          	neg	a0,a0
    1ad4:	00b04863          	bgtz	a1,1ae4 <__umodsi3+0x24>
    1ad8:	40b005b3          	neg	a1,a1
    1adc:	f9dff06f          	j	1a78 <__hidden___udivsi3>
    1ae0:	40b005b3          	neg	a1,a1
    1ae4:	00008293          	mv	t0,ra
    1ae8:	f91ff0ef          	jal	1a78 <__hidden___udivsi3>
    1aec:	40a00533          	neg	a0,a0
    1af0:	00028067          	jr	t0

00001af4 <__modsi3>:
    1af4:	00008293          	mv	t0,ra
    1af8:	0005ca63          	bltz	a1,1b0c <__modsi3+0x18>
    1afc:	00054c63          	bltz	a0,1b14 <__modsi3+0x20>
    1b00:	f79ff0ef          	jal	1a78 <__hidden___udivsi3>
    1b04:	00058513          	mv	a0,a1
    1b08:	00028067          	jr	t0
    1b0c:	40b005b3          	neg	a1,a1
    1b10:	fe0558e3          	bgez	a0,1b00 <__modsi3+0xc>
    1b14:	40a00533          	neg	a0,a0
    1b18:	f61ff0ef          	jal	1a78 <__hidden___udivsi3>
    1b1c:	40b00533          	neg	a0,a1
    1b20:	00028067          	jr	t0

00001b24 <memset>:
    1b24:	00f00313          	li	t1,15
    1b28:	00050713          	mv	a4,a0
    1b2c:	02c37e63          	bgeu	t1,a2,1b68 <memset+0x44>
    1b30:	00f77793          	and	a5,a4,15
    1b34:	0a079063          	bnez	a5,1bd4 <memset+0xb0>
    1b38:	08059263          	bnez	a1,1bbc <memset+0x98>
    1b3c:	ff067693          	and	a3,a2,-16
    1b40:	00f67613          	and	a2,a2,15
    1b44:	00e686b3          	add	a3,a3,a4
    1b48:	00b72023          	sw	a1,0(a4)
    1b4c:	00b72223          	sw	a1,4(a4)
    1b50:	00b72423          	sw	a1,8(a4)
    1b54:	00b72623          	sw	a1,12(a4)
    1b58:	01070713          	add	a4,a4,16
    1b5c:	fed766e3          	bltu	a4,a3,1b48 <memset+0x24>
    1b60:	00061463          	bnez	a2,1b68 <memset+0x44>
    1b64:	00008067          	ret
    1b68:	40c306b3          	sub	a3,t1,a2
    1b6c:	00269693          	sll	a3,a3,0x2
    1b70:	00000297          	auipc	t0,0x0
    1b74:	005686b3          	add	a3,a3,t0
    1b78:	00c68067          	jr	12(a3)
    1b7c:	00b70723          	sb	a1,14(a4)
    1b80:	00b706a3          	sb	a1,13(a4)
    1b84:	00b70623          	sb	a1,12(a4)
    1b88:	00b705a3          	sb	a1,11(a4)
    1b8c:	00b70523          	sb	a1,10(a4)
    1b90:	00b704a3          	sb	a1,9(a4)
    1b94:	00b70423          	sb	a1,8(a4)
    1b98:	00b703a3          	sb	a1,7(a4)
    1b9c:	00b70323          	sb	a1,6(a4)
    1ba0:	00b702a3          	sb	a1,5(a4)
    1ba4:	00b70223          	sb	a1,4(a4)
    1ba8:	00b701a3          	sb	a1,3(a4)
    1bac:	00b70123          	sb	a1,2(a4)
    1bb0:	00b700a3          	sb	a1,1(a4)
    1bb4:	00b70023          	sb	a1,0(a4)
    1bb8:	00008067          	ret
    1bbc:	0ff5f593          	zext.b	a1,a1
    1bc0:	00859693          	sll	a3,a1,0x8
    1bc4:	00d5e5b3          	or	a1,a1,a3
    1bc8:	01059693          	sll	a3,a1,0x10
    1bcc:	00d5e5b3          	or	a1,a1,a3
    1bd0:	f6dff06f          	j	1b3c <memset+0x18>
    1bd4:	00279693          	sll	a3,a5,0x2
    1bd8:	00000297          	auipc	t0,0x0
    1bdc:	005686b3          	add	a3,a3,t0
    1be0:	00008293          	mv	t0,ra
    1be4:	fa0680e7          	jalr	-96(a3)
    1be8:	00028093          	mv	ra,t0
    1bec:	ff078793          	add	a5,a5,-16
    1bf0:	40f70733          	sub	a4,a4,a5
    1bf4:	00f60633          	add	a2,a2,a5
    1bf8:	f6c378e3          	bgeu	t1,a2,1b68 <memset+0x44>
    1bfc:	f3dff06f          	j	1b38 <memset+0x14>

00001c00 <__divdi3>:
    1c00:	fd010113          	add	sp,sp,-48
    1c04:	03212023          	sw	s2,32(sp)
    1c08:	01412c23          	sw	s4,24(sp)
    1c0c:	02112623          	sw	ra,44(sp)
    1c10:	02912223          	sw	s1,36(sp)
    1c14:	01312e23          	sw	s3,28(sp)
    1c18:	01712623          	sw	s7,12(sp)
    1c1c:	00050913          	mv	s2,a0
    1c20:	00000a13          	li	s4,0
    1c24:	1a05c663          	bltz	a1,1dd0 <__divdi3+0x1d0>
    1c28:	0006dc63          	bgez	a3,1c40 <__divdi3+0x40>
    1c2c:	00c037b3          	snez	a5,a2
    1c30:	40d006b3          	neg	a3,a3
    1c34:	fffa4a13          	not	s4,s4
    1c38:	40f686b3          	sub	a3,a3,a5
    1c3c:	40c00633          	neg	a2,a2
    1c40:	00060b93          	mv	s7,a2
    1c44:	00090993          	mv	s3,s2
    1c48:	00058493          	mv	s1,a1
    1c4c:	14069063          	bnez	a3,1d8c <__divdi3+0x18c>
    1c50:	02812423          	sw	s0,40(sp)
    1c54:	01512a23          	sw	s5,20(sp)
    1c58:	01612823          	sw	s6,16(sp)
    1c5c:	1cc5fe63          	bgeu	a1,a2,1e38 <__divdi3+0x238>
    1c60:	000107b7          	lui	a5,0x10
    1c64:	2ef66463          	bltu	a2,a5,1f4c <__divdi3+0x34c>
    1c68:	010007b7          	lui	a5,0x1000
    1c6c:	01800713          	li	a4,24
    1c70:	00f67463          	bgeu	a2,a5,1c78 <__divdi3+0x78>
    1c74:	01000713          	li	a4,16
    1c78:	00e656b3          	srl	a3,a2,a4
    1c7c:	0002e797          	auipc	a5,0x2e
    1c80:	70c78793          	add	a5,a5,1804 # 30388 <__clz_tab>
    1c84:	00d787b3          	add	a5,a5,a3
    1c88:	0007c783          	lbu	a5,0(a5)
    1c8c:	02000693          	li	a3,32
    1c90:	00e787b3          	add	a5,a5,a4
    1c94:	40f68733          	sub	a4,a3,a5
    1c98:	00f68c63          	beq	a3,a5,1cb0 <__divdi3+0xb0>
    1c9c:	00e594b3          	sll	s1,a1,a4
    1ca0:	00f957b3          	srl	a5,s2,a5
    1ca4:	00e61bb3          	sll	s7,a2,a4
    1ca8:	0097e4b3          	or	s1,a5,s1
    1cac:	00e919b3          	sll	s3,s2,a4
    1cb0:	010bda93          	srl	s5,s7,0x10
    1cb4:	000a8593          	mv	a1,s5
    1cb8:	00048513          	mv	a0,s1
    1cbc:	010b9b13          	sll	s6,s7,0x10
    1cc0:	db9ff0ef          	jal	1a78 <__hidden___udivsi3>
    1cc4:	010b5b13          	srl	s6,s6,0x10
    1cc8:	00050593          	mv	a1,a0
    1ccc:	00050413          	mv	s0,a0
    1cd0:	000b0513          	mv	a0,s6
    1cd4:	d79ff0ef          	jal	1a4c <__mulsi3>
    1cd8:	00050793          	mv	a5,a0
    1cdc:	000a8593          	mv	a1,s5
    1ce0:	00048513          	mv	a0,s1
    1ce4:	00078493          	mv	s1,a5
    1ce8:	dd9ff0ef          	jal	1ac0 <__umodsi3>
    1cec:	01051513          	sll	a0,a0,0x10
    1cf0:	0109d793          	srl	a5,s3,0x10
    1cf4:	00a7e7b3          	or	a5,a5,a0
    1cf8:	0097fc63          	bgeu	a5,s1,1d10 <__divdi3+0x110>
    1cfc:	00fb87b3          	add	a5,s7,a5
    1d00:	fff40713          	add	a4,s0,-1
    1d04:	0177e463          	bltu	a5,s7,1d0c <__divdi3+0x10c>
    1d08:	5a97e863          	bltu	a5,s1,22b8 <__divdi3+0x6b8>
    1d0c:	00070413          	mv	s0,a4
    1d10:	409784b3          	sub	s1,a5,s1
    1d14:	000a8593          	mv	a1,s5
    1d18:	00048513          	mv	a0,s1
    1d1c:	d5dff0ef          	jal	1a78 <__hidden___udivsi3>
    1d20:	00050593          	mv	a1,a0
    1d24:	00050913          	mv	s2,a0
    1d28:	000b0513          	mv	a0,s6
    1d2c:	d21ff0ef          	jal	1a4c <__mulsi3>
    1d30:	00050793          	mv	a5,a0
    1d34:	000a8593          	mv	a1,s5
    1d38:	00048513          	mv	a0,s1
    1d3c:	01099993          	sll	s3,s3,0x10
    1d40:	00078493          	mv	s1,a5
    1d44:	d7dff0ef          	jal	1ac0 <__umodsi3>
    1d48:	01051513          	sll	a0,a0,0x10
    1d4c:	0109d993          	srl	s3,s3,0x10
    1d50:	00a9e9b3          	or	s3,s3,a0
    1d54:	0099fe63          	bgeu	s3,s1,1d70 <__divdi3+0x170>
    1d58:	013b89b3          	add	s3,s7,s3
    1d5c:	fff90793          	add	a5,s2,-1
    1d60:	0179e663          	bltu	s3,s7,1d6c <__divdi3+0x16c>
    1d64:	ffe90913          	add	s2,s2,-2
    1d68:	0099e463          	bltu	s3,s1,1d70 <__divdi3+0x170>
    1d6c:	00078913          	mv	s2,a5
    1d70:	01041413          	sll	s0,s0,0x10
    1d74:	01246533          	or	a0,s0,s2
    1d78:	01412a83          	lw	s5,20(sp)
    1d7c:	02812403          	lw	s0,40(sp)
    1d80:	01012b03          	lw	s6,16(sp)
    1d84:	00000913          	li	s2,0
    1d88:	0100006f          	j	1d98 <__divdi3+0x198>
    1d8c:	04d5fe63          	bgeu	a1,a3,1de8 <__divdi3+0x1e8>
    1d90:	00000913          	li	s2,0
    1d94:	00000513          	li	a0,0
    1d98:	00090593          	mv	a1,s2
    1d9c:	000a0a63          	beqz	s4,1db0 <__divdi3+0x1b0>
    1da0:	00a037b3          	snez	a5,a0
    1da4:	412005b3          	neg	a1,s2
    1da8:	40f585b3          	sub	a1,a1,a5
    1dac:	40a00533          	neg	a0,a0
    1db0:	02c12083          	lw	ra,44(sp)
    1db4:	02412483          	lw	s1,36(sp)
    1db8:	02012903          	lw	s2,32(sp)
    1dbc:	01c12983          	lw	s3,28(sp)
    1dc0:	01812a03          	lw	s4,24(sp)
    1dc4:	00c12b83          	lw	s7,12(sp)
    1dc8:	03010113          	add	sp,sp,48
    1dcc:	00008067          	ret
    1dd0:	00a037b3          	snez	a5,a0
    1dd4:	40b005b3          	neg	a1,a1
    1dd8:	40f585b3          	sub	a1,a1,a5
    1ddc:	40a00933          	neg	s2,a0
    1de0:	fff00a13          	li	s4,-1
    1de4:	e45ff06f          	j	1c28 <__divdi3+0x28>
    1de8:	000107b7          	lui	a5,0x10
    1dec:	28f6e463          	bltu	a3,a5,2074 <__divdi3+0x474>
    1df0:	01000737          	lui	a4,0x1000
    1df4:	01800793          	li	a5,24
    1df8:	00e6f463          	bgeu	a3,a4,1e00 <__divdi3+0x200>
    1dfc:	01000793          	li	a5,16
    1e00:	00f6d533          	srl	a0,a3,a5
    1e04:	0002e717          	auipc	a4,0x2e
    1e08:	58470713          	add	a4,a4,1412 # 30388 <__clz_tab>
    1e0c:	00a70733          	add	a4,a4,a0
    1e10:	00074703          	lbu	a4,0(a4)
    1e14:	02000513          	li	a0,32
    1e18:	00f70733          	add	a4,a4,a5
    1e1c:	40e50bb3          	sub	s7,a0,a4
    1e20:	28e51263          	bne	a0,a4,20a4 <__divdi3+0x4a4>
    1e24:	44b6ee63          	bltu	a3,a1,2280 <__divdi3+0x680>
    1e28:	00c93533          	sltu	a0,s2,a2
    1e2c:	00153513          	seqz	a0,a0
    1e30:	00000913          	li	s2,0
    1e34:	f65ff06f          	j	1d98 <__divdi3+0x198>
    1e38:	12060263          	beqz	a2,1f5c <__divdi3+0x35c>
    1e3c:	000107b7          	lui	a5,0x10
    1e40:	42f67663          	bgeu	a2,a5,226c <__divdi3+0x66c>
    1e44:	10063713          	sltiu	a4,a2,256
    1e48:	00173713          	seqz	a4,a4
    1e4c:	00371713          	sll	a4,a4,0x3
    1e50:	00e656b3          	srl	a3,a2,a4
    1e54:	0002e797          	auipc	a5,0x2e
    1e58:	53478793          	add	a5,a5,1332 # 30388 <__clz_tab>
    1e5c:	00d787b3          	add	a5,a5,a3
    1e60:	0007ca83          	lbu	s5,0(a5)
    1e64:	02000793          	li	a5,32
    1e68:	00ea8ab3          	add	s5,s5,a4
    1e6c:	41578733          	sub	a4,a5,s5
    1e70:	11579a63          	bne	a5,s5,1f84 <__divdi3+0x384>
    1e74:	01061493          	sll	s1,a2,0x10
    1e78:	40c58ab3          	sub	s5,a1,a2
    1e7c:	01065b13          	srl	s6,a2,0x10
    1e80:	0104d493          	srl	s1,s1,0x10
    1e84:	00100913          	li	s2,1
    1e88:	000b0593          	mv	a1,s6
    1e8c:	000a8513          	mv	a0,s5
    1e90:	be9ff0ef          	jal	1a78 <__hidden___udivsi3>
    1e94:	00048593          	mv	a1,s1
    1e98:	00050413          	mv	s0,a0
    1e9c:	bb1ff0ef          	jal	1a4c <__mulsi3>
    1ea0:	00050793          	mv	a5,a0
    1ea4:	000b0593          	mv	a1,s6
    1ea8:	000a8513          	mv	a0,s5
    1eac:	00078a93          	mv	s5,a5
    1eb0:	c11ff0ef          	jal	1ac0 <__umodsi3>
    1eb4:	01051513          	sll	a0,a0,0x10
    1eb8:	0109d793          	srl	a5,s3,0x10
    1ebc:	00a7e7b3          	or	a5,a5,a0
    1ec0:	0157fc63          	bgeu	a5,s5,1ed8 <__divdi3+0x2d8>
    1ec4:	00fb87b3          	add	a5,s7,a5
    1ec8:	fff40713          	add	a4,s0,-1
    1ecc:	0177e463          	bltu	a5,s7,1ed4 <__divdi3+0x2d4>
    1ed0:	3d57ee63          	bltu	a5,s5,22ac <__divdi3+0x6ac>
    1ed4:	00070413          	mv	s0,a4
    1ed8:	41578ab3          	sub	s5,a5,s5
    1edc:	000b0593          	mv	a1,s6
    1ee0:	000a8513          	mv	a0,s5
    1ee4:	b95ff0ef          	jal	1a78 <__hidden___udivsi3>
    1ee8:	00048593          	mv	a1,s1
    1eec:	00050493          	mv	s1,a0
    1ef0:	b5dff0ef          	jal	1a4c <__mulsi3>
    1ef4:	00050793          	mv	a5,a0
    1ef8:	000b0593          	mv	a1,s6
    1efc:	000a8513          	mv	a0,s5
    1f00:	01099993          	sll	s3,s3,0x10
    1f04:	00078a93          	mv	s5,a5
    1f08:	bb9ff0ef          	jal	1ac0 <__umodsi3>
    1f0c:	01051513          	sll	a0,a0,0x10
    1f10:	0109d993          	srl	s3,s3,0x10
    1f14:	00a9e9b3          	or	s3,s3,a0
    1f18:	0159fe63          	bgeu	s3,s5,1f34 <__divdi3+0x334>
    1f1c:	013b89b3          	add	s3,s7,s3
    1f20:	fff48793          	add	a5,s1,-1
    1f24:	0179e663          	bltu	s3,s7,1f30 <__divdi3+0x330>
    1f28:	ffe48493          	add	s1,s1,-2
    1f2c:	0159e463          	bltu	s3,s5,1f34 <__divdi3+0x334>
    1f30:	00078493          	mv	s1,a5
    1f34:	01041513          	sll	a0,s0,0x10
    1f38:	01412a83          	lw	s5,20(sp)
    1f3c:	02812403          	lw	s0,40(sp)
    1f40:	01012b03          	lw	s6,16(sp)
    1f44:	00956533          	or	a0,a0,s1
    1f48:	e51ff06f          	j	1d98 <__divdi3+0x198>
    1f4c:	10063713          	sltiu	a4,a2,256
    1f50:	00173713          	seqz	a4,a4
    1f54:	00371713          	sll	a4,a4,0x3
    1f58:	d21ff06f          	j	1c78 <__divdi3+0x78>
    1f5c:	00000693          	li	a3,0
    1f60:	0002e797          	auipc	a5,0x2e
    1f64:	42878793          	add	a5,a5,1064 # 30388 <__clz_tab>
    1f68:	00d787b3          	add	a5,a5,a3
    1f6c:	0007ca83          	lbu	s5,0(a5)
    1f70:	00000713          	li	a4,0
    1f74:	02000793          	li	a5,32
    1f78:	00ea8ab3          	add	s5,s5,a4
    1f7c:	41578733          	sub	a4,a5,s5
    1f80:	ef578ae3          	beq	a5,s5,1e74 <__divdi3+0x274>
    1f84:	00e61bb3          	sll	s7,a2,a4
    1f88:	01812423          	sw	s8,8(sp)
    1f8c:	010bdb13          	srl	s6,s7,0x10
    1f90:	0155dc33          	srl	s8,a1,s5
    1f94:	00e597b3          	sll	a5,a1,a4
    1f98:	01595ab3          	srl	s5,s2,s5
    1f9c:	000b0593          	mv	a1,s6
    1fa0:	000c0513          	mv	a0,s8
    1fa4:	010b9493          	sll	s1,s7,0x10
    1fa8:	00faeab3          	or	s5,s5,a5
    1fac:	00e919b3          	sll	s3,s2,a4
    1fb0:	0104d493          	srl	s1,s1,0x10
    1fb4:	ac5ff0ef          	jal	1a78 <__hidden___udivsi3>
    1fb8:	00050593          	mv	a1,a0
    1fbc:	00050913          	mv	s2,a0
    1fc0:	00048513          	mv	a0,s1
    1fc4:	a89ff0ef          	jal	1a4c <__mulsi3>
    1fc8:	00050413          	mv	s0,a0
    1fcc:	000b0593          	mv	a1,s6
    1fd0:	000c0513          	mv	a0,s8
    1fd4:	aedff0ef          	jal	1ac0 <__umodsi3>
    1fd8:	01051513          	sll	a0,a0,0x10
    1fdc:	010ad793          	srl	a5,s5,0x10
    1fe0:	00a7e7b3          	or	a5,a5,a0
    1fe4:	0087fe63          	bgeu	a5,s0,2000 <__divdi3+0x400>
    1fe8:	00fb87b3          	add	a5,s7,a5
    1fec:	fff90713          	add	a4,s2,-1
    1ff0:	2b77e663          	bltu	a5,s7,229c <__divdi3+0x69c>
    1ff4:	2a87f463          	bgeu	a5,s0,229c <__divdi3+0x69c>
    1ff8:	ffe90913          	add	s2,s2,-2
    1ffc:	017787b3          	add	a5,a5,s7
    2000:	40878433          	sub	s0,a5,s0
    2004:	000b0593          	mv	a1,s6
    2008:	00040513          	mv	a0,s0
    200c:	a6dff0ef          	jal	1a78 <__hidden___udivsi3>
    2010:	00050593          	mv	a1,a0
    2014:	00050c13          	mv	s8,a0
    2018:	00048513          	mv	a0,s1
    201c:	a31ff0ef          	jal	1a4c <__mulsi3>
    2020:	00050793          	mv	a5,a0
    2024:	000b0593          	mv	a1,s6
    2028:	00040513          	mv	a0,s0
    202c:	010a9a93          	sll	s5,s5,0x10
    2030:	00078413          	mv	s0,a5
    2034:	a8dff0ef          	jal	1ac0 <__umodsi3>
    2038:	01051513          	sll	a0,a0,0x10
    203c:	010ada93          	srl	s5,s5,0x10
    2040:	00aaeab3          	or	s5,s5,a0
    2044:	008afe63          	bgeu	s5,s0,2060 <__divdi3+0x460>
    2048:	015b8ab3          	add	s5,s7,s5
    204c:	fffc0793          	add	a5,s8,-1
    2050:	237aee63          	bltu	s5,s7,228c <__divdi3+0x68c>
    2054:	228afc63          	bgeu	s5,s0,228c <__divdi3+0x68c>
    2058:	ffec0c13          	add	s8,s8,-2
    205c:	017a8ab3          	add	s5,s5,s7
    2060:	01091913          	sll	s2,s2,0x10
    2064:	01896933          	or	s2,s2,s8
    2068:	408a8ab3          	sub	s5,s5,s0
    206c:	00812c03          	lw	s8,8(sp)
    2070:	e19ff06f          	j	1e88 <__divdi3+0x288>
    2074:	1006b793          	sltiu	a5,a3,256
    2078:	0017b793          	seqz	a5,a5
    207c:	00379793          	sll	a5,a5,0x3
    2080:	00f6d533          	srl	a0,a3,a5
    2084:	0002e717          	auipc	a4,0x2e
    2088:	30470713          	add	a4,a4,772 # 30388 <__clz_tab>
    208c:	00a70733          	add	a4,a4,a0
    2090:	00074703          	lbu	a4,0(a4)
    2094:	02000513          	li	a0,32
    2098:	00f70733          	add	a4,a4,a5
    209c:	40e50bb3          	sub	s7,a0,a4
    20a0:	d8e502e3          	beq	a0,a4,1e24 <__divdi3+0x224>
    20a4:	017696b3          	sll	a3,a3,s7
    20a8:	01a12023          	sw	s10,0(sp)
    20ac:	00e65d33          	srl	s10,a2,a4
    20b0:	00dd6d33          	or	s10,s10,a3
    20b4:	01512a23          	sw	s5,20(sp)
    20b8:	01912223          	sw	s9,4(sp)
    20bc:	010d5a93          	srl	s5,s10,0x10
    20c0:	00e5dcb3          	srl	s9,a1,a4
    20c4:	017597b3          	sll	a5,a1,s7
    20c8:	00e95733          	srl	a4,s2,a4
    20cc:	01812423          	sw	s8,8(sp)
    20d0:	000a8593          	mv	a1,s5
    20d4:	000c8513          	mv	a0,s9
    20d8:	010d1c13          	sll	s8,s10,0x10
    20dc:	00f769b3          	or	s3,a4,a5
    20e0:	017614b3          	sll	s1,a2,s7
    20e4:	02812423          	sw	s0,40(sp)
    20e8:	01612823          	sw	s6,16(sp)
    20ec:	010c5c13          	srl	s8,s8,0x10
    20f0:	989ff0ef          	jal	1a78 <__hidden___udivsi3>
    20f4:	00050593          	mv	a1,a0
    20f8:	00050413          	mv	s0,a0
    20fc:	000c0513          	mv	a0,s8
    2100:	94dff0ef          	jal	1a4c <__mulsi3>
    2104:	00050b13          	mv	s6,a0
    2108:	000a8593          	mv	a1,s5
    210c:	000c8513          	mv	a0,s9
    2110:	9b1ff0ef          	jal	1ac0 <__umodsi3>
    2114:	01051513          	sll	a0,a0,0x10
    2118:	0109d793          	srl	a5,s3,0x10
    211c:	00a7e7b3          	or	a5,a5,a0
    2120:	0167fe63          	bgeu	a5,s6,213c <__divdi3+0x53c>
    2124:	00fd07b3          	add	a5,s10,a5
    2128:	fff40713          	add	a4,s0,-1
    212c:	17a7ec63          	bltu	a5,s10,22a4 <__divdi3+0x6a4>
    2130:	1767fa63          	bgeu	a5,s6,22a4 <__divdi3+0x6a4>
    2134:	ffe40413          	add	s0,s0,-2
    2138:	01a787b3          	add	a5,a5,s10
    213c:	41678b33          	sub	s6,a5,s6
    2140:	000a8593          	mv	a1,s5
    2144:	000b0513          	mv	a0,s6
    2148:	931ff0ef          	jal	1a78 <__hidden___udivsi3>
    214c:	00050593          	mv	a1,a0
    2150:	00050c93          	mv	s9,a0
    2154:	000c0513          	mv	a0,s8
    2158:	8f5ff0ef          	jal	1a4c <__mulsi3>
    215c:	00050793          	mv	a5,a0
    2160:	000a8593          	mv	a1,s5
    2164:	000b0513          	mv	a0,s6
    2168:	00078a93          	mv	s5,a5
    216c:	955ff0ef          	jal	1ac0 <__umodsi3>
    2170:	01099713          	sll	a4,s3,0x10
    2174:	01051513          	sll	a0,a0,0x10
    2178:	01075713          	srl	a4,a4,0x10
    217c:	00a76733          	or	a4,a4,a0
    2180:	01577e63          	bgeu	a4,s5,219c <__divdi3+0x59c>
    2184:	00ed0733          	add	a4,s10,a4
    2188:	fffc8793          	add	a5,s9,-1
    218c:	11a76463          	bltu	a4,s10,2294 <__divdi3+0x694>
    2190:	11577263          	bgeu	a4,s5,2294 <__divdi3+0x694>
    2194:	ffec8c93          	add	s9,s9,-2
    2198:	01a70733          	add	a4,a4,s10
    219c:	01041513          	sll	a0,s0,0x10
    21a0:	00010337          	lui	t1,0x10
    21a4:	01956433          	or	s0,a0,s9
    21a8:	fff30793          	add	a5,t1,-1 # ffff <__fini_array_end+0x4fff>
    21ac:	00f47833          	and	a6,s0,a5
    21b0:	00f4f7b3          	and	a5,s1,a5
    21b4:	41570733          	sub	a4,a4,s5
    21b8:	01045e93          	srl	t4,s0,0x10
    21bc:	0104d493          	srl	s1,s1,0x10
    21c0:	00080513          	mv	a0,a6
    21c4:	00078593          	mv	a1,a5
    21c8:	885ff0ef          	jal	1a4c <__mulsi3>
    21cc:	00050e13          	mv	t3,a0
    21d0:	00048593          	mv	a1,s1
    21d4:	00080513          	mv	a0,a6
    21d8:	875ff0ef          	jal	1a4c <__mulsi3>
    21dc:	00050813          	mv	a6,a0
    21e0:	00078593          	mv	a1,a5
    21e4:	000e8513          	mv	a0,t4
    21e8:	865ff0ef          	jal	1a4c <__mulsi3>
    21ec:	00050893          	mv	a7,a0
    21f0:	00048593          	mv	a1,s1
    21f4:	000e8513          	mv	a0,t4
    21f8:	855ff0ef          	jal	1a4c <__mulsi3>
    21fc:	010e5793          	srl	a5,t3,0x10
    2200:	01180833          	add	a6,a6,a7
    2204:	010787b3          	add	a5,a5,a6
    2208:	0117f463          	bgeu	a5,a7,2210 <__divdi3+0x610>
    220c:	00650533          	add	a0,a0,t1
    2210:	0107d693          	srl	a3,a5,0x10
    2214:	00a686b3          	add	a3,a3,a0
    2218:	04d76663          	bltu	a4,a3,2264 <__divdi3+0x664>
    221c:	02d70463          	beq	a4,a3,2244 <__divdi3+0x644>
    2220:	00040513          	mv	a0,s0
    2224:	02812403          	lw	s0,40(sp)
    2228:	01412a83          	lw	s5,20(sp)
    222c:	01012b03          	lw	s6,16(sp)
    2230:	00812c03          	lw	s8,8(sp)
    2234:	00412c83          	lw	s9,4(sp)
    2238:	00012d03          	lw	s10,0(sp)
    223c:	00000913          	li	s2,0
    2240:	b59ff06f          	j	1d98 <__divdi3+0x198>
    2244:	00010737          	lui	a4,0x10
    2248:	fff70713          	add	a4,a4,-1 # ffff <__fini_array_end+0x4fff>
    224c:	00e7f7b3          	and	a5,a5,a4
    2250:	01079793          	sll	a5,a5,0x10
    2254:	00ee7e33          	and	t3,t3,a4
    2258:	01791533          	sll	a0,s2,s7
    225c:	01c787b3          	add	a5,a5,t3
    2260:	fcf570e3          	bgeu	a0,a5,2220 <__divdi3+0x620>
    2264:	fff40513          	add	a0,s0,-1
    2268:	fbdff06f          	j	2224 <__divdi3+0x624>
    226c:	010007b7          	lui	a5,0x1000
    2270:	04f67a63          	bgeu	a2,a5,22c4 <__divdi3+0x6c4>
    2274:	01065693          	srl	a3,a2,0x10
    2278:	01000713          	li	a4,16
    227c:	bd9ff06f          	j	1e54 <__divdi3+0x254>
    2280:	00000913          	li	s2,0
    2284:	00100513          	li	a0,1
    2288:	b11ff06f          	j	1d98 <__divdi3+0x198>
    228c:	00078c13          	mv	s8,a5
    2290:	dd1ff06f          	j	2060 <__divdi3+0x460>
    2294:	00078c93          	mv	s9,a5
    2298:	f05ff06f          	j	219c <__divdi3+0x59c>
    229c:	00070913          	mv	s2,a4
    22a0:	d61ff06f          	j	2000 <__divdi3+0x400>
    22a4:	00070413          	mv	s0,a4
    22a8:	e95ff06f          	j	213c <__divdi3+0x53c>
    22ac:	ffe40413          	add	s0,s0,-2
    22b0:	017787b3          	add	a5,a5,s7
    22b4:	c25ff06f          	j	1ed8 <__divdi3+0x2d8>
    22b8:	ffe40413          	add	s0,s0,-2
    22bc:	017787b3          	add	a5,a5,s7
    22c0:	a51ff06f          	j	1d10 <__divdi3+0x110>
    22c4:	01865693          	srl	a3,a2,0x18
    22c8:	01800713          	li	a4,24
    22cc:	b89ff06f          	j	1e54 <__divdi3+0x254>

000022d0 <__moddi3>:
    22d0:	fc010113          	add	sp,sp,-64
    22d4:	02812c23          	sw	s0,56(sp)
    22d8:	02112e23          	sw	ra,60(sp)
    22dc:	03212823          	sw	s2,48(sp)
    22e0:	03312623          	sw	s3,44(sp)
    22e4:	03412423          	sw	s4,40(sp)
    22e8:	00050793          	mv	a5,a0
    22ec:	00000413          	li	s0,0
    22f0:	1c05cc63          	bltz	a1,24c8 <__moddi3+0x1f8>
    22f4:	0006da63          	bgez	a3,2308 <__moddi3+0x38>
    22f8:	00c03733          	snez	a4,a2
    22fc:	40d006b3          	neg	a3,a3
    2300:	40e686b3          	sub	a3,a3,a4
    2304:	40c00633          	neg	a2,a2
    2308:	00060993          	mv	s3,a2
    230c:	00078a13          	mv	s4,a5
    2310:	00058913          	mv	s2,a1
    2314:	14069663          	bnez	a3,2460 <__moddi3+0x190>
    2318:	02912a23          	sw	s1,52(sp)
    231c:	03512223          	sw	s5,36(sp)
    2320:	03612023          	sw	s6,32(sp)
    2324:	1ac5fe63          	bgeu	a1,a2,24e0 <__moddi3+0x210>
    2328:	00010737          	lui	a4,0x10
    232c:	28e66463          	bltu	a2,a4,25b4 <__moddi3+0x2e4>
    2330:	01000737          	lui	a4,0x1000
    2334:	01800693          	li	a3,24
    2338:	00e67463          	bgeu	a2,a4,2340 <__moddi3+0x70>
    233c:	01000693          	li	a3,16
    2340:	00d65533          	srl	a0,a2,a3
    2344:	0002e717          	auipc	a4,0x2e
    2348:	04470713          	add	a4,a4,68 # 30388 <__clz_tab>
    234c:	00a70733          	add	a4,a4,a0
    2350:	00074703          	lbu	a4,0(a4)
    2354:	02000513          	li	a0,32
    2358:	00d70733          	add	a4,a4,a3
    235c:	40e504b3          	sub	s1,a0,a4
    2360:	00e50c63          	beq	a0,a4,2378 <__moddi3+0xa8>
    2364:	00959933          	sll	s2,a1,s1
    2368:	00e7d733          	srl	a4,a5,a4
    236c:	009619b3          	sll	s3,a2,s1
    2370:	01276933          	or	s2,a4,s2
    2374:	00979a33          	sll	s4,a5,s1
    2378:	0109da93          	srl	s5,s3,0x10
    237c:	000a8593          	mv	a1,s5
    2380:	00090513          	mv	a0,s2
    2384:	01099b13          	sll	s6,s3,0x10
    2388:	ef0ff0ef          	jal	1a78 <__hidden___udivsi3>
    238c:	010b5b13          	srl	s6,s6,0x10
    2390:	000b0593          	mv	a1,s6
    2394:	eb8ff0ef          	jal	1a4c <__mulsi3>
    2398:	00050793          	mv	a5,a0
    239c:	000a8593          	mv	a1,s5
    23a0:	00090513          	mv	a0,s2
    23a4:	00078913          	mv	s2,a5
    23a8:	f18ff0ef          	jal	1ac0 <__umodsi3>
    23ac:	01051513          	sll	a0,a0,0x10
    23b0:	010a5793          	srl	a5,s4,0x10
    23b4:	00a7e7b3          	or	a5,a5,a0
    23b8:	0127f863          	bgeu	a5,s2,23c8 <__moddi3+0xf8>
    23bc:	00f987b3          	add	a5,s3,a5
    23c0:	0137e463          	bltu	a5,s3,23c8 <__moddi3+0xf8>
    23c4:	5527e663          	bltu	a5,s2,2910 <__moddi3+0x640>
    23c8:	41278933          	sub	s2,a5,s2
    23cc:	000a8593          	mv	a1,s5
    23d0:	00090513          	mv	a0,s2
    23d4:	ea4ff0ef          	jal	1a78 <__hidden___udivsi3>
    23d8:	000b0593          	mv	a1,s6
    23dc:	e70ff0ef          	jal	1a4c <__mulsi3>
    23e0:	00050793          	mv	a5,a0
    23e4:	000a8593          	mv	a1,s5
    23e8:	00090513          	mv	a0,s2
    23ec:	00078913          	mv	s2,a5
    23f0:	ed0ff0ef          	jal	1ac0 <__umodsi3>
    23f4:	010a1793          	sll	a5,s4,0x10
    23f8:	01051513          	sll	a0,a0,0x10
    23fc:	0107d793          	srl	a5,a5,0x10
    2400:	00a7e7b3          	or	a5,a5,a0
    2404:	0127fa63          	bgeu	a5,s2,2418 <__moddi3+0x148>
    2408:	00f987b3          	add	a5,s3,a5
    240c:	0137e663          	bltu	a5,s3,2418 <__moddi3+0x148>
    2410:	0127f463          	bgeu	a5,s2,2418 <__moddi3+0x148>
    2414:	013787b3          	add	a5,a5,s3
    2418:	412787b3          	sub	a5,a5,s2
    241c:	0097d533          	srl	a0,a5,s1
    2420:	02412a83          	lw	s5,36(sp)
    2424:	03412483          	lw	s1,52(sp)
    2428:	02012b03          	lw	s6,32(sp)
    242c:	00000593          	li	a1,0
    2430:	00040a63          	beqz	s0,2444 <__moddi3+0x174>
    2434:	00a037b3          	snez	a5,a0
    2438:	40b005b3          	neg	a1,a1
    243c:	40f585b3          	sub	a1,a1,a5
    2440:	40a00533          	neg	a0,a0
    2444:	03c12083          	lw	ra,60(sp)
    2448:	03812403          	lw	s0,56(sp)
    244c:	03012903          	lw	s2,48(sp)
    2450:	02c12983          	lw	s3,44(sp)
    2454:	02812a03          	lw	s4,40(sp)
    2458:	04010113          	add	sp,sp,64
    245c:	00008067          	ret
    2460:	00078813          	mv	a6,a5
    2464:	00078513          	mv	a0,a5
    2468:	fcd5e4e3          	bltu	a1,a3,2430 <__moddi3+0x160>
    246c:	00010737          	lui	a4,0x10
    2470:	24e6e663          	bltu	a3,a4,26bc <__moddi3+0x3ec>
    2474:	01000537          	lui	a0,0x1000
    2478:	01800713          	li	a4,24
    247c:	00a6f463          	bgeu	a3,a0,2484 <__moddi3+0x1b4>
    2480:	01000713          	li	a4,16
    2484:	00e6d8b3          	srl	a7,a3,a4
    2488:	0002e517          	auipc	a0,0x2e
    248c:	f0050513          	add	a0,a0,-256 # 30388 <__clz_tab>
    2490:	01150533          	add	a0,a0,a7
    2494:	00054a03          	lbu	s4,0(a0)
    2498:	02000513          	li	a0,32
    249c:	00ea0a33          	add	s4,s4,a4
    24a0:	414509b3          	sub	s3,a0,s4
    24a4:	25451463          	bne	a0,s4,26ec <__moddi3+0x41c>
    24a8:	00b6e463          	bltu	a3,a1,24b0 <__moddi3+0x1e0>
    24ac:	00c7ea63          	bltu	a5,a2,24c0 <__moddi3+0x1f0>
    24b0:	40c78833          	sub	a6,a5,a2
    24b4:	40d586b3          	sub	a3,a1,a3
    24b8:	0107b5b3          	sltu	a1,a5,a6
    24bc:	40b685b3          	sub	a1,a3,a1
    24c0:	00080513          	mv	a0,a6
    24c4:	f6dff06f          	j	2430 <__moddi3+0x160>
    24c8:	00a03733          	snez	a4,a0
    24cc:	40b005b3          	neg	a1,a1
    24d0:	40e585b3          	sub	a1,a1,a4
    24d4:	40a007b3          	neg	a5,a0
    24d8:	fff00413          	li	s0,-1
    24dc:	e19ff06f          	j	22f4 <__moddi3+0x24>
    24e0:	0e060263          	beqz	a2,25c4 <__moddi3+0x2f4>
    24e4:	00010737          	lui	a4,0x10
    24e8:	40e67263          	bgeu	a2,a4,28ec <__moddi3+0x61c>
    24ec:	10063693          	sltiu	a3,a2,256
    24f0:	0016b693          	seqz	a3,a3
    24f4:	00369693          	sll	a3,a3,0x3
    24f8:	00d65533          	srl	a0,a2,a3
    24fc:	0002e717          	auipc	a4,0x2e
    2500:	e8c70713          	add	a4,a4,-372 # 30388 <__clz_tab>
    2504:	00a70733          	add	a4,a4,a0
    2508:	00074a83          	lbu	s5,0(a4)
    250c:	02000713          	li	a4,32
    2510:	00da8ab3          	add	s5,s5,a3
    2514:	415704b3          	sub	s1,a4,s5
    2518:	0d571a63          	bne	a4,s5,25ec <__moddi3+0x31c>
    251c:	01061913          	sll	s2,a2,0x10
    2520:	40c58ab3          	sub	s5,a1,a2
    2524:	01065b13          	srl	s6,a2,0x10
    2528:	01095913          	srl	s2,s2,0x10
    252c:	000b0593          	mv	a1,s6
    2530:	000a8513          	mv	a0,s5
    2534:	d44ff0ef          	jal	1a78 <__hidden___udivsi3>
    2538:	00090593          	mv	a1,s2
    253c:	d10ff0ef          	jal	1a4c <__mulsi3>
    2540:	00050793          	mv	a5,a0
    2544:	000b0593          	mv	a1,s6
    2548:	000a8513          	mv	a0,s5
    254c:	00078a93          	mv	s5,a5
    2550:	d70ff0ef          	jal	1ac0 <__umodsi3>
    2554:	01051513          	sll	a0,a0,0x10
    2558:	010a5793          	srl	a5,s4,0x10
    255c:	00a7e7b3          	or	a5,a5,a0
    2560:	0157fa63          	bgeu	a5,s5,2574 <__moddi3+0x2a4>
    2564:	00f987b3          	add	a5,s3,a5
    2568:	0137e663          	bltu	a5,s3,2574 <__moddi3+0x2a4>
    256c:	0157f463          	bgeu	a5,s5,2574 <__moddi3+0x2a4>
    2570:	013787b3          	add	a5,a5,s3
    2574:	41578ab3          	sub	s5,a5,s5
    2578:	000b0593          	mv	a1,s6
    257c:	000a8513          	mv	a0,s5
    2580:	cf8ff0ef          	jal	1a78 <__hidden___udivsi3>
    2584:	00090593          	mv	a1,s2
    2588:	cc4ff0ef          	jal	1a4c <__mulsi3>
    258c:	00050913          	mv	s2,a0
    2590:	000b0593          	mv	a1,s6
    2594:	000a8513          	mv	a0,s5
    2598:	d28ff0ef          	jal	1ac0 <__umodsi3>
    259c:	010a1a13          	sll	s4,s4,0x10
    25a0:	01051793          	sll	a5,a0,0x10
    25a4:	010a5a13          	srl	s4,s4,0x10
    25a8:	00fa67b3          	or	a5,s4,a5
    25ac:	e727f6e3          	bgeu	a5,s2,2418 <__moddi3+0x148>
    25b0:	e59ff06f          	j	2408 <__moddi3+0x138>
    25b4:	10063693          	sltiu	a3,a2,256
    25b8:	0016b693          	seqz	a3,a3
    25bc:	00369693          	sll	a3,a3,0x3
    25c0:	d81ff06f          	j	2340 <__moddi3+0x70>
    25c4:	00000513          	li	a0,0
    25c8:	0002e717          	auipc	a4,0x2e
    25cc:	dc070713          	add	a4,a4,-576 # 30388 <__clz_tab>
    25d0:	00a70733          	add	a4,a4,a0
    25d4:	00074a83          	lbu	s5,0(a4)
    25d8:	00000693          	li	a3,0
    25dc:	02000713          	li	a4,32
    25e0:	00da8ab3          	add	s5,s5,a3
    25e4:	415704b3          	sub	s1,a4,s5
    25e8:	f3570ae3          	beq	a4,s5,251c <__moddi3+0x24c>
    25ec:	009619b3          	sll	s3,a2,s1
    25f0:	01812c23          	sw	s8,24(sp)
    25f4:	0109db13          	srl	s6,s3,0x10
    25f8:	0155dc33          	srl	s8,a1,s5
    25fc:	00959733          	sll	a4,a1,s1
    2600:	0157dab3          	srl	s5,a5,s5
    2604:	000b0593          	mv	a1,s6
    2608:	000c0513          	mv	a0,s8
    260c:	01099913          	sll	s2,s3,0x10
    2610:	00eaeab3          	or	s5,s5,a4
    2614:	00979a33          	sll	s4,a5,s1
    2618:	01712e23          	sw	s7,28(sp)
    261c:	01095913          	srl	s2,s2,0x10
    2620:	c58ff0ef          	jal	1a78 <__hidden___udivsi3>
    2624:	00090593          	mv	a1,s2
    2628:	c24ff0ef          	jal	1a4c <__mulsi3>
    262c:	00050b93          	mv	s7,a0
    2630:	000b0593          	mv	a1,s6
    2634:	000c0513          	mv	a0,s8
    2638:	c88ff0ef          	jal	1ac0 <__umodsi3>
    263c:	01051513          	sll	a0,a0,0x10
    2640:	010ad793          	srl	a5,s5,0x10
    2644:	00a7e7b3          	or	a5,a5,a0
    2648:	0177fa63          	bgeu	a5,s7,265c <__moddi3+0x38c>
    264c:	00f987b3          	add	a5,s3,a5
    2650:	0137e663          	bltu	a5,s3,265c <__moddi3+0x38c>
    2654:	0177f463          	bgeu	a5,s7,265c <__moddi3+0x38c>
    2658:	013787b3          	add	a5,a5,s3
    265c:	41778bb3          	sub	s7,a5,s7
    2660:	000b0593          	mv	a1,s6
    2664:	000b8513          	mv	a0,s7
    2668:	c10ff0ef          	jal	1a78 <__hidden___udivsi3>
    266c:	00090593          	mv	a1,s2
    2670:	bdcff0ef          	jal	1a4c <__mulsi3>
    2674:	00050793          	mv	a5,a0
    2678:	000b0593          	mv	a1,s6
    267c:	000b8513          	mv	a0,s7
    2680:	010a9a93          	sll	s5,s5,0x10
    2684:	00078b93          	mv	s7,a5
    2688:	c38ff0ef          	jal	1ac0 <__umodsi3>
    268c:	01051513          	sll	a0,a0,0x10
    2690:	010ada93          	srl	s5,s5,0x10
    2694:	00aaeab3          	or	s5,s5,a0
    2698:	017afa63          	bgeu	s5,s7,26ac <__moddi3+0x3dc>
    269c:	01598ab3          	add	s5,s3,s5
    26a0:	013ae663          	bltu	s5,s3,26ac <__moddi3+0x3dc>
    26a4:	017af463          	bgeu	s5,s7,26ac <__moddi3+0x3dc>
    26a8:	013a8ab3          	add	s5,s5,s3
    26ac:	417a8ab3          	sub	s5,s5,s7
    26b0:	01812c03          	lw	s8,24(sp)
    26b4:	01c12b83          	lw	s7,28(sp)
    26b8:	e75ff06f          	j	252c <__moddi3+0x25c>
    26bc:	1006b713          	sltiu	a4,a3,256
    26c0:	00173713          	seqz	a4,a4
    26c4:	00371713          	sll	a4,a4,0x3
    26c8:	00e6d8b3          	srl	a7,a3,a4
    26cc:	0002e517          	auipc	a0,0x2e
    26d0:	cbc50513          	add	a0,a0,-836 # 30388 <__clz_tab>
    26d4:	01150533          	add	a0,a0,a7
    26d8:	00054a03          	lbu	s4,0(a0)
    26dc:	02000513          	li	a0,32
    26e0:	00ea0a33          	add	s4,s4,a4
    26e4:	414509b3          	sub	s3,a0,s4
    26e8:	dd4500e3          	beq	a0,s4,24a8 <__moddi3+0x1d8>
    26ec:	03512223          	sw	s5,36(sp)
    26f0:	013696b3          	sll	a3,a3,s3
    26f4:	01465ab3          	srl	s5,a2,s4
    26f8:	00daeab3          	or	s5,s5,a3
    26fc:	01712e23          	sw	s7,28(sp)
    2700:	01b12623          	sw	s11,12(sp)
    2704:	010adb93          	srl	s7,s5,0x10
    2708:	0145ddb3          	srl	s11,a1,s4
    270c:	01359733          	sll	a4,a1,s3
    2710:	0147d6b3          	srl	a3,a5,s4
    2714:	01a12823          	sw	s10,16(sp)
    2718:	000b8593          	mv	a1,s7
    271c:	000d8513          	mv	a0,s11
    2720:	010a9d13          	sll	s10,s5,0x10
    2724:	01361933          	sll	s2,a2,s3
    2728:	02912a23          	sw	s1,52(sp)
    272c:	03612023          	sw	s6,32(sp)
    2730:	013794b3          	sll	s1,a5,s3
    2734:	00e6eb33          	or	s6,a3,a4
    2738:	01812c23          	sw	s8,24(sp)
    273c:	01912a23          	sw	s9,20(sp)
    2740:	010d5d13          	srl	s10,s10,0x10
    2744:	b34ff0ef          	jal	1a78 <__hidden___udivsi3>
    2748:	00050593          	mv	a1,a0
    274c:	00050c13          	mv	s8,a0
    2750:	000d0513          	mv	a0,s10
    2754:	af8ff0ef          	jal	1a4c <__mulsi3>
    2758:	00050c93          	mv	s9,a0
    275c:	000b8593          	mv	a1,s7
    2760:	000d8513          	mv	a0,s11
    2764:	b5cff0ef          	jal	1ac0 <__umodsi3>
    2768:	01051513          	sll	a0,a0,0x10
    276c:	010b5793          	srl	a5,s6,0x10
    2770:	00a7e7b3          	or	a5,a5,a0
    2774:	0197fe63          	bgeu	a5,s9,2790 <__moddi3+0x4c0>
    2778:	00fa87b3          	add	a5,s5,a5
    277c:	fffc0713          	add	a4,s8,-1
    2780:	1957e463          	bltu	a5,s5,2908 <__moddi3+0x638>
    2784:	1997f263          	bgeu	a5,s9,2908 <__moddi3+0x638>
    2788:	ffec0c13          	add	s8,s8,-2
    278c:	015787b3          	add	a5,a5,s5
    2790:	41978cb3          	sub	s9,a5,s9
    2794:	000b8593          	mv	a1,s7
    2798:	000c8513          	mv	a0,s9
    279c:	adcff0ef          	jal	1a78 <__hidden___udivsi3>
    27a0:	00050593          	mv	a1,a0
    27a4:	00050d93          	mv	s11,a0
    27a8:	000d0513          	mv	a0,s10
    27ac:	aa0ff0ef          	jal	1a4c <__mulsi3>
    27b0:	00050793          	mv	a5,a0
    27b4:	000b8593          	mv	a1,s7
    27b8:	000c8513          	mv	a0,s9
    27bc:	00078b93          	mv	s7,a5
    27c0:	b00ff0ef          	jal	1ac0 <__umodsi3>
    27c4:	010b1593          	sll	a1,s6,0x10
    27c8:	01051513          	sll	a0,a0,0x10
    27cc:	0105d593          	srl	a1,a1,0x10
    27d0:	00a5e5b3          	or	a1,a1,a0
    27d4:	0175fe63          	bgeu	a1,s7,27f0 <__moddi3+0x520>
    27d8:	00ba85b3          	add	a1,s5,a1
    27dc:	fffd8793          	add	a5,s11,-1
    27e0:	1355e063          	bltu	a1,s5,2900 <__moddi3+0x630>
    27e4:	1175fe63          	bgeu	a1,s7,2900 <__moddi3+0x630>
    27e8:	ffed8d93          	add	s11,s11,-2
    27ec:	015585b3          	add	a1,a1,s5
    27f0:	010c1713          	sll	a4,s8,0x10
    27f4:	00010e37          	lui	t3,0x10
    27f8:	01b76733          	or	a4,a4,s11
    27fc:	fffe0313          	add	t1,t3,-1 # ffff <__fini_array_end+0x4fff>
    2800:	006777b3          	and	a5,a4,t1
    2804:	00697333          	and	t1,s2,t1
    2808:	41758833          	sub	a6,a1,s7
    280c:	01075713          	srl	a4,a4,0x10
    2810:	01095e93          	srl	t4,s2,0x10
    2814:	00078513          	mv	a0,a5
    2818:	00030593          	mv	a1,t1
    281c:	a30ff0ef          	jal	1a4c <__mulsi3>
    2820:	00050893          	mv	a7,a0
    2824:	000e8593          	mv	a1,t4
    2828:	00078513          	mv	a0,a5
    282c:	a20ff0ef          	jal	1a4c <__mulsi3>
    2830:	00050793          	mv	a5,a0
    2834:	00030593          	mv	a1,t1
    2838:	00070513          	mv	a0,a4
    283c:	a10ff0ef          	jal	1a4c <__mulsi3>
    2840:	00050313          	mv	t1,a0
    2844:	000e8593          	mv	a1,t4
    2848:	00070513          	mv	a0,a4
    284c:	a00ff0ef          	jal	1a4c <__mulsi3>
    2850:	006787b3          	add	a5,a5,t1
    2854:	0108d713          	srl	a4,a7,0x10
    2858:	00e787b3          	add	a5,a5,a4
    285c:	0067f463          	bgeu	a5,t1,2864 <__moddi3+0x594>
    2860:	01c50533          	add	a0,a0,t3
    2864:	000106b7          	lui	a3,0x10
    2868:	fff68693          	add	a3,a3,-1 # ffff <__fini_array_end+0x4fff>
    286c:	0107d713          	srl	a4,a5,0x10
    2870:	00d7f7b3          	and	a5,a5,a3
    2874:	01079793          	sll	a5,a5,0x10
    2878:	00d8f8b3          	and	a7,a7,a3
    287c:	00a70733          	add	a4,a4,a0
    2880:	011787b3          	add	a5,a5,a7
    2884:	04e86863          	bltu	a6,a4,28d4 <__moddi3+0x604>
    2888:	04e80463          	beq	a6,a4,28d0 <__moddi3+0x600>
    288c:	40f487b3          	sub	a5,s1,a5
    2890:	00f4b4b3          	sltu	s1,s1,a5
    2894:	40e805b3          	sub	a1,a6,a4
    2898:	409585b3          	sub	a1,a1,s1
    289c:	01459a33          	sll	s4,a1,s4
    28a0:	0137d7b3          	srl	a5,a5,s3
    28a4:	03412483          	lw	s1,52(sp)
    28a8:	02412a83          	lw	s5,36(sp)
    28ac:	02012b03          	lw	s6,32(sp)
    28b0:	01c12b83          	lw	s7,28(sp)
    28b4:	01812c03          	lw	s8,24(sp)
    28b8:	01412c83          	lw	s9,20(sp)
    28bc:	01012d03          	lw	s10,16(sp)
    28c0:	00c12d83          	lw	s11,12(sp)
    28c4:	00fa6533          	or	a0,s4,a5
    28c8:	0135d5b3          	srl	a1,a1,s3
    28cc:	b65ff06f          	j	2430 <__moddi3+0x160>
    28d0:	faf4fee3          	bgeu	s1,a5,288c <__moddi3+0x5bc>
    28d4:	41278633          	sub	a2,a5,s2
    28d8:	00c7b7b3          	sltu	a5,a5,a2
    28dc:	01578ab3          	add	s5,a5,s5
    28e0:	41570733          	sub	a4,a4,s5
    28e4:	00060793          	mv	a5,a2
    28e8:	fa5ff06f          	j	288c <__moddi3+0x5bc>
    28ec:	01000737          	lui	a4,0x1000
    28f0:	02e67463          	bgeu	a2,a4,2918 <__moddi3+0x648>
    28f4:	01065513          	srl	a0,a2,0x10
    28f8:	01000693          	li	a3,16
    28fc:	c01ff06f          	j	24fc <__moddi3+0x22c>
    2900:	00078d93          	mv	s11,a5
    2904:	eedff06f          	j	27f0 <__moddi3+0x520>
    2908:	00070c13          	mv	s8,a4
    290c:	e85ff06f          	j	2790 <__moddi3+0x4c0>
    2910:	013787b3          	add	a5,a5,s3
    2914:	ab5ff06f          	j	23c8 <__moddi3+0xf8>
    2918:	01865513          	srl	a0,a2,0x18
    291c:	01800693          	li	a3,24
    2920:	bddff06f          	j	24fc <__moddi3+0x22c>

00002924 <exit>:
    2924:	ff010113          	add	sp,sp,-16
    2928:	00000593          	li	a1,0
    292c:	00812423          	sw	s0,8(sp)
    2930:	00112623          	sw	ra,12(sp)
    2934:	00050413          	mv	s0,a0
    2938:	675000ef          	jal	37ac <__call_exitprocs>
    293c:	00032797          	auipc	a5,0x32
    2940:	6c87a783          	lw	a5,1736(a5) # 35004 <__stdio_exit_handler>
    2944:	00078463          	beqz	a5,294c <exit+0x28>
    2948:	000780e7          	jalr	a5
    294c:	00040513          	mv	a0,s0
    2950:	848fe0ef          	jal	998 <_exit>

00002954 <vsiprintf>:
    2954:	f8010113          	add	sp,sp,-128
    2958:	ffff0837          	lui	a6,0xffff0
    295c:	800007b7          	lui	a5,0x80000
    2960:	00050713          	mv	a4,a0
    2964:	fff78793          	add	a5,a5,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    2968:	00060693          	mv	a3,a2
    296c:	20880813          	add	a6,a6,520 # ffff0208 <GET_WATCHDOG_LOW+0xffdef1c8>
    2970:	00058613          	mv	a2,a1
    2974:	00032517          	auipc	a0,0x32
    2978:	e9052503          	lw	a0,-368(a0) # 34804 <_impure_ptr>
    297c:	00810593          	add	a1,sp,8
    2980:	06112e23          	sw	ra,124(sp)
    2984:	00f12823          	sw	a5,16(sp)
    2988:	00f12e23          	sw	a5,28(sp)
    298c:	00e12423          	sw	a4,8(sp)
    2990:	00e12c23          	sw	a4,24(sp)
    2994:	01012a23          	sw	a6,20(sp)
    2998:	5e1010ef          	jal	4778 <_svfiprintf_r>
    299c:	00812783          	lw	a5,8(sp)
    29a0:	00078023          	sb	zero,0(a5)
    29a4:	07c12083          	lw	ra,124(sp)
    29a8:	08010113          	add	sp,sp,128
    29ac:	00008067          	ret

000029b0 <_vsiprintf_r>:
    29b0:	f8010113          	add	sp,sp,-128
    29b4:	ffff0837          	lui	a6,0xffff0
    29b8:	800007b7          	lui	a5,0x80000
    29bc:	00058713          	mv	a4,a1
    29c0:	fff78793          	add	a5,a5,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    29c4:	20880813          	add	a6,a6,520 # ffff0208 <GET_WATCHDOG_LOW+0xffdef1c8>
    29c8:	00810593          	add	a1,sp,8
    29cc:	06112e23          	sw	ra,124(sp)
    29d0:	00f12823          	sw	a5,16(sp)
    29d4:	00f12e23          	sw	a5,28(sp)
    29d8:	00e12423          	sw	a4,8(sp)
    29dc:	00e12c23          	sw	a4,24(sp)
    29e0:	01012a23          	sw	a6,20(sp)
    29e4:	595010ef          	jal	4778 <_svfiprintf_r>
    29e8:	00812783          	lw	a5,8(sp)
    29ec:	00078023          	sb	zero,0(a5)
    29f0:	07c12083          	lw	ra,124(sp)
    29f4:	08010113          	add	sp,sp,128
    29f8:	00008067          	ret

000029fc <stdio_exit_handler>:
    29fc:	00031617          	auipc	a2,0x31
    2a00:	60460613          	add	a2,a2,1540 # 34000 <__sglue>
    2a04:	00003597          	auipc	a1,0x3
    2a08:	2a858593          	add	a1,a1,680 # 5cac <_fclose_r>
    2a0c:	00031517          	auipc	a0,0x31
    2a10:	60450513          	add	a0,a0,1540 # 34010 <_impure_data>
    2a14:	4cc0006f          	j	2ee0 <_fwalk_sglue>

00002a18 <cleanup_stdio>:
    2a18:	00452583          	lw	a1,4(a0)
    2a1c:	ff010113          	add	sp,sp,-16
    2a20:	00812423          	sw	s0,8(sp)
    2a24:	00112623          	sw	ra,12(sp)
    2a28:	00033797          	auipc	a5,0x33
    2a2c:	dd878793          	add	a5,a5,-552 # 35800 <__sf>
    2a30:	00050413          	mv	s0,a0
    2a34:	00f58463          	beq	a1,a5,2a3c <cleanup_stdio+0x24>
    2a38:	274030ef          	jal	5cac <_fclose_r>
    2a3c:	00842583          	lw	a1,8(s0)
    2a40:	00033797          	auipc	a5,0x33
    2a44:	e2878793          	add	a5,a5,-472 # 35868 <__sf+0x68>
    2a48:	00f58663          	beq	a1,a5,2a54 <cleanup_stdio+0x3c>
    2a4c:	00040513          	mv	a0,s0
    2a50:	25c030ef          	jal	5cac <_fclose_r>
    2a54:	00c42583          	lw	a1,12(s0)
    2a58:	00033797          	auipc	a5,0x33
    2a5c:	e7878793          	add	a5,a5,-392 # 358d0 <__sf+0xd0>
    2a60:	00f58c63          	beq	a1,a5,2a78 <cleanup_stdio+0x60>
    2a64:	00040513          	mv	a0,s0
    2a68:	00812403          	lw	s0,8(sp)
    2a6c:	00c12083          	lw	ra,12(sp)
    2a70:	01010113          	add	sp,sp,16
    2a74:	2380306f          	j	5cac <_fclose_r>
    2a78:	00c12083          	lw	ra,12(sp)
    2a7c:	00812403          	lw	s0,8(sp)
    2a80:	01010113          	add	sp,sp,16
    2a84:	00008067          	ret

00002a88 <__fp_lock>:
    2a88:	0645a783          	lw	a5,100(a1)
    2a8c:	0017f793          	and	a5,a5,1
    2a90:	00079863          	bnez	a5,2aa0 <__fp_lock+0x18>
    2a94:	00c5d783          	lhu	a5,12(a1)
    2a98:	2007f793          	and	a5,a5,512
    2a9c:	00078663          	beqz	a5,2aa8 <__fp_lock+0x20>
    2aa0:	00000513          	li	a0,0
    2aa4:	00008067          	ret
    2aa8:	0585a503          	lw	a0,88(a1)
    2aac:	ff010113          	add	sp,sp,-16
    2ab0:	00112623          	sw	ra,12(sp)
    2ab4:	4c5000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    2ab8:	00c12083          	lw	ra,12(sp)
    2abc:	00000513          	li	a0,0
    2ac0:	01010113          	add	sp,sp,16
    2ac4:	00008067          	ret

00002ac8 <__fp_unlock>:
    2ac8:	0645a783          	lw	a5,100(a1)
    2acc:	0017f793          	and	a5,a5,1
    2ad0:	00079863          	bnez	a5,2ae0 <__fp_unlock+0x18>
    2ad4:	00c5d783          	lhu	a5,12(a1)
    2ad8:	2007f793          	and	a5,a5,512
    2adc:	00078663          	beqz	a5,2ae8 <__fp_unlock+0x20>
    2ae0:	00000513          	li	a0,0
    2ae4:	00008067          	ret
    2ae8:	0585a503          	lw	a0,88(a1)
    2aec:	ff010113          	add	sp,sp,-16
    2af0:	00112623          	sw	ra,12(sp)
    2af4:	49d000ef          	jal	3790 <__retarget_lock_release_recursive>
    2af8:	00c12083          	lw	ra,12(sp)
    2afc:	00000513          	li	a0,0
    2b00:	01010113          	add	sp,sp,16
    2b04:	00008067          	ret

00002b08 <global_stdio_init.part.0>:
    2b08:	fe010113          	add	sp,sp,-32
    2b0c:	00000797          	auipc	a5,0x0
    2b10:	ef078793          	add	a5,a5,-272 # 29fc <stdio_exit_handler>
    2b14:	00112e23          	sw	ra,28(sp)
    2b18:	00812c23          	sw	s0,24(sp)
    2b1c:	00912a23          	sw	s1,20(sp)
    2b20:	00033417          	auipc	s0,0x33
    2b24:	ce040413          	add	s0,s0,-800 # 35800 <__sf>
    2b28:	01212823          	sw	s2,16(sp)
    2b2c:	01312623          	sw	s3,12(sp)
    2b30:	01412423          	sw	s4,8(sp)
    2b34:	00800613          	li	a2,8
    2b38:	00000593          	li	a1,0
    2b3c:	00032717          	auipc	a4,0x32
    2b40:	4cf72423          	sw	a5,1224(a4) # 35004 <__stdio_exit_handler>
    2b44:	00033517          	auipc	a0,0x33
    2b48:	d1850513          	add	a0,a0,-744 # 3585c <__sf+0x5c>
    2b4c:	00400793          	li	a5,4
    2b50:	00f42623          	sw	a5,12(s0)
    2b54:	00042023          	sw	zero,0(s0)
    2b58:	00042223          	sw	zero,4(s0)
    2b5c:	00042423          	sw	zero,8(s0)
    2b60:	06042223          	sw	zero,100(s0)
    2b64:	00042823          	sw	zero,16(s0)
    2b68:	00042a23          	sw	zero,20(s0)
    2b6c:	00042c23          	sw	zero,24(s0)
    2b70:	fb5fe0ef          	jal	1b24 <memset>
    2b74:	00001a17          	auipc	s4,0x1
    2b78:	82ca0a13          	add	s4,s4,-2004 # 33a0 <__sread>
    2b7c:	00001997          	auipc	s3,0x1
    2b80:	88898993          	add	s3,s3,-1912 # 3404 <__swrite>
    2b84:	00001917          	auipc	s2,0x1
    2b88:	90890913          	add	s2,s2,-1784 # 348c <__sseek>
    2b8c:	00001497          	auipc	s1,0x1
    2b90:	97848493          	add	s1,s1,-1672 # 3504 <__sclose>
    2b94:	00033517          	auipc	a0,0x33
    2b98:	cc450513          	add	a0,a0,-828 # 35858 <__sf+0x58>
    2b9c:	03442023          	sw	s4,32(s0)
    2ba0:	03342223          	sw	s3,36(s0)
    2ba4:	03242423          	sw	s2,40(s0)
    2ba8:	02942623          	sw	s1,44(s0)
    2bac:	00842e23          	sw	s0,28(s0)
    2bb0:	3b9000ef          	jal	3768 <__retarget_lock_init_recursive>
    2bb4:	000107b7          	lui	a5,0x10
    2bb8:	00978793          	add	a5,a5,9 # 10009 <__fini_array_end+0x5009>
    2bbc:	00800613          	li	a2,8
    2bc0:	00000593          	li	a1,0
    2bc4:	00033517          	auipc	a0,0x33
    2bc8:	d0050513          	add	a0,a0,-768 # 358c4 <__sf+0xc4>
    2bcc:	06f42a23          	sw	a5,116(s0)
    2bd0:	06042423          	sw	zero,104(s0)
    2bd4:	06042623          	sw	zero,108(s0)
    2bd8:	06042823          	sw	zero,112(s0)
    2bdc:	0c042623          	sw	zero,204(s0)
    2be0:	06042c23          	sw	zero,120(s0)
    2be4:	06042e23          	sw	zero,124(s0)
    2be8:	08042023          	sw	zero,128(s0)
    2bec:	f39fe0ef          	jal	1b24 <memset>
    2bf0:	00033797          	auipc	a5,0x33
    2bf4:	c7878793          	add	a5,a5,-904 # 35868 <__sf+0x68>
    2bf8:	00033517          	auipc	a0,0x33
    2bfc:	cc850513          	add	a0,a0,-824 # 358c0 <__sf+0xc0>
    2c00:	08f42223          	sw	a5,132(s0)
    2c04:	09442423          	sw	s4,136(s0)
    2c08:	09342623          	sw	s3,140(s0)
    2c0c:	09242823          	sw	s2,144(s0)
    2c10:	08942a23          	sw	s1,148(s0)
    2c14:	355000ef          	jal	3768 <__retarget_lock_init_recursive>
    2c18:	000207b7          	lui	a5,0x20
    2c1c:	01278793          	add	a5,a5,18 # 20012 <__fini_array_end+0x15012>
    2c20:	00800613          	li	a2,8
    2c24:	00000593          	li	a1,0
    2c28:	00033517          	auipc	a0,0x33
    2c2c:	d0450513          	add	a0,a0,-764 # 3592c <__sf+0x12c>
    2c30:	0cf42e23          	sw	a5,220(s0)
    2c34:	0c042823          	sw	zero,208(s0)
    2c38:	0c042a23          	sw	zero,212(s0)
    2c3c:	0c042c23          	sw	zero,216(s0)
    2c40:	12042a23          	sw	zero,308(s0)
    2c44:	0e042023          	sw	zero,224(s0)
    2c48:	0e042223          	sw	zero,228(s0)
    2c4c:	0e042423          	sw	zero,232(s0)
    2c50:	ed5fe0ef          	jal	1b24 <memset>
    2c54:	00033797          	auipc	a5,0x33
    2c58:	c7c78793          	add	a5,a5,-900 # 358d0 <__sf+0xd0>
    2c5c:	0f442823          	sw	s4,240(s0)
    2c60:	0f342a23          	sw	s3,244(s0)
    2c64:	0f242c23          	sw	s2,248(s0)
    2c68:	0e942e23          	sw	s1,252(s0)
    2c6c:	0ef42623          	sw	a5,236(s0)
    2c70:	01812403          	lw	s0,24(sp)
    2c74:	01c12083          	lw	ra,28(sp)
    2c78:	01412483          	lw	s1,20(sp)
    2c7c:	01012903          	lw	s2,16(sp)
    2c80:	00c12983          	lw	s3,12(sp)
    2c84:	00812a03          	lw	s4,8(sp)
    2c88:	00033517          	auipc	a0,0x33
    2c8c:	ca050513          	add	a0,a0,-864 # 35928 <__sf+0x128>
    2c90:	02010113          	add	sp,sp,32
    2c94:	2d50006f          	j	3768 <__retarget_lock_init_recursive>

00002c98 <__sfp>:
    2c98:	fe010113          	add	sp,sp,-32
    2c9c:	01312623          	sw	s3,12(sp)
    2ca0:	00050993          	mv	s3,a0
    2ca4:	00032517          	auipc	a0,0x32
    2ca8:	38450513          	add	a0,a0,900 # 35028 <__lock___sfp_recursive_mutex>
    2cac:	00112e23          	sw	ra,28(sp)
    2cb0:	00812c23          	sw	s0,24(sp)
    2cb4:	00912a23          	sw	s1,20(sp)
    2cb8:	01212823          	sw	s2,16(sp)
    2cbc:	2bd000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    2cc0:	00032797          	auipc	a5,0x32
    2cc4:	3447a783          	lw	a5,836(a5) # 35004 <__stdio_exit_handler>
    2cc8:	10078263          	beqz	a5,2dcc <__sfp+0x134>
    2ccc:	00031917          	auipc	s2,0x31
    2cd0:	33490913          	add	s2,s2,820 # 34000 <__sglue>
    2cd4:	fff00493          	li	s1,-1
    2cd8:	00492783          	lw	a5,4(s2)
    2cdc:	00892403          	lw	s0,8(s2)
    2ce0:	fff78793          	add	a5,a5,-1
    2ce4:	0007d863          	bgez	a5,2cf4 <__sfp+0x5c>
    2ce8:	0940006f          	j	2d7c <__sfp+0xe4>
    2cec:	06840413          	add	s0,s0,104
    2cf0:	08978663          	beq	a5,s1,2d7c <__sfp+0xe4>
    2cf4:	00c41703          	lh	a4,12(s0)
    2cf8:	fff78793          	add	a5,a5,-1
    2cfc:	fe0718e3          	bnez	a4,2cec <__sfp+0x54>
    2d00:	ffff07b7          	lui	a5,0xffff0
    2d04:	00178793          	add	a5,a5,1 # ffff0001 <GET_WATCHDOG_LOW+0xffdeefc1>
    2d08:	00f42623          	sw	a5,12(s0)
    2d0c:	05840513          	add	a0,s0,88
    2d10:	06042223          	sw	zero,100(s0)
    2d14:	255000ef          	jal	3768 <__retarget_lock_init_recursive>
    2d18:	00032517          	auipc	a0,0x32
    2d1c:	31050513          	add	a0,a0,784 # 35028 <__lock___sfp_recursive_mutex>
    2d20:	271000ef          	jal	3790 <__retarget_lock_release_recursive>
    2d24:	00800613          	li	a2,8
    2d28:	00042023          	sw	zero,0(s0)
    2d2c:	00042423          	sw	zero,8(s0)
    2d30:	00042223          	sw	zero,4(s0)
    2d34:	00042823          	sw	zero,16(s0)
    2d38:	00042a23          	sw	zero,20(s0)
    2d3c:	00042c23          	sw	zero,24(s0)
    2d40:	00000593          	li	a1,0
    2d44:	05c40513          	add	a0,s0,92
    2d48:	dddfe0ef          	jal	1b24 <memset>
    2d4c:	02042823          	sw	zero,48(s0)
    2d50:	02042a23          	sw	zero,52(s0)
    2d54:	04042223          	sw	zero,68(s0)
    2d58:	04042423          	sw	zero,72(s0)
    2d5c:	01c12083          	lw	ra,28(sp)
    2d60:	00040513          	mv	a0,s0
    2d64:	01812403          	lw	s0,24(sp)
    2d68:	01412483          	lw	s1,20(sp)
    2d6c:	01012903          	lw	s2,16(sp)
    2d70:	00c12983          	lw	s3,12(sp)
    2d74:	02010113          	add	sp,sp,32
    2d78:	00008067          	ret
    2d7c:	00092403          	lw	s0,0(s2)
    2d80:	00040663          	beqz	s0,2d8c <__sfp+0xf4>
    2d84:	00040913          	mv	s2,s0
    2d88:	f51ff06f          	j	2cd8 <__sfp+0x40>
    2d8c:	1ac00593          	li	a1,428
    2d90:	00098513          	mv	a0,s3
    2d94:	7f5000ef          	jal	3d88 <_malloc_r>
    2d98:	00050413          	mv	s0,a0
    2d9c:	02050c63          	beqz	a0,2dd4 <__sfp+0x13c>
    2da0:	00c50513          	add	a0,a0,12
    2da4:	00400793          	li	a5,4
    2da8:	00042023          	sw	zero,0(s0)
    2dac:	00f42223          	sw	a5,4(s0)
    2db0:	00a42423          	sw	a0,8(s0)
    2db4:	1a000613          	li	a2,416
    2db8:	00000593          	li	a1,0
    2dbc:	d69fe0ef          	jal	1b24 <memset>
    2dc0:	00892023          	sw	s0,0(s2)
    2dc4:	00040913          	mv	s2,s0
    2dc8:	f11ff06f          	j	2cd8 <__sfp+0x40>
    2dcc:	d3dff0ef          	jal	2b08 <global_stdio_init.part.0>
    2dd0:	efdff06f          	j	2ccc <__sfp+0x34>
    2dd4:	00092023          	sw	zero,0(s2)
    2dd8:	00032517          	auipc	a0,0x32
    2ddc:	25050513          	add	a0,a0,592 # 35028 <__lock___sfp_recursive_mutex>
    2de0:	1b1000ef          	jal	3790 <__retarget_lock_release_recursive>
    2de4:	00c00793          	li	a5,12
    2de8:	00f9a023          	sw	a5,0(s3)
    2dec:	f71ff06f          	j	2d5c <__sfp+0xc4>

00002df0 <__sinit>:
    2df0:	ff010113          	add	sp,sp,-16
    2df4:	00812423          	sw	s0,8(sp)
    2df8:	00050413          	mv	s0,a0
    2dfc:	00032517          	auipc	a0,0x32
    2e00:	22c50513          	add	a0,a0,556 # 35028 <__lock___sfp_recursive_mutex>
    2e04:	00112623          	sw	ra,12(sp)
    2e08:	171000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    2e0c:	03442783          	lw	a5,52(s0)
    2e10:	00079e63          	bnez	a5,2e2c <__sinit+0x3c>
    2e14:	00000797          	auipc	a5,0x0
    2e18:	c0478793          	add	a5,a5,-1020 # 2a18 <cleanup_stdio>
    2e1c:	02f42a23          	sw	a5,52(s0)
    2e20:	00032797          	auipc	a5,0x32
    2e24:	1e47a783          	lw	a5,484(a5) # 35004 <__stdio_exit_handler>
    2e28:	00078e63          	beqz	a5,2e44 <__sinit+0x54>
    2e2c:	00812403          	lw	s0,8(sp)
    2e30:	00c12083          	lw	ra,12(sp)
    2e34:	00032517          	auipc	a0,0x32
    2e38:	1f450513          	add	a0,a0,500 # 35028 <__lock___sfp_recursive_mutex>
    2e3c:	01010113          	add	sp,sp,16
    2e40:	1510006f          	j	3790 <__retarget_lock_release_recursive>
    2e44:	cc5ff0ef          	jal	2b08 <global_stdio_init.part.0>
    2e48:	00812403          	lw	s0,8(sp)
    2e4c:	00c12083          	lw	ra,12(sp)
    2e50:	00032517          	auipc	a0,0x32
    2e54:	1d850513          	add	a0,a0,472 # 35028 <__lock___sfp_recursive_mutex>
    2e58:	01010113          	add	sp,sp,16
    2e5c:	1350006f          	j	3790 <__retarget_lock_release_recursive>

00002e60 <__sfp_lock_acquire>:
    2e60:	00032517          	auipc	a0,0x32
    2e64:	1c850513          	add	a0,a0,456 # 35028 <__lock___sfp_recursive_mutex>
    2e68:	1110006f          	j	3778 <__retarget_lock_acquire_recursive>

00002e6c <__sfp_lock_release>:
    2e6c:	00032517          	auipc	a0,0x32
    2e70:	1bc50513          	add	a0,a0,444 # 35028 <__lock___sfp_recursive_mutex>
    2e74:	11d0006f          	j	3790 <__retarget_lock_release_recursive>

00002e78 <__fp_lock_all>:
    2e78:	ff010113          	add	sp,sp,-16
    2e7c:	00032517          	auipc	a0,0x32
    2e80:	1ac50513          	add	a0,a0,428 # 35028 <__lock___sfp_recursive_mutex>
    2e84:	00112623          	sw	ra,12(sp)
    2e88:	0f1000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    2e8c:	00c12083          	lw	ra,12(sp)
    2e90:	00031617          	auipc	a2,0x31
    2e94:	17060613          	add	a2,a2,368 # 34000 <__sglue>
    2e98:	00000597          	auipc	a1,0x0
    2e9c:	bf058593          	add	a1,a1,-1040 # 2a88 <__fp_lock>
    2ea0:	00000513          	li	a0,0
    2ea4:	01010113          	add	sp,sp,16
    2ea8:	0380006f          	j	2ee0 <_fwalk_sglue>

00002eac <__fp_unlock_all>:
    2eac:	ff010113          	add	sp,sp,-16
    2eb0:	00031617          	auipc	a2,0x31
    2eb4:	15060613          	add	a2,a2,336 # 34000 <__sglue>
    2eb8:	00000597          	auipc	a1,0x0
    2ebc:	c1058593          	add	a1,a1,-1008 # 2ac8 <__fp_unlock>
    2ec0:	00000513          	li	a0,0
    2ec4:	00112623          	sw	ra,12(sp)
    2ec8:	018000ef          	jal	2ee0 <_fwalk_sglue>
    2ecc:	00c12083          	lw	ra,12(sp)
    2ed0:	00032517          	auipc	a0,0x32
    2ed4:	15850513          	add	a0,a0,344 # 35028 <__lock___sfp_recursive_mutex>
    2ed8:	01010113          	add	sp,sp,16
    2edc:	0b50006f          	j	3790 <__retarget_lock_release_recursive>

00002ee0 <_fwalk_sglue>:
    2ee0:	fd010113          	add	sp,sp,-48
    2ee4:	03212023          	sw	s2,32(sp)
    2ee8:	01312e23          	sw	s3,28(sp)
    2eec:	01412c23          	sw	s4,24(sp)
    2ef0:	01512a23          	sw	s5,20(sp)
    2ef4:	01612823          	sw	s6,16(sp)
    2ef8:	01712623          	sw	s7,12(sp)
    2efc:	02112623          	sw	ra,44(sp)
    2f00:	02812423          	sw	s0,40(sp)
    2f04:	02912223          	sw	s1,36(sp)
    2f08:	00050b13          	mv	s6,a0
    2f0c:	00058b93          	mv	s7,a1
    2f10:	00060a93          	mv	s5,a2
    2f14:	00000a13          	li	s4,0
    2f18:	00100993          	li	s3,1
    2f1c:	fff00913          	li	s2,-1
    2f20:	004aa483          	lw	s1,4(s5)
    2f24:	008aa403          	lw	s0,8(s5)
    2f28:	fff48493          	add	s1,s1,-1
    2f2c:	0204c863          	bltz	s1,2f5c <_fwalk_sglue+0x7c>
    2f30:	00c45783          	lhu	a5,12(s0)
    2f34:	00f9fe63          	bgeu	s3,a5,2f50 <_fwalk_sglue+0x70>
    2f38:	00e41783          	lh	a5,14(s0)
    2f3c:	00040593          	mv	a1,s0
    2f40:	000b0513          	mv	a0,s6
    2f44:	01278663          	beq	a5,s2,2f50 <_fwalk_sglue+0x70>
    2f48:	000b80e7          	jalr	s7
    2f4c:	00aa6a33          	or	s4,s4,a0
    2f50:	fff48493          	add	s1,s1,-1
    2f54:	06840413          	add	s0,s0,104
    2f58:	fd249ce3          	bne	s1,s2,2f30 <_fwalk_sglue+0x50>
    2f5c:	000aaa83          	lw	s5,0(s5)
    2f60:	fc0a90e3          	bnez	s5,2f20 <_fwalk_sglue+0x40>
    2f64:	02c12083          	lw	ra,44(sp)
    2f68:	02812403          	lw	s0,40(sp)
    2f6c:	02412483          	lw	s1,36(sp)
    2f70:	02012903          	lw	s2,32(sp)
    2f74:	01c12983          	lw	s3,28(sp)
    2f78:	01412a83          	lw	s5,20(sp)
    2f7c:	01012b03          	lw	s6,16(sp)
    2f80:	00c12b83          	lw	s7,12(sp)
    2f84:	000a0513          	mv	a0,s4
    2f88:	01812a03          	lw	s4,24(sp)
    2f8c:	03010113          	add	sp,sp,48
    2f90:	00008067          	ret

00002f94 <_fwrite_r>:
    2f94:	fc010113          	add	sp,sp,-64
    2f98:	00058793          	mv	a5,a1
    2f9c:	03212823          	sw	s2,48(sp)
    2fa0:	00060593          	mv	a1,a2
    2fa4:	00050913          	mv	s2,a0
    2fa8:	00068513          	mv	a0,a3
    2fac:	02812c23          	sw	s0,56(sp)
    2fb0:	02912a23          	sw	s1,52(sp)
    2fb4:	03312623          	sw	s3,44(sp)
    2fb8:	03412423          	sw	s4,40(sp)
    2fbc:	00f12623          	sw	a5,12(sp)
    2fc0:	02112e23          	sw	ra,60(sp)
    2fc4:	00060a13          	mv	s4,a2
    2fc8:	00068493          	mv	s1,a3
    2fcc:	00070413          	mv	s0,a4
    2fd0:	a7dfe0ef          	jal	1a4c <__mulsi3>
    2fd4:	00c10793          	add	a5,sp,12
    2fd8:	00f12a23          	sw	a5,20(sp)
    2fdc:	00100793          	li	a5,1
    2fe0:	00a12823          	sw	a0,16(sp)
    2fe4:	00a12e23          	sw	a0,28(sp)
    2fe8:	00f12c23          	sw	a5,24(sp)
    2fec:	00050993          	mv	s3,a0
    2ff0:	00090663          	beqz	s2,2ffc <_fwrite_r+0x68>
    2ff4:	03492783          	lw	a5,52(s2)
    2ff8:	0e078263          	beqz	a5,30dc <_fwrite_r+0x148>
    2ffc:	06442703          	lw	a4,100(s0)
    3000:	00c41783          	lh	a5,12(s0)
    3004:	00177713          	and	a4,a4,1
    3008:	00071663          	bnez	a4,3014 <_fwrite_r+0x80>
    300c:	2007f713          	and	a4,a5,512
    3010:	0a070663          	beqz	a4,30bc <_fwrite_r+0x128>
    3014:	01279713          	sll	a4,a5,0x12
    3018:	02074263          	bltz	a4,303c <_fwrite_r+0xa8>
    301c:	06442703          	lw	a4,100(s0)
    3020:	ffffe6b7          	lui	a3,0xffffe
    3024:	fff68693          	add	a3,a3,-1 # ffffdfff <GET_WATCHDOG_LOW+0xffdfcfbf>
    3028:	00002637          	lui	a2,0x2
    302c:	00c7e7b3          	or	a5,a5,a2
    3030:	00d77733          	and	a4,a4,a3
    3034:	00f41623          	sh	a5,12(s0)
    3038:	06e42223          	sw	a4,100(s0)
    303c:	01410613          	add	a2,sp,20
    3040:	00040593          	mv	a1,s0
    3044:	00090513          	mv	a0,s2
    3048:	1e4030ef          	jal	622c <__sfvwrite_r>
    304c:	06442783          	lw	a5,100(s0)
    3050:	0017f793          	and	a5,a5,1
    3054:	04050863          	beqz	a0,30a4 <_fwrite_r+0x110>
    3058:	02078a63          	beqz	a5,308c <_fwrite_r+0xf8>
    305c:	01c12503          	lw	a0,28(sp)
    3060:	000a0593          	mv	a1,s4
    3064:	40a98533          	sub	a0,s3,a0
    3068:	a11fe0ef          	jal	1a78 <__hidden___udivsi3>
    306c:	03c12083          	lw	ra,60(sp)
    3070:	03812403          	lw	s0,56(sp)
    3074:	03412483          	lw	s1,52(sp)
    3078:	03012903          	lw	s2,48(sp)
    307c:	02c12983          	lw	s3,44(sp)
    3080:	02812a03          	lw	s4,40(sp)
    3084:	04010113          	add	sp,sp,64
    3088:	00008067          	ret
    308c:	00c45783          	lhu	a5,12(s0)
    3090:	2007f793          	and	a5,a5,512
    3094:	fc0794e3          	bnez	a5,305c <_fwrite_r+0xc8>
    3098:	05842503          	lw	a0,88(s0)
    309c:	6f4000ef          	jal	3790 <__retarget_lock_release_recursive>
    30a0:	fbdff06f          	j	305c <_fwrite_r+0xc8>
    30a4:	00079863          	bnez	a5,30b4 <_fwrite_r+0x120>
    30a8:	00c45783          	lhu	a5,12(s0)
    30ac:	2007f793          	and	a5,a5,512
    30b0:	00078e63          	beqz	a5,30cc <_fwrite_r+0x138>
    30b4:	00048513          	mv	a0,s1
    30b8:	fb5ff06f          	j	306c <_fwrite_r+0xd8>
    30bc:	05842503          	lw	a0,88(s0)
    30c0:	6b8000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    30c4:	00c41783          	lh	a5,12(s0)
    30c8:	f4dff06f          	j	3014 <_fwrite_r+0x80>
    30cc:	05842503          	lw	a0,88(s0)
    30d0:	6c0000ef          	jal	3790 <__retarget_lock_release_recursive>
    30d4:	00048513          	mv	a0,s1
    30d8:	f95ff06f          	j	306c <_fwrite_r+0xd8>
    30dc:	00090513          	mv	a0,s2
    30e0:	d11ff0ef          	jal	2df0 <__sinit>
    30e4:	f19ff06f          	j	2ffc <_fwrite_r+0x68>

000030e8 <fwrite>:
    30e8:	00068713          	mv	a4,a3
    30ec:	00060693          	mv	a3,a2
    30f0:	00058613          	mv	a2,a1
    30f4:	00050593          	mv	a1,a0
    30f8:	00031517          	auipc	a0,0x31
    30fc:	70c52503          	lw	a0,1804(a0) # 34804 <_impure_ptr>
    3100:	e95ff06f          	j	2f94 <_fwrite_r>

00003104 <setvbuf>:
    3104:	fd010113          	add	sp,sp,-48
    3108:	02812423          	sw	s0,40(sp)
    310c:	02912223          	sw	s1,36(sp)
    3110:	03212023          	sw	s2,32(sp)
    3114:	01312e23          	sw	s3,28(sp)
    3118:	01412c23          	sw	s4,24(sp)
    311c:	02112623          	sw	ra,44(sp)
    3120:	00031a17          	auipc	s4,0x31
    3124:	6e4a2a03          	lw	s4,1764(s4) # 34804 <_impure_ptr>
    3128:	00050413          	mv	s0,a0
    312c:	00058913          	mv	s2,a1
    3130:	00060993          	mv	s3,a2
    3134:	00068493          	mv	s1,a3
    3138:	000a0663          	beqz	s4,3144 <setvbuf+0x40>
    313c:	034a2783          	lw	a5,52(s4)
    3140:	20078a63          	beqz	a5,3354 <setvbuf+0x250>
    3144:	00200793          	li	a5,2
    3148:	00f98863          	beq	s3,a5,3158 <setvbuf+0x54>
    314c:	00100793          	li	a5,1
    3150:	2137e863          	bltu	a5,s3,3360 <setvbuf+0x25c>
    3154:	2004c663          	bltz	s1,3360 <setvbuf+0x25c>
    3158:	06442783          	lw	a5,100(s0)
    315c:	0017f793          	and	a5,a5,1
    3160:	10078863          	beqz	a5,3270 <setvbuf+0x16c>
    3164:	00040593          	mv	a1,s0
    3168:	000a0513          	mv	a0,s4
    316c:	70d020ef          	jal	6078 <_fflush_r>
    3170:	03042583          	lw	a1,48(s0)
    3174:	00058c63          	beqz	a1,318c <setvbuf+0x88>
    3178:	04040793          	add	a5,s0,64
    317c:	00f58663          	beq	a1,a5,3188 <setvbuf+0x84>
    3180:	000a0513          	mv	a0,s4
    3184:	0d9000ef          	jal	3a5c <_free_r>
    3188:	02042823          	sw	zero,48(s0)
    318c:	00c41783          	lh	a5,12(s0)
    3190:	00042c23          	sw	zero,24(s0)
    3194:	00042223          	sw	zero,4(s0)
    3198:	0807f713          	and	a4,a5,128
    319c:	14071263          	bnez	a4,32e0 <setvbuf+0x1dc>
    31a0:	fffff737          	lui	a4,0xfffff
    31a4:	35c70713          	add	a4,a4,860 # fffff35c <GET_WATCHDOG_LOW+0xffdfe31c>
    31a8:	00e7f7b3          	and	a5,a5,a4
    31ac:	00f41623          	sh	a5,12(s0)
    31b0:	00200713          	li	a4,2
    31b4:	14e98a63          	beq	s3,a4,3308 <setvbuf+0x204>
    31b8:	00c10693          	add	a3,sp,12
    31bc:	00810613          	add	a2,sp,8
    31c0:	00040593          	mv	a1,s0
    31c4:	000a0513          	mv	a0,s4
    31c8:	710030ef          	jal	68d8 <__swhatbuf_r>
    31cc:	00c45783          	lhu	a5,12(s0)
    31d0:	00a7e7b3          	or	a5,a5,a0
    31d4:	00f41623          	sh	a5,12(s0)
    31d8:	0a048863          	beqz	s1,3288 <setvbuf+0x184>
    31dc:	0a090863          	beqz	s2,328c <setvbuf+0x188>
    31e0:	034a2783          	lw	a5,52(s4)
    31e4:	0c078663          	beqz	a5,32b0 <setvbuf+0x1ac>
    31e8:	00812703          	lw	a4,8(sp)
    31ec:	00c41783          	lh	a5,12(s0)
    31f0:	00970a63          	beq	a4,s1,3204 <setvbuf+0x100>
    31f4:	00001737          	lui	a4,0x1
    31f8:	80070713          	add	a4,a4,-2048 # 800 <_read+0x78>
    31fc:	00e7e7b3          	or	a5,a5,a4
    3200:	00f41623          	sh	a5,12(s0)
    3204:	00100713          	li	a4,1
    3208:	00e99663          	bne	s3,a4,3214 <setvbuf+0x110>
    320c:	0017e793          	or	a5,a5,1
    3210:	00f41623          	sh	a5,12(s0)
    3214:	01242023          	sw	s2,0(s0)
    3218:	01242823          	sw	s2,16(s0)
    321c:	00942a23          	sw	s1,20(s0)
    3220:	0087f713          	and	a4,a5,8
    3224:	08070c63          	beqz	a4,32bc <setvbuf+0x1b8>
    3228:	0017f713          	and	a4,a5,1
    322c:	12070063          	beqz	a4,334c <setvbuf+0x248>
    3230:	06442703          	lw	a4,100(s0)
    3234:	409004b3          	neg	s1,s1
    3238:	00042423          	sw	zero,8(s0)
    323c:	00942c23          	sw	s1,24(s0)
    3240:	00177713          	and	a4,a4,1
    3244:	08070463          	beqz	a4,32cc <setvbuf+0x1c8>
    3248:	00000493          	li	s1,0
    324c:	02c12083          	lw	ra,44(sp)
    3250:	02812403          	lw	s0,40(sp)
    3254:	02012903          	lw	s2,32(sp)
    3258:	01c12983          	lw	s3,28(sp)
    325c:	01812a03          	lw	s4,24(sp)
    3260:	00048513          	mv	a0,s1
    3264:	02412483          	lw	s1,36(sp)
    3268:	03010113          	add	sp,sp,48
    326c:	00008067          	ret
    3270:	00c45783          	lhu	a5,12(s0)
    3274:	2007f793          	and	a5,a5,512
    3278:	ee0796e3          	bnez	a5,3164 <setvbuf+0x60>
    327c:	05842503          	lw	a0,88(s0)
    3280:	4f8000ef          	jal	3778 <__retarget_lock_acquire_recursive>
    3284:	ee1ff06f          	j	3164 <setvbuf+0x60>
    3288:	00812483          	lw	s1,8(sp)
    328c:	00048513          	mv	a0,s1
    3290:	2d9000ef          	jal	3d68 <malloc>
    3294:	00050913          	mv	s2,a0
    3298:	0c050863          	beqz	a0,3368 <setvbuf+0x264>
    329c:	00c45783          	lhu	a5,12(s0)
    32a0:	0807e793          	or	a5,a5,128
    32a4:	00f41623          	sh	a5,12(s0)
    32a8:	034a2783          	lw	a5,52(s4)
    32ac:	f2079ee3          	bnez	a5,31e8 <setvbuf+0xe4>
    32b0:	000a0513          	mv	a0,s4
    32b4:	b3dff0ef          	jal	2df0 <__sinit>
    32b8:	f31ff06f          	j	31e8 <setvbuf+0xe4>
    32bc:	00042423          	sw	zero,8(s0)
    32c0:	06442703          	lw	a4,100(s0)
    32c4:	00177713          	and	a4,a4,1
    32c8:	f80710e3          	bnez	a4,3248 <setvbuf+0x144>
    32cc:	2007f793          	and	a5,a5,512
    32d0:	f6079ce3          	bnez	a5,3248 <setvbuf+0x144>
    32d4:	05842503          	lw	a0,88(s0)
    32d8:	4b8000ef          	jal	3790 <__retarget_lock_release_recursive>
    32dc:	f6dff06f          	j	3248 <setvbuf+0x144>
    32e0:	01042583          	lw	a1,16(s0)
    32e4:	000a0513          	mv	a0,s4
    32e8:	774000ef          	jal	3a5c <_free_r>
    32ec:	00c41783          	lh	a5,12(s0)
    32f0:	fffff737          	lui	a4,0xfffff
    32f4:	35c70713          	add	a4,a4,860 # fffff35c <GET_WATCHDOG_LOW+0xffdfe31c>
    32f8:	00e7f7b3          	and	a5,a5,a4
    32fc:	00f41623          	sh	a5,12(s0)
    3300:	00200713          	li	a4,2
    3304:	eae99ae3          	bne	s3,a4,31b8 <setvbuf+0xb4>
    3308:	00000493          	li	s1,0
    330c:	06442703          	lw	a4,100(s0)
    3310:	04340693          	add	a3,s0,67
    3314:	0027e613          	or	a2,a5,2
    3318:	00d42023          	sw	a3,0(s0)
    331c:	00d42823          	sw	a3,16(s0)
    3320:	00100693          	li	a3,1
    3324:	00c41623          	sh	a2,12(s0)
    3328:	00042423          	sw	zero,8(s0)
    332c:	00d42a23          	sw	a3,20(s0)
    3330:	00177713          	and	a4,a4,1
    3334:	f0071ce3          	bnez	a4,324c <setvbuf+0x148>
    3338:	2007f793          	and	a5,a5,512
    333c:	f00798e3          	bnez	a5,324c <setvbuf+0x148>
    3340:	05842503          	lw	a0,88(s0)
    3344:	44c000ef          	jal	3790 <__retarget_lock_release_recursive>
    3348:	f05ff06f          	j	324c <setvbuf+0x148>
    334c:	00942423          	sw	s1,8(s0)
    3350:	f71ff06f          	j	32c0 <setvbuf+0x1bc>
    3354:	000a0513          	mv	a0,s4
    3358:	a99ff0ef          	jal	2df0 <__sinit>
    335c:	de9ff06f          	j	3144 <setvbuf+0x40>
    3360:	fff00493          	li	s1,-1
    3364:	ee9ff06f          	j	324c <setvbuf+0x148>
    3368:	01512a23          	sw	s5,20(sp)
    336c:	00812a83          	lw	s5,8(sp)
    3370:	029a8063          	beq	s5,s1,3390 <setvbuf+0x28c>
    3374:	000a8513          	mv	a0,s5
    3378:	1f1000ef          	jal	3d68 <malloc>
    337c:	00050913          	mv	s2,a0
    3380:	000a8493          	mv	s1,s5
    3384:	00050663          	beqz	a0,3390 <setvbuf+0x28c>
    3388:	01412a83          	lw	s5,20(sp)
    338c:	f11ff06f          	j	329c <setvbuf+0x198>
    3390:	00c41783          	lh	a5,12(s0)
    3394:	01412a83          	lw	s5,20(sp)
    3398:	fff00493          	li	s1,-1
    339c:	f71ff06f          	j	330c <setvbuf+0x208>

000033a0 <__sread>:
    33a0:	ff010113          	add	sp,sp,-16
    33a4:	00812423          	sw	s0,8(sp)
    33a8:	00058413          	mv	s0,a1
    33ac:	00e59583          	lh	a1,14(a1)
    33b0:	00112623          	sw	ra,12(sp)
    33b4:	2dc000ef          	jal	3690 <_read_r>
    33b8:	02054063          	bltz	a0,33d8 <__sread+0x38>
    33bc:	05042783          	lw	a5,80(s0)
    33c0:	00c12083          	lw	ra,12(sp)
    33c4:	00a787b3          	add	a5,a5,a0
    33c8:	04f42823          	sw	a5,80(s0)
    33cc:	00812403          	lw	s0,8(sp)
    33d0:	01010113          	add	sp,sp,16
    33d4:	00008067          	ret
    33d8:	00c45783          	lhu	a5,12(s0)
    33dc:	fffff737          	lui	a4,0xfffff
    33e0:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    33e4:	00e7f7b3          	and	a5,a5,a4
    33e8:	00c12083          	lw	ra,12(sp)
    33ec:	00f41623          	sh	a5,12(s0)
    33f0:	00812403          	lw	s0,8(sp)
    33f4:	01010113          	add	sp,sp,16
    33f8:	00008067          	ret

000033fc <__seofread>:
    33fc:	00000513          	li	a0,0
    3400:	00008067          	ret

00003404 <__swrite>:
    3404:	00c59783          	lh	a5,12(a1)
    3408:	fe010113          	add	sp,sp,-32
    340c:	00812c23          	sw	s0,24(sp)
    3410:	00912a23          	sw	s1,20(sp)
    3414:	01212823          	sw	s2,16(sp)
    3418:	01312623          	sw	s3,12(sp)
    341c:	00112e23          	sw	ra,28(sp)
    3420:	1007f713          	and	a4,a5,256
    3424:	00058413          	mv	s0,a1
    3428:	00050493          	mv	s1,a0
    342c:	00060913          	mv	s2,a2
    3430:	00068993          	mv	s3,a3
    3434:	04071063          	bnez	a4,3474 <__swrite+0x70>
    3438:	fffff737          	lui	a4,0xfffff
    343c:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    3440:	00e7f7b3          	and	a5,a5,a4
    3444:	00e41583          	lh	a1,14(s0)
    3448:	00f41623          	sh	a5,12(s0)
    344c:	01812403          	lw	s0,24(sp)
    3450:	01c12083          	lw	ra,28(sp)
    3454:	00098693          	mv	a3,s3
    3458:	00090613          	mv	a2,s2
    345c:	00c12983          	lw	s3,12(sp)
    3460:	01012903          	lw	s2,16(sp)
    3464:	00048513          	mv	a0,s1
    3468:	01412483          	lw	s1,20(sp)
    346c:	02010113          	add	sp,sp,32
    3470:	2840006f          	j	36f4 <_write_r>
    3474:	00e59583          	lh	a1,14(a1)
    3478:	00200693          	li	a3,2
    347c:	00000613          	li	a2,0
    3480:	1ac000ef          	jal	362c <_lseek_r>
    3484:	00c41783          	lh	a5,12(s0)
    3488:	fb1ff06f          	j	3438 <__swrite+0x34>

0000348c <__sseek>:
    348c:	ff010113          	add	sp,sp,-16
    3490:	00812423          	sw	s0,8(sp)
    3494:	00058413          	mv	s0,a1
    3498:	00e59583          	lh	a1,14(a1)
    349c:	00112623          	sw	ra,12(sp)
    34a0:	18c000ef          	jal	362c <_lseek_r>
    34a4:	fff00793          	li	a5,-1
    34a8:	02f50863          	beq	a0,a5,34d8 <__sseek+0x4c>
    34ac:	00c45783          	lhu	a5,12(s0)
    34b0:	00001737          	lui	a4,0x1
    34b4:	00c12083          	lw	ra,12(sp)
    34b8:	00e7e7b3          	or	a5,a5,a4
    34bc:	01079793          	sll	a5,a5,0x10
    34c0:	4107d793          	sra	a5,a5,0x10
    34c4:	04a42823          	sw	a0,80(s0)
    34c8:	00f41623          	sh	a5,12(s0)
    34cc:	00812403          	lw	s0,8(sp)
    34d0:	01010113          	add	sp,sp,16
    34d4:	00008067          	ret
    34d8:	00c45783          	lhu	a5,12(s0)
    34dc:	fffff737          	lui	a4,0xfffff
    34e0:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    34e4:	00e7f7b3          	and	a5,a5,a4
    34e8:	01079793          	sll	a5,a5,0x10
    34ec:	4107d793          	sra	a5,a5,0x10
    34f0:	00c12083          	lw	ra,12(sp)
    34f4:	00f41623          	sh	a5,12(s0)
    34f8:	00812403          	lw	s0,8(sp)
    34fc:	01010113          	add	sp,sp,16
    3500:	00008067          	ret

00003504 <__sclose>:
    3504:	00e59583          	lh	a1,14(a1)
    3508:	0040006f          	j	350c <_close_r>

0000350c <_close_r>:
    350c:	ff010113          	add	sp,sp,-16
    3510:	00812423          	sw	s0,8(sp)
    3514:	00050413          	mv	s0,a0
    3518:	00058513          	mv	a0,a1
    351c:	00032797          	auipc	a5,0x32
    3520:	ae07a623          	sw	zero,-1300(a5) # 35008 <errno>
    3524:	00112623          	sw	ra,12(sp)
    3528:	adcfd0ef          	jal	804 <_close>
    352c:	fff00793          	li	a5,-1
    3530:	00f50a63          	beq	a0,a5,3544 <_close_r+0x38>
    3534:	00c12083          	lw	ra,12(sp)
    3538:	00812403          	lw	s0,8(sp)
    353c:	01010113          	add	sp,sp,16
    3540:	00008067          	ret
    3544:	00032797          	auipc	a5,0x32
    3548:	ac47a783          	lw	a5,-1340(a5) # 35008 <errno>
    354c:	fe0784e3          	beqz	a5,3534 <_close_r+0x28>
    3550:	00c12083          	lw	ra,12(sp)
    3554:	00f42023          	sw	a5,0(s0)
    3558:	00812403          	lw	s0,8(sp)
    355c:	01010113          	add	sp,sp,16
    3560:	00008067          	ret

00003564 <_reclaim_reent>:
    3564:	00031797          	auipc	a5,0x31
    3568:	2a07a783          	lw	a5,672(a5) # 34804 <_impure_ptr>
    356c:	0aa78e63          	beq	a5,a0,3628 <_reclaim_reent+0xc4>
    3570:	04452583          	lw	a1,68(a0)
    3574:	fe010113          	add	sp,sp,-32
    3578:	00912a23          	sw	s1,20(sp)
    357c:	00112e23          	sw	ra,28(sp)
    3580:	00050493          	mv	s1,a0
    3584:	04058c63          	beqz	a1,35dc <_reclaim_reent+0x78>
    3588:	01212823          	sw	s2,16(sp)
    358c:	01312623          	sw	s3,12(sp)
    3590:	00812c23          	sw	s0,24(sp)
    3594:	00000913          	li	s2,0
    3598:	08000993          	li	s3,128
    359c:	012587b3          	add	a5,a1,s2
    35a0:	0007a403          	lw	s0,0(a5)
    35a4:	00040e63          	beqz	s0,35c0 <_reclaim_reent+0x5c>
    35a8:	00040593          	mv	a1,s0
    35ac:	00042403          	lw	s0,0(s0)
    35b0:	00048513          	mv	a0,s1
    35b4:	4a8000ef          	jal	3a5c <_free_r>
    35b8:	fe0418e3          	bnez	s0,35a8 <_reclaim_reent+0x44>
    35bc:	0444a583          	lw	a1,68(s1)
    35c0:	00490913          	add	s2,s2,4
    35c4:	fd391ce3          	bne	s2,s3,359c <_reclaim_reent+0x38>
    35c8:	00048513          	mv	a0,s1
    35cc:	490000ef          	jal	3a5c <_free_r>
    35d0:	01812403          	lw	s0,24(sp)
    35d4:	01012903          	lw	s2,16(sp)
    35d8:	00c12983          	lw	s3,12(sp)
    35dc:	0384a583          	lw	a1,56(s1)
    35e0:	00058663          	beqz	a1,35ec <_reclaim_reent+0x88>
    35e4:	00048513          	mv	a0,s1
    35e8:	474000ef          	jal	3a5c <_free_r>
    35ec:	04c4a583          	lw	a1,76(s1)
    35f0:	00058663          	beqz	a1,35fc <_reclaim_reent+0x98>
    35f4:	00048513          	mv	a0,s1
    35f8:	464000ef          	jal	3a5c <_free_r>
    35fc:	0344a783          	lw	a5,52(s1)
    3600:	00078c63          	beqz	a5,3618 <_reclaim_reent+0xb4>
    3604:	01c12083          	lw	ra,28(sp)
    3608:	00048513          	mv	a0,s1
    360c:	01412483          	lw	s1,20(sp)
    3610:	02010113          	add	sp,sp,32
    3614:	00078067          	jr	a5
    3618:	01c12083          	lw	ra,28(sp)
    361c:	01412483          	lw	s1,20(sp)
    3620:	02010113          	add	sp,sp,32
    3624:	00008067          	ret
    3628:	00008067          	ret

0000362c <_lseek_r>:
    362c:	ff010113          	add	sp,sp,-16
    3630:	00058713          	mv	a4,a1
    3634:	00812423          	sw	s0,8(sp)
    3638:	00060593          	mv	a1,a2
    363c:	00050413          	mv	s0,a0
    3640:	00068613          	mv	a2,a3
    3644:	00070513          	mv	a0,a4
    3648:	00032797          	auipc	a5,0x32
    364c:	9c07a023          	sw	zero,-1600(a5) # 35008 <errno>
    3650:	00112623          	sw	ra,12(sp)
    3654:	a2cfd0ef          	jal	880 <_lseek>
    3658:	fff00793          	li	a5,-1
    365c:	00f50a63          	beq	a0,a5,3670 <_lseek_r+0x44>
    3660:	00c12083          	lw	ra,12(sp)
    3664:	00812403          	lw	s0,8(sp)
    3668:	01010113          	add	sp,sp,16
    366c:	00008067          	ret
    3670:	00032797          	auipc	a5,0x32
    3674:	9987a783          	lw	a5,-1640(a5) # 35008 <errno>
    3678:	fe0784e3          	beqz	a5,3660 <_lseek_r+0x34>
    367c:	00c12083          	lw	ra,12(sp)
    3680:	00f42023          	sw	a5,0(s0)
    3684:	00812403          	lw	s0,8(sp)
    3688:	01010113          	add	sp,sp,16
    368c:	00008067          	ret

00003690 <_read_r>:
    3690:	ff010113          	add	sp,sp,-16
    3694:	00058713          	mv	a4,a1
    3698:	00812423          	sw	s0,8(sp)
    369c:	00060593          	mv	a1,a2
    36a0:	00050413          	mv	s0,a0
    36a4:	00068613          	mv	a2,a3
    36a8:	00070513          	mv	a0,a4
    36ac:	00032797          	auipc	a5,0x32
    36b0:	9407ae23          	sw	zero,-1700(a5) # 35008 <errno>
    36b4:	00112623          	sw	ra,12(sp)
    36b8:	8d0fd0ef          	jal	788 <_read>
    36bc:	fff00793          	li	a5,-1
    36c0:	00f50a63          	beq	a0,a5,36d4 <_read_r+0x44>
    36c4:	00c12083          	lw	ra,12(sp)
    36c8:	00812403          	lw	s0,8(sp)
    36cc:	01010113          	add	sp,sp,16
    36d0:	00008067          	ret
    36d4:	00032797          	auipc	a5,0x32
    36d8:	9347a783          	lw	a5,-1740(a5) # 35008 <errno>
    36dc:	fe0784e3          	beqz	a5,36c4 <_read_r+0x34>
    36e0:	00c12083          	lw	ra,12(sp)
    36e4:	00f42023          	sw	a5,0(s0)
    36e8:	00812403          	lw	s0,8(sp)
    36ec:	01010113          	add	sp,sp,16
    36f0:	00008067          	ret

000036f4 <_write_r>:
    36f4:	ff010113          	add	sp,sp,-16
    36f8:	00058713          	mv	a4,a1
    36fc:	00812423          	sw	s0,8(sp)
    3700:	00060593          	mv	a1,a2
    3704:	00050413          	mv	s0,a0
    3708:	00068613          	mv	a2,a3
    370c:	00070513          	mv	a0,a4
    3710:	00032797          	auipc	a5,0x32
    3714:	8e07ac23          	sw	zero,-1800(a5) # 35008 <errno>
    3718:	00112623          	sw	ra,12(sp)
    371c:	ffdfc0ef          	jal	718 <_write>
    3720:	fff00793          	li	a5,-1
    3724:	00f50a63          	beq	a0,a5,3738 <_write_r+0x44>
    3728:	00c12083          	lw	ra,12(sp)
    372c:	00812403          	lw	s0,8(sp)
    3730:	01010113          	add	sp,sp,16
    3734:	00008067          	ret
    3738:	00032797          	auipc	a5,0x32
    373c:	8d07a783          	lw	a5,-1840(a5) # 35008 <errno>
    3740:	fe0784e3          	beqz	a5,3728 <_write_r+0x34>
    3744:	00c12083          	lw	ra,12(sp)
    3748:	00f42023          	sw	a5,0(s0)
    374c:	00812403          	lw	s0,8(sp)
    3750:	01010113          	add	sp,sp,16
    3754:	00008067          	ret

00003758 <__errno>:
    3758:	00031517          	auipc	a0,0x31
    375c:	0ac52503          	lw	a0,172(a0) # 34804 <_impure_ptr>
    3760:	00008067          	ret

00003764 <__retarget_lock_init>:
    3764:	00008067          	ret

00003768 <__retarget_lock_init_recursive>:
    3768:	00008067          	ret

0000376c <__retarget_lock_close>:
    376c:	00008067          	ret

00003770 <__retarget_lock_close_recursive>:
    3770:	00008067          	ret

00003774 <__retarget_lock_acquire>:
    3774:	00008067          	ret

00003778 <__retarget_lock_acquire_recursive>:
    3778:	00008067          	ret

0000377c <__retarget_lock_try_acquire>:
    377c:	00100513          	li	a0,1
    3780:	00008067          	ret

00003784 <__retarget_lock_try_acquire_recursive>:
    3784:	00100513          	li	a0,1
    3788:	00008067          	ret

0000378c <__retarget_lock_release>:
    378c:	00008067          	ret

00003790 <__retarget_lock_release_recursive>:
    3790:	00008067          	ret

00003794 <register_fini>:
    3794:	00000793          	li	a5,0
    3798:	00078863          	beqz	a5,37a8 <register_fini+0x14>
    379c:	ffffd517          	auipc	a0,0xffffd
    37a0:	19c50513          	add	a0,a0,412 # 938 <__libc_fini_array>
    37a4:	1600006f          	j	3904 <atexit>
    37a8:	00008067          	ret

000037ac <__call_exitprocs>:
    37ac:	fd010113          	add	sp,sp,-48
    37b0:	01712623          	sw	s7,12(sp)
    37b4:	00031b97          	auipc	s7,0x31
    37b8:	054b8b93          	add	s7,s7,84 # 34808 <__atexit_recursive_mutex>
    37bc:	01612823          	sw	s6,16(sp)
    37c0:	00050b13          	mv	s6,a0
    37c4:	000ba503          	lw	a0,0(s7)
    37c8:	01412c23          	sw	s4,24(sp)
    37cc:	00032a17          	auipc	s4,0x32
    37d0:	860a0a13          	add	s4,s4,-1952 # 3502c <__atexit>
    37d4:	03212023          	sw	s2,32(sp)
    37d8:	01812423          	sw	s8,8(sp)
    37dc:	02112623          	sw	ra,44(sp)
    37e0:	00058c13          	mv	s8,a1
    37e4:	f95ff0ef          	jal	3778 <__retarget_lock_acquire_recursive>
    37e8:	000a2903          	lw	s2,0(s4)
    37ec:	08090c63          	beqz	s2,3884 <__call_exitprocs+0xd8>
    37f0:	01312e23          	sw	s3,28(sp)
    37f4:	01512a23          	sw	s5,20(sp)
    37f8:	02812423          	sw	s0,40(sp)
    37fc:	02912223          	sw	s1,36(sp)
    3800:	01912223          	sw	s9,4(sp)
    3804:	fff00993          	li	s3,-1
    3808:	00100a93          	li	s5,1
    380c:	00492483          	lw	s1,4(s2)
    3810:	fff48413          	add	s0,s1,-1
    3814:	04044e63          	bltz	s0,3870 <__call_exitprocs+0xc4>
    3818:	00249493          	sll	s1,s1,0x2
    381c:	009904b3          	add	s1,s2,s1
    3820:	080c1463          	bnez	s8,38a8 <__call_exitprocs+0xfc>
    3824:	00492783          	lw	a5,4(s2)
    3828:	0044a683          	lw	a3,4(s1)
    382c:	fff78793          	add	a5,a5,-1
    3830:	0c878063          	beq	a5,s0,38f0 <__call_exitprocs+0x144>
    3834:	0004a223          	sw	zero,4(s1)
    3838:	02068663          	beqz	a3,3864 <__call_exitprocs+0xb8>
    383c:	18892783          	lw	a5,392(s2)
    3840:	008a9733          	sll	a4,s5,s0
    3844:	00492c83          	lw	s9,4(s2)
    3848:	00f777b3          	and	a5,a4,a5
    384c:	06079a63          	bnez	a5,38c0 <__call_exitprocs+0x114>
    3850:	000680e7          	jalr	a3
    3854:	00492703          	lw	a4,4(s2)
    3858:	000a2783          	lw	a5,0(s4)
    385c:	09971463          	bne	a4,s9,38e4 <__call_exitprocs+0x138>
    3860:	09279263          	bne	a5,s2,38e4 <__call_exitprocs+0x138>
    3864:	fff40413          	add	s0,s0,-1
    3868:	ffc48493          	add	s1,s1,-4
    386c:	fb341ae3          	bne	s0,s3,3820 <__call_exitprocs+0x74>
    3870:	02812403          	lw	s0,40(sp)
    3874:	02412483          	lw	s1,36(sp)
    3878:	01c12983          	lw	s3,28(sp)
    387c:	01412a83          	lw	s5,20(sp)
    3880:	00412c83          	lw	s9,4(sp)
    3884:	000ba503          	lw	a0,0(s7)
    3888:	02c12083          	lw	ra,44(sp)
    388c:	02012903          	lw	s2,32(sp)
    3890:	01812a03          	lw	s4,24(sp)
    3894:	01012b03          	lw	s6,16(sp)
    3898:	00c12b83          	lw	s7,12(sp)
    389c:	00812c03          	lw	s8,8(sp)
    38a0:	03010113          	add	sp,sp,48
    38a4:	eedff06f          	j	3790 <__retarget_lock_release_recursive>
    38a8:	1044a783          	lw	a5,260(s1)
    38ac:	f7878ce3          	beq	a5,s8,3824 <__call_exitprocs+0x78>
    38b0:	fff40413          	add	s0,s0,-1
    38b4:	ffc48493          	add	s1,s1,-4
    38b8:	ff3418e3          	bne	s0,s3,38a8 <__call_exitprocs+0xfc>
    38bc:	fb5ff06f          	j	3870 <__call_exitprocs+0xc4>
    38c0:	18c92783          	lw	a5,396(s2)
    38c4:	0844a583          	lw	a1,132(s1)
    38c8:	00f77733          	and	a4,a4,a5
    38cc:	02071663          	bnez	a4,38f8 <__call_exitprocs+0x14c>
    38d0:	000b0513          	mv	a0,s6
    38d4:	000680e7          	jalr	a3
    38d8:	00492703          	lw	a4,4(s2)
    38dc:	000a2783          	lw	a5,0(s4)
    38e0:	f99700e3          	beq	a4,s9,3860 <__call_exitprocs+0xb4>
    38e4:	f80786e3          	beqz	a5,3870 <__call_exitprocs+0xc4>
    38e8:	00078913          	mv	s2,a5
    38ec:	f21ff06f          	j	380c <__call_exitprocs+0x60>
    38f0:	00892223          	sw	s0,4(s2)
    38f4:	f45ff06f          	j	3838 <__call_exitprocs+0x8c>
    38f8:	00058513          	mv	a0,a1
    38fc:	000680e7          	jalr	a3
    3900:	f55ff06f          	j	3854 <__call_exitprocs+0xa8>

00003904 <atexit>:
    3904:	00050593          	mv	a1,a0
    3908:	00000693          	li	a3,0
    390c:	00000613          	li	a2,0
    3910:	00000513          	li	a0,0
    3914:	5fc0406f          	j	7f10 <__register_exitproc>

00003918 <_malloc_trim_r>:
    3918:	fe010113          	add	sp,sp,-32
    391c:	00812c23          	sw	s0,24(sp)
    3920:	00912a23          	sw	s1,20(sp)
    3924:	01212823          	sw	s2,16(sp)
    3928:	01312623          	sw	s3,12(sp)
    392c:	01412423          	sw	s4,8(sp)
    3930:	00058993          	mv	s3,a1
    3934:	00112e23          	sw	ra,28(sp)
    3938:	00050913          	mv	s2,a0
    393c:	00030a17          	auipc	s4,0x30
    3940:	7f4a0a13          	add	s4,s4,2036 # 34130 <__malloc_av_>
    3944:	425000ef          	jal	4568 <__malloc_lock>
    3948:	008a2703          	lw	a4,8(s4)
    394c:	000017b7          	lui	a5,0x1
    3950:	fef78793          	add	a5,a5,-17 # fef <uart_putc+0x4b>
    3954:	00472483          	lw	s1,4(a4)
    3958:	00001737          	lui	a4,0x1
    395c:	ffc4f493          	and	s1,s1,-4
    3960:	00f48433          	add	s0,s1,a5
    3964:	41340433          	sub	s0,s0,s3
    3968:	00c45413          	srl	s0,s0,0xc
    396c:	fff40413          	add	s0,s0,-1
    3970:	00c41413          	sll	s0,s0,0xc
    3974:	00e44e63          	blt	s0,a4,3990 <_malloc_trim_r+0x78>
    3978:	00000593          	li	a1,0
    397c:	00090513          	mv	a0,s2
    3980:	14c040ef          	jal	7acc <_sbrk_r>
    3984:	008a2783          	lw	a5,8(s4)
    3988:	009787b3          	add	a5,a5,s1
    398c:	02f50863          	beq	a0,a5,39bc <_malloc_trim_r+0xa4>
    3990:	00090513          	mv	a0,s2
    3994:	3e1000ef          	jal	4574 <__malloc_unlock>
    3998:	01c12083          	lw	ra,28(sp)
    399c:	01812403          	lw	s0,24(sp)
    39a0:	01412483          	lw	s1,20(sp)
    39a4:	01012903          	lw	s2,16(sp)
    39a8:	00c12983          	lw	s3,12(sp)
    39ac:	00812a03          	lw	s4,8(sp)
    39b0:	00000513          	li	a0,0
    39b4:	02010113          	add	sp,sp,32
    39b8:	00008067          	ret
    39bc:	408005b3          	neg	a1,s0
    39c0:	00090513          	mv	a0,s2
    39c4:	108040ef          	jal	7acc <_sbrk_r>
    39c8:	fff00793          	li	a5,-1
    39cc:	04f50a63          	beq	a0,a5,3a20 <_malloc_trim_r+0x108>
    39d0:	00032717          	auipc	a4,0x32
    39d4:	f6870713          	add	a4,a4,-152 # 35938 <__malloc_current_mallinfo>
    39d8:	00072783          	lw	a5,0(a4)
    39dc:	008a2683          	lw	a3,8(s4)
    39e0:	408484b3          	sub	s1,s1,s0
    39e4:	0014e493          	or	s1,s1,1
    39e8:	408787b3          	sub	a5,a5,s0
    39ec:	00090513          	mv	a0,s2
    39f0:	0096a223          	sw	s1,4(a3)
    39f4:	00f72023          	sw	a5,0(a4)
    39f8:	37d000ef          	jal	4574 <__malloc_unlock>
    39fc:	01c12083          	lw	ra,28(sp)
    3a00:	01812403          	lw	s0,24(sp)
    3a04:	01412483          	lw	s1,20(sp)
    3a08:	01012903          	lw	s2,16(sp)
    3a0c:	00c12983          	lw	s3,12(sp)
    3a10:	00812a03          	lw	s4,8(sp)
    3a14:	00100513          	li	a0,1
    3a18:	02010113          	add	sp,sp,32
    3a1c:	00008067          	ret
    3a20:	00000593          	li	a1,0
    3a24:	00090513          	mv	a0,s2
    3a28:	0a4040ef          	jal	7acc <_sbrk_r>
    3a2c:	008a2703          	lw	a4,8(s4)
    3a30:	00f00693          	li	a3,15
    3a34:	40e507b3          	sub	a5,a0,a4
    3a38:	f4f6dce3          	bge	a3,a5,3990 <_malloc_trim_r+0x78>
    3a3c:	00031697          	auipc	a3,0x31
    3a40:	dd06a683          	lw	a3,-560(a3) # 3480c <__malloc_sbrk_base>
    3a44:	40d50533          	sub	a0,a0,a3
    3a48:	0017e793          	or	a5,a5,1
    3a4c:	00032697          	auipc	a3,0x32
    3a50:	eea6a623          	sw	a0,-276(a3) # 35938 <__malloc_current_mallinfo>
    3a54:	00f72223          	sw	a5,4(a4)
    3a58:	f39ff06f          	j	3990 <_malloc_trim_r+0x78>

00003a5c <_free_r>:
    3a5c:	18058263          	beqz	a1,3be0 <_free_r+0x184>
    3a60:	ff010113          	add	sp,sp,-16
    3a64:	00812423          	sw	s0,8(sp)
    3a68:	00912223          	sw	s1,4(sp)
    3a6c:	00058413          	mv	s0,a1
    3a70:	00050493          	mv	s1,a0
    3a74:	00112623          	sw	ra,12(sp)
    3a78:	2f1000ef          	jal	4568 <__malloc_lock>
    3a7c:	ffc42583          	lw	a1,-4(s0)
    3a80:	ff840713          	add	a4,s0,-8
    3a84:	00030517          	auipc	a0,0x30
    3a88:	6ac50513          	add	a0,a0,1708 # 34130 <__malloc_av_>
    3a8c:	ffe5f793          	and	a5,a1,-2
    3a90:	00f70633          	add	a2,a4,a5
    3a94:	00462683          	lw	a3,4(a2) # 2004 <__divdi3+0x404>
    3a98:	00852803          	lw	a6,8(a0)
    3a9c:	ffc6f693          	and	a3,a3,-4
    3aa0:	1ac80263          	beq	a6,a2,3c44 <_free_r+0x1e8>
    3aa4:	00d62223          	sw	a3,4(a2)
    3aa8:	0015f593          	and	a1,a1,1
    3aac:	00d60833          	add	a6,a2,a3
    3ab0:	0a059063          	bnez	a1,3b50 <_free_r+0xf4>
    3ab4:	ff842303          	lw	t1,-8(s0)
    3ab8:	00482583          	lw	a1,4(a6)
    3abc:	00030897          	auipc	a7,0x30
    3ac0:	67c88893          	add	a7,a7,1660 # 34138 <__malloc_av_+0x8>
    3ac4:	40670733          	sub	a4,a4,t1
    3ac8:	00872803          	lw	a6,8(a4)
    3acc:	006787b3          	add	a5,a5,t1
    3ad0:	0015f593          	and	a1,a1,1
    3ad4:	15180263          	beq	a6,a7,3c18 <_free_r+0x1bc>
    3ad8:	00c72303          	lw	t1,12(a4)
    3adc:	00682623          	sw	t1,12(a6)
    3ae0:	01032423          	sw	a6,8(t1)
    3ae4:	1a058a63          	beqz	a1,3c98 <_free_r+0x23c>
    3ae8:	0017e693          	or	a3,a5,1
    3aec:	00d72223          	sw	a3,4(a4)
    3af0:	00f62023          	sw	a5,0(a2)
    3af4:	1ff00693          	li	a3,511
    3af8:	06f6ec63          	bltu	a3,a5,3b70 <_free_r+0x114>
    3afc:	ff87f693          	and	a3,a5,-8
    3b00:	00868693          	add	a3,a3,8
    3b04:	00452583          	lw	a1,4(a0)
    3b08:	00d506b3          	add	a3,a0,a3
    3b0c:	0006a603          	lw	a2,0(a3)
    3b10:	0057d813          	srl	a6,a5,0x5
    3b14:	00100793          	li	a5,1
    3b18:	010797b3          	sll	a5,a5,a6
    3b1c:	00b7e7b3          	or	a5,a5,a1
    3b20:	ff868593          	add	a1,a3,-8
    3b24:	00b72623          	sw	a1,12(a4)
    3b28:	00c72423          	sw	a2,8(a4)
    3b2c:	00f52223          	sw	a5,4(a0)
    3b30:	00e6a023          	sw	a4,0(a3)
    3b34:	00e62623          	sw	a4,12(a2)
    3b38:	00812403          	lw	s0,8(sp)
    3b3c:	00c12083          	lw	ra,12(sp)
    3b40:	00048513          	mv	a0,s1
    3b44:	00412483          	lw	s1,4(sp)
    3b48:	01010113          	add	sp,sp,16
    3b4c:	2290006f          	j	4574 <__malloc_unlock>
    3b50:	00482583          	lw	a1,4(a6)
    3b54:	0015f593          	and	a1,a1,1
    3b58:	08058663          	beqz	a1,3be4 <_free_r+0x188>
    3b5c:	0017e693          	or	a3,a5,1
    3b60:	fed42e23          	sw	a3,-4(s0)
    3b64:	00f62023          	sw	a5,0(a2)
    3b68:	1ff00693          	li	a3,511
    3b6c:	f8f6f8e3          	bgeu	a3,a5,3afc <_free_r+0xa0>
    3b70:	0097d693          	srl	a3,a5,0x9
    3b74:	00400613          	li	a2,4
    3b78:	12d66463          	bltu	a2,a3,3ca0 <_free_r+0x244>
    3b7c:	0067d693          	srl	a3,a5,0x6
    3b80:	03968593          	add	a1,a3,57
    3b84:	03868613          	add	a2,a3,56
    3b88:	00359593          	sll	a1,a1,0x3
    3b8c:	00b505b3          	add	a1,a0,a1
    3b90:	0005a683          	lw	a3,0(a1)
    3b94:	ff858593          	add	a1,a1,-8
    3b98:	00d59863          	bne	a1,a3,3ba8 <_free_r+0x14c>
    3b9c:	15c0006f          	j	3cf8 <_free_r+0x29c>
    3ba0:	0086a683          	lw	a3,8(a3)
    3ba4:	00d58863          	beq	a1,a3,3bb4 <_free_r+0x158>
    3ba8:	0046a603          	lw	a2,4(a3)
    3bac:	ffc67613          	and	a2,a2,-4
    3bb0:	fec7e8e3          	bltu	a5,a2,3ba0 <_free_r+0x144>
    3bb4:	00c6a583          	lw	a1,12(a3)
    3bb8:	00b72623          	sw	a1,12(a4)
    3bbc:	00d72423          	sw	a3,8(a4)
    3bc0:	00812403          	lw	s0,8(sp)
    3bc4:	00c12083          	lw	ra,12(sp)
    3bc8:	00e5a423          	sw	a4,8(a1)
    3bcc:	00048513          	mv	a0,s1
    3bd0:	00412483          	lw	s1,4(sp)
    3bd4:	00e6a623          	sw	a4,12(a3)
    3bd8:	01010113          	add	sp,sp,16
    3bdc:	1990006f          	j	4574 <__malloc_unlock>
    3be0:	00008067          	ret
    3be4:	00d787b3          	add	a5,a5,a3
    3be8:	00030897          	auipc	a7,0x30
    3bec:	55088893          	add	a7,a7,1360 # 34138 <__malloc_av_+0x8>
    3bf0:	00862683          	lw	a3,8(a2)
    3bf4:	0f168063          	beq	a3,a7,3cd4 <_free_r+0x278>
    3bf8:	00c62803          	lw	a6,12(a2)
    3bfc:	0017e593          	or	a1,a5,1
    3c00:	00f70633          	add	a2,a4,a5
    3c04:	0106a623          	sw	a6,12(a3)
    3c08:	00d82423          	sw	a3,8(a6)
    3c0c:	00b72223          	sw	a1,4(a4)
    3c10:	00f62023          	sw	a5,0(a2)
    3c14:	ee1ff06f          	j	3af4 <_free_r+0x98>
    3c18:	14059063          	bnez	a1,3d58 <_free_r+0x2fc>
    3c1c:	00862583          	lw	a1,8(a2)
    3c20:	00c62603          	lw	a2,12(a2)
    3c24:	00f686b3          	add	a3,a3,a5
    3c28:	0016e793          	or	a5,a3,1
    3c2c:	00c5a623          	sw	a2,12(a1)
    3c30:	00b62423          	sw	a1,8(a2)
    3c34:	00f72223          	sw	a5,4(a4)
    3c38:	00d70733          	add	a4,a4,a3
    3c3c:	00d72023          	sw	a3,0(a4)
    3c40:	ef9ff06f          	j	3b38 <_free_r+0xdc>
    3c44:	0015f593          	and	a1,a1,1
    3c48:	00d786b3          	add	a3,a5,a3
    3c4c:	02059063          	bnez	a1,3c6c <_free_r+0x210>
    3c50:	ff842583          	lw	a1,-8(s0)
    3c54:	40b70733          	sub	a4,a4,a1
    3c58:	00c72783          	lw	a5,12(a4)
    3c5c:	00872603          	lw	a2,8(a4)
    3c60:	00b686b3          	add	a3,a3,a1
    3c64:	00f62623          	sw	a5,12(a2)
    3c68:	00c7a423          	sw	a2,8(a5)
    3c6c:	0016e793          	or	a5,a3,1
    3c70:	00f72223          	sw	a5,4(a4)
    3c74:	00e52423          	sw	a4,8(a0)
    3c78:	00031797          	auipc	a5,0x31
    3c7c:	b987a783          	lw	a5,-1128(a5) # 34810 <__malloc_trim_threshold>
    3c80:	eaf6ece3          	bltu	a3,a5,3b38 <_free_r+0xdc>
    3c84:	00031597          	auipc	a1,0x31
    3c88:	3b45a583          	lw	a1,948(a1) # 35038 <__malloc_top_pad>
    3c8c:	00048513          	mv	a0,s1
    3c90:	c89ff0ef          	jal	3918 <_malloc_trim_r>
    3c94:	ea5ff06f          	j	3b38 <_free_r+0xdc>
    3c98:	00d787b3          	add	a5,a5,a3
    3c9c:	f55ff06f          	j	3bf0 <_free_r+0x194>
    3ca0:	01400613          	li	a2,20
    3ca4:	02d67063          	bgeu	a2,a3,3cc4 <_free_r+0x268>
    3ca8:	05400613          	li	a2,84
    3cac:	06d66463          	bltu	a2,a3,3d14 <_free_r+0x2b8>
    3cb0:	00c7d693          	srl	a3,a5,0xc
    3cb4:	06f68593          	add	a1,a3,111
    3cb8:	06e68613          	add	a2,a3,110
    3cbc:	00359593          	sll	a1,a1,0x3
    3cc0:	ecdff06f          	j	3b8c <_free_r+0x130>
    3cc4:	05c68593          	add	a1,a3,92
    3cc8:	05b68613          	add	a2,a3,91
    3ccc:	00359593          	sll	a1,a1,0x3
    3cd0:	ebdff06f          	j	3b8c <_free_r+0x130>
    3cd4:	00e52a23          	sw	a4,20(a0)
    3cd8:	00e52823          	sw	a4,16(a0)
    3cdc:	0017e693          	or	a3,a5,1
    3ce0:	01172623          	sw	a7,12(a4)
    3ce4:	01172423          	sw	a7,8(a4)
    3ce8:	00d72223          	sw	a3,4(a4)
    3cec:	00f70733          	add	a4,a4,a5
    3cf0:	00f72023          	sw	a5,0(a4)
    3cf4:	e45ff06f          	j	3b38 <_free_r+0xdc>
    3cf8:	00452803          	lw	a6,4(a0)
    3cfc:	40265613          	sra	a2,a2,0x2
    3d00:	00100793          	li	a5,1
    3d04:	00c797b3          	sll	a5,a5,a2
    3d08:	0107e7b3          	or	a5,a5,a6
    3d0c:	00f52223          	sw	a5,4(a0)
    3d10:	ea9ff06f          	j	3bb8 <_free_r+0x15c>
    3d14:	15400613          	li	a2,340
    3d18:	00d66c63          	bltu	a2,a3,3d30 <_free_r+0x2d4>
    3d1c:	00f7d693          	srl	a3,a5,0xf
    3d20:	07868593          	add	a1,a3,120
    3d24:	07768613          	add	a2,a3,119
    3d28:	00359593          	sll	a1,a1,0x3
    3d2c:	e61ff06f          	j	3b8c <_free_r+0x130>
    3d30:	55400613          	li	a2,1364
    3d34:	00d66c63          	bltu	a2,a3,3d4c <_free_r+0x2f0>
    3d38:	0127d693          	srl	a3,a5,0x12
    3d3c:	07d68593          	add	a1,a3,125
    3d40:	07c68613          	add	a2,a3,124
    3d44:	00359593          	sll	a1,a1,0x3
    3d48:	e45ff06f          	j	3b8c <_free_r+0x130>
    3d4c:	3f800593          	li	a1,1016
    3d50:	07e00613          	li	a2,126
    3d54:	e39ff06f          	j	3b8c <_free_r+0x130>
    3d58:	0017e693          	or	a3,a5,1
    3d5c:	00d72223          	sw	a3,4(a4)
    3d60:	00f62023          	sw	a5,0(a2)
    3d64:	dd5ff06f          	j	3b38 <_free_r+0xdc>

00003d68 <malloc>:
    3d68:	00050593          	mv	a1,a0
    3d6c:	00031517          	auipc	a0,0x31
    3d70:	a9852503          	lw	a0,-1384(a0) # 34804 <_impure_ptr>
    3d74:	0140006f          	j	3d88 <_malloc_r>

00003d78 <free>:
    3d78:	00050593          	mv	a1,a0
    3d7c:	00031517          	auipc	a0,0x31
    3d80:	a8852503          	lw	a0,-1400(a0) # 34804 <_impure_ptr>
    3d84:	cd9ff06f          	j	3a5c <_free_r>

00003d88 <_malloc_r>:
    3d88:	fd010113          	add	sp,sp,-48
    3d8c:	03212023          	sw	s2,32(sp)
    3d90:	02112623          	sw	ra,44(sp)
    3d94:	02812423          	sw	s0,40(sp)
    3d98:	02912223          	sw	s1,36(sp)
    3d9c:	01312e23          	sw	s3,28(sp)
    3da0:	00b58793          	add	a5,a1,11
    3da4:	01600713          	li	a4,22
    3da8:	00050913          	mv	s2,a0
    3dac:	08f76263          	bltu	a4,a5,3e30 <_malloc_r+0xa8>
    3db0:	01000793          	li	a5,16
    3db4:	20b7e663          	bltu	a5,a1,3fc0 <_malloc_r+0x238>
    3db8:	7b0000ef          	jal	4568 <__malloc_lock>
    3dbc:	01800793          	li	a5,24
    3dc0:	00200593          	li	a1,2
    3dc4:	01000493          	li	s1,16
    3dc8:	00030997          	auipc	s3,0x30
    3dcc:	36898993          	add	s3,s3,872 # 34130 <__malloc_av_>
    3dd0:	00f987b3          	add	a5,s3,a5
    3dd4:	0047a403          	lw	s0,4(a5)
    3dd8:	ff878713          	add	a4,a5,-8
    3ddc:	36e40463          	beq	s0,a4,4144 <_malloc_r+0x3bc>
    3de0:	00442783          	lw	a5,4(s0)
    3de4:	00c42683          	lw	a3,12(s0)
    3de8:	00842603          	lw	a2,8(s0)
    3dec:	ffc7f793          	and	a5,a5,-4
    3df0:	00f407b3          	add	a5,s0,a5
    3df4:	0047a703          	lw	a4,4(a5)
    3df8:	00d62623          	sw	a3,12(a2)
    3dfc:	00c6a423          	sw	a2,8(a3)
    3e00:	00176713          	or	a4,a4,1
    3e04:	00090513          	mv	a0,s2
    3e08:	00e7a223          	sw	a4,4(a5)
    3e0c:	768000ef          	jal	4574 <__malloc_unlock>
    3e10:	00840513          	add	a0,s0,8
    3e14:	02c12083          	lw	ra,44(sp)
    3e18:	02812403          	lw	s0,40(sp)
    3e1c:	02412483          	lw	s1,36(sp)
    3e20:	02012903          	lw	s2,32(sp)
    3e24:	01c12983          	lw	s3,28(sp)
    3e28:	03010113          	add	sp,sp,48
    3e2c:	00008067          	ret
    3e30:	ff87f493          	and	s1,a5,-8
    3e34:	1807c663          	bltz	a5,3fc0 <_malloc_r+0x238>
    3e38:	18b4e463          	bltu	s1,a1,3fc0 <_malloc_r+0x238>
    3e3c:	72c000ef          	jal	4568 <__malloc_lock>
    3e40:	1f700793          	li	a5,503
    3e44:	4097fa63          	bgeu	a5,s1,4258 <_malloc_r+0x4d0>
    3e48:	0094d793          	srl	a5,s1,0x9
    3e4c:	18078263          	beqz	a5,3fd0 <_malloc_r+0x248>
    3e50:	00400713          	li	a4,4
    3e54:	36f76063          	bltu	a4,a5,41b4 <_malloc_r+0x42c>
    3e58:	0064d793          	srl	a5,s1,0x6
    3e5c:	03978593          	add	a1,a5,57
    3e60:	03878813          	add	a6,a5,56
    3e64:	00359613          	sll	a2,a1,0x3
    3e68:	00030997          	auipc	s3,0x30
    3e6c:	2c898993          	add	s3,s3,712 # 34130 <__malloc_av_>
    3e70:	00c98633          	add	a2,s3,a2
    3e74:	00462403          	lw	s0,4(a2)
    3e78:	ff860613          	add	a2,a2,-8
    3e7c:	02860863          	beq	a2,s0,3eac <_malloc_r+0x124>
    3e80:	00f00513          	li	a0,15
    3e84:	0140006f          	j	3e98 <_malloc_r+0x110>
    3e88:	00c42683          	lw	a3,12(s0)
    3e8c:	2a075863          	bgez	a4,413c <_malloc_r+0x3b4>
    3e90:	00d60e63          	beq	a2,a3,3eac <_malloc_r+0x124>
    3e94:	00068413          	mv	s0,a3
    3e98:	00442783          	lw	a5,4(s0)
    3e9c:	ffc7f793          	and	a5,a5,-4
    3ea0:	40978733          	sub	a4,a5,s1
    3ea4:	fee552e3          	bge	a0,a4,3e88 <_malloc_r+0x100>
    3ea8:	00080593          	mv	a1,a6
    3eac:	0109a403          	lw	s0,16(s3)
    3eb0:	00030897          	auipc	a7,0x30
    3eb4:	28888893          	add	a7,a7,648 # 34138 <__malloc_av_+0x8>
    3eb8:	27140e63          	beq	s0,a7,4134 <_malloc_r+0x3ac>
    3ebc:	00442783          	lw	a5,4(s0)
    3ec0:	00f00693          	li	a3,15
    3ec4:	ffc7f793          	and	a5,a5,-4
    3ec8:	40978733          	sub	a4,a5,s1
    3ecc:	38e6cc63          	blt	a3,a4,4264 <_malloc_r+0x4dc>
    3ed0:	0119aa23          	sw	a7,20(s3)
    3ed4:	0119a823          	sw	a7,16(s3)
    3ed8:	36075063          	bgez	a4,4238 <_malloc_r+0x4b0>
    3edc:	1ff00713          	li	a4,511
    3ee0:	0049a503          	lw	a0,4(s3)
    3ee4:	26f76863          	bltu	a4,a5,4154 <_malloc_r+0x3cc>
    3ee8:	ff87f713          	and	a4,a5,-8
    3eec:	00870713          	add	a4,a4,8
    3ef0:	00e98733          	add	a4,s3,a4
    3ef4:	00072683          	lw	a3,0(a4)
    3ef8:	0057d613          	srl	a2,a5,0x5
    3efc:	00100793          	li	a5,1
    3f00:	00c797b3          	sll	a5,a5,a2
    3f04:	00f56533          	or	a0,a0,a5
    3f08:	ff870793          	add	a5,a4,-8
    3f0c:	00f42623          	sw	a5,12(s0)
    3f10:	00d42423          	sw	a3,8(s0)
    3f14:	00a9a223          	sw	a0,4(s3)
    3f18:	00872023          	sw	s0,0(a4)
    3f1c:	0086a623          	sw	s0,12(a3)
    3f20:	4025d793          	sra	a5,a1,0x2
    3f24:	00100613          	li	a2,1
    3f28:	00f61633          	sll	a2,a2,a5
    3f2c:	0ac56a63          	bltu	a0,a2,3fe0 <_malloc_r+0x258>
    3f30:	00a677b3          	and	a5,a2,a0
    3f34:	02079463          	bnez	a5,3f5c <_malloc_r+0x1d4>
    3f38:	00161613          	sll	a2,a2,0x1
    3f3c:	ffc5f593          	and	a1,a1,-4
    3f40:	00a677b3          	and	a5,a2,a0
    3f44:	00458593          	add	a1,a1,4
    3f48:	00079a63          	bnez	a5,3f5c <_malloc_r+0x1d4>
    3f4c:	00161613          	sll	a2,a2,0x1
    3f50:	00a677b3          	and	a5,a2,a0
    3f54:	00458593          	add	a1,a1,4
    3f58:	fe078ae3          	beqz	a5,3f4c <_malloc_r+0x1c4>
    3f5c:	00f00813          	li	a6,15
    3f60:	00359313          	sll	t1,a1,0x3
    3f64:	00698333          	add	t1,s3,t1
    3f68:	00030513          	mv	a0,t1
    3f6c:	00c52783          	lw	a5,12(a0)
    3f70:	00058e13          	mv	t3,a1
    3f74:	26f50263          	beq	a0,a5,41d8 <_malloc_r+0x450>
    3f78:	0047a703          	lw	a4,4(a5)
    3f7c:	00078413          	mv	s0,a5
    3f80:	00c7a783          	lw	a5,12(a5)
    3f84:	ffc77713          	and	a4,a4,-4
    3f88:	409706b3          	sub	a3,a4,s1
    3f8c:	26d84263          	blt	a6,a3,41f0 <_malloc_r+0x468>
    3f90:	fe06c2e3          	bltz	a3,3f74 <_malloc_r+0x1ec>
    3f94:	00e40733          	add	a4,s0,a4
    3f98:	00472683          	lw	a3,4(a4)
    3f9c:	00842603          	lw	a2,8(s0)
    3fa0:	00090513          	mv	a0,s2
    3fa4:	0016e693          	or	a3,a3,1
    3fa8:	00d72223          	sw	a3,4(a4)
    3fac:	00f62623          	sw	a5,12(a2)
    3fb0:	00c7a423          	sw	a2,8(a5)
    3fb4:	5c0000ef          	jal	4574 <__malloc_unlock>
    3fb8:	00840513          	add	a0,s0,8
    3fbc:	e59ff06f          	j	3e14 <_malloc_r+0x8c>
    3fc0:	00c00793          	li	a5,12
    3fc4:	00f92023          	sw	a5,0(s2)
    3fc8:	00000513          	li	a0,0
    3fcc:	e49ff06f          	j	3e14 <_malloc_r+0x8c>
    3fd0:	20000613          	li	a2,512
    3fd4:	04000593          	li	a1,64
    3fd8:	03f00813          	li	a6,63
    3fdc:	e8dff06f          	j	3e68 <_malloc_r+0xe0>
    3fe0:	0089a403          	lw	s0,8(s3)
    3fe4:	01612823          	sw	s6,16(sp)
    3fe8:	00442783          	lw	a5,4(s0)
    3fec:	ffc7fb13          	and	s6,a5,-4
    3ff0:	009b6863          	bltu	s6,s1,4000 <_malloc_r+0x278>
    3ff4:	409b0733          	sub	a4,s6,s1
    3ff8:	00f00793          	li	a5,15
    3ffc:	0ee7ca63          	blt	a5,a4,40f0 <_malloc_r+0x368>
    4000:	01912223          	sw	s9,4(sp)
    4004:	00031c97          	auipc	s9,0x31
    4008:	808c8c93          	add	s9,s9,-2040 # 3480c <__malloc_sbrk_base>
    400c:	000ca703          	lw	a4,0(s9)
    4010:	01412c23          	sw	s4,24(sp)
    4014:	01512a23          	sw	s5,20(sp)
    4018:	01712623          	sw	s7,12(sp)
    401c:	00031a97          	auipc	s5,0x31
    4020:	01caaa83          	lw	s5,28(s5) # 35038 <__malloc_top_pad>
    4024:	fff00793          	li	a5,-1
    4028:	01640a33          	add	s4,s0,s6
    402c:	01548ab3          	add	s5,s1,s5
    4030:	3ef70263          	beq	a4,a5,4414 <_malloc_r+0x68c>
    4034:	000017b7          	lui	a5,0x1
    4038:	00f78793          	add	a5,a5,15 # 100f <uart_print+0x7>
    403c:	00fa8ab3          	add	s5,s5,a5
    4040:	fffff7b7          	lui	a5,0xfffff
    4044:	00fafab3          	and	s5,s5,a5
    4048:	000a8593          	mv	a1,s5
    404c:	00090513          	mv	a0,s2
    4050:	27d030ef          	jal	7acc <_sbrk_r>
    4054:	fff00793          	li	a5,-1
    4058:	00050b93          	mv	s7,a0
    405c:	46f50663          	beq	a0,a5,44c8 <_malloc_r+0x740>
    4060:	01812423          	sw	s8,8(sp)
    4064:	25456863          	bltu	a0,s4,42b4 <_malloc_r+0x52c>
    4068:	00032c17          	auipc	s8,0x32
    406c:	8d0c0c13          	add	s8,s8,-1840 # 35938 <__malloc_current_mallinfo>
    4070:	000c2583          	lw	a1,0(s8)
    4074:	00ba85b3          	add	a1,s5,a1
    4078:	00bc2023          	sw	a1,0(s8)
    407c:	00058713          	mv	a4,a1
    4080:	2caa1063          	bne	s4,a0,4340 <_malloc_r+0x5b8>
    4084:	01451793          	sll	a5,a0,0x14
    4088:	2a079c63          	bnez	a5,4340 <_malloc_r+0x5b8>
    408c:	0089ab83          	lw	s7,8(s3)
    4090:	015b07b3          	add	a5,s6,s5
    4094:	0017e793          	or	a5,a5,1
    4098:	00fba223          	sw	a5,4(s7)
    409c:	00031717          	auipc	a4,0x31
    40a0:	f9870713          	add	a4,a4,-104 # 35034 <__malloc_max_sbrked_mem>
    40a4:	00072683          	lw	a3,0(a4)
    40a8:	00b6f463          	bgeu	a3,a1,40b0 <_malloc_r+0x328>
    40ac:	00b72023          	sw	a1,0(a4)
    40b0:	00031717          	auipc	a4,0x31
    40b4:	f8070713          	add	a4,a4,-128 # 35030 <__malloc_max_total_mem>
    40b8:	00072683          	lw	a3,0(a4)
    40bc:	00b6f463          	bgeu	a3,a1,40c4 <_malloc_r+0x33c>
    40c0:	00b72023          	sw	a1,0(a4)
    40c4:	00812c03          	lw	s8,8(sp)
    40c8:	000b8413          	mv	s0,s7
    40cc:	ffc7f793          	and	a5,a5,-4
    40d0:	40978733          	sub	a4,a5,s1
    40d4:	3897ec63          	bltu	a5,s1,446c <_malloc_r+0x6e4>
    40d8:	00f00793          	li	a5,15
    40dc:	38e7d863          	bge	a5,a4,446c <_malloc_r+0x6e4>
    40e0:	01812a03          	lw	s4,24(sp)
    40e4:	01412a83          	lw	s5,20(sp)
    40e8:	00c12b83          	lw	s7,12(sp)
    40ec:	00412c83          	lw	s9,4(sp)
    40f0:	0014e793          	or	a5,s1,1
    40f4:	00f42223          	sw	a5,4(s0)
    40f8:	009404b3          	add	s1,s0,s1
    40fc:	0099a423          	sw	s1,8(s3)
    4100:	00176713          	or	a4,a4,1
    4104:	00090513          	mv	a0,s2
    4108:	00e4a223          	sw	a4,4(s1)
    410c:	468000ef          	jal	4574 <__malloc_unlock>
    4110:	02c12083          	lw	ra,44(sp)
    4114:	00840513          	add	a0,s0,8
    4118:	02812403          	lw	s0,40(sp)
    411c:	01012b03          	lw	s6,16(sp)
    4120:	02412483          	lw	s1,36(sp)
    4124:	02012903          	lw	s2,32(sp)
    4128:	01c12983          	lw	s3,28(sp)
    412c:	03010113          	add	sp,sp,48
    4130:	00008067          	ret
    4134:	0049a503          	lw	a0,4(s3)
    4138:	de9ff06f          	j	3f20 <_malloc_r+0x198>
    413c:	00842603          	lw	a2,8(s0)
    4140:	cb1ff06f          	j	3df0 <_malloc_r+0x68>
    4144:	00c7a403          	lw	s0,12(a5) # fffff00c <GET_WATCHDOG_LOW+0xffdfdfcc>
    4148:	00258593          	add	a1,a1,2
    414c:	d68780e3          	beq	a5,s0,3eac <_malloc_r+0x124>
    4150:	c91ff06f          	j	3de0 <_malloc_r+0x58>
    4154:	0097d713          	srl	a4,a5,0x9
    4158:	00400693          	li	a3,4
    415c:	14e6f263          	bgeu	a3,a4,42a0 <_malloc_r+0x518>
    4160:	01400693          	li	a3,20
    4164:	32e6e663          	bltu	a3,a4,4490 <_malloc_r+0x708>
    4168:	05c70613          	add	a2,a4,92
    416c:	05b70693          	add	a3,a4,91
    4170:	00361613          	sll	a2,a2,0x3
    4174:	00c98633          	add	a2,s3,a2
    4178:	00062703          	lw	a4,0(a2)
    417c:	ff860613          	add	a2,a2,-8
    4180:	00e61863          	bne	a2,a4,4190 <_malloc_r+0x408>
    4184:	2980006f          	j	441c <_malloc_r+0x694>
    4188:	00872703          	lw	a4,8(a4)
    418c:	00e60863          	beq	a2,a4,419c <_malloc_r+0x414>
    4190:	00472683          	lw	a3,4(a4)
    4194:	ffc6f693          	and	a3,a3,-4
    4198:	fed7e8e3          	bltu	a5,a3,4188 <_malloc_r+0x400>
    419c:	00c72603          	lw	a2,12(a4)
    41a0:	00c42623          	sw	a2,12(s0)
    41a4:	00e42423          	sw	a4,8(s0)
    41a8:	00862423          	sw	s0,8(a2)
    41ac:	00872623          	sw	s0,12(a4)
    41b0:	d71ff06f          	j	3f20 <_malloc_r+0x198>
    41b4:	01400713          	li	a4,20
    41b8:	10f77863          	bgeu	a4,a5,42c8 <_malloc_r+0x540>
    41bc:	05400713          	li	a4,84
    41c0:	2ef76663          	bltu	a4,a5,44ac <_malloc_r+0x724>
    41c4:	00c4d793          	srl	a5,s1,0xc
    41c8:	06f78593          	add	a1,a5,111
    41cc:	06e78813          	add	a6,a5,110
    41d0:	00359613          	sll	a2,a1,0x3
    41d4:	c95ff06f          	j	3e68 <_malloc_r+0xe0>
    41d8:	001e0e13          	add	t3,t3,1
    41dc:	003e7793          	and	a5,t3,3
    41e0:	00850513          	add	a0,a0,8
    41e4:	10078063          	beqz	a5,42e4 <_malloc_r+0x55c>
    41e8:	00c52783          	lw	a5,12(a0)
    41ec:	d89ff06f          	j	3f74 <_malloc_r+0x1ec>
    41f0:	00842603          	lw	a2,8(s0)
    41f4:	0014e593          	or	a1,s1,1
    41f8:	00b42223          	sw	a1,4(s0)
    41fc:	00f62623          	sw	a5,12(a2)
    4200:	00c7a423          	sw	a2,8(a5)
    4204:	009404b3          	add	s1,s0,s1
    4208:	0099aa23          	sw	s1,20(s3)
    420c:	0099a823          	sw	s1,16(s3)
    4210:	0016e793          	or	a5,a3,1
    4214:	0114a623          	sw	a7,12(s1)
    4218:	0114a423          	sw	a7,8(s1)
    421c:	00f4a223          	sw	a5,4(s1)
    4220:	00e40733          	add	a4,s0,a4
    4224:	00090513          	mv	a0,s2
    4228:	00d72023          	sw	a3,0(a4)
    422c:	348000ef          	jal	4574 <__malloc_unlock>
    4230:	00840513          	add	a0,s0,8
    4234:	be1ff06f          	j	3e14 <_malloc_r+0x8c>
    4238:	00f407b3          	add	a5,s0,a5
    423c:	0047a703          	lw	a4,4(a5)
    4240:	00090513          	mv	a0,s2
    4244:	00176713          	or	a4,a4,1
    4248:	00e7a223          	sw	a4,4(a5)
    424c:	328000ef          	jal	4574 <__malloc_unlock>
    4250:	00840513          	add	a0,s0,8
    4254:	bc1ff06f          	j	3e14 <_malloc_r+0x8c>
    4258:	0034d593          	srl	a1,s1,0x3
    425c:	00848793          	add	a5,s1,8
    4260:	b69ff06f          	j	3dc8 <_malloc_r+0x40>
    4264:	0014e693          	or	a3,s1,1
    4268:	00d42223          	sw	a3,4(s0)
    426c:	009404b3          	add	s1,s0,s1
    4270:	0099aa23          	sw	s1,20(s3)
    4274:	0099a823          	sw	s1,16(s3)
    4278:	00176693          	or	a3,a4,1
    427c:	0114a623          	sw	a7,12(s1)
    4280:	0114a423          	sw	a7,8(s1)
    4284:	00d4a223          	sw	a3,4(s1)
    4288:	00f407b3          	add	a5,s0,a5
    428c:	00090513          	mv	a0,s2
    4290:	00e7a023          	sw	a4,0(a5)
    4294:	2e0000ef          	jal	4574 <__malloc_unlock>
    4298:	00840513          	add	a0,s0,8
    429c:	b79ff06f          	j	3e14 <_malloc_r+0x8c>
    42a0:	0067d713          	srl	a4,a5,0x6
    42a4:	03970613          	add	a2,a4,57
    42a8:	03870693          	add	a3,a4,56
    42ac:	00361613          	sll	a2,a2,0x3
    42b0:	ec5ff06f          	j	4174 <_malloc_r+0x3ec>
    42b4:	07340c63          	beq	s0,s3,432c <_malloc_r+0x5a4>
    42b8:	0089a403          	lw	s0,8(s3)
    42bc:	00812c03          	lw	s8,8(sp)
    42c0:	00442783          	lw	a5,4(s0)
    42c4:	e09ff06f          	j	40cc <_malloc_r+0x344>
    42c8:	05c78593          	add	a1,a5,92
    42cc:	05b78813          	add	a6,a5,91
    42d0:	00359613          	sll	a2,a1,0x3
    42d4:	b95ff06f          	j	3e68 <_malloc_r+0xe0>
    42d8:	00832783          	lw	a5,8(t1)
    42dc:	fff58593          	add	a1,a1,-1
    42e0:	28679063          	bne	a5,t1,4560 <_malloc_r+0x7d8>
    42e4:	0035f793          	and	a5,a1,3
    42e8:	ff830313          	add	t1,t1,-8
    42ec:	fe0796e3          	bnez	a5,42d8 <_malloc_r+0x550>
    42f0:	0049a703          	lw	a4,4(s3)
    42f4:	fff64793          	not	a5,a2
    42f8:	00e7f7b3          	and	a5,a5,a4
    42fc:	00f9a223          	sw	a5,4(s3)
    4300:	00161613          	sll	a2,a2,0x1
    4304:	ccc7eee3          	bltu	a5,a2,3fe0 <_malloc_r+0x258>
    4308:	cc060ce3          	beqz	a2,3fe0 <_malloc_r+0x258>
    430c:	00f67733          	and	a4,a2,a5
    4310:	00071a63          	bnez	a4,4324 <_malloc_r+0x59c>
    4314:	00161613          	sll	a2,a2,0x1
    4318:	00f67733          	and	a4,a2,a5
    431c:	004e0e13          	add	t3,t3,4
    4320:	fe070ae3          	beqz	a4,4314 <_malloc_r+0x58c>
    4324:	000e0593          	mv	a1,t3
    4328:	c39ff06f          	j	3f60 <_malloc_r+0x1d8>
    432c:	00031c17          	auipc	s8,0x31
    4330:	60cc0c13          	add	s8,s8,1548 # 35938 <__malloc_current_mallinfo>
    4334:	000c2703          	lw	a4,0(s8)
    4338:	00ea8733          	add	a4,s5,a4
    433c:	00ec2023          	sw	a4,0(s8)
    4340:	000ca683          	lw	a3,0(s9)
    4344:	fff00793          	li	a5,-1
    4348:	18f68663          	beq	a3,a5,44d4 <_malloc_r+0x74c>
    434c:	414b87b3          	sub	a5,s7,s4
    4350:	00e787b3          	add	a5,a5,a4
    4354:	00fc2023          	sw	a5,0(s8)
    4358:	007bfc93          	and	s9,s7,7
    435c:	0c0c8c63          	beqz	s9,4434 <_malloc_r+0x6ac>
    4360:	419b8bb3          	sub	s7,s7,s9
    4364:	000017b7          	lui	a5,0x1
    4368:	00878793          	add	a5,a5,8 # 1008 <uart_print>
    436c:	008b8b93          	add	s7,s7,8
    4370:	419785b3          	sub	a1,a5,s9
    4374:	015b8ab3          	add	s5,s7,s5
    4378:	415585b3          	sub	a1,a1,s5
    437c:	01459593          	sll	a1,a1,0x14
    4380:	0145da13          	srl	s4,a1,0x14
    4384:	000a0593          	mv	a1,s4
    4388:	00090513          	mv	a0,s2
    438c:	740030ef          	jal	7acc <_sbrk_r>
    4390:	fff00793          	li	a5,-1
    4394:	18f50063          	beq	a0,a5,4514 <_malloc_r+0x78c>
    4398:	41750533          	sub	a0,a0,s7
    439c:	01450ab3          	add	s5,a0,s4
    43a0:	000c2703          	lw	a4,0(s8)
    43a4:	0179a423          	sw	s7,8(s3)
    43a8:	001ae793          	or	a5,s5,1
    43ac:	00ea05b3          	add	a1,s4,a4
    43b0:	00bc2023          	sw	a1,0(s8)
    43b4:	00fba223          	sw	a5,4(s7)
    43b8:	cf3402e3          	beq	s0,s3,409c <_malloc_r+0x314>
    43bc:	00f00693          	li	a3,15
    43c0:	0b66f063          	bgeu	a3,s6,4460 <_malloc_r+0x6d8>
    43c4:	00442703          	lw	a4,4(s0)
    43c8:	ff4b0793          	add	a5,s6,-12
    43cc:	ff87f793          	and	a5,a5,-8
    43d0:	00177713          	and	a4,a4,1
    43d4:	00f76733          	or	a4,a4,a5
    43d8:	00e42223          	sw	a4,4(s0)
    43dc:	00500613          	li	a2,5
    43e0:	00f40733          	add	a4,s0,a5
    43e4:	00c72223          	sw	a2,4(a4)
    43e8:	00c72423          	sw	a2,8(a4)
    43ec:	00f6e663          	bltu	a3,a5,43f8 <_malloc_r+0x670>
    43f0:	004ba783          	lw	a5,4(s7)
    43f4:	ca9ff06f          	j	409c <_malloc_r+0x314>
    43f8:	00840593          	add	a1,s0,8
    43fc:	00090513          	mv	a0,s2
    4400:	e5cff0ef          	jal	3a5c <_free_r>
    4404:	0089ab83          	lw	s7,8(s3)
    4408:	000c2583          	lw	a1,0(s8)
    440c:	004ba783          	lw	a5,4(s7)
    4410:	c8dff06f          	j	409c <_malloc_r+0x314>
    4414:	010a8a93          	add	s5,s5,16
    4418:	c31ff06f          	j	4048 <_malloc_r+0x2c0>
    441c:	4026d693          	sra	a3,a3,0x2
    4420:	00100793          	li	a5,1
    4424:	00d797b3          	sll	a5,a5,a3
    4428:	00f56533          	or	a0,a0,a5
    442c:	00a9a223          	sw	a0,4(s3)
    4430:	d71ff06f          	j	41a0 <_malloc_r+0x418>
    4434:	015b85b3          	add	a1,s7,s5
    4438:	40b005b3          	neg	a1,a1
    443c:	01459593          	sll	a1,a1,0x14
    4440:	0145da13          	srl	s4,a1,0x14
    4444:	000a0593          	mv	a1,s4
    4448:	00090513          	mv	a0,s2
    444c:	680030ef          	jal	7acc <_sbrk_r>
    4450:	fff00793          	li	a5,-1
    4454:	f4f512e3          	bne	a0,a5,4398 <_malloc_r+0x610>
    4458:	00000a13          	li	s4,0
    445c:	f45ff06f          	j	43a0 <_malloc_r+0x618>
    4460:	00812c03          	lw	s8,8(sp)
    4464:	00100793          	li	a5,1
    4468:	00fba223          	sw	a5,4(s7)
    446c:	00090513          	mv	a0,s2
    4470:	104000ef          	jal	4574 <__malloc_unlock>
    4474:	00000513          	li	a0,0
    4478:	01812a03          	lw	s4,24(sp)
    447c:	01412a83          	lw	s5,20(sp)
    4480:	01012b03          	lw	s6,16(sp)
    4484:	00c12b83          	lw	s7,12(sp)
    4488:	00412c83          	lw	s9,4(sp)
    448c:	989ff06f          	j	3e14 <_malloc_r+0x8c>
    4490:	05400693          	li	a3,84
    4494:	04e6e463          	bltu	a3,a4,44dc <_malloc_r+0x754>
    4498:	00c7d713          	srl	a4,a5,0xc
    449c:	06f70613          	add	a2,a4,111
    44a0:	06e70693          	add	a3,a4,110
    44a4:	00361613          	sll	a2,a2,0x3
    44a8:	ccdff06f          	j	4174 <_malloc_r+0x3ec>
    44ac:	15400713          	li	a4,340
    44b0:	04f76463          	bltu	a4,a5,44f8 <_malloc_r+0x770>
    44b4:	00f4d793          	srl	a5,s1,0xf
    44b8:	07878593          	add	a1,a5,120
    44bc:	07778813          	add	a6,a5,119
    44c0:	00359613          	sll	a2,a1,0x3
    44c4:	9a5ff06f          	j	3e68 <_malloc_r+0xe0>
    44c8:	0089a403          	lw	s0,8(s3)
    44cc:	00442783          	lw	a5,4(s0)
    44d0:	bfdff06f          	j	40cc <_malloc_r+0x344>
    44d4:	017ca023          	sw	s7,0(s9)
    44d8:	e81ff06f          	j	4358 <_malloc_r+0x5d0>
    44dc:	15400693          	li	a3,340
    44e0:	04e6e463          	bltu	a3,a4,4528 <_malloc_r+0x7a0>
    44e4:	00f7d713          	srl	a4,a5,0xf
    44e8:	07870613          	add	a2,a4,120
    44ec:	07770693          	add	a3,a4,119
    44f0:	00361613          	sll	a2,a2,0x3
    44f4:	c81ff06f          	j	4174 <_malloc_r+0x3ec>
    44f8:	55400713          	li	a4,1364
    44fc:	04f76463          	bltu	a4,a5,4544 <_malloc_r+0x7bc>
    4500:	0124d793          	srl	a5,s1,0x12
    4504:	07d78593          	add	a1,a5,125
    4508:	07c78813          	add	a6,a5,124
    450c:	00359613          	sll	a2,a1,0x3
    4510:	959ff06f          	j	3e68 <_malloc_r+0xe0>
    4514:	ff8c8c93          	add	s9,s9,-8
    4518:	019a8ab3          	add	s5,s5,s9
    451c:	417a8ab3          	sub	s5,s5,s7
    4520:	00000a13          	li	s4,0
    4524:	e7dff06f          	j	43a0 <_malloc_r+0x618>
    4528:	55400693          	li	a3,1364
    452c:	02e6e463          	bltu	a3,a4,4554 <_malloc_r+0x7cc>
    4530:	0127d713          	srl	a4,a5,0x12
    4534:	07d70613          	add	a2,a4,125
    4538:	07c70693          	add	a3,a4,124
    453c:	00361613          	sll	a2,a2,0x3
    4540:	c35ff06f          	j	4174 <_malloc_r+0x3ec>
    4544:	3f800613          	li	a2,1016
    4548:	07f00593          	li	a1,127
    454c:	07e00813          	li	a6,126
    4550:	919ff06f          	j	3e68 <_malloc_r+0xe0>
    4554:	3f800613          	li	a2,1016
    4558:	07e00693          	li	a3,126
    455c:	c19ff06f          	j	4174 <_malloc_r+0x3ec>
    4560:	0049a783          	lw	a5,4(s3)
    4564:	d9dff06f          	j	4300 <_malloc_r+0x578>

00004568 <__malloc_lock>:
    4568:	00031517          	auipc	a0,0x31
    456c:	ab450513          	add	a0,a0,-1356 # 3501c <__lock___malloc_recursive_mutex>
    4570:	a08ff06f          	j	3778 <__retarget_lock_acquire_recursive>

00004574 <__malloc_unlock>:
    4574:	00031517          	auipc	a0,0x31
    4578:	aa850513          	add	a0,a0,-1368 # 3501c <__lock___malloc_recursive_mutex>
    457c:	a14ff06f          	j	3790 <__retarget_lock_release_recursive>

00004580 <__ssprint_r>:
    4580:	00862783          	lw	a5,8(a2)
    4584:	fd010113          	add	sp,sp,-48
    4588:	01312e23          	sw	s3,28(sp)
    458c:	01412c23          	sw	s4,24(sp)
    4590:	02112623          	sw	ra,44(sp)
    4594:	00062983          	lw	s3,0(a2)
    4598:	00060a13          	mv	s4,a2
    459c:	1c078063          	beqz	a5,475c <__ssprint_r+0x1dc>
    45a0:	02912223          	sw	s1,36(sp)
    45a4:	03212023          	sw	s2,32(sp)
    45a8:	01512a23          	sw	s5,20(sp)
    45ac:	01712623          	sw	s7,12(sp)
    45b0:	0085a703          	lw	a4,8(a1)
    45b4:	0005a783          	lw	a5,0(a1)
    45b8:	02812423          	sw	s0,40(sp)
    45bc:	01612823          	sw	s6,16(sp)
    45c0:	01812423          	sw	s8,8(sp)
    45c4:	00050a93          	mv	s5,a0
    45c8:	00058493          	mv	s1,a1
    45cc:	00000b93          	li	s7,0
    45d0:	00000913          	li	s2,0
    45d4:	0e00006f          	j	46b4 <__ssprint_r+0x134>
    45d8:	00c49703          	lh	a4,12(s1)
    45dc:	48077693          	and	a3,a4,1152
    45e0:	08068a63          	beqz	a3,4674 <__ssprint_r+0xf4>
    45e4:	0144a603          	lw	a2,20(s1)
    45e8:	0104a583          	lw	a1,16(s1)
    45ec:	00161693          	sll	a3,a2,0x1
    45f0:	00c686b3          	add	a3,a3,a2
    45f4:	40b78433          	sub	s0,a5,a1
    45f8:	01f6db13          	srl	s6,a3,0x1f
    45fc:	00db0b33          	add	s6,s6,a3
    4600:	00140793          	add	a5,s0,1
    4604:	401b5b13          	sra	s6,s6,0x1
    4608:	012787b3          	add	a5,a5,s2
    460c:	000b0613          	mv	a2,s6
    4610:	00fb7663          	bgeu	s6,a5,461c <__ssprint_r+0x9c>
    4614:	00078b13          	mv	s6,a5
    4618:	00078613          	mv	a2,a5
    461c:	40077713          	and	a4,a4,1024
    4620:	0a070a63          	beqz	a4,46d4 <__ssprint_r+0x154>
    4624:	00060593          	mv	a1,a2
    4628:	000a8513          	mv	a0,s5
    462c:	f5cff0ef          	jal	3d88 <_malloc_r>
    4630:	00050c13          	mv	s8,a0
    4634:	0a050e63          	beqz	a0,46f0 <__ssprint_r+0x170>
    4638:	0104a583          	lw	a1,16(s1)
    463c:	00040613          	mv	a2,s0
    4640:	5f0030ef          	jal	7c30 <memcpy>
    4644:	00c4d783          	lhu	a5,12(s1)
    4648:	b7f7f793          	and	a5,a5,-1153
    464c:	0807e793          	or	a5,a5,128
    4650:	00f49623          	sh	a5,12(s1)
    4654:	408b07b3          	sub	a5,s6,s0
    4658:	008c0533          	add	a0,s8,s0
    465c:	0164aa23          	sw	s6,20(s1)
    4660:	0184a823          	sw	s8,16(s1)
    4664:	00a4a023          	sw	a0,0(s1)
    4668:	00090b13          	mv	s6,s2
    466c:	00f4a423          	sw	a5,8(s1)
    4670:	00090413          	mv	s0,s2
    4674:	00040613          	mv	a2,s0
    4678:	000b8593          	mv	a1,s7
    467c:	4a8030ef          	jal	7b24 <memmove>
    4680:	0084a703          	lw	a4,8(s1)
    4684:	0004a783          	lw	a5,0(s1)
    4688:	008a2683          	lw	a3,8(s4)
    468c:	41670733          	sub	a4,a4,s6
    4690:	008787b3          	add	a5,a5,s0
    4694:	00e4a423          	sw	a4,8(s1)
    4698:	00f4a023          	sw	a5,0(s1)
    469c:	412686b3          	sub	a3,a3,s2
    46a0:	00da2423          	sw	a3,8(s4)
    46a4:	08068e63          	beqz	a3,4740 <__ssprint_r+0x1c0>
    46a8:	0009ab83          	lw	s7,0(s3)
    46ac:	0049a903          	lw	s2,4(s3)
    46b0:	00898993          	add	s3,s3,8
    46b4:	00070b13          	mv	s6,a4
    46b8:	00078513          	mv	a0,a5
    46bc:	fe0906e3          	beqz	s2,46a8 <__ssprint_r+0x128>
    46c0:	00070413          	mv	s0,a4
    46c4:	f0e97ae3          	bgeu	s2,a4,45d8 <__ssprint_r+0x58>
    46c8:	00090b13          	mv	s6,s2
    46cc:	00090413          	mv	s0,s2
    46d0:	fa5ff06f          	j	4674 <__ssprint_r+0xf4>
    46d4:	000a8513          	mv	a0,s5
    46d8:	348040ef          	jal	8a20 <_realloc_r>
    46dc:	00050c13          	mv	s8,a0
    46e0:	f6051ae3          	bnez	a0,4654 <__ssprint_r+0xd4>
    46e4:	0104a583          	lw	a1,16(s1)
    46e8:	000a8513          	mv	a0,s5
    46ec:	b70ff0ef          	jal	3a5c <_free_r>
    46f0:	00c4d783          	lhu	a5,12(s1)
    46f4:	00c00713          	li	a4,12
    46f8:	00eaa023          	sw	a4,0(s5)
    46fc:	02812403          	lw	s0,40(sp)
    4700:	02c12083          	lw	ra,44(sp)
    4704:	0407e793          	or	a5,a5,64
    4708:	00f49623          	sh	a5,12(s1)
    470c:	02012903          	lw	s2,32(sp)
    4710:	02412483          	lw	s1,36(sp)
    4714:	01412a83          	lw	s5,20(sp)
    4718:	01012b03          	lw	s6,16(sp)
    471c:	00c12b83          	lw	s7,12(sp)
    4720:	00812c03          	lw	s8,8(sp)
    4724:	000a2423          	sw	zero,8(s4)
    4728:	000a2223          	sw	zero,4(s4)
    472c:	01c12983          	lw	s3,28(sp)
    4730:	01812a03          	lw	s4,24(sp)
    4734:	fff00513          	li	a0,-1
    4738:	03010113          	add	sp,sp,48
    473c:	00008067          	ret
    4740:	02812403          	lw	s0,40(sp)
    4744:	02412483          	lw	s1,36(sp)
    4748:	02012903          	lw	s2,32(sp)
    474c:	01412a83          	lw	s5,20(sp)
    4750:	01012b03          	lw	s6,16(sp)
    4754:	00c12b83          	lw	s7,12(sp)
    4758:	00812c03          	lw	s8,8(sp)
    475c:	02c12083          	lw	ra,44(sp)
    4760:	000a2223          	sw	zero,4(s4)
    4764:	01c12983          	lw	s3,28(sp)
    4768:	01812a03          	lw	s4,24(sp)
    476c:	00000513          	li	a0,0
    4770:	03010113          	add	sp,sp,48
    4774:	00008067          	ret

00004778 <_svfiprintf_r>:
    4778:	eb010113          	add	sp,sp,-336
    477c:	14812423          	sw	s0,328(sp)
    4780:	13312e23          	sw	s3,316(sp)
    4784:	13812423          	sw	s8,296(sp)
    4788:	00058993          	mv	s3,a1
    478c:	00050413          	mv	s0,a0
    4790:	00060c13          	mv	s8,a2
    4794:	00000593          	li	a1,0
    4798:	00800613          	li	a2,8
    479c:	05010513          	add	a0,sp,80
    47a0:	13412c23          	sw	s4,312(sp)
    47a4:	14112623          	sw	ra,332(sp)
    47a8:	00068a13          	mv	s4,a3
    47ac:	b78fd0ef          	jal	1b24 <memset>
    47b0:	00c9d783          	lhu	a5,12(s3)
    47b4:	0807f793          	and	a5,a5,128
    47b8:	00078863          	beqz	a5,47c8 <_svfiprintf_r+0x50>
    47bc:	0109a783          	lw	a5,16(s3)
    47c0:	00079463          	bnez	a5,47c8 <_svfiprintf_r+0x50>
    47c4:	2100106f          	j	59d4 <_svfiprintf_r+0x125c>
    47c8:	14912223          	sw	s1,324(sp)
    47cc:	15212023          	sw	s2,320(sp)
    47d0:	13512a23          	sw	s5,308(sp)
    47d4:	13612823          	sw	s6,304(sp)
    47d8:	13712623          	sw	s7,300(sp)
    47dc:	13912223          	sw	s9,292(sp)
    47e0:	13a12023          	sw	s10,288(sp)
    47e4:	11b12e23          	sw	s11,284(sp)
    47e8:	06c10a93          	add	s5,sp,108
    47ec:	000c0c93          	mv	s9,s8
    47f0:	07512023          	sw	s5,96(sp)
    47f4:	06012423          	sw	zero,104(sp)
    47f8:	06012223          	sw	zero,100(sp)
    47fc:	00012a23          	sw	zero,20(sp)
    4800:	02012423          	sw	zero,40(sp)
    4804:	02012623          	sw	zero,44(sp)
    4808:	02012823          	sw	zero,48(sp)
    480c:	00012623          	sw	zero,12(sp)
    4810:	00030497          	auipc	s1,0x30
    4814:	d2848493          	add	s1,s1,-728 # 34538 <__global_locale>
    4818:	02500913          	li	s2,37
    481c:	0002cb97          	auipc	s7,0x2c
    4820:	dd0b8b93          	add	s7,s7,-560 # 305ec <__clz_tab+0x264>
    4824:	0002cb17          	auipc	s6,0x2c
    4828:	f34b0b13          	add	s6,s6,-204 # 30758 <zeroes.0>
    482c:	000a8c13          	mv	s8,s5
    4830:	000c8d93          	mv	s11,s9
    4834:	0e44ad03          	lw	s10,228(s1)
    4838:	19c030ef          	jal	79d4 <__locale_mb_cur_max>
    483c:	00050693          	mv	a3,a0
    4840:	05010713          	add	a4,sp,80
    4844:	000d8613          	mv	a2,s11
    4848:	04810593          	add	a1,sp,72
    484c:	00040513          	mv	a0,s0
    4850:	000d00e7          	jalr	s10
    4854:	20050263          	beqz	a0,4a58 <_svfiprintf_r+0x2e0>
    4858:	1e054263          	bltz	a0,4a3c <_svfiprintf_r+0x2c4>
    485c:	04812783          	lw	a5,72(sp)
    4860:	01278663          	beq	a5,s2,486c <_svfiprintf_r+0xf4>
    4864:	00ad8db3          	add	s11,s11,a0
    4868:	fcdff06f          	j	4834 <_svfiprintf_r+0xbc>
    486c:	00050d13          	mv	s10,a0
    4870:	419d8733          	sub	a4,s11,s9
    4874:	1f9d9863          	bne	s11,s9,4a64 <_svfiprintf_r+0x2ec>
    4878:	00000893          	li	a7,0
    487c:	001dc603          	lbu	a2,1(s11)
    4880:	001d8c93          	add	s9,s11,1
    4884:	040101a3          	sb	zero,67(sp)
    4888:	fff00713          	li	a4,-1
    488c:	00000e13          	li	t3,0
    4890:	05a00d13          	li	s10,90
    4894:	00088d93          	mv	s11,a7
    4898:	001c8c93          	add	s9,s9,1
    489c:	fe060793          	add	a5,a2,-32
    48a0:	04fd6663          	bltu	s10,a5,48ec <_svfiprintf_r+0x174>
    48a4:	00279793          	sll	a5,a5,0x2
    48a8:	017787b3          	add	a5,a5,s7
    48ac:	0007a783          	lw	a5,0(a5)
    48b0:	017787b3          	add	a5,a5,s7
    48b4:	00078067          	jr	a5
    48b8:	00000d93          	li	s11,0
    48bc:	fd060793          	add	a5,a2,-48
    48c0:	00900593          	li	a1,9
    48c4:	000cc603          	lbu	a2,0(s9)
    48c8:	002d9693          	sll	a3,s11,0x2
    48cc:	01b688b3          	add	a7,a3,s11
    48d0:	00189893          	sll	a7,a7,0x1
    48d4:	01178db3          	add	s11,a5,a7
    48d8:	fd060793          	add	a5,a2,-48
    48dc:	001c8c93          	add	s9,s9,1
    48e0:	fef5f2e3          	bgeu	a1,a5,48c4 <_svfiprintf_r+0x14c>
    48e4:	fe060793          	add	a5,a2,-32
    48e8:	fafd7ee3          	bgeu	s10,a5,48a4 <_svfiprintf_r+0x12c>
    48ec:	000d8893          	mv	a7,s11
    48f0:	1a060863          	beqz	a2,4aa0 <_svfiprintf_r+0x328>
    48f4:	0ac10623          	sb	a2,172(sp)
    48f8:	040101a3          	sb	zero,67(sp)
    48fc:	00100d13          	li	s10,1
    4900:	00100693          	li	a3,1
    4904:	0ac10813          	add	a6,sp,172
    4908:	00012823          	sw	zero,16(sp)
    490c:	00000713          	li	a4,0
    4910:	00000f93          	li	t6,0
    4914:	084e7293          	and	t0,t3,132
    4918:	06812583          	lw	a1,104(sp)
    491c:	06412603          	lw	a2,100(sp)
    4920:	00029663          	bnez	t0,492c <_svfiprintf_r+0x1b4>
    4924:	41a88db3          	sub	s11,a7,s10
    4928:	3db04ee3          	bgtz	s11,5504 <_svfiprintf_r+0xd8c>
    492c:	04314503          	lbu	a0,67(sp)
    4930:	02050863          	beqz	a0,4960 <_svfiprintf_r+0x1e8>
    4934:	04310513          	add	a0,sp,67
    4938:	00160613          	add	a2,a2,1
    493c:	00158593          	add	a1,a1,1
    4940:	00100793          	li	a5,1
    4944:	00ac2023          	sw	a0,0(s8)
    4948:	00fc2223          	sw	a5,4(s8)
    494c:	06b12423          	sw	a1,104(sp)
    4950:	06c12223          	sw	a2,100(sp)
    4954:	00700513          	li	a0,7
    4958:	008c0c13          	add	s8,s8,8
    495c:	1cc54263          	blt	a0,a2,4b20 <_svfiprintf_r+0x3a8>
    4960:	020f8863          	beqz	t6,4990 <_svfiprintf_r+0x218>
    4964:	00200513          	li	a0,2
    4968:	00160613          	add	a2,a2,1
    496c:	00258593          	add	a1,a1,2
    4970:	04410793          	add	a5,sp,68
    4974:	00ac2223          	sw	a0,4(s8)
    4978:	00fc2023          	sw	a5,0(s8)
    497c:	06b12423          	sw	a1,104(sp)
    4980:	06c12223          	sw	a2,100(sp)
    4984:	00700513          	li	a0,7
    4988:	008c0c13          	add	s8,s8,8
    498c:	4cc546e3          	blt	a0,a2,5658 <_svfiprintf_r+0xee0>
    4990:	08000513          	li	a0,128
    4994:	06a286e3          	beq	t0,a0,5200 <_svfiprintf_r+0xa88>
    4998:	40d70db3          	sub	s11,a4,a3
    499c:	19b04ce3          	bgtz	s11,5334 <_svfiprintf_r+0xbbc>
    49a0:	00b685b3          	add	a1,a3,a1
    49a4:	00160613          	add	a2,a2,1
    49a8:	010c2023          	sw	a6,0(s8)
    49ac:	00dc2223          	sw	a3,4(s8)
    49b0:	06b12423          	sw	a1,104(sp)
    49b4:	06c12223          	sw	a2,100(sp)
    49b8:	00700713          	li	a4,7
    49bc:	008c0793          	add	a5,s8,8
    49c0:	28c748e3          	blt	a4,a2,5450 <_svfiprintf_r+0xcd8>
    49c4:	004e7e13          	and	t3,t3,4
    49c8:	000e0663          	beqz	t3,49d4 <_svfiprintf_r+0x25c>
    49cc:	41a88db3          	sub	s11,a7,s10
    49d0:	1bb04663          	bgtz	s11,4b7c <_svfiprintf_r+0x404>
    49d4:	01a8d463          	bge	a7,s10,49dc <_svfiprintf_r+0x264>
    49d8:	000d0893          	mv	a7,s10
    49dc:	00c12783          	lw	a5,12(sp)
    49e0:	011787b3          	add	a5,a5,a7
    49e4:	00f12623          	sw	a5,12(sp)
    49e8:	28059ce3          	bnez	a1,5480 <_svfiprintf_r+0xd08>
    49ec:	01012783          	lw	a5,16(sp)
    49f0:	06012223          	sw	zero,100(sp)
    49f4:	00078863          	beqz	a5,4a04 <_svfiprintf_r+0x28c>
    49f8:	01012583          	lw	a1,16(sp)
    49fc:	00040513          	mv	a0,s0
    4a00:	85cff0ef          	jal	3a5c <_free_r>
    4a04:	000a8c13          	mv	s8,s5
    4a08:	e29ff06f          	j	4830 <_svfiprintf_r+0xb8>
    4a0c:	000a2d83          	lw	s11,0(s4)
    4a10:	004a0a13          	add	s4,s4,4
    4a14:	000dcc63          	bltz	s11,4a2c <_svfiprintf_r+0x2b4>
    4a18:	000cc603          	lbu	a2,0(s9)
    4a1c:	e7dff06f          	j	4898 <_svfiprintf_r+0x120>
    4a20:	000cc603          	lbu	a2,0(s9)
    4a24:	020e6e13          	or	t3,t3,32
    4a28:	e71ff06f          	j	4898 <_svfiprintf_r+0x120>
    4a2c:	41b00db3          	neg	s11,s11
    4a30:	000cc603          	lbu	a2,0(s9)
    4a34:	004e6e13          	or	t3,t3,4
    4a38:	e61ff06f          	j	4898 <_svfiprintf_r+0x120>
    4a3c:	00800613          	li	a2,8
    4a40:	00000593          	li	a1,0
    4a44:	05010513          	add	a0,sp,80
    4a48:	8dcfd0ef          	jal	1b24 <memset>
    4a4c:	00100513          	li	a0,1
    4a50:	00ad8db3          	add	s11,s11,a0
    4a54:	de1ff06f          	j	4834 <_svfiprintf_r+0xbc>
    4a58:	00050d13          	mv	s10,a0
    4a5c:	419d8733          	sub	a4,s11,s9
    4a60:	059d8063          	beq	s11,s9,4aa0 <_svfiprintf_r+0x328>
    4a64:	06812603          	lw	a2,104(sp)
    4a68:	06412683          	lw	a3,100(sp)
    4a6c:	019c2023          	sw	s9,0(s8)
    4a70:	00e60633          	add	a2,a2,a4
    4a74:	00168693          	add	a3,a3,1
    4a78:	00ec2223          	sw	a4,4(s8)
    4a7c:	06c12423          	sw	a2,104(sp)
    4a80:	06d12223          	sw	a3,100(sp)
    4a84:	00700613          	li	a2,7
    4a88:	008c0c13          	add	s8,s8,8
    4a8c:	06d64863          	blt	a2,a3,4afc <_svfiprintf_r+0x384>
    4a90:	00c12783          	lw	a5,12(sp)
    4a94:	00e787b3          	add	a5,a5,a4
    4a98:	00f12623          	sw	a5,12(sp)
    4a9c:	dc0d1ee3          	bnez	s10,4878 <_svfiprintf_r+0x100>
    4aa0:	06812783          	lw	a5,104(sp)
    4aa4:	00078463          	beqz	a5,4aac <_svfiprintf_r+0x334>
    4aa8:	0cc0106f          	j	5b74 <_svfiprintf_r+0x13fc>
    4aac:	00c9d783          	lhu	a5,12(s3)
    4ab0:	0407f793          	and	a5,a5,64
    4ab4:	14412483          	lw	s1,324(sp)
    4ab8:	14012903          	lw	s2,320(sp)
    4abc:	13412a83          	lw	s5,308(sp)
    4ac0:	13012b03          	lw	s6,304(sp)
    4ac4:	12c12b83          	lw	s7,300(sp)
    4ac8:	12412c83          	lw	s9,292(sp)
    4acc:	12012d03          	lw	s10,288(sp)
    4ad0:	11c12d83          	lw	s11,284(sp)
    4ad4:	00078463          	beqz	a5,4adc <_svfiprintf_r+0x364>
    4ad8:	1680106f          	j	5c40 <_svfiprintf_r+0x14c8>
    4adc:	14c12083          	lw	ra,332(sp)
    4ae0:	14812403          	lw	s0,328(sp)
    4ae4:	00c12503          	lw	a0,12(sp)
    4ae8:	13c12983          	lw	s3,316(sp)
    4aec:	13812a03          	lw	s4,312(sp)
    4af0:	12812c03          	lw	s8,296(sp)
    4af4:	15010113          	add	sp,sp,336
    4af8:	00008067          	ret
    4afc:	06010613          	add	a2,sp,96
    4b00:	00098593          	mv	a1,s3
    4b04:	00040513          	mv	a0,s0
    4b08:	00e12823          	sw	a4,16(sp)
    4b0c:	a75ff0ef          	jal	4580 <__ssprint_r>
    4b10:	f8051ee3          	bnez	a0,4aac <_svfiprintf_r+0x334>
    4b14:	01012703          	lw	a4,16(sp)
    4b18:	000a8c13          	mv	s8,s5
    4b1c:	f75ff06f          	j	4a90 <_svfiprintf_r+0x318>
    4b20:	06010613          	add	a2,sp,96
    4b24:	00098593          	mv	a1,s3
    4b28:	00040513          	mv	a0,s0
    4b2c:	03c12e23          	sw	t3,60(sp)
    4b30:	02d12c23          	sw	a3,56(sp)
    4b34:	02e12a23          	sw	a4,52(sp)
    4b38:	03112223          	sw	a7,36(sp)
    4b3c:	02512023          	sw	t0,32(sp)
    4b40:	01f12e23          	sw	t6,28(sp)
    4b44:	01012c23          	sw	a6,24(sp)
    4b48:	a39ff0ef          	jal	4580 <__ssprint_r>
    4b4c:	140514e3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    4b50:	06812583          	lw	a1,104(sp)
    4b54:	06412603          	lw	a2,100(sp)
    4b58:	03c12e03          	lw	t3,60(sp)
    4b5c:	03812683          	lw	a3,56(sp)
    4b60:	03412703          	lw	a4,52(sp)
    4b64:	02412883          	lw	a7,36(sp)
    4b68:	02012283          	lw	t0,32(sp)
    4b6c:	01c12f83          	lw	t6,28(sp)
    4b70:	01812803          	lw	a6,24(sp)
    4b74:	000a8c13          	mv	s8,s5
    4b78:	de9ff06f          	j	4960 <_svfiprintf_r+0x1e8>
    4b7c:	01000693          	li	a3,16
    4b80:	06412703          	lw	a4,100(sp)
    4b84:	0002c317          	auipc	t1,0x2c
    4b88:	be430313          	add	t1,t1,-1052 # 30768 <blanks.1>
    4b8c:	09b6da63          	bge	a3,s11,4c20 <_svfiprintf_r+0x4a8>
    4b90:	000a0613          	mv	a2,s4
    4b94:	01912e23          	sw	s9,28(sp)
    4b98:	000d8a13          	mv	s4,s11
    4b9c:	01000693          	li	a3,16
    4ba0:	00700c13          	li	s8,7
    4ba4:	01112c23          	sw	a7,24(sp)
    4ba8:	00030c93          	mv	s9,t1
    4bac:	00060d93          	mv	s11,a2
    4bb0:	00c0006f          	j	4bbc <_svfiprintf_r+0x444>
    4bb4:	ff0a0a13          	add	s4,s4,-16
    4bb8:	0546d863          	bge	a3,s4,4c08 <_svfiprintf_r+0x490>
    4bbc:	01058593          	add	a1,a1,16
    4bc0:	00170713          	add	a4,a4,1
    4bc4:	0197a023          	sw	s9,0(a5)
    4bc8:	00d7a223          	sw	a3,4(a5)
    4bcc:	06b12423          	sw	a1,104(sp)
    4bd0:	06e12223          	sw	a4,100(sp)
    4bd4:	00878793          	add	a5,a5,8
    4bd8:	fcec5ee3          	bge	s8,a4,4bb4 <_svfiprintf_r+0x43c>
    4bdc:	06010613          	add	a2,sp,96
    4be0:	00098593          	mv	a1,s3
    4be4:	00040513          	mv	a0,s0
    4be8:	999ff0ef          	jal	4580 <__ssprint_r>
    4bec:	0a0514e3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    4bf0:	01000693          	li	a3,16
    4bf4:	ff0a0a13          	add	s4,s4,-16
    4bf8:	06812583          	lw	a1,104(sp)
    4bfc:	06412703          	lw	a4,100(sp)
    4c00:	000a8793          	mv	a5,s5
    4c04:	fb46cce3          	blt	a3,s4,4bbc <_svfiprintf_r+0x444>
    4c08:	000c8313          	mv	t1,s9
    4c0c:	01812883          	lw	a7,24(sp)
    4c10:	01c12c83          	lw	s9,28(sp)
    4c14:	000d8693          	mv	a3,s11
    4c18:	000a0d93          	mv	s11,s4
    4c1c:	00068a13          	mv	s4,a3
    4c20:	01b585b3          	add	a1,a1,s11
    4c24:	00170713          	add	a4,a4,1
    4c28:	0067a023          	sw	t1,0(a5)
    4c2c:	01b7a223          	sw	s11,4(a5)
    4c30:	06b12423          	sw	a1,104(sp)
    4c34:	06e12223          	sw	a4,100(sp)
    4c38:	00700793          	li	a5,7
    4c3c:	d8e7dce3          	bge	a5,a4,49d4 <_svfiprintf_r+0x25c>
    4c40:	06010613          	add	a2,sp,96
    4c44:	00098593          	mv	a1,s3
    4c48:	00040513          	mv	a0,s0
    4c4c:	01112c23          	sw	a7,24(sp)
    4c50:	931ff0ef          	jal	4580 <__ssprint_r>
    4c54:	040510e3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    4c58:	06812583          	lw	a1,104(sp)
    4c5c:	01812883          	lw	a7,24(sp)
    4c60:	d75ff06f          	j	49d4 <_svfiprintf_r+0x25c>
    4c64:	000a2803          	lw	a6,0(s4)
    4c68:	040101a3          	sb	zero,67(sp)
    4c6c:	000d8893          	mv	a7,s11
    4c70:	004a0a13          	add	s4,s4,4
    4c74:	620804e3          	beqz	a6,5a9c <_svfiprintf_r+0x1324>
    4c78:	05300693          	li	a3,83
    4c7c:	00d60663          	beq	a2,a3,4c88 <_svfiprintf_r+0x510>
    4c80:	010e7693          	and	a3,t3,16
    4c84:	4e068ee3          	beqz	a3,5980 <_svfiprintf_r+0x1208>
    4c88:	00800613          	li	a2,8
    4c8c:	00000593          	li	a1,0
    4c90:	05810513          	add	a0,sp,88
    4c94:	03c12023          	sw	t3,32(sp)
    4c98:	00e12e23          	sw	a4,28(sp)
    4c9c:	01112c23          	sw	a7,24(sp)
    4ca0:	05012623          	sw	a6,76(sp)
    4ca4:	01012823          	sw	a6,16(sp)
    4ca8:	e7dfc0ef          	jal	1b24 <memset>
    4cac:	01c12703          	lw	a4,28(sp)
    4cb0:	01012803          	lw	a6,16(sp)
    4cb4:	01812883          	lw	a7,24(sp)
    4cb8:	02012e03          	lw	t3,32(sp)
    4cbc:	600746e3          	bltz	a4,5ac8 <_svfiprintf_r+0x1350>
    4cc0:	00000d93          	li	s11,0
    4cc4:	00000693          	li	a3,0
    4cc8:	01812e23          	sw	s8,28(sp)
    4ccc:	03412223          	sw	s4,36(sp)
    4cd0:	000d8c13          	mv	s8,s11
    4cd4:	fff00d13          	li	s10,-1
    4cd8:	000c8d93          	mv	s11,s9
    4cdc:	00068a13          	mv	s4,a3
    4ce0:	00098c93          	mv	s9,s3
    4ce4:	00070993          	mv	s3,a4
    4ce8:	02c0006f          	j	4d14 <_svfiprintf_r+0x59c>
    4cec:	05810693          	add	a3,sp,88
    4cf0:	0ac10593          	add	a1,sp,172
    4cf4:	00040513          	mv	a0,s0
    4cf8:	06d040ef          	jal	9564 <_wcrtomb_r>
    4cfc:	71a50ae3          	beq	a0,s10,5c10 <_svfiprintf_r+0x1498>
    4d00:	00aa07b3          	add	a5,s4,a0
    4d04:	02f9c063          	blt	s3,a5,4d24 <_svfiprintf_r+0x5ac>
    4d08:	004c0c13          	add	s8,s8,4
    4d0c:	753780e3          	beq	a5,s3,5c4c <_svfiprintf_r+0x14d4>
    4d10:	00078a13          	mv	s4,a5
    4d14:	04c12783          	lw	a5,76(sp)
    4d18:	018787b3          	add	a5,a5,s8
    4d1c:	0007a603          	lw	a2,0(a5)
    4d20:	fc0616e3          	bnez	a2,4cec <_svfiprintf_r+0x574>
    4d24:	000a0693          	mv	a3,s4
    4d28:	01012803          	lw	a6,16(sp)
    4d2c:	01812883          	lw	a7,24(sp)
    4d30:	01c12c03          	lw	s8,28(sp)
    4d34:	02012e03          	lw	t3,32(sp)
    4d38:	02412a03          	lw	s4,36(sp)
    4d3c:	000c8993          	mv	s3,s9
    4d40:	000d8c93          	mv	s9,s11
    4d44:	5c0684e3          	beqz	a3,5b0c <_svfiprintf_r+0x1394>
    4d48:	06300713          	li	a4,99
    4d4c:	64d746e3          	blt	a4,a3,5b98 <_svfiprintf_r+0x1420>
    4d50:	00012823          	sw	zero,16(sp)
    4d54:	0ac10813          	add	a6,sp,172
    4d58:	00800613          	li	a2,8
    4d5c:	00000593          	li	a1,0
    4d60:	05810513          	add	a0,sp,88
    4d64:	03c12223          	sw	t3,36(sp)
    4d68:	03112023          	sw	a7,32(sp)
    4d6c:	00d12e23          	sw	a3,28(sp)
    4d70:	01012c23          	sw	a6,24(sp)
    4d74:	db1fc0ef          	jal	1b24 <memset>
    4d78:	01812803          	lw	a6,24(sp)
    4d7c:	01c12683          	lw	a3,28(sp)
    4d80:	05810713          	add	a4,sp,88
    4d84:	00080593          	mv	a1,a6
    4d88:	04c10613          	add	a2,sp,76
    4d8c:	00040513          	mv	a0,s0
    4d90:	109040ef          	jal	9698 <_wcsrtombs_r>
    4d94:	01c12683          	lw	a3,28(sp)
    4d98:	01812803          	lw	a6,24(sp)
    4d9c:	02012883          	lw	a7,32(sp)
    4da0:	02412e03          	lw	t3,36(sp)
    4da4:	6ea69ce3          	bne	a3,a0,5c9c <_svfiprintf_r+0x1524>
    4da8:	fff6ce93          	not	t4,a3
    4dac:	00d80733          	add	a4,a6,a3
    4db0:	41fede93          	sra	t4,t4,0x1f
    4db4:	00070023          	sb	zero,0(a4)
    4db8:	01d6fd33          	and	s10,a3,t4
    4dbc:	5590006f          	j	5b14 <_svfiprintf_r+0x139c>
    4dc0:	04300713          	li	a4,67
    4dc4:	000d8893          	mv	a7,s11
    4dc8:	004a0d93          	add	s11,s4,4
    4dcc:	00e60663          	beq	a2,a4,4dd8 <_svfiprintf_r+0x660>
    4dd0:	010e7713          	and	a4,t3,16
    4dd4:	2c0700e3          	beqz	a4,5894 <_svfiprintf_r+0x111c>
    4dd8:	00800613          	li	a2,8
    4ddc:	00000593          	li	a1,0
    4de0:	05810513          	add	a0,sp,88
    4de4:	01c12e23          	sw	t3,28(sp)
    4de8:	01112c23          	sw	a7,24(sp)
    4dec:	d39fc0ef          	jal	1b24 <memset>
    4df0:	000a2603          	lw	a2,0(s4)
    4df4:	0ac10593          	add	a1,sp,172
    4df8:	05810693          	add	a3,sp,88
    4dfc:	00040513          	mv	a0,s0
    4e00:	00b12823          	sw	a1,16(sp)
    4e04:	760040ef          	jal	9564 <_wcrtomb_r>
    4e08:	fff00713          	li	a4,-1
    4e0c:	01012583          	lw	a1,16(sp)
    4e10:	01812883          	lw	a7,24(sp)
    4e14:	01c12e03          	lw	t3,28(sp)
    4e18:	00050693          	mv	a3,a0
    4e1c:	5ee50ce3          	beq	a0,a4,5c14 <_svfiprintf_r+0x149c>
    4e20:	fff54e93          	not	t4,a0
    4e24:	41fede93          	sra	t4,t4,0x1f
    4e28:	01d57d33          	and	s10,a0,t4
    4e2c:	040101a3          	sb	zero,67(sp)
    4e30:	000d8a13          	mv	s4,s11
    4e34:	00058813          	mv	a6,a1
    4e38:	ad1ff06f          	j	4908 <_svfiprintf_r+0x190>
    4e3c:	020e7693          	and	a3,t3,32
    4e40:	000d8893          	mv	a7,s11
    4e44:	30068c63          	beqz	a3,515c <_svfiprintf_r+0x9e4>
    4e48:	007a0a13          	add	s4,s4,7
    4e4c:	ff8a7a13          	and	s4,s4,-8
    4e50:	004a2683          	lw	a3,4(s4)
    4e54:	000a2d83          	lw	s11,0(s4)
    4e58:	008a0a13          	add	s4,s4,8
    4e5c:	00068d13          	mv	s10,a3
    4e60:	3206c463          	bltz	a3,5188 <_svfiprintf_r+0xa10>
    4e64:	34074263          	bltz	a4,51a8 <_svfiprintf_r+0xa30>
    4e68:	01ade6b3          	or	a3,s11,s10
    4e6c:	f7fe7e13          	and	t3,t3,-129
    4e70:	32069c63          	bnez	a3,51a8 <_svfiprintf_r+0xa30>
    4e74:	50071ee3          	bnez	a4,5b90 <_svfiprintf_r+0x1418>
    4e78:	04314603          	lbu	a2,67(sp)
    4e7c:	00012823          	sw	zero,16(sp)
    4e80:	00000d13          	li	s10,0
    4e84:	11010813          	add	a6,sp,272
    4e88:	00060463          	beqz	a2,4e90 <_svfiprintf_r+0x718>
    4e8c:	001d0d13          	add	s10,s10,1
    4e90:	002e7f93          	and	t6,t3,2
    4e94:	a80f80e3          	beqz	t6,4914 <_svfiprintf_r+0x19c>
    4e98:	002d0d13          	add	s10,s10,2
    4e9c:	00200f93          	li	t6,2
    4ea0:	a75ff06f          	j	4914 <_svfiprintf_r+0x19c>
    4ea4:	00008637          	lui	a2,0x8
    4ea8:	83060613          	add	a2,a2,-2000 # 7830 <_setlocale_r+0x2a8>
    4eac:	0002b797          	auipc	a5,0x2b
    4eb0:	5f078793          	add	a5,a5,1520 # 3049c <__clz_tab+0x114>
    4eb4:	000a2683          	lw	a3,0(s4)
    4eb8:	000d8893          	mv	a7,s11
    4ebc:	00000513          	li	a0,0
    4ec0:	002e6e13          	or	t3,t3,2
    4ec4:	04c11223          	sh	a2,68(sp)
    4ec8:	004a0a13          	add	s4,s4,4
    4ecc:	00f12a23          	sw	a5,20(sp)
    4ed0:	040101a3          	sb	zero,67(sp)
    4ed4:	5e074263          	bltz	a4,54b8 <_svfiprintf_r+0xd40>
    4ed8:	00a6e633          	or	a2,a3,a0
    4edc:	f7fe7813          	and	a6,t3,-129
    4ee0:	5c061663          	bnez	a2,54ac <_svfiprintf_r+0xd34>
    4ee4:	000e0693          	mv	a3,t3
    4ee8:	00200593          	li	a1,2
    4eec:	00080e13          	mv	t3,a6
    4ef0:	18071e63          	bnez	a4,508c <_svfiprintf_r+0x914>
    4ef4:	080596e3          	bnez	a1,5780 <_svfiprintf_r+0x1008>
    4ef8:	0016f693          	and	a3,a3,1
    4efc:	f6068ee3          	beqz	a3,4e78 <_svfiprintf_r+0x700>
    4f00:	03000613          	li	a2,48
    4f04:	10c107a3          	sb	a2,271(sp)
    4f08:	00068d13          	mv	s10,a3
    4f0c:	10f10813          	add	a6,sp,271
    4f10:	04314603          	lbu	a2,67(sp)
    4f14:	00012823          	sw	zero,16(sp)
    4f18:	f6061ae3          	bnez	a2,4e8c <_svfiprintf_r+0x714>
    4f1c:	f75ff06f          	j	4e90 <_svfiprintf_r+0x718>
    4f20:	020e7713          	and	a4,t3,32
    4f24:	14071ae3          	bnez	a4,5878 <_svfiprintf_r+0x1100>
    4f28:	010e7713          	and	a4,t3,16
    4f2c:	34071ee3          	bnez	a4,5a88 <_svfiprintf_r+0x1310>
    4f30:	040e7713          	and	a4,t3,64
    4f34:	420716e3          	bnez	a4,5b60 <_svfiprintf_r+0x13e8>
    4f38:	200e7e13          	and	t3,t3,512
    4f3c:	340e06e3          	beqz	t3,5a88 <_svfiprintf_r+0x1310>
    4f40:	000a2703          	lw	a4,0(s4)
    4f44:	00c12783          	lw	a5,12(sp)
    4f48:	004a0a13          	add	s4,s4,4
    4f4c:	00f70023          	sb	a5,0(a4)
    4f50:	8e1ff06f          	j	4830 <_svfiprintf_r+0xb8>
    4f54:	000cc603          	lbu	a2,0(s9)
    4f58:	080e6e13          	or	t3,t3,128
    4f5c:	93dff06f          	j	4898 <_svfiprintf_r+0x120>
    4f60:	000cc603          	lbu	a2,0(s9)
    4f64:	02a00793          	li	a5,42
    4f68:	001c8593          	add	a1,s9,1
    4f6c:	50f604e3          	beq	a2,a5,5c74 <_svfiprintf_r+0x14fc>
    4f70:	fd060793          	add	a5,a2,-48
    4f74:	00900693          	li	a3,9
    4f78:	00000713          	li	a4,0
    4f7c:	00900513          	li	a0,9
    4f80:	02f6e463          	bltu	a3,a5,4fa8 <_svfiprintf_r+0x830>
    4f84:	0005c603          	lbu	a2,0(a1)
    4f88:	00271693          	sll	a3,a4,0x2
    4f8c:	00e68733          	add	a4,a3,a4
    4f90:	00171713          	sll	a4,a4,0x1
    4f94:	00f70733          	add	a4,a4,a5
    4f98:	fd060793          	add	a5,a2,-48
    4f9c:	00158593          	add	a1,a1,1
    4fa0:	fef572e3          	bgeu	a0,a5,4f84 <_svfiprintf_r+0x80c>
    4fa4:	10074ae3          	bltz	a4,58b8 <_svfiprintf_r+0x1140>
    4fa8:	00058c93          	mv	s9,a1
    4fac:	8f1ff06f          	j	489c <_svfiprintf_r+0x124>
    4fb0:	02b00793          	li	a5,43
    4fb4:	000cc603          	lbu	a2,0(s9)
    4fb8:	04f101a3          	sb	a5,67(sp)
    4fbc:	8ddff06f          	j	4898 <_svfiprintf_r+0x120>
    4fc0:	00040513          	mv	a0,s0
    4fc4:	01c12c23          	sw	t3,24(sp)
    4fc8:	00e12823          	sw	a4,16(sp)
    4fcc:	231020ef          	jal	79fc <_localeconv_r>
    4fd0:	00452783          	lw	a5,4(a0)
    4fd4:	00078513          	mv	a0,a5
    4fd8:	02f12823          	sw	a5,48(sp)
    4fdc:	5f9020ef          	jal	7dd4 <strlen>
    4fe0:	00050793          	mv	a5,a0
    4fe4:	00040513          	mv	a0,s0
    4fe8:	02f12623          	sw	a5,44(sp)
    4fec:	211020ef          	jal	79fc <_localeconv_r>
    4ff0:	00852703          	lw	a4,8(a0)
    4ff4:	02c12783          	lw	a5,44(sp)
    4ff8:	01812e03          	lw	t3,24(sp)
    4ffc:	02e12423          	sw	a4,40(sp)
    5000:	01012703          	lw	a4,16(sp)
    5004:	a0078ae3          	beqz	a5,4a18 <_svfiprintf_r+0x2a0>
    5008:	02812783          	lw	a5,40(sp)
    500c:	000cc603          	lbu	a2,0(s9)
    5010:	880784e3          	beqz	a5,4898 <_svfiprintf_r+0x120>
    5014:	0007c783          	lbu	a5,0(a5)
    5018:	880780e3          	beqz	a5,4898 <_svfiprintf_r+0x120>
    501c:	400e6e13          	or	t3,t3,1024
    5020:	879ff06f          	j	4898 <_svfiprintf_r+0x120>
    5024:	000cc603          	lbu	a2,0(s9)
    5028:	001e6e13          	or	t3,t3,1
    502c:	86dff06f          	j	4898 <_svfiprintf_r+0x120>
    5030:	04314783          	lbu	a5,67(sp)
    5034:	000cc603          	lbu	a2,0(s9)
    5038:	860790e3          	bnez	a5,4898 <_svfiprintf_r+0x120>
    503c:	02000793          	li	a5,32
    5040:	04f101a3          	sb	a5,67(sp)
    5044:	855ff06f          	j	4898 <_svfiprintf_r+0x120>
    5048:	000d8893          	mv	a7,s11
    504c:	010e6693          	or	a3,t3,16
    5050:	0206f613          	and	a2,a3,32
    5054:	6a060c63          	beqz	a2,570c <_svfiprintf_r+0xf94>
    5058:	007a0a13          	add	s4,s4,7
    505c:	ff8a7a13          	and	s4,s4,-8
    5060:	000a2d83          	lw	s11,0(s4)
    5064:	004a2d03          	lw	s10,4(s4)
    5068:	008a0a13          	add	s4,s4,8
    506c:	040101a3          	sb	zero,67(sp)
    5070:	00068e13          	mv	t3,a3
    5074:	12074a63          	bltz	a4,51a8 <_svfiprintf_r+0xa30>
    5078:	01ade5b3          	or	a1,s11,s10
    507c:	f7f6fe13          	and	t3,a3,-129
    5080:	12059463          	bnez	a1,51a8 <_svfiprintf_r+0xa30>
    5084:	00100593          	li	a1,1
    5088:	e60706e3          	beqz	a4,4ef4 <_svfiprintf_r+0x77c>
    508c:	00100693          	li	a3,1
    5090:	30d580e3          	beq	a1,a3,5b90 <_svfiprintf_r+0x1418>
    5094:	00200693          	li	a3,2
    5098:	22d582e3          	beq	a1,a3,5abc <_svfiprintf_r+0x1344>
    509c:	00000693          	li	a3,0
    50a0:	00000513          	li	a0,0
    50a4:	11010813          	add	a6,sp,272
    50a8:	01d51793          	sll	a5,a0,0x1d
    50ac:	0076f613          	and	a2,a3,7
    50b0:	0036d693          	srl	a3,a3,0x3
    50b4:	03060613          	add	a2,a2,48
    50b8:	00d7e6b3          	or	a3,a5,a3
    50bc:	00355513          	srl	a0,a0,0x3
    50c0:	fec80fa3          	sb	a2,-1(a6)
    50c4:	00a6e7b3          	or	a5,a3,a0
    50c8:	00080e93          	mv	t4,a6
    50cc:	fff80813          	add	a6,a6,-1
    50d0:	fc079ce3          	bnez	a5,50a8 <_svfiprintf_r+0x930>
    50d4:	001e7693          	and	a3,t3,1
    50d8:	60068263          	beqz	a3,56dc <_svfiprintf_r+0xf64>
    50dc:	03000693          	li	a3,48
    50e0:	40d60663          	beq	a2,a3,54ec <_svfiprintf_r+0xd74>
    50e4:	ffee8613          	add	a2,t4,-2
    50e8:	11010793          	add	a5,sp,272
    50ec:	fed80fa3          	sb	a3,-1(a6)
    50f0:	40c786b3          	sub	a3,a5,a2
    50f4:	00070d13          	mv	s10,a4
    50f8:	7ad74a63          	blt	a4,a3,58ac <_svfiprintf_r+0x1134>
    50fc:	00060813          	mv	a6,a2
    5100:	e11ff06f          	j	4f10 <_svfiprintf_r+0x798>
    5104:	000d8893          	mv	a7,s11
    5108:	010e6613          	or	a2,t3,16
    510c:	02067693          	and	a3,a2,32
    5110:	62068c63          	beqz	a3,5748 <_svfiprintf_r+0xfd0>
    5114:	007a0a13          	add	s4,s4,7
    5118:	ff8a7a13          	and	s4,s4,-8
    511c:	000a2683          	lw	a3,0(s4)
    5120:	004a2503          	lw	a0,4(s4)
    5124:	008a0a13          	add	s4,s4,8
    5128:	040101a3          	sb	zero,67(sp)
    512c:	bff67e13          	and	t3,a2,-1025
    5130:	f6074ae3          	bltz	a4,50a4 <_svfiprintf_r+0x92c>
    5134:	00a6e5b3          	or	a1,a3,a0
    5138:	b7f67613          	and	a2,a2,-1153
    513c:	78059463          	bnez	a1,58c4 <_svfiprintf_r+0x114c>
    5140:	000e0693          	mv	a3,t3
    5144:	00060e13          	mv	t3,a2
    5148:	da9ff06f          	j	4ef0 <_svfiprintf_r+0x778>
    514c:	010e6e13          	or	t3,t3,16
    5150:	020e7693          	and	a3,t3,32
    5154:	000d8893          	mv	a7,s11
    5158:	ce0698e3          	bnez	a3,4e48 <_svfiprintf_r+0x6d0>
    515c:	010e7693          	and	a3,t3,16
    5160:	000a2603          	lw	a2,0(s4)
    5164:	004a0a13          	add	s4,s4,4
    5168:	58069a63          	bnez	a3,56fc <_svfiprintf_r+0xf84>
    516c:	040e7693          	and	a3,t3,64
    5170:	58068263          	beqz	a3,56f4 <_svfiprintf_r+0xf7c>
    5174:	01061d93          	sll	s11,a2,0x10
    5178:	410ddd93          	sra	s11,s11,0x10
    517c:	41fddd13          	sra	s10,s11,0x1f
    5180:	000d0693          	mv	a3,s10
    5184:	ce06d0e3          	bgez	a3,4e64 <_svfiprintf_r+0x6ec>
    5188:	02d00593          	li	a1,45
    518c:	01b036b3          	snez	a3,s11
    5190:	41a000b3          	neg	ra,s10
    5194:	04b101a3          	sb	a1,67(sp)
    5198:	40d08d33          	sub	s10,ra,a3
    519c:	41b00db3          	neg	s11,s11
    51a0:	00074463          	bltz	a4,51a8 <_svfiprintf_r+0xa30>
    51a4:	f7fe7e13          	and	t3,t3,-129
    51a8:	5e0d1463          	bnez	s10,5790 <_svfiprintf_r+0x1018>
    51ac:	00900693          	li	a3,9
    51b0:	5fb6e063          	bltu	a3,s11,5790 <_svfiprintf_r+0x1018>
    51b4:	030d8693          	add	a3,s11,48
    51b8:	0ff6f693          	zext.b	a3,a3
    51bc:	10d107a3          	sb	a3,271(sp)
    51c0:	00070d13          	mv	s10,a4
    51c4:	00e04463          	bgtz	a4,51cc <_svfiprintf_r+0xa54>
    51c8:	00100d13          	li	s10,1
    51cc:	00100693          	li	a3,1
    51d0:	10f10813          	add	a6,sp,271
    51d4:	d3dff06f          	j	4f10 <_svfiprintf_r+0x798>
    51d8:	000cc603          	lbu	a2,0(s9)
    51dc:	06c00793          	li	a5,108
    51e0:	08f60ce3          	beq	a2,a5,5a78 <_svfiprintf_r+0x1300>
    51e4:	010e6e13          	or	t3,t3,16
    51e8:	eb0ff06f          	j	4898 <_svfiprintf_r+0x120>
    51ec:	000cc603          	lbu	a2,0(s9)
    51f0:	06800793          	li	a5,104
    51f4:	06f60ae3          	beq	a2,a5,5a68 <_svfiprintf_r+0x12f0>
    51f8:	040e6e13          	or	t3,t3,64
    51fc:	e9cff06f          	j	4898 <_svfiprintf_r+0x120>
    5200:	41a882b3          	sub	t0,a7,s10
    5204:	f8505a63          	blez	t0,4998 <_svfiprintf_r+0x220>
    5208:	01000513          	li	a0,16
    520c:	0002bf17          	auipc	t5,0x2b
    5210:	54cf0f13          	add	t5,t5,1356 # 30758 <zeroes.0>
    5214:	0a555663          	bge	a0,t0,52c0 <_svfiprintf_r+0xb48>
    5218:	000c0793          	mv	a5,s8
    521c:	03412c23          	sw	s4,56(sp)
    5220:	01000d93          	li	s11,16
    5224:	00700f93          	li	t6,7
    5228:	01012c23          	sw	a6,24(sp)
    522c:	01112e23          	sw	a7,28(sp)
    5230:	02e12023          	sw	a4,32(sp)
    5234:	02d12223          	sw	a3,36(sp)
    5238:	03c12a23          	sw	t3,52(sp)
    523c:	00028a13          	mv	s4,t0
    5240:	000f0c13          	mv	s8,t5
    5244:	00c0006f          	j	5250 <_svfiprintf_r+0xad8>
    5248:	ff0a0a13          	add	s4,s4,-16
    524c:	054dd863          	bge	s11,s4,529c <_svfiprintf_r+0xb24>
    5250:	01058593          	add	a1,a1,16
    5254:	00160613          	add	a2,a2,1
    5258:	0187a023          	sw	s8,0(a5)
    525c:	01b7a223          	sw	s11,4(a5)
    5260:	06b12423          	sw	a1,104(sp)
    5264:	06c12223          	sw	a2,100(sp)
    5268:	00878793          	add	a5,a5,8
    526c:	fccfdee3          	bge	t6,a2,5248 <_svfiprintf_r+0xad0>
    5270:	06010613          	add	a2,sp,96
    5274:	00098593          	mv	a1,s3
    5278:	00040513          	mv	a0,s0
    527c:	b04ff0ef          	jal	4580 <__ssprint_r>
    5280:	20051a63          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    5284:	ff0a0a13          	add	s4,s4,-16
    5288:	06812583          	lw	a1,104(sp)
    528c:	06412603          	lw	a2,100(sp)
    5290:	000a8793          	mv	a5,s5
    5294:	00700f93          	li	t6,7
    5298:	fb4dcce3          	blt	s11,s4,5250 <_svfiprintf_r+0xad8>
    529c:	000a0293          	mv	t0,s4
    52a0:	01812803          	lw	a6,24(sp)
    52a4:	01c12883          	lw	a7,28(sp)
    52a8:	02012703          	lw	a4,32(sp)
    52ac:	02412683          	lw	a3,36(sp)
    52b0:	03412e03          	lw	t3,52(sp)
    52b4:	03812a03          	lw	s4,56(sp)
    52b8:	000c0f13          	mv	t5,s8
    52bc:	00078c13          	mv	s8,a5
    52c0:	005585b3          	add	a1,a1,t0
    52c4:	00160613          	add	a2,a2,1
    52c8:	01ec2023          	sw	t5,0(s8)
    52cc:	005c2223          	sw	t0,4(s8)
    52d0:	06b12423          	sw	a1,104(sp)
    52d4:	06c12223          	sw	a2,100(sp)
    52d8:	00700513          	li	a0,7
    52dc:	008c0c13          	add	s8,s8,8
    52e0:	eac55c63          	bge	a0,a2,4998 <_svfiprintf_r+0x220>
    52e4:	06010613          	add	a2,sp,96
    52e8:	00098593          	mv	a1,s3
    52ec:	00040513          	mv	a0,s0
    52f0:	03c12a23          	sw	t3,52(sp)
    52f4:	02d12223          	sw	a3,36(sp)
    52f8:	02e12023          	sw	a4,32(sp)
    52fc:	01112e23          	sw	a7,28(sp)
    5300:	01012c23          	sw	a6,24(sp)
    5304:	a7cff0ef          	jal	4580 <__ssprint_r>
    5308:	18051663          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    530c:	02412683          	lw	a3,36(sp)
    5310:	02012703          	lw	a4,32(sp)
    5314:	06812583          	lw	a1,104(sp)
    5318:	06412603          	lw	a2,100(sp)
    531c:	40d70db3          	sub	s11,a4,a3
    5320:	03412e03          	lw	t3,52(sp)
    5324:	01c12883          	lw	a7,28(sp)
    5328:	01812803          	lw	a6,24(sp)
    532c:	000a8c13          	mv	s8,s5
    5330:	e7b05863          	blez	s11,49a0 <_svfiprintf_r+0x228>
    5334:	01000713          	li	a4,16
    5338:	0002bf17          	auipc	t5,0x2b
    533c:	420f0f13          	add	t5,t5,1056 # 30758 <zeroes.0>
    5340:	0bb75463          	bge	a4,s11,53e8 <_svfiprintf_r+0xc70>
    5344:	000c0793          	mv	a5,s8
    5348:	01000713          	li	a4,16
    534c:	000a0c13          	mv	s8,s4
    5350:	00700f93          	li	t6,7
    5354:	000d8a13          	mv	s4,s11
    5358:	01012c23          	sw	a6,24(sp)
    535c:	01112e23          	sw	a7,28(sp)
    5360:	02d12023          	sw	a3,32(sp)
    5364:	03c12223          	sw	t3,36(sp)
    5368:	000b0d93          	mv	s11,s6
    536c:	00c0006f          	j	5378 <_svfiprintf_r+0xc00>
    5370:	ff0a0a13          	add	s4,s4,-16
    5374:	05475a63          	bge	a4,s4,53c8 <_svfiprintf_r+0xc50>
    5378:	01058593          	add	a1,a1,16
    537c:	00160613          	add	a2,a2,1
    5380:	0167a023          	sw	s6,0(a5)
    5384:	00e7a223          	sw	a4,4(a5)
    5388:	06b12423          	sw	a1,104(sp)
    538c:	06c12223          	sw	a2,100(sp)
    5390:	00878793          	add	a5,a5,8
    5394:	fccfdee3          	bge	t6,a2,5370 <_svfiprintf_r+0xbf8>
    5398:	06010613          	add	a2,sp,96
    539c:	00098593          	mv	a1,s3
    53a0:	00040513          	mv	a0,s0
    53a4:	9dcff0ef          	jal	4580 <__ssprint_r>
    53a8:	0e051663          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    53ac:	01000713          	li	a4,16
    53b0:	ff0a0a13          	add	s4,s4,-16
    53b4:	06812583          	lw	a1,104(sp)
    53b8:	06412603          	lw	a2,100(sp)
    53bc:	000a8793          	mv	a5,s5
    53c0:	00700f93          	li	t6,7
    53c4:	fb474ae3          	blt	a4,s4,5378 <_svfiprintf_r+0xc00>
    53c8:	01812803          	lw	a6,24(sp)
    53cc:	01c12883          	lw	a7,28(sp)
    53d0:	02012683          	lw	a3,32(sp)
    53d4:	02412e03          	lw	t3,36(sp)
    53d8:	000d8f13          	mv	t5,s11
    53dc:	000a0d93          	mv	s11,s4
    53e0:	000c0a13          	mv	s4,s8
    53e4:	00078c13          	mv	s8,a5
    53e8:	01b585b3          	add	a1,a1,s11
    53ec:	00160613          	add	a2,a2,1
    53f0:	01ec2023          	sw	t5,0(s8)
    53f4:	01bc2223          	sw	s11,4(s8)
    53f8:	06b12423          	sw	a1,104(sp)
    53fc:	06c12223          	sw	a2,100(sp)
    5400:	00700713          	li	a4,7
    5404:	008c0c13          	add	s8,s8,8
    5408:	d8c75c63          	bge	a4,a2,49a0 <_svfiprintf_r+0x228>
    540c:	06010613          	add	a2,sp,96
    5410:	00098593          	mv	a1,s3
    5414:	00040513          	mv	a0,s0
    5418:	03c12223          	sw	t3,36(sp)
    541c:	02d12023          	sw	a3,32(sp)
    5420:	01112e23          	sw	a7,28(sp)
    5424:	01012c23          	sw	a6,24(sp)
    5428:	958ff0ef          	jal	4580 <__ssprint_r>
    542c:	06051463          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    5430:	06812583          	lw	a1,104(sp)
    5434:	06412603          	lw	a2,100(sp)
    5438:	02412e03          	lw	t3,36(sp)
    543c:	02012683          	lw	a3,32(sp)
    5440:	01c12883          	lw	a7,28(sp)
    5444:	01812803          	lw	a6,24(sp)
    5448:	000a8c13          	mv	s8,s5
    544c:	d54ff06f          	j	49a0 <_svfiprintf_r+0x228>
    5450:	06010613          	add	a2,sp,96
    5454:	00098593          	mv	a1,s3
    5458:	00040513          	mv	a0,s0
    545c:	01c12e23          	sw	t3,28(sp)
    5460:	01112c23          	sw	a7,24(sp)
    5464:	91cff0ef          	jal	4580 <__ssprint_r>
    5468:	02051663          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    546c:	06812583          	lw	a1,104(sp)
    5470:	01c12e03          	lw	t3,28(sp)
    5474:	01812883          	lw	a7,24(sp)
    5478:	000a8793          	mv	a5,s5
    547c:	d48ff06f          	j	49c4 <_svfiprintf_r+0x24c>
    5480:	06010613          	add	a2,sp,96
    5484:	00098593          	mv	a1,s3
    5488:	00040513          	mv	a0,s0
    548c:	8f4ff0ef          	jal	4580 <__ssprint_r>
    5490:	d4050e63          	beqz	a0,49ec <_svfiprintf_r+0x274>
    5494:	01012783          	lw	a5,16(sp)
    5498:	e0078a63          	beqz	a5,4aac <_svfiprintf_r+0x334>
    549c:	01012583          	lw	a1,16(sp)
    54a0:	00040513          	mv	a0,s0
    54a4:	db8fe0ef          	jal	3a5c <_free_r>
    54a8:	e04ff06f          	j	4aac <_svfiprintf_r+0x334>
    54ac:	00200613          	li	a2,2
    54b0:	00080e13          	mv	t3,a6
    54b4:	be0608e3          	beqz	a2,50a4 <_svfiprintf_r+0x92c>
    54b8:	01412583          	lw	a1,20(sp)
    54bc:	11010813          	add	a6,sp,272
    54c0:	00f6f793          	and	a5,a3,15
    54c4:	00f587b3          	add	a5,a1,a5
    54c8:	0007c603          	lbu	a2,0(a5)
    54cc:	0046d693          	srl	a3,a3,0x4
    54d0:	01c51793          	sll	a5,a0,0x1c
    54d4:	00d7e6b3          	or	a3,a5,a3
    54d8:	00455513          	srl	a0,a0,0x4
    54dc:	fec80fa3          	sb	a2,-1(a6)
    54e0:	00a6e7b3          	or	a5,a3,a0
    54e4:	fff80813          	add	a6,a6,-1
    54e8:	fc079ce3          	bnez	a5,54c0 <_svfiprintf_r+0xd48>
    54ec:	11010793          	add	a5,sp,272
    54f0:	410786b3          	sub	a3,a5,a6
    54f4:	00070d13          	mv	s10,a4
    54f8:	a0d75ce3          	bge	a4,a3,4f10 <_svfiprintf_r+0x798>
    54fc:	00068d13          	mv	s10,a3
    5500:	a11ff06f          	j	4f10 <_svfiprintf_r+0x798>
    5504:	01000513          	li	a0,16
    5508:	0002b317          	auipc	t1,0x2b
    550c:	26030313          	add	t1,t1,608 # 30768 <blanks.1>
    5510:	0db55463          	bge	a0,s11,55d8 <_svfiprintf_r+0xe60>
    5514:	02e12a23          	sw	a4,52(sp)
    5518:	000a0713          	mv	a4,s4
    551c:	000c0793          	mv	a5,s8
    5520:	000d8a13          	mv	s4,s11
    5524:	01000f13          	li	t5,16
    5528:	00700393          	li	t2,7
    552c:	01012c23          	sw	a6,24(sp)
    5530:	01f12e23          	sw	t6,28(sp)
    5534:	02512023          	sw	t0,32(sp)
    5538:	03112223          	sw	a7,36(sp)
    553c:	02d12c23          	sw	a3,56(sp)
    5540:	03c12e23          	sw	t3,60(sp)
    5544:	00030c13          	mv	s8,t1
    5548:	00070d93          	mv	s11,a4
    554c:	00c0006f          	j	5558 <_svfiprintf_r+0xde0>
    5550:	ff0a0a13          	add	s4,s4,-16
    5554:	054f5a63          	bge	t5,s4,55a8 <_svfiprintf_r+0xe30>
    5558:	01058593          	add	a1,a1,16
    555c:	00160613          	add	a2,a2,1
    5560:	0187a023          	sw	s8,0(a5)
    5564:	01e7a223          	sw	t5,4(a5)
    5568:	06b12423          	sw	a1,104(sp)
    556c:	06c12223          	sw	a2,100(sp)
    5570:	00878793          	add	a5,a5,8
    5574:	fcc3dee3          	bge	t2,a2,5550 <_svfiprintf_r+0xdd8>
    5578:	06010613          	add	a2,sp,96
    557c:	00098593          	mv	a1,s3
    5580:	00040513          	mv	a0,s0
    5584:	ffdfe0ef          	jal	4580 <__ssprint_r>
    5588:	f00516e3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    558c:	01000f13          	li	t5,16
    5590:	ff0a0a13          	add	s4,s4,-16
    5594:	06812583          	lw	a1,104(sp)
    5598:	06412603          	lw	a2,100(sp)
    559c:	000a8793          	mv	a5,s5
    55a0:	00700393          	li	t2,7
    55a4:	fb4f4ae3          	blt	t5,s4,5558 <_svfiprintf_r+0xde0>
    55a8:	01812803          	lw	a6,24(sp)
    55ac:	01c12f83          	lw	t6,28(sp)
    55b0:	02012283          	lw	t0,32(sp)
    55b4:	02412883          	lw	a7,36(sp)
    55b8:	03412703          	lw	a4,52(sp)
    55bc:	03812683          	lw	a3,56(sp)
    55c0:	03c12e03          	lw	t3,60(sp)
    55c4:	000d8513          	mv	a0,s11
    55c8:	000c0313          	mv	t1,s8
    55cc:	000a0d93          	mv	s11,s4
    55d0:	00078c13          	mv	s8,a5
    55d4:	00050a13          	mv	s4,a0
    55d8:	01b585b3          	add	a1,a1,s11
    55dc:	00160613          	add	a2,a2,1
    55e0:	006c2023          	sw	t1,0(s8)
    55e4:	01bc2223          	sw	s11,4(s8)
    55e8:	06b12423          	sw	a1,104(sp)
    55ec:	06c12223          	sw	a2,100(sp)
    55f0:	00700513          	li	a0,7
    55f4:	008c0c13          	add	s8,s8,8
    55f8:	b2c55a63          	bge	a0,a2,492c <_svfiprintf_r+0x1b4>
    55fc:	06010613          	add	a2,sp,96
    5600:	00098593          	mv	a1,s3
    5604:	00040513          	mv	a0,s0
    5608:	03c12e23          	sw	t3,60(sp)
    560c:	02d12c23          	sw	a3,56(sp)
    5610:	02e12a23          	sw	a4,52(sp)
    5614:	03112223          	sw	a7,36(sp)
    5618:	02512023          	sw	t0,32(sp)
    561c:	01f12e23          	sw	t6,28(sp)
    5620:	01012c23          	sw	a6,24(sp)
    5624:	f5dfe0ef          	jal	4580 <__ssprint_r>
    5628:	e60516e3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    562c:	06812583          	lw	a1,104(sp)
    5630:	06412603          	lw	a2,100(sp)
    5634:	03c12e03          	lw	t3,60(sp)
    5638:	03812683          	lw	a3,56(sp)
    563c:	03412703          	lw	a4,52(sp)
    5640:	02412883          	lw	a7,36(sp)
    5644:	02012283          	lw	t0,32(sp)
    5648:	01c12f83          	lw	t6,28(sp)
    564c:	01812803          	lw	a6,24(sp)
    5650:	000a8c13          	mv	s8,s5
    5654:	ad8ff06f          	j	492c <_svfiprintf_r+0x1b4>
    5658:	06010613          	add	a2,sp,96
    565c:	00098593          	mv	a1,s3
    5660:	00040513          	mv	a0,s0
    5664:	03c12c23          	sw	t3,56(sp)
    5668:	02d12a23          	sw	a3,52(sp)
    566c:	02e12223          	sw	a4,36(sp)
    5670:	03112023          	sw	a7,32(sp)
    5674:	00512e23          	sw	t0,28(sp)
    5678:	01012c23          	sw	a6,24(sp)
    567c:	f05fe0ef          	jal	4580 <__ssprint_r>
    5680:	e0051ae3          	bnez	a0,5494 <_svfiprintf_r+0xd1c>
    5684:	06812583          	lw	a1,104(sp)
    5688:	06412603          	lw	a2,100(sp)
    568c:	03812e03          	lw	t3,56(sp)
    5690:	03412683          	lw	a3,52(sp)
    5694:	02412703          	lw	a4,36(sp)
    5698:	02012883          	lw	a7,32(sp)
    569c:	01c12283          	lw	t0,28(sp)
    56a0:	01812803          	lw	a6,24(sp)
    56a4:	000a8c13          	mv	s8,s5
    56a8:	ae8ff06f          	j	4990 <_svfiprintf_r+0x218>
    56ac:	00900793          	li	a5,9
    56b0:	13b7ec63          	bltu	a5,s11,57e8 <_svfiprintf_r+0x1070>
    56b4:	03412423          	sw	s4,40(sp)
    56b8:	00098813          	mv	a6,s3
    56bc:	01012883          	lw	a7,16(sp)
    56c0:	01812703          	lw	a4,24(sp)
    56c4:	01c12c03          	lw	s8,28(sp)
    56c8:	02012e03          	lw	t3,32(sp)
    56cc:	02412403          	lw	s0,36(sp)
    56d0:	03412983          	lw	s3,52(sp)
    56d4:	03812c83          	lw	s9,56(sp)
    56d8:	03c12a03          	lw	s4,60(sp)
    56dc:	11010793          	add	a5,sp,272
    56e0:	410786b3          	sub	a3,a5,a6
    56e4:	00068d13          	mv	s10,a3
    56e8:	82e6d4e3          	bge	a3,a4,4f10 <_svfiprintf_r+0x798>
    56ec:	00070d13          	mv	s10,a4
    56f0:	821ff06f          	j	4f10 <_svfiprintf_r+0x798>
    56f4:	200e7693          	and	a3,t3,512
    56f8:	44069a63          	bnez	a3,5b4c <_svfiprintf_r+0x13d4>
    56fc:	41f65d13          	sra	s10,a2,0x1f
    5700:	00060d93          	mv	s11,a2
    5704:	000d0693          	mv	a3,s10
    5708:	f58ff06f          	j	4e60 <_svfiprintf_r+0x6e8>
    570c:	0106f593          	and	a1,a3,16
    5710:	000a2603          	lw	a2,0(s4)
    5714:	004a0a13          	add	s4,s4,4
    5718:	02059263          	bnez	a1,573c <_svfiprintf_r+0xfc4>
    571c:	0406f593          	and	a1,a3,64
    5720:	00058a63          	beqz	a1,5734 <_svfiprintf_r+0xfbc>
    5724:	01061d93          	sll	s11,a2,0x10
    5728:	010ddd93          	srl	s11,s11,0x10
    572c:	00000d13          	li	s10,0
    5730:	93dff06f          	j	506c <_svfiprintf_r+0x8f4>
    5734:	2006f593          	and	a1,a3,512
    5738:	3e059e63          	bnez	a1,5b34 <_svfiprintf_r+0x13bc>
    573c:	00060d93          	mv	s11,a2
    5740:	00000d13          	li	s10,0
    5744:	929ff06f          	j	506c <_svfiprintf_r+0x8f4>
    5748:	01067593          	and	a1,a2,16
    574c:	000a2683          	lw	a3,0(s4)
    5750:	004a0a13          	add	s4,s4,4
    5754:	02059263          	bnez	a1,5778 <_svfiprintf_r+0x1000>
    5758:	04067593          	and	a1,a2,64
    575c:	00058a63          	beqz	a1,5770 <_svfiprintf_r+0xff8>
    5760:	01069693          	sll	a3,a3,0x10
    5764:	0106d693          	srl	a3,a3,0x10
    5768:	00000513          	li	a0,0
    576c:	9bdff06f          	j	5128 <_svfiprintf_r+0x9b0>
    5770:	20067593          	and	a1,a2,512
    5774:	3c059663          	bnez	a1,5b40 <_svfiprintf_r+0x13c8>
    5778:	00000513          	li	a0,0
    577c:	9adff06f          	j	5128 <_svfiprintf_r+0x9b0>
    5780:	00000d13          	li	s10,0
    5784:	00000693          	li	a3,0
    5788:	11010813          	add	a6,sp,272
    578c:	f84ff06f          	j	4f10 <_svfiprintf_r+0x798>
    5790:	400e7793          	and	a5,t3,1024
    5794:	00000693          	li	a3,0
    5798:	11010e93          	add	t4,sp,272
    579c:	01812e23          	sw	s8,28(sp)
    57a0:	02812223          	sw	s0,36(sp)
    57a4:	03912c23          	sw	s9,56(sp)
    57a8:	03412e23          	sw	s4,60(sp)
    57ac:	01112823          	sw	a7,16(sp)
    57b0:	02812a03          	lw	s4,40(sp)
    57b4:	00e12c23          	sw	a4,24(sp)
    57b8:	03c12023          	sw	t3,32(sp)
    57bc:	00078c13          	mv	s8,a5
    57c0:	00068413          	mv	s0,a3
    57c4:	03312a23          	sw	s3,52(sp)
    57c8:	000e8c93          	mv	s9,t4
    57cc:	0280006f          	j	57f4 <_svfiprintf_r+0x107c>
    57d0:	00a00613          	li	a2,10
    57d4:	00000693          	li	a3,0
    57d8:	000d8513          	mv	a0,s11
    57dc:	000d0593          	mv	a1,s10
    57e0:	400040ef          	jal	9be0 <__udivdi3>
    57e4:	ec0d04e3          	beqz	s10,56ac <_svfiprintf_r+0xf34>
    57e8:	00050d93          	mv	s11,a0
    57ec:	00058d13          	mv	s10,a1
    57f0:	00098c93          	mv	s9,s3
    57f4:	00a00613          	li	a2,10
    57f8:	00000693          	li	a3,0
    57fc:	000d8513          	mv	a0,s11
    5800:	000d0593          	mv	a1,s10
    5804:	289040ef          	jal	a28c <__umoddi3>
    5808:	03050513          	add	a0,a0,48
    580c:	feac8fa3          	sb	a0,-1(s9)
    5810:	fffc8993          	add	s3,s9,-1
    5814:	00140413          	add	s0,s0,1
    5818:	fa0c0ce3          	beqz	s8,57d0 <_svfiprintf_r+0x1058>
    581c:	000a4783          	lbu	a5,0(s4)
    5820:	fa8798e3          	bne	a5,s0,57d0 <_svfiprintf_r+0x1058>
    5824:	0ff00793          	li	a5,255
    5828:	faf404e3          	beq	s0,a5,57d0 <_svfiprintf_r+0x1058>
    582c:	1e0d1663          	bnez	s10,5a18 <_svfiprintf_r+0x12a0>
    5830:	00900793          	li	a5,9
    5834:	1fb7e263          	bltu	a5,s11,5a18 <_svfiprintf_r+0x12a0>
    5838:	01812703          	lw	a4,24(sp)
    583c:	00098813          	mv	a6,s3
    5840:	11010793          	add	a5,sp,272
    5844:	03412423          	sw	s4,40(sp)
    5848:	410786b3          	sub	a3,a5,a6
    584c:	01012883          	lw	a7,16(sp)
    5850:	01c12c03          	lw	s8,28(sp)
    5854:	02012e03          	lw	t3,32(sp)
    5858:	02412403          	lw	s0,36(sp)
    585c:	03412983          	lw	s3,52(sp)
    5860:	03812c83          	lw	s9,56(sp)
    5864:	03c12a03          	lw	s4,60(sp)
    5868:	00070d13          	mv	s10,a4
    586c:	ead75263          	bge	a4,a3,4f10 <_svfiprintf_r+0x798>
    5870:	00068d13          	mv	s10,a3
    5874:	e9cff06f          	j	4f10 <_svfiprintf_r+0x798>
    5878:	00c12783          	lw	a5,12(sp)
    587c:	000a2703          	lw	a4,0(s4)
    5880:	004a0a13          	add	s4,s4,4
    5884:	41f7d693          	sra	a3,a5,0x1f
    5888:	00f72023          	sw	a5,0(a4)
    588c:	00d72223          	sw	a3,4(a4)
    5890:	fa1fe06f          	j	4830 <_svfiprintf_r+0xb8>
    5894:	000a2703          	lw	a4,0(s4)
    5898:	00100d13          	li	s10,1
    589c:	00100693          	li	a3,1
    58a0:	0ae10623          	sb	a4,172(sp)
    58a4:	0ac10593          	add	a1,sp,172
    58a8:	d84ff06f          	j	4e2c <_svfiprintf_r+0x6b4>
    58ac:	00068d13          	mv	s10,a3
    58b0:	00060813          	mv	a6,a2
    58b4:	e5cff06f          	j	4f10 <_svfiprintf_r+0x798>
    58b8:	fff00713          	li	a4,-1
    58bc:	00058c93          	mv	s9,a1
    58c0:	fddfe06f          	j	489c <_svfiprintf_r+0x124>
    58c4:	00060e13          	mv	t3,a2
    58c8:	00000613          	li	a2,0
    58cc:	fc060c63          	beqz	a2,50a4 <_svfiprintf_r+0x92c>
    58d0:	be9ff06f          	j	54b8 <_svfiprintf_r+0xd40>
    58d4:	000d8893          	mv	a7,s11
    58d8:	000e0613          	mv	a2,t3
    58dc:	831ff06f          	j	510c <_svfiprintf_r+0x994>
    58e0:	000d8893          	mv	a7,s11
    58e4:	000e0693          	mv	a3,t3
    58e8:	f68ff06f          	j	5050 <_svfiprintf_r+0x8d8>
    58ec:	0002b797          	auipc	a5,0x2b
    58f0:	b9c78793          	add	a5,a5,-1124 # 30488 <__clz_tab+0x100>
    58f4:	00f12a23          	sw	a5,20(sp)
    58f8:	020e7693          	and	a3,t3,32
    58fc:	000d8893          	mv	a7,s11
    5900:	04068c63          	beqz	a3,5958 <_svfiprintf_r+0x11e0>
    5904:	007a0a13          	add	s4,s4,7
    5908:	ff8a7a13          	and	s4,s4,-8
    590c:	000a2683          	lw	a3,0(s4)
    5910:	004a2503          	lw	a0,4(s4)
    5914:	008a0a13          	add	s4,s4,8
    5918:	001e7593          	and	a1,t3,1
    591c:	00058e63          	beqz	a1,5938 <_svfiprintf_r+0x11c0>
    5920:	00a6e5b3          	or	a1,a3,a0
    5924:	00058a63          	beqz	a1,5938 <_svfiprintf_r+0x11c0>
    5928:	03000593          	li	a1,48
    592c:	04b10223          	sb	a1,68(sp)
    5930:	04c102a3          	sb	a2,69(sp)
    5934:	002e6e13          	or	t3,t3,2
    5938:	bffe7e13          	and	t3,t3,-1025
    593c:	d94ff06f          	j	4ed0 <_svfiprintf_r+0x758>
    5940:	0002b797          	auipc	a5,0x2b
    5944:	b5c78793          	add	a5,a5,-1188 # 3049c <__clz_tab+0x114>
    5948:	00f12a23          	sw	a5,20(sp)
    594c:	020e7693          	and	a3,t3,32
    5950:	000d8893          	mv	a7,s11
    5954:	fa0698e3          	bnez	a3,5904 <_svfiprintf_r+0x118c>
    5958:	010e7593          	and	a1,t3,16
    595c:	000a2683          	lw	a3,0(s4)
    5960:	004a0a13          	add	s4,s4,4
    5964:	0e059e63          	bnez	a1,5a60 <_svfiprintf_r+0x12e8>
    5968:	040e7593          	and	a1,t3,64
    596c:	0e058663          	beqz	a1,5a58 <_svfiprintf_r+0x12e0>
    5970:	01069693          	sll	a3,a3,0x10
    5974:	0106d693          	srl	a3,a3,0x10
    5978:	00000513          	li	a0,0
    597c:	f9dff06f          	j	5918 <_svfiprintf_r+0x11a0>
    5980:	24074c63          	bltz	a4,5bd8 <_svfiprintf_r+0x1460>
    5984:	00070613          	mv	a2,a4
    5988:	00080513          	mv	a0,a6
    598c:	00000593          	li	a1,0
    5990:	03c12223          	sw	t3,36(sp)
    5994:	00e12e23          	sw	a4,28(sp)
    5998:	01012c23          	sw	a6,24(sp)
    599c:	03b12023          	sw	s11,32(sp)
    59a0:	154010ef          	jal	6af4 <memchr>
    59a4:	00a12823          	sw	a0,16(sp)
    59a8:	01812803          	lw	a6,24(sp)
    59ac:	01c12703          	lw	a4,28(sp)
    59b0:	02012883          	lw	a7,32(sp)
    59b4:	02412e03          	lw	t3,36(sp)
    59b8:	20050a63          	beqz	a0,5bcc <_svfiprintf_r+0x1454>
    59bc:	410506b3          	sub	a3,a0,a6
    59c0:	fff6ce93          	not	t4,a3
    59c4:	41fede93          	sra	t4,t4,0x1f
    59c8:	01d6fd33          	and	s10,a3,t4
    59cc:	00012823          	sw	zero,16(sp)
    59d0:	1440006f          	j	5b14 <_svfiprintf_r+0x139c>
    59d4:	04000593          	li	a1,64
    59d8:	00040513          	mv	a0,s0
    59dc:	bacfe0ef          	jal	3d88 <_malloc_r>
    59e0:	00a9a023          	sw	a0,0(s3)
    59e4:	00a9a823          	sw	a0,16(s3)
    59e8:	2a050463          	beqz	a0,5c90 <_svfiprintf_r+0x1518>
    59ec:	14912223          	sw	s1,324(sp)
    59f0:	15212023          	sw	s2,320(sp)
    59f4:	13512a23          	sw	s5,308(sp)
    59f8:	13612823          	sw	s6,304(sp)
    59fc:	13712623          	sw	s7,300(sp)
    5a00:	13912223          	sw	s9,292(sp)
    5a04:	13a12023          	sw	s10,288(sp)
    5a08:	11b12e23          	sw	s11,284(sp)
    5a0c:	04000793          	li	a5,64
    5a10:	00f9aa23          	sw	a5,20(s3)
    5a14:	dd5fe06f          	j	47e8 <_svfiprintf_r+0x70>
    5a18:	02c12783          	lw	a5,44(sp)
    5a1c:	03012583          	lw	a1,48(sp)
    5a20:	00000413          	li	s0,0
    5a24:	40f989b3          	sub	s3,s3,a5
    5a28:	00078613          	mv	a2,a5
    5a2c:	00098513          	mv	a0,s3
    5a30:	188010ef          	jal	6bb8 <strncpy>
    5a34:	001a4783          	lbu	a5,1(s4)
    5a38:	00a00613          	li	a2,10
    5a3c:	00000693          	li	a3,0
    5a40:	00f037b3          	snez	a5,a5
    5a44:	000d8513          	mv	a0,s11
    5a48:	000d0593          	mv	a1,s10
    5a4c:	00fa0a33          	add	s4,s4,a5
    5a50:	190040ef          	jal	9be0 <__udivdi3>
    5a54:	d95ff06f          	j	57e8 <_svfiprintf_r+0x1070>
    5a58:	200e7593          	and	a1,t3,512
    5a5c:	0c059663          	bnez	a1,5b28 <_svfiprintf_r+0x13b0>
    5a60:	00000513          	li	a0,0
    5a64:	eb5ff06f          	j	5918 <_svfiprintf_r+0x11a0>
    5a68:	001cc603          	lbu	a2,1(s9)
    5a6c:	200e6e13          	or	t3,t3,512
    5a70:	001c8c93          	add	s9,s9,1
    5a74:	e25fe06f          	j	4898 <_svfiprintf_r+0x120>
    5a78:	001cc603          	lbu	a2,1(s9)
    5a7c:	020e6e13          	or	t3,t3,32
    5a80:	001c8c93          	add	s9,s9,1
    5a84:	e15fe06f          	j	4898 <_svfiprintf_r+0x120>
    5a88:	000a2703          	lw	a4,0(s4)
    5a8c:	00c12783          	lw	a5,12(sp)
    5a90:	004a0a13          	add	s4,s4,4
    5a94:	00f72023          	sw	a5,0(a4)
    5a98:	d99fe06f          	j	4830 <_svfiprintf_r+0xb8>
    5a9c:	00070693          	mv	a3,a4
    5aa0:	00600713          	li	a4,6
    5aa4:	00d77463          	bgeu	a4,a3,5aac <_svfiprintf_r+0x1334>
    5aa8:	00600693          	li	a3,6
    5aac:	00068d13          	mv	s10,a3
    5ab0:	0002b817          	auipc	a6,0x2b
    5ab4:	a0080813          	add	a6,a6,-1536 # 304b0 <__clz_tab+0x128>
    5ab8:	e51fe06f          	j	4908 <_svfiprintf_r+0x190>
    5abc:	00000693          	li	a3,0
    5ac0:	00000513          	li	a0,0
    5ac4:	9f5ff06f          	j	54b8 <_svfiprintf_r+0xd40>
    5ac8:	05810713          	add	a4,sp,88
    5acc:	00000693          	li	a3,0
    5ad0:	04c10613          	add	a2,sp,76
    5ad4:	00000593          	li	a1,0
    5ad8:	00040513          	mv	a0,s0
    5adc:	01c12e23          	sw	t3,28(sp)
    5ae0:	01112c23          	sw	a7,24(sp)
    5ae4:	01012823          	sw	a6,16(sp)
    5ae8:	3b1030ef          	jal	9698 <_wcsrtombs_r>
    5aec:	fff00713          	li	a4,-1
    5af0:	01012803          	lw	a6,16(sp)
    5af4:	01812883          	lw	a7,24(sp)
    5af8:	01c12e03          	lw	t3,28(sp)
    5afc:	00050693          	mv	a3,a0
    5b00:	10e50a63          	beq	a0,a4,5c14 <_svfiprintf_r+0x149c>
    5b04:	05012623          	sw	a6,76(sp)
    5b08:	a3cff06f          	j	4d44 <_svfiprintf_r+0x5cc>
    5b0c:	00000d13          	li	s10,0
    5b10:	00012823          	sw	zero,16(sp)
    5b14:	04314603          	lbu	a2,67(sp)
    5b18:	00000713          	li	a4,0
    5b1c:	00000f93          	li	t6,0
    5b20:	b6061663          	bnez	a2,4e8c <_svfiprintf_r+0x714>
    5b24:	df1fe06f          	j	4914 <_svfiprintf_r+0x19c>
    5b28:	0ff6f693          	zext.b	a3,a3
    5b2c:	00000513          	li	a0,0
    5b30:	de9ff06f          	j	5918 <_svfiprintf_r+0x11a0>
    5b34:	0ff67d93          	zext.b	s11,a2
    5b38:	00000d13          	li	s10,0
    5b3c:	d30ff06f          	j	506c <_svfiprintf_r+0x8f4>
    5b40:	0ff6f693          	zext.b	a3,a3
    5b44:	00000513          	li	a0,0
    5b48:	de0ff06f          	j	5128 <_svfiprintf_r+0x9b0>
    5b4c:	01861d93          	sll	s11,a2,0x18
    5b50:	418ddd93          	sra	s11,s11,0x18
    5b54:	41fddd13          	sra	s10,s11,0x1f
    5b58:	000d0693          	mv	a3,s10
    5b5c:	b04ff06f          	j	4e60 <_svfiprintf_r+0x6e8>
    5b60:	000a2703          	lw	a4,0(s4)
    5b64:	00c12783          	lw	a5,12(sp)
    5b68:	004a0a13          	add	s4,s4,4
    5b6c:	00f71023          	sh	a5,0(a4)
    5b70:	cc1fe06f          	j	4830 <_svfiprintf_r+0xb8>
    5b74:	06010613          	add	a2,sp,96
    5b78:	00098593          	mv	a1,s3
    5b7c:	00040513          	mv	a0,s0
    5b80:	a01fe0ef          	jal	4580 <__ssprint_r>
    5b84:	00c9d783          	lhu	a5,12(s3)
    5b88:	0407f793          	and	a5,a5,64
    5b8c:	f29fe06f          	j	4ab4 <_svfiprintf_r+0x33c>
    5b90:	03000693          	li	a3,48
    5b94:	e28ff06f          	j	51bc <_svfiprintf_r+0xa44>
    5b98:	00168593          	add	a1,a3,1
    5b9c:	00040513          	mv	a0,s0
    5ba0:	01c12e23          	sw	t3,28(sp)
    5ba4:	01112c23          	sw	a7,24(sp)
    5ba8:	00d12823          	sw	a3,16(sp)
    5bac:	9dcfe0ef          	jal	3d88 <_malloc_r>
    5bb0:	01012683          	lw	a3,16(sp)
    5bb4:	01812883          	lw	a7,24(sp)
    5bb8:	01c12e03          	lw	t3,28(sp)
    5bbc:	00050813          	mv	a6,a0
    5bc0:	04050a63          	beqz	a0,5c14 <_svfiprintf_r+0x149c>
    5bc4:	00a12823          	sw	a0,16(sp)
    5bc8:	990ff06f          	j	4d58 <_svfiprintf_r+0x5e0>
    5bcc:	00070d13          	mv	s10,a4
    5bd0:	00070693          	mv	a3,a4
    5bd4:	f41ff06f          	j	5b14 <_svfiprintf_r+0x139c>
    5bd8:	00080513          	mv	a0,a6
    5bdc:	03c12023          	sw	t3,32(sp)
    5be0:	01012c23          	sw	a6,24(sp)
    5be4:	01b12e23          	sw	s11,28(sp)
    5be8:	1ec020ef          	jal	7dd4 <strlen>
    5bec:	fff54e93          	not	t4,a0
    5bf0:	41fede93          	sra	t4,t4,0x1f
    5bf4:	01812803          	lw	a6,24(sp)
    5bf8:	01c12883          	lw	a7,28(sp)
    5bfc:	02012e03          	lw	t3,32(sp)
    5c00:	00050693          	mv	a3,a0
    5c04:	01d57d33          	and	s10,a0,t4
    5c08:	00012823          	sw	zero,16(sp)
    5c0c:	f09ff06f          	j	5b14 <_svfiprintf_r+0x139c>
    5c10:	000c8993          	mv	s3,s9
    5c14:	00c9d783          	lhu	a5,12(s3)
    5c18:	14412483          	lw	s1,324(sp)
    5c1c:	14012903          	lw	s2,320(sp)
    5c20:	13412a83          	lw	s5,308(sp)
    5c24:	13012b03          	lw	s6,304(sp)
    5c28:	12c12b83          	lw	s7,300(sp)
    5c2c:	12412c83          	lw	s9,292(sp)
    5c30:	12012d03          	lw	s10,288(sp)
    5c34:	11c12d83          	lw	s11,284(sp)
    5c38:	0407e793          	or	a5,a5,64
    5c3c:	00f99623          	sh	a5,12(s3)
    5c40:	fff00793          	li	a5,-1
    5c44:	00f12623          	sw	a5,12(sp)
    5c48:	e95fe06f          	j	4adc <_svfiprintf_r+0x364>
    5c4c:	00098713          	mv	a4,s3
    5c50:	01012803          	lw	a6,16(sp)
    5c54:	000c8993          	mv	s3,s9
    5c58:	01812883          	lw	a7,24(sp)
    5c5c:	01c12c03          	lw	s8,28(sp)
    5c60:	02012e03          	lw	t3,32(sp)
    5c64:	02412a03          	lw	s4,36(sp)
    5c68:	000d8c93          	mv	s9,s11
    5c6c:	00070693          	mv	a3,a4
    5c70:	8d4ff06f          	j	4d44 <_svfiprintf_r+0x5cc>
    5c74:	000a2703          	lw	a4,0(s4)
    5c78:	004a0a13          	add	s4,s4,4
    5c7c:	00075463          	bgez	a4,5c84 <_svfiprintf_r+0x150c>
    5c80:	fff00713          	li	a4,-1
    5c84:	001cc603          	lbu	a2,1(s9)
    5c88:	00058c93          	mv	s9,a1
    5c8c:	c0dfe06f          	j	4898 <_svfiprintf_r+0x120>
    5c90:	00c00793          	li	a5,12
    5c94:	00f42023          	sw	a5,0(s0)
    5c98:	fa9ff06f          	j	5c40 <_svfiprintf_r+0x14c8>
    5c9c:	00c9d783          	lhu	a5,12(s3)
    5ca0:	0407e793          	or	a5,a5,64
    5ca4:	00f99623          	sh	a5,12(s3)
    5ca8:	fecff06f          	j	5494 <_svfiprintf_r+0xd1c>

00005cac <_fclose_r>:
    5cac:	ff010113          	add	sp,sp,-16
    5cb0:	00112623          	sw	ra,12(sp)
    5cb4:	01212023          	sw	s2,0(sp)
    5cb8:	0e058263          	beqz	a1,5d9c <_fclose_r+0xf0>
    5cbc:	00812423          	sw	s0,8(sp)
    5cc0:	00912223          	sw	s1,4(sp)
    5cc4:	00058413          	mv	s0,a1
    5cc8:	00050493          	mv	s1,a0
    5ccc:	00050663          	beqz	a0,5cd8 <_fclose_r+0x2c>
    5cd0:	03452783          	lw	a5,52(a0)
    5cd4:	10078063          	beqz	a5,5dd4 <_fclose_r+0x128>
    5cd8:	06442783          	lw	a5,100(s0)
    5cdc:	00c41703          	lh	a4,12(s0)
    5ce0:	0017f793          	and	a5,a5,1
    5ce4:	0a079663          	bnez	a5,5d90 <_fclose_r+0xe4>
    5ce8:	20077713          	and	a4,a4,512
    5cec:	0e070863          	beqz	a4,5ddc <_fclose_r+0x130>
    5cf0:	00040593          	mv	a1,s0
    5cf4:	00048513          	mv	a0,s1
    5cf8:	134000ef          	jal	5e2c <__sflush_r>
    5cfc:	02c42783          	lw	a5,44(s0)
    5d00:	00050913          	mv	s2,a0
    5d04:	00078a63          	beqz	a5,5d18 <_fclose_r+0x6c>
    5d08:	01c42583          	lw	a1,28(s0)
    5d0c:	00048513          	mv	a0,s1
    5d10:	000780e7          	jalr	a5
    5d14:	0a054063          	bltz	a0,5db4 <_fclose_r+0x108>
    5d18:	00c45783          	lhu	a5,12(s0)
    5d1c:	0807f793          	and	a5,a5,128
    5d20:	0a079263          	bnez	a5,5dc4 <_fclose_r+0x118>
    5d24:	03042583          	lw	a1,48(s0)
    5d28:	00058c63          	beqz	a1,5d40 <_fclose_r+0x94>
    5d2c:	04040793          	add	a5,s0,64
    5d30:	00f58663          	beq	a1,a5,5d3c <_fclose_r+0x90>
    5d34:	00048513          	mv	a0,s1
    5d38:	d25fd0ef          	jal	3a5c <_free_r>
    5d3c:	02042823          	sw	zero,48(s0)
    5d40:	04442583          	lw	a1,68(s0)
    5d44:	00058863          	beqz	a1,5d54 <_fclose_r+0xa8>
    5d48:	00048513          	mv	a0,s1
    5d4c:	d11fd0ef          	jal	3a5c <_free_r>
    5d50:	04042223          	sw	zero,68(s0)
    5d54:	90cfd0ef          	jal	2e60 <__sfp_lock_acquire>
    5d58:	06442783          	lw	a5,100(s0)
    5d5c:	00041623          	sh	zero,12(s0)
    5d60:	0017f793          	and	a5,a5,1
    5d64:	0a078663          	beqz	a5,5e10 <_fclose_r+0x164>
    5d68:	05842503          	lw	a0,88(s0)
    5d6c:	a05fd0ef          	jal	3770 <__retarget_lock_close_recursive>
    5d70:	8fcfd0ef          	jal	2e6c <__sfp_lock_release>
    5d74:	00c12083          	lw	ra,12(sp)
    5d78:	00812403          	lw	s0,8(sp)
    5d7c:	00412483          	lw	s1,4(sp)
    5d80:	00090513          	mv	a0,s2
    5d84:	00012903          	lw	s2,0(sp)
    5d88:	01010113          	add	sp,sp,16
    5d8c:	00008067          	ret
    5d90:	f60710e3          	bnez	a4,5cf0 <_fclose_r+0x44>
    5d94:	00812403          	lw	s0,8(sp)
    5d98:	00412483          	lw	s1,4(sp)
    5d9c:	00000913          	li	s2,0
    5da0:	00c12083          	lw	ra,12(sp)
    5da4:	00090513          	mv	a0,s2
    5da8:	00012903          	lw	s2,0(sp)
    5dac:	01010113          	add	sp,sp,16
    5db0:	00008067          	ret
    5db4:	00c45783          	lhu	a5,12(s0)
    5db8:	fff00913          	li	s2,-1
    5dbc:	0807f793          	and	a5,a5,128
    5dc0:	f60782e3          	beqz	a5,5d24 <_fclose_r+0x78>
    5dc4:	01042583          	lw	a1,16(s0)
    5dc8:	00048513          	mv	a0,s1
    5dcc:	c91fd0ef          	jal	3a5c <_free_r>
    5dd0:	f55ff06f          	j	5d24 <_fclose_r+0x78>
    5dd4:	81cfd0ef          	jal	2df0 <__sinit>
    5dd8:	f01ff06f          	j	5cd8 <_fclose_r+0x2c>
    5ddc:	05842503          	lw	a0,88(s0)
    5de0:	999fd0ef          	jal	3778 <__retarget_lock_acquire_recursive>
    5de4:	00c41783          	lh	a5,12(s0)
    5de8:	f00794e3          	bnez	a5,5cf0 <_fclose_r+0x44>
    5dec:	06442783          	lw	a5,100(s0)
    5df0:	0017f793          	and	a5,a5,1
    5df4:	fa0790e3          	bnez	a5,5d94 <_fclose_r+0xe8>
    5df8:	05842503          	lw	a0,88(s0)
    5dfc:	00000913          	li	s2,0
    5e00:	991fd0ef          	jal	3790 <__retarget_lock_release_recursive>
    5e04:	00812403          	lw	s0,8(sp)
    5e08:	00412483          	lw	s1,4(sp)
    5e0c:	f95ff06f          	j	5da0 <_fclose_r+0xf4>
    5e10:	05842503          	lw	a0,88(s0)
    5e14:	97dfd0ef          	jal	3790 <__retarget_lock_release_recursive>
    5e18:	f51ff06f          	j	5d68 <_fclose_r+0xbc>

00005e1c <fclose>:
    5e1c:	00050593          	mv	a1,a0
    5e20:	0002f517          	auipc	a0,0x2f
    5e24:	9e452503          	lw	a0,-1564(a0) # 34804 <_impure_ptr>
    5e28:	e85ff06f          	j	5cac <_fclose_r>

00005e2c <__sflush_r>:
    5e2c:	00c59703          	lh	a4,12(a1)
    5e30:	fe010113          	add	sp,sp,-32
    5e34:	00812c23          	sw	s0,24(sp)
    5e38:	01312623          	sw	s3,12(sp)
    5e3c:	00112e23          	sw	ra,28(sp)
    5e40:	00877793          	and	a5,a4,8
    5e44:	00058413          	mv	s0,a1
    5e48:	00050993          	mv	s3,a0
    5e4c:	12079063          	bnez	a5,5f6c <__sflush_r+0x140>
    5e50:	000017b7          	lui	a5,0x1
    5e54:	80078793          	add	a5,a5,-2048 # 800 <_read+0x78>
    5e58:	0045a683          	lw	a3,4(a1)
    5e5c:	00f767b3          	or	a5,a4,a5
    5e60:	00f59623          	sh	a5,12(a1)
    5e64:	18d05263          	blez	a3,5fe8 <__sflush_r+0x1bc>
    5e68:	02842803          	lw	a6,40(s0)
    5e6c:	0e080463          	beqz	a6,5f54 <__sflush_r+0x128>
    5e70:	00912a23          	sw	s1,20(sp)
    5e74:	01371693          	sll	a3,a4,0x13
    5e78:	0009a483          	lw	s1,0(s3)
    5e7c:	0009a023          	sw	zero,0(s3)
    5e80:	01c42583          	lw	a1,28(s0)
    5e84:	1606ce63          	bltz	a3,6000 <__sflush_r+0x1d4>
    5e88:	00000613          	li	a2,0
    5e8c:	00100693          	li	a3,1
    5e90:	00098513          	mv	a0,s3
    5e94:	000800e7          	jalr	a6
    5e98:	fff00793          	li	a5,-1
    5e9c:	00050613          	mv	a2,a0
    5ea0:	1af50463          	beq	a0,a5,6048 <__sflush_r+0x21c>
    5ea4:	00c41783          	lh	a5,12(s0)
    5ea8:	02842803          	lw	a6,40(s0)
    5eac:	01c42583          	lw	a1,28(s0)
    5eb0:	0047f793          	and	a5,a5,4
    5eb4:	00078e63          	beqz	a5,5ed0 <__sflush_r+0xa4>
    5eb8:	00442703          	lw	a4,4(s0)
    5ebc:	03042783          	lw	a5,48(s0)
    5ec0:	40e60633          	sub	a2,a2,a4
    5ec4:	00078663          	beqz	a5,5ed0 <__sflush_r+0xa4>
    5ec8:	03c42783          	lw	a5,60(s0)
    5ecc:	40f60633          	sub	a2,a2,a5
    5ed0:	00000693          	li	a3,0
    5ed4:	00098513          	mv	a0,s3
    5ed8:	000800e7          	jalr	a6
    5edc:	fff00793          	li	a5,-1
    5ee0:	12f51463          	bne	a0,a5,6008 <__sflush_r+0x1dc>
    5ee4:	0009a683          	lw	a3,0(s3)
    5ee8:	01d00793          	li	a5,29
    5eec:	00c41703          	lh	a4,12(s0)
    5ef0:	16d7ea63          	bltu	a5,a3,6064 <__sflush_r+0x238>
    5ef4:	204007b7          	lui	a5,0x20400
    5ef8:	00178793          	add	a5,a5,1 # 20400001 <GET_WATCHDOG_LOW+0x201fefc1>
    5efc:	00d7d7b3          	srl	a5,a5,a3
    5f00:	0017f793          	and	a5,a5,1
    5f04:	16078063          	beqz	a5,6064 <__sflush_r+0x238>
    5f08:	01042603          	lw	a2,16(s0)
    5f0c:	fffff7b7          	lui	a5,0xfffff
    5f10:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    5f14:	00f777b3          	and	a5,a4,a5
    5f18:	00f41623          	sh	a5,12(s0)
    5f1c:	00042223          	sw	zero,4(s0)
    5f20:	00c42023          	sw	a2,0(s0)
    5f24:	01371793          	sll	a5,a4,0x13
    5f28:	0007d463          	bgez	a5,5f30 <__sflush_r+0x104>
    5f2c:	10068263          	beqz	a3,6030 <__sflush_r+0x204>
    5f30:	03042583          	lw	a1,48(s0)
    5f34:	0099a023          	sw	s1,0(s3)
    5f38:	10058463          	beqz	a1,6040 <__sflush_r+0x214>
    5f3c:	04040793          	add	a5,s0,64
    5f40:	00f58663          	beq	a1,a5,5f4c <__sflush_r+0x120>
    5f44:	00098513          	mv	a0,s3
    5f48:	b15fd0ef          	jal	3a5c <_free_r>
    5f4c:	01412483          	lw	s1,20(sp)
    5f50:	02042823          	sw	zero,48(s0)
    5f54:	00000513          	li	a0,0
    5f58:	01c12083          	lw	ra,28(sp)
    5f5c:	01812403          	lw	s0,24(sp)
    5f60:	00c12983          	lw	s3,12(sp)
    5f64:	02010113          	add	sp,sp,32
    5f68:	00008067          	ret
    5f6c:	01212823          	sw	s2,16(sp)
    5f70:	0105a903          	lw	s2,16(a1)
    5f74:	08090263          	beqz	s2,5ff8 <__sflush_r+0x1cc>
    5f78:	00912a23          	sw	s1,20(sp)
    5f7c:	0005a483          	lw	s1,0(a1)
    5f80:	00377713          	and	a4,a4,3
    5f84:	0125a023          	sw	s2,0(a1)
    5f88:	412484b3          	sub	s1,s1,s2
    5f8c:	00000793          	li	a5,0
    5f90:	00071463          	bnez	a4,5f98 <__sflush_r+0x16c>
    5f94:	0145a783          	lw	a5,20(a1)
    5f98:	00f42423          	sw	a5,8(s0)
    5f9c:	00904863          	bgtz	s1,5fac <__sflush_r+0x180>
    5fa0:	0540006f          	j	5ff4 <__sflush_r+0x1c8>
    5fa4:	00a90933          	add	s2,s2,a0
    5fa8:	04905663          	blez	s1,5ff4 <__sflush_r+0x1c8>
    5fac:	02442783          	lw	a5,36(s0)
    5fb0:	01c42583          	lw	a1,28(s0)
    5fb4:	00048693          	mv	a3,s1
    5fb8:	00090613          	mv	a2,s2
    5fbc:	00098513          	mv	a0,s3
    5fc0:	000780e7          	jalr	a5
    5fc4:	40a484b3          	sub	s1,s1,a0
    5fc8:	fca04ee3          	bgtz	a0,5fa4 <__sflush_r+0x178>
    5fcc:	00c41703          	lh	a4,12(s0)
    5fd0:	01012903          	lw	s2,16(sp)
    5fd4:	04076713          	or	a4,a4,64
    5fd8:	01412483          	lw	s1,20(sp)
    5fdc:	00e41623          	sh	a4,12(s0)
    5fe0:	fff00513          	li	a0,-1
    5fe4:	f75ff06f          	j	5f58 <__sflush_r+0x12c>
    5fe8:	03c5a683          	lw	a3,60(a1)
    5fec:	e6d04ee3          	bgtz	a3,5e68 <__sflush_r+0x3c>
    5ff0:	f65ff06f          	j	5f54 <__sflush_r+0x128>
    5ff4:	01412483          	lw	s1,20(sp)
    5ff8:	01012903          	lw	s2,16(sp)
    5ffc:	f59ff06f          	j	5f54 <__sflush_r+0x128>
    6000:	05042603          	lw	a2,80(s0)
    6004:	eadff06f          	j	5eb0 <__sflush_r+0x84>
    6008:	00c41703          	lh	a4,12(s0)
    600c:	01042683          	lw	a3,16(s0)
    6010:	fffff7b7          	lui	a5,0xfffff
    6014:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    6018:	00f777b3          	and	a5,a4,a5
    601c:	00f41623          	sh	a5,12(s0)
    6020:	00042223          	sw	zero,4(s0)
    6024:	00d42023          	sw	a3,0(s0)
    6028:	01371793          	sll	a5,a4,0x13
    602c:	f007d2e3          	bgez	a5,5f30 <__sflush_r+0x104>
    6030:	03042583          	lw	a1,48(s0)
    6034:	04a42823          	sw	a0,80(s0)
    6038:	0099a023          	sw	s1,0(s3)
    603c:	f00590e3          	bnez	a1,5f3c <__sflush_r+0x110>
    6040:	01412483          	lw	s1,20(sp)
    6044:	f11ff06f          	j	5f54 <__sflush_r+0x128>
    6048:	0009a783          	lw	a5,0(s3)
    604c:	e4078ce3          	beqz	a5,5ea4 <__sflush_r+0x78>
    6050:	01d00713          	li	a4,29
    6054:	00e78c63          	beq	a5,a4,606c <__sflush_r+0x240>
    6058:	01600713          	li	a4,22
    605c:	00e78863          	beq	a5,a4,606c <__sflush_r+0x240>
    6060:	00c41703          	lh	a4,12(s0)
    6064:	04076713          	or	a4,a4,64
    6068:	f71ff06f          	j	5fd8 <__sflush_r+0x1ac>
    606c:	0099a023          	sw	s1,0(s3)
    6070:	01412483          	lw	s1,20(sp)
    6074:	ee1ff06f          	j	5f54 <__sflush_r+0x128>

00006078 <_fflush_r>:
    6078:	ff010113          	add	sp,sp,-16
    607c:	00812423          	sw	s0,8(sp)
    6080:	00912223          	sw	s1,4(sp)
    6084:	00112623          	sw	ra,12(sp)
    6088:	01212023          	sw	s2,0(sp)
    608c:	00050493          	mv	s1,a0
    6090:	00058413          	mv	s0,a1
    6094:	00050663          	beqz	a0,60a0 <_fflush_r+0x28>
    6098:	03452783          	lw	a5,52(a0)
    609c:	0a078a63          	beqz	a5,6150 <_fflush_r+0xd8>
    60a0:	00c41783          	lh	a5,12(s0)
    60a4:	00000913          	li	s2,0
    60a8:	04078063          	beqz	a5,60e8 <_fflush_r+0x70>
    60ac:	06442703          	lw	a4,100(s0)
    60b0:	00177713          	and	a4,a4,1
    60b4:	00071663          	bnez	a4,60c0 <_fflush_r+0x48>
    60b8:	2007f793          	and	a5,a5,512
    60bc:	04078463          	beqz	a5,6104 <_fflush_r+0x8c>
    60c0:	00040593          	mv	a1,s0
    60c4:	00048513          	mv	a0,s1
    60c8:	d65ff0ef          	jal	5e2c <__sflush_r>
    60cc:	06442783          	lw	a5,100(s0)
    60d0:	00050913          	mv	s2,a0
    60d4:	0017f793          	and	a5,a5,1
    60d8:	00079863          	bnez	a5,60e8 <_fflush_r+0x70>
    60dc:	00c45783          	lhu	a5,12(s0)
    60e0:	2007f793          	and	a5,a5,512
    60e4:	04078463          	beqz	a5,612c <_fflush_r+0xb4>
    60e8:	00c12083          	lw	ra,12(sp)
    60ec:	00812403          	lw	s0,8(sp)
    60f0:	00412483          	lw	s1,4(sp)
    60f4:	00090513          	mv	a0,s2
    60f8:	00012903          	lw	s2,0(sp)
    60fc:	01010113          	add	sp,sp,16
    6100:	00008067          	ret
    6104:	05842503          	lw	a0,88(s0)
    6108:	e70fd0ef          	jal	3778 <__retarget_lock_acquire_recursive>
    610c:	00040593          	mv	a1,s0
    6110:	00048513          	mv	a0,s1
    6114:	d19ff0ef          	jal	5e2c <__sflush_r>
    6118:	06442783          	lw	a5,100(s0)
    611c:	00050913          	mv	s2,a0
    6120:	0017f793          	and	a5,a5,1
    6124:	fc0792e3          	bnez	a5,60e8 <_fflush_r+0x70>
    6128:	fb5ff06f          	j	60dc <_fflush_r+0x64>
    612c:	05842503          	lw	a0,88(s0)
    6130:	e60fd0ef          	jal	3790 <__retarget_lock_release_recursive>
    6134:	00c12083          	lw	ra,12(sp)
    6138:	00812403          	lw	s0,8(sp)
    613c:	00412483          	lw	s1,4(sp)
    6140:	00090513          	mv	a0,s2
    6144:	00012903          	lw	s2,0(sp)
    6148:	01010113          	add	sp,sp,16
    614c:	00008067          	ret
    6150:	ca1fc0ef          	jal	2df0 <__sinit>
    6154:	f4dff06f          	j	60a0 <_fflush_r+0x28>

00006158 <fflush>:
    6158:	0a050c63          	beqz	a0,6210 <fflush+0xb8>
    615c:	ff010113          	add	sp,sp,-16
    6160:	00812423          	sw	s0,8(sp)
    6164:	01212023          	sw	s2,0(sp)
    6168:	00112623          	sw	ra,12(sp)
    616c:	00912223          	sw	s1,4(sp)
    6170:	0002e917          	auipc	s2,0x2e
    6174:	69492903          	lw	s2,1684(s2) # 34804 <_impure_ptr>
    6178:	00050413          	mv	s0,a0
    617c:	00090663          	beqz	s2,6188 <fflush+0x30>
    6180:	03492783          	lw	a5,52(s2)
    6184:	06078463          	beqz	a5,61ec <fflush+0x94>
    6188:	00c41783          	lh	a5,12(s0)
    618c:	00000493          	li	s1,0
    6190:	04078063          	beqz	a5,61d0 <fflush+0x78>
    6194:	06442703          	lw	a4,100(s0)
    6198:	00177713          	and	a4,a4,1
    619c:	00071663          	bnez	a4,61a8 <fflush+0x50>
    61a0:	2007f793          	and	a5,a5,512
    61a4:	04078a63          	beqz	a5,61f8 <fflush+0xa0>
    61a8:	00040593          	mv	a1,s0
    61ac:	00090513          	mv	a0,s2
    61b0:	c7dff0ef          	jal	5e2c <__sflush_r>
    61b4:	06442783          	lw	a5,100(s0)
    61b8:	00050493          	mv	s1,a0
    61bc:	0017f793          	and	a5,a5,1
    61c0:	00079863          	bnez	a5,61d0 <fflush+0x78>
    61c4:	00c45783          	lhu	a5,12(s0)
    61c8:	2007f793          	and	a5,a5,512
    61cc:	02078c63          	beqz	a5,6204 <fflush+0xac>
    61d0:	00c12083          	lw	ra,12(sp)
    61d4:	00812403          	lw	s0,8(sp)
    61d8:	00012903          	lw	s2,0(sp)
    61dc:	00048513          	mv	a0,s1
    61e0:	00412483          	lw	s1,4(sp)
    61e4:	01010113          	add	sp,sp,16
    61e8:	00008067          	ret
    61ec:	00090513          	mv	a0,s2
    61f0:	c01fc0ef          	jal	2df0 <__sinit>
    61f4:	f95ff06f          	j	6188 <fflush+0x30>
    61f8:	05842503          	lw	a0,88(s0)
    61fc:	d7cfd0ef          	jal	3778 <__retarget_lock_acquire_recursive>
    6200:	fa9ff06f          	j	61a8 <fflush+0x50>
    6204:	05842503          	lw	a0,88(s0)
    6208:	d88fd0ef          	jal	3790 <__retarget_lock_release_recursive>
    620c:	fc5ff06f          	j	61d0 <fflush+0x78>
    6210:	0002e617          	auipc	a2,0x2e
    6214:	df060613          	add	a2,a2,-528 # 34000 <__sglue>
    6218:	00000597          	auipc	a1,0x0
    621c:	e6058593          	add	a1,a1,-416 # 6078 <_fflush_r>
    6220:	0002e517          	auipc	a0,0x2e
    6224:	df050513          	add	a0,a0,-528 # 34010 <_impure_data>
    6228:	cb9fc06f          	j	2ee0 <_fwalk_sglue>

0000622c <__sfvwrite_r>:
    622c:	00862783          	lw	a5,8(a2)
    6230:	2c078463          	beqz	a5,64f8 <__sfvwrite_r+0x2cc>
    6234:	00c59683          	lh	a3,12(a1)
    6238:	fd010113          	add	sp,sp,-48
    623c:	02812423          	sw	s0,40(sp)
    6240:	01412c23          	sw	s4,24(sp)
    6244:	01612823          	sw	s6,16(sp)
    6248:	02112623          	sw	ra,44(sp)
    624c:	0086f793          	and	a5,a3,8
    6250:	00060b13          	mv	s6,a2
    6254:	00050a13          	mv	s4,a0
    6258:	00058413          	mv	s0,a1
    625c:	08078e63          	beqz	a5,62f8 <__sfvwrite_r+0xcc>
    6260:	0105a783          	lw	a5,16(a1)
    6264:	08078a63          	beqz	a5,62f8 <__sfvwrite_r+0xcc>
    6268:	02912223          	sw	s1,36(sp)
    626c:	03212023          	sw	s2,32(sp)
    6270:	01312e23          	sw	s3,28(sp)
    6274:	01512a23          	sw	s5,20(sp)
    6278:	0026f793          	and	a5,a3,2
    627c:	000b2483          	lw	s1,0(s6)
    6280:	0a078463          	beqz	a5,6328 <__sfvwrite_r+0xfc>
    6284:	02442783          	lw	a5,36(s0)
    6288:	01c42583          	lw	a1,28(s0)
    628c:	80000ab7          	lui	s5,0x80000
    6290:	00000993          	li	s3,0
    6294:	00000913          	li	s2,0
    6298:	c00a8a93          	add	s5,s5,-1024 # 7ffffc00 <GET_WATCHDOG_LOW+0x7fdfebc0>
    629c:	00098613          	mv	a2,s3
    62a0:	000a0513          	mv	a0,s4
    62a4:	04090263          	beqz	s2,62e8 <__sfvwrite_r+0xbc>
    62a8:	00090693          	mv	a3,s2
    62ac:	012af463          	bgeu	s5,s2,62b4 <__sfvwrite_r+0x88>
    62b0:	000a8693          	mv	a3,s5
    62b4:	000780e7          	jalr	a5
    62b8:	46a05263          	blez	a0,671c <__sfvwrite_r+0x4f0>
    62bc:	008b2783          	lw	a5,8(s6)
    62c0:	00a989b3          	add	s3,s3,a0
    62c4:	40a90933          	sub	s2,s2,a0
    62c8:	40a787b3          	sub	a5,a5,a0
    62cc:	00fb2423          	sw	a5,8(s6)
    62d0:	1a078663          	beqz	a5,647c <__sfvwrite_r+0x250>
    62d4:	02442783          	lw	a5,36(s0)
    62d8:	01c42583          	lw	a1,28(s0)
    62dc:	00098613          	mv	a2,s3
    62e0:	000a0513          	mv	a0,s4
    62e4:	fc0912e3          	bnez	s2,62a8 <__sfvwrite_r+0x7c>
    62e8:	0004a983          	lw	s3,0(s1)
    62ec:	0044a903          	lw	s2,4(s1)
    62f0:	00848493          	add	s1,s1,8
    62f4:	fa9ff06f          	j	629c <__sfvwrite_r+0x70>
    62f8:	00040593          	mv	a1,s0
    62fc:	000a0513          	mv	a0,s4
    6300:	6b0000ef          	jal	69b0 <__swsetup_r>
    6304:	1c051c63          	bnez	a0,64dc <__sfvwrite_r+0x2b0>
    6308:	00c41683          	lh	a3,12(s0)
    630c:	02912223          	sw	s1,36(sp)
    6310:	03212023          	sw	s2,32(sp)
    6314:	01312e23          	sw	s3,28(sp)
    6318:	01512a23          	sw	s5,20(sp)
    631c:	0026f793          	and	a5,a3,2
    6320:	000b2483          	lw	s1,0(s6)
    6324:	f60790e3          	bnez	a5,6284 <__sfvwrite_r+0x58>
    6328:	01712623          	sw	s7,12(sp)
    632c:	01812423          	sw	s8,8(sp)
    6330:	0016f793          	and	a5,a3,1
    6334:	1c079663          	bnez	a5,6500 <__sfvwrite_r+0x2d4>
    6338:	00042783          	lw	a5,0(s0)
    633c:	00842703          	lw	a4,8(s0)
    6340:	80000ab7          	lui	s5,0x80000
    6344:	01912223          	sw	s9,4(sp)
    6348:	00000b93          	li	s7,0
    634c:	00000993          	li	s3,0
    6350:	fffa8a93          	add	s5,s5,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    6354:	00078513          	mv	a0,a5
    6358:	00070c13          	mv	s8,a4
    635c:	10098263          	beqz	s3,6460 <__sfvwrite_r+0x234>
    6360:	2006f613          	and	a2,a3,512
    6364:	28060863          	beqz	a2,65f4 <__sfvwrite_r+0x3c8>
    6368:	00070c93          	mv	s9,a4
    636c:	32e9e863          	bltu	s3,a4,669c <__sfvwrite_r+0x470>
    6370:	4806f713          	and	a4,a3,1152
    6374:	08070a63          	beqz	a4,6408 <__sfvwrite_r+0x1dc>
    6378:	01442603          	lw	a2,20(s0)
    637c:	01042583          	lw	a1,16(s0)
    6380:	00161713          	sll	a4,a2,0x1
    6384:	00c70733          	add	a4,a4,a2
    6388:	40b78933          	sub	s2,a5,a1
    638c:	01f75c13          	srl	s8,a4,0x1f
    6390:	00ec0c33          	add	s8,s8,a4
    6394:	00190793          	add	a5,s2,1
    6398:	401c5c13          	sra	s8,s8,0x1
    639c:	013787b3          	add	a5,a5,s3
    63a0:	000c0613          	mv	a2,s8
    63a4:	00fc7663          	bgeu	s8,a5,63b0 <__sfvwrite_r+0x184>
    63a8:	00078c13          	mv	s8,a5
    63ac:	00078613          	mv	a2,a5
    63b0:	4006f693          	and	a3,a3,1024
    63b4:	32068063          	beqz	a3,66d4 <__sfvwrite_r+0x4a8>
    63b8:	00060593          	mv	a1,a2
    63bc:	000a0513          	mv	a0,s4
    63c0:	9c9fd0ef          	jal	3d88 <_malloc_r>
    63c4:	00050c93          	mv	s9,a0
    63c8:	34050e63          	beqz	a0,6724 <__sfvwrite_r+0x4f8>
    63cc:	01042583          	lw	a1,16(s0)
    63d0:	00090613          	mv	a2,s2
    63d4:	05d010ef          	jal	7c30 <memcpy>
    63d8:	00c45783          	lhu	a5,12(s0)
    63dc:	b7f7f793          	and	a5,a5,-1153
    63e0:	0807e793          	or	a5,a5,128
    63e4:	00f41623          	sh	a5,12(s0)
    63e8:	012c8533          	add	a0,s9,s2
    63ec:	412c07b3          	sub	a5,s8,s2
    63f0:	01942823          	sw	s9,16(s0)
    63f4:	01842a23          	sw	s8,20(s0)
    63f8:	00a42023          	sw	a0,0(s0)
    63fc:	00098c13          	mv	s8,s3
    6400:	00f42423          	sw	a5,8(s0)
    6404:	00098c93          	mv	s9,s3
    6408:	000c8613          	mv	a2,s9
    640c:	000b8593          	mv	a1,s7
    6410:	714010ef          	jal	7b24 <memmove>
    6414:	00842703          	lw	a4,8(s0)
    6418:	00042783          	lw	a5,0(s0)
    641c:	00098913          	mv	s2,s3
    6420:	41870733          	sub	a4,a4,s8
    6424:	019787b3          	add	a5,a5,s9
    6428:	00e42423          	sw	a4,8(s0)
    642c:	00f42023          	sw	a5,0(s0)
    6430:	00000993          	li	s3,0
    6434:	008b2783          	lw	a5,8(s6)
    6438:	012b8bb3          	add	s7,s7,s2
    643c:	412787b3          	sub	a5,a5,s2
    6440:	00fb2423          	sw	a5,8(s6)
    6444:	02078663          	beqz	a5,6470 <__sfvwrite_r+0x244>
    6448:	00042783          	lw	a5,0(s0)
    644c:	00842703          	lw	a4,8(s0)
    6450:	00c41683          	lh	a3,12(s0)
    6454:	00078513          	mv	a0,a5
    6458:	00070c13          	mv	s8,a4
    645c:	f00992e3          	bnez	s3,6360 <__sfvwrite_r+0x134>
    6460:	0004ab83          	lw	s7,0(s1)
    6464:	0044a983          	lw	s3,4(s1)
    6468:	00848493          	add	s1,s1,8
    646c:	ee9ff06f          	j	6354 <__sfvwrite_r+0x128>
    6470:	00c12b83          	lw	s7,12(sp)
    6474:	00812c03          	lw	s8,8(sp)
    6478:	00412c83          	lw	s9,4(sp)
    647c:	02c12083          	lw	ra,44(sp)
    6480:	02812403          	lw	s0,40(sp)
    6484:	02412483          	lw	s1,36(sp)
    6488:	02012903          	lw	s2,32(sp)
    648c:	01c12983          	lw	s3,28(sp)
    6490:	01412a83          	lw	s5,20(sp)
    6494:	01812a03          	lw	s4,24(sp)
    6498:	01012b03          	lw	s6,16(sp)
    649c:	00000513          	li	a0,0
    64a0:	03010113          	add	sp,sp,48
    64a4:	00008067          	ret
    64a8:	00040593          	mv	a1,s0
    64ac:	000a0513          	mv	a0,s4
    64b0:	bc9ff0ef          	jal	6078 <_fflush_r>
    64b4:	0a050e63          	beqz	a0,6570 <__sfvwrite_r+0x344>
    64b8:	00c41783          	lh	a5,12(s0)
    64bc:	00c12b83          	lw	s7,12(sp)
    64c0:	00812c03          	lw	s8,8(sp)
    64c4:	02412483          	lw	s1,36(sp)
    64c8:	02012903          	lw	s2,32(sp)
    64cc:	01c12983          	lw	s3,28(sp)
    64d0:	01412a83          	lw	s5,20(sp)
    64d4:	0407e793          	or	a5,a5,64
    64d8:	00f41623          	sh	a5,12(s0)
    64dc:	02c12083          	lw	ra,44(sp)
    64e0:	02812403          	lw	s0,40(sp)
    64e4:	01812a03          	lw	s4,24(sp)
    64e8:	01012b03          	lw	s6,16(sp)
    64ec:	fff00513          	li	a0,-1
    64f0:	03010113          	add	sp,sp,48
    64f4:	00008067          	ret
    64f8:	00000513          	li	a0,0
    64fc:	00008067          	ret
    6500:	00000a93          	li	s5,0
    6504:	00000513          	li	a0,0
    6508:	00000c13          	li	s8,0
    650c:	00000993          	li	s3,0
    6510:	08098263          	beqz	s3,6594 <__sfvwrite_r+0x368>
    6514:	08050a63          	beqz	a0,65a8 <__sfvwrite_r+0x37c>
    6518:	000a8793          	mv	a5,s5
    651c:	00098b93          	mv	s7,s3
    6520:	0137f463          	bgeu	a5,s3,6528 <__sfvwrite_r+0x2fc>
    6524:	00078b93          	mv	s7,a5
    6528:	00042503          	lw	a0,0(s0)
    652c:	01042783          	lw	a5,16(s0)
    6530:	00842903          	lw	s2,8(s0)
    6534:	01442683          	lw	a3,20(s0)
    6538:	00a7f663          	bgeu	a5,a0,6544 <__sfvwrite_r+0x318>
    653c:	00d90933          	add	s2,s2,a3
    6540:	09794463          	blt	s2,s7,65c8 <__sfvwrite_r+0x39c>
    6544:	16dbc263          	blt	s7,a3,66a8 <__sfvwrite_r+0x47c>
    6548:	02442783          	lw	a5,36(s0)
    654c:	01c42583          	lw	a1,28(s0)
    6550:	000c0613          	mv	a2,s8
    6554:	000a0513          	mv	a0,s4
    6558:	000780e7          	jalr	a5
    655c:	00050913          	mv	s2,a0
    6560:	f4a05ce3          	blez	a0,64b8 <__sfvwrite_r+0x28c>
    6564:	412a8ab3          	sub	s5,s5,s2
    6568:	00100513          	li	a0,1
    656c:	f20a8ee3          	beqz	s5,64a8 <__sfvwrite_r+0x27c>
    6570:	008b2783          	lw	a5,8(s6)
    6574:	012c0c33          	add	s8,s8,s2
    6578:	412989b3          	sub	s3,s3,s2
    657c:	412787b3          	sub	a5,a5,s2
    6580:	00fb2423          	sw	a5,8(s6)
    6584:	f80796e3          	bnez	a5,6510 <__sfvwrite_r+0x2e4>
    6588:	00c12b83          	lw	s7,12(sp)
    658c:	00812c03          	lw	s8,8(sp)
    6590:	eedff06f          	j	647c <__sfvwrite_r+0x250>
    6594:	0044a983          	lw	s3,4(s1)
    6598:	00048793          	mv	a5,s1
    659c:	00848493          	add	s1,s1,8
    65a0:	fe098ae3          	beqz	s3,6594 <__sfvwrite_r+0x368>
    65a4:	0007ac03          	lw	s8,0(a5)
    65a8:	00098613          	mv	a2,s3
    65ac:	00a00593          	li	a1,10
    65b0:	000c0513          	mv	a0,s8
    65b4:	540000ef          	jal	6af4 <memchr>
    65b8:	14050c63          	beqz	a0,6710 <__sfvwrite_r+0x4e4>
    65bc:	00150513          	add	a0,a0,1
    65c0:	41850ab3          	sub	s5,a0,s8
    65c4:	f55ff06f          	j	6518 <__sfvwrite_r+0x2ec>
    65c8:	000c0593          	mv	a1,s8
    65cc:	00090613          	mv	a2,s2
    65d0:	554010ef          	jal	7b24 <memmove>
    65d4:	00042783          	lw	a5,0(s0)
    65d8:	00040593          	mv	a1,s0
    65dc:	000a0513          	mv	a0,s4
    65e0:	012787b3          	add	a5,a5,s2
    65e4:	00f42023          	sw	a5,0(s0)
    65e8:	a91ff0ef          	jal	6078 <_fflush_r>
    65ec:	f6050ce3          	beqz	a0,6564 <__sfvwrite_r+0x338>
    65f0:	ec9ff06f          	j	64b8 <__sfvwrite_r+0x28c>
    65f4:	01042683          	lw	a3,16(s0)
    65f8:	04f6e463          	bltu	a3,a5,6640 <__sfvwrite_r+0x414>
    65fc:	01442583          	lw	a1,20(s0)
    6600:	04b9e063          	bltu	s3,a1,6640 <__sfvwrite_r+0x414>
    6604:	00098913          	mv	s2,s3
    6608:	013af463          	bgeu	s5,s3,6610 <__sfvwrite_r+0x3e4>
    660c:	000a8913          	mv	s2,s5
    6610:	00090513          	mv	a0,s2
    6614:	ce0fb0ef          	jal	1af4 <__modsi3>
    6618:	02442783          	lw	a5,36(s0)
    661c:	01c42583          	lw	a1,28(s0)
    6620:	40a906b3          	sub	a3,s2,a0
    6624:	000b8613          	mv	a2,s7
    6628:	000a0513          	mv	a0,s4
    662c:	000780e7          	jalr	a5
    6630:	00050913          	mv	s2,a0
    6634:	04a05a63          	blez	a0,6688 <__sfvwrite_r+0x45c>
    6638:	412989b3          	sub	s3,s3,s2
    663c:	df9ff06f          	j	6434 <__sfvwrite_r+0x208>
    6640:	00070913          	mv	s2,a4
    6644:	00e9f463          	bgeu	s3,a4,664c <__sfvwrite_r+0x420>
    6648:	00098913          	mv	s2,s3
    664c:	00078513          	mv	a0,a5
    6650:	00090613          	mv	a2,s2
    6654:	000b8593          	mv	a1,s7
    6658:	4cc010ef          	jal	7b24 <memmove>
    665c:	00842703          	lw	a4,8(s0)
    6660:	00042783          	lw	a5,0(s0)
    6664:	41270733          	sub	a4,a4,s2
    6668:	012787b3          	add	a5,a5,s2
    666c:	00e42423          	sw	a4,8(s0)
    6670:	00f42023          	sw	a5,0(s0)
    6674:	fc0712e3          	bnez	a4,6638 <__sfvwrite_r+0x40c>
    6678:	00040593          	mv	a1,s0
    667c:	000a0513          	mv	a0,s4
    6680:	9f9ff0ef          	jal	6078 <_fflush_r>
    6684:	fa050ae3          	beqz	a0,6638 <__sfvwrite_r+0x40c>
    6688:	00c41783          	lh	a5,12(s0)
    668c:	00c12b83          	lw	s7,12(sp)
    6690:	00812c03          	lw	s8,8(sp)
    6694:	00412c83          	lw	s9,4(sp)
    6698:	e2dff06f          	j	64c4 <__sfvwrite_r+0x298>
    669c:	00098c13          	mv	s8,s3
    66a0:	00098c93          	mv	s9,s3
    66a4:	d65ff06f          	j	6408 <__sfvwrite_r+0x1dc>
    66a8:	000b8613          	mv	a2,s7
    66ac:	000c0593          	mv	a1,s8
    66b0:	474010ef          	jal	7b24 <memmove>
    66b4:	00842703          	lw	a4,8(s0)
    66b8:	00042783          	lw	a5,0(s0)
    66bc:	000b8913          	mv	s2,s7
    66c0:	41770733          	sub	a4,a4,s7
    66c4:	017787b3          	add	a5,a5,s7
    66c8:	00e42423          	sw	a4,8(s0)
    66cc:	00f42023          	sw	a5,0(s0)
    66d0:	e95ff06f          	j	6564 <__sfvwrite_r+0x338>
    66d4:	000a0513          	mv	a0,s4
    66d8:	348020ef          	jal	8a20 <_realloc_r>
    66dc:	00050c93          	mv	s9,a0
    66e0:	d00514e3          	bnez	a0,63e8 <__sfvwrite_r+0x1bc>
    66e4:	01042583          	lw	a1,16(s0)
    66e8:	000a0513          	mv	a0,s4
    66ec:	b70fd0ef          	jal	3a5c <_free_r>
    66f0:	00c41783          	lh	a5,12(s0)
    66f4:	00c00713          	li	a4,12
    66f8:	00c12b83          	lw	s7,12(sp)
    66fc:	00812c03          	lw	s8,8(sp)
    6700:	00412c83          	lw	s9,4(sp)
    6704:	00ea2023          	sw	a4,0(s4)
    6708:	f7f7f793          	and	a5,a5,-129
    670c:	db9ff06f          	j	64c4 <__sfvwrite_r+0x298>
    6710:	00198793          	add	a5,s3,1
    6714:	00078a93          	mv	s5,a5
    6718:	e05ff06f          	j	651c <__sfvwrite_r+0x2f0>
    671c:	00c41783          	lh	a5,12(s0)
    6720:	da5ff06f          	j	64c4 <__sfvwrite_r+0x298>
    6724:	00c00713          	li	a4,12
    6728:	00c41783          	lh	a5,12(s0)
    672c:	00c12b83          	lw	s7,12(sp)
    6730:	00812c03          	lw	s8,8(sp)
    6734:	00412c83          	lw	s9,4(sp)
    6738:	00ea2023          	sw	a4,0(s4)
    673c:	d89ff06f          	j	64c4 <__sfvwrite_r+0x298>

00006740 <__smakebuf_r>:
    6740:	00c59783          	lh	a5,12(a1)
    6744:	f8010113          	add	sp,sp,-128
    6748:	06812c23          	sw	s0,120(sp)
    674c:	06112e23          	sw	ra,124(sp)
    6750:	0027f713          	and	a4,a5,2
    6754:	00058413          	mv	s0,a1
    6758:	02070463          	beqz	a4,6780 <__smakebuf_r+0x40>
    675c:	04358793          	add	a5,a1,67
    6760:	00f5a023          	sw	a5,0(a1)
    6764:	00f5a823          	sw	a5,16(a1)
    6768:	00100793          	li	a5,1
    676c:	00f5aa23          	sw	a5,20(a1)
    6770:	07c12083          	lw	ra,124(sp)
    6774:	07812403          	lw	s0,120(sp)
    6778:	08010113          	add	sp,sp,128
    677c:	00008067          	ret
    6780:	00e59583          	lh	a1,14(a1)
    6784:	06912a23          	sw	s1,116(sp)
    6788:	07212823          	sw	s2,112(sp)
    678c:	07312623          	sw	s3,108(sp)
    6790:	07412423          	sw	s4,104(sp)
    6794:	00050493          	mv	s1,a0
    6798:	0805c663          	bltz	a1,6824 <__smakebuf_r+0xe4>
    679c:	00810613          	add	a2,sp,8
    67a0:	274010ef          	jal	7a14 <_fstat_r>
    67a4:	06054e63          	bltz	a0,6820 <__smakebuf_r+0xe0>
    67a8:	00c12783          	lw	a5,12(sp)
    67ac:	0000f937          	lui	s2,0xf
    67b0:	000019b7          	lui	s3,0x1
    67b4:	00f97933          	and	s2,s2,a5
    67b8:	ffffe7b7          	lui	a5,0xffffe
    67bc:	00f90933          	add	s2,s2,a5
    67c0:	00193913          	seqz	s2,s2
    67c4:	40000a13          	li	s4,1024
    67c8:	80098993          	add	s3,s3,-2048 # 800 <_read+0x78>
    67cc:	000a0593          	mv	a1,s4
    67d0:	00048513          	mv	a0,s1
    67d4:	db4fd0ef          	jal	3d88 <_malloc_r>
    67d8:	00c41783          	lh	a5,12(s0)
    67dc:	06050863          	beqz	a0,684c <__smakebuf_r+0x10c>
    67e0:	0807e793          	or	a5,a5,128
    67e4:	00a42023          	sw	a0,0(s0)
    67e8:	00a42823          	sw	a0,16(s0)
    67ec:	00f41623          	sh	a5,12(s0)
    67f0:	01442a23          	sw	s4,20(s0)
    67f4:	0a091063          	bnez	s2,6894 <__smakebuf_r+0x154>
    67f8:	0137e7b3          	or	a5,a5,s3
    67fc:	07c12083          	lw	ra,124(sp)
    6800:	00f41623          	sh	a5,12(s0)
    6804:	07812403          	lw	s0,120(sp)
    6808:	07412483          	lw	s1,116(sp)
    680c:	07012903          	lw	s2,112(sp)
    6810:	06c12983          	lw	s3,108(sp)
    6814:	06812a03          	lw	s4,104(sp)
    6818:	08010113          	add	sp,sp,128
    681c:	00008067          	ret
    6820:	00c41783          	lh	a5,12(s0)
    6824:	0807f793          	and	a5,a5,128
    6828:	00000913          	li	s2,0
    682c:	04078e63          	beqz	a5,6888 <__smakebuf_r+0x148>
    6830:	04000a13          	li	s4,64
    6834:	000a0593          	mv	a1,s4
    6838:	00048513          	mv	a0,s1
    683c:	d4cfd0ef          	jal	3d88 <_malloc_r>
    6840:	00c41783          	lh	a5,12(s0)
    6844:	00000993          	li	s3,0
    6848:	f8051ce3          	bnez	a0,67e0 <__smakebuf_r+0xa0>
    684c:	2007f713          	and	a4,a5,512
    6850:	04071e63          	bnez	a4,68ac <__smakebuf_r+0x16c>
    6854:	ffc7f793          	and	a5,a5,-4
    6858:	0027e793          	or	a5,a5,2
    685c:	04340713          	add	a4,s0,67
    6860:	00f41623          	sh	a5,12(s0)
    6864:	00100793          	li	a5,1
    6868:	07412483          	lw	s1,116(sp)
    686c:	07012903          	lw	s2,112(sp)
    6870:	06c12983          	lw	s3,108(sp)
    6874:	06812a03          	lw	s4,104(sp)
    6878:	00e42023          	sw	a4,0(s0)
    687c:	00e42823          	sw	a4,16(s0)
    6880:	00f42a23          	sw	a5,20(s0)
    6884:	eedff06f          	j	6770 <__smakebuf_r+0x30>
    6888:	40000a13          	li	s4,1024
    688c:	00000993          	li	s3,0
    6890:	f3dff06f          	j	67cc <__smakebuf_r+0x8c>
    6894:	00e41583          	lh	a1,14(s0)
    6898:	00048513          	mv	a0,s1
    689c:	1d8010ef          	jal	7a74 <_isatty_r>
    68a0:	02051063          	bnez	a0,68c0 <__smakebuf_r+0x180>
    68a4:	00c41783          	lh	a5,12(s0)
    68a8:	f51ff06f          	j	67f8 <__smakebuf_r+0xb8>
    68ac:	07412483          	lw	s1,116(sp)
    68b0:	07012903          	lw	s2,112(sp)
    68b4:	06c12983          	lw	s3,108(sp)
    68b8:	06812a03          	lw	s4,104(sp)
    68bc:	eb5ff06f          	j	6770 <__smakebuf_r+0x30>
    68c0:	00c45783          	lhu	a5,12(s0)
    68c4:	ffc7f793          	and	a5,a5,-4
    68c8:	0017e793          	or	a5,a5,1
    68cc:	01079793          	sll	a5,a5,0x10
    68d0:	4107d793          	sra	a5,a5,0x10
    68d4:	f25ff06f          	j	67f8 <__smakebuf_r+0xb8>

000068d8 <__swhatbuf_r>:
    68d8:	f9010113          	add	sp,sp,-112
    68dc:	06812423          	sw	s0,104(sp)
    68e0:	00058413          	mv	s0,a1
    68e4:	00e59583          	lh	a1,14(a1)
    68e8:	06912223          	sw	s1,100(sp)
    68ec:	07212023          	sw	s2,96(sp)
    68f0:	06112623          	sw	ra,108(sp)
    68f4:	00060493          	mv	s1,a2
    68f8:	00068913          	mv	s2,a3
    68fc:	0405ca63          	bltz	a1,6950 <__swhatbuf_r+0x78>
    6900:	00810613          	add	a2,sp,8
    6904:	110010ef          	jal	7a14 <_fstat_r>
    6908:	04054463          	bltz	a0,6950 <__swhatbuf_r+0x78>
    690c:	00c12703          	lw	a4,12(sp)
    6910:	0000f7b7          	lui	a5,0xf
    6914:	06c12083          	lw	ra,108(sp)
    6918:	00e7f7b3          	and	a5,a5,a4
    691c:	ffffe737          	lui	a4,0xffffe
    6920:	00e787b3          	add	a5,a5,a4
    6924:	06812403          	lw	s0,104(sp)
    6928:	0017b793          	seqz	a5,a5
    692c:	00f92023          	sw	a5,0(s2) # f000 <__fini_array_end+0x4000>
    6930:	40000713          	li	a4,1024
    6934:	00e4a023          	sw	a4,0(s1)
    6938:	00001537          	lui	a0,0x1
    693c:	06412483          	lw	s1,100(sp)
    6940:	06012903          	lw	s2,96(sp)
    6944:	80050513          	add	a0,a0,-2048 # 800 <_read+0x78>
    6948:	07010113          	add	sp,sp,112
    694c:	00008067          	ret
    6950:	00c45783          	lhu	a5,12(s0)
    6954:	0807f793          	and	a5,a5,128
    6958:	02078863          	beqz	a5,6988 <__swhatbuf_r+0xb0>
    695c:	06c12083          	lw	ra,108(sp)
    6960:	06812403          	lw	s0,104(sp)
    6964:	00000793          	li	a5,0
    6968:	00f92023          	sw	a5,0(s2)
    696c:	04000713          	li	a4,64
    6970:	00e4a023          	sw	a4,0(s1)
    6974:	06012903          	lw	s2,96(sp)
    6978:	06412483          	lw	s1,100(sp)
    697c:	00000513          	li	a0,0
    6980:	07010113          	add	sp,sp,112
    6984:	00008067          	ret
    6988:	06c12083          	lw	ra,108(sp)
    698c:	06812403          	lw	s0,104(sp)
    6990:	00f92023          	sw	a5,0(s2)
    6994:	40000713          	li	a4,1024
    6998:	00e4a023          	sw	a4,0(s1)
    699c:	06012903          	lw	s2,96(sp)
    69a0:	06412483          	lw	s1,100(sp)
    69a4:	00000513          	li	a0,0
    69a8:	07010113          	add	sp,sp,112
    69ac:	00008067          	ret

000069b0 <__swsetup_r>:
    69b0:	ff010113          	add	sp,sp,-16
    69b4:	00812423          	sw	s0,8(sp)
    69b8:	00912223          	sw	s1,4(sp)
    69bc:	00112623          	sw	ra,12(sp)
    69c0:	0002e797          	auipc	a5,0x2e
    69c4:	e447a783          	lw	a5,-444(a5) # 34804 <_impure_ptr>
    69c8:	00050493          	mv	s1,a0
    69cc:	00058413          	mv	s0,a1
    69d0:	00078663          	beqz	a5,69dc <__swsetup_r+0x2c>
    69d4:	0347a703          	lw	a4,52(a5)
    69d8:	0e070c63          	beqz	a4,6ad0 <__swsetup_r+0x120>
    69dc:	00c41783          	lh	a5,12(s0)
    69e0:	0087f713          	and	a4,a5,8
    69e4:	06070a63          	beqz	a4,6a58 <__swsetup_r+0xa8>
    69e8:	01042703          	lw	a4,16(s0)
    69ec:	08070663          	beqz	a4,6a78 <__swsetup_r+0xc8>
    69f0:	0017f693          	and	a3,a5,1
    69f4:	02068863          	beqz	a3,6a24 <__swsetup_r+0x74>
    69f8:	01442683          	lw	a3,20(s0)
    69fc:	00042423          	sw	zero,8(s0)
    6a00:	00000513          	li	a0,0
    6a04:	40d006b3          	neg	a3,a3
    6a08:	00d42c23          	sw	a3,24(s0)
    6a0c:	02070a63          	beqz	a4,6a40 <__swsetup_r+0x90>
    6a10:	00c12083          	lw	ra,12(sp)
    6a14:	00812403          	lw	s0,8(sp)
    6a18:	00412483          	lw	s1,4(sp)
    6a1c:	01010113          	add	sp,sp,16
    6a20:	00008067          	ret
    6a24:	0027f693          	and	a3,a5,2
    6a28:	00000613          	li	a2,0
    6a2c:	00069463          	bnez	a3,6a34 <__swsetup_r+0x84>
    6a30:	01442603          	lw	a2,20(s0)
    6a34:	00c42423          	sw	a2,8(s0)
    6a38:	00000513          	li	a0,0
    6a3c:	fc071ae3          	bnez	a4,6a10 <__swsetup_r+0x60>
    6a40:	0807f713          	and	a4,a5,128
    6a44:	fc0706e3          	beqz	a4,6a10 <__swsetup_r+0x60>
    6a48:	0407e793          	or	a5,a5,64
    6a4c:	00f41623          	sh	a5,12(s0)
    6a50:	fff00513          	li	a0,-1
    6a54:	fbdff06f          	j	6a10 <__swsetup_r+0x60>
    6a58:	0107f713          	and	a4,a5,16
    6a5c:	08070063          	beqz	a4,6adc <__swsetup_r+0x12c>
    6a60:	0047f713          	and	a4,a5,4
    6a64:	02071c63          	bnez	a4,6a9c <__swsetup_r+0xec>
    6a68:	01042703          	lw	a4,16(s0)
    6a6c:	0087e793          	or	a5,a5,8
    6a70:	00f41623          	sh	a5,12(s0)
    6a74:	f6071ee3          	bnez	a4,69f0 <__swsetup_r+0x40>
    6a78:	2807f693          	and	a3,a5,640
    6a7c:	20000613          	li	a2,512
    6a80:	f6c688e3          	beq	a3,a2,69f0 <__swsetup_r+0x40>
    6a84:	00040593          	mv	a1,s0
    6a88:	00048513          	mv	a0,s1
    6a8c:	cb5ff0ef          	jal	6740 <__smakebuf_r>
    6a90:	00c41783          	lh	a5,12(s0)
    6a94:	01042703          	lw	a4,16(s0)
    6a98:	f59ff06f          	j	69f0 <__swsetup_r+0x40>
    6a9c:	03042583          	lw	a1,48(s0)
    6aa0:	00058e63          	beqz	a1,6abc <__swsetup_r+0x10c>
    6aa4:	04040713          	add	a4,s0,64
    6aa8:	00e58863          	beq	a1,a4,6ab8 <__swsetup_r+0x108>
    6aac:	00048513          	mv	a0,s1
    6ab0:	fadfc0ef          	jal	3a5c <_free_r>
    6ab4:	00c41783          	lh	a5,12(s0)
    6ab8:	02042823          	sw	zero,48(s0)
    6abc:	01042703          	lw	a4,16(s0)
    6ac0:	fdb7f793          	and	a5,a5,-37
    6ac4:	00042223          	sw	zero,4(s0)
    6ac8:	00e42023          	sw	a4,0(s0)
    6acc:	fa1ff06f          	j	6a6c <__swsetup_r+0xbc>
    6ad0:	00078513          	mv	a0,a5
    6ad4:	b1cfc0ef          	jal	2df0 <__sinit>
    6ad8:	f05ff06f          	j	69dc <__swsetup_r+0x2c>
    6adc:	00900713          	li	a4,9
    6ae0:	00e4a023          	sw	a4,0(s1)
    6ae4:	0407e793          	or	a5,a5,64
    6ae8:	00f41623          	sh	a5,12(s0)
    6aec:	fff00513          	li	a0,-1
    6af0:	f21ff06f          	j	6a10 <__swsetup_r+0x60>

00006af4 <memchr>:
    6af4:	00357793          	and	a5,a0,3
    6af8:	0ff5f693          	zext.b	a3,a1
    6afc:	02078a63          	beqz	a5,6b30 <memchr+0x3c>
    6b00:	fff60793          	add	a5,a2,-1
    6b04:	02060e63          	beqz	a2,6b40 <memchr+0x4c>
    6b08:	fff00613          	li	a2,-1
    6b0c:	0180006f          	j	6b24 <memchr+0x30>
    6b10:	00150513          	add	a0,a0,1
    6b14:	00357713          	and	a4,a0,3
    6b18:	00070e63          	beqz	a4,6b34 <memchr+0x40>
    6b1c:	fff78793          	add	a5,a5,-1
    6b20:	02c78063          	beq	a5,a2,6b40 <memchr+0x4c>
    6b24:	00054703          	lbu	a4,0(a0)
    6b28:	fed714e3          	bne	a4,a3,6b10 <memchr+0x1c>
    6b2c:	00008067          	ret
    6b30:	00060793          	mv	a5,a2
    6b34:	00300713          	li	a4,3
    6b38:	00f76863          	bltu	a4,a5,6b48 <memchr+0x54>
    6b3c:	06079063          	bnez	a5,6b9c <memchr+0xa8>
    6b40:	00000513          	li	a0,0
    6b44:	00008067          	ret
    6b48:	0ff5f593          	zext.b	a1,a1
    6b4c:	00859713          	sll	a4,a1,0x8
    6b50:	00b705b3          	add	a1,a4,a1
    6b54:	01059713          	sll	a4,a1,0x10
    6b58:	feff08b7          	lui	a7,0xfeff0
    6b5c:	80808837          	lui	a6,0x80808
    6b60:	00e585b3          	add	a1,a1,a4
    6b64:	eff88893          	add	a7,a7,-257 # fefefeff <GET_WATCHDOG_LOW+0xfedeeebf>
    6b68:	08080813          	add	a6,a6,128 # 80808080 <GET_WATCHDOG_LOW+0x80607040>
    6b6c:	00300313          	li	t1,3
    6b70:	0100006f          	j	6b80 <memchr+0x8c>
    6b74:	ffc78793          	add	a5,a5,-4
    6b78:	00450513          	add	a0,a0,4
    6b7c:	fcf370e3          	bgeu	t1,a5,6b3c <memchr+0x48>
    6b80:	00052703          	lw	a4,0(a0)
    6b84:	00e5c733          	xor	a4,a1,a4
    6b88:	01170633          	add	a2,a4,a7
    6b8c:	fff74713          	not	a4,a4
    6b90:	00e67733          	and	a4,a2,a4
    6b94:	01077733          	and	a4,a4,a6
    6b98:	fc070ee3          	beqz	a4,6b74 <memchr+0x80>
    6b9c:	00f507b3          	add	a5,a0,a5
    6ba0:	00c0006f          	j	6bac <memchr+0xb8>
    6ba4:	00150513          	add	a0,a0,1
    6ba8:	f8f50ce3          	beq	a0,a5,6b40 <memchr+0x4c>
    6bac:	00054703          	lbu	a4,0(a0)
    6bb0:	fed71ae3          	bne	a4,a3,6ba4 <memchr+0xb0>
    6bb4:	00008067          	ret

00006bb8 <strncpy>:
    6bb8:	00a5e7b3          	or	a5,a1,a0
    6bbc:	0037f793          	and	a5,a5,3
    6bc0:	00079663          	bnez	a5,6bcc <strncpy+0x14>
    6bc4:	00300793          	li	a5,3
    6bc8:	04c7e663          	bltu	a5,a2,6c14 <strncpy+0x5c>
    6bcc:	00050713          	mv	a4,a0
    6bd0:	01c0006f          	j	6bec <strncpy+0x34>
    6bd4:	fff5c683          	lbu	a3,-1(a1)
    6bd8:	fff60813          	add	a6,a2,-1
    6bdc:	fed78fa3          	sb	a3,-1(a5)
    6be0:	00068e63          	beqz	a3,6bfc <strncpy+0x44>
    6be4:	00078713          	mv	a4,a5
    6be8:	00080613          	mv	a2,a6
    6bec:	00158593          	add	a1,a1,1
    6bf0:	00170793          	add	a5,a4,1 # ffffe001 <GET_WATCHDOG_LOW+0xffdfcfc1>
    6bf4:	fe0610e3          	bnez	a2,6bd4 <strncpy+0x1c>
    6bf8:	00008067          	ret
    6bfc:	00c70733          	add	a4,a4,a2
    6c00:	06080063          	beqz	a6,6c60 <strncpy+0xa8>
    6c04:	00178793          	add	a5,a5,1
    6c08:	fe078fa3          	sb	zero,-1(a5)
    6c0c:	fee79ce3          	bne	a5,a4,6c04 <strncpy+0x4c>
    6c10:	00008067          	ret
    6c14:	feff0337          	lui	t1,0xfeff0
    6c18:	808088b7          	lui	a7,0x80808
    6c1c:	00050713          	mv	a4,a0
    6c20:	eff30313          	add	t1,t1,-257 # fefefeff <GET_WATCHDOG_LOW+0xfedeeebf>
    6c24:	08088893          	add	a7,a7,128 # 80808080 <GET_WATCHDOG_LOW+0x80607040>
    6c28:	00300e13          	li	t3,3
    6c2c:	0180006f          	j	6c44 <strncpy+0x8c>
    6c30:	00d72023          	sw	a3,0(a4)
    6c34:	ffc60613          	add	a2,a2,-4
    6c38:	00470713          	add	a4,a4,4
    6c3c:	00458593          	add	a1,a1,4
    6c40:	face76e3          	bgeu	t3,a2,6bec <strncpy+0x34>
    6c44:	0005a683          	lw	a3,0(a1)
    6c48:	006687b3          	add	a5,a3,t1
    6c4c:	fff6c813          	not	a6,a3
    6c50:	0107f7b3          	and	a5,a5,a6
    6c54:	0117f7b3          	and	a5,a5,a7
    6c58:	fc078ce3          	beqz	a5,6c30 <strncpy+0x78>
    6c5c:	f91ff06f          	j	6bec <strncpy+0x34>
    6c60:	00008067          	ret

00006c64 <currentlocale>:
    6c64:	fe010113          	add	sp,sp,-32
    6c68:	00912a23          	sw	s1,20(sp)
    6c6c:	0002e597          	auipc	a1,0x2e
    6c70:	8ec58593          	add	a1,a1,-1812 # 34558 <__global_locale+0x20>
    6c74:	0002f517          	auipc	a0,0x2f
    6c78:	eac50513          	add	a0,a0,-340 # 35b20 <global_locale_string>
    6c7c:	0002e497          	auipc	s1,0x2e
    6c80:	8fc48493          	add	s1,s1,-1796 # 34578 <__global_locale+0x40>
    6c84:	00812c23          	sw	s0,24(sp)
    6c88:	01212823          	sw	s2,16(sp)
    6c8c:	01312623          	sw	s3,12(sp)
    6c90:	00112e23          	sw	ra,28(sp)
    6c94:	0002e917          	auipc	s2,0x2e
    6c98:	98490913          	add	s2,s2,-1660 # 34618 <__global_locale+0xe0>
    6c9c:	1c4010ef          	jal	7e60 <strcpy>
    6ca0:	00048413          	mv	s0,s1
    6ca4:	0002e997          	auipc	s3,0x2e
    6ca8:	8b498993          	add	s3,s3,-1868 # 34558 <__global_locale+0x20>
    6cac:	00040593          	mv	a1,s0
    6cb0:	00098513          	mv	a0,s3
    6cb4:	dccfa0ef          	jal	1280 <strcmp>
    6cb8:	02040413          	add	s0,s0,32
    6cbc:	02051663          	bnez	a0,6ce8 <currentlocale+0x84>
    6cc0:	ff2416e3          	bne	s0,s2,6cac <currentlocale+0x48>
    6cc4:	01c12083          	lw	ra,28(sp)
    6cc8:	01812403          	lw	s0,24(sp)
    6ccc:	01412483          	lw	s1,20(sp)
    6cd0:	01012903          	lw	s2,16(sp)
    6cd4:	00c12983          	lw	s3,12(sp)
    6cd8:	0002f517          	auipc	a0,0x2f
    6cdc:	e4850513          	add	a0,a0,-440 # 35b20 <global_locale_string>
    6ce0:	02010113          	add	sp,sp,32
    6ce4:	00008067          	ret
    6ce8:	00029997          	auipc	s3,0x29
    6cec:	7d098993          	add	s3,s3,2000 # 304b8 <__clz_tab+0x130>
    6cf0:	0002f417          	auipc	s0,0x2f
    6cf4:	e3040413          	add	s0,s0,-464 # 35b20 <global_locale_string>
    6cf8:	00098593          	mv	a1,s3
    6cfc:	00040513          	mv	a0,s0
    6d00:	245020ef          	jal	9744 <strcat>
    6d04:	00048593          	mv	a1,s1
    6d08:	00040513          	mv	a0,s0
    6d0c:	02048493          	add	s1,s1,32
    6d10:	235020ef          	jal	9744 <strcat>
    6d14:	ff2492e3          	bne	s1,s2,6cf8 <currentlocale+0x94>
    6d18:	01c12083          	lw	ra,28(sp)
    6d1c:	01812403          	lw	s0,24(sp)
    6d20:	01412483          	lw	s1,20(sp)
    6d24:	01012903          	lw	s2,16(sp)
    6d28:	00c12983          	lw	s3,12(sp)
    6d2c:	0002f517          	auipc	a0,0x2f
    6d30:	df450513          	add	a0,a0,-524 # 35b20 <global_locale_string>
    6d34:	02010113          	add	sp,sp,32
    6d38:	00008067          	ret

00006d3c <__loadlocale>:
    6d3c:	fa010113          	add	sp,sp,-96
    6d40:	04912a23          	sw	s1,84(sp)
    6d44:	00559493          	sll	s1,a1,0x5
    6d48:	009504b3          	add	s1,a0,s1
    6d4c:	05212823          	sw	s2,80(sp)
    6d50:	05312623          	sw	s3,76(sp)
    6d54:	00050913          	mv	s2,a0
    6d58:	00058993          	mv	s3,a1
    6d5c:	00060513          	mv	a0,a2
    6d60:	00048593          	mv	a1,s1
    6d64:	04812c23          	sw	s0,88(sp)
    6d68:	04112e23          	sw	ra,92(sp)
    6d6c:	00060413          	mv	s0,a2
    6d70:	d10fa0ef          	jal	1280 <strcmp>
    6d74:	02051263          	bnez	a0,6d98 <__loadlocale+0x5c>
    6d78:	05c12083          	lw	ra,92(sp)
    6d7c:	05812403          	lw	s0,88(sp)
    6d80:	05012903          	lw	s2,80(sp)
    6d84:	04c12983          	lw	s3,76(sp)
    6d88:	00048513          	mv	a0,s1
    6d8c:	05412483          	lw	s1,84(sp)
    6d90:	06010113          	add	sp,sp,96
    6d94:	00008067          	ret
    6d98:	00029597          	auipc	a1,0x29
    6d9c:	72458593          	add	a1,a1,1828 # 304bc <__clz_tab+0x134>
    6da0:	00040513          	mv	a0,s0
    6da4:	05412423          	sw	s4,72(sp)
    6da8:	05512223          	sw	s5,68(sp)
    6dac:	cd4fa0ef          	jal	1280 <strcmp>
    6db0:	08050663          	beqz	a0,6e3c <__loadlocale+0x100>
    6db4:	00029597          	auipc	a1,0x29
    6db8:	71058593          	add	a1,a1,1808 # 304c4 <__clz_tab+0x13c>
    6dbc:	00040513          	mv	a0,s0
    6dc0:	cc0fa0ef          	jal	1280 <strcmp>
    6dc4:	08050e63          	beqz	a0,6e60 <__loadlocale+0x124>
    6dc8:	00044783          	lbu	a5,0(s0)
    6dcc:	04300713          	li	a4,67
    6dd0:	18e78063          	beq	a5,a4,6f50 <__loadlocale+0x214>
    6dd4:	f9f78793          	add	a5,a5,-97
    6dd8:	0ff7f793          	zext.b	a5,a5
    6ddc:	01900713          	li	a4,25
    6de0:	04f76063          	bltu	a4,a5,6e20 <__loadlocale+0xe4>
    6de4:	00144783          	lbu	a5,1(s0)
    6de8:	f9f78793          	add	a5,a5,-97
    6dec:	0ff7f793          	zext.b	a5,a5
    6df0:	02f76863          	bltu	a4,a5,6e20 <__loadlocale+0xe4>
    6df4:	00244783          	lbu	a5,2(s0)
    6df8:	00240a93          	add	s5,s0,2
    6dfc:	f9f78693          	add	a3,a5,-97
    6e00:	0ff6f693          	zext.b	a3,a3
    6e04:	02d77663          	bgeu	a4,a3,6e30 <__loadlocale+0xf4>
    6e08:	05f00713          	li	a4,95
    6e0c:	1ee78e63          	beq	a5,a4,7008 <__loadlocale+0x2cc>
    6e10:	02e00713          	li	a4,46
    6e14:	66e78e63          	beq	a5,a4,7490 <__loadlocale+0x754>
    6e18:	0bf7f793          	and	a5,a5,191
    6e1c:	18078463          	beqz	a5,6fa4 <__loadlocale+0x268>
    6e20:	04812a03          	lw	s4,72(sp)
    6e24:	04412a83          	lw	s5,68(sp)
    6e28:	00000493          	li	s1,0
    6e2c:	f4dff06f          	j	6d78 <__loadlocale+0x3c>
    6e30:	00344783          	lbu	a5,3(s0)
    6e34:	00340a93          	add	s5,s0,3
    6e38:	fd1ff06f          	j	6e08 <__loadlocale+0xcc>
    6e3c:	00029597          	auipc	a1,0x29
    6e40:	68858593          	add	a1,a1,1672 # 304c4 <__clz_tab+0x13c>
    6e44:	00040513          	mv	a0,s0
    6e48:	018010ef          	jal	7e60 <strcpy>
    6e4c:	00029597          	auipc	a1,0x29
    6e50:	67858593          	add	a1,a1,1656 # 304c4 <__clz_tab+0x13c>
    6e54:	00040513          	mv	a0,s0
    6e58:	c28fa0ef          	jal	1280 <strcmp>
    6e5c:	f60516e3          	bnez	a0,6dc8 <__loadlocale+0x8c>
    6e60:	01010a13          	add	s4,sp,16
    6e64:	00029597          	auipc	a1,0x29
    6e68:	66458593          	add	a1,a1,1636 # 304c8 <__clz_tab+0x140>
    6e6c:	000a0513          	mv	a0,s4
    6e70:	05612023          	sw	s6,64(sp)
    6e74:	03712e23          	sw	s7,60(sp)
    6e78:	7e9000ef          	jal	7e60 <strcpy>
    6e7c:	00000a93          	li	s5,0
    6e80:	00000b13          	li	s6,0
    6e84:	00000b93          	li	s7,0
    6e88:	01014783          	lbu	a5,16(sp)
    6e8c:	03400713          	li	a4,52
    6e90:	fbf78793          	add	a5,a5,-65
    6e94:	0ff7f793          	zext.b	a5,a5
    6e98:	16f76263          	bltu	a4,a5,6ffc <__loadlocale+0x2c0>
    6e9c:	0002a717          	auipc	a4,0x2a
    6ea0:	8dc70713          	add	a4,a4,-1828 # 30778 <blanks.1+0x10>
    6ea4:	00279793          	sll	a5,a5,0x2
    6ea8:	00e787b3          	add	a5,a5,a4
    6eac:	0007a783          	lw	a5,0(a5)
    6eb0:	03812c23          	sw	s8,56(sp)
    6eb4:	03912a23          	sw	s9,52(sp)
    6eb8:	00e787b3          	add	a5,a5,a4
    6ebc:	03a12823          	sw	s10,48(sp)
    6ec0:	00078067          	jr	a5
    6ec4:	01114783          	lbu	a5,17(sp)
    6ec8:	05000713          	li	a4,80
    6ecc:	0df7f793          	and	a5,a5,223
    6ed0:	06e79463          	bne	a5,a4,6f38 <__loadlocale+0x1fc>
    6ed4:	00200613          	li	a2,2
    6ed8:	00029597          	auipc	a1,0x29
    6edc:	66858593          	add	a1,a1,1640 # 30540 <__clz_tab+0x1b8>
    6ee0:	000a0513          	mv	a0,s4
    6ee4:	cd5ff0ef          	jal	6bb8 <strncpy>
    6ee8:	00a00613          	li	a2,10
    6eec:	00c10593          	add	a1,sp,12
    6ef0:	01210513          	add	a0,sp,18
    6ef4:	340020ef          	jal	9234 <strtol>
    6ef8:	00c12783          	lw	a5,12(sp)
    6efc:	0007c783          	lbu	a5,0(a5)
    6f00:	02079c63          	bnez	a5,6f38 <__loadlocale+0x1fc>
    6f04:	3a400793          	li	a5,932
    6f08:	26f50863          	beq	a0,a5,7178 <__loadlocale+0x43c>
    6f0c:	5aa7c463          	blt	a5,a0,74b4 <__loadlocale+0x778>
    6f10:	36a00793          	li	a5,874
    6f14:	02a7c263          	blt	a5,a0,6f38 <__loadlocale+0x1fc>
    6f18:	35100793          	li	a5,849
    6f1c:	5aa7d863          	bge	a5,a0,74cc <__loadlocale+0x790>
    6f20:	010117b7          	lui	a5,0x1011
    6f24:	cae50513          	add	a0,a0,-850
    6f28:	1a578793          	add	a5,a5,421 # 10111a5 <GET_WATCHDOG_LOW+0xe10165>
    6f2c:	00a7d7b3          	srl	a5,a5,a0
    6f30:	0017f793          	and	a5,a5,1
    6f34:	20079463          	bnez	a5,713c <__loadlocale+0x400>
    6f38:	04012b03          	lw	s6,64(sp)
    6f3c:	03c12b83          	lw	s7,60(sp)
    6f40:	03812c03          	lw	s8,56(sp)
    6f44:	03412c83          	lw	s9,52(sp)
    6f48:	03012d03          	lw	s10,48(sp)
    6f4c:	ed5ff06f          	j	6e20 <__loadlocale+0xe4>
    6f50:	00144783          	lbu	a5,1(s0)
    6f54:	00100713          	li	a4,1
    6f58:	fd378793          	add	a5,a5,-45
    6f5c:	0ff7f793          	zext.b	a5,a5
    6f60:	ecf760e3          	bltu	a4,a5,6e20 <__loadlocale+0xe4>
    6f64:	05612023          	sw	s6,64(sp)
    6f68:	03712e23          	sw	s7,60(sp)
    6f6c:	00240a93          	add	s5,s0,2
    6f70:	01010a13          	add	s4,sp,16
    6f74:	000a8593          	mv	a1,s5
    6f78:	000a0513          	mv	a0,s4
    6f7c:	6e5000ef          	jal	7e60 <strcpy>
    6f80:	04000593          	li	a1,64
    6f84:	000a0513          	mv	a0,s4
    6f88:	045020ef          	jal	97cc <strchr>
    6f8c:	00050463          	beqz	a0,6f94 <__loadlocale+0x258>
    6f90:	00050023          	sb	zero,0(a0)
    6f94:	000a0513          	mv	a0,s4
    6f98:	63d000ef          	jal	7dd4 <strlen>
    6f9c:	00aa8ab3          	add	s5,s5,a0
    6fa0:	0200006f          	j	6fc0 <__loadlocale+0x284>
    6fa4:	01010a13          	add	s4,sp,16
    6fa8:	00029597          	auipc	a1,0x29
    6fac:	52858593          	add	a1,a1,1320 # 304d0 <__clz_tab+0x148>
    6fb0:	000a0513          	mv	a0,s4
    6fb4:	05612023          	sw	s6,64(sp)
    6fb8:	03712e23          	sw	s7,60(sp)
    6fbc:	6a5000ef          	jal	7e60 <strcpy>
    6fc0:	000ac703          	lbu	a4,0(s5)
    6fc4:	04000793          	li	a5,64
    6fc8:	eaf71ae3          	bne	a4,a5,6e7c <__loadlocale+0x140>
    6fcc:	03812c23          	sw	s8,56(sp)
    6fd0:	001a8c13          	add	s8,s5,1
    6fd4:	00029597          	auipc	a1,0x29
    6fd8:	50858593          	add	a1,a1,1288 # 304dc <__clz_tab+0x154>
    6fdc:	000c0513          	mv	a0,s8
    6fe0:	aa0fa0ef          	jal	1280 <strcmp>
    6fe4:	00050b13          	mv	s6,a0
    6fe8:	00000a93          	li	s5,0
    6fec:	00100b93          	li	s7,1
    6ff0:	40051463          	bnez	a0,73f8 <__loadlocale+0x6bc>
    6ff4:	03812c03          	lw	s8,56(sp)
    6ff8:	e91ff06f          	j	6e88 <__loadlocale+0x14c>
    6ffc:	04012b03          	lw	s6,64(sp)
    7000:	03c12b83          	lw	s7,60(sp)
    7004:	e1dff06f          	j	6e20 <__loadlocale+0xe4>
    7008:	001ac783          	lbu	a5,1(s5)
    700c:	01900713          	li	a4,25
    7010:	fbf78793          	add	a5,a5,-65
    7014:	0ff7f793          	zext.b	a5,a5
    7018:	e0f764e3          	bltu	a4,a5,6e20 <__loadlocale+0xe4>
    701c:	002ac783          	lbu	a5,2(s5)
    7020:	fbf78793          	add	a5,a5,-65
    7024:	0ff7f793          	zext.b	a5,a5
    7028:	def76ce3          	bltu	a4,a5,6e20 <__loadlocale+0xe4>
    702c:	003ac783          	lbu	a5,3(s5)
    7030:	003a8a93          	add	s5,s5,3
    7034:	dddff06f          	j	6e10 <__loadlocale+0xd4>
    7038:	00029597          	auipc	a1,0x29
    703c:	4c458593          	add	a1,a1,1220 # 304fc <__clz_tab+0x174>
    7040:	000a0513          	mv	a0,s4
    7044:	694020ef          	jal	96d8 <strcasecmp>
    7048:	00050c63          	beqz	a0,7060 <__loadlocale+0x324>
    704c:	00029597          	auipc	a1,0x29
    7050:	4b858593          	add	a1,a1,1208 # 30504 <__clz_tab+0x17c>
    7054:	000a0513          	mv	a0,s4
    7058:	680020ef          	jal	96d8 <strcasecmp>
    705c:	ec051ee3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    7060:	00029597          	auipc	a1,0x29
    7064:	49c58593          	add	a1,a1,1180 # 304fc <__clz_tab+0x174>
    7068:	000a0513          	mv	a0,s4
    706c:	5f5000ef          	jal	7e60 <strcpy>
    7070:	00001c97          	auipc	s9,0x1
    7074:	154c8c93          	add	s9,s9,340 # 81c4 <__utf8_mbtowc>
    7078:	00002d17          	auipc	s10,0x2
    707c:	210d0d13          	add	s10,s10,528 # 9288 <__utf8_wctomb>
    7080:	00600c13          	li	s8,6
    7084:	00200793          	li	a5,2
    7088:	3af98863          	beq	s3,a5,7438 <__loadlocale+0x6fc>
    708c:	00600793          	li	a5,6
    7090:	00f99863          	bne	s3,a5,70a0 <__loadlocale+0x364>
    7094:	000a0593          	mv	a1,s4
    7098:	14a90513          	add	a0,s2,330
    709c:	5c5000ef          	jal	7e60 <strcpy>
    70a0:	00040593          	mv	a1,s0
    70a4:	00048513          	mv	a0,s1
    70a8:	5b9000ef          	jal	7e60 <strcpy>
    70ac:	05c12083          	lw	ra,92(sp)
    70b0:	05812403          	lw	s0,88(sp)
    70b4:	00050493          	mv	s1,a0
    70b8:	04812a03          	lw	s4,72(sp)
    70bc:	04412a83          	lw	s5,68(sp)
    70c0:	04012b03          	lw	s6,64(sp)
    70c4:	03c12b83          	lw	s7,60(sp)
    70c8:	03812c03          	lw	s8,56(sp)
    70cc:	03412c83          	lw	s9,52(sp)
    70d0:	03012d03          	lw	s10,48(sp)
    70d4:	05012903          	lw	s2,80(sp)
    70d8:	04c12983          	lw	s3,76(sp)
    70dc:	00048513          	mv	a0,s1
    70e0:	05412483          	lw	s1,84(sp)
    70e4:	06010113          	add	sp,sp,96
    70e8:	00008067          	ret
    70ec:	00300613          	li	a2,3
    70f0:	00029597          	auipc	a1,0x29
    70f4:	49458593          	add	a1,a1,1172 # 30584 <__clz_tab+0x1fc>
    70f8:	000a0513          	mv	a0,s4
    70fc:	055020ef          	jal	9950 <strncasecmp>
    7100:	e2051ce3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    7104:	01314503          	lbu	a0,19(sp)
    7108:	00029597          	auipc	a1,0x29
    710c:	48058593          	add	a1,a1,1152 # 30588 <__clz_tab+0x200>
    7110:	fd350513          	add	a0,a0,-45
    7114:	00153513          	seqz	a0,a0
    7118:	03050793          	add	a5,a0,48
    711c:	00278533          	add	a0,a5,sp
    7120:	fe350513          	add	a0,a0,-29
    7124:	95cfa0ef          	jal	1280 <strcmp>
    7128:	e00518e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    712c:	00029597          	auipc	a1,0x29
    7130:	46058593          	add	a1,a1,1120 # 3058c <__clz_tab+0x204>
    7134:	000a0513          	mv	a0,s4
    7138:	529000ef          	jal	7e60 <strcpy>
    713c:	00001c97          	auipc	s9,0x1
    7140:	020c8c93          	add	s9,s9,32 # 815c <__ascii_mbtowc>
    7144:	00002d17          	auipc	s10,0x2
    7148:	114d0d13          	add	s10,s10,276 # 9258 <__ascii_wctomb>
    714c:	00100c13          	li	s8,1
    7150:	f35ff06f          	j	7084 <__loadlocale+0x348>
    7154:	00029597          	auipc	a1,0x29
    7158:	3cc58593          	add	a1,a1,972 # 30520 <__clz_tab+0x198>
    715c:	000a0513          	mv	a0,s4
    7160:	578020ef          	jal	96d8 <strcasecmp>
    7164:	dc051ae3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    7168:	00029597          	auipc	a1,0x29
    716c:	3b858593          	add	a1,a1,952 # 30520 <__clz_tab+0x198>
    7170:	000a0513          	mv	a0,s4
    7174:	4ed000ef          	jal	7e60 <strcpy>
    7178:	00001c97          	auipc	s9,0x1
    717c:	344c8c93          	add	s9,s9,836 # 84bc <__sjis_mbtowc>
    7180:	00002d17          	auipc	s10,0x2
    7184:	1f4d0d13          	add	s10,s10,500 # 9374 <__sjis_wctomb>
    7188:	00200c13          	li	s8,2
    718c:	ef9ff06f          	j	7084 <__loadlocale+0x348>
    7190:	00029597          	auipc	a1,0x29
    7194:	3e458593          	add	a1,a1,996 # 30574 <__clz_tab+0x1ec>
    7198:	000a0513          	mv	a0,s4
    719c:	53c020ef          	jal	96d8 <strcasecmp>
    71a0:	d8051ce3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    71a4:	00029597          	auipc	a1,0x29
    71a8:	3d858593          	add	a1,a1,984 # 3057c <__clz_tab+0x1f4>
    71ac:	000a0513          	mv	a0,s4
    71b0:	4b1000ef          	jal	7e60 <strcpy>
    71b4:	f89ff06f          	j	713c <__loadlocale+0x400>
    71b8:	00400613          	li	a2,4
    71bc:	00029597          	auipc	a1,0x29
    71c0:	38858593          	add	a1,a1,904 # 30544 <__clz_tab+0x1bc>
    71c4:	000a0513          	mv	a0,s4
    71c8:	788020ef          	jal	9950 <strncasecmp>
    71cc:	d60516e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    71d0:	01414783          	lbu	a5,20(sp)
    71d4:	02d00713          	li	a4,45
    71d8:	00e79463          	bne	a5,a4,71e0 <__loadlocale+0x4a4>
    71dc:	01514783          	lbu	a5,21(sp)
    71e0:	0df7f793          	and	a5,a5,223
    71e4:	05200713          	li	a4,82
    71e8:	2ae78c63          	beq	a5,a4,74a0 <__loadlocale+0x764>
    71ec:	05500713          	li	a4,85
    71f0:	d4e794e3          	bne	a5,a4,6f38 <__loadlocale+0x1fc>
    71f4:	00029597          	auipc	a1,0x29
    71f8:	36058593          	add	a1,a1,864 # 30554 <__clz_tab+0x1cc>
    71fc:	000a0513          	mv	a0,s4
    7200:	461000ef          	jal	7e60 <strcpy>
    7204:	f39ff06f          	j	713c <__loadlocale+0x400>
    7208:	00029597          	auipc	a1,0x29
    720c:	30458593          	add	a1,a1,772 # 3050c <__clz_tab+0x184>
    7210:	000a0513          	mv	a0,s4
    7214:	4c4020ef          	jal	96d8 <strcasecmp>
    7218:	d20510e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    721c:	00029597          	auipc	a1,0x29
    7220:	2f058593          	add	a1,a1,752 # 3050c <__clz_tab+0x184>
    7224:	000a0513          	mv	a0,s4
    7228:	439000ef          	jal	7e60 <strcpy>
    722c:	00001c97          	auipc	s9,0x1
    7230:	60cc8c93          	add	s9,s9,1548 # 8838 <__jis_mbtowc>
    7234:	00002d17          	auipc	s10,0x2
    7238:	270d0d13          	add	s10,s10,624 # 94a4 <__jis_wctomb>
    723c:	00800c13          	li	s8,8
    7240:	e45ff06f          	j	7084 <__loadlocale+0x348>
    7244:	00300613          	li	a2,3
    7248:	00029597          	auipc	a1,0x29
    724c:	2e058593          	add	a1,a1,736 # 30528 <__clz_tab+0x1a0>
    7250:	000a0513          	mv	a0,s4
    7254:	6fc020ef          	jal	9950 <strncasecmp>
    7258:	ce0510e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    725c:	01314783          	lbu	a5,19(sp)
    7260:	00400613          	li	a2,4
    7264:	00029597          	auipc	a1,0x29
    7268:	2c858593          	add	a1,a1,712 # 3052c <__clz_tab+0x1a4>
    726c:	fd378793          	add	a5,a5,-45
    7270:	0017b793          	seqz	a5,a5
    7274:	03078793          	add	a5,a5,48
    7278:	002787b3          	add	a5,a5,sp
    727c:	fe378c13          	add	s8,a5,-29
    7280:	000c0513          	mv	a0,s8
    7284:	6cc020ef          	jal	9950 <strncasecmp>
    7288:	ca0518e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    728c:	004c4503          	lbu	a0,4(s8)
    7290:	00a00613          	li	a2,10
    7294:	00c10593          	add	a1,sp,12
    7298:	fd350513          	add	a0,a0,-45
    729c:	00153513          	seqz	a0,a0
    72a0:	00ac0533          	add	a0,s8,a0
    72a4:	00450513          	add	a0,a0,4
    72a8:	78d010ef          	jal	9234 <strtol>
    72ac:	fff50713          	add	a4,a0,-1
    72b0:	00f00793          	li	a5,15
    72b4:	00050c13          	mv	s8,a0
    72b8:	c8e7e0e3          	bltu	a5,a4,6f38 <__loadlocale+0x1fc>
    72bc:	00c00793          	li	a5,12
    72c0:	c6f50ce3          	beq	a0,a5,6f38 <__loadlocale+0x1fc>
    72c4:	00c12783          	lw	a5,12(sp)
    72c8:	0007c783          	lbu	a5,0(a5)
    72cc:	c60796e3          	bnez	a5,6f38 <__loadlocale+0x1fc>
    72d0:	00029597          	auipc	a1,0x29
    72d4:	26458593          	add	a1,a1,612 # 30534 <__clz_tab+0x1ac>
    72d8:	000a0513          	mv	a0,s4
    72dc:	385000ef          	jal	7e60 <strcpy>
    72e0:	00a00793          	li	a5,10
    72e4:	01910c93          	add	s9,sp,25
    72e8:	0187d863          	bge	a5,s8,72f8 <__loadlocale+0x5bc>
    72ec:	03100793          	li	a5,49
    72f0:	00f10ca3          	sb	a5,25(sp)
    72f4:	01a10c93          	add	s9,sp,26
    72f8:	00a00593          	li	a1,10
    72fc:	000c0513          	mv	a0,s8
    7300:	ff4fa0ef          	jal	1af4 <__modsi3>
    7304:	03050793          	add	a5,a0,48
    7308:	00fc8023          	sb	a5,0(s9)
    730c:	000c80a3          	sb	zero,1(s9)
    7310:	e2dff06f          	j	713c <__loadlocale+0x400>
    7314:	00800613          	li	a2,8
    7318:	00029597          	auipc	a1,0x29
    731c:	24458593          	add	a1,a1,580 # 3055c <__clz_tab+0x1d4>
    7320:	000a0513          	mv	a0,s4
    7324:	62c020ef          	jal	9950 <strncasecmp>
    7328:	c00518e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    732c:	01814503          	lbu	a0,24(sp)
    7330:	00029597          	auipc	a1,0x29
    7334:	23858593          	add	a1,a1,568 # 30568 <__clz_tab+0x1e0>
    7338:	fd350513          	add	a0,a0,-45
    733c:	00153513          	seqz	a0,a0
    7340:	03050793          	add	a5,a0,48
    7344:	00278533          	add	a0,a5,sp
    7348:	fe850513          	add	a0,a0,-24
    734c:	38c020ef          	jal	96d8 <strcasecmp>
    7350:	be0514e3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    7354:	00029597          	auipc	a1,0x29
    7358:	21858593          	add	a1,a1,536 # 3056c <__clz_tab+0x1e4>
    735c:	000a0513          	mv	a0,s4
    7360:	301000ef          	jal	7e60 <strcpy>
    7364:	dd9ff06f          	j	713c <__loadlocale+0x400>
    7368:	00300613          	li	a2,3
    736c:	00029597          	auipc	a1,0x29
    7370:	1a458593          	add	a1,a1,420 # 30510 <__clz_tab+0x188>
    7374:	000a0513          	mv	a0,s4
    7378:	5d8020ef          	jal	9950 <strncasecmp>
    737c:	ba051ee3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    7380:	01314503          	lbu	a0,19(sp)
    7384:	00029597          	auipc	a1,0x29
    7388:	19058593          	add	a1,a1,400 # 30514 <__clz_tab+0x18c>
    738c:	fd350513          	add	a0,a0,-45
    7390:	00153513          	seqz	a0,a0
    7394:	03050793          	add	a5,a0,48
    7398:	00278533          	add	a0,a5,sp
    739c:	fe350513          	add	a0,a0,-29
    73a0:	338020ef          	jal	96d8 <strcasecmp>
    73a4:	b8051ae3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    73a8:	00029597          	auipc	a1,0x29
    73ac:	17058593          	add	a1,a1,368 # 30518 <__clz_tab+0x190>
    73b0:	000a0513          	mv	a0,s4
    73b4:	2ad000ef          	jal	7e60 <strcpy>
    73b8:	00001c97          	auipc	s9,0x1
    73bc:	274c8c93          	add	s9,s9,628 # 862c <__eucjp_mbtowc>
    73c0:	00002d17          	auipc	s10,0x2
    73c4:	038d0d13          	add	s10,s10,56 # 93f8 <__eucjp_wctomb>
    73c8:	00300c13          	li	s8,3
    73cc:	cb9ff06f          	j	7084 <__loadlocale+0x348>
    73d0:	00029597          	auipc	a1,0x29
    73d4:	0f858593          	add	a1,a1,248 # 304c8 <__clz_tab+0x140>
    73d8:	000a0513          	mv	a0,s4
    73dc:	2fc020ef          	jal	96d8 <strcasecmp>
    73e0:	b4051ce3          	bnez	a0,6f38 <__loadlocale+0x1fc>
    73e4:	00029597          	auipc	a1,0x29
    73e8:	0e458593          	add	a1,a1,228 # 304c8 <__clz_tab+0x140>
    73ec:	000a0513          	mv	a0,s4
    73f0:	271000ef          	jal	7e60 <strcpy>
    73f4:	d49ff06f          	j	713c <__loadlocale+0x400>
    73f8:	00029597          	auipc	a1,0x29
    73fc:	0f058593          	add	a1,a1,240 # 304e8 <__clz_tab+0x160>
    7400:	000c0513          	mv	a0,s8
    7404:	e7df90ef          	jal	1280 <strcmp>
    7408:	00050a93          	mv	s5,a0
    740c:	00000b93          	li	s7,0
    7410:	00100b13          	li	s6,1
    7414:	be0500e3          	beqz	a0,6ff4 <__loadlocale+0x2b8>
    7418:	000c0513          	mv	a0,s8
    741c:	00029597          	auipc	a1,0x29
    7420:	0d858593          	add	a1,a1,216 # 304f4 <__clz_tab+0x16c>
    7424:	e5df90ef          	jal	1280 <strcmp>
    7428:	00153a93          	seqz	s5,a0
    742c:	03812c03          	lw	s8,56(sp)
    7430:	00000b13          	li	s6,0
    7434:	a55ff06f          	j	6e88 <__loadlocale+0x14c>
    7438:	000a0593          	mv	a1,s4
    743c:	12a90513          	add	a0,s2,298
    7440:	221000ef          	jal	7e60 <strcpy>
    7444:	000a0593          	mv	a1,s4
    7448:	13890423          	sb	s8,296(s2)
    744c:	0fa92023          	sw	s10,224(s2)
    7450:	0f992223          	sw	s9,228(s2)
    7454:	00090513          	mv	a0,s2
    7458:	270020ef          	jal	96c8 <__set_ctype>
    745c:	000a9e63          	bnez	s5,7478 <__loadlocale+0x73c>
    7460:	000b1c63          	bnez	s6,7478 <__loadlocale+0x73c>
    7464:	00100793          	li	a5,1
    7468:	00fc0863          	beq	s8,a5,7478 <__loadlocale+0x73c>
    746c:	01014a83          	lbu	s5,16(sp)
    7470:	faba8a93          	add	s5,s5,-85
    7474:	01503ab3          	snez	s5,s5
    7478:	000b9663          	bnez	s7,7484 <__loadlocale+0x748>
    747c:	0f592423          	sw	s5,232(s2)
    7480:	c21ff06f          	j	70a0 <__loadlocale+0x364>
    7484:	fff00793          	li	a5,-1
    7488:	0ef92423          	sw	a5,232(s2)
    748c:	c15ff06f          	j	70a0 <__loadlocale+0x364>
    7490:	05612023          	sw	s6,64(sp)
    7494:	03712e23          	sw	s7,60(sp)
    7498:	001a8a93          	add	s5,s5,1
    749c:	ad5ff06f          	j	6f70 <__loadlocale+0x234>
    74a0:	00029597          	auipc	a1,0x29
    74a4:	0ac58593          	add	a1,a1,172 # 3054c <__clz_tab+0x1c4>
    74a8:	000a0513          	mv	a0,s4
    74ac:	1b5000ef          	jal	7e60 <strcpy>
    74b0:	c8dff06f          	j	713c <__loadlocale+0x400>
    74b4:	46500793          	li	a5,1125
    74b8:	c8f502e3          	beq	a0,a5,713c <__loadlocale+0x400>
    74bc:	b1e50513          	add	a0,a0,-1250
    74c0:	00800793          	li	a5,8
    74c4:	c6a7fce3          	bgeu	a5,a0,713c <__loadlocale+0x400>
    74c8:	a71ff06f          	j	6f38 <__loadlocale+0x1fc>
    74cc:	2e100793          	li	a5,737
    74d0:	c6f506e3          	beq	a0,a5,713c <__loadlocale+0x400>
    74d4:	00a7cc63          	blt	a5,a0,74ec <__loadlocale+0x7b0>
    74d8:	1b500793          	li	a5,437
    74dc:	c6f500e3          	beq	a0,a5,713c <__loadlocale+0x400>
    74e0:	2d000793          	li	a5,720
    74e4:	a4f51ae3          	bne	a0,a5,6f38 <__loadlocale+0x1fc>
    74e8:	c55ff06f          	j	713c <__loadlocale+0x400>
    74ec:	30700793          	li	a5,775
    74f0:	a4f514e3          	bne	a0,a5,6f38 <__loadlocale+0x1fc>
    74f4:	c49ff06f          	j	713c <__loadlocale+0x400>

000074f8 <__get_locale_env>:
    74f8:	ff010113          	add	sp,sp,-16
    74fc:	00812423          	sw	s0,8(sp)
    7500:	00058413          	mv	s0,a1
    7504:	00029597          	auipc	a1,0x29
    7508:	09058593          	add	a1,a1,144 # 30594 <__clz_tab+0x20c>
    750c:	00912223          	sw	s1,4(sp)
    7510:	00112623          	sw	ra,12(sp)
    7514:	00050493          	mv	s1,a0
    7518:	41d000ef          	jal	8134 <_getenv_r>
    751c:	00050663          	beqz	a0,7528 <__get_locale_env+0x30>
    7520:	00054783          	lbu	a5,0(a0)
    7524:	04079863          	bnez	a5,7574 <__get_locale_env+0x7c>
    7528:	00241793          	sll	a5,s0,0x2
    752c:	00029717          	auipc	a4,0x29
    7530:	48c70713          	add	a4,a4,1164 # 309b8 <categories>
    7534:	00f707b3          	add	a5,a4,a5
    7538:	0007a583          	lw	a1,0(a5)
    753c:	00048513          	mv	a0,s1
    7540:	3f5000ef          	jal	8134 <_getenv_r>
    7544:	00050663          	beqz	a0,7550 <__get_locale_env+0x58>
    7548:	00054783          	lbu	a5,0(a0)
    754c:	02079463          	bnez	a5,7574 <__get_locale_env+0x7c>
    7550:	00029597          	auipc	a1,0x29
    7554:	04c58593          	add	a1,a1,76 # 3059c <__clz_tab+0x214>
    7558:	00048513          	mv	a0,s1
    755c:	3d9000ef          	jal	8134 <_getenv_r>
    7560:	00050663          	beqz	a0,756c <__get_locale_env+0x74>
    7564:	00054783          	lbu	a5,0(a0)
    7568:	00079663          	bnez	a5,7574 <__get_locale_env+0x7c>
    756c:	0002d517          	auipc	a0,0x2d
    7570:	13850513          	add	a0,a0,312 # 346a4 <__default_locale>
    7574:	00c12083          	lw	ra,12(sp)
    7578:	00812403          	lw	s0,8(sp)
    757c:	00412483          	lw	s1,4(sp)
    7580:	01010113          	add	sp,sp,16
    7584:	00008067          	ret

00007588 <_setlocale_r>:
    7588:	fd010113          	add	sp,sp,-48
    758c:	01312e23          	sw	s3,28(sp)
    7590:	02112623          	sw	ra,44(sp)
    7594:	01512a23          	sw	s5,20(sp)
    7598:	00600793          	li	a5,6
    759c:	00050993          	mv	s3,a0
    75a0:	1cb7e263          	bltu	a5,a1,7764 <_setlocale_r+0x1dc>
    75a4:	01612823          	sw	s6,16(sp)
    75a8:	01712623          	sw	s7,12(sp)
    75ac:	00060b13          	mv	s6,a2
    75b0:	00058b93          	mv	s7,a1
    75b4:	2a060e63          	beqz	a2,7870 <_setlocale_r+0x2e8>
    75b8:	03212023          	sw	s2,32(sp)
    75bc:	01412c23          	sw	s4,24(sp)
    75c0:	0002d917          	auipc	s2,0x2d
    75c4:	f9890913          	add	s2,s2,-104 # 34558 <__global_locale+0x20>
    75c8:	0002ea17          	auipc	s4,0x2e
    75cc:	498a0a13          	add	s4,s4,1176 # 35a60 <new_categories.1+0x20>
    75d0:	02812423          	sw	s0,40(sp)
    75d4:	02912223          	sw	s1,36(sp)
    75d8:	0002ea97          	auipc	s5,0x2e
    75dc:	548a8a93          	add	s5,s5,1352 # 35b20 <global_locale_string>
    75e0:	00090493          	mv	s1,s2
    75e4:	000a0413          	mv	s0,s4
    75e8:	00048593          	mv	a1,s1
    75ec:	00040513          	mv	a0,s0
    75f0:	02040413          	add	s0,s0,32
    75f4:	06d000ef          	jal	7e60 <strcpy>
    75f8:	02048493          	add	s1,s1,32
    75fc:	ff5416e3          	bne	s0,s5,75e8 <_setlocale_r+0x60>
    7600:	000b4783          	lbu	a5,0(s6)
    7604:	0c079e63          	bnez	a5,76e0 <_setlocale_r+0x158>
    7608:	280b9c63          	bnez	s7,78a0 <_setlocale_r+0x318>
    760c:	0002ea97          	auipc	s5,0x2e
    7610:	454a8a93          	add	s5,s5,1108 # 35a60 <new_categories.1+0x20>
    7614:	00100413          	li	s0,1
    7618:	01f00b13          	li	s6,31
    761c:	00700b93          	li	s7,7
    7620:	00040593          	mv	a1,s0
    7624:	00098513          	mv	a0,s3
    7628:	ed1ff0ef          	jal	74f8 <__get_locale_env>
    762c:	00050493          	mv	s1,a0
    7630:	7a4000ef          	jal	7dd4 <strlen>
    7634:	00050793          	mv	a5,a0
    7638:	00048593          	mv	a1,s1
    763c:	000a8513          	mv	a0,s5
    7640:	10fb6663          	bltu	s6,a5,774c <_setlocale_r+0x1c4>
    7644:	00140413          	add	s0,s0,1
    7648:	019000ef          	jal	7e60 <strcpy>
    764c:	020a8a93          	add	s5,s5,32
    7650:	fd7418e3          	bne	s0,s7,7620 <_setlocale_r+0x98>
    7654:	01812423          	sw	s8,8(sp)
    7658:	0002ec17          	auipc	s8,0x2e
    765c:	328c0c13          	add	s8,s8,808 # 35980 <saved_categories.0+0x20>
    7660:	0002ea97          	auipc	s5,0x2e
    7664:	400a8a93          	add	s5,s5,1024 # 35a60 <new_categories.1+0x20>
    7668:	000c0493          	mv	s1,s8
    766c:	00100413          	li	s0,1
    7670:	0002db97          	auipc	s7,0x2d
    7674:	ec8b8b93          	add	s7,s7,-312 # 34538 <__global_locale>
    7678:	00700b13          	li	s6,7
    767c:	00090593          	mv	a1,s2
    7680:	00048513          	mv	a0,s1
    7684:	7dc000ef          	jal	7e60 <strcpy>
    7688:	000a8613          	mv	a2,s5
    768c:	00040593          	mv	a1,s0
    7690:	000b8513          	mv	a0,s7
    7694:	ea8ff0ef          	jal	6d3c <__loadlocale>
    7698:	24050263          	beqz	a0,78dc <_setlocale_r+0x354>
    769c:	00140413          	add	s0,s0,1
    76a0:	02048493          	add	s1,s1,32
    76a4:	02090913          	add	s2,s2,32
    76a8:	020a8a93          	add	s5,s5,32
    76ac:	fd6418e3          	bne	s0,s6,767c <_setlocale_r+0xf4>
    76b0:	02812403          	lw	s0,40(sp)
    76b4:	02412483          	lw	s1,36(sp)
    76b8:	02012903          	lw	s2,32(sp)
    76bc:	01812a03          	lw	s4,24(sp)
    76c0:	01012b03          	lw	s6,16(sp)
    76c4:	00c12b83          	lw	s7,12(sp)
    76c8:	00812c03          	lw	s8,8(sp)
    76cc:	02c12083          	lw	ra,44(sp)
    76d0:	01c12983          	lw	s3,28(sp)
    76d4:	01412a83          	lw	s5,20(sp)
    76d8:	03010113          	add	sp,sp,48
    76dc:	d88ff06f          	j	6c64 <currentlocale>
    76e0:	0a0b8263          	beqz	s7,7784 <_setlocale_r+0x1fc>
    76e4:	000b0513          	mv	a0,s6
    76e8:	6ec000ef          	jal	7dd4 <strlen>
    76ec:	01f00793          	li	a5,31
    76f0:	04a7ee63          	bltu	a5,a0,774c <_setlocale_r+0x1c4>
    76f4:	005b9413          	sll	s0,s7,0x5
    76f8:	0002e797          	auipc	a5,0x2e
    76fc:	34878793          	add	a5,a5,840 # 35a40 <new_categories.1>
    7700:	00f40433          	add	s0,s0,a5
    7704:	000b0593          	mv	a1,s6
    7708:	00040513          	mv	a0,s0
    770c:	754000ef          	jal	7e60 <strcpy>
    7710:	00040613          	mv	a2,s0
    7714:	02812403          	lw	s0,40(sp)
    7718:	02412483          	lw	s1,36(sp)
    771c:	02012903          	lw	s2,32(sp)
    7720:	01812a03          	lw	s4,24(sp)
    7724:	01012b03          	lw	s6,16(sp)
    7728:	02c12083          	lw	ra,44(sp)
    772c:	01c12983          	lw	s3,28(sp)
    7730:	01412a83          	lw	s5,20(sp)
    7734:	000b8593          	mv	a1,s7
    7738:	00c12b83          	lw	s7,12(sp)
    773c:	0002d517          	auipc	a0,0x2d
    7740:	dfc50513          	add	a0,a0,-516 # 34538 <__global_locale>
    7744:	03010113          	add	sp,sp,48
    7748:	df4ff06f          	j	6d3c <__loadlocale>
    774c:	02812403          	lw	s0,40(sp)
    7750:	02412483          	lw	s1,36(sp)
    7754:	02012903          	lw	s2,32(sp)
    7758:	01812a03          	lw	s4,24(sp)
    775c:	01012b03          	lw	s6,16(sp)
    7760:	00c12b83          	lw	s7,12(sp)
    7764:	01600a93          	li	s5,22
    7768:	02c12083          	lw	ra,44(sp)
    776c:	0159a023          	sw	s5,0(s3)
    7770:	00000513          	li	a0,0
    7774:	01c12983          	lw	s3,28(sp)
    7778:	01412a83          	lw	s5,20(sp)
    777c:	03010113          	add	sp,sp,48
    7780:	00008067          	ret
    7784:	02f00593          	li	a1,47
    7788:	000b0513          	mv	a0,s6
    778c:	040020ef          	jal	97cc <strchr>
    7790:	00050413          	mv	s0,a0
    7794:	1e050263          	beqz	a0,7978 <_setlocale_r+0x3f0>
    7798:	00154783          	lbu	a5,1(a0)
    779c:	02f00693          	li	a3,47
    77a0:	02f00713          	li	a4,47
    77a4:	00d79863          	bne	a5,a3,77b4 <_setlocale_r+0x22c>
    77a8:	00244783          	lbu	a5,2(s0)
    77ac:	00140413          	add	s0,s0,1
    77b0:	fee78ce3          	beq	a5,a4,77a8 <_setlocale_r+0x220>
    77b4:	f8078ce3          	beqz	a5,774c <_setlocale_r+0x1c4>
    77b8:	01812423          	sw	s8,8(sp)
    77bc:	01912223          	sw	s9,4(sp)
    77c0:	01a12023          	sw	s10,0(sp)
    77c4:	00100c93          	li	s9,1
    77c8:	0002ed17          	auipc	s10,0x2e
    77cc:	298d0d13          	add	s10,s10,664 # 35a60 <new_categories.1+0x20>
    77d0:	01f00b93          	li	s7,31
    77d4:	02f00493          	li	s1,47
    77d8:	00700c13          	li	s8,7
    77dc:	41640633          	sub	a2,s0,s6
    77e0:	1ccbc663          	blt	s7,a2,79ac <_setlocale_r+0x424>
    77e4:	00160613          	add	a2,a2,1
    77e8:	000b0593          	mv	a1,s6
    77ec:	000d0513          	mv	a0,s10
    77f0:	11c020ef          	jal	990c <strlcpy>
    77f4:	00044783          	lbu	a5,0(s0)
    77f8:	001c8c93          	add	s9,s9,1
    77fc:	00979863          	bne	a5,s1,780c <_setlocale_r+0x284>
    7800:	00144783          	lbu	a5,1(s0)
    7804:	00140413          	add	s0,s0,1
    7808:	fe978ce3          	beq	a5,s1,7800 <_setlocale_r+0x278>
    780c:	02078663          	beqz	a5,7838 <_setlocale_r+0x2b0>
    7810:	00040793          	mv	a5,s0
    7814:	0017c703          	lbu	a4,1(a5)
    7818:	00178793          	add	a5,a5,1
    781c:	00070463          	beqz	a4,7824 <_setlocale_r+0x29c>
    7820:	fe971ae3          	bne	a4,s1,7814 <_setlocale_r+0x28c>
    7824:	020d0d13          	add	s10,s10,32
    7828:	038c8e63          	beq	s9,s8,7864 <_setlocale_r+0x2dc>
    782c:	00040b13          	mv	s6,s0
    7830:	00078413          	mv	s0,a5
    7834:	fa9ff06f          	j	77dc <_setlocale_r+0x254>
    7838:	00700793          	li	a5,7
    783c:	02fc8463          	beq	s9,a5,7864 <_setlocale_r+0x2dc>
    7840:	005c9413          	sll	s0,s9,0x5
    7844:	0002e797          	auipc	a5,0x2e
    7848:	1fc78793          	add	a5,a5,508 # 35a40 <new_categories.1>
    784c:	00f40433          	add	s0,s0,a5
    7850:	fe040593          	add	a1,s0,-32
    7854:	00040513          	mv	a0,s0
    7858:	02040413          	add	s0,s0,32
    785c:	604000ef          	jal	7e60 <strcpy>
    7860:	ff5418e3          	bne	s0,s5,7850 <_setlocale_r+0x2c8>
    7864:	00412c83          	lw	s9,4(sp)
    7868:	00012d03          	lw	s10,0(sp)
    786c:	dedff06f          	j	7658 <_setlocale_r+0xd0>
    7870:	0e058e63          	beqz	a1,796c <_setlocale_r+0x3e4>
    7874:	02c12083          	lw	ra,44(sp)
    7878:	00559513          	sll	a0,a1,0x5
    787c:	0002d797          	auipc	a5,0x2d
    7880:	cbc78793          	add	a5,a5,-836 # 34538 <__global_locale>
    7884:	01012b03          	lw	s6,16(sp)
    7888:	00c12b83          	lw	s7,12(sp)
    788c:	01c12983          	lw	s3,28(sp)
    7890:	01412a83          	lw	s5,20(sp)
    7894:	00f50533          	add	a0,a0,a5
    7898:	03010113          	add	sp,sp,48
    789c:	00008067          	ret
    78a0:	000b8593          	mv	a1,s7
    78a4:	00098513          	mv	a0,s3
    78a8:	c51ff0ef          	jal	74f8 <__get_locale_env>
    78ac:	00050493          	mv	s1,a0
    78b0:	524000ef          	jal	7dd4 <strlen>
    78b4:	01f00793          	li	a5,31
    78b8:	e8a7eae3          	bltu	a5,a0,774c <_setlocale_r+0x1c4>
    78bc:	005b9413          	sll	s0,s7,0x5
    78c0:	0002e797          	auipc	a5,0x2e
    78c4:	18078793          	add	a5,a5,384 # 35a40 <new_categories.1>
    78c8:	00f40433          	add	s0,s0,a5
    78cc:	00048593          	mv	a1,s1
    78d0:	00040513          	mv	a0,s0
    78d4:	58c000ef          	jal	7e60 <strcpy>
    78d8:	e39ff06f          	j	7710 <_setlocale_r+0x188>
    78dc:	00100493          	li	s1,1
    78e0:	0009aa83          	lw	s5,0(s3)
    78e4:	0002d917          	auipc	s2,0x2d
    78e8:	c5490913          	add	s2,s2,-940 # 34538 <__global_locale>
    78ec:	00029b17          	auipc	s6,0x29
    78f0:	bd8b0b13          	add	s6,s6,-1064 # 304c4 <__clz_tab+0x13c>
    78f4:	00941c63          	bne	s0,s1,790c <_setlocale_r+0x384>
    78f8:	0540006f          	j	794c <_setlocale_r+0x3c4>
    78fc:	00148493          	add	s1,s1,1
    7900:	020a0a13          	add	s4,s4,32
    7904:	020c0c13          	add	s8,s8,32
    7908:	04848263          	beq	s1,s0,794c <_setlocale_r+0x3c4>
    790c:	000c0593          	mv	a1,s8
    7910:	000a0513          	mv	a0,s4
    7914:	54c000ef          	jal	7e60 <strcpy>
    7918:	000a0613          	mv	a2,s4
    791c:	00048593          	mv	a1,s1
    7920:	00090513          	mv	a0,s2
    7924:	c18ff0ef          	jal	6d3c <__loadlocale>
    7928:	fc051ae3          	bnez	a0,78fc <_setlocale_r+0x374>
    792c:	000b0593          	mv	a1,s6
    7930:	000a0513          	mv	a0,s4
    7934:	52c000ef          	jal	7e60 <strcpy>
    7938:	000a0613          	mv	a2,s4
    793c:	00048593          	mv	a1,s1
    7940:	00090513          	mv	a0,s2
    7944:	bf8ff0ef          	jal	6d3c <__loadlocale>
    7948:	fb5ff06f          	j	78fc <_setlocale_r+0x374>
    794c:	02812403          	lw	s0,40(sp)
    7950:	02412483          	lw	s1,36(sp)
    7954:	02012903          	lw	s2,32(sp)
    7958:	01812a03          	lw	s4,24(sp)
    795c:	01012b03          	lw	s6,16(sp)
    7960:	00c12b83          	lw	s7,12(sp)
    7964:	00812c03          	lw	s8,8(sp)
    7968:	e01ff06f          	j	7768 <_setlocale_r+0x1e0>
    796c:	01012b03          	lw	s6,16(sp)
    7970:	00c12b83          	lw	s7,12(sp)
    7974:	d59ff06f          	j	76cc <_setlocale_r+0x144>
    7978:	000b0513          	mv	a0,s6
    797c:	458000ef          	jal	7dd4 <strlen>
    7980:	01f00793          	li	a5,31
    7984:	dca7e4e3          	bltu	a5,a0,774c <_setlocale_r+0x1c4>
    7988:	01812423          	sw	s8,8(sp)
    798c:	0002e417          	auipc	s0,0x2e
    7990:	0d440413          	add	s0,s0,212 # 35a60 <new_categories.1+0x20>
    7994:	00040513          	mv	a0,s0
    7998:	000b0593          	mv	a1,s6
    799c:	02040413          	add	s0,s0,32
    79a0:	4c0000ef          	jal	7e60 <strcpy>
    79a4:	ff5418e3          	bne	s0,s5,7994 <_setlocale_r+0x40c>
    79a8:	cb1ff06f          	j	7658 <_setlocale_r+0xd0>
    79ac:	02812403          	lw	s0,40(sp)
    79b0:	02412483          	lw	s1,36(sp)
    79b4:	02012903          	lw	s2,32(sp)
    79b8:	01812a03          	lw	s4,24(sp)
    79bc:	01012b03          	lw	s6,16(sp)
    79c0:	00c12b83          	lw	s7,12(sp)
    79c4:	00812c03          	lw	s8,8(sp)
    79c8:	00412c83          	lw	s9,4(sp)
    79cc:	00012d03          	lw	s10,0(sp)
    79d0:	d95ff06f          	j	7764 <_setlocale_r+0x1dc>

000079d4 <__locale_mb_cur_max>:
    79d4:	0002d517          	auipc	a0,0x2d
    79d8:	c8c54503          	lbu	a0,-884(a0) # 34660 <__global_locale+0x128>
    79dc:	00008067          	ret

000079e0 <setlocale>:
    79e0:	00058613          	mv	a2,a1
    79e4:	00050593          	mv	a1,a0
    79e8:	0002d517          	auipc	a0,0x2d
    79ec:	e1c52503          	lw	a0,-484(a0) # 34804 <_impure_ptr>
    79f0:	b99ff06f          	j	7588 <_setlocale_r>

000079f4 <__localeconv_l>:
    79f4:	0f050513          	add	a0,a0,240
    79f8:	00008067          	ret

000079fc <_localeconv_r>:
    79fc:	0002d517          	auipc	a0,0x2d
    7a00:	c2c50513          	add	a0,a0,-980 # 34628 <__global_locale+0xf0>
    7a04:	00008067          	ret

00007a08 <localeconv>:
    7a08:	0002d517          	auipc	a0,0x2d
    7a0c:	c2050513          	add	a0,a0,-992 # 34628 <__global_locale+0xf0>
    7a10:	00008067          	ret

00007a14 <_fstat_r>:
    7a14:	ff010113          	add	sp,sp,-16
    7a18:	00058713          	mv	a4,a1
    7a1c:	00812423          	sw	s0,8(sp)
    7a20:	00060593          	mv	a1,a2
    7a24:	00050413          	mv	s0,a0
    7a28:	00070513          	mv	a0,a4
    7a2c:	0002d797          	auipc	a5,0x2d
    7a30:	5c07ae23          	sw	zero,1500(a5) # 35008 <errno>
    7a34:	00112623          	sw	ra,12(sp)
    7a38:	df1f80ef          	jal	828 <_fstat>
    7a3c:	fff00793          	li	a5,-1
    7a40:	00f50a63          	beq	a0,a5,7a54 <_fstat_r+0x40>
    7a44:	00c12083          	lw	ra,12(sp)
    7a48:	00812403          	lw	s0,8(sp)
    7a4c:	01010113          	add	sp,sp,16
    7a50:	00008067          	ret
    7a54:	0002d797          	auipc	a5,0x2d
    7a58:	5b47a783          	lw	a5,1460(a5) # 35008 <errno>
    7a5c:	fe0784e3          	beqz	a5,7a44 <_fstat_r+0x30>
    7a60:	00c12083          	lw	ra,12(sp)
    7a64:	00f42023          	sw	a5,0(s0)
    7a68:	00812403          	lw	s0,8(sp)
    7a6c:	01010113          	add	sp,sp,16
    7a70:	00008067          	ret

00007a74 <_isatty_r>:
    7a74:	ff010113          	add	sp,sp,-16
    7a78:	00812423          	sw	s0,8(sp)
    7a7c:	00050413          	mv	s0,a0
    7a80:	00058513          	mv	a0,a1
    7a84:	0002d797          	auipc	a5,0x2d
    7a88:	5807a223          	sw	zero,1412(a5) # 35008 <errno>
    7a8c:	00112623          	sw	ra,12(sp)
    7a90:	dcdf80ef          	jal	85c <_isatty>
    7a94:	fff00793          	li	a5,-1
    7a98:	00f50a63          	beq	a0,a5,7aac <_isatty_r+0x38>
    7a9c:	00c12083          	lw	ra,12(sp)
    7aa0:	00812403          	lw	s0,8(sp)
    7aa4:	01010113          	add	sp,sp,16
    7aa8:	00008067          	ret
    7aac:	0002d797          	auipc	a5,0x2d
    7ab0:	55c7a783          	lw	a5,1372(a5) # 35008 <errno>
    7ab4:	fe0784e3          	beqz	a5,7a9c <_isatty_r+0x28>
    7ab8:	00c12083          	lw	ra,12(sp)
    7abc:	00f42023          	sw	a5,0(s0)
    7ac0:	00812403          	lw	s0,8(sp)
    7ac4:	01010113          	add	sp,sp,16
    7ac8:	00008067          	ret

00007acc <_sbrk_r>:
    7acc:	ff010113          	add	sp,sp,-16
    7ad0:	00812423          	sw	s0,8(sp)
    7ad4:	00050413          	mv	s0,a0
    7ad8:	00058513          	mv	a0,a1
    7adc:	0002d797          	auipc	a5,0x2d
    7ae0:	5207a623          	sw	zero,1324(a5) # 35008 <errno>
    7ae4:	00112623          	sw	ra,12(sp)
    7ae8:	b91f80ef          	jal	678 <_sbrk>
    7aec:	fff00793          	li	a5,-1
    7af0:	00f50a63          	beq	a0,a5,7b04 <_sbrk_r+0x38>
    7af4:	00c12083          	lw	ra,12(sp)
    7af8:	00812403          	lw	s0,8(sp)
    7afc:	01010113          	add	sp,sp,16
    7b00:	00008067          	ret
    7b04:	0002d797          	auipc	a5,0x2d
    7b08:	5047a783          	lw	a5,1284(a5) # 35008 <errno>
    7b0c:	fe0784e3          	beqz	a5,7af4 <_sbrk_r+0x28>
    7b10:	00c12083          	lw	ra,12(sp)
    7b14:	00f42023          	sw	a5,0(s0)
    7b18:	00812403          	lw	s0,8(sp)
    7b1c:	01010113          	add	sp,sp,16
    7b20:	00008067          	ret

00007b24 <memmove>:
    7b24:	02a5f663          	bgeu	a1,a0,7b50 <memmove+0x2c>
    7b28:	00c58733          	add	a4,a1,a2
    7b2c:	02e57263          	bgeu	a0,a4,7b50 <memmove+0x2c>
    7b30:	00c507b3          	add	a5,a0,a2
    7b34:	04060663          	beqz	a2,7b80 <memmove+0x5c>
    7b38:	fff74683          	lbu	a3,-1(a4)
    7b3c:	fff78793          	add	a5,a5,-1
    7b40:	fff70713          	add	a4,a4,-1
    7b44:	00d78023          	sb	a3,0(a5)
    7b48:	fef518e3          	bne	a0,a5,7b38 <memmove+0x14>
    7b4c:	00008067          	ret
    7b50:	00f00793          	li	a5,15
    7b54:	02c7e863          	bltu	a5,a2,7b84 <memmove+0x60>
    7b58:	00050793          	mv	a5,a0
    7b5c:	fff60693          	add	a3,a2,-1
    7b60:	0c060263          	beqz	a2,7c24 <memmove+0x100>
    7b64:	00168693          	add	a3,a3,1
    7b68:	00d786b3          	add	a3,a5,a3
    7b6c:	0005c703          	lbu	a4,0(a1)
    7b70:	00178793          	add	a5,a5,1
    7b74:	00158593          	add	a1,a1,1
    7b78:	fee78fa3          	sb	a4,-1(a5)
    7b7c:	fed798e3          	bne	a5,a3,7b6c <memmove+0x48>
    7b80:	00008067          	ret
    7b84:	00b567b3          	or	a5,a0,a1
    7b88:	0037f793          	and	a5,a5,3
    7b8c:	08079663          	bnez	a5,7c18 <memmove+0xf4>
    7b90:	ff060893          	add	a7,a2,-16
    7b94:	ff08f893          	and	a7,a7,-16
    7b98:	01088893          	add	a7,a7,16
    7b9c:	011506b3          	add	a3,a0,a7
    7ba0:	00058713          	mv	a4,a1
    7ba4:	00050793          	mv	a5,a0
    7ba8:	00072803          	lw	a6,0(a4)
    7bac:	01070713          	add	a4,a4,16
    7bb0:	01078793          	add	a5,a5,16
    7bb4:	ff07a823          	sw	a6,-16(a5)
    7bb8:	ff472803          	lw	a6,-12(a4)
    7bbc:	ff07aa23          	sw	a6,-12(a5)
    7bc0:	ff872803          	lw	a6,-8(a4)
    7bc4:	ff07ac23          	sw	a6,-8(a5)
    7bc8:	ffc72803          	lw	a6,-4(a4)
    7bcc:	ff07ae23          	sw	a6,-4(a5)
    7bd0:	fcd79ce3          	bne	a5,a3,7ba8 <memmove+0x84>
    7bd4:	00c67813          	and	a6,a2,12
    7bd8:	011585b3          	add	a1,a1,a7
    7bdc:	00f67713          	and	a4,a2,15
    7be0:	04080463          	beqz	a6,7c28 <memmove+0x104>
    7be4:	ffc70813          	add	a6,a4,-4
    7be8:	ffc87813          	and	a6,a6,-4
    7bec:	00480813          	add	a6,a6,4
    7bf0:	010687b3          	add	a5,a3,a6
    7bf4:	00058713          	mv	a4,a1
    7bf8:	00072883          	lw	a7,0(a4)
    7bfc:	00468693          	add	a3,a3,4
    7c00:	00470713          	add	a4,a4,4
    7c04:	ff16ae23          	sw	a7,-4(a3)
    7c08:	fef698e3          	bne	a3,a5,7bf8 <memmove+0xd4>
    7c0c:	00367613          	and	a2,a2,3
    7c10:	010585b3          	add	a1,a1,a6
    7c14:	f49ff06f          	j	7b5c <memmove+0x38>
    7c18:	fff60693          	add	a3,a2,-1
    7c1c:	00050793          	mv	a5,a0
    7c20:	f45ff06f          	j	7b64 <memmove+0x40>
    7c24:	00008067          	ret
    7c28:	00070613          	mv	a2,a4
    7c2c:	f31ff06f          	j	7b5c <memmove+0x38>

00007c30 <memcpy>:
    7c30:	00a5c7b3          	xor	a5,a1,a0
    7c34:	0037f793          	and	a5,a5,3
    7c38:	00c508b3          	add	a7,a0,a2
    7c3c:	06079463          	bnez	a5,7ca4 <memcpy+0x74>
    7c40:	00300793          	li	a5,3
    7c44:	06c7f063          	bgeu	a5,a2,7ca4 <memcpy+0x74>
    7c48:	00357793          	and	a5,a0,3
    7c4c:	00050713          	mv	a4,a0
    7c50:	06079a63          	bnez	a5,7cc4 <memcpy+0x94>
    7c54:	ffc8f613          	and	a2,a7,-4
    7c58:	40e606b3          	sub	a3,a2,a4
    7c5c:	02000793          	li	a5,32
    7c60:	08d7ce63          	blt	a5,a3,7cfc <memcpy+0xcc>
    7c64:	00058693          	mv	a3,a1
    7c68:	00070793          	mv	a5,a4
    7c6c:	02c77863          	bgeu	a4,a2,7c9c <memcpy+0x6c>
    7c70:	0006a803          	lw	a6,0(a3)
    7c74:	00478793          	add	a5,a5,4
    7c78:	00468693          	add	a3,a3,4
    7c7c:	ff07ae23          	sw	a6,-4(a5)
    7c80:	fec7e8e3          	bltu	a5,a2,7c70 <memcpy+0x40>
    7c84:	fff60793          	add	a5,a2,-1
    7c88:	40e787b3          	sub	a5,a5,a4
    7c8c:	ffc7f793          	and	a5,a5,-4
    7c90:	00478793          	add	a5,a5,4
    7c94:	00f70733          	add	a4,a4,a5
    7c98:	00f585b3          	add	a1,a1,a5
    7c9c:	01176863          	bltu	a4,a7,7cac <memcpy+0x7c>
    7ca0:	00008067          	ret
    7ca4:	00050713          	mv	a4,a0
    7ca8:	05157863          	bgeu	a0,a7,7cf8 <memcpy+0xc8>
    7cac:	0005c783          	lbu	a5,0(a1)
    7cb0:	00170713          	add	a4,a4,1
    7cb4:	00158593          	add	a1,a1,1
    7cb8:	fef70fa3          	sb	a5,-1(a4)
    7cbc:	fee898e3          	bne	a7,a4,7cac <memcpy+0x7c>
    7cc0:	00008067          	ret
    7cc4:	0005c683          	lbu	a3,0(a1)
    7cc8:	00170713          	add	a4,a4,1
    7ccc:	00377793          	and	a5,a4,3
    7cd0:	fed70fa3          	sb	a3,-1(a4)
    7cd4:	00158593          	add	a1,a1,1
    7cd8:	f6078ee3          	beqz	a5,7c54 <memcpy+0x24>
    7cdc:	0005c683          	lbu	a3,0(a1)
    7ce0:	00170713          	add	a4,a4,1
    7ce4:	00377793          	and	a5,a4,3
    7ce8:	fed70fa3          	sb	a3,-1(a4)
    7cec:	00158593          	add	a1,a1,1
    7cf0:	fc079ae3          	bnez	a5,7cc4 <memcpy+0x94>
    7cf4:	f61ff06f          	j	7c54 <memcpy+0x24>
    7cf8:	00008067          	ret
    7cfc:	ff010113          	add	sp,sp,-16
    7d00:	00812623          	sw	s0,12(sp)
    7d04:	02000413          	li	s0,32
    7d08:	0005a383          	lw	t2,0(a1)
    7d0c:	0045a283          	lw	t0,4(a1)
    7d10:	0085af83          	lw	t6,8(a1)
    7d14:	00c5af03          	lw	t5,12(a1)
    7d18:	0105ae83          	lw	t4,16(a1)
    7d1c:	0145ae03          	lw	t3,20(a1)
    7d20:	0185a303          	lw	t1,24(a1)
    7d24:	01c5a803          	lw	a6,28(a1)
    7d28:	0205a683          	lw	a3,32(a1)
    7d2c:	02470713          	add	a4,a4,36
    7d30:	40e607b3          	sub	a5,a2,a4
    7d34:	fc772e23          	sw	t2,-36(a4)
    7d38:	fe572023          	sw	t0,-32(a4)
    7d3c:	fff72223          	sw	t6,-28(a4)
    7d40:	ffe72423          	sw	t5,-24(a4)
    7d44:	ffd72623          	sw	t4,-20(a4)
    7d48:	ffc72823          	sw	t3,-16(a4)
    7d4c:	fe672a23          	sw	t1,-12(a4)
    7d50:	ff072c23          	sw	a6,-8(a4)
    7d54:	fed72e23          	sw	a3,-4(a4)
    7d58:	02458593          	add	a1,a1,36
    7d5c:	faf446e3          	blt	s0,a5,7d08 <memcpy+0xd8>
    7d60:	00058693          	mv	a3,a1
    7d64:	00070793          	mv	a5,a4
    7d68:	02c77863          	bgeu	a4,a2,7d98 <memcpy+0x168>
    7d6c:	0006a803          	lw	a6,0(a3)
    7d70:	00478793          	add	a5,a5,4
    7d74:	00468693          	add	a3,a3,4
    7d78:	ff07ae23          	sw	a6,-4(a5)
    7d7c:	fec7e8e3          	bltu	a5,a2,7d6c <memcpy+0x13c>
    7d80:	fff60793          	add	a5,a2,-1
    7d84:	40e787b3          	sub	a5,a5,a4
    7d88:	ffc7f793          	and	a5,a5,-4
    7d8c:	00478793          	add	a5,a5,4
    7d90:	00f70733          	add	a4,a4,a5
    7d94:	00f585b3          	add	a1,a1,a5
    7d98:	01176863          	bltu	a4,a7,7da8 <memcpy+0x178>
    7d9c:	00c12403          	lw	s0,12(sp)
    7da0:	01010113          	add	sp,sp,16
    7da4:	00008067          	ret
    7da8:	0005c783          	lbu	a5,0(a1)
    7dac:	00170713          	add	a4,a4,1
    7db0:	00158593          	add	a1,a1,1
    7db4:	fef70fa3          	sb	a5,-1(a4)
    7db8:	fee882e3          	beq	a7,a4,7d9c <memcpy+0x16c>
    7dbc:	0005c783          	lbu	a5,0(a1)
    7dc0:	00170713          	add	a4,a4,1
    7dc4:	00158593          	add	a1,a1,1
    7dc8:	fef70fa3          	sb	a5,-1(a4)
    7dcc:	fce89ee3          	bne	a7,a4,7da8 <memcpy+0x178>
    7dd0:	fcdff06f          	j	7d9c <memcpy+0x16c>

00007dd4 <strlen>:
    7dd4:	00357793          	and	a5,a0,3
    7dd8:	00050713          	mv	a4,a0
    7ddc:	04079c63          	bnez	a5,7e34 <strlen+0x60>
    7de0:	7f7f86b7          	lui	a3,0x7f7f8
    7de4:	f7f68693          	add	a3,a3,-129 # 7f7f7f7f <GET_WATCHDOG_LOW+0x7f5f6f3f>
    7de8:	fff00593          	li	a1,-1
    7dec:	00072603          	lw	a2,0(a4)
    7df0:	00470713          	add	a4,a4,4
    7df4:	00d677b3          	and	a5,a2,a3
    7df8:	00d787b3          	add	a5,a5,a3
    7dfc:	00c7e7b3          	or	a5,a5,a2
    7e00:	00d7e7b3          	or	a5,a5,a3
    7e04:	feb784e3          	beq	a5,a1,7dec <strlen+0x18>
    7e08:	ffc74683          	lbu	a3,-4(a4)
    7e0c:	40a707b3          	sub	a5,a4,a0
    7e10:	04068463          	beqz	a3,7e58 <strlen+0x84>
    7e14:	ffd74683          	lbu	a3,-3(a4)
    7e18:	02068c63          	beqz	a3,7e50 <strlen+0x7c>
    7e1c:	ffe74503          	lbu	a0,-2(a4)
    7e20:	00a03533          	snez	a0,a0
    7e24:	00f50533          	add	a0,a0,a5
    7e28:	ffe50513          	add	a0,a0,-2
    7e2c:	00008067          	ret
    7e30:	fa0688e3          	beqz	a3,7de0 <strlen+0xc>
    7e34:	00074783          	lbu	a5,0(a4)
    7e38:	00170713          	add	a4,a4,1
    7e3c:	00377693          	and	a3,a4,3
    7e40:	fe0798e3          	bnez	a5,7e30 <strlen+0x5c>
    7e44:	40a70733          	sub	a4,a4,a0
    7e48:	fff70513          	add	a0,a4,-1
    7e4c:	00008067          	ret
    7e50:	ffd78513          	add	a0,a5,-3
    7e54:	00008067          	ret
    7e58:	ffc78513          	add	a0,a5,-4
    7e5c:	00008067          	ret

00007e60 <strcpy>:
    7e60:	00b567b3          	or	a5,a0,a1
    7e64:	0037f793          	and	a5,a5,3
    7e68:	08079263          	bnez	a5,7eec <strcpy+0x8c>
    7e6c:	0005a703          	lw	a4,0(a1)
    7e70:	7f7f86b7          	lui	a3,0x7f7f8
    7e74:	f7f68693          	add	a3,a3,-129 # 7f7f7f7f <GET_WATCHDOG_LOW+0x7f5f6f3f>
    7e78:	00d777b3          	and	a5,a4,a3
    7e7c:	00d787b3          	add	a5,a5,a3
    7e80:	00e7e7b3          	or	a5,a5,a4
    7e84:	00d7e7b3          	or	a5,a5,a3
    7e88:	fff00613          	li	a2,-1
    7e8c:	06c79e63          	bne	a5,a2,7f08 <strcpy+0xa8>
    7e90:	00050613          	mv	a2,a0
    7e94:	fff00813          	li	a6,-1
    7e98:	00e62023          	sw	a4,0(a2)
    7e9c:	0045a703          	lw	a4,4(a1)
    7ea0:	00458593          	add	a1,a1,4
    7ea4:	00460613          	add	a2,a2,4
    7ea8:	00d777b3          	and	a5,a4,a3
    7eac:	00d787b3          	add	a5,a5,a3
    7eb0:	00e7e7b3          	or	a5,a5,a4
    7eb4:	00d7e7b3          	or	a5,a5,a3
    7eb8:	ff0780e3          	beq	a5,a6,7e98 <strcpy+0x38>
    7ebc:	0005c783          	lbu	a5,0(a1)
    7ec0:	0015c703          	lbu	a4,1(a1)
    7ec4:	0025c683          	lbu	a3,2(a1)
    7ec8:	00f60023          	sb	a5,0(a2)
    7ecc:	00078a63          	beqz	a5,7ee0 <strcpy+0x80>
    7ed0:	00e600a3          	sb	a4,1(a2)
    7ed4:	00070663          	beqz	a4,7ee0 <strcpy+0x80>
    7ed8:	00d60123          	sb	a3,2(a2)
    7edc:	00069463          	bnez	a3,7ee4 <strcpy+0x84>
    7ee0:	00008067          	ret
    7ee4:	000601a3          	sb	zero,3(a2)
    7ee8:	00008067          	ret
    7eec:	00050793          	mv	a5,a0
    7ef0:	0005c703          	lbu	a4,0(a1)
    7ef4:	00178793          	add	a5,a5,1
    7ef8:	00158593          	add	a1,a1,1
    7efc:	fee78fa3          	sb	a4,-1(a5)
    7f00:	fe0718e3          	bnez	a4,7ef0 <strcpy+0x90>
    7f04:	00008067          	ret
    7f08:	00050613          	mv	a2,a0
    7f0c:	fb1ff06f          	j	7ebc <strcpy+0x5c>

00007f10 <__register_exitproc>:
    7f10:	fe010113          	add	sp,sp,-32
    7f14:	01212823          	sw	s2,16(sp)
    7f18:	0002d917          	auipc	s2,0x2d
    7f1c:	8f090913          	add	s2,s2,-1808 # 34808 <__atexit_recursive_mutex>
    7f20:	00812c23          	sw	s0,24(sp)
    7f24:	00050413          	mv	s0,a0
    7f28:	00092503          	lw	a0,0(s2)
    7f2c:	00912a23          	sw	s1,20(sp)
    7f30:	01312623          	sw	s3,12(sp)
    7f34:	01412423          	sw	s4,8(sp)
    7f38:	00112e23          	sw	ra,28(sp)
    7f3c:	00058493          	mv	s1,a1
    7f40:	00060a13          	mv	s4,a2
    7f44:	00068993          	mv	s3,a3
    7f48:	831fb0ef          	jal	3778 <__retarget_lock_acquire_recursive>
    7f4c:	0002d717          	auipc	a4,0x2d
    7f50:	0e070713          	add	a4,a4,224 # 3502c <__atexit>
    7f54:	00072783          	lw	a5,0(a4)
    7f58:	08078663          	beqz	a5,7fe4 <__register_exitproc+0xd4>
    7f5c:	0047a703          	lw	a4,4(a5)
    7f60:	01f00593          	li	a1,31
    7f64:	00092503          	lw	a0,0(s2)
    7f68:	08e5c663          	blt	a1,a4,7ff4 <__register_exitproc+0xe4>
    7f6c:	00271593          	sll	a1,a4,0x2
    7f70:	02041e63          	bnez	s0,7fac <__register_exitproc+0x9c>
    7f74:	00170713          	add	a4,a4,1
    7f78:	00e7a223          	sw	a4,4(a5)
    7f7c:	00b787b3          	add	a5,a5,a1
    7f80:	0097a423          	sw	s1,8(a5)
    7f84:	80dfb0ef          	jal	3790 <__retarget_lock_release_recursive>
    7f88:	00000513          	li	a0,0
    7f8c:	01c12083          	lw	ra,28(sp)
    7f90:	01812403          	lw	s0,24(sp)
    7f94:	01412483          	lw	s1,20(sp)
    7f98:	01012903          	lw	s2,16(sp)
    7f9c:	00c12983          	lw	s3,12(sp)
    7fa0:	00812a03          	lw	s4,8(sp)
    7fa4:	02010113          	add	sp,sp,32
    7fa8:	00008067          	ret
    7fac:	00b78833          	add	a6,a5,a1
    7fb0:	09482423          	sw	s4,136(a6)
    7fb4:	1887a683          	lw	a3,392(a5)
    7fb8:	00100613          	li	a2,1
    7fbc:	00e61633          	sll	a2,a2,a4
    7fc0:	00c6e6b3          	or	a3,a3,a2
    7fc4:	18d7a423          	sw	a3,392(a5)
    7fc8:	11382423          	sw	s3,264(a6)
    7fcc:	00200693          	li	a3,2
    7fd0:	fad412e3          	bne	s0,a3,7f74 <__register_exitproc+0x64>
    7fd4:	18c7a683          	lw	a3,396(a5)
    7fd8:	00c6e6b3          	or	a3,a3,a2
    7fdc:	18d7a623          	sw	a3,396(a5)
    7fe0:	f95ff06f          	j	7f74 <__register_exitproc+0x64>
    7fe4:	0002e797          	auipc	a5,0x2e
    7fe8:	c2478793          	add	a5,a5,-988 # 35c08 <__atexit0>
    7fec:	00f72023          	sw	a5,0(a4)
    7ff0:	f6dff06f          	j	7f5c <__register_exitproc+0x4c>
    7ff4:	f9cfb0ef          	jal	3790 <__retarget_lock_release_recursive>
    7ff8:	fff00513          	li	a0,-1
    7ffc:	f91ff06f          	j	7f8c <__register_exitproc+0x7c>

00008000 <_findenv_r>:
    8000:	fd010113          	add	sp,sp,-48
    8004:	01612823          	sw	s6,16(sp)
    8008:	0002db17          	auipc	s6,0x2d
    800c:	80cb0b13          	add	s6,s6,-2036 # 34814 <environ>
    8010:	02912223          	sw	s1,36(sp)
    8014:	01312e23          	sw	s3,28(sp)
    8018:	01412c23          	sw	s4,24(sp)
    801c:	01512a23          	sw	s5,20(sp)
    8020:	02112623          	sw	ra,44(sp)
    8024:	00050a93          	mv	s5,a0
    8028:	00058993          	mv	s3,a1
    802c:	00060a13          	mv	s4,a2
    8030:	19d010ef          	jal	99cc <__env_lock>
    8034:	000b2483          	lw	s1,0(s6)
    8038:	02048a63          	beqz	s1,806c <_findenv_r+0x6c>
    803c:	02812423          	sw	s0,40(sp)
    8040:	0009c703          	lbu	a4,0(s3)
    8044:	00098793          	mv	a5,s3
    8048:	03d00693          	li	a3,61
    804c:	00000413          	li	s0,0
    8050:	00071863          	bnez	a4,8060 <_findenv_r+0x60>
    8054:	0480006f          	j	809c <_findenv_r+0x9c>
    8058:	0007c703          	lbu	a4,0(a5)
    805c:	02070e63          	beqz	a4,8098 <_findenv_r+0x98>
    8060:	00178793          	add	a5,a5,1
    8064:	fed71ae3          	bne	a4,a3,8058 <_findenv_r+0x58>
    8068:	02812403          	lw	s0,40(sp)
    806c:	000a8513          	mv	a0,s5
    8070:	169010ef          	jal	99d8 <__env_unlock>
    8074:	02c12083          	lw	ra,44(sp)
    8078:	02412483          	lw	s1,36(sp)
    807c:	01c12983          	lw	s3,28(sp)
    8080:	01812a03          	lw	s4,24(sp)
    8084:	01412a83          	lw	s5,20(sp)
    8088:	01012b03          	lw	s6,16(sp)
    808c:	00000513          	li	a0,0
    8090:	03010113          	add	sp,sp,48
    8094:	00008067          	ret
    8098:	41378433          	sub	s0,a5,s3
    809c:	0004a503          	lw	a0,0(s1)
    80a0:	fc0504e3          	beqz	a0,8068 <_findenv_r+0x68>
    80a4:	01712623          	sw	s7,12(sp)
    80a8:	03212023          	sw	s2,32(sp)
    80ac:	03d00b93          	li	s7,61
    80b0:	00040613          	mv	a2,s0
    80b4:	00098593          	mv	a1,s3
    80b8:	910f90ef          	jal	11c8 <strncmp>
    80bc:	00051a63          	bnez	a0,80d0 <_findenv_r+0xd0>
    80c0:	0004a903          	lw	s2,0(s1)
    80c4:	00890933          	add	s2,s2,s0
    80c8:	00094783          	lbu	a5,0(s2)
    80cc:	03778063          	beq	a5,s7,80ec <_findenv_r+0xec>
    80d0:	0044a503          	lw	a0,4(s1)
    80d4:	00448493          	add	s1,s1,4
    80d8:	fc051ce3          	bnez	a0,80b0 <_findenv_r+0xb0>
    80dc:	02812403          	lw	s0,40(sp)
    80e0:	02012903          	lw	s2,32(sp)
    80e4:	00c12b83          	lw	s7,12(sp)
    80e8:	f85ff06f          	j	806c <_findenv_r+0x6c>
    80ec:	000b2783          	lw	a5,0(s6)
    80f0:	000a8513          	mv	a0,s5
    80f4:	40f484b3          	sub	s1,s1,a5
    80f8:	4024d493          	sra	s1,s1,0x2
    80fc:	009a2023          	sw	s1,0(s4)
    8100:	0d9010ef          	jal	99d8 <__env_unlock>
    8104:	02c12083          	lw	ra,44(sp)
    8108:	02812403          	lw	s0,40(sp)
    810c:	00c12b83          	lw	s7,12(sp)
    8110:	02412483          	lw	s1,36(sp)
    8114:	01c12983          	lw	s3,28(sp)
    8118:	01812a03          	lw	s4,24(sp)
    811c:	01412a83          	lw	s5,20(sp)
    8120:	01012b03          	lw	s6,16(sp)
    8124:	00190513          	add	a0,s2,1
    8128:	02012903          	lw	s2,32(sp)
    812c:	03010113          	add	sp,sp,48
    8130:	00008067          	ret

00008134 <_getenv_r>:
    8134:	fe010113          	add	sp,sp,-32
    8138:	00c10613          	add	a2,sp,12
    813c:	00112e23          	sw	ra,28(sp)
    8140:	ec1ff0ef          	jal	8000 <_findenv_r>
    8144:	01c12083          	lw	ra,28(sp)
    8148:	02010113          	add	sp,sp,32
    814c:	00008067          	ret

00008150 <_mbtowc_r>:
    8150:	0002c797          	auipc	a5,0x2c
    8154:	4cc7a783          	lw	a5,1228(a5) # 3461c <__global_locale+0xe4>
    8158:	00078067          	jr	a5

0000815c <__ascii_mbtowc>:
    815c:	02058063          	beqz	a1,817c <__ascii_mbtowc+0x20>
    8160:	04060263          	beqz	a2,81a4 <__ascii_mbtowc+0x48>
    8164:	04068863          	beqz	a3,81b4 <__ascii_mbtowc+0x58>
    8168:	00064783          	lbu	a5,0(a2)
    816c:	00f5a023          	sw	a5,0(a1)
    8170:	00064503          	lbu	a0,0(a2)
    8174:	00a03533          	snez	a0,a0
    8178:	00008067          	ret
    817c:	ff010113          	add	sp,sp,-16
    8180:	00c10593          	add	a1,sp,12
    8184:	02060463          	beqz	a2,81ac <__ascii_mbtowc+0x50>
    8188:	02068a63          	beqz	a3,81bc <__ascii_mbtowc+0x60>
    818c:	00064783          	lbu	a5,0(a2)
    8190:	00f5a023          	sw	a5,0(a1)
    8194:	00064503          	lbu	a0,0(a2)
    8198:	00a03533          	snez	a0,a0
    819c:	01010113          	add	sp,sp,16
    81a0:	00008067          	ret
    81a4:	00000513          	li	a0,0
    81a8:	00008067          	ret
    81ac:	00000513          	li	a0,0
    81b0:	fedff06f          	j	819c <__ascii_mbtowc+0x40>
    81b4:	ffe00513          	li	a0,-2
    81b8:	00008067          	ret
    81bc:	ffe00513          	li	a0,-2
    81c0:	fddff06f          	j	819c <__ascii_mbtowc+0x40>

000081c4 <__utf8_mbtowc>:
    81c4:	ff010113          	add	sp,sp,-16
    81c8:	00050e13          	mv	t3,a0
    81cc:	0a058463          	beqz	a1,8274 <__utf8_mbtowc+0xb0>
    81d0:	08060c63          	beqz	a2,8268 <__utf8_mbtowc+0xa4>
    81d4:	28068663          	beqz	a3,8460 <__utf8_mbtowc+0x29c>
    81d8:	00072803          	lw	a6,0(a4)
    81dc:	06081c63          	bnez	a6,8254 <__utf8_mbtowc+0x90>
    81e0:	00064783          	lbu	a5,0(a2)
    81e4:	00100513          	li	a0,1
    81e8:	06078c63          	beqz	a5,8260 <__utf8_mbtowc+0x9c>
    81ec:	07f00893          	li	a7,127
    81f0:	12f8d263          	bge	a7,a5,8314 <__utf8_mbtowc+0x150>
    81f4:	f4078893          	add	a7,a5,-192
    81f8:	01f00313          	li	t1,31
    81fc:	09136063          	bltu	t1,a7,827c <__utf8_mbtowc+0xb8>
    8200:	00f70223          	sb	a5,4(a4)
    8204:	00081863          	bnez	a6,8214 <__utf8_mbtowc+0x50>
    8208:	00100813          	li	a6,1
    820c:	01072023          	sw	a6,0(a4)
    8210:	25068863          	beq	a3,a6,8460 <__utf8_mbtowc+0x29c>
    8214:	00a60633          	add	a2,a2,a0
    8218:	00064683          	lbu	a3,0(a2)
    821c:	03f00613          	li	a2,63
    8220:	00150513          	add	a0,a0,1
    8224:	f8068813          	add	a6,a3,-128
    8228:	21066e63          	bltu	a2,a6,8444 <__utf8_mbtowc+0x280>
    822c:	0c100613          	li	a2,193
    8230:	20f65a63          	bge	a2,a5,8444 <__utf8_mbtowc+0x280>
    8234:	00679793          	sll	a5,a5,0x6
    8238:	7c07f793          	and	a5,a5,1984
    823c:	03f6f693          	and	a3,a3,63
    8240:	00072023          	sw	zero,0(a4)
    8244:	00d7e7b3          	or	a5,a5,a3
    8248:	00f5a023          	sw	a5,0(a1)
    824c:	01010113          	add	sp,sp,16
    8250:	00008067          	ret
    8254:	00474783          	lbu	a5,4(a4)
    8258:	00000513          	li	a0,0
    825c:	f80798e3          	bnez	a5,81ec <__utf8_mbtowc+0x28>
    8260:	0005a023          	sw	zero,0(a1)
    8264:	00072023          	sw	zero,0(a4)
    8268:	00000513          	li	a0,0
    826c:	01010113          	add	sp,sp,16
    8270:	00008067          	ret
    8274:	00c10593          	add	a1,sp,12
    8278:	f59ff06f          	j	81d0 <__utf8_mbtowc+0xc>
    827c:	f2078893          	add	a7,a5,-224
    8280:	00f00313          	li	t1,15
    8284:	0b136263          	bltu	t1,a7,8328 <__utf8_mbtowc+0x164>
    8288:	00f70223          	sb	a5,4(a4)
    828c:	16080863          	beqz	a6,83fc <__utf8_mbtowc+0x238>
    8290:	00168893          	add	a7,a3,1
    8294:	011038b3          	snez	a7,a7
    8298:	00100313          	li	t1,1
    829c:	011686b3          	add	a3,a3,a7
    82a0:	16680463          	beq	a6,t1,8408 <__utf8_mbtowc+0x244>
    82a4:	00574883          	lbu	a7,5(a4)
    82a8:	0e000313          	li	t1,224
    82ac:	18678863          	beq	a5,t1,843c <__utf8_mbtowc+0x278>
    82b0:	f8088313          	add	t1,a7,-128
    82b4:	03f00e93          	li	t4,63
    82b8:	186ee663          	bltu	t4,t1,8444 <__utf8_mbtowc+0x280>
    82bc:	011702a3          	sb	a7,5(a4)
    82c0:	00100313          	li	t1,1
    82c4:	18680863          	beq	a6,t1,8454 <__utf8_mbtowc+0x290>
    82c8:	00a60633          	add	a2,a2,a0
    82cc:	00064683          	lbu	a3,0(a2)
    82d0:	03f00613          	li	a2,63
    82d4:	00150513          	add	a0,a0,1
    82d8:	f8068813          	add	a6,a3,-128
    82dc:	17066463          	bltu	a2,a6,8444 <__utf8_mbtowc+0x280>
    82e0:	00001637          	lui	a2,0x1
    82e4:	00c79793          	sll	a5,a5,0xc
    82e8:	00689893          	sll	a7,a7,0x6
    82ec:	fc060613          	add	a2,a2,-64 # fc0 <uart_putc+0x1c>
    82f0:	0000f837          	lui	a6,0xf
    82f4:	0107f7b3          	and	a5,a5,a6
    82f8:	00c8f8b3          	and	a7,a7,a2
    82fc:	0117e7b3          	or	a5,a5,a7
    8300:	03f6f693          	and	a3,a3,63
    8304:	00072023          	sw	zero,0(a4)
    8308:	00d7e7b3          	or	a5,a5,a3
    830c:	00f5a023          	sw	a5,0(a1)
    8310:	f5dff06f          	j	826c <__utf8_mbtowc+0xa8>
    8314:	00072023          	sw	zero,0(a4)
    8318:	00f5a023          	sw	a5,0(a1)
    831c:	00100513          	li	a0,1
    8320:	01010113          	add	sp,sp,16
    8324:	00008067          	ret
    8328:	f1078893          	add	a7,a5,-240
    832c:	00400313          	li	t1,4
    8330:	11136a63          	bltu	t1,a7,8444 <__utf8_mbtowc+0x280>
    8334:	00f70223          	sb	a5,4(a4)
    8338:	0e080263          	beqz	a6,841c <__utf8_mbtowc+0x258>
    833c:	00168893          	add	a7,a3,1
    8340:	011038b3          	snez	a7,a7
    8344:	00100313          	li	t1,1
    8348:	011686b3          	add	a3,a3,a7
    834c:	0c680e63          	beq	a6,t1,8428 <__utf8_mbtowc+0x264>
    8350:	00574883          	lbu	a7,5(a4)
    8354:	0f000313          	li	t1,240
    8358:	10678863          	beq	a5,t1,8468 <__utf8_mbtowc+0x2a4>
    835c:	0f400313          	li	t1,244
    8360:	14678863          	beq	a5,t1,84b0 <__utf8_mbtowc+0x2ec>
    8364:	f8088313          	add	t1,a7,-128
    8368:	03f00e93          	li	t4,63
    836c:	0c6eec63          	bltu	t4,t1,8444 <__utf8_mbtowc+0x280>
    8370:	011702a3          	sb	a7,5(a4)
    8374:	00100313          	li	t1,1
    8378:	0e680e63          	beq	a6,t1,8474 <__utf8_mbtowc+0x2b0>
    837c:	00072f03          	lw	t5,0(a4)
    8380:	00168813          	add	a6,a3,1
    8384:	01003833          	snez	a6,a6
    8388:	00200313          	li	t1,2
    838c:	010686b3          	add	a3,a3,a6
    8390:	0e6f0863          	beq	t5,t1,8480 <__utf8_mbtowc+0x2bc>
    8394:	00674803          	lbu	a6,6(a4)
    8398:	f8080693          	add	a3,a6,-128 # ef80 <__fini_array_end+0x3f80>
    839c:	0adee463          	bltu	t4,a3,8444 <__utf8_mbtowc+0x280>
    83a0:	00a60633          	add	a2,a2,a0
    83a4:	00064683          	lbu	a3,0(a2)
    83a8:	03f00613          	li	a2,63
    83ac:	00150513          	add	a0,a0,1
    83b0:	f8068313          	add	t1,a3,-128
    83b4:	08666863          	bltu	a2,t1,8444 <__utf8_mbtowc+0x280>
    83b8:	001c0337          	lui	t1,0x1c0
    83bc:	01279793          	sll	a5,a5,0x12
    83c0:	0067f7b3          	and	a5,a5,t1
    83c4:	00c89893          	sll	a7,a7,0xc
    83c8:	00001637          	lui	a2,0x1
    83cc:	0003f337          	lui	t1,0x3f
    83d0:	0068f8b3          	and	a7,a7,t1
    83d4:	00681813          	sll	a6,a6,0x6
    83d8:	fc060613          	add	a2,a2,-64 # fc0 <uart_putc+0x1c>
    83dc:	0117e7b3          	or	a5,a5,a7
    83e0:	00c87833          	and	a6,a6,a2
    83e4:	0107e7b3          	or	a5,a5,a6
    83e8:	03f6f693          	and	a3,a3,63
    83ec:	00d7e7b3          	or	a5,a5,a3
    83f0:	00f5a023          	sw	a5,0(a1)
    83f4:	00072023          	sw	zero,0(a4)
    83f8:	e75ff06f          	j	826c <__utf8_mbtowc+0xa8>
    83fc:	00100813          	li	a6,1
    8400:	01072023          	sw	a6,0(a4)
    8404:	05068e63          	beq	a3,a6,8460 <__utf8_mbtowc+0x29c>
    8408:	00a60833          	add	a6,a2,a0
    840c:	00084883          	lbu	a7,0(a6)
    8410:	00150513          	add	a0,a0,1
    8414:	00100813          	li	a6,1
    8418:	e91ff06f          	j	82a8 <__utf8_mbtowc+0xe4>
    841c:	00100813          	li	a6,1
    8420:	01072023          	sw	a6,0(a4)
    8424:	03068e63          	beq	a3,a6,8460 <__utf8_mbtowc+0x29c>
    8428:	00a60833          	add	a6,a2,a0
    842c:	00084883          	lbu	a7,0(a6)
    8430:	00150513          	add	a0,a0,1
    8434:	00100813          	li	a6,1
    8438:	f1dff06f          	j	8354 <__utf8_mbtowc+0x190>
    843c:	09f00313          	li	t1,159
    8440:	e71348e3          	blt	t1,a7,82b0 <__utf8_mbtowc+0xec>
    8444:	08a00793          	li	a5,138
    8448:	00fe2023          	sw	a5,0(t3)
    844c:	fff00513          	li	a0,-1
    8450:	e1dff06f          	j	826c <__utf8_mbtowc+0xa8>
    8454:	00200813          	li	a6,2
    8458:	01072023          	sw	a6,0(a4)
    845c:	e70696e3          	bne	a3,a6,82c8 <__utf8_mbtowc+0x104>
    8460:	ffe00513          	li	a0,-2
    8464:	e09ff06f          	j	826c <__utf8_mbtowc+0xa8>
    8468:	08f00313          	li	t1,143
    846c:	ef134ce3          	blt	t1,a7,8364 <__utf8_mbtowc+0x1a0>
    8470:	fd5ff06f          	j	8444 <__utf8_mbtowc+0x280>
    8474:	00200813          	li	a6,2
    8478:	01072023          	sw	a6,0(a4)
    847c:	ff0682e3          	beq	a3,a6,8460 <__utf8_mbtowc+0x29c>
    8480:	00a60833          	add	a6,a2,a0
    8484:	00084803          	lbu	a6,0(a6)
    8488:	03f00313          	li	t1,63
    848c:	00150513          	add	a0,a0,1
    8490:	f8080e93          	add	t4,a6,-128
    8494:	fbd368e3          	bltu	t1,t4,8444 <__utf8_mbtowc+0x280>
    8498:	00300313          	li	t1,3
    849c:	01070323          	sb	a6,6(a4)
    84a0:	00672023          	sw	t1,0(a4)
    84a4:	ee669ee3          	bne	a3,t1,83a0 <__utf8_mbtowc+0x1dc>
    84a8:	ffe00513          	li	a0,-2
    84ac:	dc1ff06f          	j	826c <__utf8_mbtowc+0xa8>
    84b0:	08f00313          	li	t1,143
    84b4:	eb1358e3          	bge	t1,a7,8364 <__utf8_mbtowc+0x1a0>
    84b8:	f8dff06f          	j	8444 <__utf8_mbtowc+0x280>

000084bc <__sjis_mbtowc>:
    84bc:	00050813          	mv	a6,a0
    84c0:	08058263          	beqz	a1,8544 <__sjis_mbtowc+0x88>
    84c4:	12060463          	beqz	a2,85ec <__sjis_mbtowc+0x130>
    84c8:	12068a63          	beqz	a3,85fc <__sjis_mbtowc+0x140>
    84cc:	00072503          	lw	a0,0(a4)
    84d0:	00064783          	lbu	a5,0(a2)
    84d4:	00050e63          	beqz	a0,84f0 <__sjis_mbtowc+0x34>
    84d8:	00100693          	li	a3,1
    84dc:	02d50c63          	beq	a0,a3,8514 <__sjis_mbtowc+0x58>
    84e0:	00f5a023          	sw	a5,0(a1)
    84e4:	00064503          	lbu	a0,0(a2)
    84e8:	00a03533          	snez	a0,a0
    84ec:	00008067          	ret
    84f0:	f7f78513          	add	a0,a5,-129
    84f4:	01e00893          	li	a7,30
    84f8:	08a8e263          	bltu	a7,a0,857c <__sjis_mbtowc+0xc0>
    84fc:	00100513          	li	a0,1
    8500:	00f70223          	sb	a5,4(a4)
    8504:	00a72023          	sw	a0,0(a4)
    8508:	0ea68a63          	beq	a3,a0,85fc <__sjis_mbtowc+0x140>
    850c:	00164783          	lbu	a5,1(a2)
    8510:	00200513          	li	a0,2
    8514:	fc078693          	add	a3,a5,-64
    8518:	03e00613          	li	a2,62
    851c:	00d67863          	bgeu	a2,a3,852c <__sjis_mbtowc+0x70>
    8520:	f8078693          	add	a3,a5,-128
    8524:	07c00613          	li	a2,124
    8528:	0ed66263          	bltu	a2,a3,860c <__sjis_mbtowc+0x150>
    852c:	00474683          	lbu	a3,4(a4)
    8530:	00869693          	sll	a3,a3,0x8
    8534:	00f687b3          	add	a5,a3,a5
    8538:	00f5a023          	sw	a5,0(a1)
    853c:	00072023          	sw	zero,0(a4)
    8540:	00008067          	ret
    8544:	ff010113          	add	sp,sp,-16
    8548:	00c10593          	add	a1,sp,12
    854c:	0a060463          	beqz	a2,85f4 <__sjis_mbtowc+0x138>
    8550:	0a068a63          	beqz	a3,8604 <__sjis_mbtowc+0x148>
    8554:	00072503          	lw	a0,0(a4)
    8558:	00064783          	lbu	a5,0(a2)
    855c:	02050863          	beqz	a0,858c <__sjis_mbtowc+0xd0>
    8560:	00100693          	li	a3,1
    8564:	04d50c63          	beq	a0,a3,85bc <__sjis_mbtowc+0x100>
    8568:	00f5a023          	sw	a5,0(a1)
    856c:	00064503          	lbu	a0,0(a2)
    8570:	00a03533          	snez	a0,a0
    8574:	01010113          	add	sp,sp,16
    8578:	00008067          	ret
    857c:	f2078513          	add	a0,a5,-224
    8580:	00f00893          	li	a7,15
    8584:	f4a8eee3          	bltu	a7,a0,84e0 <__sjis_mbtowc+0x24>
    8588:	f75ff06f          	j	84fc <__sjis_mbtowc+0x40>
    858c:	f7f78513          	add	a0,a5,-129
    8590:	01e00893          	li	a7,30
    8594:	00a8f863          	bgeu	a7,a0,85a4 <__sjis_mbtowc+0xe8>
    8598:	f2078513          	add	a0,a5,-224
    859c:	00f00893          	li	a7,15
    85a0:	fca8e4e3          	bltu	a7,a0,8568 <__sjis_mbtowc+0xac>
    85a4:	00100513          	li	a0,1
    85a8:	00f70223          	sb	a5,4(a4)
    85ac:	00a72023          	sw	a0,0(a4)
    85b0:	04a68a63          	beq	a3,a0,8604 <__sjis_mbtowc+0x148>
    85b4:	00164783          	lbu	a5,1(a2)
    85b8:	00200513          	li	a0,2
    85bc:	fc078693          	add	a3,a5,-64
    85c0:	03e00613          	li	a2,62
    85c4:	00d67863          	bgeu	a2,a3,85d4 <__sjis_mbtowc+0x118>
    85c8:	f8078693          	add	a3,a5,-128
    85cc:	07c00613          	li	a2,124
    85d0:	04d66663          	bltu	a2,a3,861c <__sjis_mbtowc+0x160>
    85d4:	00474683          	lbu	a3,4(a4)
    85d8:	00869693          	sll	a3,a3,0x8
    85dc:	00f687b3          	add	a5,a3,a5
    85e0:	00f5a023          	sw	a5,0(a1)
    85e4:	00072023          	sw	zero,0(a4)
    85e8:	f8dff06f          	j	8574 <__sjis_mbtowc+0xb8>
    85ec:	00000513          	li	a0,0
    85f0:	00008067          	ret
    85f4:	00000513          	li	a0,0
    85f8:	f7dff06f          	j	8574 <__sjis_mbtowc+0xb8>
    85fc:	ffe00513          	li	a0,-2
    8600:	00008067          	ret
    8604:	ffe00513          	li	a0,-2
    8608:	f6dff06f          	j	8574 <__sjis_mbtowc+0xb8>
    860c:	08a00793          	li	a5,138
    8610:	00f82023          	sw	a5,0(a6)
    8614:	fff00513          	li	a0,-1
    8618:	00008067          	ret
    861c:	08a00793          	li	a5,138
    8620:	00f82023          	sw	a5,0(a6)
    8624:	fff00513          	li	a0,-1
    8628:	f4dff06f          	j	8574 <__sjis_mbtowc+0xb8>

0000862c <__eucjp_mbtowc>:
    862c:	00050813          	mv	a6,a0
    8630:	0c058263          	beqz	a1,86f4 <__eucjp_mbtowc+0xc8>
    8634:	18060663          	beqz	a2,87c0 <__eucjp_mbtowc+0x194>
    8638:	1c068463          	beqz	a3,8800 <__eucjp_mbtowc+0x1d4>
    863c:	00072503          	lw	a0,0(a4)
    8640:	00064783          	lbu	a5,0(a2)
    8644:	02050263          	beqz	a0,8668 <__eucjp_mbtowc+0x3c>
    8648:	00100893          	li	a7,1
    864c:	05150663          	beq	a0,a7,8698 <__eucjp_mbtowc+0x6c>
    8650:	00200693          	li	a3,2
    8654:	18d50463          	beq	a0,a3,87dc <__eucjp_mbtowc+0x1b0>
    8658:	00f5a023          	sw	a5,0(a1)
    865c:	00064503          	lbu	a0,0(a2)
    8660:	00a03533          	snez	a0,a0
    8664:	00008067          	ret
    8668:	f7278513          	add	a0,a5,-142
    866c:	00100893          	li	a7,1
    8670:	00a8f863          	bgeu	a7,a0,8680 <__eucjp_mbtowc+0x54>
    8674:	f5f78513          	add	a0,a5,-161
    8678:	05d00893          	li	a7,93
    867c:	fca8eee3          	bltu	a7,a0,8658 <__eucjp_mbtowc+0x2c>
    8680:	00100513          	li	a0,1
    8684:	00f70223          	sb	a5,4(a4)
    8688:	00a72023          	sw	a0,0(a4)
    868c:	16a68a63          	beq	a3,a0,8800 <__eucjp_mbtowc+0x1d4>
    8690:	00164783          	lbu	a5,1(a2)
    8694:	00200513          	li	a0,2
    8698:	f5f78893          	add	a7,a5,-161
    869c:	05d00313          	li	t1,93
    86a0:	17136863          	bltu	t1,a7,8810 <__eucjp_mbtowc+0x1e4>
    86a4:	00474883          	lbu	a7,4(a4)
    86a8:	08f00313          	li	t1,143
    86ac:	10689e63          	bne	a7,t1,87c8 <__eucjp_mbtowc+0x19c>
    86b0:	00f702a3          	sb	a5,5(a4)
    86b4:	00200793          	li	a5,2
    86b8:	00f72023          	sw	a5,0(a4)
    86bc:	14d57263          	bgeu	a0,a3,8800 <__eucjp_mbtowc+0x1d4>
    86c0:	00a60633          	add	a2,a2,a0
    86c4:	00064783          	lbu	a5,0(a2)
    86c8:	00150513          	add	a0,a0,1
    86cc:	f5f78693          	add	a3,a5,-161
    86d0:	05d00613          	li	a2,93
    86d4:	12d66e63          	bltu	a2,a3,8810 <__eucjp_mbtowc+0x1e4>
    86d8:	00574683          	lbu	a3,5(a4)
    86dc:	07f7f793          	and	a5,a5,127
    86e0:	00869693          	sll	a3,a3,0x8
    86e4:	00f687b3          	add	a5,a3,a5
    86e8:	00f5a023          	sw	a5,0(a1)
    86ec:	00072023          	sw	zero,0(a4)
    86f0:	00008067          	ret
    86f4:	ff010113          	add	sp,sp,-16
    86f8:	00c10593          	add	a1,sp,12
    86fc:	0e060463          	beqz	a2,87e4 <__eucjp_mbtowc+0x1b8>
    8700:	12068063          	beqz	a3,8820 <__eucjp_mbtowc+0x1f4>
    8704:	00072503          	lw	a0,0(a4)
    8708:	00064783          	lbu	a5,0(a2)
    870c:	02050463          	beqz	a0,8734 <__eucjp_mbtowc+0x108>
    8710:	00100893          	li	a7,1
    8714:	05150863          	beq	a0,a7,8764 <__eucjp_mbtowc+0x138>
    8718:	00200693          	li	a3,2
    871c:	0ed50663          	beq	a0,a3,8808 <__eucjp_mbtowc+0x1dc>
    8720:	00f5a023          	sw	a5,0(a1)
    8724:	00064503          	lbu	a0,0(a2)
    8728:	00a03533          	snez	a0,a0
    872c:	01010113          	add	sp,sp,16
    8730:	00008067          	ret
    8734:	f7278513          	add	a0,a5,-142
    8738:	00100893          	li	a7,1
    873c:	00a8f863          	bgeu	a7,a0,874c <__eucjp_mbtowc+0x120>
    8740:	f5f78513          	add	a0,a5,-161
    8744:	05d00893          	li	a7,93
    8748:	fca8ece3          	bltu	a7,a0,8720 <__eucjp_mbtowc+0xf4>
    874c:	00100513          	li	a0,1
    8750:	00f70223          	sb	a5,4(a4)
    8754:	00a72023          	sw	a0,0(a4)
    8758:	0ca68463          	beq	a3,a0,8820 <__eucjp_mbtowc+0x1f4>
    875c:	00164783          	lbu	a5,1(a2)
    8760:	00200513          	li	a0,2
    8764:	f5f78893          	add	a7,a5,-161
    8768:	05d00313          	li	t1,93
    876c:	0b136e63          	bltu	t1,a7,8828 <__eucjp_mbtowc+0x1fc>
    8770:	00474883          	lbu	a7,4(a4)
    8774:	08f00313          	li	t1,143
    8778:	06689a63          	bne	a7,t1,87ec <__eucjp_mbtowc+0x1c0>
    877c:	00f702a3          	sb	a5,5(a4)
    8780:	00200793          	li	a5,2
    8784:	00f72023          	sw	a5,0(a4)
    8788:	08d57c63          	bgeu	a0,a3,8820 <__eucjp_mbtowc+0x1f4>
    878c:	00a60633          	add	a2,a2,a0
    8790:	00064783          	lbu	a5,0(a2)
    8794:	00150513          	add	a0,a0,1
    8798:	f5f78693          	add	a3,a5,-161
    879c:	05d00613          	li	a2,93
    87a0:	08d66463          	bltu	a2,a3,8828 <__eucjp_mbtowc+0x1fc>
    87a4:	00574683          	lbu	a3,5(a4)
    87a8:	07f7f793          	and	a5,a5,127
    87ac:	00869693          	sll	a3,a3,0x8
    87b0:	00f687b3          	add	a5,a3,a5
    87b4:	00f5a023          	sw	a5,0(a1)
    87b8:	00072023          	sw	zero,0(a4)
    87bc:	f71ff06f          	j	872c <__eucjp_mbtowc+0x100>
    87c0:	00000513          	li	a0,0
    87c4:	00008067          	ret
    87c8:	00889893          	sll	a7,a7,0x8
    87cc:	00f888b3          	add	a7,a7,a5
    87d0:	0115a023          	sw	a7,0(a1)
    87d4:	00072023          	sw	zero,0(a4)
    87d8:	00008067          	ret
    87dc:	00100513          	li	a0,1
    87e0:	eedff06f          	j	86cc <__eucjp_mbtowc+0xa0>
    87e4:	00000513          	li	a0,0
    87e8:	f45ff06f          	j	872c <__eucjp_mbtowc+0x100>
    87ec:	00889893          	sll	a7,a7,0x8
    87f0:	00f888b3          	add	a7,a7,a5
    87f4:	0115a023          	sw	a7,0(a1)
    87f8:	00072023          	sw	zero,0(a4)
    87fc:	f31ff06f          	j	872c <__eucjp_mbtowc+0x100>
    8800:	ffe00513          	li	a0,-2
    8804:	00008067          	ret
    8808:	00100513          	li	a0,1
    880c:	f8dff06f          	j	8798 <__eucjp_mbtowc+0x16c>
    8810:	08a00793          	li	a5,138
    8814:	00f82023          	sw	a5,0(a6)
    8818:	fff00513          	li	a0,-1
    881c:	00008067          	ret
    8820:	ffe00513          	li	a0,-2
    8824:	f09ff06f          	j	872c <__eucjp_mbtowc+0x100>
    8828:	08a00793          	li	a5,138
    882c:	00f82023          	sw	a5,0(a6)
    8830:	fff00513          	li	a0,-1
    8834:	ef9ff06f          	j	872c <__eucjp_mbtowc+0x100>

00008838 <__jis_mbtowc>:
    8838:	fe010113          	add	sp,sp,-32
    883c:	06058e63          	beqz	a1,88b8 <__jis_mbtowc+0x80>
    8840:	08060063          	beqz	a2,88c0 <__jis_mbtowc+0x88>
    8844:	1c068a63          	beqz	a3,8a18 <__jis_mbtowc+0x1e0>
    8848:	00812e23          	sw	s0,28(sp)
    884c:	00912c23          	sw	s1,24(sp)
    8850:	01212a23          	sw	s2,20(sp)
    8854:	01312823          	sw	s3,16(sp)
    8858:	00060e93          	mv	t4,a2
    885c:	000ec303          	lbu	t1,0(t4)
    8860:	00074903          	lbu	s2,0(a4)
    8864:	00060493          	mv	s1,a2
    8868:	00100893          	li	a7,1
    886c:	00028397          	auipc	t2,0x28
    8870:	28838393          	add	t2,t2,648 # 30af4 <JIS_state_table>
    8874:	00028297          	auipc	t0,0x28
    8878:	23828293          	add	t0,t0,568 # 30aac <JIS_action_table>
    887c:	02f00413          	li	s0,47
    8880:	00028f17          	auipc	t5,0x28
    8884:	154f0f13          	add	t5,t5,340 # 309d4 <categories+0x1c>
    8888:	00500f93          	li	t6,5
    888c:	00028e17          	auipc	t3,0x28
    8890:	208e0e13          	add	t3,t3,520 # 30a94 <categories+0xdc>
    8894:	0a030063          	beqz	t1,8934 <__jis_mbtowc+0xfc>
    8898:	fe530793          	add	a5,t1,-27 # 3efe5 <__heap_start+0x8fe5>
    889c:	0ff7f793          	zext.b	a5,a5
    88a0:	02f46863          	bltu	s0,a5,88d0 <__jis_mbtowc+0x98>
    88a4:	00279793          	sll	a5,a5,0x2
    88a8:	01e787b3          	add	a5,a5,t5
    88ac:	0007a783          	lw	a5,0(a5)
    88b0:	01e787b3          	add	a5,a5,t5
    88b4:	00078067          	jr	a5
    88b8:	00c10593          	add	a1,sp,12
    88bc:	f80614e3          	bnez	a2,8844 <__jis_mbtowc+0xc>
    88c0:	00072023          	sw	zero,0(a4)
    88c4:	00100513          	li	a0,1
    88c8:	02010113          	add	sp,sp,32
    88cc:	00008067          	ret
    88d0:	fdf30993          	add	s3,t1,-33
    88d4:	05d00793          	li	a5,93
    88d8:	0137b9b3          	sltu	s3,a5,s3
    88dc:	00798993          	add	s3,s3,7
    88e0:	00391793          	sll	a5,s2,0x3
    88e4:	012787b3          	add	a5,a5,s2
    88e8:	00f28833          	add	a6,t0,a5
    88ec:	01380833          	add	a6,a6,s3
    88f0:	00084803          	lbu	a6,0(a6)
    88f4:	00f387b3          	add	a5,t2,a5
    88f8:	013787b3          	add	a5,a5,s3
    88fc:	0007c903          	lbu	s2,0(a5)
    8900:	0d0fe863          	bltu	t6,a6,89d0 <__jis_mbtowc+0x198>
    8904:	00281813          	sll	a6,a6,0x2
    8908:	01c80833          	add	a6,a6,t3
    890c:	00082783          	lw	a5,0(a6)
    8910:	01c787b3          	add	a5,a5,t3
    8914:	00078067          	jr	a5
    8918:	00670223          	sb	t1,4(a4)
    891c:	001e8e93          	add	t4,t4,1
    8920:	00188793          	add	a5,a7,1
    8924:	0ed8f063          	bgeu	a7,a3,8a04 <__jis_mbtowc+0x1cc>
    8928:	000ec303          	lbu	t1,0(t4)
    892c:	00078893          	mv	a7,a5
    8930:	f60314e3          	bnez	t1,8898 <__jis_mbtowc+0x60>
    8934:	00600993          	li	s3,6
    8938:	fa9ff06f          	j	88e0 <__jis_mbtowc+0xa8>
    893c:	01148633          	add	a2,s1,a7
    8940:	fddff06f          	j	891c <__jis_mbtowc+0xe4>
    8944:	00100693          	li	a3,1
    8948:	00474783          	lbu	a5,4(a4)
    894c:	00d72023          	sw	a3,0(a4)
    8950:	000ec703          	lbu	a4,0(t4)
    8954:	00879793          	sll	a5,a5,0x8
    8958:	00088513          	mv	a0,a7
    895c:	00e787b3          	add	a5,a5,a4
    8960:	01c12403          	lw	s0,28(sp)
    8964:	01812483          	lw	s1,24(sp)
    8968:	01412903          	lw	s2,20(sp)
    896c:	01012983          	lw	s3,16(sp)
    8970:	00f5a023          	sw	a5,0(a1)
    8974:	02010113          	add	sp,sp,32
    8978:	00008067          	ret
    897c:	00072023          	sw	zero,0(a4)
    8980:	00064783          	lbu	a5,0(a2)
    8984:	00088513          	mv	a0,a7
    8988:	fd9ff06f          	j	8960 <__jis_mbtowc+0x128>
    898c:	01c12403          	lw	s0,28(sp)
    8990:	00072023          	sw	zero,0(a4)
    8994:	0005a023          	sw	zero,0(a1)
    8998:	01812483          	lw	s1,24(sp)
    899c:	01412903          	lw	s2,20(sp)
    89a0:	01012983          	lw	s3,16(sp)
    89a4:	00000513          	li	a0,0
    89a8:	02010113          	add	sp,sp,32
    89ac:	00008067          	ret
    89b0:	00200993          	li	s3,2
    89b4:	f2dff06f          	j	88e0 <__jis_mbtowc+0xa8>
    89b8:	00300993          	li	s3,3
    89bc:	f25ff06f          	j	88e0 <__jis_mbtowc+0xa8>
    89c0:	00400993          	li	s3,4
    89c4:	f1dff06f          	j	88e0 <__jis_mbtowc+0xa8>
    89c8:	00500993          	li	s3,5
    89cc:	f15ff06f          	j	88e0 <__jis_mbtowc+0xa8>
    89d0:	01c12403          	lw	s0,28(sp)
    89d4:	08a00793          	li	a5,138
    89d8:	00f52023          	sw	a5,0(a0)
    89dc:	01812483          	lw	s1,24(sp)
    89e0:	01412903          	lw	s2,20(sp)
    89e4:	01012983          	lw	s3,16(sp)
    89e8:	fff00513          	li	a0,-1
    89ec:	02010113          	add	sp,sp,32
    89f0:	00008067          	ret
    89f4:	00100993          	li	s3,1
    89f8:	ee9ff06f          	j	88e0 <__jis_mbtowc+0xa8>
    89fc:	00000993          	li	s3,0
    8a00:	ee1ff06f          	j	88e0 <__jis_mbtowc+0xa8>
    8a04:	01272023          	sw	s2,0(a4)
    8a08:	01c12403          	lw	s0,28(sp)
    8a0c:	01812483          	lw	s1,24(sp)
    8a10:	01412903          	lw	s2,20(sp)
    8a14:	01012983          	lw	s3,16(sp)
    8a18:	ffe00513          	li	a0,-2
    8a1c:	f59ff06f          	j	8974 <__jis_mbtowc+0x13c>

00008a20 <_realloc_r>:
    8a20:	fd010113          	add	sp,sp,-48
    8a24:	02912223          	sw	s1,36(sp)
    8a28:	02112623          	sw	ra,44(sp)
    8a2c:	00060493          	mv	s1,a2
    8a30:	1e058863          	beqz	a1,8c20 <_realloc_r+0x200>
    8a34:	02812423          	sw	s0,40(sp)
    8a38:	03212023          	sw	s2,32(sp)
    8a3c:	00058413          	mv	s0,a1
    8a40:	01312e23          	sw	s3,28(sp)
    8a44:	01512a23          	sw	s5,20(sp)
    8a48:	01412c23          	sw	s4,24(sp)
    8a4c:	00050913          	mv	s2,a0
    8a50:	b19fb0ef          	jal	4568 <__malloc_lock>
    8a54:	ffc42703          	lw	a4,-4(s0)
    8a58:	00b48793          	add	a5,s1,11
    8a5c:	01600693          	li	a3,22
    8a60:	ff840a93          	add	s5,s0,-8
    8a64:	ffc77993          	and	s3,a4,-4
    8a68:	10f6f263          	bgeu	a3,a5,8b6c <_realloc_r+0x14c>
    8a6c:	ff87fa13          	and	s4,a5,-8
    8a70:	1007c263          	bltz	a5,8b74 <_realloc_r+0x154>
    8a74:	109a6063          	bltu	s4,s1,8b74 <_realloc_r+0x154>
    8a78:	1349d263          	bge	s3,s4,8b9c <_realloc_r+0x17c>
    8a7c:	01812423          	sw	s8,8(sp)
    8a80:	0002bc17          	auipc	s8,0x2b
    8a84:	6b0c0c13          	add	s8,s8,1712 # 34130 <__malloc_av_>
    8a88:	008c2603          	lw	a2,8(s8)
    8a8c:	013a86b3          	add	a3,s5,s3
    8a90:	0046a783          	lw	a5,4(a3)
    8a94:	1cd60863          	beq	a2,a3,8c64 <_realloc_r+0x244>
    8a98:	ffe7f613          	and	a2,a5,-2
    8a9c:	00c68633          	add	a2,a3,a2
    8aa0:	00462603          	lw	a2,4(a2)
    8aa4:	00167613          	and	a2,a2,1
    8aa8:	14061a63          	bnez	a2,8bfc <_realloc_r+0x1dc>
    8aac:	ffc7f793          	and	a5,a5,-4
    8ab0:	00f98633          	add	a2,s3,a5
    8ab4:	0d465863          	bge	a2,s4,8b84 <_realloc_r+0x164>
    8ab8:	00177713          	and	a4,a4,1
    8abc:	02071c63          	bnez	a4,8af4 <_realloc_r+0xd4>
    8ac0:	01712623          	sw	s7,12(sp)
    8ac4:	ff842b83          	lw	s7,-8(s0)
    8ac8:	01612823          	sw	s6,16(sp)
    8acc:	417a8bb3          	sub	s7,s5,s7
    8ad0:	004ba703          	lw	a4,4(s7)
    8ad4:	ffc77713          	and	a4,a4,-4
    8ad8:	00e787b3          	add	a5,a5,a4
    8adc:	01378b33          	add	s6,a5,s3
    8ae0:	334b5c63          	bge	s6,s4,8e18 <_realloc_r+0x3f8>
    8ae4:	00e98b33          	add	s6,s3,a4
    8ae8:	294b5863          	bge	s6,s4,8d78 <_realloc_r+0x358>
    8aec:	01012b03          	lw	s6,16(sp)
    8af0:	00c12b83          	lw	s7,12(sp)
    8af4:	00048593          	mv	a1,s1
    8af8:	00090513          	mv	a0,s2
    8afc:	a8cfb0ef          	jal	3d88 <_malloc_r>
    8b00:	00050493          	mv	s1,a0
    8b04:	40050863          	beqz	a0,8f14 <_realloc_r+0x4f4>
    8b08:	ffc42783          	lw	a5,-4(s0)
    8b0c:	ff850713          	add	a4,a0,-8
    8b10:	ffe7f793          	and	a5,a5,-2
    8b14:	00fa87b3          	add	a5,s5,a5
    8b18:	24e78663          	beq	a5,a4,8d64 <_realloc_r+0x344>
    8b1c:	ffc98613          	add	a2,s3,-4
    8b20:	02400793          	li	a5,36
    8b24:	2ec7e463          	bltu	a5,a2,8e0c <_realloc_r+0x3ec>
    8b28:	01300713          	li	a4,19
    8b2c:	20c76a63          	bltu	a4,a2,8d40 <_realloc_r+0x320>
    8b30:	00050793          	mv	a5,a0
    8b34:	00040713          	mv	a4,s0
    8b38:	00072683          	lw	a3,0(a4)
    8b3c:	00d7a023          	sw	a3,0(a5)
    8b40:	00472683          	lw	a3,4(a4)
    8b44:	00d7a223          	sw	a3,4(a5)
    8b48:	00872703          	lw	a4,8(a4)
    8b4c:	00e7a423          	sw	a4,8(a5)
    8b50:	00040593          	mv	a1,s0
    8b54:	00090513          	mv	a0,s2
    8b58:	f05fa0ef          	jal	3a5c <_free_r>
    8b5c:	00090513          	mv	a0,s2
    8b60:	a15fb0ef          	jal	4574 <__malloc_unlock>
    8b64:	00812c03          	lw	s8,8(sp)
    8b68:	06c0006f          	j	8bd4 <_realloc_r+0x1b4>
    8b6c:	01000a13          	li	s4,16
    8b70:	f09a74e3          	bgeu	s4,s1,8a78 <_realloc_r+0x58>
    8b74:	00c00793          	li	a5,12
    8b78:	00f92023          	sw	a5,0(s2)
    8b7c:	00000493          	li	s1,0
    8b80:	0540006f          	j	8bd4 <_realloc_r+0x1b4>
    8b84:	00c6a783          	lw	a5,12(a3)
    8b88:	0086a703          	lw	a4,8(a3)
    8b8c:	00812c03          	lw	s8,8(sp)
    8b90:	00060993          	mv	s3,a2
    8b94:	00f72623          	sw	a5,12(a4)
    8b98:	00e7a423          	sw	a4,8(a5)
    8b9c:	004aa783          	lw	a5,4(s5)
    8ba0:	414986b3          	sub	a3,s3,s4
    8ba4:	00f00613          	li	a2,15
    8ba8:	0017f793          	and	a5,a5,1
    8bac:	013a8733          	add	a4,s5,s3
    8bb0:	08d66263          	bltu	a2,a3,8c34 <_realloc_r+0x214>
    8bb4:	0137e7b3          	or	a5,a5,s3
    8bb8:	00faa223          	sw	a5,4(s5)
    8bbc:	00472783          	lw	a5,4(a4)
    8bc0:	0017e793          	or	a5,a5,1
    8bc4:	00f72223          	sw	a5,4(a4)
    8bc8:	00090513          	mv	a0,s2
    8bcc:	9a9fb0ef          	jal	4574 <__malloc_unlock>
    8bd0:	00040493          	mv	s1,s0
    8bd4:	02812403          	lw	s0,40(sp)
    8bd8:	02c12083          	lw	ra,44(sp)
    8bdc:	02012903          	lw	s2,32(sp)
    8be0:	01c12983          	lw	s3,28(sp)
    8be4:	01812a03          	lw	s4,24(sp)
    8be8:	01412a83          	lw	s5,20(sp)
    8bec:	00048513          	mv	a0,s1
    8bf0:	02412483          	lw	s1,36(sp)
    8bf4:	03010113          	add	sp,sp,48
    8bf8:	00008067          	ret
    8bfc:	00177713          	and	a4,a4,1
    8c00:	ee071ae3          	bnez	a4,8af4 <_realloc_r+0xd4>
    8c04:	01712623          	sw	s7,12(sp)
    8c08:	ff842b83          	lw	s7,-8(s0)
    8c0c:	01612823          	sw	s6,16(sp)
    8c10:	417a8bb3          	sub	s7,s5,s7
    8c14:	004ba703          	lw	a4,4(s7)
    8c18:	ffc77713          	and	a4,a4,-4
    8c1c:	ec9ff06f          	j	8ae4 <_realloc_r+0xc4>
    8c20:	02c12083          	lw	ra,44(sp)
    8c24:	02412483          	lw	s1,36(sp)
    8c28:	00060593          	mv	a1,a2
    8c2c:	03010113          	add	sp,sp,48
    8c30:	958fb06f          	j	3d88 <_malloc_r>
    8c34:	0147e7b3          	or	a5,a5,s4
    8c38:	00faa223          	sw	a5,4(s5)
    8c3c:	014a85b3          	add	a1,s5,s4
    8c40:	0016e693          	or	a3,a3,1
    8c44:	00d5a223          	sw	a3,4(a1)
    8c48:	00472783          	lw	a5,4(a4)
    8c4c:	00858593          	add	a1,a1,8
    8c50:	00090513          	mv	a0,s2
    8c54:	0017e793          	or	a5,a5,1
    8c58:	00f72223          	sw	a5,4(a4)
    8c5c:	e01fa0ef          	jal	3a5c <_free_r>
    8c60:	f69ff06f          	j	8bc8 <_realloc_r+0x1a8>
    8c64:	ffc7f793          	and	a5,a5,-4
    8c68:	013786b3          	add	a3,a5,s3
    8c6c:	010a0613          	add	a2,s4,16
    8c70:	26c6d063          	bge	a3,a2,8ed0 <_realloc_r+0x4b0>
    8c74:	00177713          	and	a4,a4,1
    8c78:	e6071ee3          	bnez	a4,8af4 <_realloc_r+0xd4>
    8c7c:	01712623          	sw	s7,12(sp)
    8c80:	ff842b83          	lw	s7,-8(s0)
    8c84:	01612823          	sw	s6,16(sp)
    8c88:	417a8bb3          	sub	s7,s5,s7
    8c8c:	004ba703          	lw	a4,4(s7)
    8c90:	ffc77713          	and	a4,a4,-4
    8c94:	00e787b3          	add	a5,a5,a4
    8c98:	01378b33          	add	s6,a5,s3
    8c9c:	e4cb44e3          	blt	s6,a2,8ae4 <_realloc_r+0xc4>
    8ca0:	00cba783          	lw	a5,12(s7)
    8ca4:	008ba703          	lw	a4,8(s7)
    8ca8:	ffc98613          	add	a2,s3,-4
    8cac:	02400693          	li	a3,36
    8cb0:	00f72623          	sw	a5,12(a4)
    8cb4:	00e7a423          	sw	a4,8(a5)
    8cb8:	008b8493          	add	s1,s7,8
    8cbc:	28c6e463          	bltu	a3,a2,8f44 <_realloc_r+0x524>
    8cc0:	01300713          	li	a4,19
    8cc4:	00048793          	mv	a5,s1
    8cc8:	02c77263          	bgeu	a4,a2,8cec <_realloc_r+0x2cc>
    8ccc:	00042703          	lw	a4,0(s0)
    8cd0:	01b00793          	li	a5,27
    8cd4:	00eba423          	sw	a4,8(s7)
    8cd8:	00442703          	lw	a4,4(s0)
    8cdc:	00eba623          	sw	a4,12(s7)
    8ce0:	26c7ea63          	bltu	a5,a2,8f54 <_realloc_r+0x534>
    8ce4:	00840413          	add	s0,s0,8
    8ce8:	010b8793          	add	a5,s7,16
    8cec:	00042703          	lw	a4,0(s0)
    8cf0:	00e7a023          	sw	a4,0(a5)
    8cf4:	00442703          	lw	a4,4(s0)
    8cf8:	00e7a223          	sw	a4,4(a5)
    8cfc:	00842703          	lw	a4,8(s0)
    8d00:	00e7a423          	sw	a4,8(a5)
    8d04:	014b8733          	add	a4,s7,s4
    8d08:	414b07b3          	sub	a5,s6,s4
    8d0c:	00ec2423          	sw	a4,8(s8)
    8d10:	0017e793          	or	a5,a5,1
    8d14:	00f72223          	sw	a5,4(a4)
    8d18:	004ba783          	lw	a5,4(s7)
    8d1c:	00090513          	mv	a0,s2
    8d20:	0017f793          	and	a5,a5,1
    8d24:	0147e7b3          	or	a5,a5,s4
    8d28:	00fba223          	sw	a5,4(s7)
    8d2c:	849fb0ef          	jal	4574 <__malloc_unlock>
    8d30:	01012b03          	lw	s6,16(sp)
    8d34:	00c12b83          	lw	s7,12(sp)
    8d38:	00812c03          	lw	s8,8(sp)
    8d3c:	e99ff06f          	j	8bd4 <_realloc_r+0x1b4>
    8d40:	00042683          	lw	a3,0(s0)
    8d44:	01b00713          	li	a4,27
    8d48:	00d52023          	sw	a3,0(a0)
    8d4c:	00442683          	lw	a3,4(s0)
    8d50:	00d52223          	sw	a3,4(a0)
    8d54:	14c76e63          	bltu	a4,a2,8eb0 <_realloc_r+0x490>
    8d58:	00840713          	add	a4,s0,8
    8d5c:	00850793          	add	a5,a0,8
    8d60:	dd9ff06f          	j	8b38 <_realloc_r+0x118>
    8d64:	ffc52783          	lw	a5,-4(a0)
    8d68:	00812c03          	lw	s8,8(sp)
    8d6c:	ffc7f793          	and	a5,a5,-4
    8d70:	00f989b3          	add	s3,s3,a5
    8d74:	e29ff06f          	j	8b9c <_realloc_r+0x17c>
    8d78:	00cba783          	lw	a5,12(s7)
    8d7c:	008ba703          	lw	a4,8(s7)
    8d80:	ffc98613          	add	a2,s3,-4
    8d84:	02400693          	li	a3,36
    8d88:	00f72623          	sw	a5,12(a4)
    8d8c:	00e7a423          	sw	a4,8(a5)
    8d90:	008b8493          	add	s1,s7,8
    8d94:	10c6e663          	bltu	a3,a2,8ea0 <_realloc_r+0x480>
    8d98:	01300713          	li	a4,19
    8d9c:	00048793          	mv	a5,s1
    8da0:	02c77c63          	bgeu	a4,a2,8dd8 <_realloc_r+0x3b8>
    8da4:	00042703          	lw	a4,0(s0)
    8da8:	01b00793          	li	a5,27
    8dac:	00eba423          	sw	a4,8(s7)
    8db0:	00442703          	lw	a4,4(s0)
    8db4:	00eba623          	sw	a4,12(s7)
    8db8:	14c7f863          	bgeu	a5,a2,8f08 <_realloc_r+0x4e8>
    8dbc:	00842783          	lw	a5,8(s0)
    8dc0:	00fba823          	sw	a5,16(s7)
    8dc4:	00c42783          	lw	a5,12(s0)
    8dc8:	00fbaa23          	sw	a5,20(s7)
    8dcc:	0ad60c63          	beq	a2,a3,8e84 <_realloc_r+0x464>
    8dd0:	01040413          	add	s0,s0,16
    8dd4:	018b8793          	add	a5,s7,24
    8dd8:	00042703          	lw	a4,0(s0)
    8ddc:	00e7a023          	sw	a4,0(a5)
    8de0:	00442703          	lw	a4,4(s0)
    8de4:	00e7a223          	sw	a4,4(a5)
    8de8:	00842703          	lw	a4,8(s0)
    8dec:	00e7a423          	sw	a4,8(a5)
    8df0:	000b0993          	mv	s3,s6
    8df4:	000b8a93          	mv	s5,s7
    8df8:	01012b03          	lw	s6,16(sp)
    8dfc:	00c12b83          	lw	s7,12(sp)
    8e00:	00812c03          	lw	s8,8(sp)
    8e04:	00048413          	mv	s0,s1
    8e08:	d95ff06f          	j	8b9c <_realloc_r+0x17c>
    8e0c:	00040593          	mv	a1,s0
    8e10:	d15fe0ef          	jal	7b24 <memmove>
    8e14:	d3dff06f          	j	8b50 <_realloc_r+0x130>
    8e18:	00c6a783          	lw	a5,12(a3)
    8e1c:	0086a703          	lw	a4,8(a3)
    8e20:	ffc98613          	add	a2,s3,-4
    8e24:	02400693          	li	a3,36
    8e28:	00f72623          	sw	a5,12(a4)
    8e2c:	00e7a423          	sw	a4,8(a5)
    8e30:	008ba703          	lw	a4,8(s7)
    8e34:	00cba783          	lw	a5,12(s7)
    8e38:	008b8493          	add	s1,s7,8
    8e3c:	00f72623          	sw	a5,12(a4)
    8e40:	00e7a423          	sw	a4,8(a5)
    8e44:	04c6ee63          	bltu	a3,a2,8ea0 <_realloc_r+0x480>
    8e48:	01300713          	li	a4,19
    8e4c:	00048793          	mv	a5,s1
    8e50:	f8c774e3          	bgeu	a4,a2,8dd8 <_realloc_r+0x3b8>
    8e54:	00042703          	lw	a4,0(s0)
    8e58:	01b00793          	li	a5,27
    8e5c:	00eba423          	sw	a4,8(s7)
    8e60:	00442703          	lw	a4,4(s0)
    8e64:	00eba623          	sw	a4,12(s7)
    8e68:	0ac7f063          	bgeu	a5,a2,8f08 <_realloc_r+0x4e8>
    8e6c:	00842703          	lw	a4,8(s0)
    8e70:	02400793          	li	a5,36
    8e74:	00eba823          	sw	a4,16(s7)
    8e78:	00c42703          	lw	a4,12(s0)
    8e7c:	00ebaa23          	sw	a4,20(s7)
    8e80:	f4f618e3          	bne	a2,a5,8dd0 <_realloc_r+0x3b0>
    8e84:	01042703          	lw	a4,16(s0)
    8e88:	020b8793          	add	a5,s7,32
    8e8c:	01840413          	add	s0,s0,24
    8e90:	00ebac23          	sw	a4,24(s7)
    8e94:	ffc42703          	lw	a4,-4(s0)
    8e98:	00ebae23          	sw	a4,28(s7)
    8e9c:	f3dff06f          	j	8dd8 <_realloc_r+0x3b8>
    8ea0:	00040593          	mv	a1,s0
    8ea4:	00048513          	mv	a0,s1
    8ea8:	c7dfe0ef          	jal	7b24 <memmove>
    8eac:	f45ff06f          	j	8df0 <_realloc_r+0x3d0>
    8eb0:	00842703          	lw	a4,8(s0)
    8eb4:	00e52423          	sw	a4,8(a0)
    8eb8:	00c42703          	lw	a4,12(s0)
    8ebc:	00e52623          	sw	a4,12(a0)
    8ec0:	06f60463          	beq	a2,a5,8f28 <_realloc_r+0x508>
    8ec4:	01040713          	add	a4,s0,16
    8ec8:	01050793          	add	a5,a0,16
    8ecc:	c6dff06f          	j	8b38 <_realloc_r+0x118>
    8ed0:	014a8ab3          	add	s5,s5,s4
    8ed4:	414687b3          	sub	a5,a3,s4
    8ed8:	015c2423          	sw	s5,8(s8)
    8edc:	0017e793          	or	a5,a5,1
    8ee0:	00faa223          	sw	a5,4(s5)
    8ee4:	ffc42783          	lw	a5,-4(s0)
    8ee8:	00090513          	mv	a0,s2
    8eec:	00040493          	mv	s1,s0
    8ef0:	0017f793          	and	a5,a5,1
    8ef4:	0147e7b3          	or	a5,a5,s4
    8ef8:	fef42e23          	sw	a5,-4(s0)
    8efc:	e78fb0ef          	jal	4574 <__malloc_unlock>
    8f00:	00812c03          	lw	s8,8(sp)
    8f04:	cd1ff06f          	j	8bd4 <_realloc_r+0x1b4>
    8f08:	00840413          	add	s0,s0,8
    8f0c:	010b8793          	add	a5,s7,16
    8f10:	ec9ff06f          	j	8dd8 <_realloc_r+0x3b8>
    8f14:	00090513          	mv	a0,s2
    8f18:	e5cfb0ef          	jal	4574 <__malloc_unlock>
    8f1c:	00000493          	li	s1,0
    8f20:	00812c03          	lw	s8,8(sp)
    8f24:	cb1ff06f          	j	8bd4 <_realloc_r+0x1b4>
    8f28:	01042683          	lw	a3,16(s0)
    8f2c:	01840713          	add	a4,s0,24
    8f30:	01850793          	add	a5,a0,24
    8f34:	00d52823          	sw	a3,16(a0)
    8f38:	01442683          	lw	a3,20(s0)
    8f3c:	00d52a23          	sw	a3,20(a0)
    8f40:	bf9ff06f          	j	8b38 <_realloc_r+0x118>
    8f44:	00040593          	mv	a1,s0
    8f48:	00048513          	mv	a0,s1
    8f4c:	bd9fe0ef          	jal	7b24 <memmove>
    8f50:	db5ff06f          	j	8d04 <_realloc_r+0x2e4>
    8f54:	00842783          	lw	a5,8(s0)
    8f58:	00fba823          	sw	a5,16(s7)
    8f5c:	00c42783          	lw	a5,12(s0)
    8f60:	00fbaa23          	sw	a5,20(s7)
    8f64:	00d60863          	beq	a2,a3,8f74 <_realloc_r+0x554>
    8f68:	01040413          	add	s0,s0,16
    8f6c:	018b8793          	add	a5,s7,24
    8f70:	d7dff06f          	j	8cec <_realloc_r+0x2cc>
    8f74:	01042703          	lw	a4,16(s0)
    8f78:	020b8793          	add	a5,s7,32
    8f7c:	01840413          	add	s0,s0,24
    8f80:	00ebac23          	sw	a4,24(s7)
    8f84:	ffc42703          	lw	a4,-4(s0)
    8f88:	00ebae23          	sw	a4,28(s7)
    8f8c:	d61ff06f          	j	8cec <_realloc_r+0x2cc>

00008f90 <_strtol_l.isra.0>:
    8f90:	fb010113          	add	sp,sp,-80
    8f94:	04112623          	sw	ra,76(sp)
    8f98:	02400793          	li	a5,36
    8f9c:	00a12423          	sw	a0,8(sp)
    8fa0:	18d7ec63          	bltu	a5,a3,9138 <_strtol_l.isra.0+0x1a8>
    8fa4:	04812423          	sw	s0,72(sp)
    8fa8:	05212023          	sw	s2,64(sp)
    8fac:	03312e23          	sw	s3,60(sp)
    8fb0:	03412c23          	sw	s4,56(sp)
    8fb4:	03912223          	sw	s9,36(sp)
    8fb8:	00100793          	li	a5,1
    8fbc:	00068c93          	mv	s9,a3
    8fc0:	00058913          	mv	s2,a1
    8fc4:	00060a13          	mv	s4,a2
    8fc8:	00068993          	mv	s3,a3
    8fcc:	00058413          	mv	s0,a1
    8fd0:	00028717          	auipc	a4,0x28
    8fd4:	b6d70713          	add	a4,a4,-1171 # 30b3d <_ctype_+0x1>
    8fd8:	14f68663          	beq	a3,a5,9124 <_strtol_l.isra.0+0x194>
    8fdc:	04912223          	sw	s1,68(sp)
    8fe0:	03512a23          	sw	s5,52(sp)
    8fe4:	03612823          	sw	s6,48(sp)
    8fe8:	03712623          	sw	s7,44(sp)
    8fec:	03812423          	sw	s8,40(sp)
    8ff0:	03a12023          	sw	s10,32(sp)
    8ff4:	01b12e23          	sw	s11,28(sp)
    8ff8:	00044483          	lbu	s1,0(s0)
    8ffc:	00040693          	mv	a3,s0
    9000:	00140413          	add	s0,s0,1
    9004:	009707b3          	add	a5,a4,s1
    9008:	0007c783          	lbu	a5,0(a5)
    900c:	0087f793          	and	a5,a5,8
    9010:	fe0794e3          	bnez	a5,8ff8 <_strtol_l.isra.0+0x68>
    9014:	02d00793          	li	a5,45
    9018:	1af48263          	beq	s1,a5,91bc <_strtol_l.isra.0+0x22c>
    901c:	02b00793          	li	a5,43
    9020:	12f48a63          	beq	s1,a5,9154 <_strtol_l.isra.0+0x1c4>
    9024:	80000b37          	lui	s6,0x80000
    9028:	fffb0b13          	add	s6,s6,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    902c:	00012623          	sw	zero,12(sp)
    9030:	120c9e63          	bnez	s9,916c <_strtol_l.isra.0+0x1dc>
    9034:	03000793          	li	a5,48
    9038:	1af48e63          	beq	s1,a5,91f4 <_strtol_l.isra.0+0x264>
    903c:	00a00993          	li	s3,10
    9040:	00a00c93          	li	s9,10
    9044:	00098593          	mv	a1,s3
    9048:	000b0513          	mv	a0,s6
    904c:	a75f80ef          	jal	1ac0 <__umodsi3>
    9050:	00050b93          	mv	s7,a0
    9054:	00098593          	mv	a1,s3
    9058:	000b0513          	mv	a0,s6
    905c:	a1df80ef          	jal	1a78 <__hidden___udivsi3>
    9060:	00900d93          	li	s11,9
    9064:	fd048793          	add	a5,s1,-48
    9068:	00050d13          	mv	s10,a0
    906c:	00000713          	li	a4,0
    9070:	00000513          	li	a0,0
    9074:	01900a93          	li	s5,25
    9078:	fff00c13          	li	s8,-1
    907c:	02fdee63          	bltu	s11,a5,90b8 <_strtol_l.isra.0+0x128>
    9080:	00078493          	mv	s1,a5
    9084:	0594d263          	bge	s1,s9,90c8 <_strtol_l.isra.0+0x138>
    9088:	03870063          	beq	a4,s8,90a8 <_strtol_l.isra.0+0x118>
    908c:	fff00713          	li	a4,-1
    9090:	00ad6c63          	bltu	s10,a0,90a8 <_strtol_l.isra.0+0x118>
    9094:	12ad0063          	beq	s10,a0,91b4 <_strtol_l.isra.0+0x224>
    9098:	00098593          	mv	a1,s3
    909c:	9b1f80ef          	jal	1a4c <__mulsi3>
    90a0:	00a48533          	add	a0,s1,a0
    90a4:	00100713          	li	a4,1
    90a8:	00044483          	lbu	s1,0(s0)
    90ac:	00140413          	add	s0,s0,1
    90b0:	fd048793          	add	a5,s1,-48
    90b4:	fcfdf6e3          	bgeu	s11,a5,9080 <_strtol_l.isra.0+0xf0>
    90b8:	fbf48793          	add	a5,s1,-65
    90bc:	0efae463          	bltu	s5,a5,91a4 <_strtol_l.isra.0+0x214>
    90c0:	fc948493          	add	s1,s1,-55
    90c4:	fd94c2e3          	blt	s1,s9,9088 <_strtol_l.isra.0+0xf8>
    90c8:	fff00793          	li	a5,-1
    90cc:	10f70463          	beq	a4,a5,91d4 <_strtol_l.isra.0+0x244>
    90d0:	00c12783          	lw	a5,12(sp)
    90d4:	00078463          	beqz	a5,90dc <_strtol_l.isra.0+0x14c>
    90d8:	40a00533          	neg	a0,a0
    90dc:	000a0663          	beqz	s4,90e8 <_strtol_l.isra.0+0x158>
    90e0:	12071863          	bnez	a4,9210 <_strtol_l.isra.0+0x280>
    90e4:	012a2023          	sw	s2,0(s4)
    90e8:	04812403          	lw	s0,72(sp)
    90ec:	04c12083          	lw	ra,76(sp)
    90f0:	04412483          	lw	s1,68(sp)
    90f4:	04012903          	lw	s2,64(sp)
    90f8:	03c12983          	lw	s3,60(sp)
    90fc:	03812a03          	lw	s4,56(sp)
    9100:	03412a83          	lw	s5,52(sp)
    9104:	03012b03          	lw	s6,48(sp)
    9108:	02c12b83          	lw	s7,44(sp)
    910c:	02812c03          	lw	s8,40(sp)
    9110:	02412c83          	lw	s9,36(sp)
    9114:	02012d03          	lw	s10,32(sp)
    9118:	01c12d83          	lw	s11,28(sp)
    911c:	05010113          	add	sp,sp,80
    9120:	00008067          	ret
    9124:	04812403          	lw	s0,72(sp)
    9128:	04012903          	lw	s2,64(sp)
    912c:	03c12983          	lw	s3,60(sp)
    9130:	03812a03          	lw	s4,56(sp)
    9134:	02412c83          	lw	s9,36(sp)
    9138:	e20fa0ef          	jal	3758 <__errno>
    913c:	04c12083          	lw	ra,76(sp)
    9140:	01600793          	li	a5,22
    9144:	00f52023          	sw	a5,0(a0)
    9148:	00000513          	li	a0,0
    914c:	05010113          	add	sp,sp,80
    9150:	00008067          	ret
    9154:	80000b37          	lui	s6,0x80000
    9158:	00012623          	sw	zero,12(sp)
    915c:	00044483          	lbu	s1,0(s0)
    9160:	fffb0b13          	add	s6,s6,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    9164:	00268413          	add	s0,a3,2
    9168:	ec0c86e3          	beqz	s9,9034 <_strtol_l.isra.0+0xa4>
    916c:	01000793          	li	a5,16
    9170:	ecfc9ae3          	bne	s9,a5,9044 <_strtol_l.isra.0+0xb4>
    9174:	03000793          	li	a5,48
    9178:	01000993          	li	s3,16
    917c:	ecf494e3          	bne	s1,a5,9044 <_strtol_l.isra.0+0xb4>
    9180:	00044783          	lbu	a5,0(s0)
    9184:	05800713          	li	a4,88
    9188:	0df7f793          	and	a5,a5,223
    918c:	eae79ce3          	bne	a5,a4,9044 <_strtol_l.isra.0+0xb4>
    9190:	00144483          	lbu	s1,1(s0)
    9194:	01000993          	li	s3,16
    9198:	00240413          	add	s0,s0,2
    919c:	01000c93          	li	s9,16
    91a0:	ea5ff06f          	j	9044 <_strtol_l.isra.0+0xb4>
    91a4:	f9f48793          	add	a5,s1,-97
    91a8:	f2fae0e3          	bltu	s5,a5,90c8 <_strtol_l.isra.0+0x138>
    91ac:	fa948493          	add	s1,s1,-87
    91b0:	ed5ff06f          	j	9084 <_strtol_l.isra.0+0xf4>
    91b4:	ee9bcae3          	blt	s7,s1,90a8 <_strtol_l.isra.0+0x118>
    91b8:	ee1ff06f          	j	9098 <_strtol_l.isra.0+0x108>
    91bc:	00100793          	li	a5,1
    91c0:	00044483          	lbu	s1,0(s0)
    91c4:	80000b37          	lui	s6,0x80000
    91c8:	00268413          	add	s0,a3,2
    91cc:	00f12623          	sw	a5,12(sp)
    91d0:	e61ff06f          	j	9030 <_strtol_l.isra.0+0xa0>
    91d4:	00812703          	lw	a4,8(sp)
    91d8:	02200793          	li	a5,34
    91dc:	000b0513          	mv	a0,s6
    91e0:	00f72023          	sw	a5,0(a4)
    91e4:	f00a02e3          	beqz	s4,90e8 <_strtol_l.isra.0+0x158>
    91e8:	fff40913          	add	s2,s0,-1
    91ec:	000b0513          	mv	a0,s6
    91f0:	ef5ff06f          	j	90e4 <_strtol_l.isra.0+0x154>
    91f4:	00044783          	lbu	a5,0(s0)
    91f8:	05800713          	li	a4,88
    91fc:	00800993          	li	s3,8
    9200:	0df7f793          	and	a5,a5,223
    9204:	00800c93          	li	s9,8
    9208:	e2e79ee3          	bne	a5,a4,9044 <_strtol_l.isra.0+0xb4>
    920c:	f85ff06f          	j	9190 <_strtol_l.isra.0+0x200>
    9210:	00050b13          	mv	s6,a0
    9214:	fd5ff06f          	j	91e8 <_strtol_l.isra.0+0x258>

00009218 <_strtol_r>:
    9218:	d79ff06f          	j	8f90 <_strtol_l.isra.0>

0000921c <strtol_l>:
    921c:	00060693          	mv	a3,a2
    9220:	00058613          	mv	a2,a1
    9224:	00050593          	mv	a1,a0
    9228:	0002b517          	auipc	a0,0x2b
    922c:	5dc52503          	lw	a0,1500(a0) # 34804 <_impure_ptr>
    9230:	d61ff06f          	j	8f90 <_strtol_l.isra.0>

00009234 <strtol>:
    9234:	00060693          	mv	a3,a2
    9238:	00058613          	mv	a2,a1
    923c:	00050593          	mv	a1,a0
    9240:	0002b517          	auipc	a0,0x2b
    9244:	5c452503          	lw	a0,1476(a0) # 34804 <_impure_ptr>
    9248:	d49ff06f          	j	8f90 <_strtol_l.isra.0>

0000924c <_wctomb_r>:
    924c:	0002b797          	auipc	a5,0x2b
    9250:	3cc7a783          	lw	a5,972(a5) # 34618 <__global_locale+0xe0>
    9254:	00078067          	jr	a5

00009258 <__ascii_wctomb>:
    9258:	02058463          	beqz	a1,9280 <__ascii_wctomb+0x28>
    925c:	0ff00793          	li	a5,255
    9260:	00c7e863          	bltu	a5,a2,9270 <__ascii_wctomb+0x18>
    9264:	00c58023          	sb	a2,0(a1)
    9268:	00100513          	li	a0,1
    926c:	00008067          	ret
    9270:	08a00793          	li	a5,138
    9274:	00f52023          	sw	a5,0(a0)
    9278:	fff00513          	li	a0,-1
    927c:	00008067          	ret
    9280:	00000513          	li	a0,0
    9284:	00008067          	ret

00009288 <__utf8_wctomb>:
    9288:	0a058263          	beqz	a1,932c <__utf8_wctomb+0xa4>
    928c:	07f00793          	li	a5,127
    9290:	06c7f863          	bgeu	a5,a2,9300 <__utf8_wctomb+0x78>
    9294:	f8060793          	add	a5,a2,-128
    9298:	77f00713          	li	a4,1919
    929c:	06f77863          	bgeu	a4,a5,930c <__utf8_wctomb+0x84>
    92a0:	0000f7b7          	lui	a5,0xf
    92a4:	80060713          	add	a4,a2,-2048
    92a8:	7ff78793          	add	a5,a5,2047 # f7ff <__fini_array_end+0x47ff>
    92ac:	08e7f463          	bgeu	a5,a4,9334 <__utf8_wctomb+0xac>
    92b0:	ffff07b7          	lui	a5,0xffff0
    92b4:	00f607b3          	add	a5,a2,a5
    92b8:	00100737          	lui	a4,0x100
    92bc:	0ae7f463          	bgeu	a5,a4,9364 <__utf8_wctomb+0xdc>
    92c0:	00c65713          	srl	a4,a2,0xc
    92c4:	00665793          	srl	a5,a2,0x6
    92c8:	01265693          	srl	a3,a2,0x12
    92cc:	03f77713          	and	a4,a4,63
    92d0:	03f7f793          	and	a5,a5,63
    92d4:	03f67613          	and	a2,a2,63
    92d8:	ff06e693          	or	a3,a3,-16
    92dc:	f8076713          	or	a4,a4,-128
    92e0:	f807e793          	or	a5,a5,-128
    92e4:	f8066613          	or	a2,a2,-128
    92e8:	00d58023          	sb	a3,0(a1)
    92ec:	00e580a3          	sb	a4,1(a1)
    92f0:	00f58123          	sb	a5,2(a1)
    92f4:	00c581a3          	sb	a2,3(a1)
    92f8:	00400513          	li	a0,4
    92fc:	00008067          	ret
    9300:	00c58023          	sb	a2,0(a1)
    9304:	00100513          	li	a0,1
    9308:	00008067          	ret
    930c:	00665793          	srl	a5,a2,0x6
    9310:	03f67613          	and	a2,a2,63
    9314:	fc07e793          	or	a5,a5,-64
    9318:	f8066613          	or	a2,a2,-128
    931c:	00f58023          	sb	a5,0(a1)
    9320:	00c580a3          	sb	a2,1(a1)
    9324:	00200513          	li	a0,2
    9328:	00008067          	ret
    932c:	00000513          	li	a0,0
    9330:	00008067          	ret
    9334:	00665793          	srl	a5,a2,0x6
    9338:	00c65713          	srl	a4,a2,0xc
    933c:	03f7f793          	and	a5,a5,63
    9340:	03f67613          	and	a2,a2,63
    9344:	fe076713          	or	a4,a4,-32
    9348:	f807e793          	or	a5,a5,-128
    934c:	f8066613          	or	a2,a2,-128
    9350:	00e58023          	sb	a4,0(a1)
    9354:	00f580a3          	sb	a5,1(a1)
    9358:	00c58123          	sb	a2,2(a1)
    935c:	00300513          	li	a0,3
    9360:	00008067          	ret
    9364:	08a00793          	li	a5,138
    9368:	00f52023          	sw	a5,0(a0)
    936c:	fff00513          	li	a0,-1
    9370:	00008067          	ret

00009374 <__sjis_wctomb>:
    9374:	00865793          	srl	a5,a2,0x8
    9378:	0ff7f793          	zext.b	a5,a5
    937c:	0ff67613          	zext.b	a2,a2
    9380:	06058063          	beqz	a1,93e0 <__sjis_wctomb+0x6c>
    9384:	04078863          	beqz	a5,93d4 <__sjis_wctomb+0x60>
    9388:	07f78713          	add	a4,a5,127 # ffff007f <GET_WATCHDOG_LOW+0xffdef03f>
    938c:	0ff77713          	zext.b	a4,a4
    9390:	01e00693          	li	a3,30
    9394:	00e6fa63          	bgeu	a3,a4,93a8 <__sjis_wctomb+0x34>
    9398:	02078713          	add	a4,a5,32
    939c:	0ff77713          	zext.b	a4,a4
    93a0:	00f00693          	li	a3,15
    93a4:	04e6e263          	bltu	a3,a4,93e8 <__sjis_wctomb+0x74>
    93a8:	fc060713          	add	a4,a2,-64
    93ac:	0ff77713          	zext.b	a4,a4
    93b0:	03e00693          	li	a3,62
    93b4:	00e6f863          	bgeu	a3,a4,93c4 <__sjis_wctomb+0x50>
    93b8:	08064713          	xor	a4,a2,128
    93bc:	07c00693          	li	a3,124
    93c0:	02e6e463          	bltu	a3,a4,93e8 <__sjis_wctomb+0x74>
    93c4:	00f58023          	sb	a5,0(a1)
    93c8:	00c580a3          	sb	a2,1(a1)
    93cc:	00200513          	li	a0,2
    93d0:	00008067          	ret
    93d4:	00c58023          	sb	a2,0(a1)
    93d8:	00100513          	li	a0,1
    93dc:	00008067          	ret
    93e0:	00000513          	li	a0,0
    93e4:	00008067          	ret
    93e8:	08a00793          	li	a5,138
    93ec:	00f52023          	sw	a5,0(a0)
    93f0:	fff00513          	li	a0,-1
    93f4:	00008067          	ret

000093f8 <__eucjp_wctomb>:
    93f8:	00865793          	srl	a5,a2,0x8
    93fc:	0ff7f793          	zext.b	a5,a5
    9400:	0ff67613          	zext.b	a2,a2
    9404:	06058c63          	beqz	a1,947c <__eucjp_wctomb+0x84>
    9408:	04078c63          	beqz	a5,9460 <__eucjp_wctomb+0x68>
    940c:	07278713          	add	a4,a5,114
    9410:	0ff77713          	zext.b	a4,a4
    9414:	00100693          	li	a3,1
    9418:	06e6f663          	bgeu	a3,a4,9484 <__eucjp_wctomb+0x8c>
    941c:	05f78713          	add	a4,a5,95
    9420:	0ff77713          	zext.b	a4,a4
    9424:	05d00693          	li	a3,93
    9428:	06e6e663          	bltu	a3,a4,9494 <__eucjp_wctomb+0x9c>
    942c:	05f60713          	add	a4,a2,95
    9430:	0ff77713          	zext.b	a4,a4
    9434:	02e6fc63          	bgeu	a3,a4,946c <__eucjp_wctomb+0x74>
    9438:	08066613          	or	a2,a2,128
    943c:	05f60713          	add	a4,a2,95
    9440:	0ff77713          	zext.b	a4,a4
    9444:	04e6e863          	bltu	a3,a4,9494 <__eucjp_wctomb+0x9c>
    9448:	f8f00713          	li	a4,-113
    944c:	00e58023          	sb	a4,0(a1)
    9450:	00f580a3          	sb	a5,1(a1)
    9454:	00c58123          	sb	a2,2(a1)
    9458:	00300513          	li	a0,3
    945c:	00008067          	ret
    9460:	00c58023          	sb	a2,0(a1)
    9464:	00100513          	li	a0,1
    9468:	00008067          	ret
    946c:	00f58023          	sb	a5,0(a1)
    9470:	00c580a3          	sb	a2,1(a1)
    9474:	00200513          	li	a0,2
    9478:	00008067          	ret
    947c:	00000513          	li	a0,0
    9480:	00008067          	ret
    9484:	05f60713          	add	a4,a2,95
    9488:	0ff77713          	zext.b	a4,a4
    948c:	05d00693          	li	a3,93
    9490:	fce6fee3          	bgeu	a3,a4,946c <__eucjp_wctomb+0x74>
    9494:	08a00793          	li	a5,138
    9498:	00f52023          	sw	a5,0(a0)
    949c:	fff00513          	li	a0,-1
    94a0:	00008067          	ret

000094a4 <__jis_wctomb>:
    94a4:	00865793          	srl	a5,a2,0x8
    94a8:	0ff7f793          	zext.b	a5,a5
    94ac:	0ff67613          	zext.b	a2,a2
    94b0:	08058e63          	beqz	a1,954c <__jis_wctomb+0xa8>
    94b4:	06078063          	beqz	a5,9514 <__jis_wctomb+0x70>
    94b8:	fdf78713          	add	a4,a5,-33
    94bc:	0ff77713          	zext.b	a4,a4
    94c0:	05d00813          	li	a6,93
    94c4:	08e86863          	bltu	a6,a4,9554 <__jis_wctomb+0xb0>
    94c8:	fdf60713          	add	a4,a2,-33
    94cc:	0ff77713          	zext.b	a4,a4
    94d0:	08e86263          	bltu	a6,a4,9554 <__jis_wctomb+0xb0>
    94d4:	0006a703          	lw	a4,0(a3)
    94d8:	00200513          	li	a0,2
    94dc:	02071663          	bnez	a4,9508 <__jis_wctomb+0x64>
    94e0:	00100713          	li	a4,1
    94e4:	00e6a023          	sw	a4,0(a3)
    94e8:	01b00713          	li	a4,27
    94ec:	00e58023          	sb	a4,0(a1)
    94f0:	02400713          	li	a4,36
    94f4:	00e580a3          	sb	a4,1(a1)
    94f8:	04200713          	li	a4,66
    94fc:	00e58123          	sb	a4,2(a1)
    9500:	00500513          	li	a0,5
    9504:	00358593          	add	a1,a1,3
    9508:	00f58023          	sb	a5,0(a1)
    950c:	00c580a3          	sb	a2,1(a1)
    9510:	00008067          	ret
    9514:	0006a783          	lw	a5,0(a3)
    9518:	00100513          	li	a0,1
    951c:	02078463          	beqz	a5,9544 <__jis_wctomb+0xa0>
    9520:	0006a023          	sw	zero,0(a3)
    9524:	01b00793          	li	a5,27
    9528:	00f58023          	sb	a5,0(a1)
    952c:	02800793          	li	a5,40
    9530:	00f580a3          	sb	a5,1(a1)
    9534:	04200793          	li	a5,66
    9538:	00f58123          	sb	a5,2(a1)
    953c:	00400513          	li	a0,4
    9540:	00358593          	add	a1,a1,3
    9544:	00c58023          	sb	a2,0(a1)
    9548:	00008067          	ret
    954c:	00100513          	li	a0,1
    9550:	00008067          	ret
    9554:	08a00793          	li	a5,138
    9558:	00f52023          	sw	a5,0(a0)
    955c:	fff00513          	li	a0,-1
    9560:	00008067          	ret

00009564 <_wcrtomb_r>:
    9564:	fe010113          	add	sp,sp,-32
    9568:	00812c23          	sw	s0,24(sp)
    956c:	00912a23          	sw	s1,20(sp)
    9570:	00112e23          	sw	ra,28(sp)
    9574:	00050493          	mv	s1,a0
    9578:	10450413          	add	s0,a0,260
    957c:	00068463          	beqz	a3,9584 <_wcrtomb_r+0x20>
    9580:	00068413          	mv	s0,a3
    9584:	0002b797          	auipc	a5,0x2b
    9588:	0947a783          	lw	a5,148(a5) # 34618 <__global_locale+0xe0>
    958c:	00040693          	mv	a3,s0
    9590:	02058463          	beqz	a1,95b8 <_wcrtomb_r+0x54>
    9594:	00048513          	mv	a0,s1
    9598:	000780e7          	jalr	a5
    959c:	fff00793          	li	a5,-1
    95a0:	02f50863          	beq	a0,a5,95d0 <_wcrtomb_r+0x6c>
    95a4:	01c12083          	lw	ra,28(sp)
    95a8:	01812403          	lw	s0,24(sp)
    95ac:	01412483          	lw	s1,20(sp)
    95b0:	02010113          	add	sp,sp,32
    95b4:	00008067          	ret
    95b8:	00000613          	li	a2,0
    95bc:	00410593          	add	a1,sp,4
    95c0:	00048513          	mv	a0,s1
    95c4:	000780e7          	jalr	a5
    95c8:	fff00793          	li	a5,-1
    95cc:	fcf51ce3          	bne	a0,a5,95a4 <_wcrtomb_r+0x40>
    95d0:	00042023          	sw	zero,0(s0)
    95d4:	01c12083          	lw	ra,28(sp)
    95d8:	01812403          	lw	s0,24(sp)
    95dc:	08a00793          	li	a5,138
    95e0:	00f4a023          	sw	a5,0(s1)
    95e4:	01412483          	lw	s1,20(sp)
    95e8:	02010113          	add	sp,sp,32
    95ec:	00008067          	ret

000095f0 <wcrtomb>:
    95f0:	fe010113          	add	sp,sp,-32
    95f4:	00812c23          	sw	s0,24(sp)
    95f8:	00912a23          	sw	s1,20(sp)
    95fc:	00060413          	mv	s0,a2
    9600:	00112e23          	sw	ra,28(sp)
    9604:	00058613          	mv	a2,a1
    9608:	0002b497          	auipc	s1,0x2b
    960c:	1fc4a483          	lw	s1,508(s1) # 34804 <_impure_ptr>
    9610:	02040e63          	beqz	s0,964c <wcrtomb+0x5c>
    9614:	0002b797          	auipc	a5,0x2b
    9618:	0047a783          	lw	a5,4(a5) # 34618 <__global_locale+0xe0>
    961c:	00040693          	mv	a3,s0
    9620:	04050063          	beqz	a0,9660 <wcrtomb+0x70>
    9624:	00050593          	mv	a1,a0
    9628:	00048513          	mv	a0,s1
    962c:	000780e7          	jalr	a5
    9630:	fff00793          	li	a5,-1
    9634:	04f50263          	beq	a0,a5,9678 <wcrtomb+0x88>
    9638:	01c12083          	lw	ra,28(sp)
    963c:	01812403          	lw	s0,24(sp)
    9640:	01412483          	lw	s1,20(sp)
    9644:	02010113          	add	sp,sp,32
    9648:	00008067          	ret
    964c:	10448413          	add	s0,s1,260
    9650:	0002b797          	auipc	a5,0x2b
    9654:	fc87a783          	lw	a5,-56(a5) # 34618 <__global_locale+0xe0>
    9658:	00040693          	mv	a3,s0
    965c:	fc0514e3          	bnez	a0,9624 <wcrtomb+0x34>
    9660:	00000613          	li	a2,0
    9664:	00410593          	add	a1,sp,4
    9668:	00048513          	mv	a0,s1
    966c:	000780e7          	jalr	a5
    9670:	fff00793          	li	a5,-1
    9674:	fcf512e3          	bne	a0,a5,9638 <wcrtomb+0x48>
    9678:	00042023          	sw	zero,0(s0)
    967c:	01c12083          	lw	ra,28(sp)
    9680:	01812403          	lw	s0,24(sp)
    9684:	08a00793          	li	a5,138
    9688:	00f4a023          	sw	a5,0(s1)
    968c:	01412483          	lw	s1,20(sp)
    9690:	02010113          	add	sp,sp,32
    9694:	00008067          	ret

00009698 <_wcsrtombs_r>:
    9698:	00070793          	mv	a5,a4
    969c:	00068713          	mv	a4,a3
    96a0:	fff00693          	li	a3,-1
    96a4:	5000006f          	j	9ba4 <_wcsnrtombs_r>

000096a8 <wcsrtombs>:
    96a8:	00060713          	mv	a4,a2
    96ac:	00068793          	mv	a5,a3
    96b0:	00058613          	mv	a2,a1
    96b4:	fff00693          	li	a3,-1
    96b8:	00050593          	mv	a1,a0
    96bc:	0002b517          	auipc	a0,0x2b
    96c0:	14852503          	lw	a0,328(a0) # 34804 <_impure_ptr>
    96c4:	4e00006f          	j	9ba4 <_wcsnrtombs_r>

000096c8 <__set_ctype>:
    96c8:	00027797          	auipc	a5,0x27
    96cc:	47478793          	add	a5,a5,1140 # 30b3c <_ctype_>
    96d0:	0ef52623          	sw	a5,236(a0)
    96d4:	00008067          	ret

000096d8 <strcasecmp>:
    96d8:	00050693          	mv	a3,a0
    96dc:	00027817          	auipc	a6,0x27
    96e0:	46180813          	add	a6,a6,1121 # 30b3d <_ctype_+0x1>
    96e4:	00100613          	li	a2,1
    96e8:	0006c783          	lbu	a5,0(a3)
    96ec:	00158593          	add	a1,a1,1
    96f0:	00168693          	add	a3,a3,1
    96f4:	00f80733          	add	a4,a6,a5
    96f8:	00074703          	lbu	a4,0(a4) # 100000 <_end+0xc0000>
    96fc:	00377713          	and	a4,a4,3
    9700:	00c71463          	bne	a4,a2,9708 <strcasecmp+0x30>
    9704:	02078793          	add	a5,a5,32
    9708:	fff5c503          	lbu	a0,-1(a1)
    970c:	00a80733          	add	a4,a6,a0
    9710:	00074703          	lbu	a4,0(a4)
    9714:	40a788b3          	sub	a7,a5,a0
    9718:	00377713          	and	a4,a4,3
    971c:	00c70863          	beq	a4,a2,972c <strcasecmp+0x54>
    9720:	00a79e63          	bne	a5,a0,973c <strcasecmp+0x64>
    9724:	fc0512e3          	bnez	a0,96e8 <strcasecmp+0x10>
    9728:	00008067          	ret
    972c:	02050713          	add	a4,a0,32
    9730:	40e78533          	sub	a0,a5,a4
    9734:	fae78ae3          	beq	a5,a4,96e8 <strcasecmp+0x10>
    9738:	00008067          	ret
    973c:	00088513          	mv	a0,a7
    9740:	00008067          	ret

00009744 <strcat>:
    9744:	ff010113          	add	sp,sp,-16
    9748:	00812423          	sw	s0,8(sp)
    974c:	00112623          	sw	ra,12(sp)
    9750:	00357793          	and	a5,a0,3
    9754:	00050413          	mv	s0,a0
    9758:	04079463          	bnez	a5,97a0 <strcat+0x5c>
    975c:	00052703          	lw	a4,0(a0)
    9760:	feff0637          	lui	a2,0xfeff0
    9764:	eff60613          	add	a2,a2,-257 # fefefeff <GET_WATCHDOG_LOW+0xfedeeebf>
    9768:	00c707b3          	add	a5,a4,a2
    976c:	808086b7          	lui	a3,0x80808
    9770:	fff74713          	not	a4,a4
    9774:	00e7f7b3          	and	a5,a5,a4
    9778:	08068693          	add	a3,a3,128 # 80808080 <GET_WATCHDOG_LOW+0x80607040>
    977c:	00d7f7b3          	and	a5,a5,a3
    9780:	02079063          	bnez	a5,97a0 <strcat+0x5c>
    9784:	00452703          	lw	a4,4(a0)
    9788:	00450513          	add	a0,a0,4
    978c:	00c707b3          	add	a5,a4,a2
    9790:	fff74713          	not	a4,a4
    9794:	00e7f7b3          	and	a5,a5,a4
    9798:	00d7f7b3          	and	a5,a5,a3
    979c:	fe0784e3          	beqz	a5,9784 <strcat+0x40>
    97a0:	00054783          	lbu	a5,0(a0)
    97a4:	00078863          	beqz	a5,97b4 <strcat+0x70>
    97a8:	00154783          	lbu	a5,1(a0)
    97ac:	00150513          	add	a0,a0,1
    97b0:	fe079ce3          	bnez	a5,97a8 <strcat+0x64>
    97b4:	eacfe0ef          	jal	7e60 <strcpy>
    97b8:	00c12083          	lw	ra,12(sp)
    97bc:	00040513          	mv	a0,s0
    97c0:	00812403          	lw	s0,8(sp)
    97c4:	01010113          	add	sp,sp,16
    97c8:	00008067          	ret

000097cc <strchr>:
    97cc:	0ff5f693          	zext.b	a3,a1
    97d0:	00357793          	and	a5,a0,3
    97d4:	0c068063          	beqz	a3,9894 <strchr+0xc8>
    97d8:	00078e63          	beqz	a5,97f4 <strchr+0x28>
    97dc:	00054783          	lbu	a5,0(a0)
    97e0:	0a078663          	beqz	a5,988c <strchr+0xc0>
    97e4:	0ad78663          	beq	a5,a3,9890 <strchr+0xc4>
    97e8:	00150513          	add	a0,a0,1
    97ec:	00357793          	and	a5,a0,3
    97f0:	fe0796e3          	bnez	a5,97dc <strchr+0x10>
    97f4:	0ff5f593          	zext.b	a1,a1
    97f8:	00859893          	sll	a7,a1,0x8
    97fc:	00052703          	lw	a4,0(a0)
    9800:	00b888b3          	add	a7,a7,a1
    9804:	01089793          	sll	a5,a7,0x10
    9808:	00f888b3          	add	a7,a7,a5
    980c:	feff0837          	lui	a6,0xfeff0
    9810:	00e8c633          	xor	a2,a7,a4
    9814:	eff80813          	add	a6,a6,-257 # fefefeff <GET_WATCHDOG_LOW+0xfedeeebf>
    9818:	010707b3          	add	a5,a4,a6
    981c:	010605b3          	add	a1,a2,a6
    9820:	fff74713          	not	a4,a4
    9824:	fff64613          	not	a2,a2
    9828:	00e7f7b3          	and	a5,a5,a4
    982c:	80808337          	lui	t1,0x80808
    9830:	00c5f733          	and	a4,a1,a2
    9834:	00e7e7b3          	or	a5,a5,a4
    9838:	08030313          	add	t1,t1,128 # 80808080 <GET_WATCHDOG_LOW+0x80607040>
    983c:	0067f7b3          	and	a5,a5,t1
    9840:	02079a63          	bnez	a5,9874 <strchr+0xa8>
    9844:	00452703          	lw	a4,4(a0)
    9848:	00450513          	add	a0,a0,4
    984c:	01174633          	xor	a2,a4,a7
    9850:	010707b3          	add	a5,a4,a6
    9854:	010605b3          	add	a1,a2,a6
    9858:	fff74713          	not	a4,a4
    985c:	fff64613          	not	a2,a2
    9860:	00e7f7b3          	and	a5,a5,a4
    9864:	00c5f733          	and	a4,a1,a2
    9868:	00e7e7b3          	or	a5,a5,a4
    986c:	0067f7b3          	and	a5,a5,t1
    9870:	fc078ae3          	beqz	a5,9844 <strchr+0x78>
    9874:	00054783          	lbu	a5,0(a0)
    9878:	00078a63          	beqz	a5,988c <strchr+0xc0>
    987c:	08f68663          	beq	a3,a5,9908 <strchr+0x13c>
    9880:	00154783          	lbu	a5,1(a0)
    9884:	00150513          	add	a0,a0,1
    9888:	fe079ae3          	bnez	a5,987c <strchr+0xb0>
    988c:	00000513          	li	a0,0
    9890:	00008067          	ret
    9894:	00078c63          	beqz	a5,98ac <strchr+0xe0>
    9898:	00054783          	lbu	a5,0(a0)
    989c:	fe078ae3          	beqz	a5,9890 <strchr+0xc4>
    98a0:	00150513          	add	a0,a0,1
    98a4:	00357793          	and	a5,a0,3
    98a8:	fe0798e3          	bnez	a5,9898 <strchr+0xcc>
    98ac:	00052703          	lw	a4,0(a0)
    98b0:	feff0637          	lui	a2,0xfeff0
    98b4:	eff60613          	add	a2,a2,-257 # fefefeff <GET_WATCHDOG_LOW+0xfedeeebf>
    98b8:	00c707b3          	add	a5,a4,a2
    98bc:	808086b7          	lui	a3,0x80808
    98c0:	fff74713          	not	a4,a4
    98c4:	00e7f7b3          	and	a5,a5,a4
    98c8:	08068693          	add	a3,a3,128 # 80808080 <GET_WATCHDOG_LOW+0x80607040>
    98cc:	00d7f7b3          	and	a5,a5,a3
    98d0:	02079063          	bnez	a5,98f0 <strchr+0x124>
    98d4:	00452703          	lw	a4,4(a0)
    98d8:	00450513          	add	a0,a0,4
    98dc:	00c707b3          	add	a5,a4,a2
    98e0:	fff74713          	not	a4,a4
    98e4:	00e7f7b3          	and	a5,a5,a4
    98e8:	00d7f7b3          	and	a5,a5,a3
    98ec:	fe0784e3          	beqz	a5,98d4 <strchr+0x108>
    98f0:	00054783          	lbu	a5,0(a0)
    98f4:	f8078ee3          	beqz	a5,9890 <strchr+0xc4>
    98f8:	00154783          	lbu	a5,1(a0)
    98fc:	00150513          	add	a0,a0,1
    9900:	fe079ce3          	bnez	a5,98f8 <strchr+0x12c>
    9904:	00008067          	ret
    9908:	00008067          	ret

0000990c <strlcpy>:
    990c:	00058793          	mv	a5,a1
    9910:	00061e63          	bnez	a2,992c <strlcpy+0x20>
    9914:	0240006f          	j	9938 <strlcpy+0x2c>
    9918:	0007c703          	lbu	a4,0(a5)
    991c:	00150513          	add	a0,a0,1
    9920:	00178793          	add	a5,a5,1
    9924:	fee50fa3          	sb	a4,-1(a0)
    9928:	00070e63          	beqz	a4,9944 <strlcpy+0x38>
    992c:	fff60613          	add	a2,a2,-1
    9930:	fe0614e3          	bnez	a2,9918 <strlcpy+0xc>
    9934:	00050023          	sb	zero,0(a0)
    9938:	0007c703          	lbu	a4,0(a5)
    993c:	00178793          	add	a5,a5,1
    9940:	fe071ce3          	bnez	a4,9938 <strlcpy+0x2c>
    9944:	40b78533          	sub	a0,a5,a1
    9948:	fff50513          	add	a0,a0,-1
    994c:	00008067          	ret

00009950 <strncasecmp>:
    9950:	00050693          	mv	a3,a0
    9954:	04060c63          	beqz	a2,99ac <strncasecmp+0x5c>
    9958:	00c58633          	add	a2,a1,a2
    995c:	00027897          	auipc	a7,0x27
    9960:	1e188893          	add	a7,a7,481 # 30b3d <_ctype_+0x1>
    9964:	00100813          	li	a6,1
    9968:	0006c783          	lbu	a5,0(a3)
    996c:	00158593          	add	a1,a1,1
    9970:	00168693          	add	a3,a3,1
    9974:	00f88733          	add	a4,a7,a5
    9978:	00074703          	lbu	a4,0(a4)
    997c:	00377713          	and	a4,a4,3
    9980:	01071463          	bne	a4,a6,9988 <strncasecmp+0x38>
    9984:	02078793          	add	a5,a5,32
    9988:	fff5c503          	lbu	a0,-1(a1)
    998c:	00a88733          	add	a4,a7,a0
    9990:	00074703          	lbu	a4,0(a4)
    9994:	40a78333          	sub	t1,a5,a0
    9998:	00377713          	and	a4,a4,3
    999c:	03070063          	beq	a4,a6,99bc <strncasecmp+0x6c>
    99a0:	00a79a63          	bne	a5,a0,99b4 <strncasecmp+0x64>
    99a4:	00050a63          	beqz	a0,99b8 <strncasecmp+0x68>
    99a8:	fcc590e3          	bne	a1,a2,9968 <strncasecmp+0x18>
    99ac:	00000513          	li	a0,0
    99b0:	00008067          	ret
    99b4:	00030513          	mv	a0,t1
    99b8:	00008067          	ret
    99bc:	02050713          	add	a4,a0,32
    99c0:	40e78533          	sub	a0,a5,a4
    99c4:	fee782e3          	beq	a5,a4,99a8 <strncasecmp+0x58>
    99c8:	00008067          	ret

000099cc <__env_lock>:
    99cc:	0002b517          	auipc	a0,0x2b
    99d0:	64c50513          	add	a0,a0,1612 # 35018 <__lock___env_recursive_mutex>
    99d4:	da5f906f          	j	3778 <__retarget_lock_acquire_recursive>

000099d8 <__env_unlock>:
    99d8:	0002b517          	auipc	a0,0x2b
    99dc:	64050513          	add	a0,a0,1600 # 35018 <__lock___env_recursive_mutex>
    99e0:	db1f906f          	j	3790 <__retarget_lock_release_recursive>

000099e4 <_wcsnrtombs_l>:
    99e4:	fa010113          	add	sp,sp,-96
    99e8:	04912a23          	sw	s1,84(sp)
    99ec:	05212823          	sw	s2,80(sp)
    99f0:	05312623          	sw	s3,76(sp)
    99f4:	05412423          	sw	s4,72(sp)
    99f8:	05512223          	sw	s5,68(sp)
    99fc:	04112e23          	sw	ra,92(sp)
    9a00:	03912a23          	sw	s9,52(sp)
    9a04:	03a12823          	sw	s10,48(sp)
    9a08:	00a12623          	sw	a0,12(sp)
    9a0c:	00058a13          	mv	s4,a1
    9a10:	00060a93          	mv	s5,a2
    9a14:	00070913          	mv	s2,a4
    9a18:	00080993          	mv	s3,a6
    9a1c:	00078493          	mv	s1,a5
    9a20:	12078063          	beqz	a5,9b40 <_wcsnrtombs_l+0x15c>
    9a24:	000aac83          	lw	s9,0(s5)
    9a28:	120a0263          	beqz	s4,9b4c <_wcsnrtombs_l+0x168>
    9a2c:	14090e63          	beqz	s2,9b88 <_wcsnrtombs_l+0x1a4>
    9a30:	05612023          	sw	s6,64(sp)
    9a34:	fff68b13          	add	s6,a3,-1
    9a38:	16068063          	beqz	a3,9b98 <_wcsnrtombs_l+0x1b4>
    9a3c:	04812c23          	sw	s0,88(sp)
    9a40:	03b12623          	sw	s11,44(sp)
    9a44:	03712e23          	sw	s7,60(sp)
    9a48:	03812c23          	sw	s8,56(sp)
    9a4c:	000a0413          	mv	s0,s4
    9a50:	00000d13          	li	s10,0
    9a54:	fff00d93          	li	s11,-1
    9a58:	0240006f          	j	9a7c <_wcsnrtombs_l+0x98>
    9a5c:	080a1a63          	bnez	s4,9af0 <_wcsnrtombs_l+0x10c>
    9a60:	000ca783          	lw	a5,0(s9)
    9a64:	004c8c93          	add	s9,s9,4
    9a68:	0c078263          	beqz	a5,9b2c <_wcsnrtombs_l+0x148>
    9a6c:	1326f263          	bgeu	a3,s2,9b90 <_wcsnrtombs_l+0x1ac>
    9a70:	fffb0b13          	add	s6,s6,-1 # 7fffffff <GET_WATCHDOG_LOW+0x7fdfefbf>
    9a74:	00068d13          	mv	s10,a3
    9a78:	03bb0c63          	beq	s6,s11,9ab0 <_wcsnrtombs_l+0xcc>
    9a7c:	0e09a783          	lw	a5,224(s3)
    9a80:	000ca603          	lw	a2,0(s9)
    9a84:	00c12503          	lw	a0,12(sp)
    9a88:	00048693          	mv	a3,s1
    9a8c:	01410593          	add	a1,sp,20
    9a90:	0004ac03          	lw	s8,0(s1)
    9a94:	0044ab83          	lw	s7,4(s1)
    9a98:	000780e7          	jalr	a5
    9a9c:	0bb50e63          	beq	a0,s11,9b58 <_wcsnrtombs_l+0x174>
    9aa0:	01a506b3          	add	a3,a0,s10
    9aa4:	fad97ce3          	bgeu	s2,a3,9a5c <_wcsnrtombs_l+0x78>
    9aa8:	0184a023          	sw	s8,0(s1)
    9aac:	0174a223          	sw	s7,4(s1)
    9ab0:	05812403          	lw	s0,88(sp)
    9ab4:	04012b03          	lw	s6,64(sp)
    9ab8:	03c12b83          	lw	s7,60(sp)
    9abc:	03812c03          	lw	s8,56(sp)
    9ac0:	02c12d83          	lw	s11,44(sp)
    9ac4:	05c12083          	lw	ra,92(sp)
    9ac8:	05412483          	lw	s1,84(sp)
    9acc:	05012903          	lw	s2,80(sp)
    9ad0:	04c12983          	lw	s3,76(sp)
    9ad4:	04812a03          	lw	s4,72(sp)
    9ad8:	04412a83          	lw	s5,68(sp)
    9adc:	03412c83          	lw	s9,52(sp)
    9ae0:	000d0513          	mv	a0,s10
    9ae4:	03012d03          	lw	s10,48(sp)
    9ae8:	06010113          	add	sp,sp,96
    9aec:	00008067          	ret
    9af0:	08a05063          	blez	a0,9b70 <_wcsnrtombs_l+0x18c>
    9af4:	01410893          	add	a7,sp,20
    9af8:	00a40533          	add	a0,s0,a0
    9afc:	0008c783          	lbu	a5,0(a7)
    9b00:	00140413          	add	s0,s0,1
    9b04:	00188893          	add	a7,a7,1
    9b08:	fef40fa3          	sb	a5,-1(s0)
    9b0c:	fe8518e3          	bne	a0,s0,9afc <_wcsnrtombs_l+0x118>
    9b10:	000aa783          	lw	a5,0(s5)
    9b14:	00050413          	mv	s0,a0
    9b18:	00478793          	add	a5,a5,4
    9b1c:	00faa023          	sw	a5,0(s5)
    9b20:	000ca783          	lw	a5,0(s9)
    9b24:	004c8c93          	add	s9,s9,4
    9b28:	f40792e3          	bnez	a5,9a6c <_wcsnrtombs_l+0x88>
    9b2c:	000a0463          	beqz	s4,9b34 <_wcsnrtombs_l+0x150>
    9b30:	000aa023          	sw	zero,0(s5)
    9b34:	0004a023          	sw	zero,0(s1)
    9b38:	fff68d13          	add	s10,a3,-1
    9b3c:	f75ff06f          	j	9ab0 <_wcsnrtombs_l+0xcc>
    9b40:	000aac83          	lw	s9,0(s5)
    9b44:	10c50493          	add	s1,a0,268
    9b48:	ee0a12e3          	bnez	s4,9a2c <_wcsnrtombs_l+0x48>
    9b4c:	05612023          	sw	s6,64(sp)
    9b50:	fff00913          	li	s2,-1
    9b54:	ee1ff06f          	j	9a34 <_wcsnrtombs_l+0x50>
    9b58:	00c12703          	lw	a4,12(sp)
    9b5c:	08a00793          	li	a5,138
    9b60:	fff00d13          	li	s10,-1
    9b64:	00f72023          	sw	a5,0(a4)
    9b68:	0004a023          	sw	zero,0(s1)
    9b6c:	f45ff06f          	j	9ab0 <_wcsnrtombs_l+0xcc>
    9b70:	000aa783          	lw	a5,0(s5)
    9b74:	00040513          	mv	a0,s0
    9b78:	00050413          	mv	s0,a0
    9b7c:	00478793          	add	a5,a5,4
    9b80:	00faa023          	sw	a5,0(s5)
    9b84:	f9dff06f          	j	9b20 <_wcsnrtombs_l+0x13c>
    9b88:	00000d13          	li	s10,0
    9b8c:	f39ff06f          	j	9ac4 <_wcsnrtombs_l+0xe0>
    9b90:	00068d13          	mv	s10,a3
    9b94:	f1dff06f          	j	9ab0 <_wcsnrtombs_l+0xcc>
    9b98:	04012b03          	lw	s6,64(sp)
    9b9c:	00000d13          	li	s10,0
    9ba0:	f25ff06f          	j	9ac4 <_wcsnrtombs_l+0xe0>

00009ba4 <_wcsnrtombs_r>:
    9ba4:	0002b817          	auipc	a6,0x2b
    9ba8:	99480813          	add	a6,a6,-1644 # 34538 <__global_locale>
    9bac:	0002b517          	auipc	a0,0x2b
    9bb0:	c5852503          	lw	a0,-936(a0) # 34804 <_impure_ptr>
    9bb4:	e31ff06f          	j	99e4 <_wcsnrtombs_l>

00009bb8 <wcsnrtombs>:
    9bb8:	00070793          	mv	a5,a4
    9bbc:	0002b817          	auipc	a6,0x2b
    9bc0:	97c80813          	add	a6,a6,-1668 # 34538 <__global_locale>
    9bc4:	00068713          	mv	a4,a3
    9bc8:	00060693          	mv	a3,a2
    9bcc:	00058613          	mv	a2,a1
    9bd0:	00050593          	mv	a1,a0
    9bd4:	0002b517          	auipc	a0,0x2b
    9bd8:	c3052503          	lw	a0,-976(a0) # 34804 <_impure_ptr>
    9bdc:	e09ff06f          	j	99e4 <_wcsnrtombs_l>

00009be0 <__udivdi3>:
    9be0:	fd010113          	add	sp,sp,-48
    9be4:	01312e23          	sw	s3,28(sp)
    9be8:	02112623          	sw	ra,44(sp)
    9bec:	01612823          	sw	s6,16(sp)
    9bf0:	00050993          	mv	s3,a0
    9bf4:	16069663          	bnez	a3,9d60 <__udivdi3+0x180>
    9bf8:	02812423          	sw	s0,40(sp)
    9bfc:	01512a23          	sw	s5,20(sp)
    9c00:	02912223          	sw	s1,36(sp)
    9c04:	03212023          	sw	s2,32(sp)
    9c08:	01412c23          	sw	s4,24(sp)
    9c0c:	00060a93          	mv	s5,a2
    9c10:	00050413          	mv	s0,a0
    9c14:	1cc5f063          	bgeu	a1,a2,9dd4 <__udivdi3+0x1f4>
    9c18:	000107b7          	lui	a5,0x10
    9c1c:	00058493          	mv	s1,a1
    9c20:	2af66e63          	bltu	a2,a5,9edc <__udivdi3+0x2fc>
    9c24:	010007b7          	lui	a5,0x1000
    9c28:	01800713          	li	a4,24
    9c2c:	00f67463          	bgeu	a2,a5,9c34 <__udivdi3+0x54>
    9c30:	01000713          	li	a4,16
    9c34:	00e656b3          	srl	a3,a2,a4
    9c38:	00026797          	auipc	a5,0x26
    9c3c:	75078793          	add	a5,a5,1872 # 30388 <__clz_tab>
    9c40:	00d787b3          	add	a5,a5,a3
    9c44:	0007c783          	lbu	a5,0(a5)
    9c48:	02000693          	li	a3,32
    9c4c:	00e787b3          	add	a5,a5,a4
    9c50:	40f68733          	sub	a4,a3,a5
    9c54:	00f68c63          	beq	a3,a5,9c6c <__udivdi3+0x8c>
    9c58:	00e594b3          	sll	s1,a1,a4
    9c5c:	00f9d7b3          	srl	a5,s3,a5
    9c60:	00e61ab3          	sll	s5,a2,a4
    9c64:	0097e4b3          	or	s1,a5,s1
    9c68:	00e99433          	sll	s0,s3,a4
    9c6c:	010ada13          	srl	s4,s5,0x10
    9c70:	000a0593          	mv	a1,s4
    9c74:	00048513          	mv	a0,s1
    9c78:	010a9b13          	sll	s6,s5,0x10
    9c7c:	dfdf70ef          	jal	1a78 <__hidden___udivsi3>
    9c80:	010b5b13          	srl	s6,s6,0x10
    9c84:	00050593          	mv	a1,a0
    9c88:	00050913          	mv	s2,a0
    9c8c:	000b0513          	mv	a0,s6
    9c90:	dbdf70ef          	jal	1a4c <__mulsi3>
    9c94:	00050793          	mv	a5,a0
    9c98:	000a0593          	mv	a1,s4
    9c9c:	00048513          	mv	a0,s1
    9ca0:	00078493          	mv	s1,a5
    9ca4:	e1df70ef          	jal	1ac0 <__umodsi3>
    9ca8:	01051513          	sll	a0,a0,0x10
    9cac:	01045793          	srl	a5,s0,0x10
    9cb0:	00a7e7b3          	or	a5,a5,a0
    9cb4:	0097fc63          	bgeu	a5,s1,9ccc <__udivdi3+0xec>
    9cb8:	00fa87b3          	add	a5,s5,a5
    9cbc:	fff90713          	add	a4,s2,-1
    9cc0:	0157e463          	bltu	a5,s5,9cc8 <__udivdi3+0xe8>
    9cc4:	5a97e863          	bltu	a5,s1,a274 <__udivdi3+0x694>
    9cc8:	00070913          	mv	s2,a4
    9ccc:	409784b3          	sub	s1,a5,s1
    9cd0:	000a0593          	mv	a1,s4
    9cd4:	00048513          	mv	a0,s1
    9cd8:	da1f70ef          	jal	1a78 <__hidden___udivsi3>
    9cdc:	00050593          	mv	a1,a0
    9ce0:	00050993          	mv	s3,a0
    9ce4:	000b0513          	mv	a0,s6
    9ce8:	d65f70ef          	jal	1a4c <__mulsi3>
    9cec:	00050793          	mv	a5,a0
    9cf0:	000a0593          	mv	a1,s4
    9cf4:	00048513          	mv	a0,s1
    9cf8:	01041413          	sll	s0,s0,0x10
    9cfc:	00078493          	mv	s1,a5
    9d00:	dc1f70ef          	jal	1ac0 <__umodsi3>
    9d04:	01051513          	sll	a0,a0,0x10
    9d08:	01045413          	srl	s0,s0,0x10
    9d0c:	00a46433          	or	s0,s0,a0
    9d10:	00947c63          	bgeu	s0,s1,9d28 <__udivdi3+0x148>
    9d14:	008a8433          	add	s0,s5,s0
    9d18:	fff98793          	add	a5,s3,-1
    9d1c:	4d546e63          	bltu	s0,s5,a1f8 <__udivdi3+0x618>
    9d20:	ffe98993          	add	s3,s3,-2
    9d24:	4c947a63          	bgeu	s0,s1,a1f8 <__udivdi3+0x618>
    9d28:	01091613          	sll	a2,s2,0x10
    9d2c:	01366533          	or	a0,a2,s3
    9d30:	00000b13          	li	s6,0
    9d34:	02812403          	lw	s0,40(sp)
    9d38:	02c12083          	lw	ra,44(sp)
    9d3c:	02412483          	lw	s1,36(sp)
    9d40:	02012903          	lw	s2,32(sp)
    9d44:	01812a03          	lw	s4,24(sp)
    9d48:	01412a83          	lw	s5,20(sp)
    9d4c:	01c12983          	lw	s3,28(sp)
    9d50:	000b0593          	mv	a1,s6
    9d54:	01012b03          	lw	s6,16(sp)
    9d58:	03010113          	add	sp,sp,48
    9d5c:	00008067          	ret
    9d60:	02d5f263          	bgeu	a1,a3,9d84 <__udivdi3+0x1a4>
    9d64:	00000b13          	li	s6,0
    9d68:	00000513          	li	a0,0
    9d6c:	02c12083          	lw	ra,44(sp)
    9d70:	01c12983          	lw	s3,28(sp)
    9d74:	000b0593          	mv	a1,s6
    9d78:	01012b03          	lw	s6,16(sp)
    9d7c:	03010113          	add	sp,sp,48
    9d80:	00008067          	ret
    9d84:	000107b7          	lui	a5,0x10
    9d88:	26f6ee63          	bltu	a3,a5,a004 <__udivdi3+0x424>
    9d8c:	01000737          	lui	a4,0x1000
    9d90:	01800793          	li	a5,24
    9d94:	00e6f463          	bgeu	a3,a4,9d9c <__udivdi3+0x1bc>
    9d98:	01000793          	li	a5,16
    9d9c:	00f6d533          	srl	a0,a3,a5
    9da0:	00026717          	auipc	a4,0x26
    9da4:	5e870713          	add	a4,a4,1512 # 30388 <__clz_tab>
    9da8:	00a70733          	add	a4,a4,a0
    9dac:	00074703          	lbu	a4,0(a4)
    9db0:	02000513          	li	a0,32
    9db4:	00f70733          	add	a4,a4,a5
    9db8:	40e50b33          	sub	s6,a0,a4
    9dbc:	26e51c63          	bne	a0,a4,a034 <__udivdi3+0x454>
    9dc0:	46b6ee63          	bltu	a3,a1,a23c <__udivdi3+0x65c>
    9dc4:	00c9b533          	sltu	a0,s3,a2
    9dc8:	00153513          	seqz	a0,a0
    9dcc:	00000b13          	li	s6,0
    9dd0:	f9dff06f          	j	9d6c <__udivdi3+0x18c>
    9dd4:	10060c63          	beqz	a2,9eec <__udivdi3+0x30c>
    9dd8:	000107b7          	lui	a5,0x10
    9ddc:	44f67663          	bgeu	a2,a5,a228 <__udivdi3+0x648>
    9de0:	10063713          	sltiu	a4,a2,256
    9de4:	00173713          	seqz	a4,a4
    9de8:	00371713          	sll	a4,a4,0x3
    9dec:	00e656b3          	srl	a3,a2,a4
    9df0:	00026797          	auipc	a5,0x26
    9df4:	59878793          	add	a5,a5,1432 # 30388 <__clz_tab>
    9df8:	00d787b3          	add	a5,a5,a3
    9dfc:	0007c483          	lbu	s1,0(a5)
    9e00:	02000793          	li	a5,32
    9e04:	00e484b3          	add	s1,s1,a4
    9e08:	40978733          	sub	a4,a5,s1
    9e0c:	10979463          	bne	a5,s1,9f14 <__udivdi3+0x334>
    9e10:	01061a13          	sll	s4,a2,0x10
    9e14:	40c584b3          	sub	s1,a1,a2
    9e18:	01065913          	srl	s2,a2,0x10
    9e1c:	010a5a13          	srl	s4,s4,0x10
    9e20:	00100b13          	li	s6,1
    9e24:	00090593          	mv	a1,s2
    9e28:	00048513          	mv	a0,s1
    9e2c:	c4df70ef          	jal	1a78 <__hidden___udivsi3>
    9e30:	000a0593          	mv	a1,s4
    9e34:	00050993          	mv	s3,a0
    9e38:	c15f70ef          	jal	1a4c <__mulsi3>
    9e3c:	00050793          	mv	a5,a0
    9e40:	00090593          	mv	a1,s2
    9e44:	00048513          	mv	a0,s1
    9e48:	00078493          	mv	s1,a5
    9e4c:	c75f70ef          	jal	1ac0 <__umodsi3>
    9e50:	01051513          	sll	a0,a0,0x10
    9e54:	01045793          	srl	a5,s0,0x10
    9e58:	00a7e7b3          	or	a5,a5,a0
    9e5c:	0097fc63          	bgeu	a5,s1,9e74 <__udivdi3+0x294>
    9e60:	00fa87b3          	add	a5,s5,a5
    9e64:	fff98713          	add	a4,s3,-1
    9e68:	0157e463          	bltu	a5,s5,9e70 <__udivdi3+0x290>
    9e6c:	3e97ee63          	bltu	a5,s1,a268 <__udivdi3+0x688>
    9e70:	00070993          	mv	s3,a4
    9e74:	409784b3          	sub	s1,a5,s1
    9e78:	00090593          	mv	a1,s2
    9e7c:	00048513          	mv	a0,s1
    9e80:	bf9f70ef          	jal	1a78 <__hidden___udivsi3>
    9e84:	000a0593          	mv	a1,s4
    9e88:	00050a13          	mv	s4,a0
    9e8c:	bc1f70ef          	jal	1a4c <__mulsi3>
    9e90:	00050793          	mv	a5,a0
    9e94:	00090593          	mv	a1,s2
    9e98:	00048513          	mv	a0,s1
    9e9c:	01041413          	sll	s0,s0,0x10
    9ea0:	00078493          	mv	s1,a5
    9ea4:	c1df70ef          	jal	1ac0 <__umodsi3>
    9ea8:	01051513          	sll	a0,a0,0x10
    9eac:	01045413          	srl	s0,s0,0x10
    9eb0:	00a46433          	or	s0,s0,a0
    9eb4:	00947e63          	bgeu	s0,s1,9ed0 <__udivdi3+0x2f0>
    9eb8:	008a8433          	add	s0,s5,s0
    9ebc:	fffa0793          	add	a5,s4,-1
    9ec0:	01546663          	bltu	s0,s5,9ecc <__udivdi3+0x2ec>
    9ec4:	ffea0a13          	add	s4,s4,-2
    9ec8:	00946463          	bltu	s0,s1,9ed0 <__udivdi3+0x2f0>
    9ecc:	00078a13          	mv	s4,a5
    9ed0:	01099613          	sll	a2,s3,0x10
    9ed4:	01466533          	or	a0,a2,s4
    9ed8:	e5dff06f          	j	9d34 <__udivdi3+0x154>
    9edc:	10063713          	sltiu	a4,a2,256
    9ee0:	00173713          	seqz	a4,a4
    9ee4:	00371713          	sll	a4,a4,0x3
    9ee8:	d4dff06f          	j	9c34 <__udivdi3+0x54>
    9eec:	00000693          	li	a3,0
    9ef0:	00026797          	auipc	a5,0x26
    9ef4:	49878793          	add	a5,a5,1176 # 30388 <__clz_tab>
    9ef8:	00d787b3          	add	a5,a5,a3
    9efc:	0007c483          	lbu	s1,0(a5)
    9f00:	00000713          	li	a4,0
    9f04:	02000793          	li	a5,32
    9f08:	00e484b3          	add	s1,s1,a4
    9f0c:	40978733          	sub	a4,a5,s1
    9f10:	f09780e3          	beq	a5,s1,9e10 <__udivdi3+0x230>
    9f14:	00e61ab3          	sll	s5,a2,a4
    9f18:	01712623          	sw	s7,12(sp)
    9f1c:	010ad913          	srl	s2,s5,0x10
    9f20:	0095dbb3          	srl	s7,a1,s1
    9f24:	00e597b3          	sll	a5,a1,a4
    9f28:	0099d4b3          	srl	s1,s3,s1
    9f2c:	00090593          	mv	a1,s2
    9f30:	000b8513          	mv	a0,s7
    9f34:	010a9a13          	sll	s4,s5,0x10
    9f38:	00f4e4b3          	or	s1,s1,a5
    9f3c:	00e99433          	sll	s0,s3,a4
    9f40:	010a5a13          	srl	s4,s4,0x10
    9f44:	b35f70ef          	jal	1a78 <__hidden___udivsi3>
    9f48:	00050593          	mv	a1,a0
    9f4c:	00050b13          	mv	s6,a0
    9f50:	000a0513          	mv	a0,s4
    9f54:	af9f70ef          	jal	1a4c <__mulsi3>
    9f58:	00050993          	mv	s3,a0
    9f5c:	00090593          	mv	a1,s2
    9f60:	000b8513          	mv	a0,s7
    9f64:	b5df70ef          	jal	1ac0 <__umodsi3>
    9f68:	01051513          	sll	a0,a0,0x10
    9f6c:	0104d793          	srl	a5,s1,0x10
    9f70:	00a7e7b3          	or	a5,a5,a0
    9f74:	0137fe63          	bgeu	a5,s3,9f90 <__udivdi3+0x3b0>
    9f78:	00fa87b3          	add	a5,s5,a5
    9f7c:	fffb0713          	add	a4,s6,-1
    9f80:	2d57ec63          	bltu	a5,s5,a258 <__udivdi3+0x678>
    9f84:	2d37fa63          	bgeu	a5,s3,a258 <__udivdi3+0x678>
    9f88:	ffeb0b13          	add	s6,s6,-2
    9f8c:	015787b3          	add	a5,a5,s5
    9f90:	413789b3          	sub	s3,a5,s3
    9f94:	00090593          	mv	a1,s2
    9f98:	00098513          	mv	a0,s3
    9f9c:	addf70ef          	jal	1a78 <__hidden___udivsi3>
    9fa0:	00050593          	mv	a1,a0
    9fa4:	00050b93          	mv	s7,a0
    9fa8:	000a0513          	mv	a0,s4
    9fac:	aa1f70ef          	jal	1a4c <__mulsi3>
    9fb0:	00050793          	mv	a5,a0
    9fb4:	00090593          	mv	a1,s2
    9fb8:	00098513          	mv	a0,s3
    9fbc:	01049493          	sll	s1,s1,0x10
    9fc0:	00078993          	mv	s3,a5
    9fc4:	afdf70ef          	jal	1ac0 <__umodsi3>
    9fc8:	01051513          	sll	a0,a0,0x10
    9fcc:	0104d493          	srl	s1,s1,0x10
    9fd0:	00a4e4b3          	or	s1,s1,a0
    9fd4:	0134fe63          	bgeu	s1,s3,9ff0 <__udivdi3+0x410>
    9fd8:	009a84b3          	add	s1,s5,s1
    9fdc:	fffb8793          	add	a5,s7,-1
    9fe0:	2754e463          	bltu	s1,s5,a248 <__udivdi3+0x668>
    9fe4:	2734f263          	bgeu	s1,s3,a248 <__udivdi3+0x668>
    9fe8:	ffeb8b93          	add	s7,s7,-2
    9fec:	015484b3          	add	s1,s1,s5
    9ff0:	010b1b13          	sll	s6,s6,0x10
    9ff4:	017b6b33          	or	s6,s6,s7
    9ff8:	413484b3          	sub	s1,s1,s3
    9ffc:	00c12b83          	lw	s7,12(sp)
    a000:	e25ff06f          	j	9e24 <__udivdi3+0x244>
    a004:	1006b793          	sltiu	a5,a3,256
    a008:	0017b793          	seqz	a5,a5
    a00c:	00379793          	sll	a5,a5,0x3
    a010:	00f6d533          	srl	a0,a3,a5
    a014:	00026717          	auipc	a4,0x26
    a018:	37470713          	add	a4,a4,884 # 30388 <__clz_tab>
    a01c:	00a70733          	add	a4,a4,a0
    a020:	00074703          	lbu	a4,0(a4)
    a024:	02000513          	li	a0,32
    a028:	00f70733          	add	a4,a4,a5
    a02c:	40e50b33          	sub	s6,a0,a4
    a030:	d8e508e3          	beq	a0,a4,9dc0 <__udivdi3+0x1e0>
    a034:	016696b3          	sll	a3,a3,s6
    a038:	01912223          	sw	s9,4(sp)
    a03c:	00e65cb3          	srl	s9,a2,a4
    a040:	00dcecb3          	or	s9,s9,a3
    a044:	01512a23          	sw	s5,20(sp)
    a048:	01712623          	sw	s7,12(sp)
    a04c:	010cda93          	srl	s5,s9,0x10
    a050:	00e5dbb3          	srl	s7,a1,a4
    a054:	016597b3          	sll	a5,a1,s6
    a058:	00e9d733          	srl	a4,s3,a4
    a05c:	01812423          	sw	s8,8(sp)
    a060:	000a8593          	mv	a1,s5
    a064:	000b8513          	mv	a0,s7
    a068:	010c9c13          	sll	s8,s9,0x10
    a06c:	02812423          	sw	s0,40(sp)
    a070:	02912223          	sw	s1,36(sp)
    a074:	03212023          	sw	s2,32(sp)
    a078:	00f764b3          	or	s1,a4,a5
    a07c:	01661933          	sll	s2,a2,s6
    a080:	01412c23          	sw	s4,24(sp)
    a084:	010c5c13          	srl	s8,s8,0x10
    a088:	9f1f70ef          	jal	1a78 <__hidden___udivsi3>
    a08c:	00050593          	mv	a1,a0
    a090:	00050413          	mv	s0,a0
    a094:	000c0513          	mv	a0,s8
    a098:	9b5f70ef          	jal	1a4c <__mulsi3>
    a09c:	00050a13          	mv	s4,a0
    a0a0:	000a8593          	mv	a1,s5
    a0a4:	000b8513          	mv	a0,s7
    a0a8:	a19f70ef          	jal	1ac0 <__umodsi3>
    a0ac:	01051513          	sll	a0,a0,0x10
    a0b0:	0104d793          	srl	a5,s1,0x10
    a0b4:	00a7e7b3          	or	a5,a5,a0
    a0b8:	0147fe63          	bgeu	a5,s4,a0d4 <__udivdi3+0x4f4>
    a0bc:	00fc87b3          	add	a5,s9,a5
    a0c0:	fff40713          	add	a4,s0,-1
    a0c4:	1997ee63          	bltu	a5,s9,a260 <__udivdi3+0x680>
    a0c8:	1947fc63          	bgeu	a5,s4,a260 <__udivdi3+0x680>
    a0cc:	ffe40413          	add	s0,s0,-2
    a0d0:	019787b3          	add	a5,a5,s9
    a0d4:	41478a33          	sub	s4,a5,s4
    a0d8:	000a8593          	mv	a1,s5
    a0dc:	000a0513          	mv	a0,s4
    a0e0:	999f70ef          	jal	1a78 <__hidden___udivsi3>
    a0e4:	00050593          	mv	a1,a0
    a0e8:	00050b93          	mv	s7,a0
    a0ec:	000c0513          	mv	a0,s8
    a0f0:	95df70ef          	jal	1a4c <__mulsi3>
    a0f4:	00050793          	mv	a5,a0
    a0f8:	000a8593          	mv	a1,s5
    a0fc:	000a0513          	mv	a0,s4
    a100:	00078a13          	mv	s4,a5
    a104:	9bdf70ef          	jal	1ac0 <__umodsi3>
    a108:	01049713          	sll	a4,s1,0x10
    a10c:	01051513          	sll	a0,a0,0x10
    a110:	01075713          	srl	a4,a4,0x10
    a114:	00a76733          	or	a4,a4,a0
    a118:	01477e63          	bgeu	a4,s4,a134 <__udivdi3+0x554>
    a11c:	00ec8733          	add	a4,s9,a4
    a120:	fffb8793          	add	a5,s7,-1
    a124:	13976663          	bltu	a4,s9,a250 <__udivdi3+0x670>
    a128:	13477463          	bgeu	a4,s4,a250 <__udivdi3+0x670>
    a12c:	ffeb8b93          	add	s7,s7,-2
    a130:	01970733          	add	a4,a4,s9
    a134:	00010e37          	lui	t3,0x10
    a138:	01041413          	sll	s0,s0,0x10
    a13c:	01746433          	or	s0,s0,s7
    a140:	fffe0793          	add	a5,t3,-1 # ffff <__fini_array_end+0x4fff>
    a144:	00f47833          	and	a6,s0,a5
    a148:	00f977b3          	and	a5,s2,a5
    a14c:	41470733          	sub	a4,a4,s4
    a150:	01045e93          	srl	t4,s0,0x10
    a154:	01095913          	srl	s2,s2,0x10
    a158:	00080513          	mv	a0,a6
    a15c:	00078593          	mv	a1,a5
    a160:	8edf70ef          	jal	1a4c <__mulsi3>
    a164:	00050313          	mv	t1,a0
    a168:	00090593          	mv	a1,s2
    a16c:	00080513          	mv	a0,a6
    a170:	8ddf70ef          	jal	1a4c <__mulsi3>
    a174:	00050813          	mv	a6,a0
    a178:	00078593          	mv	a1,a5
    a17c:	000e8513          	mv	a0,t4
    a180:	8cdf70ef          	jal	1a4c <__mulsi3>
    a184:	00050893          	mv	a7,a0
    a188:	00090593          	mv	a1,s2
    a18c:	000e8513          	mv	a0,t4
    a190:	8bdf70ef          	jal	1a4c <__mulsi3>
    a194:	01035793          	srl	a5,t1,0x10
    a198:	01180833          	add	a6,a6,a7
    a19c:	010787b3          	add	a5,a5,a6
    a1a0:	0117f463          	bgeu	a5,a7,a1a8 <__udivdi3+0x5c8>
    a1a4:	01c50533          	add	a0,a0,t3
    a1a8:	0107d693          	srl	a3,a5,0x10
    a1ac:	00a686b3          	add	a3,a3,a0
    a1b0:	06d76863          	bltu	a4,a3,a220 <__udivdi3+0x640>
    a1b4:	04d70663          	beq	a4,a3,a200 <__udivdi3+0x620>
    a1b8:	00040513          	mv	a0,s0
    a1bc:	02812403          	lw	s0,40(sp)
    a1c0:	02c12083          	lw	ra,44(sp)
    a1c4:	00000b13          	li	s6,0
    a1c8:	02412483          	lw	s1,36(sp)
    a1cc:	02012903          	lw	s2,32(sp)
    a1d0:	01812a03          	lw	s4,24(sp)
    a1d4:	01412a83          	lw	s5,20(sp)
    a1d8:	00c12b83          	lw	s7,12(sp)
    a1dc:	00812c03          	lw	s8,8(sp)
    a1e0:	00412c83          	lw	s9,4(sp)
    a1e4:	01c12983          	lw	s3,28(sp)
    a1e8:	000b0593          	mv	a1,s6
    a1ec:	01012b03          	lw	s6,16(sp)
    a1f0:	03010113          	add	sp,sp,48
    a1f4:	00008067          	ret
    a1f8:	00078993          	mv	s3,a5
    a1fc:	b2dff06f          	j	9d28 <__udivdi3+0x148>
    a200:	00010737          	lui	a4,0x10
    a204:	fff70713          	add	a4,a4,-1 # ffff <__fini_array_end+0x4fff>
    a208:	00e7f7b3          	and	a5,a5,a4
    a20c:	01079793          	sll	a5,a5,0x10
    a210:	00e37333          	and	t1,t1,a4
    a214:	01699533          	sll	a0,s3,s6
    a218:	006787b3          	add	a5,a5,t1
    a21c:	f8f57ee3          	bgeu	a0,a5,a1b8 <__udivdi3+0x5d8>
    a220:	fff40513          	add	a0,s0,-1
    a224:	f99ff06f          	j	a1bc <__udivdi3+0x5dc>
    a228:	010007b7          	lui	a5,0x1000
    a22c:	04f67a63          	bgeu	a2,a5,a280 <__udivdi3+0x6a0>
    a230:	01065693          	srl	a3,a2,0x10
    a234:	01000713          	li	a4,16
    a238:	bb9ff06f          	j	9df0 <__udivdi3+0x210>
    a23c:	00000b13          	li	s6,0
    a240:	00100513          	li	a0,1
    a244:	b29ff06f          	j	9d6c <__udivdi3+0x18c>
    a248:	00078b93          	mv	s7,a5
    a24c:	da5ff06f          	j	9ff0 <__udivdi3+0x410>
    a250:	00078b93          	mv	s7,a5
    a254:	ee1ff06f          	j	a134 <__udivdi3+0x554>
    a258:	00070b13          	mv	s6,a4
    a25c:	d35ff06f          	j	9f90 <__udivdi3+0x3b0>
    a260:	00070413          	mv	s0,a4
    a264:	e71ff06f          	j	a0d4 <__udivdi3+0x4f4>
    a268:	ffe98993          	add	s3,s3,-2
    a26c:	015787b3          	add	a5,a5,s5
    a270:	c05ff06f          	j	9e74 <__udivdi3+0x294>
    a274:	ffe90913          	add	s2,s2,-2
    a278:	015787b3          	add	a5,a5,s5
    a27c:	a51ff06f          	j	9ccc <__udivdi3+0xec>
    a280:	01865693          	srl	a3,a2,0x18
    a284:	01800713          	li	a4,24
    a288:	b69ff06f          	j	9df0 <__udivdi3+0x210>

0000a28c <__umoddi3>:
    a28c:	fd010113          	add	sp,sp,-48
    a290:	02112623          	sw	ra,44(sp)
    a294:	00050793          	mv	a5,a0
    a298:	14069663          	bnez	a3,a3e4 <__umoddi3+0x158>
    a29c:	03212023          	sw	s2,32(sp)
    a2a0:	01412c23          	sw	s4,24(sp)
    a2a4:	02812423          	sw	s0,40(sp)
    a2a8:	02912223          	sw	s1,36(sp)
    a2ac:	01312e23          	sw	s3,28(sp)
    a2b0:	01512a23          	sw	s5,20(sp)
    a2b4:	00060a13          	mv	s4,a2
    a2b8:	00050913          	mv	s2,a0
    a2bc:	1ac5f663          	bgeu	a1,a2,a468 <__umoddi3+0x1dc>
    a2c0:	01612823          	sw	s6,16(sp)
    a2c4:	00010737          	lui	a4,0x10
    a2c8:	00058993          	mv	s3,a1
    a2cc:	28e66063          	bltu	a2,a4,a54c <__umoddi3+0x2c0>
    a2d0:	01000737          	lui	a4,0x1000
    a2d4:	01800693          	li	a3,24
    a2d8:	00e67463          	bgeu	a2,a4,a2e0 <__umoddi3+0x54>
    a2dc:	01000693          	li	a3,16
    a2e0:	00d65533          	srl	a0,a2,a3
    a2e4:	00026717          	auipc	a4,0x26
    a2e8:	0a470713          	add	a4,a4,164 # 30388 <__clz_tab>
    a2ec:	00a70733          	add	a4,a4,a0
    a2f0:	00074703          	lbu	a4,0(a4)
    a2f4:	02000513          	li	a0,32
    a2f8:	00d70733          	add	a4,a4,a3
    a2fc:	40e504b3          	sub	s1,a0,a4
    a300:	00e50c63          	beq	a0,a4,a318 <__umoddi3+0x8c>
    a304:	009599b3          	sll	s3,a1,s1
    a308:	00e7d733          	srl	a4,a5,a4
    a30c:	00961a33          	sll	s4,a2,s1
    a310:	013769b3          	or	s3,a4,s3
    a314:	00979933          	sll	s2,a5,s1
    a318:	010a5a93          	srl	s5,s4,0x10
    a31c:	000a8593          	mv	a1,s5
    a320:	00098513          	mv	a0,s3
    a324:	010a1b13          	sll	s6,s4,0x10
    a328:	f50f70ef          	jal	1a78 <__hidden___udivsi3>
    a32c:	010b5b13          	srl	s6,s6,0x10
    a330:	000b0593          	mv	a1,s6
    a334:	f18f70ef          	jal	1a4c <__mulsi3>
    a338:	00050413          	mv	s0,a0
    a33c:	000a8593          	mv	a1,s5
    a340:	00098513          	mv	a0,s3
    a344:	f7cf70ef          	jal	1ac0 <__umodsi3>
    a348:	01051513          	sll	a0,a0,0x10
    a34c:	01095793          	srl	a5,s2,0x10
    a350:	00a7e7b3          	or	a5,a5,a0
    a354:	0087f863          	bgeu	a5,s0,a364 <__umoddi3+0xd8>
    a358:	00fa07b3          	add	a5,s4,a5
    a35c:	0147e463          	bltu	a5,s4,a364 <__umoddi3+0xd8>
    a360:	5687e863          	bltu	a5,s0,a8d0 <__umoddi3+0x644>
    a364:	40878433          	sub	s0,a5,s0
    a368:	000a8593          	mv	a1,s5
    a36c:	00040513          	mv	a0,s0
    a370:	f08f70ef          	jal	1a78 <__hidden___udivsi3>
    a374:	000b0593          	mv	a1,s6
    a378:	ed4f70ef          	jal	1a4c <__mulsi3>
    a37c:	00050793          	mv	a5,a0
    a380:	000a8593          	mv	a1,s5
    a384:	00040513          	mv	a0,s0
    a388:	00078413          	mv	s0,a5
    a38c:	f34f70ef          	jal	1ac0 <__umodsi3>
    a390:	01091793          	sll	a5,s2,0x10
    a394:	01051513          	sll	a0,a0,0x10
    a398:	0107d793          	srl	a5,a5,0x10
    a39c:	00a7e7b3          	or	a5,a5,a0
    a3a0:	0087f863          	bgeu	a5,s0,a3b0 <__umoddi3+0x124>
    a3a4:	00fa07b3          	add	a5,s4,a5
    a3a8:	0147e463          	bltu	a5,s4,a3b0 <__umoddi3+0x124>
    a3ac:	5087ea63          	bltu	a5,s0,a8c0 <__umoddi3+0x634>
    a3b0:	01012b03          	lw	s6,16(sp)
    a3b4:	408787b3          	sub	a5,a5,s0
    a3b8:	0097d533          	srl	a0,a5,s1
    a3bc:	02812403          	lw	s0,40(sp)
    a3c0:	02412483          	lw	s1,36(sp)
    a3c4:	02012903          	lw	s2,32(sp)
    a3c8:	01c12983          	lw	s3,28(sp)
    a3cc:	01812a03          	lw	s4,24(sp)
    a3d0:	01412a83          	lw	s5,20(sp)
    a3d4:	00000593          	li	a1,0
    a3d8:	02c12083          	lw	ra,44(sp)
    a3dc:	03010113          	add	sp,sp,48
    a3e0:	00008067          	ret
    a3e4:	00050893          	mv	a7,a0
    a3e8:	fed5e8e3          	bltu	a1,a3,a3d8 <__umoddi3+0x14c>
    a3ec:	03212023          	sw	s2,32(sp)
    a3f0:	01312e23          	sw	s3,28(sp)
    a3f4:	00010737          	lui	a4,0x10
    a3f8:	00058813          	mv	a6,a1
    a3fc:	24e6ec63          	bltu	a3,a4,a654 <__umoddi3+0x3c8>
    a400:	01000737          	lui	a4,0x1000
    a404:	01800513          	li	a0,24
    a408:	00e6f463          	bgeu	a3,a4,a410 <__umoddi3+0x184>
    a40c:	01000513          	li	a0,16
    a410:	00a6d333          	srl	t1,a3,a0
    a414:	00026717          	auipc	a4,0x26
    a418:	f7470713          	add	a4,a4,-140 # 30388 <__clz_tab>
    a41c:	00670733          	add	a4,a4,t1
    a420:	00074703          	lbu	a4,0(a4)
    a424:	02000313          	li	t1,32
    a428:	00a709b3          	add	s3,a4,a0
    a42c:	41330933          	sub	s2,t1,s3
    a430:	25331a63          	bne	t1,s3,a684 <__umoddi3+0x3f8>
    a434:	00b6e463          	bltu	a3,a1,a43c <__umoddi3+0x1b0>
    a438:	00c7ea63          	bltu	a5,a2,a44c <__umoddi3+0x1c0>
    a43c:	40c788b3          	sub	a7,a5,a2
    a440:	40d586b3          	sub	a3,a1,a3
    a444:	0117b833          	sltu	a6,a5,a7
    a448:	41068833          	sub	a6,a3,a6
    a44c:	02c12083          	lw	ra,44(sp)
    a450:	02012903          	lw	s2,32(sp)
    a454:	01c12983          	lw	s3,28(sp)
    a458:	00088513          	mv	a0,a7
    a45c:	00080593          	mv	a1,a6
    a460:	03010113          	add	sp,sp,48
    a464:	00008067          	ret
    a468:	0e060a63          	beqz	a2,a55c <__umoddi3+0x2d0>
    a46c:	00010737          	lui	a4,0x10
    a470:	42e67663          	bgeu	a2,a4,a89c <__umoddi3+0x610>
    a474:	10063693          	sltiu	a3,a2,256
    a478:	0016b693          	seqz	a3,a3
    a47c:	00369693          	sll	a3,a3,0x3
    a480:	00d65533          	srl	a0,a2,a3
    a484:	00026717          	auipc	a4,0x26
    a488:	f0470713          	add	a4,a4,-252 # 30388 <__clz_tab>
    a48c:	00a70733          	add	a4,a4,a0
    a490:	00074983          	lbu	s3,0(a4)
    a494:	02000713          	li	a4,32
    a498:	00d989b3          	add	s3,s3,a3
    a49c:	413704b3          	sub	s1,a4,s3
    a4a0:	0f371263          	bne	a4,s3,a584 <__umoddi3+0x2f8>
    a4a4:	01061413          	sll	s0,a2,0x10
    a4a8:	40c589b3          	sub	s3,a1,a2
    a4ac:	01065a93          	srl	s5,a2,0x10
    a4b0:	01045413          	srl	s0,s0,0x10
    a4b4:	000a8593          	mv	a1,s5
    a4b8:	00098513          	mv	a0,s3
    a4bc:	dbcf70ef          	jal	1a78 <__hidden___udivsi3>
    a4c0:	00040593          	mv	a1,s0
    a4c4:	d88f70ef          	jal	1a4c <__mulsi3>
    a4c8:	00050793          	mv	a5,a0
    a4cc:	000a8593          	mv	a1,s5
    a4d0:	00098513          	mv	a0,s3
    a4d4:	00078993          	mv	s3,a5
    a4d8:	de8f70ef          	jal	1ac0 <__umodsi3>
    a4dc:	01051513          	sll	a0,a0,0x10
    a4e0:	01095793          	srl	a5,s2,0x10
    a4e4:	00a7e7b3          	or	a5,a5,a0
    a4e8:	0137f863          	bgeu	a5,s3,a4f8 <__umoddi3+0x26c>
    a4ec:	00fa07b3          	add	a5,s4,a5
    a4f0:	0147e463          	bltu	a5,s4,a4f8 <__umoddi3+0x26c>
    a4f4:	3d37ea63          	bltu	a5,s3,a8c8 <__umoddi3+0x63c>
    a4f8:	413789b3          	sub	s3,a5,s3
    a4fc:	000a8593          	mv	a1,s5
    a500:	00098513          	mv	a0,s3
    a504:	d74f70ef          	jal	1a78 <__hidden___udivsi3>
    a508:	00040593          	mv	a1,s0
    a50c:	d40f70ef          	jal	1a4c <__mulsi3>
    a510:	00050413          	mv	s0,a0
    a514:	000a8593          	mv	a1,s5
    a518:	00098513          	mv	a0,s3
    a51c:	da4f70ef          	jal	1ac0 <__umodsi3>
    a520:	01091913          	sll	s2,s2,0x10
    a524:	01051793          	sll	a5,a0,0x10
    a528:	01095913          	srl	s2,s2,0x10
    a52c:	00f967b3          	or	a5,s2,a5
    a530:	0087fa63          	bgeu	a5,s0,a544 <__umoddi3+0x2b8>
    a534:	00fa07b3          	add	a5,s4,a5
    a538:	0147e663          	bltu	a5,s4,a544 <__umoddi3+0x2b8>
    a53c:	0087f463          	bgeu	a5,s0,a544 <__umoddi3+0x2b8>
    a540:	014787b3          	add	a5,a5,s4
    a544:	408787b3          	sub	a5,a5,s0
    a548:	e71ff06f          	j	a3b8 <__umoddi3+0x12c>
    a54c:	10063693          	sltiu	a3,a2,256
    a550:	0016b693          	seqz	a3,a3
    a554:	00369693          	sll	a3,a3,0x3
    a558:	d89ff06f          	j	a2e0 <__umoddi3+0x54>
    a55c:	00000513          	li	a0,0
    a560:	00026717          	auipc	a4,0x26
    a564:	e2870713          	add	a4,a4,-472 # 30388 <__clz_tab>
    a568:	00a70733          	add	a4,a4,a0
    a56c:	00074983          	lbu	s3,0(a4)
    a570:	00000693          	li	a3,0
    a574:	02000713          	li	a4,32
    a578:	00d989b3          	add	s3,s3,a3
    a57c:	413704b3          	sub	s1,a4,s3
    a580:	f33702e3          	beq	a4,s3,a4a4 <__umoddi3+0x218>
    a584:	00961a33          	sll	s4,a2,s1
    a588:	01712623          	sw	s7,12(sp)
    a58c:	010a5a93          	srl	s5,s4,0x10
    a590:	0135dbb3          	srl	s7,a1,s3
    a594:	00959733          	sll	a4,a1,s1
    a598:	0137d9b3          	srl	s3,a5,s3
    a59c:	000a8593          	mv	a1,s5
    a5a0:	000b8513          	mv	a0,s7
    a5a4:	010a1413          	sll	s0,s4,0x10
    a5a8:	00e9e9b3          	or	s3,s3,a4
    a5ac:	00979933          	sll	s2,a5,s1
    a5b0:	01612823          	sw	s6,16(sp)
    a5b4:	01045413          	srl	s0,s0,0x10
    a5b8:	cc0f70ef          	jal	1a78 <__hidden___udivsi3>
    a5bc:	00040593          	mv	a1,s0
    a5c0:	c8cf70ef          	jal	1a4c <__mulsi3>
    a5c4:	00050b13          	mv	s6,a0
    a5c8:	000a8593          	mv	a1,s5
    a5cc:	000b8513          	mv	a0,s7
    a5d0:	cf0f70ef          	jal	1ac0 <__umodsi3>
    a5d4:	01051513          	sll	a0,a0,0x10
    a5d8:	0109d793          	srl	a5,s3,0x10
    a5dc:	00a7e7b3          	or	a5,a5,a0
    a5e0:	0167fa63          	bgeu	a5,s6,a5f4 <__umoddi3+0x368>
    a5e4:	00fa07b3          	add	a5,s4,a5
    a5e8:	0147e663          	bltu	a5,s4,a5f4 <__umoddi3+0x368>
    a5ec:	0167f463          	bgeu	a5,s6,a5f4 <__umoddi3+0x368>
    a5f0:	014787b3          	add	a5,a5,s4
    a5f4:	41678b33          	sub	s6,a5,s6
    a5f8:	000a8593          	mv	a1,s5
    a5fc:	000b0513          	mv	a0,s6
    a600:	c78f70ef          	jal	1a78 <__hidden___udivsi3>
    a604:	00040593          	mv	a1,s0
    a608:	c44f70ef          	jal	1a4c <__mulsi3>
    a60c:	00050793          	mv	a5,a0
    a610:	000a8593          	mv	a1,s5
    a614:	000b0513          	mv	a0,s6
    a618:	01099993          	sll	s3,s3,0x10
    a61c:	00078b13          	mv	s6,a5
    a620:	ca0f70ef          	jal	1ac0 <__umodsi3>
    a624:	01051513          	sll	a0,a0,0x10
    a628:	0109d993          	srl	s3,s3,0x10
    a62c:	00a9e9b3          	or	s3,s3,a0
    a630:	0169fa63          	bgeu	s3,s6,a644 <__umoddi3+0x3b8>
    a634:	013a09b3          	add	s3,s4,s3
    a638:	0149e663          	bltu	s3,s4,a644 <__umoddi3+0x3b8>
    a63c:	0169f463          	bgeu	s3,s6,a644 <__umoddi3+0x3b8>
    a640:	014989b3          	add	s3,s3,s4
    a644:	416989b3          	sub	s3,s3,s6
    a648:	00c12b83          	lw	s7,12(sp)
    a64c:	01012b03          	lw	s6,16(sp)
    a650:	e65ff06f          	j	a4b4 <__umoddi3+0x228>
    a654:	1006b513          	sltiu	a0,a3,256
    a658:	00153513          	seqz	a0,a0
    a65c:	00351513          	sll	a0,a0,0x3
    a660:	00a6d333          	srl	t1,a3,a0
    a664:	00026717          	auipc	a4,0x26
    a668:	d2470713          	add	a4,a4,-732 # 30388 <__clz_tab>
    a66c:	00670733          	add	a4,a4,t1
    a670:	00074703          	lbu	a4,0(a4)
    a674:	02000313          	li	t1,32
    a678:	00a709b3          	add	s3,a4,a0
    a67c:	41330933          	sub	s2,t1,s3
    a680:	db330ae3          	beq	t1,s3,a434 <__umoddi3+0x1a8>
    a684:	01512a23          	sw	s5,20(sp)
    a688:	012696b3          	sll	a3,a3,s2
    a68c:	01365ab3          	srl	s5,a2,s3
    a690:	00daeab3          	or	s5,s5,a3
    a694:	01712623          	sw	s7,12(sp)
    a698:	01a12023          	sw	s10,0(sp)
    a69c:	010adb93          	srl	s7,s5,0x10
    a6a0:	0135dd33          	srl	s10,a1,s3
    a6a4:	01259733          	sll	a4,a1,s2
    a6a8:	0137d6b3          	srl	a3,a5,s3
    a6ac:	01912223          	sw	s9,4(sp)
    a6b0:	000b8593          	mv	a1,s7
    a6b4:	000d0513          	mv	a0,s10
    a6b8:	010a9c93          	sll	s9,s5,0x10
    a6bc:	02812423          	sw	s0,40(sp)
    a6c0:	02912223          	sw	s1,36(sp)
    a6c4:	01261433          	sll	s0,a2,s2
    a6c8:	012794b3          	sll	s1,a5,s2
    a6cc:	01412c23          	sw	s4,24(sp)
    a6d0:	01612823          	sw	s6,16(sp)
    a6d4:	00e6ea33          	or	s4,a3,a4
    a6d8:	01812423          	sw	s8,8(sp)
    a6dc:	010cdc93          	srl	s9,s9,0x10
    a6e0:	b98f70ef          	jal	1a78 <__hidden___udivsi3>
    a6e4:	00050593          	mv	a1,a0
    a6e8:	00050b13          	mv	s6,a0
    a6ec:	000c8513          	mv	a0,s9
    a6f0:	b5cf70ef          	jal	1a4c <__mulsi3>
    a6f4:	00050c13          	mv	s8,a0
    a6f8:	000b8593          	mv	a1,s7
    a6fc:	000d0513          	mv	a0,s10
    a700:	bc0f70ef          	jal	1ac0 <__umodsi3>
    a704:	01051513          	sll	a0,a0,0x10
    a708:	010a5793          	srl	a5,s4,0x10
    a70c:	00a7e7b3          	or	a5,a5,a0
    a710:	0187fe63          	bgeu	a5,s8,a72c <__umoddi3+0x4a0>
    a714:	00fa87b3          	add	a5,s5,a5
    a718:	fffb0713          	add	a4,s6,-1
    a71c:	1957ee63          	bltu	a5,s5,a8b8 <__umoddi3+0x62c>
    a720:	1987fc63          	bgeu	a5,s8,a8b8 <__umoddi3+0x62c>
    a724:	ffeb0b13          	add	s6,s6,-2
    a728:	015787b3          	add	a5,a5,s5
    a72c:	41878c33          	sub	s8,a5,s8
    a730:	000b8593          	mv	a1,s7
    a734:	000c0513          	mv	a0,s8
    a738:	b40f70ef          	jal	1a78 <__hidden___udivsi3>
    a73c:	00050593          	mv	a1,a0
    a740:	00050d13          	mv	s10,a0
    a744:	000c8513          	mv	a0,s9
    a748:	b04f70ef          	jal	1a4c <__mulsi3>
    a74c:	00050793          	mv	a5,a0
    a750:	000b8593          	mv	a1,s7
    a754:	000c0513          	mv	a0,s8
    a758:	00078b93          	mv	s7,a5
    a75c:	b64f70ef          	jal	1ac0 <__umodsi3>
    a760:	010a1593          	sll	a1,s4,0x10
    a764:	01051513          	sll	a0,a0,0x10
    a768:	0105d593          	srl	a1,a1,0x10
    a76c:	00a5e5b3          	or	a1,a1,a0
    a770:	0175fe63          	bgeu	a1,s7,a78c <__umoddi3+0x500>
    a774:	00ba85b3          	add	a1,s5,a1
    a778:	fffd0793          	add	a5,s10,-1
    a77c:	1355ea63          	bltu	a1,s5,a8b0 <__umoddi3+0x624>
    a780:	1375f863          	bgeu	a1,s7,a8b0 <__umoddi3+0x624>
    a784:	ffed0d13          	add	s10,s10,-2
    a788:	015585b3          	add	a1,a1,s5
    a78c:	010b1793          	sll	a5,s6,0x10
    a790:	00010e37          	lui	t3,0x10
    a794:	01a7e7b3          	or	a5,a5,s10
    a798:	fffe0313          	add	t1,t3,-1 # ffff <__fini_array_end+0x4fff>
    a79c:	0067f8b3          	and	a7,a5,t1
    a7a0:	00647333          	and	t1,s0,t1
    a7a4:	41758733          	sub	a4,a1,s7
    a7a8:	0107d793          	srl	a5,a5,0x10
    a7ac:	01045e93          	srl	t4,s0,0x10
    a7b0:	00088513          	mv	a0,a7
    a7b4:	00030593          	mv	a1,t1
    a7b8:	a94f70ef          	jal	1a4c <__mulsi3>
    a7bc:	00050813          	mv	a6,a0
    a7c0:	000e8593          	mv	a1,t4
    a7c4:	00088513          	mv	a0,a7
    a7c8:	a84f70ef          	jal	1a4c <__mulsi3>
    a7cc:	00050893          	mv	a7,a0
    a7d0:	00030593          	mv	a1,t1
    a7d4:	00078513          	mv	a0,a5
    a7d8:	a74f70ef          	jal	1a4c <__mulsi3>
    a7dc:	00050313          	mv	t1,a0
    a7e0:	000e8593          	mv	a1,t4
    a7e4:	00078513          	mv	a0,a5
    a7e8:	a64f70ef          	jal	1a4c <__mulsi3>
    a7ec:	01085793          	srl	a5,a6,0x10
    a7f0:	006888b3          	add	a7,a7,t1
    a7f4:	011787b3          	add	a5,a5,a7
    a7f8:	0067f463          	bgeu	a5,t1,a800 <__umoddi3+0x574>
    a7fc:	01c50533          	add	a0,a0,t3
    a800:	00010637          	lui	a2,0x10
    a804:	fff60613          	add	a2,a2,-1 # ffff <__fini_array_end+0x4fff>
    a808:	0107d693          	srl	a3,a5,0x10
    a80c:	00c7f7b3          	and	a5,a5,a2
    a810:	01079793          	sll	a5,a5,0x10
    a814:	00c87833          	and	a6,a6,a2
    a818:	00a686b3          	add	a3,a3,a0
    a81c:	010787b3          	add	a5,a5,a6
    a820:	06d76263          	bltu	a4,a3,a884 <__umoddi3+0x5f8>
    a824:	04d70e63          	beq	a4,a3,a880 <__umoddi3+0x5f4>
    a828:	40f487b3          	sub	a5,s1,a5
    a82c:	00f4b4b3          	sltu	s1,s1,a5
    a830:	02812403          	lw	s0,40(sp)
    a834:	02c12083          	lw	ra,44(sp)
    a838:	40d705b3          	sub	a1,a4,a3
    a83c:	409585b3          	sub	a1,a1,s1
    a840:	01359733          	sll	a4,a1,s3
    a844:	0127d7b3          	srl	a5,a5,s2
    a848:	02412483          	lw	s1,36(sp)
    a84c:	01c12983          	lw	s3,28(sp)
    a850:	01812a03          	lw	s4,24(sp)
    a854:	01412a83          	lw	s5,20(sp)
    a858:	01012b03          	lw	s6,16(sp)
    a85c:	00c12b83          	lw	s7,12(sp)
    a860:	00812c03          	lw	s8,8(sp)
    a864:	00412c83          	lw	s9,4(sp)
    a868:	00012d03          	lw	s10,0(sp)
    a86c:	0125d5b3          	srl	a1,a1,s2
    a870:	00f76533          	or	a0,a4,a5
    a874:	02012903          	lw	s2,32(sp)
    a878:	03010113          	add	sp,sp,48
    a87c:	00008067          	ret
    a880:	faf4f4e3          	bgeu	s1,a5,a828 <__umoddi3+0x59c>
    a884:	40878433          	sub	s0,a5,s0
    a888:	0087b7b3          	sltu	a5,a5,s0
    a88c:	01578ab3          	add	s5,a5,s5
    a890:	415686b3          	sub	a3,a3,s5
    a894:	00040793          	mv	a5,s0
    a898:	f91ff06f          	j	a828 <__umoddi3+0x59c>
    a89c:	01000737          	lui	a4,0x1000
    a8a0:	02e67c63          	bgeu	a2,a4,a8d8 <__umoddi3+0x64c>
    a8a4:	01065513          	srl	a0,a2,0x10
    a8a8:	01000693          	li	a3,16
    a8ac:	bd9ff06f          	j	a484 <__umoddi3+0x1f8>
    a8b0:	00078d13          	mv	s10,a5
    a8b4:	ed9ff06f          	j	a78c <__umoddi3+0x500>
    a8b8:	00070b13          	mv	s6,a4
    a8bc:	e71ff06f          	j	a72c <__umoddi3+0x4a0>
    a8c0:	014787b3          	add	a5,a5,s4
    a8c4:	aedff06f          	j	a3b0 <__umoddi3+0x124>
    a8c8:	014787b3          	add	a5,a5,s4
    a8cc:	c2dff06f          	j	a4f8 <__umoddi3+0x26c>
    a8d0:	014787b3          	add	a5,a5,s4
    a8d4:	a91ff06f          	j	a364 <__umoddi3+0xd8>
    a8d8:	01865513          	srl	a0,a2,0x18
    a8dc:	01800693          	li	a3,24
    a8e0:	ba5ff06f          	j	a484 <__umoddi3+0x1f8>
