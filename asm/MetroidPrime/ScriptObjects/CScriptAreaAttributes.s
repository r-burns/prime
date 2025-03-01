.include "macros.inc"

.section .data
.balign 8

.global __vt__21CScriptAreaAttributes
__vt__21CScriptAreaAttributes:
	# ROM: 0x3E22F8
	.4byte 0
	.4byte 0
	.4byte __dt__21CScriptAreaAttributesFv
	.4byte Accept__21CScriptAreaAttributesFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__21CScriptAreaAttributesF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFUc

.section .text, "ax"

.global __dt__21CScriptAreaAttributesFv
__dt__21CScriptAreaAttributesFv:
/* 801BD448 001BA3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BD44C 001BA3AC  7C 08 02 A6 */	mflr r0
/* 801BD450 001BA3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BD454 001BA3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BD458 001BA3B8  7C 9F 23 78 */	mr r31, r4
/* 801BD45C 001BA3BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801BD460 001BA3C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801BD464 001BA3C4  41 82 00 28 */	beq lbl_801BD48C
/* 801BD468 001BA3C8  3C A0 80 3E */	lis r5, __vt__21CScriptAreaAttributes@ha
/* 801BD46C 001BA3CC  38 80 00 00 */	li r4, 0
/* 801BD470 001BA3D0  38 05 52 F8 */	addi r0, r5, __vt__21CScriptAreaAttributes@l
/* 801BD474 001BA3D4  90 1E 00 00 */	stw r0, 0(r30)
/* 801BD478 001BA3D8  4B E9 3D FD */	bl __dt__7CEntityFv
/* 801BD47C 001BA3DC  7F E0 07 35 */	extsh. r0, r31
/* 801BD480 001BA3E0  40 81 00 0C */	ble lbl_801BD48C
/* 801BD484 001BA3E4  7F C3 F3 78 */	mr r3, r30
/* 801BD488 001BA3E8  48 15 84 A9 */	bl Free__7CMemoryFPCv
lbl_801BD48C:
/* 801BD48C 001BA3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BD490 001BA3F0  7F C3 F3 78 */	mr r3, r30
/* 801BD494 001BA3F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BD498 001BA3F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BD49C 001BA3FC  7C 08 03 A6 */	mtlr r0
/* 801BD4A0 001BA400  38 21 00 10 */	addi r1, r1, 0x10
/* 801BD4A4 001BA404  4E 80 00 20 */	blr

.global Accept__21CScriptAreaAttributesFR8IVisitor
Accept__21CScriptAreaAttributesFR8IVisitor:
/* 801BD4A8 001BA408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BD4AC 001BA40C  7C 08 02 A6 */	mflr r0
/* 801BD4B0 001BA410  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BD4B4 001BA414  7C 60 1B 78 */	mr r0, r3
/* 801BD4B8 001BA418  7C 83 23 78 */	mr r3, r4
/* 801BD4BC 001BA41C  81 84 00 00 */	lwz r12, 0(r4)
/* 801BD4C0 001BA420  7C 04 03 78 */	mr r4, r0
/* 801BD4C4 001BA424  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BD4C8 001BA428  7D 89 03 A6 */	mtctr r12
/* 801BD4CC 001BA42C  4E 80 04 21 */	bctrl
/* 801BD4D0 001BA430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BD4D4 001BA434  7C 08 03 A6 */	mtlr r0
/* 801BD4D8 001BA438  38 21 00 10 */	addi r1, r1, 0x10
/* 801BD4DC 001BA43C  4E 80 00 20 */	blr

.global AcceptScriptMsg__21CScriptAreaAttributesF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__21CScriptAreaAttributesF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801BD4E0 001BA440  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BD4E4 001BA444  7C 08 02 A6 */	mflr r0
/* 801BD4E8 001BA448  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BD4EC 001BA44C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801BD4F0 001BA450  7C DF 33 78 */	mr r31, r6
/* 801BD4F4 001BA454  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801BD4F8 001BA458  7C 9E 23 78 */	mr r30, r4
/* 801BD4FC 001BA45C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801BD500 001BA460  7C 7D 1B 78 */	mr r29, r3
/* 801BD504 001BA464  A0 05 00 00 */	lhz r0, 0(r5)
/* 801BD508 001BA468  38 A1 00 08 */	addi r5, r1, 8
/* 801BD50C 001BA46C  B0 01 00 08 */	sth r0, 8(r1)
/* 801BD510 001BA470  4B E9 3C 4D */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801BD514 001BA474  80 BD 00 04 */	lwz r5, 4(r29)
/* 801BD518 001BA478  80 0D A3 90 */	lwz r0, kInvalidAreaId@sda21(r13)
/* 801BD51C 001BA47C  7C 05 00 00 */	cmpw r5, r0
/* 801BD520 001BA480  41 82 00 8C */	beq lbl_801BD5AC
/* 801BD524 001BA484  2C 1E 00 23 */	cmpwi r30, 0x23
/* 801BD528 001BA488  41 82 00 14 */	beq lbl_801BD53C
/* 801BD52C 001BA48C  40 80 00 80 */	bge lbl_801BD5AC
/* 801BD530 001BA490  2C 1E 00 22 */	cmpwi r30, 0x22
/* 801BD534 001BA494  40 80 00 40 */	bge lbl_801BD574
/* 801BD538 001BA498  48 00 00 74 */	b lbl_801BD5AC
lbl_801BD53C:
/* 801BD53C 001BA49C  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 801BD540 001BA4A0  54 A3 18 38 */	slwi r3, r5, 3
/* 801BD544 001BA4A4  38 03 00 04 */	addi r0, r3, 4
/* 801BD548 001BA4A8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801BD54C 001BA4AC  80 64 00 20 */	lwz r3, 0x20(r4)
/* 801BD550 001BA4B0  7F A4 EB 78 */	mr r4, r29
/* 801BD554 001BA4B4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801BD558 001BA4B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 801BD55C 001BA4BC  4B EA 0C B5 */	bl SetAreaAttributes__9CGameAreaFPC21CScriptAreaAttributes
/* 801BD560 001BA4C0  80 7F 08 80 */	lwz r3, 0x880(r31)
/* 801BD564 001BA4C4  38 80 01 F4 */	li r4, 0x1f4
/* 801BD568 001BA4C8  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 801BD56C 001BA4CC  48 05 29 F1 */	bl SetFxDensity__13CEnvFxManagerFif
/* 801BD570 001BA4D0  48 00 00 3C */	b lbl_801BD5AC
lbl_801BD574:
/* 801BD574 001BA4D4  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 801BD578 001BA4D8  54 A3 18 38 */	slwi r3, r5, 3
/* 801BD57C 001BA4DC  38 03 00 04 */	addi r0, r3, 4
/* 801BD580 001BA4E0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801BD584 001BA4E4  80 64 00 20 */	lwz r3, 0x20(r4)
/* 801BD588 001BA4E8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801BD58C 001BA4EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 801BD590 001BA4F0  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 801BD594 001BA4F4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801BD598 001BA4F8  41 82 00 14 */	beq lbl_801BD5AC
/* 801BD59C 001BA4FC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801BD5A0 001BA500  38 80 00 00 */	li r4, 0
/* 801BD5A4 001BA504  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801BD5A8 001BA508  4B EA 0C 69 */	bl SetAreaAttributes__9CGameAreaFPC21CScriptAreaAttributes
lbl_801BD5AC:
/* 801BD5AC 001BA50C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BD5B0 001BA510  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801BD5B4 001BA514  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801BD5B8 001BA518  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801BD5BC 001BA51C  7C 08 03 A6 */	mtlr r0
/* 801BD5C0 001BA520  38 21 00 40 */	addi r1, r1, 0x40
/* 801BD5C4 001BA524  4E 80 00 20 */	blr

.global __ct__21CScriptAreaAttributesF9TUniqueIdRC11CEntityInfob10EEnvFxTypeffffUi11EPhazonType
__ct__21CScriptAreaAttributesF9TUniqueIdRC11CEntityInfob10EEnvFxTypeffffUi11EPhazonType:
/* 801BD5C8 001BA528  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801BD5CC 001BA52C  7C 08 02 A6 */	mflr r0
/* 801BD5D0 001BA530  90 01 00 64 */	stw r0, 0x64(r1)
/* 801BD5D4 001BA534  39 61 00 60 */	addi r11, r1, 0x60
/* 801BD5D8 001BA538  48 1C C4 11 */	bl _savefpr_28
/* 801BD5DC 001BA53C  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 801BD5E0 001BA540  3D 40 80 3D */	lis r10, lbl_803D19F0@ha
/* 801BD5E4 001BA544  FF 80 08 90 */	fmr f28, f1
/* 801BD5E8 001BA548  FF A0 10 90 */	fmr f29, f2
/* 801BD5EC 001BA54C  38 0A 19 F0 */	addi r0, r10, lbl_803D19F0@l
/* 801BD5F0 001BA550  7C 79 1B 78 */	mr r25, r3
/* 801BD5F4 001BA554  7C 9A 23 78 */	mr r26, r4
/* 801BD5F8 001BA558  FF C0 18 90 */	fmr f30, f3
/* 801BD5FC 001BA55C  FF E0 20 90 */	fmr f31, f4
/* 801BD600 001BA560  7C BB 2B 78 */	mr r27, r5
/* 801BD604 001BA564  7C DC 33 78 */	mr r28, r6
/* 801BD608 001BA568  7C FD 3B 78 */	mr r29, r7
/* 801BD60C 001BA56C  7D 1E 43 78 */	mr r30, r8
/* 801BD610 001BA570  7D 3F 4B 78 */	mr r31, r9
/* 801BD614 001BA574  7C 04 03 78 */	mr r4, r0
/* 801BD618 001BA578  38 61 00 0C */	addi r3, r1, 0xc
/* 801BD61C 001BA57C  4B E4 76 9D */	bl string_l__4rstlFPCc
/* 801BD620 001BA580  A0 1A 00 00 */	lhz r0, 0(r26)
/* 801BD624 001BA584  7F 23 CB 78 */	mr r3, r25
/* 801BD628 001BA588  7F 65 DB 78 */	mr r5, r27
/* 801BD62C 001BA58C  38 81 00 08 */	addi r4, r1, 8
/* 801BD630 001BA590  B0 01 00 08 */	sth r0, 8(r1)
/* 801BD634 001BA594  38 E1 00 0C */	addi r7, r1, 0xc
/* 801BD638 001BA598  38 C0 00 01 */	li r6, 1
/* 801BD63C 001BA59C  4B E9 3C E9 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801BD640 001BA5A0  38 61 00 0C */	addi r3, r1, 0xc
/* 801BD644 001BA5A4  48 18 04 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801BD648 001BA5A8  3C 60 80 3E */	lis r3, __vt__21CScriptAreaAttributes@ha
/* 801BD64C 001BA5AC  39 61 00 60 */	addi r11, r1, 0x60
/* 801BD650 001BA5B0  38 03 52 F8 */	addi r0, r3, __vt__21CScriptAreaAttributes@l
/* 801BD654 001BA5B4  90 19 00 00 */	stw r0, 0(r25)
/* 801BD658 001BA5B8  7F 23 CB 78 */	mr r3, r25
/* 801BD65C 001BA5BC  88 19 00 34 */	lbz r0, 0x34(r25)
/* 801BD660 001BA5C0  53 80 3E 30 */	rlwimi r0, r28, 7, 0x18, 0x18
/* 801BD664 001BA5C4  98 19 00 34 */	stb r0, 0x34(r25)
/* 801BD668 001BA5C8  93 B9 00 38 */	stw r29, 0x38(r25)
/* 801BD66C 001BA5CC  D3 99 00 3C */	stfs f28, 0x3c(r25)
/* 801BD670 001BA5D0  D3 B9 00 40 */	stfs f29, 0x40(r25)
/* 801BD674 001BA5D4  D3 D9 00 44 */	stfs f30, 0x44(r25)
/* 801BD678 001BA5D8  D3 F9 00 48 */	stfs f31, 0x48(r25)
/* 801BD67C 001BA5DC  93 D9 00 4C */	stw r30, 0x4c(r25)
/* 801BD680 001BA5E0  93 F9 00 50 */	stw r31, 0x50(r25)
/* 801BD684 001BA5E4  48 1C C3 B1 */	bl _restfpr_28
/* 801BD688 001BA5E8  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 801BD68C 001BA5EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801BD690 001BA5F0  7C 08 03 A6 */	mtlr r0
/* 801BD694 001BA5F4  38 21 00 60 */	addi r1, r1, 0x60
/* 801BD698 001BA5F8  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D19F0
lbl_803D19F0:
	# ROM: 0x3CE9F0
	.4byte 0
	.4byte 0
