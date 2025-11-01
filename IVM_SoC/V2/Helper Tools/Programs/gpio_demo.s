
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
  38:	038000ef          	jal	ra,70 <_Z8soc_bootv>
  3c:	00000013          	nop
  40:	03200513          	li	a0,50
  44:	0a4000ef          	jal	ra,e8 <_Z9gpio_demoi>
  48:	faa00793          	li	a5,-86
  4c:	fef407a3          	sb	a5,-17(s0)
  50:	04300513          	li	a0,67
  54:	7ad000ef          	jal	ra,1000 <_Z9uart_putcc>
  58:	00000793          	li	a5,0
  5c:	00078513          	mv	a0,a5
  60:	01c12083          	lw	ra,28(sp)
  64:	01812403          	lw	s0,24(sp)
  68:	02010113          	addi	sp,sp,32
  6c:	00008067          	ret

00000070 <_Z8soc_bootv>:
  70:	fe010113          	addi	sp,sp,-32
  74:	00112e23          	sw	ra,28(sp)
  78:	00812c23          	sw	s0,24(sp)
  7c:	02010413          	addi	s0,sp,32
  80:	fe042623          	sw	zero,-20(s0)
  84:	0007a7b7          	lui	a5,0x7a
  88:	12078793          	addi	a5,a5,288 # 7a120 <_Z9uart_putcc+0x79120>
  8c:	fef42423          	sw	a5,-24(s0)
  90:	002017b7          	lui	a5,0x201
  94:	03478793          	addi	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  98:	fec42703          	lw	a4,-20(s0)
  9c:	00e7a023          	sw	a4,0(a5)
  a0:	002017b7          	lui	a5,0x201
  a4:	03878793          	addi	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  a8:	fe842703          	lw	a4,-24(s0)
  ac:	00e7a023          	sw	a4,0(a5)
  b0:	3e800793          	li	a5,1000
  b4:	fef42223          	sw	a5,-28(s0)
  b8:	002017b7          	lui	a5,0x201
  bc:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
  c0:	fe442703          	lw	a4,-28(s0)
  c4:	00e7a023          	sw	a4,0(a5)
  c8:	03e00513          	li	a0,62
  cc:	735000ef          	jal	ra,1000 <_Z9uart_putcc>
  d0:	00000013          	nop
  d4:	00000013          	nop
  d8:	01c12083          	lw	ra,28(sp)
  dc:	01812403          	lw	s0,24(sp)
  e0:	02010113          	addi	sp,sp,32
  e4:	00008067          	ret

000000e8 <_Z9gpio_demoi>:
  e8:	fd010113          	addi	sp,sp,-48
  ec:	02812623          	sw	s0,44(sp)
  f0:	03010413          	addi	s0,sp,48
  f4:	fca42e23          	sw	a0,-36(s0)
  f8:	fe0407a3          	sb	zero,-17(s0)
  fc:	fef44703          	lbu	a4,-17(s0)
 100:	00700793          	li	a5,7
 104:	06e7ea63          	bltu	a5,a4,178 <_Z9gpio_demoi+0x90>
 108:	fe042423          	sw	zero,-24(s0)
 10c:	002017b7          	lui	a5,0x201
 110:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 114:	00c00713          	li	a4,12
 118:	00e7a023          	sw	a4,0(a5)
 11c:	fe842703          	lw	a4,-24(s0)
 120:	fdc42783          	lw	a5,-36(s0)
 124:	00f75a63          	bge	a4,a5,138 <_Z9gpio_demoi+0x50>
 128:	fe842783          	lw	a5,-24(s0)
 12c:	00178793          	addi	a5,a5,1
 130:	fef42423          	sw	a5,-24(s0)
 134:	fe9ff06f          	j	11c <_Z9gpio_demoi+0x34>
 138:	fe042423          	sw	zero,-24(s0)
 13c:	002017b7          	lui	a5,0x201
 140:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 144:	00d00713          	li	a4,13
 148:	00e7a023          	sw	a4,0(a5)
 14c:	fe842703          	lw	a4,-24(s0)
 150:	fdc42783          	lw	a5,-36(s0)
 154:	00f75a63          	bge	a4,a5,168 <_Z9gpio_demoi+0x80>
 158:	fe842783          	lw	a5,-24(s0)
 15c:	00178793          	addi	a5,a5,1
 160:	fef42423          	sw	a5,-24(s0)
 164:	fe9ff06f          	j	14c <_Z9gpio_demoi+0x64>
 168:	fef44783          	lbu	a5,-17(s0)
 16c:	00178793          	addi	a5,a5,1
 170:	fef407a3          	sb	a5,-17(s0)
 174:	f89ff06f          	j	fc <_Z9gpio_demoi+0x14>
 178:	002017b7          	lui	a5,0x201
 17c:	43078793          	addi	a5,a5,1072 # 201430 <SET_GPIO_CHAN0>
 180:	0007a023          	sw	zero,0(a5)
 184:	002017b7          	lui	a5,0x201
 188:	42c78793          	addi	a5,a5,1068 # 20142c <SET_FLASH_SPECIAL>
 18c:	0007a023          	sw	zero,0(a5)
 190:	00000013          	nop
 194:	02c12403          	lw	s0,44(sp)
 198:	03010113          	addi	sp,sp,48
 19c:	00008067          	ret

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
 430:	0bd0                	addi	a2,sp,468
 432:	0000                	unimp
 434:	0080                	addi	s0,sp,64
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	300e                	fld	ft0,224(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	0200                	addi	s0,sp,256
 444:	c86c                	sw	a1,84(s0)
 446:	0d44                	addi	s1,sp,660
 448:	0002                	c.slli64	zero
 44a:	0000                	unimp
 44c:	0024                	addi	s1,sp,8
 44e:	0000                	unimp
 450:	0050                	addi	a2,sp,4
 452:	0000                	unimp
 454:	fbcc                	fsw	fa1,52(a5)
 456:	ffff                	0xffff
 458:	0050                	addi	a2,sp,4
 45a:	0000                	unimp
 45c:	4400                	lw	s0,8(s0)
 45e:	200e                	fld	ft0,192(sp)
 460:	8148                	0x8148
 462:	8801                	andi	s0,s0,0
 464:	4402                	lw	s0,0(sp)
 466:	080c                	addi	a1,sp,16
 468:	0200                	addi	s0,sp,256
 46a:	c134                	sw	a3,64(a0)
 46c:	c844                	sw	s1,20(s0)
 46e:	0d44                	addi	s1,sp,660
 470:	0002                	c.slli64	zero
 472:	0000                	unimp
 474:	0024                	addi	s1,sp,8
 476:	0000                	unimp
 478:	0078                	addi	a4,sp,12
 47a:	0000                	unimp
 47c:	fbf4                	fsw	fa3,116(a5)
 47e:	ffff                	0xffff
 480:	0078                	addi	a4,sp,12
 482:	0000                	unimp
 484:	4400                	lw	s0,8(s0)
 486:	200e                	fld	ft0,192(sp)
 488:	8148                	0x8148
 48a:	8801                	andi	s0,s0,0
 48c:	4402                	lw	s0,0(sp)
 48e:	080c                	addi	a1,sp,16
 490:	0200                	addi	s0,sp,256
 492:	c15c                	sw	a5,4(a0)
 494:	c844                	sw	s1,20(s0)
 496:	0d44                	addi	s1,sp,660
 498:	0002                	c.slli64	zero
 49a:	0000                	unimp
 49c:	0020                	addi	s0,sp,8
 49e:	0000                	unimp
 4a0:	00a0                	addi	s0,sp,72
 4a2:	0000                	unimp
 4a4:	fc44                	fsw	fs1,60(s0)
 4a6:	ffff                	0xffff
 4a8:	00b8                	addi	a4,sp,72
 4aa:	0000                	unimp
 4ac:	4400                	lw	s0,8(s0)
 4ae:	300e                	fld	ft0,224(sp)
 4b0:	8844                	0x8844
 4b2:	4401                	li	s0,0
 4b4:	080c                	addi	a1,sp,16
 4b6:	0200                	addi	s0,sp,256
 4b8:	c8a4                	sw	s1,80(s1)
 4ba:	0d44                	addi	s1,sp,660
 4bc:	0002                	c.slli64	zero
	...

Disassembly of section .spi_compute:

00000800 <_Z9uart_putcc-0x800>:
	...

00001000 <_Z9uart_putcc>:
    1000:	fd010113          	addi	sp,sp,-48
    1004:	02812623          	sw	s0,44(sp)
    1008:	03010413          	addi	s0,sp,48
    100c:	00050793          	mv	a5,a0
    1010:	fcf40fa3          	sb	a5,-33(s0)
    1014:	002017b7          	lui	a5,0x201
    1018:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
    101c:	0007a783          	lw	a5,0(a5)
    1020:	fef42223          	sw	a5,-28(s0)
    1024:	002017b7          	lui	a5,0x201
    1028:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
    102c:	fdf44703          	lbu	a4,-33(s0)
    1030:	00e78023          	sb	a4,0(a5)
    1034:	fe042623          	sw	zero,-20(s0)
    1038:	fec42783          	lw	a5,-20(s0)
    103c:	02f04a63          	bgtz	a5,1070 <_Z9uart_putcc+0x70>
    1040:	fe042423          	sw	zero,-24(s0)
    1044:	fe842703          	lw	a4,-24(s0)
    1048:	fe442783          	lw	a5,-28(s0)
    104c:	00f75a63          	bge	a4,a5,1060 <_Z9uart_putcc+0x60>
    1050:	fe842783          	lw	a5,-24(s0)
    1054:	00178793          	addi	a5,a5,1
    1058:	fef42423          	sw	a5,-24(s0)
    105c:	fe9ff06f          	j	1044 <_Z9uart_putcc+0x44>
    1060:	fec42783          	lw	a5,-20(s0)
    1064:	00178793          	addi	a5,a5,1
    1068:	fef42623          	sw	a5,-20(s0)
    106c:	fcdff06f          	j	1038 <_Z9uart_putcc+0x38>
    1070:	00000013          	nop
    1074:	02c12403          	lw	s0,44(sp)
    1078:	03010113          	addi	sp,sp,48
    107c:	00008067          	ret

Disassembly of section .spi_uart:

00001400 <.spi_uart>:
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
