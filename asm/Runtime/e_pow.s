.include "macros.inc"

.section .rodata
.global lbl_803D8760
lbl_803D8760:
	.incbin "baserom.dol", 0x3D5760, 0x30

.section .text, "ax" 

.global __ieee754_pow
__ieee754_pow:
/* 803923A0 0038F300  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803923A4 0038F304  7C 08 02 A6 */	mflr r0
/* 803923A8 0038F308  90 01 00 94 */	stw r0, 0x94(r1)
/* 803923AC 0038F30C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 803923B0 0038F310  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 803923B4 0038F314  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 803923B8 0038F318  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 803923BC 0038F31C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 803923C0 0038F320  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 803923C4 0038F324  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 803923C8 0038F328  3C 60 80 3E */	lis r3, lbl_803D8760@ha
/* 803923CC 0038F32C  38 03 87 60 */	addi r0, r3, lbl_803D8760@l
/* 803923D0 0038F330  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803923D4 0038F334  D8 21 00 08 */	stfd f1, 8(r1)
/* 803923D8 0038F338  81 61 00 14 */	lwz r11, 0x14(r1)
/* 803923DC 0038F33C  54 A7 00 7E */	clrlwi r7, r5, 1
/* 803923E0 0038F340  80 61 00 08 */	lwz r3, 8(r1)
/* 803923E4 0038F344  7C E4 5B 79 */	or. r4, r7, r11
/* 803923E8 0038F348  81 41 00 0C */	lwz r10, 0xc(r1)
/* 803923EC 0038F34C  54 66 00 7E */	clrlwi r6, r3, 1
/* 803923F0 0038F350  40 82 00 0C */	bne lbl_803923FC
/* 803923F4 0038F354  C8 22 D2 10 */	lfd f1, lbl_805AEF30@sda21(r2)
/* 803923F8 0038F358  48 00 08 0C */	b lbl_80392C04
lbl_803923FC:
/* 803923FC 0038F35C  3C 80 7F F0 */	lis r4, 0x7ff0
/* 80392400 0038F360  7C 06 20 00 */	cmpw r6, r4
/* 80392404 0038F364  41 81 00 38 */	bgt lbl_8039243C
/* 80392408 0038F368  3C 86 80 10 */	addis r4, r6, 0x8010
/* 8039240C 0038F36C  28 04 00 00 */	cmplwi r4, 0
/* 80392410 0038F370  40 82 00 0C */	bne lbl_8039241C
/* 80392414 0038F374  28 0A 00 00 */	cmplwi r10, 0
/* 80392418 0038F378  40 82 00 24 */	bne lbl_8039243C
lbl_8039241C:
/* 8039241C 0038F37C  3C 80 7F F0 */	lis r4, 0x7ff0
/* 80392420 0038F380  7C 07 20 00 */	cmpw r7, r4
/* 80392424 0038F384  41 81 00 18 */	bgt lbl_8039243C
/* 80392428 0038F388  3C 87 80 10 */	addis r4, r7, 0x8010
/* 8039242C 0038F38C  28 04 00 00 */	cmplwi r4, 0
/* 80392430 0038F390  40 82 00 1C */	bne lbl_8039244C
/* 80392434 0038F394  28 0B 00 00 */	cmplwi r11, 0
/* 80392438 0038F398  41 82 00 14 */	beq lbl_8039244C
lbl_8039243C:
/* 8039243C 0038F39C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80392440 0038F3A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80392444 0038F3A4  FC 21 00 2A */	fadd f1, f1, f0
/* 80392448 0038F3A8  48 00 07 BC */	b lbl_80392C04
lbl_8039244C:
/* 8039244C 0038F3AC  2C 03 00 00 */	cmpwi r3, 0
/* 80392450 0038F3B0  38 80 00 00 */	li r4, 0
/* 80392454 0038F3B4  40 80 00 78 */	bge lbl_803924CC
/* 80392458 0038F3B8  3D 00 43 40 */	lis r8, 0x4340
/* 8039245C 0038F3BC  7C 07 40 00 */	cmpw r7, r8
/* 80392460 0038F3C0  41 80 00 0C */	blt lbl_8039246C
/* 80392464 0038F3C4  38 80 00 02 */	li r4, 2
/* 80392468 0038F3C8  48 00 00 64 */	b lbl_803924CC
lbl_8039246C:
/* 8039246C 0038F3CC  3D 00 3F F0 */	lis r8, 0x3ff0
/* 80392470 0038F3D0  7C 07 40 00 */	cmpw r7, r8
/* 80392474 0038F3D4  41 80 00 58 */	blt lbl_803924CC
/* 80392478 0038F3D8  7C E8 A6 70 */	srawi r8, r7, 0x14
/* 8039247C 0038F3DC  39 08 FC 01 */	addi r8, r8, -1023
/* 80392480 0038F3E0  2C 08 00 14 */	cmpwi r8, 0x14
/* 80392484 0038F3E4  40 81 00 24 */	ble lbl_803924A8
/* 80392488 0038F3E8  21 08 00 34 */	subfic r8, r8, 0x34
/* 8039248C 0038F3EC  7D 69 44 30 */	srw r9, r11, r8
/* 80392490 0038F3F0  7D 28 40 30 */	slw r8, r9, r8
/* 80392494 0038F3F4  7C 0B 40 40 */	cmplw r11, r8
/* 80392498 0038F3F8  40 82 00 34 */	bne lbl_803924CC
/* 8039249C 0038F3FC  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 803924A0 0038F400  20 84 00 02 */	subfic r4, r4, 2
/* 803924A4 0038F404  48 00 00 28 */	b lbl_803924CC
lbl_803924A8:
/* 803924A8 0038F408  28 0B 00 00 */	cmplwi r11, 0
/* 803924AC 0038F40C  40 82 00 20 */	bne lbl_803924CC
/* 803924B0 0038F410  21 08 00 14 */	subfic r8, r8, 0x14
/* 803924B4 0038F414  7C E9 46 30 */	sraw r9, r7, r8
/* 803924B8 0038F418  7D 28 40 30 */	slw r8, r9, r8
/* 803924BC 0038F41C  7C 07 40 00 */	cmpw r7, r8
/* 803924C0 0038F420  40 82 00 0C */	bne lbl_803924CC
/* 803924C4 0038F424  55 24 07 FE */	clrlwi r4, r9, 0x1f
/* 803924C8 0038F428  20 84 00 02 */	subfic r4, r4, 2
lbl_803924CC:
/* 803924CC 0038F42C  28 0B 00 00 */	cmplwi r11, 0
/* 803924D0 0038F430  40 82 01 50 */	bne lbl_80392620
/* 803924D4 0038F434  3D 07 80 10 */	addis r8, r7, 0x8010
/* 803924D8 0038F438  28 08 00 00 */	cmplwi r8, 0
/* 803924DC 0038F43C  40 82 00 5C */	bne lbl_80392538
/* 803924E0 0038F440  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 803924E4 0038F444  7C 00 53 79 */	or. r0, r0, r10
/* 803924E8 0038F448  40 82 00 10 */	bne lbl_803924F8
/* 803924EC 0038F44C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803924F0 0038F450  FC 20 00 28 */	fsub f1, f0, f0
/* 803924F4 0038F454  48 00 07 10 */	b lbl_80392C04
lbl_803924F8:
/* 803924F8 0038F458  3C 00 3F F0 */	lis r0, 0x3ff0
/* 803924FC 0038F45C  7C 06 00 00 */	cmpw r6, r0
/* 80392500 0038F460  41 80 00 1C */	blt lbl_8039251C
/* 80392504 0038F464  2C 05 00 00 */	cmpwi r5, 0
/* 80392508 0038F468  41 80 00 0C */	blt lbl_80392514
/* 8039250C 0038F46C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80392510 0038F470  48 00 06 F4 */	b lbl_80392C04
lbl_80392514:
/* 80392514 0038F474  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392518 0038F478  48 00 06 EC */	b lbl_80392C04
lbl_8039251C:
/* 8039251C 0038F47C  2C 05 00 00 */	cmpwi r5, 0
/* 80392520 0038F480  40 80 00 10 */	bge lbl_80392530
/* 80392524 0038F484  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80392528 0038F488  FC 20 00 50 */	fneg f1, f0
/* 8039252C 0038F48C  48 00 06 D8 */	b lbl_80392C04
lbl_80392530:
/* 80392530 0038F490  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392534 0038F494  48 00 06 D0 */	b lbl_80392C04
lbl_80392538:
/* 80392538 0038F498  3D 07 C0 10 */	addis r8, r7, 0xc010
/* 8039253C 0038F49C  28 08 00 00 */	cmplwi r8, 0
/* 80392540 0038F4A0  40 82 00 24 */	bne lbl_80392564
/* 80392544 0038F4A4  2C 05 00 00 */	cmpwi r5, 0
/* 80392548 0038F4A8  40 80 00 14 */	bge lbl_8039255C
/* 8039254C 0038F4AC  C8 22 D2 10 */	lfd f1, lbl_805AEF30@sda21(r2)
/* 80392550 0038F4B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80392554 0038F4B4  FC 21 00 24 */	fdiv f1, f1, f0
/* 80392558 0038F4B8  48 00 06 AC */	b lbl_80392C04
lbl_8039255C:
/* 8039255C 0038F4BC  C8 21 00 08 */	lfd f1, 8(r1)
/* 80392560 0038F4C0  48 00 06 A4 */	b lbl_80392C04
lbl_80392564:
/* 80392564 0038F4C4  3D 05 C0 00 */	addis r8, r5, 0xc000
/* 80392568 0038F4C8  28 08 00 00 */	cmplwi r8, 0
/* 8039256C 0038F4CC  40 82 00 10 */	bne lbl_8039257C
/* 80392570 0038F4D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80392574 0038F4D4  FC 20 00 32 */	fmul f1, f0, f0
/* 80392578 0038F4D8  48 00 06 8C */	b lbl_80392C04
lbl_8039257C:
/* 8039257C 0038F4DC  3D 05 C0 20 */	addis r8, r5, 0xc020
/* 80392580 0038F4E0  28 08 00 00 */	cmplwi r8, 0
/* 80392584 0038F4E4  40 82 00 9C */	bne lbl_80392620
/* 80392588 0038F4E8  2C 03 00 00 */	cmpwi r3, 0
/* 8039258C 0038F4EC  41 80 00 94 */	blt lbl_80392620
/* 80392590 0038F4F0  C8 81 00 08 */	lfd f4, 8(r1)
/* 80392594 0038F4F4  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392598 0038F4F8  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8039259C 0038F4FC  40 81 00 58 */	ble lbl_803925F4
/* 803925A0 0038F500  FC 20 20 34 */	frsqrte f1, f4
/* 803925A4 0038F504  C8 62 D2 20 */	lfd f3, lbl_805AEF40@sda21(r2)
/* 803925A8 0038F508  C8 42 D2 28 */	lfd f2, lbl_805AEF48@sda21(r2)
/* 803925AC 0038F50C  FC 01 00 72 */	fmul f0, f1, f1
/* 803925B0 0038F510  FC 23 00 72 */	fmul f1, f3, f1
/* 803925B4 0038F514  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 803925B8 0038F518  FC 21 00 32 */	fmul f1, f1, f0
/* 803925BC 0038F51C  FC 01 00 72 */	fmul f0, f1, f1
/* 803925C0 0038F520  FC 23 00 72 */	fmul f1, f3, f1
/* 803925C4 0038F524  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 803925C8 0038F528  FC 21 00 32 */	fmul f1, f1, f0
/* 803925CC 0038F52C  FC 01 00 72 */	fmul f0, f1, f1
/* 803925D0 0038F530  FC 23 00 72 */	fmul f1, f3, f1
/* 803925D4 0038F534  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 803925D8 0038F538  FC 21 00 32 */	fmul f1, f1, f0
/* 803925DC 0038F53C  FC 01 00 72 */	fmul f0, f1, f1
/* 803925E0 0038F540  FC 23 00 72 */	fmul f1, f3, f1
/* 803925E4 0038F544  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 803925E8 0038F548  FC 01 00 32 */	fmul f0, f1, f0
/* 803925EC 0038F54C  FC 24 00 32 */	fmul f1, f4, f0
/* 803925F0 0038F550  48 00 06 14 */	b lbl_80392C04
lbl_803925F4:
/* 803925F4 0038F554  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 803925F8 0038F558  40 82 00 08 */	bne lbl_80392600
/* 803925FC 0038F55C  48 00 06 08 */	b lbl_80392C04
lbl_80392600:
/* 80392600 0038F560  FC 04 08 00 */	fcmpu cr0, f4, f1
/* 80392604 0038F564  41 82 00 10 */	beq lbl_80392614
/* 80392608 0038F568  3C 60 80 5B */	lis r3, lbl_805A8BA0@ha
/* 8039260C 0038F56C  C0 23 8B A0 */	lfs f1, lbl_805A8BA0@l(r3)
/* 80392610 0038F570  48 00 05 F4 */	b lbl_80392C04
lbl_80392614:
/* 80392614 0038F574  3C 60 80 5B */	lis r3, lbl_805A8BA4@ha
/* 80392618 0038F578  C0 23 8B A4 */	lfs f1, lbl_805A8BA4@l(r3)
/* 8039261C 0038F57C  48 00 05 E8 */	b lbl_80392C04
lbl_80392620:
/* 80392620 0038F580  C8 01 00 08 */	lfd f0, 8(r1)
/* 80392624 0038F584  28 0A 00 00 */	cmplwi r10, 0
/* 80392628 0038F588  FC 20 02 10 */	fabs f1, f0
/* 8039262C 0038F58C  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 80392630 0038F590  40 82 00 80 */	bne lbl_803926B0
/* 80392634 0038F594  3D 06 80 10 */	addis r8, r6, 0x8010
/* 80392638 0038F598  28 08 00 00 */	cmplwi r8, 0
/* 8039263C 0038F59C  41 82 00 18 */	beq lbl_80392654
/* 80392640 0038F5A0  2C 06 00 00 */	cmpwi r6, 0
/* 80392644 0038F5A4  41 82 00 10 */	beq lbl_80392654
/* 80392648 0038F5A8  3D 06 C0 10 */	addis r8, r6, 0xc010
/* 8039264C 0038F5AC  28 08 00 00 */	cmplwi r8, 0
/* 80392650 0038F5B0  40 82 00 60 */	bne lbl_803926B0
lbl_80392654:
/* 80392654 0038F5B4  2C 05 00 00 */	cmpwi r5, 0
/* 80392658 0038F5B8  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8039265C 0038F5BC  40 80 00 10 */	bge lbl_8039266C
/* 80392660 0038F5C0  C8 02 D2 10 */	lfd f0, lbl_805AEF30@sda21(r2)
/* 80392664 0038F5C4  FC 00 08 24 */	fdiv f0, f0, f1
/* 80392668 0038F5C8  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_8039266C:
/* 8039266C 0038F5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80392670 0038F5D0  40 80 00 38 */	bge lbl_803926A8
/* 80392674 0038F5D4  3C 06 C0 10 */	addis r0, r6, 0xc010
/* 80392678 0038F5D8  7C 00 23 79 */	or. r0, r0, r4
/* 8039267C 0038F5DC  40 82 00 18 */	bne lbl_80392694
/* 80392680 0038F5E0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80392684 0038F5E4  FC 00 00 28 */	fsub f0, f0, f0
/* 80392688 0038F5E8  FC 00 00 24 */	fdiv f0, f0, f0
/* 8039268C 0038F5EC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80392690 0038F5F0  48 00 00 18 */	b lbl_803926A8
lbl_80392694:
/* 80392694 0038F5F4  2C 04 00 01 */	cmpwi r4, 1
/* 80392698 0038F5F8  40 82 00 10 */	bne lbl_803926A8
/* 8039269C 0038F5FC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 803926A0 0038F600  FC 00 00 50 */	fneg f0, f0
/* 803926A4 0038F604  D8 01 00 50 */	stfd f0, 0x50(r1)
lbl_803926A8:
/* 803926A8 0038F608  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 803926AC 0038F60C  48 00 05 58 */	b lbl_80392C04
lbl_803926B0:
/* 803926B0 0038F610  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 803926B4 0038F614  38 63 00 01 */	addi r3, r3, 1
/* 803926B8 0038F618  7C 68 23 79 */	or. r8, r3, r4
/* 803926BC 0038F61C  40 82 00 18 */	bne lbl_803926D4
/* 803926C0 0038F620  3C 60 80 5B */	lis r3, lbl_805A8BA0@ha
/* 803926C4 0038F624  38 00 00 21 */	li r0, 0x21
/* 803926C8 0038F628  90 0D AE 10 */	stw r0, lbl_805A99D0@sda21(r13)
/* 803926CC 0038F62C  C0 23 8B A0 */	lfs f1, lbl_805A8BA0@l(r3)
/* 803926D0 0038F630  48 00 05 34 */	b lbl_80392C04
lbl_803926D4:
/* 803926D4 0038F634  3D 00 41 E0 */	lis r8, 0x41e0
/* 803926D8 0038F638  7C 07 40 00 */	cmpw r7, r8
/* 803926DC 0038F63C  40 81 01 04 */	ble lbl_803927E0
/* 803926E0 0038F640  3C 00 43 F0 */	lis r0, 0x43f0
/* 803926E4 0038F644  7C 07 00 00 */	cmpw r7, r0
/* 803926E8 0038F648  40 81 00 4C */	ble lbl_80392734
/* 803926EC 0038F64C  3C E0 3F F0 */	lis r7, 0x3FEFFFFF@ha
/* 803926F0 0038F650  38 07 FF FF */	addi r0, r7, 0x3FEFFFFF@l
/* 803926F4 0038F654  7C 06 00 00 */	cmpw r6, r0
/* 803926F8 0038F658  41 81 00 1C */	bgt lbl_80392714
/* 803926FC 0038F65C  2C 05 00 00 */	cmpwi r5, 0
/* 80392700 0038F660  40 80 00 0C */	bge lbl_8039270C
/* 80392704 0038F664  C8 22 D2 30 */	lfd f1, lbl_805AEF50@sda21(r2)
/* 80392708 0038F668  48 00 04 FC */	b lbl_80392C04
lbl_8039270C:
/* 8039270C 0038F66C  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392710 0038F670  48 00 04 F4 */	b lbl_80392C04
lbl_80392714:
/* 80392714 0038F674  7C 06 38 00 */	cmpw r6, r7
/* 80392718 0038F678  41 80 00 1C */	blt lbl_80392734
/* 8039271C 0038F67C  2C 05 00 00 */	cmpwi r5, 0
/* 80392720 0038F680  40 81 00 0C */	ble lbl_8039272C
/* 80392724 0038F684  C8 22 D2 30 */	lfd f1, lbl_805AEF50@sda21(r2)
/* 80392728 0038F688  48 00 04 DC */	b lbl_80392C04
lbl_8039272C:
/* 8039272C 0038F68C  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392730 0038F690  48 00 04 D4 */	b lbl_80392C04
lbl_80392734:
/* 80392734 0038F694  3C E0 3F F0 */	lis r7, 0x3FEFFFFF@ha
/* 80392738 0038F698  38 07 FF FF */	addi r0, r7, 0x3FEFFFFF@l
/* 8039273C 0038F69C  7C 06 00 00 */	cmpw r6, r0
/* 80392740 0038F6A0  40 80 00 1C */	bge lbl_8039275C
/* 80392744 0038F6A4  2C 05 00 00 */	cmpwi r5, 0
/* 80392748 0038F6A8  40 80 00 0C */	bge lbl_80392754
/* 8039274C 0038F6AC  C8 22 D2 30 */	lfd f1, lbl_805AEF50@sda21(r2)
/* 80392750 0038F6B0  48 00 04 B4 */	b lbl_80392C04
lbl_80392754:
/* 80392754 0038F6B4  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392758 0038F6B8  48 00 04 AC */	b lbl_80392C04
lbl_8039275C:
/* 8039275C 0038F6BC  7C 06 38 00 */	cmpw r6, r7
/* 80392760 0038F6C0  40 81 00 1C */	ble lbl_8039277C
/* 80392764 0038F6C4  2C 05 00 00 */	cmpwi r5, 0
/* 80392768 0038F6C8  40 81 00 0C */	ble lbl_80392774
/* 8039276C 0038F6CC  C8 22 D2 30 */	lfd f1, lbl_805AEF50@sda21(r2)
/* 80392770 0038F6D0  48 00 04 94 */	b lbl_80392C04
lbl_80392774:
/* 80392774 0038F6D4  C8 22 D2 18 */	lfd f1, lbl_805AEF38@sda21(r2)
/* 80392778 0038F6D8  48 00 04 8C */	b lbl_80392C04
lbl_8039277C:
/* 8039277C 0038F6DC  C8 41 00 08 */	lfd f2, 8(r1)
/* 80392780 0038F6E0  38 00 00 00 */	li r0, 0
/* 80392784 0038F6E4  C8 02 D2 10 */	lfd f0, lbl_805AEF30@sda21(r2)
/* 80392788 0038F6E8  C8 22 D2 40 */	lfd f1, lbl_805AEF60@sda21(r2)
/* 8039278C 0038F6EC  FC C2 00 28 */	fsub f6, f2, f0
/* 80392790 0038F6F0  C8 02 D2 38 */	lfd f0, lbl_805AEF58@sda21(r2)
/* 80392794 0038F6F4  C8 42 D2 48 */	lfd f2, lbl_805AEF68@sda21(r2)
/* 80392798 0038F6F8  C8 62 D2 20 */	lfd f3, lbl_805AEF40@sda21(r2)
/* 8039279C 0038F6FC  FC 81 01 BC */	fnmsub f4, f1, f6, f0
/* 803927A0 0038F700  C8 02 D2 58 */	lfd f0, lbl_805AEF78@sda21(r2)
/* 803927A4 0038F704  C8 22 D2 50 */	lfd f1, lbl_805AEF70@sda21(r2)
/* 803927A8 0038F708  FC A6 01 B2 */	fmul f5, f6, f6
/* 803927AC 0038F70C  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 803927B0 0038F710  FC 66 19 3C */	fnmsub f3, f6, f4, f3
/* 803927B4 0038F714  FC 42 01 B2 */	fmul f2, f2, f6
/* 803927B8 0038F718  FC 65 00 F2 */	fmul f3, f5, f3
/* 803927BC 0038F71C  FC 00 00 F2 */	fmul f0, f0, f3
/* 803927C0 0038F720  FC 21 01 B8 */	fmsub f1, f1, f6, f0
/* 803927C4 0038F724  FC 02 08 2A */	fadd f0, f2, f1
/* 803927C8 0038F728  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803927CC 0038F72C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803927D0 0038F730  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803927D4 0038F734  FC 00 10 28 */	fsub f0, f0, f2
/* 803927D8 0038F738  FC 01 00 28 */	fsub f0, f1, f0
/* 803927DC 0038F73C  48 00 01 E4 */	b lbl_803929C0
lbl_803927E0:
/* 803927E0 0038F740  3C A0 00 10 */	lis r5, 0x10
/* 803927E4 0038F744  39 40 00 00 */	li r10, 0
/* 803927E8 0038F748  7C 06 28 00 */	cmpw r6, r5
/* 803927EC 0038F74C  40 80 00 1C */	bge lbl_80392808
/* 803927F0 0038F750  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 803927F4 0038F754  39 40 FF CB */	li r10, -53
/* 803927F8 0038F758  C8 02 D2 60 */	lfd f0, lbl_805AEF80@sda21(r2)
/* 803927FC 0038F75C  FC 01 00 32 */	fmul f0, f1, f0
/* 80392800 0038F760  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80392804 0038F764  80 C1 00 48 */	lwz r6, 0x48(r1)
lbl_80392808:
/* 80392808 0038F768  3C A0 00 04 */	lis r5, 0x0003988E@ha
/* 8039280C 0038F76C  54 C8 03 3E */	clrlwi r8, r6, 0xc
/* 80392810 0038F770  38 A5 98 8E */	addi r5, r5, 0x0003988E@l
/* 80392814 0038F774  7C C6 A6 70 */	srawi r6, r6, 0x14
/* 80392818 0038F778  7C 08 28 00 */	cmpw r8, r5
/* 8039281C 0038F77C  65 07 3F F0 */	oris r7, r8, 0x3ff0
/* 80392820 0038F780  7D 46 52 14 */	add r10, r6, r10
/* 80392824 0038F784  39 4A FC 01 */	addi r10, r10, -1023
/* 80392828 0038F788  41 81 00 0C */	bgt lbl_80392834
/* 8039282C 0038F78C  39 20 00 00 */	li r9, 0
/* 80392830 0038F790  48 00 00 28 */	b lbl_80392858
lbl_80392834:
/* 80392834 0038F794  3C A0 00 0C */	lis r5, 0x000BB67A@ha
/* 80392838 0038F798  38 A5 B6 7A */	addi r5, r5, 0x000BB67A@l
/* 8039283C 0038F79C  7C 08 28 00 */	cmpw r8, r5
/* 80392840 0038F7A0  40 80 00 0C */	bge lbl_8039284C
/* 80392844 0038F7A4  39 20 00 01 */	li r9, 1
/* 80392848 0038F7A8  48 00 00 10 */	b lbl_80392858
lbl_8039284C:
/* 8039284C 0038F7AC  3C E7 FF F0 */	addis r7, r7, 0xfff0
/* 80392850 0038F7B0  39 20 00 00 */	li r9, 0
/* 80392854 0038F7B4  39 4A 00 01 */	addi r10, r10, 1
lbl_80392858:
/* 80392858 0038F7B8  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8039285C 0038F7BC  55 25 18 38 */	slwi r5, r9, 3
/* 80392860 0038F7C0  7D 00 2A 14 */	add r8, r0, r5
/* 80392864 0038F7C4  7C E0 0E 70 */	srawi r0, r7, 1
/* 80392868 0038F7C8  C8 E1 00 48 */	lfd f7, 0x48(r1)
/* 8039286C 0038F7CC  64 06 20 00 */	oris r6, r0, 0x2000
/* 80392870 0038F7D0  C8 C8 00 00 */	lfd f6, 0(r8)
/* 80392874 0038F7D4  6D 45 80 00 */	xoris r5, r10, 0x8000
/* 80392878 0038F7D8  C8 02 D2 18 */	lfd f0, lbl_805AEF38@sda21(r2)
/* 8039287C 0038F7DC  3C 00 43 30 */	lis r0, 0x4330
/* 80392880 0038F7E0  FC 27 30 2A */	fadd f1, f7, f6
/* 80392884 0038F7E4  C8 42 D2 10 */	lfd f2, lbl_805AEF30@sda21(r2)
/* 80392888 0038F7E8  FD 67 30 28 */	fsub f11, f7, f6
/* 8039288C 0038F7EC  C8 A2 D2 90 */	lfd f5, lbl_805AEFB0@sda21(r2)
/* 80392890 0038F7F0  C8 82 D2 88 */	lfd f4, lbl_805AEFA8@sda21(r2)
/* 80392894 0038F7F4  3C E6 00 08 */	addis r7, r6, 8
/* 80392898 0038F7F8  FF E2 08 24 */	fdiv f31, f2, f1
/* 8039289C 0038F7FC  55 26 90 1A */	slwi r6, r9, 0x12
/* 803928A0 0038F800  C8 62 D2 80 */	lfd f3, lbl_805AEFA0@sda21(r2)
/* 803928A4 0038F804  7C C7 32 14 */	add r6, r7, r6
/* 803928A8 0038F808  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803928AC 0038F80C  38 E0 00 00 */	li r7, 0
/* 803928B0 0038F810  FC 0B 07 F2 */	fmul f0, f11, f31
/* 803928B4 0038F814  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803928B8 0038F818  C8 42 D2 78 */	lfd f2, lbl_805AEF98@sda21(r2)
/* 803928BC 0038F81C  C9 41 00 18 */	lfd f10, 0x18(r1)
/* 803928C0 0038F820  C8 22 D2 70 */	lfd f1, lbl_805AEF90@sda21(r2)
/* 803928C4 0038F824  FF A0 00 32 */	fmul f29, f0, f0
/* 803928C8 0038F828  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803928CC 0038F82C  FC CA 30 28 */	fsub f6, f10, f6
/* 803928D0 0038F830  C9 02 D2 68 */	lfd f8, lbl_805AEF88@sda21(r2)
/* 803928D4 0038F834  90 E1 00 24 */	stw r7, 0x24(r1)
/* 803928D8 0038F838  FC A5 27 7A */	fmadd f5, f5, f29, f4
/* 803928DC 0038F83C  C9 A1 00 20 */	lfd f13, 0x20(r1)
/* 803928E0 0038F840  FD 87 30 28 */	fsub f12, f7, f6
/* 803928E4 0038F844  C9 22 D2 28 */	lfd f9, lbl_805AEF48@sda21(r2)
/* 803928E8 0038F848  FC CD 5A BC */	fnmsub f6, f13, f10, f11
/* 803928EC 0038F84C  C8 82 D2 A8 */	lfd f4, lbl_805AEFC8@sda21(r2)
/* 803928F0 0038F850  FC 7D 19 7A */	fmadd f3, f29, f5, f3
/* 803928F4 0038F854  C8 A2 D2 A0 */	lfd f5, lbl_805AEFC0@sda21(r2)
/* 803928F8 0038F858  C8 E2 D2 98 */	lfd f7, lbl_805AEFB8@sda21(r2)
/* 803928FC 0038F85C  FD 8D 33 3C */	fnmsub f12, f13, f12, f6
/* 80392900 0038F860  C8 C8 00 20 */	lfd f6, 0x20(r8)
/* 80392904 0038F864  FC 5D 10 FA */	fmadd f2, f29, f3, f2
/* 80392908 0038F868  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8039290C 0038F86C  FF CD 03 72 */	fmul f30, f13, f13
/* 80392910 0038F870  C8 62 D3 18 */	lfd f3, lbl_805AF038@sda21(r2)
/* 80392914 0038F874  90 01 00 58 */	stw r0, 0x58(r1)
/* 80392918 0038F878  FD 5D 08 BA */	fmadd f10, f29, f2, f1
/* 8039291C 0038F87C  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 80392920 0038F880  FD 7D 07 72 */	fmul f11, f29, f29
/* 80392924 0038F884  C8 28 00 10 */	lfd f1, 0x10(r8)
/* 80392928 0038F888  FD 1D 42 BA */	fmadd f8, f29, f10, f8
/* 8039292C 0038F88C  FD 9F 03 32 */	fmul f12, f31, f12
/* 80392930 0038F890  FD 6B 02 32 */	fmul f11, f11, f8
/* 80392934 0038F894  FD 4D 00 2A */	fadd f10, f13, f0
/* 80392938 0038F898  FD 09 F0 2A */	fadd f8, f9, f30
/* 8039293C 0038F89C  FC 42 18 28 */	fsub f2, f2, f3
/* 80392940 0038F8A0  FD 6C 5A BA */	fmadd f11, f12, f10, f11
/* 80392944 0038F8A4  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 80392948 0038F8A8  FC 68 58 2A */	fadd f3, f8, f11
/* 8039294C 0038F8AC  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 80392950 0038F8B0  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80392954 0038F8B4  C9 01 00 18 */	lfd f8, 0x18(r1)
/* 80392958 0038F8B8  FC 68 48 28 */	fsub f3, f8, f9
/* 8039295C 0038F8BC  FD 2D 02 32 */	fmul f9, f13, f8
/* 80392960 0038F8C0  FC 63 F0 28 */	fsub f3, f3, f30
/* 80392964 0038F8C4  FC 6B 18 28 */	fsub f3, f11, f3
/* 80392968 0038F8C8  FC 03 00 32 */	fmul f0, f3, f0
/* 8039296C 0038F8CC  FD 0C 02 3A */	fmadd f8, f12, f8, f0
/* 80392970 0038F8D0  FC 09 40 2A */	fadd f0, f9, f8
/* 80392974 0038F8D4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80392978 0038F8D8  90 E1 00 44 */	stw r7, 0x44(r1)
/* 8039297C 0038F8DC  C8 61 00 40 */	lfd f3, 0x40(r1)
/* 80392980 0038F8E0  FC 03 48 28 */	fsub f0, f3, f9
/* 80392984 0038F8E4  FC E7 00 F2 */	fmul f7, f7, f3
/* 80392988 0038F8E8  FC 08 00 28 */	fsub f0, f8, f0
/* 8039298C 0038F8EC  FC 04 00 32 */	fmul f0, f4, f0
/* 80392990 0038F8F0  FC 05 00 FA */	fmadd f0, f5, f3, f0
/* 80392994 0038F8F4  FC 66 00 2A */	fadd f3, f6, f0
/* 80392998 0038F8F8  FC 07 18 2A */	fadd f0, f7, f3
/* 8039299C 0038F8FC  FC 00 08 2A */	fadd f0, f0, f1
/* 803929A0 0038F900  FC 02 00 2A */	fadd f0, f2, f0
/* 803929A4 0038F904  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803929A8 0038F908  90 E1 00 34 */	stw r7, 0x34(r1)
/* 803929AC 0038F90C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803929B0 0038F910  FC 00 10 28 */	fsub f0, f0, f2
/* 803929B4 0038F914  FC 00 08 28 */	fsub f0, f0, f1
/* 803929B8 0038F918  FC 00 38 28 */	fsub f0, f0, f7
/* 803929BC 0038F91C  FC 03 00 28 */	fsub f0, f3, f0
lbl_803929C0:
/* 803929C0 0038F920  38 04 FF FF */	addi r0, r4, -1
/* 803929C4 0038F924  CB E2 D2 10 */	lfd f31, lbl_805AEF30@sda21(r2)
/* 803929C8 0038F928  7C 60 03 79 */	or. r0, r3, r0
/* 803929CC 0038F92C  40 82 00 08 */	bne lbl_803929D4
/* 803929D0 0038F930  CB E2 D2 B0 */	lfd f31, lbl_805AEFD0@sda21(r2)
lbl_803929D4:
/* 803929D4 0038F934  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803929D8 0038F938  38 60 00 00 */	li r3, 0
/* 803929DC 0038F93C  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 803929E0 0038F940  3C 00 40 90 */	lis r0, 0x4090
/* 803929E4 0038F944  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 803929E8 0038F948  FC 01 00 32 */	fmul f0, f1, f0
/* 803929EC 0038F94C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 803929F0 0038F950  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 803929F4 0038F954  FC 21 10 28 */	fsub f1, f1, f2
/* 803929F8 0038F958  FC 42 00 F2 */	fmul f2, f2, f3
/* 803929FC 0038F95C  FD 83 00 7A */	fmadd f12, f3, f1, f0
/* 80392A00 0038F960  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 80392A04 0038F964  FC 0C 10 2A */	fadd f0, f12, f2
/* 80392A08 0038F968  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80392A0C 0038F96C  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 80392A10 0038F970  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 80392A14 0038F974  7C 06 00 00 */	cmpw r6, r0
/* 80392A18 0038F978  41 80 00 44 */	blt lbl_80392A5C
/* 80392A1C 0038F97C  3C 06 BF 70 */	addis r0, r6, 0xbf70
/* 80392A20 0038F980  7C 00 2B 79 */	or. r0, r0, r5
/* 80392A24 0038F984  41 82 00 14 */	beq lbl_80392A38
/* 80392A28 0038F988  C8 22 D2 B8 */	lfd f1, lbl_805AEFD8@sda21(r2)
/* 80392A2C 0038F98C  FC 01 07 F2 */	fmul f0, f1, f31
/* 80392A30 0038F990  FC 21 00 32 */	fmul f1, f1, f0
/* 80392A34 0038F994  48 00 01 D0 */	b lbl_80392C04
lbl_80392A38:
/* 80392A38 0038F998  C8 22 D2 C0 */	lfd f1, lbl_805AEFE0@sda21(r2)
/* 80392A3C 0038F99C  FC 00 10 28 */	fsub f0, f0, f2
/* 80392A40 0038F9A0  FC 21 60 2A */	fadd f1, f1, f12
/* 80392A44 0038F9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80392A48 0038F9A8  40 81 00 68 */	ble lbl_80392AB0
/* 80392A4C 0038F9AC  C8 22 D2 B8 */	lfd f1, lbl_805AEFD8@sda21(r2)
/* 80392A50 0038F9B0  FC 01 07 F2 */	fmul f0, f1, f31
/* 80392A54 0038F9B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80392A58 0038F9B8  48 00 01 AC */	b lbl_80392C04
lbl_80392A5C:
/* 80392A5C 0038F9BC  3C 60 40 91 */	lis r3, 0x4090CC00@ha
/* 80392A60 0038F9C0  54 C4 00 7E */	clrlwi r4, r6, 1
/* 80392A64 0038F9C4  38 03 CC 00 */	addi r0, r3, 0x4090CC00@l
/* 80392A68 0038F9C8  7C 04 00 00 */	cmpw r4, r0
/* 80392A6C 0038F9CC  41 80 00 44 */	blt lbl_80392AB0
/* 80392A70 0038F9D0  3C 66 3F 6F */	addis r3, r6, 0x3f6f
/* 80392A74 0038F9D4  38 03 34 00 */	addi r0, r3, 0x3400
/* 80392A78 0038F9D8  7C 00 2B 79 */	or. r0, r0, r5
/* 80392A7C 0038F9DC  41 82 00 14 */	beq lbl_80392A90
/* 80392A80 0038F9E0  C8 22 D2 C8 */	lfd f1, lbl_805AEFE8@sda21(r2)
/* 80392A84 0038F9E4  FC 01 07 F2 */	fmul f0, f1, f31
/* 80392A88 0038F9E8  FC 21 00 32 */	fmul f1, f1, f0
/* 80392A8C 0038F9EC  48 00 01 78 */	b lbl_80392C04
lbl_80392A90:
/* 80392A90 0038F9F0  FC 00 10 28 */	fsub f0, f0, f2
/* 80392A94 0038F9F4  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 80392A98 0038F9F8  4C 40 13 82 */	cror 2, 0, 2
/* 80392A9C 0038F9FC  40 82 00 14 */	bne lbl_80392AB0
/* 80392AA0 0038FA00  C8 22 D2 C8 */	lfd f1, lbl_805AEFE8@sda21(r2)
/* 80392AA4 0038FA04  FC 01 07 F2 */	fmul f0, f1, f31
/* 80392AA8 0038FA08  FC 21 00 32 */	fmul f1, f1, f0
/* 80392AAC 0038FA0C  48 00 01 58 */	b lbl_80392C04
lbl_80392AB0:
/* 80392AB0 0038FA10  54 C3 00 7E */	clrlwi r3, r6, 1
/* 80392AB4 0038FA14  3C 00 3F E0 */	lis r0, 0x3fe0
/* 80392AB8 0038FA18  7C 03 00 00 */	cmpw r3, r0
/* 80392ABC 0038FA1C  54 C4 65 7E */	rlwinm r4, r6, 0xc, 0x15, 0x1f
/* 80392AC0 0038FA20  38 60 00 00 */	li r3, 0
/* 80392AC4 0038FA24  40 81 00 64 */	ble lbl_80392B28
/* 80392AC8 0038FA28  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 80392ACC 0038FA2C  38 04 FC 02 */	addi r0, r4, -1022
/* 80392AD0 0038FA30  7C 60 06 30 */	sraw r0, r3, r0
/* 80392AD4 0038FA34  C8 02 D2 18 */	lfd f0, lbl_805AEF38@sda21(r2)
/* 80392AD8 0038FA38  7C E6 02 14 */	add r7, r6, r0
/* 80392ADC 0038FA3C  38 63 FF FF */	addi r3, r3, 0x000FFFFF@l
/* 80392AE0 0038FA40  54 E0 00 7E */	clrlwi r0, r7, 1
/* 80392AE4 0038FA44  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80392AE8 0038FA48  7C 04 A6 70 */	srawi r4, r0, 0x14
/* 80392AEC 0038FA4C  54 E0 03 3E */	clrlwi r0, r7, 0xc
/* 80392AF0 0038FA50  38 A4 FC 01 */	addi r5, r4, -1023
/* 80392AF4 0038FA54  2C 06 00 00 */	cmpwi r6, 0
/* 80392AF8 0038FA58  7C 64 2E 30 */	sraw r4, r3, r5
/* 80392AFC 0038FA5C  64 03 00 10 */	oris r3, r0, 0x10
/* 80392B00 0038FA60  7C E4 20 78 */	andc r4, r7, r4
/* 80392B04 0038FA64  20 05 00 14 */	subfic r0, r5, 0x14
/* 80392B08 0038FA68  90 81 00 28 */	stw r4, 0x28(r1)
/* 80392B0C 0038FA6C  7C 63 06 30 */	sraw r3, r3, r0
/* 80392B10 0038FA70  40 80 00 08 */	bge lbl_80392B18
/* 80392B14 0038FA74  7C 63 00 D0 */	neg r3, r3
lbl_80392B18:
/* 80392B18 0038FA78  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80392B1C 0038FA7C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80392B20 0038FA80  FC 01 00 28 */	fsub f0, f1, f0
/* 80392B24 0038FA84  D8 01 00 40 */	stfd f0, 0x40(r1)
lbl_80392B28:
/* 80392B28 0038FA88  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 80392B2C 0038FA8C  38 00 00 00 */	li r0, 0
/* 80392B30 0038FA90  C8 22 D2 E0 */	lfd f1, lbl_805AF000@sda21(r2)
/* 80392B34 0038FA94  54 64 A0 16 */	slwi r4, r3, 0x14
/* 80392B38 0038FA98  FC 0C 10 2A */	fadd f0, f12, f2
/* 80392B3C 0038FA9C  C9 42 D2 D0 */	lfd f10, lbl_805AEFF0@sda21(r2)
/* 80392B40 0038FAA0  C9 22 D2 D8 */	lfd f9, lbl_805AEFF8@sda21(r2)
/* 80392B44 0038FAA4  C8 C2 D3 08 */	lfd f6, lbl_805AF028@sda21(r2)
/* 80392B48 0038FAA8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80392B4C 0038FAAC  C8 A2 D3 00 */	lfd f5, lbl_805AF020@sda21(r2)
/* 80392B50 0038FAB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80392B54 0038FAB4  C8 02 D2 F8 */	lfd f0, lbl_805AF018@sda21(r2)
/* 80392B58 0038FAB8  C9 61 00 28 */	lfd f11, 0x28(r1)
/* 80392B5C 0038FABC  C8 82 D2 F0 */	lfd f4, lbl_805AF010@sda21(r2)
/* 80392B60 0038FAC0  FD 0B 10 28 */	fsub f8, f11, f2
/* 80392B64 0038FAC4  C8 62 D2 E8 */	lfd f3, lbl_805AF008@sda21(r2)
/* 80392B68 0038FAC8  FC E1 02 F2 */	fmul f7, f1, f11
/* 80392B6C 0038FACC  C8 42 D3 10 */	lfd f2, lbl_805AF030@sda21(r2)
/* 80392B70 0038FAD0  C8 22 D2 10 */	lfd f1, lbl_805AEF30@sda21(r2)
/* 80392B74 0038FAD4  FD 0C 40 28 */	fsub f8, f12, f8
/* 80392B78 0038FAD8  FD 4A 02 F2 */	fmul f10, f10, f11
/* 80392B7C 0038FADC  FD 69 3A 3A */	fmadd f11, f9, f8, f7
/* 80392B80 0038FAE0  FD 2A 58 2A */	fadd f9, f10, f11
/* 80392B84 0038FAE4  FC E9 02 72 */	fmul f7, f9, f9
/* 80392B88 0038FAE8  D9 21 00 50 */	stfd f9, 0x50(r1)
/* 80392B8C 0038FAEC  FD 09 50 28 */	fsub f8, f9, f10
/* 80392B90 0038FAF0  FC A6 29 FA */	fmadd f5, f6, f7, f5
/* 80392B94 0038FAF4  D8 E1 00 28 */	stfd f7, 0x28(r1)
/* 80392B98 0038FAF8  FC CB 40 28 */	fsub f6, f11, f8
/* 80392B9C 0038FAFC  FC A7 01 7A */	fmadd f5, f7, f5, f0
/* 80392BA0 0038FB00  FC 09 31 BA */	fmadd f0, f9, f6, f6
/* 80392BA4 0038FB04  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 80392BA8 0038FB08  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 80392BAC 0038FB0C  FC 67 00 F2 */	fmul f3, f7, f3
/* 80392BB0 0038FB10  FC 89 18 28 */	fsub f4, f9, f3
/* 80392BB4 0038FB14  FC 69 01 32 */	fmul f3, f9, f4
/* 80392BB8 0038FB18  D8 81 00 30 */	stfd f4, 0x30(r1)
/* 80392BBC 0038FB1C  FC 44 10 28 */	fsub f2, f4, f2
/* 80392BC0 0038FB20  FC 43 10 24 */	fdiv f2, f3, f2
/* 80392BC4 0038FB24  FC 02 00 28 */	fsub f0, f2, f0
/* 80392BC8 0038FB28  FC 00 48 28 */	fsub f0, f0, f9
/* 80392BCC 0038FB2C  FC 21 00 28 */	fsub f1, f1, f0
/* 80392BD0 0038FB30  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 80392BD4 0038FB34  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80392BD8 0038FB38  7C 00 22 14 */	add r0, r0, r4
/* 80392BDC 0038FB3C  7C 00 A6 71 */	srawi. r0, r0, 0x14
/* 80392BE0 0038FB40  41 81 00 10 */	bgt lbl_80392BF0
/* 80392BE4 0038FB44  48 00 1A B5 */	bl ldexp
/* 80392BE8 0038FB48  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 80392BEC 0038FB4C  48 00 00 10 */	b lbl_80392BFC
lbl_80392BF0:
/* 80392BF0 0038FB50  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80392BF4 0038FB54  7C 00 22 14 */	add r0, r0, r4
/* 80392BF8 0038FB58  90 01 00 50 */	stw r0, 0x50(r1)
lbl_80392BFC:
/* 80392BFC 0038FB5C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80392C00 0038FB60  FC 3F 00 32 */	fmul f1, f31, f0
lbl_80392C04:
/* 80392C04 0038FB64  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80392C08 0038FB68  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80392C0C 0038FB6C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80392C10 0038FB70  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80392C14 0038FB74  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80392C18 0038FB78  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80392C1C 0038FB7C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80392C20 0038FB80  7C 08 03 A6 */	mtlr r0
/* 80392C24 0038FB84  38 21 00 90 */	addi r1, r1, 0x90
/* 80392C28 0038FB88  4E 80 00 20 */	blr 
