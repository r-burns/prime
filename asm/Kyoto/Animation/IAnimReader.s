.include "macros.inc"

.section .data
.balign 8

.global lbl_803ED508
lbl_803ED508:
	# ROM: 0x3EA508
	.4byte 0
	.4byte 0
	.4byte __dt__11IAnimReaderFv
	.4byte IsCAnimTreeNode__11IAnimReaderCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte VSimplified__11IAnimReaderFv
	.4byte 0
	.4byte VGetAdvancementResults__11IAnimReaderCFRC13CCharAnimTimeRC13CCharAnimTime
	.4byte 0

.section .text, "ax"

.global IsCAnimTreeNode__11IAnimReaderCFv
IsCAnimTreeNode__11IAnimReaderCFv:
/* 802FDC7C 002FABDC  38 60 00 00 */	li r3, 0
/* 802FDC80 002FABE0  4E 80 00 20 */	blr

.global GetSoundPOIList__11IAnimReaderCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
GetSoundPOIList__11IAnimReaderCFRC13CCharAnimTimeP13CSoundPOINodeUiUii:
/* 802FDC84 002FABE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FDC88 002FABE8  7C 08 02 A6 */	mflr r0
/* 802FDC8C 002FABEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FDC90 002FABF0  BF 41 00 08 */	stmw r26, 8(r1)
/* 802FDC94 002FABF4  7C 9B 23 78 */	mr r27, r4
/* 802FDC98 002FABF8  7C 7A 1B 78 */	mr r26, r3
/* 802FDC9C 002FABFC  7C BC 2B 78 */	mr r28, r5
/* 802FDCA0 002FAC00  7C DD 33 78 */	mr r29, r6
/* 802FDCA4 002FAC04  7C FE 3B 78 */	mr r30, r7
/* 802FDCA8 002FAC08  7D 1F 43 78 */	mr r31, r8
/* 802FDCAC 002FAC0C  7F 63 DB 78 */	mr r3, r27
/* 802FDCB0 002FAC10  48 04 A7 3D */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802FDCB4 002FAC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802FDCB8 002FAC18  41 82 00 30 */	beq lbl_802FDCE8
/* 802FDCBC 002FAC1C  7F 43 D3 78 */	mr r3, r26
/* 802FDCC0 002FAC20  7F 64 DB 78 */	mr r4, r27
/* 802FDCC4 002FAC24  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDCC8 002FAC28  7F 85 E3 78 */	mr r5, r28
/* 802FDCCC 002FAC2C  7F A6 EB 78 */	mr r6, r29
/* 802FDCD0 002FAC30  7F C7 F3 78 */	mr r7, r30
/* 802FDCD4 002FAC34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802FDCD8 002FAC38  7F E8 FB 78 */	mr r8, r31
/* 802FDCDC 002FAC3C  7D 89 03 A6 */	mtctr r12
/* 802FDCE0 002FAC40  4E 80 04 21 */	bctrl
/* 802FDCE4 002FAC44  48 00 00 08 */	b lbl_802FDCEC
lbl_802FDCE8:
/* 802FDCE8 002FAC48  38 60 00 00 */	li r3, 0
lbl_802FDCEC:
/* 802FDCEC 002FAC4C  BB 41 00 08 */	lmw r26, 8(r1)
/* 802FDCF0 002FAC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDCF4 002FAC54  7C 08 03 A6 */	mtlr r0
/* 802FDCF8 002FAC58  38 21 00 20 */	addi r1, r1, 0x20
/* 802FDCFC 002FAC5C  4E 80 00 20 */	blr

.global GetParticlePOIList__11IAnimReaderCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
GetParticlePOIList__11IAnimReaderCFRC13CCharAnimTimeP16CParticlePOINodeUiUii:
/* 802FDD00 002FAC60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FDD04 002FAC64  7C 08 02 A6 */	mflr r0
/* 802FDD08 002FAC68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FDD0C 002FAC6C  BF 41 00 08 */	stmw r26, 8(r1)
/* 802FDD10 002FAC70  7C 9B 23 78 */	mr r27, r4
/* 802FDD14 002FAC74  7C 7A 1B 78 */	mr r26, r3
/* 802FDD18 002FAC78  7C BC 2B 78 */	mr r28, r5
/* 802FDD1C 002FAC7C  7C DD 33 78 */	mr r29, r6
/* 802FDD20 002FAC80  7C FE 3B 78 */	mr r30, r7
/* 802FDD24 002FAC84  7D 1F 43 78 */	mr r31, r8
/* 802FDD28 002FAC88  7F 63 DB 78 */	mr r3, r27
/* 802FDD2C 002FAC8C  48 04 A6 C1 */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802FDD30 002FAC90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802FDD34 002FAC94  41 82 00 30 */	beq lbl_802FDD64
/* 802FDD38 002FAC98  7F 43 D3 78 */	mr r3, r26
/* 802FDD3C 002FAC9C  7F 64 DB 78 */	mr r4, r27
/* 802FDD40 002FACA0  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDD44 002FACA4  7F 85 E3 78 */	mr r5, r28
/* 802FDD48 002FACA8  7F A6 EB 78 */	mr r6, r29
/* 802FDD4C 002FACAC  7F C7 F3 78 */	mr r7, r30
/* 802FDD50 002FACB0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802FDD54 002FACB4  7F E8 FB 78 */	mr r8, r31
/* 802FDD58 002FACB8  7D 89 03 A6 */	mtctr r12
/* 802FDD5C 002FACBC  4E 80 04 21 */	bctrl
/* 802FDD60 002FACC0  48 00 00 08 */	b lbl_802FDD68
lbl_802FDD64:
/* 802FDD64 002FACC4  38 60 00 00 */	li r3, 0
lbl_802FDD68:
/* 802FDD68 002FACC8  BB 41 00 08 */	lmw r26, 8(r1)
/* 802FDD6C 002FACCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDD70 002FACD0  7C 08 03 A6 */	mtlr r0
/* 802FDD74 002FACD4  38 21 00 20 */	addi r1, r1, 0x20
/* 802FDD78 002FACD8  4E 80 00 20 */	blr

.global GetInt32POIList__11IAnimReaderCFRC13CCharAnimTimeP13CInt32POINodeUiUii
GetInt32POIList__11IAnimReaderCFRC13CCharAnimTimeP13CInt32POINodeUiUii:
/* 802FDD7C 002FACDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FDD80 002FACE0  7C 08 02 A6 */	mflr r0
/* 802FDD84 002FACE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FDD88 002FACE8  BF 41 00 08 */	stmw r26, 8(r1)
/* 802FDD8C 002FACEC  7C 9B 23 78 */	mr r27, r4
/* 802FDD90 002FACF0  7C 7A 1B 78 */	mr r26, r3
/* 802FDD94 002FACF4  7C BC 2B 78 */	mr r28, r5
/* 802FDD98 002FACF8  7C DD 33 78 */	mr r29, r6
/* 802FDD9C 002FACFC  7C FE 3B 78 */	mr r30, r7
/* 802FDDA0 002FAD00  7D 1F 43 78 */	mr r31, r8
/* 802FDDA4 002FAD04  7F 63 DB 78 */	mr r3, r27
/* 802FDDA8 002FAD08  48 04 A6 45 */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802FDDAC 002FAD0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802FDDB0 002FAD10  41 82 00 30 */	beq lbl_802FDDE0
/* 802FDDB4 002FAD14  7F 43 D3 78 */	mr r3, r26
/* 802FDDB8 002FAD18  7F 64 DB 78 */	mr r4, r27
/* 802FDDBC 002FAD1C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDDC0 002FAD20  7F 85 E3 78 */	mr r5, r28
/* 802FDDC4 002FAD24  7F A6 EB 78 */	mr r6, r29
/* 802FDDC8 002FAD28  7F C7 F3 78 */	mr r7, r30
/* 802FDDCC 002FAD2C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802FDDD0 002FAD30  7F E8 FB 78 */	mr r8, r31
/* 802FDDD4 002FAD34  7D 89 03 A6 */	mtctr r12
/* 802FDDD8 002FAD38  4E 80 04 21 */	bctrl
/* 802FDDDC 002FAD3C  48 00 00 08 */	b lbl_802FDDE4
lbl_802FDDE0:
/* 802FDDE0 002FAD40  38 60 00 00 */	li r3, 0
lbl_802FDDE4:
/* 802FDDE4 002FAD44  BB 41 00 08 */	lmw r26, 8(r1)
/* 802FDDE8 002FAD48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDDEC 002FAD4C  7C 08 03 A6 */	mtlr r0
/* 802FDDF0 002FAD50  38 21 00 20 */	addi r1, r1, 0x20
/* 802FDDF4 002FAD54  4E 80 00 20 */	blr

.global GetBoolPOIList__11IAnimReaderCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
GetBoolPOIList__11IAnimReaderCFRC13CCharAnimTimeP12CBoolPOINodeUiUii:
/* 802FDDF8 002FAD58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FDDFC 002FAD5C  7C 08 02 A6 */	mflr r0
/* 802FDE00 002FAD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FDE04 002FAD64  BF 41 00 08 */	stmw r26, 8(r1)
/* 802FDE08 002FAD68  7C 9B 23 78 */	mr r27, r4
/* 802FDE0C 002FAD6C  7C 7A 1B 78 */	mr r26, r3
/* 802FDE10 002FAD70  7C BC 2B 78 */	mr r28, r5
/* 802FDE14 002FAD74  7C DD 33 78 */	mr r29, r6
/* 802FDE18 002FAD78  7C FE 3B 78 */	mr r30, r7
/* 802FDE1C 002FAD7C  7D 1F 43 78 */	mr r31, r8
/* 802FDE20 002FAD80  7F 63 DB 78 */	mr r3, r27
/* 802FDE24 002FAD84  48 04 A5 C9 */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802FDE28 002FAD88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802FDE2C 002FAD8C  41 82 00 30 */	beq lbl_802FDE5C
/* 802FDE30 002FAD90  7F 43 D3 78 */	mr r3, r26
/* 802FDE34 002FAD94  7F 64 DB 78 */	mr r4, r27
/* 802FDE38 002FAD98  81 9A 00 00 */	lwz r12, 0(r26)
/* 802FDE3C 002FAD9C  7F 85 E3 78 */	mr r5, r28
/* 802FDE40 002FADA0  7F A6 EB 78 */	mr r6, r29
/* 802FDE44 002FADA4  7F C7 F3 78 */	mr r7, r30
/* 802FDE48 002FADA8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802FDE4C 002FADAC  7F E8 FB 78 */	mr r8, r31
/* 802FDE50 002FADB0  7D 89 03 A6 */	mtctr r12
/* 802FDE54 002FADB4  4E 80 04 21 */	bctrl
/* 802FDE58 002FADB8  48 00 00 08 */	b lbl_802FDE60
lbl_802FDE5C:
/* 802FDE5C 002FADBC  38 60 00 00 */	li r3, 0
lbl_802FDE60:
/* 802FDE60 002FADC0  BB 41 00 08 */	lmw r26, 8(r1)
/* 802FDE64 002FADC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FDE68 002FADC8  7C 08 03 A6 */	mtlr r0
/* 802FDE6C 002FADCC  38 21 00 20 */	addi r1, r1, 0x20
/* 802FDE70 002FADD0  4E 80 00 20 */	blr

.global VGetAdvancementResults__11IAnimReaderCFRC13CCharAnimTimeRC13CCharAnimTime
VGetAdvancementResults__11IAnimReaderCFRC13CCharAnimTimeRC13CCharAnimTime:
/* 802FDE74 002FADD4  C0 05 00 00 */	lfs f0, 0(r5)
/* 802FDE78 002FADD8  3C C0 80 5A */	lis r6, sZeroVector__9CVector3f@ha
/* 802FDE7C 002FADDC  3C 80 80 5A */	lis r4, lbl_805A6660@ha
/* 802FDE80 002FADE0  D0 03 00 00 */	stfs f0, 0(r3)
/* 802FDE84 002FADE4  80 05 00 04 */	lwz r0, 4(r5)
/* 802FDE88 002FADE8  90 03 00 04 */	stw r0, 4(r3)
/* 802FDE8C 002FADEC  C4 06 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r6)
/* 802FDE90 002FADF0  D0 03 00 08 */	stfs f0, 8(r3)
/* 802FDE94 002FADF4  C0 06 00 04 */	lfs f0, 4(r6)
/* 802FDE98 002FADF8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802FDE9C 002FADFC  C0 06 00 08 */	lfs f0, 8(r6)
/* 802FDEA0 002FAE00  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802FDEA4 002FAE04  C4 04 66 60 */	lfsu f0, lbl_805A6660@l(r4)
/* 802FDEA8 002FAE08  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802FDEAC 002FAE0C  C0 04 00 04 */	lfs f0, 4(r4)
/* 802FDEB0 002FAE10  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802FDEB4 002FAE14  C0 04 00 08 */	lfs f0, 8(r4)
/* 802FDEB8 002FAE18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802FDEBC 002FAE1C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802FDEC0 002FAE20  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802FDEC4 002FAE24  4E 80 00 20 */	blr

.global VSimplified__11IAnimReaderFv
VSimplified__11IAnimReaderFv:
/* 802FDEC8 002FAE28  38 00 00 00 */	li r0, 0
/* 802FDECC 002FAE2C  98 03 00 08 */	stb r0, 8(r3)
/* 802FDED0 002FAE30  4E 80 00 20 */	blr

.global __dt__11IAnimReaderFv
__dt__11IAnimReaderFv:
/* 802FDED4 002FAE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDED8 002FAE38  7C 08 02 A6 */	mflr r0
/* 802FDEDC 002FAE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDEE0 002FAE40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FDEE4 002FAE44  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FDEE8 002FAE48  41 82 00 1C */	beq lbl_802FDF04
/* 802FDEEC 002FAE4C  3C A0 80 3F */	lis r5, lbl_803ED508@ha
/* 802FDEF0 002FAE50  7C 80 07 35 */	extsh. r0, r4
/* 802FDEF4 002FAE54  38 05 D5 08 */	addi r0, r5, lbl_803ED508@l
/* 802FDEF8 002FAE58  90 1F 00 00 */	stw r0, 0(r31)
/* 802FDEFC 002FAE5C  40 81 00 08 */	ble lbl_802FDF04
/* 802FDF00 002FAE60  48 01 7A 31 */	bl Free__7CMemoryFPCv
lbl_802FDF04:
/* 802FDF04 002FAE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDF08 002FAE68  7F E3 FB 78 */	mr r3, r31
/* 802FDF0C 002FAE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FDF10 002FAE70  7C 08 03 A6 */	mtlr r0
/* 802FDF14 002FAE74  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDF18 002FAE78  4E 80 00 20 */	blr
