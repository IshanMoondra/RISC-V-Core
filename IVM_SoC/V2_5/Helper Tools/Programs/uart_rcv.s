
/mnt/e/WSL/git_clones/Programs/uart_rcv.elf:     file format elf32-littleriscv


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
  28:	03c000ef          	jal	ra,64 <_Z9uart_initi>
  2c:	fe042623          	sw	zero,-20(s0)
  30:	03f00513          	li	a0,63
  34:	060000ef          	jal	ra,94 <_Z13uart_sendchari>
  38:	00000013          	nop
  3c:	0d4000ef          	jal	ra,110 <_Z12uart_getcharv>
  40:	fea42423          	sw	a0,-24(s0)
  44:	fe842503          	lw	a0,-24(s0)
  48:	04c000ef          	jal	ra,94 <_Z13uart_sendchari>
  4c:	00000793          	li	a5,0
  50:	00078513          	mv	a0,a5
  54:	01c12083          	lw	ra,28(sp)
  58:	01812403          	lw	s0,24(sp)
  5c:	02010113          	addi	sp,sp,32
  60:	00008067          	ret

00000064 <_Z9uart_initi>:
  64:	fe010113          	addi	sp,sp,-32
  68:	00812e23          	sw	s0,28(sp)
  6c:	02010413          	addi	s0,sp,32
  70:	fea42623          	sw	a0,-20(s0)
  74:	020007b7          	lui	a5,0x2000
  78:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  7c:	fec42703          	lw	a4,-20(s0)
  80:	00e7a023          	sw	a4,0(a5)
  84:	00000013          	nop
  88:	01c12403          	lw	s0,28(sp)
  8c:	02010113          	addi	sp,sp,32
  90:	00008067          	ret

00000094 <_Z13uart_sendchari>:
  94:	fd010113          	addi	sp,sp,-48
  98:	02812623          	sw	s0,44(sp)
  9c:	03010413          	addi	s0,sp,48
  a0:	fca42e23          	sw	a0,-36(s0)
  a4:	020007b7          	lui	a5,0x2000
  a8:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  ac:	0007a783          	lw	a5,0(a5)
  b0:	fef42223          	sw	a5,-28(s0)
  b4:	020007b7          	lui	a5,0x2000
  b8:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
  bc:	fdc42703          	lw	a4,-36(s0)
  c0:	00e7a023          	sw	a4,0(a5)
  c4:	fe042623          	sw	zero,-20(s0)
  c8:	fec42783          	lw	a5,-20(s0)
  cc:	02f04a63          	bgtz	a5,100 <_Z13uart_sendchari+0x6c>
  d0:	fe042423          	sw	zero,-24(s0)
  d4:	fe842703          	lw	a4,-24(s0)
  d8:	fe442783          	lw	a5,-28(s0)
  dc:	00f75a63          	bge	a4,a5,f0 <_Z13uart_sendchari+0x5c>
  e0:	fe842783          	lw	a5,-24(s0)
  e4:	00178793          	addi	a5,a5,1
  e8:	fef42423          	sw	a5,-24(s0)
  ec:	fe9ff06f          	j	d4 <_Z13uart_sendchari+0x40>
  f0:	fec42783          	lw	a5,-20(s0)
  f4:	00178793          	addi	a5,a5,1
  f8:	fef42623          	sw	a5,-20(s0)
  fc:	fcdff06f          	j	c8 <_Z13uart_sendchari+0x34>
 100:	00000013          	nop
 104:	02c12403          	lw	s0,44(sp)
 108:	03010113          	addi	sp,sp,48
 10c:	00008067          	ret

00000110 <_Z12uart_getcharv>:
 110:	fe010113          	addi	sp,sp,-32
 114:	00812e23          	sw	s0,28(sp)
 118:	02010413          	addi	s0,sp,32
 11c:	020007b7          	lui	a5,0x2000
 120:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
 124:	0007a783          	lw	a5,0(a5)
 128:	fef42623          	sw	a5,-20(s0)
 12c:	fec42783          	lw	a5,-20(s0)
 130:	00078513          	mv	a0,a5
 134:	01c12403          	lw	s0,28(sp)
 138:	02010113          	addi	sp,sp,32
 13c:	00008067          	ret

Disassembly of section .eh_frame:

00000140 <.eh_frame>:
 140:	0010                	0x10
 142:	0000                	unimp
 144:	0000                	unimp
 146:	0000                	unimp
 148:	7a01                	lui	s4,0xfffe0
 14a:	0052                	c.slli	zero,0x14
 14c:	7c01                	lui	s8,0xfffe0
 14e:	0101                	addi	sp,sp,0
 150:	00020d1b          	0x20d1b
 154:	0010                	0x10
 156:	0000                	unimp
 158:	0018                	0x18
 15a:	0000                	unimp
 15c:	fea4                	fsw	fs1,120(a3)
 15e:	ffff                	0xffff
 160:	0014                	0x14
 162:	0000                	unimp
 164:	0000                	unimp
 166:	0000                	unimp
 168:	0024                	addi	s1,sp,8
 16a:	0000                	unimp
 16c:	002c                	addi	a1,sp,8
 16e:	0000                	unimp
 170:	fea4                	fsw	fs1,120(a3)
 172:	ffff                	0xffff
 174:	0050                	addi	a2,sp,4
 176:	0000                	unimp
 178:	4400                	lw	s0,8(s0)
 17a:	200e                	fld	ft0,192(sp)
 17c:	8148                	0x8148
 17e:	8801                	andi	s0,s0,0
 180:	4402                	lw	s0,0(sp)
 182:	080c                	addi	a1,sp,16
 184:	0200                	addi	s0,sp,256
 186:	c134                	sw	a3,64(a0)
 188:	c844                	sw	s1,20(s0)
 18a:	0d44                	addi	s1,sp,660
 18c:	0002                	c.slli64	zero
 18e:	0000                	unimp
 190:	001c                	0x1c
 192:	0000                	unimp
 194:	0054                	addi	a3,sp,4
 196:	0000                	unimp
 198:	fecc                	fsw	fa1,60(a3)
 19a:	ffff                	0xffff
 19c:	0030                	addi	a2,sp,8
 19e:	0000                	unimp
 1a0:	4400                	lw	s0,8(s0)
 1a2:	200e                	fld	ft0,192(sp)
 1a4:	8844                	0x8844
 1a6:	4401                	li	s0,0
 1a8:	080c                	addi	a1,sp,16
 1aa:	5c00                	lw	s0,56(s0)
 1ac:	44c8                	lw	a0,12(s1)
 1ae:	020d                	addi	tp,tp,3
 1b0:	0020                	addi	s0,sp,8
 1b2:	0000                	unimp
 1b4:	0074                	addi	a3,sp,12
 1b6:	0000                	unimp
 1b8:	fedc                	fsw	fa5,60(a3)
 1ba:	ffff                	0xffff
 1bc:	007c                	addi	a5,sp,12
 1be:	0000                	unimp
 1c0:	4400                	lw	s0,8(s0)
 1c2:	300e                	fld	ft0,224(sp)
 1c4:	8844                	0x8844
 1c6:	4401                	li	s0,0
 1c8:	080c                	addi	a1,sp,16
 1ca:	0200                	addi	s0,sp,256
 1cc:	c868                	sw	a0,84(s0)
 1ce:	0d44                	addi	s1,sp,660
 1d0:	0002                	c.slli64	zero
 1d2:	0000                	unimp
 1d4:	001c                	0x1c
 1d6:	0000                	unimp
 1d8:	0098                	addi	a4,sp,64
 1da:	0000                	unimp
 1dc:	ff34                	fsw	fa3,120(a4)
 1de:	ffff                	0xffff
 1e0:	0030                	addi	a2,sp,8
 1e2:	0000                	unimp
 1e4:	4400                	lw	s0,8(s0)
 1e6:	200e                	fld	ft0,192(sp)
 1e8:	8844                	0x8844
 1ea:	4401                	li	s0,0
 1ec:	080c                	addi	a1,sp,16
 1ee:	5c00                	lw	s0,56(s0)
 1f0:	44c8                	lw	a0,12(s1)
 1f2:	020d                	addi	tp,tp,3

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
