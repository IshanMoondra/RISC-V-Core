
/out/echo_v1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000013          	nop
       4:	00040117          	auipc	sp,0x40
       8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
       c:	0003e197          	auipc	gp,0x3e
      10:	7f418193          	add	gp,gp,2036 # 3e800 <__bss_end>
      14:	00000013          	nop
      18:	060000ef          	jal	78 <_Z10soc_bootupv>
      1c:	278000ef          	jal	294 <main>
      20:	00050793          	mv	a5,a0
      24:	00078493          	mv	s1,a5
      28:	0003d7b7          	lui	a5,0x3d
      2c:	00078513          	mv	a0,a5
      30:	4ac070ef          	jal	74dc <_Z10uart_printPKc>
      34:	00048513          	mv	a0,s1
      38:	700070ef          	jal	7738 <_Z16uart_print_int32i>
      3c:	00000013          	nop
      40:	0003d7b7          	lui	a5,0x3d
      44:	01478513          	add	a0,a5,20 # 3d014 <_Z7strncmpPKcS0_i+0x35648>
      48:	494070ef          	jal	74dc <_Z10uart_printPKc>
      4c:	002017b7          	lui	a5,0x201
      50:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
      54:	0007a783          	lw	a5,0(a5)
      58:	00078513          	mv	a0,a5
      5c:	6dc070ef          	jal	7738 <_Z16uart_print_int32i>
      60:	00000013          	nop
      64:	0003d7b7          	lui	a5,0x3d
      68:	03078513          	add	a0,a5,48 # 3d030 <_Z7strncmpPKcS0_i+0x35664>
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
      cc:	0003d7b7          	lui	a5,0x3d
      d0:	03c78513          	add	a0,a5,60 # 3d03c <_Z7strncmpPKcS0_i+0x35670>
      d4:	408070ef          	jal	74dc <_Z10uart_printPKc>
      d8:	0e4000ef          	jal	1bc <_Z8cmd_freev>
      dc:	0003d7b7          	lui	a5,0x3d
      e0:	04878513          	add	a0,a5,72 # 3d048 <_Z7strncmpPKcS0_i+0x3567c>
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
     128:	0003d7b7          	lui	a5,0x3d
     12c:	06478513          	add	a0,a5,100 # 3d064 <_Z7strncmpPKcS0_i+0x35698>
     130:	3ac070ef          	jal	74dc <_Z10uart_printPKc>
     134:	0003d7b7          	lui	a5,0x3d
     138:	07478513          	add	a0,a5,116 # 3d074 <_Z7strncmpPKcS0_i+0x356a8>
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
     194:	0003e7b7          	lui	a5,0x3e
     198:	0007a783          	lw	a5,0(a5) # 3e000 <_ZL8heap_end>
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
     1e4:	0003d7b7          	lui	a5,0x3d
     1e8:	07c78513          	add	a0,a5,124 # 3d07c <_Z7strncmpPKcS0_i+0x356b0>
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
     218:	0003e7b7          	lui	a5,0x3e
     21c:	0007a783          	lw	a5,0(a5) # 3e000 <_ZL8heap_end>
     220:	fef42623          	sw	a5,-20(s0)
     224:	f31ff0ef          	jal	154 <_ZL6get_spv>
     228:	fea42423          	sw	a0,-24(s0)
     22c:	0003e7b7          	lui	a5,0x3e
     230:	0007a703          	lw	a4,0(a5) # 3e000 <_ZL8heap_end>
     234:	fdc42783          	lw	a5,-36(s0)
     238:	00279793          	sll	a5,a5,0x2
     23c:	00f707b3          	add	a5,a4,a5
     240:	00078713          	mv	a4,a5
     244:	fe842783          	lw	a5,-24(s0)
     248:	00f76c63          	bltu	a4,a5,260 <_Z5_sbrki+0x5c>
     24c:	0003d7b7          	lui	a5,0x3d
     250:	08c78513          	add	a0,a5,140 # 3d08c <_Z7strncmpPKcS0_i+0x356c0>
     254:	288070ef          	jal	74dc <_Z10uart_printPKc>
     258:	fff00793          	li	a5,-1
     25c:	0240006f          	j	280 <_Z5_sbrki+0x7c>
     260:	0003e7b7          	lui	a5,0x3e
     264:	0007a703          	lw	a4,0(a5) # 3e000 <_ZL8heap_end>
     268:	fdc42783          	lw	a5,-36(s0)
     26c:	00279793          	sll	a5,a5,0x2
     270:	00f70733          	add	a4,a4,a5
     274:	0003e7b7          	lui	a5,0x3e
     278:	00e7a023          	sw	a4,0(a5) # 3e000 <_ZL8heap_end>
     27c:	fec42783          	lw	a5,-20(s0)
     280:	00078513          	mv	a0,a5
     284:	02c12083          	lw	ra,44(sp)
     288:	02812403          	lw	s0,40(sp)
     28c:	03010113          	add	sp,sp,48
     290:	00008067          	ret

00000294 <main>:
     294:	f6010113          	add	sp,sp,-160
     298:	08112e23          	sw	ra,156(sp)
     29c:	08812c23          	sw	s0,152(sp)
     2a0:	0a010413          	add	s0,sp,160
     2a4:	00100793          	li	a5,1
     2a8:	fef40523          	sb	a5,-22(s0)
     2ac:	fe042623          	sw	zero,-20(s0)
     2b0:	fe0405a3          	sb	zero,-21(s0)
     2b4:	00000513          	li	a0,0
     2b8:	148070ef          	jal	7400 <_Z9uart_getcb>
     2bc:	00050793          	mv	a5,a0
     2c0:	fef405a3          	sb	a5,-21(s0)
     2c4:	00100513          	li	a0,1
     2c8:	138070ef          	jal	7400 <_Z9uart_getcb>
     2cc:	00050793          	mv	a5,a0
     2d0:	fef405a3          	sb	a5,-21(s0)
     2d4:	feb44703          	lbu	a4,-21(s0)
     2d8:	00a00793          	li	a5,10
     2dc:	00f70863          	beq	a4,a5,2ec <main+0x58>
     2e0:	feb44703          	lbu	a4,-21(s0)
     2e4:	00d00793          	li	a5,13
     2e8:	1af71263          	bne	a4,a5,48c <main+0x1f8>
     2ec:	fec42783          	lw	a5,-20(s0)
     2f0:	ff078793          	add	a5,a5,-16
     2f4:	008787b3          	add	a5,a5,s0
     2f8:	f6078c23          	sb	zero,-136(a5)
     2fc:	0003d7b7          	lui	a5,0x3d
     300:	07478513          	add	a0,a5,116 # 3d074 <_Z7strncmpPKcS0_i+0x356a8>
     304:	1d8070ef          	jal	74dc <_Z10uart_printPKc>
     308:	f6840713          	add	a4,s0,-152
     30c:	00400613          	li	a2,4
     310:	0003d7b7          	lui	a5,0x3d
     314:	09c78593          	add	a1,a5,156 # 3d09c <_Z7strncmpPKcS0_i+0x356d0>
     318:	00070513          	mv	a0,a4
     31c:	6b0070ef          	jal	79cc <_Z7strncmpPKcS0_i>
     320:	00050793          	mv	a5,a0
     324:	0017b793          	seqz	a5,a5
     328:	0ff7f793          	zext.b	a5,a5
     32c:	00078663          	beqz	a5,338 <main+0xa4>
     330:	e8dff0ef          	jal	1bc <_Z8cmd_freev>
     334:	1140006f          	j	448 <main+0x1b4>
     338:	f6840713          	add	a4,s0,-152
     33c:	00400613          	li	a2,4
     340:	0003d7b7          	lui	a5,0x3d
     344:	0a478593          	add	a1,a5,164 # 3d0a4 <_Z7strncmpPKcS0_i+0x356d8>
     348:	00070513          	mv	a0,a4
     34c:	680070ef          	jal	79cc <_Z7strncmpPKcS0_i>
     350:	00050793          	mv	a5,a0
     354:	0017b793          	seqz	a5,a5
     358:	0ff7f793          	zext.b	a5,a5
     35c:	04078863          	beqz	a5,3ac <main+0x118>
     360:	0003d7b7          	lui	a5,0x3d
     364:	0ac78513          	add	a0,a5,172 # 3d0ac <_Z7strncmpPKcS0_i+0x356e0>
     368:	174070ef          	jal	74dc <_Z10uart_printPKc>
     36c:	0003d7b7          	lui	a5,0x3d
     370:	0cc78513          	add	a0,a5,204 # 3d0cc <_Z7strncmpPKcS0_i+0x35700>
     374:	168070ef          	jal	74dc <_Z10uart_printPKc>
     378:	0003d7b7          	lui	a5,0x3d
     37c:	0dc78513          	add	a0,a5,220 # 3d0dc <_Z7strncmpPKcS0_i+0x35710>
     380:	15c070ef          	jal	74dc <_Z10uart_printPKc>
     384:	0003d7b7          	lui	a5,0x3d
     388:	0ec78513          	add	a0,a5,236 # 3d0ec <_Z7strncmpPKcS0_i+0x35720>
     38c:	150070ef          	jal	74dc <_Z10uart_printPKc>
     390:	0003d7b7          	lui	a5,0x3d
     394:	0fc78513          	add	a0,a5,252 # 3d0fc <_Z7strncmpPKcS0_i+0x35730>
     398:	144070ef          	jal	74dc <_Z10uart_printPKc>
     39c:	0003d7b7          	lui	a5,0x3d
     3a0:	10c78513          	add	a0,a5,268 # 3d10c <_Z7strncmpPKcS0_i+0x35740>
     3a4:	138070ef          	jal	74dc <_Z10uart_printPKc>
     3a8:	0a00006f          	j	448 <main+0x1b4>
     3ac:	f6840713          	add	a4,s0,-152
     3b0:	00500613          	li	a2,5
     3b4:	0003d7b7          	lui	a5,0x3d
     3b8:	13078593          	add	a1,a5,304 # 3d130 <_Z7strncmpPKcS0_i+0x35764>
     3bc:	00070513          	mv	a0,a4
     3c0:	60c070ef          	jal	79cc <_Z7strncmpPKcS0_i>
     3c4:	00050793          	mv	a5,a0
     3c8:	0017b793          	seqz	a5,a5
     3cc:	0ff7f793          	zext.b	a5,a5
     3d0:	00078c63          	beqz	a5,3e8 <main+0x154>
     3d4:	f6840793          	add	a5,s0,-152
     3d8:	00578793          	add	a5,a5,5
     3dc:	00078513          	mv	a0,a5
     3e0:	0fc070ef          	jal	74dc <_Z10uart_printPKc>
     3e4:	0640006f          	j	448 <main+0x1b4>
     3e8:	f6840713          	add	a4,s0,-152
     3ec:	00400613          	li	a2,4
     3f0:	0003d7b7          	lui	a5,0x3d
     3f4:	13878593          	add	a1,a5,312 # 3d138 <_Z7strncmpPKcS0_i+0x3576c>
     3f8:	00070513          	mv	a0,a4
     3fc:	5d0070ef          	jal	79cc <_Z7strncmpPKcS0_i>
     400:	00050793          	mv	a5,a0
     404:	0017b793          	seqz	a5,a5
     408:	0ff7f793          	zext.b	a5,a5
     40c:	00078c63          	beqz	a5,424 <main+0x190>
     410:	0003d7b7          	lui	a5,0x3d
     414:	14078513          	add	a0,a5,320 # 3d140 <_Z7strncmpPKcS0_i+0x35774>
     418:	0c4070ef          	jal	74dc <_Z10uart_printPKc>
     41c:	fe040523          	sb	zero,-22(s0)
     420:	0cc0006f          	j	4ec <main+0x258>
     424:	0003d7b7          	lui	a5,0x3d
     428:	15078513          	add	a0,a5,336 # 3d150 <_Z7strncmpPKcS0_i+0x35784>
     42c:	0b0070ef          	jal	74dc <_Z10uart_printPKc>
     430:	f6840793          	add	a5,s0,-152
     434:	00078513          	mv	a0,a5
     438:	0a4070ef          	jal	74dc <_Z10uart_printPKc>
     43c:	0003d7b7          	lui	a5,0x3d
     440:	16478513          	add	a0,a5,356 # 3d164 <_Z7strncmpPKcS0_i+0x35798>
     444:	098070ef          	jal	74dc <_Z10uart_printPKc>
     448:	fe042623          	sw	zero,-20(s0)
     44c:	0200006f          	j	46c <main+0x1d8>
     450:	fec42783          	lw	a5,-20(s0)
     454:	ff078793          	add	a5,a5,-16
     458:	008787b3          	add	a5,a5,s0
     45c:	f6078c23          	sb	zero,-136(a5)
     460:	fec42783          	lw	a5,-20(s0)
     464:	00178793          	add	a5,a5,1
     468:	fef42623          	sw	a5,-20(s0)
     46c:	fec42703          	lw	a4,-20(s0)
     470:	07e00793          	li	a5,126
     474:	fce7dee3          	bge	a5,a4,450 <main+0x1bc>
     478:	fe042623          	sw	zero,-20(s0)
     47c:	0003d7b7          	lui	a5,0x3d
     480:	07478513          	add	a0,a5,116 # 3d074 <_Z7strncmpPKcS0_i+0x356a8>
     484:	058070ef          	jal	74dc <_Z10uart_printPKc>
     488:	0600006f          	j	4e8 <main+0x254>
     48c:	fec42703          	lw	a4,-20(s0)
     490:	07e00793          	li	a5,126
     494:	02e7c663          	blt	a5,a4,4c0 <main+0x22c>
     498:	feb44783          	lbu	a5,-21(s0)
     49c:	e0078ce3          	beqz	a5,2b4 <main+0x20>
     4a0:	feb44703          	lbu	a4,-21(s0)
     4a4:	fec42783          	lw	a5,-20(s0)
     4a8:	00178693          	add	a3,a5,1
     4ac:	fed42623          	sw	a3,-20(s0)
     4b0:	ff078793          	add	a5,a5,-16
     4b4:	008787b3          	add	a5,a5,s0
     4b8:	f6e78c23          	sb	a4,-136(a5)
     4bc:	df9ff06f          	j	2b4 <main+0x20>
     4c0:	fe0403a3          	sb	zero,-25(s0)
     4c4:	0003d7b7          	lui	a5,0x3d
     4c8:	19478513          	add	a0,a5,404 # 3d194 <_Z7strncmpPKcS0_i+0x357c8>
     4cc:	010070ef          	jal	74dc <_Z10uart_printPKc>
     4d0:	f6840793          	add	a5,s0,-152
     4d4:	08000593          	li	a1,128
     4d8:	00078513          	mv	a0,a5
     4dc:	1c0070ef          	jal	769c <_Z11dump_bufferPKci>
     4e0:	fe042623          	sw	zero,-20(s0)
     4e4:	0080006f          	j	4ec <main+0x258>
     4e8:	dcdff06f          	j	2b4 <main+0x20>
     4ec:	fea44783          	lbu	a5,-22(s0)
     4f0:	0ff7f793          	zext.b	a5,a5
     4f4:	00078513          	mv	a0,a5
     4f8:	09c12083          	lw	ra,156(sp)
     4fc:	09812403          	lw	s0,152(sp)
     500:	0a010113          	add	sp,sp,160
     504:	00008067          	ret

00000508 <__divdi3>:
     508:	fc010113          	add	sp,sp,-64
     50c:	02912a23          	sw	s1,52(sp)
     510:	03412423          	sw	s4,40(sp)
     514:	02112e23          	sw	ra,60(sp)
     518:	02812c23          	sw	s0,56(sp)
     51c:	03212823          	sw	s2,48(sp)
     520:	03312623          	sw	s3,44(sp)
     524:	03512223          	sw	s5,36(sp)
     528:	03612023          	sw	s6,32(sp)
     52c:	01712e23          	sw	s7,28(sp)
     530:	01812c23          	sw	s8,24(sp)
     534:	01912a23          	sw	s9,20(sp)
     538:	01a12823          	sw	s10,16(sp)
     53c:	01b12623          	sw	s11,12(sp)
     540:	00050a13          	mv	s4,a0
     544:	00000493          	li	s1,0
     548:	0005dc63          	bgez	a1,560 <__divdi3+0x58>
     54c:	00a037b3          	snez	a5,a0
     550:	40b005b3          	neg	a1,a1
     554:	40f585b3          	sub	a1,a1,a5
     558:	40a00a33          	neg	s4,a0
     55c:	fff00493          	li	s1,-1
     560:	0006dc63          	bgez	a3,578 <__divdi3+0x70>
     564:	00c037b3          	snez	a5,a2
     568:	40d006b3          	neg	a3,a3
     56c:	fff4c493          	not	s1,s1
     570:	40f686b3          	sub	a3,a3,a5
     574:	40c00633          	neg	a2,a2
     578:	00060a93          	mv	s5,a2
     57c:	000a0993          	mv	s3,s4
     580:	00058913          	mv	s2,a1
     584:	38069c63          	bnez	a3,91c <__divdi3+0x414>
     588:	0003d697          	auipc	a3,0x3d
     58c:	c2468693          	add	a3,a3,-988 # 3d1ac <__clz_tab>
     590:	12c5f663          	bgeu	a1,a2,6bc <__divdi3+0x1b4>
     594:	000107b7          	lui	a5,0x10
     598:	10f67863          	bgeu	a2,a5,6a8 <__divdi3+0x1a0>
     59c:	10063793          	sltiu	a5,a2,256
     5a0:	0017c793          	xor	a5,a5,1
     5a4:	00379793          	sll	a5,a5,0x3
     5a8:	00f65733          	srl	a4,a2,a5
     5ac:	00e686b3          	add	a3,a3,a4
     5b0:	0006c703          	lbu	a4,0(a3)
     5b4:	02000693          	li	a3,32
     5b8:	00f707b3          	add	a5,a4,a5
     5bc:	40f68733          	sub	a4,a3,a5
     5c0:	00f68c63          	beq	a3,a5,5d8 <__divdi3+0xd0>
     5c4:	00e59933          	sll	s2,a1,a4
     5c8:	00fa57b3          	srl	a5,s4,a5
     5cc:	00e61ab3          	sll	s5,a2,a4
     5d0:	0127e933          	or	s2,a5,s2
     5d4:	00ea19b3          	sll	s3,s4,a4
     5d8:	010adb13          	srl	s6,s5,0x10
     5dc:	000b0593          	mv	a1,s6
     5e0:	00090513          	mv	a0,s2
     5e4:	010a9b93          	sll	s7,s5,0x10
     5e8:	281000ef          	jal	1068 <__hidden___udivsi3>
     5ec:	010bdb93          	srl	s7,s7,0x10
     5f0:	00050593          	mv	a1,a0
     5f4:	00050a13          	mv	s4,a0
     5f8:	000b8513          	mv	a0,s7
     5fc:	241000ef          	jal	103c <__mulsi3>
     600:	00050413          	mv	s0,a0
     604:	000b0593          	mv	a1,s6
     608:	00090513          	mv	a0,s2
     60c:	2a5000ef          	jal	10b0 <__umodsi3>
     610:	01051513          	sll	a0,a0,0x10
     614:	0109d713          	srl	a4,s3,0x10
     618:	00a76733          	or	a4,a4,a0
     61c:	000a0913          	mv	s2,s4
     620:	00877e63          	bgeu	a4,s0,63c <__divdi3+0x134>
     624:	00ea8733          	add	a4,s5,a4
     628:	fffa0913          	add	s2,s4,-1
     62c:	01576863          	bltu	a4,s5,63c <__divdi3+0x134>
     630:	00877663          	bgeu	a4,s0,63c <__divdi3+0x134>
     634:	ffea0913          	add	s2,s4,-2
     638:	01570733          	add	a4,a4,s5
     63c:	40870433          	sub	s0,a4,s0
     640:	000b0593          	mv	a1,s6
     644:	00040513          	mv	a0,s0
     648:	221000ef          	jal	1068 <__hidden___udivsi3>
     64c:	00050593          	mv	a1,a0
     650:	00050a13          	mv	s4,a0
     654:	000b8513          	mv	a0,s7
     658:	1e5000ef          	jal	103c <__mulsi3>
     65c:	00050b93          	mv	s7,a0
     660:	000b0593          	mv	a1,s6
     664:	00040513          	mv	a0,s0
     668:	249000ef          	jal	10b0 <__umodsi3>
     66c:	01099993          	sll	s3,s3,0x10
     670:	01051513          	sll	a0,a0,0x10
     674:	0109d993          	srl	s3,s3,0x10
     678:	00a9e9b3          	or	s3,s3,a0
     67c:	000a0713          	mv	a4,s4
     680:	0179fc63          	bgeu	s3,s7,698 <__divdi3+0x190>
     684:	013a89b3          	add	s3,s5,s3
     688:	fffa0713          	add	a4,s4,-1
     68c:	0159e663          	bltu	s3,s5,698 <__divdi3+0x190>
     690:	0179f463          	bgeu	s3,s7,698 <__divdi3+0x190>
     694:	ffea0713          	add	a4,s4,-2
     698:	01091793          	sll	a5,s2,0x10
     69c:	00e7e7b3          	or	a5,a5,a4
     6a0:	00000913          	li	s2,0
     6a4:	1200006f          	j	7c4 <__divdi3+0x2bc>
     6a8:	01000737          	lui	a4,0x1000
     6ac:	01000793          	li	a5,16
     6b0:	eee66ce3          	bltu	a2,a4,5a8 <__divdi3+0xa0>
     6b4:	01800793          	li	a5,24
     6b8:	ef1ff06f          	j	5a8 <__divdi3+0xa0>
     6bc:	00000713          	li	a4,0
     6c0:	00060c63          	beqz	a2,6d8 <__divdi3+0x1d0>
     6c4:	000107b7          	lui	a5,0x10
     6c8:	14f67a63          	bgeu	a2,a5,81c <__divdi3+0x314>
     6cc:	10063713          	sltiu	a4,a2,256
     6d0:	00174713          	xor	a4,a4,1
     6d4:	00371713          	sll	a4,a4,0x3
     6d8:	00e657b3          	srl	a5,a2,a4
     6dc:	00f686b3          	add	a3,a3,a5
     6e0:	0006c783          	lbu	a5,0(a3)
     6e4:	02000693          	li	a3,32
     6e8:	00e787b3          	add	a5,a5,a4
     6ec:	40f68733          	sub	a4,a3,a5
     6f0:	14f69063          	bne	a3,a5,830 <__divdi3+0x328>
     6f4:	40c58a33          	sub	s4,a1,a2
     6f8:	00100913          	li	s2,1
     6fc:	010adb13          	srl	s6,s5,0x10
     700:	000b0593          	mv	a1,s6
     704:	000a0513          	mv	a0,s4
     708:	010a9b93          	sll	s7,s5,0x10
     70c:	15d000ef          	jal	1068 <__hidden___udivsi3>
     710:	010bdb93          	srl	s7,s7,0x10
     714:	00050593          	mv	a1,a0
     718:	00050c93          	mv	s9,a0
     71c:	000b8513          	mv	a0,s7
     720:	11d000ef          	jal	103c <__mulsi3>
     724:	00050c13          	mv	s8,a0
     728:	000b0593          	mv	a1,s6
     72c:	000a0513          	mv	a0,s4
     730:	181000ef          	jal	10b0 <__umodsi3>
     734:	01051513          	sll	a0,a0,0x10
     738:	0109d713          	srl	a4,s3,0x10
     73c:	00a76733          	or	a4,a4,a0
     740:	000c8a13          	mv	s4,s9
     744:	01877e63          	bgeu	a4,s8,760 <__divdi3+0x258>
     748:	00ea8733          	add	a4,s5,a4
     74c:	fffc8a13          	add	s4,s9,-1
     750:	01576863          	bltu	a4,s5,760 <__divdi3+0x258>
     754:	01877663          	bgeu	a4,s8,760 <__divdi3+0x258>
     758:	ffec8a13          	add	s4,s9,-2
     75c:	01570733          	add	a4,a4,s5
     760:	41870433          	sub	s0,a4,s8
     764:	000b0593          	mv	a1,s6
     768:	00040513          	mv	a0,s0
     76c:	0fd000ef          	jal	1068 <__hidden___udivsi3>
     770:	00050593          	mv	a1,a0
     774:	00050c13          	mv	s8,a0
     778:	000b8513          	mv	a0,s7
     77c:	0c1000ef          	jal	103c <__mulsi3>
     780:	00050b93          	mv	s7,a0
     784:	000b0593          	mv	a1,s6
     788:	00040513          	mv	a0,s0
     78c:	125000ef          	jal	10b0 <__umodsi3>
     790:	01099993          	sll	s3,s3,0x10
     794:	01051513          	sll	a0,a0,0x10
     798:	0109d993          	srl	s3,s3,0x10
     79c:	00a9e9b3          	or	s3,s3,a0
     7a0:	000c0713          	mv	a4,s8
     7a4:	0179fc63          	bgeu	s3,s7,7bc <__divdi3+0x2b4>
     7a8:	013a89b3          	add	s3,s5,s3
     7ac:	fffc0713          	add	a4,s8,-1
     7b0:	0159e663          	bltu	s3,s5,7bc <__divdi3+0x2b4>
     7b4:	0179f463          	bgeu	s3,s7,7bc <__divdi3+0x2b4>
     7b8:	ffec0713          	add	a4,s8,-2
     7bc:	010a1793          	sll	a5,s4,0x10
     7c0:	00e7e7b3          	or	a5,a5,a4
     7c4:	00078513          	mv	a0,a5
     7c8:	00090593          	mv	a1,s2
     7cc:	00048a63          	beqz	s1,7e0 <__divdi3+0x2d8>
     7d0:	00f037b3          	snez	a5,a5
     7d4:	412005b3          	neg	a1,s2
     7d8:	40f585b3          	sub	a1,a1,a5
     7dc:	40a00533          	neg	a0,a0
     7e0:	03c12083          	lw	ra,60(sp)
     7e4:	03812403          	lw	s0,56(sp)
     7e8:	03412483          	lw	s1,52(sp)
     7ec:	03012903          	lw	s2,48(sp)
     7f0:	02c12983          	lw	s3,44(sp)
     7f4:	02812a03          	lw	s4,40(sp)
     7f8:	02412a83          	lw	s5,36(sp)
     7fc:	02012b03          	lw	s6,32(sp)
     800:	01c12b83          	lw	s7,28(sp)
     804:	01812c03          	lw	s8,24(sp)
     808:	01412c83          	lw	s9,20(sp)
     80c:	01012d03          	lw	s10,16(sp)
     810:	00c12d83          	lw	s11,12(sp)
     814:	04010113          	add	sp,sp,64
     818:	00008067          	ret
     81c:	010007b7          	lui	a5,0x1000
     820:	01000713          	li	a4,16
     824:	eaf66ae3          	bltu	a2,a5,6d8 <__divdi3+0x1d0>
     828:	01800713          	li	a4,24
     82c:	eadff06f          	j	6d8 <__divdi3+0x1d0>
     830:	00e61ab3          	sll	s5,a2,a4
     834:	00f5d933          	srl	s2,a1,a5
     838:	010adb93          	srl	s7,s5,0x10
     83c:	00e595b3          	sll	a1,a1,a4
     840:	00fa57b3          	srl	a5,s4,a5
     844:	00b7eb33          	or	s6,a5,a1
     848:	00ea19b3          	sll	s3,s4,a4
     84c:	000b8593          	mv	a1,s7
     850:	00090513          	mv	a0,s2
     854:	010a9a13          	sll	s4,s5,0x10
     858:	011000ef          	jal	1068 <__hidden___udivsi3>
     85c:	010a5a13          	srl	s4,s4,0x10
     860:	00050593          	mv	a1,a0
     864:	00050c13          	mv	s8,a0
     868:	000a0513          	mv	a0,s4
     86c:	7d0000ef          	jal	103c <__mulsi3>
     870:	00050413          	mv	s0,a0
     874:	000b8593          	mv	a1,s7
     878:	00090513          	mv	a0,s2
     87c:	035000ef          	jal	10b0 <__umodsi3>
     880:	01051513          	sll	a0,a0,0x10
     884:	010b5713          	srl	a4,s6,0x10
     888:	00a76733          	or	a4,a4,a0
     88c:	000c0913          	mv	s2,s8
     890:	00877e63          	bgeu	a4,s0,8ac <__divdi3+0x3a4>
     894:	00ea8733          	add	a4,s5,a4
     898:	fffc0913          	add	s2,s8,-1
     89c:	01576863          	bltu	a4,s5,8ac <__divdi3+0x3a4>
     8a0:	00877663          	bgeu	a4,s0,8ac <__divdi3+0x3a4>
     8a4:	ffec0913          	add	s2,s8,-2
     8a8:	01570733          	add	a4,a4,s5
     8ac:	40870433          	sub	s0,a4,s0
     8b0:	000b8593          	mv	a1,s7
     8b4:	00040513          	mv	a0,s0
     8b8:	7b0000ef          	jal	1068 <__hidden___udivsi3>
     8bc:	00050593          	mv	a1,a0
     8c0:	00050c13          	mv	s8,a0
     8c4:	000a0513          	mv	a0,s4
     8c8:	774000ef          	jal	103c <__mulsi3>
     8cc:	00050a13          	mv	s4,a0
     8d0:	000b8593          	mv	a1,s7
     8d4:	00040513          	mv	a0,s0
     8d8:	7d8000ef          	jal	10b0 <__umodsi3>
     8dc:	010b1793          	sll	a5,s6,0x10
     8e0:	01051513          	sll	a0,a0,0x10
     8e4:	0107d793          	srl	a5,a5,0x10
     8e8:	00a7e7b3          	or	a5,a5,a0
     8ec:	000c0713          	mv	a4,s8
     8f0:	0147fe63          	bgeu	a5,s4,90c <__divdi3+0x404>
     8f4:	00fa87b3          	add	a5,s5,a5
     8f8:	fffc0713          	add	a4,s8,-1
     8fc:	0157e863          	bltu	a5,s5,90c <__divdi3+0x404>
     900:	0147f663          	bgeu	a5,s4,90c <__divdi3+0x404>
     904:	ffec0713          	add	a4,s8,-2
     908:	015787b3          	add	a5,a5,s5
     90c:	01091913          	sll	s2,s2,0x10
     910:	41478a33          	sub	s4,a5,s4
     914:	00e96933          	or	s2,s2,a4
     918:	de5ff06f          	j	6fc <__divdi3+0x1f4>
     91c:	1ed5ee63          	bltu	a1,a3,b18 <__divdi3+0x610>
     920:	000107b7          	lui	a5,0x10
     924:	04f6f463          	bgeu	a3,a5,96c <__divdi3+0x464>
     928:	1006b713          	sltiu	a4,a3,256
     92c:	00174713          	xor	a4,a4,1
     930:	00371713          	sll	a4,a4,0x3
     934:	00e6d533          	srl	a0,a3,a4
     938:	0003d797          	auipc	a5,0x3d
     93c:	87478793          	add	a5,a5,-1932 # 3d1ac <__clz_tab>
     940:	00a787b3          	add	a5,a5,a0
     944:	0007c803          	lbu	a6,0(a5)
     948:	02000793          	li	a5,32
     94c:	00e80833          	add	a6,a6,a4
     950:	41078933          	sub	s2,a5,a6
     954:	03079663          	bne	a5,a6,980 <__divdi3+0x478>
     958:	00100793          	li	a5,1
     95c:	e6b6e4e3          	bltu	a3,a1,7c4 <__divdi3+0x2bc>
     960:	00ca37b3          	sltu	a5,s4,a2
     964:	0017c793          	xor	a5,a5,1
     968:	e5dff06f          	j	7c4 <__divdi3+0x2bc>
     96c:	010007b7          	lui	a5,0x1000
     970:	01000713          	li	a4,16
     974:	fcf6e0e3          	bltu	a3,a5,934 <__divdi3+0x42c>
     978:	01800713          	li	a4,24
     97c:	fb9ff06f          	j	934 <__divdi3+0x42c>
     980:	012696b3          	sll	a3,a3,s2
     984:	01065c33          	srl	s8,a2,a6
     988:	00dc6c33          	or	s8,s8,a3
     98c:	0105dab3          	srl	s5,a1,a6
     990:	010a5733          	srl	a4,s4,a6
     994:	012595b3          	sll	a1,a1,s2
     998:	010c5b13          	srl	s6,s8,0x10
     99c:	00b769b3          	or	s3,a4,a1
     9a0:	010c1b93          	sll	s7,s8,0x10
     9a4:	000b0593          	mv	a1,s6
     9a8:	000a8513          	mv	a0,s5
     9ac:	01261433          	sll	s0,a2,s2
     9b0:	010bdb93          	srl	s7,s7,0x10
     9b4:	6b4000ef          	jal	1068 <__hidden___udivsi3>
     9b8:	00050593          	mv	a1,a0
     9bc:	00050d93          	mv	s11,a0
     9c0:	000b8513          	mv	a0,s7
     9c4:	678000ef          	jal	103c <__mulsi3>
     9c8:	00050d13          	mv	s10,a0
     9cc:	000b0593          	mv	a1,s6
     9d0:	000a8513          	mv	a0,s5
     9d4:	6dc000ef          	jal	10b0 <__umodsi3>
     9d8:	01051513          	sll	a0,a0,0x10
     9dc:	0109d693          	srl	a3,s3,0x10
     9e0:	00a6e6b3          	or	a3,a3,a0
     9e4:	000d8c93          	mv	s9,s11
     9e8:	01a6fe63          	bgeu	a3,s10,a04 <__divdi3+0x4fc>
     9ec:	00dc06b3          	add	a3,s8,a3
     9f0:	fffd8c93          	add	s9,s11,-1
     9f4:	0186e863          	bltu	a3,s8,a04 <__divdi3+0x4fc>
     9f8:	01a6f663          	bgeu	a3,s10,a04 <__divdi3+0x4fc>
     9fc:	ffed8c93          	add	s9,s11,-2
     a00:	018686b3          	add	a3,a3,s8
     a04:	41a68ab3          	sub	s5,a3,s10
     a08:	000b0593          	mv	a1,s6
     a0c:	000a8513          	mv	a0,s5
     a10:	658000ef          	jal	1068 <__hidden___udivsi3>
     a14:	00050593          	mv	a1,a0
     a18:	00050d13          	mv	s10,a0
     a1c:	000b8513          	mv	a0,s7
     a20:	61c000ef          	jal	103c <__mulsi3>
     a24:	00050b93          	mv	s7,a0
     a28:	000b0593          	mv	a1,s6
     a2c:	000a8513          	mv	a0,s5
     a30:	680000ef          	jal	10b0 <__umodsi3>
     a34:	01099713          	sll	a4,s3,0x10
     a38:	01051513          	sll	a0,a0,0x10
     a3c:	01075713          	srl	a4,a4,0x10
     a40:	00a76733          	or	a4,a4,a0
     a44:	000d0693          	mv	a3,s10
     a48:	01777e63          	bgeu	a4,s7,a64 <__divdi3+0x55c>
     a4c:	00ec0733          	add	a4,s8,a4
     a50:	fffd0693          	add	a3,s10,-1
     a54:	01876863          	bltu	a4,s8,a64 <__divdi3+0x55c>
     a58:	01777663          	bgeu	a4,s7,a64 <__divdi3+0x55c>
     a5c:	ffed0693          	add	a3,s10,-2
     a60:	01870733          	add	a4,a4,s8
     a64:	010c9793          	sll	a5,s9,0x10
     a68:	00010e37          	lui	t3,0x10
     a6c:	00d7e7b3          	or	a5,a5,a3
     a70:	fffe0313          	add	t1,t3,-1 # ffff <_Z7strncmpPKcS0_i+0x8633>
     a74:	0067f8b3          	and	a7,a5,t1
     a78:	00647333          	and	t1,s0,t1
     a7c:	41770733          	sub	a4,a4,s7
     a80:	0107de93          	srl	t4,a5,0x10
     a84:	01045413          	srl	s0,s0,0x10
     a88:	00088513          	mv	a0,a7
     a8c:	00030593          	mv	a1,t1
     a90:	5ac000ef          	jal	103c <__mulsi3>
     a94:	00050813          	mv	a6,a0
     a98:	00040593          	mv	a1,s0
     a9c:	00088513          	mv	a0,a7
     aa0:	59c000ef          	jal	103c <__mulsi3>
     aa4:	00050893          	mv	a7,a0
     aa8:	00030593          	mv	a1,t1
     aac:	000e8513          	mv	a0,t4
     ab0:	58c000ef          	jal	103c <__mulsi3>
     ab4:	00050313          	mv	t1,a0
     ab8:	00040593          	mv	a1,s0
     abc:	000e8513          	mv	a0,t4
     ac0:	57c000ef          	jal	103c <__mulsi3>
     ac4:	01085693          	srl	a3,a6,0x10
     ac8:	006888b3          	add	a7,a7,t1
     acc:	011686b3          	add	a3,a3,a7
     ad0:	00050613          	mv	a2,a0
     ad4:	0066f463          	bgeu	a3,t1,adc <__divdi3+0x5d4>
     ad8:	01c50633          	add	a2,a0,t3
     adc:	0106d593          	srl	a1,a3,0x10
     ae0:	00c58633          	add	a2,a1,a2
     ae4:	02c76663          	bltu	a4,a2,b10 <__divdi3+0x608>
     ae8:	bac71ce3          	bne	a4,a2,6a0 <__divdi3+0x198>
     aec:	00010637          	lui	a2,0x10
     af0:	fff60613          	add	a2,a2,-1 # ffff <_Z7strncmpPKcS0_i+0x8633>
     af4:	00c6f6b3          	and	a3,a3,a2
     af8:	01069693          	sll	a3,a3,0x10
     afc:	00c87833          	and	a6,a6,a2
     b00:	012a1733          	sll	a4,s4,s2
     b04:	01068533          	add	a0,a3,a6
     b08:	00000913          	li	s2,0
     b0c:	caa77ce3          	bgeu	a4,a0,7c4 <__divdi3+0x2bc>
     b10:	fff78793          	add	a5,a5,-1 # ffffff <GET_WATCHDOG_LOW+0xdfefbf>
     b14:	b8dff06f          	j	6a0 <__divdi3+0x198>
     b18:	00000913          	li	s2,0
     b1c:	00000793          	li	a5,0
     b20:	ca5ff06f          	j	7c4 <__divdi3+0x2bc>

00000b24 <__moddi3>:
     b24:	fc010113          	add	sp,sp,-64
     b28:	02912a23          	sw	s1,52(sp)
     b2c:	02112e23          	sw	ra,60(sp)
     b30:	02812c23          	sw	s0,56(sp)
     b34:	03212823          	sw	s2,48(sp)
     b38:	03312623          	sw	s3,44(sp)
     b3c:	03412423          	sw	s4,40(sp)
     b40:	03512223          	sw	s5,36(sp)
     b44:	03612023          	sw	s6,32(sp)
     b48:	01712e23          	sw	s7,28(sp)
     b4c:	01812c23          	sw	s8,24(sp)
     b50:	01912a23          	sw	s9,20(sp)
     b54:	01a12823          	sw	s10,16(sp)
     b58:	01b12623          	sw	s11,12(sp)
     b5c:	00000493          	li	s1,0
     b60:	0005dc63          	bgez	a1,b78 <__moddi3+0x54>
     b64:	00a037b3          	snez	a5,a0
     b68:	40b005b3          	neg	a1,a1
     b6c:	40f585b3          	sub	a1,a1,a5
     b70:	40a00533          	neg	a0,a0
     b74:	fff00493          	li	s1,-1
     b78:	0006da63          	bgez	a3,b8c <__moddi3+0x68>
     b7c:	00c037b3          	snez	a5,a2
     b80:	40d006b3          	neg	a3,a3
     b84:	40f686b3          	sub	a3,a3,a5
     b88:	40c00633          	neg	a2,a2
     b8c:	00060a13          	mv	s4,a2
     b90:	00050413          	mv	s0,a0
     b94:	00058913          	mv	s2,a1
     b98:	26069663          	bnez	a3,e04 <__moddi3+0x2e0>
     b9c:	0003c697          	auipc	a3,0x3c
     ba0:	61068693          	add	a3,a3,1552 # 3d1ac <__clz_tab>
     ba4:	14c5fa63          	bgeu	a1,a2,cf8 <__moddi3+0x1d4>
     ba8:	000107b7          	lui	a5,0x10
     bac:	12f67c63          	bgeu	a2,a5,ce4 <__moddi3+0x1c0>
     bb0:	10063793          	sltiu	a5,a2,256
     bb4:	0017c793          	xor	a5,a5,1
     bb8:	00379793          	sll	a5,a5,0x3
     bbc:	00f65733          	srl	a4,a2,a5
     bc0:	00e686b3          	add	a3,a3,a4
     bc4:	0006c703          	lbu	a4,0(a3)
     bc8:	00f707b3          	add	a5,a4,a5
     bcc:	02000713          	li	a4,32
     bd0:	40f709b3          	sub	s3,a4,a5
     bd4:	00f70c63          	beq	a4,a5,bec <__moddi3+0xc8>
     bd8:	013595b3          	sll	a1,a1,s3
     bdc:	00f557b3          	srl	a5,a0,a5
     be0:	01361a33          	sll	s4,a2,s3
     be4:	00b7e933          	or	s2,a5,a1
     be8:	01351433          	sll	s0,a0,s3
     bec:	010a5b13          	srl	s6,s4,0x10
     bf0:	000b0593          	mv	a1,s6
     bf4:	010a1b93          	sll	s7,s4,0x10
     bf8:	00090513          	mv	a0,s2
     bfc:	46c000ef          	jal	1068 <__hidden___udivsi3>
     c00:	010bdb93          	srl	s7,s7,0x10
     c04:	000b8593          	mv	a1,s7
     c08:	434000ef          	jal	103c <__mulsi3>
     c0c:	00050a93          	mv	s5,a0
     c10:	000b0593          	mv	a1,s6
     c14:	00090513          	mv	a0,s2
     c18:	498000ef          	jal	10b0 <__umodsi3>
     c1c:	01051513          	sll	a0,a0,0x10
     c20:	01045793          	srl	a5,s0,0x10
     c24:	00a7e7b3          	or	a5,a5,a0
     c28:	0157fa63          	bgeu	a5,s5,c3c <__moddi3+0x118>
     c2c:	00fa07b3          	add	a5,s4,a5
     c30:	0147e663          	bltu	a5,s4,c3c <__moddi3+0x118>
     c34:	0157f463          	bgeu	a5,s5,c3c <__moddi3+0x118>
     c38:	014787b3          	add	a5,a5,s4
     c3c:	41578933          	sub	s2,a5,s5
     c40:	000b0593          	mv	a1,s6
     c44:	00090513          	mv	a0,s2
     c48:	420000ef          	jal	1068 <__hidden___udivsi3>
     c4c:	000b8593          	mv	a1,s7
     c50:	3ec000ef          	jal	103c <__mulsi3>
     c54:	00050a93          	mv	s5,a0
     c58:	000b0593          	mv	a1,s6
     c5c:	00090513          	mv	a0,s2
     c60:	450000ef          	jal	10b0 <__umodsi3>
     c64:	01041413          	sll	s0,s0,0x10
     c68:	01051513          	sll	a0,a0,0x10
     c6c:	01045413          	srl	s0,s0,0x10
     c70:	00a46433          	or	s0,s0,a0
     c74:	01547a63          	bgeu	s0,s5,c88 <__moddi3+0x164>
     c78:	008a0433          	add	s0,s4,s0
     c7c:	01446663          	bltu	s0,s4,c88 <__moddi3+0x164>
     c80:	01547463          	bgeu	s0,s5,c88 <__moddi3+0x164>
     c84:	01440433          	add	s0,s0,s4
     c88:	41540433          	sub	s0,s0,s5
     c8c:	01345533          	srl	a0,s0,s3
     c90:	00000593          	li	a1,0
     c94:	00048a63          	beqz	s1,ca8 <__moddi3+0x184>
     c98:	00a037b3          	snez	a5,a0
     c9c:	40b005b3          	neg	a1,a1
     ca0:	40f585b3          	sub	a1,a1,a5
     ca4:	40a00533          	neg	a0,a0
     ca8:	03c12083          	lw	ra,60(sp)
     cac:	03812403          	lw	s0,56(sp)
     cb0:	03412483          	lw	s1,52(sp)
     cb4:	03012903          	lw	s2,48(sp)
     cb8:	02c12983          	lw	s3,44(sp)
     cbc:	02812a03          	lw	s4,40(sp)
     cc0:	02412a83          	lw	s5,36(sp)
     cc4:	02012b03          	lw	s6,32(sp)
     cc8:	01c12b83          	lw	s7,28(sp)
     ccc:	01812c03          	lw	s8,24(sp)
     cd0:	01412c83          	lw	s9,20(sp)
     cd4:	01012d03          	lw	s10,16(sp)
     cd8:	00c12d83          	lw	s11,12(sp)
     cdc:	04010113          	add	sp,sp,64
     ce0:	00008067          	ret
     ce4:	01000737          	lui	a4,0x1000
     ce8:	01000793          	li	a5,16
     cec:	ece668e3          	bltu	a2,a4,bbc <__moddi3+0x98>
     cf0:	01800793          	li	a5,24
     cf4:	ec9ff06f          	j	bbc <__moddi3+0x98>
     cf8:	00000713          	li	a4,0
     cfc:	00060c63          	beqz	a2,d14 <__moddi3+0x1f0>
     d00:	000107b7          	lui	a5,0x10
     d04:	0ef67663          	bgeu	a2,a5,df0 <__moddi3+0x2cc>
     d08:	10063713          	sltiu	a4,a2,256
     d0c:	00174713          	xor	a4,a4,1
     d10:	00371713          	sll	a4,a4,0x3
     d14:	00e657b3          	srl	a5,a2,a4
     d18:	00f686b3          	add	a3,a3,a5
     d1c:	0006c783          	lbu	a5,0(a3)
     d20:	40c58933          	sub	s2,a1,a2
     d24:	00e787b3          	add	a5,a5,a4
     d28:	02000713          	li	a4,32
     d2c:	40f709b3          	sub	s3,a4,a5
     d30:	eaf70ee3          	beq	a4,a5,bec <__moddi3+0xc8>
     d34:	01361a33          	sll	s4,a2,s3
     d38:	00f5d933          	srl	s2,a1,a5
     d3c:	010a5b93          	srl	s7,s4,0x10
     d40:	00f557b3          	srl	a5,a0,a5
     d44:	013595b3          	sll	a1,a1,s3
     d48:	00b7eab3          	or	s5,a5,a1
     d4c:	01351433          	sll	s0,a0,s3
     d50:	000b8593          	mv	a1,s7
     d54:	010a1b13          	sll	s6,s4,0x10
     d58:	00090513          	mv	a0,s2
     d5c:	30c000ef          	jal	1068 <__hidden___udivsi3>
     d60:	010b5b13          	srl	s6,s6,0x10
     d64:	000b0593          	mv	a1,s6
     d68:	2d4000ef          	jal	103c <__mulsi3>
     d6c:	00050c13          	mv	s8,a0
     d70:	000b8593          	mv	a1,s7
     d74:	00090513          	mv	a0,s2
     d78:	338000ef          	jal	10b0 <__umodsi3>
     d7c:	01051513          	sll	a0,a0,0x10
     d80:	010ad713          	srl	a4,s5,0x10
     d84:	00a76733          	or	a4,a4,a0
     d88:	01877a63          	bgeu	a4,s8,d9c <__moddi3+0x278>
     d8c:	00ea0733          	add	a4,s4,a4
     d90:	01476663          	bltu	a4,s4,d9c <__moddi3+0x278>
     d94:	01877463          	bgeu	a4,s8,d9c <__moddi3+0x278>
     d98:	01470733          	add	a4,a4,s4
     d9c:	41870c33          	sub	s8,a4,s8
     da0:	000b8593          	mv	a1,s7
     da4:	000c0513          	mv	a0,s8
     da8:	2c0000ef          	jal	1068 <__hidden___udivsi3>
     dac:	000b0593          	mv	a1,s6
     db0:	28c000ef          	jal	103c <__mulsi3>
     db4:	00050b13          	mv	s6,a0
     db8:	000b8593          	mv	a1,s7
     dbc:	000c0513          	mv	a0,s8
     dc0:	2f0000ef          	jal	10b0 <__umodsi3>
     dc4:	010a9793          	sll	a5,s5,0x10
     dc8:	01051513          	sll	a0,a0,0x10
     dcc:	0107d793          	srl	a5,a5,0x10
     dd0:	00a7e7b3          	or	a5,a5,a0
     dd4:	0167fa63          	bgeu	a5,s6,de8 <__moddi3+0x2c4>
     dd8:	00fa07b3          	add	a5,s4,a5
     ddc:	0147e663          	bltu	a5,s4,de8 <__moddi3+0x2c4>
     de0:	0167f463          	bgeu	a5,s6,de8 <__moddi3+0x2c4>
     de4:	014787b3          	add	a5,a5,s4
     de8:	41678933          	sub	s2,a5,s6
     dec:	e01ff06f          	j	bec <__moddi3+0xc8>
     df0:	010007b7          	lui	a5,0x1000
     df4:	01000713          	li	a4,16
     df8:	f0f66ee3          	bltu	a2,a5,d14 <__moddi3+0x1f0>
     dfc:	01800713          	li	a4,24
     e00:	f15ff06f          	j	d14 <__moddi3+0x1f0>
     e04:	e8d5e8e3          	bltu	a1,a3,c94 <__moddi3+0x170>
     e08:	000107b7          	lui	a5,0x10
     e0c:	04f6fe63          	bgeu	a3,a5,e68 <__moddi3+0x344>
     e10:	1006b793          	sltiu	a5,a3,256
     e14:	0017c793          	xor	a5,a5,1
     e18:	00379793          	sll	a5,a5,0x3
     e1c:	00f6d833          	srl	a6,a3,a5
     e20:	0003c717          	auipc	a4,0x3c
     e24:	38c70713          	add	a4,a4,908 # 3d1ac <__clz_tab>
     e28:	01070733          	add	a4,a4,a6
     e2c:	00074a03          	lbu	s4,0(a4)
     e30:	00fa0a33          	add	s4,s4,a5
     e34:	02000793          	li	a5,32
     e38:	414789b3          	sub	s3,a5,s4
     e3c:	05479063          	bne	a5,s4,e7c <__moddi3+0x358>
     e40:	00b6e463          	bltu	a3,a1,e48 <__moddi3+0x324>
     e44:	00c56c63          	bltu	a0,a2,e5c <__moddi3+0x338>
     e48:	40c50ab3          	sub	s5,a0,a2
     e4c:	40d586b3          	sub	a3,a1,a3
     e50:	015535b3          	sltu	a1,a0,s5
     e54:	000a8413          	mv	s0,s5
     e58:	40b68933          	sub	s2,a3,a1
     e5c:	00040513          	mv	a0,s0
     e60:	00090593          	mv	a1,s2
     e64:	e31ff06f          	j	c94 <__moddi3+0x170>
     e68:	01000737          	lui	a4,0x1000
     e6c:	01000793          	li	a5,16
     e70:	fae6e6e3          	bltu	a3,a4,e1c <__moddi3+0x2f8>
     e74:	01800793          	li	a5,24
     e78:	fa5ff06f          	j	e1c <__moddi3+0x2f8>
     e7c:	013696b3          	sll	a3,a3,s3
     e80:	01465bb3          	srl	s7,a2,s4
     e84:	00dbebb3          	or	s7,s7,a3
     e88:	0145db33          	srl	s6,a1,s4
     e8c:	01455433          	srl	s0,a0,s4
     e90:	013595b3          	sll	a1,a1,s3
     e94:	010bdc13          	srl	s8,s7,0x10
     e98:	00b46433          	or	s0,s0,a1
     e9c:	01351933          	sll	s2,a0,s3
     ea0:	000c0593          	mv	a1,s8
     ea4:	000b0513          	mv	a0,s6
     ea8:	010b9c93          	sll	s9,s7,0x10
     eac:	01361ab3          	sll	s5,a2,s3
     eb0:	010cdc93          	srl	s9,s9,0x10
     eb4:	1b4000ef          	jal	1068 <__hidden___udivsi3>
     eb8:	00050593          	mv	a1,a0
     ebc:	00050d93          	mv	s11,a0
     ec0:	000c8513          	mv	a0,s9
     ec4:	178000ef          	jal	103c <__mulsi3>
     ec8:	00050d13          	mv	s10,a0
     ecc:	000c0593          	mv	a1,s8
     ed0:	000b0513          	mv	a0,s6
     ed4:	1dc000ef          	jal	10b0 <__umodsi3>
     ed8:	01051513          	sll	a0,a0,0x10
     edc:	01045793          	srl	a5,s0,0x10
     ee0:	00a7e7b3          	or	a5,a5,a0
     ee4:	000d8b13          	mv	s6,s11
     ee8:	01a7fe63          	bgeu	a5,s10,f04 <__moddi3+0x3e0>
     eec:	00fb87b3          	add	a5,s7,a5
     ef0:	fffd8b13          	add	s6,s11,-1
     ef4:	0177e863          	bltu	a5,s7,f04 <__moddi3+0x3e0>
     ef8:	01a7f663          	bgeu	a5,s10,f04 <__moddi3+0x3e0>
     efc:	ffed8b13          	add	s6,s11,-2
     f00:	017787b3          	add	a5,a5,s7
     f04:	41a78d33          	sub	s10,a5,s10
     f08:	000c0593          	mv	a1,s8
     f0c:	000d0513          	mv	a0,s10
     f10:	158000ef          	jal	1068 <__hidden___udivsi3>
     f14:	00050593          	mv	a1,a0
     f18:	00050d93          	mv	s11,a0
     f1c:	000c8513          	mv	a0,s9
     f20:	11c000ef          	jal	103c <__mulsi3>
     f24:	000c0593          	mv	a1,s8
     f28:	00050c93          	mv	s9,a0
     f2c:	000d0513          	mv	a0,s10
     f30:	180000ef          	jal	10b0 <__umodsi3>
     f34:	01041593          	sll	a1,s0,0x10
     f38:	01051513          	sll	a0,a0,0x10
     f3c:	0105d593          	srl	a1,a1,0x10
     f40:	00a5e5b3          	or	a1,a1,a0
     f44:	000d8713          	mv	a4,s11
     f48:	0195fe63          	bgeu	a1,s9,f64 <__moddi3+0x440>
     f4c:	00bb85b3          	add	a1,s7,a1
     f50:	fffd8713          	add	a4,s11,-1
     f54:	0175e863          	bltu	a1,s7,f64 <__moddi3+0x440>
     f58:	0195f663          	bgeu	a1,s9,f64 <__moddi3+0x440>
     f5c:	ffed8713          	add	a4,s11,-2
     f60:	017585b3          	add	a1,a1,s7
     f64:	00010337          	lui	t1,0x10
     f68:	010b1b13          	sll	s6,s6,0x10
     f6c:	00eb6b33          	or	s6,s6,a4
     f70:	fff30713          	add	a4,t1,-1 # ffff <_Z7strncmpPKcS0_i+0x8633>
     f74:	00eb7e33          	and	t3,s6,a4
     f78:	00eaf733          	and	a4,s5,a4
     f7c:	419587b3          	sub	a5,a1,s9
     f80:	010b5b13          	srl	s6,s6,0x10
     f84:	010ad893          	srl	a7,s5,0x10
     f88:	000e0513          	mv	a0,t3
     f8c:	00070593          	mv	a1,a4
     f90:	0ac000ef          	jal	103c <__mulsi3>
     f94:	00050813          	mv	a6,a0
     f98:	00088593          	mv	a1,a7
     f9c:	000e0513          	mv	a0,t3
     fa0:	09c000ef          	jal	103c <__mulsi3>
     fa4:	00050413          	mv	s0,a0
     fa8:	00070593          	mv	a1,a4
     fac:	000b0513          	mv	a0,s6
     fb0:	08c000ef          	jal	103c <__mulsi3>
     fb4:	00050713          	mv	a4,a0
     fb8:	00088593          	mv	a1,a7
     fbc:	000b0513          	mv	a0,s6
     fc0:	07c000ef          	jal	103c <__mulsi3>
     fc4:	00e40433          	add	s0,s0,a4
     fc8:	01085693          	srl	a3,a6,0x10
     fcc:	00d40433          	add	s0,s0,a3
     fd0:	00e47463          	bgeu	s0,a4,fd8 <__moddi3+0x4b4>
     fd4:	00650533          	add	a0,a0,t1
     fd8:	000106b7          	lui	a3,0x10
     fdc:	fff68693          	add	a3,a3,-1 # ffff <_Z7strncmpPKcS0_i+0x8633>
     fe0:	01045713          	srl	a4,s0,0x10
     fe4:	00d47433          	and	s0,s0,a3
     fe8:	01041413          	sll	s0,s0,0x10
     fec:	00d87833          	and	a6,a6,a3
     ff0:	00a70733          	add	a4,a4,a0
     ff4:	01040433          	add	s0,s0,a6
     ff8:	00e7e663          	bltu	a5,a4,1004 <__moddi3+0x4e0>
     ffc:	00e79e63          	bne	a5,a4,1018 <__moddi3+0x4f4>
    1000:	00897c63          	bgeu	s2,s0,1018 <__moddi3+0x4f4>
    1004:	41540ab3          	sub	s5,s0,s5
    1008:	015436b3          	sltu	a3,s0,s5
    100c:	017686b3          	add	a3,a3,s7
    1010:	000a8413          	mv	s0,s5
    1014:	40d70733          	sub	a4,a4,a3
    1018:	40890433          	sub	s0,s2,s0
    101c:	00893933          	sltu	s2,s2,s0
    1020:	40e785b3          	sub	a1,a5,a4
    1024:	412585b3          	sub	a1,a1,s2
    1028:	01459a33          	sll	s4,a1,s4
    102c:	01345433          	srl	s0,s0,s3
    1030:	008a6533          	or	a0,s4,s0
    1034:	0135d5b3          	srl	a1,a1,s3
    1038:	c5dff06f          	j	c94 <__moddi3+0x170>

0000103c <__mulsi3>:
    103c:	00050613          	mv	a2,a0
    1040:	00000513          	li	a0,0
    1044:	0015f693          	and	a3,a1,1
    1048:	00068463          	beqz	a3,1050 <__mulsi3+0x14>
    104c:	00c50533          	add	a0,a0,a2
    1050:	0015d593          	srl	a1,a1,0x1
    1054:	00161613          	sll	a2,a2,0x1
    1058:	fe0596e3          	bnez	a1,1044 <__mulsi3+0x8>
    105c:	00008067          	ret

00001060 <__divsi3>:
    1060:	06054063          	bltz	a0,10c0 <__umodsi3+0x10>
    1064:	0605c663          	bltz	a1,10d0 <__umodsi3+0x20>

00001068 <__hidden___udivsi3>:
    1068:	00058613          	mv	a2,a1
    106c:	00050593          	mv	a1,a0
    1070:	fff00513          	li	a0,-1
    1074:	02060c63          	beqz	a2,10ac <__hidden___udivsi3+0x44>
    1078:	00100693          	li	a3,1
    107c:	00b67a63          	bgeu	a2,a1,1090 <__hidden___udivsi3+0x28>
    1080:	00c05863          	blez	a2,1090 <__hidden___udivsi3+0x28>
    1084:	00161613          	sll	a2,a2,0x1
    1088:	00169693          	sll	a3,a3,0x1
    108c:	feb66ae3          	bltu	a2,a1,1080 <__hidden___udivsi3+0x18>
    1090:	00000513          	li	a0,0
    1094:	00c5e663          	bltu	a1,a2,10a0 <__hidden___udivsi3+0x38>
    1098:	40c585b3          	sub	a1,a1,a2
    109c:	00d56533          	or	a0,a0,a3
    10a0:	0016d693          	srl	a3,a3,0x1
    10a4:	00165613          	srl	a2,a2,0x1
    10a8:	fe0696e3          	bnez	a3,1094 <__hidden___udivsi3+0x2c>
    10ac:	00008067          	ret

000010b0 <__umodsi3>:
    10b0:	00008293          	mv	t0,ra
    10b4:	fb5ff0ef          	jal	1068 <__hidden___udivsi3>
    10b8:	00058513          	mv	a0,a1
    10bc:	00028067          	jr	t0
    10c0:	40a00533          	neg	a0,a0
    10c4:	00b04863          	bgtz	a1,10d4 <__umodsi3+0x24>
    10c8:	40b005b3          	neg	a1,a1
    10cc:	f9dff06f          	j	1068 <__hidden___udivsi3>
    10d0:	40b005b3          	neg	a1,a1
    10d4:	00008293          	mv	t0,ra
    10d8:	f91ff0ef          	jal	1068 <__hidden___udivsi3>
    10dc:	40a00533          	neg	a0,a0
    10e0:	00028067          	jr	t0

000010e4 <__modsi3>:
    10e4:	00008293          	mv	t0,ra
    10e8:	0005ca63          	bltz	a1,10fc <__modsi3+0x18>
    10ec:	00054c63          	bltz	a0,1104 <__modsi3+0x20>
    10f0:	f79ff0ef          	jal	1068 <__hidden___udivsi3>
    10f4:	00058513          	mv	a0,a1
    10f8:	00028067          	jr	t0
    10fc:	40b005b3          	neg	a1,a1
    1100:	fe0558e3          	bgez	a0,10f0 <__modsi3+0xc>
    1104:	40a00533          	neg	a0,a0
    1108:	f61ff0ef          	jal	1068 <__hidden___udivsi3>
    110c:	40b00533          	neg	a0,a1
    1110:	00028067          	jr	t0

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
    7790:	955f90ef          	jal	10e4 <__modsi3>
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
    77d0:	891f90ef          	jal	1060 <__divsi3>
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
    78e4:	a40f90ef          	jal	b24 <__moddi3>
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
    7934:	bd5f80ef          	jal	508 <__divdi3>
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

000079cc <_Z7strncmpPKcS0_i>:
    79cc:	fd010113          	add	sp,sp,-48
    79d0:	02812623          	sw	s0,44(sp)
    79d4:	03010413          	add	s0,sp,48
    79d8:	fca42e23          	sw	a0,-36(s0)
    79dc:	fcb42c23          	sw	a1,-40(s0)
    79e0:	fcc42a23          	sw	a2,-44(s0)
    79e4:	fe042623          	sw	zero,-20(s0)
    79e8:	07c0006f          	j	7a64 <_Z7strncmpPKcS0_i+0x98>
    79ec:	fec42783          	lw	a5,-20(s0)
    79f0:	fdc42703          	lw	a4,-36(s0)
    79f4:	00f707b3          	add	a5,a4,a5
    79f8:	0007c703          	lbu	a4,0(a5)
    79fc:	fec42783          	lw	a5,-20(s0)
    7a00:	fd842683          	lw	a3,-40(s0)
    7a04:	00f687b3          	add	a5,a3,a5
    7a08:	0007c783          	lbu	a5,0(a5)
    7a0c:	02f70863          	beq	a4,a5,7a3c <_Z7strncmpPKcS0_i+0x70>
    7a10:	fec42783          	lw	a5,-20(s0)
    7a14:	fdc42703          	lw	a4,-36(s0)
    7a18:	00f707b3          	add	a5,a4,a5
    7a1c:	0007c783          	lbu	a5,0(a5)
    7a20:	00078693          	mv	a3,a5
    7a24:	fec42783          	lw	a5,-20(s0)
    7a28:	fd842703          	lw	a4,-40(s0)
    7a2c:	00f707b3          	add	a5,a4,a5
    7a30:	0007c783          	lbu	a5,0(a5)
    7a34:	40f687b3          	sub	a5,a3,a5
    7a38:	03c0006f          	j	7a74 <_Z7strncmpPKcS0_i+0xa8>
    7a3c:	fec42783          	lw	a5,-20(s0)
    7a40:	fdc42703          	lw	a4,-36(s0)
    7a44:	00f707b3          	add	a5,a4,a5
    7a48:	0007c783          	lbu	a5,0(a5)
    7a4c:	00079663          	bnez	a5,7a58 <_Z7strncmpPKcS0_i+0x8c>
    7a50:	00000793          	li	a5,0
    7a54:	0200006f          	j	7a74 <_Z7strncmpPKcS0_i+0xa8>
    7a58:	fec42783          	lw	a5,-20(s0)
    7a5c:	00178793          	add	a5,a5,1
    7a60:	fef42623          	sw	a5,-20(s0)
    7a64:	fec42703          	lw	a4,-20(s0)
    7a68:	fd442783          	lw	a5,-44(s0)
    7a6c:	f8f740e3          	blt	a4,a5,79ec <_Z7strncmpPKcS0_i+0x20>
    7a70:	00000793          	li	a5,0
    7a74:	00078513          	mv	a0,a5
    7a78:	02c12403          	lw	s0,44(sp)
    7a7c:	03010113          	add	sp,sp,48
    7a80:	00008067          	ret
