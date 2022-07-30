.include "macros.inc"

.section .text, "ax"

.global __CARDSeek
__CARDSeek:
/* 803BD510 003BA470  7C 08 02 A6 */	mflr r0
/* 803BD514 003BA474  90 01 00 04 */	stw r0, 4(r1)
/* 803BD518 003BA478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BD51C 003BA47C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803BD520 003BA480  3B E6 00 00 */	addi r31, r6, 0
/* 803BD524 003BA484  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803BD528 003BA488  3B C5 00 00 */	addi r30, r5, 0
/* 803BD52C 003BA48C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803BD530 003BA490  3B A4 00 00 */	addi r29, r4, 0
/* 803BD534 003BA494  38 81 00 18 */	addi r4, r1, 0x18
/* 803BD538 003BA498  93 81 00 20 */	stw r28, 0x20(r1)
/* 803BD53C 003BA49C  7C 7C 1B 78 */	mr r28, r3
/* 803BD540 003BA4A0  80 63 00 00 */	lwz r3, 0(r3)
/* 803BD544 003BA4A4  4B FF B8 5D */	bl __CARDGetControlBlock
/* 803BD548 003BA4A8  2C 03 00 00 */	cmpwi r3, 0
/* 803BD54C 003BA4AC  40 80 00 08 */	bge lbl_803BD554
/* 803BD550 003BA4B0  48 00 01 58 */	b lbl_803BD6A8
lbl_803BD554:
/* 803BD554 003BA4B4  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 803BD558 003BA4B8  28 00 00 05 */	cmplwi r0, 5
/* 803BD55C 003BA4BC  41 80 00 28 */	blt lbl_803BD584
/* 803BD560 003BA4C0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD564 003BA4C4  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 803BD568 003BA4C8  7C 00 28 40 */	cmplw r0, r5
/* 803BD56C 003BA4CC  40 80 00 18 */	bge lbl_803BD584
/* 803BD570 003BA4D0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803BD574 003BA4D4  80 1C 00 08 */	lwz r0, 8(r28)
/* 803BD578 003BA4D8  7C 85 21 D6 */	mullw r4, r5, r4
/* 803BD57C 003BA4DC  7C 04 00 00 */	cmpw r4, r0
/* 803BD580 003BA4E0  41 81 00 14 */	bgt lbl_803BD594
lbl_803BD584:
/* 803BD584 003BA4E4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD588 003BA4E8  38 80 FF 80 */	li r4, -128
/* 803BD58C 003BA4EC  4B FF B8 CD */	bl __CARDPutControlBlock
/* 803BD590 003BA4F0  48 00 01 18 */	b lbl_803BD6A8
lbl_803BD594:
/* 803BD594 003BA4F4  4B FF D3 DD */	bl __CARDGetDirBlock
/* 803BD598 003BA4F8  80 1C 00 04 */	lwz r0, 4(r28)
/* 803BD59C 003BA4FC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 803BD5A0 003BA500  54 00 30 32 */	slwi r0, r0, 6
/* 803BD5A4 003BA504  7C 83 02 14 */	add r4, r3, r0
/* 803BD5A8 003BA508  80 65 00 0C */	lwz r3, 0xc(r5)
/* 803BD5AC 003BA50C  A0 04 00 38 */	lhz r0, 0x38(r4)
/* 803BD5B0 003BA510  7C 60 19 D6 */	mullw r3, r0, r3
/* 803BD5B4 003BA514  7C 03 F0 00 */	cmpw r3, r30
/* 803BD5B8 003BA518  40 81 00 10 */	ble lbl_803BD5C8
/* 803BD5BC 003BA51C  7C 1E EA 14 */	add r0, r30, r29
/* 803BD5C0 003BA520  7C 03 00 00 */	cmpw r3, r0
/* 803BD5C4 003BA524  40 80 00 14 */	bge lbl_803BD5D8
lbl_803BD5C8:
/* 803BD5C8 003BA528  38 65 00 00 */	addi r3, r5, 0
/* 803BD5CC 003BA52C  38 80 FF F5 */	li r4, -11
/* 803BD5D0 003BA530  4B FF B8 89 */	bl __CARDPutControlBlock
/* 803BD5D4 003BA534  48 00 00 D4 */	b lbl_803BD6A8
lbl_803BD5D8:
/* 803BD5D8 003BA538  93 85 00 C0 */	stw r28, 0xc0(r5)
/* 803BD5DC 003BA53C  93 BC 00 0C */	stw r29, 0xc(r28)
/* 803BD5E0 003BA540  80 1C 00 08 */	lwz r0, 8(r28)
/* 803BD5E4 003BA544  7C 1E 00 00 */	cmpw r30, r0
/* 803BD5E8 003BA548  40 80 00 40 */	bge lbl_803BD628
/* 803BD5EC 003BA54C  38 00 00 00 */	li r0, 0
/* 803BD5F0 003BA550  90 1C 00 08 */	stw r0, 8(r28)
/* 803BD5F4 003BA554  A0 04 00 36 */	lhz r0, 0x36(r4)
/* 803BD5F8 003BA558  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 803BD5FC 003BA55C  A0 9C 00 10 */	lhz r4, 0x10(r28)
/* 803BD600 003BA560  28 04 00 05 */	cmplwi r4, 5
/* 803BD604 003BA564  41 80 00 14 */	blt lbl_803BD618
/* 803BD608 003BA568  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD60C 003BA56C  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 803BD610 003BA570  7C 04 00 40 */	cmplw r4, r0
/* 803BD614 003BA574  41 80 00 14 */	blt lbl_803BD628
lbl_803BD618:
/* 803BD618 003BA578  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD61C 003BA57C  38 80 FF FA */	li r4, -6
/* 803BD620 003BA580  4B FF B8 39 */	bl __CARDPutControlBlock
/* 803BD624 003BA584  48 00 00 84 */	b lbl_803BD6A8
lbl_803BD628:
/* 803BD628 003BA588  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD62C 003BA58C  4B FF CF 41 */	bl __CARDGetFatBlock
/* 803BD630 003BA590  48 00 00 4C */	b lbl_803BD67C
lbl_803BD634:
/* 803BD634 003BA594  80 1C 00 08 */	lwz r0, 8(r28)
/* 803BD638 003BA598  7C 00 22 14 */	add r0, r0, r4
/* 803BD63C 003BA59C  90 1C 00 08 */	stw r0, 8(r28)
/* 803BD640 003BA5A0  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 803BD644 003BA5A4  54 00 08 3C */	slwi r0, r0, 1
/* 803BD648 003BA5A8  7C 03 02 2E */	lhzx r0, r3, r0
/* 803BD64C 003BA5AC  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 803BD650 003BA5B0  A0 BC 00 10 */	lhz r5, 0x10(r28)
/* 803BD654 003BA5B4  28 05 00 05 */	cmplwi r5, 5
/* 803BD658 003BA5B8  41 80 00 14 */	blt lbl_803BD66C
/* 803BD65C 003BA5BC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BD660 003BA5C0  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 803BD664 003BA5C4  7C 05 00 40 */	cmplw r5, r0
/* 803BD668 003BA5C8  41 80 00 14 */	blt lbl_803BD67C
lbl_803BD66C:
/* 803BD66C 003BA5CC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BD670 003BA5D0  38 80 FF FA */	li r4, -6
/* 803BD674 003BA5D4  4B FF B7 E5 */	bl __CARDPutControlBlock
/* 803BD678 003BA5D8  48 00 00 30 */	b lbl_803BD6A8
lbl_803BD67C:
/* 803BD67C 003BA5DC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803BD680 003BA5E0  80 BC 00 08 */	lwz r5, 8(r28)
/* 803BD684 003BA5E4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 803BD688 003BA5E8  38 04 FF FF */	addi r0, r4, -1
/* 803BD68C 003BA5EC  7F C0 00 78 */	andc r0, r30, r0
/* 803BD690 003BA5F0  7C 05 00 40 */	cmplw r5, r0
/* 803BD694 003BA5F4  41 80 FF A0 */	blt lbl_803BD634
/* 803BD698 003BA5F8  93 DC 00 08 */	stw r30, 8(r28)
/* 803BD69C 003BA5FC  38 60 00 00 */	li r3, 0
/* 803BD6A0 003BA600  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803BD6A4 003BA604  90 1F 00 00 */	stw r0, 0(r31)
lbl_803BD6A8:
/* 803BD6A8 003BA608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BD6AC 003BA60C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803BD6B0 003BA610  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803BD6B4 003BA614  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803BD6B8 003BA618  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803BD6BC 003BA61C  38 21 00 30 */	addi r1, r1, 0x30
/* 803BD6C0 003BA620  7C 08 03 A6 */	mtlr r0
/* 803BD6C4 003BA624  4E 80 00 20 */	blr

ReadCallback:
/* 803BD6C8 003BA628  7C 08 02 A6 */	mflr r0
/* 803BD6CC 003BA62C  90 01 00 04 */	stw r0, 4(r1)
/* 803BD6D0 003BA630  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803BD6D4 003BA634  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 803BD6D8 003BA638  3B A3 00 00 */	addi r29, r3, 0
/* 803BD6DC 003BA63C  3C 60 80 57 */	lis r3, __CARDBlock@ha
/* 803BD6E0 003BA640  1C BD 01 10 */	mulli r5, r29, 0x110
/* 803BD6E4 003BA644  38 03 9A 58 */	addi r0, r3, __CARDBlock@l
/* 803BD6E8 003BA648  7C 9E 23 79 */	or. r30, r4, r4
/* 803BD6EC 003BA64C  7F E0 2A 14 */	add r31, r0, r5
/* 803BD6F0 003BA650  41 80 00 C8 */	blt lbl_803BD7B8
/* 803BD6F4 003BA654  83 9F 00 C0 */	lwz r28, 0xc0(r31)
/* 803BD6F8 003BA658  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 803BD6FC 003BA65C  2C 04 00 00 */	cmpwi r4, 0
/* 803BD700 003BA660  40 80 00 0C */	bge lbl_803BD70C
/* 803BD704 003BA664  3B C0 FF F2 */	li r30, -14
/* 803BD708 003BA668  48 00 00 B0 */	b lbl_803BD7B8
lbl_803BD70C:
/* 803BD70C 003BA66C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803BD710 003BA670  80 DC 00 08 */	lwz r6, 8(r28)
/* 803BD714 003BA674  38 05 FF FF */	addi r0, r5, -1
/* 803BD718 003BA678  7C 03 00 F8 */	nor r3, r0, r0
/* 803BD71C 003BA67C  7C 06 2A 14 */	add r0, r6, r5
/* 803BD720 003BA680  7C 60 00 38 */	and r0, r3, r0
/* 803BD724 003BA684  7F 66 00 50 */	subf r27, r6, r0
/* 803BD728 003BA688  7C 1B 20 50 */	subf r0, r27, r4
/* 803BD72C 003BA68C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 803BD730 003BA690  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803BD734 003BA694  2C 00 00 00 */	cmpwi r0, 0
/* 803BD738 003BA698  40 81 00 80 */	ble lbl_803BD7B8
/* 803BD73C 003BA69C  7F E3 FB 78 */	mr r3, r31
/* 803BD740 003BA6A0  4B FF CE 2D */	bl __CARDGetFatBlock
/* 803BD744 003BA6A4  80 1C 00 08 */	lwz r0, 8(r28)
/* 803BD748 003BA6A8  7C 00 DA 14 */	add r0, r0, r27
/* 803BD74C 003BA6AC  90 1C 00 08 */	stw r0, 8(r28)
/* 803BD750 003BA6B0  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 803BD754 003BA6B4  54 00 08 3C */	slwi r0, r0, 1
/* 803BD758 003BA6B8  7C 03 02 2E */	lhzx r0, r3, r0
/* 803BD75C 003BA6BC  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 803BD760 003BA6C0  A0 7C 00 10 */	lhz r3, 0x10(r28)
/* 803BD764 003BA6C4  28 03 00 05 */	cmplwi r3, 5
/* 803BD768 003BA6C8  41 80 00 10 */	blt lbl_803BD778
/* 803BD76C 003BA6CC  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 803BD770 003BA6D0  7C 03 00 40 */	cmplw r3, r0
/* 803BD774 003BA6D4  41 80 00 0C */	blt lbl_803BD780
lbl_803BD778:
/* 803BD778 003BA6D8  3B C0 FF FA */	li r30, -6
/* 803BD77C 003BA6DC  48 00 00 3C */	b lbl_803BD7B8
lbl_803BD780:
/* 803BD780 003BA6E0  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 803BD784 003BA6E4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BD788 003BA6E8  7C 05 00 00 */	cmpw r5, r0
/* 803BD78C 003BA6EC  40 80 00 08 */	bge lbl_803BD794
/* 803BD790 003BA6F0  48 00 00 08 */	b lbl_803BD798
lbl_803BD794:
/* 803BD794 003BA6F4  7C 05 03 78 */	mr r5, r0
lbl_803BD798:
/* 803BD798 003BA6F8  7C 80 19 D6 */	mullw r4, r0, r3
/* 803BD79C 003BA6FC  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 803BD7A0 003BA700  3C 60 80 3C */	lis r3, ReadCallback@ha
/* 803BD7A4 003BA704  38 E3 D6 C8 */	addi r7, r3, ReadCallback@l
/* 803BD7A8 003BA708  38 7D 00 00 */	addi r3, r29, 0
/* 803BD7AC 003BA70C  4B FF CC 1D */	bl __CARDRead
/* 803BD7B0 003BA710  7C 7E 1B 79 */	or. r30, r3, r3
/* 803BD7B4 003BA714  40 80 00 30 */	bge lbl_803BD7E4
lbl_803BD7B8:
/* 803BD7B8 003BA718  83 7F 00 D0 */	lwz r27, 0xd0(r31)
/* 803BD7BC 003BA71C  38 00 00 00 */	li r0, 0
/* 803BD7C0 003BA720  38 7F 00 00 */	addi r3, r31, 0
/* 803BD7C4 003BA724  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 803BD7C8 003BA728  7F C4 F3 78 */	mr r4, r30
/* 803BD7CC 003BA72C  4B FF B6 8D */	bl __CARDPutControlBlock
/* 803BD7D0 003BA730  39 9B 00 00 */	addi r12, r27, 0
/* 803BD7D4 003BA734  7D 88 03 A6 */	mtlr r12
/* 803BD7D8 003BA738  38 7D 00 00 */	addi r3, r29, 0
/* 803BD7DC 003BA73C  38 9E 00 00 */	addi r4, r30, 0
/* 803BD7E0 003BA740  4E 80 00 21 */	blrl
lbl_803BD7E4:
/* 803BD7E4 003BA744  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 803BD7E8 003BA748  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803BD7EC 003BA74C  38 21 00 28 */	addi r1, r1, 0x28
/* 803BD7F0 003BA750  7C 08 03 A6 */	mtlr r0
/* 803BD7F4 003BA754  4E 80 00 20 */	blr

.global CARDReadAsync
CARDReadAsync:
/* 803BD7F8 003BA758  7C 08 02 A6 */	mflr r0
/* 803BD7FC 003BA75C  90 01 00 04 */	stw r0, 4(r1)
/* 803BD800 003BA760  54 C0 05 FF */	clrlwi. r0, r6, 0x17
/* 803BD804 003BA764  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 803BD808 003BA768  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 803BD80C 003BA76C  3B A3 00 00 */	addi r29, r3, 0
/* 803BD810 003BA770  3B C4 00 00 */	addi r30, r4, 0
/* 803BD814 003BA774  3B E5 00 00 */	addi r31, r5, 0
/* 803BD818 003BA778  3B 67 00 00 */	addi r27, r7, 0
/* 803BD81C 003BA77C  40 82 00 0C */	bne lbl_803BD828
/* 803BD820 003BA780  57 E0 05 FF */	clrlwi. r0, r31, 0x17
/* 803BD824 003BA784  41 82 00 0C */	beq lbl_803BD830
lbl_803BD828:
/* 803BD828 003BA788  38 60 FF 80 */	li r3, -128
/* 803BD82C 003BA78C  48 00 01 00 */	b lbl_803BD92C
lbl_803BD830:
/* 803BD830 003BA790  38 7D 00 00 */	addi r3, r29, 0
/* 803BD834 003BA794  38 9F 00 00 */	addi r4, r31, 0
/* 803BD838 003BA798  38 A6 00 00 */	addi r5, r6, 0
/* 803BD83C 003BA79C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 803BD840 003BA7A0  4B FF FC D1 */	bl __CARDSeek
/* 803BD844 003BA7A4  2C 03 00 00 */	cmpwi r3, 0
/* 803BD848 003BA7A8  40 80 00 08 */	bge lbl_803BD850
/* 803BD84C 003BA7AC  48 00 00 E0 */	b lbl_803BD92C
lbl_803BD850:
/* 803BD850 003BA7B0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD854 003BA7B4  4B FF D1 1D */	bl __CARDGetDirBlock
/* 803BD858 003BA7B8  80 1D 00 04 */	lwz r0, 4(r29)
/* 803BD85C 003BA7BC  54 00 30 32 */	slwi r0, r0, 6
/* 803BD860 003BA7C0  7F 83 02 14 */	add r28, r3, r0
/* 803BD864 003BA7C4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD868 003BA7C8  7F 84 E3 78 */	mr r4, r28
/* 803BD86C 003BA7CC  4B FF F5 69 */	bl __CARDAccess
/* 803BD870 003BA7D0  38 83 00 00 */	addi r4, r3, 0
/* 803BD874 003BA7D4  2C 04 FF F6 */	cmpwi r4, -10
/* 803BD878 003BA7D8  40 82 00 10 */	bne lbl_803BD888
/* 803BD87C 003BA7DC  7F 83 E3 78 */	mr r3, r28
/* 803BD880 003BA7E0  4B FF F5 ED */	bl sub_803bce6c
/* 803BD884 003BA7E4  7C 64 1B 78 */	mr r4, r3
lbl_803BD888:
/* 803BD888 003BA7E8  2C 04 00 00 */	cmpwi r4, 0
/* 803BD88C 003BA7EC  40 80 00 10 */	bge lbl_803BD89C
/* 803BD890 003BA7F0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD894 003BA7F4  4B FF B5 C5 */	bl __CARDPutControlBlock
/* 803BD898 003BA7F8  48 00 00 94 */	b lbl_803BD92C
lbl_803BD89C:
/* 803BD89C 003BA7FC  38 7E 00 00 */	addi r3, r30, 0
/* 803BD8A0 003BA800  38 9F 00 00 */	addi r4, r31, 0
/* 803BD8A4 003BA804  4B FC 11 E1 */	bl DCInvalidateRange
/* 803BD8A8 003BA808  28 1B 00 00 */	cmplwi r27, 0
/* 803BD8AC 003BA80C  41 82 00 0C */	beq lbl_803BD8B8
/* 803BD8B0 003BA810  7F 60 DB 78 */	mr r0, r27
/* 803BD8B4 003BA814  48 00 00 0C */	b lbl_803BD8C0
lbl_803BD8B8:
/* 803BD8B8 003BA818  3C 60 80 3B */	lis r3, __CARDDefaultApiCallback@ha
/* 803BD8BC 003BA81C  38 03 7E 74 */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_803BD8C0:
/* 803BD8C0 003BA820  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD8C4 003BA824  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 803BD8C8 003BA828  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD8CC 003BA82C  80 9D 00 08 */	lwz r4, 8(r29)
/* 803BD8D0 003BA830  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803BD8D4 003BA834  38 05 FF FF */	addi r0, r5, -1
/* 803BD8D8 003BA838  7C 88 00 38 */	and r8, r4, r0
/* 803BD8DC 003BA83C  7C 68 28 50 */	subf r3, r8, r5
/* 803BD8E0 003BA840  7C 1F 18 00 */	cmpw r31, r3
/* 803BD8E4 003BA844  40 80 00 08 */	bge lbl_803BD8EC
/* 803BD8E8 003BA848  7F E3 FB 78 */	mr r3, r31
lbl_803BD8EC:
/* 803BD8EC 003BA84C  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 803BD8F0 003BA850  3C 80 80 3C */	lis r4, ReadCallback@ha
/* 803BD8F4 003BA854  3B E3 00 00 */	addi r31, r3, 0
/* 803BD8F8 003BA858  80 7D 00 00 */	lwz r3, 0(r29)
/* 803BD8FC 003BA85C  7C 05 01 D6 */	mullw r0, r5, r0
/* 803BD900 003BA860  38 E4 D6 C8 */	addi r7, r4, ReadCallback@l
/* 803BD904 003BA864  38 BF 00 00 */	addi r5, r31, 0
/* 803BD908 003BA868  38 DE 00 00 */	addi r6, r30, 0
/* 803BD90C 003BA86C  7C 88 02 14 */	add r4, r8, r0
/* 803BD910 003BA870  4B FF CA B9 */	bl __CARDRead
/* 803BD914 003BA874  7C 7D 1B 79 */	or. r29, r3, r3
/* 803BD918 003BA878  40 80 00 10 */	bge lbl_803BD928
/* 803BD91C 003BA87C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BD920 003BA880  7F A4 EB 78 */	mr r4, r29
/* 803BD924 003BA884  4B FF B5 35 */	bl __CARDPutControlBlock
lbl_803BD928:
/* 803BD928 003BA888  7F A3 EB 78 */	mr r3, r29
lbl_803BD92C:
/* 803BD92C 003BA88C  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 803BD930 003BA890  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803BD934 003BA894  38 21 00 38 */	addi r1, r1, 0x38
/* 803BD938 003BA898  7C 08 03 A6 */	mtlr r0
/* 803BD93C 003BA89C  4E 80 00 20 */	blr
