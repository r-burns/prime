.include "macros.inc"
    
.section .text, "ax"

.global __GBAHandler
__GBAHandler:
/* 803CAC08 003C7B68  7C 08 02 A6 */	mflr r0
/* 803CAC0C 003C7B6C  90 01 00 04 */	stw r0, 4(r1)
/* 803CAC10 003C7B70  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 803CAC14 003C7B74  93 E1 02 F4 */	stw r31, 0x2f4(r1)
/* 803CAC18 003C7B78  93 C1 02 F0 */	stw r30, 0x2f0(r1)
/* 803CAC1C 003C7B7C  3B C5 00 00 */	addi r30, r5, 0
/* 803CAC20 003C7B80  93 A1 02 EC */	stw r29, 0x2ec(r1)
/* 803CAC24 003C7B84  3B A3 00 00 */	addi r29, r3, 0
/* 803CAC28 003C7B88  3C 60 80 57 */	lis r3, __GBA@ha
/* 803CAC2C 003C7B8C  80 0D B1 58 */	lwz r0, __GBAReset@sda21(r13)
/* 803CAC30 003C7B90  57 A6 40 2E */	slwi r6, r29, 8
/* 803CAC34 003C7B94  2C 00 00 00 */	cmpwi r0, 0
/* 803CAC38 003C7B98  38 03 A1 A0 */	addi r0, r3, __GBA@l
/* 803CAC3C 003C7B9C  7F E0 32 14 */	add r31, r0, r6
/* 803CAC40 003C7BA0  40 82 00 88 */	bne lbl_803CACC8
/* 803CAC44 003C7BA4  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 803CAC48 003C7BA8  41 82 00 10 */	beq lbl_803CAC58
/* 803CAC4C 003C7BAC  38 00 00 01 */	li r0, 1
/* 803CAC50 003C7BB0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803CAC54 003C7BB4  48 00 00 0C */	b lbl_803CAC60
lbl_803CAC58:
/* 803CAC58 003C7BB8  38 00 00 00 */	li r0, 0
/* 803CAC5C 003C7BBC  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_803CAC60:
/* 803CAC60 003C7BC0  81 9F 00 38 */	lwz r12, 0x38(r31)
/* 803CAC64 003C7BC4  28 0C 00 00 */	cmplwi r12, 0
/* 803CAC68 003C7BC8  41 82 00 18 */	beq lbl_803CAC80
/* 803CAC6C 003C7BCC  38 00 00 00 */	li r0, 0
/* 803CAC70 003C7BD0  7D 88 03 A6 */	mtlr r12
/* 803CAC74 003C7BD4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 803CAC78 003C7BD8  7F A3 EB 78 */	mr r3, r29
/* 803CAC7C 003C7BDC  4E 80 00 21 */	blrl 
lbl_803CAC80:
/* 803CAC80 003C7BE0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803CAC84 003C7BE4  28 00 00 00 */	cmplwi r0, 0
/* 803CAC88 003C7BE8  41 82 00 40 */	beq lbl_803CACC8
/* 803CAC8C 003C7BEC  38 61 00 18 */	addi r3, r1, 0x18
/* 803CAC90 003C7BF0  4B FB 49 85 */	bl OSClearContext
/* 803CAC94 003C7BF4  38 61 00 18 */	addi r3, r1, 0x18
/* 803CAC98 003C7BF8  4B FB 47 85 */	bl OSSetCurrentContext
/* 803CAC9C 003C7BFC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 803CACA0 003C7C00  38 00 00 00 */	li r0, 0
/* 803CACA4 003C7C04  38 7D 00 00 */	addi r3, r29, 0
/* 803CACA8 003C7C08  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803CACAC 003C7C0C  7D 88 03 A6 */	mtlr r12
/* 803CACB0 003C7C10  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 803CACB4 003C7C14  4E 80 00 21 */	blrl 
/* 803CACB8 003C7C18  38 61 00 18 */	addi r3, r1, 0x18
/* 803CACBC 003C7C1C  4B FB 49 59 */	bl OSClearContext
/* 803CACC0 003C7C20  7F C3 F3 78 */	mr r3, r30
/* 803CACC4 003C7C24  4B FB 47 59 */	bl OSSetCurrentContext
lbl_803CACC8:
/* 803CACC8 003C7C28  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 803CACCC 003C7C2C  83 E1 02 F4 */	lwz r31, 0x2f4(r1)
/* 803CACD0 003C7C30  83 C1 02 F0 */	lwz r30, 0x2f0(r1)
/* 803CACD4 003C7C34  83 A1 02 EC */	lwz r29, 0x2ec(r1)
/* 803CACD8 003C7C38  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 803CACDC 003C7C3C  7C 08 03 A6 */	mtlr r0
/* 803CACE0 003C7C40  4E 80 00 20 */	blr 

.global __GBASyncCallback
__GBASyncCallback:
/* 803CACE4 003C7C44  7C 08 02 A6 */	mflr r0
/* 803CACE8 003C7C48  3C 80 80 57 */	lis r4, __GBA@ha
/* 803CACEC 003C7C4C  90 01 00 04 */	stw r0, 4(r1)
/* 803CACF0 003C7C50  54 63 40 2E */	slwi r3, r3, 8
/* 803CACF4 003C7C54  38 04 A1 A0 */	addi r0, r4, __GBA@l
/* 803CACF8 003C7C58  7C 60 1A 14 */	add r3, r0, r3
/* 803CACFC 003C7C5C  94 21 FF F8 */	stwu r1, -8(r1)
/* 803CAD00 003C7C60  38 63 00 24 */	addi r3, r3, 0x24
/* 803CAD04 003C7C64  4B FB A4 F5 */	bl OSWakeupThread
/* 803CAD08 003C7C68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CAD0C 003C7C6C  38 21 00 08 */	addi r1, r1, 8
/* 803CAD10 003C7C70  7C 08 03 A6 */	mtlr r0
/* 803CAD14 003C7C74  4E 80 00 20 */	blr 

.global __GBASync
__GBASync:
/* 803CAD18 003C7C78  7C 08 02 A6 */	mflr r0
/* 803CAD1C 003C7C7C  3C 80 80 57 */	lis r4, __GBA@ha
/* 803CAD20 003C7C80  90 01 00 04 */	stw r0, 4(r1)
/* 803CAD24 003C7C84  54 63 40 2E */	slwi r3, r3, 8
/* 803CAD28 003C7C88  38 04 A1 A0 */	addi r0, r4, __GBA@l
/* 803CAD2C 003C7C8C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803CAD30 003C7C90  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803CAD34 003C7C94  7F E0 1A 14 */	add r31, r0, r3
/* 803CAD38 003C7C98  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803CAD3C 003C7C9C  4B FB 69 25 */	bl OSDisableInterrupts
/* 803CAD40 003C7CA0  7C 7E 1B 78 */	mr r30, r3
/* 803CAD44 003C7CA4  48 00 00 0C */	b lbl_803CAD50
lbl_803CAD48:
/* 803CAD48 003C7CA8  38 7F 00 24 */	addi r3, r31, 0x24
/* 803CAD4C 003C7CAC  4B FB A3 C1 */	bl OSSleepThread
lbl_803CAD50:
/* 803CAD50 003C7CB0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803CAD54 003C7CB4  28 00 00 00 */	cmplwi r0, 0
/* 803CAD58 003C7CB8  40 82 FF F0 */	bne lbl_803CAD48
/* 803CAD5C 003C7CBC  83 FF 00 20 */	lwz r31, 0x20(r31)
/* 803CAD60 003C7CC0  7F C3 F3 78 */	mr r3, r30
/* 803CAD64 003C7CC4  4B FB 69 25 */	bl OSRestoreInterrupts
/* 803CAD68 003C7CC8  7F E3 FB 78 */	mr r3, r31
/* 803CAD6C 003C7CCC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803CAD70 003C7CD0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803CAD74 003C7CD4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803CAD78 003C7CD8  38 21 00 18 */	addi r1, r1, 0x18
/* 803CAD7C 003C7CDC  7C 08 03 A6 */	mtlr r0
/* 803CAD80 003C7CE0  4E 80 00 20 */	blr 

.global TypeAndStatusCallback
TypeAndStatusCallback:
/* 803CAD84 003C7CE4  7C 08 02 A6 */	mflr r0
/* 803CAD88 003C7CE8  90 01 00 04 */	stw r0, 4(r1)
/* 803CAD8C 003C7CEC  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 803CAD90 003C7CF0  93 E1 02 EC */	stw r31, 0x2ec(r1)
/* 803CAD94 003C7CF4  3B E3 00 00 */	addi r31, r3, 0
/* 803CAD98 003C7CF8  3C 60 80 57 */	lis r3, __GBA@ha
/* 803CAD9C 003C7CFC  93 C1 02 E8 */	stw r30, 0x2e8(r1)
/* 803CADA0 003C7D00  57 E5 40 2E */	slwi r5, r31, 8
/* 803CADA4 003C7D04  93 A1 02 E4 */	stw r29, 0x2e4(r1)
/* 803CADA8 003C7D08  80 0D B1 58 */	lwz r0, __GBAReset@sda21(r13)
/* 803CADAC 003C7D0C  2C 00 00 00 */	cmpwi r0, 0
/* 803CADB0 003C7D10  38 03 A1 A0 */	addi r0, r3, __GBA@l
/* 803CADB4 003C7D14  7F C0 2A 14 */	add r30, r0, r5
/* 803CADB8 003C7D18  40 82 00 D4 */	bne lbl_803CAE8C
/* 803CADBC 003C7D1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 803CADC0 003C7D20  40 82 00 14 */	bne lbl_803CADD4
/* 803CADC4 003C7D24  54 83 00 1E */	rlwinm r3, r4, 0, 0, 0xf
/* 803CADC8 003C7D28  3C 03 FF FC */	addis r0, r3, 0xfffc
/* 803CADCC 003C7D2C  28 00 00 00 */	cmplwi r0, 0
/* 803CADD0 003C7D30  41 82 00 10 */	beq lbl_803CADE0
lbl_803CADD4:
/* 803CADD4 003C7D34  38 00 00 01 */	li r0, 1
/* 803CADD8 003C7D38  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803CADDC 003C7D3C  48 00 00 3C */	b lbl_803CAE18
lbl_803CADE0:
/* 803CADE0 003C7D40  3C 60 80 3D */	lis r3, __GBAHandler@ha
/* 803CADE4 003C7D44  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 803CADE8 003C7D48  39 03 AC 08 */	addi r8, r3, __GBAHandler@l
/* 803CADEC 003C7D4C  80 FE 00 10 */	lwz r7, 0x10(r30)
/* 803CADF0 003C7D50  81 3E 00 30 */	lwz r9, 0x30(r30)
/* 803CADF4 003C7D54  7F E3 FB 78 */	mr r3, r31
/* 803CADF8 003C7D58  81 5E 00 34 */	lwz r10, 0x34(r30)
/* 803CADFC 003C7D5C  38 9E 00 00 */	addi r4, r30, 0
/* 803CAE00 003C7D60  38 DE 00 05 */	addi r6, r30, 5
/* 803CAE04 003C7D64  4B FF 48 95 */	bl SITransfer
/* 803CAE08 003C7D68  2C 03 00 00 */	cmpwi r3, 0
/* 803CAE0C 003C7D6C  40 82 00 80 */	bne lbl_803CAE8C
/* 803CAE10 003C7D70  38 00 00 02 */	li r0, 2
/* 803CAE14 003C7D74  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_803CAE18:
/* 803CAE18 003C7D78  81 9E 00 38 */	lwz r12, 0x38(r30)
/* 803CAE1C 003C7D7C  28 0C 00 00 */	cmplwi r12, 0
/* 803CAE20 003C7D80  41 82 00 18 */	beq lbl_803CAE38
/* 803CAE24 003C7D84  38 00 00 00 */	li r0, 0
/* 803CAE28 003C7D88  7D 88 03 A6 */	mtlr r12
/* 803CAE2C 003C7D8C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 803CAE30 003C7D90  7F E3 FB 78 */	mr r3, r31
/* 803CAE34 003C7D94  4E 80 00 21 */	blrl 
lbl_803CAE38:
/* 803CAE38 003C7D98  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 803CAE3C 003C7D9C  28 00 00 00 */	cmplwi r0, 0
/* 803CAE40 003C7DA0  41 82 00 4C */	beq lbl_803CAE8C
/* 803CAE44 003C7DA4  4B FB 46 35 */	bl OSGetCurrentContext
/* 803CAE48 003C7DA8  3B A3 00 00 */	addi r29, r3, 0
/* 803CAE4C 003C7DAC  38 61 00 10 */	addi r3, r1, 0x10
/* 803CAE50 003C7DB0  4B FB 47 C5 */	bl OSClearContext
/* 803CAE54 003C7DB4  38 61 00 10 */	addi r3, r1, 0x10
/* 803CAE58 003C7DB8  4B FB 45 C5 */	bl OSSetCurrentContext
/* 803CAE5C 003C7DBC  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 803CAE60 003C7DC0  38 00 00 00 */	li r0, 0
/* 803CAE64 003C7DC4  38 7F 00 00 */	addi r3, r31, 0
/* 803CAE68 003C7DC8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 803CAE6C 003C7DCC  7D 88 03 A6 */	mtlr r12
/* 803CAE70 003C7DD0  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 803CAE74 003C7DD4  4E 80 00 21 */	blrl 
/* 803CAE78 003C7DD8  38 61 00 10 */	addi r3, r1, 0x10
/* 803CAE7C 003C7DDC  4B FB 47 99 */	bl OSClearContext
/* 803CAE80 003C7DE0  7F A3 EB 78 */	mr r3, r29
/* 803CAE84 003C7DE4  4B FB 45 99 */	bl OSSetCurrentContext
/* 803CAE88 003C7DE8  4B FB 9C 65 */	bl __OSReschedule
lbl_803CAE8C:
/* 803CAE8C 003C7DEC  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 803CAE90 003C7DF0  83 E1 02 EC */	lwz r31, 0x2ec(r1)
/* 803CAE94 003C7DF4  83 C1 02 E8 */	lwz r30, 0x2e8(r1)
/* 803CAE98 003C7DF8  83 A1 02 E4 */	lwz r29, 0x2e4(r1)
/* 803CAE9C 003C7DFC  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 803CAEA0 003C7E00  7C 08 03 A6 */	mtlr r0
/* 803CAEA4 003C7E04  4E 80 00 20 */	blr 

.global __GBATransfer
__GBATransfer:
/* 803CAEA8 003C7E08  7C 08 02 A6 */	mflr r0
/* 803CAEAC 003C7E0C  90 01 00 04 */	stw r0, 4(r1)
/* 803CAEB0 003C7E10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CAEB4 003C7E14  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 803CAEB8 003C7E18  3B 63 00 00 */	addi r27, r3, 0
/* 803CAEBC 003C7E1C  3C 60 80 57 */	lis r3, __GBA@ha
/* 803CAEC0 003C7E20  57 67 40 2E */	slwi r7, r27, 8
/* 803CAEC4 003C7E24  38 03 A1 A0 */	addi r0, r3, __GBA@l
/* 803CAEC8 003C7E28  3B 84 00 00 */	addi r28, r4, 0
/* 803CAECC 003C7E2C  3B A5 00 00 */	addi r29, r5, 0
/* 803CAED0 003C7E30  3B E6 00 00 */	addi r31, r6, 0
/* 803CAED4 003C7E34  7F C0 3A 14 */	add r30, r0, r7
/* 803CAED8 003C7E38  4B FB 67 89 */	bl OSDisableInterrupts
/* 803CAEDC 003C7E3C  93 FE 00 38 */	stw r31, 0x38(r30)
/* 803CAEE0 003C7E40  3C 80 80 3D */	lis r4, TypeAndStatusCallback@ha
/* 803CAEE4 003C7E44  3B E3 00 00 */	addi r31, r3, 0
/* 803CAEE8 003C7E48  93 9E 00 0C */	stw r28, 0xc(r30)
/* 803CAEEC 003C7E4C  38 84 AD 84 */	addi r4, r4, TypeAndStatusCallback@l
/* 803CAEF0 003C7E50  7F 63 DB 78 */	mr r3, r27
/* 803CAEF4 003C7E54  93 BE 00 10 */	stw r29, 0x10(r30)
/* 803CAEF8 003C7E58  4B FF 4D 69 */	bl SIGetTypeAsync
/* 803CAEFC 003C7E5C  7F E3 FB 78 */	mr r3, r31
/* 803CAF00 003C7E60  4B FB 67 89 */	bl OSRestoreInterrupts
/* 803CAF04 003C7E64  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 803CAF08 003C7E68  38 60 00 00 */	li r3, 0
/* 803CAF0C 003C7E6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CAF10 003C7E70  38 21 00 30 */	addi r1, r1, 0x30
/* 803CAF14 003C7E74  7C 08 03 A6 */	mtlr r0
/* 803CAF18 003C7E78  4E 80 00 20 */	blr 
