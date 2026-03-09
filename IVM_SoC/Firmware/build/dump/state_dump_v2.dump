
/out/state_dump_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	090000ef          	jal	a4 <main>
  18:	ffffffff          	.word	0xffffffff
  1c:	00000013          	nop

00000020 <_Z10soc_bootupv>:
  20:	fe010113          	add	sp,sp,-32
  24:	00112e23          	sw	ra,28(sp)
  28:	00812c23          	sw	s0,24(sp)
  2c:	02010413          	add	s0,sp,32
  30:	fe042623          	sw	zero,-20(s0)
  34:	0bebc7b7          	lui	a5,0xbebc
  38:	20078793          	add	a5,a5,512 # bebc200 <SET_GPIO_CHAN0+0xbcbadd0>
  3c:	fef42423          	sw	a5,-24(s0)
  40:	002017b7          	lui	a5,0x201
  44:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  48:	fec42703          	lw	a4,-20(s0)
  4c:	00e7a023          	sw	a4,0(a5)
  50:	002017b7          	lui	a5,0x201
  54:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  58:	fe842703          	lw	a4,-24(s0)
  5c:	00e7a023          	sw	a4,0(a5)
  60:	03200793          	li	a5,50
  64:	fef42223          	sw	a5,-28(s0)
  68:	002017b7          	lui	a5,0x201
  6c:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  70:	fe442703          	lw	a4,-28(s0)
  74:	00e7a023          	sw	a4,0(a5)
  78:	00a00513          	li	a0,10
  7c:	785030ef          	jal	4000 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	779030ef          	jal	4000 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	01c12083          	lw	ra,28(sp)
  98:	01812403          	lw	s0,24(sp)
  9c:	02010113          	add	sp,sp,32
  a0:	00008067          	ret

000000a4 <main>:
  a4:	fd010113          	add	sp,sp,-48
  a8:	02112623          	sw	ra,44(sp)
  ac:	02812423          	sw	s0,40(sp)
  b0:	03010413          	add	s0,sp,48
  b4:	f6dff0ef          	jal	20 <_Z10soc_bootupv>
  b8:	00000013          	nop
  bc:	002017b7          	lui	a5,0x201
  c0:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  c4:	0007a783          	lw	a5,0(a5)
  c8:	fef42623          	sw	a5,-20(s0)
  cc:	002017b7          	lui	a5,0x201
  d0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  d4:	0007a783          	lw	a5,0(a5)
  d8:	fef42423          	sw	a5,-24(s0)
  dc:	08c000ef          	jal	168 <_Z18uart_poll_watchdogv>
  e0:	00000013          	nop
  e4:	002017b7          	lui	a5,0x201
  e8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  ec:	0007a783          	lw	a5,0(a5)
  f0:	fef42223          	sw	a5,-28(s0)
  f4:	002017b7          	lui	a5,0x201
  f8:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  fc:	0007a783          	lw	a5,0(a5)
 100:	fef42023          	sw	a5,-32(s0)
 104:	fe042703          	lw	a4,-32(s0)
 108:	fec42783          	lw	a5,-20(s0)
 10c:	40f707b3          	sub	a5,a4,a5
 110:	fcf42e23          	sw	a5,-36(s0)
 114:	fe442703          	lw	a4,-28(s0)
 118:	fe842783          	lw	a5,-24(s0)
 11c:	40f707b3          	sub	a5,a4,a5
 120:	fcf42c23          	sw	a5,-40(s0)
 124:	05200513          	li	a0,82
 128:	6d9030ef          	jal	4000 <_Z9uart_putcc>
 12c:	00000013          	nop
 130:	fd842503          	lw	a0,-40(s0)
 134:	751030ef          	jal	4084 <_Z11dump_resulti>
 138:	05900513          	li	a0,89
 13c:	6c5030ef          	jal	4000 <_Z9uart_putcc>
 140:	00000013          	nop
 144:	fdc42503          	lw	a0,-36(s0)
 148:	73d030ef          	jal	4084 <_Z11dump_resulti>
 14c:	00000013          	nop
 150:	00000793          	li	a5,0
 154:	00078513          	mv	a0,a5
 158:	02c12083          	lw	ra,44(sp)
 15c:	02812403          	lw	s0,40(sp)
 160:	03010113          	add	sp,sp,48
 164:	00008067          	ret

00000168 <_Z18uart_poll_watchdogv>:
 168:	fe010113          	add	sp,sp,-32
 16c:	00112e23          	sw	ra,28(sp)
 170:	00812c23          	sw	s0,24(sp)
 174:	02010413          	add	s0,sp,32
 178:	fe042623          	sw	zero,-20(s0)
 17c:	0680006f          	j	1e4 <_Z18uart_poll_watchdogv+0x7c>
 180:	002017b7          	lui	a5,0x201
 184:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 188:	0007c783          	lbu	a5,0(a5)
 18c:	fef405a3          	sb	a5,-21(s0)
 190:	feb44783          	lbu	a5,-21(s0)
 194:	0047f793          	and	a5,a5,4
 198:	04078063          	beqz	a5,1d8 <_Z18uart_poll_watchdogv+0x70>
 19c:	002017b7          	lui	a5,0x201
 1a0:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 1a4:	0007c783          	lbu	a5,0(a5)
 1a8:	fef40523          	sb	a5,-22(s0)
 1ac:	fea44703          	lbu	a4,-22(s0)
 1b0:	05300793          	li	a5,83
 1b4:	02f71263          	bne	a4,a5,1d8 <_Z18uart_poll_watchdogv+0x70>
 1b8:	05c000ef          	jal	214 <_Z7computev>
 1bc:	00050793          	mv	a5,a0
 1c0:	fef404a3          	sb	a5,-23(s0)
 1c4:	00000013          	nop
 1c8:	03200513          	li	a0,50
 1cc:	634010ef          	jal	1800 <_Z9gpio_demoi>
 1d0:	00000013          	nop
 1d4:	0300006f          	j	204 <_Z18uart_poll_watchdogv+0x9c>
 1d8:	fec42783          	lw	a5,-20(s0)
 1dc:	00178793          	add	a5,a5,1
 1e0:	fef42623          	sw	a5,-20(s0)
 1e4:	fec42703          	lw	a4,-20(s0)
 1e8:	000027b7          	lui	a5,0x2
 1ec:	70f78793          	add	a5,a5,1807 # 270f <_Z9gpio_demoi+0xf0f>
 1f0:	f8e7d8e3          	bge	a5,a4,180 <_Z18uart_poll_watchdogv+0x18>
 1f4:	03f00513          	li	a0,63
 1f8:	609030ef          	jal	4000 <_Z9uart_putcc>
 1fc:	00000013          	nop
 200:	00000013          	nop
 204:	01c12083          	lw	ra,28(sp)
 208:	01812403          	lw	s0,24(sp)
 20c:	02010113          	add	sp,sp,32
 210:	00008067          	ret

00000214 <_Z7computev>:
 214:	fc010113          	add	sp,sp,-64
 218:	02112e23          	sw	ra,60(sp)
 21c:	02812c23          	sw	s0,56(sp)
 220:	04010413          	add	s0,sp,64
 224:	fe042423          	sw	zero,-24(s0)
 228:	fe042223          	sw	zero,-28(s0)
 22c:	00a00793          	li	a5,10
 230:	fef42023          	sw	a5,-32(s0)
 234:	fff00793          	li	a5,-1
 238:	fef407a3          	sb	a5,-17(s0)
 23c:	002017b7          	lui	a5,0x201
 240:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 244:	0007a783          	lw	a5,0(a5)
 248:	fcf42e23          	sw	a5,-36(s0)
 24c:	002017b7          	lui	a5,0x201
 250:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 254:	0007a783          	lw	a5,0(a5)
 258:	fcf42c23          	sw	a5,-40(s0)
 25c:	fe042503          	lw	a0,-32(s0)
 260:	1a1020ef          	jal	2c00 <_Z8fib_iteri>
 264:	fea42423          	sw	a0,-24(s0)
 268:	00000013          	nop
 26c:	002017b7          	lui	a5,0x201
 270:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 274:	0007a783          	lw	a5,0(a5)
 278:	fcf42a23          	sw	a5,-44(s0)
 27c:	002017b7          	lui	a5,0x201
 280:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 284:	0007a783          	lw	a5,0(a5)
 288:	fcf42823          	sw	a5,-48(s0)
 28c:	fd042703          	lw	a4,-48(s0)
 290:	fdc42783          	lw	a5,-36(s0)
 294:	40f707b3          	sub	a5,a4,a5
 298:	fcf42623          	sw	a5,-52(s0)
 29c:	fd442703          	lw	a4,-44(s0)
 2a0:	fd842783          	lw	a5,-40(s0)
 2a4:	40f707b3          	sub	a5,a4,a5
 2a8:	fcf42423          	sw	a5,-56(s0)
 2ac:	05900513          	li	a0,89
 2b0:	551030ef          	jal	4000 <_Z9uart_putcc>
 2b4:	00000013          	nop
 2b8:	fcc42503          	lw	a0,-52(s0)
 2bc:	5c9030ef          	jal	4084 <_Z11dump_resulti>
 2c0:	00000013          	nop
 2c4:	05200513          	li	a0,82
 2c8:	539030ef          	jal	4000 <_Z9uart_putcc>
 2cc:	00000013          	nop
 2d0:	fc842503          	lw	a0,-56(s0)
 2d4:	5b1030ef          	jal	4084 <_Z11dump_resulti>
 2d8:	00000013          	nop
 2dc:	002017b7          	lui	a5,0x201
 2e0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 2e4:	0007a783          	lw	a5,0(a5)
 2e8:	fcf42e23          	sw	a5,-36(s0)
 2ec:	002017b7          	lui	a5,0x201
 2f0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 2f4:	0007a783          	lw	a5,0(a5)
 2f8:	fcf42c23          	sw	a5,-40(s0)
 2fc:	fe042503          	lw	a0,-32(s0)
 300:	19d020ef          	jal	2c9c <_Z13fib_recursivei>
 304:	00050793          	mv	a5,a0
 308:	fef42223          	sw	a5,-28(s0)
 30c:	002017b7          	lui	a5,0x201
 310:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 314:	0007a783          	lw	a5,0(a5)
 318:	fcf42a23          	sw	a5,-44(s0)
 31c:	002017b7          	lui	a5,0x201
 320:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
 324:	0007a783          	lw	a5,0(a5)
 328:	fcf42823          	sw	a5,-48(s0)
 32c:	fd042703          	lw	a4,-48(s0)
 330:	fdc42783          	lw	a5,-36(s0)
 334:	40f707b3          	sub	a5,a4,a5
 338:	fcf42623          	sw	a5,-52(s0)
 33c:	fd442703          	lw	a4,-44(s0)
 340:	fd842783          	lw	a5,-40(s0)
 344:	40f707b3          	sub	a5,a4,a5
 348:	fcf42423          	sw	a5,-56(s0)
 34c:	05900513          	li	a0,89
 350:	4b1030ef          	jal	4000 <_Z9uart_putcc>
 354:	00000013          	nop
 358:	fcc42503          	lw	a0,-52(s0)
 35c:	529030ef          	jal	4084 <_Z11dump_resulti>
 360:	00000013          	nop
 364:	05200513          	li	a0,82
 368:	499030ef          	jal	4000 <_Z9uart_putcc>
 36c:	00000013          	nop
 370:	fc842503          	lw	a0,-56(s0)
 374:	511030ef          	jal	4084 <_Z11dump_resulti>
 378:	fe842703          	lw	a4,-24(s0)
 37c:	fe442783          	lw	a5,-28(s0)
 380:	00f71e63          	bne	a4,a5,39c <_Z7computev+0x188>
 384:	00100793          	li	a5,1
 388:	fef407a3          	sb	a5,-17(s0)
 38c:	05000513          	li	a0,80
 390:	471030ef          	jal	4000 <_Z9uart_putcc>
 394:	00000013          	nop
 398:	0140006f          	j	3ac <_Z7computev+0x198>
 39c:	fe0407a3          	sb	zero,-17(s0)
 3a0:	04600513          	li	a0,70
 3a4:	45d030ef          	jal	4000 <_Z9uart_putcc>
 3a8:	00000013          	nop
 3ac:	00000013          	nop
 3b0:	fe842503          	lw	a0,-24(s0)
 3b4:	4d1030ef          	jal	4084 <_Z11dump_resulti>
 3b8:	00000013          	nop
 3bc:	04300513          	li	a0,67
 3c0:	441030ef          	jal	4000 <_Z9uart_putcc>
 3c4:	00000013          	nop
 3c8:	fef44783          	lbu	a5,-17(s0)
 3cc:	00078513          	mv	a0,a5
 3d0:	03c12083          	lw	ra,60(sp)
 3d4:	03812403          	lw	s0,56(sp)
 3d8:	04010113          	add	sp,sp,64
 3dc:	00008067          	ret

Disassembly of section .spi_gpio:

00000800 <_Z9gpio_demoi-0x1000>:
	...

00001800 <_Z9gpio_demoi>:
    1800:	fd010113          	add	sp,sp,-48
    1804:	02812623          	sw	s0,44(sp)
    1808:	03010413          	add	s0,sp,48
    180c:	fca42e23          	sw	a0,-36(s0)
    1810:	fe0407a3          	sb	zero,-17(s0)
    1814:	0700006f          	j	1884 <_Z9gpio_demoi+0x84>
    1818:	fe042423          	sw	zero,-24(s0)
    181c:	002017b7          	lui	a5,0x201
    1820:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1824:	00c00713          	li	a4,12
    1828:	00e7a023          	sw	a4,0(a5)
    182c:	0100006f          	j	183c <_Z9gpio_demoi+0x3c>
    1830:	fe842783          	lw	a5,-24(s0)
    1834:	00178793          	add	a5,a5,1
    1838:	fef42423          	sw	a5,-24(s0)
    183c:	fe842703          	lw	a4,-24(s0)
    1840:	fdc42783          	lw	a5,-36(s0)
    1844:	fef746e3          	blt	a4,a5,1830 <_Z9gpio_demoi+0x30>
    1848:	fe042423          	sw	zero,-24(s0)
    184c:	002017b7          	lui	a5,0x201
    1850:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1854:	00d00713          	li	a4,13
    1858:	00e7a023          	sw	a4,0(a5)
    185c:	0100006f          	j	186c <_Z9gpio_demoi+0x6c>
    1860:	fe842783          	lw	a5,-24(s0)
    1864:	00178793          	add	a5,a5,1
    1868:	fef42423          	sw	a5,-24(s0)
    186c:	fe842703          	lw	a4,-24(s0)
    1870:	fdc42783          	lw	a5,-36(s0)
    1874:	fef746e3          	blt	a4,a5,1860 <_Z9gpio_demoi+0x60>
    1878:	fef44783          	lbu	a5,-17(s0)
    187c:	00178793          	add	a5,a5,1
    1880:	fef407a3          	sb	a5,-17(s0)
    1884:	fef44703          	lbu	a4,-17(s0)
    1888:	00f00793          	li	a5,15
    188c:	f8e7f6e3          	bgeu	a5,a4,1818 <_Z9gpio_demoi+0x18>
    1890:	002017b7          	lui	a5,0x201
    1894:	43078793          	add	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
    1898:	0007a023          	sw	zero,0(a5)
    189c:	002017b7          	lui	a5,0x201
    18a0:	42c78793          	add	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
    18a4:	0007a023          	sw	zero,0(a5)
    18a8:	00000013          	nop
    18ac:	02c12403          	lw	s0,44(sp)
    18b0:	03010113          	add	sp,sp,48
    18b4:	00008067          	ret

Disassembly of section .spi_compute:

00001c00 <_Z8fib_iteri-0x1000>:
	...

00002c00 <_Z8fib_iteri>:
    2c00:	fc010113          	add	sp,sp,-64
    2c04:	02812e23          	sw	s0,60(sp)
    2c08:	04010413          	add	s0,sp,64
    2c0c:	fca42623          	sw	a0,-52(s0)
    2c10:	00100793          	li	a5,1
    2c14:	fef42623          	sw	a5,-20(s0)
    2c18:	fe042423          	sw	zero,-24(s0)
    2c1c:	fe042223          	sw	zero,-28(s0)
    2c20:	fe042023          	sw	zero,-32(s0)
    2c24:	fcc42703          	lw	a4,-52(s0)
    2c28:	02e00793          	li	a5,46
    2c2c:	00e7d863          	bge	a5,a4,2c3c <_Z8fib_iteri+0x3c>
    2c30:	02e00793          	li	a5,46
    2c34:	fef42023          	sw	a5,-32(s0)
    2c38:	00c0006f          	j	2c44 <_Z8fib_iteri+0x44>
    2c3c:	fcc42783          	lw	a5,-52(s0)
    2c40:	fef42023          	sw	a5,-32(s0)
    2c44:	00100793          	li	a5,1
    2c48:	fcf42e23          	sw	a5,-36(s0)
    2c4c:	0300006f          	j	2c7c <_Z8fib_iteri+0x7c>
    2c50:	fec42703          	lw	a4,-20(s0)
    2c54:	fe842783          	lw	a5,-24(s0)
    2c58:	00f707b3          	add	a5,a4,a5
    2c5c:	fef42223          	sw	a5,-28(s0)
    2c60:	fec42783          	lw	a5,-20(s0)
    2c64:	fef42423          	sw	a5,-24(s0)
    2c68:	fe442783          	lw	a5,-28(s0)
    2c6c:	fef42623          	sw	a5,-20(s0)
    2c70:	fdc42783          	lw	a5,-36(s0)
    2c74:	00178793          	add	a5,a5,1
    2c78:	fcf42e23          	sw	a5,-36(s0)
    2c7c:	fdc42703          	lw	a4,-36(s0)
    2c80:	fe042783          	lw	a5,-32(s0)
    2c84:	fcf746e3          	blt	a4,a5,2c50 <_Z8fib_iteri+0x50>
    2c88:	fe442783          	lw	a5,-28(s0)
    2c8c:	00078513          	mv	a0,a5
    2c90:	03c12403          	lw	s0,60(sp)
    2c94:	04010113          	add	sp,sp,64
    2c98:	00008067          	ret

00002c9c <_Z13fib_recursivei>:
    2c9c:	fe010113          	add	sp,sp,-32
    2ca0:	00112e23          	sw	ra,28(sp)
    2ca4:	00812c23          	sw	s0,24(sp)
    2ca8:	00912a23          	sw	s1,20(sp)
    2cac:	02010413          	add	s0,sp,32
    2cb0:	fea42623          	sw	a0,-20(s0)
    2cb4:	fec42703          	lw	a4,-20(s0)
    2cb8:	00100793          	li	a5,1
    2cbc:	00e7c663          	blt	a5,a4,2cc8 <_Z13fib_recursivei+0x2c>
    2cc0:	fec42783          	lw	a5,-20(s0)
    2cc4:	0300006f          	j	2cf4 <_Z13fib_recursivei+0x58>
    2cc8:	fec42783          	lw	a5,-20(s0)
    2ccc:	fff78793          	add	a5,a5,-1
    2cd0:	00078513          	mv	a0,a5
    2cd4:	fc9ff0ef          	jal	2c9c <_Z13fib_recursivei>
    2cd8:	00050493          	mv	s1,a0
    2cdc:	fec42783          	lw	a5,-20(s0)
    2ce0:	ffe78793          	add	a5,a5,-2
    2ce4:	00078513          	mv	a0,a5
    2ce8:	fb5ff0ef          	jal	2c9c <_Z13fib_recursivei>
    2cec:	00050793          	mv	a5,a0
    2cf0:	00f487b3          	add	a5,s1,a5
    2cf4:	00078513          	mv	a0,a5
    2cf8:	01c12083          	lw	ra,28(sp)
    2cfc:	01812403          	lw	s0,24(sp)
    2d00:	01412483          	lw	s1,20(sp)
    2d04:	02010113          	add	sp,sp,32
    2d08:	00008067          	ret

Disassembly of section .spi_uart:

00003000 <_Z9uart_putcc-0x1000>:
	...

00004000 <_Z9uart_putcc>:
    4000:	fd010113          	add	sp,sp,-48
    4004:	02812623          	sw	s0,44(sp)
    4008:	03010413          	add	s0,sp,48
    400c:	00050793          	mv	a5,a0
    4010:	fcf40fa3          	sb	a5,-33(s0)
    4014:	002017b7          	lui	a5,0x201
    4018:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    401c:	0007a783          	lw	a5,0(a5)
    4020:	fef42223          	sw	a5,-28(s0)
    4024:	002017b7          	lui	a5,0x201
    4028:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    402c:	fdf44703          	lbu	a4,-33(s0)
    4030:	00e78023          	sb	a4,0(a5)
    4034:	fe042623          	sw	zero,-20(s0)
    4038:	0300006f          	j	4068 <_Z9uart_putcc+0x68>
    403c:	fe042423          	sw	zero,-24(s0)
    4040:	0100006f          	j	4050 <_Z9uart_putcc+0x50>
    4044:	fe842783          	lw	a5,-24(s0)
    4048:	00178793          	add	a5,a5,1
    404c:	fef42423          	sw	a5,-24(s0)
    4050:	fe842703          	lw	a4,-24(s0)
    4054:	fe442783          	lw	a5,-28(s0)
    4058:	fef746e3          	blt	a4,a5,4044 <_Z9uart_putcc+0x44>
    405c:	fec42783          	lw	a5,-20(s0)
    4060:	00178793          	add	a5,a5,1
    4064:	fef42623          	sw	a5,-20(s0)
    4068:	fec42783          	lw	a5,-20(s0)
    406c:	fcf058e3          	blez	a5,403c <_Z9uart_putcc+0x3c>
    4070:	00000013          	nop
    4074:	00000013          	nop
    4078:	02c12403          	lw	s0,44(sp)
    407c:	03010113          	add	sp,sp,48
    4080:	00008067          	ret

00004084 <_Z11dump_resulti>:
    4084:	fd010113          	add	sp,sp,-48
    4088:	02112623          	sw	ra,44(sp)
    408c:	02812423          	sw	s0,40(sp)
    4090:	03010413          	add	s0,sp,48
    4094:	fca42e23          	sw	a0,-36(s0)
    4098:	00100793          	li	a5,1
    409c:	fef42623          	sw	a5,-20(s0)
    40a0:	fdc42783          	lw	a5,-36(s0)
    40a4:	0ff7f793          	zext.b	a5,a5
    40a8:	fef40223          	sb	a5,-28(s0)
    40ac:	fdc42703          	lw	a4,-36(s0)
    40b0:	0ff00793          	li	a5,255
    40b4:	00e7de63          	bge	a5,a4,40d0 <_Z11dump_resulti+0x4c>
    40b8:	fdc42783          	lw	a5,-36(s0)
    40bc:	4087d793          	sra	a5,a5,0x8
    40c0:	0ff7f793          	zext.b	a5,a5
    40c4:	fef402a3          	sb	a5,-27(s0)
    40c8:	00200793          	li	a5,2
    40cc:	fef42623          	sw	a5,-20(s0)
    40d0:	fdc42703          	lw	a4,-36(s0)
    40d4:	000107b7          	lui	a5,0x10
    40d8:	00f74e63          	blt	a4,a5,40f4 <_Z11dump_resulti+0x70>
    40dc:	fdc42783          	lw	a5,-36(s0)
    40e0:	4107d793          	sra	a5,a5,0x10
    40e4:	0ff7f793          	zext.b	a5,a5
    40e8:	fef40323          	sb	a5,-26(s0)
    40ec:	00300793          	li	a5,3
    40f0:	fef42623          	sw	a5,-20(s0)
    40f4:	fdc42703          	lw	a4,-36(s0)
    40f8:	010007b7          	lui	a5,0x1000
    40fc:	00f74e63          	blt	a4,a5,4118 <_Z11dump_resulti+0x94>
    4100:	fdc42783          	lw	a5,-36(s0)
    4104:	0187d793          	srl	a5,a5,0x18
    4108:	0ff7f793          	zext.b	a5,a5
    410c:	fef403a3          	sb	a5,-25(s0)
    4110:	00400793          	li	a5,4
    4114:	fef42623          	sw	a5,-20(s0)
    4118:	04400513          	li	a0,68
    411c:	ee5ff0ef          	jal	4000 <_Z9uart_putcc>
    4120:	00000013          	nop
    4124:	fec42783          	lw	a5,-20(s0)
    4128:	0ff7f793          	zext.b	a5,a5
    412c:	00078513          	mv	a0,a5
    4130:	ed1ff0ef          	jal	4000 <_Z9uart_putcc>
    4134:	00000013          	nop
    4138:	fe042423          	sw	zero,-24(s0)
    413c:	02c0006f          	j	4168 <_Z11dump_resulti+0xe4>
    4140:	fe842783          	lw	a5,-24(s0)
    4144:	ff078793          	add	a5,a5,-16 # fffff0 <SET_GPIO_CHAN0+0xdfebc0>
    4148:	008787b3          	add	a5,a5,s0
    414c:	ff47c783          	lbu	a5,-12(a5)
    4150:	00078513          	mv	a0,a5
    4154:	eadff0ef          	jal	4000 <_Z9uart_putcc>
    4158:	00000013          	nop
    415c:	fe842783          	lw	a5,-24(s0)
    4160:	00178793          	add	a5,a5,1
    4164:	fef42423          	sw	a5,-24(s0)
    4168:	fe842703          	lw	a4,-24(s0)
    416c:	fec42783          	lw	a5,-20(s0)
    4170:	fcf748e3          	blt	a4,a5,4140 <_Z11dump_resulti+0xbc>
    4174:	00000013          	nop
    4178:	00000013          	nop
    417c:	02c12083          	lw	ra,44(sp)
    4180:	02812403          	lw	s0,40(sp)
    4184:	03010113          	add	sp,sp,48
    4188:	00008067          	ret
