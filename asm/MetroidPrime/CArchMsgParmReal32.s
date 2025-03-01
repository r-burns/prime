.include "macros.inc"

.section .data
.balign 8

.global __vt__18CArchMsgParmReal32
__vt__18CArchMsgParmReal32:
	# ROM: 0x3D6E80
	.4byte 0
	.4byte 0
	.4byte __dt__18CArchMsgParmReal32Fv
	.4byte 0

.section .text, "ax"

.global __dt__18CArchMsgParmReal32Fv
__dt__18CArchMsgParmReal32Fv:
/* 80051740 0004E6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051744 0004E6A4  7C 08 02 A6 */	mflr r0
/* 80051748 0004E6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005174C 0004E6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80051750 0004E6B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80051754 0004E6B4  41 82 00 30 */	beq lbl_80051784
/* 80051758 0004E6B8  3C 60 80 3E */	lis r3, __vt__18CArchMsgParmReal32@ha
/* 8005175C 0004E6BC  38 03 9E 80 */	addi r0, r3, __vt__18CArchMsgParmReal32@l
/* 80051760 0004E6C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80051764 0004E6C4  41 82 00 10 */	beq lbl_80051774
/* 80051768 0004E6C8  3C 60 80 3E */	lis r3, __vt__24IArchitectureMessageParm@ha
/* 8005176C 0004E6CC  38 03 8E 9C */	addi r0, r3, __vt__24IArchitectureMessageParm@l
/* 80051770 0004E6D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80051774:
/* 80051774 0004E6D4  7C 80 07 35 */	extsh. r0, r4
/* 80051778 0004E6D8  40 81 00 0C */	ble lbl_80051784
/* 8005177C 0004E6DC  7F E3 FB 78 */	mr r3, r31
/* 80051780 0004E6E0  48 2C 41 B1 */	bl Free__7CMemoryFPCv
lbl_80051784:
/* 80051784 0004E6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051788 0004E6E8  7F E3 FB 78 */	mr r3, r31
/* 8005178C 0004E6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051790 0004E6F0  7C 08 03 A6 */	mtlr r0
/* 80051794 0004E6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80051798 0004E6F8  4E 80 00 20 */	blr

.global __ct__18CArchMsgParmReal32Ff
__ct__18CArchMsgParmReal32Ff:
/* 8005179C 0004E6FC  3C A0 80 3E */	lis r5, __vt__24IArchitectureMessageParm@ha
/* 800517A0 0004E700  3C 80 80 3E */	lis r4, __vt__18CArchMsgParmReal32@ha
/* 800517A4 0004E704  38 A5 8E 9C */	addi r5, r5, __vt__24IArchitectureMessageParm@l
/* 800517A8 0004E708  90 A3 00 00 */	stw r5, 0(r3)
/* 800517AC 0004E70C  38 04 9E 80 */	addi r0, r4, __vt__18CArchMsgParmReal32@l
/* 800517B0 0004E710  90 03 00 00 */	stw r0, 0(r3)
/* 800517B4 0004E714  D0 23 00 04 */	stfs f1, 4(r3)
/* 800517B8 0004E718  4E 80 00 20 */	blr
