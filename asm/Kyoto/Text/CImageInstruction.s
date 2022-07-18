.include "macros.inc"

.section .data

.global lbl_803EF798
lbl_803EF798:
	# ROM: 0x3EC798
	.4byte 0
	.4byte 0
	.4byte __dt__17CImageInstructionFv
	.4byte Invoke__17CImageInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte PageInvoke__12CInstructionCFR16CFontRenderStateP17CTextRenderBuffer
	.4byte "GetAssets__17CImageInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
	.4byte GetAssetCount__17CImageInstructionCFv
	.4byte 0

.section .text, "ax"

.global __dt__17CImageInstructionFv
__dt__17CImageInstructionFv:
/* 80359718 00356678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035971C 0035667C  7C 08 02 A6 */	mflr r0
/* 80359720 00356680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359724 00356684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80359728 00356688  7C 9F 23 78 */	mr r31, r4
/* 8035972C 0035668C  93 C1 00 08 */	stw r30, 8(r1)
/* 80359730 00356690  7C 7E 1B 79 */	or. r30, r3, r3
/* 80359734 00356694  41 82 00 40 */	beq lbl_80359774
/* 80359738 00356698  3C 80 80 3F */	lis r4, lbl_803EF798@ha
/* 8035973C 0035669C  38 7E 00 04 */	addi r3, r30, 4
/* 80359740 003566A0  38 04 F7 98 */	addi r0, r4, lbl_803EF798@l
/* 80359744 003566A4  38 80 FF FF */	li r4, -1
/* 80359748 003566A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8035974C 003566AC  4B CC F4 B1 */	bl sub_80028bfc
/* 80359750 003566B0  28 1E 00 00 */	cmplwi r30, 0
/* 80359754 003566B4  41 82 00 10 */	beq lbl_80359764
/* 80359758 003566B8  3C 60 80 3E */	lis r3, lbl_803D9A6C@ha
/* 8035975C 003566BC  38 03 9A 6C */	addi r0, r3, lbl_803D9A6C@l
/* 80359760 003566C0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80359764:
/* 80359764 003566C4  7F E0 07 35 */	extsh. r0, r31
/* 80359768 003566C8  40 81 00 0C */	ble lbl_80359774
/* 8035976C 003566CC  7F C3 F3 78 */	mr r3, r30
/* 80359770 003566D0  4B FB C1 C1 */	bl Free__7CMemoryFPCv
lbl_80359774:
/* 80359774 003566D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359778 003566D8  7F C3 F3 78 */	mr r3, r30
/* 8035977C 003566DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359780 003566E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80359784 003566E4  7C 08 03 A6 */	mtlr r0
/* 80359788 003566E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8035978C 003566EC  4E 80 00 20 */	blr

.global GetAssetCount__17CImageInstructionCFv
GetAssetCount__17CImageInstructionCFv:
/* 80359790 003566F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80359794 003566F4  4E 80 00 20 */	blr

.global "GetAssets__17CImageInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
"GetAssets__17CImageInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>":
/* 80359798 003566F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035979C 003566FC  7C 08 02 A6 */	mflr r0
/* 803597A0 00356700  90 01 00 24 */	stw r0, 0x24(r1)
/* 803597A4 00356704  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 803597A8 00356708  7C 7B 1B 78 */	mr r27, r3
/* 803597AC 0035670C  7C 9C 23 78 */	mr r28, r4
/* 803597B0 00356710  3B A0 00 00 */	li r29, 0
/* 803597B4 00356714  3B C0 00 00 */	li r30, 0
/* 803597B8 00356718  48 00 00 64 */	b lbl_8035981C
lbl_803597BC:
/* 803597BC 0035671C  80 1C 00 04 */	lwz r0, 4(r28)
/* 803597C0 00356720  80 BC 00 08 */	lwz r5, 8(r28)
/* 803597C4 00356724  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 803597C8 00356728  7C 00 28 00 */	cmpw r0, r5
/* 803597CC 0035672C  7F E3 F2 14 */	add r31, r3, r30
/* 803597D0 00356730  41 80 00 1C */	blt lbl_803597EC
/* 803597D4 00356734  2C 05 00 00 */	cmpwi r5, 0
/* 803597D8 00356738  7F 83 E3 78 */	mr r3, r28
/* 803597DC 0035673C  38 80 00 04 */	li r4, 4
/* 803597E0 00356740  41 82 00 08 */	beq lbl_803597E8
/* 803597E4 00356744  54 A4 08 3C */	slwi r4, r5, 1
lbl_803597E8:
/* 803597E8 00356748  4B CA F1 75 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
lbl_803597EC:
/* 803597EC 0035674C  80 1C 00 04 */	lwz r0, 4(r28)
/* 803597F0 00356750  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803597F4 00356754  54 00 18 38 */	slwi r0, r0, 3
/* 803597F8 00356758  7C 63 02 15 */	add. r3, r3, r0
/* 803597FC 0035675C  41 82 00 0C */	beq lbl_80359808
/* 80359800 00356760  7F E4 FB 78 */	mr r4, r31
/* 80359804 00356764  4B FE 76 A5 */	bl __ct__6CTokenFRC6CToken
lbl_80359808:
/* 80359808 00356768  80 7C 00 04 */	lwz r3, 4(r28)
/* 8035980C 0035676C  3B DE 00 08 */	addi r30, r30, 8
/* 80359810 00356770  3B BD 00 01 */	addi r29, r29, 1
/* 80359814 00356774  38 03 00 01 */	addi r0, r3, 1
/* 80359818 00356778  90 1C 00 04 */	stw r0, 4(r28)
lbl_8035981C:
/* 8035981C 0035677C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80359820 00356780  7C 1D 00 00 */	cmpw r29, r0
/* 80359824 00356784  41 80 FF 98 */	blt lbl_803597BC
/* 80359828 00356788  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8035982C 0035678C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359830 00356790  7C 08 03 A6 */	mtlr r0
/* 80359834 00356794  38 21 00 20 */	addi r1, r1, 0x20
/* 80359838 00356798  4E 80 00 20 */	blr

.global Invoke__17CImageInstructionCFR16CFontRenderStateP17CTextRenderBuffer
Invoke__17CImageInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 8035983C 0035679C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80359840 003567A0  7C 08 02 A6 */	mflr r0
/* 80359844 003567A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80359848 003567A8  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 8035984C 003567AC  7C 7D 1B 78 */	mr r29, r3
/* 80359850 003567B0  7C 9E 23 78 */	mr r30, r4
/* 80359854 003567B4  7C BF 2B 78 */	mr r31, r5
/* 80359858 003567B8  38 7D 00 04 */	addi r3, r29, 4
/* 8035985C 003567BC  4B FF FC 99 */	bl IsLoaded__13CFontImageDefCFv
/* 80359860 003567C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359864 003567C4  41 82 01 7C */	beq lbl_803599E0
/* 80359868 003567C8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8035986C 003567CC  2C 00 00 00 */	cmpwi r0, 0
/* 80359870 003567D0  41 82 01 70 */	beq lbl_803599E0
/* 80359874 003567D4  80 7E 00 88 */	lwz r3, 0x88(r30)
/* 80359878 003567D8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8035987C 003567DC  2C 00 00 00 */	cmpwi r0, 0
/* 80359880 003567E0  40 82 00 B0 */	bne lbl_80359930
/* 80359884 003567E4  28 1F 00 00 */	cmplwi r31, 0
/* 80359888 003567E8  41 82 00 40 */	beq lbl_803598C8
/* 8035988C 003567EC  83 7E 00 D8 */	lwz r27, 0xd8(r30)
/* 80359890 003567F0  83 5E 00 D4 */	lwz r26, 0xd4(r30)
/* 80359894 003567F4  80 7E 00 DC */	lwz r3, 0xdc(r30)
/* 80359898 003567F8  4B FA 60 65 */	bl GetBaseline__16CLineInstructionFv
/* 8035989C 003567FC  7F 9B 1A 14 */	add r28, r27, r3
/* 803598A0 00356800  38 7D 00 04 */	addi r3, r29, 4
/* 803598A4 00356804  4B FF FB 99 */	bl CalculateBaseline__13CFontImageDefFv
/* 803598A8 00356808  7C A3 E0 50 */	subf r5, r3, r28
/* 803598AC 0035680C  7F 44 D3 78 */	mr r4, r26
/* 803598B0 00356810  38 61 00 20 */	addi r3, r1, 0x20
/* 803598B4 00356814  4B FB AA 99 */	bl __ct__9CVector2iFii
/* 803598B8 00356818  7C 64 1B 78 */	mr r4, r3
/* 803598BC 0035681C  7F E3 FB 78 */	mr r3, r31
/* 803598C0 00356820  38 BD 00 04 */	addi r5, r29, 4
/* 803598C4 00356824  48 00 13 05 */	bl AddImage__17CTextRenderBufferFRC9CVector2iRC13CFontImageDef
lbl_803598C8:
/* 803598C8 00356828  83 7E 00 D4 */	lwz r27, 0xd4(r30)
/* 803598CC 0035682C  38 61 00 08 */	addi r3, r1, 8
/* 803598D0 00356830  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 803598D4 00356834  4B FE 75 D5 */	bl __ct__6CTokenFRC6CToken
/* 803598D8 00356838  38 61 00 08 */	addi r3, r1, 8
/* 803598DC 0035683C  4B FE 75 31 */	bl GetObj__6CTokenFv
/* 803598E0 00356840  80 83 00 04 */	lwz r4, 4(r3)
/* 803598E4 00356844  3C 00 43 30 */	lis r0, 0x4330
/* 803598E8 00356848  90 01 00 28 */	stw r0, 0x28(r1)
/* 803598EC 0035684C  38 61 00 08 */	addi r3, r1, 8
/* 803598F0 00356850  A8 04 00 04 */	lha r0, 4(r4)
/* 803598F4 00356854  38 80 00 00 */	li r4, 0
/* 803598F8 00356858  C8 42 CC F8 */	lfd f2, lbl_805AEA18@sda21(r2)
/* 803598FC 0035685C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80359900 00356860  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80359904 00356864  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80359908 00356868  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8035990C 0035686C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80359910 00356870  EC 01 00 32 */	fmuls f0, f1, f0
/* 80359914 00356874  FC 00 00 1E */	fctiwz f0, f0
/* 80359918 00356878  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8035991C 0035687C  83 81 00 34 */	lwz r28, 0x34(r1)
/* 80359920 00356880  4B FE 75 21 */	bl __dt__6CTokenFv
/* 80359924 00356884  7C 1B E2 14 */	add r0, r27, r28
/* 80359928 00356888  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 8035992C 0035688C  48 00 00 B4 */	b lbl_803599E0
lbl_80359930:
/* 80359930 00356890  80 BE 00 DC */	lwz r5, 0xdc(r30)
/* 80359934 00356894  38 61 00 10 */	addi r3, r1, 0x10
/* 80359938 00356898  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8035993C 0035689C  83 85 00 08 */	lwz r28, 8(r5)
/* 80359940 003568A0  4B FE 75 69 */	bl __ct__6CTokenFRC6CToken
/* 80359944 003568A4  38 61 00 10 */	addi r3, r1, 0x10
/* 80359948 003568A8  4B FE 74 C5 */	bl GetObj__6CTokenFv
/* 8035994C 003568AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80359950 003568B0  3C 00 43 30 */	lis r0, 0x4330
/* 80359954 003568B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80359958 003568B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8035995C 003568BC  A8 04 00 04 */	lha r0, 4(r4)
/* 80359960 003568C0  38 80 00 00 */	li r4, 0
/* 80359964 003568C4  C8 42 CC F8 */	lfd f2, lbl_805AEA18@sda21(r2)
/* 80359968 003568C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035996C 003568CC  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80359970 003568D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80359974 003568D4  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 80359978 003568D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8035997C 003568DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80359980 003568E0  FC 00 00 1E */	fctiwz f0, f0
/* 80359984 003568E4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80359988 003568E8  83 61 00 2C */	lwz r27, 0x2c(r1)
/* 8035998C 003568EC  4B FE 74 B5 */	bl __dt__6CTokenFv
/* 80359990 003568F0  7C 7B E0 50 */	subf r3, r27, r28
/* 80359994 003568F4  28 1F 00 00 */	cmplwi r31, 0
/* 80359998 003568F8  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8035999C 003568FC  7C 00 1A 14 */	add r0, r0, r3
/* 803599A0 00356900  7C 04 0E 70 */	srawi r4, r0, 1
/* 803599A4 00356904  41 82 00 28 */	beq lbl_803599CC
/* 803599A8 00356908  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 803599AC 0035690C  38 61 00 18 */	addi r3, r1, 0x18
/* 803599B0 00356910  80 BE 00 D8 */	lwz r5, 0xd8(r30)
/* 803599B4 00356914  7C 84 02 14 */	add r4, r4, r0
/* 803599B8 00356918  4B FB A9 95 */	bl __ct__9CVector2iFii
/* 803599BC 0035691C  7C 64 1B 78 */	mr r4, r3
/* 803599C0 00356920  7F E3 FB 78 */	mr r3, r31
/* 803599C4 00356924  38 BD 00 04 */	addi r5, r29, 4
/* 803599C8 00356928  48 00 12 01 */	bl AddImage__17CTextRenderBufferFRC9CVector2iRC13CFontImageDef
lbl_803599CC:
/* 803599CC 0035692C  83 5E 00 D8 */	lwz r26, 0xd8(r30)
/* 803599D0 00356930  38 7D 00 04 */	addi r3, r29, 4
/* 803599D4 00356934  48 00 00 21 */	bl CalculateHeight__13CFontImageDefFv
/* 803599D8 00356938  7C 1A 1A 14 */	add r0, r26, r3
/* 803599DC 0035693C  90 1E 00 D8 */	stw r0, 0xd8(r30)
lbl_803599E0:
/* 803599E0 00356940  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 803599E4 00356944  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803599E8 00356948  7C 08 03 A6 */	mtlr r0
/* 803599EC 0035694C  38 21 00 50 */	addi r1, r1, 0x50
/* 803599F0 00356950  4E 80 00 20 */	blr

.global CalculateHeight__13CFontImageDefFv
CalculateHeight__13CFontImageDefFv:
/* 803599F4 00356954  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803599F8 00356958  7C 08 02 A6 */	mflr r0
/* 803599FC 0035695C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80359A00 00356960  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80359A04 00356964  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80359A08 00356968  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80359A0C 0035696C  7C 7D 1B 78 */	mr r29, r3
/* 80359A10 00356970  38 61 00 10 */	addi r3, r1, 0x10
/* 80359A14 00356974  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80359A18 00356978  4B FE 74 91 */	bl __ct__6CTokenFRC6CToken
/* 80359A1C 0035697C  38 61 00 10 */	addi r3, r1, 0x10
/* 80359A20 00356980  4B FE 73 ED */	bl GetObj__6CTokenFv
/* 80359A24 00356984  80 83 00 04 */	lwz r4, 4(r3)
/* 80359A28 00356988  3C 00 43 30 */	lis r0, 0x4330
/* 80359A2C 0035698C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80359A30 00356990  38 61 00 10 */	addi r3, r1, 0x10
/* 80359A34 00356994  A8 04 00 06 */	lha r0, 6(r4)
/* 80359A38 00356998  38 80 00 00 */	li r4, 0
/* 80359A3C 0035699C  C8 42 CC F8 */	lfd f2, lbl_805AEA18@sda21(r2)
/* 80359A40 003569A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80359A44 003569A4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80359A48 003569A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80359A4C 003569AC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80359A50 003569B0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80359A54 003569B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80359A58 003569B8  FC 00 00 1E */	fctiwz f0, f0
/* 80359A5C 003569BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80359A60 003569C0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80359A64 003569C4  4B FE 73 DD */	bl __dt__6CTokenFv
/* 80359A68 003569C8  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80359A6C 003569CC  38 61 00 08 */	addi r3, r1, 8
/* 80359A70 003569D0  4B FE 74 39 */	bl __ct__6CTokenFRC6CToken
/* 80359A74 003569D4  38 61 00 08 */	addi r3, r1, 8
/* 80359A78 003569D8  4B FE 73 95 */	bl GetObj__6CTokenFv
/* 80359A7C 003569DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80359A80 003569E0  3C 00 43 30 */	lis r0, 0x4330
/* 80359A84 003569E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80359A88 003569E8  38 61 00 08 */	addi r3, r1, 8
/* 80359A8C 003569EC  A8 04 00 06 */	lha r0, 6(r4)
/* 80359A90 003569F0  38 80 00 00 */	li r4, 0
/* 80359A94 003569F4  C8 42 CC F8 */	lfd f2, lbl_805AEA18@sda21(r2)
/* 80359A98 003569F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80359A9C 003569FC  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80359AA0 00356A00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80359AA4 00356A04  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80359AA8 00356A08  EC 21 10 28 */	fsubs f1, f1, f2
/* 80359AAC 00356A0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80359AB0 00356A10  FC 00 00 1E */	fctiwz f0, f0
/* 80359AB4 00356A14  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80359AB8 00356A18  83 C1 00 34 */	lwz r30, 0x34(r1)
/* 80359ABC 00356A1C  4B FE 73 85 */	bl __dt__6CTokenFv
/* 80359AC0 00356A20  7F A3 EB 78 */	mr r3, r29
/* 80359AC4 00356A24  4B FF F9 79 */	bl CalculateBaseline__13CFontImageDefFv
/* 80359AC8 00356A28  7C 03 F0 50 */	subf r0, r3, r30
/* 80359ACC 00356A2C  7C 60 F8 50 */	subf r3, r0, r31
/* 80359AD0 00356A30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80359AD4 00356A34  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80359AD8 00356A38  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80359ADC 00356A3C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80359AE0 00356A40  7C 08 03 A6 */	mtlr r0
/* 80359AE4 00356A44  38 21 00 50 */	addi r1, r1, 0x50
/* 80359AE8 00356A48  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AEA18
lbl_805AEA18:
	# ROM: 0x3FB2B8
	.double 4.503601774854144E15

