.include "macros.inc"

.section .text, "ax"

.global __ct__13CUnitVector3fFRC9CVector3f
__ct__13CUnitVector3fFRC9CVector3f:
/* 80313DD0 00310D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80313DD4 00310D34  7C 08 02 A6 */	mflr r0
/* 80313DD8 00310D38  C0 22 C8 F0 */	lfs f1, lbl_805AE610@sda21(r2)
/* 80313DDC 00310D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80313DE0 00310D40  38 00 00 00 */	li r0, 0
/* 80313DE4 00310D44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80313DE8 00310D48  7C 7F 1B 78 */	mr r31, r3
/* 80313DEC 00310D4C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80313DF0 00310D50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80313DF4 00310D54  40 82 00 1C */	bne lbl_80313E10
/* 80313DF8 00310D58  C0 04 00 04 */	lfs f0, 4(r4)
/* 80313DFC 00310D5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80313E00 00310D60  40 82 00 10 */	bne lbl_80313E10
/* 80313E04 00310D64  C0 04 00 08 */	lfs f0, 8(r4)
/* 80313E08 00310D68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80313E0C 00310D6C  41 82 00 08 */	beq lbl_80313E14
lbl_80313E10:
/* 80313E10 00310D70  38 00 00 01 */	li r0, 1
lbl_80313E14:
/* 80313E14 00310D74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80313E18 00310D78  41 82 00 14 */	beq lbl_80313E2C
/* 80313E1C 00310D7C  38 61 00 08 */	addi r3, r1, 8
/* 80313E20 00310D80  48 00 0A 31 */	bl AsNormalized__9CVector3fCFv
/* 80313E24 00310D84  38 81 00 08 */	addi r4, r1, 8
/* 80313E28 00310D88  48 00 00 0C */	b lbl_80313E34
lbl_80313E2C:
/* 80313E2C 00310D8C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80313E30 00310D90  38 83 66 A0 */	addi r4, r3, skZero3f@l
lbl_80313E34:
/* 80313E34 00310D94  C0 04 00 00 */	lfs f0, 0(r4)
/* 80313E38 00310D98  7F E3 FB 78 */	mr r3, r31
/* 80313E3C 00310D9C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80313E40 00310DA0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80313E44 00310DA4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80313E48 00310DA8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80313E4C 00310DAC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80313E50 00310DB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80313E54 00310DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80313E58 00310DB8  7C 08 03 A6 */	mtlr r0
/* 80313E5C 00310DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80313E60 00310DC0  4E 80 00 20 */	blr 
