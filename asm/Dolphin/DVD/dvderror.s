.include "macros.inc"

.section .text, "ax"

.global ErrorCode2Num
ErrorCode2Num:
/* 80374AB0 00371A10  38 00 00 02 */	li r0, 2
/* 80374AB4 00371A14  3C 80 80 3F */	lis r4, lbl_803F0100@ha
/* 80374AB8 00371A18  7C 09 03 A6 */	mtctr r0
/* 80374ABC 00371A1C  38 84 01 00 */	addi r4, r4, lbl_803F0100@l
/* 80374AC0 00371A20  38 A0 00 00 */	li r5, 0
lbl_80374AC4:
/* 80374AC4 00371A24  80 04 00 00 */	lwz r0, 0(r4)
/* 80374AC8 00371A28  7C 03 00 40 */	cmplw r3, r0
/* 80374ACC 00371A2C  40 82 00 0C */	bne lbl_80374AD8
/* 80374AD0 00371A30  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374AD4 00371A34  4E 80 00 20 */	blr 
lbl_80374AD8:
/* 80374AD8 00371A38  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374ADC 00371A3C  38 A5 00 01 */	addi r5, r5, 1
/* 80374AE0 00371A40  7C 03 00 40 */	cmplw r3, r0
/* 80374AE4 00371A44  40 82 00 0C */	bne lbl_80374AF0
/* 80374AE8 00371A48  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374AEC 00371A4C  4E 80 00 20 */	blr 
lbl_80374AF0:
/* 80374AF0 00371A50  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374AF4 00371A54  38 A5 00 01 */	addi r5, r5, 1
/* 80374AF8 00371A58  7C 03 00 40 */	cmplw r3, r0
/* 80374AFC 00371A5C  40 82 00 0C */	bne lbl_80374B08
/* 80374B00 00371A60  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B04 00371A64  4E 80 00 20 */	blr 
lbl_80374B08:
/* 80374B08 00371A68  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B0C 00371A6C  38 A5 00 01 */	addi r5, r5, 1
/* 80374B10 00371A70  7C 03 00 40 */	cmplw r3, r0
/* 80374B14 00371A74  40 82 00 0C */	bne lbl_80374B20
/* 80374B18 00371A78  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B1C 00371A7C  4E 80 00 20 */	blr 
lbl_80374B20:
/* 80374B20 00371A80  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B24 00371A84  38 A5 00 01 */	addi r5, r5, 1
/* 80374B28 00371A88  7C 03 00 40 */	cmplw r3, r0
/* 80374B2C 00371A8C  40 82 00 0C */	bne lbl_80374B38
/* 80374B30 00371A90  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B34 00371A94  4E 80 00 20 */	blr 
lbl_80374B38:
/* 80374B38 00371A98  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B3C 00371A9C  38 A5 00 01 */	addi r5, r5, 1
/* 80374B40 00371AA0  7C 03 00 40 */	cmplw r3, r0
/* 80374B44 00371AA4  40 82 00 0C */	bne lbl_80374B50
/* 80374B48 00371AA8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B4C 00371AAC  4E 80 00 20 */	blr 
lbl_80374B50:
/* 80374B50 00371AB0  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B54 00371AB4  38 A5 00 01 */	addi r5, r5, 1
/* 80374B58 00371AB8  7C 03 00 40 */	cmplw r3, r0
/* 80374B5C 00371ABC  40 82 00 0C */	bne lbl_80374B68
/* 80374B60 00371AC0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B64 00371AC4  4E 80 00 20 */	blr 
lbl_80374B68:
/* 80374B68 00371AC8  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B6C 00371ACC  38 A5 00 01 */	addi r5, r5, 1
/* 80374B70 00371AD0  7C 03 00 40 */	cmplw r3, r0
/* 80374B74 00371AD4  40 82 00 0C */	bne lbl_80374B80
/* 80374B78 00371AD8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B7C 00371ADC  4E 80 00 20 */	blr 
lbl_80374B80:
/* 80374B80 00371AE0  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B84 00371AE4  38 A5 00 01 */	addi r5, r5, 1
/* 80374B88 00371AE8  7C 03 00 40 */	cmplw r3, r0
/* 80374B8C 00371AEC  40 82 00 0C */	bne lbl_80374B98
/* 80374B90 00371AF0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B94 00371AF4  4E 80 00 20 */	blr 
lbl_80374B98:
/* 80374B98 00371AF8  38 84 00 04 */	addi r4, r4, 4
/* 80374B9C 00371AFC  38 A5 00 01 */	addi r5, r5, 1
/* 80374BA0 00371B00  42 00 FF 24 */	bdnz lbl_80374AC4
/* 80374BA4 00371B04  3C 80 00 10 */	lis r4, 0x10
/* 80374BA8 00371B08  7C 03 20 40 */	cmplw r3, r4
/* 80374BAC 00371B0C  41 80 00 18 */	blt lbl_80374BC4
/* 80374BB0 00371B10  38 04 00 08 */	addi r0, r4, 8
/* 80374BB4 00371B14  7C 03 00 40 */	cmplw r3, r0
/* 80374BB8 00371B18  41 81 00 0C */	bgt lbl_80374BC4
/* 80374BBC 00371B1C  38 60 00 11 */	li r3, 0x11
/* 80374BC0 00371B20  4E 80 00 20 */	blr 
lbl_80374BC4:
/* 80374BC4 00371B24  38 60 00 1D */	li r3, 0x1d
/* 80374BC8 00371B28  4E 80 00 20 */	blr 

.global __DVDStoreErrorCode
__DVDStoreErrorCode:
/* 80374BCC 00371B2C  7C 08 02 A6 */	mflr r0
/* 80374BD0 00371B30  90 01 00 04 */	stw r0, 4(r1)
/* 80374BD4 00371B34  3C 03 FE DD */	addis r0, r3, 0xfedd
/* 80374BD8 00371B38  28 00 45 67 */	cmplwi r0, 0x4567
/* 80374BDC 00371B3C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80374BE0 00371B40  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80374BE4 00371B44  40 82 00 0C */	bne lbl_80374BF0
/* 80374BE8 00371B48  3B E0 00 FF */	li r31, 0xff
/* 80374BEC 00371B4C  48 00 00 38 */	b lbl_80374C24
lbl_80374BF0:
/* 80374BF0 00371B50  28 00 45 68 */	cmplwi r0, 0x4568
/* 80374BF4 00371B54  40 82 00 0C */	bne lbl_80374C00
/* 80374BF8 00371B58  3B E0 00 FE */	li r31, 0xfe
/* 80374BFC 00371B5C  48 00 00 28 */	b lbl_80374C24
lbl_80374C00:
/* 80374C00 00371B60  54 7F 46 3E */	srwi r31, r3, 0x18
/* 80374C04 00371B64  54 63 02 3E */	clrlwi r3, r3, 8
/* 80374C08 00371B68  4B FF FE A9 */	bl ErrorCode2Num
/* 80374C0C 00371B6C  28 1F 00 06 */	cmplwi r31, 6
/* 80374C10 00371B70  41 80 00 08 */	blt lbl_80374C18
/* 80374C14 00371B74  3B E0 00 06 */	li r31, 6
lbl_80374C18:
/* 80374C18 00371B78  1C 1F 00 1E */	mulli r0, r31, 0x1e
/* 80374C1C 00371B7C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80374C20 00371B80  7F E3 02 14 */	add r31, r3, r0
lbl_80374C24:
/* 80374C24 00371B84  48 00 EF 0D */	bl __OSLockSramEx
/* 80374C28 00371B88  9B E3 00 24 */	stb r31, 0x24(r3)
/* 80374C2C 00371B8C  38 60 00 01 */	li r3, 1
/* 80374C30 00371B90  48 00 F2 89 */	bl __OSUnlockSramEx
/* 80374C34 00371B94  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80374C38 00371B98  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80374C3C 00371B9C  38 21 00 18 */	addi r1, r1, 0x18
/* 80374C40 00371BA0  7C 08 03 A6 */	mtlr r0
/* 80374C44 00371BA4  4E 80 00 20 */	blr 
