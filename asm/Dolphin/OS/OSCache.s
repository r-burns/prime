.include "macros.inc"

.section .text, "ax"

.global DCEnable
DCEnable:
/* 8037EA70 0037B9D0  7C 00 04 AC */	sync 0
/* 8037EA74 0037B9D4  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8037EA78 0037B9D8  60 63 40 00 */	ori r3, r3, 0x4000
/* 8037EA7C 0037B9DC  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8037EA80 0037B9E0  4E 80 00 20 */	blr 

.global DCInvalidateRange
DCInvalidateRange:
/* 8037EA84 0037B9E4  28 04 00 00 */	cmplwi r4, 0
/* 8037EA88 0037B9E8  4C 81 00 20 */	blelr 
/* 8037EA8C 0037B9EC  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EA90 0037B9F0  7C 84 2A 14 */	add r4, r4, r5
/* 8037EA94 0037B9F4  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EA98 0037B9F8  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EA9C 0037B9FC  7C 89 03 A6 */	mtctr r4
lbl_8037EAA0:
/* 8037EAA0 0037BA00  7C 00 1B AC */	dcbi 0, r3
/* 8037EAA4 0037BA04  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EAA8 0037BA08  42 00 FF F8 */	bdnz lbl_8037EAA0
/* 8037EAAC 0037BA0C  4E 80 00 20 */	blr 

.global DCFlushRange
DCFlushRange:
/* 8037EAB0 0037BA10  28 04 00 00 */	cmplwi r4, 0
/* 8037EAB4 0037BA14  4C 81 00 20 */	blelr 
/* 8037EAB8 0037BA18  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EABC 0037BA1C  7C 84 2A 14 */	add r4, r4, r5
/* 8037EAC0 0037BA20  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EAC4 0037BA24  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EAC8 0037BA28  7C 89 03 A6 */	mtctr r4
lbl_8037EACC:
/* 8037EACC 0037BA2C  7C 00 18 AC */	dcbf 0, r3
/* 8037EAD0 0037BA30  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EAD4 0037BA34  42 00 FF F8 */	bdnz lbl_8037EACC
/* 8037EAD8 0037BA38  44 00 00 02 */	sc 
/* 8037EADC 0037BA3C  4E 80 00 20 */	blr 

.global DCStoreRange
DCStoreRange:
/* 8037EAE0 0037BA40  28 04 00 00 */	cmplwi r4, 0
/* 8037EAE4 0037BA44  4C 81 00 20 */	blelr 
/* 8037EAE8 0037BA48  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EAEC 0037BA4C  7C 84 2A 14 */	add r4, r4, r5
/* 8037EAF0 0037BA50  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EAF4 0037BA54  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EAF8 0037BA58  7C 89 03 A6 */	mtctr r4
lbl_8037EAFC:
/* 8037EAFC 0037BA5C  7C 00 18 6C */	dcbst 0, r3
/* 8037EB00 0037BA60  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EB04 0037BA64  42 00 FF F8 */	bdnz lbl_8037EAFC
/* 8037EB08 0037BA68  44 00 00 02 */	sc 
/* 8037EB0C 0037BA6C  4E 80 00 20 */	blr 

.global DCFlushRangeNoSync
DCFlushRangeNoSync:
/* 8037EB10 0037BA70  28 04 00 00 */	cmplwi r4, 0
/* 8037EB14 0037BA74  4C 81 00 20 */	blelr 
/* 8037EB18 0037BA78  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EB1C 0037BA7C  7C 84 2A 14 */	add r4, r4, r5
/* 8037EB20 0037BA80  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EB24 0037BA84  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EB28 0037BA88  7C 89 03 A6 */	mtctr r4
lbl_8037EB2C:
/* 8037EB2C 0037BA8C  7C 00 18 AC */	dcbf 0, r3
/* 8037EB30 0037BA90  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EB34 0037BA94  42 00 FF F8 */	bdnz lbl_8037EB2C
/* 8037EB38 0037BA98  4E 80 00 20 */	blr 

.global DCStoreRangeNoSync
DCStoreRangeNoSync:
/* 8037EB3C 0037BA9C  28 04 00 00 */	cmplwi r4, 0
/* 8037EB40 0037BAA0  4C 81 00 20 */	blelr 
/* 8037EB44 0037BAA4  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EB48 0037BAA8  7C 84 2A 14 */	add r4, r4, r5
/* 8037EB4C 0037BAAC  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EB50 0037BAB0  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EB54 0037BAB4  7C 89 03 A6 */	mtctr r4
lbl_8037EB58:
/* 8037EB58 0037BAB8  7C 00 18 6C */	dcbst 0, r3
/* 8037EB5C 0037BABC  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EB60 0037BAC0  42 00 FF F8 */	bdnz lbl_8037EB58
/* 8037EB64 0037BAC4  4E 80 00 20 */	blr 

.global DCZeroRange
DCZeroRange:
/* 8037EB68 0037BAC8  28 04 00 00 */	cmplwi r4, 0
/* 8037EB6C 0037BACC  4C 81 00 20 */	blelr 
/* 8037EB70 0037BAD0  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EB74 0037BAD4  7C 84 2A 14 */	add r4, r4, r5
/* 8037EB78 0037BAD8  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EB7C 0037BADC  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EB80 0037BAE0  7C 89 03 A6 */	mtctr r4
lbl_8037EB84:
/* 8037EB84 0037BAE4  7C 00 1F EC */	dcbz 0, r3
/* 8037EB88 0037BAE8  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EB8C 0037BAEC  42 00 FF F8 */	bdnz lbl_8037EB84

.global sub_8037eb90
sub_8037eb90:
/* 8037EB90 0037BAF0  4E 80 00 20 */	blr 

.global ICInvalidateRange
ICInvalidateRange:
/* 8037EB94 0037BAF4  28 04 00 00 */	cmplwi r4, 0
/* 8037EB98 0037BAF8  4C 81 00 20 */	blelr 
/* 8037EB9C 0037BAFC  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8037EBA0 0037BB00  7C 84 2A 14 */	add r4, r4, r5
/* 8037EBA4 0037BB04  38 84 00 1F */	addi r4, r4, 0x1f
/* 8037EBA8 0037BB08  54 84 D9 7E */	srwi r4, r4, 5
/* 8037EBAC 0037BB0C  7C 89 03 A6 */	mtctr r4
lbl_8037EBB0:
/* 8037EBB0 0037BB10  7C 00 1F AC */	icbi 0, r3
/* 8037EBB4 0037BB14  38 63 00 20 */	addi r3, r3, 0x20
/* 8037EBB8 0037BB18  42 00 FF F8 */	bdnz lbl_8037EBB0
/* 8037EBBC 0037BB1C  7C 00 04 AC */	sync 0
/* 8037EBC0 0037BB20  4C 00 01 2C */	isync 
/* 8037EBC4 0037BB24  4E 80 00 20 */	blr 

.global ICFlashInvalidate
ICFlashInvalidate:
/* 8037EBC8 0037BB28  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8037EBCC 0037BB2C  60 63 08 00 */	ori r3, r3, 0x800
/* 8037EBD0 0037BB30  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8037EBD4 0037BB34  4E 80 00 20 */	blr 

.global ICEnable
ICEnable:
/* 8037EBD8 0037BB38  4C 00 01 2C */	isync 
/* 8037EBDC 0037BB3C  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 8037EBE0 0037BB40  60 63 80 00 */	ori r3, r3, 0x8000
/* 8037EBE4 0037BB44  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 8037EBE8 0037BB48  4E 80 00 20 */	blr 

.global __LCEnable
__LCEnable:
/* 8037EBEC 0037BB4C  7C A0 00 A6 */	mfmsr r5
/* 8037EBF0 0037BB50  60 A5 10 00 */	ori r5, r5, 0x1000
/* 8037EBF4 0037BB54  7C A0 01 24 */	mtmsr r5
/* 8037EBF8 0037BB58  3C 60 80 00 */	lis r3, 0x80000020@ha
/* 8037EBFC 0037BB5C  38 80 04 00 */	li r4, 0x400
/* 8037EC00 0037BB60  7C 89 03 A6 */	mtctr r4
lbl_8037EC04:
/* 8037EC04 0037BB64  7C 00 1A 2C */	dcbt 0, r3
/* 8037EC08 0037BB68  7C 00 18 6C */	dcbst 0, r3
/* 8037EC0C 0037BB6C  38 63 00 20 */	addi r3, r3, 0x80000020@l
/* 8037EC10 0037BB70  42 00 FF F4 */	bdnz lbl_8037EC04
/* 8037EC14 0037BB74  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8037EC18 0037BB78  64 84 10 0F */	oris r4, r4, 0x100f
/* 8037EC1C 0037BB7C  7C 98 E3 A6 */	mtspr 0x398, r4
/* 8037EC20 0037BB80  60 00 00 00 */	nop 
/* 8037EC24 0037BB84  60 00 00 00 */	nop 
/* 8037EC28 0037BB88  60 00 00 00 */	nop 
/* 8037EC2C 0037BB8C  60 00 00 00 */	nop 
/* 8037EC30 0037BB90  60 00 00 00 */	nop 
/* 8037EC34 0037BB94  60 00 00 00 */	nop 
/* 8037EC38 0037BB98  60 00 00 00 */	nop 
/* 8037EC3C 0037BB9C  60 00 00 00 */	nop 
/* 8037EC40 0037BBA0  60 00 00 00 */	nop 
/* 8037EC44 0037BBA4  60 00 00 00 */	nop 
/* 8037EC48 0037BBA8  60 00 00 00 */	nop 
/* 8037EC4C 0037BBAC  60 00 00 00 */	nop 
/* 8037EC50 0037BBB0  3C 60 E0 00 */	lis r3, 0xE0000002@h
/* 8037EC54 0037BBB4  60 63 00 02 */	ori r3, r3, 0xE0000002@l
/* 8037EC58 0037BBB8  7C 7F 83 A6 */	mtdbatl 3, r3
/* 8037EC5C 0037BBBC  60 63 01 FE */	ori r3, r3, 0x1fe
/* 8037EC60 0037BBC0  7C 7E 83 A6 */	mtdbatu 3, r3
/* 8037EC64 0037BBC4  4C 00 01 2C */	isync 
/* 8037EC68 0037BBC8  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 8037EC6C 0037BBCC  38 C0 02 00 */	li r6, 0x200
/* 8037EC70 0037BBD0  7C C9 03 A6 */	mtctr r6
/* 8037EC74 0037BBD4  38 C0 00 00 */	li r6, 0
lbl_8037EC78:
/* 8037EC78 0037BBD8  10 06 1F EC */	dcbz_l r6, r3
/* 8037EC7C 0037BBDC  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 8037EC80 0037BBE0  42 00 FF F8 */	bdnz lbl_8037EC78
/* 8037EC84 0037BBE4  60 00 00 00 */	nop 
/* 8037EC88 0037BBE8  60 00 00 00 */	nop 
/* 8037EC8C 0037BBEC  60 00 00 00 */	nop 
/* 8037EC90 0037BBF0  60 00 00 00 */	nop 
/* 8037EC94 0037BBF4  60 00 00 00 */	nop 
/* 8037EC98 0037BBF8  60 00 00 00 */	nop 
/* 8037EC9C 0037BBFC  60 00 00 00 */	nop 
/* 8037ECA0 0037BC00  60 00 00 00 */	nop 
/* 8037ECA4 0037BC04  60 00 00 00 */	nop 
/* 8037ECA8 0037BC08  60 00 00 00 */	nop 
/* 8037ECAC 0037BC0C  60 00 00 00 */	nop 
/* 8037ECB0 0037BC10  60 00 00 00 */	nop 
/* 8037ECB4 0037BC14  4E 80 00 20 */	blr 

.global LCEnable
LCEnable:
/* 8037ECB8 0037BC18  7C 08 02 A6 */	mflr r0
/* 8037ECBC 0037BC1C  90 01 00 04 */	stw r0, 4(r1)
/* 8037ECC0 0037BC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037ECC4 0037BC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037ECC8 0037BC28  48 00 29 99 */	bl OSDisableInterrupts
/* 8037ECCC 0037BC2C  7C 7F 1B 78 */	mr r31, r3
/* 8037ECD0 0037BC30  4B FF FF 1D */	bl __LCEnable
/* 8037ECD4 0037BC34  7F E3 FB 78 */	mr r3, r31
/* 8037ECD8 0037BC38  48 00 29 B1 */	bl OSRestoreInterrupts
/* 8037ECDC 0037BC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037ECE0 0037BC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037ECE4 0037BC44  38 21 00 10 */	addi r1, r1, 0x10
/* 8037ECE8 0037BC48  7C 08 03 A6 */	mtlr r0
/* 8037ECEC 0037BC4C  4E 80 00 20 */	blr 

.global LCDisable
LCDisable:
/* 8037ECF0 0037BC50  3C 60 E0 00 */	lis r3, 0xE0000020@ha
/* 8037ECF4 0037BC54  38 80 02 00 */	li r4, 0x200
/* 8037ECF8 0037BC58  7C 89 03 A6 */	mtctr r4
lbl_8037ECFC:
/* 8037ECFC 0037BC5C  7C 00 1B AC */	dcbi 0, r3
/* 8037ED00 0037BC60  38 63 00 20 */	addi r3, r3, 0xE0000020@l
/* 8037ED04 0037BC64  42 00 FF F8 */	bdnz lbl_8037ECFC
/* 8037ED08 0037BC68  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8037ED0C 0037BC6C  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 8037ED10 0037BC70  7C 98 E3 A6 */	mtspr 0x398, r4
/* 8037ED14 0037BC74  4E 80 00 20 */	blr 

.global sub_8037ed18
sub_8037ed18:
/* 8037ED18 0037BC78  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 8037ED1C 0037BC7C  54 84 01 3E */	clrlwi r4, r4, 4
/* 8037ED20 0037BC80  7C C6 23 78 */	or r6, r6, r4
/* 8037ED24 0037BC84  7C DA E3 A6 */	mtspr 0x39a, r6
/* 8037ED28 0037BC88  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 8037ED2C 0037BC8C  7C C6 1B 78 */	or r6, r6, r3
/* 8037ED30 0037BC90  60 C6 00 12 */	ori r6, r6, 0x12
/* 8037ED34 0037BC94  7C DB E3 A6 */	mtspr 0x39b, r6
/* 8037ED38 0037BC98  4E 80 00 20 */	blr 

.global LCStoreBlocks
LCStoreBlocks:
/* 8037ED3C 0037BC9C  54 A6 F6 FE */	rlwinm r6, r5, 0x1e, 0x1b, 0x1f
/* 8037ED40 0037BCA0  54 63 01 3E */	clrlwi r3, r3, 4
/* 8037ED44 0037BCA4  7C C6 1B 78 */	or r6, r6, r3
/* 8037ED48 0037BCA8  7C DA E3 A6 */	mtspr 0x39a, r6
/* 8037ED4C 0037BCAC  54 A6 17 3A */	rlwinm r6, r5, 2, 0x1c, 0x1d
/* 8037ED50 0037BCB0  7C C6 23 78 */	or r6, r6, r4
/* 8037ED54 0037BCB4  60 C6 00 02 */	ori r6, r6, 2
/* 8037ED58 0037BCB8  7C DB E3 A6 */	mtspr 0x39b, r6
/* 8037ED5C 0037BCBC  4E 80 00 20 */	blr 

.global sub_8037ed60
sub_8037ed60:
/* 8037ED60 0037BCC0  7C 08 02 A6 */	mflr r0
/* 8037ED64 0037BCC4  90 01 00 04 */	stw r0, 4(r1)
/* 8037ED68 0037BCC8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8037ED6C 0037BCCC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8037ED70 0037BCD0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8037ED74 0037BCD4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8037ED78 0037BCD8  93 81 00 18 */	stw r28, 0x18(r1)
/* 8037ED7C 0037BCDC  7C 7C 1B 78 */	mr r28, r3
/* 8037ED80 0037BCE0  7C 9D 23 78 */	mr r29, r4
/* 8037ED84 0037BCE4  38 05 00 1F */	addi r0, r5, 0x1f
/* 8037ED88 0037BCE8  54 03 D9 7E */	srwi r3, r0, 5
/* 8037ED8C 0037BCEC  38 03 00 7F */	addi r0, r3, 0x7f
/* 8037ED90 0037BCF0  7C 7F 1B 78 */	mr r31, r3
/* 8037ED94 0037BCF4  54 1E C9 FE */	srwi r30, r0, 7
/* 8037ED98 0037BCF8  48 00 00 04 */	b lbl_8037ED9C
lbl_8037ED9C:
/* 8037ED9C 0037BCFC  48 00 00 04 */	b lbl_8037EDA0
lbl_8037EDA0:
/* 8037EDA0 0037BD00  48 00 00 40 */	b lbl_8037EDE0
lbl_8037EDA4:
/* 8037EDA4 0037BD04  28 1F 00 80 */	cmplwi r31, 0x80
/* 8037EDA8 0037BD08  40 80 00 1C */	bge lbl_8037EDC4
/* 8037EDAC 0037BD0C  7F 83 E3 78 */	mr r3, r28
/* 8037EDB0 0037BD10  7F A4 EB 78 */	mr r4, r29
/* 8037EDB4 0037BD14  7F E5 FB 78 */	mr r5, r31
/* 8037EDB8 0037BD18  4B FF FF 61 */	bl sub_8037ed18
/* 8037EDBC 0037BD1C  3B E0 00 00 */	li r31, 0
/* 8037EDC0 0037BD20  48 00 00 20 */	b lbl_8037EDE0
lbl_8037EDC4:
/* 8037EDC4 0037BD24  7F 83 E3 78 */	mr r3, r28
/* 8037EDC8 0037BD28  7F A4 EB 78 */	mr r4, r29
/* 8037EDCC 0037BD2C  38 A0 00 00 */	li r5, 0
/* 8037EDD0 0037BD30  4B FF FF 49 */	bl sub_8037ed18
/* 8037EDD4 0037BD34  3B FF FF 80 */	addi r31, r31, -128
/* 8037EDD8 0037BD38  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 8037EDDC 0037BD3C  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_8037EDE0:
/* 8037EDE0 0037BD40  28 1F 00 00 */	cmplwi r31, 0
/* 8037EDE4 0037BD44  40 82 FF C0 */	bne lbl_8037EDA4
/* 8037EDE8 0037BD48  7F C3 F3 78 */	mr r3, r30
/* 8037EDEC 0037BD4C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037EDF0 0037BD50  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8037EDF4 0037BD54  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8037EDF8 0037BD58  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8037EDFC 0037BD5C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8037EE00 0037BD60  38 21 00 28 */	addi r1, r1, 0x28
/* 8037EE04 0037BD64  7C 08 03 A6 */	mtlr r0
/* 8037EE08 0037BD68  4E 80 00 20 */	blr 

.global LCStoreData
LCStoreData:
/* 8037EE0C 0037BD6C  7C 08 02 A6 */	mflr r0
/* 8037EE10 0037BD70  90 01 00 04 */	stw r0, 4(r1)
/* 8037EE14 0037BD74  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8037EE18 0037BD78  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8037EE1C 0037BD7C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8037EE20 0037BD80  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8037EE24 0037BD84  93 81 00 18 */	stw r28, 0x18(r1)
/* 8037EE28 0037BD88  7C 7C 1B 78 */	mr r28, r3
/* 8037EE2C 0037BD8C  7C 9D 23 78 */	mr r29, r4
/* 8037EE30 0037BD90  38 05 00 1F */	addi r0, r5, 0x1f
/* 8037EE34 0037BD94  54 03 D9 7E */	srwi r3, r0, 5
/* 8037EE38 0037BD98  38 03 00 7F */	addi r0, r3, 0x7f
/* 8037EE3C 0037BD9C  7C 7F 1B 78 */	mr r31, r3
/* 8037EE40 0037BDA0  54 1E C9 FE */	srwi r30, r0, 7
/* 8037EE44 0037BDA4  48 00 00 04 */	b lbl_8037EE48
lbl_8037EE48:
/* 8037EE48 0037BDA8  48 00 00 04 */	b lbl_8037EE4C
lbl_8037EE4C:
/* 8037EE4C 0037BDAC  48 00 00 40 */	b lbl_8037EE8C
lbl_8037EE50:
/* 8037EE50 0037BDB0  28 1F 00 80 */	cmplwi r31, 0x80
/* 8037EE54 0037BDB4  40 80 00 1C */	bge lbl_8037EE70
/* 8037EE58 0037BDB8  7F 83 E3 78 */	mr r3, r28
/* 8037EE5C 0037BDBC  7F A4 EB 78 */	mr r4, r29
/* 8037EE60 0037BDC0  7F E5 FB 78 */	mr r5, r31
/* 8037EE64 0037BDC4  4B FF FE D9 */	bl LCStoreBlocks
/* 8037EE68 0037BDC8  3B E0 00 00 */	li r31, 0
/* 8037EE6C 0037BDCC  48 00 00 20 */	b lbl_8037EE8C
lbl_8037EE70:
/* 8037EE70 0037BDD0  7F 83 E3 78 */	mr r3, r28
/* 8037EE74 0037BDD4  7F A4 EB 78 */	mr r4, r29
/* 8037EE78 0037BDD8  38 A0 00 00 */	li r5, 0
/* 8037EE7C 0037BDDC  4B FF FE C1 */	bl LCStoreBlocks
/* 8037EE80 0037BDE0  3B FF FF 80 */	addi r31, r31, -128
/* 8037EE84 0037BDE4  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 8037EE88 0037BDE8  3B BD 10 00 */	addi r29, r29, 0x1000
lbl_8037EE8C:
/* 8037EE8C 0037BDEC  28 1F 00 00 */	cmplwi r31, 0
/* 8037EE90 0037BDF0  40 82 FF C0 */	bne lbl_8037EE50
/* 8037EE94 0037BDF4  7F C3 F3 78 */	mr r3, r30
/* 8037EE98 0037BDF8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037EE9C 0037BDFC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8037EEA0 0037BE00  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8037EEA4 0037BE04  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8037EEA8 0037BE08  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8037EEAC 0037BE0C  38 21 00 28 */	addi r1, r1, 0x28
/* 8037EEB0 0037BE10  7C 08 03 A6 */	mtlr r0
/* 8037EEB4 0037BE14  4E 80 00 20 */	blr 

.global LCQueueLength
LCQueueLength:
/* 8037EEB8 0037BE18  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8037EEBC 0037BE1C  54 83 47 3E */	rlwinm r3, r4, 8, 0x1c, 0x1f
/* 8037EEC0 0037BE20  4E 80 00 20 */	blr 

.global LCQueueWait
LCQueueWait:
/* 8037EEC4 0037BE24  38 63 00 01 */	addi r3, r3, 1
lbl_8037EEC8:
/* 8037EEC8 0037BE28  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8037EECC 0037BE2C  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 8037EED0 0037BE30  7D 04 18 00 */	cmpw cr2, r4, r3
/* 8037EED4 0037BE34  40 88 FF F4 */	bge cr2, lbl_8037EEC8
/* 8037EED8 0037BE38  4E 80 00 20 */	blr 

.global L2GlobalInvalidate
L2GlobalInvalidate:
/* 8037EEDC 0037BE3C  7C 08 02 A6 */	mflr r0
/* 8037EEE0 0037BE40  90 01 00 04 */	stw r0, 4(r1)
/* 8037EEE4 0037BE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037EEE8 0037BE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037EEEC 0037BE4C  7C 00 04 AC */	sync 0
/* 8037EEF0 0037BE50  4B FF 09 05 */	bl PPCMfl2cr
/* 8037EEF4 0037BE54  54 63 00 7E */	clrlwi r3, r3, 1
/* 8037EEF8 0037BE58  4B FF 09 05 */	bl PPCMtl2cr
/* 8037EEFC 0037BE5C  7C 00 04 AC */	sync 0
/* 8037EF00 0037BE60  4B FF 08 F5 */	bl PPCMfl2cr
/* 8037EF04 0037BE64  64 63 00 20 */	oris r3, r3, 0x20
/* 8037EF08 0037BE68  4B FF 08 F5 */	bl PPCMtl2cr
/* 8037EF0C 0037BE6C  48 00 00 04 */	b lbl_8037EF10
lbl_8037EF10:
/* 8037EF10 0037BE70  48 00 00 04 */	b lbl_8037EF14
lbl_8037EF14:
/* 8037EF14 0037BE74  4B FF 08 E1 */	bl PPCMfl2cr
/* 8037EF18 0037BE78  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8037EF1C 0037BE7C  28 00 00 00 */	cmplwi r0, 0
/* 8037EF20 0037BE80  40 82 FF F4 */	bne lbl_8037EF14
/* 8037EF24 0037BE84  4B FF 08 D1 */	bl PPCMfl2cr
/* 8037EF28 0037BE88  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 8037EF2C 0037BE8C  4B FF 08 D1 */	bl PPCMtl2cr
/* 8037EF30 0037BE90  48 00 00 04 */	b lbl_8037EF34
lbl_8037EF34:
/* 8037EF34 0037BE94  3C 60 80 3F */	lis r3, lbl_803F1028@ha
/* 8037EF38 0037BE98  3B E3 10 28 */	addi r31, r3, lbl_803F1028@l
/* 8037EF3C 0037BE9C  48 00 00 04 */	b lbl_8037EF40
lbl_8037EF40:
/* 8037EF40 0037BEA0  48 00 00 10 */	b lbl_8037EF50
lbl_8037EF44:
/* 8037EF44 0037BEA4  7F E3 FB 78 */	mr r3, r31
/* 8037EF48 0037BEA8  4C C6 31 82 */	crclr 6
/* 8037EF4C 0037BEAC  4B FF 0A 1D */	bl DBPrintf
lbl_8037EF50:
/* 8037EF50 0037BEB0  4B FF 08 A5 */	bl PPCMfl2cr
/* 8037EF54 0037BEB4  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8037EF58 0037BEB8  28 00 00 00 */	cmplwi r0, 0
/* 8037EF5C 0037BEBC  40 82 FF E8 */	bne lbl_8037EF44
/* 8037EF60 0037BEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037EF64 0037BEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037EF68 0037BEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037EF6C 0037BECC  7C 08 03 A6 */	mtlr r0
/* 8037EF70 0037BED0  4E 80 00 20 */	blr 

.global DMAErrorHandler
DMAErrorHandler:
/* 8037EF74 0037BED4  7C 08 02 A6 */	mflr r0
/* 8037EF78 0037BED8  90 01 00 04 */	stw r0, 4(r1)
/* 8037EF7C 0037BEDC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8037EF80 0037BEE0  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8037EF84 0037BEE4  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8037EF88 0037BEE8  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8037EF8C 0037BEEC  40 86 00 24 */	bne cr1, lbl_8037EFB0
/* 8037EF90 0037BEF0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8037EF94 0037BEF4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8037EF98 0037BEF8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8037EF9C 0037BEFC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8037EFA0 0037BF00  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8037EFA4 0037BF04  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8037EFA8 0037BF08  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8037EFAC 0037BF0C  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8037EFB0:
/* 8037EFB0 0037BF10  90 61 00 08 */	stw r3, 8(r1)
/* 8037EFB4 0037BF14  90 81 00 0C */	stw r4, 0xc(r1)
/* 8037EFB8 0037BF18  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8037EFBC 0037BF1C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8037EFC0 0037BF20  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8037EFC4 0037BF24  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8037EFC8 0037BF28  91 21 00 20 */	stw r9, 0x20(r1)
/* 8037EFCC 0037BF2C  91 41 00 24 */	stw r10, 0x24(r1)
/* 8037EFD0 0037BF30  7C 9D 23 78 */	mr r29, r4
/* 8037EFD4 0037BF34  3C 60 80 3F */	lis r3, lbl_803F1028@ha
/* 8037EFD8 0037BF38  3B E3 10 28 */	addi r31, r3, lbl_803F1028@l
/* 8037EFDC 0037BF3C  4B FF 08 95 */	bl PPCMfhid2
/* 8037EFE0 0037BF40  7C 7E 1B 78 */	mr r30, r3
/* 8037EFE4 0037BF44  4C C6 31 82 */	crclr 6
/* 8037EFE8 0037BF48  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8037EFEC 0037BF4C  48 00 09 C1 */	bl OSReport
/* 8037EFF0 0037BF50  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 8037EFF4 0037BF54  7F C4 F3 78 */	mr r4, r30
/* 8037EFF8 0037BF58  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037EFFC 0037BF5C  4C C6 31 82 */	crclr 6
/* 8037F000 0037BF60  48 00 09 AD */	bl OSReport
/* 8037F004 0037BF64  57 C0 02 16 */	rlwinm r0, r30, 0, 8, 0xb
/* 8037F008 0037BF68  28 00 00 00 */	cmplwi r0, 0
/* 8037F00C 0037BF6C  41 82 00 14 */	beq lbl_8037F020
/* 8037F010 0037BF70  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 8037F014 0037BF74  54 00 02 94 */	rlwinm r0, r0, 0, 0xa, 0xa
/* 8037F018 0037BF78  28 00 00 00 */	cmplwi r0, 0
/* 8037F01C 0037BF7C  40 82 00 1C */	bne lbl_8037F038
lbl_8037F020:
/* 8037F020 0037BF80  38 7F 00 60 */	addi r3, r31, 0x60
/* 8037F024 0037BF84  4C C6 31 82 */	crclr 6
/* 8037F028 0037BF88  48 00 09 85 */	bl OSReport
/* 8037F02C 0037BF8C  7F A3 EB 78 */	mr r3, r29
/* 8037F030 0037BF90  48 00 06 09 */	bl OSDumpContext
/* 8037F034 0037BF94  4B FF 07 E1 */	bl PPCHalt
lbl_8037F038:
/* 8037F038 0037BF98  38 7F 00 90 */	addi r3, r31, 0x90
/* 8037F03C 0037BF9C  4C C6 31 82 */	crclr 6
/* 8037F040 0037BFA0  48 00 09 6D */	bl OSReport
/* 8037F044 0037BFA4  38 7F 00 CC */	addi r3, r31, 0xcc
/* 8037F048 0037BFA8  4C C6 31 82 */	crclr 6
/* 8037F04C 0037BFAC  48 00 09 61 */	bl OSReport
/* 8037F050 0037BFB0  57 C0 02 10 */	rlwinm r0, r30, 0, 8, 8
/* 8037F054 0037BFB4  28 00 00 00 */	cmplwi r0, 0
/* 8037F058 0037BFB8  41 82 00 10 */	beq lbl_8037F068
/* 8037F05C 0037BFBC  38 7F 01 04 */	addi r3, r31, 0x104
/* 8037F060 0037BFC0  4C C6 31 82 */	crclr 6
/* 8037F064 0037BFC4  48 00 09 49 */	bl OSReport
lbl_8037F068:
/* 8037F068 0037BFC8  57 C0 02 52 */	rlwinm r0, r30, 0, 9, 9
/* 8037F06C 0037BFCC  28 00 00 00 */	cmplwi r0, 0
/* 8037F070 0037BFD0  41 82 00 10 */	beq lbl_8037F080
/* 8037F074 0037BFD4  38 7F 01 44 */	addi r3, r31, 0x144
/* 8037F078 0037BFD8  4C C6 31 82 */	crclr 6
/* 8037F07C 0037BFDC  48 00 09 31 */	bl OSReport
lbl_8037F080:
/* 8037F080 0037BFE0  57 C0 02 94 */	rlwinm r0, r30, 0, 0xa, 0xa
/* 8037F084 0037BFE4  28 00 00 00 */	cmplwi r0, 0
/* 8037F088 0037BFE8  41 82 00 10 */	beq lbl_8037F098
/* 8037F08C 0037BFEC  38 7F 01 70 */	addi r3, r31, 0x170
/* 8037F090 0037BFF0  4C C6 31 82 */	crclr 6
/* 8037F094 0037BFF4  48 00 09 19 */	bl OSReport
lbl_8037F098:
/* 8037F098 0037BFF8  57 C0 02 D6 */	rlwinm r0, r30, 0, 0xb, 0xb
/* 8037F09C 0037BFFC  28 00 00 00 */	cmplwi r0, 0
/* 8037F0A0 0037C000  41 82 00 10 */	beq lbl_8037F0B0
/* 8037F0A4 0037C004  38 7F 01 90 */	addi r3, r31, 0x190
/* 8037F0A8 0037C008  4C C6 31 82 */	crclr 6
/* 8037F0AC 0037C00C  48 00 09 01 */	bl OSReport
lbl_8037F0B0:
/* 8037F0B0 0037C010  7F C3 F3 78 */	mr r3, r30
/* 8037F0B4 0037C014  4B FF 07 C5 */	bl PPCMthid2
/* 8037F0B8 0037C018  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8037F0BC 0037C01C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8037F0C0 0037C020  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8037F0C4 0037C024  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8037F0C8 0037C028  38 21 00 80 */	addi r1, r1, 0x80
/* 8037F0CC 0037C02C  7C 08 03 A6 */	mtlr r0
/* 8037F0D0 0037C030  4E 80 00 20 */	blr 

.global __OSCacheInit
__OSCacheInit:
/* 8037F0D4 0037C034  7C 08 02 A6 */	mflr r0
/* 8037F0D8 0037C038  90 01 00 04 */	stw r0, 4(r1)
/* 8037F0DC 0037C03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F0E0 0037C040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F0E4 0037C044  93 C1 00 08 */	stw r30, 8(r1)
/* 8037F0E8 0037C048  3C 60 80 3F */	lis r3, lbl_803F1028@ha
/* 8037F0EC 0037C04C  3B E3 10 28 */	addi r31, r3, lbl_803F1028@l
/* 8037F0F0 0037C050  4B FF 06 F5 */	bl PPCMfhid0
/* 8037F0F4 0037C054  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 8037F0F8 0037C058  28 00 00 00 */	cmplwi r0, 0
/* 8037F0FC 0037C05C  40 82 00 14 */	bne lbl_8037F110
/* 8037F100 0037C060  4B FF FA D9 */	bl ICEnable
/* 8037F104 0037C064  38 7F 01 AC */	addi r3, r31, 0x1ac
/* 8037F108 0037C068  4C C6 31 82 */	crclr 6
/* 8037F10C 0037C06C  4B FF 08 5D */	bl DBPrintf
lbl_8037F110:
/* 8037F110 0037C070  4B FF 06 D5 */	bl PPCMfhid0
/* 8037F114 0037C074  54 60 04 62 */	rlwinm r0, r3, 0, 0x11, 0x11
/* 8037F118 0037C078  28 00 00 00 */	cmplwi r0, 0
/* 8037F11C 0037C07C  40 82 00 14 */	bne lbl_8037F130
/* 8037F120 0037C080  4B FF F9 51 */	bl DCEnable
/* 8037F124 0037C084  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 8037F128 0037C088  4C C6 31 82 */	crclr 6
/* 8037F12C 0037C08C  4B FF 08 3D */	bl DBPrintf
lbl_8037F130:
/* 8037F130 0037C090  4B FF 06 C5 */	bl PPCMfl2cr
/* 8037F134 0037C094  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 8037F138 0037C098  28 00 00 00 */	cmplwi r0, 0
/* 8037F13C 0037C09C  40 82 00 58 */	bne lbl_8037F194
/* 8037F140 0037C0A0  4B FF 06 95 */	bl PPCMfmsr
/* 8037F144 0037C0A4  7C 7E 1B 78 */	mr r30, r3
/* 8037F148 0037C0A8  7C 00 04 AC */	sync 0
/* 8037F14C 0037C0AC  38 60 00 30 */	li r3, 0x30
/* 8037F150 0037C0B0  4B FF 06 8D */	bl PPCMtmsr
/* 8037F154 0037C0B4  7C 00 04 AC */	sync 0
/* 8037F158 0037C0B8  7C 00 04 AC */	sync 0
/* 8037F15C 0037C0BC  4B FF 06 99 */	bl PPCMfl2cr
/* 8037F160 0037C0C0  54 63 00 7E */	clrlwi r3, r3, 1
/* 8037F164 0037C0C4  4B FF 06 99 */	bl PPCMtl2cr
/* 8037F168 0037C0C8  7C 00 04 AC */	sync 0
/* 8037F16C 0037C0CC  4B FF FD 71 */	bl L2GlobalInvalidate
/* 8037F170 0037C0D0  7F C3 F3 78 */	mr r3, r30
/* 8037F174 0037C0D4  4B FF 06 69 */	bl PPCMtmsr
/* 8037F178 0037C0D8  4B FF 06 7D */	bl PPCMfl2cr
/* 8037F17C 0037C0DC  64 60 80 00 */	oris r0, r3, 0x8000
/* 8037F180 0037C0E0  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 8037F184 0037C0E4  4B FF 06 79 */	bl PPCMtl2cr
/* 8037F188 0037C0E8  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 8037F18C 0037C0EC  4C C6 31 82 */	crclr 6
/* 8037F190 0037C0F0  4B FF 07 D9 */	bl DBPrintf
lbl_8037F194:
/* 8037F194 0037C0F4  3C 60 80 38 */	lis r3, DMAErrorHandler@ha
/* 8037F198 0037C0F8  38 83 EF 74 */	addi r4, r3, DMAErrorHandler@l
/* 8037F19C 0037C0FC  38 60 00 01 */	li r3, 1
/* 8037F1A0 0037C100  48 00 09 B9 */	bl OSSetErrorHandler
/* 8037F1A4 0037C104  38 7F 01 FC */	addi r3, r31, 0x1fc
/* 8037F1A8 0037C108  4C C6 31 82 */	crclr 6
/* 8037F1AC 0037C10C  4B FF 07 BD */	bl DBPrintf
/* 8037F1B0 0037C110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F1B4 0037C114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F1B8 0037C118  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037F1BC 0037C11C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F1C0 0037C120  7C 08 03 A6 */	mtlr r0
/* 8037F1C4 0037C124  4E 80 00 20 */	blr 
