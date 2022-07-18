.include "macros.inc"

.section .text, "ax"

.global __ct__27CSkinnedModelWithAvgNormalsFRC13CSkinnedModel
__ct__27CSkinnedModelWithAvgNormalsFRC13CSkinnedModel:
/* 803579A4 00354904  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 803579A8 00354908  7C 08 02 A6 */	mflr r0
/* 803579AC 0035490C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 803579B0 00354910  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 803579B4 00354914  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 803579B8 00354918  BE 61 00 8C */	stmw r19, 0x8c(r1)
/* 803579BC 0035491C  7C 7F 1B 78 */	mr r31, r3
/* 803579C0 00354920  7C 96 23 78 */	mr r22, r4
/* 803579C4 00354924  4B FF B9 A1 */	bl __ct__13CSkinnedModelFRC13CSkinnedModel
/* 803579C8 00354928  80 D6 00 18 */	lwz r6, 0x18(r22)
/* 803579CC 0035492C  3C 60 80 3E */	lis r3, lbl_803D8330@ha
/* 803579D0 00354930  38 83 83 30 */	addi r4, r3, lbl_803D8330@l
/* 803579D4 00354934  38 A0 00 00 */	li r5, 0
/* 803579D8 00354938  80 06 00 10 */	lwz r0, 0x10(r6)
/* 803579DC 0035493C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803579E0 00354940  54 03 10 3A */	slwi r3, r0, 2
/* 803579E4 00354944  4B FB DE 35 */	bl __nwa__FUlPCcPCc
/* 803579E8 00354948  7C 03 00 D0 */	neg r0, r3
/* 803579EC 0035494C  7C 00 1B 78 */	or r0, r0, r3
/* 803579F0 00354950  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803579F4 00354954  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 803579F8 00354958  90 7F 00 40 */	stw r3, 0x40(r31)
/* 803579FC 0035495C  80 96 00 18 */	lwz r4, 0x18(r22)
/* 80357A00 00354960  80 76 00 0C */	lwz r3, 0xc(r22)
/* 80357A04 00354964  83 44 00 10 */	lwz r26, 0x10(r4)
/* 80357A08 00354968  4B FF DC C9 */	bl GetPositions__6CModelCFv
/* 80357A0C 0035496C  38 00 00 00 */	li r0, 0
/* 80357A10 00354970  7C 79 1B 78 */	mr r25, r3
/* 80357A14 00354974  90 01 00 34 */	stw r0, 0x34(r1)
/* 80357A18 00354978  7F 44 D3 78 */	mr r4, r26
/* 80357A1C 0035497C  38 61 00 30 */	addi r3, r1, 0x30
/* 80357A20 00354980  90 01 00 38 */	stw r0, 0x38(r1)
/* 80357A24 00354984  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80357A28 00354988  48 00 06 ED */	bl "reserve__Q24rstl105vector<Q24rstl61pair<9CVector3f,Q24rstl35list<Ui,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
/* 80357A2C 0035498C  7F 3D CB 78 */	mr r29, r25
/* 80357A30 00354990  3B 81 00 4C */	addi r28, r1, 0x4c
/* 80357A34 00354994  3B 61 00 64 */	addi r27, r1, 0x64
/* 80357A38 00354998  3B 00 00 00 */	li r24, 0
/* 80357A3C 0035499C  3A A0 00 00 */	li r21, 0
/* 80357A40 003549A0  48 00 01 6C */	b lbl_80357BAC
lbl_80357A44:
/* 80357A44 003549A4  82 81 00 34 */	lwz r20, 0x34(r1)
/* 80357A48 003549A8  3A 60 00 00 */	li r19, 0
/* 80357A4C 003549AC  3B C0 00 00 */	li r30, 0
/* 80357A50 003549B0  3A E0 00 00 */	li r23, 0
/* 80357A54 003549B4  48 00 00 30 */	b lbl_80357A84
lbl_80357A58:
/* 80357A58 003549B8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80357A5C 003549BC  7F A4 EB 78 */	mr r4, r29
/* 80357A60 003549C0  C0 22 CC D8 */	lfs f1, lbl_805AE9F8@sda21(r2)
/* 80357A64 003549C4  7C 60 BA 14 */	add r3, r0, r23
/* 80357A68 003549C8  4B FB CB 49 */	bl IsEqu__9CVector3fCFRC9CVector3ff
/* 80357A6C 003549CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80357A70 003549D0  41 82 00 0C */	beq lbl_80357A7C
/* 80357A74 003549D4  3A 60 00 01 */	li r19, 1
/* 80357A78 003549D8  48 00 00 14 */	b lbl_80357A8C
lbl_80357A7C:
/* 80357A7C 003549DC  3B DE 00 01 */	addi r30, r30, 1
/* 80357A80 003549E0  3A F7 00 24 */	addi r23, r23, 0x24
lbl_80357A84:
/* 80357A84 003549E4  7C 1E A0 40 */	cmplw r30, r20
/* 80357A88 003549E8  41 80 FF D0 */	blt lbl_80357A58
lbl_80357A8C:
/* 80357A8C 003549EC  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 80357A90 003549F0  40 82 01 10 */	bne lbl_80357BA0
/* 80357A94 003549F4  38 00 00 00 */	li r0, 0
/* 80357A98 003549F8  93 81 00 44 */	stw r28, 0x44(r1)
/* 80357A9C 003549FC  7F 17 C3 78 */	mr r23, r24
/* 80357AA0 00354A00  7F D9 AA 14 */	add r30, r25, r21
/* 80357AA4 00354A04  93 81 00 48 */	stw r28, 0x48(r1)
/* 80357AA8 00354A08  93 81 00 4C */	stw r28, 0x4c(r1)
/* 80357AAC 00354A0C  93 81 00 50 */	stw r28, 0x50(r1)
/* 80357AB0 00354A10  90 01 00 54 */	stw r0, 0x54(r1)
/* 80357AB4 00354A14  48 00 00 B0 */	b lbl_80357B64
lbl_80357AB8:
/* 80357AB8 00354A18  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80357ABC 00354A1C  38 00 00 00 */	li r0, 0
/* 80357AC0 00354A20  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80357AC4 00354A24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80357AC8 00354A28  40 82 00 28 */	bne lbl_80357AF0
/* 80357ACC 00354A2C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80357AD0 00354A30  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80357AD4 00354A34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80357AD8 00354A38  40 82 00 18 */	bne lbl_80357AF0
/* 80357ADC 00354A3C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80357AE0 00354A40  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80357AE4 00354A44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80357AE8 00354A48  40 82 00 08 */	bne lbl_80357AF0
/* 80357AEC 00354A4C  38 00 00 01 */	li r0, 1
lbl_80357AF0:
/* 80357AF0 00354A50  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80357AF4 00354A54  41 82 00 68 */	beq lbl_80357B5C
/* 80357AF8 00354A58  82 81 00 48 */	lwz r20, 0x48(r1)
/* 80357AFC 00354A5C  3C 60 80 3E */	lis r3, lbl_803D8330@ha
/* 80357B00 00354A60  38 83 83 30 */	addi r4, r3, lbl_803D8330@l
/* 80357B04 00354A64  38 A0 00 00 */	li r5, 0
/* 80357B08 00354A68  82 74 00 00 */	lwz r19, 0(r20)
/* 80357B0C 00354A6C  38 60 00 0C */	li r3, 0xc
/* 80357B10 00354A70  4B FB DD 09 */	bl __nwa__FUlPCcPCc
/* 80357B14 00354A74  28 03 00 00 */	cmplwi r3, 0
/* 80357B18 00354A78  41 82 00 0C */	beq lbl_80357B24
/* 80357B1C 00354A7C  92 63 00 00 */	stw r19, 0(r3)
/* 80357B20 00354A80  92 83 00 04 */	stw r20, 4(r3)
lbl_80357B24:
/* 80357B24 00354A84  34 83 00 08 */	addic. r4, r3, 8
/* 80357B28 00354A88  41 82 00 08 */	beq lbl_80357B30
/* 80357B2C 00354A8C  92 E4 00 00 */	stw r23, 0(r4)
lbl_80357B30:
/* 80357B30 00354A90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80357B34 00354A94  7C 14 00 40 */	cmplw r20, r0
/* 80357B38 00354A98  40 82 00 08 */	bne lbl_80357B40
/* 80357B3C 00354A9C  90 61 00 44 */	stw r3, 0x44(r1)
lbl_80357B40:
/* 80357B40 00354AA0  80 83 00 00 */	lwz r4, 0(r3)
/* 80357B44 00354AA4  90 64 00 04 */	stw r3, 4(r4)
/* 80357B48 00354AA8  80 83 00 04 */	lwz r4, 4(r3)
/* 80357B4C 00354AAC  90 64 00 00 */	stw r3, 0(r4)
/* 80357B50 00354AB0  80 61 00 54 */	lwz r3, 0x54(r1)
/* 80357B54 00354AB4  38 03 00 01 */	addi r0, r3, 1
/* 80357B58 00354AB8  90 01 00 54 */	stw r0, 0x54(r1)
lbl_80357B5C:
/* 80357B5C 00354ABC  3B DE 00 0C */	addi r30, r30, 0xc
/* 80357B60 00354AC0  3A F7 00 01 */	addi r23, r23, 1
lbl_80357B64:
/* 80357B64 00354AC4  7C 17 D0 40 */	cmplw r23, r26
/* 80357B68 00354AC8  41 80 FF 50 */	blt lbl_80357AB8
/* 80357B6C 00354ACC  7F A4 EB 78 */	mr r4, r29
/* 80357B70 00354AD0  38 61 00 58 */	addi r3, r1, 0x58
/* 80357B74 00354AD4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80357B78 00354AD8  48 00 04 59 */	bl sub_80357fd0
/* 80357B7C 00354ADC  38 61 00 30 */	addi r3, r1, 0x30
/* 80357B80 00354AE0  38 81 00 58 */	addi r4, r1, 0x58
/* 80357B84 00354AE4  48 00 01 7D */	bl sub_80357d00
/* 80357B88 00354AE8  7F 63 DB 78 */	mr r3, r27
/* 80357B8C 00354AEC  38 80 FF FF */	li r4, -1
/* 80357B90 00354AF0  48 00 05 0D */	bl sub_8035809c
/* 80357B94 00354AF4  38 61 00 40 */	addi r3, r1, 0x40
/* 80357B98 00354AF8  38 80 FF FF */	li r4, -1
/* 80357B9C 00354AFC  48 00 05 01 */	bl sub_8035809c
lbl_80357BA0:
/* 80357BA0 00354B00  3B BD 00 0C */	addi r29, r29, 0xc
/* 80357BA4 00354B04  3B 18 00 01 */	addi r24, r24, 1
/* 80357BA8 00354B08  3A B5 00 0C */	addi r21, r21, 0xc
lbl_80357BAC:
/* 80357BAC 00354B0C  7C 18 D0 40 */	cmplw r24, r26
/* 80357BB0 00354B10  41 80 FE 94 */	blt lbl_80357A44
/* 80357BB4 00354B14  80 76 00 0C */	lwz r3, 0xc(r22)
/* 80357BB8 00354B18  4B FF DB 0D */	bl GetNormals__6CModelCFv
/* 80357BBC 00354B1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357BC0 00354B20  7C 75 1B 78 */	mr r21, r3
/* 80357BC4 00354B24  82 C1 00 3C */	lwz r22, 0x3c(r1)
/* 80357BC8 00354B28  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80357BCC 00354B2C  83 1F 00 40 */	lwz r24, 0x40(r31)
/* 80357BD0 00354B30  C3 E2 CC DC */	lfs f31, lbl_805AE9FC@sda21(r2)
/* 80357BD4 00354B34  7E 76 02 14 */	add r19, r22, r0
/* 80357BD8 00354B38  48 00 00 AC */	b lbl_80357C84
lbl_80357BDC:
/* 80357BDC 00354B3C  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 80357BE0 00354B40  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80357BE4 00354B44  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 80357BE8 00354B48  80 96 00 10 */	lwz r4, 0x10(r22)
/* 80357BEC 00354B4C  82 96 00 14 */	lwz r20, 0x14(r22)
/* 80357BF0 00354B50  48 00 00 44 */	b lbl_80357C34
lbl_80357BF4:
/* 80357BF4 00354B54  80 04 00 08 */	lwz r0, 8(r4)
/* 80357BF8 00354B58  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80357BFC 00354B5C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80357C00 00354B60  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80357C04 00354B64  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80357C08 00354B68  7C 75 02 14 */	add r3, r21, r0
/* 80357C0C 00354B6C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80357C10 00354B70  EC 03 00 2A */	fadds f0, f3, f0
/* 80357C14 00354B74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80357C18 00354B78  C0 03 00 04 */	lfs f0, 4(r3)
/* 80357C1C 00354B7C  EC 02 00 2A */	fadds f0, f2, f0
/* 80357C20 00354B80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80357C24 00354B84  C0 03 00 08 */	lfs f0, 8(r3)
/* 80357C28 00354B88  EC 01 00 2A */	fadds f0, f1, f0
/* 80357C2C 00354B8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80357C30 00354B90  80 84 00 04 */	lwz r4, 4(r4)
lbl_80357C34:
/* 80357C34 00354B94  7C 04 A0 40 */	cmplw r4, r20
/* 80357C38 00354B98  40 82 FF BC */	bne lbl_80357BF4
/* 80357C3C 00354B9C  82 F6 00 10 */	lwz r23, 0x10(r22)
/* 80357C40 00354BA0  38 61 00 18 */	addi r3, r1, 0x18
/* 80357C44 00354BA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80357C48 00354BA8  4B FB CC 09 */	bl AsNormalized__9CVector3fCFv
/* 80357C4C 00354BAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80357C50 00354BB0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80357C54 00354BB4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80357C58 00354BB8  48 00 00 20 */	b lbl_80357C78
lbl_80357C5C:
/* 80357C5C 00354BBC  80 17 00 08 */	lwz r0, 8(r23)
/* 80357C60 00354BC0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80357C64 00354BC4  7C 78 02 14 */	add r3, r24, r0
/* 80357C68 00354BC8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80357C6C 00354BCC  D0 23 00 04 */	stfs f1, 4(r3)
/* 80357C70 00354BD0  D0 43 00 08 */	stfs f2, 8(r3)
/* 80357C74 00354BD4  82 F7 00 04 */	lwz r23, 4(r23)
lbl_80357C78:
/* 80357C78 00354BD8  7C 17 A0 40 */	cmplw r23, r20
/* 80357C7C 00354BDC  40 82 FF E0 */	bne lbl_80357C5C
/* 80357C80 00354BE0  3A D6 00 24 */	addi r22, r22, 0x24
lbl_80357C84:
/* 80357C84 00354BE4  7C 16 98 40 */	cmplw r22, r19
/* 80357C88 00354BE8  40 82 FF 54 */	bne lbl_80357BDC
/* 80357C8C 00354BEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357C90 00354BF0  82 61 00 3C */	lwz r19, 0x3c(r1)
/* 80357C94 00354BF4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80357C98 00354BF8  92 61 00 0C */	stw r19, 0xc(r1)
/* 80357C9C 00354BFC  7E B3 02 14 */	add r21, r19, r0
/* 80357CA0 00354C00  92 61 00 08 */	stw r19, 8(r1)
/* 80357CA4 00354C04  92 A1 00 14 */	stw r21, 0x14(r1)
/* 80357CA8 00354C08  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80357CAC 00354C0C  48 00 00 1C */	b lbl_80357CC8
lbl_80357CB0:
/* 80357CB0 00354C10  28 13 00 00 */	cmplwi r19, 0
/* 80357CB4 00354C14  41 82 00 10 */	beq lbl_80357CC4
/* 80357CB8 00354C18  38 73 00 0C */	addi r3, r19, 0xc
/* 80357CBC 00354C1C  38 80 FF FF */	li r4, -1
/* 80357CC0 00354C20  48 00 03 DD */	bl sub_8035809c
lbl_80357CC4:
/* 80357CC4 00354C24  3A 73 00 24 */	addi r19, r19, 0x24
lbl_80357CC8:
/* 80357CC8 00354C28  7C 13 A8 40 */	cmplw r19, r21
/* 80357CCC 00354C2C  40 82 FF E4 */	bne lbl_80357CB0
/* 80357CD0 00354C30  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80357CD4 00354C34  28 03 00 00 */	cmplwi r3, 0
/* 80357CD8 00354C38  41 82 00 08 */	beq lbl_80357CE0
/* 80357CDC 00354C3C  4B FB DC 55 */	bl Free__7CMemoryFPCv
lbl_80357CE0:
/* 80357CE0 00354C40  7F E3 FB 78 */	mr r3, r31
/* 80357CE4 00354C44  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80357CE8 00354C48  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80357CEC 00354C4C  BA 61 00 8C */	lmw r19, 0x8c(r1)
/* 80357CF0 00354C50  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80357CF4 00354C54  7C 08 03 A6 */	mtlr r0
/* 80357CF8 00354C58  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80357CFC 00354C5C  4E 80 00 20 */	blr

.global sub_80357d00
sub_80357d00:
/* 80357D00 00354C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80357D04 00354C64  7C 08 02 A6 */	mflr r0
/* 80357D08 00354C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357D0C 00354C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357D10 00354C70  7C 9F 23 78 */	mr r31, r4
/* 80357D14 00354C74  93 C1 00 08 */	stw r30, 8(r1)
/* 80357D18 00354C78  7C 7E 1B 78 */	mr r30, r3
/* 80357D1C 00354C7C  80 03 00 04 */	lwz r0, 4(r3)
/* 80357D20 00354C80  80 A3 00 08 */	lwz r5, 8(r3)
/* 80357D24 00354C84  7C 00 28 00 */	cmpw r0, r5
/* 80357D28 00354C88  41 80 00 18 */	blt lbl_80357D40
/* 80357D2C 00354C8C  2C 05 00 00 */	cmpwi r5, 0
/* 80357D30 00354C90  38 80 00 04 */	li r4, 4
/* 80357D34 00354C94  41 82 00 08 */	beq lbl_80357D3C
/* 80357D38 00354C98  54 A4 08 3C */	slwi r4, r5, 1
lbl_80357D3C:
/* 80357D3C 00354C9C  48 00 03 D9 */	bl "reserve__Q24rstl105vector<Q24rstl61pair<9CVector3f,Q24rstl35list<Ui,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
lbl_80357D40:
/* 80357D40 00354CA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80357D44 00354CA4  7F E4 FB 78 */	mr r4, r31
/* 80357D48 00354CA8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80357D4C 00354CAC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80357D50 00354CB0  7C 63 02 14 */	add r3, r3, r0
/* 80357D54 00354CB4  48 00 00 29 */	bl sub_80357d7c
/* 80357D58 00354CB8  80 7E 00 04 */	lwz r3, 4(r30)
/* 80357D5C 00354CBC  38 03 00 01 */	addi r0, r3, 1
/* 80357D60 00354CC0  90 1E 00 04 */	stw r0, 4(r30)
/* 80357D64 00354CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80357D68 00354CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80357D6C 00354CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357D70 00354CD0  7C 08 03 A6 */	mtlr r0
/* 80357D74 00354CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80357D78 00354CD8  4E 80 00 20 */	blr

.global sub_80357d7c
sub_80357d7c:
/* 80357D7C 00354CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80357D80 00354CE0  7C 08 02 A6 */	mflr r0
/* 80357D84 00354CE4  28 03 00 00 */	cmplwi r3, 0
/* 80357D88 00354CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357D8C 00354CEC  41 82 00 08 */	beq lbl_80357D94
/* 80357D90 00354CF0  48 00 00 15 */	bl sub_80357da4
lbl_80357D94:
/* 80357D94 00354CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357D98 00354CF8  7C 08 03 A6 */	mtlr r0
/* 80357D9C 00354CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80357DA0 00354D00  4E 80 00 20 */	blr

.global sub_80357da4
sub_80357da4:
/* 80357DA4 00354D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80357DA8 00354D08  7C 08 02 A6 */	mflr r0
/* 80357DAC 00354D0C  7C 85 23 78 */	mr r5, r4
/* 80357DB0 00354D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357DB4 00354D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357DB8 00354D18  7C 7F 1B 78 */	mr r31, r3
/* 80357DBC 00354D1C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80357DC0 00354D20  C0 04 00 00 */	lfs f0, 0(r4)
/* 80357DC4 00354D24  38 85 00 0C */	addi r4, r5, 0xc
/* 80357DC8 00354D28  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80357DCC 00354D2C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80357DD0 00354D30  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80357DD4 00354D34  C0 05 00 08 */	lfs f0, 8(r5)
/* 80357DD8 00354D38  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80357DDC 00354D3C  48 00 00 1D */	bl sub_80357df8
/* 80357DE0 00354D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357DE4 00354D44  7F E3 FB 78 */	mr r3, r31
/* 80357DE8 00354D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80357DEC 00354D4C  7C 08 03 A6 */	mtlr r0
/* 80357DF0 00354D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80357DF4 00354D54  4E 80 00 20 */	blr

.global sub_80357df8
sub_80357df8:
/* 80357DF8 00354D58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80357DFC 00354D5C  7C 08 02 A6 */	mflr r0
/* 80357E00 00354D60  38 E0 00 00 */	li r7, 0
/* 80357E04 00354D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80357E08 00354D68  38 00 00 01 */	li r0, 1
/* 80357E0C 00354D6C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80357E10 00354D70  38 C1 00 0C */	addi r6, r1, 0xc
/* 80357E14 00354D74  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80357E18 00354D78  7C 7F 1B 78 */	mr r31, r3
/* 80357E1C 00354D7C  39 1F 00 0C */	addi r8, r31, 0xc
/* 80357E20 00354D80  91 03 00 04 */	stw r8, 4(r3)
/* 80357E24 00354D84  91 03 00 08 */	stw r8, 8(r3)
/* 80357E28 00354D88  91 03 00 0C */	stw r8, 0xc(r3)
/* 80357E2C 00354D8C  91 03 00 10 */	stw r8, 0x10(r3)
/* 80357E30 00354D90  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80357E34 00354D94  81 04 00 08 */	lwz r8, 8(r4)
/* 80357E38 00354D98  80 E4 00 04 */	lwz r7, 4(r4)
/* 80357E3C 00354D9C  38 81 00 18 */	addi r4, r1, 0x18
/* 80357E40 00354DA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80357E44 00354DA4  98 01 00 20 */	stb r0, 0x20(r1)
/* 80357E48 00354DA8  91 01 00 0C */	stw r8, 0xc(r1)
/* 80357E4C 00354DAC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80357E50 00354DB0  80 03 00 08 */	lwz r0, 8(r3)
/* 80357E54 00354DB4  91 01 00 08 */	stw r8, 8(r1)
/* 80357E58 00354DB8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80357E5C 00354DBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80357E60 00354DC0  48 00 00 31 */	bl sub_80357e90
/* 80357E64 00354DC4  38 00 00 00 */	li r0, 0
/* 80357E68 00354DC8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80357E6C 00354DCC  98 01 00 20 */	stb r0, 0x20(r1)
/* 80357E70 00354DD0  38 80 FF FF */	li r4, -1
/* 80357E74 00354DD4  48 00 00 D1 */	bl sub_80357f44
/* 80357E78 00354DD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357E7C 00354DDC  7F E3 FB 78 */	mr r3, r31
/* 80357E80 00354DE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80357E84 00354DE4  7C 08 03 A6 */	mtlr r0
/* 80357E88 00354DE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80357E8C 00354DEC  4E 80 00 20 */	blr

.global sub_80357e90
sub_80357e90:
/* 80357E90 00354DF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80357E94 00354DF4  7C 08 02 A6 */	mflr r0
/* 80357E98 00354DF8  3C E0 80 3E */	lis r7, lbl_803D8330@ha
/* 80357E9C 00354DFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80357EA0 00354E00  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80357EA4 00354E04  7C 79 1B 78 */	mr r25, r3
/* 80357EA8 00354E08  7C 9A 23 78 */	mr r26, r4
/* 80357EAC 00354E0C  7C DB 33 78 */	mr r27, r6
/* 80357EB0 00354E10  3B E7 83 30 */	addi r31, r7, lbl_803D8330@l
/* 80357EB4 00354E14  83 85 00 00 */	lwz r28, 0(r5)
/* 80357EB8 00354E18  48 00 00 6C */	b lbl_80357F24
lbl_80357EBC:
/* 80357EBC 00354E1C  83 DA 00 00 */	lwz r30, 0(r26)
/* 80357EC0 00354E20  7F E4 FB 78 */	mr r4, r31
/* 80357EC4 00354E24  38 60 00 0C */	li r3, 0xc
/* 80357EC8 00354E28  38 A0 00 00 */	li r5, 0
/* 80357ECC 00354E2C  83 BE 00 00 */	lwz r29, 0(r30)
/* 80357ED0 00354E30  4B FB D9 49 */	bl __nwa__FUlPCcPCc
/* 80357ED4 00354E34  28 03 00 00 */	cmplwi r3, 0
/* 80357ED8 00354E38  41 82 00 0C */	beq lbl_80357EE4
/* 80357EDC 00354E3C  93 A3 00 00 */	stw r29, 0(r3)
/* 80357EE0 00354E40  93 C3 00 04 */	stw r30, 4(r3)
lbl_80357EE4:
/* 80357EE4 00354E44  34 83 00 08 */	addic. r4, r3, 8
/* 80357EE8 00354E48  41 82 00 0C */	beq lbl_80357EF4
/* 80357EEC 00354E4C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80357EF0 00354E50  90 04 00 00 */	stw r0, 0(r4)
lbl_80357EF4:
/* 80357EF4 00354E54  80 19 00 04 */	lwz r0, 4(r25)
/* 80357EF8 00354E58  7C 1E 00 40 */	cmplw r30, r0
/* 80357EFC 00354E5C  40 82 00 08 */	bne lbl_80357F04
/* 80357F00 00354E60  90 79 00 04 */	stw r3, 4(r25)
lbl_80357F04:
/* 80357F04 00354E64  80 83 00 00 */	lwz r4, 0(r3)
/* 80357F08 00354E68  90 64 00 04 */	stw r3, 4(r4)
/* 80357F0C 00354E6C  80 83 00 04 */	lwz r4, 4(r3)
/* 80357F10 00354E70  90 64 00 00 */	stw r3, 0(r4)
/* 80357F14 00354E74  80 79 00 14 */	lwz r3, 0x14(r25)
/* 80357F18 00354E78  38 03 00 01 */	addi r0, r3, 1
/* 80357F1C 00354E7C  90 19 00 14 */	stw r0, 0x14(r25)
/* 80357F20 00354E80  83 9C 00 04 */	lwz r28, 4(r28)
lbl_80357F24:
/* 80357F24 00354E84  80 1B 00 00 */	lwz r0, 0(r27)
/* 80357F28 00354E88  7C 1C 00 40 */	cmplw r28, r0
/* 80357F2C 00354E8C  40 82 FF 90 */	bne lbl_80357EBC
/* 80357F30 00354E90  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80357F34 00354E94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357F38 00354E98  7C 08 03 A6 */	mtlr r0
/* 80357F3C 00354E9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80357F40 00354EA0  4E 80 00 20 */	blr

.global sub_80357f44
sub_80357f44:
/* 80357F44 00354EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80357F48 00354EA8  7C 08 02 A6 */	mflr r0
/* 80357F4C 00354EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80357F50 00354EB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80357F54 00354EB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80357F58 00354EB8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80357F5C 00354EBC  7C 9D 23 78 */	mr r29, r4
/* 80357F60 00354EC0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80357F64 00354EC4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80357F68 00354EC8  41 82 00 44 */	beq lbl_80357FAC
/* 80357F6C 00354ECC  88 1C 00 04 */	lbz r0, 4(r28)
/* 80357F70 00354ED0  28 00 00 00 */	cmplwi r0, 0
/* 80357F74 00354ED4  41 82 00 28 */	beq lbl_80357F9C
/* 80357F78 00354ED8  83 FC 00 00 */	lwz r31, 0(r28)
/* 80357F7C 00354EDC  83 DF 00 08 */	lwz r30, 8(r31)
/* 80357F80 00354EE0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80357F84 00354EE4  48 00 00 10 */	b lbl_80357F94
lbl_80357F88:
/* 80357F88 00354EE8  7F E3 FB 78 */	mr r3, r31
/* 80357F8C 00354EEC  48 00 00 95 */	bl sub_80358020
/* 80357F90 00354EF0  7C 64 1B 78 */	mr r4, r3
lbl_80357F94:
/* 80357F94 00354EF4  7C 04 F0 40 */	cmplw r4, r30
/* 80357F98 00354EF8  40 82 FF F0 */	bne lbl_80357F88
lbl_80357F9C:
/* 80357F9C 00354EFC  7F A0 07 35 */	extsh. r0, r29
/* 80357FA0 00354F00  40 81 00 0C */	ble lbl_80357FAC
/* 80357FA4 00354F04  7F 83 E3 78 */	mr r3, r28
/* 80357FA8 00354F08  4B FB D9 89 */	bl Free__7CMemoryFPCv
lbl_80357FAC:
/* 80357FAC 00354F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80357FB0 00354F10  7F 83 E3 78 */	mr r3, r28
/* 80357FB4 00354F14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80357FB8 00354F18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80357FBC 00354F1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80357FC0 00354F20  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80357FC4 00354F24  7C 08 03 A6 */	mtlr r0
/* 80357FC8 00354F28  38 21 00 20 */	addi r1, r1, 0x20
/* 80357FCC 00354F2C  4E 80 00 20 */	blr

.global sub_80357fd0
sub_80357fd0:
/* 80357FD0 00354F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80357FD4 00354F34  7C 08 02 A6 */	mflr r0
/* 80357FD8 00354F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357FDC 00354F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357FE0 00354F40  7C 7F 1B 78 */	mr r31, r3
/* 80357FE4 00354F44  C0 04 00 00 */	lfs f0, 0(r4)
/* 80357FE8 00354F48  D0 03 00 00 */	stfs f0, 0(r3)
/* 80357FEC 00354F4C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80357FF0 00354F50  C0 04 00 04 */	lfs f0, 4(r4)
/* 80357FF4 00354F54  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80357FF8 00354F58  C0 04 00 08 */	lfs f0, 8(r4)
/* 80357FFC 00354F5C  7C A4 2B 78 */	mr r4, r5
/* 80358000 00354F60  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80358004 00354F64  4B FF FD F5 */	bl sub_80357df8
/* 80358008 00354F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035800C 00354F6C  7F E3 FB 78 */	mr r3, r31
/* 80358010 00354F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358014 00354F74  7C 08 03 A6 */	mtlr r0
/* 80358018 00354F78  38 21 00 10 */	addi r1, r1, 0x10
/* 8035801C 00354F7C  4E 80 00 20 */	blr

.global sub_80358020
sub_80358020:
/* 80358020 00354F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358024 00354F84  7C 08 02 A6 */	mflr r0
/* 80358028 00354F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035802C 00354F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358030 00354F90  93 C1 00 08 */	stw r30, 8(r1)
/* 80358034 00354F94  7C 7E 1B 78 */	mr r30, r3
/* 80358038 00354F98  80 03 00 04 */	lwz r0, 4(r3)
/* 8035803C 00354F9C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80358040 00354FA0  7C 04 00 40 */	cmplw r4, r0
/* 80358044 00354FA4  40 82 00 08 */	bne lbl_8035804C
/* 80358048 00354FA8  93 FE 00 04 */	stw r31, 4(r30)
lbl_8035804C:
/* 8035804C 00354FAC  80 04 00 04 */	lwz r0, 4(r4)
/* 80358050 00354FB0  28 04 00 00 */	cmplwi r4, 0
/* 80358054 00354FB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80358058 00354FB8  90 03 00 04 */	stw r0, 4(r3)
/* 8035805C 00354FBC  80 04 00 00 */	lwz r0, 0(r4)
/* 80358060 00354FC0  80 64 00 04 */	lwz r3, 4(r4)
/* 80358064 00354FC4  90 03 00 00 */	stw r0, 0(r3)
/* 80358068 00354FC8  41 82 00 0C */	beq lbl_80358074
/* 8035806C 00354FCC  7C 83 23 78 */	mr r3, r4
/* 80358070 00354FD0  4B FB D8 C1 */	bl Free__7CMemoryFPCv
lbl_80358074:
/* 80358074 00354FD4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80358078 00354FD8  7F E3 FB 78 */	mr r3, r31
/* 8035807C 00354FDC  38 04 FF FF */	addi r0, r4, -1
/* 80358080 00354FE0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80358084 00354FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358088 00354FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035808C 00354FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358090 00354FF0  7C 08 03 A6 */	mtlr r0
/* 80358094 00354FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80358098 00354FF8  4E 80 00 20 */	blr

.global sub_8035809c
sub_8035809c:
/* 8035809C 00354FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803580A0 00355000  7C 08 02 A6 */	mflr r0
/* 803580A4 00355004  90 01 00 24 */	stw r0, 0x24(r1)
/* 803580A8 00355008  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803580AC 0035500C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803580B0 00355010  7C 9E 23 78 */	mr r30, r4
/* 803580B4 00355014  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803580B8 00355018  7C 7D 1B 79 */	or. r29, r3, r3
/* 803580BC 0035501C  41 82 00 38 */	beq lbl_803580F4
/* 803580C0 00355020  83 FD 00 04 */	lwz r31, 4(r29)
/* 803580C4 00355024  48 00 00 14 */	b lbl_803580D8
lbl_803580C8:
/* 803580C8 00355028  7F E3 FB 79 */	or. r3, r31, r31
/* 803580CC 0035502C  83 FF 00 04 */	lwz r31, 4(r31)
/* 803580D0 00355030  41 82 00 08 */	beq lbl_803580D8
/* 803580D4 00355034  4B FB D8 5D */	bl Free__7CMemoryFPCv
lbl_803580D8:
/* 803580D8 00355038  80 1D 00 08 */	lwz r0, 8(r29)
/* 803580DC 0035503C  7C 1F 00 40 */	cmplw r31, r0
/* 803580E0 00355040  40 82 FF E8 */	bne lbl_803580C8
/* 803580E4 00355044  7F C0 07 35 */	extsh. r0, r30
/* 803580E8 00355048  40 81 00 0C */	ble lbl_803580F4
/* 803580EC 0035504C  7F A3 EB 78 */	mr r3, r29
/* 803580F0 00355050  4B FB D8 41 */	bl Free__7CMemoryFPCv
lbl_803580F4:
/* 803580F4 00355054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803580F8 00355058  7F A3 EB 78 */	mr r3, r29
/* 803580FC 0035505C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358100 00355060  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358104 00355064  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358108 00355068  7C 08 03 A6 */	mtlr r0
/* 8035810C 0035506C  38 21 00 20 */	addi r1, r1, 0x20
/* 80358110 00355070  4E 80 00 20 */	blr

.global "reserve__Q24rstl105vector<Q24rstl61pair<9CVector3f,Q24rstl35list<Ui,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl105vector<Q24rstl61pair<9CVector3f,Q24rstl35list<Ui,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi":
/* 80358114 00355074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80358118 00355078  7C 08 02 A6 */	mflr r0
/* 8035811C 0035507C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80358120 00355080  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80358124 00355084  7C 9F 23 78 */	mr r31, r4
/* 80358128 00355088  7C 7E 1B 78 */	mr r30, r3
/* 8035812C 0035508C  80 03 00 08 */	lwz r0, 8(r3)
/* 80358130 00355090  7C 1F 00 00 */	cmpw r31, r0
/* 80358134 00355094  40 81 00 AC */	ble lbl_803581E0
/* 80358138 00355098  1C 7F 00 24 */	mulli r3, r31, 0x24
/* 8035813C 0035509C  2C 03 00 00 */	cmpwi r3, 0
/* 80358140 003550A0  40 82 00 0C */	bne lbl_8035814C
/* 80358144 003550A4  3B A0 00 00 */	li r29, 0
/* 80358148 003550A8  48 00 00 18 */	b lbl_80358160
lbl_8035814C:
/* 8035814C 003550AC  3C 80 80 3E */	lis r4, lbl_803D8330@ha
/* 80358150 003550B0  38 A0 00 00 */	li r5, 0
/* 80358154 003550B4  38 84 83 30 */	addi r4, r4, lbl_803D8330@l
/* 80358158 003550B8  4B FB D6 C1 */	bl __nwa__FUlPCcPCc
/* 8035815C 003550BC  7C 7D 1B 78 */	mr r29, r3
lbl_80358160:
/* 80358160 003550C0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80358164 003550C4  7F A5 EB 78 */	mr r5, r29
/* 80358168 003550C8  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8035816C 003550CC  38 61 00 14 */	addi r3, r1, 0x14
/* 80358170 003550D0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80358174 003550D4  38 81 00 0C */	addi r4, r1, 0xc
/* 80358178 003550D8  7C C6 02 14 */	add r6, r6, r0
/* 8035817C 003550DC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80358180 003550E0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80358184 003550E4  90 C1 00 08 */	stw r6, 8(r1)
/* 80358188 003550E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8035818C 003550EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358190 003550F0  48 00 00 65 */	bl sub_803581f4
/* 80358194 003550F4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80358198 003550F8  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 8035819C 003550FC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 803581A0 00355100  7F 9B 02 14 */	add r28, r27, r0
/* 803581A4 00355104  48 00 00 1C */	b lbl_803581C0
lbl_803581A8:
/* 803581A8 00355108  28 1B 00 00 */	cmplwi r27, 0
/* 803581AC 0035510C  41 82 00 10 */	beq lbl_803581BC
/* 803581B0 00355110  38 7B 00 0C */	addi r3, r27, 0xc
/* 803581B4 00355114  38 80 FF FF */	li r4, -1
/* 803581B8 00355118  4B FF FE E5 */	bl sub_8035809c
lbl_803581BC:
/* 803581BC 0035511C  3B 7B 00 24 */	addi r27, r27, 0x24
lbl_803581C0:
/* 803581C0 00355120  7C 1B E0 40 */	cmplw r27, r28
/* 803581C4 00355124  40 82 FF E4 */	bne lbl_803581A8
/* 803581C8 00355128  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803581CC 0035512C  28 03 00 00 */	cmplwi r3, 0
/* 803581D0 00355130  41 82 00 08 */	beq lbl_803581D8
/* 803581D4 00355134  4B FB D7 5D */	bl Free__7CMemoryFPCv
lbl_803581D8:
/* 803581D8 00355138  93 BE 00 0C */	stw r29, 0xc(r30)
/* 803581DC 0035513C  93 FE 00 08 */	stw r31, 8(r30)
lbl_803581E0:
/* 803581E0 00355140  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 803581E4 00355144  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803581E8 00355148  7C 08 03 A6 */	mtlr r0
/* 803581EC 0035514C  38 21 00 30 */	addi r1, r1, 0x30
/* 803581F0 00355150  4E 80 00 20 */	blr

.global sub_803581f4
sub_803581f4:
/* 803581F4 00355154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803581F8 00355158  7C 08 02 A6 */	mflr r0
/* 803581FC 0035515C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358200 00355160  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358204 00355164  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358208 00355168  7C BE 2B 78 */	mr r30, r5
/* 8035820C 0035516C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80358210 00355170  7C 9D 23 78 */	mr r29, r4
/* 80358214 00355174  83 E3 00 00 */	lwz r31, 0(r3)
/* 80358218 00355178  48 00 00 18 */	b lbl_80358230
lbl_8035821C:
/* 8035821C 0035517C  7F C3 F3 78 */	mr r3, r30
/* 80358220 00355180  7F E4 FB 78 */	mr r4, r31
/* 80358224 00355184  4B FF FB 59 */	bl sub_80357d7c
/* 80358228 00355188  3B DE 00 24 */	addi r30, r30, 0x24
/* 8035822C 0035518C  3B FF 00 24 */	addi r31, r31, 0x24
lbl_80358230:
/* 80358230 00355190  80 1D 00 00 */	lwz r0, 0(r29)
/* 80358234 00355194  7C 1F 00 40 */	cmplw r31, r0
/* 80358238 00355198  40 82 FF E4 */	bne lbl_8035821C
/* 8035823C 0035519C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358240 003551A0  7F C3 F3 78 */	mr r3, r30
/* 80358244 003551A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358248 003551A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035824C 003551AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358250 003551B0  7C 08 03 A6 */	mtlr r0
/* 80358254 003551B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80358258 003551B8  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE9F8
lbl_805AE9F8:
	# ROM: 0x3FB298
	.float 1.1920929E-7

.global lbl_805AE9FC
lbl_805AE9FC:
	# ROM: 0x3FB29C
	.4byte 0

