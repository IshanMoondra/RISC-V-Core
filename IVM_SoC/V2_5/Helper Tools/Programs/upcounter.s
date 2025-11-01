
/mnt/e/WSL/git_clones/Programs/upcounter.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00812e23          	sw	s0,28(sp)
   8:	02010413          	addi	s0,sp,32
   c:	fe042623          	sw	zero,-20(s0)
  10:	fe042423          	sw	zero,-24(s0)
  14:	fec42703          	lw	a4,-20(s0)
  18:	00900793          	li	a5,9
  1c:	02e7c663          	blt	a5,a4,48 <main+0x48>
  20:	fec42703          	lw	a4,-20(s0)
  24:	00500793          	li	a5,5
  28:	00f71863          	bne	a4,a5,38 <main+0x38>
  2c:	00100793          	li	a5,1
  30:	fef42423          	sw	a5,-24(s0)
  34:	0140006f          	j	48 <main+0x48>
  38:	fec42783          	lw	a5,-20(s0)
  3c:	00178793          	addi	a5,a5,1
  40:	fef42623          	sw	a5,-20(s0)
  44:	fd1ff06f          	j	14 <main+0x14>
  48:	ffff                	0xffff
  4a:	ffff                	0xffff
  4c:	00000793          	li	a5,0
  50:	00078513          	mv	a0,a5
  54:	01c12403          	lw	s0,28(sp)
  58:	02010113          	addi	sp,sp,32
  5c:	00008067          	ret

Disassembly of section .eh_frame:

00000060 <_ebss+0x60>:
  60:	0010                	0x10
  62:	0000                	unimp
  64:	0000                	unimp
  66:	0000                	unimp
  68:	7a01                	lui	s4,0xfffe0
  6a:	0052                	c.slli	zero,0x14
  6c:	7c01                	lui	s8,0xfffe0
  6e:	0101                	addi	sp,sp,0
  70:	00020d1b          	0x20d1b
  74:	0020                	addi	s0,sp,8
  76:	0000                	unimp
  78:	0018                	0x18
  7a:	0000                	unimp
  7c:	ff84                	fsw	fs1,56(a5)
  7e:	ffff                	0xffff
  80:	0060                	addi	s0,sp,12
  82:	0000                	unimp
  84:	4400                	lw	s0,8(s0)
  86:	200e                	fld	ft0,192(sp)
  88:	8844                	0x8844
  8a:	4401                	li	s0,0
  8c:	080c                	addi	a1,sp,16
  8e:	0200                	addi	s0,sp,256
  90:	c84c                	sw	a1,20(s0)
  92:	0d44                	addi	s1,sp,660
  94:	0002                	c.slli64	zero
	...

Disassembly of section .stack:

00000000 <_stack_start>:
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
