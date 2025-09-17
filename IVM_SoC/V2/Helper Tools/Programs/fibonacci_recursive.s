
/mnt/e/WSL/git_clones/Programs/fibonacci_recursive.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	40000113          	li	sp,1024
   4:	20000193          	li	gp,512
   8:	0e8000ef          	jal	ra,f0 <main>
   c:	ffff                	0xffff
   e:	ffff                	0xffff
  10:	00000013          	nop

00000014 <_Z9fibonaccix>:
  14:	fe010113          	addi	sp,sp,-32
  18:	00112e23          	sw	ra,28(sp)
  1c:	00812c23          	sw	s0,24(sp)
  20:	00912a23          	sw	s1,20(sp)
  24:	02010413          	addi	s0,sp,32
  28:	fea42423          	sw	a0,-24(s0)
  2c:	feb42623          	sw	a1,-20(s0)
  30:	fec42783          	lw	a5,-20(s0)
  34:	02f04063          	bgtz	a5,54 <_Z9fibonaccix+0x40>
  38:	fec42783          	lw	a5,-20(s0)
  3c:	00079863          	bnez	a5,4c <_Z9fibonaccix+0x38>
  40:	fe842703          	lw	a4,-24(s0)
  44:	00100793          	li	a5,1
  48:	00e7e663          	bltu	a5,a4,54 <_Z9fibonaccix+0x40>
  4c:	fe842783          	lw	a5,-24(s0)
  50:	0880006f          	j	d8 <_Z9fibonaccix+0xc4>
  54:	fe842783          	lw	a5,-24(s0)
  58:	fec42803          	lw	a6,-20(s0)
  5c:	fff00593          	li	a1,-1
  60:	fff00613          	li	a2,-1
  64:	00b786b3          	add	a3,a5,a1
  68:	00068513          	mv	a0,a3
  6c:	00f53533          	sltu	a0,a0,a5
  70:	00c80733          	add	a4,a6,a2
  74:	00e507b3          	add	a5,a0,a4
  78:	00078713          	mv	a4,a5
  7c:	00068793          	mv	a5,a3
  80:	00070813          	mv	a6,a4
  84:	00078513          	mv	a0,a5
  88:	00080593          	mv	a1,a6
  8c:	f89ff0ef          	jal	ra,14 <_Z9fibonaccix>
  90:	00050493          	mv	s1,a0
  94:	fe842783          	lw	a5,-24(s0)
  98:	fec42803          	lw	a6,-20(s0)
  9c:	ffe00593          	li	a1,-2
  a0:	fff00613          	li	a2,-1
  a4:	00b786b3          	add	a3,a5,a1
  a8:	00068513          	mv	a0,a3
  ac:	00f53533          	sltu	a0,a0,a5
  b0:	00c80733          	add	a4,a6,a2
  b4:	00e507b3          	add	a5,a0,a4
  b8:	00078713          	mv	a4,a5
  bc:	00068793          	mv	a5,a3
  c0:	00070813          	mv	a6,a4
  c4:	00078513          	mv	a0,a5
  c8:	00080593          	mv	a1,a6
  cc:	f49ff0ef          	jal	ra,14 <_Z9fibonaccix>
  d0:	00050793          	mv	a5,a0
  d4:	00f487b3          	add	a5,s1,a5
  d8:	00078513          	mv	a0,a5
  dc:	01c12083          	lw	ra,28(sp)
  e0:	01812403          	lw	s0,24(sp)
  e4:	01412483          	lw	s1,20(sp)
  e8:	02010113          	addi	sp,sp,32
  ec:	00008067          	ret

000000f0 <main>:
  f0:	fe010113          	addi	sp,sp,-32
  f4:	00112e23          	sw	ra,28(sp)
  f8:	00812c23          	sw	s0,24(sp)
  fc:	02010413          	addi	s0,sp,32
 100:	00000793          	li	a5,0
 104:	00000813          	li	a6,0
 108:	fef42423          	sw	a5,-24(s0)
 10c:	ff042623          	sw	a6,-20(s0)
 110:	01400513          	li	a0,20
 114:	00000593          	li	a1,0
 118:	efdff0ef          	jal	ra,14 <_Z9fibonaccix>
 11c:	00050793          	mv	a5,a0
 120:	fef42423          	sw	a5,-24(s0)
 124:	41f7d793          	srai	a5,a5,0x1f
 128:	fef42623          	sw	a5,-20(s0)
 12c:	00000793          	li	a5,0
 130:	00078513          	mv	a0,a5
 134:	01c12083          	lw	ra,28(sp)
 138:	01812403          	lw	s0,24(sp)
 13c:	02010113          	addi	sp,sp,32
 140:	00008067          	ret

Disassembly of section .eh_frame:

00000144 <.eh_frame>:
 144:	0010                	0x10
 146:	0000                	unimp
 148:	0000                	unimp
 14a:	0000                	unimp
 14c:	7a01                	lui	s4,0xfffe0
 14e:	0052                	c.slli	zero,0x14
 150:	7c01                	lui	s8,0xfffe0
 152:	0101                	addi	sp,sp,0
 154:	00020d1b          	0x20d1b
 158:	0010                	0x10
 15a:	0000                	unimp
 15c:	0018                	0x18
 15e:	0000                	unimp
 160:	fea0                	fsw	fs0,120(a3)
 162:	ffff                	0xffff
 164:	0014                	0x14
 166:	0000                	unimp
 168:	0000                	unimp
 16a:	0000                	unimp
 16c:	0028                	addi	a0,sp,8
 16e:	0000                	unimp
 170:	002c                	addi	a1,sp,8
 172:	0000                	unimp
 174:	fea0                	fsw	fs0,120(a3)
 176:	ffff                	0xffff
 178:	00dc                	addi	a5,sp,68
 17a:	0000                	unimp
 17c:	4400                	lw	s0,8(s0)
 17e:	200e                	fld	ft0,192(sp)
 180:	814c                	0x814c
 182:	8801                	andi	s0,s0,0
 184:	8902                	jr	s2
 186:	080c4403          	lbu	s0,128(s8) # fffe0080 <_heap_end+0xfffdf880>
 18a:	0200                	addi	s0,sp,256
 18c:	c1b8                	sw	a4,64(a1)
 18e:	c844                	sw	s1,20(s0)
 190:	c944                	sw	s1,20(a0)
 192:	0d44                	addi	s1,sp,660
 194:	0002                	c.slli64	zero
 196:	0000                	unimp
 198:	0020                	addi	s0,sp,8
 19a:	0000                	unimp
 19c:	0058                	addi	a4,sp,4
 19e:	0000                	unimp
 1a0:	ff50                	fsw	fa2,60(a4)
 1a2:	ffff                	0xffff
 1a4:	0054                	addi	a3,sp,4
 1a6:	0000                	unimp
 1a8:	4400                	lw	s0,8(s0)
 1aa:	200e                	fld	ft0,192(sp)
 1ac:	8148                	0x8148
 1ae:	8801                	andi	s0,s0,0
 1b0:	4402                	lw	s0,0(sp)
 1b2:	080c                	addi	a1,sp,16
 1b4:	7800                	flw	fs0,48(s0)
 1b6:	44c1                	li	s1,16
 1b8:	44c8                	lw	a0,12(s1)
 1ba:	020d                	addi	tp,tp,3

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
