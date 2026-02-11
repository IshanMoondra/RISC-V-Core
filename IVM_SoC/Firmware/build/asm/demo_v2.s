
/out/demo_v2.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	ff010113          	add	sp,sp,-16
   4:	00112623          	sw	ra,12(sp)
   8:	00812423          	sw	s0,8(sp)
   c:	01010413          	add	s0,sp,16
  10:	00000013          	nop
  14:	00180117          	auipc	sp,0x180
  18:	fec10113          	add	sp,sp,-20 # 180000 <_end>
  1c:	0017e197          	auipc	gp,0x17e
  20:	fe418193          	add	gp,gp,-28 # 17e000 <__bss_end>
  24:	070000ef          	jal	94 <main>
  28:	ffffffff          	.word	0xffffffff
  2c:	00000013          	nop
  30:	00c12083          	lw	ra,12(sp)
  34:	00812403          	lw	s0,8(sp)
  38:	01010113          	add	sp,sp,16
  3c:	00008067          	ret

00000040 <_Z8soc_bootv>:
  40:	00000493          	li	s1,0
  44:	004c57b7          	lui	a5,0x4c5
  48:	b4078093          	add	ra,a5,-1216 # 4c4b40 <__stack_end+0x1c6340>
  4c:	002017b7          	lui	a5,0x201
  50:	0347a783          	lw	a5,52(a5) # 201034 <SET_WATCHDOG_HIGH>
  54:	0097a023          	sw	s1,0(a5)
  58:	002017b7          	lui	a5,0x201
  5c:	0387a783          	lw	a5,56(a5) # 201038 <SET_WATCHDOG_LOW>
  60:	0017a023          	sw	ra,0(a5)
  64:	3e800093          	li	ra,1000
  68:	002017b7          	lui	a5,0x201
  6c:	8007a783          	lw	a5,-2048(a5) # 200800 <UART_BAUD>
  70:	0017a023          	sw	ra,0(a5)
  74:	002017b7          	lui	a5,0x201
  78:	0447a783          	lw	a5,68(a5) # 201044 <SET_DIS_SRAM_GATER>
  7c:	00100713          	li	a4,1
  80:	00e7a023          	sw	a4,0(a5)
  84:	03e00513          	li	a0,62
  88:	379030ef          	jal	3c00 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop

00000094 <main>:
  94:	ff010113          	add	sp,sp,-16
  98:	00112623          	sw	ra,12(sp)
  9c:	00812423          	sw	s0,8(sp)
  a0:	01010413          	add	s0,sp,16
  a4:	f9dff0ef          	jal	40 <_Z8soc_bootv>
  a8:	00000013          	nop
  ac:	754020ef          	jal	2800 <_Z7computev>
  b0:	00000793          	li	a5,0
  b4:	00078513          	mv	a0,a5
  b8:	00c12083          	lw	ra,12(sp)
  bc:	00812403          	lw	s0,8(sp)
  c0:	01010113          	add	sp,sp,16
  c4:	00008067          	ret

Disassembly of section .spi_compute:

00001800 <_Z7computev-0x1000>:
	...

00002800 <_Z7computev>:
    2800:	fe010113          	add	sp,sp,-32
    2804:	00112e23          	sw	ra,28(sp)
    2808:	00812c23          	sw	s0,24(sp)
    280c:	02010413          	add	s0,sp,32
    2810:	fff00793          	li	a5,-1
    2814:	fef407a3          	sb	a5,-17(s0)
    2818:	00a00793          	li	a5,10
    281c:	fef42423          	sw	a5,-24(s0)
    2820:	fe842503          	lw	a0,-24(s0)
    2824:	074000ef          	jal	2898 <_Z19fibonacci_iterativei>
    2828:	00050793          	mv	a5,a0
    282c:	fef42223          	sw	a5,-28(s0)
    2830:	fe842503          	lw	a0,-24(s0)
    2834:	110000ef          	jal	2944 <_Z19fibonacci_recursivei>
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
    2864:	420010ef          	jal	3c84 <_Z8dump_inti>
    2868:	00000013          	nop
    286c:	fe442503          	lw	a0,-28(s0)
    2870:	414010ef          	jal	3c84 <_Z8dump_inti>
    2874:	00000013          	nop
    2878:	fe042503          	lw	a0,-32(s0)
    287c:	408010ef          	jal	3c84 <_Z8dump_inti>
    2880:	00000013          	nop
    2884:	00000013          	nop
    2888:	01c12083          	lw	ra,28(sp)
    288c:	01812403          	lw	s0,24(sp)
    2890:	02010113          	add	sp,sp,32
    2894:	00008067          	ret

00002898 <_Z19fibonacci_iterativei>:
    2898:	fd010113          	add	sp,sp,-48
    289c:	02812623          	sw	s0,44(sp)
    28a0:	03010413          	add	s0,sp,48
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
    28cc:	0ff7f793          	zext.b	a5,a5
    28d0:	0080006f          	j	28d8 <_Z19fibonacci_iterativei+0x40>
    28d4:	02e00793          	li	a5,46
    28d8:	fef40123          	sb	a5,-30(s0)
    28dc:	fe042623          	sw	zero,-20(s0)
    28e0:	fe042423          	sw	zero,-24(s0)
    28e4:	00100793          	li	a5,1
    28e8:	fef42223          	sw	a5,-28(s0)
    28ec:	00100793          	li	a5,1
    28f0:	fef401a3          	sb	a5,-29(s0)
    28f4:	0300006f          	j	2924 <_Z19fibonacci_iterativei+0x8c>
    28f8:	fe842703          	lw	a4,-24(s0)
    28fc:	fe442783          	lw	a5,-28(s0)
    2900:	00f707b3          	add	a5,a4,a5
    2904:	fef42623          	sw	a5,-20(s0)
    2908:	fe442783          	lw	a5,-28(s0)
    290c:	fef42423          	sw	a5,-24(s0)
    2910:	fec42783          	lw	a5,-20(s0)
    2914:	fef42223          	sw	a5,-28(s0)
    2918:	fe344783          	lbu	a5,-29(s0)
    291c:	00178793          	add	a5,a5,1
    2920:	fef401a3          	sb	a5,-29(s0)
    2924:	fe344703          	lbu	a4,-29(s0)
    2928:	fe244783          	lbu	a5,-30(s0)
    292c:	fcf766e3          	bltu	a4,a5,28f8 <_Z19fibonacci_iterativei+0x60>
    2930:	fec42783          	lw	a5,-20(s0)
    2934:	00078513          	mv	a0,a5
    2938:	02c12403          	lw	s0,44(sp)
    293c:	03010113          	add	sp,sp,48
    2940:	00008067          	ret

00002944 <_Z19fibonacci_recursivei>:
    2944:	fe010113          	add	sp,sp,-32
    2948:	00112e23          	sw	ra,28(sp)
    294c:	00812c23          	sw	s0,24(sp)
    2950:	00912a23          	sw	s1,20(sp)
    2954:	02010413          	add	s0,sp,32
    2958:	fea42623          	sw	a0,-20(s0)
    295c:	fec42703          	lw	a4,-20(s0)
    2960:	00100793          	li	a5,1
    2964:	00e7c663          	blt	a5,a4,2970 <_Z19fibonacci_recursivei+0x2c>
    2968:	fec42783          	lw	a5,-20(s0)
    296c:	0300006f          	j	299c <_Z19fibonacci_recursivei+0x58>
    2970:	fec42783          	lw	a5,-20(s0)
    2974:	fff78793          	add	a5,a5,-1
    2978:	00078513          	mv	a0,a5
    297c:	fc9ff0ef          	jal	2944 <_Z19fibonacci_recursivei>
    2980:	00050493          	mv	s1,a0
    2984:	fec42783          	lw	a5,-20(s0)
    2988:	ffe78793          	add	a5,a5,-2
    298c:	00078513          	mv	a0,a5
    2990:	fb5ff0ef          	jal	2944 <_Z19fibonacci_recursivei>
    2994:	00050793          	mv	a5,a0
    2998:	00f487b3          	add	a5,s1,a5
    299c:	00078513          	mv	a0,a5
    29a0:	01c12083          	lw	ra,28(sp)
    29a4:	01812403          	lw	s0,24(sp)
    29a8:	01412483          	lw	s1,20(sp)
    29ac:	02010113          	add	sp,sp,32
    29b0:	00008067          	ret

Disassembly of section .spi_uart:

00002c00 <_Z9uart_putcc-0x1000>:
	...

00003c00 <_Z9uart_putcc>:
    3c00:	fd010113          	add	sp,sp,-48
    3c04:	02812623          	sw	s0,44(sp)
    3c08:	03010413          	add	s0,sp,48
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
    3c38:	0300006f          	j	3c68 <_Z9uart_putcc+0x68>
    3c3c:	fe042423          	sw	zero,-24(s0)
    3c40:	0100006f          	j	3c50 <_Z9uart_putcc+0x50>
    3c44:	fe842783          	lw	a5,-24(s0)
    3c48:	00178793          	add	a5,a5,1
    3c4c:	fef42423          	sw	a5,-24(s0)
    3c50:	fe842703          	lw	a4,-24(s0)
    3c54:	fe442783          	lw	a5,-28(s0)
    3c58:	fef746e3          	blt	a4,a5,3c44 <_Z9uart_putcc+0x44>
    3c5c:	fec42783          	lw	a5,-20(s0)
    3c60:	00178793          	add	a5,a5,1
    3c64:	fef42623          	sw	a5,-20(s0)
    3c68:	fec42783          	lw	a5,-20(s0)
    3c6c:	fcf058e3          	blez	a5,3c3c <_Z9uart_putcc+0x3c>
    3c70:	00000013          	nop
    3c74:	00000013          	nop
    3c78:	02c12403          	lw	s0,44(sp)
    3c7c:	03010113          	add	sp,sp,48
    3c80:	00008067          	ret

00003c84 <_Z8dump_inti>:
    3c84:	fd010113          	add	sp,sp,-48
    3c88:	02112623          	sw	ra,44(sp)
    3c8c:	02812423          	sw	s0,40(sp)
    3c90:	03010413          	add	s0,sp,48
    3c94:	fca42e23          	sw	a0,-36(s0)
    3c98:	fdc42783          	lw	a5,-36(s0)
    3c9c:	fef42423          	sw	a5,-24(s0)
    3ca0:	00100793          	li	a5,1
    3ca4:	fef407a3          	sb	a5,-17(s0)
    3ca8:	fe842703          	lw	a4,-24(s0)
    3cac:	0ff00793          	li	a5,255
    3cb0:	00e7c863          	blt	a5,a4,3cc0 <_Z8dump_inti+0x3c>
    3cb4:	00100793          	li	a5,1
    3cb8:	fef407a3          	sb	a5,-17(s0)
    3cbc:	03c0006f          	j	3cf8 <_Z8dump_inti+0x74>
    3cc0:	fe842703          	lw	a4,-24(s0)
    3cc4:	000107b7          	lui	a5,0x10
    3cc8:	00f75863          	bge	a4,a5,3cd8 <_Z8dump_inti+0x54>
    3ccc:	00200793          	li	a5,2
    3cd0:	fef407a3          	sb	a5,-17(s0)
    3cd4:	0240006f          	j	3cf8 <_Z8dump_inti+0x74>
    3cd8:	fe842703          	lw	a4,-24(s0)
    3cdc:	010007b7          	lui	a5,0x1000
    3ce0:	00f75863          	bge	a4,a5,3cf0 <_Z8dump_inti+0x6c>
    3ce4:	00300793          	li	a5,3
    3ce8:	fef407a3          	sb	a5,-17(s0)
    3cec:	00c0006f          	j	3cf8 <_Z8dump_inti+0x74>
    3cf0:	00400793          	li	a5,4
    3cf4:	fef407a3          	sb	a5,-17(s0)
    3cf8:	04400513          	li	a0,68
    3cfc:	f05ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d00:	fef44783          	lbu	a5,-17(s0)
    3d04:	00078513          	mv	a0,a5
    3d08:	ef9ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d0c:	fef44783          	lbu	a5,-17(s0)
    3d10:	00400713          	li	a4,4
    3d14:	02e78863          	beq	a5,a4,3d44 <_Z8dump_inti+0xc0>
    3d18:	00400713          	li	a4,4
    3d1c:	06f74a63          	blt	a4,a5,3d90 <_Z8dump_inti+0x10c>
    3d20:	00300713          	li	a4,3
    3d24:	02e78a63          	beq	a5,a4,3d58 <_Z8dump_inti+0xd4>
    3d28:	00300713          	li	a4,3
    3d2c:	06f74263          	blt	a4,a5,3d90 <_Z8dump_inti+0x10c>
    3d30:	00100713          	li	a4,1
    3d34:	04e78663          	beq	a5,a4,3d80 <_Z8dump_inti+0xfc>
    3d38:	00200713          	li	a4,2
    3d3c:	02e78863          	beq	a5,a4,3d6c <_Z8dump_inti+0xe8>
    3d40:	0500006f          	j	3d90 <_Z8dump_inti+0x10c>
    3d44:	fe842783          	lw	a5,-24(s0)
    3d48:	0187d793          	srl	a5,a5,0x18
    3d4c:	0ff7f793          	zext.b	a5,a5
    3d50:	00078513          	mv	a0,a5
    3d54:	eadff0ef          	jal	3c00 <_Z9uart_putcc>
    3d58:	fe842783          	lw	a5,-24(s0)
    3d5c:	4107d793          	sra	a5,a5,0x10
    3d60:	0ff7f793          	zext.b	a5,a5
    3d64:	00078513          	mv	a0,a5
    3d68:	e99ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d6c:	fe842783          	lw	a5,-24(s0)
    3d70:	4087d793          	sra	a5,a5,0x8
    3d74:	0ff7f793          	zext.b	a5,a5
    3d78:	00078513          	mv	a0,a5
    3d7c:	e85ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d80:	fe842783          	lw	a5,-24(s0)
    3d84:	0ff7f793          	zext.b	a5,a5
    3d88:	00078513          	mv	a0,a5
    3d8c:	e75ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d90:	fe842783          	lw	a5,-24(s0)
    3d94:	0ff7f793          	zext.b	a5,a5
    3d98:	00078513          	mv	a0,a5
    3d9c:	e65ff0ef          	jal	3c00 <_Z9uart_putcc>
    3da0:	00000013          	nop
    3da4:	00000013          	nop
    3da8:	02c12083          	lw	ra,44(sp)
    3dac:	02812403          	lw	s0,40(sp)
    3db0:	03010113          	add	sp,sp,48
    3db4:	00008067          	ret
