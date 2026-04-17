
/out/echo_v5.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	0003e197          	auipc	gp,0x3e
      10:	7f418193          	add	gp,gp,2036 # 3e800 <_global_pointer>
      14:	00000013          	nop
      18:	03200613          	li	a2,50
      1c:	001005b7          	lui	a1,0x100
      20:	00000513          	li	a0,0
      24:	03c000ef          	jal	60 <_Z10soc_bootupiii>
      28:	000357b7          	lui	a5,0x35
      2c:	80078093          	add	ra,a5,-2048 # 34800 <__sf>
      30:	00c0006f          	j	3c <_start+0x3c>
      34:	0000a023          	sw	zero,0(ra)
      38:	00408093          	add	ra,ra,4
      3c:	000357b7          	lui	a5,0x35
      40:	96078793          	add	a5,a5,-1696 # 34960 <__dso_handle>
      44:	fef0e8e3          	bltu	ra,a5,34 <_start+0x34>
      48:	484000ef          	jal	4cc <__libc_init_array>
      4c:	0e8000ef          	jal	134 <main>
      50:	00050793          	mv	a5,a0
      54:	00078093          	mv	ra,a5
      58:	00008513          	mv	a0,ra
      5c:	530000ef          	jal	58c <_exit>

00000060 <_Z10soc_bootupiii>:
      60:	fd010113          	add	sp,sp,-48
      64:	02112623          	sw	ra,44(sp)
      68:	02812423          	sw	s0,40(sp)
      6c:	03010413          	add	s0,sp,48
      70:	fca42e23          	sw	a0,-36(s0)
      74:	fcb42c23          	sw	a1,-40(s0)
      78:	fcc42a23          	sw	a2,-44(s0)
      7c:	002017b7          	lui	a5,0x201
      80:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
      84:	fdc42703          	lw	a4,-36(s0)
      88:	00e7a023          	sw	a4,0(a5)
      8c:	002017b7          	lui	a5,0x201
      90:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
      94:	fd842703          	lw	a4,-40(s0)
      98:	00e7a023          	sw	a4,0(a5)
      9c:	002017b7          	lui	a5,0x201
      a0:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
      a4:	fd442703          	lw	a4,-44(s0)
      a8:	00e7a023          	sw	a4,0(a5)
      ac:	000307b7          	lui	a5,0x30
      b0:	00878513          	add	a0,a5,8 # 30008 <__fini_array_end+0x2a808>
      b4:	028040ef          	jal	40dc <_Z10uart_printPKc>
      b8:	041030ef          	jal	38f8 <_Z8cmd_freev>
      bc:	000307b7          	lui	a5,0x30
      c0:	01478513          	add	a0,a5,20 # 30014 <__fini_array_end+0x2a814>
      c4:	018040ef          	jal	40dc <_Z10uart_printPKc>
      c8:	002017b7          	lui	a5,0x201
      cc:	03c78793          	add	a5,a5,60 # 20103c <GET_WATCHDOG_HIGH>
      d0:	0007a703          	lw	a4,0(a5)
      d4:	02000793          	li	a5,32
      d8:	00f71733          	sll	a4,a4,a5
      dc:	002017b7          	lui	a5,0x201
      e0:	04078793          	add	a5,a5,64 # 201040 <GET_WATCHDOG_LOW>
      e4:	0007a783          	lw	a5,0(a5)
      e8:	00f767b3          	or	a5,a4,a5
      ec:	fef42423          	sw	a5,-24(s0)
      f0:	41f7d793          	sra	a5,a5,0x1f
      f4:	fef42623          	sw	a5,-20(s0)
      f8:	fe842503          	lw	a0,-24(s0)
      fc:	fec42583          	lw	a1,-20(s0)
     100:	350040ef          	jal	4450 <_Z16uart_print_int64x>
     104:	00000013          	nop
     108:	000307b7          	lui	a5,0x30
     10c:	03078513          	add	a0,a5,48 # 30030 <__fini_array_end+0x2a830>
     110:	7cd030ef          	jal	40dc <_Z10uart_printPKc>
     114:	000307b7          	lui	a5,0x30
     118:	04078513          	add	a0,a5,64 # 30040 <__fini_array_end+0x2a840>
     11c:	7c1030ef          	jal	40dc <_Z10uart_printPKc>
     120:	00000013          	nop
     124:	02c12083          	lw	ra,44(sp)
     128:	02812403          	lw	s0,40(sp)
     12c:	03010113          	add	sp,sp,48
     130:	00008067          	ret

00000134 <main>:
     134:	ee010113          	add	sp,sp,-288
     138:	10112e23          	sw	ra,284(sp)
     13c:	10812c23          	sw	s0,280(sp)
     140:	12010413          	add	s0,sp,288
     144:	00100793          	li	a5,1
     148:	fef401a3          	sb	a5,-29(s0)
     14c:	05000793          	li	a5,80
     150:	fef42623          	sw	a5,-20(s0)
     154:	01800793          	li	a5,24
     158:	fef42423          	sw	a5,-24(s0)
     15c:	03800793          	li	a5,56
     160:	fef42223          	sw	a5,-28(s0)
     164:	0580006f          	j	1bc <main+0x88>
     168:	f6040793          	add	a5,s0,-160
     16c:	fec42583          	lw	a1,-20(s0)
     170:	00078513          	mv	a0,a5
     174:	458040ef          	jal	45cc <_Z12uart_getlinePci>
     178:	ee040613          	add	a2,s0,-288
     17c:	f4040593          	add	a1,s0,-192
     180:	f6040793          	add	a5,s0,-160
     184:	fe442703          	lw	a4,-28(s0)
     188:	fe842683          	lw	a3,-24(s0)
     18c:	00078513          	mv	a0,a5
     190:	00d040ef          	jal	499c <_Z17cmd_arg_tokenizerPcS_S_ii>
     194:	fe340693          	add	a3,s0,-29
     198:	ee040713          	add	a4,s0,-288
     19c:	f4040793          	add	a5,s0,-192
     1a0:	00068613          	mv	a2,a3
     1a4:	00070593          	mv	a1,a4
     1a8:	00078513          	mv	a0,a5
     1ac:	6c0040ef          	jal	486c <_Z15process_commandPcS_PVb>
     1b0:	000307b7          	lui	a5,0x30
     1b4:	00078513          	mv	a0,a5
     1b8:	725030ef          	jal	40dc <_Z10uart_printPKc>
     1bc:	fe344783          	lbu	a5,-29(s0)
     1c0:	0ff7f793          	zext.b	a5,a5
     1c4:	fa0792e3          	bnez	a5,168 <main+0x34>
     1c8:	fe344783          	lbu	a5,-29(s0)
     1cc:	0ff7f793          	zext.b	a5,a5
     1d0:	00078513          	mv	a0,a5
     1d4:	11c12083          	lw	ra,284(sp)
     1d8:	11812403          	lw	s0,280(sp)
     1dc:	12010113          	add	sp,sp,288
     1e0:	00008067          	ret

000001e4 <get_sp>:
     1e4:	fe010113          	add	sp,sp,-32
     1e8:	00812e23          	sw	s0,28(sp)
     1ec:	02010413          	add	s0,sp,32
     1f0:	00010793          	mv	a5,sp
     1f4:	fef42623          	sw	a5,-20(s0)
     1f8:	fec42783          	lw	a5,-20(s0)
     1fc:	00078513          	mv	a0,a5
     200:	01c12403          	lw	s0,28(sp)
     204:	02010113          	add	sp,sp,32
     208:	00008067          	ret

0000020c <_sbrk>:
     20c:	fd010113          	add	sp,sp,-48
     210:	02112623          	sw	ra,44(sp)
     214:	02812423          	sw	s0,40(sp)
     218:	03010413          	add	s0,sp,48
     21c:	fca42e23          	sw	a0,-36(s0)
     220:	000347b7          	lui	a5,0x34
     224:	5407a783          	lw	a5,1344(a5) # 34540 <_ZL8heap_end>
     228:	fef42623          	sw	a5,-20(s0)
     22c:	fb9ff0ef          	jal	1e4 <get_sp>
     230:	fea42423          	sw	a0,-24(s0)
     234:	000347b7          	lui	a5,0x34
     238:	5407a703          	lw	a4,1344(a5) # 34540 <_ZL8heap_end>
     23c:	fdc42783          	lw	a5,-36(s0)
     240:	00279793          	sll	a5,a5,0x2
     244:	00f707b3          	add	a5,a4,a5
     248:	00078713          	mv	a4,a5
     24c:	fe842783          	lw	a5,-24(s0)
     250:	02f76463          	bltu	a4,a5,278 <_sbrk+0x6c>
     254:	000307b7          	lui	a5,0x30
     258:	04878513          	add	a0,a5,72 # 30048 <__fini_array_end+0x2a848>
     25c:	681030ef          	jal	40dc <_Z10uart_printPKc>
     260:	66c010ef          	jal	18cc <__errno>
     264:	00050713          	mv	a4,a0
     268:	00c00793          	li	a5,12
     26c:	00f72023          	sw	a5,0(a4)
     270:	fff00793          	li	a5,-1
     274:	0240006f          	j	298 <_sbrk+0x8c>
     278:	000347b7          	lui	a5,0x34
     27c:	5407a703          	lw	a4,1344(a5) # 34540 <_ZL8heap_end>
     280:	fdc42783          	lw	a5,-36(s0)
     284:	00279793          	sll	a5,a5,0x2
     288:	00f70733          	add	a4,a4,a5
     28c:	000347b7          	lui	a5,0x34
     290:	54e7a023          	sw	a4,1344(a5) # 34540 <_ZL8heap_end>
     294:	fec42783          	lw	a5,-20(s0)
     298:	00078513          	mv	a0,a5
     29c:	02c12083          	lw	ra,44(sp)
     2a0:	02812403          	lw	s0,40(sp)
     2a4:	03010113          	add	sp,sp,48
     2a8:	00008067          	ret

000002ac <_write>:
     2ac:	fd010113          	add	sp,sp,-48
     2b0:	02112623          	sw	ra,44(sp)
     2b4:	02812423          	sw	s0,40(sp)
     2b8:	03010413          	add	s0,sp,48
     2bc:	fca42e23          	sw	a0,-36(s0)
     2c0:	fcb42c23          	sw	a1,-40(s0)
     2c4:	fcc42a23          	sw	a2,-44(s0)
     2c8:	fe042623          	sw	zero,-20(s0)
     2cc:	02c0006f          	j	2f8 <_write+0x4c>
     2d0:	fec42783          	lw	a5,-20(s0)
     2d4:	fd842703          	lw	a4,-40(s0)
     2d8:	00f707b3          	add	a5,a4,a5
     2dc:	0007c783          	lbu	a5,0(a5)
     2e0:	00078513          	mv	a0,a5
     2e4:	595030ef          	jal	4078 <_Z9uart_putcc>
     2e8:	00000013          	nop
     2ec:	fec42783          	lw	a5,-20(s0)
     2f0:	00178793          	add	a5,a5,1
     2f4:	fef42623          	sw	a5,-20(s0)
     2f8:	fec42703          	lw	a4,-20(s0)
     2fc:	fd442783          	lw	a5,-44(s0)
     300:	fcf748e3          	blt	a4,a5,2d0 <_write+0x24>
     304:	fd442783          	lw	a5,-44(s0)
     308:	00078513          	mv	a0,a5
     30c:	02c12083          	lw	ra,44(sp)
     310:	02812403          	lw	s0,40(sp)
     314:	03010113          	add	sp,sp,48
     318:	00008067          	ret

0000031c <_read>:
     31c:	fd010113          	add	sp,sp,-48
     320:	02112623          	sw	ra,44(sp)
     324:	02812423          	sw	s0,40(sp)
     328:	02912223          	sw	s1,36(sp)
     32c:	03010413          	add	s0,sp,48
     330:	fca42e23          	sw	a0,-36(s0)
     334:	fcb42c23          	sw	a1,-40(s0)
     338:	fcc42a23          	sw	a2,-44(s0)
     33c:	fe042623          	sw	zero,-20(s0)
     340:	0300006f          	j	370 <_read+0x54>
     344:	fec42783          	lw	a5,-20(s0)
     348:	fd842703          	lw	a4,-40(s0)
     34c:	00f704b3          	add	s1,a4,a5
     350:	00100513          	li	a0,1
     354:	4ad030ef          	jal	4000 <_Z9uart_getcb>
     358:	00050793          	mv	a5,a0
     35c:	00f48023          	sb	a5,0(s1)
     360:	00000013          	nop
     364:	fec42783          	lw	a5,-20(s0)
     368:	00178793          	add	a5,a5,1
     36c:	fef42623          	sw	a5,-20(s0)
     370:	fec42703          	lw	a4,-20(s0)
     374:	fd442783          	lw	a5,-44(s0)
     378:	fcf746e3          	blt	a4,a5,344 <_read+0x28>
     37c:	fd442783          	lw	a5,-44(s0)
     380:	00078513          	mv	a0,a5
     384:	02c12083          	lw	ra,44(sp)
     388:	02812403          	lw	s0,40(sp)
     38c:	02412483          	lw	s1,36(sp)
     390:	03010113          	add	sp,sp,48
     394:	00008067          	ret

00000398 <_close>:
     398:	fe010113          	add	sp,sp,-32
     39c:	00812e23          	sw	s0,28(sp)
     3a0:	02010413          	add	s0,sp,32
     3a4:	fea42623          	sw	a0,-20(s0)
     3a8:	fff00793          	li	a5,-1
     3ac:	00078513          	mv	a0,a5
     3b0:	01c12403          	lw	s0,28(sp)
     3b4:	02010113          	add	sp,sp,32
     3b8:	00008067          	ret

000003bc <_fstat>:
     3bc:	fe010113          	add	sp,sp,-32
     3c0:	00812e23          	sw	s0,28(sp)
     3c4:	02010413          	add	s0,sp,32
     3c8:	fea42623          	sw	a0,-20(s0)
     3cc:	feb42423          	sw	a1,-24(s0)
     3d0:	fe842783          	lw	a5,-24(s0)
     3d4:	00002737          	lui	a4,0x2
     3d8:	00e7a223          	sw	a4,4(a5)
     3dc:	00000793          	li	a5,0
     3e0:	00078513          	mv	a0,a5
     3e4:	01c12403          	lw	s0,28(sp)
     3e8:	02010113          	add	sp,sp,32
     3ec:	00008067          	ret

000003f0 <_isatty>:
     3f0:	fe010113          	add	sp,sp,-32
     3f4:	00812e23          	sw	s0,28(sp)
     3f8:	02010413          	add	s0,sp,32
     3fc:	fea42623          	sw	a0,-20(s0)
     400:	00100793          	li	a5,1
     404:	00078513          	mv	a0,a5
     408:	01c12403          	lw	s0,28(sp)
     40c:	02010113          	add	sp,sp,32
     410:	00008067          	ret

00000414 <_lseek>:
     414:	fe010113          	add	sp,sp,-32
     418:	00812e23          	sw	s0,28(sp)
     41c:	02010413          	add	s0,sp,32
     420:	fea42623          	sw	a0,-20(s0)
     424:	feb42423          	sw	a1,-24(s0)
     428:	fec42223          	sw	a2,-28(s0)
     42c:	00000793          	li	a5,0
     430:	00078513          	mv	a0,a5
     434:	01c12403          	lw	s0,28(sp)
     438:	02010113          	add	sp,sp,32
     43c:	00008067          	ret

00000440 <_open>:
     440:	fe010113          	add	sp,sp,-32
     444:	00812e23          	sw	s0,28(sp)
     448:	02010413          	add	s0,sp,32
     44c:	fea42623          	sw	a0,-20(s0)
     450:	feb42423          	sw	a1,-24(s0)
     454:	fec42223          	sw	a2,-28(s0)
     458:	fff00793          	li	a5,-1
     45c:	00078513          	mv	a0,a5
     460:	01c12403          	lw	s0,28(sp)
     464:	02010113          	add	sp,sp,32
     468:	00008067          	ret

0000046c <_kill>:
     46c:	fe010113          	add	sp,sp,-32
     470:	00112e23          	sw	ra,28(sp)
     474:	00812c23          	sw	s0,24(sp)
     478:	02010413          	add	s0,sp,32
     47c:	fea42623          	sw	a0,-20(s0)
     480:	feb42423          	sw	a1,-24(s0)
     484:	448010ef          	jal	18cc <__errno>
     488:	00050713          	mv	a4,a0
     48c:	01600793          	li	a5,22
     490:	00f72023          	sw	a5,0(a4) # 2000 <_close_r+0x24>
     494:	fff00793          	li	a5,-1
     498:	00078513          	mv	a0,a5
     49c:	01c12083          	lw	ra,28(sp)
     4a0:	01812403          	lw	s0,24(sp)
     4a4:	02010113          	add	sp,sp,32
     4a8:	00008067          	ret

000004ac <_getpid>:
     4ac:	ff010113          	add	sp,sp,-16
     4b0:	00812623          	sw	s0,12(sp)
     4b4:	01010413          	add	s0,sp,16
     4b8:	00100793          	li	a5,1
     4bc:	00078513          	mv	a0,a5
     4c0:	00c12403          	lw	s0,12(sp)
     4c4:	01010113          	add	sp,sp,16
     4c8:	00008067          	ret

000004cc <__libc_init_array>:
     4cc:	fe010113          	add	sp,sp,-32
     4d0:	00112e23          	sw	ra,28(sp)
     4d4:	00812c23          	sw	s0,24(sp)
     4d8:	02010413          	add	s0,sp,32
     4dc:	000067b7          	lui	a5,0x6
     4e0:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     4e4:	fef42623          	sw	a5,-20(s0)
     4e8:	01c0006f          	j	504 <__libc_init_array+0x38>
     4ec:	fec42783          	lw	a5,-20(s0)
     4f0:	0007a783          	lw	a5,0(a5)
     4f4:	000780e7          	jalr	a5
     4f8:	fec42783          	lw	a5,-20(s0)
     4fc:	00478793          	add	a5,a5,4
     500:	fef42623          	sw	a5,-20(s0)
     504:	fec42703          	lw	a4,-20(s0)
     508:	000067b7          	lui	a5,0x6
     50c:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     510:	fcf71ee3          	bne	a4,a5,4ec <__libc_init_array+0x20>
     514:	00000013          	nop
     518:	00000013          	nop
     51c:	01c12083          	lw	ra,28(sp)
     520:	01812403          	lw	s0,24(sp)
     524:	02010113          	add	sp,sp,32
     528:	00008067          	ret

0000052c <__libc_fini_array>:
     52c:	fe010113          	add	sp,sp,-32
     530:	00112e23          	sw	ra,28(sp)
     534:	00812c23          	sw	s0,24(sp)
     538:	02010413          	add	s0,sp,32
     53c:	000067b7          	lui	a5,0x6
     540:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     544:	fef42623          	sw	a5,-20(s0)
     548:	01c0006f          	j	564 <__libc_fini_array+0x38>
     54c:	fec42783          	lw	a5,-20(s0)
     550:	ffc78793          	add	a5,a5,-4
     554:	fef42623          	sw	a5,-20(s0)
     558:	fec42783          	lw	a5,-20(s0)
     55c:	0007a783          	lw	a5,0(a5)
     560:	000780e7          	jalr	a5
     564:	fec42703          	lw	a4,-20(s0)
     568:	000067b7          	lui	a5,0x6
     56c:	80078793          	add	a5,a5,-2048 # 5800 <__fini_array_end>
     570:	fcf71ee3          	bne	a4,a5,54c <__libc_fini_array+0x20>
     574:	00000013          	nop
     578:	00000013          	nop
     57c:	01c12083          	lw	ra,28(sp)
     580:	01812403          	lw	s0,24(sp)
     584:	02010113          	add	sp,sp,32
     588:	00008067          	ret

0000058c <_exit>:
     58c:	fe010113          	add	sp,sp,-32
     590:	00112e23          	sw	ra,28(sp)
     594:	00812c23          	sw	s0,24(sp)
     598:	02010413          	add	s0,sp,32
     59c:	fea42623          	sw	a0,-20(s0)
     5a0:	f8dff0ef          	jal	52c <__libc_fini_array>
     5a4:	000307b7          	lui	a5,0x30
     5a8:	05878513          	add	a0,a5,88 # 30058 <__fini_array_end+0x2a858>
     5ac:	331030ef          	jal	40dc <_Z10uart_printPKc>
     5b0:	fec42503          	lw	a0,-20(s0)
     5b4:	585030ef          	jal	4338 <_Z16uart_print_int32i>
     5b8:	00000013          	nop
     5bc:	00a00513          	li	a0,10
     5c0:	2b9030ef          	jal	4078 <_Z9uart_putcc>
     5c4:	00000013          	nop
     5c8:	000307b7          	lui	a5,0x30
     5cc:	07878513          	add	a0,a5,120 # 30078 <__fini_array_end+0x2a878>
     5d0:	30d030ef          	jal	40dc <_Z10uart_printPKc>
     5d4:	002017b7          	lui	a5,0x201
     5d8:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
     5dc:	0007a783          	lw	a5,0(a5)
     5e0:	00078513          	mv	a0,a5
     5e4:	555030ef          	jal	4338 <_Z16uart_print_int32i>
     5e8:	00000013          	nop
     5ec:	000307b7          	lui	a5,0x30
     5f0:	09878513          	add	a0,a5,152 # 30098 <__fini_array_end+0x2a898>
     5f4:	2e9030ef          	jal	40dc <_Z10uart_printPKc>
     5f8:	ffffffff          	.word	0xffffffff
     5fc:	00000013          	nop
     600:	01c12083          	lw	ra,28(sp)
     604:	01812403          	lw	s0,24(sp)
     608:	02010113          	add	sp,sp,32
     60c:	00008067          	ret

00000610 <get_sp>:
     610:	fe010113          	add	sp,sp,-32
     614:	00812e23          	sw	s0,28(sp)
     618:	02010413          	add	s0,sp,32
     61c:	00010793          	mv	a5,sp
     620:	fef42623          	sw	a5,-20(s0)
     624:	fec42783          	lw	a5,-20(s0)
     628:	00078513          	mv	a0,a5
     62c:	01c12403          	lw	s0,28(sp)
     630:	02010113          	add	sp,sp,32
     634:	00008067          	ret

00000638 <_Z14get_free_bytesv>:
     638:	fe010113          	add	sp,sp,-32
     63c:	00112e23          	sw	ra,28(sp)
     640:	00812c23          	sw	s0,24(sp)
     644:	02010413          	add	s0,sp,32
     648:	fc9ff0ef          	jal	610 <get_sp>
     64c:	fea42623          	sw	a0,-20(s0)
     650:	000347b7          	lui	a5,0x34
     654:	5447a783          	lw	a5,1348(a5) # 34544 <_ZL8heap_end>
     658:	00078713          	mv	a4,a5
     65c:	fec42783          	lw	a5,-20(s0)
     660:	40e787b3          	sub	a5,a5,a4
     664:	00078513          	mv	a0,a5
     668:	01c12083          	lw	ra,28(sp)
     66c:	01812403          	lw	s0,24(sp)
     670:	02010113          	add	sp,sp,32
     674:	00008067          	ret

00000678 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>:
     678:	fe010113          	add	sp,sp,-32
     67c:	00112e23          	sw	ra,28(sp)
     680:	00812c23          	sw	s0,24(sp)
     684:	02010413          	add	s0,sp,32
     688:	fea42623          	sw	a0,-20(s0)
     68c:	fec42783          	lw	a5,-20(s0)
     690:	0007a703          	lw	a4,0(a5)
     694:	fec42783          	lw	a5,-20(s0)
     698:	0047a683          	lw	a3,4(a5)
     69c:	fec42783          	lw	a5,-20(s0)
     6a0:	0087a783          	lw	a5,8(a5)
     6a4:	00078613          	mv	a2,a5
     6a8:	00068593          	mv	a1,a3
     6ac:	00070513          	mv	a0,a4
     6b0:	300030ef          	jal	39b0 <_Z6matmulPA3_KiPA3_iS3_>
     6b4:	00050793          	mv	a5,a0
     6b8:	00078513          	mv	a0,a5
     6bc:	01c12083          	lw	ra,28(sp)
     6c0:	01812403          	lw	s0,24(sp)
     6c4:	02010113          	add	sp,sp,32
     6c8:	00008067          	ret

000006cc <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>:
     6cc:	fc010113          	add	sp,sp,-64
     6d0:	02112e23          	sw	ra,60(sp)
     6d4:	02812c23          	sw	s0,56(sp)
     6d8:	04010413          	add	s0,sp,64
     6dc:	fca42623          	sw	a0,-52(s0)
     6e0:	002017b7          	lui	a5,0x201
     6e4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     6e8:	0007a783          	lw	a5,0(a5)
     6ec:	fef42623          	sw	a5,-20(s0)
     6f0:	002017b7          	lui	a5,0x201
     6f4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     6f8:	0007a783          	lw	a5,0(a5)
     6fc:	fef42423          	sw	a5,-24(s0)
     700:	fcc42503          	lw	a0,-52(s0)
     704:	f75ff0ef          	jal	678 <_ZZ21cmd_matrix_multipliervENKUlvE_clEv>
     708:	00050793          	mv	a5,a0
     70c:	fef403a3          	sb	a5,-25(s0)
     710:	002017b7          	lui	a5,0x201
     714:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     718:	0007a783          	lw	a5,0(a5)
     71c:	fef42023          	sw	a5,-32(s0)
     720:	002017b7          	lui	a5,0x201
     724:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     728:	0007a783          	lw	a5,0(a5)
     72c:	fcf42e23          	sw	a5,-36(s0)
     730:	fdc42703          	lw	a4,-36(s0)
     734:	fec42783          	lw	a5,-20(s0)
     738:	40f707b3          	sub	a5,a4,a5
     73c:	fcf42c23          	sw	a5,-40(s0)
     740:	fe042703          	lw	a4,-32(s0)
     744:	fe842783          	lw	a5,-24(s0)
     748:	40f707b3          	sub	a5,a4,a5
     74c:	fcf42a23          	sw	a5,-44(s0)
     750:	000307b7          	lui	a5,0x30
     754:	24478513          	add	a0,a5,580 # 30244 <__fini_array_end+0x2aa44>
     758:	185030ef          	jal	40dc <_Z10uart_printPKc>
     75c:	fd842503          	lw	a0,-40(s0)
     760:	3d9030ef          	jal	4338 <_Z16uart_print_int32i>
     764:	00000013          	nop
     768:	000307b7          	lui	a5,0x30
     76c:	26078513          	add	a0,a5,608 # 30260 <__fini_array_end+0x2aa60>
     770:	16d030ef          	jal	40dc <_Z10uart_printPKc>
     774:	000307b7          	lui	a5,0x30
     778:	26478513          	add	a0,a5,612 # 30264 <__fini_array_end+0x2aa64>
     77c:	161030ef          	jal	40dc <_Z10uart_printPKc>
     780:	fd442503          	lw	a0,-44(s0)
     784:	3b5030ef          	jal	4338 <_Z16uart_print_int32i>
     788:	00000013          	nop
     78c:	000307b7          	lui	a5,0x30
     790:	26078513          	add	a0,a5,608 # 30260 <__fini_array_end+0x2aa60>
     794:	149030ef          	jal	40dc <_Z10uart_printPKc>
     798:	fe744783          	lbu	a5,-25(s0)
     79c:	00078513          	mv	a0,a5
     7a0:	03c12083          	lw	ra,60(sp)
     7a4:	03812403          	lw	s0,56(sp)
     7a8:	04010113          	add	sp,sp,64
     7ac:	00008067          	ret

000007b0 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>:
     7b0:	fe010113          	add	sp,sp,-32
     7b4:	00112e23          	sw	ra,28(sp)
     7b8:	00812c23          	sw	s0,24(sp)
     7bc:	02010413          	add	s0,sp,32
     7c0:	fea42623          	sw	a0,-20(s0)
     7c4:	fec42783          	lw	a5,-20(s0)
     7c8:	0007a703          	lw	a4,0(a5)
     7cc:	fec42783          	lw	a5,-20(s0)
     7d0:	0047a683          	lw	a3,4(a5)
     7d4:	fec42783          	lw	a5,-20(s0)
     7d8:	0087a783          	lw	a5,8(a5)
     7dc:	00078613          	mv	a2,a5
     7e0:	00068593          	mv	a1,a3
     7e4:	00070513          	mv	a0,a4
     7e8:	1c8030ef          	jal	39b0 <_Z6matmulPA3_KiPA3_iS3_>
     7ec:	00050793          	mv	a5,a0
     7f0:	00078513          	mv	a0,a5
     7f4:	01c12083          	lw	ra,28(sp)
     7f8:	01812403          	lw	s0,24(sp)
     7fc:	02010113          	add	sp,sp,32
     800:	00008067          	ret

00000804 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>:
     804:	fc010113          	add	sp,sp,-64
     808:	02112e23          	sw	ra,60(sp)
     80c:	02812c23          	sw	s0,56(sp)
     810:	04010413          	add	s0,sp,64
     814:	fca42623          	sw	a0,-52(s0)
     818:	002017b7          	lui	a5,0x201
     81c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     820:	0007a783          	lw	a5,0(a5)
     824:	fef42623          	sw	a5,-20(s0)
     828:	002017b7          	lui	a5,0x201
     82c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     830:	0007a783          	lw	a5,0(a5)
     834:	fef42423          	sw	a5,-24(s0)
     838:	fcc42503          	lw	a0,-52(s0)
     83c:	f75ff0ef          	jal	7b0 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv>
     840:	00050793          	mv	a5,a0
     844:	fef403a3          	sb	a5,-25(s0)
     848:	002017b7          	lui	a5,0x201
     84c:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
     850:	0007a783          	lw	a5,0(a5)
     854:	fef42023          	sw	a5,-32(s0)
     858:	002017b7          	lui	a5,0x201
     85c:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
     860:	0007a783          	lw	a5,0(a5)
     864:	fcf42e23          	sw	a5,-36(s0)
     868:	fdc42703          	lw	a4,-36(s0)
     86c:	fec42783          	lw	a5,-20(s0)
     870:	40f707b3          	sub	a5,a4,a5
     874:	fcf42c23          	sw	a5,-40(s0)
     878:	fe042703          	lw	a4,-32(s0)
     87c:	fe842783          	lw	a5,-24(s0)
     880:	40f707b3          	sub	a5,a4,a5
     884:	fcf42a23          	sw	a5,-44(s0)
     888:	000307b7          	lui	a5,0x30
     88c:	24478513          	add	a0,a5,580 # 30244 <__fini_array_end+0x2aa44>
     890:	04d030ef          	jal	40dc <_Z10uart_printPKc>
     894:	fd842503          	lw	a0,-40(s0)
     898:	2a1030ef          	jal	4338 <_Z16uart_print_int32i>
     89c:	00000013          	nop
     8a0:	000307b7          	lui	a5,0x30
     8a4:	26078513          	add	a0,a5,608 # 30260 <__fini_array_end+0x2aa60>
     8a8:	035030ef          	jal	40dc <_Z10uart_printPKc>
     8ac:	000307b7          	lui	a5,0x30
     8b0:	26478513          	add	a0,a5,612 # 30264 <__fini_array_end+0x2aa64>
     8b4:	029030ef          	jal	40dc <_Z10uart_printPKc>
     8b8:	fd442503          	lw	a0,-44(s0)
     8bc:	27d030ef          	jal	4338 <_Z16uart_print_int32i>
     8c0:	00000013          	nop
     8c4:	000307b7          	lui	a5,0x30
     8c8:	26078513          	add	a0,a5,608 # 30260 <__fini_array_end+0x2aa60>
     8cc:	011030ef          	jal	40dc <_Z10uart_printPKc>
     8d0:	fe744783          	lbu	a5,-25(s0)
     8d4:	00078513          	mv	a0,a5
     8d8:	03c12083          	lw	ra,60(sp)
     8dc:	03812403          	lw	s0,56(sp)
     8e0:	04010113          	add	sp,sp,64
     8e4:	00008067          	ret

000008e8 <_Z13math_gauntletPiS_S_S_S_S_S_>:
     8e8:	fc010113          	add	sp,sp,-64
     8ec:	02112e23          	sw	ra,60(sp)
     8f0:	02812c23          	sw	s0,56(sp)
     8f4:	04010413          	add	s0,sp,64
     8f8:	fca42e23          	sw	a0,-36(s0)
     8fc:	fcb42c23          	sw	a1,-40(s0)
     900:	fcc42a23          	sw	a2,-44(s0)
     904:	fcd42823          	sw	a3,-48(s0)
     908:	fce42623          	sw	a4,-52(s0)
     90c:	fcf42423          	sw	a5,-56(s0)
     910:	fd042223          	sw	a6,-60(s0)
     914:	fe0407a3          	sb	zero,-17(s0)
     918:	fdc42783          	lw	a5,-36(s0)
     91c:	0007a703          	lw	a4,0(a5)
     920:	fd842783          	lw	a5,-40(s0)
     924:	0007a783          	lw	a5,0(a5)
     928:	00f70733          	add	a4,a4,a5
     92c:	fd442783          	lw	a5,-44(s0)
     930:	00e7a023          	sw	a4,0(a5)
     934:	fdc42783          	lw	a5,-36(s0)
     938:	0007a703          	lw	a4,0(a5)
     93c:	fd842783          	lw	a5,-40(s0)
     940:	0007a783          	lw	a5,0(a5)
     944:	40f70733          	sub	a4,a4,a5
     948:	fd042783          	lw	a5,-48(s0)
     94c:	00e7a023          	sw	a4,0(a5)
     950:	fdc42783          	lw	a5,-36(s0)
     954:	0007a703          	lw	a4,0(a5)
     958:	fd842783          	lw	a5,-40(s0)
     95c:	0007a783          	lw	a5,0(a5)
     960:	00078593          	mv	a1,a5
     964:	00070513          	mv	a0,a4
     968:	08c000ef          	jal	9f4 <__mulsi3>
     96c:	00050793          	mv	a5,a0
     970:	00078713          	mv	a4,a5
     974:	fcc42783          	lw	a5,-52(s0)
     978:	00e7a023          	sw	a4,0(a5)
     97c:	fdc42783          	lw	a5,-36(s0)
     980:	0007a703          	lw	a4,0(a5)
     984:	fd842783          	lw	a5,-40(s0)
     988:	0007a783          	lw	a5,0(a5)
     98c:	00078593          	mv	a1,a5
     990:	00070513          	mv	a0,a4
     994:	084000ef          	jal	a18 <__divsi3>
     998:	00050793          	mv	a5,a0
     99c:	00078713          	mv	a4,a5
     9a0:	fc842783          	lw	a5,-56(s0)
     9a4:	00e7a023          	sw	a4,0(a5)
     9a8:	fdc42783          	lw	a5,-36(s0)
     9ac:	0007a703          	lw	a4,0(a5)
     9b0:	fd842783          	lw	a5,-40(s0)
     9b4:	0007a783          	lw	a5,0(a5)
     9b8:	00078593          	mv	a1,a5
     9bc:	00070513          	mv	a0,a4
     9c0:	0dc000ef          	jal	a9c <__modsi3>
     9c4:	00050793          	mv	a5,a0
     9c8:	00078713          	mv	a4,a5
     9cc:	fc442783          	lw	a5,-60(s0)
     9d0:	00e7a023          	sw	a4,0(a5)
     9d4:	00100793          	li	a5,1
     9d8:	fef407a3          	sb	a5,-17(s0)
     9dc:	fef44783          	lbu	a5,-17(s0)
     9e0:	00078513          	mv	a0,a5
     9e4:	03c12083          	lw	ra,60(sp)
     9e8:	03812403          	lw	s0,56(sp)
     9ec:	04010113          	add	sp,sp,64
     9f0:	00008067          	ret

000009f4 <__mulsi3>:
     9f4:	00050613          	mv	a2,a0
     9f8:	00000513          	li	a0,0
     9fc:	0015f693          	and	a3,a1,1
     a00:	00068463          	beqz	a3,a08 <__mulsi3+0x14>
     a04:	00c50533          	add	a0,a0,a2
     a08:	0015d593          	srl	a1,a1,0x1
     a0c:	00161613          	sll	a2,a2,0x1
     a10:	fe0596e3          	bnez	a1,9fc <__mulsi3+0x8>
     a14:	00008067          	ret

00000a18 <__divsi3>:
     a18:	06054063          	bltz	a0,a78 <__umodsi3+0x10>
     a1c:	0605c663          	bltz	a1,a88 <__umodsi3+0x20>

00000a20 <__hidden___udivsi3>:
     a20:	00058613          	mv	a2,a1
     a24:	00050593          	mv	a1,a0
     a28:	fff00513          	li	a0,-1
     a2c:	02060c63          	beqz	a2,a64 <__hidden___udivsi3+0x44>
     a30:	00100693          	li	a3,1
     a34:	00b67a63          	bgeu	a2,a1,a48 <__hidden___udivsi3+0x28>
     a38:	00c05863          	blez	a2,a48 <__hidden___udivsi3+0x28>
     a3c:	00161613          	sll	a2,a2,0x1
     a40:	00169693          	sll	a3,a3,0x1
     a44:	feb66ae3          	bltu	a2,a1,a38 <__hidden___udivsi3+0x18>
     a48:	00000513          	li	a0,0
     a4c:	00c5e663          	bltu	a1,a2,a58 <__hidden___udivsi3+0x38>
     a50:	40c585b3          	sub	a1,a1,a2
     a54:	00d56533          	or	a0,a0,a3
     a58:	0016d693          	srl	a3,a3,0x1
     a5c:	00165613          	srl	a2,a2,0x1
     a60:	fe0696e3          	bnez	a3,a4c <__hidden___udivsi3+0x2c>
     a64:	00008067          	ret

00000a68 <__umodsi3>:
     a68:	00008293          	mv	t0,ra
     a6c:	fb5ff0ef          	jal	a20 <__hidden___udivsi3>
     a70:	00058513          	mv	a0,a1
     a74:	00028067          	jr	t0
     a78:	40a00533          	neg	a0,a0
     a7c:	00b04863          	bgtz	a1,a8c <__umodsi3+0x24>
     a80:	40b005b3          	neg	a1,a1
     a84:	f9dff06f          	j	a20 <__hidden___udivsi3>
     a88:	40b005b3          	neg	a1,a1
     a8c:	00008293          	mv	t0,ra
     a90:	f91ff0ef          	jal	a20 <__hidden___udivsi3>
     a94:	40a00533          	neg	a0,a0
     a98:	00028067          	jr	t0

00000a9c <__modsi3>:
     a9c:	00008293          	mv	t0,ra
     aa0:	0005ca63          	bltz	a1,ab4 <__modsi3+0x18>
     aa4:	00054c63          	bltz	a0,abc <__modsi3+0x20>
     aa8:	f79ff0ef          	jal	a20 <__hidden___udivsi3>
     aac:	00058513          	mv	a0,a1
     ab0:	00028067          	jr	t0
     ab4:	40b005b3          	neg	a1,a1
     ab8:	fe0558e3          	bgez	a0,aa8 <__modsi3+0xc>
     abc:	40a00533          	neg	a0,a0
     ac0:	f61ff0ef          	jal	a20 <__hidden___udivsi3>
     ac4:	40b00533          	neg	a0,a1
     ac8:	00028067          	jr	t0

00000acc <memset>:
     acc:	00f00313          	li	t1,15
     ad0:	00050713          	mv	a4,a0
     ad4:	02c37e63          	bgeu	t1,a2,b10 <memset+0x44>
     ad8:	00f77793          	and	a5,a4,15
     adc:	0a079063          	bnez	a5,b7c <memset+0xb0>
     ae0:	08059263          	bnez	a1,b64 <memset+0x98>
     ae4:	ff067693          	and	a3,a2,-16
     ae8:	00f67613          	and	a2,a2,15
     aec:	00e686b3          	add	a3,a3,a4
     af0:	00b72023          	sw	a1,0(a4)
     af4:	00b72223          	sw	a1,4(a4)
     af8:	00b72423          	sw	a1,8(a4)
     afc:	00b72623          	sw	a1,12(a4)
     b00:	01070713          	add	a4,a4,16
     b04:	fed766e3          	bltu	a4,a3,af0 <memset+0x24>
     b08:	00061463          	bnez	a2,b10 <memset+0x44>
     b0c:	00008067          	ret
     b10:	40c306b3          	sub	a3,t1,a2
     b14:	00269693          	sll	a3,a3,0x2
     b18:	00000297          	auipc	t0,0x0
     b1c:	005686b3          	add	a3,a3,t0
     b20:	00c68067          	jr	12(a3)
     b24:	00b70723          	sb	a1,14(a4)
     b28:	00b706a3          	sb	a1,13(a4)
     b2c:	00b70623          	sb	a1,12(a4)
     b30:	00b705a3          	sb	a1,11(a4)
     b34:	00b70523          	sb	a1,10(a4)
     b38:	00b704a3          	sb	a1,9(a4)
     b3c:	00b70423          	sb	a1,8(a4)
     b40:	00b703a3          	sb	a1,7(a4)
     b44:	00b70323          	sb	a1,6(a4)
     b48:	00b702a3          	sb	a1,5(a4)
     b4c:	00b70223          	sb	a1,4(a4)
     b50:	00b701a3          	sb	a1,3(a4)
     b54:	00b70123          	sb	a1,2(a4)
     b58:	00b700a3          	sb	a1,1(a4)
     b5c:	00b70023          	sb	a1,0(a4)
     b60:	00008067          	ret
     b64:	0ff5f593          	zext.b	a1,a1
     b68:	00859693          	sll	a3,a1,0x8
     b6c:	00d5e5b3          	or	a1,a1,a3
     b70:	01059693          	sll	a3,a1,0x10
     b74:	00d5e5b3          	or	a1,a1,a3
     b78:	f6dff06f          	j	ae4 <memset+0x18>
     b7c:	00279693          	sll	a3,a5,0x2
     b80:	00000297          	auipc	t0,0x0
     b84:	005686b3          	add	a3,a3,t0
     b88:	00008293          	mv	t0,ra
     b8c:	fa0680e7          	jalr	-96(a3)
     b90:	00028093          	mv	ra,t0
     b94:	ff078793          	add	a5,a5,-16
     b98:	40f70733          	sub	a4,a4,a5
     b9c:	00f60633          	add	a2,a2,a5
     ba0:	f6c378e3          	bgeu	t1,a2,b10 <memset+0x44>
     ba4:	f3dff06f          	j	ae0 <memset+0x14>

00000ba8 <__divdi3>:
     ba8:	fd010113          	add	sp,sp,-48
     bac:	03212023          	sw	s2,32(sp)
     bb0:	01412c23          	sw	s4,24(sp)
     bb4:	02112623          	sw	ra,44(sp)
     bb8:	02912223          	sw	s1,36(sp)
     bbc:	01312e23          	sw	s3,28(sp)
     bc0:	01712623          	sw	s7,12(sp)
     bc4:	00050913          	mv	s2,a0
     bc8:	00000a13          	li	s4,0
     bcc:	1a05c663          	bltz	a1,d78 <__divdi3+0x1d0>
     bd0:	0006dc63          	bgez	a3,be8 <__divdi3+0x40>
     bd4:	00c037b3          	snez	a5,a2
     bd8:	40d006b3          	neg	a3,a3
     bdc:	fffa4a13          	not	s4,s4
     be0:	40f686b3          	sub	a3,a3,a5
     be4:	40c00633          	neg	a2,a2
     be8:	00060b93          	mv	s7,a2
     bec:	00090993          	mv	s3,s2
     bf0:	00058493          	mv	s1,a1
     bf4:	14069063          	bnez	a3,d34 <__divdi3+0x18c>
     bf8:	02812423          	sw	s0,40(sp)
     bfc:	01512a23          	sw	s5,20(sp)
     c00:	01612823          	sw	s6,16(sp)
     c04:	1cc5fe63          	bgeu	a1,a2,de0 <__divdi3+0x238>
     c08:	000107b7          	lui	a5,0x10
     c0c:	2ef66463          	bltu	a2,a5,ef4 <__divdi3+0x34c>
     c10:	010007b7          	lui	a5,0x1000
     c14:	01800713          	li	a4,24
     c18:	00f67463          	bgeu	a2,a5,c20 <__divdi3+0x78>
     c1c:	01000713          	li	a4,16
     c20:	00e656b3          	srl	a3,a2,a4
     c24:	0002f797          	auipc	a5,0x2f
     c28:	6d078793          	add	a5,a5,1744 # 302f4 <__clz_tab>
     c2c:	00d787b3          	add	a5,a5,a3
     c30:	0007c783          	lbu	a5,0(a5)
     c34:	02000693          	li	a3,32
     c38:	00e787b3          	add	a5,a5,a4
     c3c:	40f68733          	sub	a4,a3,a5
     c40:	00f68c63          	beq	a3,a5,c58 <__divdi3+0xb0>
     c44:	00e594b3          	sll	s1,a1,a4
     c48:	00f957b3          	srl	a5,s2,a5
     c4c:	00e61bb3          	sll	s7,a2,a4
     c50:	0097e4b3          	or	s1,a5,s1
     c54:	00e919b3          	sll	s3,s2,a4
     c58:	010bda93          	srl	s5,s7,0x10
     c5c:	000a8593          	mv	a1,s5
     c60:	00048513          	mv	a0,s1
     c64:	010b9b13          	sll	s6,s7,0x10
     c68:	db9ff0ef          	jal	a20 <__hidden___udivsi3>
     c6c:	010b5b13          	srl	s6,s6,0x10
     c70:	00050593          	mv	a1,a0
     c74:	00050413          	mv	s0,a0
     c78:	000b0513          	mv	a0,s6
     c7c:	d79ff0ef          	jal	9f4 <__mulsi3>
     c80:	00050793          	mv	a5,a0
     c84:	000a8593          	mv	a1,s5
     c88:	00048513          	mv	a0,s1
     c8c:	00078493          	mv	s1,a5
     c90:	dd9ff0ef          	jal	a68 <__umodsi3>
     c94:	01051513          	sll	a0,a0,0x10
     c98:	0109d793          	srl	a5,s3,0x10
     c9c:	00a7e7b3          	or	a5,a5,a0
     ca0:	0097fc63          	bgeu	a5,s1,cb8 <__divdi3+0x110>
     ca4:	00fb87b3          	add	a5,s7,a5
     ca8:	fff40713          	add	a4,s0,-1
     cac:	0177e463          	bltu	a5,s7,cb4 <__divdi3+0x10c>
     cb0:	5a97e863          	bltu	a5,s1,1260 <__divdi3+0x6b8>
     cb4:	00070413          	mv	s0,a4
     cb8:	409784b3          	sub	s1,a5,s1
     cbc:	000a8593          	mv	a1,s5
     cc0:	00048513          	mv	a0,s1
     cc4:	d5dff0ef          	jal	a20 <__hidden___udivsi3>
     cc8:	00050593          	mv	a1,a0
     ccc:	00050913          	mv	s2,a0
     cd0:	000b0513          	mv	a0,s6
     cd4:	d21ff0ef          	jal	9f4 <__mulsi3>
     cd8:	00050793          	mv	a5,a0
     cdc:	000a8593          	mv	a1,s5
     ce0:	00048513          	mv	a0,s1
     ce4:	01099993          	sll	s3,s3,0x10
     ce8:	00078493          	mv	s1,a5
     cec:	d7dff0ef          	jal	a68 <__umodsi3>
     cf0:	01051513          	sll	a0,a0,0x10
     cf4:	0109d993          	srl	s3,s3,0x10
     cf8:	00a9e9b3          	or	s3,s3,a0
     cfc:	0099fe63          	bgeu	s3,s1,d18 <__divdi3+0x170>
     d00:	013b89b3          	add	s3,s7,s3
     d04:	fff90793          	add	a5,s2,-1
     d08:	0179e663          	bltu	s3,s7,d14 <__divdi3+0x16c>
     d0c:	ffe90913          	add	s2,s2,-2
     d10:	0099e463          	bltu	s3,s1,d18 <__divdi3+0x170>
     d14:	00078913          	mv	s2,a5
     d18:	01041413          	sll	s0,s0,0x10
     d1c:	01246533          	or	a0,s0,s2
     d20:	01412a83          	lw	s5,20(sp)
     d24:	02812403          	lw	s0,40(sp)
     d28:	01012b03          	lw	s6,16(sp)
     d2c:	00000913          	li	s2,0
     d30:	0100006f          	j	d40 <__divdi3+0x198>
     d34:	04d5fe63          	bgeu	a1,a3,d90 <__divdi3+0x1e8>
     d38:	00000913          	li	s2,0
     d3c:	00000513          	li	a0,0
     d40:	00090593          	mv	a1,s2
     d44:	000a0a63          	beqz	s4,d58 <__divdi3+0x1b0>
     d48:	00a037b3          	snez	a5,a0
     d4c:	412005b3          	neg	a1,s2
     d50:	40f585b3          	sub	a1,a1,a5
     d54:	40a00533          	neg	a0,a0
     d58:	02c12083          	lw	ra,44(sp)
     d5c:	02412483          	lw	s1,36(sp)
     d60:	02012903          	lw	s2,32(sp)
     d64:	01c12983          	lw	s3,28(sp)
     d68:	01812a03          	lw	s4,24(sp)
     d6c:	00c12b83          	lw	s7,12(sp)
     d70:	03010113          	add	sp,sp,48
     d74:	00008067          	ret
     d78:	00a037b3          	snez	a5,a0
     d7c:	40b005b3          	neg	a1,a1
     d80:	40f585b3          	sub	a1,a1,a5
     d84:	40a00933          	neg	s2,a0
     d88:	fff00a13          	li	s4,-1
     d8c:	e45ff06f          	j	bd0 <__divdi3+0x28>
     d90:	000107b7          	lui	a5,0x10
     d94:	28f6e463          	bltu	a3,a5,101c <__divdi3+0x474>
     d98:	01000737          	lui	a4,0x1000
     d9c:	01800793          	li	a5,24
     da0:	00e6f463          	bgeu	a3,a4,da8 <__divdi3+0x200>
     da4:	01000793          	li	a5,16
     da8:	00f6d533          	srl	a0,a3,a5
     dac:	0002f717          	auipc	a4,0x2f
     db0:	54870713          	add	a4,a4,1352 # 302f4 <__clz_tab>
     db4:	00a70733          	add	a4,a4,a0
     db8:	00074703          	lbu	a4,0(a4)
     dbc:	02000513          	li	a0,32
     dc0:	00f70733          	add	a4,a4,a5
     dc4:	40e50bb3          	sub	s7,a0,a4
     dc8:	28e51263          	bne	a0,a4,104c <__divdi3+0x4a4>
     dcc:	44b6ee63          	bltu	a3,a1,1228 <__divdi3+0x680>
     dd0:	00c93533          	sltu	a0,s2,a2
     dd4:	00153513          	seqz	a0,a0
     dd8:	00000913          	li	s2,0
     ddc:	f65ff06f          	j	d40 <__divdi3+0x198>
     de0:	12060263          	beqz	a2,f04 <__divdi3+0x35c>
     de4:	000107b7          	lui	a5,0x10
     de8:	42f67663          	bgeu	a2,a5,1214 <__divdi3+0x66c>
     dec:	10063713          	sltiu	a4,a2,256
     df0:	00173713          	seqz	a4,a4
     df4:	00371713          	sll	a4,a4,0x3
     df8:	00e656b3          	srl	a3,a2,a4
     dfc:	0002f797          	auipc	a5,0x2f
     e00:	4f878793          	add	a5,a5,1272 # 302f4 <__clz_tab>
     e04:	00d787b3          	add	a5,a5,a3
     e08:	0007ca83          	lbu	s5,0(a5)
     e0c:	02000793          	li	a5,32
     e10:	00ea8ab3          	add	s5,s5,a4
     e14:	41578733          	sub	a4,a5,s5
     e18:	11579a63          	bne	a5,s5,f2c <__divdi3+0x384>
     e1c:	01061493          	sll	s1,a2,0x10
     e20:	40c58ab3          	sub	s5,a1,a2
     e24:	01065b13          	srl	s6,a2,0x10
     e28:	0104d493          	srl	s1,s1,0x10
     e2c:	00100913          	li	s2,1
     e30:	000b0593          	mv	a1,s6
     e34:	000a8513          	mv	a0,s5
     e38:	be9ff0ef          	jal	a20 <__hidden___udivsi3>
     e3c:	00048593          	mv	a1,s1
     e40:	00050413          	mv	s0,a0
     e44:	bb1ff0ef          	jal	9f4 <__mulsi3>
     e48:	00050793          	mv	a5,a0
     e4c:	000b0593          	mv	a1,s6
     e50:	000a8513          	mv	a0,s5
     e54:	00078a93          	mv	s5,a5
     e58:	c11ff0ef          	jal	a68 <__umodsi3>
     e5c:	01051513          	sll	a0,a0,0x10
     e60:	0109d793          	srl	a5,s3,0x10
     e64:	00a7e7b3          	or	a5,a5,a0
     e68:	0157fc63          	bgeu	a5,s5,e80 <__divdi3+0x2d8>
     e6c:	00fb87b3          	add	a5,s7,a5
     e70:	fff40713          	add	a4,s0,-1
     e74:	0177e463          	bltu	a5,s7,e7c <__divdi3+0x2d4>
     e78:	3d57ee63          	bltu	a5,s5,1254 <__divdi3+0x6ac>
     e7c:	00070413          	mv	s0,a4
     e80:	41578ab3          	sub	s5,a5,s5
     e84:	000b0593          	mv	a1,s6
     e88:	000a8513          	mv	a0,s5
     e8c:	b95ff0ef          	jal	a20 <__hidden___udivsi3>
     e90:	00048593          	mv	a1,s1
     e94:	00050493          	mv	s1,a0
     e98:	b5dff0ef          	jal	9f4 <__mulsi3>
     e9c:	00050793          	mv	a5,a0
     ea0:	000b0593          	mv	a1,s6
     ea4:	000a8513          	mv	a0,s5
     ea8:	01099993          	sll	s3,s3,0x10
     eac:	00078a93          	mv	s5,a5
     eb0:	bb9ff0ef          	jal	a68 <__umodsi3>
     eb4:	01051513          	sll	a0,a0,0x10
     eb8:	0109d993          	srl	s3,s3,0x10
     ebc:	00a9e9b3          	or	s3,s3,a0
     ec0:	0159fe63          	bgeu	s3,s5,edc <__divdi3+0x334>
     ec4:	013b89b3          	add	s3,s7,s3
     ec8:	fff48793          	add	a5,s1,-1
     ecc:	0179e663          	bltu	s3,s7,ed8 <__divdi3+0x330>
     ed0:	ffe48493          	add	s1,s1,-2
     ed4:	0159e463          	bltu	s3,s5,edc <__divdi3+0x334>
     ed8:	00078493          	mv	s1,a5
     edc:	01041513          	sll	a0,s0,0x10
     ee0:	01412a83          	lw	s5,20(sp)
     ee4:	02812403          	lw	s0,40(sp)
     ee8:	01012b03          	lw	s6,16(sp)
     eec:	00956533          	or	a0,a0,s1
     ef0:	e51ff06f          	j	d40 <__divdi3+0x198>
     ef4:	10063713          	sltiu	a4,a2,256
     ef8:	00173713          	seqz	a4,a4
     efc:	00371713          	sll	a4,a4,0x3
     f00:	d21ff06f          	j	c20 <__divdi3+0x78>
     f04:	00000693          	li	a3,0
     f08:	0002f797          	auipc	a5,0x2f
     f0c:	3ec78793          	add	a5,a5,1004 # 302f4 <__clz_tab>
     f10:	00d787b3          	add	a5,a5,a3
     f14:	0007ca83          	lbu	s5,0(a5)
     f18:	00000713          	li	a4,0
     f1c:	02000793          	li	a5,32
     f20:	00ea8ab3          	add	s5,s5,a4
     f24:	41578733          	sub	a4,a5,s5
     f28:	ef578ae3          	beq	a5,s5,e1c <__divdi3+0x274>
     f2c:	00e61bb3          	sll	s7,a2,a4
     f30:	01812423          	sw	s8,8(sp)
     f34:	010bdb13          	srl	s6,s7,0x10
     f38:	0155dc33          	srl	s8,a1,s5
     f3c:	00e597b3          	sll	a5,a1,a4
     f40:	01595ab3          	srl	s5,s2,s5
     f44:	000b0593          	mv	a1,s6
     f48:	000c0513          	mv	a0,s8
     f4c:	010b9493          	sll	s1,s7,0x10
     f50:	00faeab3          	or	s5,s5,a5
     f54:	00e919b3          	sll	s3,s2,a4
     f58:	0104d493          	srl	s1,s1,0x10
     f5c:	ac5ff0ef          	jal	a20 <__hidden___udivsi3>
     f60:	00050593          	mv	a1,a0
     f64:	00050913          	mv	s2,a0
     f68:	00048513          	mv	a0,s1
     f6c:	a89ff0ef          	jal	9f4 <__mulsi3>
     f70:	00050413          	mv	s0,a0
     f74:	000b0593          	mv	a1,s6
     f78:	000c0513          	mv	a0,s8
     f7c:	aedff0ef          	jal	a68 <__umodsi3>
     f80:	01051513          	sll	a0,a0,0x10
     f84:	010ad793          	srl	a5,s5,0x10
     f88:	00a7e7b3          	or	a5,a5,a0
     f8c:	0087fe63          	bgeu	a5,s0,fa8 <__divdi3+0x400>
     f90:	00fb87b3          	add	a5,s7,a5
     f94:	fff90713          	add	a4,s2,-1
     f98:	2b77e663          	bltu	a5,s7,1244 <__divdi3+0x69c>
     f9c:	2a87f463          	bgeu	a5,s0,1244 <__divdi3+0x69c>
     fa0:	ffe90913          	add	s2,s2,-2
     fa4:	017787b3          	add	a5,a5,s7
     fa8:	40878433          	sub	s0,a5,s0
     fac:	000b0593          	mv	a1,s6
     fb0:	00040513          	mv	a0,s0
     fb4:	a6dff0ef          	jal	a20 <__hidden___udivsi3>
     fb8:	00050593          	mv	a1,a0
     fbc:	00050c13          	mv	s8,a0
     fc0:	00048513          	mv	a0,s1
     fc4:	a31ff0ef          	jal	9f4 <__mulsi3>
     fc8:	00050793          	mv	a5,a0
     fcc:	000b0593          	mv	a1,s6
     fd0:	00040513          	mv	a0,s0
     fd4:	010a9a93          	sll	s5,s5,0x10
     fd8:	00078413          	mv	s0,a5
     fdc:	a8dff0ef          	jal	a68 <__umodsi3>
     fe0:	01051513          	sll	a0,a0,0x10
     fe4:	010ada93          	srl	s5,s5,0x10
     fe8:	00aaeab3          	or	s5,s5,a0
     fec:	008afe63          	bgeu	s5,s0,1008 <__divdi3+0x460>
     ff0:	015b8ab3          	add	s5,s7,s5
     ff4:	fffc0793          	add	a5,s8,-1
     ff8:	237aee63          	bltu	s5,s7,1234 <__divdi3+0x68c>
     ffc:	228afc63          	bgeu	s5,s0,1234 <__divdi3+0x68c>
    1000:	ffec0c13          	add	s8,s8,-2
    1004:	017a8ab3          	add	s5,s5,s7
    1008:	01091913          	sll	s2,s2,0x10
    100c:	01896933          	or	s2,s2,s8
    1010:	408a8ab3          	sub	s5,s5,s0
    1014:	00812c03          	lw	s8,8(sp)
    1018:	e19ff06f          	j	e30 <__divdi3+0x288>
    101c:	1006b793          	sltiu	a5,a3,256
    1020:	0017b793          	seqz	a5,a5
    1024:	00379793          	sll	a5,a5,0x3
    1028:	00f6d533          	srl	a0,a3,a5
    102c:	0002f717          	auipc	a4,0x2f
    1030:	2c870713          	add	a4,a4,712 # 302f4 <__clz_tab>
    1034:	00a70733          	add	a4,a4,a0
    1038:	00074703          	lbu	a4,0(a4)
    103c:	02000513          	li	a0,32
    1040:	00f70733          	add	a4,a4,a5
    1044:	40e50bb3          	sub	s7,a0,a4
    1048:	d8e502e3          	beq	a0,a4,dcc <__divdi3+0x224>
    104c:	017696b3          	sll	a3,a3,s7
    1050:	01a12023          	sw	s10,0(sp)
    1054:	00e65d33          	srl	s10,a2,a4
    1058:	00dd6d33          	or	s10,s10,a3
    105c:	01512a23          	sw	s5,20(sp)
    1060:	01912223          	sw	s9,4(sp)
    1064:	010d5a93          	srl	s5,s10,0x10
    1068:	00e5dcb3          	srl	s9,a1,a4
    106c:	017597b3          	sll	a5,a1,s7
    1070:	00e95733          	srl	a4,s2,a4
    1074:	01812423          	sw	s8,8(sp)
    1078:	000a8593          	mv	a1,s5
    107c:	000c8513          	mv	a0,s9
    1080:	010d1c13          	sll	s8,s10,0x10
    1084:	00f769b3          	or	s3,a4,a5
    1088:	017614b3          	sll	s1,a2,s7
    108c:	02812423          	sw	s0,40(sp)
    1090:	01612823          	sw	s6,16(sp)
    1094:	010c5c13          	srl	s8,s8,0x10
    1098:	989ff0ef          	jal	a20 <__hidden___udivsi3>
    109c:	00050593          	mv	a1,a0
    10a0:	00050413          	mv	s0,a0
    10a4:	000c0513          	mv	a0,s8
    10a8:	94dff0ef          	jal	9f4 <__mulsi3>
    10ac:	00050b13          	mv	s6,a0
    10b0:	000a8593          	mv	a1,s5
    10b4:	000c8513          	mv	a0,s9
    10b8:	9b1ff0ef          	jal	a68 <__umodsi3>
    10bc:	01051513          	sll	a0,a0,0x10
    10c0:	0109d793          	srl	a5,s3,0x10
    10c4:	00a7e7b3          	or	a5,a5,a0
    10c8:	0167fe63          	bgeu	a5,s6,10e4 <__divdi3+0x53c>
    10cc:	00fd07b3          	add	a5,s10,a5
    10d0:	fff40713          	add	a4,s0,-1
    10d4:	17a7ec63          	bltu	a5,s10,124c <__divdi3+0x6a4>
    10d8:	1767fa63          	bgeu	a5,s6,124c <__divdi3+0x6a4>
    10dc:	ffe40413          	add	s0,s0,-2
    10e0:	01a787b3          	add	a5,a5,s10
    10e4:	41678b33          	sub	s6,a5,s6
    10e8:	000a8593          	mv	a1,s5
    10ec:	000b0513          	mv	a0,s6
    10f0:	931ff0ef          	jal	a20 <__hidden___udivsi3>
    10f4:	00050593          	mv	a1,a0
    10f8:	00050c93          	mv	s9,a0
    10fc:	000c0513          	mv	a0,s8
    1100:	8f5ff0ef          	jal	9f4 <__mulsi3>
    1104:	00050793          	mv	a5,a0
    1108:	000a8593          	mv	a1,s5
    110c:	000b0513          	mv	a0,s6
    1110:	00078a93          	mv	s5,a5
    1114:	955ff0ef          	jal	a68 <__umodsi3>
    1118:	01099713          	sll	a4,s3,0x10
    111c:	01051513          	sll	a0,a0,0x10
    1120:	01075713          	srl	a4,a4,0x10
    1124:	00a76733          	or	a4,a4,a0
    1128:	01577e63          	bgeu	a4,s5,1144 <__divdi3+0x59c>
    112c:	00ed0733          	add	a4,s10,a4
    1130:	fffc8793          	add	a5,s9,-1
    1134:	11a76463          	bltu	a4,s10,123c <__divdi3+0x694>
    1138:	11577263          	bgeu	a4,s5,123c <__divdi3+0x694>
    113c:	ffec8c93          	add	s9,s9,-2
    1140:	01a70733          	add	a4,a4,s10
    1144:	01041513          	sll	a0,s0,0x10
    1148:	00010337          	lui	t1,0x10
    114c:	01956433          	or	s0,a0,s9
    1150:	fff30793          	add	a5,t1,-1 # ffff <__fini_array_end+0xa7ff>
    1154:	00f47833          	and	a6,s0,a5
    1158:	00f4f7b3          	and	a5,s1,a5
    115c:	41570733          	sub	a4,a4,s5
    1160:	01045e93          	srl	t4,s0,0x10
    1164:	0104d493          	srl	s1,s1,0x10
    1168:	00080513          	mv	a0,a6
    116c:	00078593          	mv	a1,a5
    1170:	885ff0ef          	jal	9f4 <__mulsi3>
    1174:	00050e13          	mv	t3,a0
    1178:	00048593          	mv	a1,s1
    117c:	00080513          	mv	a0,a6
    1180:	875ff0ef          	jal	9f4 <__mulsi3>
    1184:	00050813          	mv	a6,a0
    1188:	00078593          	mv	a1,a5
    118c:	000e8513          	mv	a0,t4
    1190:	865ff0ef          	jal	9f4 <__mulsi3>
    1194:	00050893          	mv	a7,a0
    1198:	00048593          	mv	a1,s1
    119c:	000e8513          	mv	a0,t4
    11a0:	855ff0ef          	jal	9f4 <__mulsi3>
    11a4:	010e5793          	srl	a5,t3,0x10
    11a8:	01180833          	add	a6,a6,a7
    11ac:	010787b3          	add	a5,a5,a6
    11b0:	0117f463          	bgeu	a5,a7,11b8 <__divdi3+0x610>
    11b4:	00650533          	add	a0,a0,t1
    11b8:	0107d693          	srl	a3,a5,0x10
    11bc:	00a686b3          	add	a3,a3,a0
    11c0:	04d76663          	bltu	a4,a3,120c <__divdi3+0x664>
    11c4:	02d70463          	beq	a4,a3,11ec <__divdi3+0x644>
    11c8:	00040513          	mv	a0,s0
    11cc:	02812403          	lw	s0,40(sp)
    11d0:	01412a83          	lw	s5,20(sp)
    11d4:	01012b03          	lw	s6,16(sp)
    11d8:	00812c03          	lw	s8,8(sp)
    11dc:	00412c83          	lw	s9,4(sp)
    11e0:	00012d03          	lw	s10,0(sp)
    11e4:	00000913          	li	s2,0
    11e8:	b59ff06f          	j	d40 <__divdi3+0x198>
    11ec:	00010737          	lui	a4,0x10
    11f0:	fff70713          	add	a4,a4,-1 # ffff <__fini_array_end+0xa7ff>
    11f4:	00e7f7b3          	and	a5,a5,a4
    11f8:	01079793          	sll	a5,a5,0x10
    11fc:	00ee7e33          	and	t3,t3,a4
    1200:	01791533          	sll	a0,s2,s7
    1204:	01c787b3          	add	a5,a5,t3
    1208:	fcf570e3          	bgeu	a0,a5,11c8 <__divdi3+0x620>
    120c:	fff40513          	add	a0,s0,-1
    1210:	fbdff06f          	j	11cc <__divdi3+0x624>
    1214:	010007b7          	lui	a5,0x1000
    1218:	04f67a63          	bgeu	a2,a5,126c <__divdi3+0x6c4>
    121c:	01065693          	srl	a3,a2,0x10
    1220:	01000713          	li	a4,16
    1224:	bd9ff06f          	j	dfc <__divdi3+0x254>
    1228:	00000913          	li	s2,0
    122c:	00100513          	li	a0,1
    1230:	b11ff06f          	j	d40 <__divdi3+0x198>
    1234:	00078c13          	mv	s8,a5
    1238:	dd1ff06f          	j	1008 <__divdi3+0x460>
    123c:	00078c93          	mv	s9,a5
    1240:	f05ff06f          	j	1144 <__divdi3+0x59c>
    1244:	00070913          	mv	s2,a4
    1248:	d61ff06f          	j	fa8 <__divdi3+0x400>
    124c:	00070413          	mv	s0,a4
    1250:	e95ff06f          	j	10e4 <__divdi3+0x53c>
    1254:	ffe40413          	add	s0,s0,-2
    1258:	017787b3          	add	a5,a5,s7
    125c:	c25ff06f          	j	e80 <__divdi3+0x2d8>
    1260:	ffe40413          	add	s0,s0,-2
    1264:	017787b3          	add	a5,a5,s7
    1268:	a51ff06f          	j	cb8 <__divdi3+0x110>
    126c:	01865693          	srl	a3,a2,0x18
    1270:	01800713          	li	a4,24
    1274:	b89ff06f          	j	dfc <__divdi3+0x254>

00001278 <__moddi3>:
    1278:	fc010113          	add	sp,sp,-64
    127c:	02812c23          	sw	s0,56(sp)
    1280:	02112e23          	sw	ra,60(sp)
    1284:	03212823          	sw	s2,48(sp)
    1288:	03312623          	sw	s3,44(sp)
    128c:	03412423          	sw	s4,40(sp)
    1290:	00050793          	mv	a5,a0
    1294:	00000413          	li	s0,0
    1298:	1c05cc63          	bltz	a1,1470 <__moddi3+0x1f8>
    129c:	0006da63          	bgez	a3,12b0 <__moddi3+0x38>
    12a0:	00c03733          	snez	a4,a2
    12a4:	40d006b3          	neg	a3,a3
    12a8:	40e686b3          	sub	a3,a3,a4
    12ac:	40c00633          	neg	a2,a2
    12b0:	00060993          	mv	s3,a2
    12b4:	00078a13          	mv	s4,a5
    12b8:	00058913          	mv	s2,a1
    12bc:	14069663          	bnez	a3,1408 <__moddi3+0x190>
    12c0:	02912a23          	sw	s1,52(sp)
    12c4:	03512223          	sw	s5,36(sp)
    12c8:	03612023          	sw	s6,32(sp)
    12cc:	1ac5fe63          	bgeu	a1,a2,1488 <__moddi3+0x210>
    12d0:	00010737          	lui	a4,0x10
    12d4:	28e66463          	bltu	a2,a4,155c <__moddi3+0x2e4>
    12d8:	01000737          	lui	a4,0x1000
    12dc:	01800693          	li	a3,24
    12e0:	00e67463          	bgeu	a2,a4,12e8 <__moddi3+0x70>
    12e4:	01000693          	li	a3,16
    12e8:	00d65533          	srl	a0,a2,a3
    12ec:	0002f717          	auipc	a4,0x2f
    12f0:	00870713          	add	a4,a4,8 # 302f4 <__clz_tab>
    12f4:	00a70733          	add	a4,a4,a0
    12f8:	00074703          	lbu	a4,0(a4)
    12fc:	02000513          	li	a0,32
    1300:	00d70733          	add	a4,a4,a3
    1304:	40e504b3          	sub	s1,a0,a4
    1308:	00e50c63          	beq	a0,a4,1320 <__moddi3+0xa8>
    130c:	00959933          	sll	s2,a1,s1
    1310:	00e7d733          	srl	a4,a5,a4
    1314:	009619b3          	sll	s3,a2,s1
    1318:	01276933          	or	s2,a4,s2
    131c:	00979a33          	sll	s4,a5,s1
    1320:	0109da93          	srl	s5,s3,0x10
    1324:	000a8593          	mv	a1,s5
    1328:	00090513          	mv	a0,s2
    132c:	01099b13          	sll	s6,s3,0x10
    1330:	ef0ff0ef          	jal	a20 <__hidden___udivsi3>
    1334:	010b5b13          	srl	s6,s6,0x10
    1338:	000b0593          	mv	a1,s6
    133c:	eb8ff0ef          	jal	9f4 <__mulsi3>
    1340:	00050793          	mv	a5,a0
    1344:	000a8593          	mv	a1,s5
    1348:	00090513          	mv	a0,s2
    134c:	00078913          	mv	s2,a5
    1350:	f18ff0ef          	jal	a68 <__umodsi3>
    1354:	01051513          	sll	a0,a0,0x10
    1358:	010a5793          	srl	a5,s4,0x10
    135c:	00a7e7b3          	or	a5,a5,a0
    1360:	0127f863          	bgeu	a5,s2,1370 <__moddi3+0xf8>
    1364:	00f987b3          	add	a5,s3,a5
    1368:	0137e463          	bltu	a5,s3,1370 <__moddi3+0xf8>
    136c:	5527e663          	bltu	a5,s2,18b8 <__moddi3+0x640>
    1370:	41278933          	sub	s2,a5,s2
    1374:	000a8593          	mv	a1,s5
    1378:	00090513          	mv	a0,s2
    137c:	ea4ff0ef          	jal	a20 <__hidden___udivsi3>
    1380:	000b0593          	mv	a1,s6
    1384:	e70ff0ef          	jal	9f4 <__mulsi3>
    1388:	00050793          	mv	a5,a0
    138c:	000a8593          	mv	a1,s5
    1390:	00090513          	mv	a0,s2
    1394:	00078913          	mv	s2,a5
    1398:	ed0ff0ef          	jal	a68 <__umodsi3>
    139c:	010a1793          	sll	a5,s4,0x10
    13a0:	01051513          	sll	a0,a0,0x10
    13a4:	0107d793          	srl	a5,a5,0x10
    13a8:	00a7e7b3          	or	a5,a5,a0
    13ac:	0127fa63          	bgeu	a5,s2,13c0 <__moddi3+0x148>
    13b0:	00f987b3          	add	a5,s3,a5
    13b4:	0137e663          	bltu	a5,s3,13c0 <__moddi3+0x148>
    13b8:	0127f463          	bgeu	a5,s2,13c0 <__moddi3+0x148>
    13bc:	013787b3          	add	a5,a5,s3
    13c0:	412787b3          	sub	a5,a5,s2
    13c4:	0097d533          	srl	a0,a5,s1
    13c8:	02412a83          	lw	s5,36(sp)
    13cc:	03412483          	lw	s1,52(sp)
    13d0:	02012b03          	lw	s6,32(sp)
    13d4:	00000593          	li	a1,0
    13d8:	00040a63          	beqz	s0,13ec <__moddi3+0x174>
    13dc:	00a037b3          	snez	a5,a0
    13e0:	40b005b3          	neg	a1,a1
    13e4:	40f585b3          	sub	a1,a1,a5
    13e8:	40a00533          	neg	a0,a0
    13ec:	03c12083          	lw	ra,60(sp)
    13f0:	03812403          	lw	s0,56(sp)
    13f4:	03012903          	lw	s2,48(sp)
    13f8:	02c12983          	lw	s3,44(sp)
    13fc:	02812a03          	lw	s4,40(sp)
    1400:	04010113          	add	sp,sp,64
    1404:	00008067          	ret
    1408:	00078813          	mv	a6,a5
    140c:	00078513          	mv	a0,a5
    1410:	fcd5e4e3          	bltu	a1,a3,13d8 <__moddi3+0x160>
    1414:	00010737          	lui	a4,0x10
    1418:	24e6e663          	bltu	a3,a4,1664 <__moddi3+0x3ec>
    141c:	01000537          	lui	a0,0x1000
    1420:	01800713          	li	a4,24
    1424:	00a6f463          	bgeu	a3,a0,142c <__moddi3+0x1b4>
    1428:	01000713          	li	a4,16
    142c:	00e6d8b3          	srl	a7,a3,a4
    1430:	0002f517          	auipc	a0,0x2f
    1434:	ec450513          	add	a0,a0,-316 # 302f4 <__clz_tab>
    1438:	01150533          	add	a0,a0,a7
    143c:	00054a03          	lbu	s4,0(a0)
    1440:	02000513          	li	a0,32
    1444:	00ea0a33          	add	s4,s4,a4
    1448:	414509b3          	sub	s3,a0,s4
    144c:	25451463          	bne	a0,s4,1694 <__moddi3+0x41c>
    1450:	00b6e463          	bltu	a3,a1,1458 <__moddi3+0x1e0>
    1454:	00c7ea63          	bltu	a5,a2,1468 <__moddi3+0x1f0>
    1458:	40c78833          	sub	a6,a5,a2
    145c:	40d586b3          	sub	a3,a1,a3
    1460:	0107b5b3          	sltu	a1,a5,a6
    1464:	40b685b3          	sub	a1,a3,a1
    1468:	00080513          	mv	a0,a6
    146c:	f6dff06f          	j	13d8 <__moddi3+0x160>
    1470:	00a03733          	snez	a4,a0
    1474:	40b005b3          	neg	a1,a1
    1478:	40e585b3          	sub	a1,a1,a4
    147c:	40a007b3          	neg	a5,a0
    1480:	fff00413          	li	s0,-1
    1484:	e19ff06f          	j	129c <__moddi3+0x24>
    1488:	0e060263          	beqz	a2,156c <__moddi3+0x2f4>
    148c:	00010737          	lui	a4,0x10
    1490:	40e67263          	bgeu	a2,a4,1894 <__moddi3+0x61c>
    1494:	10063693          	sltiu	a3,a2,256
    1498:	0016b693          	seqz	a3,a3
    149c:	00369693          	sll	a3,a3,0x3
    14a0:	00d65533          	srl	a0,a2,a3
    14a4:	0002f717          	auipc	a4,0x2f
    14a8:	e5070713          	add	a4,a4,-432 # 302f4 <__clz_tab>
    14ac:	00a70733          	add	a4,a4,a0
    14b0:	00074a83          	lbu	s5,0(a4)
    14b4:	02000713          	li	a4,32
    14b8:	00da8ab3          	add	s5,s5,a3
    14bc:	415704b3          	sub	s1,a4,s5
    14c0:	0d571a63          	bne	a4,s5,1594 <__moddi3+0x31c>
    14c4:	01061913          	sll	s2,a2,0x10
    14c8:	40c58ab3          	sub	s5,a1,a2
    14cc:	01065b13          	srl	s6,a2,0x10
    14d0:	01095913          	srl	s2,s2,0x10
    14d4:	000b0593          	mv	a1,s6
    14d8:	000a8513          	mv	a0,s5
    14dc:	d44ff0ef          	jal	a20 <__hidden___udivsi3>
    14e0:	00090593          	mv	a1,s2
    14e4:	d10ff0ef          	jal	9f4 <__mulsi3>
    14e8:	00050793          	mv	a5,a0
    14ec:	000b0593          	mv	a1,s6
    14f0:	000a8513          	mv	a0,s5
    14f4:	00078a93          	mv	s5,a5
    14f8:	d70ff0ef          	jal	a68 <__umodsi3>
    14fc:	01051513          	sll	a0,a0,0x10
    1500:	010a5793          	srl	a5,s4,0x10
    1504:	00a7e7b3          	or	a5,a5,a0
    1508:	0157fa63          	bgeu	a5,s5,151c <__moddi3+0x2a4>
    150c:	00f987b3          	add	a5,s3,a5
    1510:	0137e663          	bltu	a5,s3,151c <__moddi3+0x2a4>
    1514:	0157f463          	bgeu	a5,s5,151c <__moddi3+0x2a4>
    1518:	013787b3          	add	a5,a5,s3
    151c:	41578ab3          	sub	s5,a5,s5
    1520:	000b0593          	mv	a1,s6
    1524:	000a8513          	mv	a0,s5
    1528:	cf8ff0ef          	jal	a20 <__hidden___udivsi3>
    152c:	00090593          	mv	a1,s2
    1530:	cc4ff0ef          	jal	9f4 <__mulsi3>
    1534:	00050913          	mv	s2,a0
    1538:	000b0593          	mv	a1,s6
    153c:	000a8513          	mv	a0,s5
    1540:	d28ff0ef          	jal	a68 <__umodsi3>
    1544:	010a1a13          	sll	s4,s4,0x10
    1548:	01051793          	sll	a5,a0,0x10
    154c:	010a5a13          	srl	s4,s4,0x10
    1550:	00fa67b3          	or	a5,s4,a5
    1554:	e727f6e3          	bgeu	a5,s2,13c0 <__moddi3+0x148>
    1558:	e59ff06f          	j	13b0 <__moddi3+0x138>
    155c:	10063693          	sltiu	a3,a2,256
    1560:	0016b693          	seqz	a3,a3
    1564:	00369693          	sll	a3,a3,0x3
    1568:	d81ff06f          	j	12e8 <__moddi3+0x70>
    156c:	00000513          	li	a0,0
    1570:	0002f717          	auipc	a4,0x2f
    1574:	d8470713          	add	a4,a4,-636 # 302f4 <__clz_tab>
    1578:	00a70733          	add	a4,a4,a0
    157c:	00074a83          	lbu	s5,0(a4)
    1580:	00000693          	li	a3,0
    1584:	02000713          	li	a4,32
    1588:	00da8ab3          	add	s5,s5,a3
    158c:	415704b3          	sub	s1,a4,s5
    1590:	f3570ae3          	beq	a4,s5,14c4 <__moddi3+0x24c>
    1594:	009619b3          	sll	s3,a2,s1
    1598:	01812c23          	sw	s8,24(sp)
    159c:	0109db13          	srl	s6,s3,0x10
    15a0:	0155dc33          	srl	s8,a1,s5
    15a4:	00959733          	sll	a4,a1,s1
    15a8:	0157dab3          	srl	s5,a5,s5
    15ac:	000b0593          	mv	a1,s6
    15b0:	000c0513          	mv	a0,s8
    15b4:	01099913          	sll	s2,s3,0x10
    15b8:	00eaeab3          	or	s5,s5,a4
    15bc:	00979a33          	sll	s4,a5,s1
    15c0:	01712e23          	sw	s7,28(sp)
    15c4:	01095913          	srl	s2,s2,0x10
    15c8:	c58ff0ef          	jal	a20 <__hidden___udivsi3>
    15cc:	00090593          	mv	a1,s2
    15d0:	c24ff0ef          	jal	9f4 <__mulsi3>
    15d4:	00050b93          	mv	s7,a0
    15d8:	000b0593          	mv	a1,s6
    15dc:	000c0513          	mv	a0,s8
    15e0:	c88ff0ef          	jal	a68 <__umodsi3>
    15e4:	01051513          	sll	a0,a0,0x10
    15e8:	010ad793          	srl	a5,s5,0x10
    15ec:	00a7e7b3          	or	a5,a5,a0
    15f0:	0177fa63          	bgeu	a5,s7,1604 <__moddi3+0x38c>
    15f4:	00f987b3          	add	a5,s3,a5
    15f8:	0137e663          	bltu	a5,s3,1604 <__moddi3+0x38c>
    15fc:	0177f463          	bgeu	a5,s7,1604 <__moddi3+0x38c>
    1600:	013787b3          	add	a5,a5,s3
    1604:	41778bb3          	sub	s7,a5,s7
    1608:	000b0593          	mv	a1,s6
    160c:	000b8513          	mv	a0,s7
    1610:	c10ff0ef          	jal	a20 <__hidden___udivsi3>
    1614:	00090593          	mv	a1,s2
    1618:	bdcff0ef          	jal	9f4 <__mulsi3>
    161c:	00050793          	mv	a5,a0
    1620:	000b0593          	mv	a1,s6
    1624:	000b8513          	mv	a0,s7
    1628:	010a9a93          	sll	s5,s5,0x10
    162c:	00078b93          	mv	s7,a5
    1630:	c38ff0ef          	jal	a68 <__umodsi3>
    1634:	01051513          	sll	a0,a0,0x10
    1638:	010ada93          	srl	s5,s5,0x10
    163c:	00aaeab3          	or	s5,s5,a0
    1640:	017afa63          	bgeu	s5,s7,1654 <__moddi3+0x3dc>
    1644:	01598ab3          	add	s5,s3,s5
    1648:	013ae663          	bltu	s5,s3,1654 <__moddi3+0x3dc>
    164c:	017af463          	bgeu	s5,s7,1654 <__moddi3+0x3dc>
    1650:	013a8ab3          	add	s5,s5,s3
    1654:	417a8ab3          	sub	s5,s5,s7
    1658:	01812c03          	lw	s8,24(sp)
    165c:	01c12b83          	lw	s7,28(sp)
    1660:	e75ff06f          	j	14d4 <__moddi3+0x25c>
    1664:	1006b713          	sltiu	a4,a3,256
    1668:	00173713          	seqz	a4,a4
    166c:	00371713          	sll	a4,a4,0x3
    1670:	00e6d8b3          	srl	a7,a3,a4
    1674:	0002f517          	auipc	a0,0x2f
    1678:	c8050513          	add	a0,a0,-896 # 302f4 <__clz_tab>
    167c:	01150533          	add	a0,a0,a7
    1680:	00054a03          	lbu	s4,0(a0)
    1684:	02000513          	li	a0,32
    1688:	00ea0a33          	add	s4,s4,a4
    168c:	414509b3          	sub	s3,a0,s4
    1690:	dd4500e3          	beq	a0,s4,1450 <__moddi3+0x1d8>
    1694:	03512223          	sw	s5,36(sp)
    1698:	013696b3          	sll	a3,a3,s3
    169c:	01465ab3          	srl	s5,a2,s4
    16a0:	00daeab3          	or	s5,s5,a3
    16a4:	01712e23          	sw	s7,28(sp)
    16a8:	01b12623          	sw	s11,12(sp)
    16ac:	010adb93          	srl	s7,s5,0x10
    16b0:	0145ddb3          	srl	s11,a1,s4
    16b4:	01359733          	sll	a4,a1,s3
    16b8:	0147d6b3          	srl	a3,a5,s4
    16bc:	01a12823          	sw	s10,16(sp)
    16c0:	000b8593          	mv	a1,s7
    16c4:	000d8513          	mv	a0,s11
    16c8:	010a9d13          	sll	s10,s5,0x10
    16cc:	01361933          	sll	s2,a2,s3
    16d0:	02912a23          	sw	s1,52(sp)
    16d4:	03612023          	sw	s6,32(sp)
    16d8:	013794b3          	sll	s1,a5,s3
    16dc:	00e6eb33          	or	s6,a3,a4
    16e0:	01812c23          	sw	s8,24(sp)
    16e4:	01912a23          	sw	s9,20(sp)
    16e8:	010d5d13          	srl	s10,s10,0x10
    16ec:	b34ff0ef          	jal	a20 <__hidden___udivsi3>
    16f0:	00050593          	mv	a1,a0
    16f4:	00050c13          	mv	s8,a0
    16f8:	000d0513          	mv	a0,s10
    16fc:	af8ff0ef          	jal	9f4 <__mulsi3>
    1700:	00050c93          	mv	s9,a0
    1704:	000b8593          	mv	a1,s7
    1708:	000d8513          	mv	a0,s11
    170c:	b5cff0ef          	jal	a68 <__umodsi3>
    1710:	01051513          	sll	a0,a0,0x10
    1714:	010b5793          	srl	a5,s6,0x10
    1718:	00a7e7b3          	or	a5,a5,a0
    171c:	0197fe63          	bgeu	a5,s9,1738 <__moddi3+0x4c0>
    1720:	00fa87b3          	add	a5,s5,a5
    1724:	fffc0713          	add	a4,s8,-1
    1728:	1957e463          	bltu	a5,s5,18b0 <__moddi3+0x638>
    172c:	1997f263          	bgeu	a5,s9,18b0 <__moddi3+0x638>
    1730:	ffec0c13          	add	s8,s8,-2
    1734:	015787b3          	add	a5,a5,s5
    1738:	41978cb3          	sub	s9,a5,s9
    173c:	000b8593          	mv	a1,s7
    1740:	000c8513          	mv	a0,s9
    1744:	adcff0ef          	jal	a20 <__hidden___udivsi3>
    1748:	00050593          	mv	a1,a0
    174c:	00050d93          	mv	s11,a0
    1750:	000d0513          	mv	a0,s10
    1754:	aa0ff0ef          	jal	9f4 <__mulsi3>
    1758:	00050793          	mv	a5,a0
    175c:	000b8593          	mv	a1,s7
    1760:	000c8513          	mv	a0,s9
    1764:	00078b93          	mv	s7,a5
    1768:	b00ff0ef          	jal	a68 <__umodsi3>
    176c:	010b1593          	sll	a1,s6,0x10
    1770:	01051513          	sll	a0,a0,0x10
    1774:	0105d593          	srl	a1,a1,0x10
    1778:	00a5e5b3          	or	a1,a1,a0
    177c:	0175fe63          	bgeu	a1,s7,1798 <__moddi3+0x520>
    1780:	00ba85b3          	add	a1,s5,a1
    1784:	fffd8793          	add	a5,s11,-1
    1788:	1355e063          	bltu	a1,s5,18a8 <__moddi3+0x630>
    178c:	1175fe63          	bgeu	a1,s7,18a8 <__moddi3+0x630>
    1790:	ffed8d93          	add	s11,s11,-2
    1794:	015585b3          	add	a1,a1,s5
    1798:	010c1713          	sll	a4,s8,0x10
    179c:	00010e37          	lui	t3,0x10
    17a0:	01b76733          	or	a4,a4,s11
    17a4:	fffe0313          	add	t1,t3,-1 # ffff <__fini_array_end+0xa7ff>
    17a8:	006777b3          	and	a5,a4,t1
    17ac:	00697333          	and	t1,s2,t1
    17b0:	41758833          	sub	a6,a1,s7
    17b4:	01075713          	srl	a4,a4,0x10
    17b8:	01095e93          	srl	t4,s2,0x10
    17bc:	00078513          	mv	a0,a5
    17c0:	00030593          	mv	a1,t1
    17c4:	a30ff0ef          	jal	9f4 <__mulsi3>
    17c8:	00050893          	mv	a7,a0
    17cc:	000e8593          	mv	a1,t4
    17d0:	00078513          	mv	a0,a5
    17d4:	a20ff0ef          	jal	9f4 <__mulsi3>
    17d8:	00050793          	mv	a5,a0
    17dc:	00030593          	mv	a1,t1
    17e0:	00070513          	mv	a0,a4
    17e4:	a10ff0ef          	jal	9f4 <__mulsi3>
    17e8:	00050313          	mv	t1,a0
    17ec:	000e8593          	mv	a1,t4
    17f0:	00070513          	mv	a0,a4
    17f4:	a00ff0ef          	jal	9f4 <__mulsi3>
    17f8:	006787b3          	add	a5,a5,t1
    17fc:	0108d713          	srl	a4,a7,0x10
    1800:	00e787b3          	add	a5,a5,a4
    1804:	0067f463          	bgeu	a5,t1,180c <__moddi3+0x594>
    1808:	01c50533          	add	a0,a0,t3
    180c:	000106b7          	lui	a3,0x10
    1810:	fff68693          	add	a3,a3,-1 # ffff <__fini_array_end+0xa7ff>
    1814:	0107d713          	srl	a4,a5,0x10
    1818:	00d7f7b3          	and	a5,a5,a3
    181c:	01079793          	sll	a5,a5,0x10
    1820:	00d8f8b3          	and	a7,a7,a3
    1824:	00a70733          	add	a4,a4,a0
    1828:	011787b3          	add	a5,a5,a7
    182c:	04e86863          	bltu	a6,a4,187c <__moddi3+0x604>
    1830:	04e80463          	beq	a6,a4,1878 <__moddi3+0x600>
    1834:	40f487b3          	sub	a5,s1,a5
    1838:	00f4b4b3          	sltu	s1,s1,a5
    183c:	40e805b3          	sub	a1,a6,a4
    1840:	409585b3          	sub	a1,a1,s1
    1844:	01459a33          	sll	s4,a1,s4
    1848:	0137d7b3          	srl	a5,a5,s3
    184c:	03412483          	lw	s1,52(sp)
    1850:	02412a83          	lw	s5,36(sp)
    1854:	02012b03          	lw	s6,32(sp)
    1858:	01c12b83          	lw	s7,28(sp)
    185c:	01812c03          	lw	s8,24(sp)
    1860:	01412c83          	lw	s9,20(sp)
    1864:	01012d03          	lw	s10,16(sp)
    1868:	00c12d83          	lw	s11,12(sp)
    186c:	00fa6533          	or	a0,s4,a5
    1870:	0135d5b3          	srl	a1,a1,s3
    1874:	b65ff06f          	j	13d8 <__moddi3+0x160>
    1878:	faf4fee3          	bgeu	s1,a5,1834 <__moddi3+0x5bc>
    187c:	41278633          	sub	a2,a5,s2
    1880:	00c7b7b3          	sltu	a5,a5,a2
    1884:	01578ab3          	add	s5,a5,s5
    1888:	41570733          	sub	a4,a4,s5
    188c:	00060793          	mv	a5,a2
    1890:	fa5ff06f          	j	1834 <__moddi3+0x5bc>
    1894:	01000737          	lui	a4,0x1000
    1898:	02e67463          	bgeu	a2,a4,18c0 <__moddi3+0x648>
    189c:	01065513          	srl	a0,a2,0x10
    18a0:	01000693          	li	a3,16
    18a4:	c01ff06f          	j	14a4 <__moddi3+0x22c>
    18a8:	00078d93          	mv	s11,a5
    18ac:	eedff06f          	j	1798 <__moddi3+0x520>
    18b0:	00070c13          	mv	s8,a4
    18b4:	e85ff06f          	j	1738 <__moddi3+0x4c0>
    18b8:	013787b3          	add	a5,a5,s3
    18bc:	ab5ff06f          	j	1370 <__moddi3+0xf8>
    18c0:	01865513          	srl	a0,a2,0x18
    18c4:	01800693          	li	a3,24
    18c8:	bddff06f          	j	14a4 <__moddi3+0x22c>

000018cc <__errno>:
    18cc:	00033517          	auipc	a0,0x33
    18d0:	c8052503          	lw	a0,-896(a0) # 3454c <_impure_ptr>
    18d4:	00008067          	ret

000018d8 <stdio_exit_handler>:
    18d8:	00033617          	auipc	a2,0x33
    18dc:	84860613          	add	a2,a2,-1976 # 34120 <__sglue>
    18e0:	00001597          	auipc	a1,0x1
    18e4:	5c058593          	add	a1,a1,1472 # 2ea0 <_fclose_r>
    18e8:	00032517          	auipc	a0,0x32
    18ec:	71850513          	add	a0,a0,1816 # 34000 <_impure_data>
    18f0:	4cc0006f          	j	1dbc <_fwalk_sglue>

000018f4 <cleanup_stdio>:
    18f4:	00452583          	lw	a1,4(a0)
    18f8:	ff010113          	add	sp,sp,-16
    18fc:	00812423          	sw	s0,8(sp)
    1900:	00112623          	sw	ra,12(sp)
    1904:	00033797          	auipc	a5,0x33
    1908:	efc78793          	add	a5,a5,-260 # 34800 <__sf>
    190c:	00050413          	mv	s0,a0
    1910:	00f58463          	beq	a1,a5,1918 <cleanup_stdio+0x24>
    1914:	58c010ef          	jal	2ea0 <_fclose_r>
    1918:	00842583          	lw	a1,8(s0)
    191c:	00033797          	auipc	a5,0x33
    1920:	f4c78793          	add	a5,a5,-180 # 34868 <__sf+0x68>
    1924:	00f58663          	beq	a1,a5,1930 <cleanup_stdio+0x3c>
    1928:	00040513          	mv	a0,s0
    192c:	574010ef          	jal	2ea0 <_fclose_r>
    1930:	00c42583          	lw	a1,12(s0)
    1934:	00033797          	auipc	a5,0x33
    1938:	f9c78793          	add	a5,a5,-100 # 348d0 <__sf+0xd0>
    193c:	00f58c63          	beq	a1,a5,1954 <cleanup_stdio+0x60>
    1940:	00040513          	mv	a0,s0
    1944:	00812403          	lw	s0,8(sp)
    1948:	00c12083          	lw	ra,12(sp)
    194c:	01010113          	add	sp,sp,16
    1950:	5500106f          	j	2ea0 <_fclose_r>
    1954:	00c12083          	lw	ra,12(sp)
    1958:	00812403          	lw	s0,8(sp)
    195c:	01010113          	add	sp,sp,16
    1960:	00008067          	ret

00001964 <__fp_lock>:
    1964:	0645a783          	lw	a5,100(a1)
    1968:	0017f793          	and	a5,a5,1
    196c:	00079863          	bnez	a5,197c <__fp_lock+0x18>
    1970:	00c5d783          	lhu	a5,12(a1)
    1974:	2007f793          	and	a5,a5,512
    1978:	00078663          	beqz	a5,1984 <__fp_lock+0x20>
    197c:	00000513          	li	a0,0
    1980:	00008067          	ret
    1984:	0585a503          	lw	a0,88(a1)
    1988:	ff010113          	add	sp,sp,-16
    198c:	00112623          	sw	ra,12(sp)
    1990:	0ad000ef          	jal	223c <__retarget_lock_acquire_recursive>
    1994:	00c12083          	lw	ra,12(sp)
    1998:	00000513          	li	a0,0
    199c:	01010113          	add	sp,sp,16
    19a0:	00008067          	ret

000019a4 <__fp_unlock>:
    19a4:	0645a783          	lw	a5,100(a1)
    19a8:	0017f793          	and	a5,a5,1
    19ac:	00079863          	bnez	a5,19bc <__fp_unlock+0x18>
    19b0:	00c5d783          	lhu	a5,12(a1)
    19b4:	2007f793          	and	a5,a5,512
    19b8:	00078663          	beqz	a5,19c4 <__fp_unlock+0x20>
    19bc:	00000513          	li	a0,0
    19c0:	00008067          	ret
    19c4:	0585a503          	lw	a0,88(a1)
    19c8:	ff010113          	add	sp,sp,-16
    19cc:	00112623          	sw	ra,12(sp)
    19d0:	085000ef          	jal	2254 <__retarget_lock_release_recursive>
    19d4:	00c12083          	lw	ra,12(sp)
    19d8:	00000513          	li	a0,0
    19dc:	01010113          	add	sp,sp,16
    19e0:	00008067          	ret

000019e4 <global_stdio_init.part.0>:
    19e4:	fe010113          	add	sp,sp,-32
    19e8:	00000797          	auipc	a5,0x0
    19ec:	ef078793          	add	a5,a5,-272 # 18d8 <stdio_exit_handler>
    19f0:	00112e23          	sw	ra,28(sp)
    19f4:	00812c23          	sw	s0,24(sp)
    19f8:	00912a23          	sw	s1,20(sp)
    19fc:	00033417          	auipc	s0,0x33
    1a00:	e0440413          	add	s0,s0,-508 # 34800 <__sf>
    1a04:	01212823          	sw	s2,16(sp)
    1a08:	01312623          	sw	s3,12(sp)
    1a0c:	01412423          	sw	s4,8(sp)
    1a10:	00800613          	li	a2,8
    1a14:	00000593          	li	a1,0
    1a18:	00033717          	auipc	a4,0x33
    1a1c:	f4f72623          	sw	a5,-180(a4) # 34964 <__stdio_exit_handler>
    1a20:	00033517          	auipc	a0,0x33
    1a24:	e3c50513          	add	a0,a0,-452 # 3485c <__sf+0x5c>
    1a28:	00400793          	li	a5,4
    1a2c:	00f42623          	sw	a5,12(s0)
    1a30:	00042023          	sw	zero,0(s0)
    1a34:	00042223          	sw	zero,4(s0)
    1a38:	00042423          	sw	zero,8(s0)
    1a3c:	06042223          	sw	zero,100(s0)
    1a40:	00042823          	sw	zero,16(s0)
    1a44:	00042a23          	sw	zero,20(s0)
    1a48:	00042c23          	sw	zero,24(s0)
    1a4c:	880ff0ef          	jal	acc <memset>
    1a50:	00000a17          	auipc	s4,0x0
    1a54:	420a0a13          	add	s4,s4,1056 # 1e70 <__sread>
    1a58:	00000997          	auipc	s3,0x0
    1a5c:	47c98993          	add	s3,s3,1148 # 1ed4 <__swrite>
    1a60:	00000917          	auipc	s2,0x0
    1a64:	4fc90913          	add	s2,s2,1276 # 1f5c <__sseek>
    1a68:	00000497          	auipc	s1,0x0
    1a6c:	56c48493          	add	s1,s1,1388 # 1fd4 <__sclose>
    1a70:	00033517          	auipc	a0,0x33
    1a74:	de850513          	add	a0,a0,-536 # 34858 <__sf+0x58>
    1a78:	03442023          	sw	s4,32(s0)
    1a7c:	03342223          	sw	s3,36(s0)
    1a80:	03242423          	sw	s2,40(s0)
    1a84:	02942623          	sw	s1,44(s0)
    1a88:	00842e23          	sw	s0,28(s0)
    1a8c:	7a0000ef          	jal	222c <__retarget_lock_init_recursive>
    1a90:	000107b7          	lui	a5,0x10
    1a94:	00978793          	add	a5,a5,9 # 10009 <__fini_array_end+0xa809>
    1a98:	00800613          	li	a2,8
    1a9c:	00000593          	li	a1,0
    1aa0:	00033517          	auipc	a0,0x33
    1aa4:	e2450513          	add	a0,a0,-476 # 348c4 <__sf+0xc4>
    1aa8:	06f42a23          	sw	a5,116(s0)
    1aac:	06042423          	sw	zero,104(s0)
    1ab0:	06042623          	sw	zero,108(s0)
    1ab4:	06042823          	sw	zero,112(s0)
    1ab8:	0c042623          	sw	zero,204(s0)
    1abc:	06042c23          	sw	zero,120(s0)
    1ac0:	06042e23          	sw	zero,124(s0)
    1ac4:	08042023          	sw	zero,128(s0)
    1ac8:	804ff0ef          	jal	acc <memset>
    1acc:	00033797          	auipc	a5,0x33
    1ad0:	d9c78793          	add	a5,a5,-612 # 34868 <__sf+0x68>
    1ad4:	00033517          	auipc	a0,0x33
    1ad8:	dec50513          	add	a0,a0,-532 # 348c0 <__sf+0xc0>
    1adc:	08f42223          	sw	a5,132(s0)
    1ae0:	09442423          	sw	s4,136(s0)
    1ae4:	09342623          	sw	s3,140(s0)
    1ae8:	09242823          	sw	s2,144(s0)
    1aec:	08942a23          	sw	s1,148(s0)
    1af0:	73c000ef          	jal	222c <__retarget_lock_init_recursive>
    1af4:	000207b7          	lui	a5,0x20
    1af8:	01278793          	add	a5,a5,18 # 20012 <__fini_array_end+0x1a812>
    1afc:	00800613          	li	a2,8
    1b00:	00000593          	li	a1,0
    1b04:	00033517          	auipc	a0,0x33
    1b08:	e2850513          	add	a0,a0,-472 # 3492c <__sf+0x12c>
    1b0c:	0cf42e23          	sw	a5,220(s0)
    1b10:	0c042823          	sw	zero,208(s0)
    1b14:	0c042a23          	sw	zero,212(s0)
    1b18:	0c042c23          	sw	zero,216(s0)
    1b1c:	12042a23          	sw	zero,308(s0)
    1b20:	0e042023          	sw	zero,224(s0)
    1b24:	0e042223          	sw	zero,228(s0)
    1b28:	0e042423          	sw	zero,232(s0)
    1b2c:	fa1fe0ef          	jal	acc <memset>
    1b30:	00033797          	auipc	a5,0x33
    1b34:	da078793          	add	a5,a5,-608 # 348d0 <__sf+0xd0>
    1b38:	0f442823          	sw	s4,240(s0)
    1b3c:	0f342a23          	sw	s3,244(s0)
    1b40:	0f242c23          	sw	s2,248(s0)
    1b44:	0e942e23          	sw	s1,252(s0)
    1b48:	0ef42623          	sw	a5,236(s0)
    1b4c:	01812403          	lw	s0,24(sp)
    1b50:	01c12083          	lw	ra,28(sp)
    1b54:	01412483          	lw	s1,20(sp)
    1b58:	01012903          	lw	s2,16(sp)
    1b5c:	00c12983          	lw	s3,12(sp)
    1b60:	00812a03          	lw	s4,8(sp)
    1b64:	00033517          	auipc	a0,0x33
    1b68:	dc450513          	add	a0,a0,-572 # 34928 <__sf+0x128>
    1b6c:	02010113          	add	sp,sp,32
    1b70:	6bc0006f          	j	222c <__retarget_lock_init_recursive>

00001b74 <__sfp>:
    1b74:	fe010113          	add	sp,sp,-32
    1b78:	01312623          	sw	s3,12(sp)
    1b7c:	00050993          	mv	s3,a0
    1b80:	00033517          	auipc	a0,0x33
    1b84:	e0850513          	add	a0,a0,-504 # 34988 <__lock___sfp_recursive_mutex>
    1b88:	00112e23          	sw	ra,28(sp)
    1b8c:	00812c23          	sw	s0,24(sp)
    1b90:	00912a23          	sw	s1,20(sp)
    1b94:	01212823          	sw	s2,16(sp)
    1b98:	6a4000ef          	jal	223c <__retarget_lock_acquire_recursive>
    1b9c:	00033797          	auipc	a5,0x33
    1ba0:	dc87a783          	lw	a5,-568(a5) # 34964 <__stdio_exit_handler>
    1ba4:	10078263          	beqz	a5,1ca8 <__sfp+0x134>
    1ba8:	00032917          	auipc	s2,0x32
    1bac:	57890913          	add	s2,s2,1400 # 34120 <__sglue>
    1bb0:	fff00493          	li	s1,-1
    1bb4:	00492783          	lw	a5,4(s2)
    1bb8:	00892403          	lw	s0,8(s2)
    1bbc:	fff78793          	add	a5,a5,-1
    1bc0:	0007d863          	bgez	a5,1bd0 <__sfp+0x5c>
    1bc4:	0940006f          	j	1c58 <__sfp+0xe4>
    1bc8:	06840413          	add	s0,s0,104
    1bcc:	08978663          	beq	a5,s1,1c58 <__sfp+0xe4>
    1bd0:	00c41703          	lh	a4,12(s0)
    1bd4:	fff78793          	add	a5,a5,-1
    1bd8:	fe0718e3          	bnez	a4,1bc8 <__sfp+0x54>
    1bdc:	ffff07b7          	lui	a5,0xffff0
    1be0:	00178793          	add	a5,a5,1 # ffff0001 <GET_WATCHDOG_LOW+0xffdeefc1>
    1be4:	00f42623          	sw	a5,12(s0)
    1be8:	05840513          	add	a0,s0,88
    1bec:	06042223          	sw	zero,100(s0)
    1bf0:	63c000ef          	jal	222c <__retarget_lock_init_recursive>
    1bf4:	00033517          	auipc	a0,0x33
    1bf8:	d9450513          	add	a0,a0,-620 # 34988 <__lock___sfp_recursive_mutex>
    1bfc:	658000ef          	jal	2254 <__retarget_lock_release_recursive>
    1c00:	00800613          	li	a2,8
    1c04:	00042023          	sw	zero,0(s0)
    1c08:	00042423          	sw	zero,8(s0)
    1c0c:	00042223          	sw	zero,4(s0)
    1c10:	00042823          	sw	zero,16(s0)
    1c14:	00042a23          	sw	zero,20(s0)
    1c18:	00042c23          	sw	zero,24(s0)
    1c1c:	00000593          	li	a1,0
    1c20:	05c40513          	add	a0,s0,92
    1c24:	ea9fe0ef          	jal	acc <memset>
    1c28:	02042823          	sw	zero,48(s0)
    1c2c:	02042a23          	sw	zero,52(s0)
    1c30:	04042223          	sw	zero,68(s0)
    1c34:	04042423          	sw	zero,72(s0)
    1c38:	01c12083          	lw	ra,28(sp)
    1c3c:	00040513          	mv	a0,s0
    1c40:	01812403          	lw	s0,24(sp)
    1c44:	01412483          	lw	s1,20(sp)
    1c48:	01012903          	lw	s2,16(sp)
    1c4c:	00c12983          	lw	s3,12(sp)
    1c50:	02010113          	add	sp,sp,32
    1c54:	00008067          	ret
    1c58:	00092403          	lw	s0,0(s2)
    1c5c:	00040663          	beqz	s0,1c68 <__sfp+0xf4>
    1c60:	00040913          	mv	s2,s0
    1c64:	f51ff06f          	j	1bb4 <__sfp+0x40>
    1c68:	1ac00593          	li	a1,428
    1c6c:	00098513          	mv	a0,s3
    1c70:	239000ef          	jal	26a8 <_malloc_r>
    1c74:	00050413          	mv	s0,a0
    1c78:	02050c63          	beqz	a0,1cb0 <__sfp+0x13c>
    1c7c:	00c50513          	add	a0,a0,12
    1c80:	00400793          	li	a5,4
    1c84:	00042023          	sw	zero,0(s0)
    1c88:	00f42223          	sw	a5,4(s0)
    1c8c:	00a42423          	sw	a0,8(s0)
    1c90:	1a000613          	li	a2,416
    1c94:	00000593          	li	a1,0
    1c98:	e35fe0ef          	jal	acc <memset>
    1c9c:	00892023          	sw	s0,0(s2)
    1ca0:	00040913          	mv	s2,s0
    1ca4:	f11ff06f          	j	1bb4 <__sfp+0x40>
    1ca8:	d3dff0ef          	jal	19e4 <global_stdio_init.part.0>
    1cac:	efdff06f          	j	1ba8 <__sfp+0x34>
    1cb0:	00092023          	sw	zero,0(s2)
    1cb4:	00033517          	auipc	a0,0x33
    1cb8:	cd450513          	add	a0,a0,-812 # 34988 <__lock___sfp_recursive_mutex>
    1cbc:	598000ef          	jal	2254 <__retarget_lock_release_recursive>
    1cc0:	00c00793          	li	a5,12
    1cc4:	00f9a023          	sw	a5,0(s3)
    1cc8:	f71ff06f          	j	1c38 <__sfp+0xc4>

00001ccc <__sinit>:
    1ccc:	ff010113          	add	sp,sp,-16
    1cd0:	00812423          	sw	s0,8(sp)
    1cd4:	00050413          	mv	s0,a0
    1cd8:	00033517          	auipc	a0,0x33
    1cdc:	cb050513          	add	a0,a0,-848 # 34988 <__lock___sfp_recursive_mutex>
    1ce0:	00112623          	sw	ra,12(sp)
    1ce4:	558000ef          	jal	223c <__retarget_lock_acquire_recursive>
    1ce8:	03442783          	lw	a5,52(s0)
    1cec:	00079e63          	bnez	a5,1d08 <__sinit+0x3c>
    1cf0:	00000797          	auipc	a5,0x0
    1cf4:	c0478793          	add	a5,a5,-1020 # 18f4 <cleanup_stdio>
    1cf8:	02f42a23          	sw	a5,52(s0)
    1cfc:	00033797          	auipc	a5,0x33
    1d00:	c687a783          	lw	a5,-920(a5) # 34964 <__stdio_exit_handler>
    1d04:	00078e63          	beqz	a5,1d20 <__sinit+0x54>
    1d08:	00812403          	lw	s0,8(sp)
    1d0c:	00c12083          	lw	ra,12(sp)
    1d10:	00033517          	auipc	a0,0x33
    1d14:	c7850513          	add	a0,a0,-904 # 34988 <__lock___sfp_recursive_mutex>
    1d18:	01010113          	add	sp,sp,16
    1d1c:	5380006f          	j	2254 <__retarget_lock_release_recursive>
    1d20:	cc5ff0ef          	jal	19e4 <global_stdio_init.part.0>
    1d24:	00812403          	lw	s0,8(sp)
    1d28:	00c12083          	lw	ra,12(sp)
    1d2c:	00033517          	auipc	a0,0x33
    1d30:	c5c50513          	add	a0,a0,-932 # 34988 <__lock___sfp_recursive_mutex>
    1d34:	01010113          	add	sp,sp,16
    1d38:	51c0006f          	j	2254 <__retarget_lock_release_recursive>

00001d3c <__sfp_lock_acquire>:
    1d3c:	00033517          	auipc	a0,0x33
    1d40:	c4c50513          	add	a0,a0,-948 # 34988 <__lock___sfp_recursive_mutex>
    1d44:	4f80006f          	j	223c <__retarget_lock_acquire_recursive>

00001d48 <__sfp_lock_release>:
    1d48:	00033517          	auipc	a0,0x33
    1d4c:	c4050513          	add	a0,a0,-960 # 34988 <__lock___sfp_recursive_mutex>
    1d50:	5040006f          	j	2254 <__retarget_lock_release_recursive>

00001d54 <__fp_lock_all>:
    1d54:	ff010113          	add	sp,sp,-16
    1d58:	00033517          	auipc	a0,0x33
    1d5c:	c3050513          	add	a0,a0,-976 # 34988 <__lock___sfp_recursive_mutex>
    1d60:	00112623          	sw	ra,12(sp)
    1d64:	4d8000ef          	jal	223c <__retarget_lock_acquire_recursive>
    1d68:	00c12083          	lw	ra,12(sp)
    1d6c:	00032617          	auipc	a2,0x32
    1d70:	3b460613          	add	a2,a2,948 # 34120 <__sglue>
    1d74:	00000597          	auipc	a1,0x0
    1d78:	bf058593          	add	a1,a1,-1040 # 1964 <__fp_lock>
    1d7c:	00000513          	li	a0,0
    1d80:	01010113          	add	sp,sp,16
    1d84:	0380006f          	j	1dbc <_fwalk_sglue>

00001d88 <__fp_unlock_all>:
    1d88:	ff010113          	add	sp,sp,-16
    1d8c:	00032617          	auipc	a2,0x32
    1d90:	39460613          	add	a2,a2,916 # 34120 <__sglue>
    1d94:	00000597          	auipc	a1,0x0
    1d98:	c1058593          	add	a1,a1,-1008 # 19a4 <__fp_unlock>
    1d9c:	00000513          	li	a0,0
    1da0:	00112623          	sw	ra,12(sp)
    1da4:	018000ef          	jal	1dbc <_fwalk_sglue>
    1da8:	00c12083          	lw	ra,12(sp)
    1dac:	00033517          	auipc	a0,0x33
    1db0:	bdc50513          	add	a0,a0,-1060 # 34988 <__lock___sfp_recursive_mutex>
    1db4:	01010113          	add	sp,sp,16
    1db8:	49c0006f          	j	2254 <__retarget_lock_release_recursive>

00001dbc <_fwalk_sglue>:
    1dbc:	fd010113          	add	sp,sp,-48
    1dc0:	03212023          	sw	s2,32(sp)
    1dc4:	01312e23          	sw	s3,28(sp)
    1dc8:	01412c23          	sw	s4,24(sp)
    1dcc:	01512a23          	sw	s5,20(sp)
    1dd0:	01612823          	sw	s6,16(sp)
    1dd4:	01712623          	sw	s7,12(sp)
    1dd8:	02112623          	sw	ra,44(sp)
    1ddc:	02812423          	sw	s0,40(sp)
    1de0:	02912223          	sw	s1,36(sp)
    1de4:	00050b13          	mv	s6,a0
    1de8:	00058b93          	mv	s7,a1
    1dec:	00060a93          	mv	s5,a2
    1df0:	00000a13          	li	s4,0
    1df4:	00100993          	li	s3,1
    1df8:	fff00913          	li	s2,-1
    1dfc:	004aa483          	lw	s1,4(s5)
    1e00:	008aa403          	lw	s0,8(s5)
    1e04:	fff48493          	add	s1,s1,-1
    1e08:	0204c863          	bltz	s1,1e38 <_fwalk_sglue+0x7c>
    1e0c:	00c45783          	lhu	a5,12(s0)
    1e10:	00f9fe63          	bgeu	s3,a5,1e2c <_fwalk_sglue+0x70>
    1e14:	00e41783          	lh	a5,14(s0)
    1e18:	00040593          	mv	a1,s0
    1e1c:	000b0513          	mv	a0,s6
    1e20:	01278663          	beq	a5,s2,1e2c <_fwalk_sglue+0x70>
    1e24:	000b80e7          	jalr	s7
    1e28:	00aa6a33          	or	s4,s4,a0
    1e2c:	fff48493          	add	s1,s1,-1
    1e30:	06840413          	add	s0,s0,104
    1e34:	fd249ce3          	bne	s1,s2,1e0c <_fwalk_sglue+0x50>
    1e38:	000aaa83          	lw	s5,0(s5)
    1e3c:	fc0a90e3          	bnez	s5,1dfc <_fwalk_sglue+0x40>
    1e40:	02c12083          	lw	ra,44(sp)
    1e44:	02812403          	lw	s0,40(sp)
    1e48:	02412483          	lw	s1,36(sp)
    1e4c:	02012903          	lw	s2,32(sp)
    1e50:	01c12983          	lw	s3,28(sp)
    1e54:	01412a83          	lw	s5,20(sp)
    1e58:	01012b03          	lw	s6,16(sp)
    1e5c:	00c12b83          	lw	s7,12(sp)
    1e60:	000a0513          	mv	a0,s4
    1e64:	01812a03          	lw	s4,24(sp)
    1e68:	03010113          	add	sp,sp,48
    1e6c:	00008067          	ret

00001e70 <__sread>:
    1e70:	ff010113          	add	sp,sp,-16
    1e74:	00812423          	sw	s0,8(sp)
    1e78:	00058413          	mv	s0,a1
    1e7c:	00e59583          	lh	a1,14(a1)
    1e80:	00112623          	sw	ra,12(sp)
    1e84:	2dc000ef          	jal	2160 <_read_r>
    1e88:	02054063          	bltz	a0,1ea8 <__sread+0x38>
    1e8c:	05042783          	lw	a5,80(s0)
    1e90:	00c12083          	lw	ra,12(sp)
    1e94:	00a787b3          	add	a5,a5,a0
    1e98:	04f42823          	sw	a5,80(s0)
    1e9c:	00812403          	lw	s0,8(sp)
    1ea0:	01010113          	add	sp,sp,16
    1ea4:	00008067          	ret
    1ea8:	00c45783          	lhu	a5,12(s0)
    1eac:	fffff737          	lui	a4,0xfffff
    1eb0:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    1eb4:	00e7f7b3          	and	a5,a5,a4
    1eb8:	00c12083          	lw	ra,12(sp)
    1ebc:	00f41623          	sh	a5,12(s0)
    1ec0:	00812403          	lw	s0,8(sp)
    1ec4:	01010113          	add	sp,sp,16
    1ec8:	00008067          	ret

00001ecc <__seofread>:
    1ecc:	00000513          	li	a0,0
    1ed0:	00008067          	ret

00001ed4 <__swrite>:
    1ed4:	00c59783          	lh	a5,12(a1)
    1ed8:	fe010113          	add	sp,sp,-32
    1edc:	00812c23          	sw	s0,24(sp)
    1ee0:	00912a23          	sw	s1,20(sp)
    1ee4:	01212823          	sw	s2,16(sp)
    1ee8:	01312623          	sw	s3,12(sp)
    1eec:	00112e23          	sw	ra,28(sp)
    1ef0:	1007f713          	and	a4,a5,256
    1ef4:	00058413          	mv	s0,a1
    1ef8:	00050493          	mv	s1,a0
    1efc:	00060913          	mv	s2,a2
    1f00:	00068993          	mv	s3,a3
    1f04:	04071063          	bnez	a4,1f44 <__swrite+0x70>
    1f08:	fffff737          	lui	a4,0xfffff
    1f0c:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    1f10:	00e7f7b3          	and	a5,a5,a4
    1f14:	00e41583          	lh	a1,14(s0)
    1f18:	00f41623          	sh	a5,12(s0)
    1f1c:	01812403          	lw	s0,24(sp)
    1f20:	01c12083          	lw	ra,28(sp)
    1f24:	00098693          	mv	a3,s3
    1f28:	00090613          	mv	a2,s2
    1f2c:	00c12983          	lw	s3,12(sp)
    1f30:	01012903          	lw	s2,16(sp)
    1f34:	00048513          	mv	a0,s1
    1f38:	01412483          	lw	s1,20(sp)
    1f3c:	02010113          	add	sp,sp,32
    1f40:	2840006f          	j	21c4 <_write_r>
    1f44:	00e59583          	lh	a1,14(a1)
    1f48:	00200693          	li	a3,2
    1f4c:	00000613          	li	a2,0
    1f50:	1ac000ef          	jal	20fc <_lseek_r>
    1f54:	00c41783          	lh	a5,12(s0)
    1f58:	fb1ff06f          	j	1f08 <__swrite+0x34>

00001f5c <__sseek>:
    1f5c:	ff010113          	add	sp,sp,-16
    1f60:	00812423          	sw	s0,8(sp)
    1f64:	00058413          	mv	s0,a1
    1f68:	00e59583          	lh	a1,14(a1)
    1f6c:	00112623          	sw	ra,12(sp)
    1f70:	18c000ef          	jal	20fc <_lseek_r>
    1f74:	fff00793          	li	a5,-1
    1f78:	02f50863          	beq	a0,a5,1fa8 <__sseek+0x4c>
    1f7c:	00c45783          	lhu	a5,12(s0)
    1f80:	00001737          	lui	a4,0x1
    1f84:	00c12083          	lw	ra,12(sp)
    1f88:	00e7e7b3          	or	a5,a5,a4
    1f8c:	01079793          	sll	a5,a5,0x10
    1f90:	4107d793          	sra	a5,a5,0x10
    1f94:	04a42823          	sw	a0,80(s0)
    1f98:	00f41623          	sh	a5,12(s0)
    1f9c:	00812403          	lw	s0,8(sp)
    1fa0:	01010113          	add	sp,sp,16
    1fa4:	00008067          	ret
    1fa8:	00c45783          	lhu	a5,12(s0)
    1fac:	fffff737          	lui	a4,0xfffff
    1fb0:	fff70713          	add	a4,a4,-1 # ffffefff <GET_WATCHDOG_LOW+0xffdfdfbf>
    1fb4:	00e7f7b3          	and	a5,a5,a4
    1fb8:	01079793          	sll	a5,a5,0x10
    1fbc:	4107d793          	sra	a5,a5,0x10
    1fc0:	00c12083          	lw	ra,12(sp)
    1fc4:	00f41623          	sh	a5,12(s0)
    1fc8:	00812403          	lw	s0,8(sp)
    1fcc:	01010113          	add	sp,sp,16
    1fd0:	00008067          	ret

00001fd4 <__sclose>:
    1fd4:	00e59583          	lh	a1,14(a1)
    1fd8:	0040006f          	j	1fdc <_close_r>

00001fdc <_close_r>:
    1fdc:	ff010113          	add	sp,sp,-16
    1fe0:	00812423          	sw	s0,8(sp)
    1fe4:	00050413          	mv	s0,a0
    1fe8:	00058513          	mv	a0,a1
    1fec:	00033797          	auipc	a5,0x33
    1ff0:	9607ae23          	sw	zero,-1668(a5) # 34968 <errno>
    1ff4:	00112623          	sw	ra,12(sp)
    1ff8:	ba0fe0ef          	jal	398 <_close>
    1ffc:	fff00793          	li	a5,-1
    2000:	00f50a63          	beq	a0,a5,2014 <_close_r+0x38>
    2004:	00c12083          	lw	ra,12(sp)
    2008:	00812403          	lw	s0,8(sp)
    200c:	01010113          	add	sp,sp,16
    2010:	00008067          	ret
    2014:	00033797          	auipc	a5,0x33
    2018:	9547a783          	lw	a5,-1708(a5) # 34968 <errno>
    201c:	fe0784e3          	beqz	a5,2004 <_close_r+0x28>
    2020:	00c12083          	lw	ra,12(sp)
    2024:	00f42023          	sw	a5,0(s0)
    2028:	00812403          	lw	s0,8(sp)
    202c:	01010113          	add	sp,sp,16
    2030:	00008067          	ret

00002034 <_reclaim_reent>:
    2034:	00032797          	auipc	a5,0x32
    2038:	5187a783          	lw	a5,1304(a5) # 3454c <_impure_ptr>
    203c:	0aa78e63          	beq	a5,a0,20f8 <_reclaim_reent+0xc4>
    2040:	04452583          	lw	a1,68(a0)
    2044:	fe010113          	add	sp,sp,-32
    2048:	00912a23          	sw	s1,20(sp)
    204c:	00112e23          	sw	ra,28(sp)
    2050:	00050493          	mv	s1,a0
    2054:	04058c63          	beqz	a1,20ac <_reclaim_reent+0x78>
    2058:	01212823          	sw	s2,16(sp)
    205c:	01312623          	sw	s3,12(sp)
    2060:	00812c23          	sw	s0,24(sp)
    2064:	00000913          	li	s2,0
    2068:	08000993          	li	s3,128
    206c:	012587b3          	add	a5,a1,s2
    2070:	0007a403          	lw	s0,0(a5)
    2074:	00040e63          	beqz	s0,2090 <_reclaim_reent+0x5c>
    2078:	00040593          	mv	a1,s0
    207c:	00042403          	lw	s0,0(s0)
    2080:	00048513          	mv	a0,s1
    2084:	318000ef          	jal	239c <_free_r>
    2088:	fe0418e3          	bnez	s0,2078 <_reclaim_reent+0x44>
    208c:	0444a583          	lw	a1,68(s1)
    2090:	00490913          	add	s2,s2,4
    2094:	fd391ce3          	bne	s2,s3,206c <_reclaim_reent+0x38>
    2098:	00048513          	mv	a0,s1
    209c:	300000ef          	jal	239c <_free_r>
    20a0:	01812403          	lw	s0,24(sp)
    20a4:	01012903          	lw	s2,16(sp)
    20a8:	00c12983          	lw	s3,12(sp)
    20ac:	0384a583          	lw	a1,56(s1)
    20b0:	00058663          	beqz	a1,20bc <_reclaim_reent+0x88>
    20b4:	00048513          	mv	a0,s1
    20b8:	2e4000ef          	jal	239c <_free_r>
    20bc:	04c4a583          	lw	a1,76(s1)
    20c0:	00058663          	beqz	a1,20cc <_reclaim_reent+0x98>
    20c4:	00048513          	mv	a0,s1
    20c8:	2d4000ef          	jal	239c <_free_r>
    20cc:	0344a783          	lw	a5,52(s1)
    20d0:	00078c63          	beqz	a5,20e8 <_reclaim_reent+0xb4>
    20d4:	01c12083          	lw	ra,28(sp)
    20d8:	00048513          	mv	a0,s1
    20dc:	01412483          	lw	s1,20(sp)
    20e0:	02010113          	add	sp,sp,32
    20e4:	00078067          	jr	a5
    20e8:	01c12083          	lw	ra,28(sp)
    20ec:	01412483          	lw	s1,20(sp)
    20f0:	02010113          	add	sp,sp,32
    20f4:	00008067          	ret
    20f8:	00008067          	ret

000020fc <_lseek_r>:
    20fc:	ff010113          	add	sp,sp,-16
    2100:	00058713          	mv	a4,a1
    2104:	00812423          	sw	s0,8(sp)
    2108:	00060593          	mv	a1,a2
    210c:	00050413          	mv	s0,a0
    2110:	00068613          	mv	a2,a3
    2114:	00070513          	mv	a0,a4
    2118:	00033797          	auipc	a5,0x33
    211c:	8407a823          	sw	zero,-1968(a5) # 34968 <errno>
    2120:	00112623          	sw	ra,12(sp)
    2124:	af0fe0ef          	jal	414 <_lseek>
    2128:	fff00793          	li	a5,-1
    212c:	00f50a63          	beq	a0,a5,2140 <_lseek_r+0x44>
    2130:	00c12083          	lw	ra,12(sp)
    2134:	00812403          	lw	s0,8(sp)
    2138:	01010113          	add	sp,sp,16
    213c:	00008067          	ret
    2140:	00033797          	auipc	a5,0x33
    2144:	8287a783          	lw	a5,-2008(a5) # 34968 <errno>
    2148:	fe0784e3          	beqz	a5,2130 <_lseek_r+0x34>
    214c:	00c12083          	lw	ra,12(sp)
    2150:	00f42023          	sw	a5,0(s0)
    2154:	00812403          	lw	s0,8(sp)
    2158:	01010113          	add	sp,sp,16
    215c:	00008067          	ret

00002160 <_read_r>:
    2160:	ff010113          	add	sp,sp,-16
    2164:	00058713          	mv	a4,a1
    2168:	00812423          	sw	s0,8(sp)
    216c:	00060593          	mv	a1,a2
    2170:	00050413          	mv	s0,a0
    2174:	00068613          	mv	a2,a3
    2178:	00070513          	mv	a0,a4
    217c:	00032797          	auipc	a5,0x32
    2180:	7e07a623          	sw	zero,2028(a5) # 34968 <errno>
    2184:	00112623          	sw	ra,12(sp)
    2188:	994fe0ef          	jal	31c <_read>
    218c:	fff00793          	li	a5,-1
    2190:	00f50a63          	beq	a0,a5,21a4 <_read_r+0x44>
    2194:	00c12083          	lw	ra,12(sp)
    2198:	00812403          	lw	s0,8(sp)
    219c:	01010113          	add	sp,sp,16
    21a0:	00008067          	ret
    21a4:	00032797          	auipc	a5,0x32
    21a8:	7c47a783          	lw	a5,1988(a5) # 34968 <errno>
    21ac:	fe0784e3          	beqz	a5,2194 <_read_r+0x34>
    21b0:	00c12083          	lw	ra,12(sp)
    21b4:	00f42023          	sw	a5,0(s0)
    21b8:	00812403          	lw	s0,8(sp)
    21bc:	01010113          	add	sp,sp,16
    21c0:	00008067          	ret

000021c4 <_write_r>:
    21c4:	ff010113          	add	sp,sp,-16
    21c8:	00058713          	mv	a4,a1
    21cc:	00812423          	sw	s0,8(sp)
    21d0:	00060593          	mv	a1,a2
    21d4:	00050413          	mv	s0,a0
    21d8:	00068613          	mv	a2,a3
    21dc:	00070513          	mv	a0,a4
    21e0:	00032797          	auipc	a5,0x32
    21e4:	7807a423          	sw	zero,1928(a5) # 34968 <errno>
    21e8:	00112623          	sw	ra,12(sp)
    21ec:	8c0fe0ef          	jal	2ac <_write>
    21f0:	fff00793          	li	a5,-1
    21f4:	00f50a63          	beq	a0,a5,2208 <_write_r+0x44>
    21f8:	00c12083          	lw	ra,12(sp)
    21fc:	00812403          	lw	s0,8(sp)
    2200:	01010113          	add	sp,sp,16
    2204:	00008067          	ret
    2208:	00032797          	auipc	a5,0x32
    220c:	7607a783          	lw	a5,1888(a5) # 34968 <errno>
    2210:	fe0784e3          	beqz	a5,21f8 <_write_r+0x34>
    2214:	00c12083          	lw	ra,12(sp)
    2218:	00f42023          	sw	a5,0(s0)
    221c:	00812403          	lw	s0,8(sp)
    2220:	01010113          	add	sp,sp,16
    2224:	00008067          	ret

00002228 <__retarget_lock_init>:
    2228:	00008067          	ret

0000222c <__retarget_lock_init_recursive>:
    222c:	00008067          	ret

00002230 <__retarget_lock_close>:
    2230:	00008067          	ret

00002234 <__retarget_lock_close_recursive>:
    2234:	00008067          	ret

00002238 <__retarget_lock_acquire>:
    2238:	00008067          	ret

0000223c <__retarget_lock_acquire_recursive>:
    223c:	00008067          	ret

00002240 <__retarget_lock_try_acquire>:
    2240:	00100513          	li	a0,1
    2244:	00008067          	ret

00002248 <__retarget_lock_try_acquire_recursive>:
    2248:	00100513          	li	a0,1
    224c:	00008067          	ret

00002250 <__retarget_lock_release>:
    2250:	00008067          	ret

00002254 <__retarget_lock_release_recursive>:
    2254:	00008067          	ret

00002258 <_malloc_trim_r>:
    2258:	fe010113          	add	sp,sp,-32
    225c:	00812c23          	sw	s0,24(sp)
    2260:	00912a23          	sw	s1,20(sp)
    2264:	01212823          	sw	s2,16(sp)
    2268:	01312623          	sw	s3,12(sp)
    226c:	01412423          	sw	s4,8(sp)
    2270:	00058993          	mv	s3,a1
    2274:	00112e23          	sw	ra,28(sp)
    2278:	00050913          	mv	s2,a0
    227c:	00032a17          	auipc	s4,0x32
    2280:	eb0a0a13          	add	s4,s4,-336 # 3412c <__malloc_av_>
    2284:	405000ef          	jal	2e88 <__malloc_lock>
    2288:	008a2703          	lw	a4,8(s4)
    228c:	000017b7          	lui	a5,0x1
    2290:	fef78793          	add	a5,a5,-17 # fef <__divdi3+0x447>
    2294:	00472483          	lw	s1,4(a4)
    2298:	00001737          	lui	a4,0x1
    229c:	ffc4f493          	and	s1,s1,-4
    22a0:	00f48433          	add	s0,s1,a5
    22a4:	41340433          	sub	s0,s0,s3
    22a8:	00c45413          	srl	s0,s0,0xc
    22ac:	fff40413          	add	s0,s0,-1
    22b0:	00c41413          	sll	s0,s0,0xc
    22b4:	00e44e63          	blt	s0,a4,22d0 <_malloc_trim_r+0x78>
    22b8:	00000593          	li	a1,0
    22bc:	00090513          	mv	a0,s2
    22c0:	160010ef          	jal	3420 <_sbrk_r>
    22c4:	008a2783          	lw	a5,8(s4)
    22c8:	009787b3          	add	a5,a5,s1
    22cc:	02f50863          	beq	a0,a5,22fc <_malloc_trim_r+0xa4>
    22d0:	00090513          	mv	a0,s2
    22d4:	3c1000ef          	jal	2e94 <__malloc_unlock>
    22d8:	01c12083          	lw	ra,28(sp)
    22dc:	01812403          	lw	s0,24(sp)
    22e0:	01412483          	lw	s1,20(sp)
    22e4:	01012903          	lw	s2,16(sp)
    22e8:	00c12983          	lw	s3,12(sp)
    22ec:	00812a03          	lw	s4,8(sp)
    22f0:	00000513          	li	a0,0
    22f4:	02010113          	add	sp,sp,32
    22f8:	00008067          	ret
    22fc:	408005b3          	neg	a1,s0
    2300:	00090513          	mv	a0,s2
    2304:	11c010ef          	jal	3420 <_sbrk_r>
    2308:	fff00793          	li	a5,-1
    230c:	04f50a63          	beq	a0,a5,2360 <_malloc_trim_r+0x108>
    2310:	00032717          	auipc	a4,0x32
    2314:	62870713          	add	a4,a4,1576 # 34938 <__malloc_current_mallinfo>
    2318:	00072783          	lw	a5,0(a4)
    231c:	008a2683          	lw	a3,8(s4)
    2320:	408484b3          	sub	s1,s1,s0
    2324:	0014e493          	or	s1,s1,1
    2328:	408787b3          	sub	a5,a5,s0
    232c:	00090513          	mv	a0,s2
    2330:	0096a223          	sw	s1,4(a3)
    2334:	00f72023          	sw	a5,0(a4)
    2338:	35d000ef          	jal	2e94 <__malloc_unlock>
    233c:	01c12083          	lw	ra,28(sp)
    2340:	01812403          	lw	s0,24(sp)
    2344:	01412483          	lw	s1,20(sp)
    2348:	01012903          	lw	s2,16(sp)
    234c:	00c12983          	lw	s3,12(sp)
    2350:	00812a03          	lw	s4,8(sp)
    2354:	00100513          	li	a0,1
    2358:	02010113          	add	sp,sp,32
    235c:	00008067          	ret
    2360:	00000593          	li	a1,0
    2364:	00090513          	mv	a0,s2
    2368:	0b8010ef          	jal	3420 <_sbrk_r>
    236c:	008a2703          	lw	a4,8(s4)
    2370:	00f00693          	li	a3,15
    2374:	40e507b3          	sub	a5,a0,a4
    2378:	f4f6dce3          	bge	a3,a5,22d0 <_malloc_trim_r+0x78>
    237c:	00032697          	auipc	a3,0x32
    2380:	1d46a683          	lw	a3,468(a3) # 34550 <__malloc_sbrk_base>
    2384:	40d50533          	sub	a0,a0,a3
    2388:	0017e793          	or	a5,a5,1
    238c:	00032697          	auipc	a3,0x32
    2390:	5aa6a623          	sw	a0,1452(a3) # 34938 <__malloc_current_mallinfo>
    2394:	00f72223          	sw	a5,4(a4)
    2398:	f39ff06f          	j	22d0 <_malloc_trim_r+0x78>

0000239c <_free_r>:
    239c:	18058263          	beqz	a1,2520 <_free_r+0x184>
    23a0:	ff010113          	add	sp,sp,-16
    23a4:	00812423          	sw	s0,8(sp)
    23a8:	00912223          	sw	s1,4(sp)
    23ac:	00058413          	mv	s0,a1
    23b0:	00050493          	mv	s1,a0
    23b4:	00112623          	sw	ra,12(sp)
    23b8:	2d1000ef          	jal	2e88 <__malloc_lock>
    23bc:	ffc42583          	lw	a1,-4(s0)
    23c0:	ff840713          	add	a4,s0,-8
    23c4:	00032517          	auipc	a0,0x32
    23c8:	d6850513          	add	a0,a0,-664 # 3412c <__malloc_av_>
    23cc:	ffe5f793          	and	a5,a1,-2
    23d0:	00f70633          	add	a2,a4,a5
    23d4:	00462683          	lw	a3,4(a2)
    23d8:	00852803          	lw	a6,8(a0)
    23dc:	ffc6f693          	and	a3,a3,-4
    23e0:	1ac80263          	beq	a6,a2,2584 <_free_r+0x1e8>
    23e4:	00d62223          	sw	a3,4(a2)
    23e8:	0015f593          	and	a1,a1,1
    23ec:	00d60833          	add	a6,a2,a3
    23f0:	0a059063          	bnez	a1,2490 <_free_r+0xf4>
    23f4:	ff842303          	lw	t1,-8(s0)
    23f8:	00482583          	lw	a1,4(a6)
    23fc:	00032897          	auipc	a7,0x32
    2400:	d3888893          	add	a7,a7,-712 # 34134 <__malloc_av_+0x8>
    2404:	40670733          	sub	a4,a4,t1
    2408:	00872803          	lw	a6,8(a4)
    240c:	006787b3          	add	a5,a5,t1
    2410:	0015f593          	and	a1,a1,1
    2414:	15180263          	beq	a6,a7,2558 <_free_r+0x1bc>
    2418:	00c72303          	lw	t1,12(a4)
    241c:	00682623          	sw	t1,12(a6)
    2420:	01032423          	sw	a6,8(t1)
    2424:	1a058a63          	beqz	a1,25d8 <_free_r+0x23c>
    2428:	0017e693          	or	a3,a5,1
    242c:	00d72223          	sw	a3,4(a4)
    2430:	00f62023          	sw	a5,0(a2)
    2434:	1ff00693          	li	a3,511
    2438:	06f6ec63          	bltu	a3,a5,24b0 <_free_r+0x114>
    243c:	ff87f693          	and	a3,a5,-8
    2440:	00868693          	add	a3,a3,8
    2444:	00452583          	lw	a1,4(a0)
    2448:	00d506b3          	add	a3,a0,a3
    244c:	0006a603          	lw	a2,0(a3)
    2450:	0057d813          	srl	a6,a5,0x5
    2454:	00100793          	li	a5,1
    2458:	010797b3          	sll	a5,a5,a6
    245c:	00b7e7b3          	or	a5,a5,a1
    2460:	ff868593          	add	a1,a3,-8
    2464:	00b72623          	sw	a1,12(a4)
    2468:	00c72423          	sw	a2,8(a4)
    246c:	00f52223          	sw	a5,4(a0)
    2470:	00e6a023          	sw	a4,0(a3)
    2474:	00e62623          	sw	a4,12(a2)
    2478:	00812403          	lw	s0,8(sp)
    247c:	00c12083          	lw	ra,12(sp)
    2480:	00048513          	mv	a0,s1
    2484:	00412483          	lw	s1,4(sp)
    2488:	01010113          	add	sp,sp,16
    248c:	2090006f          	j	2e94 <__malloc_unlock>
    2490:	00482583          	lw	a1,4(a6)
    2494:	0015f593          	and	a1,a1,1
    2498:	08058663          	beqz	a1,2524 <_free_r+0x188>
    249c:	0017e693          	or	a3,a5,1
    24a0:	fed42e23          	sw	a3,-4(s0)
    24a4:	00f62023          	sw	a5,0(a2)
    24a8:	1ff00693          	li	a3,511
    24ac:	f8f6f8e3          	bgeu	a3,a5,243c <_free_r+0xa0>
    24b0:	0097d693          	srl	a3,a5,0x9
    24b4:	00400613          	li	a2,4
    24b8:	12d66463          	bltu	a2,a3,25e0 <_free_r+0x244>
    24bc:	0067d693          	srl	a3,a5,0x6
    24c0:	03968593          	add	a1,a3,57
    24c4:	03868613          	add	a2,a3,56
    24c8:	00359593          	sll	a1,a1,0x3
    24cc:	00b505b3          	add	a1,a0,a1
    24d0:	0005a683          	lw	a3,0(a1)
    24d4:	ff858593          	add	a1,a1,-8
    24d8:	00d59863          	bne	a1,a3,24e8 <_free_r+0x14c>
    24dc:	15c0006f          	j	2638 <_free_r+0x29c>
    24e0:	0086a683          	lw	a3,8(a3)
    24e4:	00d58863          	beq	a1,a3,24f4 <_free_r+0x158>
    24e8:	0046a603          	lw	a2,4(a3)
    24ec:	ffc67613          	and	a2,a2,-4
    24f0:	fec7e8e3          	bltu	a5,a2,24e0 <_free_r+0x144>
    24f4:	00c6a583          	lw	a1,12(a3)
    24f8:	00b72623          	sw	a1,12(a4)
    24fc:	00d72423          	sw	a3,8(a4)
    2500:	00812403          	lw	s0,8(sp)
    2504:	00c12083          	lw	ra,12(sp)
    2508:	00e5a423          	sw	a4,8(a1)
    250c:	00048513          	mv	a0,s1
    2510:	00412483          	lw	s1,4(sp)
    2514:	00e6a623          	sw	a4,12(a3)
    2518:	01010113          	add	sp,sp,16
    251c:	1790006f          	j	2e94 <__malloc_unlock>
    2520:	00008067          	ret
    2524:	00d787b3          	add	a5,a5,a3
    2528:	00032897          	auipc	a7,0x32
    252c:	c0c88893          	add	a7,a7,-1012 # 34134 <__malloc_av_+0x8>
    2530:	00862683          	lw	a3,8(a2)
    2534:	0f168063          	beq	a3,a7,2614 <_free_r+0x278>
    2538:	00c62803          	lw	a6,12(a2)
    253c:	0017e593          	or	a1,a5,1
    2540:	00f70633          	add	a2,a4,a5
    2544:	0106a623          	sw	a6,12(a3)
    2548:	00d82423          	sw	a3,8(a6)
    254c:	00b72223          	sw	a1,4(a4)
    2550:	00f62023          	sw	a5,0(a2)
    2554:	ee1ff06f          	j	2434 <_free_r+0x98>
    2558:	14059063          	bnez	a1,2698 <_free_r+0x2fc>
    255c:	00862583          	lw	a1,8(a2)
    2560:	00c62603          	lw	a2,12(a2)
    2564:	00f686b3          	add	a3,a3,a5
    2568:	0016e793          	or	a5,a3,1
    256c:	00c5a623          	sw	a2,12(a1)
    2570:	00b62423          	sw	a1,8(a2)
    2574:	00f72223          	sw	a5,4(a4)
    2578:	00d70733          	add	a4,a4,a3
    257c:	00d72023          	sw	a3,0(a4)
    2580:	ef9ff06f          	j	2478 <_free_r+0xdc>
    2584:	0015f593          	and	a1,a1,1
    2588:	00d786b3          	add	a3,a5,a3
    258c:	02059063          	bnez	a1,25ac <_free_r+0x210>
    2590:	ff842583          	lw	a1,-8(s0)
    2594:	40b70733          	sub	a4,a4,a1
    2598:	00c72783          	lw	a5,12(a4)
    259c:	00872603          	lw	a2,8(a4)
    25a0:	00b686b3          	add	a3,a3,a1
    25a4:	00f62623          	sw	a5,12(a2)
    25a8:	00c7a423          	sw	a2,8(a5)
    25ac:	0016e793          	or	a5,a3,1
    25b0:	00f72223          	sw	a5,4(a4)
    25b4:	00e52423          	sw	a4,8(a0)
    25b8:	00032797          	auipc	a5,0x32
    25bc:	f9c7a783          	lw	a5,-100(a5) # 34554 <__malloc_trim_threshold>
    25c0:	eaf6ece3          	bltu	a3,a5,2478 <_free_r+0xdc>
    25c4:	00032597          	auipc	a1,0x32
    25c8:	3d05a583          	lw	a1,976(a1) # 34994 <__malloc_top_pad>
    25cc:	00048513          	mv	a0,s1
    25d0:	c89ff0ef          	jal	2258 <_malloc_trim_r>
    25d4:	ea5ff06f          	j	2478 <_free_r+0xdc>
    25d8:	00d787b3          	add	a5,a5,a3
    25dc:	f55ff06f          	j	2530 <_free_r+0x194>
    25e0:	01400613          	li	a2,20
    25e4:	02d67063          	bgeu	a2,a3,2604 <_free_r+0x268>
    25e8:	05400613          	li	a2,84
    25ec:	06d66463          	bltu	a2,a3,2654 <_free_r+0x2b8>
    25f0:	00c7d693          	srl	a3,a5,0xc
    25f4:	06f68593          	add	a1,a3,111
    25f8:	06e68613          	add	a2,a3,110
    25fc:	00359593          	sll	a1,a1,0x3
    2600:	ecdff06f          	j	24cc <_free_r+0x130>
    2604:	05c68593          	add	a1,a3,92
    2608:	05b68613          	add	a2,a3,91
    260c:	00359593          	sll	a1,a1,0x3
    2610:	ebdff06f          	j	24cc <_free_r+0x130>
    2614:	00e52a23          	sw	a4,20(a0)
    2618:	00e52823          	sw	a4,16(a0)
    261c:	0017e693          	or	a3,a5,1
    2620:	01172623          	sw	a7,12(a4)
    2624:	01172423          	sw	a7,8(a4)
    2628:	00d72223          	sw	a3,4(a4)
    262c:	00f70733          	add	a4,a4,a5
    2630:	00f72023          	sw	a5,0(a4)
    2634:	e45ff06f          	j	2478 <_free_r+0xdc>
    2638:	00452803          	lw	a6,4(a0)
    263c:	40265613          	sra	a2,a2,0x2
    2640:	00100793          	li	a5,1
    2644:	00c797b3          	sll	a5,a5,a2
    2648:	0107e7b3          	or	a5,a5,a6
    264c:	00f52223          	sw	a5,4(a0)
    2650:	ea9ff06f          	j	24f8 <_free_r+0x15c>
    2654:	15400613          	li	a2,340
    2658:	00d66c63          	bltu	a2,a3,2670 <_free_r+0x2d4>
    265c:	00f7d693          	srl	a3,a5,0xf
    2660:	07868593          	add	a1,a3,120
    2664:	07768613          	add	a2,a3,119
    2668:	00359593          	sll	a1,a1,0x3
    266c:	e61ff06f          	j	24cc <_free_r+0x130>
    2670:	55400613          	li	a2,1364
    2674:	00d66c63          	bltu	a2,a3,268c <_free_r+0x2f0>
    2678:	0127d693          	srl	a3,a5,0x12
    267c:	07d68593          	add	a1,a3,125
    2680:	07c68613          	add	a2,a3,124
    2684:	00359593          	sll	a1,a1,0x3
    2688:	e45ff06f          	j	24cc <_free_r+0x130>
    268c:	3f800593          	li	a1,1016
    2690:	07e00613          	li	a2,126
    2694:	e39ff06f          	j	24cc <_free_r+0x130>
    2698:	0017e693          	or	a3,a5,1
    269c:	00d72223          	sw	a3,4(a4)
    26a0:	00f62023          	sw	a5,0(a2)
    26a4:	dd5ff06f          	j	2478 <_free_r+0xdc>

000026a8 <_malloc_r>:
    26a8:	fd010113          	add	sp,sp,-48
    26ac:	03212023          	sw	s2,32(sp)
    26b0:	02112623          	sw	ra,44(sp)
    26b4:	02812423          	sw	s0,40(sp)
    26b8:	02912223          	sw	s1,36(sp)
    26bc:	01312e23          	sw	s3,28(sp)
    26c0:	00b58793          	add	a5,a1,11
    26c4:	01600713          	li	a4,22
    26c8:	00050913          	mv	s2,a0
    26cc:	08f76263          	bltu	a4,a5,2750 <_malloc_r+0xa8>
    26d0:	01000793          	li	a5,16
    26d4:	20b7e663          	bltu	a5,a1,28e0 <_malloc_r+0x238>
    26d8:	7b0000ef          	jal	2e88 <__malloc_lock>
    26dc:	01800793          	li	a5,24
    26e0:	00200593          	li	a1,2
    26e4:	01000493          	li	s1,16
    26e8:	00032997          	auipc	s3,0x32
    26ec:	a4498993          	add	s3,s3,-1468 # 3412c <__malloc_av_>
    26f0:	00f987b3          	add	a5,s3,a5
    26f4:	0047a403          	lw	s0,4(a5)
    26f8:	ff878713          	add	a4,a5,-8
    26fc:	36e40463          	beq	s0,a4,2a64 <_malloc_r+0x3bc>
    2700:	00442783          	lw	a5,4(s0)
    2704:	00c42683          	lw	a3,12(s0)
    2708:	00842603          	lw	a2,8(s0)
    270c:	ffc7f793          	and	a5,a5,-4
    2710:	00f407b3          	add	a5,s0,a5
    2714:	0047a703          	lw	a4,4(a5)
    2718:	00d62623          	sw	a3,12(a2)
    271c:	00c6a423          	sw	a2,8(a3)
    2720:	00176713          	or	a4,a4,1
    2724:	00090513          	mv	a0,s2
    2728:	00e7a223          	sw	a4,4(a5)
    272c:	768000ef          	jal	2e94 <__malloc_unlock>
    2730:	00840513          	add	a0,s0,8
    2734:	02c12083          	lw	ra,44(sp)
    2738:	02812403          	lw	s0,40(sp)
    273c:	02412483          	lw	s1,36(sp)
    2740:	02012903          	lw	s2,32(sp)
    2744:	01c12983          	lw	s3,28(sp)
    2748:	03010113          	add	sp,sp,48
    274c:	00008067          	ret
    2750:	ff87f493          	and	s1,a5,-8
    2754:	1807c663          	bltz	a5,28e0 <_malloc_r+0x238>
    2758:	18b4e463          	bltu	s1,a1,28e0 <_malloc_r+0x238>
    275c:	72c000ef          	jal	2e88 <__malloc_lock>
    2760:	1f700793          	li	a5,503
    2764:	4097fa63          	bgeu	a5,s1,2b78 <_malloc_r+0x4d0>
    2768:	0094d793          	srl	a5,s1,0x9
    276c:	18078263          	beqz	a5,28f0 <_malloc_r+0x248>
    2770:	00400713          	li	a4,4
    2774:	36f76063          	bltu	a4,a5,2ad4 <_malloc_r+0x42c>
    2778:	0064d793          	srl	a5,s1,0x6
    277c:	03978593          	add	a1,a5,57
    2780:	03878813          	add	a6,a5,56
    2784:	00359613          	sll	a2,a1,0x3
    2788:	00032997          	auipc	s3,0x32
    278c:	9a498993          	add	s3,s3,-1628 # 3412c <__malloc_av_>
    2790:	00c98633          	add	a2,s3,a2
    2794:	00462403          	lw	s0,4(a2)
    2798:	ff860613          	add	a2,a2,-8
    279c:	02860863          	beq	a2,s0,27cc <_malloc_r+0x124>
    27a0:	00f00513          	li	a0,15
    27a4:	0140006f          	j	27b8 <_malloc_r+0x110>
    27a8:	00c42683          	lw	a3,12(s0)
    27ac:	2a075863          	bgez	a4,2a5c <_malloc_r+0x3b4>
    27b0:	00d60e63          	beq	a2,a3,27cc <_malloc_r+0x124>
    27b4:	00068413          	mv	s0,a3
    27b8:	00442783          	lw	a5,4(s0)
    27bc:	ffc7f793          	and	a5,a5,-4
    27c0:	40978733          	sub	a4,a5,s1
    27c4:	fee552e3          	bge	a0,a4,27a8 <_malloc_r+0x100>
    27c8:	00080593          	mv	a1,a6
    27cc:	0109a403          	lw	s0,16(s3)
    27d0:	00032897          	auipc	a7,0x32
    27d4:	96488893          	add	a7,a7,-1692 # 34134 <__malloc_av_+0x8>
    27d8:	27140e63          	beq	s0,a7,2a54 <_malloc_r+0x3ac>
    27dc:	00442783          	lw	a5,4(s0)
    27e0:	00f00693          	li	a3,15
    27e4:	ffc7f793          	and	a5,a5,-4
    27e8:	40978733          	sub	a4,a5,s1
    27ec:	38e6cc63          	blt	a3,a4,2b84 <_malloc_r+0x4dc>
    27f0:	0119aa23          	sw	a7,20(s3)
    27f4:	0119a823          	sw	a7,16(s3)
    27f8:	36075063          	bgez	a4,2b58 <_malloc_r+0x4b0>
    27fc:	1ff00713          	li	a4,511
    2800:	0049a503          	lw	a0,4(s3)
    2804:	26f76863          	bltu	a4,a5,2a74 <_malloc_r+0x3cc>
    2808:	ff87f713          	and	a4,a5,-8
    280c:	00870713          	add	a4,a4,8
    2810:	00e98733          	add	a4,s3,a4
    2814:	00072683          	lw	a3,0(a4)
    2818:	0057d613          	srl	a2,a5,0x5
    281c:	00100793          	li	a5,1
    2820:	00c797b3          	sll	a5,a5,a2
    2824:	00f56533          	or	a0,a0,a5
    2828:	ff870793          	add	a5,a4,-8
    282c:	00f42623          	sw	a5,12(s0)
    2830:	00d42423          	sw	a3,8(s0)
    2834:	00a9a223          	sw	a0,4(s3)
    2838:	00872023          	sw	s0,0(a4)
    283c:	0086a623          	sw	s0,12(a3)
    2840:	4025d793          	sra	a5,a1,0x2
    2844:	00100613          	li	a2,1
    2848:	00f61633          	sll	a2,a2,a5
    284c:	0ac56a63          	bltu	a0,a2,2900 <_malloc_r+0x258>
    2850:	00a677b3          	and	a5,a2,a0
    2854:	02079463          	bnez	a5,287c <_malloc_r+0x1d4>
    2858:	00161613          	sll	a2,a2,0x1
    285c:	ffc5f593          	and	a1,a1,-4
    2860:	00a677b3          	and	a5,a2,a0
    2864:	00458593          	add	a1,a1,4
    2868:	00079a63          	bnez	a5,287c <_malloc_r+0x1d4>
    286c:	00161613          	sll	a2,a2,0x1
    2870:	00a677b3          	and	a5,a2,a0
    2874:	00458593          	add	a1,a1,4
    2878:	fe078ae3          	beqz	a5,286c <_malloc_r+0x1c4>
    287c:	00f00813          	li	a6,15
    2880:	00359313          	sll	t1,a1,0x3
    2884:	00698333          	add	t1,s3,t1
    2888:	00030513          	mv	a0,t1
    288c:	00c52783          	lw	a5,12(a0)
    2890:	00058e13          	mv	t3,a1
    2894:	26f50263          	beq	a0,a5,2af8 <_malloc_r+0x450>
    2898:	0047a703          	lw	a4,4(a5)
    289c:	00078413          	mv	s0,a5
    28a0:	00c7a783          	lw	a5,12(a5)
    28a4:	ffc77713          	and	a4,a4,-4
    28a8:	409706b3          	sub	a3,a4,s1
    28ac:	26d84263          	blt	a6,a3,2b10 <_malloc_r+0x468>
    28b0:	fe06c2e3          	bltz	a3,2894 <_malloc_r+0x1ec>
    28b4:	00e40733          	add	a4,s0,a4
    28b8:	00472683          	lw	a3,4(a4)
    28bc:	00842603          	lw	a2,8(s0)
    28c0:	00090513          	mv	a0,s2
    28c4:	0016e693          	or	a3,a3,1
    28c8:	00d72223          	sw	a3,4(a4)
    28cc:	00f62623          	sw	a5,12(a2)
    28d0:	00c7a423          	sw	a2,8(a5)
    28d4:	5c0000ef          	jal	2e94 <__malloc_unlock>
    28d8:	00840513          	add	a0,s0,8
    28dc:	e59ff06f          	j	2734 <_malloc_r+0x8c>
    28e0:	00c00793          	li	a5,12
    28e4:	00f92023          	sw	a5,0(s2)
    28e8:	00000513          	li	a0,0
    28ec:	e49ff06f          	j	2734 <_malloc_r+0x8c>
    28f0:	20000613          	li	a2,512
    28f4:	04000593          	li	a1,64
    28f8:	03f00813          	li	a6,63
    28fc:	e8dff06f          	j	2788 <_malloc_r+0xe0>
    2900:	0089a403          	lw	s0,8(s3)
    2904:	01612823          	sw	s6,16(sp)
    2908:	00442783          	lw	a5,4(s0)
    290c:	ffc7fb13          	and	s6,a5,-4
    2910:	009b6863          	bltu	s6,s1,2920 <_malloc_r+0x278>
    2914:	409b0733          	sub	a4,s6,s1
    2918:	00f00793          	li	a5,15
    291c:	0ee7ca63          	blt	a5,a4,2a10 <_malloc_r+0x368>
    2920:	01912223          	sw	s9,4(sp)
    2924:	00032c97          	auipc	s9,0x32
    2928:	c2cc8c93          	add	s9,s9,-980 # 34550 <__malloc_sbrk_base>
    292c:	000ca703          	lw	a4,0(s9)
    2930:	01412c23          	sw	s4,24(sp)
    2934:	01512a23          	sw	s5,20(sp)
    2938:	01712623          	sw	s7,12(sp)
    293c:	00032a97          	auipc	s5,0x32
    2940:	058aaa83          	lw	s5,88(s5) # 34994 <__malloc_top_pad>
    2944:	fff00793          	li	a5,-1
    2948:	01640a33          	add	s4,s0,s6
    294c:	01548ab3          	add	s5,s1,s5
    2950:	3ef70263          	beq	a4,a5,2d34 <_malloc_r+0x68c>
    2954:	000017b7          	lui	a5,0x1
    2958:	00f78793          	add	a5,a5,15 # 100f <__divdi3+0x467>
    295c:	00fa8ab3          	add	s5,s5,a5
    2960:	fffff7b7          	lui	a5,0xfffff
    2964:	00fafab3          	and	s5,s5,a5
    2968:	000a8593          	mv	a1,s5
    296c:	00090513          	mv	a0,s2
    2970:	2b1000ef          	jal	3420 <_sbrk_r>
    2974:	fff00793          	li	a5,-1
    2978:	00050b93          	mv	s7,a0
    297c:	46f50663          	beq	a0,a5,2de8 <_malloc_r+0x740>
    2980:	01812423          	sw	s8,8(sp)
    2984:	25456863          	bltu	a0,s4,2bd4 <_malloc_r+0x52c>
    2988:	00032c17          	auipc	s8,0x32
    298c:	fb0c0c13          	add	s8,s8,-80 # 34938 <__malloc_current_mallinfo>
    2990:	000c2583          	lw	a1,0(s8)
    2994:	00ba85b3          	add	a1,s5,a1
    2998:	00bc2023          	sw	a1,0(s8)
    299c:	00058713          	mv	a4,a1
    29a0:	2caa1063          	bne	s4,a0,2c60 <_malloc_r+0x5b8>
    29a4:	01451793          	sll	a5,a0,0x14
    29a8:	2a079c63          	bnez	a5,2c60 <_malloc_r+0x5b8>
    29ac:	0089ab83          	lw	s7,8(s3)
    29b0:	015b07b3          	add	a5,s6,s5
    29b4:	0017e793          	or	a5,a5,1
    29b8:	00fba223          	sw	a5,4(s7)
    29bc:	00032717          	auipc	a4,0x32
    29c0:	fd470713          	add	a4,a4,-44 # 34990 <__malloc_max_sbrked_mem>
    29c4:	00072683          	lw	a3,0(a4)
    29c8:	00b6f463          	bgeu	a3,a1,29d0 <_malloc_r+0x328>
    29cc:	00b72023          	sw	a1,0(a4)
    29d0:	00032717          	auipc	a4,0x32
    29d4:	fbc70713          	add	a4,a4,-68 # 3498c <__malloc_max_total_mem>
    29d8:	00072683          	lw	a3,0(a4)
    29dc:	00b6f463          	bgeu	a3,a1,29e4 <_malloc_r+0x33c>
    29e0:	00b72023          	sw	a1,0(a4)
    29e4:	00812c03          	lw	s8,8(sp)
    29e8:	000b8413          	mv	s0,s7
    29ec:	ffc7f793          	and	a5,a5,-4
    29f0:	40978733          	sub	a4,a5,s1
    29f4:	3897ec63          	bltu	a5,s1,2d8c <_malloc_r+0x6e4>
    29f8:	00f00793          	li	a5,15
    29fc:	38e7d863          	bge	a5,a4,2d8c <_malloc_r+0x6e4>
    2a00:	01812a03          	lw	s4,24(sp)
    2a04:	01412a83          	lw	s5,20(sp)
    2a08:	00c12b83          	lw	s7,12(sp)
    2a0c:	00412c83          	lw	s9,4(sp)
    2a10:	0014e793          	or	a5,s1,1
    2a14:	00f42223          	sw	a5,4(s0)
    2a18:	009404b3          	add	s1,s0,s1
    2a1c:	0099a423          	sw	s1,8(s3)
    2a20:	00176713          	or	a4,a4,1
    2a24:	00090513          	mv	a0,s2
    2a28:	00e4a223          	sw	a4,4(s1)
    2a2c:	468000ef          	jal	2e94 <__malloc_unlock>
    2a30:	02c12083          	lw	ra,44(sp)
    2a34:	00840513          	add	a0,s0,8
    2a38:	02812403          	lw	s0,40(sp)
    2a3c:	01012b03          	lw	s6,16(sp)
    2a40:	02412483          	lw	s1,36(sp)
    2a44:	02012903          	lw	s2,32(sp)
    2a48:	01c12983          	lw	s3,28(sp)
    2a4c:	03010113          	add	sp,sp,48
    2a50:	00008067          	ret
    2a54:	0049a503          	lw	a0,4(s3)
    2a58:	de9ff06f          	j	2840 <_malloc_r+0x198>
    2a5c:	00842603          	lw	a2,8(s0)
    2a60:	cb1ff06f          	j	2710 <_malloc_r+0x68>
    2a64:	00c7a403          	lw	s0,12(a5) # fffff00c <GET_WATCHDOG_LOW+0xffdfdfcc>
    2a68:	00258593          	add	a1,a1,2
    2a6c:	d68780e3          	beq	a5,s0,27cc <_malloc_r+0x124>
    2a70:	c91ff06f          	j	2700 <_malloc_r+0x58>
    2a74:	0097d713          	srl	a4,a5,0x9
    2a78:	00400693          	li	a3,4
    2a7c:	14e6f263          	bgeu	a3,a4,2bc0 <_malloc_r+0x518>
    2a80:	01400693          	li	a3,20
    2a84:	32e6e663          	bltu	a3,a4,2db0 <_malloc_r+0x708>
    2a88:	05c70613          	add	a2,a4,92
    2a8c:	05b70693          	add	a3,a4,91
    2a90:	00361613          	sll	a2,a2,0x3
    2a94:	00c98633          	add	a2,s3,a2
    2a98:	00062703          	lw	a4,0(a2)
    2a9c:	ff860613          	add	a2,a2,-8
    2aa0:	00e61863          	bne	a2,a4,2ab0 <_malloc_r+0x408>
    2aa4:	2980006f          	j	2d3c <_malloc_r+0x694>
    2aa8:	00872703          	lw	a4,8(a4)
    2aac:	00e60863          	beq	a2,a4,2abc <_malloc_r+0x414>
    2ab0:	00472683          	lw	a3,4(a4)
    2ab4:	ffc6f693          	and	a3,a3,-4
    2ab8:	fed7e8e3          	bltu	a5,a3,2aa8 <_malloc_r+0x400>
    2abc:	00c72603          	lw	a2,12(a4)
    2ac0:	00c42623          	sw	a2,12(s0)
    2ac4:	00e42423          	sw	a4,8(s0)
    2ac8:	00862423          	sw	s0,8(a2)
    2acc:	00872623          	sw	s0,12(a4)
    2ad0:	d71ff06f          	j	2840 <_malloc_r+0x198>
    2ad4:	01400713          	li	a4,20
    2ad8:	10f77863          	bgeu	a4,a5,2be8 <_malloc_r+0x540>
    2adc:	05400713          	li	a4,84
    2ae0:	2ef76663          	bltu	a4,a5,2dcc <_malloc_r+0x724>
    2ae4:	00c4d793          	srl	a5,s1,0xc
    2ae8:	06f78593          	add	a1,a5,111
    2aec:	06e78813          	add	a6,a5,110
    2af0:	00359613          	sll	a2,a1,0x3
    2af4:	c95ff06f          	j	2788 <_malloc_r+0xe0>
    2af8:	001e0e13          	add	t3,t3,1
    2afc:	003e7793          	and	a5,t3,3
    2b00:	00850513          	add	a0,a0,8
    2b04:	10078063          	beqz	a5,2c04 <_malloc_r+0x55c>
    2b08:	00c52783          	lw	a5,12(a0)
    2b0c:	d89ff06f          	j	2894 <_malloc_r+0x1ec>
    2b10:	00842603          	lw	a2,8(s0)
    2b14:	0014e593          	or	a1,s1,1
    2b18:	00b42223          	sw	a1,4(s0)
    2b1c:	00f62623          	sw	a5,12(a2)
    2b20:	00c7a423          	sw	a2,8(a5)
    2b24:	009404b3          	add	s1,s0,s1
    2b28:	0099aa23          	sw	s1,20(s3)
    2b2c:	0099a823          	sw	s1,16(s3)
    2b30:	0016e793          	or	a5,a3,1
    2b34:	0114a623          	sw	a7,12(s1)
    2b38:	0114a423          	sw	a7,8(s1)
    2b3c:	00f4a223          	sw	a5,4(s1)
    2b40:	00e40733          	add	a4,s0,a4
    2b44:	00090513          	mv	a0,s2
    2b48:	00d72023          	sw	a3,0(a4)
    2b4c:	348000ef          	jal	2e94 <__malloc_unlock>
    2b50:	00840513          	add	a0,s0,8
    2b54:	be1ff06f          	j	2734 <_malloc_r+0x8c>
    2b58:	00f407b3          	add	a5,s0,a5
    2b5c:	0047a703          	lw	a4,4(a5)
    2b60:	00090513          	mv	a0,s2
    2b64:	00176713          	or	a4,a4,1
    2b68:	00e7a223          	sw	a4,4(a5)
    2b6c:	328000ef          	jal	2e94 <__malloc_unlock>
    2b70:	00840513          	add	a0,s0,8
    2b74:	bc1ff06f          	j	2734 <_malloc_r+0x8c>
    2b78:	0034d593          	srl	a1,s1,0x3
    2b7c:	00848793          	add	a5,s1,8
    2b80:	b69ff06f          	j	26e8 <_malloc_r+0x40>
    2b84:	0014e693          	or	a3,s1,1
    2b88:	00d42223          	sw	a3,4(s0)
    2b8c:	009404b3          	add	s1,s0,s1
    2b90:	0099aa23          	sw	s1,20(s3)
    2b94:	0099a823          	sw	s1,16(s3)
    2b98:	00176693          	or	a3,a4,1
    2b9c:	0114a623          	sw	a7,12(s1)
    2ba0:	0114a423          	sw	a7,8(s1)
    2ba4:	00d4a223          	sw	a3,4(s1)
    2ba8:	00f407b3          	add	a5,s0,a5
    2bac:	00090513          	mv	a0,s2
    2bb0:	00e7a023          	sw	a4,0(a5)
    2bb4:	2e0000ef          	jal	2e94 <__malloc_unlock>
    2bb8:	00840513          	add	a0,s0,8
    2bbc:	b79ff06f          	j	2734 <_malloc_r+0x8c>
    2bc0:	0067d713          	srl	a4,a5,0x6
    2bc4:	03970613          	add	a2,a4,57
    2bc8:	03870693          	add	a3,a4,56
    2bcc:	00361613          	sll	a2,a2,0x3
    2bd0:	ec5ff06f          	j	2a94 <_malloc_r+0x3ec>
    2bd4:	07340c63          	beq	s0,s3,2c4c <_malloc_r+0x5a4>
    2bd8:	0089a403          	lw	s0,8(s3)
    2bdc:	00812c03          	lw	s8,8(sp)
    2be0:	00442783          	lw	a5,4(s0)
    2be4:	e09ff06f          	j	29ec <_malloc_r+0x344>
    2be8:	05c78593          	add	a1,a5,92
    2bec:	05b78813          	add	a6,a5,91
    2bf0:	00359613          	sll	a2,a1,0x3
    2bf4:	b95ff06f          	j	2788 <_malloc_r+0xe0>
    2bf8:	00832783          	lw	a5,8(t1)
    2bfc:	fff58593          	add	a1,a1,-1
    2c00:	28679063          	bne	a5,t1,2e80 <_malloc_r+0x7d8>
    2c04:	0035f793          	and	a5,a1,3
    2c08:	ff830313          	add	t1,t1,-8
    2c0c:	fe0796e3          	bnez	a5,2bf8 <_malloc_r+0x550>
    2c10:	0049a703          	lw	a4,4(s3)
    2c14:	fff64793          	not	a5,a2
    2c18:	00e7f7b3          	and	a5,a5,a4
    2c1c:	00f9a223          	sw	a5,4(s3)
    2c20:	00161613          	sll	a2,a2,0x1
    2c24:	ccc7eee3          	bltu	a5,a2,2900 <_malloc_r+0x258>
    2c28:	cc060ce3          	beqz	a2,2900 <_malloc_r+0x258>
    2c2c:	00f67733          	and	a4,a2,a5
    2c30:	00071a63          	bnez	a4,2c44 <_malloc_r+0x59c>
    2c34:	00161613          	sll	a2,a2,0x1
    2c38:	00f67733          	and	a4,a2,a5
    2c3c:	004e0e13          	add	t3,t3,4
    2c40:	fe070ae3          	beqz	a4,2c34 <_malloc_r+0x58c>
    2c44:	000e0593          	mv	a1,t3
    2c48:	c39ff06f          	j	2880 <_malloc_r+0x1d8>
    2c4c:	00032c17          	auipc	s8,0x32
    2c50:	cecc0c13          	add	s8,s8,-788 # 34938 <__malloc_current_mallinfo>
    2c54:	000c2703          	lw	a4,0(s8)
    2c58:	00ea8733          	add	a4,s5,a4
    2c5c:	00ec2023          	sw	a4,0(s8)
    2c60:	000ca683          	lw	a3,0(s9)
    2c64:	fff00793          	li	a5,-1
    2c68:	18f68663          	beq	a3,a5,2df4 <_malloc_r+0x74c>
    2c6c:	414b87b3          	sub	a5,s7,s4
    2c70:	00e787b3          	add	a5,a5,a4
    2c74:	00fc2023          	sw	a5,0(s8)
    2c78:	007bfc93          	and	s9,s7,7
    2c7c:	0c0c8c63          	beqz	s9,2d54 <_malloc_r+0x6ac>
    2c80:	419b8bb3          	sub	s7,s7,s9
    2c84:	000017b7          	lui	a5,0x1
    2c88:	00878793          	add	a5,a5,8 # 1008 <__divdi3+0x460>
    2c8c:	008b8b93          	add	s7,s7,8
    2c90:	419785b3          	sub	a1,a5,s9
    2c94:	015b8ab3          	add	s5,s7,s5
    2c98:	415585b3          	sub	a1,a1,s5
    2c9c:	01459593          	sll	a1,a1,0x14
    2ca0:	0145da13          	srl	s4,a1,0x14
    2ca4:	000a0593          	mv	a1,s4
    2ca8:	00090513          	mv	a0,s2
    2cac:	774000ef          	jal	3420 <_sbrk_r>
    2cb0:	fff00793          	li	a5,-1
    2cb4:	18f50063          	beq	a0,a5,2e34 <_malloc_r+0x78c>
    2cb8:	41750533          	sub	a0,a0,s7
    2cbc:	01450ab3          	add	s5,a0,s4
    2cc0:	000c2703          	lw	a4,0(s8)
    2cc4:	0179a423          	sw	s7,8(s3)
    2cc8:	001ae793          	or	a5,s5,1
    2ccc:	00ea05b3          	add	a1,s4,a4
    2cd0:	00bc2023          	sw	a1,0(s8)
    2cd4:	00fba223          	sw	a5,4(s7)
    2cd8:	cf3402e3          	beq	s0,s3,29bc <_malloc_r+0x314>
    2cdc:	00f00693          	li	a3,15
    2ce0:	0b66f063          	bgeu	a3,s6,2d80 <_malloc_r+0x6d8>
    2ce4:	00442703          	lw	a4,4(s0)
    2ce8:	ff4b0793          	add	a5,s6,-12
    2cec:	ff87f793          	and	a5,a5,-8
    2cf0:	00177713          	and	a4,a4,1
    2cf4:	00f76733          	or	a4,a4,a5
    2cf8:	00e42223          	sw	a4,4(s0)
    2cfc:	00500613          	li	a2,5
    2d00:	00f40733          	add	a4,s0,a5
    2d04:	00c72223          	sw	a2,4(a4)
    2d08:	00c72423          	sw	a2,8(a4)
    2d0c:	00f6e663          	bltu	a3,a5,2d18 <_malloc_r+0x670>
    2d10:	004ba783          	lw	a5,4(s7)
    2d14:	ca9ff06f          	j	29bc <_malloc_r+0x314>
    2d18:	00840593          	add	a1,s0,8
    2d1c:	00090513          	mv	a0,s2
    2d20:	e7cff0ef          	jal	239c <_free_r>
    2d24:	0089ab83          	lw	s7,8(s3)
    2d28:	000c2583          	lw	a1,0(s8)
    2d2c:	004ba783          	lw	a5,4(s7)
    2d30:	c8dff06f          	j	29bc <_malloc_r+0x314>
    2d34:	010a8a93          	add	s5,s5,16
    2d38:	c31ff06f          	j	2968 <_malloc_r+0x2c0>
    2d3c:	4026d693          	sra	a3,a3,0x2
    2d40:	00100793          	li	a5,1
    2d44:	00d797b3          	sll	a5,a5,a3
    2d48:	00f56533          	or	a0,a0,a5
    2d4c:	00a9a223          	sw	a0,4(s3)
    2d50:	d71ff06f          	j	2ac0 <_malloc_r+0x418>
    2d54:	015b85b3          	add	a1,s7,s5
    2d58:	40b005b3          	neg	a1,a1
    2d5c:	01459593          	sll	a1,a1,0x14
    2d60:	0145da13          	srl	s4,a1,0x14
    2d64:	000a0593          	mv	a1,s4
    2d68:	00090513          	mv	a0,s2
    2d6c:	6b4000ef          	jal	3420 <_sbrk_r>
    2d70:	fff00793          	li	a5,-1
    2d74:	f4f512e3          	bne	a0,a5,2cb8 <_malloc_r+0x610>
    2d78:	00000a13          	li	s4,0
    2d7c:	f45ff06f          	j	2cc0 <_malloc_r+0x618>
    2d80:	00812c03          	lw	s8,8(sp)
    2d84:	00100793          	li	a5,1
    2d88:	00fba223          	sw	a5,4(s7)
    2d8c:	00090513          	mv	a0,s2
    2d90:	104000ef          	jal	2e94 <__malloc_unlock>
    2d94:	00000513          	li	a0,0
    2d98:	01812a03          	lw	s4,24(sp)
    2d9c:	01412a83          	lw	s5,20(sp)
    2da0:	01012b03          	lw	s6,16(sp)
    2da4:	00c12b83          	lw	s7,12(sp)
    2da8:	00412c83          	lw	s9,4(sp)
    2dac:	989ff06f          	j	2734 <_malloc_r+0x8c>
    2db0:	05400693          	li	a3,84
    2db4:	04e6e463          	bltu	a3,a4,2dfc <_malloc_r+0x754>
    2db8:	00c7d713          	srl	a4,a5,0xc
    2dbc:	06f70613          	add	a2,a4,111
    2dc0:	06e70693          	add	a3,a4,110
    2dc4:	00361613          	sll	a2,a2,0x3
    2dc8:	ccdff06f          	j	2a94 <_malloc_r+0x3ec>
    2dcc:	15400713          	li	a4,340
    2dd0:	04f76463          	bltu	a4,a5,2e18 <_malloc_r+0x770>
    2dd4:	00f4d793          	srl	a5,s1,0xf
    2dd8:	07878593          	add	a1,a5,120
    2ddc:	07778813          	add	a6,a5,119
    2de0:	00359613          	sll	a2,a1,0x3
    2de4:	9a5ff06f          	j	2788 <_malloc_r+0xe0>
    2de8:	0089a403          	lw	s0,8(s3)
    2dec:	00442783          	lw	a5,4(s0)
    2df0:	bfdff06f          	j	29ec <_malloc_r+0x344>
    2df4:	017ca023          	sw	s7,0(s9)
    2df8:	e81ff06f          	j	2c78 <_malloc_r+0x5d0>
    2dfc:	15400693          	li	a3,340
    2e00:	04e6e463          	bltu	a3,a4,2e48 <_malloc_r+0x7a0>
    2e04:	00f7d713          	srl	a4,a5,0xf
    2e08:	07870613          	add	a2,a4,120
    2e0c:	07770693          	add	a3,a4,119
    2e10:	00361613          	sll	a2,a2,0x3
    2e14:	c81ff06f          	j	2a94 <_malloc_r+0x3ec>
    2e18:	55400713          	li	a4,1364
    2e1c:	04f76463          	bltu	a4,a5,2e64 <_malloc_r+0x7bc>
    2e20:	0124d793          	srl	a5,s1,0x12
    2e24:	07d78593          	add	a1,a5,125
    2e28:	07c78813          	add	a6,a5,124
    2e2c:	00359613          	sll	a2,a1,0x3
    2e30:	959ff06f          	j	2788 <_malloc_r+0xe0>
    2e34:	ff8c8c93          	add	s9,s9,-8
    2e38:	019a8ab3          	add	s5,s5,s9
    2e3c:	417a8ab3          	sub	s5,s5,s7
    2e40:	00000a13          	li	s4,0
    2e44:	e7dff06f          	j	2cc0 <_malloc_r+0x618>
    2e48:	55400693          	li	a3,1364
    2e4c:	02e6e463          	bltu	a3,a4,2e74 <_malloc_r+0x7cc>
    2e50:	0127d713          	srl	a4,a5,0x12
    2e54:	07d70613          	add	a2,a4,125
    2e58:	07c70693          	add	a3,a4,124
    2e5c:	00361613          	sll	a2,a2,0x3
    2e60:	c35ff06f          	j	2a94 <_malloc_r+0x3ec>
    2e64:	3f800613          	li	a2,1016
    2e68:	07f00593          	li	a1,127
    2e6c:	07e00813          	li	a6,126
    2e70:	919ff06f          	j	2788 <_malloc_r+0xe0>
    2e74:	3f800613          	li	a2,1016
    2e78:	07e00693          	li	a3,126
    2e7c:	c19ff06f          	j	2a94 <_malloc_r+0x3ec>
    2e80:	0049a783          	lw	a5,4(s3)
    2e84:	d9dff06f          	j	2c20 <_malloc_r+0x578>

00002e88 <__malloc_lock>:
    2e88:	00032517          	auipc	a0,0x32
    2e8c:	af450513          	add	a0,a0,-1292 # 3497c <__lock___malloc_recursive_mutex>
    2e90:	bacff06f          	j	223c <__retarget_lock_acquire_recursive>

00002e94 <__malloc_unlock>:
    2e94:	00032517          	auipc	a0,0x32
    2e98:	ae850513          	add	a0,a0,-1304 # 3497c <__lock___malloc_recursive_mutex>
    2e9c:	bb8ff06f          	j	2254 <__retarget_lock_release_recursive>

00002ea0 <_fclose_r>:
    2ea0:	ff010113          	add	sp,sp,-16
    2ea4:	00112623          	sw	ra,12(sp)
    2ea8:	01212023          	sw	s2,0(sp)
    2eac:	0e058263          	beqz	a1,2f90 <_fclose_r+0xf0>
    2eb0:	00812423          	sw	s0,8(sp)
    2eb4:	00912223          	sw	s1,4(sp)
    2eb8:	00058413          	mv	s0,a1
    2ebc:	00050493          	mv	s1,a0
    2ec0:	00050663          	beqz	a0,2ecc <_fclose_r+0x2c>
    2ec4:	03452783          	lw	a5,52(a0)
    2ec8:	10078063          	beqz	a5,2fc8 <_fclose_r+0x128>
    2ecc:	06442783          	lw	a5,100(s0)
    2ed0:	00c41703          	lh	a4,12(s0)
    2ed4:	0017f793          	and	a5,a5,1
    2ed8:	0a079663          	bnez	a5,2f84 <_fclose_r+0xe4>
    2edc:	20077713          	and	a4,a4,512
    2ee0:	0e070863          	beqz	a4,2fd0 <_fclose_r+0x130>
    2ee4:	00040593          	mv	a1,s0
    2ee8:	00048513          	mv	a0,s1
    2eec:	134000ef          	jal	3020 <__sflush_r>
    2ef0:	02c42783          	lw	a5,44(s0)
    2ef4:	00050913          	mv	s2,a0
    2ef8:	00078a63          	beqz	a5,2f0c <_fclose_r+0x6c>
    2efc:	01c42583          	lw	a1,28(s0)
    2f00:	00048513          	mv	a0,s1
    2f04:	000780e7          	jalr	a5
    2f08:	0a054063          	bltz	a0,2fa8 <_fclose_r+0x108>
    2f0c:	00c45783          	lhu	a5,12(s0)
    2f10:	0807f793          	and	a5,a5,128
    2f14:	0a079263          	bnez	a5,2fb8 <_fclose_r+0x118>
    2f18:	03042583          	lw	a1,48(s0)
    2f1c:	00058c63          	beqz	a1,2f34 <_fclose_r+0x94>
    2f20:	04040793          	add	a5,s0,64
    2f24:	00f58663          	beq	a1,a5,2f30 <_fclose_r+0x90>
    2f28:	00048513          	mv	a0,s1
    2f2c:	c70ff0ef          	jal	239c <_free_r>
    2f30:	02042823          	sw	zero,48(s0)
    2f34:	04442583          	lw	a1,68(s0)
    2f38:	00058863          	beqz	a1,2f48 <_fclose_r+0xa8>
    2f3c:	00048513          	mv	a0,s1
    2f40:	c5cff0ef          	jal	239c <_free_r>
    2f44:	04042223          	sw	zero,68(s0)
    2f48:	df5fe0ef          	jal	1d3c <__sfp_lock_acquire>
    2f4c:	06442783          	lw	a5,100(s0)
    2f50:	00041623          	sh	zero,12(s0)
    2f54:	0017f793          	and	a5,a5,1
    2f58:	0a078663          	beqz	a5,3004 <_fclose_r+0x164>
    2f5c:	05842503          	lw	a0,88(s0)
    2f60:	ad4ff0ef          	jal	2234 <__retarget_lock_close_recursive>
    2f64:	de5fe0ef          	jal	1d48 <__sfp_lock_release>
    2f68:	00c12083          	lw	ra,12(sp)
    2f6c:	00812403          	lw	s0,8(sp)
    2f70:	00412483          	lw	s1,4(sp)
    2f74:	00090513          	mv	a0,s2
    2f78:	00012903          	lw	s2,0(sp)
    2f7c:	01010113          	add	sp,sp,16
    2f80:	00008067          	ret
    2f84:	f60710e3          	bnez	a4,2ee4 <_fclose_r+0x44>
    2f88:	00812403          	lw	s0,8(sp)
    2f8c:	00412483          	lw	s1,4(sp)
    2f90:	00000913          	li	s2,0
    2f94:	00c12083          	lw	ra,12(sp)
    2f98:	00090513          	mv	a0,s2
    2f9c:	00012903          	lw	s2,0(sp)
    2fa0:	01010113          	add	sp,sp,16
    2fa4:	00008067          	ret
    2fa8:	00c45783          	lhu	a5,12(s0)
    2fac:	fff00913          	li	s2,-1
    2fb0:	0807f793          	and	a5,a5,128
    2fb4:	f60782e3          	beqz	a5,2f18 <_fclose_r+0x78>
    2fb8:	01042583          	lw	a1,16(s0)
    2fbc:	00048513          	mv	a0,s1
    2fc0:	bdcff0ef          	jal	239c <_free_r>
    2fc4:	f55ff06f          	j	2f18 <_fclose_r+0x78>
    2fc8:	d05fe0ef          	jal	1ccc <__sinit>
    2fcc:	f01ff06f          	j	2ecc <_fclose_r+0x2c>
    2fd0:	05842503          	lw	a0,88(s0)
    2fd4:	a68ff0ef          	jal	223c <__retarget_lock_acquire_recursive>
    2fd8:	00c41783          	lh	a5,12(s0)
    2fdc:	f00794e3          	bnez	a5,2ee4 <_fclose_r+0x44>
    2fe0:	06442783          	lw	a5,100(s0)
    2fe4:	0017f793          	and	a5,a5,1
    2fe8:	fa0790e3          	bnez	a5,2f88 <_fclose_r+0xe8>
    2fec:	05842503          	lw	a0,88(s0)
    2ff0:	00000913          	li	s2,0
    2ff4:	a60ff0ef          	jal	2254 <__retarget_lock_release_recursive>
    2ff8:	00812403          	lw	s0,8(sp)
    2ffc:	00412483          	lw	s1,4(sp)
    3000:	f95ff06f          	j	2f94 <_fclose_r+0xf4>
    3004:	05842503          	lw	a0,88(s0)
    3008:	a4cff0ef          	jal	2254 <__retarget_lock_release_recursive>
    300c:	f51ff06f          	j	2f5c <_fclose_r+0xbc>

00003010 <fclose>:
    3010:	00050593          	mv	a1,a0
    3014:	00031517          	auipc	a0,0x31
    3018:	53852503          	lw	a0,1336(a0) # 3454c <_impure_ptr>
    301c:	e85ff06f          	j	2ea0 <_fclose_r>

00003020 <__sflush_r>:
    3020:	00c59703          	lh	a4,12(a1)
    3024:	fe010113          	add	sp,sp,-32
    3028:	00812c23          	sw	s0,24(sp)
    302c:	01312623          	sw	s3,12(sp)
    3030:	00112e23          	sw	ra,28(sp)
    3034:	00877793          	and	a5,a4,8
    3038:	00058413          	mv	s0,a1
    303c:	00050993          	mv	s3,a0
    3040:	12079063          	bnez	a5,3160 <__sflush_r+0x140>
    3044:	000017b7          	lui	a5,0x1
    3048:	80078793          	add	a5,a5,-2048 # 800 <_ZZ21cmd_matrix_multipliervENKUlvE0_clEv+0x50>
    304c:	0045a683          	lw	a3,4(a1)
    3050:	00f767b3          	or	a5,a4,a5
    3054:	00f59623          	sh	a5,12(a1)
    3058:	18d05263          	blez	a3,31dc <__sflush_r+0x1bc>
    305c:	02842803          	lw	a6,40(s0)
    3060:	0e080463          	beqz	a6,3148 <__sflush_r+0x128>
    3064:	00912a23          	sw	s1,20(sp)
    3068:	01371693          	sll	a3,a4,0x13
    306c:	0009a483          	lw	s1,0(s3)
    3070:	0009a023          	sw	zero,0(s3)
    3074:	01c42583          	lw	a1,28(s0)
    3078:	1606ce63          	bltz	a3,31f4 <__sflush_r+0x1d4>
    307c:	00000613          	li	a2,0
    3080:	00100693          	li	a3,1
    3084:	00098513          	mv	a0,s3
    3088:	000800e7          	jalr	a6
    308c:	fff00793          	li	a5,-1
    3090:	00050613          	mv	a2,a0
    3094:	1af50463          	beq	a0,a5,323c <__sflush_r+0x21c>
    3098:	00c41783          	lh	a5,12(s0)
    309c:	02842803          	lw	a6,40(s0)
    30a0:	01c42583          	lw	a1,28(s0)
    30a4:	0047f793          	and	a5,a5,4
    30a8:	00078e63          	beqz	a5,30c4 <__sflush_r+0xa4>
    30ac:	00442703          	lw	a4,4(s0)
    30b0:	03042783          	lw	a5,48(s0)
    30b4:	40e60633          	sub	a2,a2,a4
    30b8:	00078663          	beqz	a5,30c4 <__sflush_r+0xa4>
    30bc:	03c42783          	lw	a5,60(s0)
    30c0:	40f60633          	sub	a2,a2,a5
    30c4:	00000693          	li	a3,0
    30c8:	00098513          	mv	a0,s3
    30cc:	000800e7          	jalr	a6
    30d0:	fff00793          	li	a5,-1
    30d4:	12f51463          	bne	a0,a5,31fc <__sflush_r+0x1dc>
    30d8:	0009a683          	lw	a3,0(s3)
    30dc:	01d00793          	li	a5,29
    30e0:	00c41703          	lh	a4,12(s0)
    30e4:	16d7ea63          	bltu	a5,a3,3258 <__sflush_r+0x238>
    30e8:	204007b7          	lui	a5,0x20400
    30ec:	00178793          	add	a5,a5,1 # 20400001 <GET_WATCHDOG_LOW+0x201fefc1>
    30f0:	00d7d7b3          	srl	a5,a5,a3
    30f4:	0017f793          	and	a5,a5,1
    30f8:	16078063          	beqz	a5,3258 <__sflush_r+0x238>
    30fc:	01042603          	lw	a2,16(s0)
    3100:	fffff7b7          	lui	a5,0xfffff
    3104:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    3108:	00f777b3          	and	a5,a4,a5
    310c:	00f41623          	sh	a5,12(s0)
    3110:	00042223          	sw	zero,4(s0)
    3114:	00c42023          	sw	a2,0(s0)
    3118:	01371793          	sll	a5,a4,0x13
    311c:	0007d463          	bgez	a5,3124 <__sflush_r+0x104>
    3120:	10068263          	beqz	a3,3224 <__sflush_r+0x204>
    3124:	03042583          	lw	a1,48(s0)
    3128:	0099a023          	sw	s1,0(s3)
    312c:	10058463          	beqz	a1,3234 <__sflush_r+0x214>
    3130:	04040793          	add	a5,s0,64
    3134:	00f58663          	beq	a1,a5,3140 <__sflush_r+0x120>
    3138:	00098513          	mv	a0,s3
    313c:	a60ff0ef          	jal	239c <_free_r>
    3140:	01412483          	lw	s1,20(sp)
    3144:	02042823          	sw	zero,48(s0)
    3148:	00000513          	li	a0,0
    314c:	01c12083          	lw	ra,28(sp)
    3150:	01812403          	lw	s0,24(sp)
    3154:	00c12983          	lw	s3,12(sp)
    3158:	02010113          	add	sp,sp,32
    315c:	00008067          	ret
    3160:	01212823          	sw	s2,16(sp)
    3164:	0105a903          	lw	s2,16(a1)
    3168:	08090263          	beqz	s2,31ec <__sflush_r+0x1cc>
    316c:	00912a23          	sw	s1,20(sp)
    3170:	0005a483          	lw	s1,0(a1)
    3174:	00377713          	and	a4,a4,3
    3178:	0125a023          	sw	s2,0(a1)
    317c:	412484b3          	sub	s1,s1,s2
    3180:	00000793          	li	a5,0
    3184:	00071463          	bnez	a4,318c <__sflush_r+0x16c>
    3188:	0145a783          	lw	a5,20(a1)
    318c:	00f42423          	sw	a5,8(s0)
    3190:	00904863          	bgtz	s1,31a0 <__sflush_r+0x180>
    3194:	0540006f          	j	31e8 <__sflush_r+0x1c8>
    3198:	00a90933          	add	s2,s2,a0
    319c:	04905663          	blez	s1,31e8 <__sflush_r+0x1c8>
    31a0:	02442783          	lw	a5,36(s0)
    31a4:	01c42583          	lw	a1,28(s0)
    31a8:	00048693          	mv	a3,s1
    31ac:	00090613          	mv	a2,s2
    31b0:	00098513          	mv	a0,s3
    31b4:	000780e7          	jalr	a5
    31b8:	40a484b3          	sub	s1,s1,a0
    31bc:	fca04ee3          	bgtz	a0,3198 <__sflush_r+0x178>
    31c0:	00c41703          	lh	a4,12(s0)
    31c4:	01012903          	lw	s2,16(sp)
    31c8:	04076713          	or	a4,a4,64
    31cc:	01412483          	lw	s1,20(sp)
    31d0:	00e41623          	sh	a4,12(s0)
    31d4:	fff00513          	li	a0,-1
    31d8:	f75ff06f          	j	314c <__sflush_r+0x12c>
    31dc:	03c5a683          	lw	a3,60(a1)
    31e0:	e6d04ee3          	bgtz	a3,305c <__sflush_r+0x3c>
    31e4:	f65ff06f          	j	3148 <__sflush_r+0x128>
    31e8:	01412483          	lw	s1,20(sp)
    31ec:	01012903          	lw	s2,16(sp)
    31f0:	f59ff06f          	j	3148 <__sflush_r+0x128>
    31f4:	05042603          	lw	a2,80(s0)
    31f8:	eadff06f          	j	30a4 <__sflush_r+0x84>
    31fc:	00c41703          	lh	a4,12(s0)
    3200:	01042683          	lw	a3,16(s0)
    3204:	fffff7b7          	lui	a5,0xfffff
    3208:	7ff78793          	add	a5,a5,2047 # fffff7ff <GET_WATCHDOG_LOW+0xffdfe7bf>
    320c:	00f777b3          	and	a5,a4,a5
    3210:	00f41623          	sh	a5,12(s0)
    3214:	00042223          	sw	zero,4(s0)
    3218:	00d42023          	sw	a3,0(s0)
    321c:	01371793          	sll	a5,a4,0x13
    3220:	f007d2e3          	bgez	a5,3124 <__sflush_r+0x104>
    3224:	03042583          	lw	a1,48(s0)
    3228:	04a42823          	sw	a0,80(s0)
    322c:	0099a023          	sw	s1,0(s3)
    3230:	f00590e3          	bnez	a1,3130 <__sflush_r+0x110>
    3234:	01412483          	lw	s1,20(sp)
    3238:	f11ff06f          	j	3148 <__sflush_r+0x128>
    323c:	0009a783          	lw	a5,0(s3)
    3240:	e4078ce3          	beqz	a5,3098 <__sflush_r+0x78>
    3244:	01d00713          	li	a4,29
    3248:	00e78c63          	beq	a5,a4,3260 <__sflush_r+0x240>
    324c:	01600713          	li	a4,22
    3250:	00e78863          	beq	a5,a4,3260 <__sflush_r+0x240>
    3254:	00c41703          	lh	a4,12(s0)
    3258:	04076713          	or	a4,a4,64
    325c:	f71ff06f          	j	31cc <__sflush_r+0x1ac>
    3260:	0099a023          	sw	s1,0(s3)
    3264:	01412483          	lw	s1,20(sp)
    3268:	ee1ff06f          	j	3148 <__sflush_r+0x128>

0000326c <_fflush_r>:
    326c:	ff010113          	add	sp,sp,-16
    3270:	00812423          	sw	s0,8(sp)
    3274:	00912223          	sw	s1,4(sp)
    3278:	00112623          	sw	ra,12(sp)
    327c:	01212023          	sw	s2,0(sp)
    3280:	00050493          	mv	s1,a0
    3284:	00058413          	mv	s0,a1
    3288:	00050663          	beqz	a0,3294 <_fflush_r+0x28>
    328c:	03452783          	lw	a5,52(a0)
    3290:	0a078a63          	beqz	a5,3344 <_fflush_r+0xd8>
    3294:	00c41783          	lh	a5,12(s0)
    3298:	00000913          	li	s2,0
    329c:	04078063          	beqz	a5,32dc <_fflush_r+0x70>
    32a0:	06442703          	lw	a4,100(s0)
    32a4:	00177713          	and	a4,a4,1
    32a8:	00071663          	bnez	a4,32b4 <_fflush_r+0x48>
    32ac:	2007f793          	and	a5,a5,512
    32b0:	04078463          	beqz	a5,32f8 <_fflush_r+0x8c>
    32b4:	00040593          	mv	a1,s0
    32b8:	00048513          	mv	a0,s1
    32bc:	d65ff0ef          	jal	3020 <__sflush_r>
    32c0:	06442783          	lw	a5,100(s0)
    32c4:	00050913          	mv	s2,a0
    32c8:	0017f793          	and	a5,a5,1
    32cc:	00079863          	bnez	a5,32dc <_fflush_r+0x70>
    32d0:	00c45783          	lhu	a5,12(s0)
    32d4:	2007f793          	and	a5,a5,512
    32d8:	04078463          	beqz	a5,3320 <_fflush_r+0xb4>
    32dc:	00c12083          	lw	ra,12(sp)
    32e0:	00812403          	lw	s0,8(sp)
    32e4:	00412483          	lw	s1,4(sp)
    32e8:	00090513          	mv	a0,s2
    32ec:	00012903          	lw	s2,0(sp)
    32f0:	01010113          	add	sp,sp,16
    32f4:	00008067          	ret
    32f8:	05842503          	lw	a0,88(s0)
    32fc:	f41fe0ef          	jal	223c <__retarget_lock_acquire_recursive>
    3300:	00040593          	mv	a1,s0
    3304:	00048513          	mv	a0,s1
    3308:	d19ff0ef          	jal	3020 <__sflush_r>
    330c:	06442783          	lw	a5,100(s0)
    3310:	00050913          	mv	s2,a0
    3314:	0017f793          	and	a5,a5,1
    3318:	fc0792e3          	bnez	a5,32dc <_fflush_r+0x70>
    331c:	fb5ff06f          	j	32d0 <_fflush_r+0x64>
    3320:	05842503          	lw	a0,88(s0)
    3324:	f31fe0ef          	jal	2254 <__retarget_lock_release_recursive>
    3328:	00c12083          	lw	ra,12(sp)
    332c:	00812403          	lw	s0,8(sp)
    3330:	00412483          	lw	s1,4(sp)
    3334:	00090513          	mv	a0,s2
    3338:	00012903          	lw	s2,0(sp)
    333c:	01010113          	add	sp,sp,16
    3340:	00008067          	ret
    3344:	989fe0ef          	jal	1ccc <__sinit>
    3348:	f4dff06f          	j	3294 <_fflush_r+0x28>

0000334c <fflush>:
    334c:	0a050c63          	beqz	a0,3404 <fflush+0xb8>
    3350:	ff010113          	add	sp,sp,-16
    3354:	00812423          	sw	s0,8(sp)
    3358:	01212023          	sw	s2,0(sp)
    335c:	00112623          	sw	ra,12(sp)
    3360:	00912223          	sw	s1,4(sp)
    3364:	00031917          	auipc	s2,0x31
    3368:	1e892903          	lw	s2,488(s2) # 3454c <_impure_ptr>
    336c:	00050413          	mv	s0,a0
    3370:	00090663          	beqz	s2,337c <fflush+0x30>
    3374:	03492783          	lw	a5,52(s2)
    3378:	06078463          	beqz	a5,33e0 <fflush+0x94>
    337c:	00c41783          	lh	a5,12(s0)
    3380:	00000493          	li	s1,0
    3384:	04078063          	beqz	a5,33c4 <fflush+0x78>
    3388:	06442703          	lw	a4,100(s0)
    338c:	00177713          	and	a4,a4,1
    3390:	00071663          	bnez	a4,339c <fflush+0x50>
    3394:	2007f793          	and	a5,a5,512
    3398:	04078a63          	beqz	a5,33ec <fflush+0xa0>
    339c:	00040593          	mv	a1,s0
    33a0:	00090513          	mv	a0,s2
    33a4:	c7dff0ef          	jal	3020 <__sflush_r>
    33a8:	06442783          	lw	a5,100(s0)
    33ac:	00050493          	mv	s1,a0
    33b0:	0017f793          	and	a5,a5,1
    33b4:	00079863          	bnez	a5,33c4 <fflush+0x78>
    33b8:	00c45783          	lhu	a5,12(s0)
    33bc:	2007f793          	and	a5,a5,512
    33c0:	02078c63          	beqz	a5,33f8 <fflush+0xac>
    33c4:	00c12083          	lw	ra,12(sp)
    33c8:	00812403          	lw	s0,8(sp)
    33cc:	00012903          	lw	s2,0(sp)
    33d0:	00048513          	mv	a0,s1
    33d4:	00412483          	lw	s1,4(sp)
    33d8:	01010113          	add	sp,sp,16
    33dc:	00008067          	ret
    33e0:	00090513          	mv	a0,s2
    33e4:	8e9fe0ef          	jal	1ccc <__sinit>
    33e8:	f95ff06f          	j	337c <fflush+0x30>
    33ec:	05842503          	lw	a0,88(s0)
    33f0:	e4dfe0ef          	jal	223c <__retarget_lock_acquire_recursive>
    33f4:	fa9ff06f          	j	339c <fflush+0x50>
    33f8:	05842503          	lw	a0,88(s0)
    33fc:	e59fe0ef          	jal	2254 <__retarget_lock_release_recursive>
    3400:	fc5ff06f          	j	33c4 <fflush+0x78>
    3404:	00031617          	auipc	a2,0x31
    3408:	d1c60613          	add	a2,a2,-740 # 34120 <__sglue>
    340c:	00000597          	auipc	a1,0x0
    3410:	e6058593          	add	a1,a1,-416 # 326c <_fflush_r>
    3414:	00031517          	auipc	a0,0x31
    3418:	bec50513          	add	a0,a0,-1044 # 34000 <_impure_data>
    341c:	9a1fe06f          	j	1dbc <_fwalk_sglue>

00003420 <_sbrk_r>:
    3420:	ff010113          	add	sp,sp,-16
    3424:	00812423          	sw	s0,8(sp)
    3428:	00050413          	mv	s0,a0
    342c:	00058513          	mv	a0,a1
    3430:	00031797          	auipc	a5,0x31
    3434:	5207ac23          	sw	zero,1336(a5) # 34968 <errno>
    3438:	00112623          	sw	ra,12(sp)
    343c:	dd1fc0ef          	jal	20c <_sbrk>
    3440:	fff00793          	li	a5,-1
    3444:	00f50a63          	beq	a0,a5,3458 <_sbrk_r+0x38>
    3448:	00c12083          	lw	ra,12(sp)
    344c:	00812403          	lw	s0,8(sp)
    3450:	01010113          	add	sp,sp,16
    3454:	00008067          	ret
    3458:	00031797          	auipc	a5,0x31
    345c:	5107a783          	lw	a5,1296(a5) # 34968 <errno>
    3460:	fe0784e3          	beqz	a5,3448 <_sbrk_r+0x28>
    3464:	00c12083          	lw	ra,12(sp)
    3468:	00f42023          	sw	a5,0(s0)
    346c:	00812403          	lw	s0,8(sp)
    3470:	01010113          	add	sp,sp,16
    3474:	00008067          	ret

Disassembly of section .spi_compute:

00003800 <_Z8cmd_echoPc>:
    3800:	fe010113          	add	sp,sp,-32
    3804:	00112e23          	sw	ra,28(sp)
    3808:	00812c23          	sw	s0,24(sp)
    380c:	02010413          	add	s0,sp,32
    3810:	fea42623          	sw	a0,-20(s0)
    3814:	fec42503          	lw	a0,-20(s0)
    3818:	0c5000ef          	jal	40dc <_Z10uart_printPKc>
    381c:	000307b7          	lui	a5,0x30
    3820:	0a878513          	add	a0,a5,168 # 300a8 <__fini_array_end+0x2a8a8>
    3824:	0b9000ef          	jal	40dc <_Z10uart_printPKc>
    3828:	00000013          	nop
    382c:	01c12083          	lw	ra,28(sp)
    3830:	01812403          	lw	s0,24(sp)
    3834:	02010113          	add	sp,sp,32
    3838:	00008067          	ret

0000383c <_Z8cmd_helpPc>:
    383c:	fe010113          	add	sp,sp,-32
    3840:	00112e23          	sw	ra,28(sp)
    3844:	00812c23          	sw	s0,24(sp)
    3848:	02010413          	add	s0,sp,32
    384c:	fea42623          	sw	a0,-20(s0)
    3850:	000307b7          	lui	a5,0x30
    3854:	0ac78513          	add	a0,a5,172 # 300ac <__fini_array_end+0x2a8ac>
    3858:	085000ef          	jal	40dc <_Z10uart_printPKc>
    385c:	000307b7          	lui	a5,0x30
    3860:	0cc78513          	add	a0,a5,204 # 300cc <__fini_array_end+0x2a8cc>
    3864:	079000ef          	jal	40dc <_Z10uart_printPKc>
    3868:	000307b7          	lui	a5,0x30
    386c:	0dc78513          	add	a0,a5,220 # 300dc <__fini_array_end+0x2a8dc>
    3870:	06d000ef          	jal	40dc <_Z10uart_printPKc>
    3874:	000307b7          	lui	a5,0x30
    3878:	0ec78513          	add	a0,a5,236 # 300ec <__fini_array_end+0x2a8ec>
    387c:	061000ef          	jal	40dc <_Z10uart_printPKc>
    3880:	000307b7          	lui	a5,0x30
    3884:	0fc78513          	add	a0,a5,252 # 300fc <__fini_array_end+0x2a8fc>
    3888:	055000ef          	jal	40dc <_Z10uart_printPKc>
    388c:	000307b7          	lui	a5,0x30
    3890:	10c78513          	add	a0,a5,268 # 3010c <__fini_array_end+0x2a90c>
    3894:	049000ef          	jal	40dc <_Z10uart_printPKc>
    3898:	000307b7          	lui	a5,0x30
    389c:	11c78513          	add	a0,a5,284 # 3011c <__fini_array_end+0x2a91c>
    38a0:	03d000ef          	jal	40dc <_Z10uart_printPKc>
    38a4:	00000013          	nop
    38a8:	01c12083          	lw	ra,28(sp)
    38ac:	01812403          	lw	s0,24(sp)
    38b0:	02010113          	add	sp,sp,32
    38b4:	00008067          	ret

000038b8 <_Z8cmd_exitPcPVb>:
    38b8:	fe010113          	add	sp,sp,-32
    38bc:	00112e23          	sw	ra,28(sp)
    38c0:	00812c23          	sw	s0,24(sp)
    38c4:	02010413          	add	s0,sp,32
    38c8:	fea42623          	sw	a0,-20(s0)
    38cc:	feb42423          	sw	a1,-24(s0)
    38d0:	000307b7          	lui	a5,0x30
    38d4:	14078513          	add	a0,a5,320 # 30140 <__fini_array_end+0x2a940>
    38d8:	005000ef          	jal	40dc <_Z10uart_printPKc>
    38dc:	fe842783          	lw	a5,-24(s0)
    38e0:	00078023          	sb	zero,0(a5)
    38e4:	00000013          	nop
    38e8:	01c12083          	lw	ra,28(sp)
    38ec:	01812403          	lw	s0,24(sp)
    38f0:	02010113          	add	sp,sp,32
    38f4:	00008067          	ret

000038f8 <_Z8cmd_freev>:
    38f8:	fe010113          	add	sp,sp,-32
    38fc:	00112e23          	sw	ra,28(sp)
    3900:	00812c23          	sw	s0,24(sp)
    3904:	02010413          	add	s0,sp,32
    3908:	d31fc0ef          	jal	638 <_Z14get_free_bytesv>
    390c:	fea42623          	sw	a0,-20(s0)
    3910:	fec42783          	lw	a5,-20(s0)
    3914:	00078513          	mv	a0,a5
    3918:	221000ef          	jal	4338 <_Z16uart_print_int32i>
    391c:	00000013          	nop
    3920:	000307b7          	lui	a5,0x30
    3924:	14c78513          	add	a0,a5,332 # 3014c <__fini_array_end+0x2a94c>
    3928:	7b4000ef          	jal	40dc <_Z10uart_printPKc>
    392c:	00000013          	nop
    3930:	01c12083          	lw	ra,28(sp)
    3934:	01812403          	lw	s0,24(sp)
    3938:	02010113          	add	sp,sp,32
    393c:	00008067          	ret

00003940 <_Z7computev>:
    3940:	fe010113          	add	sp,sp,-32
    3944:	00112e23          	sw	ra,28(sp)
    3948:	00812c23          	sw	s0,24(sp)
    394c:	02010413          	add	s0,sp,32
    3950:	fff00793          	li	a5,-1
    3954:	fef407a3          	sb	a5,-17(s0)
    3958:	00a00793          	li	a5,10
    395c:	fef42423          	sw	a5,-24(s0)
    3960:	fe842503          	lw	a0,-24(s0)
    3964:	378000ef          	jal	3cdc <_Z19fibonacci_iterativei>
    3968:	00050793          	mv	a5,a0
    396c:	fef42223          	sw	a5,-28(s0)
    3970:	fe842503          	lw	a0,-24(s0)
    3974:	414000ef          	jal	3d88 <_Z19fibonacci_recursivei>
    3978:	00050793          	mv	a5,a0
    397c:	fef42023          	sw	a5,-32(s0)
    3980:	fe442703          	lw	a4,-28(s0)
    3984:	fe042783          	lw	a5,-32(s0)
    3988:	00f71863          	bne	a4,a5,3998 <_Z7computev+0x58>
    398c:	00100793          	li	a5,1
    3990:	fef407a3          	sb	a5,-17(s0)
    3994:	0080006f          	j	399c <_Z7computev+0x5c>
    3998:	fe0407a3          	sb	zero,-17(s0)
    399c:	00000013          	nop
    39a0:	01c12083          	lw	ra,28(sp)
    39a4:	01812403          	lw	s0,24(sp)
    39a8:	02010113          	add	sp,sp,32
    39ac:	00008067          	ret

000039b0 <_Z6matmulPA3_KiPA3_iS3_>:
    39b0:	fd010113          	add	sp,sp,-48
    39b4:	02112623          	sw	ra,44(sp)
    39b8:	02812423          	sw	s0,40(sp)
    39bc:	03010413          	add	s0,sp,48
    39c0:	fca42e23          	sw	a0,-36(s0)
    39c4:	fcb42c23          	sw	a1,-40(s0)
    39c8:	fcc42a23          	sw	a2,-44(s0)
    39cc:	fe042623          	sw	zero,-20(s0)
    39d0:	1080006f          	j	3ad8 <_Z6matmulPA3_KiPA3_iS3_+0x128>
    39d4:	fe042423          	sw	zero,-24(s0)
    39d8:	0e80006f          	j	3ac0 <_Z6matmulPA3_KiPA3_iS3_+0x110>
    39dc:	fe042223          	sw	zero,-28(s0)
    39e0:	fe042023          	sw	zero,-32(s0)
    39e4:	0900006f          	j	3a74 <_Z6matmulPA3_KiPA3_iS3_+0xc4>
    39e8:	fec42703          	lw	a4,-20(s0)
    39ec:	00070793          	mv	a5,a4
    39f0:	00179793          	sll	a5,a5,0x1
    39f4:	00e787b3          	add	a5,a5,a4
    39f8:	00279793          	sll	a5,a5,0x2
    39fc:	00078713          	mv	a4,a5
    3a00:	fdc42783          	lw	a5,-36(s0)
    3a04:	00e78733          	add	a4,a5,a4
    3a08:	fe042783          	lw	a5,-32(s0)
    3a0c:	00279793          	sll	a5,a5,0x2
    3a10:	00f707b3          	add	a5,a4,a5
    3a14:	0007a683          	lw	a3,0(a5)
    3a18:	fe042703          	lw	a4,-32(s0)
    3a1c:	00070793          	mv	a5,a4
    3a20:	00179793          	sll	a5,a5,0x1
    3a24:	00e787b3          	add	a5,a5,a4
    3a28:	00279793          	sll	a5,a5,0x2
    3a2c:	00078713          	mv	a4,a5
    3a30:	fd842783          	lw	a5,-40(s0)
    3a34:	00e78733          	add	a4,a5,a4
    3a38:	fe842783          	lw	a5,-24(s0)
    3a3c:	00279793          	sll	a5,a5,0x2
    3a40:	00f707b3          	add	a5,a4,a5
    3a44:	0007a783          	lw	a5,0(a5)
    3a48:	00078593          	mv	a1,a5
    3a4c:	00068513          	mv	a0,a3
    3a50:	fa5fc0ef          	jal	9f4 <__mulsi3>
    3a54:	00050793          	mv	a5,a0
    3a58:	00078713          	mv	a4,a5
    3a5c:	fe442783          	lw	a5,-28(s0)
    3a60:	00e787b3          	add	a5,a5,a4
    3a64:	fef42223          	sw	a5,-28(s0)
    3a68:	fe042783          	lw	a5,-32(s0)
    3a6c:	00178793          	add	a5,a5,1
    3a70:	fef42023          	sw	a5,-32(s0)
    3a74:	fe042703          	lw	a4,-32(s0)
    3a78:	00200793          	li	a5,2
    3a7c:	f6e7d6e3          	bge	a5,a4,39e8 <_Z6matmulPA3_KiPA3_iS3_+0x38>
    3a80:	fec42703          	lw	a4,-20(s0)
    3a84:	00070793          	mv	a5,a4
    3a88:	00179793          	sll	a5,a5,0x1
    3a8c:	00e787b3          	add	a5,a5,a4
    3a90:	00279793          	sll	a5,a5,0x2
    3a94:	00078713          	mv	a4,a5
    3a98:	fd442783          	lw	a5,-44(s0)
    3a9c:	00e78733          	add	a4,a5,a4
    3aa0:	fe842783          	lw	a5,-24(s0)
    3aa4:	00279793          	sll	a5,a5,0x2
    3aa8:	00f707b3          	add	a5,a4,a5
    3aac:	fe442703          	lw	a4,-28(s0)
    3ab0:	00e7a023          	sw	a4,0(a5)
    3ab4:	fe842783          	lw	a5,-24(s0)
    3ab8:	00178793          	add	a5,a5,1
    3abc:	fef42423          	sw	a5,-24(s0)
    3ac0:	fe842703          	lw	a4,-24(s0)
    3ac4:	00200793          	li	a5,2
    3ac8:	f0e7dae3          	bge	a5,a4,39dc <_Z6matmulPA3_KiPA3_iS3_+0x2c>
    3acc:	fec42783          	lw	a5,-20(s0)
    3ad0:	00178793          	add	a5,a5,1
    3ad4:	fef42623          	sw	a5,-20(s0)
    3ad8:	fec42703          	lw	a4,-20(s0)
    3adc:	00200793          	li	a5,2
    3ae0:	eee7dae3          	bge	a5,a4,39d4 <_Z6matmulPA3_KiPA3_iS3_+0x24>
    3ae4:	00000793          	li	a5,0
    3ae8:	00078513          	mv	a0,a5
    3aec:	02c12083          	lw	ra,44(sp)
    3af0:	02812403          	lw	s0,40(sp)
    3af4:	03010113          	add	sp,sp,48
    3af8:	00008067          	ret

00003afc <_Z21cmd_matrix_multiplierv>:
    3afc:	f2010113          	add	sp,sp,-224
    3b00:	0c112e23          	sw	ra,220(sp)
    3b04:	0c812c23          	sw	s0,216(sp)
    3b08:	0e010413          	add	s0,sp,224
    3b0c:	00100793          	li	a5,1
    3b10:	fef407a3          	sb	a5,-17(s0)
    3b14:	000307b7          	lui	a5,0x30
    3b18:	1d878793          	add	a5,a5,472 # 301d8 <__fini_array_end+0x2a9d8>
    3b1c:	0007a303          	lw	t1,0(a5)
    3b20:	0047a883          	lw	a7,4(a5)
    3b24:	0087a803          	lw	a6,8(a5)
    3b28:	00c7a503          	lw	a0,12(a5)
    3b2c:	0107a583          	lw	a1,16(a5)
    3b30:	0147a603          	lw	a2,20(a5)
    3b34:	0187a683          	lw	a3,24(a5)
    3b38:	01c7a703          	lw	a4,28(a5)
    3b3c:	0207a783          	lw	a5,32(a5)
    3b40:	fa642823          	sw	t1,-80(s0)
    3b44:	fb142a23          	sw	a7,-76(s0)
    3b48:	fb042c23          	sw	a6,-72(s0)
    3b4c:	faa42e23          	sw	a0,-68(s0)
    3b50:	fcb42023          	sw	a1,-64(s0)
    3b54:	fcc42223          	sw	a2,-60(s0)
    3b58:	fcd42423          	sw	a3,-56(s0)
    3b5c:	fce42623          	sw	a4,-52(s0)
    3b60:	fcf42823          	sw	a5,-48(s0)
    3b64:	000307b7          	lui	a5,0x30
    3b68:	1fc78793          	add	a5,a5,508 # 301fc <__fini_array_end+0x2a9fc>
    3b6c:	0007a303          	lw	t1,0(a5)
    3b70:	0047a883          	lw	a7,4(a5)
    3b74:	0087a803          	lw	a6,8(a5)
    3b78:	00c7a503          	lw	a0,12(a5)
    3b7c:	0107a583          	lw	a1,16(a5)
    3b80:	0147a603          	lw	a2,20(a5)
    3b84:	0187a683          	lw	a3,24(a5)
    3b88:	01c7a703          	lw	a4,28(a5)
    3b8c:	0207a783          	lw	a5,32(a5)
    3b90:	f8642623          	sw	t1,-116(s0)
    3b94:	f9142823          	sw	a7,-112(s0)
    3b98:	f9042a23          	sw	a6,-108(s0)
    3b9c:	f8a42c23          	sw	a0,-104(s0)
    3ba0:	f8b42e23          	sw	a1,-100(s0)
    3ba4:	fac42023          	sw	a2,-96(s0)
    3ba8:	fad42223          	sw	a3,-92(s0)
    3bac:	fae42423          	sw	a4,-88(s0)
    3bb0:	faf42623          	sw	a5,-84(s0)
    3bb4:	000307b7          	lui	a5,0x30
    3bb8:	22078793          	add	a5,a5,544 # 30220 <__fini_array_end+0x2aa20>
    3bbc:	0007a303          	lw	t1,0(a5)
    3bc0:	0047a883          	lw	a7,4(a5)
    3bc4:	0087a803          	lw	a6,8(a5)
    3bc8:	00c7a503          	lw	a0,12(a5)
    3bcc:	0107a583          	lw	a1,16(a5)
    3bd0:	0147a603          	lw	a2,20(a5)
    3bd4:	0187a683          	lw	a3,24(a5)
    3bd8:	01c7a703          	lw	a4,28(a5)
    3bdc:	0207a783          	lw	a5,32(a5)
    3be0:	f6642423          	sw	t1,-152(s0)
    3be4:	f7142623          	sw	a7,-148(s0)
    3be8:	f7042823          	sw	a6,-144(s0)
    3bec:	f6a42a23          	sw	a0,-140(s0)
    3bf0:	f6b42c23          	sw	a1,-136(s0)
    3bf4:	f6c42e23          	sw	a2,-132(s0)
    3bf8:	f8d42023          	sw	a3,-128(s0)
    3bfc:	f8e42223          	sw	a4,-124(s0)
    3c00:	f8f42423          	sw	a5,-120(s0)
    3c04:	f4042223          	sw	zero,-188(s0)
    3c08:	f4042423          	sw	zero,-184(s0)
    3c0c:	f4042623          	sw	zero,-180(s0)
    3c10:	f4042823          	sw	zero,-176(s0)
    3c14:	f4042a23          	sw	zero,-172(s0)
    3c18:	f4042c23          	sw	zero,-168(s0)
    3c1c:	f4042e23          	sw	zero,-164(s0)
    3c20:	f6042023          	sw	zero,-160(s0)
    3c24:	f6042223          	sw	zero,-156(s0)
    3c28:	f2042023          	sw	zero,-224(s0)
    3c2c:	f2042223          	sw	zero,-220(s0)
    3c30:	f2042423          	sw	zero,-216(s0)
    3c34:	f2042623          	sw	zero,-212(s0)
    3c38:	f2042823          	sw	zero,-208(s0)
    3c3c:	f2042a23          	sw	zero,-204(s0)
    3c40:	f2042c23          	sw	zero,-200(s0)
    3c44:	f2042e23          	sw	zero,-196(s0)
    3c48:	f4042023          	sw	zero,-192(s0)
    3c4c:	000307b7          	lui	a5,0x30
    3c50:	15c78513          	add	a0,a5,348 # 3015c <__fini_array_end+0x2a95c>
    3c54:	488000ef          	jal	40dc <_Z10uart_printPKc>
    3c58:	fb040793          	add	a5,s0,-80
    3c5c:	fcf42a23          	sw	a5,-44(s0)
    3c60:	f8c40793          	add	a5,s0,-116
    3c64:	fcf42c23          	sw	a5,-40(s0)
    3c68:	f4440793          	add	a5,s0,-188
    3c6c:	fcf42e23          	sw	a5,-36(s0)
    3c70:	fd440793          	add	a5,s0,-44
    3c74:	00078513          	mv	a0,a5
    3c78:	a55fc0ef          	jal	6cc <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE_EDaOT_>
    3c7c:	00050793          	mv	a5,a0
    3c80:	fef407a3          	sb	a5,-17(s0)
    3c84:	000307b7          	lui	a5,0x30
    3c88:	19478513          	add	a0,a5,404 # 30194 <__fini_array_end+0x2a994>
    3c8c:	450000ef          	jal	40dc <_Z10uart_printPKc>
    3c90:	f6840793          	add	a5,s0,-152
    3c94:	fef42023          	sw	a5,-32(s0)
    3c98:	f8c40793          	add	a5,s0,-116
    3c9c:	fef42223          	sw	a5,-28(s0)
    3ca0:	f2040793          	add	a5,s0,-224
    3ca4:	fef42423          	sw	a5,-24(s0)
    3ca8:	fe040793          	add	a5,s0,-32
    3cac:	00078513          	mv	a0,a5
    3cb0:	b55fc0ef          	jal	804 <_Z14instrument_cpiIZ21cmd_matrix_multipliervEUlvE0_EDaOT_>
    3cb4:	00050793          	mv	a5,a0
    3cb8:	fef407a3          	sb	a5,-17(s0)
    3cbc:	000307b7          	lui	a5,0x30
    3cc0:	1c878513          	add	a0,a5,456 # 301c8 <__fini_array_end+0x2a9c8>
    3cc4:	418000ef          	jal	40dc <_Z10uart_printPKc>
    3cc8:	00000013          	nop
    3ccc:	0dc12083          	lw	ra,220(sp)
    3cd0:	0d812403          	lw	s0,216(sp)
    3cd4:	0e010113          	add	sp,sp,224
    3cd8:	00008067          	ret

00003cdc <_Z19fibonacci_iterativei>:
    3cdc:	fd010113          	add	sp,sp,-48
    3ce0:	02812623          	sw	s0,44(sp)
    3ce4:	03010413          	add	s0,sp,48
    3ce8:	fca42e23          	sw	a0,-36(s0)
    3cec:	fdc42703          	lw	a4,-36(s0)
    3cf0:	00100793          	li	a5,1
    3cf4:	00e7c663          	blt	a5,a4,3d00 <_Z19fibonacci_iterativei+0x24>
    3cf8:	fdc42783          	lw	a5,-36(s0)
    3cfc:	07c0006f          	j	3d78 <_Z19fibonacci_iterativei+0x9c>
    3d00:	fdc42703          	lw	a4,-36(s0)
    3d04:	02e00793          	li	a5,46
    3d08:	00e7c863          	blt	a5,a4,3d18 <_Z19fibonacci_iterativei+0x3c>
    3d0c:	fdc42783          	lw	a5,-36(s0)
    3d10:	0ff7f793          	zext.b	a5,a5
    3d14:	0080006f          	j	3d1c <_Z19fibonacci_iterativei+0x40>
    3d18:	02e00793          	li	a5,46
    3d1c:	fef40123          	sb	a5,-30(s0)
    3d20:	fe042623          	sw	zero,-20(s0)
    3d24:	fe042423          	sw	zero,-24(s0)
    3d28:	00100793          	li	a5,1
    3d2c:	fef42223          	sw	a5,-28(s0)
    3d30:	00100793          	li	a5,1
    3d34:	fef401a3          	sb	a5,-29(s0)
    3d38:	0300006f          	j	3d68 <_Z19fibonacci_iterativei+0x8c>
    3d3c:	fe842703          	lw	a4,-24(s0)
    3d40:	fe442783          	lw	a5,-28(s0)
    3d44:	00f707b3          	add	a5,a4,a5
    3d48:	fef42623          	sw	a5,-20(s0)
    3d4c:	fe442783          	lw	a5,-28(s0)
    3d50:	fef42423          	sw	a5,-24(s0)
    3d54:	fec42783          	lw	a5,-20(s0)
    3d58:	fef42223          	sw	a5,-28(s0)
    3d5c:	fe344783          	lbu	a5,-29(s0)
    3d60:	00178793          	add	a5,a5,1
    3d64:	fef401a3          	sb	a5,-29(s0)
    3d68:	fe344703          	lbu	a4,-29(s0)
    3d6c:	fe244783          	lbu	a5,-30(s0)
    3d70:	fcf766e3          	bltu	a4,a5,3d3c <_Z19fibonacci_iterativei+0x60>
    3d74:	fec42783          	lw	a5,-20(s0)
    3d78:	00078513          	mv	a0,a5
    3d7c:	02c12403          	lw	s0,44(sp)
    3d80:	03010113          	add	sp,sp,48
    3d84:	00008067          	ret

00003d88 <_Z19fibonacci_recursivei>:
    3d88:	fe010113          	add	sp,sp,-32
    3d8c:	00112e23          	sw	ra,28(sp)
    3d90:	00812c23          	sw	s0,24(sp)
    3d94:	00912a23          	sw	s1,20(sp)
    3d98:	02010413          	add	s0,sp,32
    3d9c:	fea42623          	sw	a0,-20(s0)
    3da0:	fec42703          	lw	a4,-20(s0)
    3da4:	00100793          	li	a5,1
    3da8:	00e7c663          	blt	a5,a4,3db4 <_Z19fibonacci_recursivei+0x2c>
    3dac:	fec42783          	lw	a5,-20(s0)
    3db0:	0300006f          	j	3de0 <_Z19fibonacci_recursivei+0x58>
    3db4:	fec42783          	lw	a5,-20(s0)
    3db8:	fff78793          	add	a5,a5,-1
    3dbc:	00078513          	mv	a0,a5
    3dc0:	fc9ff0ef          	jal	3d88 <_Z19fibonacci_recursivei>
    3dc4:	00050493          	mv	s1,a0
    3dc8:	fec42783          	lw	a5,-20(s0)
    3dcc:	ffe78793          	add	a5,a5,-2
    3dd0:	00078513          	mv	a0,a5
    3dd4:	fb5ff0ef          	jal	3d88 <_Z19fibonacci_recursivei>
    3dd8:	00050793          	mv	a5,a0
    3ddc:	00f487b3          	add	a5,s1,a5
    3de0:	00078513          	mv	a0,a5
    3de4:	01c12083          	lw	ra,28(sp)
    3de8:	01812403          	lw	s0,24(sp)
    3dec:	01412483          	lw	s1,20(sp)
    3df0:	02010113          	add	sp,sp,32
    3df4:	00008067          	ret

Disassembly of section .spi_uart:

00004000 <_Z9uart_getcb>:
    4000:	fd010113          	add	sp,sp,-48
    4004:	02812623          	sw	s0,44(sp)
    4008:	03010413          	add	s0,sp,48
    400c:	00050793          	mv	a5,a0
    4010:	fcf40fa3          	sb	a5,-33(s0)
    4014:	fe0407a3          	sb	zero,-17(s0)
    4018:	002017b7          	lui	a5,0x201
    401c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    4020:	0007c783          	lbu	a5,0(a5)
    4024:	fef407a3          	sb	a5,-17(s0)
    4028:	0340006f          	j	405c <_Z9uart_getcb+0x5c>
    402c:	002017b7          	lui	a5,0x201
    4030:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    4034:	0007c783          	lbu	a5,0(a5)
    4038:	fef40723          	sb	a5,-18(s0)
    403c:	fee44783          	lbu	a5,-18(s0)
    4040:	0027f793          	and	a5,a5,2
    4044:	00078c63          	beqz	a5,405c <_Z9uart_getcb+0x5c>
    4048:	002017b7          	lui	a5,0x201
    404c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
    4050:	0007c783          	lbu	a5,0(a5)
    4054:	fef407a3          	sb	a5,-17(s0)
    4058:	00c0006f          	j	4064 <_Z9uart_getcb+0x64>
    405c:	fdf44783          	lbu	a5,-33(s0)
    4060:	fc0796e3          	bnez	a5,402c <_Z9uart_getcb+0x2c>
    4064:	fef44783          	lbu	a5,-17(s0)
    4068:	00078513          	mv	a0,a5
    406c:	02c12403          	lw	s0,44(sp)
    4070:	03010113          	add	sp,sp,48
    4074:	00008067          	ret

00004078 <_Z9uart_putcc>:
    4078:	fd010113          	add	sp,sp,-48
    407c:	02812623          	sw	s0,44(sp)
    4080:	03010413          	add	s0,sp,48
    4084:	00050793          	mv	a5,a0
    4088:	fcf40fa3          	sb	a5,-33(s0)
    408c:	002017b7          	lui	a5,0x201
    4090:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    4094:	0007c783          	lbu	a5,0(a5)
    4098:	fef407a3          	sb	a5,-17(s0)
    409c:	002017b7          	lui	a5,0x201
    40a0:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
    40a4:	0007c783          	lbu	a5,0(a5)
    40a8:	fef40723          	sb	a5,-18(s0)
    40ac:	fee44783          	lbu	a5,-18(s0)
    40b0:	0017f793          	and	a5,a5,1
    40b4:	fe0784e3          	beqz	a5,409c <_Z9uart_putcc+0x24>
    40b8:	002017b7          	lui	a5,0x201
    40bc:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    40c0:	fdf44703          	lbu	a4,-33(s0)
    40c4:	00e78023          	sb	a4,0(a5)
    40c8:	00000013          	nop
    40cc:	00000013          	nop
    40d0:	02c12403          	lw	s0,44(sp)
    40d4:	03010113          	add	sp,sp,48
    40d8:	00008067          	ret

000040dc <_Z10uart_printPKc>:
    40dc:	fd010113          	add	sp,sp,-48
    40e0:	02112623          	sw	ra,44(sp)
    40e4:	02812423          	sw	s0,40(sp)
    40e8:	03010413          	add	s0,sp,48
    40ec:	fca42e23          	sw	a0,-36(s0)
    40f0:	fe042623          	sw	zero,-20(s0)
    40f4:	0400006f          	j	4134 <_Z10uart_printPKc+0x58>
    40f8:	fec42783          	lw	a5,-20(s0)
    40fc:	fdc42703          	lw	a4,-36(s0)
    4100:	00f707b3          	add	a5,a4,a5
    4104:	0007c783          	lbu	a5,0(a5)
    4108:	02078e63          	beqz	a5,4144 <_Z10uart_printPKc+0x68>
    410c:	fec42783          	lw	a5,-20(s0)
    4110:	fdc42703          	lw	a4,-36(s0)
    4114:	00f707b3          	add	a5,a4,a5
    4118:	0007c783          	lbu	a5,0(a5)
    411c:	00078513          	mv	a0,a5
    4120:	f59ff0ef          	jal	4078 <_Z9uart_putcc>
    4124:	00000013          	nop
    4128:	fec42783          	lw	a5,-20(s0)
    412c:	00178793          	add	a5,a5,1
    4130:	fef42623          	sw	a5,-20(s0)
    4134:	fec42703          	lw	a4,-20(s0)
    4138:	07f00793          	li	a5,127
    413c:	fae7dee3          	bge	a5,a4,40f8 <_Z10uart_printPKc+0x1c>
    4140:	0080006f          	j	4148 <_Z10uart_printPKc+0x6c>
    4144:	00000013          	nop
    4148:	00000013          	nop
    414c:	02c12083          	lw	ra,44(sp)
    4150:	02812403          	lw	s0,40(sp)
    4154:	03010113          	add	sp,sp,48
    4158:	00008067          	ret

0000415c <_Z11dump_resultx>:
    415c:	fc010113          	add	sp,sp,-64
    4160:	02112e23          	sw	ra,60(sp)
    4164:	02812c23          	sw	s0,56(sp)
    4168:	04010413          	add	s0,sp,64
    416c:	fca42423          	sw	a0,-56(s0)
    4170:	fcb42623          	sw	a1,-52(s0)
    4174:	fe042623          	sw	zero,-20(s0)
    4178:	0700006f          	j	41e8 <_Z11dump_resultx+0x8c>
    417c:	fec42683          	lw	a3,-20(s0)
    4180:	00369693          	sll	a3,a3,0x3
    4184:	fe068613          	add	a2,a3,-32
    4188:	00064c63          	bltz	a2,41a0 <_Z11dump_resultx+0x44>
    418c:	fcc42683          	lw	a3,-52(s0)
    4190:	40c6d733          	sra	a4,a3,a2
    4194:	fcc42683          	lw	a3,-52(s0)
    4198:	41f6d793          	sra	a5,a3,0x1f
    419c:	02c0006f          	j	41c8 <_Z11dump_resultx+0x6c>
    41a0:	fcc42603          	lw	a2,-52(s0)
    41a4:	00161593          	sll	a1,a2,0x1
    41a8:	01f00613          	li	a2,31
    41ac:	40d60633          	sub	a2,a2,a3
    41b0:	00c59633          	sll	a2,a1,a2
    41b4:	fc842583          	lw	a1,-56(s0)
    41b8:	00d5d733          	srl	a4,a1,a3
    41bc:	00e66733          	or	a4,a2,a4
    41c0:	fcc42603          	lw	a2,-52(s0)
    41c4:	40d657b3          	sra	a5,a2,a3
    41c8:	0ff77613          	zext.b	a2,a4
    41cc:	fec42683          	lw	a3,-20(s0)
    41d0:	ff068693          	add	a3,a3,-16
    41d4:	008686b3          	add	a3,a3,s0
    41d8:	fec68423          	sb	a2,-24(a3)
    41dc:	fec42683          	lw	a3,-20(s0)
    41e0:	00168693          	add	a3,a3,1
    41e4:	fed42623          	sw	a3,-20(s0)
    41e8:	fec42603          	lw	a2,-20(s0)
    41ec:	00700693          	li	a3,7
    41f0:	f8c6d6e3          	bge	a3,a2,417c <_Z11dump_resultx+0x20>
    41f4:	00800793          	li	a5,8
    41f8:	fef42423          	sw	a5,-24(s0)
    41fc:	0100006f          	j	420c <_Z11dump_resultx+0xb0>
    4200:	fe842783          	lw	a5,-24(s0)
    4204:	fff78793          	add	a5,a5,-1
    4208:	fef42423          	sw	a5,-24(s0)
    420c:	fe842703          	lw	a4,-24(s0)
    4210:	00100793          	li	a5,1
    4214:	00e7de63          	bge	a5,a4,4230 <_Z11dump_resultx+0xd4>
    4218:	fe842783          	lw	a5,-24(s0)
    421c:	fff78793          	add	a5,a5,-1
    4220:	ff078793          	add	a5,a5,-16
    4224:	008787b3          	add	a5,a5,s0
    4228:	fe87c783          	lbu	a5,-24(a5)
    422c:	fc078ae3          	beqz	a5,4200 <_Z11dump_resultx+0xa4>
    4230:	04400513          	li	a0,68
    4234:	e45ff0ef          	jal	4078 <_Z9uart_putcc>
    4238:	fe842783          	lw	a5,-24(s0)
    423c:	0ff7f793          	zext.b	a5,a5
    4240:	00078513          	mv	a0,a5
    4244:	e35ff0ef          	jal	4078 <_Z9uart_putcc>
    4248:	fe042223          	sw	zero,-28(s0)
    424c:	02c0006f          	j	4278 <_Z11dump_resultx+0x11c>
    4250:	fe442783          	lw	a5,-28(s0)
    4254:	ff078793          	add	a5,a5,-16
    4258:	008787b3          	add	a5,a5,s0
    425c:	fe87c783          	lbu	a5,-24(a5)
    4260:	00078513          	mv	a0,a5
    4264:	e15ff0ef          	jal	4078 <_Z9uart_putcc>
    4268:	00000013          	nop
    426c:	fe442783          	lw	a5,-28(s0)
    4270:	00178793          	add	a5,a5,1
    4274:	fef42223          	sw	a5,-28(s0)
    4278:	fe442703          	lw	a4,-28(s0)
    427c:	fe842783          	lw	a5,-24(s0)
    4280:	fcf748e3          	blt	a4,a5,4250 <_Z11dump_resultx+0xf4>
    4284:	00000013          	nop
    4288:	00000013          	nop
    428c:	03c12083          	lw	ra,60(sp)
    4290:	03812403          	lw	s0,56(sp)
    4294:	04010113          	add	sp,sp,64
    4298:	00008067          	ret

0000429c <_Z11dump_bufferPKci>:
    429c:	fd010113          	add	sp,sp,-48
    42a0:	02112623          	sw	ra,44(sp)
    42a4:	02812423          	sw	s0,40(sp)
    42a8:	03212223          	sw	s2,36(sp)
    42ac:	03312023          	sw	s3,32(sp)
    42b0:	03010413          	add	s0,sp,48
    42b4:	fca42e23          	sw	a0,-36(s0)
    42b8:	fcb42c23          	sw	a1,-40(s0)
    42bc:	fdc42783          	lw	a5,-36(s0)
    42c0:	fef42623          	sw	a5,-20(s0)
    42c4:	fe042423          	sw	zero,-24(s0)
    42c8:	0440006f          	j	430c <_Z11dump_bufferPKci+0x70>
    42cc:	fec42783          	lw	a5,-20(s0)
    42d0:	0007c783          	lbu	a5,0(a5)
    42d4:	fef403a3          	sb	a5,-25(s0)
    42d8:	fe744783          	lbu	a5,-25(s0)
    42dc:	0ff7f793          	zext.b	a5,a5
    42e0:	00078913          	mv	s2,a5
    42e4:	00000993          	li	s3,0
    42e8:	00090513          	mv	a0,s2
    42ec:	00098593          	mv	a1,s3
    42f0:	e6dff0ef          	jal	415c <_Z11dump_resultx>
    42f4:	fec42783          	lw	a5,-20(s0)
    42f8:	00178793          	add	a5,a5,1
    42fc:	fef42623          	sw	a5,-20(s0)
    4300:	fe842783          	lw	a5,-24(s0)
    4304:	00178793          	add	a5,a5,1
    4308:	fef42423          	sw	a5,-24(s0)
    430c:	fe842703          	lw	a4,-24(s0)
    4310:	fd842783          	lw	a5,-40(s0)
    4314:	faf74ce3          	blt	a4,a5,42cc <_Z11dump_bufferPKci+0x30>
    4318:	00000013          	nop
    431c:	00000013          	nop
    4320:	02c12083          	lw	ra,44(sp)
    4324:	02812403          	lw	s0,40(sp)
    4328:	02412903          	lw	s2,36(sp)
    432c:	02012983          	lw	s3,32(sp)
    4330:	03010113          	add	sp,sp,48
    4334:	00008067          	ret

00004338 <_Z16uart_print_int32i>:
    4338:	fc010113          	add	sp,sp,-64
    433c:	02112e23          	sw	ra,60(sp)
    4340:	02812c23          	sw	s0,56(sp)
    4344:	04010413          	add	s0,sp,64
    4348:	fca42623          	sw	a0,-52(s0)
    434c:	fe042623          	sw	zero,-20(s0)
    4350:	fe0405a3          	sb	zero,-21(s0)
    4354:	fcc42783          	lw	a5,-52(s0)
    4358:	0007dc63          	bgez	a5,4370 <_Z16uart_print_int32i+0x38>
    435c:	00100793          	li	a5,1
    4360:	fef405a3          	sb	a5,-21(s0)
    4364:	fcc42783          	lw	a5,-52(s0)
    4368:	40f007b3          	neg	a5,a5
    436c:	fcf42623          	sw	a5,-52(s0)
    4370:	fcc42783          	lw	a5,-52(s0)
    4374:	06079463          	bnez	a5,43dc <_Z16uart_print_int32i+0xa4>
    4378:	03000513          	li	a0,48
    437c:	cfdff0ef          	jal	4078 <_Z9uart_putcc>
    4380:	0c00006f          	j	4440 <_Z16uart_print_int32i+0x108>
    4384:	fcc42783          	lw	a5,-52(s0)
    4388:	00a00593          	li	a1,10
    438c:	00078513          	mv	a0,a5
    4390:	f0cfc0ef          	jal	a9c <__modsi3>
    4394:	00050793          	mv	a5,a0
    4398:	fef42223          	sw	a5,-28(s0)
    439c:	fe442783          	lw	a5,-28(s0)
    43a0:	0ff7f793          	zext.b	a5,a5
    43a4:	03078793          	add	a5,a5,48
    43a8:	0ff7f713          	zext.b	a4,a5
    43ac:	fec42783          	lw	a5,-20(s0)
    43b0:	00178693          	add	a3,a5,1
    43b4:	fed42623          	sw	a3,-20(s0)
    43b8:	ff078793          	add	a5,a5,-16
    43bc:	008787b3          	add	a5,a5,s0
    43c0:	fee78423          	sb	a4,-24(a5)
    43c4:	fcc42783          	lw	a5,-52(s0)
    43c8:	00a00593          	li	a1,10
    43cc:	00078513          	mv	a0,a5
    43d0:	e48fc0ef          	jal	a18 <__divsi3>
    43d4:	00050793          	mv	a5,a0
    43d8:	fcf42623          	sw	a5,-52(s0)
    43dc:	fcc42783          	lw	a5,-52(s0)
    43e0:	faf042e3          	bgtz	a5,4384 <_Z16uart_print_int32i+0x4c>
    43e4:	feb44783          	lbu	a5,-21(s0)
    43e8:	04078063          	beqz	a5,4428 <_Z16uart_print_int32i+0xf0>
    43ec:	fec42783          	lw	a5,-20(s0)
    43f0:	00178713          	add	a4,a5,1
    43f4:	fee42623          	sw	a4,-20(s0)
    43f8:	ff078793          	add	a5,a5,-16
    43fc:	008787b3          	add	a5,a5,s0
    4400:	02d00713          	li	a4,45
    4404:	fee78423          	sb	a4,-24(a5)
    4408:	0200006f          	j	4428 <_Z16uart_print_int32i+0xf0>
    440c:	fec42783          	lw	a5,-20(s0)
    4410:	ff078793          	add	a5,a5,-16
    4414:	008787b3          	add	a5,a5,s0
    4418:	fe87c783          	lbu	a5,-24(a5)
    441c:	00078513          	mv	a0,a5
    4420:	c59ff0ef          	jal	4078 <_Z9uart_putcc>
    4424:	00000013          	nop
    4428:	fec42783          	lw	a5,-20(s0)
    442c:	fff78713          	add	a4,a5,-1
    4430:	fee42623          	sw	a4,-20(s0)
    4434:	00f037b3          	snez	a5,a5
    4438:	0ff7f793          	zext.b	a5,a5
    443c:	fc0798e3          	bnez	a5,440c <_Z16uart_print_int32i+0xd4>
    4440:	03c12083          	lw	ra,60(sp)
    4444:	03812403          	lw	s0,56(sp)
    4448:	04010113          	add	sp,sp,64
    444c:	00008067          	ret

00004450 <_Z16uart_print_int64x>:
    4450:	fb010113          	add	sp,sp,-80
    4454:	04112623          	sw	ra,76(sp)
    4458:	04812423          	sw	s0,72(sp)
    445c:	05010413          	add	s0,sp,80
    4460:	faa42c23          	sw	a0,-72(s0)
    4464:	fab42e23          	sw	a1,-68(s0)
    4468:	fe042623          	sw	zero,-20(s0)
    446c:	fe0405a3          	sb	zero,-21(s0)
    4470:	fbc42783          	lw	a5,-68(s0)
    4474:	0207de63          	bgez	a5,44b0 <_Z16uart_print_int64x+0x60>
    4478:	00100793          	li	a5,1
    447c:	fef405a3          	sb	a5,-21(s0)
    4480:	00000613          	li	a2,0
    4484:	00000693          	li	a3,0
    4488:	fb842503          	lw	a0,-72(s0)
    448c:	fbc42583          	lw	a1,-68(s0)
    4490:	40a60733          	sub	a4,a2,a0
    4494:	00070813          	mv	a6,a4
    4498:	01063833          	sltu	a6,a2,a6
    449c:	40b687b3          	sub	a5,a3,a1
    44a0:	410786b3          	sub	a3,a5,a6
    44a4:	00068793          	mv	a5,a3
    44a8:	fae42c23          	sw	a4,-72(s0)
    44ac:	faf42e23          	sw	a5,-68(s0)
    44b0:	fb842783          	lw	a5,-72(s0)
    44b4:	fbc42703          	lw	a4,-68(s0)
    44b8:	00e7e7b3          	or	a5,a5,a4
    44bc:	08079663          	bnez	a5,4548 <_Z16uart_print_int64x+0xf8>
    44c0:	03000513          	li	a0,48
    44c4:	bb5ff0ef          	jal	4078 <_Z9uart_putcc>
    44c8:	0f40006f          	j	45bc <_Z16uart_print_int64x+0x16c>
    44cc:	fb842703          	lw	a4,-72(s0)
    44d0:	fbc42783          	lw	a5,-68(s0)
    44d4:	00a00613          	li	a2,10
    44d8:	00000693          	li	a3,0
    44dc:	00070513          	mv	a0,a4
    44e0:	00078593          	mv	a1,a5
    44e4:	d95fc0ef          	jal	1278 <__moddi3>
    44e8:	00050713          	mv	a4,a0
    44ec:	00058793          	mv	a5,a1
    44f0:	fee42223          	sw	a4,-28(s0)
    44f4:	fe442783          	lw	a5,-28(s0)
    44f8:	0ff7f793          	zext.b	a5,a5
    44fc:	03078793          	add	a5,a5,48
    4500:	0ff7f713          	zext.b	a4,a5
    4504:	fec42783          	lw	a5,-20(s0)
    4508:	00178693          	add	a3,a5,1
    450c:	fed42623          	sw	a3,-20(s0)
    4510:	ff078793          	add	a5,a5,-16
    4514:	008787b3          	add	a5,a5,s0
    4518:	fce78e23          	sb	a4,-36(a5)
    451c:	fb842703          	lw	a4,-72(s0)
    4520:	fbc42783          	lw	a5,-68(s0)
    4524:	00a00613          	li	a2,10
    4528:	00000693          	li	a3,0
    452c:	00070513          	mv	a0,a4
    4530:	00078593          	mv	a1,a5
    4534:	e74fc0ef          	jal	ba8 <__divdi3>
    4538:	00050713          	mv	a4,a0
    453c:	00058793          	mv	a5,a1
    4540:	fae42c23          	sw	a4,-72(s0)
    4544:	faf42e23          	sw	a5,-68(s0)
    4548:	fbc42783          	lw	a5,-68(s0)
    454c:	f8f040e3          	bgtz	a5,44cc <_Z16uart_print_int64x+0x7c>
    4550:	fbc42783          	lw	a5,-68(s0)
    4554:	00079663          	bnez	a5,4560 <_Z16uart_print_int64x+0x110>
    4558:	fb842783          	lw	a5,-72(s0)
    455c:	f60798e3          	bnez	a5,44cc <_Z16uart_print_int64x+0x7c>
    4560:	feb44783          	lbu	a5,-21(s0)
    4564:	04078063          	beqz	a5,45a4 <_Z16uart_print_int64x+0x154>
    4568:	fec42783          	lw	a5,-20(s0)
    456c:	00178713          	add	a4,a5,1
    4570:	fee42623          	sw	a4,-20(s0)
    4574:	ff078793          	add	a5,a5,-16
    4578:	008787b3          	add	a5,a5,s0
    457c:	02d00713          	li	a4,45
    4580:	fce78e23          	sb	a4,-36(a5)
    4584:	0200006f          	j	45a4 <_Z16uart_print_int64x+0x154>
    4588:	fec42783          	lw	a5,-20(s0)
    458c:	ff078793          	add	a5,a5,-16
    4590:	008787b3          	add	a5,a5,s0
    4594:	fdc7c783          	lbu	a5,-36(a5)
    4598:	00078513          	mv	a0,a5
    459c:	addff0ef          	jal	4078 <_Z9uart_putcc>
    45a0:	00000013          	nop
    45a4:	fec42783          	lw	a5,-20(s0)
    45a8:	fff78713          	add	a4,a5,-1
    45ac:	fee42623          	sw	a4,-20(s0)
    45b0:	00f037b3          	snez	a5,a5
    45b4:	0ff7f793          	zext.b	a5,a5
    45b8:	fc0798e3          	bnez	a5,4588 <_Z16uart_print_int64x+0x138>
    45bc:	04c12083          	lw	ra,76(sp)
    45c0:	04812403          	lw	s0,72(sp)
    45c4:	05010113          	add	sp,sp,80
    45c8:	00008067          	ret

000045cc <_Z12uart_getlinePci>:
    45cc:	fd010113          	add	sp,sp,-48
    45d0:	02112623          	sw	ra,44(sp)
    45d4:	02812423          	sw	s0,40(sp)
    45d8:	03010413          	add	s0,sp,48
    45dc:	fca42e23          	sw	a0,-36(s0)
    45e0:	fcb42c23          	sw	a1,-40(s0)
    45e4:	fe0405a3          	sb	zero,-21(s0)
    45e8:	fe042623          	sw	zero,-20(s0)
    45ec:	00100513          	li	a0,1
    45f0:	a11ff0ef          	jal	4000 <_Z9uart_getcb>
    45f4:	00050793          	mv	a5,a0
    45f8:	fef405a3          	sb	a5,-21(s0)
    45fc:	feb44703          	lbu	a4,-21(s0)
    4600:	00a00793          	li	a5,10
    4604:	00f70863          	beq	a4,a5,4614 <_Z12uart_getlinePci+0x48>
    4608:	feb44703          	lbu	a4,-21(s0)
    460c:	00d00793          	li	a5,13
    4610:	02f71463          	bne	a4,a5,4638 <_Z12uart_getlinePci+0x6c>
    4614:	fec42783          	lw	a5,-20(s0)
    4618:	fdc42703          	lw	a4,-36(s0)
    461c:	00f707b3          	add	a5,a4,a5
    4620:	00078023          	sb	zero,0(a5)
    4624:	000307b7          	lui	a5,0x30
    4628:	28878513          	add	a0,a5,648 # 30288 <__fini_array_end+0x2aa88>
    462c:	ab1ff0ef          	jal	40dc <_Z10uart_printPKc>
    4630:	fe042623          	sw	zero,-20(s0)
    4634:	0c80006f          	j	46fc <_Z12uart_getlinePci+0x130>
    4638:	feb44703          	lbu	a4,-21(s0)
    463c:	00800793          	li	a5,8
    4640:	00f70863          	beq	a4,a5,4650 <_Z12uart_getlinePci+0x84>
    4644:	feb44703          	lbu	a4,-21(s0)
    4648:	07f00793          	li	a5,127
    464c:	02f71863          	bne	a4,a5,467c <_Z12uart_getlinePci+0xb0>
    4650:	fec42783          	lw	a5,-20(s0)
    4654:	02f05063          	blez	a5,4674 <_Z12uart_getlinePci+0xa8>
    4658:	fec42783          	lw	a5,-20(s0)
    465c:	fff78793          	add	a5,a5,-1
    4660:	fef42623          	sw	a5,-20(s0)
    4664:	000307b7          	lui	a5,0x30
    4668:	29078513          	add	a0,a5,656 # 30290 <__fini_array_end+0x2aa90>
    466c:	a71ff0ef          	jal	40dc <_Z10uart_printPKc>
    4670:	0880006f          	j	46f8 <_Z12uart_getlinePci+0x12c>
    4674:	fe042623          	sw	zero,-20(s0)
    4678:	0800006f          	j	46f8 <_Z12uart_getlinePci+0x12c>
    467c:	fd842783          	lw	a5,-40(s0)
    4680:	fff78793          	add	a5,a5,-1
    4684:	fec42703          	lw	a4,-20(s0)
    4688:	f6f752e3          	bge	a4,a5,45ec <_Z12uart_getlinePci+0x20>
    468c:	feb44783          	lbu	a5,-21(s0)
    4690:	02078a63          	beqz	a5,46c4 <_Z12uart_getlinePci+0xf8>
    4694:	feb44703          	lbu	a4,-21(s0)
    4698:	fdc42683          	lw	a3,-36(s0)
    469c:	fec42783          	lw	a5,-20(s0)
    46a0:	00178613          	add	a2,a5,1
    46a4:	fec42623          	sw	a2,-20(s0)
    46a8:	00f687b3          	add	a5,a3,a5
    46ac:	00e78023          	sb	a4,0(a5)
    46b0:	feb44783          	lbu	a5,-21(s0)
    46b4:	00078513          	mv	a0,a5
    46b8:	9c1ff0ef          	jal	4078 <_Z9uart_putcc>
    46bc:	00000013          	nop
    46c0:	f2dff06f          	j	45ec <_Z12uart_getlinePci+0x20>
    46c4:	fd842783          	lw	a5,-40(s0)
    46c8:	fff78793          	add	a5,a5,-1
    46cc:	fdc42703          	lw	a4,-36(s0)
    46d0:	00f707b3          	add	a5,a4,a5
    46d4:	00078023          	sb	zero,0(a5)
    46d8:	000307b7          	lui	a5,0x30
    46dc:	29478513          	add	a0,a5,660 # 30294 <__fini_array_end+0x2aa94>
    46e0:	9fdff0ef          	jal	40dc <_Z10uart_printPKc>
    46e4:	fd842583          	lw	a1,-40(s0)
    46e8:	fdc42503          	lw	a0,-36(s0)
    46ec:	bb1ff0ef          	jal	429c <_Z11dump_bufferPKci>
    46f0:	fe042623          	sw	zero,-20(s0)
    46f4:	0080006f          	j	46fc <_Z12uart_getlinePci+0x130>
    46f8:	ef5ff06f          	j	45ec <_Z12uart_getlinePci+0x20>
    46fc:	00000013          	nop
    4700:	02c12083          	lw	ra,44(sp)
    4704:	02812403          	lw	s0,40(sp)
    4708:	03010113          	add	sp,sp,48
    470c:	00008067          	ret

00004710 <_Z6strcmpPKcS0_>:
    4710:	fd010113          	add	sp,sp,-48
    4714:	02812623          	sw	s0,44(sp)
    4718:	03010413          	add	s0,sp,48
    471c:	fca42e23          	sw	a0,-36(s0)
    4720:	fcb42c23          	sw	a1,-40(s0)
    4724:	fe042623          	sw	zero,-20(s0)
    4728:	fec42783          	lw	a5,-20(s0)
    472c:	fdc42703          	lw	a4,-36(s0)
    4730:	00f707b3          	add	a5,a4,a5
    4734:	0007c703          	lbu	a4,0(a5)
    4738:	fec42783          	lw	a5,-20(s0)
    473c:	fd842683          	lw	a3,-40(s0)
    4740:	00f687b3          	add	a5,a3,a5
    4744:	0007c783          	lbu	a5,0(a5)
    4748:	02f70863          	beq	a4,a5,4778 <_Z6strcmpPKcS0_+0x68>
    474c:	fec42783          	lw	a5,-20(s0)
    4750:	fdc42703          	lw	a4,-36(s0)
    4754:	00f707b3          	add	a5,a4,a5
    4758:	0007c783          	lbu	a5,0(a5)
    475c:	00078693          	mv	a3,a5
    4760:	fec42783          	lw	a5,-20(s0)
    4764:	fd842703          	lw	a4,-40(s0)
    4768:	00f707b3          	add	a5,a4,a5
    476c:	0007c783          	lbu	a5,0(a5)
    4770:	40f687b3          	sub	a5,a3,a5
    4774:	0300006f          	j	47a4 <_Z6strcmpPKcS0_+0x94>
    4778:	fec42783          	lw	a5,-20(s0)
    477c:	fdc42703          	lw	a4,-36(s0)
    4780:	00f707b3          	add	a5,a4,a5
    4784:	0007c783          	lbu	a5,0(a5)
    4788:	00079663          	bnez	a5,4794 <_Z6strcmpPKcS0_+0x84>
    478c:	00000793          	li	a5,0
    4790:	0140006f          	j	47a4 <_Z6strcmpPKcS0_+0x94>
    4794:	fec42783          	lw	a5,-20(s0)
    4798:	00178793          	add	a5,a5,1
    479c:	fef42623          	sw	a5,-20(s0)
    47a0:	f89ff06f          	j	4728 <_Z6strcmpPKcS0_+0x18>
    47a4:	00078513          	mv	a0,a5
    47a8:	02c12403          	lw	s0,44(sp)
    47ac:	03010113          	add	sp,sp,48
    47b0:	00008067          	ret

000047b4 <_Z7strncmpPKcS0_i>:
    47b4:	fd010113          	add	sp,sp,-48
    47b8:	02812623          	sw	s0,44(sp)
    47bc:	03010413          	add	s0,sp,48
    47c0:	fca42e23          	sw	a0,-36(s0)
    47c4:	fcb42c23          	sw	a1,-40(s0)
    47c8:	fcc42a23          	sw	a2,-44(s0)
    47cc:	fe042623          	sw	zero,-20(s0)
    47d0:	07c0006f          	j	484c <_Z7strncmpPKcS0_i+0x98>
    47d4:	fec42783          	lw	a5,-20(s0)
    47d8:	fdc42703          	lw	a4,-36(s0)
    47dc:	00f707b3          	add	a5,a4,a5
    47e0:	0007c703          	lbu	a4,0(a5)
    47e4:	fec42783          	lw	a5,-20(s0)
    47e8:	fd842683          	lw	a3,-40(s0)
    47ec:	00f687b3          	add	a5,a3,a5
    47f0:	0007c783          	lbu	a5,0(a5)
    47f4:	02f70863          	beq	a4,a5,4824 <_Z7strncmpPKcS0_i+0x70>
    47f8:	fec42783          	lw	a5,-20(s0)
    47fc:	fdc42703          	lw	a4,-36(s0)
    4800:	00f707b3          	add	a5,a4,a5
    4804:	0007c783          	lbu	a5,0(a5)
    4808:	00078693          	mv	a3,a5
    480c:	fec42783          	lw	a5,-20(s0)
    4810:	fd842703          	lw	a4,-40(s0)
    4814:	00f707b3          	add	a5,a4,a5
    4818:	0007c783          	lbu	a5,0(a5)
    481c:	40f687b3          	sub	a5,a3,a5
    4820:	03c0006f          	j	485c <_Z7strncmpPKcS0_i+0xa8>
    4824:	fec42783          	lw	a5,-20(s0)
    4828:	fdc42703          	lw	a4,-36(s0)
    482c:	00f707b3          	add	a5,a4,a5
    4830:	0007c783          	lbu	a5,0(a5)
    4834:	00079663          	bnez	a5,4840 <_Z7strncmpPKcS0_i+0x8c>
    4838:	00000793          	li	a5,0
    483c:	0200006f          	j	485c <_Z7strncmpPKcS0_i+0xa8>
    4840:	fec42783          	lw	a5,-20(s0)
    4844:	00178793          	add	a5,a5,1
    4848:	fef42623          	sw	a5,-20(s0)
    484c:	fec42703          	lw	a4,-20(s0)
    4850:	fd442783          	lw	a5,-44(s0)
    4854:	f8f740e3          	blt	a4,a5,47d4 <_Z7strncmpPKcS0_i+0x20>
    4858:	00000793          	li	a5,0
    485c:	00078513          	mv	a0,a5
    4860:	02c12403          	lw	s0,44(sp)
    4864:	03010113          	add	sp,sp,48
    4868:	00008067          	ret

0000486c <_Z15process_commandPcS_PVb>:
    486c:	fe010113          	add	sp,sp,-32
    4870:	00112e23          	sw	ra,28(sp)
    4874:	00812c23          	sw	s0,24(sp)
    4878:	02010413          	add	s0,sp,32
    487c:	fea42623          	sw	a0,-20(s0)
    4880:	feb42423          	sw	a1,-24(s0)
    4884:	fec42223          	sw	a2,-28(s0)
    4888:	fec42783          	lw	a5,-20(s0)
    488c:	0007c783          	lbu	a5,0(a5)
    4890:	0e078c63          	beqz	a5,4988 <_Z15process_commandPcS_PVb+0x11c>
    4894:	000307b7          	lui	a5,0x30
    4898:	2a878593          	add	a1,a5,680 # 302a8 <__fini_array_end+0x2aaa8>
    489c:	fec42503          	lw	a0,-20(s0)
    48a0:	e71ff0ef          	jal	4710 <_Z6strcmpPKcS0_>
    48a4:	00050793          	mv	a5,a0
    48a8:	0017b793          	seqz	a5,a5
    48ac:	0ff7f793          	zext.b	a5,a5
    48b0:	00078863          	beqz	a5,48c0 <_Z15process_commandPcS_PVb+0x54>
    48b4:	fe842503          	lw	a0,-24(s0)
    48b8:	f49fe0ef          	jal	3800 <_Z8cmd_echoPc>
    48bc:	0d00006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    48c0:	000307b7          	lui	a5,0x30
    48c4:	2b078593          	add	a1,a5,688 # 302b0 <__fini_array_end+0x2aab0>
    48c8:	fec42503          	lw	a0,-20(s0)
    48cc:	e45ff0ef          	jal	4710 <_Z6strcmpPKcS0_>
    48d0:	00050793          	mv	a5,a0
    48d4:	0017b793          	seqz	a5,a5
    48d8:	0ff7f793          	zext.b	a5,a5
    48dc:	00078863          	beqz	a5,48ec <_Z15process_commandPcS_PVb+0x80>
    48e0:	fe842503          	lw	a0,-24(s0)
    48e4:	f59fe0ef          	jal	383c <_Z8cmd_helpPc>
    48e8:	0a40006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    48ec:	000307b7          	lui	a5,0x30
    48f0:	2b878593          	add	a1,a5,696 # 302b8 <__fini_array_end+0x2aab8>
    48f4:	fec42503          	lw	a0,-20(s0)
    48f8:	e19ff0ef          	jal	4710 <_Z6strcmpPKcS0_>
    48fc:	00050793          	mv	a5,a0
    4900:	0017b793          	seqz	a5,a5
    4904:	0ff7f793          	zext.b	a5,a5
    4908:	00078663          	beqz	a5,4914 <_Z15process_commandPcS_PVb+0xa8>
    490c:	fedfe0ef          	jal	38f8 <_Z8cmd_freev>
    4910:	07c0006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    4914:	000307b7          	lui	a5,0x30
    4918:	2c078593          	add	a1,a5,704 # 302c0 <__fini_array_end+0x2aac0>
    491c:	fec42503          	lw	a0,-20(s0)
    4920:	df1ff0ef          	jal	4710 <_Z6strcmpPKcS0_>
    4924:	00050793          	mv	a5,a0
    4928:	0017b793          	seqz	a5,a5
    492c:	0ff7f793          	zext.b	a5,a5
    4930:	00078663          	beqz	a5,493c <_Z15process_commandPcS_PVb+0xd0>
    4934:	9c8ff0ef          	jal	3afc <_Z21cmd_matrix_multiplierv>
    4938:	0540006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    493c:	000307b7          	lui	a5,0x30
    4940:	2c878593          	add	a1,a5,712 # 302c8 <__fini_array_end+0x2aac8>
    4944:	fec42503          	lw	a0,-20(s0)
    4948:	dc9ff0ef          	jal	4710 <_Z6strcmpPKcS0_>
    494c:	00050793          	mv	a5,a0
    4950:	0017b793          	seqz	a5,a5
    4954:	0ff7f793          	zext.b	a5,a5
    4958:	00078a63          	beqz	a5,496c <_Z15process_commandPcS_PVb+0x100>
    495c:	fe442583          	lw	a1,-28(s0)
    4960:	fe842503          	lw	a0,-24(s0)
    4964:	f55fe0ef          	jal	38b8 <_Z8cmd_exitPcPVb>
    4968:	0240006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    496c:	000307b7          	lui	a5,0x30
    4970:	2d078513          	add	a0,a5,720 # 302d0 <__fini_array_end+0x2aad0>
    4974:	f68ff0ef          	jal	40dc <_Z10uart_printPKc>
    4978:	000307b7          	lui	a5,0x30
    497c:	2d478513          	add	a0,a5,724 # 302d4 <__fini_array_end+0x2aad4>
    4980:	f5cff0ef          	jal	40dc <_Z10uart_printPKc>
    4984:	0080006f          	j	498c <_Z15process_commandPcS_PVb+0x120>
    4988:	00000013          	nop
    498c:	01c12083          	lw	ra,28(sp)
    4990:	01812403          	lw	s0,24(sp)
    4994:	02010113          	add	sp,sp,32
    4998:	00008067          	ret

0000499c <_Z17cmd_arg_tokenizerPcS_S_ii>:
    499c:	fc010113          	add	sp,sp,-64
    49a0:	02812e23          	sw	s0,60(sp)
    49a4:	04010413          	add	s0,sp,64
    49a8:	fca42e23          	sw	a0,-36(s0)
    49ac:	fcb42c23          	sw	a1,-40(s0)
    49b0:	fcc42a23          	sw	a2,-44(s0)
    49b4:	fcd42823          	sw	a3,-48(s0)
    49b8:	fce42623          	sw	a4,-52(s0)
    49bc:	fe042623          	sw	zero,-20(s0)
    49c0:	fe042423          	sw	zero,-24(s0)
    49c4:	02c0006f          	j	49f0 <_Z17cmd_arg_tokenizerPcS_S_ii+0x54>
    49c8:	fdc42783          	lw	a5,-36(s0)
    49cc:	00178713          	add	a4,a5,1
    49d0:	fce42e23          	sw	a4,-36(s0)
    49d4:	0007c703          	lbu	a4,0(a5)
    49d8:	fd842683          	lw	a3,-40(s0)
    49dc:	fec42783          	lw	a5,-20(s0)
    49e0:	00178613          	add	a2,a5,1
    49e4:	fec42623          	sw	a2,-20(s0)
    49e8:	00f687b3          	add	a5,a3,a5
    49ec:	00e78023          	sb	a4,0(a5)
    49f0:	fdc42783          	lw	a5,-36(s0)
    49f4:	0007c783          	lbu	a5,0(a5)
    49f8:	02078263          	beqz	a5,4a1c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    49fc:	fdc42783          	lw	a5,-36(s0)
    4a00:	0007c703          	lbu	a4,0(a5)
    4a04:	02000793          	li	a5,32
    4a08:	00f70a63          	beq	a4,a5,4a1c <_Z17cmd_arg_tokenizerPcS_S_ii+0x80>
    4a0c:	fd042783          	lw	a5,-48(s0)
    4a10:	fff78793          	add	a5,a5,-1
    4a14:	fec42703          	lw	a4,-20(s0)
    4a18:	faf748e3          	blt	a4,a5,49c8 <_Z17cmd_arg_tokenizerPcS_S_ii+0x2c>
    4a1c:	fec42783          	lw	a5,-20(s0)
    4a20:	fd842703          	lw	a4,-40(s0)
    4a24:	00f707b3          	add	a5,a4,a5
    4a28:	00078023          	sb	zero,0(a5)
    4a2c:	0100006f          	j	4a3c <_Z17cmd_arg_tokenizerPcS_S_ii+0xa0>
    4a30:	fdc42783          	lw	a5,-36(s0)
    4a34:	00178793          	add	a5,a5,1
    4a38:	fcf42e23          	sw	a5,-36(s0)
    4a3c:	fdc42783          	lw	a5,-36(s0)
    4a40:	0007c703          	lbu	a4,0(a5)
    4a44:	02000793          	li	a5,32
    4a48:	fef704e3          	beq	a4,a5,4a30 <_Z17cmd_arg_tokenizerPcS_S_ii+0x94>
    4a4c:	02c0006f          	j	4a78 <_Z17cmd_arg_tokenizerPcS_S_ii+0xdc>
    4a50:	fdc42783          	lw	a5,-36(s0)
    4a54:	00178713          	add	a4,a5,1
    4a58:	fce42e23          	sw	a4,-36(s0)
    4a5c:	0007c703          	lbu	a4,0(a5)
    4a60:	fd442683          	lw	a3,-44(s0)
    4a64:	fe842783          	lw	a5,-24(s0)
    4a68:	00178613          	add	a2,a5,1
    4a6c:	fec42423          	sw	a2,-24(s0)
    4a70:	00f687b3          	add	a5,a3,a5
    4a74:	00e78023          	sb	a4,0(a5)
    4a78:	fdc42783          	lw	a5,-36(s0)
    4a7c:	0007c783          	lbu	a5,0(a5)
    4a80:	00078a63          	beqz	a5,4a94 <_Z17cmd_arg_tokenizerPcS_S_ii+0xf8>
    4a84:	fcc42783          	lw	a5,-52(s0)
    4a88:	fff78793          	add	a5,a5,-1
    4a8c:	fe842703          	lw	a4,-24(s0)
    4a90:	fcf740e3          	blt	a4,a5,4a50 <_Z17cmd_arg_tokenizerPcS_S_ii+0xb4>
    4a94:	fe842783          	lw	a5,-24(s0)
    4a98:	fd442703          	lw	a4,-44(s0)
    4a9c:	00f707b3          	add	a5,a4,a5
    4aa0:	00078023          	sb	zero,0(a5)
    4aa4:	00000013          	nop
    4aa8:	03c12403          	lw	s0,60(sp)
    4aac:	04010113          	add	sp,sp,64
    4ab0:	00008067          	ret
