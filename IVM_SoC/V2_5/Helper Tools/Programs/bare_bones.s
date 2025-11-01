
/mnt/e/WSL/git_clones/bare_bones.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	fe010113          	addi	sp,sp,-32
   4:	00812e23          	sw	s0,28(sp)
   8:	02010413          	addi	s0,sp,32
   c:	fe042623          	sw	zero,-20(s0)
  10:	fe042423          	sw	zero,-24(s0)
  14:	fec42703          	lw	a4,-20(s0)
  18:	00900793          	li	a5,9
  1c:	00e7ca63          	blt	a5,a4,30 <_start+0x30>
  20:	fec42783          	lw	a5,-20(s0)
  24:	00178793          	addi	a5,a5,1
  28:	fef42623          	sw	a5,-20(s0)
  2c:	fe9ff06f          	j	14 <_start+0x14>
  30:	02f00793          	li	a5,47
  34:	fef42423          	sw	a5,-24(s0)
  38:	ffff                	0xffff
  3a:	ffff                	0xffff
  3c:	00000013          	nop
  40:	01c12403          	lw	s0,28(sp)
  44:	02010113          	addi	sp,sp,32
  48:	00008067          	ret

Disassembly of section .eh_frame:

0000004c <_ebss+0x4c>:
  4c:	0010                	0x10
  4e:	0000                	unimp
  50:	0000                	unimp
  52:	0000                	unimp
  54:	7a01                	lui	s4,0xfffe0
  56:	0052                	c.slli	zero,0x14
  58:	7c01                	lui	s8,0xfffe0
  5a:	0101                	addi	sp,sp,0
  5c:	00020d1b          	0x20d1b
  60:	001c                	0x1c
  62:	0000                	unimp
  64:	0018                	0x18
  66:	0000                	unimp
  68:	ff98                	fsw	fa4,56(a5)
  6a:	ffff                	0xffff
  6c:	004c                	addi	a1,sp,4
  6e:	0000                	unimp
  70:	4400                	lw	s0,8(s0)
  72:	200e                	fld	ft0,192(sp)
  74:	8844                	0x8844
  76:	4401                	li	s0,0
  78:	080c                	addi	a1,sp,16
  7a:	7800                	flw	fs0,48(s0)
  7c:	44c8                	lw	a0,12(s1)
  7e:	020d                	addi	tp,tp,3

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
