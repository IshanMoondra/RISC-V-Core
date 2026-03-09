
/out/phantom_data_drop.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000013          	nop
   4:	00040117          	auipc	sp,0x40
   8:	ffc10113          	add	sp,sp,-4 # 40000 <_end>
   c:	0003e197          	auipc	gp,0x3e
  10:	ff418193          	add	gp,gp,-12 # 3e000 <__bss_end>
  14:	078000ef          	jal	8c <main>
  18:	ffffffff          	.word	0xffffffff
  1c:	00000013          	nop

00000020 <_Z10soc_bootupv>:
  20:	fe010113          	add	sp,sp,-32
  24:	00812e23          	sw	s0,28(sp)
  28:	02010413          	add	s0,sp,32
  2c:	fe042623          	sw	zero,-20(s0)
  30:	000187b7          	lui	a5,0x18
  34:	6a078793          	add	a5,a5,1696 # 186a0 <_Z11dump_resultx+0x14a1c>
  38:	fef42423          	sw	a5,-24(s0)
  3c:	002017b7          	lui	a5,0x201
  40:	03478793          	add	a5,a5,52 # 201034 <SET_WATCHDOG_HIGH>
  44:	fec42703          	lw	a4,-20(s0)
  48:	00e7a023          	sw	a4,0(a5)
  4c:	002017b7          	lui	a5,0x201
  50:	03878793          	add	a5,a5,56 # 201038 <SET_WATCHDOG_LOW>
  54:	fe842703          	lw	a4,-24(s0)
  58:	00e7a023          	sw	a4,0(a5)
  5c:	03200793          	li	a5,50
  60:	fef42223          	sw	a5,-28(s0)
  64:	002017b7          	lui	a5,0x201
  68:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
  6c:	fe442703          	lw	a4,-28(s0)
  70:	00e7a023          	sw	a4,0(a5)
  74:	00000013          	nop
  78:	00000013          	nop
  7c:	00000013          	nop
  80:	01c12403          	lw	s0,28(sp)
  84:	02010113          	add	sp,sp,32
  88:	00008067          	ret

0000008c <main>:
  8c:	fc010113          	add	sp,sp,-64
  90:	02112e23          	sw	ra,60(sp)
  94:	02812c23          	sw	s0,56(sp)
  98:	03212a23          	sw	s2,52(sp)
  9c:	03312823          	sw	s3,48(sp)
  a0:	03412623          	sw	s4,44(sp)
  a4:	03512423          	sw	s5,40(sp)
  a8:	03612223          	sw	s6,36(sp)
  ac:	03712023          	sw	s7,32(sp)
  b0:	01812e23          	sw	s8,28(sp)
  b4:	01912c23          	sw	s9,24(sp)
  b8:	04010413          	add	s0,sp,64
  bc:	f65ff0ef          	jal	20 <_Z10soc_bootupv>
  c0:	00000013          	nop
  c4:	05000793          	li	a5,80
  c8:	fcf42623          	sw	a5,-52(s0)
  cc:	00500793          	li	a5,5
  d0:	fcf42423          	sw	a5,-56(s0)
  d4:	fc042223          	sw	zero,-60(s0)
  d8:	fc042023          	sw	zero,-64(s0)
  dc:	00000013          	nop
  e0:	00000013          	nop
  e4:	00000013          	nop
  e8:	00000013          	nop
  ec:	fc842583          	lw	a1,-56(s0)
  f0:	fcc42503          	lw	a0,-52(s0)
  f4:	70c020ef          	jal	2800 <_Z7add_ptrii>
  f8:	fca42223          	sw	a0,-60(s0)
  fc:	00000013          	nop
 100:	04100513          	li	a0,65
 104:	2fd030ef          	jal	3c00 <_Z9uart_putcc>
 108:	00000013          	nop
 10c:	fcc42783          	lw	a5,-52(s0)
 110:	00078c13          	mv	s8,a5
 114:	41f7d793          	sra	a5,a5,0x1f
 118:	00078c93          	mv	s9,a5
 11c:	000c0513          	mv	a0,s8
 120:	000c8593          	mv	a1,s9
 124:	361030ef          	jal	3c84 <_Z11dump_resultx>
 128:	00000013          	nop
 12c:	04200513          	li	a0,66
 130:	2d1030ef          	jal	3c00 <_Z9uart_putcc>
 134:	00000013          	nop
 138:	fc842783          	lw	a5,-56(s0)
 13c:	00078b13          	mv	s6,a5
 140:	41f7d793          	sra	a5,a5,0x1f
 144:	00078b93          	mv	s7,a5
 148:	000b0513          	mv	a0,s6
 14c:	000b8593          	mv	a1,s7
 150:	335030ef          	jal	3c84 <_Z11dump_resultx>
 154:	00000013          	nop
 158:	04300513          	li	a0,67
 15c:	2a5030ef          	jal	3c00 <_Z9uart_putcc>
 160:	00000013          	nop
 164:	fc442783          	lw	a5,-60(s0)
 168:	00078a13          	mv	s4,a5
 16c:	41f7d793          	sra	a5,a5,0x1f
 170:	00078a93          	mv	s5,a5
 174:	000a0513          	mv	a0,s4
 178:	000a8593          	mv	a1,s5
 17c:	309030ef          	jal	3c84 <_Z11dump_resultx>
 180:	00000013          	nop
 184:	04d00513          	li	a0,77
 188:	279030ef          	jal	3c00 <_Z9uart_putcc>
 18c:	00000013          	nop
 190:	002017b7          	lui	a5,0x201
 194:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
 198:	0007a783          	lw	a5,0(a5)
 19c:	00078913          	mv	s2,a5
 1a0:	41f7d793          	sra	a5,a5,0x1f
 1a4:	00078993          	mv	s3,a5
 1a8:	00090513          	mv	a0,s2
 1ac:	00098593          	mv	a1,s3
 1b0:	2d5030ef          	jal	3c84 <_Z11dump_resultx>
 1b4:	00000013          	nop
 1b8:	fcc42703          	lw	a4,-52(s0)
 1bc:	fc842783          	lw	a5,-56(s0)
 1c0:	00f707b3          	add	a5,a4,a5
 1c4:	fc442703          	lw	a4,-60(s0)
 1c8:	00f71a63          	bne	a4,a5,1dc <main+0x150>
 1cc:	05000513          	li	a0,80
 1d0:	231030ef          	jal	3c00 <_Z9uart_putcc>
 1d4:	00000013          	nop
 1d8:	0100006f          	j	1e8 <main+0x15c>
 1dc:	04600513          	li	a0,70
 1e0:	221030ef          	jal	3c00 <_Z9uart_putcc>
 1e4:	00000013          	nop
 1e8:	00000793          	li	a5,0
 1ec:	00078513          	mv	a0,a5
 1f0:	03c12083          	lw	ra,60(sp)
 1f4:	03812403          	lw	s0,56(sp)
 1f8:	03412903          	lw	s2,52(sp)
 1fc:	03012983          	lw	s3,48(sp)
 200:	02c12a03          	lw	s4,44(sp)
 204:	02812a83          	lw	s5,40(sp)
 208:	02412b03          	lw	s6,36(sp)
 20c:	02012b83          	lw	s7,32(sp)
 210:	01c12c03          	lw	s8,28(sp)
 214:	01812c83          	lw	s9,24(sp)
 218:	04010113          	add	sp,sp,64
 21c:	00008067          	ret

Disassembly of section .spi_compute:

00001800 <_Z7add_ptrii-0x1000>:
	...

00002800 <_Z7add_ptrii>:
    2800:	fd010113          	add	sp,sp,-48
    2804:	02812623          	sw	s0,44(sp)
    2808:	03010413          	add	s0,sp,48
    280c:	fca42e23          	sw	a0,-36(s0)
    2810:	fcb42c23          	sw	a1,-40(s0)
    2814:	fdc42703          	lw	a4,-36(s0)
    2818:	fd842783          	lw	a5,-40(s0)
    281c:	00f707b3          	add	a5,a4,a5
    2820:	fef42623          	sw	a5,-20(s0)
    2824:	fec42783          	lw	a5,-20(s0)
    2828:	00078513          	mv	a0,a5
    282c:	02c12403          	lw	s0,44(sp)
    2830:	03010113          	add	sp,sp,48
    2834:	00008067          	ret

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
    3c18:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
    3c1c:	0007a783          	lw	a5,0(a5)
    3c20:	fef42223          	sw	a5,-28(s0)
    3c24:	002017b7          	lui	a5,0x201
    3c28:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
    3c2c:	fdf44703          	lbu	a4,-33(s0)
    3c30:	00e78023          	sb	a4,0(a5)
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

00003c84 <_Z11dump_resultx>:
    3c84:	fc010113          	add	sp,sp,-64
    3c88:	02112e23          	sw	ra,60(sp)
    3c8c:	02812c23          	sw	s0,56(sp)
    3c90:	04010413          	add	s0,sp,64
    3c94:	fca42423          	sw	a0,-56(s0)
    3c98:	fcb42623          	sw	a1,-52(s0)
    3c9c:	fe042623          	sw	zero,-20(s0)
    3ca0:	0700006f          	j	3d10 <_Z11dump_resultx+0x8c>
    3ca4:	fec42683          	lw	a3,-20(s0)
    3ca8:	00369693          	sll	a3,a3,0x3
    3cac:	fe068613          	add	a2,a3,-32
    3cb0:	00064c63          	bltz	a2,3cc8 <_Z11dump_resultx+0x44>
    3cb4:	fcc42683          	lw	a3,-52(s0)
    3cb8:	40c6d733          	sra	a4,a3,a2
    3cbc:	fcc42683          	lw	a3,-52(s0)
    3cc0:	41f6d793          	sra	a5,a3,0x1f
    3cc4:	02c0006f          	j	3cf0 <_Z11dump_resultx+0x6c>
    3cc8:	fcc42603          	lw	a2,-52(s0)
    3ccc:	00161593          	sll	a1,a2,0x1
    3cd0:	01f00613          	li	a2,31
    3cd4:	40d60633          	sub	a2,a2,a3
    3cd8:	00c59633          	sll	a2,a1,a2
    3cdc:	fc842583          	lw	a1,-56(s0)
    3ce0:	00d5d733          	srl	a4,a1,a3
    3ce4:	00e66733          	or	a4,a2,a4
    3ce8:	fcc42603          	lw	a2,-52(s0)
    3cec:	40d657b3          	sra	a5,a2,a3
    3cf0:	0ff77613          	zext.b	a2,a4
    3cf4:	fec42683          	lw	a3,-20(s0)
    3cf8:	ff068693          	add	a3,a3,-16
    3cfc:	008686b3          	add	a3,a3,s0
    3d00:	fec68423          	sb	a2,-24(a3)
    3d04:	fec42683          	lw	a3,-20(s0)
    3d08:	00168693          	add	a3,a3,1
    3d0c:	fed42623          	sw	a3,-20(s0)
    3d10:	fec42603          	lw	a2,-20(s0)
    3d14:	00700693          	li	a3,7
    3d18:	f8c6d6e3          	bge	a3,a2,3ca4 <_Z11dump_resultx+0x20>
    3d1c:	00800793          	li	a5,8
    3d20:	fef42423          	sw	a5,-24(s0)
    3d24:	0100006f          	j	3d34 <_Z11dump_resultx+0xb0>
    3d28:	fe842783          	lw	a5,-24(s0)
    3d2c:	fff78793          	add	a5,a5,-1
    3d30:	fef42423          	sw	a5,-24(s0)
    3d34:	fe842703          	lw	a4,-24(s0)
    3d38:	00100793          	li	a5,1
    3d3c:	00e7de63          	bge	a5,a4,3d58 <_Z11dump_resultx+0xd4>
    3d40:	fe842783          	lw	a5,-24(s0)
    3d44:	fff78793          	add	a5,a5,-1
    3d48:	ff078793          	add	a5,a5,-16
    3d4c:	008787b3          	add	a5,a5,s0
    3d50:	fe87c783          	lbu	a5,-24(a5)
    3d54:	fc078ae3          	beqz	a5,3d28 <_Z11dump_resultx+0xa4>
    3d58:	04400513          	li	a0,68
    3d5c:	ea5ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d60:	00000013          	nop
    3d64:	fe842783          	lw	a5,-24(s0)
    3d68:	0ff7f793          	zext.b	a5,a5
    3d6c:	00078513          	mv	a0,a5
    3d70:	e91ff0ef          	jal	3c00 <_Z9uart_putcc>
    3d74:	00000013          	nop
    3d78:	fe042223          	sw	zero,-28(s0)
    3d7c:	02c0006f          	j	3da8 <_Z11dump_resultx+0x124>
    3d80:	fe442783          	lw	a5,-28(s0)
    3d84:	ff078793          	add	a5,a5,-16
    3d88:	008787b3          	add	a5,a5,s0
    3d8c:	fe87c783          	lbu	a5,-24(a5)
    3d90:	00078513          	mv	a0,a5
    3d94:	e6dff0ef          	jal	3c00 <_Z9uart_putcc>
    3d98:	00000013          	nop
    3d9c:	fe442783          	lw	a5,-28(s0)
    3da0:	00178793          	add	a5,a5,1
    3da4:	fef42223          	sw	a5,-28(s0)
    3da8:	fe442703          	lw	a4,-28(s0)
    3dac:	fe842783          	lw	a5,-24(s0)
    3db0:	fcf748e3          	blt	a4,a5,3d80 <_Z11dump_resultx+0xfc>
    3db4:	00000013          	nop
    3db8:	00000013          	nop
    3dbc:	03c12083          	lw	ra,60(sp)
    3dc0:	03812403          	lw	s0,56(sp)
    3dc4:	04010113          	add	sp,sp,64
    3dc8:	00008067          	ret
