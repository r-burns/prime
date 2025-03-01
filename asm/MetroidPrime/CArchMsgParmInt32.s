.include "macros.inc"

.section .data
.balign 8

.global __vt__17CArchMsgParmInt32
__vt__17CArchMsgParmInt32:
	# ROM: 0x3D6E50
	.4byte 0
	.4byte 0
	.4byte __dt__17CArchMsgParmInt32Fv
	.4byte 0

.section .text, "ax"

.global __dt__17CArchMsgParmInt32Fv
__dt__17CArchMsgParmInt32Fv:
/* 800515C8 0004E528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800515CC 0004E52C  7C 08 02 A6 */	mflr r0
/* 800515D0 0004E530  90 01 00 14 */	stw r0, 0x14(r1)
/* 800515D4 0004E534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800515D8 0004E538  7C 7F 1B 79 */	or. r31, r3, r3
/* 800515DC 0004E53C  41 82 00 30 */	beq lbl_8005160C
/* 800515E0 0004E540  3C 60 80 3E */	lis r3, __vt__17CArchMsgParmInt32@ha
/* 800515E4 0004E544  38 03 9E 50 */	addi r0, r3, __vt__17CArchMsgParmInt32@l
/* 800515E8 0004E548  90 1F 00 00 */	stw r0, 0(r31)
/* 800515EC 0004E54C  41 82 00 10 */	beq lbl_800515FC
/* 800515F0 0004E550  3C 60 80 3E */	lis r3, __vt__24IArchitectureMessageParm@ha
/* 800515F4 0004E554  38 03 8E 9C */	addi r0, r3, __vt__24IArchitectureMessageParm@l
/* 800515F8 0004E558  90 1F 00 00 */	stw r0, 0(r31)
lbl_800515FC:
/* 800515FC 0004E55C  7C 80 07 35 */	extsh. r0, r4
/* 80051600 0004E560  40 81 00 0C */	ble lbl_8005160C
/* 80051604 0004E564  7F E3 FB 78 */	mr r3, r31
/* 80051608 0004E568  48 2C 43 29 */	bl Free__7CMemoryFPCv
lbl_8005160C:
/* 8005160C 0004E56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051610 0004E570  7F E3 FB 78 */	mr r3, r31
/* 80051614 0004E574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051618 0004E578  7C 08 03 A6 */	mtlr r0
/* 8005161C 0004E57C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051620 0004E580  4E 80 00 20 */	blr

.global __ct__17CArchMsgParmInt32Fi
__ct__17CArchMsgParmInt32Fi:
/* 80051624 0004E584  3C C0 80 3E */	lis r6, __vt__24IArchitectureMessageParm@ha
/* 80051628 0004E588  3C A0 80 3E */	lis r5, __vt__17CArchMsgParmInt32@ha
/* 8005162C 0004E58C  38 C6 8E 9C */	addi r6, r6, __vt__24IArchitectureMessageParm@l
/* 80051630 0004E590  90 C3 00 00 */	stw r6, 0(r3)
/* 80051634 0004E594  38 05 9E 50 */	addi r0, r5, __vt__17CArchMsgParmInt32@l
/* 80051638 0004E598  90 03 00 00 */	stw r0, 0(r3)
/* 8005163C 0004E59C  90 83 00 04 */	stw r4, 4(r3)
/* 80051640 0004E5A0  4E 80 00 20 */	blr
