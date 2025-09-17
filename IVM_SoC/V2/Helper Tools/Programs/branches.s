
/mnt/e/WSL/git_clones/Programs/branches.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010054 <main>:
   10054:	fe010113          	addi	sp,sp,-32
   10058:	00812e23          	sw	s0,28(sp)
   1005c:	02010413          	addi	s0,sp,32
   10060:	ff400793          	li	a5,-12
   10064:	fef42623          	sw	a5,-20(s0)
   10068:	02800793          	li	a5,40
   1006c:	fef42423          	sw	a5,-24(s0)
   10070:	fe042223          	sw	zero,-28(s0)
   10074:	fec42703          	lw	a4,-20(s0)
   10078:	fe842783          	lw	a5,-24(s0)
   1007c:	00e7dc63          	bge	a5,a4,10094 <main+0x40>
   10080:	fec42703          	lw	a4,-20(s0)
   10084:	fe842783          	lw	a5,-24(s0)
   10088:	00f707b3          	add	a5,a4,a5
   1008c:	fef42223          	sw	a5,-28(s0)
   10090:	00c0006f          	j	1009c <main+0x48>
   10094:	00100793          	li	a5,1
   10098:	fef42223          	sw	a5,-28(s0)
   1009c:	fe842703          	lw	a4,-24(s0)
   100a0:	fec42783          	lw	a5,-20(s0)
   100a4:	00e7dc63          	bge	a5,a4,100bc <main+0x68>
   100a8:	fe842703          	lw	a4,-24(s0)
   100ac:	fec42783          	lw	a5,-20(s0)
   100b0:	00f707b3          	add	a5,a4,a5
   100b4:	fef42223          	sw	a5,-28(s0)
   100b8:	0080006f          	j	100c0 <main+0x6c>
   100bc:	fe042223          	sw	zero,-28(s0)
   100c0:	ffff                	0xffff
   100c2:	ffff                	0xffff
   100c4:	00000793          	li	a5,0
   100c8:	00078513          	mv	a0,a5
   100cc:	01c12403          	lw	s0,28(sp)
   100d0:	02010113          	addi	sp,sp,32
   100d4:	00008067          	ret

Disassembly of section .eh_frame:

000100d8 <__BSS_END__-0x1038>:
   100d8:	0010                	0x10
   100da:	0000                	unimp
   100dc:	0000                	unimp
   100de:	0000                	unimp
   100e0:	7a01                	lui	s4,0xfffe0
   100e2:	0052                	c.slli	zero,0x14
   100e4:	7c01                	lui	s8,0xfffe0
   100e6:	0101                	addi	sp,sp,0
   100e8:	00020d1b          	0x20d1b
   100ec:	0020                	addi	s0,sp,8
   100ee:	0000                	unimp
   100f0:	0018                	0x18
   100f2:	0000                	unimp
   100f4:	ff60                	fsw	fs0,124(a4)
   100f6:	ffff                	0xffff
   100f8:	0084                	addi	s1,sp,64
   100fa:	0000                	unimp
   100fc:	4400                	lw	s0,8(s0)
   100fe:	200e                	fld	ft0,192(sp)
   10100:	8844                	0x8844
   10102:	4401                	li	s0,0
   10104:	080c                	addi	a1,sp,16
   10106:	0200                	addi	s0,sp,256
   10108:	c870                	sw	a2,84(s0)
   1010a:	0d44                	addi	s1,sp,660
   1010c:	0002                	c.slli64	zero
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
