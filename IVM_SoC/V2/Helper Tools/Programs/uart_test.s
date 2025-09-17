
/mnt/e/WSL/git_clones/Programs/uart_test.elf:     file format elf32-littleriscv


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
  28:	050000ef          	jal	ra,78 <_Z9uart_initi>
  2c:	01900793          	li	a5,25
  30:	fef42623          	sw	a5,-20(s0)
  34:	00400793          	li	a5,4
  38:	fef42423          	sw	a5,-24(s0)
  3c:	fe842783          	lw	a5,-24(s0)
  40:	fec42703          	lw	a4,-20(s0)
  44:	00f717b3          	sll	a5,a4,a5
  48:	fef42223          	sw	a5,-28(s0)
  4c:	03f00513          	li	a0,63
  50:	058000ef          	jal	ra,a8 <_Z13uart_sendchari>
  54:	00000013          	nop
  58:	0cc000ef          	jal	ra,124 <_Z12uart_getcharv>
  5c:	fea42023          	sw	a0,-32(s0)
  60:	00000793          	li	a5,0
  64:	00078513          	mv	a0,a5
  68:	01c12083          	lw	ra,28(sp)
  6c:	01812403          	lw	s0,24(sp)
  70:	02010113          	addi	sp,sp,32
  74:	00008067          	ret

00000078 <_Z9uart_initi>:
  78:	fe010113          	addi	sp,sp,-32
  7c:	00812e23          	sw	s0,28(sp)
  80:	02010413          	addi	s0,sp,32
  84:	fea42623          	sw	a0,-20(s0)
  88:	020007b7          	lui	a5,0x2000
  8c:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  90:	fec42703          	lw	a4,-20(s0)
  94:	00e7a023          	sw	a4,0(a5)
  98:	00000013          	nop
  9c:	01c12403          	lw	s0,28(sp)
  a0:	02010113          	addi	sp,sp,32
  a4:	00008067          	ret

000000a8 <_Z13uart_sendchari>:
  a8:	fd010113          	addi	sp,sp,-48
  ac:	02812623          	sw	s0,44(sp)
  b0:	03010413          	addi	s0,sp,48
  b4:	fca42e23          	sw	a0,-36(s0)
  b8:	020007b7          	lui	a5,0x2000
  bc:	00478793          	addi	a5,a5,4 # 2000004 <UART_RATE>
  c0:	0007a783          	lw	a5,0(a5)
  c4:	fef42223          	sw	a5,-28(s0)
  c8:	020007b7          	lui	a5,0x2000
  cc:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
  d0:	fdc42703          	lw	a4,-36(s0)
  d4:	00e7a023          	sw	a4,0(a5)
  d8:	fe042623          	sw	zero,-20(s0)
  dc:	fec42783          	lw	a5,-20(s0)
  e0:	02f04a63          	bgtz	a5,114 <_Z13uart_sendchari+0x6c>
  e4:	fe042423          	sw	zero,-24(s0)
  e8:	fe842703          	lw	a4,-24(s0)
  ec:	fe442783          	lw	a5,-28(s0)
  f0:	00f75a63          	bge	a4,a5,104 <_Z13uart_sendchari+0x5c>
  f4:	fe842783          	lw	a5,-24(s0)
  f8:	00178793          	addi	a5,a5,1
  fc:	fef42423          	sw	a5,-24(s0)
 100:	fe9ff06f          	j	e8 <_Z13uart_sendchari+0x40>
 104:	fec42783          	lw	a5,-20(s0)
 108:	00178793          	addi	a5,a5,1
 10c:	fef42623          	sw	a5,-20(s0)
 110:	fcdff06f          	j	dc <_Z13uart_sendchari+0x34>
 114:	00000013          	nop
 118:	02c12403          	lw	s0,44(sp)
 11c:	03010113          	addi	sp,sp,48
 120:	00008067          	ret

00000124 <_Z12uart_getcharv>:
 124:	fe010113          	addi	sp,sp,-32
 128:	00812e23          	sw	s0,28(sp)
 12c:	02010413          	addi	s0,sp,32
 130:	020007b7          	lui	a5,0x2000
 134:	00878793          	addi	a5,a5,8 # 2000008 <UART_DATA>
 138:	0007a783          	lw	a5,0(a5)
 13c:	fef42623          	sw	a5,-20(s0)
 140:	fec42783          	lw	a5,-20(s0)
 144:	00078513          	mv	a0,a5
 148:	01c12403          	lw	s0,28(sp)
 14c:	02010113          	addi	sp,sp,32
 150:	00008067          	ret

Disassembly of section .eh_frame:

00000154 <.eh_frame>:
 154:	0010                	0x10
 156:	0000                	unimp
 158:	0000                	unimp
 15a:	0000                	unimp
 15c:	7a01                	lui	s4,0xfffe0
 15e:	0052                	c.slli	zero,0x14
 160:	7c01                	lui	s8,0xfffe0
 162:	0101                	addi	sp,sp,0
 164:	00020d1b          	0x20d1b
 168:	0010                	0x10
 16a:	0000                	unimp
 16c:	0018                	0x18
 16e:	0000                	unimp
 170:	fe90                	fsw	fa2,56(a3)
 172:	ffff                	0xffff
 174:	0014                	0x14
 176:	0000                	unimp
 178:	0000                	unimp
 17a:	0000                	unimp
 17c:	0024                	addi	s1,sp,8
 17e:	0000                	unimp
 180:	002c                	addi	a1,sp,8
 182:	0000                	unimp
 184:	fe90                	fsw	fa2,56(a3)
 186:	ffff                	0xffff
 188:	0064                	addi	s1,sp,12
 18a:	0000                	unimp
 18c:	4400                	lw	s0,8(s0)
 18e:	200e                	fld	ft0,192(sp)
 190:	8148                	0x8148
 192:	8801                	andi	s0,s0,0
 194:	4402                	lw	s0,0(sp)
 196:	080c                	addi	a1,sp,16
 198:	0200                	addi	s0,sp,256
 19a:	c148                	sw	a0,4(a0)
 19c:	c844                	sw	s1,20(s0)
 19e:	0d44                	addi	s1,sp,660
 1a0:	0002                	c.slli64	zero
 1a2:	0000                	unimp
 1a4:	001c                	0x1c
 1a6:	0000                	unimp
 1a8:	0054                	addi	a3,sp,4
 1aa:	0000                	unimp
 1ac:	fecc                	fsw	fa1,60(a3)
 1ae:	ffff                	0xffff
 1b0:	0030                	addi	a2,sp,8
 1b2:	0000                	unimp
 1b4:	4400                	lw	s0,8(s0)
 1b6:	200e                	fld	ft0,192(sp)
 1b8:	8844                	0x8844
 1ba:	4401                	li	s0,0
 1bc:	080c                	addi	a1,sp,16
 1be:	5c00                	lw	s0,56(s0)
 1c0:	44c8                	lw	a0,12(s1)
 1c2:	020d                	addi	tp,tp,3
 1c4:	0020                	addi	s0,sp,8
 1c6:	0000                	unimp
 1c8:	0074                	addi	a3,sp,12
 1ca:	0000                	unimp
 1cc:	fedc                	fsw	fa5,60(a3)
 1ce:	ffff                	0xffff
 1d0:	007c                	addi	a5,sp,12
 1d2:	0000                	unimp
 1d4:	4400                	lw	s0,8(s0)
 1d6:	300e                	fld	ft0,224(sp)
 1d8:	8844                	0x8844
 1da:	4401                	li	s0,0
 1dc:	080c                	addi	a1,sp,16
 1de:	0200                	addi	s0,sp,256
 1e0:	c868                	sw	a0,84(s0)
 1e2:	0d44                	addi	s1,sp,660
 1e4:	0002                	c.slli64	zero
 1e6:	0000                	unimp
 1e8:	001c                	0x1c
 1ea:	0000                	unimp
 1ec:	0098                	addi	a4,sp,64
 1ee:	0000                	unimp
 1f0:	ff34                	fsw	fa3,120(a4)
 1f2:	ffff                	0xffff
 1f4:	0030                	addi	a2,sp,8
 1f6:	0000                	unimp
 1f8:	4400                	lw	s0,8(s0)
 1fa:	200e                	fld	ft0,192(sp)
 1fc:	8844                	0x8844
 1fe:	4401                	li	s0,0
 200:	080c                	addi	a1,sp,16
 202:	5c00                	lw	s0,56(s0)
 204:	44c8                	lw	a0,12(s1)
 206:	020d                	addi	tp,tp,3

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
