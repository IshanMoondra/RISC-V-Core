
/out/state_dump_v3.elf:     file format elf32-littleriscv


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
  38:	20078793          	add	a5,a5,512 # bebc200 <SET_WATCHDOG_LOW+0xbcbb1c8>
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
  7c:	385030ef          	jal	3c00 <_Z9uart_putcc>
  80:	00000013          	nop
  84:	03e00513          	li	a0,62
  88:	379030ef          	jal	3c00 <_Z9uart_putcc>
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	01c12083          	lw	ra,28(sp)
  98:	01812403          	lw	s0,24(sp)
  9c:	02010113          	add	sp,sp,32
  a0:	00008067          	ret

000000a4 <main>:
  a4:	fc010113          	add	sp,sp,-64
  a8:	02112e23          	sw	ra,60(sp)
  ac:	02812c23          	sw	s0,56(sp)
  b0:	03212a23          	sw	s2,52(sp)
  b4:	03312823          	sw	s3,48(sp)
  b8:	03412623          	sw	s4,44(sp)
  bc:	03512423          	sw	s5,40(sp)
  c0:	03612223          	sw	s6,36(sp)
  c4:	03712023          	sw	s7,32(sp)
  c8:	04010413          	add	s0,sp,64
  cc:	f55ff0ef          	jal	20 <_Z10soc_bootupv>
  d0:	00000013          	nop
  d4:	002017b7          	lui	a5,0x201
  d8:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
  dc:	0007a783          	lw	a5,0(a5)
  e0:	fcf42e23          	sw	a5,-36(s0)
  e4:	002017b7          	lui	a5,0x201
  e8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
  ec:	0007a783          	lw	a5,0(a5)
  f0:	fcf42c23          	sw	a5,-40(s0)
  f4:	100000ef          	jal	1f4 <_Z18uart_poll_watchdogv>
  f8:	00000013          	nop
  fc:	002017b7          	lui	a5,0x201
 100:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
 104:	0007a783          	lw	a5,0(a5)
 108:	fcf42a23          	sw	a5,-44(s0)
 10c:	002017b7          	lui	a5,0x201
 110:	01478793          	add	a5,a5,20 # 201014 <GET_PERFMON_SOCL>
 114:	0007a783          	lw	a5,0(a5)
 118:	fcf42823          	sw	a5,-48(s0)
 11c:	fd042703          	lw	a4,-48(s0)
 120:	fdc42783          	lw	a5,-36(s0)
 124:	40f707b3          	sub	a5,a4,a5
 128:	fcf42623          	sw	a5,-52(s0)
 12c:	fd442703          	lw	a4,-44(s0)
 130:	fd842783          	lw	a5,-40(s0)
 134:	40f707b3          	sub	a5,a4,a5
 138:	fcf42423          	sw	a5,-56(s0)
 13c:	05200513          	li	a0,82
 140:	2c1030ef          	jal	3c00 <_Z9uart_putcc>
 144:	00000013          	nop
 148:	fc842783          	lw	a5,-56(s0)
 14c:	00078b13          	mv	s6,a5
 150:	41f7d793          	sra	a5,a5,0x1f
 154:	00078b93          	mv	s7,a5
 158:	000b0513          	mv	a0,s6
 15c:	000b8593          	mv	a1,s7
 160:	325030ef          	jal	3c84 <_Z11dump_resultx>
 164:	05900513          	li	a0,89
 168:	299030ef          	jal	3c00 <_Z9uart_putcc>
 16c:	00000013          	nop
 170:	fcc42783          	lw	a5,-52(s0)
 174:	00078a13          	mv	s4,a5
 178:	41f7d793          	sra	a5,a5,0x1f
 17c:	00078a93          	mv	s5,a5
 180:	000a0513          	mv	a0,s4
 184:	000a8593          	mv	a1,s5
 188:	2fd030ef          	jal	3c84 <_Z11dump_resultx>
 18c:	00000013          	nop
 190:	002017b7          	lui	a5,0x201
 194:	02878793          	add	a5,a5,40 # 201028 <GET_PERFMON_MISS>
 198:	0007a783          	lw	a5,0(a5)
 19c:	fcf42223          	sw	a5,-60(s0)
 1a0:	00000013          	nop
 1a4:	fc442783          	lw	a5,-60(s0)
 1a8:	00078913          	mv	s2,a5
 1ac:	41f7d793          	sra	a5,a5,0x1f
 1b0:	00078993          	mv	s3,a5
 1b4:	00090513          	mv	a0,s2
 1b8:	00098593          	mv	a1,s3
 1bc:	2c9030ef          	jal	3c84 <_Z11dump_resultx>
 1c0:	00000013          	nop
 1c4:	00000793          	li	a5,0
 1c8:	00078513          	mv	a0,a5
 1cc:	03c12083          	lw	ra,60(sp)
 1d0:	03812403          	lw	s0,56(sp)
 1d4:	03412903          	lw	s2,52(sp)
 1d8:	03012983          	lw	s3,48(sp)
 1dc:	02c12a03          	lw	s4,44(sp)
 1e0:	02812a83          	lw	s5,40(sp)
 1e4:	02412b03          	lw	s6,36(sp)
 1e8:	02012b83          	lw	s7,32(sp)
 1ec:	04010113          	add	sp,sp,64
 1f0:	00008067          	ret

000001f4 <_Z18uart_poll_watchdogv>:
 1f4:	fe010113          	add	sp,sp,-32
 1f8:	00112e23          	sw	ra,28(sp)
 1fc:	00812c23          	sw	s0,24(sp)
 200:	02010413          	add	s0,sp,32
 204:	fe042623          	sw	zero,-20(s0)
 208:	03f00513          	li	a0,63
 20c:	1f5030ef          	jal	3c00 <_Z9uart_putcc>
 210:	00000013          	nop
 214:	764020ef          	jal	2978 <_Z7computev>
 218:	00050793          	mv	a5,a0
 21c:	fef405a3          	sb	a5,-21(s0)
 220:	00000013          	nop
 224:	00000013          	nop
 228:	01c12083          	lw	ra,28(sp)
 22c:	01812403          	lw	s0,24(sp)
 230:	02010113          	add	sp,sp,32
 234:	00008067          	ret

Disassembly of section .spi_compute:

00001800 <_Z8fib_iteri-0x1000>:
	...

00002800 <_Z8fib_iteri>:
    2800:	fc010113          	add	sp,sp,-64
    2804:	02812e23          	sw	s0,60(sp)
    2808:	04010413          	add	s0,sp,64
    280c:	fca42623          	sw	a0,-52(s0)
    2810:	00100713          	li	a4,1
    2814:	00000793          	li	a5,0
    2818:	fee42423          	sw	a4,-24(s0)
    281c:	fef42623          	sw	a5,-20(s0)
    2820:	00000793          	li	a5,0
    2824:	00000813          	li	a6,0
    2828:	fef42023          	sw	a5,-32(s0)
    282c:	ff042223          	sw	a6,-28(s0)
    2830:	fcf42c23          	sw	a5,-40(s0)
    2834:	fd042e23          	sw	a6,-36(s0)
    2838:	fc042823          	sw	zero,-48(s0)
    283c:	fcc42783          	lw	a5,-52(s0)
    2840:	fcf42823          	sw	a5,-48(s0)
    2844:	00100793          	li	a5,1
    2848:	fcf42a23          	sw	a5,-44(s0)
    284c:	0600006f          	j	28ac <_Z8fib_iteri+0xac>
    2850:	fe842603          	lw	a2,-24(s0)
    2854:	fec42683          	lw	a3,-20(s0)
    2858:	fe042503          	lw	a0,-32(s0)
    285c:	fe442583          	lw	a1,-28(s0)
    2860:	00a60733          	add	a4,a2,a0
    2864:	00070813          	mv	a6,a4
    2868:	00c83833          	sltu	a6,a6,a2
    286c:	00b687b3          	add	a5,a3,a1
    2870:	00f806b3          	add	a3,a6,a5
    2874:	00068793          	mv	a5,a3
    2878:	fce42c23          	sw	a4,-40(s0)
    287c:	fcf42e23          	sw	a5,-36(s0)
    2880:	fe842703          	lw	a4,-24(s0)
    2884:	fec42783          	lw	a5,-20(s0)
    2888:	fee42023          	sw	a4,-32(s0)
    288c:	fef42223          	sw	a5,-28(s0)
    2890:	fd842703          	lw	a4,-40(s0)
    2894:	fdc42783          	lw	a5,-36(s0)
    2898:	fee42423          	sw	a4,-24(s0)
    289c:	fef42623          	sw	a5,-20(s0)
    28a0:	fd442783          	lw	a5,-44(s0)
    28a4:	00178793          	add	a5,a5,1
    28a8:	fcf42a23          	sw	a5,-44(s0)
    28ac:	fd442703          	lw	a4,-44(s0)
    28b0:	fd042783          	lw	a5,-48(s0)
    28b4:	f8f74ee3          	blt	a4,a5,2850 <_Z8fib_iteri+0x50>
    28b8:	fd842703          	lw	a4,-40(s0)
    28bc:	fdc42783          	lw	a5,-36(s0)
    28c0:	00070513          	mv	a0,a4
    28c4:	00078593          	mv	a1,a5
    28c8:	03c12403          	lw	s0,60(sp)
    28cc:	04010113          	add	sp,sp,64
    28d0:	00008067          	ret

000028d4 <_Z13fib_recursivei>:
    28d4:	fe010113          	add	sp,sp,-32
    28d8:	00112e23          	sw	ra,28(sp)
    28dc:	00812c23          	sw	s0,24(sp)
    28e0:	01212a23          	sw	s2,20(sp)
    28e4:	01312823          	sw	s3,16(sp)
    28e8:	02010413          	add	s0,sp,32
    28ec:	fea42623          	sw	a0,-20(s0)
    28f0:	fec42603          	lw	a2,-20(s0)
    28f4:	00100693          	li	a3,1
    28f8:	00c6cc63          	blt	a3,a2,2910 <_Z13fib_recursivei+0x3c>
    28fc:	fec42683          	lw	a3,-20(s0)
    2900:	00068713          	mv	a4,a3
    2904:	41f6d693          	sra	a3,a3,0x1f
    2908:	00068793          	mv	a5,a3
    290c:	04c0006f          	j	2958 <_Z13fib_recursivei+0x84>
    2910:	fec42783          	lw	a5,-20(s0)
    2914:	fff78793          	add	a5,a5,-1
    2918:	00078513          	mv	a0,a5
    291c:	fb9ff0ef          	jal	28d4 <_Z13fib_recursivei>
    2920:	00050913          	mv	s2,a0
    2924:	00058993          	mv	s3,a1
    2928:	fec42783          	lw	a5,-20(s0)
    292c:	ffe78793          	add	a5,a5,-2
    2930:	00078513          	mv	a0,a5
    2934:	fa1ff0ef          	jal	28d4 <_Z13fib_recursivei>
    2938:	00050613          	mv	a2,a0
    293c:	00058693          	mv	a3,a1
    2940:	00c90733          	add	a4,s2,a2
    2944:	00070593          	mv	a1,a4
    2948:	0125b5b3          	sltu	a1,a1,s2
    294c:	00d987b3          	add	a5,s3,a3
    2950:	00f586b3          	add	a3,a1,a5
    2954:	00068793          	mv	a5,a3
    2958:	00070513          	mv	a0,a4
    295c:	00078593          	mv	a1,a5
    2960:	01c12083          	lw	ra,28(sp)
    2964:	01812403          	lw	s0,24(sp)
    2968:	01412903          	lw	s2,20(sp)
    296c:	01012983          	lw	s3,16(sp)
    2970:	02010113          	add	sp,sp,32
    2974:	00008067          	ret

00002978 <_Z7computev>:
    2978:	f9010113          	add	sp,sp,-112
    297c:	06112623          	sw	ra,108(sp)
    2980:	06812423          	sw	s0,104(sp)
    2984:	07212223          	sw	s2,100(sp)
    2988:	07312023          	sw	s3,96(sp)
    298c:	05412e23          	sw	s4,92(sp)
    2990:	05512c23          	sw	s5,88(sp)
    2994:	05612a23          	sw	s6,84(sp)
    2998:	05712823          	sw	s7,80(sp)
    299c:	05812623          	sw	s8,76(sp)
    29a0:	05912423          	sw	s9,72(sp)
    29a4:	07010413          	add	s0,sp,112
    29a8:	00000793          	li	a5,0
    29ac:	00000813          	li	a6,0
    29b0:	fcf42023          	sw	a5,-64(s0)
    29b4:	fd042223          	sw	a6,-60(s0)
    29b8:	faf42c23          	sw	a5,-72(s0)
    29bc:	fb042e23          	sw	a6,-68(s0)
    29c0:	00f00793          	li	a5,15
    29c4:	faf42a23          	sw	a5,-76(s0)
    29c8:	fff00793          	li	a5,-1
    29cc:	fcf407a3          	sb	a5,-49(s0)
    29d0:	002017b7          	lui	a5,0x201
    29d4:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
    29d8:	0007a783          	lw	a5,0(a5)
    29dc:	faf42823          	sw	a5,-80(s0)
    29e0:	002017b7          	lui	a5,0x201
    29e4:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
    29e8:	0007a783          	lw	a5,0(a5)
    29ec:	faf42623          	sw	a5,-84(s0)
    29f0:	fb442503          	lw	a0,-76(s0)
    29f4:	e0dff0ef          	jal	2800 <_Z8fib_iteri>
    29f8:	fca42023          	sw	a0,-64(s0)
    29fc:	fcb42223          	sw	a1,-60(s0)
    2a00:	00000013          	nop
    2a04:	002017b7          	lui	a5,0x201
    2a08:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
    2a0c:	0007a783          	lw	a5,0(a5)
    2a10:	faf42423          	sw	a5,-88(s0)
    2a14:	002017b7          	lui	a5,0x201
    2a18:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
    2a1c:	0007a783          	lw	a5,0(a5)
    2a20:	faf42223          	sw	a5,-92(s0)
    2a24:	fa442703          	lw	a4,-92(s0)
    2a28:	fb042783          	lw	a5,-80(s0)
    2a2c:	40f707b3          	sub	a5,a4,a5
    2a30:	faf42023          	sw	a5,-96(s0)
    2a34:	fa842703          	lw	a4,-88(s0)
    2a38:	fac42783          	lw	a5,-84(s0)
    2a3c:	40f707b3          	sub	a5,a4,a5
    2a40:	f8f42e23          	sw	a5,-100(s0)
    2a44:	05900513          	li	a0,89
    2a48:	1b8010ef          	jal	3c00 <_Z9uart_putcc>
    2a4c:	00000013          	nop
    2a50:	fa042783          	lw	a5,-96(s0)
    2a54:	00078c13          	mv	s8,a5
    2a58:	41f7d793          	sra	a5,a5,0x1f
    2a5c:	00078c93          	mv	s9,a5
    2a60:	000c0513          	mv	a0,s8
    2a64:	000c8593          	mv	a1,s9
    2a68:	21c010ef          	jal	3c84 <_Z11dump_resultx>
    2a6c:	00000013          	nop
    2a70:	05200513          	li	a0,82
    2a74:	18c010ef          	jal	3c00 <_Z9uart_putcc>
    2a78:	00000013          	nop
    2a7c:	f9c42783          	lw	a5,-100(s0)
    2a80:	00078b13          	mv	s6,a5
    2a84:	41f7d793          	sra	a5,a5,0x1f
    2a88:	00078b93          	mv	s7,a5
    2a8c:	000b0513          	mv	a0,s6
    2a90:	000b8593          	mv	a1,s7
    2a94:	1f0010ef          	jal	3c84 <_Z11dump_resultx>
    2a98:	00000013          	nop
    2a9c:	002017b7          	lui	a5,0x201
    2aa0:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
    2aa4:	0007a783          	lw	a5,0(a5)
    2aa8:	faf42823          	sw	a5,-80(s0)
    2aac:	002017b7          	lui	a5,0x201
    2ab0:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
    2ab4:	0007a783          	lw	a5,0(a5)
    2ab8:	faf42623          	sw	a5,-84(s0)
    2abc:	fb442503          	lw	a0,-76(s0)
    2ac0:	e15ff0ef          	jal	28d4 <_Z13fib_recursivei>
    2ac4:	00050713          	mv	a4,a0
    2ac8:	00058793          	mv	a5,a1
    2acc:	fae42c23          	sw	a4,-72(s0)
    2ad0:	faf42e23          	sw	a5,-68(s0)
    2ad4:	002017b7          	lui	a5,0x201
    2ad8:	02c78793          	add	a5,a5,44 # 20102c <GET_PERFMON_RET_CNT>
    2adc:	0007a783          	lw	a5,0(a5)
    2ae0:	faf42423          	sw	a5,-88(s0)
    2ae4:	002017b7          	lui	a5,0x201
    2ae8:	01c78793          	add	a5,a5,28 # 20101c <GET_PERFMON_COREL>
    2aec:	0007a783          	lw	a5,0(a5)
    2af0:	faf42223          	sw	a5,-92(s0)
    2af4:	fa442703          	lw	a4,-92(s0)
    2af8:	fb042783          	lw	a5,-80(s0)
    2afc:	40f707b3          	sub	a5,a4,a5
    2b00:	faf42023          	sw	a5,-96(s0)
    2b04:	fa842703          	lw	a4,-88(s0)
    2b08:	fac42783          	lw	a5,-84(s0)
    2b0c:	40f707b3          	sub	a5,a4,a5
    2b10:	f8f42e23          	sw	a5,-100(s0)
    2b14:	05900513          	li	a0,89
    2b18:	0e8010ef          	jal	3c00 <_Z9uart_putcc>
    2b1c:	00000013          	nop
    2b20:	fa042783          	lw	a5,-96(s0)
    2b24:	00078a13          	mv	s4,a5
    2b28:	41f7d793          	sra	a5,a5,0x1f
    2b2c:	00078a93          	mv	s5,a5
    2b30:	000a0513          	mv	a0,s4
    2b34:	000a8593          	mv	a1,s5
    2b38:	14c010ef          	jal	3c84 <_Z11dump_resultx>
    2b3c:	00000013          	nop
    2b40:	05200513          	li	a0,82
    2b44:	0bc010ef          	jal	3c00 <_Z9uart_putcc>
    2b48:	00000013          	nop
    2b4c:	f9c42783          	lw	a5,-100(s0)
    2b50:	00078913          	mv	s2,a5
    2b54:	41f7d793          	sra	a5,a5,0x1f
    2b58:	00078993          	mv	s3,a5
    2b5c:	00090513          	mv	a0,s2
    2b60:	00098593          	mv	a1,s3
    2b64:	120010ef          	jal	3c84 <_Z11dump_resultx>
    2b68:	fc042703          	lw	a4,-64(s0)
    2b6c:	fb842783          	lw	a5,-72(s0)
    2b70:	02f71463          	bne	a4,a5,2b98 <_Z7computev+0x220>
    2b74:	fc442703          	lw	a4,-60(s0)
    2b78:	fbc42783          	lw	a5,-68(s0)
    2b7c:	00f71e63          	bne	a4,a5,2b98 <_Z7computev+0x220>
    2b80:	00100793          	li	a5,1
    2b84:	fcf407a3          	sb	a5,-49(s0)
    2b88:	05000513          	li	a0,80
    2b8c:	074010ef          	jal	3c00 <_Z9uart_putcc>
    2b90:	00000013          	nop
    2b94:	0140006f          	j	2ba8 <_Z7computev+0x230>
    2b98:	fc0407a3          	sb	zero,-49(s0)
    2b9c:	04600513          	li	a0,70
    2ba0:	060010ef          	jal	3c00 <_Z9uart_putcc>
    2ba4:	00000013          	nop
    2ba8:	00000013          	nop
    2bac:	fc042503          	lw	a0,-64(s0)
    2bb0:	fc442583          	lw	a1,-60(s0)
    2bb4:	0d0010ef          	jal	3c84 <_Z11dump_resultx>
    2bb8:	00000013          	nop
    2bbc:	04300513          	li	a0,67
    2bc0:	040010ef          	jal	3c00 <_Z9uart_putcc>
    2bc4:	00000013          	nop
    2bc8:	fcf44783          	lbu	a5,-49(s0)
    2bcc:	00078513          	mv	a0,a5
    2bd0:	06c12083          	lw	ra,108(sp)
    2bd4:	06812403          	lw	s0,104(sp)
    2bd8:	06412903          	lw	s2,100(sp)
    2bdc:	06012983          	lw	s3,96(sp)
    2be0:	05c12a03          	lw	s4,92(sp)
    2be4:	05812a83          	lw	s5,88(sp)
    2be8:	05412b03          	lw	s6,84(sp)
    2bec:	05012b83          	lw	s7,80(sp)
    2bf0:	04c12c03          	lw	s8,76(sp)
    2bf4:	04812c83          	lw	s9,72(sp)
    2bf8:	07010113          	add	sp,sp,112
    2bfc:	00008067          	ret

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
