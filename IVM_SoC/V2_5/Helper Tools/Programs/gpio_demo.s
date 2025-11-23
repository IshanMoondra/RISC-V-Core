
/mnt/e/WSL/git_clones/Programs/gpio_demo.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00180117          	auipc	sp,0x180
   8:	ffc10113          	addi	sp,sp,-4 # 180000 <_end>
   c:	0017e197          	auipc	gp,0x17e
  10:	ff418193          	addi	gp,gp,-12 # 17e000 <_global_pointer>
  14:	00c000ef          	jal	ra,20 <main>
  18:	ffff                	0xffff
  1a:	ffff                	0xffff
  1c:	00000013          	nop

00000020 <main>:
  20:	fe010113          	addi	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	addi	s0,sp,32
  30:	fff00793          	li	a5,-1
  34:	fef407a3          	sb	a5,-17(s0)
  38:	074000ef          	jal	ra,ac <_Z8soc_bootv>
  3c:	00000013          	nop
  40:	03200513          	li	a0,50
  44:	7bc010ef          	jal	ra,1800 <_Z9gpio_demoi>
  48:	fbb00793          	li	a5,-69
  4c:	fef407a3          	sb	a5,-17(s0)
  50:	002017b7          	lui	a5,0x201
  54:	04478793          	addi	a5,a5,68 # 201044 <SET_DIS_SRAM_GATER>
  58:	0007a023          	sw	zero,0(a5)
  5c:	3a5020ef          	jal	ra,2c00 <_Z7computev>
  60:	faa00793          	li	a5,-86
  64:	fef407a3          	sb	a5,-17(s0)
  68:	04300513          	li	a0,67
  6c:	795030ef          	jal	ra,4000 <_Z9uart_putcc>
  70:	002017b7          	lui	a5,0x201
  74:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
  78:	0007c783          	lbu	a5,0(a5)
  7c:	fef40723          	sb	a5,-18(s0)
  80:	fee44783          	lbu	a5,-18(s0)
  84:	00078513          	mv	a0,a5
  88:	779030ef          	jal	ra,4000 <_Z9uart_putcc>
  8c:	05500793          	li	a5,85
  90:	fef407a3          	sb	a5,-17(s0)
  94:	00000793          	li	a5,0
  98:	00078513          	mv	a0,a5
  9c:	01c12083          	lw	ra,28(sp)
  a0:	01812403          	lw	s0,24(sp)
  a4:	02010113          	addi	sp,sp,32
  a8:	00008067          	ret

000000ac <_Z8soc_bootv>:
  ac:	fe010113          	addi	sp,sp,-32
  b0:	00112e23          	sw	ra,28(sp)
  b4:	00812c23          	sw	s0,24(sp)
  b8:	02010413          	addi	s0,sp,32
  bc:	fe042623          	sw	zero,-20(s0)
  c0:	004c57b7          	lui	a5,0x4c5
  c4:	b4078793          	addi	a5,a5,-1216 # 4c4b40 <__stack_end+0x1c6340>
  c8:	fef42423          	sw	a5,-24(s0)
  cc:	002017b7          	lui	a5,0x201
  d0:	03478793          	addi	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  d4:	fec42703          	lw	a4,-20(s0)
  d8:	00e7a023          	sw	a4,0(a5)
  dc:	002017b7          	lui	a5,0x201
  e0:	03878793          	addi	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  e4:	fe842703          	lw	a4,-24(s0)
  e8:	00e7a023          	sw	a4,0(a5)
  ec:	3e800793          	li	a5,1000
  f0:	fef42223          	sw	a5,-28(s0)
  f4:	002017b7          	lui	a5,0x201
  f8:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
  fc:	fe442703          	lw	a4,-28(s0)
 100:	00e7a023          	sw	a4,0(a5)
 104:	002017b7          	lui	a5,0x201
 108:	04478793          	addi	a5,a5,68 # 201044 <SET_DIS_SRAM_GATER>
 10c:	00100713          	li	a4,1
 110:	00e7a023          	sw	a4,0(a5)
 114:	03e00513          	li	a0,62
 118:	6e9030ef          	jal	ra,4000 <_Z9uart_putcc>
 11c:	00000013          	nop
 120:	00000013          	nop
 124:	01c12083          	lw	ra,28(sp)
 128:	01812403          	lw	s0,24(sp)
 12c:	02010113          	addi	sp,sp,32
 130:	00008067          	ret

Disassembly of section .eh_frame:

00000400 <.eh_frame>:
 400:	0010                	0x10
 402:	0000                	unimp
 404:	0000                	unimp
 406:	0000                	unimp
 408:	7a01                	lui	s4,0xfffe0
 40a:	0052                	c.slli	zero,0x14
 40c:	7c01                	lui	s8,0xfffe0
 40e:	0101                	addi	sp,sp,0
 410:	00020d1b          	0x20d1b
 414:	0010                	0x10
 416:	0000                	unimp
 418:	0018                	0x18
 41a:	0000                	unimp
 41c:	fbe4                	fsw	fs1,116(a5)
 41e:	ffff                	0xffff
 420:	0020                	addi	s0,sp,8
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0020                	addi	s0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	13d0                	addi	a2,sp,484
 432:	0000                	unimp
 434:	00b8                	addi	a4,sp,72
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	0200                	addi	s0,sp,256
 444:	c8a4                	sw	s1,80(s1)
 446:	0d44                	addi	s1,sp,660
 448:	0002                	c.slli64	zero
 44a:	0000                	unimp
 44c:	0020                	addi	s0,sp,8
 44e:	0000                	unimp
 450:	0050                	addi	a2,sp,4
 452:	0000                	unimp
 454:	3bac                	fld	fa1,112(a5)
 456:	0000                	unimp
 458:	0080                	addi	s0,sp,64
 45a:	0000                	unimp
 45c:	4400                	lw	s0,8(s0)
 45e:	300e                	fld	ft0,224(sp)
 460:	8844                	0x8844
 462:	4401                	li	s0,0
 464:	080c                	addi	a1,sp,16
 466:	0200                	addi	s0,sp,256
 468:	c86c                	sw	a1,84(s0)
 46a:	0d44                	addi	s1,sp,660
 46c:	0002                	c.slli64	zero
 46e:	0000                	unimp
 470:	0024                	addi	s1,sp,8
 472:	0000                	unimp
 474:	0074                	addi	a3,sp,12
 476:	0000                	unimp
 478:	3c08                	fld	fa0,56(s0)
 47a:	0000                	unimp
 47c:	00a8                	addi	a0,sp,72
 47e:	0000                	unimp
 480:	4400                	lw	s0,8(s0)
 482:	200e                	fld	ft0,192(sp)
 484:	8148                	0x8148
 486:	8801                	andi	s0,s0,0
 488:	4402                	lw	s0,0(sp)
 48a:	080c                	addi	a1,sp,16
 48c:	0200                	addi	s0,sp,256
 48e:	c18c                	sw	a1,0(a1)
 490:	c844                	sw	s1,20(s0)
 492:	0d44                	addi	s1,sp,660
 494:	0002                	c.slli64	zero
 496:	0000                	unimp
 498:	0020                	addi	s0,sp,8
 49a:	0000                	unimp
 49c:	009c                	addi	a5,sp,64
 49e:	0000                	unimp
 4a0:	2760                	fld	fs0,200(a4)
 4a2:	0000                	unimp
 4a4:	004c                	addi	a1,sp,4
 4a6:	0000                	unimp
 4a8:	4400                	lw	s0,8(s0)
 4aa:	200e                	fld	ft0,192(sp)
 4ac:	8148                	0x8148
 4ae:	8801                	andi	s0,s0,0
 4b0:	4402                	lw	s0,0(sp)
 4b2:	080c                	addi	a1,sp,16
 4b4:	7000                	flw	fs0,32(s0)
 4b6:	44c1                	li	s1,16
 4b8:	44c8                	lw	a0,12(s1)
 4ba:	020d                	addi	tp,tp,3
 4bc:	0020                	addi	s0,sp,8
 4be:	0000                	unimp
 4c0:	00c0                	addi	s0,sp,68
 4c2:	0000                	unimp
 4c4:	2788                	fld	fa0,8(a5)
 4c6:	0000                	unimp
 4c8:	009c                	addi	a5,sp,64
 4ca:	0000                	unimp
 4cc:	4400                	lw	s0,8(s0)
 4ce:	400e                	0x400e
 4d0:	8844                	0x8844
 4d2:	4401                	li	s0,0
 4d4:	080c                	addi	a1,sp,16
 4d6:	0200                	addi	s0,sp,256
 4d8:	c888                	sw	a0,16(s1)
 4da:	0d44                	addi	s1,sp,660
 4dc:	0002                	c.slli64	zero
 4de:	0000                	unimp
 4e0:	0024                	addi	s1,sp,8
 4e2:	0000                	unimp
 4e4:	00e4                	addi	s1,sp,76
 4e6:	0000                	unimp
 4e8:	fb38                	fsw	fa4,112(a4)
 4ea:	ffff                	0xffff
 4ec:	008c                	addi	a1,sp,64
 4ee:	0000                	unimp
 4f0:	4400                	lw	s0,8(s0)
 4f2:	200e                	fld	ft0,192(sp)
 4f4:	8148                	0x8148
 4f6:	8801                	andi	s0,s0,0
 4f8:	4402                	lw	s0,0(sp)
 4fa:	080c                	addi	a1,sp,16
 4fc:	0200                	addi	s0,sp,256
 4fe:	c170                	sw	a2,68(a0)
 500:	c844                	sw	s1,20(s0)
 502:	0d44                	addi	s1,sp,660
 504:	0002                	c.slli64	zero
 506:	0000                	unimp
 508:	0024                	addi	s1,sp,8
 50a:	0000                	unimp
 50c:	010c                	addi	a1,sp,128
 50e:	0000                	unimp
 510:	fb9c                	fsw	fa5,48(a5)
 512:	ffff                	0xffff
 514:	0088                	addi	a0,sp,64
 516:	0000                	unimp
 518:	4400                	lw	s0,8(s0)
 51a:	200e                	fld	ft0,192(sp)
 51c:	8148                	0x8148
 51e:	8801                	andi	s0,s0,0
 520:	4402                	lw	s0,0(sp)
 522:	080c                	addi	a1,sp,16
 524:	0200                	addi	s0,sp,256
 526:	c16c                	sw	a1,68(a0)
 528:	c844                	sw	s1,20(s0)
 52a:	0d44                	addi	s1,sp,660
 52c:	0002                	c.slli64	zero
	...

Disassembly of section .spi_gpio:

00000800 <_Z9gpio_demoi-0x1000>:
	...

00001800 <_Z9gpio_demoi>:
    1800:	fd010113          	addi	sp,sp,-48
    1804:	02812623          	sw	s0,44(sp)
    1808:	03010413          	addi	s0,sp,48
    180c:	fca42e23          	sw	a0,-36(s0)
    1810:	fe0407a3          	sb	zero,-17(s0)
    1814:	fef44703          	lbu	a4,-17(s0)
    1818:	00700793          	li	a5,7
    181c:	06e7ea63          	bltu	a5,a4,1890 <_Z9gpio_demoi+0x90>
    1820:	fe042423          	sw	zero,-24(s0)
    1824:	002017b7          	lui	a5,0x201
    1828:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    182c:	00c00713          	li	a4,12
    1830:	00e7a023          	sw	a4,0(a5)
    1834:	fe842703          	lw	a4,-24(s0)
    1838:	fdc42783          	lw	a5,-36(s0)
    183c:	00f75a63          	bge	a4,a5,1850 <_Z9gpio_demoi+0x50>
    1840:	fe842783          	lw	a5,-24(s0)
    1844:	00178793          	addi	a5,a5,1
    1848:	fef42423          	sw	a5,-24(s0)
    184c:	fe9ff06f          	j	1834 <_Z9gpio_demoi+0x34>
    1850:	fe042423          	sw	zero,-24(s0)
    1854:	002017b7          	lui	a5,0x201
    1858:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    185c:	00d00713          	li	a4,13
    1860:	00e7a023          	sw	a4,0(a5)
    1864:	fe842703          	lw	a4,-24(s0)
    1868:	fdc42783          	lw	a5,-36(s0)
    186c:	00f75a63          	bge	a4,a5,1880 <_Z9gpio_demoi+0x80>
    1870:	fe842783          	lw	a5,-24(s0)
    1874:	00178793          	addi	a5,a5,1
    1878:	fef42423          	sw	a5,-24(s0)
    187c:	fe9ff06f          	j	1864 <_Z9gpio_demoi+0x64>
    1880:	fef44783          	lbu	a5,-17(s0)
    1884:	00178793          	addi	a5,a5,1
    1888:	fef407a3          	sb	a5,-17(s0)
    188c:	f89ff06f          	j	1814 <_Z9gpio_demoi+0x14>
    1890:	002017b7          	lui	a5,0x201
    1894:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1898:	0007a023          	sw	zero,0(a5)
    189c:	002017b7          	lui	a5,0x201
    18a0:	42c78793          	addi	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
    18a4:	0007a023          	sw	zero,0(a5)
    18a8:	00000013          	nop
    18ac:	02c12403          	lw	s0,44(sp)
    18b0:	03010113          	addi	sp,sp,48
    18b4:	00008067          	ret

Disassembly of section .spi_compute:

00001c00 <_Z7computev-0x1000>:
	...

00002c00 <_Z7computev>:
    2c00:	fe010113          	addi	sp,sp,-32
    2c04:	00112e23          	sw	ra,28(sp)
    2c08:	00812c23          	sw	s0,24(sp)
    2c0c:	02010413          	addi	s0,sp,32
    2c10:	05300513          	li	a0,83
    2c14:	3ec010ef          	jal	ra,4000 <_Z9uart_putcc>
    2c18:	00a00793          	li	a5,10
    2c1c:	fef42623          	sw	a5,-20(s0)
    2c20:	fe042423          	sw	zero,-24(s0)
    2c24:	fec42503          	lw	a0,-20(s0)
    2c28:	024000ef          	jal	ra,2c4c <_Z19fibonacci_iterativei>
    2c2c:	fea42423          	sw	a0,-24(s0)
    2c30:	fe842503          	lw	a0,-24(s0)
    2c34:	44c010ef          	jal	ra,4080 <_Z12dump_resultsi>
    2c38:	00000013          	nop
    2c3c:	01c12083          	lw	ra,28(sp)
    2c40:	01812403          	lw	s0,24(sp)
    2c44:	02010113          	addi	sp,sp,32
    2c48:	00008067          	ret

00002c4c <_Z19fibonacci_iterativei>:
    2c4c:	fc010113          	addi	sp,sp,-64
    2c50:	02812e23          	sw	s0,60(sp)
    2c54:	04010413          	addi	s0,sp,64
    2c58:	fca42623          	sw	a0,-52(s0)
    2c5c:	fe042623          	sw	zero,-20(s0)
    2c60:	fcc42703          	lw	a4,-52(s0)
    2c64:	02e00793          	li	a5,46
    2c68:	00e7d863          	bge	a5,a4,2c78 <_Z19fibonacci_iterativei+0x2c>
    2c6c:	02e00793          	li	a5,46
    2c70:	fef42623          	sw	a5,-20(s0)
    2c74:	00c0006f          	j	2c80 <_Z19fibonacci_iterativei+0x34>
    2c78:	fcc42783          	lw	a5,-52(s0)
    2c7c:	fef42623          	sw	a5,-20(s0)
    2c80:	fe042423          	sw	zero,-24(s0)
    2c84:	00100793          	li	a5,1
    2c88:	fef42223          	sw	a5,-28(s0)
    2c8c:	fe042023          	sw	zero,-32(s0)
    2c90:	00100793          	li	a5,1
    2c94:	fcf40fa3          	sb	a5,-33(s0)
    2c98:	fdf44783          	lbu	a5,-33(s0)
    2c9c:	fec42703          	lw	a4,-20(s0)
    2ca0:	02e7da63          	bge	a5,a4,2cd4 <_Z19fibonacci_iterativei+0x88>
    2ca4:	fe842703          	lw	a4,-24(s0)
    2ca8:	fe442783          	lw	a5,-28(s0)
    2cac:	00f707b3          	add	a5,a4,a5
    2cb0:	fef42023          	sw	a5,-32(s0)
    2cb4:	fe442783          	lw	a5,-28(s0)
    2cb8:	fef42423          	sw	a5,-24(s0)
    2cbc:	fe042783          	lw	a5,-32(s0)
    2cc0:	fef42223          	sw	a5,-28(s0)
    2cc4:	fdf44783          	lbu	a5,-33(s0)
    2cc8:	00178793          	addi	a5,a5,1
    2ccc:	fcf40fa3          	sb	a5,-33(s0)
    2cd0:	fc9ff06f          	j	2c98 <_Z19fibonacci_iterativei+0x4c>
    2cd4:	fe042783          	lw	a5,-32(s0)
    2cd8:	00078513          	mv	a0,a5
    2cdc:	03c12403          	lw	s0,60(sp)
    2ce0:	04010113          	addi	sp,sp,64
    2ce4:	00008067          	ret

Disassembly of section .spi_uart:

00003000 <_Z9uart_putcc-0x1000>:
	...

00004000 <_Z9uart_putcc>:
    4000:	fd010113          	addi	sp,sp,-48
    4004:	02812623          	sw	s0,44(sp)
    4008:	03010413          	addi	s0,sp,48
    400c:	00050793          	mv	a5,a0
    4010:	fcf40fa3          	sb	a5,-33(s0)
    4014:	002017b7          	lui	a5,0x201
    4018:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
    401c:	0007a783          	lw	a5,0(a5)
    4020:	fef42223          	sw	a5,-28(s0)
    4024:	002017b7          	lui	a5,0x201
    4028:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
    402c:	fdf44703          	lbu	a4,-33(s0)
    4030:	00e78023          	sb	a4,0(a5)
    4034:	fe042623          	sw	zero,-20(s0)
    4038:	fec42783          	lw	a5,-20(s0)
    403c:	02f04a63          	bgtz	a5,4070 <_Z9uart_putcc+0x70>
    4040:	fe042423          	sw	zero,-24(s0)
    4044:	fe842703          	lw	a4,-24(s0)
    4048:	fe442783          	lw	a5,-28(s0)
    404c:	00f75a63          	bge	a4,a5,4060 <_Z9uart_putcc+0x60>
    4050:	fe842783          	lw	a5,-24(s0)
    4054:	00178793          	addi	a5,a5,1
    4058:	fef42423          	sw	a5,-24(s0)
    405c:	fe9ff06f          	j	4044 <_Z9uart_putcc+0x44>
    4060:	fec42783          	lw	a5,-20(s0)
    4064:	00178793          	addi	a5,a5,1
    4068:	fef42623          	sw	a5,-20(s0)
    406c:	fcdff06f          	j	4038 <_Z9uart_putcc+0x38>
    4070:	00000013          	nop
    4074:	02c12403          	lw	s0,44(sp)
    4078:	03010113          	addi	sp,sp,48
    407c:	00008067          	ret

00004080 <_Z12dump_resultsi>:
    4080:	fe010113          	addi	sp,sp,-32
    4084:	00112e23          	sw	ra,28(sp)
    4088:	00812c23          	sw	s0,24(sp)
    408c:	02010413          	addi	s0,sp,32
    4090:	fea42623          	sw	a0,-20(s0)
    4094:	04400513          	li	a0,68
    4098:	f69ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    409c:	fec42783          	lw	a5,-20(s0)
    40a0:	0ff7f793          	andi	a5,a5,255
    40a4:	00078513          	mv	a0,a5
    40a8:	f59ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    40ac:	fec42703          	lw	a4,-20(s0)
    40b0:	0ff00793          	li	a5,255
    40b4:	00e7dc63          	bge	a5,a4,40cc <_Z12dump_resultsi+0x4c>
    40b8:	fec42783          	lw	a5,-20(s0)
    40bc:	4087d793          	srai	a5,a5,0x8
    40c0:	0ff7f793          	andi	a5,a5,255
    40c4:	00078513          	mv	a0,a5
    40c8:	f39ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    40cc:	fec42703          	lw	a4,-20(s0)
    40d0:	000107b7          	lui	a5,0x10
    40d4:	00f74c63          	blt	a4,a5,40ec <_Z12dump_resultsi+0x6c>
    40d8:	fec42783          	lw	a5,-20(s0)
    40dc:	4107d793          	srai	a5,a5,0x10
    40e0:	0ff7f793          	andi	a5,a5,255
    40e4:	00078513          	mv	a0,a5
    40e8:	f19ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    40ec:	fec42703          	lw	a4,-20(s0)
    40f0:	010007b7          	lui	a5,0x1000
    40f4:	00f74c63          	blt	a4,a5,410c <_Z12dump_resultsi+0x8c>
    40f8:	fec42783          	lw	a5,-20(s0)
    40fc:	0187d793          	srli	a5,a5,0x18
    4100:	0ff7f793          	andi	a5,a5,255
    4104:	00078513          	mv	a0,a5
    4108:	ef9ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    410c:	04400513          	li	a0,68
    4110:	ef1ff0ef          	jal	ra,4000 <_Z9uart_putcc>
    4114:	00000013          	nop
    4118:	01c12083          	lw	ra,28(sp)
    411c:	01812403          	lw	s0,24(sp)
    4120:	02010113          	addi	sp,sp,32
    4124:	00008067          	ret

Disassembly of section .heap:

0017e000 <__heap_start>:
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
