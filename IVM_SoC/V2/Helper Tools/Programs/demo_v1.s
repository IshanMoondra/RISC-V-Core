
/mnt/e/WSL/git_clones/Programs/demo_v1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	002007b7          	lui	a5,0x200
   4:	41078793          	addi	a5,a5,1040 # 200410 <SET_DIS_I_CACHE>
   8:	0007a023          	sw	zero,0(a5)
   c:	00000013          	nop
  10:	00180117          	auipc	sp,0x180
  14:	ff010113          	addi	sp,sp,-16 # 180000 <_end>
  18:	0017f197          	auipc	gp,0x17f
  1c:	fe818193          	addi	gp,gp,-24 # 17f000 <_global_pointer>
  20:	00c000ef          	jal	ra,2c <main>
  24:	ffff                	0xffff
  26:	ffff                	0xffff
  28:	00000013          	nop

0000002c <main>:
  2c:	fd010113          	addi	sp,sp,-48
  30:	02112623          	sw	ra,44(sp)
  34:	02812423          	sw	s0,40(sp)
  38:	03010413          	addi	s0,sp,48
  3c:	00200793          	li	a5,2
  40:	fef42623          	sw	a5,-20(s0)
  44:	00100793          	li	a5,1
  48:	fef42423          	sw	a5,-24(s0)
  4c:	0ff00793          	li	a5,255
  50:	fef42223          	sw	a5,-28(s0)
  54:	fe0401a3          	sb	zero,-29(s0)
  58:	fe040123          	sb	zero,-30(s0)
  5c:	fc042e23          	sw	zero,-36(s0)
  60:	fc042c23          	sw	zero,-40(s0)
  64:	3e800513          	li	a0,1000
  68:	799000ef          	jal	ra,1000 <_Z9uart_initi>
  6c:	03e00513          	li	a0,62
  70:	028010ef          	jal	ra,1098 <_Z9uart_putcc>
  74:	03f00513          	li	a0,63
  78:	020010ef          	jal	ra,1098 <_Z9uart_putcc>
  7c:	00a00513          	li	a0,10
  80:	018010ef          	jal	ra,1098 <_Z9uart_putcc>
  84:	00000013          	nop
  88:	7dd000ef          	jal	ra,1064 <_Z11uart_statusv>
  8c:	00050793          	mv	a5,a0
  90:	fef401a3          	sb	a5,-29(s0)
  94:	00000013          	nop
  98:	799000ef          	jal	ra,1030 <_Z9uart_getcv>
  9c:	00050793          	mv	a5,a0
  a0:	fef40123          	sb	a5,-30(s0)
  a4:	00000013          	nop
  a8:	00a00513          	li	a0,10
  ac:	06c010ef          	jal	ra,1118 <_Z8fib_iteri>
  b0:	fca42e23          	sw	a0,-36(s0)
  b4:	00000013          	nop
  b8:	00a00513          	li	a0,10
  bc:	0f8010ef          	jal	ra,11b4 <_Z13fib_recursivei>
  c0:	00050793          	mv	a5,a0
  c4:	fcf42c23          	sw	a5,-40(s0)
  c8:	04400513          	li	a0,68
  cc:	7cd000ef          	jal	ra,1098 <_Z9uart_putcc>
  d0:	00000013          	nop
  d4:	fe244783          	lbu	a5,-30(s0)
  d8:	00078513          	mv	a0,a5
  dc:	7bd000ef          	jal	ra,1098 <_Z9uart_putcc>
  e0:	00000013          	nop
  e4:	fdc42703          	lw	a4,-36(s0)
  e8:	fd842783          	lw	a5,-40(s0)
  ec:	00f71863          	bne	a4,a5,fc <main+0xd0>
  f0:	fec42783          	lw	a5,-20(s0)
  f4:	fef42223          	sw	a5,-28(s0)
  f8:	00c0006f          	j	104 <main+0xd8>
  fc:	fe842783          	lw	a5,-24(s0)
 100:	fef42223          	sw	a5,-28(s0)
 104:	00000793          	li	a5,0
 108:	00078513          	mv	a0,a5
 10c:	02c12083          	lw	ra,44(sp)
 110:	02812403          	lw	s0,40(sp)
 114:	03010113          	addi	sp,sp,48
 118:	00008067          	ret

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
 420:	002c                	addi	a1,sp,8
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	001c                	0x1c
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	0bd0                	addi	a2,sp,468
 432:	0000                	unimp
 434:	0030                	addi	a2,sp,8
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	200e                	fld	ft0,192(sp)
 43c:	8844                	0x8844
 43e:	4401                	li	s0,0
 440:	080c                	addi	a1,sp,16
 442:	5c00                	lw	s0,56(s0)
 444:	44c8                	lw	a0,12(s1)
 446:	020d                	addi	tp,tp,3
 448:	001c                	0x1c
 44a:	0000                	unimp
 44c:	004c                	addi	a1,sp,4
 44e:	0000                	unimp
 450:	0be0                	addi	s0,sp,476
 452:	0000                	unimp
 454:	0034                	addi	a3,sp,8
 456:	0000                	unimp
 458:	4400                	lw	s0,8(s0)
 45a:	200e                	fld	ft0,192(sp)
 45c:	8844                	0x8844
 45e:	4401                	li	s0,0
 460:	080c                	addi	a1,sp,16
 462:	6000                	flw	fs0,0(s0)
 464:	44c8                	lw	a0,12(s1)
 466:	020d                	addi	tp,tp,3
 468:	001c                	0x1c
 46a:	0000                	unimp
 46c:	006c                	addi	a1,sp,12
 46e:	0000                	unimp
 470:	0bf4                	addi	a3,sp,476
 472:	0000                	unimp
 474:	0034                	addi	a3,sp,8
 476:	0000                	unimp
 478:	4400                	lw	s0,8(s0)
 47a:	200e                	fld	ft0,192(sp)
 47c:	8844                	0x8844
 47e:	4401                	li	s0,0
 480:	080c                	addi	a1,sp,16
 482:	6000                	flw	fs0,0(s0)
 484:	44c8                	lw	a0,12(s1)
 486:	020d                	addi	tp,tp,3
 488:	0020                	addi	s0,sp,8
 48a:	0000                	unimp
 48c:	008c                	addi	a1,sp,64
 48e:	0000                	unimp
 490:	0c08                	addi	a0,sp,528
 492:	0000                	unimp
 494:	0080                	addi	s0,sp,64
 496:	0000                	unimp
 498:	4400                	lw	s0,8(s0)
 49a:	300e                	fld	ft0,224(sp)
 49c:	8844                	0x8844
 49e:	4401                	li	s0,0
 4a0:	080c                	addi	a1,sp,16
 4a2:	0200                	addi	s0,sp,256
 4a4:	c86c                	sw	a1,84(s0)
 4a6:	0d44                	addi	s1,sp,660
 4a8:	0002                	c.slli64	zero
 4aa:	0000                	unimp
 4ac:	0020                	addi	s0,sp,8
 4ae:	0000                	unimp
 4b0:	00b0                	addi	a2,sp,72
 4b2:	0000                	unimp
 4b4:	0c64                	addi	s1,sp,540
 4b6:	0000                	unimp
 4b8:	009c                	addi	a5,sp,64
 4ba:	0000                	unimp
 4bc:	4400                	lw	s0,8(s0)
 4be:	400e                	0x400e
 4c0:	8844                	0x8844
 4c2:	4401                	li	s0,0
 4c4:	080c                	addi	a1,sp,16
 4c6:	0200                	addi	s0,sp,256
 4c8:	c888                	sw	a0,16(s1)
 4ca:	0d44                	addi	s1,sp,660
 4cc:	0002                	c.slli64	zero
 4ce:	0000                	unimp
 4d0:	0028                	addi	a0,sp,8
 4d2:	0000                	unimp
 4d4:	00d4                	addi	a3,sp,68
 4d6:	0000                	unimp
 4d8:	0cdc                	addi	a5,sp,596
 4da:	0000                	unimp
 4dc:	0070                	addi	a2,sp,12
 4de:	0000                	unimp
 4e0:	4400                	lw	s0,8(s0)
 4e2:	200e                	fld	ft0,192(sp)
 4e4:	814c                	0x814c
 4e6:	8801                	andi	s0,s0,0
 4e8:	8902                	jr	s2
 4ea:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce0c80>
 4ee:	0200                	addi	s0,sp,256
 4f0:	c14c                	sw	a1,4(a0)
 4f2:	c844                	sw	s1,20(s0)
 4f4:	c944                	sw	s1,20(a0)
 4f6:	0d44                	addi	s1,sp,660
 4f8:	0002                	c.slli64	zero
 4fa:	0000                	unimp
 4fc:	0024                	addi	s1,sp,8
 4fe:	0000                	unimp
 500:	0100                	addi	s0,sp,128
 502:	0000                	unimp
 504:	fb28                	fsw	fa0,112(a4)
 506:	ffff                	0xffff
 508:	00f0                	addi	a2,sp,76
 50a:	0000                	unimp
 50c:	4400                	lw	s0,8(s0)
 50e:	300e                	fld	ft0,224(sp)
 510:	8148                	0x8148
 512:	8801                	andi	s0,s0,0
 514:	4402                	lw	s0,0(sp)
 516:	080c                	addi	a1,sp,16
 518:	0200                	addi	s0,sp,256
 51a:	c1d4                	sw	a3,4(a1)
 51c:	c844                	sw	s1,20(s0)
 51e:	0d44                	addi	s1,sp,660
 520:	0002                	c.slli64	zero
	...

Disassembly of section .spi_compute:

00000800 <_Z9uart_initi-0x800>:
	...

00001000 <_Z9uart_initi>:
    1000:	fe010113          	addi	sp,sp,-32
    1004:	00812e23          	sw	s0,28(sp)
    1008:	02010413          	addi	s0,sp,32
    100c:	fea42623          	sw	a0,-20(s0)
    1010:	002017b7          	lui	a5,0x201
    1014:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
    1018:	fec42703          	lw	a4,-20(s0)
    101c:	00e7a023          	sw	a4,0(a5)
    1020:	00000013          	nop
    1024:	01c12403          	lw	s0,28(sp)
    1028:	02010113          	addi	sp,sp,32
    102c:	00008067          	ret

00001030 <_Z9uart_getcv>:
    1030:	fe010113          	addi	sp,sp,-32
    1034:	00812e23          	sw	s0,28(sp)
    1038:	02010413          	addi	s0,sp,32
    103c:	00000013          	nop
    1040:	002017b7          	lui	a5,0x201
    1044:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
    1048:	0007c783          	lbu	a5,0(a5)
    104c:	fef407a3          	sb	a5,-17(s0)
    1050:	fef44783          	lbu	a5,-17(s0)
    1054:	00078513          	mv	a0,a5
    1058:	01c12403          	lw	s0,28(sp)
    105c:	02010113          	addi	sp,sp,32
    1060:	00008067          	ret

00001064 <_Z11uart_statusv>:
    1064:	fe010113          	addi	sp,sp,-32
    1068:	00812e23          	sw	s0,28(sp)
    106c:	02010413          	addi	s0,sp,32
    1070:	00000013          	nop
    1074:	002017b7          	lui	a5,0x201
    1078:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
    107c:	0007c783          	lbu	a5,0(a5)
    1080:	fef407a3          	sb	a5,-17(s0)
    1084:	fef44783          	lbu	a5,-17(s0)
    1088:	00078513          	mv	a0,a5
    108c:	01c12403          	lw	s0,28(sp)
    1090:	02010113          	addi	sp,sp,32
    1094:	00008067          	ret

00001098 <_Z9uart_putcc>:
    1098:	fd010113          	addi	sp,sp,-48
    109c:	02812623          	sw	s0,44(sp)
    10a0:	03010413          	addi	s0,sp,48
    10a4:	00050793          	mv	a5,a0
    10a8:	fcf40fa3          	sb	a5,-33(s0)
    10ac:	002017b7          	lui	a5,0x201
    10b0:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
    10b4:	0007a783          	lw	a5,0(a5)
    10b8:	fef42223          	sw	a5,-28(s0)
    10bc:	002017b7          	lui	a5,0x201
    10c0:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
    10c4:	fdf44703          	lbu	a4,-33(s0)
    10c8:	00e78023          	sb	a4,0(a5)
    10cc:	fe042623          	sw	zero,-20(s0)
    10d0:	fec42783          	lw	a5,-20(s0)
    10d4:	02f04a63          	bgtz	a5,1108 <_Z9uart_putcc+0x70>
    10d8:	fe042423          	sw	zero,-24(s0)
    10dc:	fe842703          	lw	a4,-24(s0)
    10e0:	fe442783          	lw	a5,-28(s0)
    10e4:	00f75a63          	bge	a4,a5,10f8 <_Z9uart_putcc+0x60>
    10e8:	fe842783          	lw	a5,-24(s0)
    10ec:	00178793          	addi	a5,a5,1
    10f0:	fef42423          	sw	a5,-24(s0)
    10f4:	fe9ff06f          	j	10dc <_Z9uart_putcc+0x44>
    10f8:	fec42783          	lw	a5,-20(s0)
    10fc:	00178793          	addi	a5,a5,1
    1100:	fef42623          	sw	a5,-20(s0)
    1104:	fcdff06f          	j	10d0 <_Z9uart_putcc+0x38>
    1108:	00000013          	nop
    110c:	02c12403          	lw	s0,44(sp)
    1110:	03010113          	addi	sp,sp,48
    1114:	00008067          	ret

00001118 <_Z8fib_iteri>:
    1118:	fc010113          	addi	sp,sp,-64
    111c:	02812e23          	sw	s0,60(sp)
    1120:	04010413          	addi	s0,sp,64
    1124:	fca42623          	sw	a0,-52(s0)
    1128:	00100793          	li	a5,1
    112c:	fef42623          	sw	a5,-20(s0)
    1130:	fe042423          	sw	zero,-24(s0)
    1134:	fe042223          	sw	zero,-28(s0)
    1138:	fe042023          	sw	zero,-32(s0)
    113c:	fcc42703          	lw	a4,-52(s0)
    1140:	02f00793          	li	a5,47
    1144:	00e7d863          	bge	a5,a4,1154 <_Z8fib_iteri+0x3c>
    1148:	02f00793          	li	a5,47
    114c:	fef42023          	sw	a5,-32(s0)
    1150:	00c0006f          	j	115c <_Z8fib_iteri+0x44>
    1154:	fcc42783          	lw	a5,-52(s0)
    1158:	fef42023          	sw	a5,-32(s0)
    115c:	00100793          	li	a5,1
    1160:	fcf42e23          	sw	a5,-36(s0)
    1164:	fdc42703          	lw	a4,-36(s0)
    1168:	fe042783          	lw	a5,-32(s0)
    116c:	02f75a63          	bge	a4,a5,11a0 <_Z8fib_iteri+0x88>
    1170:	fec42703          	lw	a4,-20(s0)
    1174:	fe842783          	lw	a5,-24(s0)
    1178:	00f707b3          	add	a5,a4,a5
    117c:	fef42223          	sw	a5,-28(s0)
    1180:	fec42783          	lw	a5,-20(s0)
    1184:	fef42423          	sw	a5,-24(s0)
    1188:	fe442783          	lw	a5,-28(s0)
    118c:	fef42623          	sw	a5,-20(s0)
    1190:	fdc42783          	lw	a5,-36(s0)
    1194:	00178793          	addi	a5,a5,1
    1198:	fcf42e23          	sw	a5,-36(s0)
    119c:	fc9ff06f          	j	1164 <_Z8fib_iteri+0x4c>
    11a0:	fe442783          	lw	a5,-28(s0)
    11a4:	00078513          	mv	a0,a5
    11a8:	03c12403          	lw	s0,60(sp)
    11ac:	04010113          	addi	sp,sp,64
    11b0:	00008067          	ret

000011b4 <_Z13fib_recursivei>:
    11b4:	fe010113          	addi	sp,sp,-32
    11b8:	00112e23          	sw	ra,28(sp)
    11bc:	00812c23          	sw	s0,24(sp)
    11c0:	00912a23          	sw	s1,20(sp)
    11c4:	02010413          	addi	s0,sp,32
    11c8:	fea42623          	sw	a0,-20(s0)
    11cc:	fec42703          	lw	a4,-20(s0)
    11d0:	00100793          	li	a5,1
    11d4:	00e7c663          	blt	a5,a4,11e0 <_Z13fib_recursivei+0x2c>
    11d8:	fec42783          	lw	a5,-20(s0)
    11dc:	0300006f          	j	120c <_Z13fib_recursivei+0x58>
    11e0:	fec42783          	lw	a5,-20(s0)
    11e4:	fff78793          	addi	a5,a5,-1
    11e8:	00078513          	mv	a0,a5
    11ec:	fc9ff0ef          	jal	ra,11b4 <_Z13fib_recursivei>
    11f0:	00050493          	mv	s1,a0
    11f4:	fec42783          	lw	a5,-20(s0)
    11f8:	ffe78793          	addi	a5,a5,-2
    11fc:	00078513          	mv	a0,a5
    1200:	fb5ff0ef          	jal	ra,11b4 <_Z13fib_recursivei>
    1204:	00050793          	mv	a5,a0
    1208:	00f487b3          	add	a5,s1,a5
    120c:	00078513          	mv	a0,a5
    1210:	01c12083          	lw	ra,28(sp)
    1214:	01812403          	lw	s0,24(sp)
    1218:	01412483          	lw	s1,20(sp)
    121c:	02010113          	addi	sp,sp,32
    1220:	00008067          	ret

Disassembly of section .spi_uart:

00001400 <.spi_uart>:
	...

Disassembly of section .heap:

0017f000 <__bss_end>:
	...

Disassembly of section .comment:

00000000 <__stack_start-0x17f400>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
