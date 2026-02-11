
/out/demo_v1.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	002007b7          	lui	a5,0x200
   4:	41078793          	add	a5,a5,1040 # 200410 <SET_DIS_I_CACHE>
   8:	0007a023          	sw	zero,0(a5)
   c:	00000013          	nop
  10:	00180117          	auipc	sp,0x180
  14:	ff010113          	add	sp,sp,-16 # 180000 <_end>
  18:	0017e197          	auipc	gp,0x17e
  1c:	fe818193          	add	gp,gp,-24 # 17e000 <__bss_end>
  20:	00c000ef          	jal	2c <main>
  24:	ffffffff          	.word	0xffffffff
  28:	00000013          	nop

0000002c <main>:
  2c:	fd010113          	add	sp,sp,-48
  30:	02112623          	sw	ra,44(sp)
  34:	02812423          	sw	s0,40(sp)
  38:	03010413          	add	s0,sp,48
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
  68:	0c0000ef          	jal	128 <_Z9uart_initi>
  6c:	00000013          	nop
  70:	03e00513          	li	a0,62
  74:	14c000ef          	jal	1c0 <_Z9uart_putcc>
  78:	00000013          	nop
  7c:	03f00513          	li	a0,63
  80:	140000ef          	jal	1c0 <_Z9uart_putcc>
  84:	00000013          	nop
  88:	00a00513          	li	a0,10
  8c:	134000ef          	jal	1c0 <_Z9uart_putcc>
  90:	00000013          	nop
  94:	0f8000ef          	jal	18c <_Z11uart_statusv>
  98:	00050793          	mv	a5,a0
  9c:	fef401a3          	sb	a5,-29(s0)
  a0:	00000013          	nop
  a4:	0b4000ef          	jal	158 <_Z9uart_getcv>
  a8:	00050793          	mv	a5,a0
  ac:	fef40123          	sb	a5,-30(s0)
  b0:	00000013          	nop
  b4:	00a00513          	li	a0,10
  b8:	18c000ef          	jal	244 <_Z8fib_iteri>
  bc:	fca42e23          	sw	a0,-36(s0)
  c0:	00000013          	nop
  c4:	00a00513          	li	a0,10
  c8:	218000ef          	jal	2e0 <_Z13fib_recursivei>
  cc:	00050793          	mv	a5,a0
  d0:	fcf42c23          	sw	a5,-40(s0)
  d4:	04400513          	li	a0,68
  d8:	0e8000ef          	jal	1c0 <_Z9uart_putcc>
  dc:	00000013          	nop
  e0:	fe244783          	lbu	a5,-30(s0)
  e4:	00078513          	mv	a0,a5
  e8:	0d8000ef          	jal	1c0 <_Z9uart_putcc>
  ec:	00000013          	nop
  f0:	fdc42703          	lw	a4,-36(s0)
  f4:	fd842783          	lw	a5,-40(s0)
  f8:	00f71863          	bne	a4,a5,108 <main+0xdc>
  fc:	fec42783          	lw	a5,-20(s0)
 100:	fef42223          	sw	a5,-28(s0)
 104:	00c0006f          	j	110 <main+0xe4>
 108:	fe842783          	lw	a5,-24(s0)
 10c:	fef42223          	sw	a5,-28(s0)
 110:	00000793          	li	a5,0
 114:	00078513          	mv	a0,a5
 118:	02c12083          	lw	ra,44(sp)
 11c:	02812403          	lw	s0,40(sp)
 120:	03010113          	add	sp,sp,48
 124:	00008067          	ret

00000128 <_Z9uart_initi>:
 128:	fe010113          	add	sp,sp,-32
 12c:	00812e23          	sw	s0,28(sp)
 130:	02010413          	add	s0,sp,32
 134:	fea42623          	sw	a0,-20(s0)
 138:	002017b7          	lui	a5,0x201
 13c:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 140:	fec42703          	lw	a4,-20(s0)
 144:	00e7a023          	sw	a4,0(a5)
 148:	00000013          	nop
 14c:	01c12403          	lw	s0,28(sp)
 150:	02010113          	add	sp,sp,32
 154:	00008067          	ret

00000158 <_Z9uart_getcv>:
 158:	fe010113          	add	sp,sp,-32
 15c:	00812e23          	sw	s0,28(sp)
 160:	02010413          	add	s0,sp,32
 164:	00000013          	nop
 168:	002017b7          	lui	a5,0x201
 16c:	80478793          	add	a5,a5,-2044 # 200804 <UART_RECV>
 170:	0007c783          	lbu	a5,0(a5)
 174:	fef407a3          	sb	a5,-17(s0)
 178:	fef44783          	lbu	a5,-17(s0)
 17c:	00078513          	mv	a0,a5
 180:	01c12403          	lw	s0,28(sp)
 184:	02010113          	add	sp,sp,32
 188:	00008067          	ret

0000018c <_Z11uart_statusv>:
 18c:	fe010113          	add	sp,sp,-32
 190:	00812e23          	sw	s0,28(sp)
 194:	02010413          	add	s0,sp,32
 198:	00000013          	nop
 19c:	002017b7          	lui	a5,0x201
 1a0:	80c78793          	add	a5,a5,-2036 # 20080c <UART_STAT>
 1a4:	0007c783          	lbu	a5,0(a5)
 1a8:	fef407a3          	sb	a5,-17(s0)
 1ac:	fef44783          	lbu	a5,-17(s0)
 1b0:	00078513          	mv	a0,a5
 1b4:	01c12403          	lw	s0,28(sp)
 1b8:	02010113          	add	sp,sp,32
 1bc:	00008067          	ret

000001c0 <_Z9uart_putcc>:
 1c0:	fd010113          	add	sp,sp,-48
 1c4:	02812623          	sw	s0,44(sp)
 1c8:	03010413          	add	s0,sp,48
 1cc:	00050793          	mv	a5,a0
 1d0:	fcf40fa3          	sb	a5,-33(s0)
 1d4:	002017b7          	lui	a5,0x201
 1d8:	80078793          	add	a5,a5,-2048 # 200800 <UART_BAUD>
 1dc:	0007a783          	lw	a5,0(a5)
 1e0:	fef42223          	sw	a5,-28(s0)
 1e4:	002017b7          	lui	a5,0x201
 1e8:	80878793          	add	a5,a5,-2040 # 200808 <UART_SEND>
 1ec:	fdf44703          	lbu	a4,-33(s0)
 1f0:	00e78023          	sb	a4,0(a5)
 1f4:	fe042623          	sw	zero,-20(s0)
 1f8:	0300006f          	j	228 <_Z9uart_putcc+0x68>
 1fc:	fe042423          	sw	zero,-24(s0)
 200:	0100006f          	j	210 <_Z9uart_putcc+0x50>
 204:	fe842783          	lw	a5,-24(s0)
 208:	00178793          	add	a5,a5,1
 20c:	fef42423          	sw	a5,-24(s0)
 210:	fe842703          	lw	a4,-24(s0)
 214:	fe442783          	lw	a5,-28(s0)
 218:	fef746e3          	blt	a4,a5,204 <_Z9uart_putcc+0x44>
 21c:	fec42783          	lw	a5,-20(s0)
 220:	00178793          	add	a5,a5,1
 224:	fef42623          	sw	a5,-20(s0)
 228:	fec42783          	lw	a5,-20(s0)
 22c:	fcf058e3          	blez	a5,1fc <_Z9uart_putcc+0x3c>
 230:	00000013          	nop
 234:	00000013          	nop
 238:	02c12403          	lw	s0,44(sp)
 23c:	03010113          	add	sp,sp,48
 240:	00008067          	ret

00000244 <_Z8fib_iteri>:
 244:	fc010113          	add	sp,sp,-64
 248:	02812e23          	sw	s0,60(sp)
 24c:	04010413          	add	s0,sp,64
 250:	fca42623          	sw	a0,-52(s0)
 254:	00100793          	li	a5,1
 258:	fef42623          	sw	a5,-20(s0)
 25c:	fe042423          	sw	zero,-24(s0)
 260:	fe042223          	sw	zero,-28(s0)
 264:	fe042023          	sw	zero,-32(s0)
 268:	fcc42703          	lw	a4,-52(s0)
 26c:	02f00793          	li	a5,47
 270:	00e7d863          	bge	a5,a4,280 <_Z8fib_iteri+0x3c>
 274:	02f00793          	li	a5,47
 278:	fef42023          	sw	a5,-32(s0)
 27c:	00c0006f          	j	288 <_Z8fib_iteri+0x44>
 280:	fcc42783          	lw	a5,-52(s0)
 284:	fef42023          	sw	a5,-32(s0)
 288:	00100793          	li	a5,1
 28c:	fcf42e23          	sw	a5,-36(s0)
 290:	0300006f          	j	2c0 <_Z8fib_iteri+0x7c>
 294:	fec42703          	lw	a4,-20(s0)
 298:	fe842783          	lw	a5,-24(s0)
 29c:	00f707b3          	add	a5,a4,a5
 2a0:	fef42223          	sw	a5,-28(s0)
 2a4:	fec42783          	lw	a5,-20(s0)
 2a8:	fef42423          	sw	a5,-24(s0)
 2ac:	fe442783          	lw	a5,-28(s0)
 2b0:	fef42623          	sw	a5,-20(s0)
 2b4:	fdc42783          	lw	a5,-36(s0)
 2b8:	00178793          	add	a5,a5,1
 2bc:	fcf42e23          	sw	a5,-36(s0)
 2c0:	fdc42703          	lw	a4,-36(s0)
 2c4:	fe042783          	lw	a5,-32(s0)
 2c8:	fcf746e3          	blt	a4,a5,294 <_Z8fib_iteri+0x50>
 2cc:	fe442783          	lw	a5,-28(s0)
 2d0:	00078513          	mv	a0,a5
 2d4:	03c12403          	lw	s0,60(sp)
 2d8:	04010113          	add	sp,sp,64
 2dc:	00008067          	ret

000002e0 <_Z13fib_recursivei>:
 2e0:	fe010113          	add	sp,sp,-32
 2e4:	00112e23          	sw	ra,28(sp)
 2e8:	00812c23          	sw	s0,24(sp)
 2ec:	00912a23          	sw	s1,20(sp)
 2f0:	02010413          	add	s0,sp,32
 2f4:	fea42623          	sw	a0,-20(s0)
 2f8:	fec42703          	lw	a4,-20(s0)
 2fc:	00100793          	li	a5,1
 300:	00e7c663          	blt	a5,a4,30c <_Z13fib_recursivei+0x2c>
 304:	fec42783          	lw	a5,-20(s0)
 308:	0300006f          	j	338 <_Z13fib_recursivei+0x58>
 30c:	fec42783          	lw	a5,-20(s0)
 310:	fff78793          	add	a5,a5,-1
 314:	00078513          	mv	a0,a5
 318:	fc9ff0ef          	jal	2e0 <_Z13fib_recursivei>
 31c:	00050493          	mv	s1,a0
 320:	fec42783          	lw	a5,-20(s0)
 324:	ffe78793          	add	a5,a5,-2
 328:	00078513          	mv	a0,a5
 32c:	fb5ff0ef          	jal	2e0 <_Z13fib_recursivei>
 330:	00050793          	mv	a5,a0
 334:	00f487b3          	add	a5,s1,a5
 338:	00078513          	mv	a0,a5
 33c:	01c12083          	lw	ra,28(sp)
 340:	01812403          	lw	s0,24(sp)
 344:	01412483          	lw	s1,20(sp)
 348:	02010113          	add	sp,sp,32
 34c:	00008067          	ret
