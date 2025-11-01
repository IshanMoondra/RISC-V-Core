
/mnt/e/WSL/git_clones/Programs/state_dump_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	0017e197          	auipc	gp,0x17e
  10:	ff418193          	addi	gp,gp,-12 # 17e000 <_global_pointer>
  14:	084000ef          	jal	ra,98 <main>
  18:	ffff                	0xffff
  1a:	ffff                	0xffff
  1c:	00000013          	nop

00000020 <_Z10soc_bootupv>:
  20:	fe010113          	addi	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	addi	s0,sp,32
  30:	fe042623          	sw	zero,-20(s0)
  34:	0007a7b7          	lui	a5,0x7a
  38:	12078793          	addi	a5,a5,288 # 7a120 <_Z9gpio_demoi+0x79c78>
  3c:	fef42423          	sw	a5,-24(s0)
  40:	002017b7          	lui	a5,0x201
  44:	03478793          	addi	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  48:	fec42703          	lw	a4,-20(s0)
  4c:	00e7a023          	sw	a4,0(a5)
  50:	002017b7          	lui	a5,0x201
  54:	03878793          	addi	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  58:	fe842703          	lw	a4,-24(s0)
  5c:	00e7a023          	sw	a4,0(a5)
  60:	3e800793          	li	a5,1000
  64:	fef42223          	sw	a5,-28(s0)
  68:	002017b7          	lui	a5,0x201
  6c:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
  70:	fe442703          	lw	a4,-28(s0)
  74:	00e7a023          	sw	a4,0(a5)
  78:	03e00513          	li	a0,62
  7c:	088000ef          	jal	ra,104 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	00000013          	nop
  88:	01c12083          	lw	ra,28(sp)
  8c:	01812403          	lw	s0,24(sp)
  90:	02010113          	addi	sp,sp,32
  94:	00008067          	ret

00000098 <main>:
  98:	fe010113          	addi	sp,sp,-32
  9c:	00112e23          	sw	ra,28(sp)
  a0:	00812c23          	sw	s0,24(sp)
  a4:	02010413          	addi	s0,sp,32
  a8:	f79ff0ef          	jal	ra,20 <_Z10soc_bootupv>
  ac:	00000013          	nop
  b0:	002017b7          	lui	a5,0x201
  b4:	01478793          	addi	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  b8:	0007a783          	lw	a5,0(a5)
  bc:	fef42623          	sw	a5,-20(s0)
  c0:	274000ef          	jal	ra,334 <_Z18uart_poll_watchdogv>
  c4:	00000013          	nop
  c8:	002017b7          	lui	a5,0x201
  cc:	01478793          	addi	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  d0:	0007a783          	lw	a5,0(a5)
  d4:	fef42423          	sw	a5,-24(s0)
  d8:	fe842703          	lw	a4,-24(s0)
  dc:	fec42783          	lw	a5,-20(s0)
  e0:	40f707b3          	sub	a5,a4,a5
  e4:	fef42223          	sw	a5,-28(s0)
  e8:	00000013          	nop
  ec:	00000793          	li	a5,0
  f0:	00078513          	mv	a0,a5
  f4:	01c12083          	lw	ra,28(sp)
  f8:	01812403          	lw	s0,24(sp)
  fc:	02010113          	addi	sp,sp,32
 100:	00008067          	ret

00000104 <_Z9uart_putcc>:
 104:	fd010113          	addi	sp,sp,-48
 108:	02812623          	sw	s0,44(sp)
 10c:	03010413          	addi	s0,sp,48
 110:	00050793          	mv	a5,a0
 114:	fcf40fa3          	sb	a5,-33(s0)
 118:	002017b7          	lui	a5,0x201
 11c:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
 120:	0007a783          	lw	a5,0(a5)
 124:	fef42223          	sw	a5,-28(s0)
 128:	002017b7          	lui	a5,0x201
 12c:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
 130:	fdf44703          	lbu	a4,-33(s0)
 134:	00e78023          	sb	a4,0(a5)
 138:	fe042623          	sw	zero,-20(s0)
 13c:	fec42783          	lw	a5,-20(s0)
 140:	02f04a63          	bgtz	a5,174 <_Z9uart_putcc+0x70>
 144:	fe042423          	sw	zero,-24(s0)
 148:	fe842703          	lw	a4,-24(s0)
 14c:	fe442783          	lw	a5,-28(s0)
 150:	00f75a63          	bge	a4,a5,164 <_Z9uart_putcc+0x60>
 154:	fe842783          	lw	a5,-24(s0)
 158:	00178793          	addi	a5,a5,1
 15c:	fef42423          	sw	a5,-24(s0)
 160:	fe9ff06f          	j	148 <_Z9uart_putcc+0x44>
 164:	fec42783          	lw	a5,-20(s0)
 168:	00178793          	addi	a5,a5,1
 16c:	fef42623          	sw	a5,-20(s0)
 170:	fcdff06f          	j	13c <_Z9uart_putcc+0x38>
 174:	00000013          	nop
 178:	02c12403          	lw	s0,44(sp)
 17c:	03010113          	addi	sp,sp,48
 180:	00008067          	ret

00000184 <_Z8fib_iteri>:
 184:	fc010113          	addi	sp,sp,-64
 188:	02812e23          	sw	s0,60(sp)
 18c:	02912c23          	sw	s1,56(sp)
 190:	03212a23          	sw	s2,52(sp)
 194:	03312823          	sw	s3,48(sp)
 198:	03412623          	sw	s4,44(sp)
 19c:	04010413          	addi	s0,sp,64
 1a0:	fca42623          	sw	a0,-52(s0)
 1a4:	00100913          	li	s2,1
 1a8:	00000a13          	li	s4,0
 1ac:	00000993          	li	s3,0
 1b0:	00000493          	li	s1,0
 1b4:	fcc42703          	lw	a4,-52(s0)
 1b8:	02e00793          	li	a5,46
 1bc:	00e7d663          	bge	a5,a4,1c8 <_Z8fib_iteri+0x44>
 1c0:	02e00493          	li	s1,46
 1c4:	0080006f          	j	1cc <_Z8fib_iteri+0x48>
 1c8:	fcc42483          	lw	s1,-52(s0)
 1cc:	00100793          	li	a5,1
 1d0:	fcf42e23          	sw	a5,-36(s0)
 1d4:	fdc42783          	lw	a5,-36(s0)
 1d8:	0297d063          	bge	a5,s1,1f8 <_Z8fib_iteri+0x74>
 1dc:	014909b3          	add	s3,s2,s4
 1e0:	00090a13          	mv	s4,s2
 1e4:	00098913          	mv	s2,s3
 1e8:	fdc42783          	lw	a5,-36(s0)
 1ec:	00178793          	addi	a5,a5,1
 1f0:	fcf42e23          	sw	a5,-36(s0)
 1f4:	fe1ff06f          	j	1d4 <_Z8fib_iteri+0x50>
 1f8:	00098793          	mv	a5,s3
 1fc:	00078513          	mv	a0,a5
 200:	03c12403          	lw	s0,60(sp)
 204:	03812483          	lw	s1,56(sp)
 208:	03412903          	lw	s2,52(sp)
 20c:	03012983          	lw	s3,48(sp)
 210:	02c12a03          	lw	s4,44(sp)
 214:	04010113          	addi	sp,sp,64
 218:	00008067          	ret

0000021c <_Z13fib_recursivei>:
 21c:	fe010113          	addi	sp,sp,-32
 220:	00112e23          	sw	ra,28(sp)
 224:	00812c23          	sw	s0,24(sp)
 228:	00912a23          	sw	s1,20(sp)
 22c:	02010413          	addi	s0,sp,32
 230:	fea42623          	sw	a0,-20(s0)
 234:	fec42703          	lw	a4,-20(s0)
 238:	00100793          	li	a5,1
 23c:	00e7c663          	blt	a5,a4,248 <_Z13fib_recursivei+0x2c>
 240:	fec42783          	lw	a5,-20(s0)
 244:	0300006f          	j	274 <_Z13fib_recursivei+0x58>
 248:	fec42783          	lw	a5,-20(s0)
 24c:	fff78793          	addi	a5,a5,-1
 250:	00078513          	mv	a0,a5
 254:	fc9ff0ef          	jal	ra,21c <_Z13fib_recursivei>
 258:	00050493          	mv	s1,a0
 25c:	fec42783          	lw	a5,-20(s0)
 260:	ffe78793          	addi	a5,a5,-2
 264:	00078513          	mv	a0,a5
 268:	fb5ff0ef          	jal	ra,21c <_Z13fib_recursivei>
 26c:	00050793          	mv	a5,a0
 270:	00f487b3          	add	a5,s1,a5
 274:	00078513          	mv	a0,a5
 278:	01c12083          	lw	ra,28(sp)
 27c:	01812403          	lw	s0,24(sp)
 280:	01412483          	lw	s1,20(sp)
 284:	02010113          	addi	sp,sp,32
 288:	00008067          	ret

0000028c <_Z11dump_resulti>:
 28c:	fe010113          	addi	sp,sp,-32
 290:	00112e23          	sw	ra,28(sp)
 294:	00812c23          	sw	s0,24(sp)
 298:	02010413          	addi	s0,sp,32
 29c:	fea42623          	sw	a0,-20(s0)
 2a0:	04400513          	li	a0,68
 2a4:	e61ff0ef          	jal	ra,104 <_Z9uart_putcc>
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	0ff7f793          	andi	a5,a5,255
 2b0:	00078513          	mv	a0,a5
 2b4:	e51ff0ef          	jal	ra,104 <_Z9uart_putcc>
 2b8:	fec42703          	lw	a4,-20(s0)
 2bc:	0ff00793          	li	a5,255
 2c0:	00e7dc63          	bge	a5,a4,2d8 <_Z11dump_resulti+0x4c>
 2c4:	fec42783          	lw	a5,-20(s0)
 2c8:	4087d793          	srai	a5,a5,0x8
 2cc:	0ff7f793          	andi	a5,a5,255
 2d0:	00078513          	mv	a0,a5
 2d4:	e31ff0ef          	jal	ra,104 <_Z9uart_putcc>
 2d8:	fec42703          	lw	a4,-20(s0)
 2dc:	000107b7          	lui	a5,0x10
 2e0:	00f74c63          	blt	a4,a5,2f8 <_Z11dump_resulti+0x6c>
 2e4:	fec42783          	lw	a5,-20(s0)
 2e8:	4107d793          	srai	a5,a5,0x10
 2ec:	0ff7f793          	andi	a5,a5,255
 2f0:	00078513          	mv	a0,a5
 2f4:	e11ff0ef          	jal	ra,104 <_Z9uart_putcc>
 2f8:	fec42703          	lw	a4,-20(s0)
 2fc:	010007b7          	lui	a5,0x1000
 300:	00f74c63          	blt	a4,a5,318 <_Z11dump_resulti+0x8c>
 304:	fec42783          	lw	a5,-20(s0)
 308:	0187d793          	srli	a5,a5,0x18
 30c:	0ff7f793          	andi	a5,a5,255
 310:	00078513          	mv	a0,a5
 314:	df1ff0ef          	jal	ra,104 <_Z9uart_putcc>
 318:	04400513          	li	a0,68
 31c:	de9ff0ef          	jal	ra,104 <_Z9uart_putcc>
 320:	00000013          	nop
 324:	01c12083          	lw	ra,28(sp)
 328:	01812403          	lw	s0,24(sp)
 32c:	02010113          	addi	sp,sp,32
 330:	00008067          	ret

00000334 <_Z18uart_poll_watchdogv>:
 334:	fe010113          	addi	sp,sp,-32
 338:	00112e23          	sw	ra,28(sp)
 33c:	00812c23          	sw	s0,24(sp)
 340:	02010413          	addi	s0,sp,32
 344:	fe042623          	sw	zero,-20(s0)
 348:	fec42703          	lw	a4,-20(s0)
 34c:	06300793          	li	a5,99
 350:	06e7c063          	blt	a5,a4,3b0 <_Z18uart_poll_watchdogv+0x7c>
 354:	002017b7          	lui	a5,0x201
 358:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
 35c:	0007c783          	lbu	a5,0(a5)
 360:	fef405a3          	sb	a5,-21(s0)
 364:	feb44783          	lbu	a5,-21(s0)
 368:	0047f793          	andi	a5,a5,4
 36c:	02078a63          	beqz	a5,3a0 <_Z18uart_poll_watchdogv+0x6c>
 370:	002017b7          	lui	a5,0x201
 374:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
 378:	0007c783          	lbu	a5,0(a5)
 37c:	fef40523          	sb	a5,-22(s0)
 380:	fea44703          	lbu	a4,-22(s0)
 384:	04100793          	li	a5,65
 388:	00f71c63          	bne	a4,a5,3a0 <_Z18uart_poll_watchdogv+0x6c>
 38c:	044000ef          	jal	ra,3d0 <_Z7computev>
 390:	00050793          	mv	a5,a0
 394:	fef404a3          	sb	a5,-23(s0)
 398:	00000013          	nop
 39c:	0240006f          	j	3c0 <_Z18uart_poll_watchdogv+0x8c>
 3a0:	fec42783          	lw	a5,-20(s0)
 3a4:	00178793          	addi	a5,a5,1
 3a8:	fef42623          	sw	a5,-20(s0)
 3ac:	f9dff06f          	j	348 <_Z18uart_poll_watchdogv+0x14>
 3b0:	05400513          	li	a0,84
 3b4:	d51ff0ef          	jal	ra,104 <_Z9uart_putcc>
 3b8:	00000013          	nop
 3bc:	00000013          	nop
 3c0:	01c12083          	lw	ra,28(sp)
 3c4:	01812403          	lw	s0,24(sp)
 3c8:	02010113          	addi	sp,sp,32
 3cc:	00008067          	ret

000003d0 <_Z7computev>:
 3d0:	fc010113          	addi	sp,sp,-64
 3d4:	02112e23          	sw	ra,60(sp)
 3d8:	02812c23          	sw	s0,56(sp)
 3dc:	04010413          	addi	s0,sp,64
 3e0:	fe042623          	sw	zero,-20(s0)
 3e4:	fe042423          	sw	zero,-24(s0)
 3e8:	02e00793          	li	a5,46
 3ec:	fef42223          	sw	a5,-28(s0)
 3f0:	fff00793          	li	a5,-1
 3f4:	fef401a3          	sb	a5,-29(s0)
 3f8:	002017b7          	lui	a5,0x201
 3fc:	01c78793          	addi	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 400:	0007a783          	lw	a5,0(a5)
 404:	fcf42e23          	sw	a5,-36(s0)
 408:	002017b7          	lui	a5,0x201
 40c:	02c78793          	addi	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 410:	0007a783          	lw	a5,0(a5)
 414:	fcf42c23          	sw	a5,-40(s0)
 418:	fe442503          	lw	a0,-28(s0)
 41c:	d69ff0ef          	jal	ra,184 <_Z8fib_iteri>
 420:	fea42623          	sw	a0,-20(s0)
 424:	00000013          	nop
 428:	002017b7          	lui	a5,0x201
 42c:	02c78793          	addi	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 430:	0007a783          	lw	a5,0(a5)
 434:	fcf42a23          	sw	a5,-44(s0)
 438:	002017b7          	lui	a5,0x201
 43c:	01c78793          	addi	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 440:	0007a783          	lw	a5,0(a5)
 444:	fcf42823          	sw	a5,-48(s0)
 448:	fd042703          	lw	a4,-48(s0)
 44c:	fdc42783          	lw	a5,-36(s0)
 450:	40f707b3          	sub	a5,a4,a5
 454:	fcf42623          	sw	a5,-52(s0)
 458:	fd442703          	lw	a4,-44(s0)
 45c:	fd842783          	lw	a5,-40(s0)
 460:	40f707b3          	sub	a5,a4,a5
 464:	fcf42423          	sw	a5,-56(s0)
 468:	fcc42503          	lw	a0,-52(s0)
 46c:	e21ff0ef          	jal	ra,28c <_Z11dump_resulti>
 470:	fc842503          	lw	a0,-56(s0)
 474:	e19ff0ef          	jal	ra,28c <_Z11dump_resulti>
 478:	fec42503          	lw	a0,-20(s0)
 47c:	e11ff0ef          	jal	ra,28c <_Z11dump_resulti>
 480:	00000013          	nop
 484:	04300513          	li	a0,67
 488:	c7dff0ef          	jal	ra,104 <_Z9uart_putcc>
 48c:	00000013          	nop
 490:	fe344783          	lbu	a5,-29(s0)
 494:	00078513          	mv	a0,a5
 498:	03c12083          	lw	ra,60(sp)
 49c:	03812403          	lw	s0,56(sp)
 4a0:	04010113          	addi	sp,sp,64
 4a4:	00008067          	ret

000004a8 <_Z9gpio_demoi>:
 4a8:	fd010113          	addi	sp,sp,-48
 4ac:	02812623          	sw	s0,44(sp)
 4b0:	03010413          	addi	s0,sp,48
 4b4:	fca42e23          	sw	a0,-36(s0)
 4b8:	fe0407a3          	sb	zero,-17(s0)
 4bc:	fef44703          	lbu	a4,-17(s0)
 4c0:	00700793          	li	a5,7
 4c4:	06e7ea63          	bltu	a5,a4,538 <_Z9gpio_demoi+0x90>
 4c8:	fe042423          	sw	zero,-24(s0)
 4cc:	002017b7          	lui	a5,0x201
 4d0:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 4d4:	00c00713          	li	a4,12
 4d8:	00e7a023          	sw	a4,0(a5)
 4dc:	fe842703          	lw	a4,-24(s0)
 4e0:	fdc42783          	lw	a5,-36(s0)
 4e4:	00f75a63          	bge	a4,a5,4f8 <_Z9gpio_demoi+0x50>
 4e8:	fe842783          	lw	a5,-24(s0)
 4ec:	00178793          	addi	a5,a5,1
 4f0:	fef42423          	sw	a5,-24(s0)
 4f4:	fe9ff06f          	j	4dc <_Z9gpio_demoi+0x34>
 4f8:	fe042423          	sw	zero,-24(s0)
 4fc:	002017b7          	lui	a5,0x201
 500:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 504:	00d00713          	li	a4,13
 508:	00e7a023          	sw	a4,0(a5)
 50c:	fe842703          	lw	a4,-24(s0)
 510:	fdc42783          	lw	a5,-36(s0)
 514:	00f75a63          	bge	a4,a5,528 <_Z9gpio_demoi+0x80>
 518:	fe842783          	lw	a5,-24(s0)
 51c:	00178793          	addi	a5,a5,1
 520:	fef42423          	sw	a5,-24(s0)
 524:	fe9ff06f          	j	50c <_Z9gpio_demoi+0x64>
 528:	fef44783          	lbu	a5,-17(s0)
 52c:	00178793          	addi	a5,a5,1
 530:	fef407a3          	sb	a5,-17(s0)
 534:	f89ff06f          	j	4bc <_Z9gpio_demoi+0x14>
 538:	002017b7          	lui	a5,0x201
 53c:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 540:	0007a023          	sw	zero,0(a5)
 544:	002017b7          	lui	a5,0x201
 548:	42c78793          	addi	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
 54c:	0007a023          	sw	zero,0(a5)
 550:	00000013          	nop
 554:	02c12403          	lw	s0,44(sp)
 558:	03010113          	addi	sp,sp,48
 55c:	00008067          	ret

Disassembly of section .eh_frame:

00000800 <.eh_frame>:
 800:	0010                	0x10
 802:	0000                	unimp
 804:	0000                	unimp
 806:	0000                	unimp
 808:	7a01                	lui	s4,0xfffe0
 80a:	0052                	c.slli	zero,0x14
 80c:	7c01                	lui	s8,0xfffe0
 80e:	0101                	addi	sp,sp,0
 810:	00020d1b          	0x20d1b
 814:	0010                	0x10
 816:	0000                	unimp
 818:	0018                	0x18
 81a:	0000                	unimp
 81c:	f7e4                	fsw	fs1,108(a5)
 81e:	ffff                	0xffff
 820:	0020                	addi	s0,sp,8
 822:	0000                	unimp
 824:	0000                	unimp
 826:	0000                	unimp
 828:	0024                	addi	s1,sp,8
 82a:	0000                	unimp
 82c:	002c                	addi	a1,sp,8
 82e:	0000                	unimp
 830:	f7f0                	fsw	fa2,108(a5)
 832:	ffff                	0xffff
 834:	0078                	addi	a4,sp,12
 836:	0000                	unimp
 838:	4400                	lw	s0,8(s0)
 83a:	200e                	fld	ft0,192(sp)
 83c:	8148                	0x8148
 83e:	8801                	andi	s0,s0,0
 840:	4402                	lw	s0,0(sp)
 842:	080c                	addi	a1,sp,16
 844:	0200                	addi	s0,sp,256
 846:	c15c                	sw	a5,4(a0)
 848:	c844                	sw	s1,20(s0)
 84a:	0d44                	addi	s1,sp,660
 84c:	0002                	c.slli64	zero
 84e:	0000                	unimp
 850:	0024                	addi	s1,sp,8
 852:	0000                	unimp
 854:	0054                	addi	a3,sp,4
 856:	0000                	unimp
 858:	f840                	fsw	fs0,52(s0)
 85a:	ffff                	0xffff
 85c:	006c                	addi	a1,sp,12
 85e:	0000                	unimp
 860:	4400                	lw	s0,8(s0)
 862:	200e                	fld	ft0,192(sp)
 864:	8148                	0x8148
 866:	8801                	andi	s0,s0,0
 868:	4402                	lw	s0,0(sp)
 86a:	080c                	addi	a1,sp,16
 86c:	0200                	addi	s0,sp,256
 86e:	c150                	sw	a2,4(a0)
 870:	c844                	sw	s1,20(s0)
 872:	0d44                	addi	s1,sp,660
 874:	0002                	c.slli64	zero
 876:	0000                	unimp
 878:	0020                	addi	s0,sp,8
 87a:	0000                	unimp
 87c:	007c                	addi	a5,sp,12
 87e:	0000                	unimp
 880:	f884                	fsw	fs1,48(s1)
 882:	ffff                	0xffff
 884:	0080                	addi	s0,sp,64
 886:	0000                	unimp
 888:	4400                	lw	s0,8(s0)
 88a:	300e                	fld	ft0,224(sp)
 88c:	8844                	0x8844
 88e:	4401                	li	s0,0
 890:	080c                	addi	a1,sp,16
 892:	0200                	addi	s0,sp,256
 894:	c86c                	sw	a1,84(s0)
 896:	0d44                	addi	s1,sp,660
 898:	0002                	c.slli64	zero
 89a:	0000                	unimp
 89c:	0030                	addi	a2,sp,8
 89e:	0000                	unimp
 8a0:	00a0                	addi	s0,sp,72
 8a2:	0000                	unimp
 8a4:	f8e0                	fsw	fs0,116(s1)
 8a6:	ffff                	0xffff
 8a8:	0098                	addi	a4,sp,64
 8aa:	0000                	unimp
 8ac:	4400                	lw	s0,8(s0)
 8ae:	400e                	0x400e
 8b0:	8854                	0x8854
 8b2:	8901                	andi	a0,a0,0
 8b4:	9202                	jalr	tp
 8b6:	94049303          	lh	t1,-1728(s1)
 8ba:	4405                	li	s0,1
 8bc:	080c                	addi	a1,sp,16
 8be:	0200                	addi	s0,sp,256
 8c0:	c864                	sw	s1,84(s0)
 8c2:	c944                	sw	s1,20(a0)
 8c4:	d244                	sw	s1,36(a2)
 8c6:	d344                	sw	s1,36(a4)
 8c8:	d444                	sw	s1,44(s0)
 8ca:	0d44                	addi	s1,sp,660
 8cc:	0002                	c.slli64	zero
 8ce:	0000                	unimp
 8d0:	0028                	addi	a0,sp,8
 8d2:	0000                	unimp
 8d4:	00d4                	addi	a3,sp,68
 8d6:	0000                	unimp
 8d8:	f944                	fsw	fs1,52(a0)
 8da:	ffff                	0xffff
 8dc:	0070                	addi	a2,sp,12
 8de:	0000                	unimp
 8e0:	4400                	lw	s0,8(s0)
 8e2:	200e                	fld	ft0,192(sp)
 8e4:	814c                	0x814c
 8e6:	8801                	andi	s0,s0,0
 8e8:	8902                	jr	s2
 8ea:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce1880>
 8ee:	0200                	addi	s0,sp,256
 8f0:	c14c                	sw	a1,4(a0)
 8f2:	c844                	sw	s1,20(s0)
 8f4:	c944                	sw	s1,20(a0)
 8f6:	0d44                	addi	s1,sp,660
 8f8:	0002                	c.slli64	zero
 8fa:	0000                	unimp
 8fc:	0024                	addi	s1,sp,8
 8fe:	0000                	unimp
 900:	0100                	addi	s0,sp,128
 902:	0000                	unimp
 904:	f988                	fsw	fa0,48(a1)
 906:	ffff                	0xffff
 908:	00a8                	addi	a0,sp,72
 90a:	0000                	unimp
 90c:	4400                	lw	s0,8(s0)
 90e:	200e                	fld	ft0,192(sp)
 910:	8148                	0x8148
 912:	8801                	andi	s0,s0,0
 914:	4402                	lw	s0,0(sp)
 916:	080c                	addi	a1,sp,16
 918:	0200                	addi	s0,sp,256
 91a:	c18c                	sw	a1,0(a1)
 91c:	c844                	sw	s1,20(s0)
 91e:	0d44                	addi	s1,sp,660
 920:	0002                	c.slli64	zero
 922:	0000                	unimp
 924:	0024                	addi	s1,sp,8
 926:	0000                	unimp
 928:	0128                	addi	a0,sp,136
 92a:	0000                	unimp
 92c:	fa08                	fsw	fa0,48(a2)
 92e:	ffff                	0xffff
 930:	009c                	addi	a5,sp,64
 932:	0000                	unimp
 934:	4400                	lw	s0,8(s0)
 936:	200e                	fld	ft0,192(sp)
 938:	8148                	0x8148
 93a:	8801                	andi	s0,s0,0
 93c:	4402                	lw	s0,0(sp)
 93e:	080c                	addi	a1,sp,16
 940:	0200                	addi	s0,sp,256
 942:	c180                	sw	s0,0(a1)
 944:	c844                	sw	s1,20(s0)
 946:	0d44                	addi	s1,sp,660
 948:	0002                	c.slli64	zero
 94a:	0000                	unimp
 94c:	0024                	addi	s1,sp,8
 94e:	0000                	unimp
 950:	0150                	addi	a2,sp,132
 952:	0000                	unimp
 954:	fa7c                	fsw	fa5,116(a2)
 956:	ffff                	0xffff
 958:	00d8                	addi	a4,sp,68
 95a:	0000                	unimp
 95c:	4400                	lw	s0,8(s0)
 95e:	400e                	0x400e
 960:	8148                	0x8148
 962:	8801                	andi	s0,s0,0
 964:	4402                	lw	s0,0(sp)
 966:	080c                	addi	a1,sp,16
 968:	0200                	addi	s0,sp,256
 96a:	c1bc                	sw	a5,64(a1)
 96c:	c844                	sw	s1,20(s0)
 96e:	0d44                	addi	s1,sp,660
 970:	0002                	c.slli64	zero
 972:	0000                	unimp
 974:	0020                	addi	s0,sp,8
 976:	0000                	unimp
 978:	0178                	addi	a4,sp,140
 97a:	0000                	unimp
 97c:	fb2c                	fsw	fa1,112(a4)
 97e:	ffff                	0xffff
 980:	00b8                	addi	a4,sp,72
 982:	0000                	unimp
 984:	4400                	lw	s0,8(s0)
 986:	300e                	fld	ft0,224(sp)
 988:	8844                	0x8844
 98a:	4401                	li	s0,0
 98c:	080c                	addi	a1,sp,16
 98e:	0200                	addi	s0,sp,256
 990:	c8a4                	sw	s1,80(s1)
 992:	0d44                	addi	s1,sp,660
 994:	0002                	c.slli64	zero
	...

Disassembly of section .spi_compute:

00000c00 <.spi_compute>:
	...

Disassembly of section .spi_uart:

00001000 <.spi_uart>:
	...

Disassembly of section .heap:

0017e000 <__bss_end>:
	...

Disassembly of section .comment:

00000000 <__stack_start-0x17e800>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
