
/mnt/e/WSL/git_clones/Programs/load_to_use.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <main>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00812e23          	sw	s0,28(sp)
   8:	02010413          	addi	s0,sp,32
   c:	00a00793          	li	a5,10
  10:	fef42623          	sw	a5,-20(s0)
  14:	00f00793          	li	a5,15
  18:	fef42423          	sw	a5,-24(s0)
  1c:	fec42703          	lw	a4,-20(s0)
  20:	fe842783          	lw	a5,-24(s0)
  24:	00f707b3          	add	a5,a4,a5
  28:	fef42623          	sw	a5,-20(s0)
  2c:	ffff                	0xffff
  2e:	ffff                	0xffff
  30:	00000793          	li	a5,0
  34:	00078513          	mv	a0,a5
  38:	01c12403          	lw	s0,28(sp)
  3c:	02010113          	addi	sp,sp,32
  40:	00008067          	ret

Disassembly of section .eh_frame:

00000044 <_ebss+0x44>:
  44:	0010                	0x10
  46:	0000                	unimp
  48:	0000                	unimp
  4a:	0000                	unimp
  4c:	7a01                	lui	s4,0xfffe0
  4e:	0052                	c.slli	zero,0x14
  50:	7c01                	lui	s8,0xfffe0
  52:	0101                	addi	sp,sp,0
  54:	00020d1b          	0x20d1b
  58:	001c                	0x1c
  5a:	0000                	unimp
  5c:	0018                	0x18
  5e:	0000                	unimp
  60:	ffa0                	fsw	fs0,120(a5)
  62:	ffff                	0xffff
  64:	0044                	addi	s1,sp,4
  66:	0000                	unimp
  68:	4400                	lw	s0,8(s0)
  6a:	200e                	fld	ft0,192(sp)
  6c:	8844                	0x8844
  6e:	4401                	li	s0,0
  70:	080c                	addi	a1,sp,16
  72:	7000                	flw	fs0,32(s0)
  74:	44c8                	lw	a0,12(s1)
  76:	020d                	addi	tp,tp,3

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
