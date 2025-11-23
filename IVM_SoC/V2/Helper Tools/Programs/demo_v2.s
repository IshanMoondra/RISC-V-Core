
/mnt/e/WSL/git_clones/Programs/../build/elf/demo_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_Z8soc_bootv>:
   0:	00000493          	li	s1,0
   4:	004c57b7          	lui	a5,0x4c5
   8:	b4078093          	addi	ra,a5,-1216 # 4c4b40 <__stack_end+0x1c6340>
   c:	002017b7          	lui	a5,0x201
  10:	0347a783          	lw	a5,52(a5) # 201034 <SET_WATCHDOG_HIGH>
  14:	0097a023          	sw	s1,0(a5)
  18:	002017b7          	lui	a5,0x201
  1c:	0387a783          	lw	a5,56(a5) # 201038 <SET_WATCHDOG_LOW>
  20:	0017a023          	sw	ra,0(a5)
  24:	3e800093          	li	ra,1000
  28:	002017b7          	lui	a5,0x201
  2c:	8007a783          	lw	a5,-2048(a5) # 200800 <UART_BAUD>
  30:	0017a023          	sw	ra,0(a5)
  34:	002017b7          	lui	a5,0x201
  38:	0447a783          	lw	a5,68(a5) # 201044 <SET_DIS_SRAM_GATER>
  3c:	00100713          	li	a4,1
  40:	00e7a023          	sw	a4,0(a5)
  44:	03e00513          	li	a0,62
  48:	3b9030ef          	jal	ra,3c00 <_Z9uart_putcc>
  4c:	00000013          	nop
  50:	00000013          	nop

00000054 <_start>:
  54:	ff010113          	addi	sp,sp,-16
  58:	00112623          	sw	ra,12(sp)
  5c:	00812423          	sw	s0,8(sp)
  60:	01010413          	addi	s0,sp,16
  64:	00000013          	nop
  68:	00180117          	auipc	sp,0x180
  6c:	f9810113          	addi	sp,sp,-104 # 180000 <_end>
  70:	0017e197          	auipc	gp,0x17e
  74:	f9018193          	addi	gp,gp,-112 # 17e000 <_global_pointer>
  78:	01c000ef          	jal	ra,94 <main>
  7c:	ffff                	0xffff
  7e:	ffff                	0xffff
  80:	00000013          	nop
  84:	00c12083          	lw	ra,12(sp)
  88:	00812403          	lw	s0,8(sp)
  8c:	01010113          	addi	sp,sp,16
  90:	00008067          	ret

00000094 <main>:
  94:	ff010113          	addi	sp,sp,-16
  98:	00112623          	sw	ra,12(sp)
  9c:	00812423          	sw	s0,8(sp)
  a0:	01010413          	addi	s0,sp,16
  a4:	f5dff0ef          	jal	ra,0 <_Z8soc_bootv>
  a8:	00000013          	nop
  ac:	754020ef          	jal	ra,2800 <_Z7computev>
  b0:	00000793          	li	a5,0
  b4:	00078513          	mv	a0,a5
  b8:	00c12083          	lw	ra,12(sp)
  bc:	00812403          	lw	s0,8(sp)
  c0:	01010113          	addi	sp,sp,16
  c4:	00008067          	ret

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
 420:	0054                	addi	a3,sp,4
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0020                	addi	s0,sp,8
 42a:	0000                	unimp
 42c:	002c                	addi	a1,sp,8
 42e:	0000                	unimp
 430:	fc24                	fsw	fs1,120(s0)
 432:	ffff                	0xffff
 434:	0040                	addi	s0,sp,4
 436:	0000                	unimp
 438:	4400                	lw	s0,8(s0)
 43a:	100e                	c.slli	zero,0x23
 43c:	8148                	0x8148
 43e:	8801                	andi	s0,s0,0
 440:	4402                	lw	s0,0(sp)
 442:	080c                	addi	a1,sp,16
 444:	6400                	flw	fs0,8(s0)
 446:	44c1                	li	s1,16
 448:	44c8                	lw	a0,12(s1)
 44a:	020d                	addi	tp,tp,3
 44c:	0024                	addi	s1,sp,8
 44e:	0000                	unimp
 450:	0050                	addi	a2,sp,4
 452:	0000                	unimp
 454:	23ac                	fld	fa1,64(a5)
 456:	0000                	unimp
 458:	0098                	addi	a4,sp,64
 45a:	0000                	unimp
 45c:	4400                	lw	s0,8(s0)
 45e:	200e                	fld	ft0,192(sp)
 460:	8148                	0x8148
 462:	8801                	andi	s0,s0,0
 464:	4402                	lw	s0,0(sp)
 466:	080c                	addi	a1,sp,16
 468:	0200                	addi	s0,sp,256
 46a:	c17c                	sw	a5,68(a0)
 46c:	c844                	sw	s1,20(s0)
 46e:	0d44                	addi	s1,sp,660
 470:	0002                	c.slli64	zero
 472:	0000                	unimp
 474:	0020                	addi	s0,sp,8
 476:	0000                	unimp
 478:	0078                	addi	a4,sp,12
 47a:	0000                	unimp
 47c:	241c                	fld	fa5,8(s0)
 47e:	0000                	unimp
 480:	00ac                	addi	a1,sp,72
 482:	0000                	unimp
 484:	4400                	lw	s0,8(s0)
 486:	300e                	fld	ft0,224(sp)
 488:	8844                	0x8844
 48a:	4401                	li	s0,0
 48c:	080c                	addi	a1,sp,16
 48e:	0200                	addi	s0,sp,256
 490:	c898                	sw	a4,16(s1)
 492:	0d44                	addi	s1,sp,660
 494:	0002                	c.slli64	zero
 496:	0000                	unimp
 498:	0028                	addi	a0,sp,8
 49a:	0000                	unimp
 49c:	009c                	addi	a5,sp,64
 49e:	0000                	unimp
 4a0:	24a4                	fld	fs1,72(s1)
 4a2:	0000                	unimp
 4a4:	0070                	addi	a2,sp,12
 4a6:	0000                	unimp
 4a8:	4400                	lw	s0,8(s0)
 4aa:	200e                	fld	ft0,192(sp)
 4ac:	814c                	0x814c
 4ae:	8801                	andi	s0,s0,0
 4b0:	8902                	jr	s2
 4b2:	080c4403          	lbu	s0,128(s8) # fffe0080 <__stack_end+0xffce1880>
 4b6:	0200                	addi	s0,sp,256
 4b8:	c14c                	sw	a1,4(a0)
 4ba:	c844                	sw	s1,20(s0)
 4bc:	c944                	sw	s1,20(a0)
 4be:	0d44                	addi	s1,sp,660
 4c0:	0002                	c.slli64	zero
 4c2:	0000                	unimp
 4c4:	0020                	addi	s0,sp,8
 4c6:	0000                	unimp
 4c8:	00c8                	addi	a0,sp,68
 4ca:	0000                	unimp
 4cc:	3734                	fld	fa3,104(a4)
 4ce:	0000                	unimp
 4d0:	0080                	addi	s0,sp,64
 4d2:	0000                	unimp
 4d4:	4400                	lw	s0,8(s0)
 4d6:	300e                	fld	ft0,224(sp)
 4d8:	8844                	0x8844
 4da:	4401                	li	s0,0
 4dc:	080c                	addi	a1,sp,16
 4de:	0200                	addi	s0,sp,256
 4e0:	c86c                	sw	a1,84(s0)
 4e2:	0d44                	addi	s1,sp,660
 4e4:	0002                	c.slli64	zero
 4e6:	0000                	unimp
 4e8:	0024                	addi	s1,sp,8
 4ea:	0000                	unimp
 4ec:	00ec                	addi	a1,sp,76
 4ee:	0000                	unimp
 4f0:	3790                	fld	fa2,40(a5)
 4f2:	0000                	unimp
 4f4:	012c                	addi	a1,sp,136
 4f6:	0000                	unimp
 4f8:	4400                	lw	s0,8(s0)
 4fa:	300e                	fld	ft0,224(sp)
 4fc:	8148                	0x8148
 4fe:	8801                	andi	s0,s0,0
 500:	4402                	lw	s0,0(sp)
 502:	080c                	addi	a1,sp,16
 504:	0300                	addi	s0,sp,384
 506:	0110                	addi	a2,sp,128
 508:	44c1                	li	s1,16
 50a:	44c8                	lw	a0,12(s1)
 50c:	020d                	addi	tp,tp,3
 50e:	0000                	unimp
 510:	0020                	addi	s0,sp,8
 512:	0000                	unimp
 514:	0114                	addi	a3,sp,128
 516:	0000                	unimp
 518:	fb7c                	fsw	fa5,116(a4)
 51a:	ffff                	0xffff
 51c:	0034                	addi	a3,sp,8
 51e:	0000                	unimp
 520:	4400                	lw	s0,8(s0)
 522:	100e                	c.slli	zero,0x23
 524:	8148                	0x8148
 526:	8801                	andi	s0,s0,0
 528:	4402                	lw	s0,0(sp)
 52a:	080c                	addi	a1,sp,16
 52c:	5800                	lw	s0,48(s0)
 52e:	44c1                	li	s1,16
 530:	44c8                	lw	a0,12(s1)
 532:	020d                	addi	tp,tp,3

Disassembly of section .spi_gpio:

00000800 <.spi_gpio>:
	...

Disassembly of section .spi_compute:

00001800 <_Z7computev-0x1000>:
	...

00002800 <_Z7computev>:
    2800:	fe010113          	addi	sp,sp,-32
    2804:	00112e23          	sw	ra,28(sp)
    2808:	00812c23          	sw	s0,24(sp)
    280c:	02010413          	addi	s0,sp,32
    2810:	fff00793          	li	a5,-1
    2814:	fef407a3          	sb	a5,-17(s0)
    2818:	00a00793          	li	a5,10
    281c:	fef42423          	sw	a5,-24(s0)
    2820:	fe842503          	lw	a0,-24(s0)
    2824:	074000ef          	jal	ra,2898 <_Z19fibonacci_iterativei>
    2828:	00050793          	mv	a5,a0
    282c:	fef42223          	sw	a5,-28(s0)
    2830:	fe842503          	lw	a0,-24(s0)
    2834:	110000ef          	jal	ra,2944 <_Z19fibonacci_recursivei>
    2838:	00050793          	mv	a5,a0
    283c:	fef42023          	sw	a5,-32(s0)
    2840:	fe442703          	lw	a4,-28(s0)
    2844:	fe042783          	lw	a5,-32(s0)
    2848:	00f71863          	bne	a4,a5,2858 <_Z7computev+0x58>
    284c:	00100793          	li	a5,1
    2850:	fef407a3          	sb	a5,-17(s0)
    2854:	0080006f          	j	285c <_Z7computev+0x5c>
    2858:	fe0407a3          	sb	zero,-17(s0)
    285c:	fef44783          	lbu	a5,-17(s0)
    2860:	00078513          	mv	a0,a5
    2864:	41c010ef          	jal	ra,3c80 <_Z8dump_inti>
    2868:	00000013          	nop
    286c:	fe442503          	lw	a0,-28(s0)
    2870:	410010ef          	jal	ra,3c80 <_Z8dump_inti>
    2874:	00000013          	nop
    2878:	fe042503          	lw	a0,-32(s0)
    287c:	404010ef          	jal	ra,3c80 <_Z8dump_inti>
    2880:	00000013          	nop
    2884:	00000013          	nop
    2888:	01c12083          	lw	ra,28(sp)
    288c:	01812403          	lw	s0,24(sp)
    2890:	02010113          	addi	sp,sp,32
    2894:	00008067          	ret

00002898 <_Z19fibonacci_iterativei>:
    2898:	fd010113          	addi	sp,sp,-48
    289c:	02812623          	sw	s0,44(sp)
    28a0:	03010413          	addi	s0,sp,48
    28a4:	fca42e23          	sw	a0,-36(s0)
    28a8:	fdc42703          	lw	a4,-36(s0)
    28ac:	00100793          	li	a5,1
    28b0:	00e7c663          	blt	a5,a4,28bc <_Z19fibonacci_iterativei+0x24>
    28b4:	fdc42783          	lw	a5,-36(s0)
    28b8:	07c0006f          	j	2934 <_Z19fibonacci_iterativei+0x9c>
    28bc:	fdc42703          	lw	a4,-36(s0)
    28c0:	02e00793          	li	a5,46
    28c4:	00e7c863          	blt	a5,a4,28d4 <_Z19fibonacci_iterativei+0x3c>
    28c8:	fdc42783          	lw	a5,-36(s0)
    28cc:	0ff7f793          	andi	a5,a5,255
    28d0:	0080006f          	j	28d8 <_Z19fibonacci_iterativei+0x40>
    28d4:	02e00793          	li	a5,46
    28d8:	fef40123          	sb	a5,-30(s0)
    28dc:	fe042623          	sw	zero,-20(s0)
    28e0:	fe042423          	sw	zero,-24(s0)
    28e4:	00100793          	li	a5,1
    28e8:	fef42223          	sw	a5,-28(s0)
    28ec:	00100793          	li	a5,1
    28f0:	fef401a3          	sb	a5,-29(s0)
    28f4:	fe344703          	lbu	a4,-29(s0)
    28f8:	fe244783          	lbu	a5,-30(s0)
    28fc:	02f77a63          	bgeu	a4,a5,2930 <_Z19fibonacci_iterativei+0x98>
    2900:	fe842703          	lw	a4,-24(s0)
    2904:	fe442783          	lw	a5,-28(s0)
    2908:	00f707b3          	add	a5,a4,a5
    290c:	fef42623          	sw	a5,-20(s0)
    2910:	fe442783          	lw	a5,-28(s0)
    2914:	fef42423          	sw	a5,-24(s0)
    2918:	fec42783          	lw	a5,-20(s0)
    291c:	fef42223          	sw	a5,-28(s0)
    2920:	fe344783          	lbu	a5,-29(s0)
    2924:	00178793          	addi	a5,a5,1
    2928:	fef401a3          	sb	a5,-29(s0)
    292c:	fc9ff06f          	j	28f4 <_Z19fibonacci_iterativei+0x5c>
    2930:	fec42783          	lw	a5,-20(s0)
    2934:	00078513          	mv	a0,a5
    2938:	02c12403          	lw	s0,44(sp)
    293c:	03010113          	addi	sp,sp,48
    2940:	00008067          	ret

00002944 <_Z19fibonacci_recursivei>:
    2944:	fe010113          	addi	sp,sp,-32
    2948:	00112e23          	sw	ra,28(sp)
    294c:	00812c23          	sw	s0,24(sp)
    2950:	00912a23          	sw	s1,20(sp)
    2954:	02010413          	addi	s0,sp,32
    2958:	fea42623          	sw	a0,-20(s0)
    295c:	fec42703          	lw	a4,-20(s0)
    2960:	00100793          	li	a5,1
    2964:	00e7c663          	blt	a5,a4,2970 <_Z19fibonacci_recursivei+0x2c>
    2968:	fec42783          	lw	a5,-20(s0)
    296c:	0300006f          	j	299c <_Z19fibonacci_recursivei+0x58>
    2970:	fec42783          	lw	a5,-20(s0)
    2974:	fff78793          	addi	a5,a5,-1
    2978:	00078513          	mv	a0,a5
    297c:	fc9ff0ef          	jal	ra,2944 <_Z19fibonacci_recursivei>
    2980:	00050493          	mv	s1,a0
    2984:	fec42783          	lw	a5,-20(s0)
    2988:	ffe78793          	addi	a5,a5,-2
    298c:	00078513          	mv	a0,a5
    2990:	fb5ff0ef          	jal	ra,2944 <_Z19fibonacci_recursivei>
    2994:	00050793          	mv	a5,a0
    2998:	00f487b3          	add	a5,s1,a5
    299c:	00078513          	mv	a0,a5
    29a0:	01c12083          	lw	ra,28(sp)
    29a4:	01812403          	lw	s0,24(sp)
    29a8:	01412483          	lw	s1,20(sp)
    29ac:	02010113          	addi	sp,sp,32
    29b0:	00008067          	ret

Disassembly of section .spi_uart:

00002c00 <_Z9uart_putcc-0x1000>:
	...

00003c00 <_Z9uart_putcc>:
    3c00:	fd010113          	addi	sp,sp,-48
    3c04:	02812623          	sw	s0,44(sp)
    3c08:	03010413          	addi	s0,sp,48
    3c0c:	00050793          	mv	a5,a0
    3c10:	fcf40fa3          	sb	a5,-33(s0)
    3c14:	002017b7          	lui	a5,0x201
    3c18:	8007a783          	lw	a5,-2048(a5) # 200800 <UART_BAUD>
    3c1c:	0007a783          	lw	a5,0(a5)
    3c20:	fef42223          	sw	a5,-28(s0)
    3c24:	002017b7          	lui	a5,0x201
    3c28:	8087a783          	lw	a5,-2040(a5) # 200808 <UART_SEND>
    3c2c:	fdf44703          	lbu	a4,-33(s0)
    3c30:	00e7a023          	sw	a4,0(a5)
    3c34:	fe042623          	sw	zero,-20(s0)
    3c38:	fec42783          	lw	a5,-20(s0)
    3c3c:	02f04a63          	bgtz	a5,3c70 <_Z9uart_putcc+0x70>
    3c40:	fe042423          	sw	zero,-24(s0)
    3c44:	fe842703          	lw	a4,-24(s0)
    3c48:	fe442783          	lw	a5,-28(s0)
    3c4c:	00f75a63          	bge	a4,a5,3c60 <_Z9uart_putcc+0x60>
    3c50:	fe842783          	lw	a5,-24(s0)
    3c54:	00178793          	addi	a5,a5,1
    3c58:	fef42423          	sw	a5,-24(s0)
    3c5c:	fe9ff06f          	j	3c44 <_Z9uart_putcc+0x44>
    3c60:	fec42783          	lw	a5,-20(s0)
    3c64:	00178793          	addi	a5,a5,1
    3c68:	fef42623          	sw	a5,-20(s0)
    3c6c:	fcdff06f          	j	3c38 <_Z9uart_putcc+0x38>
    3c70:	00000013          	nop
    3c74:	02c12403          	lw	s0,44(sp)
    3c78:	03010113          	addi	sp,sp,48
    3c7c:	00008067          	ret

00003c80 <_Z8dump_inti>:
    3c80:	fd010113          	addi	sp,sp,-48
    3c84:	02112623          	sw	ra,44(sp)
    3c88:	02812423          	sw	s0,40(sp)
    3c8c:	03010413          	addi	s0,sp,48
    3c90:	fca42e23          	sw	a0,-36(s0)
    3c94:	fdc42783          	lw	a5,-36(s0)
    3c98:	fef42423          	sw	a5,-24(s0)
    3c9c:	00100793          	li	a5,1
    3ca0:	fef407a3          	sb	a5,-17(s0)
    3ca4:	fe842703          	lw	a4,-24(s0)
    3ca8:	0ff00793          	li	a5,255
    3cac:	00e7c863          	blt	a5,a4,3cbc <_Z8dump_inti+0x3c>
    3cb0:	00100793          	li	a5,1
    3cb4:	fef407a3          	sb	a5,-17(s0)
    3cb8:	03c0006f          	j	3cf4 <_Z8dump_inti+0x74>
    3cbc:	fe842703          	lw	a4,-24(s0)
    3cc0:	000107b7          	lui	a5,0x10
    3cc4:	00f75863          	bge	a4,a5,3cd4 <_Z8dump_inti+0x54>
    3cc8:	00200793          	li	a5,2
    3ccc:	fef407a3          	sb	a5,-17(s0)
    3cd0:	0240006f          	j	3cf4 <_Z8dump_inti+0x74>
    3cd4:	fe842703          	lw	a4,-24(s0)
    3cd8:	010007b7          	lui	a5,0x1000
    3cdc:	00f75863          	bge	a4,a5,3cec <_Z8dump_inti+0x6c>
    3ce0:	00300793          	li	a5,3
    3ce4:	fef407a3          	sb	a5,-17(s0)
    3ce8:	00c0006f          	j	3cf4 <_Z8dump_inti+0x74>
    3cec:	00400793          	li	a5,4
    3cf0:	fef407a3          	sb	a5,-17(s0)
    3cf4:	04400513          	li	a0,68
    3cf8:	f09ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3cfc:	fef44783          	lbu	a5,-17(s0)
    3d00:	00078513          	mv	a0,a5
    3d04:	efdff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d08:	fef44783          	lbu	a5,-17(s0)
    3d0c:	00200713          	li	a4,2
    3d10:	04e78863          	beq	a5,a4,3d60 <_Z8dump_inti+0xe0>
    3d14:	00200713          	li	a4,2
    3d18:	00f74863          	blt	a4,a5,3d28 <_Z8dump_inti+0xa8>
    3d1c:	00100713          	li	a4,1
    3d20:	04e78a63          	beq	a5,a4,3d74 <_Z8dump_inti+0xf4>
    3d24:	0600006f          	j	3d84 <_Z8dump_inti+0x104>
    3d28:	00300713          	li	a4,3
    3d2c:	02e78063          	beq	a5,a4,3d4c <_Z8dump_inti+0xcc>
    3d30:	00400713          	li	a4,4
    3d34:	04e79863          	bne	a5,a4,3d84 <_Z8dump_inti+0x104>
    3d38:	fe842783          	lw	a5,-24(s0)
    3d3c:	0187d793          	srli	a5,a5,0x18
    3d40:	0ff7f793          	andi	a5,a5,255
    3d44:	00078513          	mv	a0,a5
    3d48:	eb9ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d4c:	fe842783          	lw	a5,-24(s0)
    3d50:	4107d793          	srai	a5,a5,0x10
    3d54:	0ff7f793          	andi	a5,a5,255
    3d58:	00078513          	mv	a0,a5
    3d5c:	ea5ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d60:	fe842783          	lw	a5,-24(s0)
    3d64:	4087d793          	srai	a5,a5,0x8
    3d68:	0ff7f793          	andi	a5,a5,255
    3d6c:	00078513          	mv	a0,a5
    3d70:	e91ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d74:	fe842783          	lw	a5,-24(s0)
    3d78:	0ff7f793          	andi	a5,a5,255
    3d7c:	00078513          	mv	a0,a5
    3d80:	e81ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d84:	fe842783          	lw	a5,-24(s0)
    3d88:	0ff7f793          	andi	a5,a5,255
    3d8c:	00078513          	mv	a0,a5
    3d90:	e71ff0ef          	jal	ra,3c00 <_Z9uart_putcc>
    3d94:	00000013          	nop
    3d98:	00000013          	nop
    3d9c:	02c12083          	lw	ra,44(sp)
    3da0:	02812403          	lw	s0,40(sp)
    3da4:	03010113          	addi	sp,sp,48
    3da8:	00008067          	ret

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
