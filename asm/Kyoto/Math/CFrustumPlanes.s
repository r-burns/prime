.include "macros.inc"

.section .text, "ax"

.global PointInFrustumPlanes__14CFrustumPlanesCFRC9CVector3f
PointInFrustumPlanes__14CFrustumPlanesCFRC9CVector3f:
/* 80344FCC 00341F2C  80 03 00 00 */	lwz r0, 0(r3)
/* 80344FD0 00341F30  38 63 00 04 */	addi r3, r3, 4
/* 80344FD4 00341F34  7C 09 03 A6 */	mtctr r0
/* 80344FD8 00341F38  2C 00 00 00 */	cmpwi r0, 0
/* 80344FDC 00341F3C  40 81 00 48 */	ble lbl_80345024
lbl_80344FE0:
/* 80344FE0 00341F40  C0 23 00 04 */	lfs f1, 4(r3)
/* 80344FE4 00341F44  C0 04 00 04 */	lfs f0, 4(r4)
/* 80344FE8 00341F48  C0 43 00 00 */	lfs f2, 0(r3)
/* 80344FEC 00341F4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80344FF0 00341F50  C0 24 00 00 */	lfs f1, 0(r4)
/* 80344FF4 00341F54  C0 83 00 08 */	lfs f4, 8(r3)
/* 80344FF8 00341F58  C0 64 00 08 */	lfs f3, 8(r4)
/* 80344FFC 00341F5C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80345000 00341F60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80345004 00341F64  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80345008 00341F68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034500C 00341F6C  4C 41 13 82 */	cror 2, 1, 2
/* 80345010 00341F70  40 82 00 0C */	bne lbl_8034501C
/* 80345014 00341F74  38 60 00 00 */	li r3, 0
/* 80345018 00341F78  4E 80 00 20 */	blr
lbl_8034501C:
/* 8034501C 00341F7C  38 63 00 10 */	addi r3, r3, 0x10
/* 80345020 00341F80  42 00 FF C0 */	bdnz lbl_80344FE0
lbl_80345024:
/* 80345024 00341F84  38 60 00 01 */	li r3, 1
/* 80345028 00341F88  4E 80 00 20 */	blr

.global SphereInFrustumPlanes__14CFrustumPlanesCFRC7CSphere
SphereInFrustumPlanes__14CFrustumPlanesCFRC7CSphere:
/* 8034502C 00341F8C  80 03 00 00 */	lwz r0, 0(r3)
/* 80345030 00341F90  38 63 00 04 */	addi r3, r3, 4
/* 80345034 00341F94  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 80345038 00341F98  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8034503C 00341F9C  C0 E4 00 04 */	lfs f7, 4(r4)
/* 80345040 00341FA0  C1 04 00 08 */	lfs f8, 8(r4)
/* 80345044 00341FA4  C0 02 CB B0 */	lfs f0, lbl_805AE8D0@sda21(r2)
/* 80345048 00341FA8  7C 09 03 A6 */	mtctr r0
/* 8034504C 00341FAC  2C 00 00 00 */	cmpwi r0, 0
/* 80345050 00341FB0  40 81 00 40 */	ble lbl_80345090
lbl_80345054:
/* 80345054 00341FB4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80345058 00341FB8  C0 63 00 00 */	lfs f3, 0(r3)
/* 8034505C 00341FBC  EC 41 01 F2 */	fmuls f2, f1, f7
/* 80345060 00341FC0  C0 83 00 08 */	lfs f4, 8(r3)
/* 80345064 00341FC4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80345068 00341FC8  EC 43 11 BA */	fmadds f2, f3, f6, f2
/* 8034506C 00341FCC  EC 44 12 3A */	fmadds f2, f4, f8, f2
/* 80345070 00341FD0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80345074 00341FD4  EC 21 28 28 */	fsubs f1, f1, f5
/* 80345078 00341FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034507C 00341FDC  40 81 00 0C */	ble lbl_80345088
/* 80345080 00341FE0  38 60 00 00 */	li r3, 0
/* 80345084 00341FE4  4E 80 00 20 */	blr
lbl_80345088:
/* 80345088 00341FE8  38 63 00 10 */	addi r3, r3, 0x10
/* 8034508C 00341FEC  42 00 FF C8 */	bdnz lbl_80345054
lbl_80345090:
/* 80345090 00341FF0  38 60 00 01 */	li r3, 1
/* 80345094 00341FF4  4E 80 00 20 */	blr

.global sub_80345098
sub_80345098:
/* 80345098 00341FF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034509C 00341FFC  7C 08 02 A6 */	mflr r0
/* 803450A0 00342000  90 01 00 44 */	stw r0, 0x44(r1)
/* 803450A4 00342004  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 803450A8 00342008  7C 7B 1B 78 */	mr r27, r3
/* 803450AC 0034200C  7C 9C 23 78 */	mr r28, r4
/* 803450B0 00342010  3B C0 00 01 */	li r30, 1
/* 803450B4 00342014  3B FB 00 04 */	addi r31, r27, 4
/* 803450B8 00342018  3B A0 00 00 */	li r29, 0
/* 803450BC 0034201C  48 00 00 A8 */	b lbl_80345164
lbl_803450C0:
/* 803450C0 00342020  7F 84 E3 78 */	mr r4, r28
/* 803450C4 00342024  7F E5 FB 78 */	mr r5, r31
/* 803450C8 00342028  38 61 00 14 */	addi r3, r1, 0x14
/* 803450CC 0034202C  4B FF 21 11 */	bl ClosestPointAlongVector__6CAABoxCFRC9CVector3f
/* 803450D0 00342030  C0 3F 00 04 */	lfs f1, 4(r31)
/* 803450D4 00342034  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803450D8 00342038  C0 5F 00 00 */	lfs f2, 0(r31)
/* 803450DC 0034203C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803450E0 00342040  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 803450E4 00342044  C0 9F 00 08 */	lfs f4, 8(r31)
/* 803450E8 00342048  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 803450EC 0034204C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 803450F0 00342050  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803450F4 00342054  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 803450F8 00342058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803450FC 0034205C  4C 41 13 82 */	cror 2, 1, 2
/* 80345100 00342060  40 82 00 0C */	bne lbl_8034510C
/* 80345104 00342064  38 60 00 00 */	li r3, 0
/* 80345108 00342068  48 00 00 6C */	b lbl_80345174
lbl_8034510C:
/* 8034510C 0034206C  2C 1E 00 01 */	cmpwi r30, 1
/* 80345110 00342070  40 82 00 4C */	bne lbl_8034515C
/* 80345114 00342074  7F 84 E3 78 */	mr r4, r28
/* 80345118 00342078  7F E5 FB 78 */	mr r5, r31
/* 8034511C 0034207C  38 61 00 08 */	addi r3, r1, 8
/* 80345120 00342080  4B FF 20 FD */	bl FurthestPointAlongVector__6CAABoxCFRC9CVector3f
/* 80345124 00342084  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80345128 00342088  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8034512C 0034208C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80345130 00342090  EC 01 00 32 */	fmuls f0, f1, f0
/* 80345134 00342094  C0 21 00 08 */	lfs f1, 8(r1)
/* 80345138 00342098  C0 9F 00 08 */	lfs f4, 8(r31)
/* 8034513C 0034209C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80345140 003420A0  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80345144 003420A4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80345148 003420A8  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8034514C 003420AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80345150 003420B0  4C 41 13 82 */	cror 2, 1, 2
/* 80345154 003420B4  40 82 00 08 */	bne lbl_8034515C
/* 80345158 003420B8  3B C0 00 02 */	li r30, 2
lbl_8034515C:
/* 8034515C 003420BC  3B FF 00 10 */	addi r31, r31, 0x10
/* 80345160 003420C0  3B BD 00 01 */	addi r29, r29, 1
lbl_80345164:
/* 80345164 003420C4  80 1B 00 00 */	lwz r0, 0(r27)
/* 80345168 003420C8  7C 1D 00 00 */	cmpw r29, r0
/* 8034516C 003420CC  41 80 FF 54 */	blt lbl_803450C0
/* 80345170 003420D0  7F C3 F3 78 */	mr r3, r30
lbl_80345174:
/* 80345174 003420D4  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80345178 003420D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8034517C 003420DC  7C 08 03 A6 */	mtlr r0
/* 80345180 003420E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80345184 003420E4  4E 80 00 20 */	blr

.global "BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>"
"BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>":
/* 80345188 003420E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034518C 003420EC  7C 08 02 A6 */	mflr r0
/* 80345190 003420F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80345194 003420F4  80 03 00 00 */	lwz r0, 0(r3)
/* 80345198 003420F8  2C 00 00 00 */	cmpwi r0, 0
/* 8034519C 003420FC  40 82 00 0C */	bne lbl_803451A8
/* 803451A0 00342100  38 60 00 01 */	li r3, 1
/* 803451A4 00342104  48 00 00 1C */	b lbl_803451C0
lbl_803451A8:
/* 803451A8 00342108  88 04 00 18 */	lbz r0, 0x18(r4)
/* 803451AC 0034210C  28 00 00 00 */	cmplwi r0, 0
/* 803451B0 00342110  41 82 00 0C */	beq lbl_803451BC
/* 803451B4 00342114  48 00 00 1D */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 803451B8 00342118  48 00 00 08 */	b lbl_803451C0
lbl_803451BC:
/* 803451BC 0034211C  38 60 00 00 */	li r3, 0
lbl_803451C0:
/* 803451C0 00342120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803451C4 00342124  7C 08 03 A6 */	mtlr r0
/* 803451C8 00342128  38 21 00 10 */	addi r1, r1, 0x10
/* 803451CC 0034212C  4E 80 00 20 */	blr

.global BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox:
/* 803451D0 00342130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803451D4 00342134  7C 08 02 A6 */	mflr r0
/* 803451D8 00342138  90 01 00 24 */	stw r0, 0x24(r1)
/* 803451DC 0034213C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803451E0 00342140  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803451E4 00342144  3B C0 00 00 */	li r30, 0
/* 803451E8 00342148  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803451EC 0034214C  7C 9D 23 78 */	mr r29, r4
/* 803451F0 00342150  93 81 00 10 */	stw r28, 0x10(r1)
/* 803451F4 00342154  7C 7C 1B 78 */	mr r28, r3
/* 803451F8 00342158  3B FC 00 04 */	addi r31, r28, 4
/* 803451FC 0034215C  48 00 00 28 */	b lbl_80345224
lbl_80345200:
/* 80345200 00342160  7F A3 EB 78 */	mr r3, r29
/* 80345204 00342164  7F E4 FB 78 */	mr r4, r31
/* 80345208 00342168  4B FF 28 1D */	bl InsidePlane__6CAABoxCFRC6CPlane
/* 8034520C 0034216C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80345210 00342170  40 82 00 0C */	bne lbl_8034521C
/* 80345214 00342174  38 60 00 00 */	li r3, 0
/* 80345218 00342178  48 00 00 1C */	b lbl_80345234
lbl_8034521C:
/* 8034521C 0034217C  3B FF 00 10 */	addi r31, r31, 0x10
/* 80345220 00342180  3B DE 00 01 */	addi r30, r30, 1
lbl_80345224:
/* 80345224 00342184  80 1C 00 00 */	lwz r0, 0(r28)
/* 80345228 00342188  7C 1E 00 00 */	cmpw r30, r0
/* 8034522C 0034218C  41 80 FF D4 */	blt lbl_80345200
/* 80345230 00342190  38 60 00 01 */	li r3, 1
lbl_80345234:
/* 80345234 00342194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80345238 00342198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034523C 0034219C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80345240 003421A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80345244 003421A4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80345248 003421A8  7C 08 03 A6 */	mtlr r0
/* 8034524C 003421AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80345250 003421B0  4E 80 00 20 */	blr

.global __ct__14CFrustumPlanesFRC12CTransform4ffffbf
__ct__14CFrustumPlanesFRC12CTransform4ffffbf:
/* 80345254 003421B4  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80345258 003421B8  7C 08 02 A6 */	mflr r0
/* 8034525C 003421BC  90 01 01 84 */	stw r0, 0x184(r1)
/* 80345260 003421C0  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80345264 003421C4  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 80345268 003421C8  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 8034526C 003421CC  F3 C1 01 68 */	psq_st f30, 360(r1), 0, qr0
/* 80345270 003421D0  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80345274 003421D4  F3 A1 01 58 */	psq_st f29, 344(r1), 0, qr0
/* 80345278 003421D8  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 8034527C 003421DC  F3 81 01 48 */	psq_st f28, 328(r1), 0, qr0
/* 80345280 003421E0  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 80345284 003421E4  F3 61 01 38 */	psq_st f27, 312(r1), 0, qr0
/* 80345288 003421E8  DB 41 01 20 */	stfd f26, 0x120(r1)
/* 8034528C 003421EC  F3 41 01 28 */	psq_st f26, 296(r1), 0, qr0
/* 80345290 003421F0  DB 21 01 10 */	stfd f25, 0x110(r1)
/* 80345294 003421F4  F3 21 01 18 */	psq_st f25, 280(r1), 0, qr0
/* 80345298 003421F8  BF 61 00 FC */	stmw r27, 0xfc(r1)
/* 8034529C 003421FC  C0 02 CB B4 */	lfs f0, lbl_805AE8D4@sda21(r2)
/* 803452A0 00342200  7C 7C 1B 78 */	mr r28, r3
/* 803452A4 00342204  38 00 00 00 */	li r0, 0
/* 803452A8 00342208  FF 40 10 90 */	fmr f26, f2
/* 803452AC 0034220C  EF 21 00 32 */	fmuls f25, f1, f0
/* 803452B0 00342210  90 03 00 00 */	stw r0, 0(r3)
/* 803452B4 00342214  FF C0 18 90 */	fmr f30, f3
/* 803452B8 00342218  7C 9B 23 78 */	mr r27, r4
/* 803452BC 0034221C  FF E0 20 90 */	fmr f31, f4
/* 803452C0 00342220  FC 20 C8 90 */	fmr f1, f25
/* 803452C4 00342224  7C BD 2B 78 */	mr r29, r5
/* 803452C8 00342228  48 04 F1 29 */	bl cos
/* 803452CC 0034222C  FF A0 08 90 */	fmr f29, f1
/* 803452D0 00342230  FC 20 C8 90 */	fmr f1, f25
/* 803452D4 00342234  48 04 F8 09 */	bl sin
/* 803452D8 00342238  FC 40 E8 18 */	frsp f2, f29
/* 803452DC 0034223C  FC 00 08 18 */	frsp f0, f1
/* 803452E0 00342240  EF 39 06 B2 */	fmuls f25, f25, f26
/* 803452E4 00342244  EC 5E 10 24 */	fdivs f2, f30, f2
/* 803452E8 00342248  FC 20 C8 90 */	fmr f1, f25
/* 803452EC 0034224C  EF 42 00 32 */	fmuls f26, f2, f0
/* 803452F0 00342250  48 04 F1 01 */	bl cos
/* 803452F4 00342254  FF A0 08 90 */	fmr f29, f1
/* 803452F8 00342258  FC 20 C8 90 */	fmr f1, f25
/* 803452FC 0034225C  48 04 F7 E1 */	bl sin
/* 80345300 00342260  FC 40 E8 18 */	frsp f2, f29
/* 80345304 00342264  D3 C1 00 C0 */	stfs f30, 0xc0(r1)
/* 80345308 00342268  FC 60 D0 50 */	fneg f3, f26
/* 8034530C 0034226C  7F 64 DB 78 */	mr r4, r27
/* 80345310 00342270  FC 00 08 18 */	frsp f0, f1
/* 80345314 00342274  D3 41 00 C4 */	stfs f26, 0xc4(r1)
/* 80345318 00342278  EC 3E 10 24 */	fdivs f1, f30, f2
/* 8034531C 0034227C  D3 C1 00 CC */	stfs f30, 0xcc(r1)
/* 80345320 00342280  38 61 00 80 */	addi r3, r1, 0x80
/* 80345324 00342284  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80345328 00342288  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 8034532C 0034228C  D3 C1 00 D8 */	stfs f30, 0xd8(r1)
/* 80345330 00342290  EC 21 00 32 */	fmuls f1, f1, f0
/* 80345334 00342294  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 80345338 00342298  D3 C1 00 E4 */	stfs f30, 0xe4(r1)
/* 8034533C 0034229C  FC 00 08 50 */	fneg f0, f1
/* 80345340 003422A0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80345344 003422A4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80345348 003422A8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8034534C 003422AC  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80345350 003422B0  D3 41 00 E8 */	stfs f26, 0xe8(r1)
/* 80345354 003422B4  4B FC D7 2D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80345358 003422B8  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8034535C 003422BC  7F 64 DB 78 */	mr r4, r27
/* 80345360 003422C0  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80345364 003422C4  38 61 00 74 */	addi r3, r1, 0x74
/* 80345368 003422C8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8034536C 003422CC  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80345370 003422D0  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80345374 003422D4  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80345378 003422D8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8034537C 003422DC  4B FC D7 05 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80345380 003422E0  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80345384 003422E4  7F 64 DB 78 */	mr r4, r27
/* 80345388 003422E8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8034538C 003422EC  38 61 00 68 */	addi r3, r1, 0x68
/* 80345390 003422F0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80345394 003422F4  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80345398 003422F8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8034539C 003422FC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 803453A0 00342300  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 803453A4 00342304  4B FC D6 DD */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 803453A8 00342308  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 803453AC 0034230C  7F 64 DB 78 */	mr r4, r27
/* 803453B0 00342310  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 803453B4 00342314  38 61 00 5C */	addi r3, r1, 0x5c
/* 803453B8 00342318  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 803453BC 0034231C  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 803453C0 00342320  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 803453C4 00342324  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 803453C8 00342328  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 803453CC 0034232C  4B FC D6 B5 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 803453D0 00342330  C0 02 CB B0 */	lfs f0, lbl_805AE8D0@sda21(r2)
/* 803453D4 00342334  7F 64 DB 78 */	mr r4, r27
/* 803453D8 00342338  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 803453DC 0034233C  38 61 00 50 */	addi r3, r1, 0x50
/* 803453E0 00342340  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 803453E4 00342344  38 A1 00 44 */	addi r5, r1, 0x44
/* 803453E8 00342348  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 803453EC 0034234C  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 803453F0 00342350  C3 7B 00 2C */	lfs f27, 0x2c(r27)
/* 803453F4 00342354  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 803453F8 00342358  C3 9B 00 1C */	lfs f28, 0x1c(r27)
/* 803453FC 0034235C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80345400 00342360  C3 BB 00 0C */	lfs f29, 0xc(r27)
/* 80345404 00342364  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80345408 00342368  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 8034540C 0034236C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80345410 00342370  4B FC D6 D9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80345414 00342374  3B C1 00 A4 */	addi r30, r1, 0xa4
/* 80345418 00342378  3B E1 00 98 */	addi r31, r1, 0x98
/* 8034541C 0034237C  C3 C1 00 50 */	lfs f30, 0x50(r1)
/* 80345420 00342380  7F C5 F3 78 */	mr r5, r30
/* 80345424 00342384  C3 41 00 54 */	lfs f26, 0x54(r1)
/* 80345428 00342388  7F E6 FB 78 */	mr r6, r31
/* 8034542C 0034238C  C3 21 00 58 */	lfs f25, 0x58(r1)
/* 80345430 00342390  38 61 00 38 */	addi r3, r1, 0x38
/* 80345434 00342394  38 81 00 8C */	addi r4, r1, 0x8c
/* 80345438 00342398  48 00 02 79 */	bl sub_803456b0
/* 8034543C 0034239C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80345440 003423A0  80 1C 00 00 */	lwz r0, 0(r28)
/* 80345444 003423A4  EC 1A 00 72 */	fmuls f0, f26, f1
/* 80345448 003423A8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8034544C 003423AC  54 00 20 36 */	slwi r0, r0, 4
/* 80345450 003423B0  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80345454 003423B4  7C 7C 02 14 */	add r3, r28, r0
/* 80345458 003423B8  EC 1E 00 BA */	fmadds f0, f30, f2, f0
/* 8034545C 003423BC  34 63 00 04 */	addic. r3, r3, 4
/* 80345460 003423C0  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 80345464 003423C4  41 82 00 14 */	beq lbl_80345478
/* 80345468 003423C8  D0 43 00 00 */	stfs f2, 0(r3)
/* 8034546C 003423CC  D0 23 00 04 */	stfs f1, 4(r3)
/* 80345470 003423D0  D0 63 00 08 */	stfs f3, 8(r3)
/* 80345474 003423D4  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80345478:
/* 80345478 003423D8  80 DC 00 00 */	lwz r6, 0(r28)
/* 8034547C 003423DC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80345480 003423E0  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80345484 003423E4  7F E5 FB 78 */	mr r5, r31
/* 80345488 003423E8  38 06 00 01 */	addi r0, r6, 1
/* 8034548C 003423EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80345490 003423F0  90 1C 00 00 */	stw r0, 0(r28)
/* 80345494 003423F4  38 C1 00 8C */	addi r6, r1, 0x8c
/* 80345498 003423F8  48 00 02 19 */	bl sub_803456b0
/* 8034549C 003423FC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 803454A0 00342400  80 1C 00 00 */	lwz r0, 0(r28)
/* 803454A4 00342404  EC 1C 00 72 */	fmuls f0, f28, f1
/* 803454A8 00342408  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 803454AC 0034240C  54 00 20 36 */	slwi r0, r0, 4
/* 803454B0 00342410  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 803454B4 00342414  7C 7C 02 14 */	add r3, r28, r0
/* 803454B8 00342418  EC 1D 00 BA */	fmadds f0, f29, f2, f0
/* 803454BC 0034241C  34 63 00 04 */	addic. r3, r3, 4
/* 803454C0 00342420  EC 1B 00 FA */	fmadds f0, f27, f3, f0
/* 803454C4 00342424  41 82 00 14 */	beq lbl_803454D8
/* 803454C8 00342428  D0 43 00 00 */	stfs f2, 0(r3)
/* 803454CC 0034242C  D0 23 00 04 */	stfs f1, 4(r3)
/* 803454D0 00342430  D0 63 00 08 */	stfs f3, 8(r3)
/* 803454D4 00342434  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_803454D8:
/* 803454D8 00342438  80 BC 00 00 */	lwz r5, 0(r28)
/* 803454DC 0034243C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 803454E0 00342440  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 803454E4 00342444  3B 61 00 B0 */	addi r27, r1, 0xb0
/* 803454E8 00342448  38 05 00 01 */	addi r0, r5, 1
/* 803454EC 0034244C  7F C6 F3 78 */	mr r6, r30
/* 803454F0 00342450  90 1C 00 00 */	stw r0, 0(r28)
/* 803454F4 00342454  7F 65 DB 78 */	mr r5, r27
/* 803454F8 00342458  38 61 00 20 */	addi r3, r1, 0x20
/* 803454FC 0034245C  48 00 01 B5 */	bl sub_803456b0
/* 80345500 00342460  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80345504 00342464  80 1C 00 00 */	lwz r0, 0(r28)
/* 80345508 00342468  EC 1C 00 72 */	fmuls f0, f28, f1
/* 8034550C 0034246C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80345510 00342470  54 00 20 36 */	slwi r0, r0, 4
/* 80345514 00342474  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80345518 00342478  7C 7C 02 14 */	add r3, r28, r0
/* 8034551C 0034247C  EC 1D 00 BA */	fmadds f0, f29, f2, f0
/* 80345520 00342480  34 63 00 04 */	addic. r3, r3, 4
/* 80345524 00342484  EC 1B 00 FA */	fmadds f0, f27, f3, f0
/* 80345528 00342488  41 82 00 14 */	beq lbl_8034553C
/* 8034552C 0034248C  D0 43 00 00 */	stfs f2, 0(r3)
/* 80345530 00342490  D0 23 00 04 */	stfs f1, 4(r3)
/* 80345534 00342494  D0 63 00 08 */	stfs f3, 8(r3)
/* 80345538 00342498  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8034553C:
/* 8034553C 0034249C  80 BC 00 00 */	lwz r5, 0(r28)
/* 80345540 003424A0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80345544 003424A4  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80345548 003424A8  7F 66 DB 78 */	mr r6, r27
/* 8034554C 003424AC  38 05 00 01 */	addi r0, r5, 1
/* 80345550 003424B0  38 61 00 14 */	addi r3, r1, 0x14
/* 80345554 003424B4  90 1C 00 00 */	stw r0, 0(r28)
/* 80345558 003424B8  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8034555C 003424BC  48 00 01 55 */	bl sub_803456b0
/* 80345560 003424C0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80345564 003424C4  80 1C 00 00 */	lwz r0, 0(r28)
/* 80345568 003424C8  EC 1C 00 72 */	fmuls f0, f28, f1
/* 8034556C 003424CC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80345570 003424D0  54 00 20 36 */	slwi r0, r0, 4
/* 80345574 003424D4  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80345578 003424D8  7C 7C 02 14 */	add r3, r28, r0
/* 8034557C 003424DC  EC 1D 00 BA */	fmadds f0, f29, f2, f0
/* 80345580 003424E0  34 63 00 04 */	addic. r3, r3, 4
/* 80345584 003424E4  EC 1B 00 FA */	fmadds f0, f27, f3, f0
/* 80345588 003424E8  41 82 00 14 */	beq lbl_8034559C
/* 8034558C 003424EC  D0 43 00 00 */	stfs f2, 0(r3)
/* 80345590 003424F0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80345594 003424F4  D0 63 00 08 */	stfs f3, 8(r3)
/* 80345598 003424F8  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8034559C:
/* 8034559C 003424FC  80 DC 00 00 */	lwz r6, 0(r28)
/* 803455A0 00342500  3C 60 80 5A */	lis r3, skZero3f@ha
/* 803455A4 00342504  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 803455A8 00342508  7F C5 F3 78 */	mr r5, r30
/* 803455AC 0034250C  38 06 00 01 */	addi r0, r6, 1
/* 803455B0 00342510  7F E6 FB 78 */	mr r6, r31
/* 803455B4 00342514  90 1C 00 00 */	stw r0, 0(r28)
/* 803455B8 00342518  38 61 00 08 */	addi r3, r1, 8
/* 803455BC 0034251C  48 00 00 F5 */	bl sub_803456b0
/* 803455C0 00342520  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803455C4 00342524  80 1C 00 00 */	lwz r0, 0(r28)
/* 803455C8 00342528  EC 1C 00 72 */	fmuls f0, f28, f1
/* 803455CC 0034252C  C0 41 00 08 */	lfs f2, 8(r1)
/* 803455D0 00342530  54 00 20 36 */	slwi r0, r0, 4
/* 803455D4 00342534  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 803455D8 00342538  7C 7C 02 14 */	add r3, r28, r0
/* 803455DC 0034253C  EC 1D 00 BA */	fmadds f0, f29, f2, f0
/* 803455E0 00342540  34 63 00 04 */	addic. r3, r3, 4
/* 803455E4 00342544  EC 1B 00 FA */	fmadds f0, f27, f3, f0
/* 803455E8 00342548  41 82 00 14 */	beq lbl_803455FC
/* 803455EC 0034254C  D0 43 00 00 */	stfs f2, 0(r3)
/* 803455F0 00342550  D0 23 00 04 */	stfs f1, 4(r3)
/* 803455F4 00342554  D0 63 00 08 */	stfs f3, 8(r3)
/* 803455F8 00342558  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_803455FC:
/* 803455FC 0034255C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80345600 00342560  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80345604 00342564  38 03 00 01 */	addi r0, r3, 1
/* 80345608 00342568  90 1C 00 00 */	stw r0, 0(r28)
/* 8034560C 0034256C  41 82 00 54 */	beq lbl_80345660
/* 80345610 00342570  38 7C 00 04 */	addi r3, r28, 4
/* 80345614 00342574  80 1C 00 00 */	lwz r0, 0(r28)
/* 80345618 00342578  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8034561C 0034257C  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80345620 00342580  54 00 20 36 */	slwi r0, r0, 4
/* 80345624 00342584  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80345628 00342588  FC 60 00 50 */	fneg f3, f0
/* 8034562C 0034258C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80345630 00342590  FC 40 10 50 */	fneg f2, f2
/* 80345634 00342594  FC 20 08 50 */	fneg f1, f1
/* 80345638 00342598  7C 63 02 15 */	add. r3, r3, r0
/* 8034563C 0034259C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80345640 003425A0  41 82 00 14 */	beq lbl_80345654
/* 80345644 003425A4  D0 63 00 00 */	stfs f3, 0(r3)
/* 80345648 003425A8  D0 43 00 04 */	stfs f2, 4(r3)
/* 8034564C 003425AC  D0 23 00 08 */	stfs f1, 8(r3)
/* 80345650 003425B0  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80345654:
/* 80345654 003425B4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80345658 003425B8  38 03 00 01 */	addi r0, r3, 1
/* 8034565C 003425BC  90 1C 00 00 */	stw r0, 0(r28)
lbl_80345660:
/* 80345660 003425C0  7F 83 E3 78 */	mr r3, r28
/* 80345664 003425C4  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 80345668 003425C8  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 8034566C 003425CC  E3 C1 01 68 */	psq_l f30, 360(r1), 0, qr0
/* 80345670 003425D0  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 80345674 003425D4  E3 A1 01 58 */	psq_l f29, 344(r1), 0, qr0
/* 80345678 003425D8  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 8034567C 003425DC  E3 81 01 48 */	psq_l f28, 328(r1), 0, qr0
/* 80345680 003425E0  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 80345684 003425E4  E3 61 01 38 */	psq_l f27, 312(r1), 0, qr0
/* 80345688 003425E8  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 8034568C 003425EC  E3 41 01 28 */	psq_l f26, 296(r1), 0, qr0
/* 80345690 003425F0  CB 41 01 20 */	lfd f26, 0x120(r1)
/* 80345694 003425F4  E3 21 01 18 */	psq_l f25, 280(r1), 0, qr0
/* 80345698 003425F8  CB 21 01 10 */	lfd f25, 0x110(r1)
/* 8034569C 003425FC  BB 61 00 FC */	lmw r27, 0xfc(r1)
/* 803456A0 00342600  80 01 01 84 */	lwz r0, 0x184(r1)
/* 803456A4 00342604  7C 08 03 A6 */	mtlr r0
/* 803456A8 00342608  38 21 01 80 */	addi r1, r1, 0x180
/* 803456AC 0034260C  4E 80 00 20 */	blr

.global sub_803456b0
sub_803456b0:
/* 803456B0 00342610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803456B4 00342614  7C 08 02 A6 */	mflr r0
/* 803456B8 00342618  90 01 00 34 */	stw r0, 0x34(r1)
/* 803456BC 0034261C  C0 26 00 00 */	lfs f1, 0(r6)
/* 803456C0 00342620  C0 44 00 00 */	lfs f2, 0(r4)
/* 803456C4 00342624  C0 05 00 00 */	lfs f0, 0(r5)
/* 803456C8 00342628  ED 01 10 28 */	fsubs f8, f1, f2
/* 803456CC 0034262C  C0 26 00 04 */	lfs f1, 4(r6)
/* 803456D0 00342630  EC 60 10 28 */	fsubs f3, f0, f2
/* 803456D4 00342634  C0 84 00 04 */	lfs f4, 4(r4)
/* 803456D8 00342638  C0 44 00 08 */	lfs f2, 8(r4)
/* 803456DC 0034263C  38 81 00 20 */	addi r4, r1, 0x20
/* 803456E0 00342640  EC E1 20 28 */	fsubs f7, f1, f4
/* 803456E4 00342644  C0 06 00 08 */	lfs f0, 8(r6)
/* 803456E8 00342648  C0 25 00 04 */	lfs f1, 4(r5)
/* 803456EC 0034264C  EC C0 10 28 */	fsubs f6, f0, f2
/* 803456F0 00342650  C0 05 00 08 */	lfs f0, 8(r5)
/* 803456F4 00342654  EC A1 20 28 */	fsubs f5, f1, f4
/* 803456F8 00342658  EC 80 10 28 */	fsubs f4, f0, f2
/* 803456FC 0034265C  D1 01 00 08 */	stfs f8, 8(r1)
/* 80345700 00342660  EC 26 00 F2 */	fmuls f1, f6, f3
/* 80345704 00342664  EC 08 01 72 */	fmuls f0, f8, f5
/* 80345708 00342668  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 8034570C 0034266C  EC 47 01 32 */	fmuls f2, f7, f4
/* 80345710 00342670  EC 24 0A 38 */	fmsubs f1, f4, f8, f1
/* 80345714 00342674  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80345718 00342678  EC 03 01 F8 */	fmsubs f0, f3, f7, f0
/* 8034571C 0034267C  EC 45 11 B8 */	fmsubs f2, f5, f6, f2
/* 80345720 00342680  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80345724 00342684  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80345728 00342688  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8034572C 0034268C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80345730 00342690  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80345734 00342694  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80345738 00342698  4B FC E6 99 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 8034573C 0034269C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80345740 003426A0  7C 08 03 A6 */	mtlr r0
/* 80345744 003426A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80345748 003426A8  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE8D0
lbl_805AE8D0:
	# ROM: 0x3FB170
	.4byte 0

.global lbl_805AE8D4
lbl_805AE8D4:
	# ROM: 0x3FB174
	.float 0.5

