.include "macros.inc"

.section .text, "ax"

.global GetAnimParmValue__12CPASAnimInfoCFUi
GetAnimParmValue__12CPASAnimInfoCFUi:
/* 802E2E58 002DFDB8  54 80 10 3A */	slwi r0, r4, 2
/* 802E2E5C 002DFDBC  7C 63 02 14 */	add r3, r3, r0
/* 802E2E60 002DFDC0  38 63 00 08 */	addi r3, r3, 8
/* 802E2E64 002DFDC4  4E 80 00 20 */	blr 

.global GetAnimParmData__12CPASAnimInfoCFUiQ212CPASAnimParm9EParmType
GetAnimParmData__12CPASAnimInfoCFUiQ212CPASAnimParm9EParmType:
/* 802E2E68 002DFDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2E6C 002DFDCC  7C 08 02 A6 */	mflr r0
/* 802E2E70 002DFDD0  2C 06 00 02 */	cmpwi r6, 2
/* 802E2E74 002DFDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2E78 002DFDD8  54 A0 10 3A */	slwi r0, r5, 2
/* 802E2E7C 002DFDDC  7C 84 02 14 */	add r4, r4, r0
/* 802E2E80 002DFDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E2E84 002DFDE4  7C 7F 1B 78 */	mr r31, r3
/* 802E2E88 002DFDE8  41 82 00 40 */	beq lbl_802E2EC8
/* 802E2E8C 002DFDEC  40 80 00 14 */	bge lbl_802E2EA0
/* 802E2E90 002DFDF0  2C 06 00 00 */	cmpwi r6, 0
/* 802E2E94 002DFDF4  41 82 00 1C */	beq lbl_802E2EB0
/* 802E2E98 002DFDF8  40 80 00 24 */	bge lbl_802E2EBC
/* 802E2E9C 002DFDFC  48 00 00 50 */	b lbl_802E2EEC
lbl_802E2EA0:
/* 802E2EA0 002DFE00  2C 06 00 04 */	cmpwi r6, 4
/* 802E2EA4 002DFE04  41 82 00 3C */	beq lbl_802E2EE0
/* 802E2EA8 002DFE08  40 80 00 44 */	bge lbl_802E2EEC
/* 802E2EAC 002DFE0C  48 00 00 28 */	b lbl_802E2ED4
lbl_802E2EB0:
/* 802E2EB0 002DFE10  80 84 00 08 */	lwz r4, 8(r4)
/* 802E2EB4 002DFE14  48 00 01 99 */	bl FromInt32__12CPASAnimParmFi
/* 802E2EB8 002DFE18  48 00 00 3C */	b lbl_802E2EF4
lbl_802E2EBC:
/* 802E2EBC 002DFE1C  80 84 00 08 */	lwz r4, 8(r4)
/* 802E2EC0 002DFE20  48 00 01 5D */	bl FromUint32__12CPASAnimParmFUi
/* 802E2EC4 002DFE24  48 00 00 30 */	b lbl_802E2EF4
lbl_802E2EC8:
/* 802E2EC8 002DFE28  C0 24 00 08 */	lfs f1, 8(r4)
/* 802E2ECC 002DFE2C  48 00 01 1D */	bl FromReal32__12CPASAnimParmFf
/* 802E2ED0 002DFE30  48 00 00 24 */	b lbl_802E2EF4
lbl_802E2ED4:
/* 802E2ED4 002DFE34  88 84 00 08 */	lbz r4, 8(r4)
/* 802E2ED8 002DFE38  48 00 00 DD */	bl FromBool__12CPASAnimParmFb
/* 802E2EDC 002DFE3C  48 00 00 18 */	b lbl_802E2EF4
lbl_802E2EE0:
/* 802E2EE0 002DFE40  80 84 00 08 */	lwz r4, 8(r4)
/* 802E2EE4 002DFE44  48 00 00 A1 */	bl FromEnum__12CPASAnimParmFi
/* 802E2EE8 002DFE48  48 00 00 0C */	b lbl_802E2EF4
lbl_802E2EEC:
/* 802E2EEC 002DFE4C  7F E3 FB 78 */	mr r3, r31
/* 802E2EF0 002DFE50  48 00 01 8D */	bl NoParameter__12CPASAnimParmFv
lbl_802E2EF4:
/* 802E2EF4 002DFE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2EF8 002DFE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E2EFC 002DFE5C  7C 08 03 A6 */	mtlr r0
/* 802E2F00 002DFE60  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2F04 002DFE64  4E 80 00 20 */	blr 

.global "__ct__12CPASAnimInfoFiRCQ24rstl47reserved_vector<Q212CPASAnimParm10UParmValue,8>"
"__ct__12CPASAnimInfoFiRCQ24rstl47reserved_vector<Q212CPASAnimParm10UParmValue,8>":
/* 802E2F08 002DFE68  90 83 00 00 */	stw r4, 0(r3)
/* 802E2F0C 002DFE6C  38 C5 00 04 */	addi r6, r5, 4
/* 802E2F10 002DFE70  38 83 00 08 */	addi r4, r3, 8
/* 802E2F14 002DFE74  80 05 00 00 */	lwz r0, 0(r5)
/* 802E2F18 002DFE78  90 03 00 04 */	stw r0, 4(r3)
/* 802E2F1C 002DFE7C  80 03 00 04 */	lwz r0, 4(r3)
/* 802E2F20 002DFE80  7C 09 03 A6 */	mtctr r0
/* 802E2F24 002DFE84  2C 00 00 00 */	cmpwi r0, 0
/* 802E2F28 002DFE88  4C 81 00 20 */	blelr 
lbl_802E2F2C:
/* 802E2F2C 002DFE8C  28 04 00 00 */	cmplwi r4, 0
/* 802E2F30 002DFE90  41 82 00 0C */	beq lbl_802E2F3C
/* 802E2F34 002DFE94  80 06 00 00 */	lwz r0, 0(r6)
/* 802E2F38 002DFE98  90 04 00 00 */	stw r0, 0(r4)
lbl_802E2F3C:
/* 802E2F3C 002DFE9C  38 84 00 04 */	addi r4, r4, 4
/* 802E2F40 002DFEA0  38 C6 00 04 */	addi r6, r6, 4
/* 802E2F44 002DFEA4  42 00 FF E8 */	bdnz lbl_802E2F2C
/* 802E2F48 002DFEA8  4E 80 00 20 */	blr

.global __ct__12CPASAnimInfoFi
__ct__12CPASAnimInfoFi:
/* 802E2F4C 002DFEAC  90 83 00 00 */	stw r4, 0(r3)
/* 802E2F50 002DFEB0  38 00 00 00 */	li r0, 0
/* 802E2F54 002DFEB4  90 03 00 04 */	stw r0, 4(r3)
/* 802E2F58 002DFEB8  4E 80 00 20 */	blr 
