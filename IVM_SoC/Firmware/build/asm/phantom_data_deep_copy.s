
/out/phantom_data_deep_copy.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	110000ef          	jal	124 <main>
  18:	ffffffff          	.word	0xffffffff
  1c:	00000013          	nop

00000020 <_Z7add_ptrPViS0_S0_>:
  20:	fe010113          	add	sp,sp,-32
  24:	00812e23          	sw	s0,28(sp)
  28:	02010413          	add	s0,sp,32
  2c:	fea42623          	sw	a0,-20(s0)
  30:	feb42423          	sw	a1,-24(s0)
  34:	fec42223          	sw	a2,-28(s0)
  38:	fec42783          	lw	a5,-20(s0)
  3c:	0007a703          	lw	a4,0(a5)
  40:	fe842783          	lw	a5,-24(s0)
  44:	0007a783          	lw	a5,0(a5)
  48:	00f70733          	add	a4,a4,a5
  4c:	fe442783          	lw	a5,-28(s0)
  50:	00e7a023          	sw	a4,0(a5)
  54:	00000013          	nop
  58:	01c12403          	lw	s0,28(sp)
  5c:	02010113          	add	sp,sp,32
  60:	00008067          	ret

00000064 <_Z7sub_ptrPViS0_S0_>:
  64:	fe010113          	add	sp,sp,-32
  68:	00812e23          	sw	s0,28(sp)
  6c:	02010413          	add	s0,sp,32
  70:	fea42623          	sw	a0,-20(s0)
  74:	feb42423          	sw	a1,-24(s0)
  78:	fec42223          	sw	a2,-28(s0)
  7c:	fec42783          	lw	a5,-20(s0)
  80:	0007a703          	lw	a4,0(a5)
  84:	fe842783          	lw	a5,-24(s0)
  88:	0007a783          	lw	a5,0(a5)
  8c:	40f70733          	sub	a4,a4,a5
  90:	fe442783          	lw	a5,-28(s0)
  94:	00e7a023          	sw	a4,0(a5)
  98:	00000013          	nop
  9c:	01c12403          	lw	s0,28(sp)
  a0:	02010113          	add	sp,sp,32
  a4:	00008067          	ret

000000a8 <_Z10soc_bootupv>:
  a8:	fe010113          	add	sp,sp,-32
  ac:	00112e23          	sw	ra,28(sp)
  b0:	00812c23          	sw	s0,24(sp)
  b4:	02010413          	add	s0,sp,32
  b8:	fe042623          	sw	zero,-20(s0)
  bc:	000147b7          	lui	a5,0x14
  c0:	88078793          	add	a5,a5,-1920 # 13880 <_Z11dump_resultx+0xfffc>
  c4:	fef42423          	sw	a5,-24(s0)
  c8:	002017b7          	lui	a5,0x201
  cc:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  d0:	fec42703          	lw	a4,-20(s0)
  d4:	00e7a023          	sw	a4,0(a5)
  d8:	002017b7          	lui	a5,0x201
  dc:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  e0:	fe842703          	lw	a4,-24(s0)
  e4:	00e7a023          	sw	a4,0(a5)
  e8:	03200793          	li	a5,50
  ec:	fef42223          	sw	a5,-28(s0)
  f0:	002017b7          	lui	a5,0x201
  f4:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  f8:	fe442703          	lw	a4,-28(s0)
  fc:	00e7a023          	sw	a4,0(a5)
 100:	00a00513          	li	a0,10
 104:	6fc030ef          	jal	3800 <_Z9uart_putcc>
 108:	03e00513          	li	a0,62
 10c:	6f4030ef          	jal	3800 <_Z9uart_putcc>
 110:	00000013          	nop
 114:	01c12083          	lw	ra,28(sp)
 118:	01812403          	lw	s0,24(sp)
 11c:	02010113          	add	sp,sp,32
 120:	00008067          	ret

00000124 <main>:
 124:	fa010113          	add	sp,sp,-96
 128:	04112e23          	sw	ra,92(sp)
 12c:	04812c23          	sw	s0,88(sp)
 130:	05212a23          	sw	s2,84(sp)
 134:	05312823          	sw	s3,80(sp)
 138:	05412623          	sw	s4,76(sp)
 13c:	05512423          	sw	s5,72(sp)
 140:	05612223          	sw	s6,68(sp)
 144:	05712023          	sw	s7,64(sp)
 148:	03812e23          	sw	s8,60(sp)
 14c:	03912c23          	sw	s9,56(sp)
 150:	03a12a23          	sw	s10,52(sp)
 154:	03b12823          	sw	s11,48(sp)
 158:	06010413          	add	s0,sp,96
 15c:	f4dff0ef          	jal	a8 <_Z10soc_bootupv>
 160:	01000793          	li	a5,16
 164:	fcf42623          	sw	a5,-52(s0)
 168:	00800793          	li	a5,8
 16c:	fcf42423          	sw	a5,-56(s0)
 170:	fc042223          	sw	zero,-60(s0)
 174:	fc042023          	sw	zero,-64(s0)
 178:	fc440693          	add	a3,s0,-60
 17c:	fc840713          	add	a4,s0,-56
 180:	fcc40793          	add	a5,s0,-52
 184:	00068613          	mv	a2,a3
 188:	00070593          	mv	a1,a4
 18c:	00078513          	mv	a0,a5
 190:	e91ff0ef          	jal	20 <_Z7add_ptrPViS0_S0_>
 194:	fc040693          	add	a3,s0,-64
 198:	fc840713          	add	a4,s0,-56
 19c:	fcc40793          	add	a5,s0,-52
 1a0:	00068613          	mv	a2,a3
 1a4:	00070593          	mv	a1,a4
 1a8:	00078513          	mv	a0,a5
 1ac:	eb9ff0ef          	jal	64 <_Z7sub_ptrPViS0_S0_>
 1b0:	fcc40793          	add	a5,s0,-52
 1b4:	faf42c23          	sw	a5,-72(s0)
 1b8:	41f7d793          	sra	a5,a5,0x1f
 1bc:	faf42e23          	sw	a5,-68(s0)
 1c0:	fb842503          	lw	a0,-72(s0)
 1c4:	fbc42583          	lw	a1,-68(s0)
 1c8:	6bc030ef          	jal	3884 <_Z11dump_resultx>
 1cc:	fcc42783          	lw	a5,-52(s0)
 1d0:	faf42823          	sw	a5,-80(s0)
 1d4:	41f7d793          	sra	a5,a5,0x1f
 1d8:	faf42a23          	sw	a5,-76(s0)
 1dc:	fb042503          	lw	a0,-80(s0)
 1e0:	fb442583          	lw	a1,-76(s0)
 1e4:	6a0030ef          	jal	3884 <_Z11dump_resultx>
 1e8:	fc840793          	add	a5,s0,-56
 1ec:	faf42423          	sw	a5,-88(s0)
 1f0:	41f7d793          	sra	a5,a5,0x1f
 1f4:	faf42623          	sw	a5,-84(s0)
 1f8:	fa842503          	lw	a0,-88(s0)
 1fc:	fac42583          	lw	a1,-84(s0)
 200:	684030ef          	jal	3884 <_Z11dump_resultx>
 204:	fc842783          	lw	a5,-56(s0)
 208:	faf42023          	sw	a5,-96(s0)
 20c:	41f7d793          	sra	a5,a5,0x1f
 210:	faf42223          	sw	a5,-92(s0)
 214:	fa042503          	lw	a0,-96(s0)
 218:	fa442583          	lw	a1,-92(s0)
 21c:	668030ef          	jal	3884 <_Z11dump_resultx>
 220:	fc440793          	add	a5,s0,-60
 224:	00078d13          	mv	s10,a5
 228:	41f7d793          	sra	a5,a5,0x1f
 22c:	00078d93          	mv	s11,a5
 230:	000d0513          	mv	a0,s10
 234:	000d8593          	mv	a1,s11
 238:	64c030ef          	jal	3884 <_Z11dump_resultx>
 23c:	fc442783          	lw	a5,-60(s0)
 240:	00078c13          	mv	s8,a5
 244:	41f7d793          	sra	a5,a5,0x1f
 248:	00078c93          	mv	s9,a5
 24c:	000c0513          	mv	a0,s8
 250:	000c8593          	mv	a1,s9
 254:	630030ef          	jal	3884 <_Z11dump_resultx>
 258:	fc040793          	add	a5,s0,-64
 25c:	00078b13          	mv	s6,a5
 260:	41f7d793          	sra	a5,a5,0x1f
 264:	00078b93          	mv	s7,a5
 268:	000b0513          	mv	a0,s6
 26c:	000b8593          	mv	a1,s7
 270:	614030ef          	jal	3884 <_Z11dump_resultx>
 274:	fc042783          	lw	a5,-64(s0)
 278:	00078a13          	mv	s4,a5
 27c:	41f7d793          	sra	a5,a5,0x1f
 280:	00078a93          	mv	s5,a5
 284:	000a0513          	mv	a0,s4
 288:	000a8593          	mv	a1,s5
 28c:	5f8030ef          	jal	3884 <_Z11dump_resultx>
 290:	002017b7          	lui	a5,0x201
 294:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
 298:	0007a783          	lw	a5,0(a5)
 29c:	00078913          	mv	s2,a5
 2a0:	41f7d793          	sra	a5,a5,0x1f
 2a4:	00078993          	mv	s3,a5
 2a8:	00090513          	mv	a0,s2
 2ac:	00098593          	mv	a1,s3
 2b0:	5d4030ef          	jal	3884 <_Z11dump_resultx>
 2b4:	00000793          	li	a5,0
 2b8:	00078513          	mv	a0,a5
 2bc:	05c12083          	lw	ra,92(sp)
 2c0:	05812403          	lw	s0,88(sp)
 2c4:	05412903          	lw	s2,84(sp)
 2c8:	05012983          	lw	s3,80(sp)
 2cc:	04c12a03          	lw	s4,76(sp)
 2d0:	04812a83          	lw	s5,72(sp)
 2d4:	04412b03          	lw	s6,68(sp)
 2d8:	04012b83          	lw	s7,64(sp)
 2dc:	03c12c03          	lw	s8,60(sp)
 2e0:	03812c83          	lw	s9,56(sp)
 2e4:	03412d03          	lw	s10,52(sp)
 2e8:	03012d83          	lw	s11,48(sp)
 2ec:	06010113          	add	sp,sp,96
 2f0:	00008067          	ret

Disassembly of section .spi_uart:

00002800 <_Z9uart_putcc-0x1000>:
	...

00003800 <_Z9uart_putcc>:
    3800:	fd010113          	add	sp,sp,-48
    3804:	02812623          	sw	s0,44(sp)
    3808:	03010413          	add	s0,sp,48
    380c:	00050793          	mv	a5,a0
    3810:	fcf40fa3          	sb	a5,-33(s0)
    3814:	002017b7          	lui	a5,0x201
    3818:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    381c:	0007a783          	lw	a5,0(a5)
    3820:	fef42223          	sw	a5,-28(s0)
    3824:	002017b7          	lui	a5,0x201
    3828:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    382c:	fdf44703          	lbu	a4,-33(s0)
    3830:	00e78023          	sb	a4,0(a5)
    3834:	fe042623          	sw	zero,-20(s0)
    3838:	0300006f          	j	3868 <_Z9uart_putcc+0x68>
    383c:	fe042423          	sw	zero,-24(s0)
    3840:	0100006f          	j	3850 <_Z9uart_putcc+0x50>
    3844:	fe842783          	lw	a5,-24(s0)
    3848:	00178793          	add	a5,a5,1
    384c:	fef42423          	sw	a5,-24(s0)
    3850:	fe842703          	lw	a4,-24(s0)
    3854:	fe442783          	lw	a5,-28(s0)
    3858:	fef746e3          	blt	a4,a5,3844 <_Z9uart_putcc+0x44>
    385c:	fec42783          	lw	a5,-20(s0)
    3860:	00178793          	add	a5,a5,1
    3864:	fef42623          	sw	a5,-20(s0)
    3868:	fec42783          	lw	a5,-20(s0)
    386c:	fcf058e3          	blez	a5,383c <_Z9uart_putcc+0x3c>
    3870:	00000013          	nop
    3874:	00000013          	nop
    3878:	02c12403          	lw	s0,44(sp)
    387c:	03010113          	add	sp,sp,48
    3880:	00008067          	ret

00003884 <_Z11dump_resultx>:
    3884:	fc010113          	add	sp,sp,-64
    3888:	02112e23          	sw	ra,60(sp)
    388c:	02812c23          	sw	s0,56(sp)
    3890:	04010413          	add	s0,sp,64
    3894:	fca42423          	sw	a0,-56(s0)
    3898:	fcb42623          	sw	a1,-52(s0)
    389c:	fe042623          	sw	zero,-20(s0)
    38a0:	0700006f          	j	3910 <_Z11dump_resultx+0x8c>
    38a4:	fec42683          	lw	a3,-20(s0)
    38a8:	00369693          	sll	a3,a3,0x3
    38ac:	fe068613          	add	a2,a3,-32
    38b0:	00064c63          	bltz	a2,38c8 <_Z11dump_resultx+0x44>
    38b4:	fcc42683          	lw	a3,-52(s0)
    38b8:	40c6d733          	sra	a4,a3,a2
    38bc:	fcc42683          	lw	a3,-52(s0)
    38c0:	41f6d793          	sra	a5,a3,0x1f
    38c4:	02c0006f          	j	38f0 <_Z11dump_resultx+0x6c>
    38c8:	fcc42603          	lw	a2,-52(s0)
    38cc:	00161593          	sll	a1,a2,0x1
    38d0:	01f00613          	li	a2,31
    38d4:	40d60633          	sub	a2,a2,a3
    38d8:	00c59633          	sll	a2,a1,a2
    38dc:	fc842583          	lw	a1,-56(s0)
    38e0:	00d5d733          	srl	a4,a1,a3
    38e4:	00e66733          	or	a4,a2,a4
    38e8:	fcc42603          	lw	a2,-52(s0)
    38ec:	40d657b3          	sra	a5,a2,a3
    38f0:	0ff77613          	zext.b	a2,a4
    38f4:	fec42683          	lw	a3,-20(s0)
    38f8:	ff068693          	add	a3,a3,-16
    38fc:	008686b3          	add	a3,a3,s0
    3900:	fec68423          	sb	a2,-24(a3)
    3904:	fec42683          	lw	a3,-20(s0)
    3908:	00168693          	add	a3,a3,1
    390c:	fed42623          	sw	a3,-20(s0)
    3910:	fec42603          	lw	a2,-20(s0)
    3914:	00700693          	li	a3,7
    3918:	f8c6d6e3          	bge	a3,a2,38a4 <_Z11dump_resultx+0x20>
    391c:	00800793          	li	a5,8
    3920:	fef42423          	sw	a5,-24(s0)
    3924:	0100006f          	j	3934 <_Z11dump_resultx+0xb0>
    3928:	fe842783          	lw	a5,-24(s0)
    392c:	fff78793          	add	a5,a5,-1
    3930:	fef42423          	sw	a5,-24(s0)
    3934:	fe842703          	lw	a4,-24(s0)
    3938:	00100793          	li	a5,1
    393c:	00e7de63          	bge	a5,a4,3958 <_Z11dump_resultx+0xd4>
    3940:	fe842783          	lw	a5,-24(s0)
    3944:	fff78793          	add	a5,a5,-1
    3948:	ff078793          	add	a5,a5,-16
    394c:	008787b3          	add	a5,a5,s0
    3950:	fe87c783          	lbu	a5,-24(a5)
    3954:	fc078ae3          	beqz	a5,3928 <_Z11dump_resultx+0xa4>
    3958:	04400513          	li	a0,68
    395c:	ea5ff0ef          	jal	3800 <_Z9uart_putcc>
    3960:	fe842783          	lw	a5,-24(s0)
    3964:	0ff7f793          	zext.b	a5,a5
    3968:	00078513          	mv	a0,a5
    396c:	e95ff0ef          	jal	3800 <_Z9uart_putcc>
    3970:	fe042223          	sw	zero,-28(s0)
    3974:	0280006f          	j	399c <_Z11dump_resultx+0x118>
    3978:	fe442783          	lw	a5,-28(s0)
    397c:	ff078793          	add	a5,a5,-16
    3980:	008787b3          	add	a5,a5,s0
    3984:	fe87c783          	lbu	a5,-24(a5)
    3988:	00078513          	mv	a0,a5
    398c:	e75ff0ef          	jal	3800 <_Z9uart_putcc>
    3990:	fe442783          	lw	a5,-28(s0)
    3994:	00178793          	add	a5,a5,1
    3998:	fef42223          	sw	a5,-28(s0)
    399c:	fe442703          	lw	a4,-28(s0)
    39a0:	fe842783          	lw	a5,-24(s0)
    39a4:	fcf74ae3          	blt	a4,a5,3978 <_Z11dump_resultx+0xf4>
    39a8:	00000013          	nop
    39ac:	00000013          	nop
    39b0:	03c12083          	lw	ra,60(sp)
    39b4:	03812403          	lw	s0,56(sp)
    39b8:	04010113          	add	sp,sp,64
    39bc:	00008067          	ret
