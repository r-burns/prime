.include "macros.inc"

.section .text, "ax"

.global Blend__18CAdvancementDeltasFRC18CAdvancementDeltasRC18CAdvancementDeltasf
Blend__18CAdvancementDeltasFRC18CAdvancementDeltasRC18CAdvancementDeltasf:
/* 802EB4FC 002E845C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802EB500 002E8460  7C 08 02 A6 */	mflr r0
/* 802EB504 002E8464  90 01 00 44 */	stw r0, 0x44(r1)
/* 802EB508 002E8468  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802EB50C 002E846C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802EB510 002E8470  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802EB514 002E8474  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802EB518 002E8478  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802EB51C 002E847C  FF E0 08 90 */	fmr f31, f1
/* 802EB520 002E8480  7C 9E 23 78 */	mr r30, r4
/* 802EB524 002E8484  7C BF 2B 78 */	mr r31, r5
/* 802EB528 002E8488  7C 7D 1B 78 */	mr r29, r3
/* 802EB52C 002E848C  38 61 00 08 */	addi r3, r1, 8
/* 802EB530 002E8490  38 9E 00 0C */	addi r4, r30, 0xc
/* 802EB534 002E8494  38 BF 00 0C */	addi r5, r31, 0xc
/* 802EB538 002E8498  48 00 02 61 */	bl Slerp__14CAnimMathUtilsFRC11CQuaternionRC11CQuaternionf
/* 802EB53C 002E849C  C0 22 C6 28 */	lfs f1, lbl_805AE348@sda21(r2)
/* 802EB540 002E84A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802EB544 002E84A4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 802EB548 002E84A8  EC C1 F8 28 */	fsubs f6, f1, f31
/* 802EB54C 002E84AC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802EB550 002E84B0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802EB554 002E84B4  EC 83 07 F2 */	fmuls f4, f3, f31
/* 802EB558 002E84B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 802EB55C 002E84BC  C0 BE 00 04 */	lfs f5, 4(r30)
/* 802EB560 002E84C0  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 802EB564 002E84C4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 802EB568 002E84C8  EC 22 07 F2 */	fmuls f1, f2, f31
/* 802EB56C 002E84CC  EC 45 21 BA */	fmadds f2, f5, f6, f4
/* 802EB570 002E84D0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802EB574 002E84D4  EC 03 09 BA */	fmadds f0, f3, f6, f1
/* 802EB578 002E84D8  D0 5D 00 04 */	stfs f2, 4(r29)
/* 802EB57C 002E84DC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 802EB580 002E84E0  C0 01 00 08 */	lfs f0, 8(r1)
/* 802EB584 002E84E4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 802EB588 002E84E8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802EB58C 002E84EC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 802EB590 002E84F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802EB594 002E84F4  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802EB598 002E84F8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802EB59C 002E84FC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802EB5A0 002E8500  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802EB5A4 002E8504  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802EB5A8 002E8508  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802EB5AC 002E850C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802EB5B0 002E8510  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802EB5B4 002E8514  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802EB5B8 002E8518  7C 08 03 A6 */	mtlr r0
/* 802EB5BC 002E851C  38 21 00 40 */	addi r1, r1, 0x40
/* 802EB5C0 002E8520  4E 80 00 20 */	blr

.global Interpolate__18CAdvancementDeltasFRC18CAdvancementDeltasRC18CAdvancementDeltasff
Interpolate__18CAdvancementDeltasFRC18CAdvancementDeltasRC18CAdvancementDeltasff:
/* 802EB5C4 002E8524  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802EB5C8 002E8528  7C 08 02 A6 */	mflr r0
/* 802EB5CC 002E852C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802EB5D0 002E8530  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802EB5D4 002E8534  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802EB5D8 002E8538  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802EB5DC 002E853C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802EB5E0 002E8540  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802EB5E4 002E8544  EF E1 10 2A */	fadds f31, f1, f2
/* 802EB5E8 002E8548  C0 02 C6 2C */	lfs f0, lbl_805AE34C@sda21(r2)
/* 802EB5EC 002E854C  7C 9E 23 78 */	mr r30, r4
/* 802EB5F0 002E8550  7C BF 2B 78 */	mr r31, r5
/* 802EB5F4 002E8554  7C 7D 1B 78 */	mr r29, r3
/* 802EB5F8 002E8558  38 61 00 08 */	addi r3, r1, 8
/* 802EB5FC 002E855C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802EB600 002E8560  38 9E 00 0C */	addi r4, r30, 0xc
/* 802EB604 002E8564  38 BF 00 0C */	addi r5, r31, 0xc
/* 802EB608 002E8568  48 00 01 91 */	bl Slerp__14CAnimMathUtilsFRC11CQuaternionRC11CQuaternionf
/* 802EB60C 002E856C  C0 22 C6 30 */	lfs f1, lbl_805AE350@sda21(r2)
/* 802EB610 002E8570  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802EB614 002E8574  ED 1F 08 28 */	fsubs f8, f31, f1
/* 802EB618 002E8578  C0 7E 00 00 */	lfs f3, 0(r30)
/* 802EB61C 002E857C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 802EB620 002E8580  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802EB624 002E8584  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802EB628 002E8588  EC E8 00 F2 */	fmuls f7, f8, f3
/* 802EB62C 002E858C  EC BF 00 B2 */	fmuls f5, f31, f2
/* 802EB630 002E8590  C0 C2 C6 2C */	lfs f6, lbl_805AE34C@sda21(r2)
/* 802EB634 002E8594  EC 88 00 72 */	fmuls f4, f8, f1
/* 802EB638 002E8598  C0 5F 00 08 */	lfs f2, 8(r31)
/* 802EB63C 002E859C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802EB640 002E85A0  EC 7F 00 B2 */	fmuls f3, f31, f2
/* 802EB644 002E85A4  EC 48 00 72 */	fmuls f2, f8, f1
/* 802EB648 002E85A8  EC 26 00 32 */	fmuls f1, f6, f0
/* 802EB64C 002E85AC  EC 06 01 F2 */	fmuls f0, f6, f7
/* 802EB650 002E85B0  EC A6 01 72 */	fmuls f5, f6, f5
/* 802EB654 002E85B4  EC 86 01 32 */	fmuls f4, f6, f4
/* 802EB658 002E85B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802EB65C 002E85BC  EC 26 00 B2 */	fmuls f1, f6, f2
/* 802EB660 002E85C0  EC 66 00 F2 */	fmuls f3, f6, f3
/* 802EB664 002E85C4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802EB668 002E85C8  EC 45 20 28 */	fsubs f2, f5, f4
/* 802EB66C 002E85CC  EC 03 08 28 */	fsubs f0, f3, f1
/* 802EB670 002E85D0  D0 5D 00 04 */	stfs f2, 4(r29)
/* 802EB674 002E85D4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 802EB678 002E85D8  C0 01 00 08 */	lfs f0, 8(r1)
/* 802EB67C 002E85DC  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 802EB680 002E85E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802EB684 002E85E4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 802EB688 002E85E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802EB68C 002E85EC  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802EB690 002E85F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802EB694 002E85F4  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802EB698 002E85F8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802EB69C 002E85FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802EB6A0 002E8600  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802EB6A4 002E8604  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802EB6A8 002E8608  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802EB6AC 002E860C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802EB6B0 002E8610  7C 08 03 A6 */	mtlr r0
/* 802EB6B4 002E8614  38 21 00 40 */	addi r1, r1, 0x40
/* 802EB6B8 002E8618  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE348
lbl_805AE348:
	# ROM: 0x3FABE8
	.float 1.0

.global lbl_805AE34C
lbl_805AE34C:
	# ROM: 0x3FABEC
	.float 0.5

.global lbl_805AE350
lbl_805AE350:
	# ROM: 0x3FABF0
	.float 2.0
	.4byte 0

