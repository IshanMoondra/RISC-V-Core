
/mnt/e/WSL/git_clones/Programs/state_dump.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	002007b7          	lui	a5,0x200
   4:	41078793          	addi	a5,a5,1040 # 200410 <SET_DIS_I_CACHE>
   8:	0007a023          	sw	zero,0(a5)
   c:	00000013          	nop
  10:	00180117          	auipc	sp,0x180
  14:	ff010113          	addi	sp,sp,-16 # 180000 <_end>
  18:	0017e197          	auipc	gp,0x17e
  1c:	fe818193          	addi	gp,gp,-24 # 17e000 <_global_pointer>
  20:	00c000ef          	jal	ra,2c <main>
  24:	ffff                	0xffff
  26:	ffff                	0xffff
  28:	00000013          	nop

0000002c <main>:
  2c:	ff010113          	addi	sp,sp,-16
  30:	00112623          	sw	ra,12(sp)
  34:	00812423          	sw	s0,8(sp)
  38:	01010413          	addi	s0,sp,16
  3c:	3e800513          	li	a0,1000
  40:	038000ef          	jal	ra,78 <_Z9uart_initi>
  44:	03e00513          	li	a0,62
  48:	0c8000ef          	jal	ra,110 <_Z9uart_putcc>
  4c:	00a00513          	li	a0,10
  50:	0c0000ef          	jal	ra,110 <_Z9uart_putcc>
  54:	00000013          	nop
  58:	2ec000ef          	jal	ra,344 <_Z18uart_poll_watchdogv>
  5c:	00000013          	nop
  60:	00000793          	li	a5,0
  64:	00078513          	mv	a0,a5
  68:	00c12083          	lw	ra,12(sp)
  6c:	00812403          	lw	s0,8(sp)
  70:	01010113          	addi	sp,sp,16
  74:	00008067          	ret

00000078 <_Z9uart_initi>:
  78:	fe010113          	addi	sp,sp,-32
  7c:	00812e23          	sw	s0,28(sp)
  80:	02010413          	addi	s0,sp,32
  84:	fea42623          	sw	a0,-20(s0)
  88:	002017b7          	lui	a5,0x201
  8c:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
  90:	fec42703          	lw	a4,-20(s0)
  94:	00e7a023          	sw	a4,0(a5)
  98:	00000013          	nop
  9c:	01c12403          	lw	s0,28(sp)
  a0:	02010113          	addi	sp,sp,32
  a4:	00008067          	ret

000000a8 <_Z9uart_getcv>:
  a8:	fe010113          	addi	sp,sp,-32
  ac:	00812e23          	sw	s0,28(sp)
  b0:	02010413          	addi	s0,sp,32
  b4:	00000013          	nop
  b8:	002017b7          	lui	a5,0x201
  bc:	80478793          	addi	a5,a5,-2044 # 200804 <UART_RECV>
  c0:	0007c783          	lbu	a5,0(a5)
  c4:	fef407a3          	sb	a5,-17(s0)
  c8:	fef44783          	lbu	a5,-17(s0)
  cc:	00078513          	mv	a0,a5
  d0:	01c12403          	lw	s0,28(sp)
  d4:	02010113          	addi	sp,sp,32
  d8:	00008067          	ret

000000dc <_Z11uart_statusv>:
  dc:	fe010113          	addi	sp,sp,-32
  e0:	00812e23          	sw	s0,28(sp)
  e4:	02010413          	addi	s0,sp,32
  e8:	00000013          	nop
  ec:	002017b7          	lui	a5,0x201
  f0:	80c78793          	addi	a5,a5,-2036 # 20080c <UART_STAT>
  f4:	0007c783          	lbu	a5,0(a5)
  f8:	fef407a3          	sb	a5,-17(s0)
  fc:	fef44783          	lbu	a5,-17(s0)
 100:	00078513          	mv	a0,a5
 104:	01c12403          	lw	s0,28(sp)
 108:	02010113          	addi	sp,sp,32
 10c:	00008067          	ret

00000110 <_Z9uart_putcc>:
 110:	fd010113          	addi	sp,sp,-48
 114:	02812623          	sw	s0,44(sp)
 118:	03010413          	addi	s0,sp,48
 11c:	00050793          	mv	a5,a0
 120:	fcf40fa3          	sb	a5,-33(s0)
 124:	002017b7          	lui	a5,0x201
 128:	80078793          	addi	a5,a5,-2048 # 200800 <UART_BAUD>
 12c:	0007a783          	lw	a5,0(a5)
 130:	fef42223          	sw	a5,-28(s0)
 134:	002017b7          	lui	a5,0x201
 138:	80878793          	addi	a5,a5,-2040 # 200808 <UART_SEND>
 13c:	fdf44703          	lbu	a4,-33(s0)
 140:	00e78023          	sb	a4,0(a5)
 144:	fe042623          	sw	zero,-20(s0)
 148:	fec42783          	lw	a5,-20(s0)
 14c:	02f04a63          	bgtz	a5,180 <_Z9uart_putcc+0x70>
 150:	fe042423          	sw	zero,-24(s0)
 154:	fe842703          	lw	a4,-24(s0)
 158:	fe442783          	lw	a5,-28(s0)
 15c:	00f75a63          	bge	a4,a5,170 <_Z9uart_putcc+0x60>
 160:	fe842783          	lw	a5,-24(s0)
 164:	00178793          	addi	a5,a5,1
 168:	fef42423          	sw	a5,-24(s0)
 16c:	fe9ff06f          	j	154 <_Z9uart_putcc+0x44>
 170:	fec42783          	lw	a5,-20(s0)
 174:	00178793          	addi	a5,a5,1
 178:	fef42623          	sw	a5,-20(s0)
 17c:	fcdff06f          	j	148 <_Z9uart_putcc+0x38>
 180:	00000013          	nop
 184:	02c12403          	lw	s0,44(sp)
 188:	03010113          	addi	sp,sp,48
 18c:	00008067          	ret

00000190 <_Z8fib_iteri>:
 190:	fc010113          	addi	sp,sp,-64
 194:	02812e23          	sw	s0,60(sp)
 198:	04010413          	addi	s0,sp,64
 19c:	fca42623          	sw	a0,-52(s0)
 1a0:	00100793          	li	a5,1
 1a4:	fef42623          	sw	a5,-20(s0)
 1a8:	fe042423          	sw	zero,-24(s0)
 1ac:	fe042223          	sw	zero,-28(s0)
 1b0:	fe042023          	sw	zero,-32(s0)
 1b4:	fcc42703          	lw	a4,-52(s0)
 1b8:	02f00793          	li	a5,47
 1bc:	00e7d863          	bge	a5,a4,1cc <_Z8fib_iteri+0x3c>
 1c0:	02f00793          	li	a5,47
 1c4:	fef42023          	sw	a5,-32(s0)
 1c8:	00c0006f          	j	1d4 <_Z8fib_iteri+0x44>
 1cc:	fcc42783          	lw	a5,-52(s0)
 1d0:	fef42023          	sw	a5,-32(s0)
 1d4:	00100793          	li	a5,1
 1d8:	fcf42e23          	sw	a5,-36(s0)
 1dc:	fdc42703          	lw	a4,-36(s0)
 1e0:	fe042783          	lw	a5,-32(s0)
 1e4:	02f75a63          	bge	a4,a5,218 <_Z8fib_iteri+0x88>
 1e8:	fec42703          	lw	a4,-20(s0)
 1ec:	fe842783          	lw	a5,-24(s0)
 1f0:	00f707b3          	add	a5,a4,a5
 1f4:	fef42223          	sw	a5,-28(s0)
 1f8:	fec42783          	lw	a5,-20(s0)
 1fc:	fef42423          	sw	a5,-24(s0)
 200:	fe442783          	lw	a5,-28(s0)
 204:	fef42623          	sw	a5,-20(s0)
 208:	fdc42783          	lw	a5,-36(s0)
 20c:	00178793          	addi	a5,a5,1
 210:	fcf42e23          	sw	a5,-36(s0)
 214:	fc9ff06f          	j	1dc <_Z8fib_iteri+0x4c>
 218:	fe442783          	lw	a5,-28(s0)
 21c:	00078513          	mv	a0,a5
 220:	03c12403          	lw	s0,60(sp)
 224:	04010113          	addi	sp,sp,64
 228:	00008067          	ret

0000022c <_Z13fib_recursivei>:
 22c:	fe010113          	addi	sp,sp,-32
 230:	00112e23          	sw	ra,28(sp)
 234:	00812c23          	sw	s0,24(sp)
 238:	00912a23          	sw	s1,20(sp)
 23c:	02010413          	addi	s0,sp,32
 240:	fea42623          	sw	a0,-20(s0)
 244:	fec42703          	lw	a4,-20(s0)
 248:	00100793          	li	a5,1
 24c:	00e7c663          	blt	a5,a4,258 <_Z13fib_recursivei+0x2c>
 250:	fec42783          	lw	a5,-20(s0)
 254:	0300006f          	j	284 <_Z13fib_recursivei+0x58>
 258:	fec42783          	lw	a5,-20(s0)
 25c:	fff78793          	addi	a5,a5,-1
 260:	00078513          	mv	a0,a5
 264:	fc9ff0ef          	jal	ra,22c <_Z13fib_recursivei>
 268:	00050493          	mv	s1,a0
 26c:	fec42783          	lw	a5,-20(s0)
 270:	ffe78793          	addi	a5,a5,-2
 274:	00078513          	mv	a0,a5
 278:	fb5ff0ef          	jal	ra,22c <_Z13fib_recursivei>
 27c:	00050793          	mv	a5,a0
 280:	00f487b3          	add	a5,s1,a5
 284:	00078513          	mv	a0,a5
 288:	01c12083          	lw	ra,28(sp)
 28c:	01812403          	lw	s0,24(sp)
 290:	01412483          	lw	s1,20(sp)
 294:	02010113          	addi	sp,sp,32
 298:	00008067          	ret

0000029c <_Z11dump_resulti>:
 29c:	fe010113          	addi	sp,sp,-32
 2a0:	00112e23          	sw	ra,28(sp)
 2a4:	00812c23          	sw	s0,24(sp)
 2a8:	02010413          	addi	s0,sp,32
 2ac:	fea42623          	sw	a0,-20(s0)
 2b0:	04400513          	li	a0,68
 2b4:	e5dff0ef          	jal	ra,110 <_Z9uart_putcc>
 2b8:	fec42783          	lw	a5,-20(s0)
 2bc:	0ff7f793          	andi	a5,a5,255
 2c0:	00078513          	mv	a0,a5
 2c4:	e4dff0ef          	jal	ra,110 <_Z9uart_putcc>
 2c8:	fec42703          	lw	a4,-20(s0)
 2cc:	0ff00793          	li	a5,255
 2d0:	00e7dc63          	bge	a5,a4,2e8 <_Z11dump_resulti+0x4c>
 2d4:	fec42783          	lw	a5,-20(s0)
 2d8:	4087d793          	srai	a5,a5,0x8
 2dc:	0ff7f793          	andi	a5,a5,255
 2e0:	00078513          	mv	a0,a5
 2e4:	e2dff0ef          	jal	ra,110 <_Z9uart_putcc>
 2e8:	fec42703          	lw	a4,-20(s0)
 2ec:	000107b7          	lui	a5,0x10
 2f0:	00f74c63          	blt	a4,a5,308 <_Z11dump_resulti+0x6c>
 2f4:	fec42783          	lw	a5,-20(s0)
 2f8:	4107d793          	srai	a5,a5,0x10
 2fc:	0ff7f793          	andi	a5,a5,255
 300:	00078513          	mv	a0,a5
 304:	e0dff0ef          	jal	ra,110 <_Z9uart_putcc>
 308:	fec42703          	lw	a4,-20(s0)
 30c:	010007b7          	lui	a5,0x1000
 310:	00f74c63          	blt	a4,a5,328 <_Z11dump_resulti+0x8c>
 314:	fec42783          	lw	a5,-20(s0)
 318:	0187d793          	srli	a5,a5,0x18
 31c:	0ff7f793          	andi	a5,a5,255
 320:	00078513          	mv	a0,a5
 324:	dedff0ef          	jal	ra,110 <_Z9uart_putcc>
 328:	04400513          	li	a0,68
 32c:	de5ff0ef          	jal	ra,110 <_Z9uart_putcc>
 330:	00000013          	nop
 334:	01c12083          	lw	ra,28(sp)
 338:	01812403          	lw	s0,24(sp)
 33c:	02010113          	addi	sp,sp,32
 340:	00008067          	ret

00000344 <_Z18uart_poll_watchdogv>:
 344:	fe010113          	addi	sp,sp,-32
 348:	00112e23          	sw	ra,28(sp)
 34c:	00812c23          	sw	s0,24(sp)
 350:	02010413          	addi	s0,sp,32
 354:	fe042623          	sw	zero,-20(s0)
 358:	fec42703          	lw	a4,-20(s0)
 35c:	3e700793          	li	a5,999
 360:	06e7c463          	blt	a5,a4,3c8 <_Z18uart_poll_watchdogv+0x84>
 364:	00000013          	nop
 368:	d75ff0ef          	jal	ra,dc <_Z11uart_statusv>
 36c:	00050793          	mv	a5,a0
 370:	fef405a3          	sb	a5,-21(s0)
 374:	00000013          	nop
 378:	feb44783          	lbu	a5,-21(s0)
 37c:	0047f793          	andi	a5,a5,4
 380:	02078c63          	beqz	a5,3b8 <_Z18uart_poll_watchdogv+0x74>
 384:	00000013          	nop
 388:	d21ff0ef          	jal	ra,a8 <_Z9uart_getcv>
 38c:	00050793          	mv	a5,a0
 390:	fef40523          	sb	a5,-22(s0)
 394:	00000013          	nop
 398:	fea44703          	lbu	a4,-22(s0)
 39c:	04100793          	li	a5,65
 3a0:	00f71c63          	bne	a4,a5,3b8 <_Z18uart_poll_watchdogv+0x74>
 3a4:	044000ef          	jal	ra,3e8 <_Z7computev>
 3a8:	00050793          	mv	a5,a0
 3ac:	fef404a3          	sb	a5,-23(s0)
 3b0:	00000013          	nop
 3b4:	0240006f          	j	3d8 <_Z18uart_poll_watchdogv+0x94>
 3b8:	fec42783          	lw	a5,-20(s0)
 3bc:	00178793          	addi	a5,a5,1 # 1000001 <__stack_end+0xd01801>
 3c0:	fef42623          	sw	a5,-20(s0)
 3c4:	f95ff06f          	j	358 <_Z18uart_poll_watchdogv+0x14>
 3c8:	05400513          	li	a0,84
 3cc:	d45ff0ef          	jal	ra,110 <_Z9uart_putcc>
 3d0:	00000013          	nop
 3d4:	00000013          	nop
 3d8:	01c12083          	lw	ra,28(sp)
 3dc:	01812403          	lw	s0,24(sp)
 3e0:	02010113          	addi	sp,sp,32
 3e4:	00008067          	ret

000003e8 <_Z7computev>:
 3e8:	fe010113          	addi	sp,sp,-32
 3ec:	00112e23          	sw	ra,28(sp)
 3f0:	00812c23          	sw	s0,24(sp)
 3f4:	02010413          	addi	s0,sp,32
 3f8:	fe042423          	sw	zero,-24(s0)
 3fc:	fe042223          	sw	zero,-28(s0)
 400:	00a00793          	li	a5,10
 404:	fef42023          	sw	a5,-32(s0)
 408:	fff00793          	li	a5,-1
 40c:	fef407a3          	sb	a5,-17(s0)
 410:	fe042503          	lw	a0,-32(s0)
 414:	d7dff0ef          	jal	ra,190 <_Z8fib_iteri>
 418:	fea42423          	sw	a0,-24(s0)
 41c:	00000013          	nop
 420:	fe042503          	lw	a0,-32(s0)
 424:	e09ff0ef          	jal	ra,22c <_Z13fib_recursivei>
 428:	00050793          	mv	a5,a0
 42c:	fef42223          	sw	a5,-28(s0)
 430:	00000013          	nop
 434:	fe842703          	lw	a4,-24(s0)
 438:	fe442783          	lw	a5,-28(s0)
 43c:	00f71863          	bne	a4,a5,44c <_Z7computev+0x64>
 440:	00100793          	li	a5,1
 444:	fef407a3          	sb	a5,-17(s0)
 448:	0080006f          	j	450 <_Z7computev+0x68>
 44c:	fe0407a3          	sb	zero,-17(s0)
 450:	00000013          	nop
 454:	04300513          	li	a0,67
 458:	cb9ff0ef          	jal	ra,110 <_Z9uart_putcc>
 45c:	00000013          	nop
 460:	fe842503          	lw	a0,-24(s0)
 464:	e39ff0ef          	jal	ra,29c <_Z11dump_resulti>
 468:	00000013          	nop
 46c:	fef44783          	lbu	a5,-17(s0)
 470:	00078513          	mv	a0,a5
 474:	01c12083          	lw	ra,28(sp)
 478:	01812403          	lw	s0,24(sp)
 47c:	02010113          	addi	sp,sp,32
 480:	00008067          	ret

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
 820:	002c                	addi	a1,sp,8
 822:	0000                	unimp
 824:	0000                	unimp
 826:	0000                	unimp
 828:	0024                	addi	s1,sp,8
 82a:	0000                	unimp
 82c:	002c                	addi	a1,sp,8
 82e:	0000                	unimp
 830:	f7fc                	fsw	fa5,108(a5)
 832:	ffff                	0xffff
 834:	004c                	addi	a1,sp,4
 836:	0000                	unimp
 838:	4400                	lw	s0,8(s0)
 83a:	100e                	c.slli	zero,0x23
 83c:	8148                	0x8148
 83e:	8801                	andi	s0,s0,0
 840:	4402                	lw	s0,0(sp)
 842:	080c                	addi	a1,sp,16
 844:	0200                	addi	s0,sp,256
 846:	c130                	sw	a2,64(a0)
 848:	c844                	sw	s1,20(s0)
 84a:	0d44                	addi	s1,sp,660
 84c:	0002                	c.slli64	zero
 84e:	0000                	unimp
 850:	001c                	0x1c
 852:	0000                	unimp
 854:	0054                	addi	a3,sp,4
 856:	0000                	unimp
 858:	f820                	fsw	fs0,112(s0)
 85a:	ffff                	0xffff
 85c:	0030                	addi	a2,sp,8
 85e:	0000                	unimp
 860:	4400                	lw	s0,8(s0)
 862:	200e                	fld	ft0,192(sp)
 864:	8844                	0x8844
 866:	4401                	li	s0,0
 868:	080c                	addi	a1,sp,16
 86a:	5c00                	lw	s0,56(s0)
 86c:	44c8                	lw	a0,12(s1)
 86e:	020d                	addi	tp,tp,3
 870:	001c                	0x1c
 872:	0000                	unimp
 874:	0074                	addi	a3,sp,12
 876:	0000                	unimp
 878:	f830                	fsw	fa2,112(s0)
 87a:	ffff                	0xffff
 87c:	0034                	addi	a3,sp,8
 87e:	0000                	unimp
 880:	4400                	lw	s0,8(s0)
 882:	200e                	fld	ft0,192(sp)
 884:	8844                	0x8844
 886:	4401                	li	s0,0
 888:	080c                	addi	a1,sp,16
 88a:	6000                	flw	fs0,0(s0)
 88c:	44c8                	lw	a0,12(s1)
 88e:	020d                	addi	tp,tp,3
 890:	001c                	0x1c
 892:	0000                	unimp
 894:	0094                	addi	a3,sp,64
 896:	0000                	unimp
 898:	f844                	fsw	fs1,52(s0)
 89a:	ffff                	0xffff
 89c:	0034                	addi	a3,sp,8
 89e:	0000                	unimp
 8a0:	4400                	lw	s0,8(s0)
 8a2:	200e                	fld	ft0,192(sp)
 8a4:	8844                	0x8844
 8a6:	4401                	li	s0,0
 8a8:	080c                	addi	a1,sp,16
 8aa:	6000                	flw	fs0,0(s0)
 8ac:	44c8                	lw	a0,12(s1)
 8ae:	020d                	addi	tp,tp,3
 8b0:	0020                	addi	s0,sp,8
 8b2:	0000                	unimp
 8b4:	00b4                	addi	a3,sp,72
 8b6:	0000                	unimp
 8b8:	f858                	fsw	fa4,52(s0)
 8ba:	ffff                	0xffff
 8bc:	0080                	addi	s0,sp,64
 8be:	0000                	unimp
 8c0:	4400                	lw	s0,8(s0)
 8c2:	300e                	fld	ft0,224(sp)
 8c4:	8844                	0x8844
 8c6:	4401                	li	s0,0
 8c8:	080c                	addi	a1,sp,16
 8ca:	0200                	addi	s0,sp,256
 8cc:	c86c                	sw	a1,84(s0)
 8ce:	0d44                	addi	s1,sp,660
 8d0:	0002                	c.slli64	zero
 8d2:	0000                	unimp
 8d4:	0020                	addi	s0,sp,8
 8d6:	0000                	unimp
 8d8:	00d8                	addi	a4,sp,68
 8da:	0000                	unimp
 8dc:	f8b4                	fsw	fa3,112(s1)
 8de:	ffff                	0xffff
 8e0:	009c                	addi	a5,sp,64
 8e2:	0000                	unimp
 8e4:	4400                	lw	s0,8(s0)
 8e6:	400e                	0x400e
 8e8:	8844                	0x8844
 8ea:	4401                	li	s0,0
 8ec:	080c                	addi	a1,sp,16
 8ee:	0200                	addi	s0,sp,256
 8f0:	c888                	sw	a0,16(s1)
 8f2:	0d44                	addi	s1,sp,660
 8f4:	0002                	c.slli64	zero
 8f6:	0000                	unimp
 8f8:	0028                	addi	a0,sp,8
 8fa:	0000                	unimp
 8fc:	00fc                	addi	a5,sp,76
 8fe:	0000                	unimp
 900:	f92c                	fsw	fa1,112(a0)
 902:	ffff                	0xffff
 904:	0070                	addi	a2,sp,12
 906:	0000                	unimp
 908:	4400                	lw	s0,8(s0)
 90a:	200e                	fld	ft0,192(sp)
 90c:	814c                	0x814c
 90e:	8801                	andi	s0,s0,0
 910:	8902                	jr	s2
 912:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce1880>
 916:	0200                	addi	s0,sp,256
 918:	c14c                	sw	a1,4(a0)
 91a:	c844                	sw	s1,20(s0)
 91c:	c944                	sw	s1,20(a0)
 91e:	0d44                	addi	s1,sp,660
 920:	0002                	c.slli64	zero
 922:	0000                	unimp
 924:	0024                	addi	s1,sp,8
 926:	0000                	unimp
 928:	0128                	addi	a0,sp,136
 92a:	0000                	unimp
 92c:	f970                	fsw	fa2,116(a0)
 92e:	ffff                	0xffff
 930:	00a8                	addi	a0,sp,72
 932:	0000                	unimp
 934:	4400                	lw	s0,8(s0)
 936:	200e                	fld	ft0,192(sp)
 938:	8148                	0x8148
 93a:	8801                	andi	s0,s0,0
 93c:	4402                	lw	s0,0(sp)
 93e:	080c                	addi	a1,sp,16
 940:	0200                	addi	s0,sp,256
 942:	c18c                	sw	a1,0(a1)
 944:	c844                	sw	s1,20(s0)
 946:	0d44                	addi	s1,sp,660
 948:	0002                	c.slli64	zero
 94a:	0000                	unimp
 94c:	0024                	addi	s1,sp,8
 94e:	0000                	unimp
 950:	0150                	addi	a2,sp,132
 952:	0000                	unimp
 954:	f9f0                	fsw	fa2,116(a1)
 956:	ffff                	0xffff
 958:	00a4                	addi	s1,sp,72
 95a:	0000                	unimp
 95c:	4400                	lw	s0,8(s0)
 95e:	200e                	fld	ft0,192(sp)
 960:	8148                	0x8148
 962:	8801                	andi	s0,s0,0
 964:	4402                	lw	s0,0(sp)
 966:	080c                	addi	a1,sp,16
 968:	0200                	addi	s0,sp,256
 96a:	c188                	sw	a0,0(a1)
 96c:	c844                	sw	s1,20(s0)
 96e:	0d44                	addi	s1,sp,660
 970:	0002                	c.slli64	zero
 972:	0000                	unimp
 974:	0024                	addi	s1,sp,8
 976:	0000                	unimp
 978:	0178                	addi	a4,sp,140
 97a:	0000                	unimp
 97c:	fa6c                	fsw	fa1,116(a2)
 97e:	ffff                	0xffff
 980:	009c                	addi	a5,sp,64
 982:	0000                	unimp
 984:	4400                	lw	s0,8(s0)
 986:	200e                	fld	ft0,192(sp)
 988:	8148                	0x8148
 98a:	8801                	andi	s0,s0,0
 98c:	4402                	lw	s0,0(sp)
 98e:	080c                	addi	a1,sp,16
 990:	0200                	addi	s0,sp,256
 992:	c180                	sw	s0,0(a1)
 994:	c844                	sw	s1,20(s0)
 996:	0d44                	addi	s1,sp,660
 998:	0002                	c.slli64	zero
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
