
/mnt/e/WSL/git_clones/Programs/stores_load.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	40000113          	li	sp,1024
   4:	20000193          	li	gp,512
   8:	00c000ef          	jal	ra,14 <main>
   c:	ffff                	0xffff
   e:	ffff                	0xffff
  10:	00000013          	nop

00000014 <main>:
  14:	fe010113          	addi	sp,sp,-32
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	02010413          	addi	s0,sp,32
  24:	3e800513          	li	a0,1000
  28:	04c000ef          	jal	ra,74 <uart_init>
  2c:	fe042623          	sw	zero,-20(s0)
  30:	03f00513          	li	a0,63
  34:	070000ef          	jal	ra,a4 <uart_sendchar>
  38:	00000013          	nop
  3c:	13c000ef          	jal	ra,178 <uart_getchar>
  40:	00050793          	mv	a5,a0
  44:	fef405a3          	sb	a5,-21(s0)
  48:	feb44783          	lbu	a5,-21(s0)
  4c:	00078513          	mv	a0,a5
  50:	054000ef          	jal	ra,a4 <uart_sendchar>
  54:	02f00793          	li	a5,47
  58:	fef42623          	sw	a5,-20(s0)
  5c:	00000793          	li	a5,0
  60:	00078513          	mv	a0,a5
  64:	01c12083          	lw	ra,28(sp)
  68:	01812403          	lw	s0,24(sp)
  6c:	02010113          	addi	sp,sp,32
  70:	00008067          	ret

00000074 <uart_init>:
  74:	fe010113          	addi	sp,sp,-32
  78:	00812e23          	sw	s0,28(sp)
  7c:	02010413          	addi	s0,sp,32
  80:	fea42623          	sw	a0,-20(s0)
  84:	020007b7          	lui	a5,0x2000
  88:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  8c:	fec42703          	lw	a4,-20(s0)
  90:	00e7a023          	sw	a4,0(a5)
  94:	00000013          	nop
  98:	01c12403          	lw	s0,28(sp)
  9c:	02010113          	addi	sp,sp,32
  a0:	00008067          	ret

000000a4 <uart_sendchar>:
  a4:	fd010113          	addi	sp,sp,-48
  a8:	02812623          	sw	s0,44(sp)
  ac:	03010413          	addi	s0,sp,48
  b0:	00050793          	mv	a5,a0
  b4:	fcf40fa3          	sb	a5,-33(s0)
  b8:	020007b7          	lui	a5,0x2000
  bc:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  c0:	0007a783          	lw	a5,0(a5)
  c4:	fef42223          	sw	a5,-28(s0)
  c8:	020007b7          	lui	a5,0x2000
  cc:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
  d0:	fdf44703          	lbu	a4,-33(s0)
  d4:	00e78023          	sb	a4,0(a5)
  d8:	fe042623          	sw	zero,-20(s0)
  dc:	fec42783          	lw	a5,-20(s0)
  e0:	02f04a63          	bgtz	a5,114 <uart_sendchar+0x70>
  e4:	fe042423          	sw	zero,-24(s0)
  e8:	fe842703          	lw	a4,-24(s0)
  ec:	fe442783          	lw	a5,-28(s0)
  f0:	00f75a63          	bge	a4,a5,104 <uart_sendchar+0x60>
  f4:	fe842783          	lw	a5,-24(s0)
  f8:	00178793          	addi	a5,a5,1
  fc:	fef42423          	sw	a5,-24(s0)
 100:	fe9ff06f          	j	e8 <uart_sendchar+0x44>
 104:	fec42783          	lw	a5,-20(s0)
 108:	00178793          	addi	a5,a5,1
 10c:	fef42623          	sw	a5,-20(s0)
 110:	fcdff06f          	j	dc <uart_sendchar+0x38>
 114:	00000013          	nop
 118:	02c12403          	lw	s0,44(sp)
 11c:	03010113          	addi	sp,sp,48
 120:	00008067          	ret

00000124 <uart_sendstring>:
 124:	fe010113          	addi	sp,sp,-32
 128:	00112e23          	sw	ra,28(sp)
 12c:	00812c23          	sw	s0,24(sp)
 130:	02010413          	addi	s0,sp,32
 134:	fea42623          	sw	a0,-20(s0)
 138:	fec42783          	lw	a5,-20(s0)
 13c:	0007c783          	lbu	a5,0(a5)
 140:	02078263          	beqz	a5,164 <uart_sendstring+0x40>
 144:	fec42783          	lw	a5,-20(s0)
 148:	0007c783          	lbu	a5,0(a5)
 14c:	00078513          	mv	a0,a5
 150:	f55ff0ef          	jal	ra,a4 <uart_sendchar>
 154:	fec42783          	lw	a5,-20(s0)
 158:	00178793          	addi	a5,a5,1
 15c:	fef42623          	sw	a5,-20(s0)
 160:	fd9ff06f          	j	138 <uart_sendstring+0x14>
 164:	00000013          	nop
 168:	01c12083          	lw	ra,28(sp)
 16c:	01812403          	lw	s0,24(sp)
 170:	02010113          	addi	sp,sp,32
 174:	00008067          	ret

00000178 <uart_getchar>:
 178:	fe010113          	addi	sp,sp,-32
 17c:	00812e23          	sw	s0,28(sp)
 180:	02010413          	addi	s0,sp,32
 184:	020007b7          	lui	a5,0x2000
 188:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
 18c:	0007c783          	lbu	a5,0(a5)
 190:	fef407a3          	sb	a5,-17(s0)
 194:	fef44783          	lbu	a5,-17(s0)
 198:	00078513          	mv	a0,a5
 19c:	01c12403          	lw	s0,28(sp)
 1a0:	02010113          	addi	sp,sp,32
 1a4:	00008067          	ret

Disassembly of section .eh_frame:

000001a8 <.eh_frame>:
 1a8:	0010                	0x10
 1aa:	0000                	unimp
 1ac:	0000                	unimp
 1ae:	0000                	unimp
 1b0:	7a01                	lui	s4,0xfffe0
 1b2:	0052                	c.slli	zero,0x14
 1b4:	7c01                	lui	s8,0xfffe0
 1b6:	0101                	addi	sp,sp,0
 1b8:	00020d1b          	0x20d1b
 1bc:	0010                	0x10
 1be:	0000                	unimp
 1c0:	0018                	0x18
 1c2:	0000                	unimp
 1c4:	fe3c                	fsw	fa5,120(a2)
 1c6:	ffff                	0xffff
 1c8:	0014                	0x14
 1ca:	0000                	unimp
 1cc:	0000                	unimp
 1ce:	0000                	unimp
 1d0:	0024                	addi	s1,sp,8
 1d2:	0000                	unimp
 1d4:	002c                	addi	a1,sp,8
 1d6:	0000                	unimp
 1d8:	fe3c                	fsw	fa5,120(a2)
 1da:	ffff                	0xffff
 1dc:	0060                	addi	s0,sp,12
 1de:	0000                	unimp
 1e0:	4400                	lw	s0,8(s0)
 1e2:	200e                	fld	ft0,192(sp)
 1e4:	8148                	0x8148
 1e6:	8801                	andi	s0,s0,0
 1e8:	4402                	lw	s0,0(sp)
 1ea:	080c                	addi	a1,sp,16
 1ec:	0200                	addi	s0,sp,256
 1ee:	c144                	sw	s1,4(a0)
 1f0:	c844                	sw	s1,20(s0)
 1f2:	0d44                	addi	s1,sp,660
 1f4:	0002                	c.slli64	zero
 1f6:	0000                	unimp
 1f8:	001c                	0x1c
 1fa:	0000                	unimp
 1fc:	0054                	addi	a3,sp,4
 1fe:	0000                	unimp
 200:	fe74                	fsw	fa3,124(a2)
 202:	ffff                	0xffff
 204:	0030                	addi	a2,sp,8
 206:	0000                	unimp
 208:	4400                	lw	s0,8(s0)
 20a:	200e                	fld	ft0,192(sp)
 20c:	8844                	0x8844
 20e:	4401                	li	s0,0
 210:	080c                	addi	a1,sp,16
 212:	5c00                	lw	s0,56(s0)
 214:	44c8                	lw	a0,12(s1)
 216:	020d                	addi	tp,tp,3
 218:	0020                	addi	s0,sp,8
 21a:	0000                	unimp
 21c:	0074                	addi	a3,sp,12
 21e:	0000                	unimp
 220:	fe84                	fsw	fs1,56(a3)
 222:	ffff                	0xffff
 224:	0080                	addi	s0,sp,64
 226:	0000                	unimp
 228:	4400                	lw	s0,8(s0)
 22a:	300e                	fld	ft0,224(sp)
 22c:	8844                	0x8844
 22e:	4401                	li	s0,0
 230:	080c                	addi	a1,sp,16
 232:	0200                	addi	s0,sp,256
 234:	c86c                	sw	a1,84(s0)
 236:	0d44                	addi	s1,sp,660
 238:	0002                	c.slli64	zero
 23a:	0000                	unimp
 23c:	0020                	addi	s0,sp,8
 23e:	0000                	unimp
 240:	0098                	addi	a4,sp,64
 242:	0000                	unimp
 244:	fee0                	fsw	fs0,124(a3)
 246:	ffff                	0xffff
 248:	0054                	addi	a3,sp,4
 24a:	0000                	unimp
 24c:	4400                	lw	s0,8(s0)
 24e:	200e                	fld	ft0,192(sp)
 250:	8148                	0x8148
 252:	8801                	andi	s0,s0,0
 254:	4402                	lw	s0,0(sp)
 256:	080c                	addi	a1,sp,16
 258:	7800                	flw	fs0,48(s0)
 25a:	44c1                	li	s1,16
 25c:	44c8                	lw	a0,12(s1)
 25e:	020d                	addi	tp,tp,3
 260:	001c                	0x1c
 262:	0000                	unimp
 264:	00bc                	addi	a5,sp,72
 266:	0000                	unimp
 268:	ff10                	fsw	fa2,56(a4)
 26a:	ffff                	0xffff
 26c:	0030                	addi	a2,sp,8
 26e:	0000                	unimp
 270:	4400                	lw	s0,8(s0)
 272:	200e                	fld	ft0,192(sp)
 274:	8844                	0x8844
 276:	4401                	li	s0,0
 278:	080c                	addi	a1,sp,16
 27a:	5c00                	lw	s0,56(s0)
 27c:	44c8                	lw	a0,12(s1)
 27e:	020d                	addi	tp,tp,3

Disassembly of section .stack:

00000000 <_stack_start>:
	...

Disassembly of section .heap:

00000400 <_heap_start>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3820                	fld	fs0,112(s0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
