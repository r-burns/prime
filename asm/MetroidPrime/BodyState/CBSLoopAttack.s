.include "macros.inc"

.section .data

.global lbl_803E17C8
lbl_803E17C8:
	# ROM: 0x3DE7C8
	.4byte 0
	.4byte 0
	.4byte __dt__13CBSLoopAttackFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLoopAttackCFv
	.4byte Start__13CBSLoopAttackFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__13CBSLoopAttackFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLoopAttackFR15CBodyController

.section .text, "ax"

.global __dt__13CBSLoopAttackFv
__dt__13CBSLoopAttackFv:
/* 8013AECC 00137E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013AED0 00137E30  7C 08 02 A6 */	mflr r0
/* 8013AED4 00137E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AED8 00137E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AEDC 00137E3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8013AEE0 00137E40  41 82 00 30 */	beq lbl_8013AF10
/* 8013AEE4 00137E44  3C 60 80 3E */	lis r3, lbl_803E17C8@ha
/* 8013AEE8 00137E48  38 03 17 C8 */	addi r0, r3, lbl_803E17C8@l
/* 8013AEEC 00137E4C  90 1F 00 00 */	stw r0, 0(r31)
/* 8013AEF0 00137E50  41 82 00 10 */	beq lbl_8013AF00
/* 8013AEF4 00137E54  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 8013AEF8 00137E58  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 8013AEFC 00137E5C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8013AF00:
/* 8013AF00 00137E60  7C 80 07 35 */	extsh. r0, r4
/* 8013AF04 00137E64  40 81 00 0C */	ble lbl_8013AF10
/* 8013AF08 00137E68  7F E3 FB 78 */	mr r3, r31
/* 8013AF0C 00137E6C  48 1D AA 25 */	bl Free__7CMemoryFPCv
lbl_8013AF10:
/* 8013AF10 00137E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013AF14 00137E74  7F E3 FB 78 */	mr r3, r31
/* 8013AF18 00137E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013AF1C 00137E7C  7C 08 03 A6 */	mtlr r0
/* 8013AF20 00137E80  38 21 00 10 */	addi r1, r1, 0x10
/* 8013AF24 00137E84  4E 80 00 20 */	blr

.global CanShoot__13CBSLoopAttackCFv
CanShoot__13CBSLoopAttackCFv:
/* 8013AF28 00137E88  38 60 00 01 */	li r3, 1
/* 8013AF2C 00137E8C  4E 80 00 20 */	blr

.global GetBodyStateTransition__13CBSLoopAttackFfR15CBodyController
GetBodyStateTransition__13CBSLoopAttackFfR15CBodyController:
/* 8013AF30 00137E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013AF34 00137E94  7C 08 02 A6 */	mflr r0
/* 8013AF38 00137E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AF3C 00137E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AF40 00137EA0  3B E4 00 04 */	addi r31, r4, 4
/* 8013AF44 00137EA4  38 80 00 0F */	li r4, 0xf
/* 8013AF48 00137EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8013AF4C 00137EAC  7C 7E 1B 78 */	mr r30, r3
/* 8013AF50 00137EB0  7F E3 FB 78 */	mr r3, r31
/* 8013AF54 00137EB4  4B FF 64 FD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AF58 00137EB8  28 03 00 00 */	cmplwi r3, 0
/* 8013AF5C 00137EBC  41 82 00 0C */	beq lbl_8013AF68
/* 8013AF60 00137EC0  38 60 00 0E */	li r3, 0xe
/* 8013AF64 00137EC4  48 00 01 74 */	b lbl_8013B0D8
lbl_8013AF68:
/* 8013AF68 00137EC8  7F E3 FB 78 */	mr r3, r31
/* 8013AF6C 00137ECC  38 80 00 03 */	li r4, 3
/* 8013AF70 00137ED0  4B FF 64 E1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AF74 00137ED4  28 03 00 00 */	cmplwi r3, 0
/* 8013AF78 00137ED8  41 82 00 0C */	beq lbl_8013AF84
/* 8013AF7C 00137EDC  38 60 00 00 */	li r3, 0
/* 8013AF80 00137EE0  48 00 01 58 */	b lbl_8013B0D8
lbl_8013AF84:
/* 8013AF84 00137EE4  7F E3 FB 78 */	mr r3, r31
/* 8013AF88 00137EE8  38 80 00 09 */	li r4, 9
/* 8013AF8C 00137EEC  4B FF 64 C5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AF90 00137EF0  28 03 00 00 */	cmplwi r3, 0
/* 8013AF94 00137EF4  41 82 00 0C */	beq lbl_8013AFA0
/* 8013AF98 00137EF8  38 60 00 0A */	li r3, 0xa
/* 8013AF9C 00137EFC  48 00 01 3C */	b lbl_8013B0D8
lbl_8013AFA0:
/* 8013AFA0 00137F00  7F E3 FB 78 */	mr r3, r31
/* 8013AFA4 00137F04  38 80 00 04 */	li r4, 4
/* 8013AFA8 00137F08  4B FF 64 A9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AFAC 00137F0C  28 03 00 00 */	cmplwi r3, 0
/* 8013AFB0 00137F10  41 82 00 0C */	beq lbl_8013AFBC
/* 8013AFB4 00137F14  38 60 00 06 */	li r3, 6
/* 8013AFB8 00137F18  48 00 01 20 */	b lbl_8013B0D8
lbl_8013AFBC:
/* 8013AFBC 00137F1C  7F E3 FB 78 */	mr r3, r31
/* 8013AFC0 00137F20  38 80 00 16 */	li r4, 0x16
/* 8013AFC4 00137F24  4B FF 64 8D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AFC8 00137F28  28 03 00 00 */	cmplwi r3, 0
/* 8013AFCC 00137F2C  41 82 00 0C */	beq lbl_8013AFD8
/* 8013AFD0 00137F30  38 60 00 05 */	li r3, 5
/* 8013AFD4 00137F34  48 00 01 04 */	b lbl_8013B0D8
lbl_8013AFD8:
/* 8013AFD8 00137F38  80 1E 00 04 */	lwz r0, 4(r30)
/* 8013AFDC 00137F3C  2C 00 00 02 */	cmpwi r0, 2
/* 8013AFE0 00137F40  40 82 00 F4 */	bne lbl_8013B0D4
/* 8013AFE4 00137F44  7F E3 FB 78 */	mr r3, r31
/* 8013AFE8 00137F48  38 80 00 05 */	li r4, 5
/* 8013AFEC 00137F4C  4B FF 64 65 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013AFF0 00137F50  28 03 00 00 */	cmplwi r3, 0
/* 8013AFF4 00137F54  41 82 00 0C */	beq lbl_8013B000
/* 8013AFF8 00137F58  38 60 00 07 */	li r3, 7
/* 8013AFFC 00137F5C  48 00 00 DC */	b lbl_8013B0D8
lbl_8013B000:
/* 8013B000 00137F60  7F E3 FB 78 */	mr r3, r31
/* 8013B004 00137F64  38 80 00 06 */	li r4, 6
/* 8013B008 00137F68  4B FF 64 49 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013B00C 00137F6C  28 03 00 00 */	cmplwi r3, 0
/* 8013B010 00137F70  41 82 00 0C */	beq lbl_8013B01C
/* 8013B014 00137F74  38 60 00 12 */	li r3, 0x12
/* 8013B018 00137F78  48 00 00 C0 */	b lbl_8013B0D8
lbl_8013B01C:
/* 8013B01C 00137F7C  7F E3 FB 78 */	mr r3, r31
/* 8013B020 00137F80  38 80 00 07 */	li r4, 7
/* 8013B024 00137F84  4B FF 64 2D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013B028 00137F88  28 03 00 00 */	cmplwi r3, 0
/* 8013B02C 00137F8C  41 82 00 0C */	beq lbl_8013B038
/* 8013B030 00137F90  38 60 00 09 */	li r3, 9
/* 8013B034 00137F94  48 00 00 A4 */	b lbl_8013B0D8
lbl_8013B038:
/* 8013B038 00137F98  7F E3 FB 78 */	mr r3, r31
/* 8013B03C 00137F9C  38 80 00 01 */	li r4, 1
/* 8013B040 00137FA0  4B FF 64 11 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013B044 00137FA4  28 03 00 00 */	cmplwi r3, 0
/* 8013B048 00137FA8  41 82 00 0C */	beq lbl_8013B054
/* 8013B04C 00137FAC  38 60 00 03 */	li r3, 3
/* 8013B050 00137FB0  48 00 00 88 */	b lbl_8013B0D8
lbl_8013B054:
/* 8013B054 00137FB4  C0 22 9A 88 */	lfs f1, lbl_805AB7A8@sda21(r2)
/* 8013B058 00137FB8  38 00 00 00 */	li r0, 0
/* 8013B05C 00137FBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8013B060 00137FC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B064 00137FC4  40 82 00 1C */	bne lbl_8013B080
/* 8013B068 00137FC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8013B06C 00137FCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B070 00137FD0  40 82 00 10 */	bne lbl_8013B080
/* 8013B074 00137FD4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8013B078 00137FD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B07C 00137FDC  41 82 00 08 */	beq lbl_8013B084
lbl_8013B080:
/* 8013B080 00137FE0  38 00 00 01 */	li r0, 1
lbl_8013B084:
/* 8013B084 00137FE4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013B088 00137FE8  41 82 00 0C */	beq lbl_8013B094
/* 8013B08C 00137FEC  38 60 00 05 */	li r3, 5
/* 8013B090 00137FF0  48 00 00 48 */	b lbl_8013B0D8
lbl_8013B094:
/* 8013B094 00137FF4  C0 22 9A 88 */	lfs f1, lbl_805AB7A8@sda21(r2)
/* 8013B098 00137FF8  38 00 00 00 */	li r0, 0
/* 8013B09C 00137FFC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8013B0A0 00138000  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B0A4 00138004  40 82 00 1C */	bne lbl_8013B0C0
/* 8013B0A8 00138008  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8013B0AC 0013800C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B0B0 00138010  40 82 00 10 */	bne lbl_8013B0C0
/* 8013B0B4 00138014  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8013B0B8 00138018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B0BC 0013801C  41 82 00 08 */	beq lbl_8013B0C4
lbl_8013B0C0:
/* 8013B0C0 00138020  38 00 00 01 */	li r0, 1
lbl_8013B0C4:
/* 8013B0C4 00138024  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013B0C8 00138028  41 82 00 0C */	beq lbl_8013B0D4
/* 8013B0CC 0013802C  38 60 00 08 */	li r3, 8
/* 8013B0D0 00138030  48 00 00 08 */	b lbl_8013B0D8
lbl_8013B0D4:
/* 8013B0D4 00138034  38 60 FF FF */	li r3, -1
lbl_8013B0D8:
/* 8013B0D8 00138038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013B0DC 0013803C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013B0E0 00138040  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013B0E4 00138044  7C 08 03 A6 */	mtlr r0
/* 8013B0E8 00138048  38 21 00 10 */	addi r1, r1, 0x10
/* 8013B0EC 0013804C  4E 80 00 20 */	blr

.global Shutdown__13CBSLoopAttackFR15CBodyController
Shutdown__13CBSLoopAttackFR15CBodyController:
/* 8013B0F0 00138050  4E 80 00 20 */	blr

.global UpdateBody__13CBSLoopAttackFfR15CBodyControllerR13CStateManager
UpdateBody__13CBSLoopAttackFfR15CBodyControllerR13CStateManager:
/* 8013B0F4 00138054  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8013B0F8 00138058  7C 08 02 A6 */	mflr r0
/* 8013B0FC 0013805C  90 01 01 54 */	stw r0, 0x154(r1)
/* 8013B100 00138060  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8013B104 00138064  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 8013B108 00138068  BF 61 01 2C */	stmw r27, 0x12c(r1)
/* 8013B10C 0013806C  FF E0 08 90 */	fmr f31, f1
/* 8013B110 00138070  7C 7B 1B 78 */	mr r27, r3
/* 8013B114 00138074  7C 9C 23 78 */	mr r28, r4
/* 8013B118 00138078  7C BD 2B 78 */	mr r29, r5
/* 8013B11C 0013807C  4B FF FE 15 */	bl GetBodyStateTransition__13CBSLoopAttackFfR15CBodyController
/* 8013B120 00138080  7C 7E 1B 78 */	mr r30, r3
/* 8013B124 00138084  2C 1E FF FF */	cmpwi r30, -1
/* 8013B128 00138088  40 82 03 24 */	bne lbl_8013B44C
/* 8013B12C 0013808C  3B FC 00 04 */	addi r31, r28, 4
/* 8013B130 00138090  38 80 00 0A */	li r4, 0xa
/* 8013B134 00138094  7F E3 FB 78 */	mr r3, r31
/* 8013B138 00138098  4B FF 63 19 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013B13C 0013809C  7C 03 00 D0 */	neg r0, r3
/* 8013B140 001380A0  88 9B 00 0C */	lbz r4, 0xc(r27)
/* 8013B144 001380A4  7C 03 1B 78 */	or r3, r0, r3
/* 8013B148 001380A8  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 8013B14C 001380AC  54 65 0F FE */	srwi r5, r3, 0x1f
/* 8013B150 001380B0  54 83 D7 FE */	rlwinm r3, r4, 0x1a, 0x1f, 0x1f
/* 8013B154 001380B4  7C 63 2B 78 */	or r3, r3, r5
/* 8013B158 001380B8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8013B15C 001380BC  98 1B 00 0C */	stb r0, 0xc(r27)
/* 8013B160 001380C0  80 1B 00 04 */	lwz r0, 4(r27)
/* 8013B164 001380C4  2C 00 00 01 */	cmpwi r0, 1
/* 8013B168 001380C8  41 82 01 9C */	beq lbl_8013B304
/* 8013B16C 001380CC  40 80 00 10 */	bge lbl_8013B17C
/* 8013B170 001380D0  2C 00 00 00 */	cmpwi r0, 0
/* 8013B174 001380D4  40 80 00 14 */	bge lbl_8013B188
/* 8013B178 001380D8  48 00 02 D4 */	b lbl_8013B44C
lbl_8013B17C:
/* 8013B17C 001380DC  2C 00 00 03 */	cmpwi r0, 3
/* 8013B180 001380E0  40 80 02 CC */	bge lbl_8013B44C
/* 8013B184 001380E4  48 00 02 B0 */	b lbl_8013B434
lbl_8013B188:
/* 8013B188 001380E8  88 7B 00 0C */	lbz r3, 0xc(r27)
/* 8013B18C 001380EC  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8013B190 001380F0  41 82 00 28 */	beq lbl_8013B1B8
/* 8013B194 001380F4  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8013B198 001380F8  41 82 00 10 */	beq lbl_8013B1A8
/* 8013B19C 001380FC  88 1C 03 00 */	lbz r0, 0x300(r28)
/* 8013B1A0 00138100  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013B1A4 00138104  41 82 00 14 */	beq lbl_8013B1B8
lbl_8013B1A8:
/* 8013B1A8 00138108  38 00 FF FF */	li r0, -1
/* 8013B1AC 0013810C  3B C0 00 05 */	li r30, 5
/* 8013B1B0 00138110  90 1B 00 04 */	stw r0, 4(r27)
/* 8013B1B4 00138114  48 00 02 98 */	b lbl_8013B44C
lbl_8013B1B8:
/* 8013B1B8 00138118  88 1C 03 00 */	lbz r0, 0x300(r28)
/* 8013B1BC 0013811C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013B1C0 00138120  41 82 00 F8 */	beq lbl_8013B2B8
/* 8013B1C4 00138124  38 61 00 50 */	addi r3, r1, 0x50
/* 8013B1C8 00138128  48 1A 7E B5 */	bl NoParameter__12CPASAnimParmFv
/* 8013B1CC 0013812C  38 61 00 58 */	addi r3, r1, 0x58
/* 8013B1D0 00138130  48 1A 7E AD */	bl NoParameter__12CPASAnimParmFv
/* 8013B1D4 00138134  38 61 00 60 */	addi r3, r1, 0x60
/* 8013B1D8 00138138  48 1A 7E A5 */	bl NoParameter__12CPASAnimParmFv
/* 8013B1DC 0013813C  38 61 00 68 */	addi r3, r1, 0x68
/* 8013B1E0 00138140  48 1A 7E 9D */	bl NoParameter__12CPASAnimParmFv
/* 8013B1E4 00138144  38 61 00 70 */	addi r3, r1, 0x70
/* 8013B1E8 00138148  48 1A 7E 95 */	bl NoParameter__12CPASAnimParmFv
/* 8013B1EC 0013814C  38 61 00 78 */	addi r3, r1, 0x78
/* 8013B1F0 00138150  48 1A 7E 8D */	bl NoParameter__12CPASAnimParmFv
/* 8013B1F4 00138154  80 9B 00 08 */	lwz r4, 8(r27)
/* 8013B1F8 00138158  38 61 00 80 */	addi r3, r1, 0x80
/* 8013B1FC 0013815C  48 1A 7D 89 */	bl FromEnum__12CPASAnimParmFi
/* 8013B200 00138160  38 61 00 88 */	addi r3, r1, 0x88
/* 8013B204 00138164  38 80 00 01 */	li r4, 1
/* 8013B208 00138168  48 1A 7D 7D */	bl FromEnum__12CPASAnimParmFi
/* 8013B20C 0013816C  38 61 00 58 */	addi r3, r1, 0x58
/* 8013B210 00138170  38 01 00 50 */	addi r0, r1, 0x50
/* 8013B214 00138174  90 61 00 08 */	stw r3, 8(r1)
/* 8013B218 00138178  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8013B21C 0013817C  38 A1 00 88 */	addi r5, r1, 0x88
/* 8013B220 00138180  38 C1 00 80 */	addi r6, r1, 0x80
/* 8013B224 00138184  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013B228 00138188  38 E1 00 78 */	addi r7, r1, 0x78
/* 8013B22C 0013818C  39 01 00 70 */	addi r8, r1, 0x70
/* 8013B230 00138190  39 21 00 68 */	addi r9, r1, 0x68
/* 8013B234 00138194  39 41 00 60 */	addi r10, r1, 0x60
/* 8013B238 00138198  38 80 00 09 */	li r4, 9
/* 8013B23C 0013819C  4B F4 20 89 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013B240 001381A0  80 BD 09 00 */	lwz r5, 0x900(r29)
/* 8013B244 001381A4  7F 83 E3 78 */	mr r3, r28
/* 8013B248 001381A8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8013B24C 001381AC  4B FF F0 B1 */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013B250 001381B0  38 00 00 01 */	li r0, 1
/* 8013B254 001381B4  34 A1 00 DC */	addic. r5, r1, 0xdc
/* 8013B258 001381B8  90 1B 00 04 */	stw r0, 4(r27)
/* 8013B25C 001381BC  41 82 01 F0 */	beq lbl_8013B44C
/* 8013B260 001381C0  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013B264 001381C4  38 60 00 00 */	li r3, 0
/* 8013B268 001381C8  2C 06 00 00 */	cmpwi r6, 0
/* 8013B26C 001381CC  40 81 00 40 */	ble lbl_8013B2AC
/* 8013B270 001381D0  2C 06 00 08 */	cmpwi r6, 8
/* 8013B274 001381D4  38 86 FF F8 */	addi r4, r6, -8
/* 8013B278 001381D8  40 81 00 20 */	ble lbl_8013B298
/* 8013B27C 001381DC  38 04 00 07 */	addi r0, r4, 7
/* 8013B280 001381E0  54 00 E8 FE */	srwi r0, r0, 3
/* 8013B284 001381E4  7C 09 03 A6 */	mtctr r0
/* 8013B288 001381E8  2C 04 00 00 */	cmpwi r4, 0
/* 8013B28C 001381EC  40 81 00 0C */	ble lbl_8013B298
lbl_8013B290:
/* 8013B290 001381F0  38 63 00 08 */	addi r3, r3, 8
/* 8013B294 001381F4  42 00 FF FC */	bdnz lbl_8013B290
lbl_8013B298:
/* 8013B298 001381F8  7C 03 30 50 */	subf r0, r3, r6
/* 8013B29C 001381FC  7C 09 03 A6 */	mtctr r0
/* 8013B2A0 00138200  7C 03 30 00 */	cmpw r3, r6
/* 8013B2A4 00138204  40 80 00 08 */	bge lbl_8013B2AC
lbl_8013B2A8:
/* 8013B2A8 00138208  42 00 00 00 */	bdnz lbl_8013B2A8
lbl_8013B2AC:
/* 8013B2AC 0013820C  38 00 00 00 */	li r0, 0
/* 8013B2B0 00138210  90 05 00 00 */	stw r0, 0(r5)
/* 8013B2B4 00138214  48 00 01 98 */	b lbl_8013B44C
lbl_8013B2B8:
/* 8013B2B8 00138218  C0 22 9A 88 */	lfs f1, lbl_805AB7A8@sda21(r2)
/* 8013B2BC 0013821C  38 00 00 00 */	li r0, 0
/* 8013B2C0 00138220  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8013B2C4 00138224  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B2C8 00138228  40 82 00 1C */	bne lbl_8013B2E4
/* 8013B2CC 0013822C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8013B2D0 00138230  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B2D4 00138234  40 82 00 10 */	bne lbl_8013B2E4
/* 8013B2D8 00138238  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8013B2DC 0013823C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013B2E0 00138240  41 82 00 08 */	beq lbl_8013B2E8
lbl_8013B2E4:
/* 8013B2E4 00138244  38 00 00 01 */	li r0, 1
lbl_8013B2E8:
/* 8013B2E8 00138248  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013B2EC 0013824C  41 82 01 60 */	beq lbl_8013B44C
/* 8013B2F0 00138250  FC 20 F8 90 */	fmr f1, f31
/* 8013B2F4 00138254  7F 83 E3 78 */	mr r3, r28
/* 8013B2F8 00138258  38 9F 00 18 */	addi r4, r31, 0x18
/* 8013B2FC 0013825C  4B FF F3 A9 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 8013B300 00138260  48 00 01 4C */	b lbl_8013B44C
lbl_8013B304:
/* 8013B304 00138264  88 7B 00 0C */	lbz r3, 0xc(r27)
/* 8013B308 00138268  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8013B30C 0013826C  41 82 01 40 */	beq lbl_8013B44C
/* 8013B310 00138270  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8013B314 00138274  41 82 00 10 */	beq lbl_8013B324
/* 8013B318 00138278  88 1C 03 00 */	lbz r0, 0x300(r28)
/* 8013B31C 0013827C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013B320 00138280  41 82 01 2C */	beq lbl_8013B44C
lbl_8013B324:
/* 8013B324 00138284  80 1C 02 EC */	lwz r0, 0x2ec(r28)
/* 8013B328 00138288  2C 00 00 00 */	cmpwi r0, 0
/* 8013B32C 0013828C  41 82 00 F8 */	beq lbl_8013B424
/* 8013B330 00138290  38 61 00 10 */	addi r3, r1, 0x10
/* 8013B334 00138294  48 1A 7D 49 */	bl NoParameter__12CPASAnimParmFv
/* 8013B338 00138298  38 61 00 18 */	addi r3, r1, 0x18
/* 8013B33C 0013829C  48 1A 7D 41 */	bl NoParameter__12CPASAnimParmFv
/* 8013B340 001382A0  38 61 00 20 */	addi r3, r1, 0x20
/* 8013B344 001382A4  48 1A 7D 39 */	bl NoParameter__12CPASAnimParmFv
/* 8013B348 001382A8  38 61 00 28 */	addi r3, r1, 0x28
/* 8013B34C 001382AC  48 1A 7D 31 */	bl NoParameter__12CPASAnimParmFv
/* 8013B350 001382B0  38 61 00 30 */	addi r3, r1, 0x30
/* 8013B354 001382B4  48 1A 7D 29 */	bl NoParameter__12CPASAnimParmFv
/* 8013B358 001382B8  38 61 00 38 */	addi r3, r1, 0x38
/* 8013B35C 001382BC  48 1A 7D 21 */	bl NoParameter__12CPASAnimParmFv
/* 8013B360 001382C0  80 9B 00 08 */	lwz r4, 8(r27)
/* 8013B364 001382C4  38 61 00 40 */	addi r3, r1, 0x40
/* 8013B368 001382C8  48 1A 7C 1D */	bl FromEnum__12CPASAnimParmFi
/* 8013B36C 001382CC  38 61 00 48 */	addi r3, r1, 0x48
/* 8013B370 001382D0  38 80 00 02 */	li r4, 2
/* 8013B374 001382D4  48 1A 7C 11 */	bl FromEnum__12CPASAnimParmFi
/* 8013B378 001382D8  38 61 00 18 */	addi r3, r1, 0x18
/* 8013B37C 001382DC  38 01 00 10 */	addi r0, r1, 0x10
/* 8013B380 001382E0  90 61 00 08 */	stw r3, 8(r1)
/* 8013B384 001382E4  38 61 00 90 */	addi r3, r1, 0x90
/* 8013B388 001382E8  38 A1 00 48 */	addi r5, r1, 0x48
/* 8013B38C 001382EC  38 C1 00 40 */	addi r6, r1, 0x40
/* 8013B390 001382F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013B394 001382F4  38 E1 00 38 */	addi r7, r1, 0x38
/* 8013B398 001382F8  39 01 00 30 */	addi r8, r1, 0x30
/* 8013B39C 001382FC  39 21 00 28 */	addi r9, r1, 0x28
/* 8013B3A0 00138300  39 41 00 20 */	addi r10, r1, 0x20
/* 8013B3A4 00138304  38 80 00 09 */	li r4, 9
/* 8013B3A8 00138308  4B F4 1F 1D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013B3AC 0013830C  80 BD 09 00 */	lwz r5, 0x900(r29)
/* 8013B3B0 00138310  7F 83 E3 78 */	mr r3, r28
/* 8013B3B4 00138314  38 81 00 90 */	addi r4, r1, 0x90
/* 8013B3B8 00138318  4B FF EF F1 */	bl PlayBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013B3BC 0013831C  38 00 00 02 */	li r0, 2
/* 8013B3C0 00138320  34 A1 00 94 */	addic. r5, r1, 0x94
/* 8013B3C4 00138324  90 1B 00 04 */	stw r0, 4(r27)
/* 8013B3C8 00138328  41 82 00 84 */	beq lbl_8013B44C
/* 8013B3CC 0013832C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013B3D0 00138330  38 60 00 00 */	li r3, 0
/* 8013B3D4 00138334  2C 06 00 00 */	cmpwi r6, 0
/* 8013B3D8 00138338  40 81 00 40 */	ble lbl_8013B418
/* 8013B3DC 0013833C  2C 06 00 08 */	cmpwi r6, 8
/* 8013B3E0 00138340  38 86 FF F8 */	addi r4, r6, -8
/* 8013B3E4 00138344  40 81 00 20 */	ble lbl_8013B404
/* 8013B3E8 00138348  38 04 00 07 */	addi r0, r4, 7
/* 8013B3EC 0013834C  54 00 E8 FE */	srwi r0, r0, 3
/* 8013B3F0 00138350  7C 09 03 A6 */	mtctr r0
/* 8013B3F4 00138354  2C 04 00 00 */	cmpwi r4, 0
/* 8013B3F8 00138358  40 81 00 0C */	ble lbl_8013B404
lbl_8013B3FC:
/* 8013B3FC 0013835C  38 63 00 08 */	addi r3, r3, 8
/* 8013B400 00138360  42 00 FF FC */	bdnz lbl_8013B3FC
lbl_8013B404:
/* 8013B404 00138364  7C 03 30 50 */	subf r0, r3, r6
/* 8013B408 00138368  7C 09 03 A6 */	mtctr r0
/* 8013B40C 0013836C  7C 03 30 00 */	cmpw r3, r6
/* 8013B410 00138370  40 80 00 08 */	bge lbl_8013B418
lbl_8013B414:
/* 8013B414 00138374  42 00 00 00 */	bdnz lbl_8013B414
lbl_8013B418:
/* 8013B418 00138378  38 00 00 00 */	li r0, 0
/* 8013B41C 0013837C  90 05 00 00 */	stw r0, 0(r5)
/* 8013B420 00138380  48 00 00 2C */	b lbl_8013B44C
lbl_8013B424:
/* 8013B424 00138384  38 00 FF FF */	li r0, -1
/* 8013B428 00138388  3B C0 00 05 */	li r30, 5
/* 8013B42C 0013838C  90 1B 00 04 */	stw r0, 4(r27)
/* 8013B430 00138390  48 00 00 1C */	b lbl_8013B44C
lbl_8013B434:
/* 8013B434 00138394  88 1C 03 00 */	lbz r0, 0x300(r28)
/* 8013B438 00138398  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013B43C 0013839C  41 82 00 10 */	beq lbl_8013B44C
/* 8013B440 001383A0  38 00 FF FF */	li r0, -1
/* 8013B444 001383A4  3B C0 00 05 */	li r30, 5
/* 8013B448 001383A8  90 1B 00 04 */	stw r0, 4(r27)
lbl_8013B44C:
/* 8013B44C 001383AC  7F C3 F3 78 */	mr r3, r30
/* 8013B450 001383B0  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 8013B454 001383B4  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8013B458 001383B8  BB 61 01 2C */	lmw r27, 0x12c(r1)
/* 8013B45C 001383BC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8013B460 001383C0  7C 08 03 A6 */	mtlr r0
/* 8013B464 001383C4  38 21 01 50 */	addi r1, r1, 0x150
/* 8013B468 001383C8  4E 80 00 20 */	blr

.global Start__13CBSLoopAttackFR15CBodyControllerR13CStateManager
Start__13CBSLoopAttackFR15CBodyControllerR13CStateManager:
/* 8013B46C 001383CC  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 8013B470 001383D0  7C 08 02 A6 */	mflr r0
/* 8013B474 001383D4  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 8013B478 001383D8  93 E1 01 EC */	stw r31, 0x1ec(r1)
/* 8013B47C 001383DC  7C BF 2B 78 */	mr r31, r5
/* 8013B480 001383E0  93 C1 01 E8 */	stw r30, 0x1e8(r1)
/* 8013B484 001383E4  7C 9E 23 78 */	mr r30, r4
/* 8013B488 001383E8  38 80 00 07 */	li r4, 7
/* 8013B48C 001383EC  93 A1 01 E4 */	stw r29, 0x1e4(r1)
/* 8013B490 001383F0  7C 7D 1B 78 */	mr r29, r3
/* 8013B494 001383F4  38 7E 00 04 */	addi r3, r30, 4
/* 8013B498 001383F8  4B FF 5F B9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013B49C 001383FC  80 03 00 08 */	lwz r0, 8(r3)
/* 8013B4A0 00138400  38 80 00 00 */	li r4, 0
/* 8013B4A4 00138404  90 1D 00 08 */	stw r0, 8(r29)
/* 8013B4A8 00138408  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8013B4AC 0013840C  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 8013B4B0 00138410  20 63 00 01 */	subfic r3, r3, 1
/* 8013B4B4 00138414  7C 63 00 34 */	cntlzw r3, r3
/* 8013B4B8 00138418  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 8013B4BC 0013841C  98 1D 00 0C */	stb r0, 0xc(r29)
/* 8013B4C0 00138420  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 8013B4C4 00138424  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8013B4C8 00138428  98 1D 00 0C */	stb r0, 0xc(r29)
/* 8013B4CC 0013842C  80 1E 02 EC */	lwz r0, 0x2ec(r30)
/* 8013B4D0 00138430  2C 00 00 00 */	cmpwi r0, 0
/* 8013B4D4 00138434  40 82 00 F8 */	bne lbl_8013B5CC
/* 8013B4D8 00138438  38 00 00 01 */	li r0, 1
/* 8013B4DC 0013843C  38 61 00 98 */	addi r3, r1, 0x98
/* 8013B4E0 00138440  90 1D 00 04 */	stw r0, 4(r29)
/* 8013B4E4 00138444  48 1A 7B 99 */	bl NoParameter__12CPASAnimParmFv
/* 8013B4E8 00138448  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8013B4EC 0013844C  48 1A 7B 91 */	bl NoParameter__12CPASAnimParmFv
/* 8013B4F0 00138450  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8013B4F4 00138454  48 1A 7B 89 */	bl NoParameter__12CPASAnimParmFv
/* 8013B4F8 00138458  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8013B4FC 0013845C  48 1A 7B 81 */	bl NoParameter__12CPASAnimParmFv
/* 8013B500 00138460  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8013B504 00138464  48 1A 7B 79 */	bl NoParameter__12CPASAnimParmFv
/* 8013B508 00138468  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8013B50C 0013846C  48 1A 7B 71 */	bl NoParameter__12CPASAnimParmFv
/* 8013B510 00138470  80 9D 00 08 */	lwz r4, 8(r29)
/* 8013B514 00138474  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8013B518 00138478  48 1A 7A 6D */	bl FromEnum__12CPASAnimParmFi
/* 8013B51C 0013847C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8013B520 00138480  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8013B524 00138484  48 1A 7A 61 */	bl FromEnum__12CPASAnimParmFi
/* 8013B528 00138488  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8013B52C 0013848C  38 01 00 98 */	addi r0, r1, 0x98
/* 8013B530 00138490  90 61 00 08 */	stw r3, 8(r1)
/* 8013B534 00138494  38 61 01 90 */	addi r3, r1, 0x190
/* 8013B538 00138498  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 8013B53C 0013849C  38 C1 00 C8 */	addi r6, r1, 0xc8
/* 8013B540 001384A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013B544 001384A4  38 E1 00 C0 */	addi r7, r1, 0xc0
/* 8013B548 001384A8  39 01 00 B8 */	addi r8, r1, 0xb8
/* 8013B54C 001384AC  39 21 00 B0 */	addi r9, r1, 0xb0
/* 8013B550 001384B0  39 41 00 A8 */	addi r10, r1, 0xa8
/* 8013B554 001384B4  38 80 00 09 */	li r4, 9
/* 8013B558 001384B8  4B F4 1D 6D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013B55C 001384BC  80 BF 09 00 */	lwz r5, 0x900(r31)
/* 8013B560 001384C0  7F C3 F3 78 */	mr r3, r30
/* 8013B564 001384C4  38 81 01 90 */	addi r4, r1, 0x190
/* 8013B568 001384C8  4B FF ED 95 */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013B56C 001384CC  34 A1 01 94 */	addic. r5, r1, 0x194
/* 8013B570 001384D0  41 82 02 AC */	beq lbl_8013B81C
/* 8013B574 001384D4  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013B578 001384D8  38 60 00 00 */	li r3, 0
/* 8013B57C 001384DC  2C 06 00 00 */	cmpwi r6, 0
/* 8013B580 001384E0  40 81 00 40 */	ble lbl_8013B5C0
/* 8013B584 001384E4  2C 06 00 08 */	cmpwi r6, 8
/* 8013B588 001384E8  38 86 FF F8 */	addi r4, r6, -8
/* 8013B58C 001384EC  40 81 00 20 */	ble lbl_8013B5AC
/* 8013B590 001384F0  38 04 00 07 */	addi r0, r4, 7
/* 8013B594 001384F4  54 00 E8 FE */	srwi r0, r0, 3
/* 8013B598 001384F8  7C 09 03 A6 */	mtctr r0
/* 8013B59C 001384FC  2C 04 00 00 */	cmpwi r4, 0
/* 8013B5A0 00138500  40 81 00 0C */	ble lbl_8013B5AC
lbl_8013B5A4:
/* 8013B5A4 00138504  38 63 00 08 */	addi r3, r3, 8
/* 8013B5A8 00138508  42 00 FF FC */	bdnz lbl_8013B5A4
lbl_8013B5AC:
/* 8013B5AC 0013850C  7C 03 30 50 */	subf r0, r3, r6
/* 8013B5B0 00138510  7C 09 03 A6 */	mtctr r0
/* 8013B5B4 00138514  7C 03 30 00 */	cmpw r3, r6
/* 8013B5B8 00138518  40 80 00 08 */	bge lbl_8013B5C0
lbl_8013B5BC:
/* 8013B5BC 0013851C  42 00 00 00 */	bdnz lbl_8013B5BC
lbl_8013B5C0:
/* 8013B5C0 00138520  38 00 00 00 */	li r0, 0
/* 8013B5C4 00138524  90 05 00 00 */	stw r0, 0(r5)
/* 8013B5C8 00138528  48 00 02 54 */	b lbl_8013B81C
lbl_8013B5CC:
/* 8013B5CC 0013852C  90 9D 00 04 */	stw r4, 4(r29)
/* 8013B5D0 00138530  38 61 00 58 */	addi r3, r1, 0x58
/* 8013B5D4 00138534  48 1A 7A A9 */	bl NoParameter__12CPASAnimParmFv
/* 8013B5D8 00138538  38 61 00 60 */	addi r3, r1, 0x60
/* 8013B5DC 0013853C  48 1A 7A A1 */	bl NoParameter__12CPASAnimParmFv
/* 8013B5E0 00138540  38 61 00 68 */	addi r3, r1, 0x68
/* 8013B5E4 00138544  48 1A 7A 99 */	bl NoParameter__12CPASAnimParmFv
/* 8013B5E8 00138548  38 61 00 70 */	addi r3, r1, 0x70
/* 8013B5EC 0013854C  48 1A 7A 91 */	bl NoParameter__12CPASAnimParmFv
/* 8013B5F0 00138550  38 61 00 78 */	addi r3, r1, 0x78
/* 8013B5F4 00138554  48 1A 7A 89 */	bl NoParameter__12CPASAnimParmFv
/* 8013B5F8 00138558  38 61 00 80 */	addi r3, r1, 0x80
/* 8013B5FC 0013855C  48 1A 7A 81 */	bl NoParameter__12CPASAnimParmFv
/* 8013B600 00138560  80 9D 00 08 */	lwz r4, 8(r29)
/* 8013B604 00138564  38 61 00 88 */	addi r3, r1, 0x88
/* 8013B608 00138568  48 1A 79 7D */	bl FromEnum__12CPASAnimParmFi
/* 8013B60C 0013856C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8013B610 00138570  38 61 00 90 */	addi r3, r1, 0x90
/* 8013B614 00138574  48 1A 79 71 */	bl FromEnum__12CPASAnimParmFi
/* 8013B618 00138578  38 61 00 60 */	addi r3, r1, 0x60
/* 8013B61C 0013857C  38 01 00 58 */	addi r0, r1, 0x58
/* 8013B620 00138580  90 61 00 08 */	stw r3, 8(r1)
/* 8013B624 00138584  38 61 01 48 */	addi r3, r1, 0x148
/* 8013B628 00138588  38 A1 00 90 */	addi r5, r1, 0x90
/* 8013B62C 0013858C  38 C1 00 88 */	addi r6, r1, 0x88
/* 8013B630 00138590  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013B634 00138594  38 E1 00 80 */	addi r7, r1, 0x80
/* 8013B638 00138598  39 01 00 78 */	addi r8, r1, 0x78
/* 8013B63C 0013859C  39 21 00 70 */	addi r9, r1, 0x70
/* 8013B640 001385A0  39 41 00 68 */	addi r10, r1, 0x68
/* 8013B644 001385A4  38 80 00 09 */	li r4, 9
/* 8013B648 001385A8  4B F4 1C 7D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013B64C 001385AC  7F C3 F3 78 */	mr r3, r30
/* 8013B650 001385B0  4B FF EE 05 */	bl GetPASDatabase__15CBodyControllerCFv
/* 8013B654 001385B4  80 DF 09 00 */	lwz r6, 0x900(r31)
/* 8013B658 001385B8  7C 64 1B 78 */	mr r4, r3
/* 8013B65C 001385BC  38 61 00 50 */	addi r3, r1, 0x50
/* 8013B660 001385C0  38 A1 01 48 */	addi r5, r1, 0x148
/* 8013B664 001385C4  38 E0 FF FF */	li r7, -1
/* 8013B668 001385C8  48 1A 99 F9 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 8013B66C 001385CC  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8013B670 001385D0  C0 02 9A 8C */	lfs f0, lbl_805AB7AC@sda21(r2)
/* 8013B674 001385D4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8013B678 001385D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B67C 001385DC  40 81 00 54 */	ble lbl_8013B6D0
/* 8013B680 001385E0  C0 02 9A 90 */	lfs f0, lbl_805AB7B0@sda21(r2)
/* 8013B684 001385E4  38 00 00 00 */	li r0, 0
/* 8013B688 001385E8  38 C0 FF FF */	li r6, -1
/* 8013B68C 001385EC  38 E0 00 01 */	li r7, 1
/* 8013B690 001385F0  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 8013B694 001385F4  7F C3 F3 78 */	mr r3, r30
/* 8013B698 001385F8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8013B69C 001385FC  38 A0 00 00 */	li r5, 0
/* 8013B6A0 00138600  90 C1 00 DC */	stw r6, 0xdc(r1)
/* 8013B6A4 00138604  38 C0 00 00 */	li r6, 0
/* 8013B6A8 00138608  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8013B6AC 0013860C  98 E1 00 E4 */	stb r7, 0xe4(r1)
/* 8013B6B0 00138610  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8013B6B4 00138614  90 01 00 EC */	stw r0, 0xec(r1)
/* 8013B6B8 00138618  98 01 00 F0 */	stb r0, 0xf0(r1)
/* 8013B6BC 0013861C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8013B6C0 00138620  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8013B6C4 00138624  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8013B6C8 00138628  4B FF F2 55 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 8013B6CC 0013862C  48 00 00 F4 */	b lbl_8013B7C0
lbl_8013B6D0:
/* 8013B6D0 00138630  38 00 00 01 */	li r0, 1
/* 8013B6D4 00138634  38 61 00 10 */	addi r3, r1, 0x10
/* 8013B6D8 00138638  90 1D 00 04 */	stw r0, 4(r29)
/* 8013B6DC 0013863C  48 1A 79 A1 */	bl NoParameter__12CPASAnimParmFv
/* 8013B6E0 00138640  38 61 00 18 */	addi r3, r1, 0x18
/* 8013B6E4 00138644  48 1A 79 99 */	bl NoParameter__12CPASAnimParmFv
/* 8013B6E8 00138648  38 61 00 20 */	addi r3, r1, 0x20
/* 8013B6EC 0013864C  48 1A 79 91 */	bl NoParameter__12CPASAnimParmFv
/* 8013B6F0 00138650  38 61 00 28 */	addi r3, r1, 0x28
/* 8013B6F4 00138654  48 1A 79 89 */	bl NoParameter__12CPASAnimParmFv
/* 8013B6F8 00138658  38 61 00 30 */	addi r3, r1, 0x30
/* 8013B6FC 0013865C  48 1A 79 81 */	bl NoParameter__12CPASAnimParmFv
/* 8013B700 00138660  38 61 00 38 */	addi r3, r1, 0x38
/* 8013B704 00138664  48 1A 79 79 */	bl NoParameter__12CPASAnimParmFv
/* 8013B708 00138668  80 9D 00 08 */	lwz r4, 8(r29)
/* 8013B70C 0013866C  38 61 00 40 */	addi r3, r1, 0x40
/* 8013B710 00138670  48 1A 78 75 */	bl FromEnum__12CPASAnimParmFi
/* 8013B714 00138674  80 9D 00 04 */	lwz r4, 4(r29)
/* 8013B718 00138678  38 61 00 48 */	addi r3, r1, 0x48
/* 8013B71C 0013867C  48 1A 78 69 */	bl FromEnum__12CPASAnimParmFi
/* 8013B720 00138680  38 61 00 18 */	addi r3, r1, 0x18
/* 8013B724 00138684  38 01 00 10 */	addi r0, r1, 0x10
/* 8013B728 00138688  90 61 00 08 */	stw r3, 8(r1)
/* 8013B72C 0013868C  38 61 01 00 */	addi r3, r1, 0x100
/* 8013B730 00138690  38 A1 00 48 */	addi r5, r1, 0x48
/* 8013B734 00138694  38 C1 00 40 */	addi r6, r1, 0x40
/* 8013B738 00138698  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013B73C 0013869C  38 E1 00 38 */	addi r7, r1, 0x38
/* 8013B740 001386A0  39 01 00 30 */	addi r8, r1, 0x30
/* 8013B744 001386A4  39 21 00 28 */	addi r9, r1, 0x28
/* 8013B748 001386A8  39 41 00 20 */	addi r10, r1, 0x20
/* 8013B74C 001386AC  38 80 00 09 */	li r4, 9
/* 8013B750 001386B0  4B F4 1B 75 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013B754 001386B4  80 BF 09 00 */	lwz r5, 0x900(r31)
/* 8013B758 001386B8  7F C3 F3 78 */	mr r3, r30
/* 8013B75C 001386BC  38 81 01 00 */	addi r4, r1, 0x100
/* 8013B760 001386C0  4B FF EB 9D */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013B764 001386C4  34 A1 01 04 */	addic. r5, r1, 0x104
/* 8013B768 001386C8  41 82 00 58 */	beq lbl_8013B7C0
/* 8013B76C 001386CC  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013B770 001386D0  38 60 00 00 */	li r3, 0
/* 8013B774 001386D4  2C 06 00 00 */	cmpwi r6, 0
/* 8013B778 001386D8  40 81 00 40 */	ble lbl_8013B7B8
/* 8013B77C 001386DC  2C 06 00 08 */	cmpwi r6, 8
/* 8013B780 001386E0  38 86 FF F8 */	addi r4, r6, -8
/* 8013B784 001386E4  40 81 00 20 */	ble lbl_8013B7A4
/* 8013B788 001386E8  38 04 00 07 */	addi r0, r4, 7
/* 8013B78C 001386EC  54 00 E8 FE */	srwi r0, r0, 3
/* 8013B790 001386F0  7C 09 03 A6 */	mtctr r0
/* 8013B794 001386F4  2C 04 00 00 */	cmpwi r4, 0
/* 8013B798 001386F8  40 81 00 0C */	ble lbl_8013B7A4
lbl_8013B79C:
/* 8013B79C 001386FC  38 63 00 08 */	addi r3, r3, 8
/* 8013B7A0 00138700  42 00 FF FC */	bdnz lbl_8013B79C
lbl_8013B7A4:
/* 8013B7A4 00138704  7C 03 30 50 */	subf r0, r3, r6
/* 8013B7A8 00138708  7C 09 03 A6 */	mtctr r0
/* 8013B7AC 0013870C  7C 03 30 00 */	cmpw r3, r6
/* 8013B7B0 00138710  40 80 00 08 */	bge lbl_8013B7B8
lbl_8013B7B4:
/* 8013B7B4 00138714  42 00 00 00 */	bdnz lbl_8013B7B4
lbl_8013B7B8:
/* 8013B7B8 00138718  38 00 00 00 */	li r0, 0
/* 8013B7BC 0013871C  90 05 00 00 */	stw r0, 0(r5)
lbl_8013B7C0:
/* 8013B7C0 00138720  34 A1 01 4C */	addic. r5, r1, 0x14c
/* 8013B7C4 00138724  41 82 00 58 */	beq lbl_8013B81C
/* 8013B7C8 00138728  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013B7CC 0013872C  38 60 00 00 */	li r3, 0
/* 8013B7D0 00138730  2C 06 00 00 */	cmpwi r6, 0
/* 8013B7D4 00138734  40 81 00 40 */	ble lbl_8013B814
/* 8013B7D8 00138738  2C 06 00 08 */	cmpwi r6, 8
/* 8013B7DC 0013873C  38 86 FF F8 */	addi r4, r6, -8
/* 8013B7E0 00138740  40 81 00 20 */	ble lbl_8013B800
/* 8013B7E4 00138744  38 04 00 07 */	addi r0, r4, 7
/* 8013B7E8 00138748  54 00 E8 FE */	srwi r0, r0, 3
/* 8013B7EC 0013874C  7C 09 03 A6 */	mtctr r0
/* 8013B7F0 00138750  2C 04 00 00 */	cmpwi r4, 0
/* 8013B7F4 00138754  40 81 00 0C */	ble lbl_8013B800
lbl_8013B7F8:
/* 8013B7F8 00138758  38 63 00 08 */	addi r3, r3, 8
/* 8013B7FC 0013875C  42 00 FF FC */	bdnz lbl_8013B7F8
lbl_8013B800:
/* 8013B800 00138760  7C 03 30 50 */	subf r0, r3, r6
/* 8013B804 00138764  7C 09 03 A6 */	mtctr r0
/* 8013B808 00138768  7C 03 30 00 */	cmpw r3, r6
/* 8013B80C 0013876C  40 80 00 08 */	bge lbl_8013B814
lbl_8013B810:
/* 8013B810 00138770  42 00 00 00 */	bdnz lbl_8013B810
lbl_8013B814:
/* 8013B814 00138774  38 00 00 00 */	li r0, 0
/* 8013B818 00138778  90 05 00 00 */	stw r0, 0(r5)
lbl_8013B81C:
/* 8013B81C 0013877C  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8013B820 00138780  83 E1 01 EC */	lwz r31, 0x1ec(r1)
/* 8013B824 00138784  83 C1 01 E8 */	lwz r30, 0x1e8(r1)
/* 8013B828 00138788  83 A1 01 E4 */	lwz r29, 0x1e4(r1)
/* 8013B82C 0013878C  7C 08 03 A6 */	mtlr r0
/* 8013B830 00138790  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 8013B834 00138794  4E 80 00 20 */	blr

.global __ct__13CBSLoopAttackFv
__ct__13CBSLoopAttackFv:
/* 8013B838 00138798  3C A0 80 3E */	lis r5, lbl_803E1318@ha
/* 8013B83C 0013879C  3C 80 80 3E */	lis r4, lbl_803E17C8@ha
/* 8013B840 001387A0  38 C5 13 18 */	addi r6, r5, lbl_803E1318@l
/* 8013B844 001387A4  38 00 FF FF */	li r0, -1
/* 8013B848 001387A8  90 C3 00 00 */	stw r6, 0(r3)
/* 8013B84C 001387AC  38 A4 17 C8 */	addi r5, r4, lbl_803E17C8@l
/* 8013B850 001387B0  38 80 00 00 */	li r4, 0
/* 8013B854 001387B4  90 A3 00 00 */	stw r5, 0(r3)
/* 8013B858 001387B8  90 03 00 04 */	stw r0, 4(r3)
/* 8013B85C 001387BC  90 03 00 08 */	stw r0, 8(r3)
/* 8013B860 001387C0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8013B864 001387C4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8013B868 001387C8  98 03 00 0C */	stb r0, 0xc(r3)
/* 8013B86C 001387CC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8013B870 001387D0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8013B874 001387D4  98 03 00 0C */	stb r0, 0xc(r3)
/* 8013B878 001387D8  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AB7A8
lbl_805AB7A8:
	# ROM: 0x3F8048
	.4byte 0

.global lbl_805AB7AC
lbl_805AB7AC:
	# ROM: 0x3F804C
	.float 1.1920929E-7

.global lbl_805AB7B0
lbl_805AB7B0:
	# ROM: 0x3F8050
	.float 1.0
	.4byte 0

