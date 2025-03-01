.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_DolphinCGraphics_cpp

.section .data
.balign 8

.global mViewport__9CGraphics
mViewport__9CGraphics:
	.4byte 0
	.4byte 0
	.4byte 0x00000280
	.4byte 0x000001E0
	.4byte 0x43A00000
	.4byte 0x43700000

.global mLightTypes__9CGraphics
mLightTypes__9CGraphics:
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002

.global lbl_803ED948
lbl_803ED948:
	.4byte lbl_8030A4CC
	.4byte lbl_8030A614
	.4byte lbl_8030A754
	.4byte lbl_8030AB30
	.4byte lbl_8030A8FC
	.4byte lbl_8030AA14
	.4byte lbl_8030AC34
	.4byte lbl_8030AD80

.section .sdata
.balign 8

.global kEnvPassthru__9CGraphics
kEnvPassthru__9CGraphics:
	.4byte kEnvPassthru__13CTevCombiners

.global mIsBeginSceneClearFb__9CGraphics
mIsBeginSceneClearFb__9CGraphics:
	.byte 0x01
	.balign 4

.global mDepthFunc__9CGraphics
mDepthFunc__9CGraphics:
	.4byte 0x00000003

.global mCurrentPrimitive__9CGraphics
mCurrentPrimitive__9CGraphics:
	.4byte 0x000000B8

.global mDepthFar__9CGraphics
mDepthFar__9CGraphics:
	.float 1.0

.global mClearDepthValue__9CGraphics
mClearDepthValue__9CGraphics:
	.4byte 0x00FFFFFF

.global mIsGXModelMatrixIdentity__9CGraphics
mIsGXModelMatrixIdentity__9CGraphics:
	.byte 0x01

.global mFirstFrame__9CGraphics
mFirstFrame__9CGraphics:
	.byte 0x01

.global mUseVideoFilter__9CGraphics
mUseVideoFilter__9CGraphics:
	.2byte 0x00000100

.global mBrightness__9CGraphics
mBrightness__9CGraphics:
	.float 1.0

.global mBrightnessMin__9CGraphics
mBrightnessMin__9CGraphics:
	.float 0.0

.global mBrightnessMax__9CGraphics
mBrightnessMax__9CGraphics:
	.float 2.0

.section .bss
.balign 8

.lcomm sSpareFrameBuffer, 0x46000, 4
.lcomm kEnvBlendCTandCConCF, 0x4C, 4
.comm kEnvModulateConstColor__9CGraphics, 0x4C, 4
.comm lbl_805A56E4, 0x78C, 4 # MWCC .comm bug
.comm kEnvConstColor__9CGraphics, 0x4C, 4
.comm kEnvModulate__9CGraphics, 0x4C, 4
.comm kEnvDecal__9CGraphics, 0x4C, 4
.comm kEnvBlend__9CGraphics, 0x4C, 4
.comm kEnvReplace__9CGraphics, 0x4C, 4
.comm kEnvModulateAlpha__9CGraphics, 0x4C, 4
.comm kEnvModulateColor__9CGraphics, 0x4C, 4
.comm kEnvModulateColorByAlpha__9CGraphics, 0x4C, 4
.comm mLightParams, 0xA0, 4
.comm vtxDescr, 0x30, 4
.comm kDefaultPositionVector__9CGraphics, 0xC, 4
.comm kDefaultDirectionVector__9CGraphics, 0xC, 4
.comm mProj__9CGraphics, 0x1C, 4
.comm mViewMatrix__9CGraphics, 0x30, 4
.comm mModelMatrix__9CGraphics, 0x30, 4
.comm mViewPoint__9CGraphics, 0xC, 4
.comm mLightObj__9CGraphics, 0x200, 4
.comm mTexRegions__9CGraphics, 0x80, 4
.comm mTexRegionsCI__9CGraphics, 0x40, 4
.comm mRenderModeObj__9CGraphics, 0x3C, 4
.comm mGXViewPointMatrix__9CGraphics, 0x30, 4
.comm mGXModelMatrix__9CGraphics, 0x30, 4
.comm mGxModelView__9CGraphics, 0x30, 4
.comm mCameraMtx__9CGraphics, 0x30, 4

.section .sbss, "wa"
.balign 8

.global mGraphicsInitialized__12CGraphicsSys
mGraphicsInitialized__12CGraphicsSys:
	.skip 0x8
.global sFPSTimer
sFPSTimer:
	.skip 0x8
.global sRenderState__9CGraphics
sRenderState__9CGraphics:
	.skip 0x8
.global vtxBuffer__9CGraphics
vtxBuffer__9CGraphics:
	.skip 0x4
.global nrmBuffer__9CGraphics
nrmBuffer__9CGraphics:
	.skip 0x4
.global txtBuffer0__9CGraphics
txtBuffer0__9CGraphics:
	.skip 0x4
.global txtBuffer1__9CGraphics
txtBuffer1__9CGraphics:
	.skip 0x4
.global clrBuffer__9CGraphics
clrBuffer__9CGraphics:
	.skip 0x4
.global mJustReset__9CGraphics
mJustReset__9CGraphics:
	.skip 0x4
.global mCullMode__9CGraphics
mCullMode__9CGraphics:
	.skip 0x4
.global mNumLightsActive__9CGraphics
mNumLightsActive__9CGraphics:
	.skip 0x4
.global mDepthNear__9CGraphics
mDepthNear__9CGraphics:
	.skip 0x4
.global mpVtxBuffer__9CGraphics
mpVtxBuffer__9CGraphics:
	.skip 0x4
.global mpNrmBuffer__9CGraphics
mpNrmBuffer__9CGraphics:
	.skip 0x4
.global mpTxtBuffer0__9CGraphics
mpTxtBuffer0__9CGraphics:
	.skip 0x4
.global mpTxtBuffer1__9CGraphics
mpTxtBuffer1__9CGraphics:
	.skip 0x4
.global mpClrBuffer__9CGraphics
mpClrBuffer__9CGraphics:
	.skip 0x4
.global mClearColor__9CGraphics
mClearColor__9CGraphics:
	.skip 0x4
.global mNumPrimitives__9CGraphics
mNumPrimitives__9CGraphics:
	.skip 0x4
.global mFrameCounter__9CGraphics
mFrameCounter__9CGraphics:
	.skip 0x4
.global mFramesPerSecond__9CGraphics
mFramesPerSecond__9CGraphics:
	.skip 0x4
.global mLastFramesPerSecond__9CGraphics
mLastFramesPerSecond__9CGraphics:
	.skip 0x4
.global mNumBreakpointsWaiting__9CGraphics
mNumBreakpointsWaiting__9CGraphics:
	.skip 0x4
.global mFlippingState__9CGraphics
mFlippingState__9CGraphics:
	.skip 0x4
.global mLastFrameUsedAbove__9CGraphics
mLastFrameUsedAbove__9CGraphics:
	.skip 0x1
.global mInterruptLastFrameUsedAbove__9CGraphics
mInterruptLastFrameUsedAbove__9CGraphics:
	.skip 0x1
.global mLightActive__9CGraphics
mLightActive__9CGraphics:
	.skip 0x1
.global mLightsWereOn__9CGraphics
mLightsWereOn__9CGraphics:
	.skip 0x1
.global mpFrameBuf1__9CGraphics
mpFrameBuf1__9CGraphics:
	.skip 0x4
.global mpFrameBuf2__9CGraphics
mpFrameBuf2__9CGraphics:
	.skip 0x4
.global mpCurrenFrameBuf__9CGraphics
mpCurrenFrameBuf__9CGraphics:
	.skip 0x4
.global mSpareBufferSize__9CGraphics
mSpareBufferSize__9CGraphics:
	.skip 0x4
.global mpSpareBuffer__9CGraphics
mpSpareBuffer__9CGraphics:
	.skip 0x4
.global mSpareBufferTexCacheSize__9CGraphics
mSpareBufferTexCacheSize__9CGraphics:
	.skip 0x4
.global mGXDefaultTexRegionCallback__9CGraphics
mGXDefaultTexRegionCallback__9CGraphics:
	.skip 0x4
.global mpFifo__9CGraphics
mpFifo__9CGraphics:
	.skip 0x4
.global mpFifoObj__9CGraphics
mpFifoObj__9CGraphics:
	.skip 0x4
.global mRenderTimings__9CGraphics
mRenderTimings__9CGraphics:
	.skip 0x4
.global mSecondsMod900__9CGraphics
mSecondsMod900__9CGraphics:
	.skip 0x4
.global mpExternalTimeProvider__9CGraphics
mpExternalTimeProvider__9CGraphics:
	.skip 0x4
.global mScreenStretch__9CGraphics
mScreenStretch__9CGraphics:
	.skip 0x4
.global mScreenPositionX__9CGraphics
mScreenPositionX__9CGraphics:
	.skip 0x4
.global mScreenPositionY__9CGraphics
mScreenPositionY__9CGraphics:
	.skip 0x4
.global "nextTexRgn$2336"
"nextTexRgn$2336":
	.skip 0x4
.global "init$2337"
"init$2337":
	.skip 0x4
.global "nextTexRgnCI$2339"
"nextTexRgnCI$2339":
	.skip 0x4
.global "init$2340"
"init$2340":
	.skip 0x8

.section .text, "ax"

.global ResetFlushAll__Q29CGraphics12CRenderStateFv
ResetFlushAll__Q29CGraphics12CRenderStateFv:
/* 803092F8 00306258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803092FC 0030625C  7C 08 02 A6 */	mflr r0
/* 80309300 00306260  38 80 00 00 */	li r4, 0
/* 80309304 00306264  38 A0 00 00 */	li r5, 0
/* 80309308 00306268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030930C 0030626C  38 00 00 00 */	li r0, 0
/* 80309310 00306270  38 C0 00 00 */	li r6, 0
/* 80309314 00306274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309318 00306278  93 C1 00 08 */	stw r30, 8(r1)
/* 8030931C 0030627C  7C 7E 1B 78 */	mr r30, r3
/* 80309320 00306280  90 03 00 00 */	stw r0, 0(r3)
/* 80309324 00306284  48 00 00 45 */	bl SetVtxState__Q29CGraphics12CRenderStateFPCfPCfPCUi
/* 80309328 00306288  3B E0 00 00 */	li r31, 0
lbl_8030932C:
/* 8030932C 0030628C  38 7F 00 0D */	addi r3, r31, 0xd
/* 80309330 00306290  38 80 00 00 */	li r4, 0
/* 80309334 00306294  38 A0 00 08 */	li r5, 8
/* 80309338 00306298  4B FF F3 0D */	bl SetArray__3CGXF7_GXAttrPCvUc
/* 8030933C 0030629C  3B FF 00 01 */	addi r31, r31, 1
/* 80309340 003062A0  2C 1F 00 08 */	cmpwi r31, 8
/* 80309344 003062A4  41 80 FF E8 */	blt lbl_8030932C
/* 80309348 003062A8  7F C3 F3 78 */	mr r3, r30
/* 8030934C 003062AC  48 00 00 99 */	bl Flush__Q29CGraphics12CRenderStateFv
/* 80309350 003062B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309354 003062B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309358 003062B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030935C 003062BC  7C 08 03 A6 */	mtlr r0
/* 80309360 003062C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80309364 003062C4  4E 80 00 20 */	blr

.global SetVtxState__Q29CGraphics12CRenderStateFPCfPCfPCUi
SetVtxState__Q29CGraphics12CRenderStateFPCfPCfPCUi:
/* 80309368 003062C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030936C 003062CC  7C 08 02 A6 */	mflr r0
/* 80309370 003062D0  38 60 00 09 */	li r3, 9
/* 80309374 003062D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309378 003062D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030937C 003062DC  7C DF 33 78 */	mr r31, r6
/* 80309380 003062E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80309384 003062E4  7C BE 2B 78 */	mr r30, r5
/* 80309388 003062E8  38 A0 00 0C */	li r5, 0xc
/* 8030938C 003062EC  4B FF F2 B9 */	bl SetArray__3CGXF7_GXAttrPCvUc
/* 80309390 003062F0  7F C4 F3 78 */	mr r4, r30
/* 80309394 003062F4  38 60 00 0A */	li r3, 0xa
/* 80309398 003062F8  38 A0 00 0C */	li r5, 0xc
/* 8030939C 003062FC  4B FF F2 A9 */	bl SetArray__3CGXF7_GXAttrPCvUc
/* 803093A0 00306300  7F E4 FB 78 */	mr r4, r31
/* 803093A4 00306304  38 60 00 0B */	li r3, 0xb
/* 803093A8 00306308  38 A0 00 04 */	li r5, 4
/* 803093AC 0030630C  4B FF F2 99 */	bl SetArray__3CGXF7_GXAttrPCvUc
/* 803093B0 00306310  28 1E 00 00 */	cmplwi r30, 0
/* 803093B4 00306314  38 60 00 01 */	li r3, 1
/* 803093B8 00306318  41 82 00 08 */	beq lbl_803093C0
/* 803093BC 0030631C  60 63 00 02 */	ori r3, r3, 2
lbl_803093C0:
/* 803093C0 00306320  28 1F 00 00 */	cmplwi r31, 0
/* 803093C4 00306324  41 82 00 08 */	beq lbl_803093CC
/* 803093C8 00306328  60 63 00 10 */	ori r3, r3, 0x10
lbl_803093CC:
/* 803093CC 0030632C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803093D0 00306330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803093D4 00306334  83 C1 00 08 */	lwz r30, 8(r1)
/* 803093D8 00306338  7C 08 03 A6 */	mtlr r0
/* 803093DC 0030633C  38 21 00 10 */	addi r1, r1, 0x10
/* 803093E0 00306340  4E 80 00 20 */	blr

.global Flush__Q29CGraphics12CRenderStateFv
Flush__Q29CGraphics12CRenderStateFv:
/* 803093E4 00306344  4E 80 00 20 */	blr

.global __ct__Q29CGraphics12CRenderStateFv
__ct__Q29CGraphics12CRenderStateFv:
/* 803093E8 00306348  38 00 00 00 */	li r0, 0
/* 803093EC 0030634C  90 03 00 00 */	stw r0, 0(r3)
/* 803093F0 00306350  90 03 00 04 */	stw r0, 4(r3)
/* 803093F4 00306354  4E 80 00 20 */	blr

.global __dt__12CGraphicsSysFv
__dt__12CGraphicsSysFv:
/* 803093F8 00306358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803093FC 0030635C  7C 08 02 A6 */	mflr r0
/* 80309400 00306360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309404 00306364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309408 00306368  7C 9F 23 78 */	mr r31, r4
/* 8030940C 0030636C  93 C1 00 08 */	stw r30, 8(r1)
/* 80309410 00306370  7C 7E 1B 79 */	or. r30, r3, r3
/* 80309414 00306374  41 82 00 2C */	beq lbl_80309440
/* 80309418 00306378  88 0D A7 A8 */	lbz r0, mGraphicsInitialized__12CGraphicsSys@sda21(r13)
/* 8030941C 0030637C  28 00 00 01 */	cmplwi r0, 1
/* 80309420 00306380  40 82 00 10 */	bne lbl_80309430
/* 80309424 00306384  48 00 3C 3D */	bl Shutdown__9CGraphicsFv
/* 80309428 00306388  38 00 00 00 */	li r0, 0
/* 8030942C 0030638C  98 0D A7 A8 */	stb r0, mGraphicsInitialized__12CGraphicsSys@sda21(r13)
lbl_80309430:
/* 80309430 00306390  7F E0 07 35 */	extsh. r0, r31
/* 80309434 00306394  40 81 00 0C */	ble lbl_80309440
/* 80309438 00306398  7F C3 F3 78 */	mr r3, r30
/* 8030943C 0030639C  48 00 C4 F5 */	bl Free__7CMemoryFPCv
lbl_80309440:
/* 80309440 003063A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309444 003063A4  7F C3 F3 78 */	mr r3, r30
/* 80309448 003063A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030944C 003063AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80309450 003063B0  7C 08 03 A6 */	mtlr r0
/* 80309454 003063B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80309458 003063B8  4E 80 00 20 */	blr

.global __ct__12CGraphicsSysFRC10COsContextRC10CMemorySysUiPv
__ct__12CGraphicsSysFRC10COsContextRC10CMemorySysUiPv:
/* 8030945C 003063BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309460 003063C0  7C 08 02 A6 */	mflr r0
/* 80309464 003063C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309468 003063C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030946C 003063CC  7C 7F 1B 78 */	mr r31, r3
/* 80309470 003063D0  88 0D A7 A8 */	lbz r0, mGraphicsInitialized__12CGraphicsSys@sda21(r13)
/* 80309474 003063D4  28 00 00 01 */	cmplwi r0, 1
/* 80309478 003063D8  41 82 00 18 */	beq lbl_80309490
/* 8030947C 003063DC  7C 83 23 78 */	mr r3, r4
/* 80309480 003063E0  7C C4 33 78 */	mr r4, r6
/* 80309484 003063E4  7C E5 3B 78 */	mr r5, r7
/* 80309488 003063E8  48 00 3E 05 */	bl Startup__9CGraphicsFRC10COsContextUiPv
/* 8030948C 003063EC  98 6D A7 A8 */	stb r3, mGraphicsInitialized__12CGraphicsSys@sda21(r13)
lbl_80309490:
/* 80309490 003063F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309494 003063F4  7F E3 FB 78 */	mr r3, r31
/* 80309498 003063F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030949C 003063FC  7C 08 03 A6 */	mtlr r0
/* 803094A0 00306400  38 21 00 10 */	addi r1, r1, 0x10
/* 803094A4 00306404  4E 80 00 20 */	blr

.global SetIsBeginSceneClearFb__9CGraphicsFb
SetIsBeginSceneClearFb__9CGraphicsFb:
/* 803094A8 00306408  98 6D 9C 6C */	stb r3, mIsBeginSceneClearFb__9CGraphics@sda21(r13)
/* 803094AC 0030640C  4E 80 00 20 */	blr

.global SetScreenPosition__9CGraphicsFiii
SetScreenPosition__9CGraphicsFiii:
/* 803094B0 00306410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803094B4 00306414  7C 08 02 A6 */	mflr r0
/* 803094B8 00306418  90 01 00 24 */	stw r0, 0x24(r1)
/* 803094BC 0030641C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803094C0 00306420  7C 9F 23 78 */	mr r31, r4
/* 803094C4 00306424  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803094C8 00306428  7C 7E 1B 78 */	mr r30, r3
/* 803094CC 0030642C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803094D0 00306430  7C BD 2B 78 */	mr r29, r5
/* 803094D4 00306434  80 0D A8 48 */	lwz r0, mScreenStretch__9CGraphics@sda21(r13)
/* 803094D8 00306438  80 6D A8 4C */	lwz r3, mScreenPositionX__9CGraphics@sda21(r13)
/* 803094DC 0030643C  7C 80 F0 51 */	subf. r4, r0, r30
/* 803094E0 00306440  80 0D A8 50 */	lwz r0, mScreenPositionY__9CGraphics@sda21(r13)
/* 803094E4 00306444  7C A3 F8 50 */	subf r5, r3, r31
/* 803094E8 00306448  7C E0 E8 50 */	subf r7, r0, r29
/* 803094EC 0030644C  40 82 00 14 */	bne lbl_80309500
/* 803094F0 00306450  2C 05 00 00 */	cmpwi r5, 0
/* 803094F4 00306454  40 82 00 0C */	bne lbl_80309500
/* 803094F8 00306458  2C 07 00 00 */	cmpwi r7, 0
/* 803094FC 0030645C  41 82 00 4C */	beq lbl_80309548
lbl_80309500:
/* 80309500 00306460  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 80309504 00306464  54 80 08 3C */	slwi r0, r4, 1
/* 80309508 00306468  38 63 65 00 */	addi r3, r3, mRenderModeObj__9CGraphics@l
/* 8030950C 0030646C  7C 84 28 50 */	subf r4, r4, r5
/* 80309510 00306470  A0 C3 00 0E */	lhz r6, 0xe(r3)
/* 80309514 00306474  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80309518 00306478  7C C6 02 14 */	add r6, r6, r0
/* 8030951C 0030647C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 80309520 00306480  7C 85 22 14 */	add r4, r5, r4
/* 80309524 00306484  B0 C3 00 0E */	sth r6, 0xe(r3)
/* 80309528 00306488  7C 00 3A 14 */	add r0, r0, r7
/* 8030952C 0030648C  B0 83 00 0A */	sth r4, 0xa(r3)
/* 80309530 00306490  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80309534 00306494  48 07 F0 21 */	bl VIConfigure
/* 80309538 00306498  48 07 FB D9 */	bl VIFlush
/* 8030953C 0030649C  93 CD A8 48 */	stw r30, mScreenStretch__9CGraphics@sda21(r13)
/* 80309540 003064A0  93 ED A8 4C */	stw r31, mScreenPositionX__9CGraphics@sda21(r13)
/* 80309544 003064A4  93 AD A8 50 */	stw r29, mScreenPositionY__9CGraphics@sda21(r13)
lbl_80309548:
/* 80309548 003064A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030954C 003064AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80309550 003064B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80309554 003064B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80309558 003064B8  7C 08 03 A6 */	mtlr r0
/* 8030955C 003064BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80309560 003064C0  4E 80 00 20 */	blr

.global GetScreenPosition__9CGraphicsFPiPiPi
GetScreenPosition__9CGraphicsFPiPiPi:
/* 80309564 003064C4  28 03 00 00 */	cmplwi r3, 0
/* 80309568 003064C8  41 82 00 0C */	beq lbl_80309574
/* 8030956C 003064CC  80 0D A8 48 */	lwz r0, mScreenStretch__9CGraphics@sda21(r13)
/* 80309570 003064D0  90 03 00 00 */	stw r0, 0(r3)
lbl_80309574:
/* 80309574 003064D4  28 04 00 00 */	cmplwi r4, 0
/* 80309578 003064D8  41 82 00 0C */	beq lbl_80309584
/* 8030957C 003064DC  80 0D A8 4C */	lwz r0, mScreenPositionX__9CGraphics@sda21(r13)
/* 80309580 003064E0  90 04 00 00 */	stw r0, 0(r4)
lbl_80309584:
/* 80309584 003064E4  28 05 00 00 */	cmplwi r5, 0
/* 80309588 003064E8  4D 82 00 20 */	beqlr
/* 8030958C 003064EC  80 0D A8 50 */	lwz r0, mScreenPositionY__9CGraphics@sda21(r13)
/* 80309590 003064F0  90 05 00 00 */	stw r0, 0(r5)
/* 80309594 003064F4  4E 80 00 20 */	blr

.global GetProgressiveDefault__9CGraphicsFv
GetProgressiveDefault__9CGraphicsFv:
/* 80309598 003064F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030959C 003064FC  7C 08 02 A6 */	mflr r0
/* 803095A0 00306500  90 01 00 14 */	stw r0, 0x14(r1)
/* 803095A4 00306504  48 07 AB 91 */	bl OSGetProgressiveMode
/* 803095A8 00306508  20 03 00 01 */	subfic r0, r3, 1
/* 803095AC 0030650C  7C 00 00 34 */	cntlzw r0, r0
/* 803095B0 00306510  54 03 D9 7E */	srwi r3, r0, 5
/* 803095B4 00306514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803095B8 00306518  7C 08 03 A6 */	mtlr r0
/* 803095BC 0030651C  38 21 00 10 */	addi r1, r1, 0x10
/* 803095C0 00306520  4E 80 00 20 */	blr

.global CanSetProgressiveMode__9CGraphicsFv
CanSetProgressiveMode__9CGraphicsFv:
/* 803095C4 00306524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803095C8 00306528  7C 08 02 A6 */	mflr r0
/* 803095CC 0030652C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803095D0 00306530  48 07 FF 71 */	bl VIGetDTVStatus
/* 803095D4 00306534  7C 03 00 D0 */	neg r0, r3
/* 803095D8 00306538  7C 00 1B 78 */	or r0, r0, r3
/* 803095DC 0030653C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803095E0 00306540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803095E4 00306544  7C 08 03 A6 */	mtlr r0
/* 803095E8 00306548  38 21 00 10 */	addi r1, r1, 0x10
/* 803095EC 0030654C  4E 80 00 20 */	blr

.global GetProgressiveMode__9CGraphicsFv
GetProgressiveMode__9CGraphicsFv:
/* 803095F0 00306550  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 803095F4 00306554  80 03 65 00 */	lwz r0, mRenderModeObj__9CGraphics@l(r3)
/* 803095F8 00306558  20 00 00 02 */	subfic r0, r0, 2
/* 803095FC 0030655C  7C 00 00 34 */	cntlzw r0, r0
/* 80309600 00306560  54 03 D9 7E */	srwi r3, r0, 5
/* 80309604 00306564  4E 80 00 20 */	blr

.global SetProgressiveMode__9CGraphicsFb
SetProgressiveMode__9CGraphicsFb:
/* 80309608 00306568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030960C 0030656C  7C 08 02 A6 */	mflr r0
/* 80309610 00306570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309614 00306574  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80309618 00306578  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8030961C 0030657C  7C 7E 1B 78 */	mr r30, r3
/* 80309620 00306580  4B FF FF D1 */	bl GetProgressiveMode__9CGraphicsFv
/* 80309624 00306584  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80309628 00306588  7C 7F 1B 78 */	mr r31, r3
/* 8030962C 0030658C  7C 04 00 D0 */	neg r0, r4
/* 80309630 00306590  7C 00 23 78 */	or r0, r0, r4
/* 80309634 00306594  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80309638 00306598  48 07 AB 6D */	bl OSSetProgressiveMode
/* 8030963C 0030659C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80309640 003065A0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80309644 003065A4  7C 03 00 40 */	cmplw r3, r0
/* 80309648 003065A8  41 82 01 0C */	beq lbl_80309754
/* 8030964C 003065AC  38 60 00 01 */	li r3, 1
/* 80309650 003065B0  48 07 FC 5D */	bl VISetBlack
/* 80309654 003065B4  48 07 FA BD */	bl VIFlush
/* 80309658 003065B8  48 07 EA 35 */	bl VIWaitForRetrace
/* 8030965C 003065BC  3B E0 00 00 */	li r31, 0
lbl_80309660:
/* 80309660 003065C0  48 07 EA 2D */	bl VIWaitForRetrace
/* 80309664 003065C4  3B FF 00 01 */	addi r31, r31, 1
/* 80309668 003065C8  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8030966C 003065CC  41 80 FF F4 */	blt lbl_80309660
/* 80309670 003065D0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80309674 003065D4  41 82 00 48 */	beq lbl_803096BC
/* 80309678 003065D8  80 E2 C7 E0 */	lwz r7, lbl_805AE500@sda21(r2)
/* 8030967C 003065DC  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 80309680 003065E0  A0 C2 C7 E4 */	lhz r6, lbl_805AE504@sda21(r2)
/* 80309684 003065E4  39 03 65 00 */	addi r8, r3, mRenderModeObj__9CGraphics@l
/* 80309688 003065E8  88 02 C7 E6 */	lbz r0, lbl_805AE506@sda21(r2)
/* 8030968C 003065EC  38 60 00 02 */	li r3, 2
/* 80309690 003065F0  38 A0 00 00 */	li r5, 0
/* 80309694 003065F4  90 68 00 00 */	stw r3, 0(r8)
/* 80309698 003065F8  38 68 00 32 */	addi r3, r8, 0x32
/* 8030969C 003065FC  38 81 00 08 */	addi r4, r1, 8
/* 803096A0 00306600  90 A8 00 14 */	stw r5, 0x14(r8)
/* 803096A4 00306604  38 A0 00 07 */	li r5, 7
/* 803096A8 00306608  90 E1 00 08 */	stw r7, 8(r1)
/* 803096AC 0030660C  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 803096B0 00306610  98 01 00 0E */	stb r0, 0xe(r1)
/* 803096B4 00306614  4B CF 9D DD */	bl memcpy
/* 803096B8 00306618  48 00 00 34 */	b lbl_803096EC
lbl_803096BC:
/* 803096BC 0030661C  3C 80 80 5A */	lis r4, mRenderModeObj__9CGraphics@ha
/* 803096C0 00306620  3C 60 80 3F */	lis r3, GXNtsc480IntDf@ha
/* 803096C4 00306624  38 C4 65 00 */	addi r6, r4, mRenderModeObj__9CGraphics@l
/* 803096C8 00306628  38 A0 00 00 */	li r5, 0
/* 803096CC 0030662C  38 00 00 01 */	li r0, 1
/* 803096D0 00306630  38 83 08 E0 */	addi r4, r3, GXNtsc480IntDf@l
/* 803096D4 00306634  90 A6 00 00 */	stw r5, 0(r6)
/* 803096D8 00306638  38 66 00 32 */	addi r3, r6, 0x32
/* 803096DC 0030663C  38 84 00 32 */	addi r4, r4, 0x32
/* 803096E0 00306640  38 A0 00 07 */	li r5, 7
/* 803096E4 00306644  90 06 00 14 */	stw r0, 0x14(r6)
/* 803096E8 00306648  4B CF 9D A9 */	bl memcpy
lbl_803096EC:
/* 803096EC 0030664C  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 803096F0 00306650  38 A0 00 01 */	li r5, 1
/* 803096F4 00306654  38 C3 65 00 */	addi r6, r3, mRenderModeObj__9CGraphics@l
/* 803096F8 00306658  88 66 00 19 */	lbz r3, 0x19(r6)
/* 803096FC 0030665C  38 86 00 1A */	addi r4, r6, 0x1a
/* 80309700 00306660  38 C6 00 32 */	addi r6, r6, 0x32
/* 80309704 00306664  48 06 FA 91 */	bl GXSetCopyFilter
/* 80309708 00306668  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030970C 0030666C  38 63 65 00 */	addi r3, r3, mRenderModeObj__9CGraphics@l
/* 80309710 00306670  48 07 EE 45 */	bl VIConfigure
/* 80309714 00306674  38 60 00 01 */	li r3, 1
/* 80309718 00306678  48 07 FB 95 */	bl VISetBlack
/* 8030971C 0030667C  48 07 F9 F5 */	bl VIFlush
/* 80309720 00306680  3B E0 00 00 */	li r31, 0
lbl_80309724:
/* 80309724 00306684  48 07 E9 69 */	bl VIWaitForRetrace
/* 80309728 00306688  3B FF 00 01 */	addi r31, r31, 1
/* 8030972C 0030668C  2C 1F 00 64 */	cmpwi r31, 0x64
/* 80309730 00306690  41 80 FF F4 */	blt lbl_80309724
/* 80309734 00306694  38 60 00 00 */	li r3, 0
/* 80309738 00306698  48 07 FB 75 */	bl VISetBlack
/* 8030973C 0030669C  48 07 F9 D5 */	bl VIFlush
/* 80309740 003066A0  3B E0 00 00 */	li r31, 0
lbl_80309744:
/* 80309744 003066A4  48 07 E9 49 */	bl VIWaitForRetrace
/* 80309748 003066A8  3B FF 00 01 */	addi r31, r31, 1
/* 8030974C 003066AC  2C 1F 00 02 */	cmpwi r31, 2
/* 80309750 003066B0  41 80 FF F4 */	blt lbl_80309744
lbl_80309754:
/* 80309754 003066B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309758 003066B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030975C 003066BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80309760 003066C0  7C 08 03 A6 */	mtlr r0
/* 80309764 003066C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80309768 003066C8  4E 80 00 20 */	blr

.global ProjectPoint__9CGraphicsFRC9CVector3f
ProjectPoint__9CGraphicsFRC9CVector3f:
/* 8030976C 003066CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80309770 003066D0  7C 08 02 A6 */	mflr r0
/* 80309774 003066D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80309778 003066D8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8030977C 003066DC  7C 9F 23 78 */	mr r31, r4
/* 80309780 003066E0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80309784 003066E4  7C 7E 1B 78 */	mr r30, r3
/* 80309788 003066E8  38 61 00 14 */	addi r3, r1, 0x14
/* 8030978C 003066EC  48 00 2B A5 */	bl GetPerspectiveProjectionMatrix__9CGraphicsFv
/* 80309790 003066F0  7F E5 FB 78 */	mr r5, r31
/* 80309794 003066F4  38 61 00 08 */	addi r3, r1, 8
/* 80309798 003066F8  38 81 00 14 */	addi r4, r1, 0x14
/* 8030979C 003066FC  48 00 6F B5 */	bl MultiplyOneOverW__9CMatrix4fCFRC9CVector3f
/* 803097A0 00306700  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803097A4 00306704  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 803097A8 00306708  38 63 D9 10 */	addi r3, r3, mViewport__9CGraphics@l
/* 803097AC 0030670C  C0 21 00 08 */	lfs f1, 8(r1)
/* 803097B0 00306710  FC 00 00 50 */	fneg f0, f0
/* 803097B4 00306714  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803097B8 00306718  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 803097BC 0030671C  7F C3 F3 78 */	mr r3, r30
/* 803097C0 00306720  EC 21 10 BA */	fmadds f1, f1, f2, f2
/* 803097C4 00306724  EC 00 18 FA */	fmadds f0, f0, f3, f3
/* 803097C8 00306728  FC 20 08 1E */	fctiwz f1, f1
/* 803097CC 0030672C  FC 00 00 1E */	fctiwz f0, f0
/* 803097D0 00306730  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 803097D4 00306734  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 803097D8 00306738  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 803097DC 0030673C  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 803097E0 00306740  48 00 AB 6D */	bl __ct__9CVector2iFii
/* 803097E4 00306744  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803097E8 00306748  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 803097EC 0030674C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 803097F0 00306750  7C 08 03 A6 */	mtlr r0
/* 803097F4 00306754  38 21 00 70 */	addi r1, r1, 0x70
/* 803097F8 00306758  4E 80 00 20 */	blr

.global GetFrameCounter__9CGraphicsFv
GetFrameCounter__9CGraphicsFv:
/* 803097FC 0030675C  80 6D A8 00 */	lwz r3, mFrameCounter__9CGraphics@sda21(r13)
/* 80309800 00306760  4E 80 00 20 */	blr

.global GetUseVideoFilter__9CGraphicsFv
GetUseVideoFilter__9CGraphicsFv:
/* 80309804 00306764  88 6D 9C 82 */	lbz r3, mUseVideoFilter__9CGraphics@sda21(r13)
/* 80309808 00306768  4E 80 00 20 */	blr

.global SetUseVideoFilter__9CGraphicsFb
SetUseVideoFilter__9CGraphicsFb:
/* 8030980C 0030676C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309810 00306770  7C 08 02 A6 */	mflr r0
/* 80309814 00306774  3C 80 80 5A */	lis r4, mRenderModeObj__9CGraphics@ha
/* 80309818 00306778  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8030981C 0030677C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309820 00306780  38 C4 65 00 */	addi r6, r4, mRenderModeObj__9CGraphics@l
/* 80309824 00306784  7C 05 00 D0 */	neg r0, r5
/* 80309828 00306788  98 6D 9C 82 */	stb r3, mUseVideoFilter__9CGraphics@sda21(r13)
/* 8030982C 0030678C  7C 00 2B 78 */	or r0, r0, r5
/* 80309830 00306790  88 66 00 19 */	lbz r3, 0x19(r6)
/* 80309834 00306794  38 86 00 1A */	addi r4, r6, 0x1a
/* 80309838 00306798  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8030983C 0030679C  38 C6 00 32 */	addi r6, r6, 0x32
/* 80309840 003067A0  48 06 F9 55 */	bl GXSetCopyFilter
/* 80309844 003067A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309848 003067A8  7C 08 03 A6 */	mtlr r0
/* 8030984C 003067AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80309850 003067B0  4E 80 00 20 */	blr

.global GetFPS__9CGraphicsFv
GetFPS__9CGraphicsFv:
/* 80309854 003067B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80309858 003067B8  7C 08 02 A6 */	mflr r0
/* 8030985C 003067BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309860 003067C0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80309864 003067C4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80309868 003067C8  48 07 7D F9 */	bl OSDisableInterrupts
/* 8030986C 003067CC  C0 2D A8 08 */	lfs f1, mLastFramesPerSecond__9CGraphics@sda21(r13)
/* 80309870 003067D0  C0 0D A8 04 */	lfs f0, mFramesPerSecond__9CGraphics@sda21(r13)
/* 80309874 003067D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80309878 003067D8  40 80 00 0C */	bge lbl_80309884
/* 8030987C 003067DC  38 8D A8 08 */	addi r4, r13, mLastFramesPerSecond__9CGraphics@sda21
/* 80309880 003067E0  48 00 00 08 */	b lbl_80309888
lbl_80309884:
/* 80309884 003067E4  38 8D A8 04 */	addi r4, r13, mFramesPerSecond__9CGraphics@sda21
lbl_80309888:
/* 80309888 003067E8  C3 E4 00 00 */	lfs f31, 0(r4)
/* 8030988C 003067EC  48 07 7D FD */	bl OSRestoreInterrupts
/* 80309890 003067F0  FC 20 F8 90 */	fmr f1, f31
/* 80309894 003067F4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80309898 003067F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030989C 003067FC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803098A0 00306800  7C 08 03 A6 */	mtlr r0
/* 803098A4 00306804  38 21 00 20 */	addi r1, r1, 0x20
/* 803098A8 00306808  4E 80 00 20 */	blr

.global ClipScreenRectFromMS__9CGraphicsFRC9CVector3fRC9CVector3f12ETexelFormat
ClipScreenRectFromMS__9CGraphicsFRC9CVector3fRC9CVector3f12ETexelFormat:
/* 803098AC 0030680C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803098B0 00306810  7C 08 02 A6 */	mflr r0
/* 803098B4 00306814  3C E0 80 5A */	lis r7, mModelMatrix__9CGraphics@ha
/* 803098B8 00306818  90 01 00 64 */	stw r0, 0x64(r1)
/* 803098BC 0030681C  38 07 62 04 */	addi r0, r7, mModelMatrix__9CGraphics@l
/* 803098C0 00306820  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803098C4 00306824  93 C1 00 58 */	stw r30, 0x58(r1)
/* 803098C8 00306828  7C DE 33 78 */	mr r30, r6
/* 803098CC 0030682C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 803098D0 00306830  7C 9D 23 78 */	mr r29, r4
/* 803098D4 00306834  7C 04 03 78 */	mr r4, r0
/* 803098D8 00306838  93 81 00 50 */	stw r28, 0x50(r1)
/* 803098DC 0030683C  7C 7C 1B 78 */	mr r28, r3
/* 803098E0 00306840  38 61 00 20 */	addi r3, r1, 0x20
/* 803098E4 00306844  48 00 92 05 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 803098E8 00306848  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 803098EC 0030684C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 803098F0 00306850  3B E3 61 D4 */	addi r31, r3, mViewMatrix__9CGraphics@l
/* 803098F4 00306854  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 803098F8 00306858  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 803098FC 0030685C  7F E4 FB 78 */	mr r4, r31
/* 80309900 00306860  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80309904 00306864  38 61 00 2C */	addi r3, r1, 0x2c
/* 80309908 00306868  EC 81 00 28 */	fsubs f4, f1, f0
/* 8030990C 0030686C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80309910 00306870  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80309914 00306874  EC 43 10 28 */	fsubs f2, f3, f2
/* 80309918 00306878  38 A1 00 08 */	addi r5, r1, 8
/* 8030991C 0030687C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80309920 00306880  D0 81 00 08 */	stfs f4, 8(r1)
/* 80309924 00306884  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80309928 00306888  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8030992C 0030688C  48 00 90 F9 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80309930 00306890  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 80309934 00306894  7F A5 EB 78 */	mr r5, r29
/* 80309938 00306898  38 83 62 04 */	addi r4, r3, mModelMatrix__9CGraphics@l
/* 8030993C 0030689C  38 61 00 38 */	addi r3, r1, 0x38
/* 80309940 003068A0  48 00 91 A9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80309944 003068A4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80309948 003068A8  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 8030994C 003068AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80309950 003068B0  38 83 61 D4 */	addi r4, r3, mViewMatrix__9CGraphics@l
/* 80309954 003068B4  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 80309958 003068B8  38 61 00 44 */	addi r3, r1, 0x44
/* 8030995C 003068BC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80309960 003068C0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80309964 003068C4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80309968 003068C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8030996C 003068CC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80309970 003068D0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80309974 003068D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80309978 003068D8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8030997C 003068DC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80309980 003068E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80309984 003068E4  48 00 90 A1 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80309988 003068E8  7F 83 E3 78 */	mr r3, r28
/* 8030998C 003068EC  7F C6 F3 78 */	mr r6, r30
/* 80309990 003068F0  38 81 00 44 */	addi r4, r1, 0x44
/* 80309994 003068F4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80309998 003068F8  48 00 00 25 */	bl ClipScreenRectFromVS__9CGraphicsFRC9CVector3fRC9CVector3f12ETexelFormat
/* 8030999C 003068FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803099A0 00306900  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803099A4 00306904  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 803099A8 00306908  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 803099AC 0030690C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 803099B0 00306910  7C 08 03 A6 */	mtlr r0
/* 803099B4 00306914  38 21 00 60 */	addi r1, r1, 0x60
/* 803099B8 00306918  4E 80 00 20 */	blr

.global ClipScreenRectFromVS__9CGraphicsFRC9CVector3fRC9CVector3f12ETexelFormat
ClipScreenRectFromVS__9CGraphicsFRC9CVector3fRC9CVector3f12ETexelFormat:
/* 803099BC 0030691C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803099C0 00306920  7C 08 02 A6 */	mflr r0
/* 803099C4 00306924  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 803099C8 00306928  90 01 00 74 */	stw r0, 0x74(r1)
/* 803099CC 0030692C  38 00 00 00 */	li r0, 0
/* 803099D0 00306930  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 803099D4 00306934  7C DF 33 78 */	mr r31, r6
/* 803099D8 00306938  93 C1 00 68 */	stw r30, 0x68(r1)
/* 803099DC 0030693C  7C 7E 1B 78 */	mr r30, r3
/* 803099E0 00306940  93 A1 00 64 */	stw r29, 0x64(r1)
/* 803099E4 00306944  7C 9D 23 78 */	mr r29, r4
/* 803099E8 00306948  93 81 00 60 */	stw r28, 0x60(r1)
/* 803099EC 0030694C  7C BC 2B 78 */	mr r28, r5
/* 803099F0 00306950  C0 04 00 00 */	lfs f0, 0(r4)
/* 803099F4 00306954  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803099F8 00306958  40 82 00 1C */	bne lbl_80309A14
/* 803099FC 0030695C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80309A00 00306960  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80309A04 00306964  40 82 00 10 */	bne lbl_80309A14
/* 80309A08 00306968  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80309A0C 0030696C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80309A10 00306970  41 82 00 08 */	beq lbl_80309A18
lbl_80309A14:
/* 80309A14 00306974  38 00 00 01 */	li r0, 1
lbl_80309A18:
/* 80309A18 00306978  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80309A1C 0030697C  41 82 00 3C */	beq lbl_80309A58
/* 80309A20 00306980  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 80309A24 00306984  38 00 00 00 */	li r0, 0
/* 80309A28 00306988  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80309A2C 0030698C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80309A30 00306990  40 82 00 1C */	bne lbl_80309A4C
/* 80309A34 00306994  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80309A38 00306998  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80309A3C 0030699C  40 82 00 10 */	bne lbl_80309A4C
/* 80309A40 003069A0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80309A44 003069A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80309A48 003069A8  41 82 00 08 */	beq lbl_80309A50
lbl_80309A4C:
/* 80309A4C 003069AC  38 00 00 01 */	li r0, 1
lbl_80309A50:
/* 80309A50 003069B0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80309A54 003069B4  40 82 00 10 */	bne lbl_80309A64
lbl_80309A58:
/* 80309A58 003069B8  38 00 00 00 */	li r0, 0
/* 80309A5C 003069BC  98 1E 00 00 */	stb r0, 0(r30)
/* 80309A60 003069C0  48 00 03 80 */	b lbl_80309DE0
lbl_80309A64:
/* 80309A64 003069C4  48 00 03 F9 */	bl GetProjectionState__9CGraphicsFv
/* 80309A68 003069C8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80309A6C 003069CC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80309A70 003069D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80309A74 003069D4  41 80 00 18 */	blt lbl_80309A8C
/* 80309A78 003069D8  48 00 03 E5 */	bl GetProjectionState__9CGraphicsFv
/* 80309A7C 003069DC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80309A80 003069E0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80309A84 003069E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80309A88 003069E8  40 80 00 10 */	bge lbl_80309A98
lbl_80309A8C:
/* 80309A8C 003069EC  38 00 00 00 */	li r0, 0
/* 80309A90 003069F0  98 1E 00 00 */	stb r0, 0(r30)
/* 80309A94 003069F4  48 00 03 4C */	b lbl_80309DE0
lbl_80309A98:
/* 80309A98 003069F8  48 00 03 C5 */	bl GetProjectionState__9CGraphicsFv
/* 80309A9C 003069FC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80309AA0 00306A00  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80309AA4 00306A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80309AA8 00306A08  41 81 00 18 */	bgt lbl_80309AC0
/* 80309AAC 00306A0C  48 00 03 B1 */	bl GetProjectionState__9CGraphicsFv
/* 80309AB0 00306A10  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80309AB4 00306A14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80309AB8 00306A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80309ABC 00306A1C  40 81 00 10 */	ble lbl_80309ACC
lbl_80309AC0:
/* 80309AC0 00306A20  38 00 00 00 */	li r0, 0
/* 80309AC4 00306A24  98 1E 00 00 */	stb r0, 0(r30)
/* 80309AC8 00306A28  48 00 03 18 */	b lbl_80309DE0
lbl_80309ACC:
/* 80309ACC 00306A2C  7F A4 EB 78 */	mr r4, r29
/* 80309AD0 00306A30  38 61 00 38 */	addi r3, r1, 0x38
/* 80309AD4 00306A34  4B FF FC 99 */	bl ProjectPoint__9CGraphicsFRC9CVector3f
/* 80309AD8 00306A38  83 A1 00 38 */	lwz r29, 0x38(r1)
/* 80309ADC 00306A3C  7F 84 E3 78 */	mr r4, r28
/* 80309AE0 00306A40  83 81 00 3C */	lwz r28, 0x3c(r1)
/* 80309AE4 00306A44  38 61 00 30 */	addi r3, r1, 0x30
/* 80309AE8 00306A48  4B FF FC 85 */	bl ProjectPoint__9CGraphicsFRC9CVector3f
/* 80309AEC 00306A4C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80309AF0 00306A50  38 61 00 1C */	addi r3, r1, 0x1c
/* 80309AF4 00306A54  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80309AF8 00306A58  7C 04 E8 00 */	cmpw r4, r29
/* 80309AFC 00306A5C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80309B00 00306A60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80309B04 00306A64  40 80 00 08 */	bge lbl_80309B0C
/* 80309B08 00306A68  38 61 00 18 */	addi r3, r1, 0x18
lbl_80309B0C:
/* 80309B0C 00306A6C  80 03 00 00 */	lwz r0, 0(r3)
/* 80309B10 00306A70  7C 05 E0 00 */	cmpw r5, r28
/* 80309B14 00306A74  39 61 00 14 */	addi r11, r1, 0x14
/* 80309B18 00306A78  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80309B1C 00306A7C  93 81 00 14 */	stw r28, 0x14(r1)
/* 80309B20 00306A80  40 80 00 08 */	bge lbl_80309B28
/* 80309B24 00306A84  39 61 00 10 */	addi r11, r1, 0x10
lbl_80309B28:
/* 80309B28 00306A88  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 80309B2C 00306A8C  7C 84 E8 50 */	subf r4, r4, r29
/* 80309B30 00306A90  39 03 D9 10 */	addi r8, r3, mViewport__9CGraphics@l
/* 80309B34 00306A94  7C A5 E0 50 */	subf r5, r5, r28
/* 80309B38 00306A98  81 88 00 00 */	lwz r12, 0(r8)
/* 80309B3C 00306A9C  7C 8A FE 70 */	srawi r10, r4, 0x1f
/* 80309B40 00306AA0  80 C8 00 08 */	lwz r6, 8(r8)
/* 80309B44 00306AA4  7C A7 FE 70 */	srawi r7, r5, 0x1f
/* 80309B48 00306AA8  54 09 00 3C */	rlwinm r9, r0, 0, 0, 0x1e
/* 80309B4C 00306AAC  80 6B 00 00 */	lwz r3, 0(r11)
/* 80309B50 00306AB0  7D 6C 32 14 */	add r11, r12, r6
/* 80309B54 00306AB4  7D 44 22 78 */	xor r4, r10, r4
/* 80309B58 00306AB8  7C E5 2A 78 */	xor r5, r7, r5
/* 80309B5C 00306ABC  91 21 00 2C */	stw r9, 0x2c(r1)
/* 80309B60 00306AC0  7C 09 58 00 */	cmpw r9, r11
/* 80309B64 00306AC4  7C 8A 20 50 */	subf r4, r10, r4
/* 80309B68 00306AC8  7C A7 28 50 */	subf r5, r7, r5
/* 80309B6C 00306ACC  41 80 00 10 */	blt lbl_80309B7C
/* 80309B70 00306AD0  38 00 00 00 */	li r0, 0
/* 80309B74 00306AD4  98 1E 00 00 */	stb r0, 0(r30)
/* 80309B78 00306AD8  48 00 02 68 */	b lbl_80309DE0
lbl_80309B7C:
/* 80309B7C 00306ADC  38 C4 00 02 */	addi r6, r4, 2
/* 80309B80 00306AE0  7C C0 32 14 */	add r6, r0, r6
/* 80309B84 00306AE4  54 C7 00 3C */	rlwinm r7, r6, 0, 0, 0x1e
/* 80309B88 00306AE8  7C 07 60 00 */	cmpw r7, r12
/* 80309B8C 00306AEC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80309B90 00306AF0  41 81 00 10 */	bgt lbl_80309BA0
/* 80309B94 00306AF4  38 00 00 00 */	li r0, 0
/* 80309B98 00306AF8  98 1E 00 00 */	stb r0, 0(r30)
/* 80309B9C 00306AFC  48 00 02 44 */	b lbl_80309DE0
lbl_80309BA0:
/* 80309BA0 00306B00  7C 09 60 00 */	cmpw r9, r12
/* 80309BA4 00306B04  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80309BA8 00306B08  40 80 00 08 */	bge lbl_80309BB0
/* 80309BAC 00306B0C  7D 06 43 78 */	mr r6, r8
lbl_80309BB0:
/* 80309BB0 00306B10  80 C6 00 00 */	lwz r6, 0(r6)
/* 80309BB4 00306B14  7C 0B 38 00 */	cmpw r11, r7
/* 80309BB8 00306B18  38 E1 00 28 */	addi r7, r1, 0x28
/* 80309BBC 00306B1C  54 C6 00 3C */	rlwinm r6, r6, 0, 0, 0x1e
/* 80309BC0 00306B20  91 61 00 0C */	stw r11, 0xc(r1)
/* 80309BC4 00306B24  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80309BC8 00306B28  40 80 00 08 */	bge lbl_80309BD0
/* 80309BCC 00306B2C  38 E1 00 0C */	addi r7, r1, 0xc
lbl_80309BD0:
/* 80309BD0 00306B30  3C C0 80 3F */	lis r6, mViewport__9CGraphics@ha
/* 80309BD4 00306B34  81 07 00 00 */	lwz r8, 0(r7)
/* 80309BD8 00306B38  38 C6 D9 10 */	addi r6, r6, mViewport__9CGraphics@l
/* 80309BDC 00306B3C  54 67 00 3C */	rlwinm r7, r3, 0, 0, 0x1e
/* 80309BE0 00306B40  39 46 00 04 */	addi r10, r6, 4
/* 80309BE4 00306B44  39 08 00 01 */	addi r8, r8, 1
/* 80309BE8 00306B48  81 26 00 04 */	lwz r9, 4(r6)
/* 80309BEC 00306B4C  55 08 00 3C */	rlwinm r8, r8, 0, 0, 0x1e
/* 80309BF0 00306B50  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 80309BF4 00306B54  91 01 00 28 */	stw r8, 0x28(r1)
/* 80309BF8 00306B58  7D 09 32 14 */	add r8, r9, r6
/* 80309BFC 00306B5C  7C 07 40 00 */	cmpw r7, r8
/* 80309C00 00306B60  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80309C04 00306B64  41 80 00 10 */	blt lbl_80309C14
/* 80309C08 00306B68  38 00 00 00 */	li r0, 0
/* 80309C0C 00306B6C  98 1E 00 00 */	stb r0, 0(r30)
/* 80309C10 00306B70  48 00 01 D0 */	b lbl_80309DE0
lbl_80309C14:
/* 80309C14 00306B74  38 C5 00 02 */	addi r6, r5, 2
/* 80309C18 00306B78  7C C3 32 14 */	add r6, r3, r6
/* 80309C1C 00306B7C  54 C6 00 3C */	rlwinm r6, r6, 0, 0, 0x1e
/* 80309C20 00306B80  7C 06 48 00 */	cmpw r6, r9
/* 80309C24 00306B84  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80309C28 00306B88  41 81 00 10 */	bgt lbl_80309C38
/* 80309C2C 00306B8C  38 00 00 00 */	li r0, 0
/* 80309C30 00306B90  98 1E 00 00 */	stb r0, 0(r30)
/* 80309C34 00306B94  48 00 01 AC */	b lbl_80309DE0
lbl_80309C38:
/* 80309C38 00306B98  7C 07 48 00 */	cmpw r7, r9
/* 80309C3C 00306B9C  40 80 00 08 */	bge lbl_80309C44
/* 80309C40 00306BA0  48 00 00 08 */	b lbl_80309C48
lbl_80309C44:
/* 80309C44 00306BA4  39 41 00 24 */	addi r10, r1, 0x24
lbl_80309C48:
/* 80309C48 00306BA8  80 EA 00 00 */	lwz r7, 0(r10)
/* 80309C4C 00306BAC  7C 08 30 00 */	cmpw r8, r6
/* 80309C50 00306BB0  38 C1 00 20 */	addi r6, r1, 0x20
/* 80309C54 00306BB4  54 E7 00 3C */	rlwinm r7, r7, 0, 0, 0x1e
/* 80309C58 00306BB8  91 01 00 08 */	stw r8, 8(r1)
/* 80309C5C 00306BBC  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80309C60 00306BC0  40 80 00 08 */	bge lbl_80309C68
/* 80309C64 00306BC4  38 C1 00 08 */	addi r6, r1, 8
lbl_80309C68:
/* 80309C68 00306BC8  80 C6 00 00 */	lwz r6, 0(r6)
/* 80309C6C 00306BCC  3C E0 43 30 */	lis r7, 0x4330
/* 80309C70 00306BD0  81 21 00 24 */	lwz r9, 0x24(r1)
/* 80309C74 00306BD4  2C 1F 00 03 */	cmpwi r31, 3
/* 80309C78 00306BD8  38 C6 00 01 */	addi r6, r6, 1
/* 80309C7C 00306BDC  90 E1 00 40 */	stw r7, 0x40(r1)
/* 80309C80 00306BE0  7D 49 18 50 */	subf r10, r9, r3
/* 80309C84 00306BE4  C8 42 C7 E8 */	lfd f2, lbl_805AE508@sda21(r2)
/* 80309C88 00306BE8  54 C8 00 3C */	rlwinm r8, r6, 0, 0, 0x1e
/* 80309C8C 00306BEC  90 E1 00 48 */	stw r7, 0x48(r1)
/* 80309C90 00306BF0  38 6A 00 01 */	addi r3, r10, 1
/* 80309C94 00306BF4  6D 46 80 00 */	xoris r6, r10, 0x8000
/* 80309C98 00306BF8  7D 49 40 50 */	subf r10, r9, r8
/* 80309C9C 00306BFC  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 80309CA0 00306C00  6D 46 80 00 */	xoris r6, r10, 0x8000
/* 80309CA4 00306C04  7C 65 1A 14 */	add r3, r5, r3
/* 80309CA8 00306C08  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80309CAC 00306C0C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80309CB0 00306C10  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80309CB4 00306C14  3B 80 00 04 */	li r28, 4
/* 80309CB8 00306C18  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80309CBC 00306C1C  90 61 00 54 */	stw r3, 0x54(r1)
/* 80309CC0 00306C20  EC 60 10 28 */	fsubs f3, f0, f2
/* 80309CC4 00306C24  EC 01 10 28 */	fsubs f0, f1, f2
/* 80309CC8 00306C28  90 E1 00 50 */	stw r7, 0x50(r1)
/* 80309CCC 00306C2C  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 80309CD0 00306C30  EC 83 00 24 */	fdivs f4, f3, f0
/* 80309CD4 00306C34  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80309CD8 00306C38  90 E1 00 58 */	stw r7, 0x58(r1)
/* 80309CDC 00306C3C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80309CE0 00306C40  91 01 00 20 */	stw r8, 0x20(r1)
/* 80309CE4 00306C44  EC 21 10 28 */	fsubs f1, f1, f2
/* 80309CE8 00306C48  EC 00 10 28 */	fsubs f0, f0, f2
/* 80309CEC 00306C4C  EC A1 00 24 */	fdivs f5, f1, f0
/* 80309CF0 00306C50  41 82 00 34 */	beq lbl_80309D24
/* 80309CF4 00306C54  40 80 00 10 */	bge lbl_80309D04
/* 80309CF8 00306C58  2C 1F 00 01 */	cmpwi r31, 1
/* 80309CFC 00306C5C  41 82 00 20 */	beq lbl_80309D1C
/* 80309D00 00306C60  48 00 00 30 */	b lbl_80309D30
lbl_80309D04:
/* 80309D04 00306C64  2C 1F 00 09 */	cmpwi r31, 9
/* 80309D08 00306C68  41 82 00 24 */	beq lbl_80309D2C
/* 80309D0C 00306C6C  40 80 00 24 */	bge lbl_80309D30
/* 80309D10 00306C70  2C 1F 00 07 */	cmpwi r31, 7
/* 80309D14 00306C74  40 80 00 10 */	bge lbl_80309D24
/* 80309D18 00306C78  48 00 00 18 */	b lbl_80309D30
lbl_80309D1C:
/* 80309D1C 00306C7C  3B 80 00 08 */	li r28, 8
/* 80309D20 00306C80  48 00 00 10 */	b lbl_80309D30
lbl_80309D24:
/* 80309D24 00306C84  3B 80 00 04 */	li r28, 4
/* 80309D28 00306C88  48 00 00 08 */	b lbl_80309D30
lbl_80309D2C:
/* 80309D2C 00306C8C  3B 80 00 02 */	li r28, 2
lbl_80309D30:
/* 80309D30 00306C90  81 01 00 2C */	lwz r8, 0x2c(r1)
/* 80309D34 00306C94  3C A0 43 30 */	lis r5, 0x4330
/* 80309D38 00306C98  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 80309D3C 00306C9C  38 60 00 01 */	li r3, 1
/* 80309D40 00306CA0  7D 68 00 50 */	subf r11, r8, r0
/* 80309D44 00306CA4  38 FC FF FF */	addi r7, r28, -1
/* 80309D48 00306CA8  7D 88 30 50 */	subf r12, r8, r6
/* 80309D4C 00306CAC  98 7E 00 00 */	stb r3, 0(r30)
/* 80309D50 00306CB0  38 0C FF FF */	addi r0, r12, -1
/* 80309D54 00306CB4  6D 66 80 00 */	xoris r6, r11, 0x8000
/* 80309D58 00306CB8  7C 7C 02 14 */	add r3, r28, r0
/* 80309D5C 00306CBC  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80309D60 00306CC0  7C 67 38 78 */	andc r7, r3, r7
/* 80309D64 00306CC4  38 0B 00 01 */	addi r0, r11, 1
/* 80309D68 00306CC8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80309D6C 00306CCC  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80309D70 00306CD0  7C 04 02 14 */	add r0, r4, r0
/* 80309D74 00306CD4  C8 62 C7 E8 */	lfd f3, lbl_805AE508@sda21(r2)
/* 80309D78 00306CD8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80309D7C 00306CDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80309D80 00306CE0  90 61 00 54 */	stw r3, 0x54(r1)
/* 80309D84 00306CE4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80309D88 00306CE8  90 A1 00 50 */	stw r5, 0x50(r1)
/* 80309D8C 00306CEC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80309D90 00306CF0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80309D94 00306CF4  EC 20 18 28 */	fsubs f1, f0, f3
/* 80309D98 00306CF8  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80309D9C 00306CFC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80309DA0 00306D00  EC 42 08 24 */	fdivs f2, f2, f1
/* 80309DA4 00306D04  90 61 00 44 */	stw r3, 0x44(r1)
/* 80309DA8 00306D08  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80309DAC 00306D0C  91 1E 00 04 */	stw r8, 4(r30)
/* 80309DB0 00306D10  91 3E 00 08 */	stw r9, 8(r30)
/* 80309DB4 00306D14  91 9E 00 0C */	stw r12, 0xc(r30)
/* 80309DB8 00306D18  EC 20 18 28 */	fsubs f1, f0, f3
/* 80309DBC 00306D1C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80309DC0 00306D20  91 5E 00 10 */	stw r10, 0x10(r30)
/* 80309DC4 00306D24  EC 00 18 28 */	fsubs f0, f0, f3
/* 80309DC8 00306D28  90 FE 00 14 */	stw r7, 0x14(r30)
/* 80309DCC 00306D2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80309DD0 00306D30  D0 5E 00 18 */	stfs f2, 0x18(r30)
/* 80309DD4 00306D34  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80309DD8 00306D38  D0 9E 00 20 */	stfs f4, 0x20(r30)
/* 80309DDC 00306D3C  D0 BE 00 24 */	stfs f5, 0x24(r30)
lbl_80309DE0:
/* 80309DE0 00306D40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80309DE4 00306D44  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80309DE8 00306D48  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80309DEC 00306D4C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80309DF0 00306D50  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80309DF4 00306D54  7C 08 03 A6 */	mtlr r0
/* 80309DF8 00306D58  38 21 00 70 */	addi r1, r1, 0x70
/* 80309DFC 00306D5C  4E 80 00 20 */	blr

.global SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState:
/* 80309E00 00306D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309E04 00306D64  7C 08 02 A6 */	mflr r0
/* 80309E08 00306D68  3C 80 80 5A */	lis r4, mProj__9CGraphics@ha
/* 80309E0C 00306D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309E10 00306D70  88 03 00 00 */	lbz r0, 0(r3)
/* 80309E14 00306D74  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80309E18 00306D78  9C 04 61 B8 */	stbu r0, mProj__9CGraphics@l(r4)
/* 80309E1C 00306D7C  C0 83 00 08 */	lfs f4, 8(r3)
/* 80309E20 00306D80  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80309E24 00306D84  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80309E28 00306D88  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80309E2C 00306D8C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80309E30 00306D90  D0 A4 00 04 */	stfs f5, 4(r4)
/* 80309E34 00306D94  D0 84 00 08 */	stfs f4, 8(r4)
/* 80309E38 00306D98  D0 64 00 0C */	stfs f3, 0xc(r4)
/* 80309E3C 00306D9C  D0 44 00 10 */	stfs f2, 0x10(r4)
/* 80309E40 00306DA0  D0 24 00 14 */	stfs f1, 0x14(r4)
/* 80309E44 00306DA4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80309E48 00306DA8  48 00 00 21 */	bl FlushProjection__9CGraphicsFv
/* 80309E4C 00306DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309E50 00306DB0  7C 08 03 A6 */	mtlr r0
/* 80309E54 00306DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80309E58 00306DB8  4E 80 00 20 */	blr

.global GetProjectionState__9CGraphicsFv
GetProjectionState__9CGraphicsFv:
/* 80309E5C 00306DBC  3C 60 80 5A */	lis r3, mProj__9CGraphics@ha
/* 80309E60 00306DC0  38 63 61 B8 */	addi r3, r3, mProj__9CGraphics@l
/* 80309E64 00306DC4  4E 80 00 20 */	blr

.global FlushProjection__9CGraphicsFv
FlushProjection__9CGraphicsFv:
/* 80309E68 00306DC8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80309E6C 00306DCC  7C 08 02 A6 */	mflr r0
/* 80309E70 00306DD0  3C 60 80 5A */	lis r3, mProj__9CGraphics@ha
/* 80309E74 00306DD4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80309E78 00306DD8  8C 03 61 B8 */	lbzu r0, mProj__9CGraphics@l(r3)
/* 80309E7C 00306DDC  28 00 00 00 */	cmplwi r0, 0
/* 80309E80 00306DE0  C0 83 00 08 */	lfs f4, 8(r3)
/* 80309E84 00306DE4  C0 63 00 04 */	lfs f3, 4(r3)
/* 80309E88 00306DE8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80309E8C 00306DEC  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80309E90 00306DF0  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 80309E94 00306DF4  C0 C3 00 18 */	lfs f6, 0x18(r3)
/* 80309E98 00306DF8  41 82 00 1C */	beq lbl_80309EB4
/* 80309E9C 00306DFC  38 61 00 48 */	addi r3, r1, 0x48
/* 80309EA0 00306E00  48 07 36 7D */	bl C_MTXFrustum
/* 80309EA4 00306E04  38 61 00 48 */	addi r3, r1, 0x48
/* 80309EA8 00306E08  38 80 00 00 */	li r4, 0
/* 80309EAC 00306E0C  48 07 23 99 */	bl GXSetProjection
/* 80309EB0 00306E10  48 00 00 18 */	b lbl_80309EC8
lbl_80309EB4:
/* 80309EB4 00306E14  38 61 00 08 */	addi r3, r1, 8
/* 80309EB8 00306E18  48 07 37 01 */	bl C_MTXOrtho
/* 80309EBC 00306E1C  38 61 00 08 */	addi r3, r1, 8
/* 80309EC0 00306E20  38 80 00 01 */	li r4, 1
/* 80309EC4 00306E24  48 07 23 81 */	bl GXSetProjection
lbl_80309EC8:
/* 80309EC8 00306E28  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80309ECC 00306E2C  7C 08 03 A6 */	mtlr r0
/* 80309ED0 00306E30  38 21 00 90 */	addi r1, r1, 0x90
/* 80309ED4 00306E34  4E 80 00 20 */	blr

.global SetExternalTimeProvider__9CGraphicsFP13CTimeProvider
SetExternalTimeProvider__9CGraphicsFP13CTimeProvider:
/* 80309ED8 00306E38  90 6D A8 44 */	stw r3, mpExternalTimeProvider__9CGraphics@sda21(r13)
/* 80309EDC 00306E3C  4E 80 00 20 */	blr

.global GetSecondsMod900__9CGraphicsFv
GetSecondsMod900__9CGraphicsFv:
/* 80309EE0 00306E40  80 6D A8 44 */	lwz r3, mpExternalTimeProvider__9CGraphics@sda21(r13)
/* 80309EE4 00306E44  28 03 00 00 */	cmplwi r3, 0
/* 80309EE8 00306E48  41 82 00 10 */	beq lbl_80309EF8
/* 80309EEC 00306E4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80309EF0 00306E50  C0 23 00 00 */	lfs f1, 0(r3)
/* 80309EF4 00306E54  4E 80 00 20 */	blr
lbl_80309EF8:
/* 80309EF8 00306E58  C0 2D A8 40 */	lfs f1, mSecondsMod900__9CGraphics@sda21(r13)
/* 80309EFC 00306E5C  4E 80 00 20 */	blr

.global TickRenderTimings__9CGraphicsFv
TickRenderTimings__9CGraphicsFv:
/* 80309F00 00306E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309F04 00306E64  3C 80 36 B0 */	lis r4, 0x36B06E71@ha
/* 80309F08 00306E68  3C 00 43 30 */	lis r0, 0x4330
/* 80309F0C 00306E6C  3C 60 00 01 */	lis r3, 0x0000D2F0@ha
/* 80309F10 00306E70  80 AD A8 3C */	lwz r5, mRenderTimings__9CGraphics@sda21(r13)
/* 80309F14 00306E74  38 84 6E 71 */	addi r4, r4, 0x36B06E71@l
/* 80309F18 00306E78  90 01 00 08 */	stw r0, 8(r1)
/* 80309F1C 00306E7C  38 63 D2 F0 */	addi r3, r3, 0x0000D2F0@l
/* 80309F20 00306E80  38 A5 00 01 */	addi r5, r5, 1
/* 80309F24 00306E84  C8 42 C7 F8 */	lfd f2, lbl_805AE518@sda21(r2)
/* 80309F28 00306E88  7C 84 28 16 */	mulhwu r4, r4, r5
/* 80309F2C 00306E8C  C0 02 C7 F4 */	lfs f0, lbl_805AE514@sda21(r2)
/* 80309F30 00306E90  7C 04 28 50 */	subf r0, r4, r5
/* 80309F34 00306E94  54 00 F8 7E */	srwi r0, r0, 1
/* 80309F38 00306E98  7C 00 22 14 */	add r0, r0, r4
/* 80309F3C 00306E9C  54 00 8B FE */	srwi r0, r0, 0xf
/* 80309F40 00306EA0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80309F44 00306EA4  7C 00 28 50 */	subf r0, r0, r5
/* 80309F48 00306EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80309F4C 00306EAC  C8 21 00 08 */	lfd f1, 8(r1)
/* 80309F50 00306EB0  90 0D A8 3C */	stw r0, mRenderTimings__9CGraphics@sda21(r13)
/* 80309F54 00306EB4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80309F58 00306EB8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80309F5C 00306EBC  D0 0D A8 40 */	stfs f0, mSecondsMod900__9CGraphics@sda21(r13)
/* 80309F60 00306EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80309F64 00306EC4  4E 80 00 20 */	blr

.global LoadDolphinSpareTexture__9CGraphicsFii11_GXCITexFmt7_GXTlutPv11_GXTexMapID
LoadDolphinSpareTexture__9CGraphicsFii11_GXCITexFmt7_GXTlutPv11_GXTexMapID:
/* 80309F68 00306EC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80309F6C 00306ECC  7C 08 02 A6 */	mflr r0
/* 80309F70 00306ED0  7C 69 1B 78 */	mr r9, r3
/* 80309F74 00306ED4  28 07 00 00 */	cmplwi r7, 0
/* 80309F78 00306ED8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80309F7C 00306EDC  7C 80 23 78 */	mr r0, r4
/* 80309F80 00306EE0  38 61 00 10 */	addi r3, r1, 0x10
/* 80309F84 00306EE4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80309F88 00306EE8  7D 1F 43 78 */	mr r31, r8
/* 80309F8C 00306EEC  90 C1 00 08 */	stw r6, 8(r1)
/* 80309F90 00306EF0  41 82 00 0C */	beq lbl_80309F9C
/* 80309F94 00306EF4  7C E4 3B 78 */	mr r4, r7
/* 80309F98 00306EF8  48 00 00 08 */	b lbl_80309FA0
lbl_80309F9C:
/* 80309F9C 00306EFC  80 8D A8 28 */	lwz r4, mpSpareBuffer__9CGraphics@sda21(r13)
lbl_80309FA0:
/* 80309FA0 00306F00  7C A7 2B 78 */	mr r7, r5
/* 80309FA4 00306F04  55 25 04 3E */	clrlwi r5, r9, 0x10
/* 80309FA8 00306F08  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80309FAC 00306F0C  39 00 00 00 */	li r8, 0
/* 80309FB0 00306F10  39 20 00 00 */	li r9, 0
/* 80309FB4 00306F14  39 40 00 00 */	li r10, 0
/* 80309FB8 00306F18  48 07 01 21 */	bl GXInitTexObjCI
/* 80309FBC 00306F1C  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 80309FC0 00306F20  38 61 00 10 */	addi r3, r1, 0x10
/* 80309FC4 00306F24  38 80 00 00 */	li r4, 0
/* 80309FC8 00306F28  38 A0 00 00 */	li r5, 0
/* 80309FCC 00306F2C  FC 40 08 90 */	fmr f2, f1
/* 80309FD0 00306F30  38 C0 00 00 */	li r6, 0
/* 80309FD4 00306F34  FC 60 08 90 */	fmr f3, f1
/* 80309FD8 00306F38  38 E0 00 00 */	li r7, 0
/* 80309FDC 00306F3C  39 00 00 00 */	li r8, 0
/* 80309FE0 00306F40  48 07 01 41 */	bl GXInitTexObjLOD
/* 80309FE4 00306F44  7F E4 FB 78 */	mr r4, r31
/* 80309FE8 00306F48  38 61 00 10 */	addi r3, r1, 0x10
/* 80309FEC 00306F4C  48 07 04 A9 */	bl GXLoadTexObj
/* 80309FF0 00306F50  7F E3 FB 78 */	mr r3, r31
/* 80309FF4 00306F54  48 00 41 55 */	bl InvalidateTexmap__8CTextureF11_GXTexMapID
/* 80309FF8 00306F58  2C 1F 00 07 */	cmpwi r31, 7
/* 80309FFC 00306F5C  40 82 00 10 */	bne lbl_8030A00C
/* 8030A000 00306F60  3C 60 80 5A */	lis r3, mTexRegions__9CGraphics@ha
/* 8030A004 00306F64  38 63 64 40 */	addi r3, r3, mTexRegions__9CGraphics@l
/* 8030A008 00306F68  48 07 07 2D */	bl GXInvalidateTexRegion
lbl_8030A00C:
/* 8030A00C 00306F6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030A010 00306F70  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8030A014 00306F74  7C 08 03 A6 */	mtlr r0
/* 8030A018 00306F78  38 21 00 40 */	addi r1, r1, 0x40
/* 8030A01C 00306F7C  4E 80 00 20 */	blr

.global LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID:
/* 8030A020 00306F80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030A024 00306F84  7C 08 02 A6 */	mflr r0
/* 8030A028 00306F88  7C 68 1B 78 */	mr r8, r3
/* 8030A02C 00306F8C  28 06 00 00 */	cmplwi r6, 0
/* 8030A030 00306F90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030A034 00306F94  7C 80 23 78 */	mr r0, r4
/* 8030A038 00306F98  38 61 00 08 */	addi r3, r1, 8
/* 8030A03C 00306F9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8030A040 00306FA0  7C FF 3B 78 */	mr r31, r7
/* 8030A044 00306FA4  41 82 00 0C */	beq lbl_8030A050
/* 8030A048 00306FA8  7C C4 33 78 */	mr r4, r6
/* 8030A04C 00306FAC  48 00 00 08 */	b lbl_8030A054
lbl_8030A050:
/* 8030A050 00306FB0  80 8D A8 28 */	lwz r4, mpSpareBuffer__9CGraphics@sda21(r13)
lbl_8030A054:
/* 8030A054 00306FB4  7C A7 2B 78 */	mr r7, r5
/* 8030A058 00306FB8  55 05 04 3E */	clrlwi r5, r8, 0x10
/* 8030A05C 00306FBC  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 8030A060 00306FC0  39 00 00 00 */	li r8, 0
/* 8030A064 00306FC4  39 20 00 00 */	li r9, 0
/* 8030A068 00306FC8  39 40 00 00 */	li r10, 0
/* 8030A06C 00306FCC  48 06 FD F9 */	bl GXInitTexObj
/* 8030A070 00306FD0  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 8030A074 00306FD4  38 61 00 08 */	addi r3, r1, 8
/* 8030A078 00306FD8  38 80 00 00 */	li r4, 0
/* 8030A07C 00306FDC  38 A0 00 00 */	li r5, 0
/* 8030A080 00306FE0  FC 40 08 90 */	fmr f2, f1
/* 8030A084 00306FE4  38 C0 00 00 */	li r6, 0
/* 8030A088 00306FE8  FC 60 08 90 */	fmr f3, f1
/* 8030A08C 00306FEC  38 E0 00 00 */	li r7, 0
/* 8030A090 00306FF0  39 00 00 00 */	li r8, 0
/* 8030A094 00306FF4  48 07 00 8D */	bl GXInitTexObjLOD
/* 8030A098 00306FF8  7F E4 FB 78 */	mr r4, r31
/* 8030A09C 00306FFC  38 61 00 08 */	addi r3, r1, 8
/* 8030A0A0 00307000  48 07 03 F5 */	bl GXLoadTexObj
/* 8030A0A4 00307004  7F E3 FB 78 */	mr r3, r31
/* 8030A0A8 00307008  48 00 40 A1 */	bl InvalidateTexmap__8CTextureF11_GXTexMapID
/* 8030A0AC 0030700C  2C 1F 00 07 */	cmpwi r31, 7
/* 8030A0B0 00307010  40 82 00 10 */	bne lbl_8030A0C0
/* 8030A0B4 00307014  3C 60 80 5A */	lis r3, mTexRegions__9CGraphics@ha
/* 8030A0B8 00307018  38 63 64 40 */	addi r3, r3, mTexRegions__9CGraphics@l
/* 8030A0BC 0030701C  48 07 06 79 */	bl GXInvalidateTexRegion
lbl_8030A0C0:
/* 8030A0C0 00307020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030A0C4 00307024  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8030A0C8 00307028  7C 08 03 A6 */	mtlr r0
/* 8030A0CC 0030702C  38 21 00 30 */	addi r1, r1, 0x30
/* 8030A0D0 00307030  4E 80 00 20 */	blr

.global SetDefaultVtxAttrFmt__9CGraphicsFv
SetDefaultVtxAttrFmt__9CGraphicsFv:
/* 8030A0D4 00307034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A0D8 00307038  7C 08 02 A6 */	mflr r0
/* 8030A0DC 0030703C  38 60 00 00 */	li r3, 0
/* 8030A0E0 00307040  38 80 00 09 */	li r4, 9
/* 8030A0E4 00307044  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A0E8 00307048  38 A0 00 01 */	li r5, 1
/* 8030A0EC 0030704C  38 C0 00 04 */	li r6, 4
/* 8030A0F0 00307050  38 E0 00 00 */	li r7, 0
/* 8030A0F4 00307054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A0F8 00307058  93 C1 00 08 */	stw r30, 8(r1)
/* 8030A0FC 0030705C  48 06 D6 91 */	bl GXSetVtxAttrFmt
/* 8030A100 00307060  38 60 00 01 */	li r3, 1
/* 8030A104 00307064  38 80 00 09 */	li r4, 9
/* 8030A108 00307068  38 A0 00 01 */	li r5, 1
/* 8030A10C 0030706C  38 C0 00 04 */	li r6, 4
/* 8030A110 00307070  38 E0 00 00 */	li r7, 0
/* 8030A114 00307074  48 06 D6 79 */	bl GXSetVtxAttrFmt
/* 8030A118 00307078  38 60 00 02 */	li r3, 2
/* 8030A11C 0030707C  38 80 00 09 */	li r4, 9
/* 8030A120 00307080  38 A0 00 01 */	li r5, 1
/* 8030A124 00307084  38 C0 00 04 */	li r6, 4
/* 8030A128 00307088  38 E0 00 00 */	li r7, 0
/* 8030A12C 0030708C  48 06 D6 61 */	bl GXSetVtxAttrFmt
/* 8030A130 00307090  38 60 00 00 */	li r3, 0
/* 8030A134 00307094  38 80 00 0A */	li r4, 0xa
/* 8030A138 00307098  38 A0 00 00 */	li r5, 0
/* 8030A13C 0030709C  38 C0 00 04 */	li r6, 4
/* 8030A140 003070A0  38 E0 00 00 */	li r7, 0
/* 8030A144 003070A4  48 06 D6 49 */	bl GXSetVtxAttrFmt
/* 8030A148 003070A8  38 60 00 01 */	li r3, 1
/* 8030A14C 003070AC  38 80 00 0A */	li r4, 0xa
/* 8030A150 003070B0  38 A0 00 00 */	li r5, 0
/* 8030A154 003070B4  38 C0 00 03 */	li r6, 3
/* 8030A158 003070B8  38 E0 00 0E */	li r7, 0xe
/* 8030A15C 003070BC  48 06 D6 31 */	bl GXSetVtxAttrFmt
/* 8030A160 003070C0  38 60 00 02 */	li r3, 2
/* 8030A164 003070C4  38 80 00 0A */	li r4, 0xa
/* 8030A168 003070C8  38 A0 00 00 */	li r5, 0
/* 8030A16C 003070CC  38 C0 00 03 */	li r6, 3
/* 8030A170 003070D0  38 E0 00 0E */	li r7, 0xe
/* 8030A174 003070D4  48 06 D6 19 */	bl GXSetVtxAttrFmt
/* 8030A178 003070D8  38 60 00 00 */	li r3, 0
/* 8030A17C 003070DC  38 80 00 0B */	li r4, 0xb
/* 8030A180 003070E0  38 A0 00 01 */	li r5, 1
/* 8030A184 003070E4  38 C0 00 05 */	li r6, 5
/* 8030A188 003070E8  38 E0 00 00 */	li r7, 0
/* 8030A18C 003070EC  48 06 D6 01 */	bl GXSetVtxAttrFmt
/* 8030A190 003070F0  38 60 00 01 */	li r3, 1
/* 8030A194 003070F4  38 80 00 0B */	li r4, 0xb
/* 8030A198 003070F8  38 A0 00 01 */	li r5, 1
/* 8030A19C 003070FC  38 C0 00 05 */	li r6, 5
/* 8030A1A0 00307100  38 E0 00 00 */	li r7, 0
/* 8030A1A4 00307104  48 06 D5 E9 */	bl GXSetVtxAttrFmt
/* 8030A1A8 00307108  38 60 00 02 */	li r3, 2
/* 8030A1AC 0030710C  38 80 00 0B */	li r4, 0xb
/* 8030A1B0 00307110  38 A0 00 01 */	li r5, 1
/* 8030A1B4 00307114  38 C0 00 05 */	li r6, 5
/* 8030A1B8 00307118  38 E0 00 00 */	li r7, 0
/* 8030A1BC 0030711C  48 06 D5 D1 */	bl GXSetVtxAttrFmt
/* 8030A1C0 00307120  38 60 00 00 */	li r3, 0
/* 8030A1C4 00307124  38 80 00 0D */	li r4, 0xd
/* 8030A1C8 00307128  38 A0 00 01 */	li r5, 1
/* 8030A1CC 0030712C  38 C0 00 04 */	li r6, 4
/* 8030A1D0 00307130  38 E0 00 00 */	li r7, 0
/* 8030A1D4 00307134  48 06 D5 B9 */	bl GXSetVtxAttrFmt
/* 8030A1D8 00307138  38 60 00 01 */	li r3, 1
/* 8030A1DC 0030713C  38 80 00 0D */	li r4, 0xd
/* 8030A1E0 00307140  38 A0 00 01 */	li r5, 1
/* 8030A1E4 00307144  38 C0 00 04 */	li r6, 4
/* 8030A1E8 00307148  38 E0 00 00 */	li r7, 0
/* 8030A1EC 0030714C  48 06 D5 A1 */	bl GXSetVtxAttrFmt
/* 8030A1F0 00307150  38 60 00 02 */	li r3, 2
/* 8030A1F4 00307154  38 80 00 0D */	li r4, 0xd
/* 8030A1F8 00307158  38 A0 00 01 */	li r5, 1
/* 8030A1FC 0030715C  38 C0 00 02 */	li r6, 2
/* 8030A200 00307160  38 E0 00 0F */	li r7, 0xf
/* 8030A204 00307164  48 06 D5 89 */	bl GXSetVtxAttrFmt
/* 8030A208 00307168  3B E0 00 01 */	li r31, 1
lbl_8030A20C:
/* 8030A20C 0030716C  3B DF 00 0D */	addi r30, r31, 0xd
/* 8030A210 00307170  38 60 00 00 */	li r3, 0
/* 8030A214 00307174  7F C4 F3 78 */	mr r4, r30
/* 8030A218 00307178  38 A0 00 01 */	li r5, 1
/* 8030A21C 0030717C  38 C0 00 04 */	li r6, 4
/* 8030A220 00307180  38 E0 00 00 */	li r7, 0
/* 8030A224 00307184  48 06 D5 69 */	bl GXSetVtxAttrFmt
/* 8030A228 00307188  7F C4 F3 78 */	mr r4, r30
/* 8030A22C 0030718C  38 60 00 01 */	li r3, 1
/* 8030A230 00307190  38 A0 00 01 */	li r5, 1
/* 8030A234 00307194  38 C0 00 04 */	li r6, 4
/* 8030A238 00307198  38 E0 00 00 */	li r7, 0
/* 8030A23C 0030719C  48 06 D5 51 */	bl GXSetVtxAttrFmt
/* 8030A240 003071A0  7F C4 F3 78 */	mr r4, r30
/* 8030A244 003071A4  38 60 00 02 */	li r3, 2
/* 8030A248 003071A8  38 A0 00 01 */	li r5, 1
/* 8030A24C 003071AC  38 C0 00 04 */	li r6, 4
/* 8030A250 003071B0  38 E0 00 00 */	li r7, 0
/* 8030A254 003071B4  48 06 D5 39 */	bl GXSetVtxAttrFmt
/* 8030A258 003071B8  3B FF 00 01 */	addi r31, r31, 1
/* 8030A25C 003071BC  2C 1F 00 07 */	cmpwi r31, 7
/* 8030A260 003071C0  40 81 FF AC */	ble lbl_8030A20C
/* 8030A264 003071C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A268 003071C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A26C 003071CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030A270 003071D0  7C 08 03 A6 */	mtlr r0
/* 8030A274 003071D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A278 003071D8  4E 80 00 20 */	blr

.global ResetGfxStates__9CGraphicsFv
ResetGfxStates__9CGraphicsFv:
/* 8030A27C 003071DC  38 00 00 00 */	li r0, 0
/* 8030A280 003071E0  90 0D A7 B8 */	stw r0, sRenderState__9CGraphics@sda21(r13)
/* 8030A284 003071E4  4E 80 00 20 */	blr

.global SetFog__9CGraphicsF11ERglFogModeffRC6CColor
SetFog__9CGraphicsF11ERglFogModeffRC6CColor:
/* 8030A288 003071E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A28C 003071EC  7C 08 02 A6 */	mflr r0
/* 8030A290 003071F0  3C A0 80 5A */	lis r5, mProj__9CGraphics@ha
/* 8030A294 003071F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A298 003071F8  38 A5 61 B8 */	addi r5, r5, mProj__9CGraphics@l
/* 8030A29C 003071FC  C0 65 00 14 */	lfs f3, 0x14(r5)
/* 8030A2A0 00307200  C0 85 00 18 */	lfs f4, 0x18(r5)
/* 8030A2A4 00307204  4B FF E2 59 */	bl SetFog__3CGXF10_GXFogTypeffffRC8_GXColor
/* 8030A2A8 00307208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A2AC 0030720C  7C 08 03 A6 */	mtlr r0
/* 8030A2B0 00307210  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A2B4 00307214  4E 80 00 20 */	blr

.global SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass:
/* 8030A2B8 00307218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A2BC 0030721C  7C 08 02 A6 */	mflr r0
/* 8030A2C0 00307220  2C 03 00 00 */	cmpwi r3, 0
/* 8030A2C4 00307224  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A2C8 00307228  40 82 00 0C */	bne lbl_8030A2D4
/* 8030A2CC 0030722C  38 60 00 00 */	li r3, 0
/* 8030A2D0 00307230  48 00 00 FC */	b lbl_8030A3CC
lbl_8030A2D4:
/* 8030A2D4 00307234  2C 03 00 01 */	cmpwi r3, 1
/* 8030A2D8 00307238  40 82 00 0C */	bne lbl_8030A2E4
/* 8030A2DC 0030723C  38 60 00 01 */	li r3, 1
/* 8030A2E0 00307240  48 00 00 EC */	b lbl_8030A3CC
lbl_8030A2E4:
/* 8030A2E4 00307244  2C 03 00 02 */	cmpwi r3, 2
/* 8030A2E8 00307248  40 82 00 0C */	bne lbl_8030A2F4
/* 8030A2EC 0030724C  38 60 00 02 */	li r3, 2
/* 8030A2F0 00307250  48 00 00 DC */	b lbl_8030A3CC
lbl_8030A2F4:
/* 8030A2F4 00307254  2C 03 00 03 */	cmpwi r3, 3
/* 8030A2F8 00307258  40 82 00 0C */	bne lbl_8030A304
/* 8030A2FC 0030725C  38 60 00 03 */	li r3, 3
/* 8030A300 00307260  48 00 00 CC */	b lbl_8030A3CC
lbl_8030A304:
/* 8030A304 00307264  2C 03 00 04 */	cmpwi r3, 4
/* 8030A308 00307268  40 82 00 0C */	bne lbl_8030A314
/* 8030A30C 0030726C  38 60 00 04 */	li r3, 4
/* 8030A310 00307270  48 00 00 BC */	b lbl_8030A3CC
lbl_8030A314:
/* 8030A314 00307274  2C 03 00 05 */	cmpwi r3, 5
/* 8030A318 00307278  40 82 00 0C */	bne lbl_8030A324
/* 8030A31C 0030727C  38 60 00 05 */	li r3, 5
/* 8030A320 00307280  48 00 00 AC */	b lbl_8030A3CC
lbl_8030A324:
/* 8030A324 00307284  2C 03 00 06 */	cmpwi r3, 6
/* 8030A328 00307288  40 82 00 0C */	bne lbl_8030A334
/* 8030A32C 0030728C  38 60 00 06 */	li r3, 6
/* 8030A330 00307290  48 00 00 9C */	b lbl_8030A3CC
lbl_8030A334:
/* 8030A334 00307294  2C 03 00 07 */	cmpwi r3, 7
/* 8030A338 00307298  40 82 00 0C */	bne lbl_8030A344
/* 8030A33C 0030729C  38 60 00 07 */	li r3, 7
/* 8030A340 003072A0  48 00 00 8C */	b lbl_8030A3CC
lbl_8030A344:
/* 8030A344 003072A4  2C 03 00 08 */	cmpwi r3, 8
/* 8030A348 003072A8  40 82 00 0C */	bne lbl_8030A354
/* 8030A34C 003072AC  38 60 00 08 */	li r3, 8
/* 8030A350 003072B0  48 00 00 7C */	b lbl_8030A3CC
lbl_8030A354:
/* 8030A354 003072B4  2C 03 00 09 */	cmpwi r3, 9
/* 8030A358 003072B8  40 82 00 0C */	bne lbl_8030A364
/* 8030A35C 003072BC  38 60 00 09 */	li r3, 9
/* 8030A360 003072C0  48 00 00 6C */	b lbl_8030A3CC
lbl_8030A364:
/* 8030A364 003072C4  2C 03 00 0A */	cmpwi r3, 0xa
/* 8030A368 003072C8  40 82 00 0C */	bne lbl_8030A374
/* 8030A36C 003072CC  38 60 00 0A */	li r3, 0xa
/* 8030A370 003072D0  48 00 00 5C */	b lbl_8030A3CC
lbl_8030A374:
/* 8030A374 003072D4  2C 03 00 0B */	cmpwi r3, 0xb
/* 8030A378 003072D8  40 82 00 0C */	bne lbl_8030A384
/* 8030A37C 003072DC  38 60 00 0B */	li r3, 0xb
/* 8030A380 003072E0  48 00 00 4C */	b lbl_8030A3CC
lbl_8030A384:
/* 8030A384 003072E4  2C 03 00 0C */	cmpwi r3, 0xc
/* 8030A388 003072E8  40 82 00 0C */	bne lbl_8030A394
/* 8030A38C 003072EC  38 60 00 0C */	li r3, 0xc
/* 8030A390 003072F0  48 00 00 3C */	b lbl_8030A3CC
lbl_8030A394:
/* 8030A394 003072F4  2C 03 00 0D */	cmpwi r3, 0xd
/* 8030A398 003072F8  40 82 00 0C */	bne lbl_8030A3A4
/* 8030A39C 003072FC  38 60 00 0D */	li r3, 0xd
/* 8030A3A0 00307300  48 00 00 2C */	b lbl_8030A3CC
lbl_8030A3A4:
/* 8030A3A4 00307304  2C 03 00 0E */	cmpwi r3, 0xe
/* 8030A3A8 00307308  40 82 00 0C */	bne lbl_8030A3B4
/* 8030A3AC 0030730C  38 60 00 0E */	li r3, 0xe
/* 8030A3B0 00307310  48 00 00 1C */	b lbl_8030A3CC
lbl_8030A3B4:
/* 8030A3B4 00307314  38 A3 FF F1 */	addi r5, r3, -15
/* 8030A3B8 00307318  20 03 00 0F */	subfic r0, r3, 0xf
/* 8030A3BC 0030731C  7C A3 00 F8 */	nor r3, r5, r0
/* 8030A3C0 00307320  38 00 00 0F */	li r0, 0xf
/* 8030A3C4 00307324  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8030A3C8 00307328  7C 03 18 38 */	and r3, r0, r3
lbl_8030A3CC:
/* 8030A3CC 0030732C  4B FF EC 0D */	bl SetupPass__13CTevCombinersFiRCQ213CTevCombiners8CTevPass
/* 8030A3D0 00307330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A3D4 00307334  7C 08 03 A6 */	mtlr r0
/* 8030A3D8 00307338  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A3DC 0030733C  4E 80 00 20 */	blr

.global SetDepthRange__9CGraphicsFff
SetDepthRange__9CGraphicsFff:
/* 8030A3E0 00307340  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030A3E4 00307344  7C 08 02 A6 */	mflr r0
/* 8030A3E8 00307348  3C A0 43 30 */	lis r5, 0x4330
/* 8030A3EC 0030734C  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 8030A3F0 00307350  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030A3F4 00307354  38 E3 D9 10 */	addi r7, r3, mViewport__9CGraphics@l
/* 8030A3F8 00307358  FC A0 08 90 */	fmr f5, f1
/* 8030A3FC 0030735C  C8 82 C7 E8 */	lfd f4, lbl_805AE508@sda21(r2)
/* 8030A400 00307360  80 07 00 00 */	lwz r0, 0(r7)
/* 8030A404 00307364  FC C0 10 90 */	fmr f6, f2
/* 8030A408 00307368  80 87 00 04 */	lwz r4, 4(r7)
/* 8030A40C 0030736C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8030A410 00307370  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8030A414 00307374  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8030A418 00307378  80 67 00 08 */	lwz r3, 8(r7)
/* 8030A41C 0030737C  90 A1 00 08 */	stw r5, 8(r1)
/* 8030A420 00307380  80 07 00 0C */	lwz r0, 0xc(r7)
/* 8030A424 00307384  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8030A428 00307388  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030A42C 0030738C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030A430 00307390  90 81 00 14 */	stw r4, 0x14(r1)
/* 8030A434 00307394  EC 20 20 28 */	fsubs f1, f0, f4
/* 8030A438 00307398  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8030A43C 0030739C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030A440 003073A0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8030A444 003073A4  EC 40 20 28 */	fsubs f2, f0, f4
/* 8030A448 003073A8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8030A44C 003073AC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8030A450 003073B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030A454 003073B4  EC 60 20 28 */	fsubs f3, f0, f4
/* 8030A458 003073B8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8030A45C 003073BC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8030A460 003073C0  D0 AD A7 E0 */	stfs f5, mDepthNear__9CGraphics@sda21(r13)
/* 8030A464 003073C4  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030A468 003073C8  D0 CD 9C 78 */	stfs f6, mDepthFar__9CGraphics@sda21(r13)
/* 8030A46C 003073CC  48 07 21 DD */	bl GXSetViewport
/* 8030A470 003073D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030A474 003073D4  7C 08 03 A6 */	mtlr r0
/* 8030A478 003073D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8030A47C 003073DC  4E 80 00 20 */	blr

.global FullRender__9CGraphicsFv
FullRender__9CGraphicsFv:
/* 8030A480 003073E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A484 003073E4  7C 08 02 A6 */	mflr r0
/* 8030A488 003073E8  38 80 00 00 */	li r4, 0
/* 8030A48C 003073EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A490 003073F0  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030A494 003073F4  80 6D 9C 74 */	lwz r3, mCurrentPrimitive__9CGraphics@sda21(r13)
/* 8030A498 003073F8  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8030A49C 003073FC  4B FF E0 E9 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 8030A4A0 00307400  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030A4A4 00307404  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030A4A8 00307408  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 8030A4AC 0030740C  28 00 00 07 */	cmplwi r0, 7
/* 8030A4B0 00307410  41 81 0A 0C */	bgt lbl_8030AEBC
/* 8030A4B4 00307414  3C 60 80 3F */	lis r3, lbl_803ED948@ha
/* 8030A4B8 00307418  54 00 10 3A */	slwi r0, r0, 2
/* 8030A4BC 0030741C  38 63 D9 48 */	addi r3, r3, lbl_803ED948@l
/* 8030A4C0 00307420  7C 03 00 2E */	lwzx r0, r3, r0
/* 8030A4C4 00307424  7C 09 03 A6 */	mtctr r0
/* 8030A4C8 00307428  4E 80 04 20 */	bctr
lbl_8030A4CC:
/* 8030A4CC 0030742C  80 CD A7 FC */	lwz r6, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030A4D0 00307430  38 E0 00 00 */	li r7, 0
/* 8030A4D4 00307434  2C 06 00 00 */	cmpwi r6, 0
/* 8030A4D8 00307438  40 81 09 E4 */	ble lbl_8030AEBC
/* 8030A4DC 0030743C  2C 06 00 08 */	cmpwi r6, 8
/* 8030A4E0 00307440  38 86 FF F8 */	addi r4, r6, -8
/* 8030A4E4 00307444  40 81 00 EC */	ble lbl_8030A5D0
/* 8030A4E8 00307448  38 04 00 07 */	addi r0, r4, 7
/* 8030A4EC 0030744C  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A4F0 00307450  54 00 E8 FE */	srwi r0, r0, 3
/* 8030A4F4 00307454  3C 60 CC 01 */	lis r3, 0xcc01
/* 8030A4F8 00307458  7C 09 03 A6 */	mtctr r0
/* 8030A4FC 0030745C  2C 04 00 00 */	cmpwi r4, 0
/* 8030A500 00307460  40 81 00 D0 */	ble lbl_8030A5D0
lbl_8030A504:
/* 8030A504 00307464  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A508 00307468  38 E7 00 08 */	addi r7, r7, 8
/* 8030A50C 0030746C  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A510 00307470  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A514 00307474  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A518 00307478  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A51C 0030747C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A520 00307480  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8030A524 00307484  C0 45 00 10 */	lfs f2, 0x10(r5)
/* 8030A528 00307488  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030A52C 0030748C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A530 00307490  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A534 00307494  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A538 00307498  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 8030A53C 0030749C  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 8030A540 003074A0  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8030A544 003074A4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A548 003074A8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A54C 003074AC  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A550 003074B0  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 8030A554 003074B4  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8030A558 003074B8  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030A55C 003074BC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A560 003074C0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A564 003074C4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A568 003074C8  C0 25 00 38 */	lfs f1, 0x38(r5)
/* 8030A56C 003074CC  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 8030A570 003074D0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8030A574 003074D4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A578 003074D8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A57C 003074DC  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A580 003074E0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8030A584 003074E4  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 8030A588 003074E8  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8030A58C 003074EC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A590 003074F0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A594 003074F4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A598 003074F8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8030A59C 003074FC  C0 45 00 4C */	lfs f2, 0x4c(r5)
/* 8030A5A0 00307500  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 8030A5A4 00307504  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A5A8 00307508  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A5AC 0030750C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A5B0 00307510  C0 25 00 5C */	lfs f1, 0x5c(r5)
/* 8030A5B4 00307514  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 8030A5B8 00307518  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 8030A5BC 0030751C  38 A5 00 60 */	addi r5, r5, 0x60
/* 8030A5C0 00307520  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A5C4 00307524  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A5C8 00307528  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A5CC 0030752C  42 00 FF 38 */	bdnz lbl_8030A504
lbl_8030A5D0:
/* 8030A5D0 00307530  1C 87 00 0C */	mulli r4, r7, 0xc
/* 8030A5D4 00307534  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A5D8 00307538  7C 07 30 50 */	subf r0, r7, r6
/* 8030A5DC 0030753C  3C 60 CC 01 */	lis r3, 0xcc01
/* 8030A5E0 00307540  7C 85 22 14 */	add r4, r5, r4
/* 8030A5E4 00307544  7C 09 03 A6 */	mtctr r0
/* 8030A5E8 00307548  7C 07 30 00 */	cmpw r7, r6
/* 8030A5EC 0030754C  40 80 08 D0 */	bge lbl_8030AEBC
lbl_8030A5F0:
/* 8030A5F0 00307550  C0 24 00 08 */	lfs f1, 8(r4)
/* 8030A5F4 00307554  C0 44 00 04 */	lfs f2, 4(r4)
/* 8030A5F8 00307558  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030A5FC 0030755C  38 84 00 0C */	addi r4, r4, 0xc
/* 8030A600 00307560  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A604 00307564  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A608 00307568  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A60C 0030756C  42 00 FF E4 */	bdnz lbl_8030A5F0
/* 8030A610 00307570  48 00 08 AC */	b lbl_8030AEBC
lbl_8030A614:
/* 8030A614 00307574  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030A618 00307578  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030A61C 0030757C  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A620 00307580  2C 00 00 00 */	cmpwi r0, 0
/* 8030A624 00307584  80 CD A7 C4 */	lwz r6, nrmBuffer__9CGraphics@sda21(r13)
/* 8030A628 00307588  7C 03 03 78 */	mr r3, r0
/* 8030A62C 0030758C  40 81 08 90 */	ble lbl_8030AEBC
/* 8030A630 00307590  54 00 F0 BF */	rlwinm. r0, r0, 0x1e, 2, 0x1f
/* 8030A634 00307594  7C 09 03 A6 */	mtctr r0
/* 8030A638 00307598  41 82 00 D8 */	beq lbl_8030A710
lbl_8030A63C:
/* 8030A63C 0030759C  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A640 003075A0  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A644 003075A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A648 003075A8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A64C 003075AC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A650 003075B0  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A654 003075B4  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030A658 003075B8  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030A65C 003075BC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030A660 003075C0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A664 003075C4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A668 003075C8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A66C 003075CC  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030A670 003075D0  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030A674 003075D4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030A678 003075D8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A67C 003075DC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A680 003075E0  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A684 003075E4  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 8030A688 003075E8  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8030A68C 003075EC  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8030A690 003075F0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A694 003075F4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A698 003075F8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A69C 003075FC  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 8030A6A0 00307600  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8030A6A4 00307604  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8030A6A8 00307608  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A6AC 0030760C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A6B0 00307610  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A6B4 00307614  C0 46 00 20 */	lfs f2, 0x20(r6)
/* 8030A6B8 00307618  C0 26 00 1C */	lfs f1, 0x1c(r6)
/* 8030A6BC 0030761C  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 8030A6C0 00307620  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A6C4 00307624  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A6C8 00307628  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A6CC 0030762C  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 8030A6D0 00307630  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 8030A6D4 00307634  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030A6D8 00307638  38 A5 00 30 */	addi r5, r5, 0x30
/* 8030A6DC 0030763C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A6E0 00307640  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A6E4 00307644  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A6E8 00307648  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 8030A6EC 0030764C  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 8030A6F0 00307650  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 8030A6F4 00307654  38 C6 00 30 */	addi r6, r6, 0x30
/* 8030A6F8 00307658  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A6FC 0030765C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A700 00307660  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A704 00307664  42 00 FF 38 */	bdnz lbl_8030A63C
/* 8030A708 00307668  70 63 00 03 */	andi. r3, r3, 3
/* 8030A70C 0030766C  41 82 07 B0 */	beq lbl_8030AEBC
lbl_8030A710:
/* 8030A710 00307670  7C 69 03 A6 */	mtctr r3
lbl_8030A714:
/* 8030A714 00307674  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A718 00307678  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A71C 0030767C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A720 00307680  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030A724 00307684  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A728 00307688  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A72C 0030768C  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A730 00307690  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030A734 00307694  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030A738 00307698  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030A73C 0030769C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8030A740 003076A0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A744 003076A4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A748 003076A8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A74C 003076AC  42 00 FF C8 */	bdnz lbl_8030A714
/* 8030A750 003076B0  48 00 07 6C */	b lbl_8030AEBC
lbl_8030A754:
/* 8030A754 003076B4  80 ED A7 FC */	lwz r7, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030A758 003076B8  39 00 00 00 */	li r8, 0
/* 8030A75C 003076BC  2C 07 00 00 */	cmpwi r7, 0
/* 8030A760 003076C0  40 81 07 5C */	ble lbl_8030AEBC
/* 8030A764 003076C4  2C 07 00 08 */	cmpwi r7, 8
/* 8030A768 003076C8  38 87 FF F8 */	addi r4, r7, -8
/* 8030A76C 003076CC  40 81 01 34 */	ble lbl_8030A8A0
/* 8030A770 003076D0  38 04 00 07 */	addi r0, r4, 7
/* 8030A774 003076D4  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A778 003076D8  54 00 E8 FE */	srwi r0, r0, 3
/* 8030A77C 003076DC  80 CD A7 D0 */	lwz r6, clrBuffer__9CGraphics@sda21(r13)
/* 8030A780 003076E0  3C 60 CC 01 */	lis r3, 0xcc01
/* 8030A784 003076E4  7C 09 03 A6 */	mtctr r0
/* 8030A788 003076E8  2C 04 00 00 */	cmpwi r4, 0
/* 8030A78C 003076EC  40 81 01 14 */	ble lbl_8030A8A0
lbl_8030A790:
/* 8030A790 003076F0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A794 003076F4  39 08 00 08 */	addi r8, r8, 8
/* 8030A798 003076F8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A79C 003076FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A7A0 00307700  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A7A4 00307704  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A7A8 00307708  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A7AC 0030770C  80 06 00 00 */	lwz r0, 0(r6)
/* 8030A7B0 00307710  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A7B4 00307714  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8030A7B8 00307718  C0 45 00 10 */	lfs f2, 0x10(r5)
/* 8030A7BC 0030771C  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030A7C0 00307720  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A7C4 00307724  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A7C8 00307728  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A7CC 0030772C  80 06 00 04 */	lwz r0, 4(r6)
/* 8030A7D0 00307730  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A7D4 00307734  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 8030A7D8 00307738  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 8030A7DC 0030773C  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8030A7E0 00307740  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A7E4 00307744  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A7E8 00307748  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A7EC 0030774C  80 06 00 08 */	lwz r0, 8(r6)
/* 8030A7F0 00307750  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A7F4 00307754  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 8030A7F8 00307758  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8030A7FC 0030775C  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030A800 00307760  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A804 00307764  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A808 00307768  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A80C 0030776C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 8030A810 00307770  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A814 00307774  C0 25 00 38 */	lfs f1, 0x38(r5)
/* 8030A818 00307778  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 8030A81C 0030777C  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8030A820 00307780  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A824 00307784  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A828 00307788  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A82C 0030778C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8030A830 00307790  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A834 00307794  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8030A838 00307798  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 8030A83C 0030779C  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8030A840 003077A0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A844 003077A4  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A848 003077A8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A84C 003077AC  80 06 00 14 */	lwz r0, 0x14(r6)
/* 8030A850 003077B0  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A854 003077B4  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8030A858 003077B8  C0 45 00 4C */	lfs f2, 0x4c(r5)
/* 8030A85C 003077BC  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 8030A860 003077C0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A864 003077C4  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A868 003077C8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A86C 003077CC  80 06 00 18 */	lwz r0, 0x18(r6)
/* 8030A870 003077D0  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A874 003077D4  C0 25 00 5C */	lfs f1, 0x5c(r5)
/* 8030A878 003077D8  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 8030A87C 003077DC  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 8030A880 003077E0  38 A5 00 60 */	addi r5, r5, 0x60
/* 8030A884 003077E4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A888 003077E8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A88C 003077EC  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A890 003077F0  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8030A894 003077F4  38 C6 00 20 */	addi r6, r6, 0x20
/* 8030A898 003077F8  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A89C 003077FC  42 00 FE F4 */	bdnz lbl_8030A790
lbl_8030A8A0:
/* 8030A8A0 00307800  1C A8 00 0C */	mulli r5, r8, 0xc
/* 8030A8A4 00307804  80 CD A7 C0 */	lwz r6, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A8A8 00307808  80 8D A7 D0 */	lwz r4, clrBuffer__9CGraphics@sda21(r13)
/* 8030A8AC 0030780C  55 03 10 3A */	slwi r3, r8, 2
/* 8030A8B0 00307810  7C 08 38 50 */	subf r0, r8, r7
/* 8030A8B4 00307814  7C A6 2A 14 */	add r5, r6, r5
/* 8030A8B8 00307818  7C 84 1A 14 */	add r4, r4, r3
/* 8030A8BC 0030781C  3C 60 CC 01 */	lis r3, 0xcc01
/* 8030A8C0 00307820  7C 09 03 A6 */	mtctr r0
/* 8030A8C4 00307824  7C 08 38 00 */	cmpw r8, r7
/* 8030A8C8 00307828  40 80 05 F4 */	bge lbl_8030AEBC
lbl_8030A8CC:
/* 8030A8CC 0030782C  C0 25 00 08 */	lfs f1, 8(r5)
/* 8030A8D0 00307830  C0 45 00 04 */	lfs f2, 4(r5)
/* 8030A8D4 00307834  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A8D8 00307838  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030A8DC 0030783C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030A8E0 00307840  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 8030A8E4 00307844  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030A8E8 00307848  80 04 00 00 */	lwz r0, 0(r4)
/* 8030A8EC 0030784C  38 84 00 04 */	addi r4, r4, 4
/* 8030A8F0 00307850  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8030A8F4 00307854  42 00 FF D8 */	bdnz lbl_8030A8CC
/* 8030A8F8 00307858  48 00 05 C4 */	b lbl_8030AEBC
lbl_8030A8FC:
/* 8030A8FC 0030785C  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030A900 00307860  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030A904 00307864  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030A908 00307868  2C 00 00 00 */	cmpwi r0, 0
/* 8030A90C 0030786C  80 CD A7 C8 */	lwz r6, txtBuffer0__9CGraphics@sda21(r13)
/* 8030A910 00307870  7C 03 03 78 */	mr r3, r0
/* 8030A914 00307874  40 81 05 A8 */	ble lbl_8030AEBC
/* 8030A918 00307878  54 00 F0 BF */	rlwinm. r0, r0, 0x1e, 2, 0x1f
/* 8030A91C 0030787C  7C 09 03 A6 */	mtctr r0
/* 8030A920 00307880  41 82 00 B8 */	beq lbl_8030A9D8
lbl_8030A924:
/* 8030A924 00307884  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A928 00307888  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A92C 0030788C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A930 00307890  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A934 00307894  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A938 00307898  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A93C 0030789C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030A940 003078A0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030A944 003078A4  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A948 003078A8  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A94C 003078AC  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030A950 003078B0  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030A954 003078B4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030A958 003078B8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A95C 003078BC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A960 003078C0  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A964 003078C4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8030A968 003078C8  C0 06 00 08 */	lfs f0, 8(r6)
/* 8030A96C 003078CC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A970 003078D0  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A974 003078D4  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 8030A978 003078D8  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8030A97C 003078DC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8030A980 003078E0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A984 003078E4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A988 003078E8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A98C 003078EC  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 8030A990 003078F0  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8030A994 003078F4  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A998 003078F8  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A99C 003078FC  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 8030A9A0 00307900  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 8030A9A4 00307904  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030A9A8 00307908  38 A5 00 30 */	addi r5, r5, 0x30
/* 8030A9AC 0030790C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A9B0 00307910  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A9B4 00307914  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A9B8 00307918  C0 26 00 1C */	lfs f1, 0x1c(r6)
/* 8030A9BC 0030791C  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 8030A9C0 00307920  38 C6 00 20 */	addi r6, r6, 0x20
/* 8030A9C4 00307924  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A9C8 00307928  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A9CC 0030792C  42 00 FF 58 */	bdnz lbl_8030A924
/* 8030A9D0 00307930  70 63 00 03 */	andi. r3, r3, 3
/* 8030A9D4 00307934  41 82 04 E8 */	beq lbl_8030AEBC
lbl_8030A9D8:
/* 8030A9D8 00307938  7C 69 03 A6 */	mtctr r3
lbl_8030A9DC:
/* 8030A9DC 0030793C  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030A9E0 00307940  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030A9E4 00307944  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030A9E8 00307948  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030A9EC 0030794C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030A9F0 00307950  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030A9F4 00307954  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030A9F8 00307958  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030A9FC 0030795C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AA00 00307960  38 C6 00 08 */	addi r6, r6, 8
/* 8030AA04 00307964  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AA08 00307968  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AA0C 0030796C  42 00 FF D0 */	bdnz lbl_8030A9DC
/* 8030AA10 00307970  48 00 04 AC */	b lbl_8030AEBC
lbl_8030AA14:
/* 8030AA14 00307974  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030AA18 00307978  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030AA1C 0030797C  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030AA20 00307980  2C 00 00 00 */	cmpwi r0, 0
/* 8030AA24 00307984  80 CD A7 C4 */	lwz r6, nrmBuffer__9CGraphics@sda21(r13)
/* 8030AA28 00307988  80 ED A7 C8 */	lwz r7, txtBuffer0__9CGraphics@sda21(r13)
/* 8030AA2C 0030798C  7C 03 03 78 */	mr r3, r0
/* 8030AA30 00307990  40 81 04 8C */	ble lbl_8030AEBC
/* 8030AA34 00307994  54 00 F8 7F */	rlwinm. r0, r0, 0x1f, 1, 0x1f
/* 8030AA38 00307998  7C 09 03 A6 */	mtctr r0
/* 8030AA3C 0030799C  41 82 00 9C */	beq lbl_8030AAD8
lbl_8030AA40:
/* 8030AA40 003079A0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AA44 003079A4  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AA48 003079A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AA4C 003079AC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AA50 003079B0  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AA54 003079B4  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AA58 003079B8  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030AA5C 003079BC  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030AA60 003079C0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AA64 003079C4  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AA68 003079C8  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AA6C 003079CC  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AA70 003079D0  C0 27 00 04 */	lfs f1, 4(r7)
/* 8030AA74 003079D4  C0 07 00 00 */	lfs f0, 0(r7)
/* 8030AA78 003079D8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AA7C 003079DC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AA80 003079E0  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030AA84 003079E4  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030AA88 003079E8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030AA8C 003079EC  38 A5 00 18 */	addi r5, r5, 0x18
/* 8030AA90 003079F0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AA94 003079F4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AA98 003079F8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AA9C 003079FC  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 8030AAA0 00307A00  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8030AAA4 00307A04  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8030AAA8 00307A08  38 C6 00 18 */	addi r6, r6, 0x18
/* 8030AAAC 00307A0C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AAB0 00307A10  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AAB4 00307A14  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AAB8 00307A18  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 8030AABC 00307A1C  C0 07 00 08 */	lfs f0, 8(r7)
/* 8030AAC0 00307A20  38 E7 00 10 */	addi r7, r7, 0x10
/* 8030AAC4 00307A24  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AAC8 00307A28  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AACC 00307A2C  42 00 FF 74 */	bdnz lbl_8030AA40
/* 8030AAD0 00307A30  70 63 00 01 */	andi. r3, r3, 1
/* 8030AAD4 00307A34  41 82 03 E8 */	beq lbl_8030AEBC
lbl_8030AAD8:
/* 8030AAD8 00307A38  7C 69 03 A6 */	mtctr r3
lbl_8030AADC:
/* 8030AADC 00307A3C  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AAE0 00307A40  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AAE4 00307A44  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AAE8 00307A48  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030AAEC 00307A4C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AAF0 00307A50  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AAF4 00307A54  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AAF8 00307A58  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030AAFC 00307A5C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030AB00 00307A60  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AB04 00307A64  38 C6 00 0C */	addi r6, r6, 0xc
/* 8030AB08 00307A68  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AB0C 00307A6C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AB10 00307A70  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AB14 00307A74  C0 27 00 04 */	lfs f1, 4(r7)
/* 8030AB18 00307A78  C0 07 00 00 */	lfs f0, 0(r7)
/* 8030AB1C 00307A7C  38 E7 00 08 */	addi r7, r7, 8
/* 8030AB20 00307A80  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AB24 00307A84  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AB28 00307A88  42 00 FF B4 */	bdnz lbl_8030AADC
/* 8030AB2C 00307A8C  48 00 03 90 */	b lbl_8030AEBC
lbl_8030AB30:
/* 8030AB30 00307A90  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030AB34 00307A94  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030AB38 00307A98  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030AB3C 00307A9C  2C 00 00 00 */	cmpwi r0, 0
/* 8030AB40 00307AA0  80 CD A7 C4 */	lwz r6, nrmBuffer__9CGraphics@sda21(r13)
/* 8030AB44 00307AA4  80 ED A7 D0 */	lwz r7, clrBuffer__9CGraphics@sda21(r13)
/* 8030AB48 00307AA8  7C 03 03 78 */	mr r3, r0
/* 8030AB4C 00307AAC  40 81 03 70 */	ble lbl_8030AEBC
/* 8030AB50 00307AB0  54 00 F8 7F */	rlwinm. r0, r0, 0x1f, 1, 0x1f
/* 8030AB54 00307AB4  7C 09 03 A6 */	mtctr r0
/* 8030AB58 00307AB8  41 82 00 8C */	beq lbl_8030ABE4
lbl_8030AB5C:
/* 8030AB5C 00307ABC  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AB60 00307AC0  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AB64 00307AC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AB68 00307AC8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AB6C 00307ACC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AB70 00307AD0  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AB74 00307AD4  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030AB78 00307AD8  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030AB7C 00307ADC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AB80 00307AE0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AB84 00307AE4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AB88 00307AE8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AB8C 00307AEC  80 07 00 00 */	lwz r0, 0(r7)
/* 8030AB90 00307AF0  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AB94 00307AF4  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030AB98 00307AF8  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030AB9C 00307AFC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030ABA0 00307B00  38 A5 00 18 */	addi r5, r5, 0x18
/* 8030ABA4 00307B04  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ABA8 00307B08  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ABAC 00307B0C  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ABB0 00307B10  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 8030ABB4 00307B14  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8030ABB8 00307B18  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8030ABBC 00307B1C  38 C6 00 18 */	addi r6, r6, 0x18
/* 8030ABC0 00307B20  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ABC4 00307B24  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ABC8 00307B28  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ABCC 00307B2C  80 07 00 04 */	lwz r0, 4(r7)
/* 8030ABD0 00307B30  38 E7 00 08 */	addi r7, r7, 8
/* 8030ABD4 00307B34  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030ABD8 00307B38  42 00 FF 84 */	bdnz lbl_8030AB5C
/* 8030ABDC 00307B3C  70 63 00 01 */	andi. r3, r3, 1
/* 8030ABE0 00307B40  41 82 02 DC */	beq lbl_8030AEBC
lbl_8030ABE4:
/* 8030ABE4 00307B44  7C 69 03 A6 */	mtctr r3
lbl_8030ABE8:
/* 8030ABE8 00307B48  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030ABEC 00307B4C  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030ABF0 00307B50  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030ABF4 00307B54  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030ABF8 00307B58  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ABFC 00307B5C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AC00 00307B60  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AC04 00307B64  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030AC08 00307B68  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030AC0C 00307B6C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AC10 00307B70  38 C6 00 0C */	addi r6, r6, 0xc
/* 8030AC14 00307B74  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AC18 00307B78  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AC1C 00307B7C  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AC20 00307B80  80 07 00 00 */	lwz r0, 0(r7)
/* 8030AC24 00307B84  38 E7 00 04 */	addi r7, r7, 4
/* 8030AC28 00307B88  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AC2C 00307B8C  42 00 FF BC */	bdnz lbl_8030ABE8
/* 8030AC30 00307B90  48 00 02 8C */	b lbl_8030AEBC
lbl_8030AC34:
/* 8030AC34 00307B94  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030AC38 00307B98  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030AC3C 00307B9C  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030AC40 00307BA0  2C 00 00 00 */	cmpwi r0, 0
/* 8030AC44 00307BA4  80 CD A7 D0 */	lwz r6, clrBuffer__9CGraphics@sda21(r13)
/* 8030AC48 00307BA8  80 ED A7 C8 */	lwz r7, txtBuffer0__9CGraphics@sda21(r13)
/* 8030AC4C 00307BAC  7C 03 03 78 */	mr r3, r0
/* 8030AC50 00307BB0  40 81 02 6C */	ble lbl_8030AEBC
/* 8030AC54 00307BB4  54 00 F0 BF */	rlwinm. r0, r0, 0x1e, 2, 0x1f
/* 8030AC58 00307BB8  7C 09 03 A6 */	mtctr r0
/* 8030AC5C 00307BBC  41 82 00 DC */	beq lbl_8030AD38
lbl_8030AC60:
/* 8030AC60 00307BC0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AC64 00307BC4  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AC68 00307BC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AC6C 00307BCC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AC70 00307BD0  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AC74 00307BD4  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AC78 00307BD8  80 06 00 00 */	lwz r0, 0(r6)
/* 8030AC7C 00307BDC  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AC80 00307BE0  C0 27 00 04 */	lfs f1, 4(r7)
/* 8030AC84 00307BE4  C0 07 00 00 */	lfs f0, 0(r7)
/* 8030AC88 00307BE8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AC8C 00307BEC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AC90 00307BF0  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030AC94 00307BF4  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030AC98 00307BF8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030AC9C 00307BFC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ACA0 00307C00  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ACA4 00307C04  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ACA8 00307C08  80 06 00 04 */	lwz r0, 4(r6)
/* 8030ACAC 00307C0C  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030ACB0 00307C10  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 8030ACB4 00307C14  C0 07 00 08 */	lfs f0, 8(r7)
/* 8030ACB8 00307C18  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ACBC 00307C1C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ACC0 00307C20  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 8030ACC4 00307C24  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8030ACC8 00307C28  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8030ACCC 00307C2C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ACD0 00307C30  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ACD4 00307C34  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ACD8 00307C38  80 06 00 08 */	lwz r0, 8(r6)
/* 8030ACDC 00307C3C  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030ACE0 00307C40  C0 27 00 14 */	lfs f1, 0x14(r7)
/* 8030ACE4 00307C44  C0 07 00 10 */	lfs f0, 0x10(r7)
/* 8030ACE8 00307C48  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ACEC 00307C4C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ACF0 00307C50  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 8030ACF4 00307C54  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 8030ACF8 00307C58  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030ACFC 00307C5C  38 A5 00 30 */	addi r5, r5, 0x30
/* 8030AD00 00307C60  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AD04 00307C64  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AD08 00307C68  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AD0C 00307C6C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 8030AD10 00307C70  38 C6 00 10 */	addi r6, r6, 0x10
/* 8030AD14 00307C74  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AD18 00307C78  C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 8030AD1C 00307C7C  C0 07 00 18 */	lfs f0, 0x18(r7)
/* 8030AD20 00307C80  38 E7 00 20 */	addi r7, r7, 0x20
/* 8030AD24 00307C84  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AD28 00307C88  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AD2C 00307C8C  42 00 FF 34 */	bdnz lbl_8030AC60
/* 8030AD30 00307C90  70 63 00 03 */	andi. r3, r3, 3
/* 8030AD34 00307C94  41 82 01 88 */	beq lbl_8030AEBC
lbl_8030AD38:
/* 8030AD38 00307C98  7C 69 03 A6 */	mtctr r3
lbl_8030AD3C:
/* 8030AD3C 00307C9C  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AD40 00307CA0  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AD44 00307CA4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AD48 00307CA8  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030AD4C 00307CAC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AD50 00307CB0  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AD54 00307CB4  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AD58 00307CB8  80 06 00 00 */	lwz r0, 0(r6)
/* 8030AD5C 00307CBC  38 C6 00 04 */	addi r6, r6, 4
/* 8030AD60 00307CC0  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AD64 00307CC4  C0 27 00 04 */	lfs f1, 4(r7)
/* 8030AD68 00307CC8  C0 07 00 00 */	lfs f0, 0(r7)
/* 8030AD6C 00307CCC  38 E7 00 08 */	addi r7, r7, 8
/* 8030AD70 00307CD0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AD74 00307CD4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AD78 00307CD8  42 00 FF C4 */	bdnz lbl_8030AD3C
/* 8030AD7C 00307CDC  48 00 01 40 */	b lbl_8030AEBC
lbl_8030AD80:
/* 8030AD80 00307CE0  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030AD84 00307CE4  3C 80 CC 01 */	lis r4, 0xcc01
/* 8030AD88 00307CE8  80 AD A7 C0 */	lwz r5, vtxBuffer__9CGraphics@sda21(r13)
/* 8030AD8C 00307CEC  2C 00 00 00 */	cmpwi r0, 0
/* 8030AD90 00307CF0  80 CD A7 C4 */	lwz r6, nrmBuffer__9CGraphics@sda21(r13)
/* 8030AD94 00307CF4  80 ED A7 D0 */	lwz r7, clrBuffer__9CGraphics@sda21(r13)
/* 8030AD98 00307CF8  7C 03 03 78 */	mr r3, r0
/* 8030AD9C 00307CFC  81 0D A7 C8 */	lwz r8, txtBuffer0__9CGraphics@sda21(r13)
/* 8030ADA0 00307D00  40 81 01 1C */	ble lbl_8030AEBC
/* 8030ADA4 00307D04  54 00 F8 7F */	rlwinm. r0, r0, 0x1f, 1, 0x1f
/* 8030ADA8 00307D08  7C 09 03 A6 */	mtctr r0
/* 8030ADAC 00307D0C  41 82 00 B0 */	beq lbl_8030AE5C
lbl_8030ADB0:
/* 8030ADB0 00307D10  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030ADB4 00307D14  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030ADB8 00307D18  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030ADBC 00307D1C  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ADC0 00307D20  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ADC4 00307D24  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ADC8 00307D28  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030ADCC 00307D2C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030ADD0 00307D30  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030ADD4 00307D34  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ADD8 00307D38  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ADDC 00307D3C  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030ADE0 00307D40  80 07 00 00 */	lwz r0, 0(r7)
/* 8030ADE4 00307D44  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030ADE8 00307D48  C0 28 00 04 */	lfs f1, 4(r8)
/* 8030ADEC 00307D4C  C0 08 00 00 */	lfs f0, 0(r8)
/* 8030ADF0 00307D50  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030ADF4 00307D54  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030ADF8 00307D58  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8030ADFC 00307D5C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8030AE00 00307D60  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030AE04 00307D64  38 A5 00 18 */	addi r5, r5, 0x18
/* 8030AE08 00307D68  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AE0C 00307D6C  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AE10 00307D70  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AE14 00307D74  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 8030AE18 00307D78  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 8030AE1C 00307D7C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 8030AE20 00307D80  38 C6 00 18 */	addi r6, r6, 0x18
/* 8030AE24 00307D84  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AE28 00307D88  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AE2C 00307D8C  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AE30 00307D90  80 07 00 04 */	lwz r0, 4(r7)
/* 8030AE34 00307D94  38 E7 00 08 */	addi r7, r7, 8
/* 8030AE38 00307D98  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AE3C 00307D9C  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 8030AE40 00307DA0  C0 08 00 08 */	lfs f0, 8(r8)
/* 8030AE44 00307DA4  39 08 00 10 */	addi r8, r8, 0x10
/* 8030AE48 00307DA8  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AE4C 00307DAC  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AE50 00307DB0  42 00 FF 60 */	bdnz lbl_8030ADB0
/* 8030AE54 00307DB4  70 63 00 01 */	andi. r3, r3, 1
/* 8030AE58 00307DB8  41 82 00 64 */	beq lbl_8030AEBC
lbl_8030AE5C:
/* 8030AE5C 00307DBC  7C 69 03 A6 */	mtctr r3
lbl_8030AE60:
/* 8030AE60 00307DC0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8030AE64 00307DC4  C0 25 00 04 */	lfs f1, 4(r5)
/* 8030AE68 00307DC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030AE6C 00307DCC  38 A5 00 0C */	addi r5, r5, 0xc
/* 8030AE70 00307DD0  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AE74 00307DD4  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AE78 00307DD8  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AE7C 00307DDC  C0 46 00 08 */	lfs f2, 8(r6)
/* 8030AE80 00307DE0  C0 26 00 04 */	lfs f1, 4(r6)
/* 8030AE84 00307DE4  C0 06 00 00 */	lfs f0, 0(r6)
/* 8030AE88 00307DE8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8030AE8C 00307DEC  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AE90 00307DF0  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AE94 00307DF4  D0 44 80 00 */	stfs f2, 0xCC008000@l(r4)
/* 8030AE98 00307DF8  80 07 00 00 */	lwz r0, 0(r7)
/* 8030AE9C 00307DFC  38 E7 00 04 */	addi r7, r7, 4
/* 8030AEA0 00307E00  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8030AEA4 00307E04  C0 28 00 04 */	lfs f1, 4(r8)
/* 8030AEA8 00307E08  C0 08 00 00 */	lfs f0, 0(r8)
/* 8030AEAC 00307E0C  39 08 00 08 */	addi r8, r8, 8
/* 8030AEB0 00307E10  D0 04 80 00 */	stfs f0, 0xCC008000@l(r4)
/* 8030AEB4 00307E14  D0 24 80 00 */	stfs f1, 0xCC008000@l(r4)
/* 8030AEB8 00307E18  42 00 FF A8 */	bdnz lbl_8030AE60
lbl_8030AEBC:
/* 8030AEBC 00307E1C  4B FF D6 C5 */	bl End__3CGXFv
/* 8030AEC0 00307E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030AEC4 00307E24  7C 08 03 A6 */	mtlr r0
/* 8030AEC8 00307E28  38 21 00 10 */	addi r1, r1, 0x10
/* 8030AECC 00307E2C  4E 80 00 20 */	blr

.global SetTevStates__9CGraphicsFUc
SetTevStates__9CGraphicsFUc:
/* 8030AED0 00307E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030AED4 00307E34  7C 08 02 A6 */	mflr r0
/* 8030AED8 00307E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030AEDC 00307E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030AEE0 00307E40  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 8030AEE4 00307E44  2C 1F 00 04 */	cmpwi r31, 4
/* 8030AEE8 00307E48  40 80 00 10 */	bge lbl_8030AEF8
/* 8030AEEC 00307E4C  2C 1F 00 00 */	cmpwi r31, 0
/* 8030AEF0 00307E50  40 80 00 14 */	bge lbl_8030AF04
/* 8030AEF4 00307E54  48 00 00 AC */	b lbl_8030AFA0
lbl_8030AEF8:
/* 8030AEF8 00307E58  2C 1F 00 08 */	cmpwi r31, 8
/* 8030AEFC 00307E5C  40 80 00 A4 */	bge lbl_8030AFA0
/* 8030AF00 00307E60  48 00 00 48 */	b lbl_8030AF48
lbl_8030AF04:
/* 8030AF04 00307E64  38 60 00 01 */	li r3, 1
/* 8030AF08 00307E68  4B FF DF 49 */	bl SetNumChans__3CGXFUc
/* 8030AF0C 00307E6C  38 60 00 00 */	li r3, 0
/* 8030AF10 00307E70  4B FF DF 05 */	bl SetNumTexGens__3CGXFUc
/* 8030AF14 00307E74  38 60 00 01 */	li r3, 1
/* 8030AF18 00307E78  4B FF DD 79 */	bl SetNumTevStages__3CGXFUc
/* 8030AF1C 00307E7C  38 60 00 00 */	li r3, 0
/* 8030AF20 00307E80  38 80 00 FF */	li r4, 0xff
/* 8030AF24 00307E84  38 A0 00 FF */	li r5, 0xff
/* 8030AF28 00307E88  38 C0 00 04 */	li r6, 4
/* 8030AF2C 00307E8C  4B FF DA 21 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8030AF30 00307E90  38 60 00 01 */	li r3, 1
/* 8030AF34 00307E94  38 80 00 FF */	li r4, 0xff
/* 8030AF38 00307E98  38 A0 00 FF */	li r5, 0xff
/* 8030AF3C 00307E9C  38 C0 00 04 */	li r6, 4
/* 8030AF40 00307EA0  4B FF DA 0D */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8030AF44 00307EA4  48 00 00 5C */	b lbl_8030AFA0
lbl_8030AF48:
/* 8030AF48 00307EA8  38 60 00 01 */	li r3, 1
/* 8030AF4C 00307EAC  4B FF DF 05 */	bl SetNumChans__3CGXFUc
/* 8030AF50 00307EB0  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030AF54 00307EB4  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030AF58 00307EB8  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 8030AF5C 00307EBC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8030AF60 00307EC0  41 82 00 10 */	beq lbl_8030AF70
/* 8030AF64 00307EC4  38 60 00 02 */	li r3, 2
/* 8030AF68 00307EC8  4B FF DE AD */	bl SetNumTexGens__3CGXFUc
/* 8030AF6C 00307ECC  48 00 00 0C */	b lbl_8030AF78
lbl_8030AF70:
/* 8030AF70 00307ED0  38 60 00 01 */	li r3, 1
/* 8030AF74 00307ED4  4B FF DE A1 */	bl SetNumTexGens__3CGXFUc
lbl_8030AF78:
/* 8030AF78 00307ED8  38 60 00 00 */	li r3, 0
/* 8030AF7C 00307EDC  38 80 00 00 */	li r4, 0
/* 8030AF80 00307EE0  38 A0 00 00 */	li r5, 0
/* 8030AF84 00307EE4  38 C0 00 04 */	li r6, 4
/* 8030AF88 00307EE8  4B FF D9 C5 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8030AF8C 00307EEC  38 60 00 01 */	li r3, 1
/* 8030AF90 00307EF0  38 80 00 01 */	li r4, 1
/* 8030AF94 00307EF4  38 A0 00 01 */	li r5, 1
/* 8030AF98 00307EF8  38 C0 00 04 */	li r6, 4
/* 8030AF9C 00307EFC  4B FF D9 B1 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
lbl_8030AFA0:
/* 8030AFA0 00307F00  38 60 00 00 */	li r3, 0
/* 8030AFA4 00307F04  4B FF D6 ED */	bl SetNumIndStages__3CGXFUc
/* 8030AFA8 00307F08  38 60 00 00 */	li r3, 0
/* 8030AFAC 00307F0C  38 80 00 01 */	li r4, 1
/* 8030AFB0 00307F10  38 A0 00 04 */	li r5, 4
/* 8030AFB4 00307F14  38 C0 00 3C */	li r6, 0x3c
/* 8030AFB8 00307F18  38 E0 00 00 */	li r7, 0
/* 8030AFBC 00307F1C  39 00 00 7D */	li r8, 0x7d
/* 8030AFC0 00307F20  4B FF D7 0D */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8030AFC4 00307F24  38 60 00 01 */	li r3, 1
/* 8030AFC8 00307F28  38 80 00 01 */	li r4, 1
/* 8030AFCC 00307F2C  38 A0 00 05 */	li r5, 5
/* 8030AFD0 00307F30  38 C0 00 3C */	li r6, 0x3c
/* 8030AFD4 00307F34  38 E0 00 00 */	li r7, 0
/* 8030AFD8 00307F38  39 00 00 7D */	li r8, 0x7d
/* 8030AFDC 00307F3C  4B FF D6 F1 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8030AFE0 00307F40  88 ED A8 16 */	lbz r7, mLightActive__9CGraphics@sda21(r13)
/* 8030AFE4 00307F44  39 20 00 02 */	li r9, 2
/* 8030AFE8 00307F48  28 07 00 00 */	cmplwi r7, 0
/* 8030AFEC 00307F4C  41 82 00 08 */	beq lbl_8030AFF4
/* 8030AFF0 00307F50  39 20 00 01 */	li r9, 1
lbl_8030AFF4:
/* 8030AFF4 00307F54  28 07 00 00 */	cmplwi r7, 0
/* 8030AFF8 00307F58  39 00 00 00 */	li r8, 0
/* 8030AFFC 00307F5C  41 82 00 08 */	beq lbl_8030B004
/* 8030B000 00307F60  39 00 00 02 */	li r8, 2
lbl_8030B004:
/* 8030B004 00307F64  7C 07 00 D0 */	neg r0, r7
/* 8030B008 00307F68  57 E6 FF FE */	rlwinm r6, r31, 0x1f, 0x1f, 0x1f
/* 8030B00C 00307F6C  7C 00 3B 78 */	or r0, r0, r7
/* 8030B010 00307F70  38 60 00 00 */	li r3, 0
/* 8030B014 00307F74  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8030B018 00307F78  38 A0 00 00 */	li r5, 0
/* 8030B01C 00307F7C  4B FF DC B1 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 8030B020 00307F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B024 00307F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030B028 00307F88  7C 08 03 A6 */	mtlr r0
/* 8030B02C 00307F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B030 00307F90  4E 80 00 20 */	blr

.global FlushStream__9CGraphicsFv
FlushStream__9CGraphicsFv:
/* 8030B034 00307F94  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8030B038 00307F98  7C 08 02 A6 */	mflr r0
/* 8030B03C 00307F9C  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B040 00307FA0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8030B044 00307FA4  38 A1 00 38 */	addi r5, r1, 0x38
/* 8030B048 00307FA8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8030B04C 00307FAC  3B E3 61 70 */	addi r31, r3, vtxDescr@l
/* 8030B050 00307FB0  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B054 00307FB4  80 82 C7 B8 */	lwz r4, lbl_805AE4D8@sda21(r2)
/* 8030B058 00307FB8  80 62 C7 BC */	lwz r3, lbl_805AE4DC@sda21(r2)
/* 8030B05C 00307FBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030B060 00307FC0  90 81 00 28 */	stw r4, 0x28(r1)
/* 8030B064 00307FC4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8030B068 00307FC8  90 81 00 30 */	stw r4, 0x30(r1)
/* 8030B06C 00307FCC  90 61 00 34 */	stw r3, 0x34(r1)
/* 8030B070 00307FD0  41 82 00 20 */	beq lbl_8030B090
/* 8030B074 00307FD4  80 62 C7 C0 */	lwz r3, lbl_805AE4E0@sda21(r2)
/* 8030B078 00307FD8  38 A5 00 08 */	addi r5, r5, 8
/* 8030B07C 00307FDC  80 02 C7 C4 */	lwz r0, lbl_805AE4E4@sda21(r2)
/* 8030B080 00307FE0  90 61 00 20 */	stw r3, 0x20(r1)
/* 8030B084 00307FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030B088 00307FE8  90 61 00 38 */	stw r3, 0x38(r1)
/* 8030B08C 00307FEC  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_8030B090:
/* 8030B090 00307FF0  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B094 00307FF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8030B098 00307FF8  41 82 00 20 */	beq lbl_8030B0B8
/* 8030B09C 00307FFC  80 62 C7 C8 */	lwz r3, lbl_805AE4E8@sda21(r2)
/* 8030B0A0 00308000  80 02 C7 CC */	lwz r0, lbl_805AE4EC@sda21(r2)
/* 8030B0A4 00308004  90 65 00 00 */	stw r3, 0(r5)
/* 8030B0A8 00308008  90 05 00 04 */	stw r0, 4(r5)
/* 8030B0AC 0030800C  38 A5 00 08 */	addi r5, r5, 8
/* 8030B0B0 00308010  90 61 00 18 */	stw r3, 0x18(r1)
/* 8030B0B4 00308014  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_8030B0B8:
/* 8030B0B8 00308018  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B0BC 0030801C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8030B0C0 00308020  41 82 00 20 */	beq lbl_8030B0E0
/* 8030B0C4 00308024  80 62 C7 D0 */	lwz r3, lbl_805AE4F0@sda21(r2)
/* 8030B0C8 00308028  80 02 C7 D4 */	lwz r0, lbl_805AE4F4@sda21(r2)
/* 8030B0CC 0030802C  90 65 00 00 */	stw r3, 0(r5)
/* 8030B0D0 00308030  90 05 00 04 */	stw r0, 4(r5)
/* 8030B0D4 00308034  38 A5 00 08 */	addi r5, r5, 8
/* 8030B0D8 00308038  90 61 00 10 */	stw r3, 0x10(r1)
/* 8030B0DC 0030803C  90 01 00 14 */	stw r0, 0x14(r1)
lbl_8030B0E0:
/* 8030B0E0 00308040  80 82 C7 D8 */	lwz r4, lbl_805AE4F8@sda21(r2)
/* 8030B0E4 00308044  38 61 00 30 */	addi r3, r1, 0x30
/* 8030B0E8 00308048  80 02 C7 DC */	lwz r0, lbl_805AE4FC@sda21(r2)
/* 8030B0EC 0030804C  90 85 00 00 */	stw r4, 0(r5)
/* 8030B0F0 00308050  90 81 00 08 */	stw r4, 8(r1)
/* 8030B0F4 00308054  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030B0F8 00308058  90 05 00 04 */	stw r0, 4(r5)
/* 8030B0FC 0030805C  4B FF CD 2D */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 8030B100 00308060  88 7F 00 2E */	lbz r3, 0x2e(r31)
/* 8030B104 00308064  4B FF FD CD */	bl SetTevStates__9CGraphicsFUc
/* 8030B108 00308068  4B FF F3 79 */	bl FullRender__9CGraphicsFv
/* 8030B10C 0030806C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8030B110 00308070  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8030B114 00308074  7C 08 03 A6 */	mtlr r0
/* 8030B118 00308078  38 21 00 90 */	addi r1, r1, 0x90
/* 8030B11C 0030807C  4E 80 00 20 */	blr

.global ResetVertexDataStream__9CGraphicsFb
ResetVertexDataStream__9CGraphicsFb:
/* 8030B120 00308080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B124 00308084  7C 08 02 A6 */	mflr r0
/* 8030B128 00308088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B12C 0030808C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8030B130 00308090  38 60 00 00 */	li r3, 0
/* 8030B134 00308094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030B138 00308098  80 ED A7 C0 */	lwz r7, vtxBuffer__9CGraphics@sda21(r13)
/* 8030B13C 0030809C  80 CD A7 C4 */	lwz r6, nrmBuffer__9CGraphics@sda21(r13)
/* 8030B140 003080A0  80 AD A7 C8 */	lwz r5, txtBuffer0__9CGraphics@sda21(r13)
/* 8030B144 003080A4  80 8D A7 CC */	lwz r4, txtBuffer1__9CGraphics@sda21(r13)
/* 8030B148 003080A8  80 0D A7 D0 */	lwz r0, clrBuffer__9CGraphics@sda21(r13)
/* 8030B14C 003080AC  90 ED A7 E4 */	stw r7, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B150 003080B0  90 CD A7 E8 */	stw r6, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B154 003080B4  90 AD A7 EC */	stw r5, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B158 003080B8  90 8D A7 F0 */	stw r4, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B15C 003080BC  90 0D A7 F4 */	stw r0, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B160 003080C0  90 6D A7 FC */	stw r3, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B164 003080C4  40 82 01 1C */	bne lbl_8030B280
/* 8030B168 003080C8  80 0D 9C 74 */	lwz r0, mCurrentPrimitive__9CGraphics@sda21(r13)
/* 8030B16C 003080CC  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 8030B170 003080D0  41 82 00 08 */	beq lbl_8030B178
/* 8030B174 003080D4  48 00 01 04 */	b lbl_8030B278
lbl_8030B178:
/* 8030B178 003080D8  38 67 00 0C */	addi r3, r7, 0xc
/* 8030B17C 003080DC  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B180 003080E0  90 6D A7 E4 */	stw r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B184 003080E4  38 84 61 70 */	addi r4, r4, vtxDescr@l
/* 8030B188 003080E8  38 A0 00 0C */	li r5, 0xc
/* 8030B18C 003080EC  4B CF 83 05 */	bl memcpy
/* 8030B190 003080F0  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B194 003080F4  80 8D A7 E4 */	lwz r4, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B198 003080F8  3B E3 61 70 */	addi r31, r3, vtxDescr@l
/* 8030B19C 003080FC  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B1A0 00308100  38 64 00 0C */	addi r3, r4, 0xc
/* 8030B1A4 00308104  90 6D A7 E4 */	stw r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B1A8 00308108  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030B1AC 0030810C  41 82 00 28 */	beq lbl_8030B1D4
/* 8030B1B0 00308110  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B1B4 00308114  38 9F 00 0C */	addi r4, r31, 0xc
/* 8030B1B8 00308118  38 A0 00 0C */	li r5, 0xc
/* 8030B1BC 0030811C  38 63 00 0C */	addi r3, r3, 0xc
/* 8030B1C0 00308120  90 6D A7 E8 */	stw r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B1C4 00308124  4B CF 82 CD */	bl memcpy
/* 8030B1C8 00308128  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B1CC 0030812C  38 03 00 0C */	addi r0, r3, 0xc
/* 8030B1D0 00308130  90 0D A7 E8 */	stw r0, mpNrmBuffer__9CGraphics@sda21(r13)
lbl_8030B1D4:
/* 8030B1D4 00308134  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B1D8 00308138  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8030B1DC 0030813C  41 82 00 5C */	beq lbl_8030B238
/* 8030B1E0 00308140  80 CD A7 EC */	lwz r6, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B1E4 00308144  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B1E8 00308148  38 83 61 70 */	addi r4, r3, vtxDescr@l
/* 8030B1EC 0030814C  38 A0 00 08 */	li r5, 8
/* 8030B1F0 00308150  38 66 00 08 */	addi r3, r6, 8
/* 8030B1F4 00308154  90 6D A7 EC */	stw r3, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B1F8 00308158  38 84 00 18 */	addi r4, r4, 0x18
/* 8030B1FC 0030815C  4B CF 82 95 */	bl memcpy
/* 8030B200 00308160  80 AD A7 EC */	lwz r5, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B204 00308164  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B208 00308168  80 CD A7 F0 */	lwz r6, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B20C 0030816C  38 83 61 70 */	addi r4, r3, vtxDescr@l
/* 8030B210 00308170  38 05 00 08 */	addi r0, r5, 8
/* 8030B214 00308174  38 A0 00 08 */	li r5, 8
/* 8030B218 00308178  38 66 00 08 */	addi r3, r6, 8
/* 8030B21C 0030817C  90 0D A7 EC */	stw r0, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B220 00308180  38 84 00 20 */	addi r4, r4, 0x20
/* 8030B224 00308184  90 6D A7 F0 */	stw r3, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B228 00308188  4B CF 82 69 */	bl memcpy
/* 8030B22C 0030818C  80 6D A7 F0 */	lwz r3, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B230 00308190  38 03 00 08 */	addi r0, r3, 8
/* 8030B234 00308194  90 0D A7 F0 */	stw r0, mpTxtBuffer1__9CGraphics@sda21(r13)
lbl_8030B238:
/* 8030B238 00308198  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 8030B23C 0030819C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8030B240 003081A0  41 82 00 2C */	beq lbl_8030B26C
/* 8030B244 003081A4  80 8D A7 F4 */	lwz r4, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B248 003081A8  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B24C 003081AC  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030B250 003081B0  38 84 00 04 */	addi r4, r4, 4
/* 8030B254 003081B4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8030B258 003081B8  90 8D A7 F4 */	stw r4, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B25C 003081BC  90 04 00 00 */	stw r0, 0(r4)
/* 8030B260 003081C0  80 6D A7 F4 */	lwz r3, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B264 003081C4  38 03 00 04 */	addi r0, r3, 4
/* 8030B268 003081C8  90 0D A7 F4 */	stw r0, mpClrBuffer__9CGraphics@sda21(r13)
lbl_8030B26C:
/* 8030B26C 003081CC  80 6D A7 FC */	lwz r3, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B270 003081D0  38 03 00 02 */	addi r0, r3, 2
/* 8030B274 003081D4  90 0D A7 FC */	stw r0, mNumPrimitives__9CGraphics@sda21(r13)
lbl_8030B278:
/* 8030B278 003081D8  38 00 00 01 */	li r0, 1
/* 8030B27C 003081DC  98 0D A7 D4 */	stb r0, mJustReset__9CGraphics@sda21(r13)
lbl_8030B280:
/* 8030B280 003081E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B284 003081E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030B288 003081E8  7C 08 03 A6 */	mtlr r0
/* 8030B28C 003081EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B290 003081F0  4E 80 00 20 */	blr

.global UpdateVertexDataStream__9CGraphicsFv
UpdateVertexDataStream__9CGraphicsFv:
/* 8030B294 003081F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B298 003081F8  7C 08 02 A6 */	mflr r0
/* 8030B29C 003081FC  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B2A0 00308200  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B2A4 00308204  38 A3 61 70 */	addi r5, r3, vtxDescr@l
/* 8030B2A8 00308208  80 8D A7 FC */	lwz r4, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B2AC 0030820C  80 6D A7 E4 */	lwz r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B2B0 00308210  38 04 00 01 */	addi r0, r4, 1
/* 8030B2B4 00308214  C0 05 00 00 */	lfs f0, 0(r5)
/* 8030B2B8 00308218  90 0D A7 FC */	stw r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B2BC 0030821C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8030B2C0 00308220  C0 05 00 04 */	lfs f0, 4(r5)
/* 8030B2C4 00308224  80 6D A7 E4 */	lwz r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B2C8 00308228  D0 03 00 04 */	stfs f0, 4(r3)
/* 8030B2CC 0030822C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8030B2D0 00308230  80 6D A7 E4 */	lwz r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B2D4 00308234  D0 03 00 08 */	stfs f0, 8(r3)
/* 8030B2D8 00308238  88 05 00 2E */	lbz r0, 0x2e(r5)
/* 8030B2DC 0030823C  80 6D A7 E4 */	lwz r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B2E0 00308240  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8030B2E4 00308244  38 63 00 0C */	addi r3, r3, 0xc
/* 8030B2E8 00308248  90 6D A7 E4 */	stw r3, mpVtxBuffer__9CGraphics@sda21(r13)
/* 8030B2EC 0030824C  41 82 00 34 */	beq lbl_8030B320
/* 8030B2F0 00308250  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8030B2F4 00308254  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B2F8 00308258  D0 03 00 00 */	stfs f0, 0(r3)
/* 8030B2FC 0030825C  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8030B300 00308260  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B304 00308264  D0 03 00 04 */	stfs f0, 4(r3)
/* 8030B308 00308268  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 8030B30C 0030826C  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B310 00308270  D0 03 00 08 */	stfs f0, 8(r3)
/* 8030B314 00308274  80 6D A7 E8 */	lwz r3, mpNrmBuffer__9CGraphics@sda21(r13)
/* 8030B318 00308278  38 03 00 0C */	addi r0, r3, 0xc
/* 8030B31C 0030827C  90 0D A7 E8 */	stw r0, mpNrmBuffer__9CGraphics@sda21(r13)
lbl_8030B320:
/* 8030B320 00308280  88 05 00 2E */	lbz r0, 0x2e(r5)
/* 8030B324 00308284  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8030B328 00308288  41 82 00 54 */	beq lbl_8030B37C
/* 8030B32C 0030828C  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B330 00308290  80 6D A7 EC */	lwz r3, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B334 00308294  38 84 61 70 */	addi r4, r4, vtxDescr@l
/* 8030B338 00308298  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8030B33C 0030829C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8030B340 003082A0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8030B344 003082A4  80 6D A7 EC */	lwz r3, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B348 003082A8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8030B34C 003082AC  80 6D A7 EC */	lwz r3, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B350 003082B0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8030B354 003082B4  38 03 00 08 */	addi r0, r3, 8
/* 8030B358 003082B8  80 6D A7 F0 */	lwz r3, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B35C 003082BC  90 0D A7 EC */	stw r0, mpTxtBuffer0__9CGraphics@sda21(r13)
/* 8030B360 003082C0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8030B364 003082C4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8030B368 003082C8  80 6D A7 F0 */	lwz r3, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B36C 003082CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8030B370 003082D0  80 6D A7 F0 */	lwz r3, mpTxtBuffer1__9CGraphics@sda21(r13)
/* 8030B374 003082D4  38 03 00 08 */	addi r0, r3, 8
/* 8030B378 003082D8  90 0D A7 F0 */	stw r0, mpTxtBuffer1__9CGraphics@sda21(r13)
lbl_8030B37C:
/* 8030B37C 003082DC  88 05 00 2E */	lbz r0, 0x2e(r5)
/* 8030B380 003082E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8030B384 003082E4  41 82 00 24 */	beq lbl_8030B3A8
/* 8030B388 003082E8  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B38C 003082EC  80 6D A7 F4 */	lwz r3, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B390 003082F0  38 84 61 70 */	addi r4, r4, vtxDescr@l
/* 8030B394 003082F4  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8030B398 003082F8  90 03 00 00 */	stw r0, 0(r3)
/* 8030B39C 003082FC  80 6D A7 F4 */	lwz r3, mpClrBuffer__9CGraphics@sda21(r13)
/* 8030B3A0 00308300  38 03 00 04 */	addi r0, r3, 4
/* 8030B3A4 00308304  90 0D A7 F4 */	stw r0, mpClrBuffer__9CGraphics@sda21(r13)
lbl_8030B3A8:
/* 8030B3A8 00308308  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B3AC 0030830C  38 60 00 00 */	li r3, 0
/* 8030B3B0 00308310  98 6D A7 D4 */	stb r3, mJustReset__9CGraphics@sda21(r13)
/* 8030B3B4 00308314  2C 00 00 F0 */	cmpwi r0, 0xf0
/* 8030B3B8 00308318  40 82 00 10 */	bne lbl_8030B3C8
/* 8030B3BC 0030831C  4B FF FC 79 */	bl FlushStream__9CGraphicsFv
/* 8030B3C0 00308320  38 60 00 00 */	li r3, 0
/* 8030B3C4 00308324  4B FF FD 5D */	bl ResetVertexDataStream__9CGraphicsFb
lbl_8030B3C8:
/* 8030B3C8 00308328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B3CC 0030832C  7C 08 03 A6 */	mtlr r0
/* 8030B3D0 00308330  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B3D4 00308334  4E 80 00 20 */	blr

.global SetLineWidth__9CGraphicsFf13ERglTexOffset
SetLineWidth__9CGraphicsFf13ERglTexOffset:
/* 8030B3D8 00308338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B3DC 0030833C  7C 08 02 A6 */	mflr r0
/* 8030B3E0 00308340  C0 02 C8 00 */	lfs f0, lbl_805AE520@sda21(r2)
/* 8030B3E4 00308344  7C 64 1B 78 */	mr r4, r3
/* 8030B3E8 00308348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B3EC 0030834C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8030B3F0 00308350  FC 00 00 1E */	fctiwz f0, f0
/* 8030B3F4 00308354  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030B3F8 00308358  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030B3FC 0030835C  4B FF D0 BD */	bl SetLineWidth__3CGXFUc12_GXTexOffset
/* 8030B400 00308360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B404 00308364  7C 08 03 A6 */	mtlr r0
/* 8030B408 00308368  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B40C 0030836C  4E 80 00 20 */	blr

.global StreamEnd__9CGraphicsFv
StreamEnd__9CGraphicsFv:
/* 8030B410 00308370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B414 00308374  7C 08 02 A6 */	mflr r0
/* 8030B418 00308378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B41C 0030837C  80 0D A7 FC */	lwz r0, mNumPrimitives__9CGraphics@sda21(r13)
/* 8030B420 00308380  2C 00 00 00 */	cmpwi r0, 0
/* 8030B424 00308384  41 82 00 08 */	beq lbl_8030B42C
/* 8030B428 00308388  4B FF FC 0D */	bl FlushStream__9CGraphicsFv
lbl_8030B42C:
/* 8030B42C 0030838C  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B430 00308390  38 00 00 00 */	li r0, 0
/* 8030B434 00308394  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030B438 00308398  90 0D A7 C0 */	stw r0, vtxBuffer__9CGraphics@sda21(r13)
/* 8030B43C 0030839C  98 03 00 2E */	stb r0, 0x2e(r3)
/* 8030B440 003083A0  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 8030B444 003083A4  90 0D A7 C4 */	stw r0, nrmBuffer__9CGraphics@sda21(r13)
/* 8030B448 003083A8  90 0D A7 C8 */	stw r0, txtBuffer0__9CGraphics@sda21(r13)
/* 8030B44C 003083AC  90 0D A7 CC */	stw r0, txtBuffer1__9CGraphics@sda21(r13)
/* 8030B450 003083B0  90 0D A7 D0 */	stw r0, clrBuffer__9CGraphics@sda21(r13)
/* 8030B454 003083B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B458 003083B8  7C 08 03 A6 */	mtlr r0
/* 8030B45C 003083BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B460 003083C0  4E 80 00 20 */	blr

.global StreamTexcoord__9CGraphicsFff
StreamTexcoord__9CGraphicsFff:
/* 8030B464 003083C4  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B468 003083C8  88 62 C8 04 */	lbz r3, lbl_805AE524@sda21(r2)
/* 8030B46C 003083CC  38 A4 61 70 */	addi r5, r4, vtxDescr@l
/* 8030B470 003083D0  88 85 00 2E */	lbz r4, 0x2e(r5)
/* 8030B474 003083D4  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 8030B478 003083D8  7C 83 1B 78 */	or r3, r4, r3
/* 8030B47C 003083DC  D0 25 00 18 */	stfs f1, 0x18(r5)
/* 8030B480 003083E0  60 00 00 01 */	ori r0, r0, 1
/* 8030B484 003083E4  D0 45 00 1C */	stfs f2, 0x1c(r5)
/* 8030B488 003083E8  98 65 00 2E */	stb r3, 0x2e(r5)
/* 8030B48C 003083EC  B0 05 00 2C */	sth r0, 0x2c(r5)
/* 8030B490 003083F0  4E 80 00 20 */	blr

.global StreamTexcoord__9CGraphicsFRC9CVector2f
StreamTexcoord__9CGraphicsFRC9CVector2f:
/* 8030B494 003083F4  3C A0 80 5A */	lis r5, vtxDescr@ha
/* 8030B498 003083F8  88 82 C8 04 */	lbz r4, lbl_805AE524@sda21(r2)
/* 8030B49C 003083FC  38 C5 61 70 */	addi r6, r5, vtxDescr@l
/* 8030B4A0 00308400  C0 23 00 00 */	lfs f1, 0(r3)
/* 8030B4A4 00308404  A0 06 00 2C */	lhz r0, 0x2c(r6)
/* 8030B4A8 00308408  C0 03 00 04 */	lfs f0, 4(r3)
/* 8030B4AC 0030840C  88 A6 00 2E */	lbz r5, 0x2e(r6)
/* 8030B4B0 00308410  60 00 00 01 */	ori r0, r0, 1
/* 8030B4B4 00308414  D0 26 00 18 */	stfs f1, 0x18(r6)
/* 8030B4B8 00308418  7C A3 23 78 */	or r3, r5, r4
/* 8030B4BC 0030841C  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 8030B4C0 00308420  98 66 00 2E */	stb r3, 0x2e(r6)
/* 8030B4C4 00308424  B0 06 00 2C */	sth r0, 0x2c(r6)
/* 8030B4C8 00308428  4E 80 00 20 */	blr

.global StreamColor__9CGraphicsFffff
StreamColor__9CGraphicsFffff:
/* 8030B4CC 0030842C  C0 A2 C8 08 */	lfs f5, lbl_805AE528@sda21(r2)
/* 8030B4D0 00308430  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B4D4 00308434  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030B4D8 00308438  38 83 61 70 */	addi r4, r3, vtxDescr@l
/* 8030B4DC 0030843C  EC 05 00 B2 */	fmuls f0, f5, f2
/* 8030B4E0 00308440  88 02 C8 05 */	lbz r0, lbl_805AE525@sda21(r2)
/* 8030B4E4 00308444  EC 25 00 72 */	fmuls f1, f5, f1
/* 8030B4E8 00308448  88 64 00 2E */	lbz r3, 0x2e(r4)
/* 8030B4EC 0030844C  EC 45 00 F2 */	fmuls f2, f5, f3
/* 8030B4F0 00308450  FC 00 00 1E */	fctiwz f0, f0
/* 8030B4F4 00308454  FC 20 08 1E */	fctiwz f1, f1
/* 8030B4F8 00308458  7C 60 03 78 */	or r0, r3, r0
/* 8030B4FC 0030845C  FC 40 10 1E */	fctiwz f2, f2
/* 8030B500 00308460  98 04 00 2E */	stb r0, 0x2e(r4)
/* 8030B504 00308464  EC 65 01 32 */	fmuls f3, f5, f4
/* 8030B508 00308468  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8030B50C 0030846C  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8030B510 00308470  FC 00 18 1E */	fctiwz f0, f3
/* 8030B514 00308474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030B518 00308478  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8030B51C 0030847C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 8030B520 00308480  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8030B524 00308484  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8030B528 00308488  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8030B52C 0030848C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030B530 00308490  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 8030B534 00308494  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030B538 00308498  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 8030B53C 0030849C  90 04 00 28 */	stw r0, 0x28(r4)
/* 8030B540 003084A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8030B544 003084A4  4E 80 00 20 */	blr

.global StreamColor__9CGraphicsFRC6CColor
StreamColor__9CGraphicsFRC6CColor:
/* 8030B548 003084A8  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B54C 003084AC  88 02 C8 05 */	lbz r0, lbl_805AE525@sda21(r2)
/* 8030B550 003084B0  38 84 61 70 */	addi r4, r4, vtxDescr@l
/* 8030B554 003084B4  80 A3 00 00 */	lwz r5, 0(r3)
/* 8030B558 003084B8  88 64 00 2E */	lbz r3, 0x2e(r4)
/* 8030B55C 003084BC  90 A4 00 28 */	stw r5, 0x28(r4)
/* 8030B560 003084C0  7C 60 03 78 */	or r0, r3, r0
/* 8030B564 003084C4  98 04 00 2E */	stb r0, 0x2e(r4)
/* 8030B568 003084C8  4E 80 00 20 */	blr

.global StreamColor__9CGraphicsFUi
StreamColor__9CGraphicsFUi:
/* 8030B56C 003084CC  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B570 003084D0  88 02 C8 05 */	lbz r0, lbl_805AE525@sda21(r2)
/* 8030B574 003084D4  38 A4 61 70 */	addi r5, r4, vtxDescr@l
/* 8030B578 003084D8  88 85 00 2E */	lbz r4, 0x2e(r5)
/* 8030B57C 003084DC  90 65 00 28 */	stw r3, 0x28(r5)
/* 8030B580 003084E0  7C 80 03 78 */	or r0, r4, r0
/* 8030B584 003084E4  98 05 00 2E */	stb r0, 0x2e(r5)
/* 8030B588 003084E8  4E 80 00 20 */	blr

.global StreamNormal__9CGraphicsFPCf
StreamNormal__9CGraphicsFPCf:
/* 8030B58C 003084EC  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B590 003084F0  88 02 C8 0C */	lbz r0, lbl_805AE52C@sda21(r2)
/* 8030B594 003084F4  38 A4 61 70 */	addi r5, r4, vtxDescr@l
/* 8030B598 003084F8  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030B59C 003084FC  88 85 00 2E */	lbz r4, 0x2e(r5)
/* 8030B5A0 00308500  C0 23 00 04 */	lfs f1, 4(r3)
/* 8030B5A4 00308504  C0 03 00 08 */	lfs f0, 8(r3)
/* 8030B5A8 00308508  7C 80 03 78 */	or r0, r4, r0
/* 8030B5AC 0030850C  D0 45 00 0C */	stfs f2, 0xc(r5)
/* 8030B5B0 00308510  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 8030B5B4 00308514  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8030B5B8 00308518  98 05 00 2E */	stb r0, 0x2e(r5)
/* 8030B5BC 0030851C  4E 80 00 20 */	blr

.global StreamVertex__9CGraphicsFRC9CVector3f
StreamVertex__9CGraphicsFRC9CVector3f:
/* 8030B5C0 00308520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B5C4 00308524  7C 08 02 A6 */	mflr r0
/* 8030B5C8 00308528  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B5CC 0030852C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B5D0 00308530  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030B5D4 00308534  C0 23 00 04 */	lfs f1, 4(r3)
/* 8030B5D8 00308538  D4 44 61 70 */	stfsu f2, vtxDescr@l(r4)
/* 8030B5DC 0030853C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8030B5E0 00308540  D0 24 00 04 */	stfs f1, 4(r4)
/* 8030B5E4 00308544  D0 04 00 08 */	stfs f0, 8(r4)
/* 8030B5E8 00308548  4B FF FC AD */	bl UpdateVertexDataStream__9CGraphicsFv
/* 8030B5EC 0030854C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B5F0 00308550  7C 08 03 A6 */	mtlr r0
/* 8030B5F4 00308554  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B5F8 00308558  4E 80 00 20 */	blr

.global StreamVertex__9CGraphicsFPCf
StreamVertex__9CGraphicsFPCf:
/* 8030B5FC 0030855C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B600 00308560  7C 08 02 A6 */	mflr r0
/* 8030B604 00308564  3C 80 80 5A */	lis r4, vtxDescr@ha
/* 8030B608 00308568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B60C 0030856C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030B610 00308570  C0 23 00 04 */	lfs f1, 4(r3)
/* 8030B614 00308574  D4 44 61 70 */	stfsu f2, vtxDescr@l(r4)
/* 8030B618 00308578  C0 03 00 08 */	lfs f0, 8(r3)
/* 8030B61C 0030857C  D0 24 00 04 */	stfs f1, 4(r4)
/* 8030B620 00308580  D0 04 00 08 */	stfs f0, 8(r4)
/* 8030B624 00308584  4B FF FC 71 */	bl UpdateVertexDataStream__9CGraphicsFv
/* 8030B628 00308588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B62C 0030858C  7C 08 03 A6 */	mtlr r0
/* 8030B630 00308590  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B634 00308594  4E 80 00 20 */	blr

.global StreamVertex__9CGraphicsFfff
StreamVertex__9CGraphicsFfff:
/* 8030B638 00308598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B63C 0030859C  7C 08 02 A6 */	mflr r0
/* 8030B640 003085A0  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B644 003085A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B648 003085A8  D4 23 61 70 */	stfsu f1, vtxDescr@l(r3)
/* 8030B64C 003085AC  D0 43 00 04 */	stfs f2, 4(r3)
/* 8030B650 003085B0  D0 63 00 08 */	stfs f3, 8(r3)
/* 8030B654 003085B4  4B FF FC 41 */	bl UpdateVertexDataStream__9CGraphicsFv
/* 8030B658 003085B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B65C 003085BC  7C 08 03 A6 */	mtlr r0
/* 8030B660 003085C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B664 003085C4  4E 80 00 20 */	blr

.global StreamBegin__9CGraphicsF13ERglPrimitive
StreamBegin__9CGraphicsF13ERglPrimitive:
/* 8030B668 003085C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030B66C 003085CC  7C 08 02 A6 */	mflr r0
/* 8030B670 003085D0  3C C0 E0 00 */	lis r6, 0xE0000788@ha
/* 8030B674 003085D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030B678 003085D8  38 A6 07 88 */	addi r5, r6, 0xE0000788@l
/* 8030B67C 003085DC  38 86 0F 10 */	addi r4, r6, 0xf10
/* 8030B680 003085E0  38 06 16 98 */	addi r0, r6, 0x1698
/* 8030B684 003085E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030B688 003085E8  7C 7F 1B 78 */	mr r31, r3
/* 8030B68C 003085EC  38 66 03 C4 */	addi r3, r6, 0x3c4
/* 8030B690 003085F0  90 6D A7 C4 */	stw r3, nrmBuffer__9CGraphics@sda21(r13)
/* 8030B694 003085F4  38 60 00 01 */	li r3, 1
/* 8030B698 003085F8  90 CD A7 C0 */	stw r6, vtxBuffer__9CGraphics@sda21(r13)
/* 8030B69C 003085FC  90 AD A7 C8 */	stw r5, txtBuffer0__9CGraphics@sda21(r13)
/* 8030B6A0 00308600  90 8D A7 CC */	stw r4, txtBuffer1__9CGraphics@sda21(r13)
/* 8030B6A4 00308604  90 0D A7 D0 */	stw r0, clrBuffer__9CGraphics@sda21(r13)
/* 8030B6A8 00308608  4B FF FA 79 */	bl ResetVertexDataStream__9CGraphicsFb
/* 8030B6AC 0030860C  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030B6B0 00308610  38 00 00 02 */	li r0, 2
/* 8030B6B4 00308614  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030B6B8 00308618  93 ED 9C 74 */	stw r31, mCurrentPrimitive__9CGraphics@sda21(r13)
/* 8030B6BC 0030861C  98 03 00 2E */	stb r0, 0x2e(r3)
/* 8030B6C0 00308620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030B6C4 00308624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030B6C8 00308628  7C 08 03 A6 */	mtlr r0
/* 8030B6CC 0030862C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030B6D0 00308630  4E 80 00 20 */	blr

.global DrawPrimitive__9CGraphicsF13ERglPrimitivePCfRC9CVector3fRC6CColori
DrawPrimitive__9CGraphicsF13ERglPrimitivePCfRC9CVector3fRC6CColori:
/* 8030B6D4 00308634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030B6D8 00308638  7C 08 02 A6 */	mflr r0
/* 8030B6DC 0030863C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030B6E0 00308640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030B6E4 00308644  7C BF 2B 78 */	mr r31, r5
/* 8030B6E8 00308648  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8030B6EC 0030864C  7C DE 33 78 */	mr r30, r6
/* 8030B6F0 00308650  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8030B6F4 00308654  7C FD 3B 78 */	mr r29, r7
/* 8030B6F8 00308658  93 81 00 10 */	stw r28, 0x10(r1)
/* 8030B6FC 0030865C  7C 9C 23 78 */	mr r28, r4
/* 8030B700 00308660  4B FF FF 69 */	bl StreamBegin__9CGraphicsF13ERglPrimitive
/* 8030B704 00308664  7F E3 FB 78 */	mr r3, r31
/* 8030B708 00308668  4B FF FE 85 */	bl StreamNormal__9CGraphicsFPCf
/* 8030B70C 0030866C  7F C3 F3 78 */	mr r3, r30
/* 8030B710 00308670  4B FF FE 39 */	bl StreamColor__9CGraphicsFRC6CColor
/* 8030B714 00308674  7F 9F E3 78 */	mr r31, r28
/* 8030B718 00308678  3B C0 00 00 */	li r30, 0
/* 8030B71C 0030867C  48 00 00 14 */	b lbl_8030B730
lbl_8030B720:
/* 8030B720 00308680  7F E3 FB 78 */	mr r3, r31
/* 8030B724 00308684  4B FF FE D9 */	bl StreamVertex__9CGraphicsFPCf
/* 8030B728 00308688  3B FF 00 0C */	addi r31, r31, 0xc
/* 8030B72C 0030868C  3B DE 00 01 */	addi r30, r30, 1
lbl_8030B730:
/* 8030B730 00308690  7C 1E E8 00 */	cmpw r30, r29
/* 8030B734 00308694  41 80 FF EC */	blt lbl_8030B720
/* 8030B738 00308698  4B FF FC D9 */	bl StreamEnd__9CGraphicsFv
/* 8030B73C 0030869C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030B740 003086A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030B744 003086A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8030B748 003086A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8030B74C 003086AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8030B750 003086B0  7C 08 03 A6 */	mtlr r0
/* 8030B754 003086B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8030B758 003086B8  4E 80 00 20 */	blr

.global Render2D__9CGraphicsFRC8CTextureiiiiRC6CColor
Render2D__9CGraphicsFRC8CTextureiiiiRC6CColor:
/* 8030B75C 003086BC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8030B760 003086C0  7C 08 02 A6 */	mflr r0
/* 8030B764 003086C4  90 01 01 24 */	stw r0, 0x124(r1)
/* 8030B768 003086C8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8030B76C 003086CC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 8030B770 003086D0  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8030B774 003086D4  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 8030B778 003086D8  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 8030B77C 003086DC  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 8030B780 003086E0  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 8030B784 003086E4  F3 81 00 E8 */	psq_st f28, 232(r1), 0, qr0
/* 8030B788 003086E8  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 8030B78C 003086EC  3D 20 80 3F */	lis r9, mViewport__9CGraphics@ha
/* 8030B790 003086F0  3D 40 43 30 */	lis r10, 0x4330
/* 8030B794 003086F4  3B E9 D9 10 */	addi r31, r9, mViewport__9CGraphics@l
/* 8030B798 003086F8  7C 7B 1B 78 */	mr r27, r3
/* 8030B79C 003086FC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8030B7A0 00308700  7C 9C 23 78 */	mr r28, r4
/* 8030B7A4 00308704  81 9F 00 08 */	lwz r12, 8(r31)
/* 8030B7A8 00308708  7C BD 2B 78 */	mr r29, r5
/* 8030B7AC 0030870C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8030B7B0 00308710  7D 23 00 D0 */	neg r9, r3
/* 8030B7B4 00308714  7C 60 1A 14 */	add r3, r0, r3
/* 8030B7B8 00308718  7C 8C 00 D0 */	neg r4, r12
/* 8030B7BC 0030871C  55 25 0F FE */	srwi r5, r9, 0x1f
/* 8030B7C0 00308720  55 80 0F FE */	srwi r0, r12, 0x1f
/* 8030B7C4 00308724  7C 6B 0E 70 */	srawi r11, r3, 1
/* 8030B7C8 00308728  54 83 0F FE */	srwi r3, r4, 0x1f
/* 8030B7CC 0030872C  7C A5 4A 14 */	add r5, r5, r9
/* 8030B7D0 00308730  7C 00 62 14 */	add r0, r0, r12
/* 8030B7D4 00308734  7C A5 0E 70 */	srawi r5, r5, 1
/* 8030B7D8 00308738  7C 63 22 14 */	add r3, r3, r4
/* 8030B7DC 0030873C  7C 63 0E 70 */	srawi r3, r3, 1
/* 8030B7E0 00308740  6D 69 80 00 */	xoris r9, r11, 0x8000
/* 8030B7E4 00308744  7C 00 0E 70 */	srawi r0, r0, 1
/* 8030B7E8 00308748  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8030B7EC 0030874C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8030B7F0 00308750  91 21 00 7C */	stw r9, 0x7c(r1)
/* 8030B7F4 00308754  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030B7F8 00308758  C8 82 C7 E8 */	lfd f4, lbl_805AE508@sda21(r2)
/* 8030B7FC 0030875C  91 41 00 78 */	stw r10, 0x78(r1)
/* 8030B800 00308760  7C D9 33 78 */	mr r25, r6
/* 8030B804 00308764  C0 A2 C8 14 */	lfs f5, lbl_805AE534@sda21(r2)
/* 8030B808 00308768  7C FA 3B 78 */	mr r26, r7
/* 8030B80C 0030876C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8030B810 00308770  7D 1E 43 78 */	mr r30, r8
/* 8030B814 00308774  90 A1 00 84 */	stw r5, 0x84(r1)
/* 8030B818 00308778  38 61 00 38 */	addi r3, r1, 0x38
/* 8030B81C 0030877C  EC 20 20 28 */	fsubs f1, f0, f4
/* 8030B820 00308780  C0 C2 C8 18 */	lfs f6, lbl_805AE538@sda21(r2)
/* 8030B824 00308784  91 41 00 80 */	stw r10, 0x80(r1)
/* 8030B828 00308788  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8030B82C 0030878C  90 81 00 8C */	stw r4, 0x8c(r1)
/* 8030B830 00308790  EC 40 20 28 */	fsubs f2, f0, f4
/* 8030B834 00308794  91 41 00 88 */	stw r10, 0x88(r1)
/* 8030B838 00308798  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8030B83C 0030879C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8030B840 003087A0  EC 60 20 28 */	fsubs f3, f0, f4
/* 8030B844 003087A4  91 41 00 90 */	stw r10, 0x90(r1)
/* 8030B848 003087A8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8030B84C 003087AC  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030B850 003087B0  48 07 1D 69 */	bl C_MTXOrtho
/* 8030B854 003087B4  38 61 00 38 */	addi r3, r1, 0x38
/* 8030B858 003087B8  38 80 00 01 */	li r4, 1
/* 8030B85C 003087BC  48 07 09 E9 */	bl GXSetProjection
/* 8030B860 003087C0  83 DE 00 00 */	lwz r30, 0(r30)
/* 8030B864 003087C4  38 61 00 08 */	addi r3, r1, 8
/* 8030B868 003087C8  48 07 17 D9 */	bl PSMTXIdentity
/* 8030B86C 003087CC  38 61 00 08 */	addi r3, r1, 8
/* 8030B870 003087D0  38 80 00 00 */	li r4, 0
/* 8030B874 003087D4  48 07 0B 45 */	bl GXLoadPosMtxImm
/* 8030B878 003087D8  80 BF 00 08 */	lwz r5, 8(r31)
/* 8030B87C 003087DC  3C E0 43 30 */	lis r7, 0x4330
/* 8030B880 003087E0  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8030B884 003087E4  6F 24 80 00 */	xoris r4, r25, 0x8000
/* 8030B888 003087E8  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8030B88C 003087EC  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 8030B890 003087F0  7C 63 2A 14 */	add r3, r3, r5
/* 8030B894 003087F4  54 C5 0F FE */	srwi r5, r6, 0x1f
/* 8030B898 003087F8  7C 68 0E 70 */	srawi r8, r3, 1
/* 8030B89C 003087FC  90 E1 00 A0 */	stw r7, 0xa0(r1)
/* 8030B8A0 00308800  7C A5 32 14 */	add r5, r5, r6
/* 8030B8A4 00308804  3C 60 80 3D */	lis r3, lbl_803D73C8@ha
/* 8030B8A8 00308808  7C A5 0E 70 */	srawi r5, r5, 1
/* 8030B8AC 0030880C  7C C8 E0 50 */	subf r6, r8, r28
/* 8030B8B0 00308810  7C A5 E8 50 */	subf r5, r5, r29
/* 8030B8B4 00308814  90 E1 00 98 */	stw r7, 0x98(r1)
/* 8030B8B8 00308818  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8030B8BC 0030881C  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8030B8C0 00308820  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8030B8C4 00308824  38 63 73 C8 */	addi r3, r3, lbl_803D73C8@l
/* 8030B8C8 00308828  C8 42 C7 E8 */	lfd f2, lbl_805AE508@sda21(r2)
/* 8030B8CC 0030882C  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 8030B8D0 00308830  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8030B8D4 00308834  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8030B8D8 00308838  90 81 00 AC */	stw r4, 0xac(r1)
/* 8030B8DC 0030883C  EF 80 10 28 */	fsubs f28, f0, f2
/* 8030B8E0 00308840  EF A1 10 28 */	fsubs f29, f1, f2
/* 8030B8E4 00308844  90 E1 00 A8 */	stw r7, 0xa8(r1)
/* 8030B8E8 00308848  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8030B8EC 0030884C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8030B8F0 00308850  EC 20 10 28 */	fsubs f1, f0, f2
/* 8030B8F4 00308854  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 8030B8F8 00308858  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8030B8FC 0030885C  EF FD 08 2A */	fadds f31, f29, f1
/* 8030B900 00308860  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030B904 00308864  EF DC 00 2A */	fadds f30, f28, f0
/* 8030B908 00308868  4B FF C5 21 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 8030B90C 0030886C  38 60 00 06 */	li r3, 6
/* 8030B910 00308870  4B FF F5 C1 */	bl SetTevStates__9CGraphicsFUc
/* 8030B914 00308874  88 0D A8 16 */	lbz r0, mLightActive__9CGraphics@sda21(r13)
/* 8030B918 00308878  28 00 00 00 */	cmplwi r0, 0
/* 8030B91C 0030887C  98 0D A8 17 */	stb r0, mLightsWereOn__9CGraphics@sda21(r13)
/* 8030B920 00308880  41 82 00 08 */	beq lbl_8030B928
/* 8030B924 00308884  48 00 10 59 */	bl DisableAllLights__9CGraphicsFv
lbl_8030B928:
/* 8030B928 00308888  83 8D A7 D8 */	lwz r28, mCullMode__9CGraphics@sda21(r13)
/* 8030B92C 0030888C  38 60 00 00 */	li r3, 0
/* 8030B930 00308890  48 00 01 41 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 8030B934 00308894  7F 63 DB 78 */	mr r3, r27
/* 8030B938 00308898  38 80 00 00 */	li r4, 0
/* 8030B93C 0030889C  38 A0 00 01 */	li r5, 1
/* 8030B940 003088A0  48 00 3D FD */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 8030B944 003088A4  38 60 00 98 */	li r3, 0x98
/* 8030B948 003088A8  38 80 00 00 */	li r4, 0
/* 8030B94C 003088AC  38 A0 00 04 */	li r5, 4
/* 8030B950 003088B0  4B FF CC 35 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 8030B954 003088B4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8030B958 003088B8  C0 22 C8 10 */	lfs f1, lbl_805AE530@sda21(r2)
/* 8030B95C 003088BC  D3 A3 80 00 */	stfs f29, 0xCC008000@l(r3)
/* 8030B960 003088C0  C0 02 C7 F0 */	lfs f0, lbl_805AE510@sda21(r2)
/* 8030B964 003088C4  D3 83 80 00 */	stfs f28, 0xCC008000@l(r3)
/* 8030B968 003088C8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B96C 003088CC  93 C3 80 00 */	stw r30, 0xCC008000@l(r3)
/* 8030B970 003088D0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030B974 003088D4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030B978 003088D8  D3 E3 80 00 */	stfs f31, 0xCC008000@l(r3)
/* 8030B97C 003088DC  D3 83 80 00 */	stfs f28, 0xCC008000@l(r3)
/* 8030B980 003088E0  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B984 003088E4  93 C3 80 00 */	stw r30, 0xCC008000@l(r3)
/* 8030B988 003088E8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B98C 003088EC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030B990 003088F0  D3 A3 80 00 */	stfs f29, 0xCC008000@l(r3)
/* 8030B994 003088F4  D3 C3 80 00 */	stfs f30, 0xCC008000@l(r3)
/* 8030B998 003088F8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B99C 003088FC  93 C3 80 00 */	stw r30, 0xCC008000@l(r3)
/* 8030B9A0 00308900  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 8030B9A4 00308904  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B9A8 00308908  D3 E3 80 00 */	stfs f31, 0xCC008000@l(r3)
/* 8030B9AC 0030890C  D3 C3 80 00 */	stfs f30, 0xCC008000@l(r3)
/* 8030B9B0 00308910  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B9B4 00308914  93 C3 80 00 */	stw r30, 0xCC008000@l(r3)
/* 8030B9B8 00308918  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B9BC 0030891C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 8030B9C0 00308920  4B FF CB C1 */	bl End__3CGXFv
/* 8030B9C4 00308924  88 6D A8 17 */	lbz r3, mLightsWereOn__9CGraphics@sda21(r13)
/* 8030B9C8 00308928  28 03 00 00 */	cmplwi r3, 0
/* 8030B9CC 0030892C  41 82 00 08 */	beq lbl_8030B9D4
/* 8030B9D0 00308930  48 00 0F 01 */	bl SetLightState__9CGraphicsFUc
lbl_8030B9D4:
/* 8030B9D4 00308934  4B FF E4 95 */	bl FlushProjection__9CGraphicsFv
/* 8030B9D8 00308938  38 00 00 00 */	li r0, 0
/* 8030B9DC 0030893C  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030B9E0 00308940  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030B9E4 00308944  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030B9E8 00308948  48 00 0B F9 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 8030B9EC 0030894C  7F 83 E3 78 */	mr r3, r28
/* 8030B9F0 00308950  48 00 00 81 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 8030B9F4 00308954  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 8030B9F8 00308958  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8030B9FC 0030895C  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 8030BA00 00308960  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8030BA04 00308964  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 8030BA08 00308968  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 8030BA0C 0030896C  E3 81 00 E8 */	psq_l f28, 232(r1), 0, qr0
/* 8030BA10 00308970  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 8030BA14 00308974  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 8030BA18 00308978  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8030BA1C 0030897C  7C 08 03 A6 */	mtlr r0
/* 8030BA20 00308980  38 21 01 20 */	addi r1, r1, 0x120
/* 8030BA24 00308984  4E 80 00 20 */	blr

.global SetAlphaCompare__9CGraphicsF13ERglAlphaFuncUc11ERglAlphaOp13ERglAlphaFuncUc
SetAlphaCompare__9CGraphicsF13ERglAlphaFuncUc11ERglAlphaOp13ERglAlphaFuncUc:
/* 8030BA28 00308988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BA2C 0030898C  7C 08 02 A6 */	mflr r0
/* 8030BA30 00308990  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8030BA34 00308994  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 8030BA38 00308998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BA3C 0030899C  4B FF CD D9 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 8030BA40 003089A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BA44 003089A4  7C 08 03 A6 */	mtlr r0
/* 8030BA48 003089A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BA4C 003089AC  4E 80 00 20 */	blr

.global SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp:
/* 8030BA50 003089B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BA54 003089B4  7C 08 02 A6 */	mflr r0
/* 8030BA58 003089B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BA5C 003089BC  4B FF CE 75 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 8030BA60 003089C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BA64 003089C4  7C 08 03 A6 */	mtlr r0
/* 8030BA68 003089C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BA6C 003089CC  4E 80 00 20 */	blr

.global SetCullMode__9CGraphicsF12ERglCullMode
SetCullMode__9CGraphicsF12ERglCullMode:
/* 8030BA70 003089D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BA74 003089D4  7C 08 02 A6 */	mflr r0
/* 8030BA78 003089D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BA7C 003089DC  90 6D A7 D8 */	stw r3, mCullMode__9CGraphics@sda21(r13)
/* 8030BA80 003089E0  48 06 D0 D9 */	bl GXSetCullMode
/* 8030BA84 003089E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BA88 003089E8  7C 08 03 A6 */	mtlr r0
/* 8030BA8C 003089EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BA90 003089F0  4E 80 00 20 */	blr

.global SetDepthWriteMode__9CGraphicsFb8ERglEnumb
SetDepthWriteMode__9CGraphicsFb8ERglEnumb:
/* 8030BA94 003089F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BA98 003089F8  7C 08 02 A6 */	mflr r0
/* 8030BA9C 003089FC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8030BAA0 00308A00  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8030BAA4 00308A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BAA8 00308A08  90 8D 9C 70 */	stw r4, mDepthFunc__9CGraphics@sda21(r13)
/* 8030BAAC 00308A0C  4B FF CD D1 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 8030BAB0 00308A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BAB4 00308A14  7C 08 03 A6 */	mtlr r0
/* 8030BAB8 00308A18  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BABC 00308A1C  4E 80 00 20 */	blr

.global EndScene__9CGraphicsFv
EndScene__9CGraphicsFv:
/* 8030BAC0 00308A20  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8030BAC4 00308A24  7C 08 02 A6 */	mflr r0
/* 8030BAC8 00308A28  38 60 00 01 */	li r3, 1
/* 8030BACC 00308A2C  38 80 00 03 */	li r4, 3
/* 8030BAD0 00308A30  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8030BAD4 00308A34  38 A0 00 01 */	li r5, 1
/* 8030BAD8 00308A38  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8030BADC 00308A3C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8030BAE0 00308A40  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8030BAE4 00308A44  4B FF CD 99 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 8030BAE8 00308A48  3B AD A8 0C */	addi r29, r13, mNumBreakpointsWaiting__9CGraphics@sda21
/* 8030BAEC 00308A4C  48 00 00 08 */	b lbl_8030BAF4
lbl_8030BAF0:
/* 8030BAF0 00308A50  48 07 90 2D */	bl OSYieldThread
lbl_8030BAF4:
/* 8030BAF4 00308A54  80 1D 00 00 */	lwz r0, 0(r29)
/* 8030BAF8 00308A58  2C 00 00 00 */	cmpwi r0, 0
/* 8030BAFC 00308A5C  41 81 FF F4 */	bgt lbl_8030BAF0
/* 8030BB00 00308A60  80 AD A8 0C */	lwz r5, mNumBreakpointsWaiting__9CGraphics@sda21(r13)
/* 8030BB04 00308A64  3B CD A8 20 */	addi r30, r13, mpCurrenFrameBuf__9CGraphics@sda21
/* 8030BB08 00308A68  38 6D 9C 88 */	addi r3, r13, mBrightnessMin__9CGraphics@sda21
/* 8030BB0C 00308A6C  38 8D 9C 84 */	addi r4, r13, mBrightness__9CGraphics@sda21
/* 8030BB10 00308A70  38 05 00 01 */	addi r0, r5, 1
/* 8030BB14 00308A74  38 AD 9C 8C */	addi r5, r13, mBrightnessMax__9CGraphics@sda21
/* 8030BB18 00308A78  90 0D A8 0C */	stw r0, mNumBreakpointsWaiting__9CGraphics@sda21(r13)
/* 8030BB1C 00308A7C  4B D0 07 99 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8030BB20 00308A80  88 0D 9C 82 */	lbz r0, mUseVideoFilter__9CGraphics@sda21(r13)
/* 8030BB24 00308A84  39 02 C7 B0 */	addi r8, r2, lbl_805AE4D0@sda21
/* 8030BB28 00308A88  C0 43 00 00 */	lfs f2, 0(r3)
/* 8030BB2C 00308A8C  28 00 00 00 */	cmplwi r0, 0
/* 8030BB30 00308A90  41 82 00 10 */	beq lbl_8030BB40
/* 8030BB34 00308A94  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030BB38 00308A98  38 63 65 00 */	addi r3, r3, mRenderModeObj__9CGraphics@l
/* 8030BB3C 00308A9C  39 03 00 32 */	addi r8, r3, 0x32
lbl_8030BB40:
/* 8030BB40 00308AA0  88 08 00 00 */	lbz r0, 0(r8)
/* 8030BB44 00308AA4  3C E0 43 30 */	lis r7, 0x4330
/* 8030BB48 00308AA8  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030BB4C 00308AAC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8030BB50 00308AB0  3B A3 65 00 */	addi r29, r3, mRenderModeObj__9CGraphics@l
/* 8030BB54 00308AB4  C8 22 C7 F8 */	lfd f1, lbl_805AE518@sda21(r2)
/* 8030BB58 00308AB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8030BB5C 00308ABC  3B FD 00 1A */	addi r31, r29, 0x1a
/* 8030BB60 00308AC0  88 7D 00 19 */	lbz r3, 0x19(r29)
/* 8030BB64 00308AC4  7F E4 FB 78 */	mr r4, r31
/* 8030BB68 00308AC8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8030BB6C 00308ACC  38 C1 00 10 */	addi r6, r1, 0x10
/* 8030BB70 00308AD0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8030BB74 00308AD4  38 A0 00 01 */	li r5, 1
/* 8030BB78 00308AD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BB7C 00308ADC  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8030BB80 00308AE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BB84 00308AE4  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8030BB88 00308AE8  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8030BB8C 00308AEC  FC 00 00 1E */	fctiwz f0, f0
/* 8030BB90 00308AF0  90 E1 00 68 */	stw r7, 0x68(r1)
/* 8030BB94 00308AF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8030BB98 00308AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030BB9C 00308AFC  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8030BBA0 00308B00  98 01 00 10 */	stb r0, 0x10(r1)
/* 8030BBA4 00308B04  88 08 00 01 */	lbz r0, 1(r8)
/* 8030BBA8 00308B08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8030BBAC 00308B0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8030BBB0 00308B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BBB4 00308B14  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BBB8 00308B18  FC 00 00 1E */	fctiwz f0, f0
/* 8030BBBC 00308B1C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8030BBC0 00308B20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030BBC4 00308B24  98 01 00 11 */	stb r0, 0x11(r1)
/* 8030BBC8 00308B28  88 08 00 02 */	lbz r0, 2(r8)
/* 8030BBCC 00308B2C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8030BBD0 00308B30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8030BBD4 00308B34  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BBD8 00308B38  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BBDC 00308B3C  FC 00 00 1E */	fctiwz f0, f0
/* 8030BBE0 00308B40  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8030BBE4 00308B44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030BBE8 00308B48  98 01 00 12 */	stb r0, 0x12(r1)
/* 8030BBEC 00308B4C  88 08 00 03 */	lbz r0, 3(r8)
/* 8030BBF0 00308B50  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8030BBF4 00308B54  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8030BBF8 00308B58  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BBFC 00308B5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BC00 00308B60  FC 00 00 1E */	fctiwz f0, f0
/* 8030BC04 00308B64  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8030BC08 00308B68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8030BC0C 00308B6C  98 01 00 13 */	stb r0, 0x13(r1)
/* 8030BC10 00308B70  88 08 00 04 */	lbz r0, 4(r8)
/* 8030BC14 00308B74  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8030BC18 00308B78  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8030BC1C 00308B7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BC20 00308B80  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BC24 00308B84  FC 00 00 1E */	fctiwz f0, f0
/* 8030BC28 00308B88  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8030BC2C 00308B8C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8030BC30 00308B90  98 01 00 14 */	stb r0, 0x14(r1)
/* 8030BC34 00308B94  88 08 00 05 */	lbz r0, 5(r8)
/* 8030BC38 00308B98  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8030BC3C 00308B9C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8030BC40 00308BA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BC44 00308BA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BC48 00308BA8  FC 00 00 1E */	fctiwz f0, f0
/* 8030BC4C 00308BAC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8030BC50 00308BB0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8030BC54 00308BB4  98 01 00 15 */	stb r0, 0x15(r1)
/* 8030BC58 00308BB8  88 08 00 06 */	lbz r0, 6(r8)
/* 8030BC5C 00308BBC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8030BC60 00308BC0  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8030BC64 00308BC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8030BC68 00308BC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030BC6C 00308BCC  FC 00 00 1E */	fctiwz f0, f0
/* 8030BC70 00308BD0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8030BC74 00308BD4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8030BC78 00308BD8  98 01 00 16 */	stb r0, 0x16(r1)
/* 8030BC7C 00308BDC  48 06 D5 19 */	bl GXSetCopyFilter
/* 8030BC80 00308BE0  88 8D 9C 6C */	lbz r4, mIsBeginSceneClearFb__9CGraphics@sda21(r13)
/* 8030BC84 00308BE4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8030BC88 00308BE8  7C 04 00 D0 */	neg r0, r4
/* 8030BC8C 00308BEC  7C 00 23 78 */	or r0, r0, r4
/* 8030BC90 00308BF0  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8030BC94 00308BF4  48 06 D7 45 */	bl GXCopyDisp
/* 8030BC98 00308BF8  88 CD 9C 82 */	lbz r6, mUseVideoFilter__9CGraphics@sda21(r13)
/* 8030BC9C 00308BFC  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030BCA0 00308C00  38 A3 65 00 */	addi r5, r3, mRenderModeObj__9CGraphics@l
/* 8030BCA4 00308C04  88 7D 00 19 */	lbz r3, 0x19(r29)
/* 8030BCA8 00308C08  7C 06 00 D0 */	neg r0, r6
/* 8030BCAC 00308C0C  7F E4 FB 78 */	mr r4, r31
/* 8030BCB0 00308C10  7C 00 33 78 */	or r0, r0, r6
/* 8030BCB4 00308C14  38 C5 00 32 */	addi r6, r5, 0x32
/* 8030BCB8 00308C18  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8030BCBC 00308C1C  48 06 D4 D9 */	bl GXSetCopyFilter
/* 8030BCC0 00308C20  3C 60 80 31 */	lis r3, SwapBuffers__9CGraphicsFv@ha
/* 8030BCC4 00308C24  38 63 BE 7C */	addi r3, r3, SwapBuffers__9CGraphicsFv@l
/* 8030BCC8 00308C28  48 06 AA F1 */	bl GXSetBreakPtCallback
/* 8030BCCC 00308C2C  3C 60 80 31 */	lis r3, VideoPreCallback__9CGraphicsFUl@ha
/* 8030BCD0 00308C30  38 63 BE 00 */	addi r3, r3, VideoPreCallback__9CGraphicsFUl@l
/* 8030BCD4 00308C34  48 07 BB E1 */	bl VISetPreRetraceCallback
/* 8030BCD8 00308C38  3C 60 80 31 */	lis r3, VideoPostCallback__9CGraphicsFUl@ha
/* 8030BCDC 00308C3C  38 63 BD 34 */	addi r3, r3, VideoPostCallback__9CGraphicsFUl@l
/* 8030BCE0 00308C40  48 07 BC 19 */	bl VISetPostRetraceCallback
/* 8030BCE4 00308C44  48 06 C6 2D */	bl GXFlush
/* 8030BCE8 00308C48  48 06 AE 45 */	bl GXGetGPFifo
/* 8030BCEC 00308C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 8030BCF0 00308C50  38 A1 00 08 */	addi r5, r1, 8
/* 8030BCF4 00308C54  48 06 AA 2D */	bl GXGetFifoPtrs
/* 8030BCF8 00308C58  80 61 00 08 */	lwz r3, 8(r1)
/* 8030BCFC 00308C5C  48 06 AB 01 */	bl GXEnableBreakPt
/* 8030BD00 00308C60  80 6D A8 00 */	lwz r3, mFrameCounter__9CGraphics@sda21(r13)
/* 8030BD04 00308C64  88 8D A8 15 */	lbz r4, mInterruptLastFrameUsedAbove__9CGraphics@sda21(r13)
/* 8030BD08 00308C68  38 03 00 01 */	addi r0, r3, 1
/* 8030BD0C 00308C6C  98 8D A8 14 */	stb r4, mLastFrameUsedAbove__9CGraphics@sda21(r13)
/* 8030BD10 00308C70  90 0D A8 00 */	stw r0, mFrameCounter__9CGraphics@sda21(r13)
/* 8030BD14 00308C74  48 06 0E 7D */	bl sub_8036cb90__19CFrameDelayedKillerFv
/* 8030BD18 00308C78  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8030BD1C 00308C7C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8030BD20 00308C80  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8030BD24 00308C84  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8030BD28 00308C88  7C 08 03 A6 */	mtlr r0
/* 8030BD2C 00308C8C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8030BD30 00308C90  4E 80 00 20 */	blr

.global VideoPostCallback__9CGraphicsFUl
VideoPostCallback__9CGraphicsFUl:
/* 8030BD34 00308C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BD38 00308C98  7C 08 02 A6 */	mflr r0
/* 8030BD3C 00308C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BD40 00308CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030BD44 00308CA4  80 6D A8 0C */	lwz r3, mNumBreakpointsWaiting__9CGraphics@sda21(r13)
/* 8030BD48 00308CA8  2C 03 00 00 */	cmpwi r3, 0
/* 8030BD4C 00308CAC  41 82 00 A0 */	beq lbl_8030BDEC
/* 8030BD50 00308CB0  80 0D A8 10 */	lwz r0, mFlippingState__9CGraphics@sda21(r13)
/* 8030BD54 00308CB4  2C 00 00 02 */	cmpwi r0, 2
/* 8030BD58 00308CB8  40 82 00 94 */	bne lbl_8030BDEC
/* 8030BD5C 00308CBC  38 63 FF FF */	addi r3, r3, -1
/* 8030BD60 00308CC0  38 00 00 00 */	li r0, 0
/* 8030BD64 00308CC4  90 6D A8 0C */	stw r3, mNumBreakpointsWaiting__9CGraphics@sda21(r13)
/* 8030BD68 00308CC8  3B ED A7 B0 */	addi r31, r13, sFPSTimer@sda21
/* 8030BD6C 00308CCC  90 0D A8 10 */	stw r0, mFlippingState__9CGraphics@sda21(r13)
/* 8030BD70 00308CD0  48 07 96 39 */	bl OSGetTime
/* 8030BD74 00308CD4  80 0D A7 B4 */	lwz r0, sFPSTimer+4@sda21(r13)
/* 8030BD78 00308CD8  C0 0D A8 04 */	lfs f0, mFramesPerSecond__9CGraphics@sda21(r13)
/* 8030BD7C 00308CDC  7C 80 20 10 */	subfc r4, r0, r4
/* 8030BD80 00308CE0  80 0D A7 B0 */	lwz r0, sFPSTimer@sda21(r13)
/* 8030BD84 00308CE4  D0 0D A8 08 */	stfs f0, mLastFramesPerSecond__9CGraphics@sda21(r13)
/* 8030BD88 00308CE8  7C 60 19 10 */	subfe r3, r0, r3
/* 8030BD8C 00308CEC  48 07 E1 D9 */	bl __cvt_sll_flt
/* 8030BD90 00308CF0  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 8030BD94 00308CF4  C0 02 C8 10 */	lfs f0, lbl_805AE530@sda21(r2)
/* 8030BD98 00308CF8  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 8030BD9C 00308CFC  38 80 00 00 */	li r4, 0
/* 8030BDA0 00308D00  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 8030BDA4 00308D04  80 03 00 00 */	lwz r0, 0(r3)
/* 8030BDA8 00308D08  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8030BDAC 00308D0C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8030BDB0 00308D10  7C 00 22 78 */	xor r0, r0, r4
/* 8030BDB4 00308D14  7C A4 22 78 */	xor r4, r5, r4
/* 8030BDB8 00308D18  EC 00 08 24 */	fdivs f0, f0, f1
/* 8030BDBC 00308D1C  7C 80 03 79 */	or. r0, r4, r0
/* 8030BDC0 00308D20  D0 0D A8 04 */	stfs f0, mFramesPerSecond__9CGraphics@sda21(r13)
/* 8030BDC4 00308D24  40 82 00 08 */	bne lbl_8030BDCC
/* 8030BDC8 00308D28  4B FC A9 55 */	bl Initialize__Q210CStopwatch7CSWDataFv
lbl_8030BDCC:
/* 8030BDCC 00308D2C  48 07 95 DD */	bl OSGetTime
/* 8030BDD0 00308D30  90 9F 00 04 */	stw r4, 4(r31)
/* 8030BDD4 00308D34  90 7F 00 00 */	stw r3, 0(r31)
/* 8030BDD8 00308D38  48 07 D5 C1 */	bl VIGetNextField
/* 8030BDDC 00308D3C  20 03 00 01 */	subfic r0, r3, 1
/* 8030BDE0 00308D40  7C 00 00 34 */	cntlzw r0, r0
/* 8030BDE4 00308D44  54 00 D9 7E */	srwi r0, r0, 5
/* 8030BDE8 00308D48  98 0D A8 15 */	stb r0, mInterruptLastFrameUsedAbove__9CGraphics@sda21(r13)
lbl_8030BDEC:
/* 8030BDEC 00308D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BDF0 00308D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030BDF4 00308D54  7C 08 03 A6 */	mtlr r0
/* 8030BDF8 00308D58  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BDFC 00308D5C  4E 80 00 20 */	blr

.global VideoPreCallback__9CGraphicsFUl
VideoPreCallback__9CGraphicsFUl:
/* 8030BE00 00308D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BE04 00308D64  7C 08 02 A6 */	mflr r0
/* 8030BE08 00308D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BE0C 00308D6C  80 0D A8 0C */	lwz r0, mNumBreakpointsWaiting__9CGraphics@sda21(r13)
/* 8030BE10 00308D70  2C 00 00 00 */	cmpwi r0, 0
/* 8030BE14 00308D74  41 82 00 58 */	beq lbl_8030BE6C
/* 8030BE18 00308D78  80 0D A8 10 */	lwz r0, mFlippingState__9CGraphics@sda21(r13)
/* 8030BE1C 00308D7C  2C 00 00 01 */	cmpwi r0, 1
/* 8030BE20 00308D80  40 82 00 4C */	bne lbl_8030BE6C
/* 8030BE24 00308D84  88 0D 9C 81 */	lbz r0, mFirstFrame__9CGraphics@sda21(r13)
/* 8030BE28 00308D88  28 00 00 00 */	cmplwi r0, 0
/* 8030BE2C 00308D8C  41 82 00 14 */	beq lbl_8030BE40
/* 8030BE30 00308D90  38 60 00 00 */	li r3, 0
/* 8030BE34 00308D94  48 07 D4 79 */	bl VISetBlack
/* 8030BE38 00308D98  38 00 00 00 */	li r0, 0
/* 8030BE3C 00308D9C  98 0D 9C 81 */	stb r0, mFirstFrame__9CGraphics@sda21(r13)
lbl_8030BE40:
/* 8030BE40 00308DA0  80 6D A8 20 */	lwz r3, mpCurrenFrameBuf__9CGraphics@sda21(r13)
/* 8030BE44 00308DA4  48 07 D3 FD */	bl VISetNextFrameBuffer
/* 8030BE48 00308DA8  48 07 D2 C9 */	bl VIFlush
/* 8030BE4C 00308DAC  80 0D A8 20 */	lwz r0, mpCurrenFrameBuf__9CGraphics@sda21(r13)
/* 8030BE50 00308DB0  80 6D A8 18 */	lwz r3, mpFrameBuf1__9CGraphics@sda21(r13)
/* 8030BE54 00308DB4  7C 00 18 40 */	cmplw r0, r3
/* 8030BE58 00308DB8  40 82 00 08 */	bne lbl_8030BE60
/* 8030BE5C 00308DBC  80 6D A8 1C */	lwz r3, mpFrameBuf2__9CGraphics@sda21(r13)
lbl_8030BE60:
/* 8030BE60 00308DC0  38 00 00 02 */	li r0, 2
/* 8030BE64 00308DC4  90 6D A8 20 */	stw r3, mpCurrenFrameBuf__9CGraphics@sda21(r13)
/* 8030BE68 00308DC8  90 0D A8 10 */	stw r0, mFlippingState__9CGraphics@sda21(r13)
lbl_8030BE6C:
/* 8030BE6C 00308DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BE70 00308DD0  7C 08 03 A6 */	mtlr r0
/* 8030BE74 00308DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BE78 00308DD8  4E 80 00 20 */	blr

.global SwapBuffers__9CGraphicsFv
SwapBuffers__9CGraphicsFv:
/* 8030BE7C 00308DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BE80 00308DE0  7C 08 02 A6 */	mflr r0
/* 8030BE84 00308DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BE88 00308DE8  48 06 AA 05 */	bl GXDisableBreakPt
/* 8030BE8C 00308DEC  38 00 00 01 */	li r0, 1
/* 8030BE90 00308DF0  90 0D A8 10 */	stw r0, mFlippingState__9CGraphics@sda21(r13)
/* 8030BE94 00308DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BE98 00308DF8  7C 08 03 A6 */	mtlr r0
/* 8030BE9C 00308DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BEA0 00308E00  4E 80 00 20 */	blr

.global BeginScene__9CGraphicsFv
BeginScene__9CGraphicsFv:
/* 8030BEA4 00308E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BEA8 00308E08  7C 08 02 A6 */	mflr r0
/* 8030BEAC 00308E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BEB0 00308E10  48 00 00 15 */	bl ClearBackAndDepthBuffers__9CGraphicsFv
/* 8030BEB4 00308E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BEB8 00308E18  7C 08 03 A6 */	mtlr r0
/* 8030BEBC 00308E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BEC0 00308E20  4E 80 00 20 */	blr

.global ClearBackAndDepthBuffers__9CGraphicsFv
ClearBackAndDepthBuffers__9CGraphicsFv:
/* 8030BEC4 00308E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030BEC8 00308E28  7C 08 02 A6 */	mflr r0
/* 8030BECC 00308E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030BED0 00308E30  48 06 E9 71 */	bl GXInvalidateTexAll
/* 8030BED4 00308E34  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030BED8 00308E38  38 A3 65 00 */	addi r5, r3, mRenderModeObj__9CGraphics@l
/* 8030BEDC 00308E3C  88 05 00 18 */	lbz r0, 0x18(r5)
/* 8030BEE0 00308E40  28 00 00 00 */	cmplwi r0, 0
/* 8030BEE4 00308E44  41 82 00 58 */	beq lbl_8030BF3C
/* 8030BEE8 00308E48  48 07 D4 B1 */	bl VIGetNextField
/* 8030BEEC 00308E4C  3C A0 80 5A */	lis r5, mRenderModeObj__9CGraphics@ha
/* 8030BEF0 00308E50  3C 80 43 30 */	lis r4, 0x4330
/* 8030BEF4 00308E54  38 C5 65 00 */	addi r6, r5, mRenderModeObj__9CGraphics@l
/* 8030BEF8 00308E58  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 8030BEFC 00308E5C  A0 A6 00 04 */	lhz r5, 4(r6)
/* 8030BF00 00308E60  A0 06 00 08 */	lhz r0, 8(r6)
/* 8030BF04 00308E64  FC 40 08 90 */	fmr f2, f1
/* 8030BF08 00308E68  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8030BF0C 00308E6C  FC A0 08 90 */	fmr f5, f1
/* 8030BF10 00308E70  C8 82 C7 F8 */	lfd f4, lbl_805AE518@sda21(r2)
/* 8030BF14 00308E74  90 81 00 08 */	stw r4, 8(r1)
/* 8030BF18 00308E78  C0 C2 C8 10 */	lfs f6, lbl_805AE530@sda21(r2)
/* 8030BF1C 00308E7C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030BF20 00308E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BF24 00308E84  EC 60 20 28 */	fsubs f3, f0, f4
/* 8030BF28 00308E88  90 81 00 10 */	stw r4, 0x10(r1)
/* 8030BF2C 00308E8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030BF30 00308E90  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030BF34 00308E94  48 07 06 11 */	bl GXSetViewportJitter
/* 8030BF38 00308E98  48 00 00 48 */	b lbl_8030BF80
lbl_8030BF3C:
/* 8030BF3C 00308E9C  A0 85 00 04 */	lhz r4, 4(r5)
/* 8030BF40 00308EA0  3C 60 43 30 */	lis r3, 0x4330
/* 8030BF44 00308EA4  A0 05 00 08 */	lhz r0, 8(r5)
/* 8030BF48 00308EA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8030BF4C 00308EAC  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 8030BF50 00308EB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8030BF54 00308EB4  C8 82 C7 F8 */	lfd f4, lbl_805AE518@sda21(r2)
/* 8030BF58 00308EB8  FC 40 08 90 */	fmr f2, f1
/* 8030BF5C 00308EBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030BF60 00308EC0  FC A0 08 90 */	fmr f5, f1
/* 8030BF64 00308EC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030BF68 00308EC8  EC 60 20 28 */	fsubs f3, f0, f4
/* 8030BF6C 00308ECC  C0 C2 C8 10 */	lfs f6, lbl_805AE530@sda21(r2)
/* 8030BF70 00308ED0  90 61 00 08 */	stw r3, 8(r1)
/* 8030BF74 00308ED4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030BF78 00308ED8  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030BF7C 00308EDC  48 07 06 CD */	bl GXSetViewport
lbl_8030BF80:
/* 8030BF80 00308EE0  48 06 C0 05 */	bl GXInvalidateVtxCache
/* 8030BF84 00308EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030BF88 00308EE8  7C 08 03 A6 */	mtlr r0
/* 8030BF8C 00308EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8030BF90 00308EF0  4E 80 00 20 */	blr

.global SetClearColor__9CGraphicsFRC6CColor
SetClearColor__9CGraphicsFRC6CColor:
/* 8030BF94 00308EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030BF98 00308EF8  7C 08 02 A6 */	mflr r0
/* 8030BF9C 00308EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030BFA0 00308F00  80 03 00 00 */	lwz r0, 0(r3)
/* 8030BFA4 00308F04  38 61 00 08 */	addi r3, r1, 8
/* 8030BFA8 00308F08  80 8D 9C 7C */	lwz r4, mClearDepthValue__9CGraphics@sda21(r13)
/* 8030BFAC 00308F0C  90 0D A7 F8 */	stw r0, mClearColor__9CGraphics@sda21(r13)
/* 8030BFB0 00308F10  90 01 00 08 */	stw r0, 8(r1)
/* 8030BFB4 00308F14  48 06 D1 79 */	bl GXSetCopyClear
/* 8030BFB8 00308F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030BFBC 00308F1C  7C 08 03 A6 */	mtlr r0
/* 8030BFC0 00308F20  38 21 00 10 */	addi r1, r1, 0x10
/* 8030BFC4 00308F24  4E 80 00 20 */	blr

.global SetCopyClear__9CGraphicsFRC6CColorf
SetCopyClear__9CGraphicsFRC6CColorf:
/* 8030BFC8 00308F28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030BFCC 00308F2C  7C 08 02 A6 */	mflr r0
/* 8030BFD0 00308F30  C0 02 C8 1C */	lfs f0, lbl_805AE53C@sda21(r2)
/* 8030BFD4 00308F34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030BFD8 00308F38  EC 20 00 72 */	fmuls f1, f0, f1
/* 8030BFDC 00308F3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030BFE0 00308F40  7C 7F 1B 78 */	mr r31, r3
/* 8030BFE4 00308F44  80 03 00 00 */	lwz r0, 0(r3)
/* 8030BFE8 00308F48  90 0D A7 F8 */	stw r0, mClearColor__9CGraphics@sda21(r13)
/* 8030BFEC 00308F4C  48 07 D9 69 */	bl __cvt_fp2unsigned
/* 8030BFF0 00308F50  80 1F 00 00 */	lwz r0, 0(r31)
/* 8030BFF4 00308F54  7C 64 1B 78 */	mr r4, r3
/* 8030BFF8 00308F58  90 6D 9C 7C */	stw r3, mClearDepthValue__9CGraphics@sda21(r13)
/* 8030BFFC 00308F5C  38 61 00 08 */	addi r3, r1, 8
/* 8030C000 00308F60  90 01 00 08 */	stw r0, 8(r1)
/* 8030C004 00308F64  48 06 D1 29 */	bl GXSetCopyClear
/* 8030C008 00308F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030C00C 00308F6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030C010 00308F70  7C 08 03 A6 */	mtlr r0
/* 8030C014 00308F74  38 21 00 20 */	addi r1, r1, 0x20
/* 8030C018 00308F78  4E 80 00 20 */	blr

.global SetAmbientColor__9CGraphicsFRC6CColor
SetAmbientColor__9CGraphicsFRC6CColor:
/* 8030C01C 00308F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C020 00308F80  7C 08 02 A6 */	mflr r0
/* 8030C024 00308F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C028 00308F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030C02C 00308F8C  7C 7F 1B 78 */	mr r31, r3
/* 8030C030 00308F90  38 60 00 00 */	li r3, 0
/* 8030C034 00308F94  7F E4 FB 78 */	mr r4, r31
/* 8030C038 00308F98  4B FF CD 8D */	bl SetChanAmbColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 8030C03C 00308F9C  7F E4 FB 78 */	mr r4, r31
/* 8030C040 00308FA0  38 60 00 01 */	li r3, 1
/* 8030C044 00308FA4  4B FF CD 81 */	bl SetChanAmbColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 8030C048 00308FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C04C 00308FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030C050 00308FB0  7C 08 03 A6 */	mtlr r0
/* 8030C054 00308FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C058 00308FB8  4E 80 00 20 */	blr

.global SetScissor__9CGraphicsFiiii
SetScissor__9CGraphicsFiiii:
/* 8030C05C 00308FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C060 00308FC0  7C 08 02 A6 */	mflr r0
/* 8030C064 00308FC4  3C E0 80 5A */	lis r7, mRenderModeObj__9CGraphics@ha
/* 8030C068 00308FC8  7D 04 32 14 */	add r8, r4, r6
/* 8030C06C 00308FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C070 00308FD0  38 87 65 00 */	addi r4, r7, mRenderModeObj__9CGraphics@l
/* 8030C074 00308FD4  A0 04 00 06 */	lhz r0, 6(r4)
/* 8030C078 00308FD8  7C 88 00 50 */	subf r4, r8, r0
/* 8030C07C 00308FDC  48 07 05 F1 */	bl GXSetScissor
/* 8030C080 00308FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C084 00308FE4  7C 08 03 A6 */	mtlr r0
/* 8030C088 00308FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C08C 00308FEC  4E 80 00 20 */	blr

.global SetViewport__9CGraphicsFiiii
SetViewport__9CGraphicsFiiii:
/* 8030C090 00308FF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030C094 00308FF4  7C 08 02 A6 */	mflr r0
/* 8030C098 00308FF8  3D 40 43 30 */	lis r10, 0x4330
/* 8030C09C 00308FFC  3D 20 80 5A */	lis r9, mRenderModeObj__9CGraphics@ha
/* 8030C0A0 00309000  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030C0A4 00309004  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 8030C0A8 00309008  7C E0 2A 14 */	add r7, r0, r5
/* 8030C0AC 0030900C  6C 68 80 00 */	xoris r8, r3, 0x8000
/* 8030C0B0 00309010  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 8030C0B4 00309014  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8030C0B8 00309018  7C E7 0E 70 */	srawi r7, r7, 1
/* 8030C0BC 0030901C  39 29 65 00 */	addi r9, r9, mRenderModeObj__9CGraphics@l
/* 8030C0C0 00309020  7C 00 32 14 */	add r0, r0, r6
/* 8030C0C4 00309024  91 41 00 08 */	stw r10, 8(r1)
/* 8030C0C8 00309028  6C EB 80 00 */	xoris r11, r7, 0x8000
/* 8030C0CC 0030902C  A1 89 00 06 */	lhz r12, 6(r9)
/* 8030C0D0 00309030  91 61 00 0C */	stw r11, 0xc(r1)
/* 8030C0D4 00309034  7C 00 0E 70 */	srawi r0, r0, 1
/* 8030C0D8 00309038  6C 09 80 00 */	xoris r9, r0, 0x8000
/* 8030C0DC 0030903C  7F E4 32 14 */	add r31, r4, r6
/* 8030C0E0 00309040  7D 9F 60 50 */	subf r12, r31, r12
/* 8030C0E4 00309044  C8 82 C7 E8 */	lfd f4, lbl_805AE508@sda21(r2)
/* 8030C0E8 00309048  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C0EC 0030904C  6D 87 80 00 */	xoris r7, r12, 0x8000
/* 8030C0F0 00309050  91 21 00 14 */	stw r9, 0x14(r1)
/* 8030C0F4 00309054  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 8030C0F8 00309058  ED 00 20 28 */	fsubs f8, f0, f4
/* 8030C0FC 0030905C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8030C100 00309060  91 41 00 10 */	stw r10, 0x10(r1)
/* 8030C104 00309064  3D 60 80 3F */	lis r11, mViewport__9CGraphics@ha
/* 8030C108 00309068  C0 AD A7 E0 */	lfs f5, mDepthNear__9CGraphics@sda21(r13)
/* 8030C10C 0030906C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030C110 00309070  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8030C114 00309074  EC E0 20 28 */	fsubs f7, f0, f4
/* 8030C118 00309078  C0 CD 9C 78 */	lfs f6, mDepthFar__9CGraphics@sda21(r13)
/* 8030C11C 0030907C  94 6B D9 10 */	stwu r3, mViewport__9CGraphics@l(r11)
/* 8030C120 00309080  91 41 00 18 */	stw r10, 0x18(r1)
/* 8030C124 00309084  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8030C128 00309088  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8030C12C 0030908C  EC 20 20 28 */	fsubs f1, f0, f4
/* 8030C130 00309090  91 41 00 20 */	stw r10, 0x20(r1)
/* 8030C134 00309094  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8030C138 00309098  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8030C13C 0030909C  EC 40 20 28 */	fsubs f2, f0, f4
/* 8030C140 003090A0  91 41 00 28 */	stw r10, 0x28(r1)
/* 8030C144 003090A4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8030C148 003090A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030C14C 003090AC  EC 60 20 28 */	fsubs f3, f0, f4
/* 8030C150 003090B0  91 41 00 30 */	stw r10, 0x30(r1)
/* 8030C154 003090B4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8030C158 003090B8  91 8B 00 04 */	stw r12, 4(r11)
/* 8030C15C 003090BC  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030C160 003090C0  90 AB 00 08 */	stw r5, 8(r11)
/* 8030C164 003090C4  90 CB 00 0C */	stw r6, 0xc(r11)
/* 8030C168 003090C8  D1 0B 00 10 */	stfs f8, 0x10(r11)
/* 8030C16C 003090CC  D0 EB 00 14 */	stfs f7, 0x14(r11)
/* 8030C170 003090D0  48 07 04 D9 */	bl GXSetViewport
/* 8030C174 003090D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030C178 003090D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8030C17C 003090DC  7C 08 03 A6 */	mtlr r0
/* 8030C180 003090E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8030C184 003090E4  4E 80 00 20 */	blr

.global CalculatePerspectiveMatrix__9CGraphicsFffff
CalculatePerspectiveMatrix__9CGraphicsFffff:
/* 8030C188 003090E8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8030C18C 003090EC  7C 08 02 A6 */	mflr r0
/* 8030C190 003090F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8030C194 003090F4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8030C198 003090F8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8030C19C 003090FC  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8030C1A0 00309100  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8030C1A4 00309104  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8030C1A8 00309108  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8030C1AC 0030910C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8030C1B0 00309110  C0 A2 C8 20 */	lfs f5, lbl_805AE540@sda21(r2)
/* 8030C1B4 00309114  FF A0 10 90 */	fmr f29, f2
/* 8030C1B8 00309118  C0 02 C8 24 */	lfs f0, lbl_805AE544@sda21(r2)
/* 8030C1BC 0030911C  FF C0 18 90 */	fmr f30, f3
/* 8030C1C0 00309120  EC 25 00 72 */	fmuls f1, f5, f1
/* 8030C1C4 00309124  7C 7F 1B 78 */	mr r31, r3
/* 8030C1C8 00309128  FF E0 20 90 */	fmr f31, f4
/* 8030C1CC 0030912C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8030C1D0 00309130  48 08 89 E5 */	bl tan
/* 8030C1D4 00309134  C0 42 C8 28 */	lfs f2, lbl_805AE548@sda21(r2)
/* 8030C1D8 00309138  FD 20 08 18 */	frsp f9, f1
/* 8030C1DC 0030913C  C0 62 C7 F0 */	lfs f3, lbl_805AE510@sda21(r2)
/* 8030C1E0 00309140  EC FF F0 28 */	fsubs f7, f31, f30
/* 8030C1E4 00309144  EC 22 07 72 */	fmuls f1, f2, f29
/* 8030C1E8 00309148  C0 C2 C8 24 */	lfs f6, lbl_805AE544@sda21(r2)
/* 8030C1EC 0030914C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8030C1F0 00309150  ED 02 07 B2 */	fmuls f8, f2, f30
/* 8030C1F4 00309154  D0 61 00 08 */	stfs f3, 8(r1)
/* 8030C1F8 00309158  EC 81 07 B2 */	fmuls f4, f1, f30
/* 8030C1FC 0030915C  EC 3F F0 2A */	fadds f1, f31, f30
/* 8030C200 00309160  C0 42 C8 10 */	lfs f2, lbl_805AE530@sda21(r2)
/* 8030C204 00309164  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8030C208 00309168  EC A9 01 32 */	fmuls f5, f9, f4
/* 8030C20C 0030916C  38 61 00 28 */	addi r3, r1, 0x28
/* 8030C210 00309170  EC 21 38 24 */	fdivs f1, f1, f7
/* 8030C214 00309174  FC 00 00 50 */	fneg f0, f0
/* 8030C218 00309178  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8030C21C 0030917C  EC 88 02 72 */	fmuls f4, f8, f9
/* 8030C220 00309180  EC A6 01 72 */	fmuls f5, f6, f5
/* 8030C224 00309184  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8030C228 00309188  EC 00 38 24 */	fdivs f0, f0, f7
/* 8030C22C 0030918C  EC 86 01 32 */	fmuls f4, f6, f4
/* 8030C230 00309190  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8030C234 00309194  FC C0 28 50 */	fneg f6, f5
/* 8030C238 00309198  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8030C23C 0030919C  FC E0 20 50 */	fneg f7, f4
/* 8030C240 003091A0  EC 25 30 2A */	fadds f1, f5, f6
/* 8030C244 003091A4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8030C248 003091A8  EC A5 30 28 */	fsubs f5, f5, f6
/* 8030C24C 003091AC  EC 04 38 2A */	fadds f0, f4, f7
/* 8030C250 003091B0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8030C254 003091B4  FC 40 08 50 */	fneg f2, f1
/* 8030C258 003091B8  EC 84 38 28 */	fsubs f4, f4, f7
/* 8030C25C 003091BC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8030C260 003091C0  FC 00 00 50 */	fneg f0, f0
/* 8030C264 003091C4  EC 28 28 24 */	fdivs f1, f8, f5
/* 8030C268 003091C8  EC 42 28 24 */	fdivs f2, f2, f5
/* 8030C26C 003091CC  EC E8 20 24 */	fdivs f7, f8, f4
/* 8030C270 003091D0  EC C0 20 24 */	fdivs f6, f0, f4
/* 8030C274 003091D4  FC 80 18 90 */	fmr f4, f3
/* 8030C278 003091D8  FC A0 18 90 */	fmr f5, f3
/* 8030C27C 003091DC  FD 00 18 90 */	fmr f8, f3
/* 8030C280 003091E0  48 00 45 FD */	bl __ct__9CMatrix4fFffffffffffffffff
/* 8030C284 003091E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8030C288 003091E8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8030C28C 003091EC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8030C290 003091F0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8030C294 003091F4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8030C298 003091F8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8030C29C 003091FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8030C2A0 00309200  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8030C2A4 00309204  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8030C2A8 00309208  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8030C2AC 0030920C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8030C2B0 00309210  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8030C2B4 00309214  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8030C2B8 00309218  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8030C2BC 0030921C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8030C2C0 00309220  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8030C2C4 00309224  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8030C2C8 00309228  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8030C2CC 0030922C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8030C2D0 00309230  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8030C2D4 00309234  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8030C2D8 00309238  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8030C2DC 0030923C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8030C2E0 00309240  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8030C2E4 00309244  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8030C2E8 00309248  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8030C2EC 0030924C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8030C2F0 00309250  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8030C2F4 00309254  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8030C2F8 00309258  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8030C2FC 0030925C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8030C300 00309260  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8030C304 00309264  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8030C308 00309268  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8030C30C 0030926C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8030C310 00309270  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8030C314 00309274  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8030C318 00309278  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8030C31C 0030927C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8030C320 00309280  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8030C324 00309284  7C 08 03 A6 */	mtlr r0
/* 8030C328 00309288  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8030C32C 0030928C  4E 80 00 20 */	blr

.global GetPerspectiveProjectionMatrix__9CGraphicsFv
GetPerspectiveProjectionMatrix__9CGraphicsFv:
/* 8030C330 00309290  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8030C334 00309294  7C 08 02 A6 */	mflr r0
/* 8030C338 00309298  90 01 00 84 */	stw r0, 0x84(r1)
/* 8030C33C 0030929C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8030C340 003092A0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8030C344 003092A4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8030C348 003092A8  3C 80 80 5A */	lis r4, mProj__9CGraphics@ha
/* 8030C34C 003092AC  C0 62 C7 F0 */	lfs f3, lbl_805AE510@sda21(r2)
/* 8030C350 003092B0  38 84 61 B8 */	addi r4, r4, mProj__9CGraphics@l
/* 8030C354 003092B4  7C 7F 1B 78 */	mr r31, r3
/* 8030C358 003092B8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8030C35C 003092BC  FC 80 18 90 */	fmr f4, f3
/* 8030C360 003092C0  C1 02 C8 28 */	lfs f8, lbl_805AE548@sda21(r2)
/* 8030C364 003092C4  FC A0 18 90 */	fmr f5, f3
/* 8030C368 003092C8  C1 24 00 14 */	lfs f9, 0x14(r4)
/* 8030C36C 003092CC  38 61 00 28 */	addi r3, r1, 0x28
/* 8030C370 003092D0  EC 08 00 72 */	fmuls f0, f8, f1
/* 8030C374 003092D4  ED 41 48 28 */	fsubs f10, f1, f9
/* 8030C378 003092D8  C1 64 00 10 */	lfs f11, 0x10(r4)
/* 8030C37C 003092DC  EC 41 48 2A */	fadds f2, f1, f9
/* 8030C380 003092E0  C1 84 00 0C */	lfs f12, 0xc(r4)
/* 8030C384 003092E4  EC 20 02 72 */	fmuls f1, f0, f9
/* 8030C388 003092E8  EC 0C 58 2A */	fadds f0, f12, f11
/* 8030C38C 003092EC  EC E2 50 24 */	fdivs f7, f2, f10
/* 8030C390 003092F0  C1 A4 00 04 */	lfs f13, 4(r4)
/* 8030C394 003092F4  C3 E4 00 08 */	lfs f31, 8(r4)
/* 8030C398 003092F8  C0 C2 C8 10 */	lfs f6, lbl_805AE530@sda21(r2)
/* 8030C39C 003092FC  D0 61 00 08 */	stfs f3, 8(r1)
/* 8030C3A0 00309300  FC 40 08 50 */	fneg f2, f1
/* 8030C3A4 00309304  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 8030C3A8 00309308  EC 3F 68 2A */	fadds f1, f31, f13
/* 8030C3AC 0030930C  ED 28 02 72 */	fmuls f9, f8, f9
/* 8030C3B0 00309310  EC 42 50 24 */	fdivs f2, f2, f10
/* 8030C3B4 00309314  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8030C3B8 00309318  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8030C3BC 0030931C  EC EC 58 28 */	fsubs f7, f12, f11
/* 8030C3C0 00309320  ED 1F 68 28 */	fsubs f8, f31, f13
/* 8030C3C4 00309324  FC 40 08 50 */	fneg f2, f1
/* 8030C3C8 00309328  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8030C3CC 0030932C  FC 00 00 50 */	fneg f0, f0
/* 8030C3D0 00309330  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8030C3D4 00309334  EC 29 40 24 */	fdivs f1, f9, f8
/* 8030C3D8 00309338  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8030C3DC 0030933C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8030C3E0 00309340  EC 42 40 24 */	fdivs f2, f2, f8
/* 8030C3E4 00309344  EC C0 38 24 */	fdivs f6, f0, f7
/* 8030C3E8 00309348  EC E9 38 24 */	fdivs f7, f9, f7
/* 8030C3EC 0030934C  FD 00 18 90 */	fmr f8, f3
/* 8030C3F0 00309350  48 00 44 8D */	bl __ct__9CMatrix4fFffffffffffffffff
/* 8030C3F4 00309354  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8030C3F8 00309358  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8030C3FC 0030935C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8030C400 00309360  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8030C404 00309364  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8030C408 00309368  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8030C40C 0030936C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8030C410 00309370  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8030C414 00309374  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8030C418 00309378  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8030C41C 0030937C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8030C420 00309380  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8030C424 00309384  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8030C428 00309388  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8030C42C 0030938C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8030C430 00309390  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8030C434 00309394  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8030C438 00309398  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8030C43C 0030939C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8030C440 003093A0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8030C444 003093A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8030C448 003093A8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8030C44C 003093AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8030C450 003093B0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8030C454 003093B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8030C458 003093B8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8030C45C 003093BC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8030C460 003093C0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8030C464 003093C4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8030C468 003093C8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8030C46C 003093CC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8030C470 003093D0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8030C474 003093D4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8030C478 003093D8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8030C47C 003093DC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8030C480 003093E0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8030C484 003093E4  7C 08 03 A6 */	mtlr r0
/* 8030C488 003093E8  38 21 00 80 */	addi r1, r1, 0x80
/* 8030C48C 003093EC  4E 80 00 20 */	blr

.global SetPerspective__9CGraphicsFffff
SetPerspective__9CGraphicsFffff:
/* 8030C490 003093F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030C494 003093F4  7C 08 02 A6 */	mflr r0
/* 8030C498 003093F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030C49C 003093FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8030C4A0 00309400  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8030C4A4 00309404  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8030C4A8 00309408  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8030C4AC 0030940C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8030C4B0 00309410  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 8030C4B4 00309414  C0 A2 C8 20 */	lfs f5, lbl_805AE540@sda21(r2)
/* 8030C4B8 00309418  FF A0 10 90 */	fmr f29, f2
/* 8030C4BC 0030941C  C0 02 C8 24 */	lfs f0, lbl_805AE544@sda21(r2)
/* 8030C4C0 00309420  FF C0 18 90 */	fmr f30, f3
/* 8030C4C4 00309424  EC 25 00 72 */	fmuls f1, f5, f1
/* 8030C4C8 00309428  FF E0 20 90 */	fmr f31, f4
/* 8030C4CC 0030942C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8030C4D0 00309430  48 08 86 E5 */	bl tan
/* 8030C4D4 00309434  C0 02 C8 28 */	lfs f0, lbl_805AE548@sda21(r2)
/* 8030C4D8 00309438  FC 80 08 18 */	frsp f4, f1
/* 8030C4DC 0030943C  C0 62 C8 24 */	lfs f3, lbl_805AE544@sda21(r2)
/* 8030C4E0 00309440  38 00 00 01 */	li r0, 1
/* 8030C4E4 00309444  EC 40 07 72 */	fmuls f2, f0, f29
/* 8030C4E8 00309448  3C 60 80 5A */	lis r3, mProj__9CGraphics@ha
/* 8030C4EC 0030944C  9C 03 61 B8 */	stbu r0, mProj__9CGraphics@l(r3)
/* 8030C4F0 00309450  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8030C4F4 00309454  EC 22 07 B2 */	fmuls f1, f2, f30
/* 8030C4F8 00309458  D3 C3 00 14 */	stfs f30, 0x14(r3)
/* 8030C4FC 0030945C  EC 00 01 32 */	fmuls f0, f0, f4
/* 8030C500 00309460  D3 E3 00 18 */	stfs f31, 0x18(r3)
/* 8030C504 00309464  EC 24 00 72 */	fmuls f1, f4, f1
/* 8030C508 00309468  EC 83 00 32 */	fmuls f4, f3, f0
/* 8030C50C 0030946C  EC 43 00 72 */	fmuls f2, f3, f1
/* 8030C510 00309470  FC 00 20 50 */	fneg f0, f4
/* 8030C514 00309474  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 8030C518 00309478  FC 20 10 50 */	fneg f1, f2
/* 8030C51C 0030947C  D0 43 00 08 */	stfs f2, 8(r3)
/* 8030C520 00309480  D0 23 00 04 */	stfs f1, 4(r3)
/* 8030C524 00309484  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8030C528 00309488  4B FF D9 41 */	bl FlushProjection__9CGraphicsFv
/* 8030C52C 0030948C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8030C530 00309490  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8030C534 00309494  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8030C538 00309498  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8030C53C 0030949C  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 8030C540 003094A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030C544 003094A4  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8030C548 003094A8  7C 08 03 A6 */	mtlr r0
/* 8030C54C 003094AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8030C550 003094B0  4E 80 00 20 */	blr

.global SetOrtho__9CGraphicsFffffff
SetOrtho__9CGraphicsFffffff:
/* 8030C554 003094B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C558 003094B8  7C 08 02 A6 */	mflr r0
/* 8030C55C 003094BC  3C 60 80 5A */	lis r3, mProj__9CGraphics@ha
/* 8030C560 003094C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C564 003094C4  38 00 00 00 */	li r0, 0
/* 8030C568 003094C8  9C 03 61 B8 */	stbu r0, mProj__9CGraphics@l(r3)
/* 8030C56C 003094CC  D0 23 00 04 */	stfs f1, 4(r3)
/* 8030C570 003094D0  D0 43 00 08 */	stfs f2, 8(r3)
/* 8030C574 003094D4  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 8030C578 003094D8  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 8030C57C 003094DC  D0 A3 00 14 */	stfs f5, 0x14(r3)
/* 8030C580 003094E0  D0 C3 00 18 */	stfs f6, 0x18(r3)
/* 8030C584 003094E4  4B FF D8 E5 */	bl FlushProjection__9CGraphicsFv
/* 8030C588 003094E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C58C 003094EC  7C 08 03 A6 */	mtlr r0
/* 8030C590 003094F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C594 003094F4  4E 80 00 20 */	blr

.global SetIdentityModelMatrix__9CGraphicsFv
SetIdentityModelMatrix__9CGraphicsFv:
/* 8030C598 003094F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C59C 003094FC  7C 08 02 A6 */	mflr r0
/* 8030C5A0 00309500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C5A4 00309504  88 0D 9C 80 */	lbz r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C5A8 00309508  28 00 00 00 */	cmplwi r0, 0
/* 8030C5AC 0030950C  40 82 00 24 */	bne lbl_8030C5D0
/* 8030C5B0 00309510  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030C5B4 00309514  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8030C5B8 00309518  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030C5BC 0030951C  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 8030C5C0 00309520  48 00 65 81 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8030C5C4 00309524  38 00 00 01 */	li r0, 1
/* 8030C5C8 00309528  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C5CC 0030952C  48 00 02 41 */	bl SetViewMatrix__9CGraphicsFv
lbl_8030C5D0:
/* 8030C5D0 00309530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C5D4 00309534  7C 08 03 A6 */	mtlr r0
/* 8030C5D8 00309538  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C5DC 0030953C  4E 80 00 20 */	blr

.global SetModelMatrix__9CGraphicsFRC12CTransform4f
SetModelMatrix__9CGraphicsFRC12CTransform4f:
/* 8030C5E0 00309540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C5E4 00309544  7C 08 02 A6 */	mflr r0
/* 8030C5E8 00309548  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8030C5EC 0030954C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C5F0 00309550  38 04 66 70 */	addi r0, r4, sIdentity__12CTransform4f@l
/* 8030C5F4 00309554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030C5F8 00309558  7C 7F 1B 78 */	mr r31, r3
/* 8030C5FC 0030955C  7C 1F 00 40 */	cmplw r31, r0
/* 8030C600 00309560  40 82 00 30 */	bne lbl_8030C630
/* 8030C604 00309564  88 0D 9C 80 */	lbz r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C608 00309568  28 00 00 00 */	cmplwi r0, 0
/* 8030C60C 0030956C  40 82 00 A4 */	bne lbl_8030C6B0
/* 8030C610 00309570  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030C614 00309574  7F E4 FB 78 */	mr r4, r31
/* 8030C618 00309578  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030C61C 0030957C  48 00 65 25 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8030C620 00309580  38 00 00 01 */	li r0, 1
/* 8030C624 00309584  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C628 00309588  48 00 01 E5 */	bl SetViewMatrix__9CGraphicsFv
/* 8030C62C 0030958C  48 00 00 84 */	b lbl_8030C6B0
lbl_8030C630:
/* 8030C630 00309590  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030C634 00309594  7F E4 FB 78 */	mr r4, r31
/* 8030C638 00309598  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030C63C 0030959C  48 00 65 05 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8030C640 003095A0  C1 7F 00 00 */	lfs f11, 0(r31)
/* 8030C644 003095A4  3C 60 80 5A */	lis r3, mGXModelMatrix__9CGraphics@ha
/* 8030C648 003095A8  38 00 00 00 */	li r0, 0
/* 8030C64C 003095AC  C1 5F 00 04 */	lfs f10, 4(r31)
/* 8030C650 003095B0  D5 63 65 6C */	stfsu f11, mGXModelMatrix__9CGraphics@l(r3)
/* 8030C654 003095B4  C1 3F 00 08 */	lfs f9, 8(r31)
/* 8030C658 003095B8  C1 1F 00 0C */	lfs f8, 0xc(r31)
/* 8030C65C 003095BC  C0 FF 00 10 */	lfs f7, 0x10(r31)
/* 8030C660 003095C0  C0 DF 00 14 */	lfs f6, 0x14(r31)
/* 8030C664 003095C4  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 8030C668 003095C8  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8030C66C 003095CC  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8030C670 003095D0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8030C674 003095D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8030C678 003095D8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8030C67C 003095DC  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C680 003095E0  D1 43 00 04 */	stfs f10, 4(r3)
/* 8030C684 003095E4  D1 23 00 08 */	stfs f9, 8(r3)
/* 8030C688 003095E8  D1 03 00 0C */	stfs f8, 0xc(r3)
/* 8030C68C 003095EC  D0 E3 00 10 */	stfs f7, 0x10(r3)
/* 8030C690 003095F0  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 8030C694 003095F4  D0 A3 00 18 */	stfs f5, 0x18(r3)
/* 8030C698 003095F8  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 8030C69C 003095FC  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8030C6A0 00309600  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 8030C6A4 00309604  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8030C6A8 00309608  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8030C6AC 0030960C  48 00 01 61 */	bl SetViewMatrix__9CGraphicsFv
lbl_8030C6B0:
/* 8030C6B0 00309610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C6B4 00309614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030C6B8 00309618  7C 08 03 A6 */	mtlr r0
/* 8030C6BC 0030961C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C6C0 00309620  4E 80 00 20 */	blr

.global SetIdentityViewPointMatrix__9CGraphicsFv
SetIdentityViewPointMatrix__9CGraphicsFv:
/* 8030C6C4 00309624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C6C8 00309628  7C 08 02 A6 */	mflr r0
/* 8030C6CC 0030962C  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 8030C6D0 00309630  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8030C6D4 00309634  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C6D8 00309638  38 63 61 D4 */	addi r3, r3, mViewMatrix__9CGraphics@l
/* 8030C6DC 0030963C  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 8030C6E0 00309640  48 00 64 61 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8030C6E4 00309644  3C 60 80 5A */	lis r3, mGXViewPointMatrix__9CGraphics@ha
/* 8030C6E8 00309648  38 63 65 3C */	addi r3, r3, mGXViewPointMatrix__9CGraphics@l
/* 8030C6EC 0030964C  48 07 09 55 */	bl PSMTXIdentity
/* 8030C6F0 00309650  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8030C6F4 00309654  3C A0 80 5A */	lis r5, mGXViewPointMatrix__9CGraphics@ha
/* 8030C6F8 00309658  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8030C6FC 0030965C  C0 A2 C7 F0 */	lfs f5, lbl_805AE510@sda21(r2)
/* 8030C700 00309660  C0 44 00 00 */	lfs f2, 0(r4)
/* 8030C704 00309664  38 A5 65 3C */	addi r5, r5, mGXViewPointMatrix__9CGraphics@l
/* 8030C708 00309668  3C 60 80 5A */	lis r3, mViewPoint__9CGraphics@ha
/* 8030C70C 0030966C  C0 82 C8 10 */	lfs f4, lbl_805AE530@sda21(r2)
/* 8030C710 00309670  C0 62 C8 14 */	lfs f3, lbl_805AE534@sda21(r2)
/* 8030C714 00309674  C0 24 00 04 */	lfs f1, 4(r4)
/* 8030C718 00309678  D4 43 62 34 */	stfsu f2, mViewPoint__9CGraphics@l(r3)
/* 8030C71C 0030967C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8030C720 00309680  D0 A5 00 28 */	stfs f5, 0x28(r5)
/* 8030C724 00309684  D0 A5 00 14 */	stfs f5, 0x14(r5)
/* 8030C728 00309688  D0 85 00 18 */	stfs f4, 0x18(r5)
/* 8030C72C 0030968C  D0 65 00 24 */	stfs f3, 0x24(r5)
/* 8030C730 00309690  D0 23 00 04 */	stfs f1, 4(r3)
/* 8030C734 00309694  D0 03 00 08 */	stfs f0, 8(r3)
/* 8030C738 00309698  48 00 00 D5 */	bl SetViewMatrix__9CGraphicsFv
/* 8030C73C 0030969C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C740 003096A0  7C 08 03 A6 */	mtlr r0
/* 8030C744 003096A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C748 003096A8  4E 80 00 20 */	blr

.global SetViewPointMatrix__9CGraphicsFRC12CTransform4f
SetViewPointMatrix__9CGraphicsFRC12CTransform4f:
/* 8030C74C 003096AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C750 003096B0  7C 08 02 A6 */	mflr r0
/* 8030C754 003096B4  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 8030C758 003096B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C75C 003096BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030C760 003096C0  7C 7F 1B 78 */	mr r31, r3
/* 8030C764 003096C4  38 64 61 D4 */	addi r3, r4, mViewMatrix__9CGraphics@l
/* 8030C768 003096C8  7F E4 FB 78 */	mr r4, r31
/* 8030C76C 003096CC  48 00 63 D5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8030C770 003096D0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8030C774 003096D4  3C 80 80 5A */	lis r4, mGXViewPointMatrix__9CGraphics@ha
/* 8030C778 003096D8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8030C77C 003096DC  3C 60 80 5A */	lis r3, mViewPoint__9CGraphics@ha
/* 8030C780 003096E0  FC 60 10 50 */	fneg f3, f2
/* 8030C784 003096E4  C1 5F 00 00 */	lfs f10, 0(r31)
/* 8030C788 003096E8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8030C78C 003096EC  FC 40 08 50 */	fneg f2, f1
/* 8030C790 003096F0  D5 44 65 3C */	stfsu f10, mGXViewPointMatrix__9CGraphics@l(r4)
/* 8030C794 003096F4  C0 E2 C7 F0 */	lfs f7, lbl_805AE510@sda21(r2)
/* 8030C798 003096F8  FC 20 00 50 */	fneg f1, f0
/* 8030C79C 003096FC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8030C7A0 00309700  C1 3F 00 10 */	lfs f9, 0x10(r31)
/* 8030C7A4 00309704  C1 1F 00 20 */	lfs f8, 0x20(r31)
/* 8030C7A8 00309708  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8030C7AC 0030970C  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 8030C7B0 00309710  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 8030C7B4 00309714  C1 9F 00 2C */	lfs f12, 0x2c(r31)
/* 8030C7B8 00309718  D4 03 62 34 */	stfsu f0, mViewPoint__9CGraphics@l(r3)
/* 8030C7BC 0030971C  C1 7F 00 1C */	lfs f11, 0x1c(r31)
/* 8030C7C0 00309720  D1 24 00 04 */	stfs f9, 4(r4)
/* 8030C7C4 00309724  D1 04 00 08 */	stfs f8, 8(r4)
/* 8030C7C8 00309728  D0 E4 00 0C */	stfs f7, 0xc(r4)
/* 8030C7CC 0030972C  D0 C4 00 10 */	stfs f6, 0x10(r4)
/* 8030C7D0 00309730  D0 A4 00 14 */	stfs f5, 0x14(r4)
/* 8030C7D4 00309734  D0 84 00 18 */	stfs f4, 0x18(r4)
/* 8030C7D8 00309738  D0 E4 00 1C */	stfs f7, 0x1c(r4)
/* 8030C7DC 0030973C  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 8030C7E0 00309740  D0 44 00 24 */	stfs f2, 0x24(r4)
/* 8030C7E4 00309744  D0 24 00 28 */	stfs f1, 0x28(r4)
/* 8030C7E8 00309748  D0 E4 00 2C */	stfs f7, 0x2c(r4)
/* 8030C7EC 0030974C  D1 63 00 04 */	stfs f11, 4(r3)
/* 8030C7F0 00309750  D1 83 00 08 */	stfs f12, 8(r3)
/* 8030C7F4 00309754  48 00 00 19 */	bl SetViewMatrix__9CGraphicsFv
/* 8030C7F8 00309758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C7FC 0030975C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030C800 00309760  7C 08 03 A6 */	mtlr r0
/* 8030C804 00309764  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C808 00309768  4E 80 00 20 */	blr

.global SetViewMatrix__9CGraphicsFv
SetViewMatrix__9CGraphicsFv:
/* 8030C80C 0030976C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8030C810 00309770  7C 08 02 A6 */	mflr r0
/* 8030C814 00309774  3C 80 80 5A */	lis r4, mViewPoint__9CGraphics@ha
/* 8030C818 00309778  90 01 00 74 */	stw r0, 0x74(r1)
/* 8030C81C 0030977C  38 61 00 38 */	addi r3, r1, 0x38
/* 8030C820 00309780  C4 24 62 34 */	lfsu f1, mViewPoint__9CGraphics@l(r4)
/* 8030C824 00309784  C0 44 00 04 */	lfs f2, 4(r4)
/* 8030C828 00309788  FC 20 08 50 */	fneg f1, f1
/* 8030C82C 0030978C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8030C830 00309790  FC 40 10 50 */	fneg f2, f2
/* 8030C834 00309794  FC 60 00 50 */	fneg f3, f0
/* 8030C838 00309798  48 07 09 FD */	bl PSMTXTrans
/* 8030C83C 0030979C  3C 60 80 5A */	lis r3, mGXViewPointMatrix__9CGraphics@ha
/* 8030C840 003097A0  3C A0 80 5A */	lis r5, mCameraMtx__9CGraphics@ha
/* 8030C844 003097A4  38 63 65 3C */	addi r3, r3, mGXViewPointMatrix__9CGraphics@l
/* 8030C848 003097A8  38 81 00 38 */	addi r4, r1, 0x38
/* 8030C84C 003097AC  38 A5 65 CC */	addi r5, r5, mCameraMtx__9CGraphics@l
/* 8030C850 003097B0  48 07 08 51 */	bl PSMTXConcat
/* 8030C854 003097B4  88 0D 9C 80 */	lbz r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030C858 003097B8  28 00 00 00 */	cmplwi r0, 0
/* 8030C85C 003097BC  41 82 00 1C */	beq lbl_8030C878
/* 8030C860 003097C0  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030C864 003097C4  3C 80 80 5A */	lis r4, mGxModelView__9CGraphics@ha
/* 8030C868 003097C8  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030C86C 003097CC  38 84 65 9C */	addi r4, r4, mGxModelView__9CGraphics@l
/* 8030C870 003097D0  48 07 07 FD */	bl PSMTXCopy
/* 8030C874 003097D4  48 00 00 20 */	b lbl_8030C894
lbl_8030C878:
/* 8030C878 003097D8  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030C87C 003097DC  3C 80 80 5A */	lis r4, mGXModelMatrix__9CGraphics@ha
/* 8030C880 003097E0  3C A0 80 5A */	lis r5, mGxModelView__9CGraphics@ha
/* 8030C884 003097E4  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030C888 003097E8  38 84 65 6C */	addi r4, r4, mGXModelMatrix__9CGraphics@l
/* 8030C88C 003097EC  38 A5 65 9C */	addi r5, r5, mGxModelView__9CGraphics@l
/* 8030C890 003097F0  48 07 08 11 */	bl PSMTXConcat
lbl_8030C894:
/* 8030C894 003097F4  3C 60 80 5A */	lis r3, mGxModelView__9CGraphics@ha
/* 8030C898 003097F8  38 80 00 00 */	li r4, 0
/* 8030C89C 003097FC  38 63 65 9C */	addi r3, r3, mGxModelView__9CGraphics@l
/* 8030C8A0 00309800  48 06 FB 19 */	bl GXLoadPosMtxImm
/* 8030C8A4 00309804  3C 60 80 5A */	lis r3, mGxModelView__9CGraphics@ha
/* 8030C8A8 00309808  38 81 00 08 */	addi r4, r1, 8
/* 8030C8AC 0030980C  38 63 65 9C */	addi r3, r3, mGxModelView__9CGraphics@l
/* 8030C8B0 00309810  48 07 08 BD */	bl PSMTXInvXpose
/* 8030C8B4 00309814  38 61 00 08 */	addi r3, r1, 8
/* 8030C8B8 00309818  38 80 00 00 */	li r4, 0
/* 8030C8BC 0030981C  48 06 FB 4D */	bl GXLoadNrmMtxImm
/* 8030C8C0 00309820  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8030C8C4 00309824  7C 08 03 A6 */	mtlr r0
/* 8030C8C8 00309828  38 21 00 70 */	addi r1, r1, 0x70
/* 8030C8CC 0030982C  4E 80 00 20 */	blr

.global SetLightState__9CGraphicsFUc
SetLightState__9CGraphicsFUc:
/* 8030C8D0 00309830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C8D4 00309834  7C 08 02 A6 */	mflr r0
/* 8030C8D8 00309838  39 20 00 02 */	li r9, 2
/* 8030C8DC 0030983C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C8E0 00309840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8030C8E4 00309844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030C8E8 00309848  7C 7F 1B 78 */	mr r31, r3
/* 8030C8EC 0030984C  41 82 00 08 */	beq lbl_8030C8F4
/* 8030C8F0 00309850  39 20 00 01 */	li r9, 1
lbl_8030C8F4:
/* 8030C8F4 00309854  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8030C8F8 00309858  39 00 00 00 */	li r8, 0
/* 8030C8FC 0030985C  41 82 00 08 */	beq lbl_8030C904
/* 8030C900 00309860  39 00 00 02 */	li r8, 2
lbl_8030C904:
/* 8030C904 00309864  3C 60 80 5A */	lis r3, vtxDescr@ha
/* 8030C908 00309868  57 E7 06 3E */	clrlwi r7, r31, 0x18
/* 8030C90C 0030986C  38 63 61 70 */	addi r3, r3, vtxDescr@l
/* 8030C910 00309870  38 A0 00 00 */	li r5, 0
/* 8030C914 00309874  88 63 00 2E */	lbz r3, 0x2e(r3)
/* 8030C918 00309878  7C 07 00 D0 */	neg r0, r7
/* 8030C91C 0030987C  7C 00 3B 78 */	or r0, r0, r7
/* 8030C920 00309880  54 66 FF FE */	rlwinm r6, r3, 0x1f, 0x1f, 0x1f
/* 8030C924 00309884  38 60 00 00 */	li r3, 0
/* 8030C928 00309888  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8030C92C 0030988C  4B FF C3 A1 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 8030C930 00309890  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8030C934 00309894  9B ED A8 16 */	stb r31, mLightActive__9CGraphics@sda21(r13)
/* 8030C938 00309898  70 03 00 55 */	andi. r3, r0, 0x55
/* 8030C93C 0030989C  70 00 00 AA */	andi. r0, r0, 0xaa
/* 8030C940 003098A0  54 00 F8 7E */	srwi r0, r0, 1
/* 8030C944 003098A4  7C 03 02 14 */	add r0, r3, r0
/* 8030C948 003098A8  70 03 00 33 */	andi. r3, r0, 0x33
/* 8030C94C 003098AC  70 00 00 CC */	andi. r0, r0, 0xcc
/* 8030C950 003098B0  54 00 F0 BE */	srwi r0, r0, 2
/* 8030C954 003098B4  7C 03 02 14 */	add r0, r3, r0
/* 8030C958 003098B8  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 8030C95C 003098BC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 8030C960 003098C0  7C 03 02 14 */	add r0, r3, r0
/* 8030C964 003098C4  90 0D A7 DC */	stw r0, mNumLightsActive__9CGraphics@sda21(r13)
/* 8030C968 003098C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C96C 003098CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030C970 003098D0  7C 08 03 A6 */	mtlr r0
/* 8030C974 003098D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C978 003098D8  4E 80 00 20 */	blr

.global DisableAllLights__9CGraphicsFv
DisableAllLights__9CGraphicsFv:
/* 8030C97C 003098DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C980 003098E0  7C 08 02 A6 */	mflr r0
/* 8030C984 003098E4  38 60 00 00 */	li r3, 0
/* 8030C988 003098E8  38 80 00 00 */	li r4, 0
/* 8030C98C 003098EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030C990 003098F0  38 00 00 00 */	li r0, 0
/* 8030C994 003098F4  38 A0 00 00 */	li r5, 0
/* 8030C998 003098F8  38 C0 00 00 */	li r6, 0
/* 8030C99C 003098FC  90 0D A7 DC */	stw r0, mNumLightsActive__9CGraphics@sda21(r13)
/* 8030C9A0 00309900  38 E0 00 00 */	li r7, 0
/* 8030C9A4 00309904  39 00 00 00 */	li r8, 0
/* 8030C9A8 00309908  39 20 00 02 */	li r9, 2
/* 8030C9AC 0030990C  98 0D A8 16 */	stb r0, mLightActive__9CGraphics@sda21(r13)
/* 8030C9B0 00309910  4B FF C3 1D */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 8030C9B4 00309914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030C9B8 00309918  7C 08 03 A6 */	mtlr r0
/* 8030C9BC 0030991C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C9C0 00309920  4E 80 00 20 */	blr

.global LoadLight__9CGraphicsF9ERglLightRC6CLight
LoadLight__9CGraphicsF9ERglLightRC6CLight:
/* 8030C9C4 00309924  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030C9C8 00309928  7C 08 02 A6 */	mflr r0
/* 8030C9CC 0030992C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030C9D0 00309930  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8030C9D4 00309934  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8030C9D8 00309938  7C 9E 23 78 */	mr r30, r4
/* 8030C9DC 0030993C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8030C9E0 00309940  7C 7D 1B 79 */	or. r29, r3, r3
/* 8030C9E4 00309944  93 81 00 30 */	stw r28, 0x30(r1)
/* 8030C9E8 00309948  40 82 00 0C */	bne lbl_8030C9F4
/* 8030C9EC 0030994C  3B E0 00 01 */	li r31, 1
/* 8030C9F0 00309950  48 00 00 7C */	b lbl_8030CA6C
lbl_8030C9F4:
/* 8030C9F4 00309954  2C 1D 00 01 */	cmpwi r29, 1
/* 8030C9F8 00309958  40 82 00 0C */	bne lbl_8030CA04
/* 8030C9FC 0030995C  3B E0 00 02 */	li r31, 2
/* 8030CA00 00309960  48 00 00 6C */	b lbl_8030CA6C
lbl_8030CA04:
/* 8030CA04 00309964  2C 1D 00 02 */	cmpwi r29, 2
/* 8030CA08 00309968  40 82 00 0C */	bne lbl_8030CA14
/* 8030CA0C 0030996C  3B E0 00 04 */	li r31, 4
/* 8030CA10 00309970  48 00 00 5C */	b lbl_8030CA6C
lbl_8030CA14:
/* 8030CA14 00309974  2C 1D 00 03 */	cmpwi r29, 3
/* 8030CA18 00309978  40 82 00 0C */	bne lbl_8030CA24
/* 8030CA1C 0030997C  3B E0 00 08 */	li r31, 8
/* 8030CA20 00309980  48 00 00 4C */	b lbl_8030CA6C
lbl_8030CA24:
/* 8030CA24 00309984  2C 1D 00 04 */	cmpwi r29, 4
/* 8030CA28 00309988  40 82 00 0C */	bne lbl_8030CA34
/* 8030CA2C 0030998C  3B E0 00 10 */	li r31, 0x10
/* 8030CA30 00309990  48 00 00 3C */	b lbl_8030CA6C
lbl_8030CA34:
/* 8030CA34 00309994  2C 1D 00 05 */	cmpwi r29, 5
/* 8030CA38 00309998  40 82 00 0C */	bne lbl_8030CA44
/* 8030CA3C 0030999C  3B E0 00 20 */	li r31, 0x20
/* 8030CA40 003099A0  48 00 00 2C */	b lbl_8030CA6C
lbl_8030CA44:
/* 8030CA44 003099A4  2C 1D 00 06 */	cmpwi r29, 6
/* 8030CA48 003099A8  40 82 00 0C */	bne lbl_8030CA54
/* 8030CA4C 003099AC  3B E0 00 40 */	li r31, 0x40
/* 8030CA50 003099B0  48 00 00 1C */	b lbl_8030CA6C
lbl_8030CA54:
/* 8030CA54 003099B4  38 7D FF F9 */	addi r3, r29, -7
/* 8030CA58 003099B8  20 1D 00 07 */	subfic r0, r29, 7
/* 8030CA5C 003099BC  7C 63 00 F8 */	nor r3, r3, r0
/* 8030CA60 003099C0  38 00 00 80 */	li r0, 0x80
/* 8030CA64 003099C4  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8030CA68 003099C8  7C 1F 18 38 */	and r31, r0, r3
lbl_8030CA6C:
/* 8030CA6C 003099CC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8030CA70 003099D0  C0 BE 00 00 */	lfs f5, 0(r30)
/* 8030CA74 003099D4  C0 9E 00 04 */	lfs f4, 4(r30)
/* 8030CA78 003099D8  2C 00 00 02 */	cmpwi r0, 2
/* 8030CA7C 003099DC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8030CA80 003099E0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8030CA84 003099E4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8030CA88 003099E8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8030CA8C 003099EC  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8030CA90 003099F0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8030CA94 003099F4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8030CA98 003099F8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8030CA9C 003099FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8030CAA0 00309A00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8030CAA4 00309A04  41 82 01 18 */	beq lbl_8030CBBC
/* 8030CAA8 00309A08  40 80 00 14 */	bge lbl_8030CABC
/* 8030CAAC 00309A0C  2C 00 00 00 */	cmpwi r0, 0
/* 8030CAB0 00309A10  41 82 00 1C */	beq lbl_8030CACC
/* 8030CAB4 00309A14  40 80 00 AC */	bge lbl_8030CB60
/* 8030CAB8 00309A18  48 00 02 14 */	b lbl_8030CCCC
lbl_8030CABC:
/* 8030CABC 00309A1C  2C 00 00 04 */	cmpwi r0, 4
/* 8030CAC0 00309A20  41 82 01 8C */	beq lbl_8030CC4C
/* 8030CAC4 00309A24  40 80 02 08 */	bge lbl_8030CCCC
/* 8030CAC8 00309A28  48 00 00 98 */	b lbl_8030CB60
lbl_8030CACC:
/* 8030CACC 00309A2C  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CAD0 00309A30  38 81 00 18 */	addi r4, r1, 0x18
/* 8030CAD4 00309A34  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CAD8 00309A38  7C 85 23 78 */	mr r5, r4
/* 8030CADC 00309A3C  48 07 09 99 */	bl PSMTXMultVec
/* 8030CAE0 00309A40  3C 60 80 5A */	lis r3, mLightObj__9CGraphics@ha
/* 8030CAE4 00309A44  57 A4 30 32 */	slwi r4, r29, 6
/* 8030CAE8 00309A48  38 03 62 40 */	addi r0, r3, mLightObj__9CGraphics@l
/* 8030CAEC 00309A4C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8030CAF0 00309A50  7F 80 22 14 */	add r28, r0, r4
/* 8030CAF4 00309A54  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8030CAF8 00309A58  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8030CAFC 00309A5C  7F 83 E3 78 */	mr r3, r28
/* 8030CB00 00309A60  48 06 CD 95 */	bl GXInitLightPos
/* 8030CB04 00309A64  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CB08 00309A68  38 81 00 0C */	addi r4, r1, 0xc
/* 8030CB0C 00309A6C  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CB10 00309A70  7C 85 23 78 */	mr r5, r4
/* 8030CB14 00309A74  48 07 09 B5 */	bl PSMTXMultVecSR
/* 8030CB18 00309A78  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8030CB1C 00309A7C  7F 83 E3 78 */	mr r3, r28
/* 8030CB20 00309A80  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8030CB24 00309A84  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8030CB28 00309A88  48 06 CD 7D */	bl GXInitLightDir
/* 8030CB2C 00309A8C  C0 42 C7 F0 */	lfs f2, lbl_805AE510@sda21(r2)
/* 8030CB30 00309A90  7F 83 E3 78 */	mr r3, r28
/* 8030CB34 00309A94  C0 22 C8 10 */	lfs f1, lbl_805AE530@sda21(r2)
/* 8030CB38 00309A98  FC 60 10 90 */	fmr f3, f2
/* 8030CB3C 00309A9C  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8030CB40 00309AA0  C0 BE 00 28 */	lfs f5, 0x28(r30)
/* 8030CB44 00309AA4  C0 DE 00 2C */	lfs f6, 0x2c(r30)
/* 8030CB48 00309AA8  48 06 CB A1 */	bl GXInitLightAttn
/* 8030CB4C 00309AAC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8030CB50 00309AB0  7F 83 E3 78 */	mr r3, r28
/* 8030CB54 00309AB4  38 80 00 03 */	li r4, 3
/* 8030CB58 00309AB8  48 06 CB AD */	bl GXInitLightSpot
/* 8030CB5C 00309ABC  48 00 01 70 */	b lbl_8030CCCC
lbl_8030CB60:
/* 8030CB60 00309AC0  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CB64 00309AC4  38 81 00 18 */	addi r4, r1, 0x18
/* 8030CB68 00309AC8  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CB6C 00309ACC  7C 85 23 78 */	mr r5, r4
/* 8030CB70 00309AD0  48 07 09 05 */	bl PSMTXMultVec
/* 8030CB74 00309AD4  3C 60 80 5A */	lis r3, mLightObj__9CGraphics@ha
/* 8030CB78 00309AD8  57 A4 30 32 */	slwi r4, r29, 6
/* 8030CB7C 00309ADC  38 03 62 40 */	addi r0, r3, mLightObj__9CGraphics@l
/* 8030CB80 00309AE0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8030CB84 00309AE4  7F 80 22 14 */	add r28, r0, r4
/* 8030CB88 00309AE8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8030CB8C 00309AEC  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8030CB90 00309AF0  7F 83 E3 78 */	mr r3, r28
/* 8030CB94 00309AF4  48 06 CD 01 */	bl GXInitLightPos
/* 8030CB98 00309AF8  C0 42 C7 F0 */	lfs f2, lbl_805AE510@sda21(r2)
/* 8030CB9C 00309AFC  7F 83 E3 78 */	mr r3, r28
/* 8030CBA0 00309B00  C0 22 C8 10 */	lfs f1, lbl_805AE530@sda21(r2)
/* 8030CBA4 00309B04  FC 60 10 90 */	fmr f3, f2
/* 8030CBA8 00309B08  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8030CBAC 00309B0C  C0 BE 00 28 */	lfs f5, 0x28(r30)
/* 8030CBB0 00309B10  C0 DE 00 2C */	lfs f6, 0x2c(r30)
/* 8030CBB4 00309B14  48 06 CB 35 */	bl GXInitLightAttn
/* 8030CBB8 00309B18  48 00 01 14 */	b lbl_8030CCCC
lbl_8030CBBC:
/* 8030CBBC 00309B1C  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CBC0 00309B20  38 81 00 0C */	addi r4, r1, 0xc
/* 8030CBC4 00309B24  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CBC8 00309B28  7C 85 23 78 */	mr r5, r4
/* 8030CBCC 00309B2C  48 07 08 FD */	bl PSMTXMultVecSR
/* 8030CBD0 00309B30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8030CBD4 00309B34  3C 60 80 5A */	lis r3, mLightObj__9CGraphics@ha
/* 8030CBD8 00309B38  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8030CBDC 00309B3C  57 A4 30 32 */	slwi r4, r29, 6
/* 8030CBE0 00309B40  FC A0 00 50 */	fneg f5, f0
/* 8030CBE4 00309B44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8030CBE8 00309B48  FC 80 08 50 */	fneg f4, f1
/* 8030CBEC 00309B4C  38 03 62 40 */	addi r0, r3, mLightObj__9CGraphics@l
/* 8030CBF0 00309B50  FC 00 00 50 */	fneg f0, f0
/* 8030CBF4 00309B54  7F 80 22 14 */	add r28, r0, r4
/* 8030CBF8 00309B58  FC 40 20 18 */	frsp f2, f4
/* 8030CBFC 00309B5C  C0 62 C8 2C */	lfs f3, lbl_805AE54C@sda21(r2)
/* 8030CC00 00309B60  FC 20 00 18 */	frsp f1, f0
/* 8030CC04 00309B64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8030CC08 00309B68  FC 00 28 18 */	frsp f0, f5
/* 8030CC0C 00309B6C  7F 83 E3 78 */	mr r3, r28
/* 8030CC10 00309B70  EC 23 00 72 */	fmuls f1, f3, f1
/* 8030CC14 00309B74  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8030CC18 00309B78  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8030CC1C 00309B7C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8030CC20 00309B80  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8030CC24 00309B84  48 06 CC 71 */	bl GXInitLightPos
/* 8030CC28 00309B88  C0 42 C7 F0 */	lfs f2, lbl_805AE510@sda21(r2)
/* 8030CC2C 00309B8C  7F 83 E3 78 */	mr r3, r28
/* 8030CC30 00309B90  C0 22 C8 10 */	lfs f1, lbl_805AE530@sda21(r2)
/* 8030CC34 00309B94  FC 60 10 90 */	fmr f3, f2
/* 8030CC38 00309B98  FC 80 08 90 */	fmr f4, f1
/* 8030CC3C 00309B9C  FC A0 10 90 */	fmr f5, f2
/* 8030CC40 00309BA0  FC C0 10 90 */	fmr f6, f2
/* 8030CC44 00309BA4  48 06 CA A5 */	bl GXInitLightAttn
/* 8030CC48 00309BA8  48 00 00 84 */	b lbl_8030CCCC
lbl_8030CC4C:
/* 8030CC4C 00309BAC  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CC50 00309BB0  38 81 00 18 */	addi r4, r1, 0x18
/* 8030CC54 00309BB4  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CC58 00309BB8  7C 85 23 78 */	mr r5, r4
/* 8030CC5C 00309BBC  48 07 08 19 */	bl PSMTXMultVec
/* 8030CC60 00309BC0  3C 60 80 5A */	lis r3, mLightObj__9CGraphics@ha
/* 8030CC64 00309BC4  57 A4 30 32 */	slwi r4, r29, 6
/* 8030CC68 00309BC8  38 03 62 40 */	addi r0, r3, mLightObj__9CGraphics@l
/* 8030CC6C 00309BCC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8030CC70 00309BD0  7F 80 22 14 */	add r28, r0, r4
/* 8030CC74 00309BD4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8030CC78 00309BD8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8030CC7C 00309BDC  7F 83 E3 78 */	mr r3, r28
/* 8030CC80 00309BE0  48 06 CC 15 */	bl GXInitLightPos
/* 8030CC84 00309BE4  3C 60 80 5A */	lis r3, mCameraMtx__9CGraphics@ha
/* 8030CC88 00309BE8  38 81 00 0C */	addi r4, r1, 0xc
/* 8030CC8C 00309BEC  38 63 65 CC */	addi r3, r3, mCameraMtx__9CGraphics@l
/* 8030CC90 00309BF0  7C 85 23 78 */	mr r5, r4
/* 8030CC94 00309BF4  48 07 08 35 */	bl PSMTXMultVecSR
/* 8030CC98 00309BF8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8030CC9C 00309BFC  7F 83 E3 78 */	mr r3, r28
/* 8030CCA0 00309C00  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8030CCA4 00309C04  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8030CCA8 00309C08  48 06 CB FD */	bl GXInitLightDir
/* 8030CCAC 00309C0C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8030CCB0 00309C10  7F 83 E3 78 */	mr r3, r28
/* 8030CCB4 00309C14  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8030CCB8 00309C18  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 8030CCBC 00309C1C  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8030CCC0 00309C20  C0 BE 00 28 */	lfs f5, 0x28(r30)
/* 8030CCC4 00309C24  C0 DE 00 2C */	lfs f6, 0x2c(r30)
/* 8030CCC8 00309C28  48 06 CA 21 */	bl GXInitLightAttn
lbl_8030CCCC:
/* 8030CCCC 00309C2C  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 8030CCD0 00309C30  3C 60 80 5A */	lis r3, mLightObj__9CGraphics@ha
/* 8030CCD4 00309C34  57 A5 30 32 */	slwi r5, r29, 6
/* 8030CCD8 00309C38  38 81 00 08 */	addi r4, r1, 8
/* 8030CCDC 00309C3C  38 03 62 40 */	addi r0, r3, mLightObj__9CGraphics@l
/* 8030CCE0 00309C40  90 C1 00 08 */	stw r6, 8(r1)
/* 8030CCE4 00309C44  7F 80 2A 14 */	add r28, r0, r5
/* 8030CCE8 00309C48  7F 83 E3 78 */	mr r3, r28
/* 8030CCEC 00309C4C  48 06 CB D5 */	bl GXInitLightColor
/* 8030CCF0 00309C50  7F 83 E3 78 */	mr r3, r28
/* 8030CCF4 00309C54  7F E4 FB 78 */	mr r4, r31
/* 8030CCF8 00309C58  48 06 CB D5 */	bl GXLoadLightObjImm
/* 8030CCFC 00309C5C  3C 60 80 3F */	lis r3, mLightTypes__9CGraphics@ha
/* 8030CD00 00309C60  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8030CD04 00309C64  57 A0 10 3A */	slwi r0, r29, 2
/* 8030CD08 00309C68  38 63 D9 28 */	addi r3, r3, mLightTypes__9CGraphics@l
/* 8030CD0C 00309C6C  7C 83 01 2E */	stwx r4, r3, r0
/* 8030CD10 00309C70  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8030CD14 00309C74  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8030CD18 00309C78  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8030CD1C 00309C7C  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8030CD20 00309C80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030CD24 00309C84  7C 08 03 A6 */	mtlr r0
/* 8030CD28 00309C88  38 21 00 40 */	addi r1, r1, 0x40
/* 8030CD2C 00309C8C  4E 80 00 20 */	blr

.global EnableLight__9CGraphicsF9ERglLight
EnableLight__9CGraphicsF9ERglLight:
/* 8030CD30 00309C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CD34 00309C94  7C 08 02 A6 */	mflr r0
/* 8030CD38 00309C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CD3C 00309C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CD40 00309CA0  7C 7F 1B 78 */	mr r31, r3
/* 8030CD44 00309CA4  38 60 00 01 */	li r3, 1
/* 8030CD48 00309CA8  4B FF C1 09 */	bl SetNumChans__3CGXFUc
/* 8030CD4C 00309CAC  38 00 00 01 */	li r0, 1
/* 8030CD50 00309CB0  88 6D A8 16 */	lbz r3, mLightActive__9CGraphics@sda21(r13)
/* 8030CD54 00309CB4  7C 04 F8 30 */	slw r4, r0, r31
/* 8030CD58 00309CB8  7C 60 20 39 */	and. r0, r3, r4
/* 8030CD5C 00309CBC  40 82 00 38 */	bne lbl_8030CD94
/* 8030CD60 00309CC0  7C 60 23 78 */	or r0, r3, r4
/* 8030CD64 00309CC4  38 60 00 00 */	li r3, 0
/* 8030CD68 00309CC8  98 0D A8 16 */	stb r0, mLightActive__9CGraphics@sda21(r13)
/* 8030CD6C 00309CCC  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 8030CD70 00309CD0  38 80 00 01 */	li r4, 1
/* 8030CD74 00309CD4  38 A0 00 00 */	li r5, 0
/* 8030CD78 00309CD8  38 C0 00 00 */	li r6, 0
/* 8030CD7C 00309CDC  39 00 00 02 */	li r8, 2
/* 8030CD80 00309CE0  39 20 00 01 */	li r9, 1
/* 8030CD84 00309CE4  4B FF BF 49 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 8030CD88 00309CE8  80 6D A7 DC */	lwz r3, mNumLightsActive__9CGraphics@sda21(r13)
/* 8030CD8C 00309CEC  38 03 00 01 */	addi r0, r3, 1
/* 8030CD90 00309CF0  90 0D A7 DC */	stw r0, mNumLightsActive__9CGraphics@sda21(r13)
lbl_8030CD94:
/* 8030CD94 00309CF4  88 0D A8 16 */	lbz r0, mLightActive__9CGraphics@sda21(r13)
/* 8030CD98 00309CF8  98 0D A8 17 */	stb r0, mLightsWereOn__9CGraphics@sda21(r13)
/* 8030CD9C 00309CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CDA0 00309D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CDA4 00309D04  7C 08 03 A6 */	mtlr r0
/* 8030CDA8 00309D08  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CDAC 00309D0C  4E 80 00 20 */	blr

.global ConfigureFrameBuffer__9CGraphicsFRC10COsContext
ConfigureFrameBuffer__9CGraphicsFRC10COsContext:
/* 8030CDB0 00309D10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8030CDB4 00309D14  7C 08 02 A6 */	mflr r0
/* 8030CDB8 00309D18  38 A0 00 07 */	li r5, 7
/* 8030CDBC 00309D1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8030CDC0 00309D20  BE 61 00 2C */	stmw r19, 0x2c(r1)
/* 8030CDC4 00309D24  7C 7C 1B 78 */	mr r28, r3
/* 8030CDC8 00309D28  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030CDCC 00309D2C  3B E3 65 00 */	addi r31, r3, mRenderModeObj__9CGraphics@l
/* 8030CDD0 00309D30  38 9C 00 62 */	addi r4, r28, 0x62
/* 8030CDD4 00309D34  3B DF 00 32 */	addi r30, r31, 0x32
/* 8030CDD8 00309D38  3B BF 00 1A */	addi r29, r31, 0x1a
/* 8030CDDC 00309D3C  7F C3 F3 78 */	mr r3, r30
/* 8030CDE0 00309D40  82 7C 00 30 */	lwz r19, 0x30(r28)
/* 8030CDE4 00309D44  A2 9C 00 34 */	lhz r20, 0x34(r28)
/* 8030CDE8 00309D48  A2 BC 00 36 */	lhz r21, 0x36(r28)
/* 8030CDEC 00309D4C  A2 DC 00 38 */	lhz r22, 0x38(r28)
/* 8030CDF0 00309D50  A2 FC 00 3A */	lhz r23, 0x3a(r28)
/* 8030CDF4 00309D54  A3 1C 00 3C */	lhz r24, 0x3c(r28)
/* 8030CDF8 00309D58  A3 3C 00 3E */	lhz r25, 0x3e(r28)
/* 8030CDFC 00309D5C  A3 5C 00 40 */	lhz r26, 0x40(r28)
/* 8030CE00 00309D60  83 7C 00 44 */	lwz r27, 0x44(r28)
/* 8030CE04 00309D64  89 9C 00 48 */	lbz r12, 0x48(r28)
/* 8030CE08 00309D68  89 7C 00 49 */	lbz r11, 0x49(r28)
/* 8030CE0C 00309D6C  81 5C 00 4A */	lwz r10, 0x4a(r28)
/* 8030CE10 00309D70  81 3C 00 4E */	lwz r9, 0x4e(r28)
/* 8030CE14 00309D74  81 1C 00 52 */	lwz r8, 0x52(r28)
/* 8030CE18 00309D78  80 FC 00 56 */	lwz r7, 0x56(r28)
/* 8030CE1C 00309D7C  80 DC 00 5A */	lwz r6, 0x5a(r28)
/* 8030CE20 00309D80  80 1C 00 5E */	lwz r0, 0x5e(r28)
/* 8030CE24 00309D84  92 7F 00 00 */	stw r19, 0(r31)
/* 8030CE28 00309D88  B2 9F 00 04 */	sth r20, 4(r31)
/* 8030CE2C 00309D8C  B2 BF 00 06 */	sth r21, 6(r31)
/* 8030CE30 00309D90  B2 DF 00 08 */	sth r22, 8(r31)
/* 8030CE34 00309D94  B2 FF 00 0A */	sth r23, 0xa(r31)
/* 8030CE38 00309D98  B3 1F 00 0C */	sth r24, 0xc(r31)
/* 8030CE3C 00309D9C  B3 3F 00 0E */	sth r25, 0xe(r31)
/* 8030CE40 00309DA0  B3 5F 00 10 */	sth r26, 0x10(r31)
/* 8030CE44 00309DA4  93 7F 00 14 */	stw r27, 0x14(r31)
/* 8030CE48 00309DA8  99 9F 00 18 */	stb r12, 0x18(r31)
/* 8030CE4C 00309DAC  99 7F 00 19 */	stb r11, 0x19(r31)
/* 8030CE50 00309DB0  91 5F 00 1A */	stw r10, 0x1a(r31)
/* 8030CE54 00309DB4  91 3F 00 1E */	stw r9, 0x1e(r31)
/* 8030CE58 00309DB8  91 1F 00 22 */	stw r8, 0x22(r31)
/* 8030CE5C 00309DBC  90 FF 00 26 */	stw r7, 0x26(r31)
/* 8030CE60 00309DC0  90 DF 00 2A */	stw r6, 0x2a(r31)
/* 8030CE64 00309DC4  90 1F 00 2E */	stw r0, 0x2e(r31)
/* 8030CE68 00309DC8  48 07 C8 3D */	bl __copy
/* 8030CE6C 00309DCC  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8030CE70 00309DD0  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 8030CE74 00309DD4  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8030CE78 00309DD8  38 63 65 00 */	addi r3, r3, mRenderModeObj__9CGraphics@l
/* 8030CE7C 00309DDC  90 8D A8 18 */	stw r4, mpFrameBuf1__9CGraphics@sda21(r13)
/* 8030CE80 00309DE0  90 0D A8 1C */	stw r0, mpFrameBuf2__9CGraphics@sda21(r13)
/* 8030CE84 00309DE4  48 07 B6 D1 */	bl VIConfigure
/* 8030CE88 00309DE8  80 6D A8 18 */	lwz r3, mpFrameBuf1__9CGraphics@sda21(r13)
/* 8030CE8C 00309DEC  48 07 C3 B5 */	bl VISetNextFrameBuffer
/* 8030CE90 00309DF0  A0 9F 00 04 */	lhz r4, 4(r31)
/* 8030CE94 00309DF4  3C 60 43 30 */	lis r3, 0x4330
/* 8030CE98 00309DF8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8030CE9C 00309DFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8030CEA0 00309E00  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 8030CEA4 00309E04  90 61 00 08 */	stw r3, 8(r1)
/* 8030CEA8 00309E08  80 8D A8 1C */	lwz r4, mpFrameBuf2__9CGraphics@sda21(r13)
/* 8030CEAC 00309E0C  FC 40 08 90 */	fmr f2, f1
/* 8030CEB0 00309E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CEB4 00309E14  FC A0 08 90 */	fmr f5, f1
/* 8030CEB8 00309E18  C8 82 C7 F8 */	lfd f4, lbl_805AE518@sda21(r2)
/* 8030CEBC 00309E1C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8030CEC0 00309E20  C8 61 00 08 */	lfd f3, 8(r1)
/* 8030CEC4 00309E24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030CEC8 00309E28  EC 63 20 28 */	fsubs f3, f3, f4
/* 8030CECC 00309E2C  90 8D A8 20 */	stw r4, mpCurrenFrameBuf__9CGraphics@sda21(r13)
/* 8030CED0 00309E30  EC 80 20 28 */	fsubs f4, f0, f4
/* 8030CED4 00309E34  C0 C2 C8 10 */	lfs f6, lbl_805AE530@sda21(r2)
/* 8030CED8 00309E38  48 06 F7 71 */	bl GXSetViewport
/* 8030CEDC 00309E3C  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8030CEE0 00309E40  38 60 00 00 */	li r3, 0
/* 8030CEE4 00309E44  A0 DF 00 06 */	lhz r6, 6(r31)
/* 8030CEE8 00309E48  38 80 00 00 */	li r4, 0
/* 8030CEEC 00309E4C  48 06 F7 81 */	bl GXSetScissor
/* 8030CEF0 00309E50  A0 BF 00 04 */	lhz r5, 4(r31)
/* 8030CEF4 00309E54  38 60 00 00 */	li r3, 0
/* 8030CEF8 00309E58  A0 DF 00 06 */	lhz r6, 6(r31)
/* 8030CEFC 00309E5C  38 80 00 00 */	li r4, 0
/* 8030CF00 00309E60  48 06 BE 25 */	bl GXSetDispCopySrc
/* 8030CF04 00309E64  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8030CF08 00309E68  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8030CF0C 00309E6C  48 06 BF 39 */	bl GXSetDispCopyDst
/* 8030CF10 00309E70  A0 9F 00 08 */	lhz r4, 8(r31)
/* 8030CF14 00309E74  3C 60 43 30 */	lis r3, 0x4330
/* 8030CF18 00309E78  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8030CF1C 00309E7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8030CF20 00309E80  C8 42 C7 F8 */	lfd f2, lbl_805AE518@sda21(r2)
/* 8030CF24 00309E84  90 61 00 18 */	stw r3, 0x18(r1)
/* 8030CF28 00309E88  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8030CF2C 00309E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030CF30 00309E90  EC 20 10 28 */	fsubs f1, f0, f2
/* 8030CF34 00309E94  90 61 00 20 */	stw r3, 0x20(r1)
/* 8030CF38 00309E98  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8030CF3C 00309E9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030CF40 00309EA0  EC 21 00 24 */	fdivs f1, f1, f0
/* 8030CF44 00309EA4  48 06 C1 21 */	bl GXSetDispCopyYScale
/* 8030CF48 00309EA8  88 7F 00 19 */	lbz r3, 0x19(r31)
/* 8030CF4C 00309EAC  7F A4 EB 78 */	mr r4, r29
/* 8030CF50 00309EB0  7F C6 F3 78 */	mr r6, r30
/* 8030CF54 00309EB4  38 A0 00 01 */	li r5, 1
/* 8030CF58 00309EB8  48 06 C2 3D */	bl GXSetCopyFilter
/* 8030CF5C 00309EBC  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 8030CF60 00309EC0  28 00 00 00 */	cmplwi r0, 0
/* 8030CF64 00309EC4  41 82 00 14 */	beq lbl_8030CF78
/* 8030CF68 00309EC8  38 60 00 02 */	li r3, 2
/* 8030CF6C 00309ECC  38 80 00 00 */	li r4, 0
/* 8030CF70 00309ED0  48 06 F0 55 */	bl GXSetPixelFmt
/* 8030CF74 00309ED4  48 00 00 10 */	b lbl_8030CF84
lbl_8030CF78:
/* 8030CF78 00309ED8  38 60 00 00 */	li r3, 0
/* 8030CF7C 00309EDC  38 80 00 00 */	li r4, 0
/* 8030CF80 00309EE0  48 06 F0 45 */	bl GXSetPixelFmt
lbl_8030CF84:
/* 8030CF84 00309EE4  38 60 00 00 */	li r3, 0
/* 8030CF88 00309EE8  48 06 C4 35 */	bl GXSetDispCopyGamma
/* 8030CF8C 00309EEC  80 6D A8 20 */	lwz r3, mpCurrenFrameBuf__9CGraphics@sda21(r13)
/* 8030CF90 00309EF0  38 80 00 01 */	li r4, 1
/* 8030CF94 00309EF4  48 06 C4 45 */	bl GXCopyDisp
/* 8030CF98 00309EF8  48 07 C1 79 */	bl VIFlush
/* 8030CF9C 00309EFC  48 07 B0 F1 */	bl VIWaitForRetrace
/* 8030CFA0 00309F00  48 07 B0 ED */	bl VIWaitForRetrace
/* 8030CFA4 00309F04  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 8030CFA8 00309F08  A0 9F 00 04 */	lhz r4, 4(r31)
/* 8030CFAC 00309F0C  38 63 D9 10 */	addi r3, r3, mViewport__9CGraphics@l
/* 8030CFB0 00309F10  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8030CFB4 00309F14  90 83 00 08 */	stw r4, 8(r3)
/* 8030CFB8 00309F18  90 03 00 0C */	stw r0, 0xc(r3)
/* 8030CFBC 00309F1C  48 00 00 19 */	bl InitGraphicsDefaults__9CGraphicsFv
/* 8030CFC0 00309F20  BA 61 00 2C */	lmw r19, 0x2c(r1)
/* 8030CFC4 00309F24  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8030CFC8 00309F28  7C 08 03 A6 */	mtlr r0
/* 8030CFCC 00309F2C  38 21 00 60 */	addi r1, r1, 0x60
/* 8030CFD0 00309F30  4E 80 00 20 */	blr

.global InitGraphicsDefaults__9CGraphicsFv
InitGraphicsDefaults__9CGraphicsFv:
/* 8030CFD4 00309F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CFD8 00309F38  7C 08 02 A6 */	mflr r0
/* 8030CFDC 00309F3C  C0 22 C7 F0 */	lfs f1, lbl_805AE510@sda21(r2)
/* 8030CFE0 00309F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CFE4 00309F44  C0 42 C8 10 */	lfs f2, lbl_805AE530@sda21(r2)
/* 8030CFE8 00309F48  4B FF D3 F9 */	bl SetDepthRange__9CGraphicsFff
/* 8030CFEC 00309F4C  38 00 00 00 */	li r0, 0
/* 8030CFF0 00309F50  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030CFF4 00309F54  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030CFF8 00309F58  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030CFFC 00309F5C  4B FF F5 E5 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 8030D000 00309F60  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 8030D004 00309F64  38 63 61 D4 */	addi r3, r3, mViewMatrix__9CGraphics@l
/* 8030D008 00309F68  4B FF F7 45 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 8030D00C 00309F6C  80 8D 9C 70 */	lwz r4, mDepthFunc__9CGraphics@sda21(r13)
/* 8030D010 00309F70  38 60 00 00 */	li r3, 0
/* 8030D014 00309F74  38 A0 00 00 */	li r5, 0
/* 8030D018 00309F78  4B FF EA 7D */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 8030D01C 00309F7C  80 6D A7 D8 */	lwz r3, mCullMode__9CGraphics@sda21(r13)
/* 8030D020 00309F80  4B FF EA 51 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 8030D024 00309F84  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 8030D028 00309F88  38 C3 D9 10 */	addi r6, r3, mViewport__9CGraphics@l
/* 8030D02C 00309F8C  80 66 00 00 */	lwz r3, 0(r6)
/* 8030D030 00309F90  80 86 00 04 */	lwz r4, 4(r6)
/* 8030D034 00309F94  80 A6 00 08 */	lwz r5, 8(r6)
/* 8030D038 00309F98  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 8030D03C 00309F9C  4B FF F0 55 */	bl SetViewport__9CGraphicsFiiii
/* 8030D040 00309FA0  4B FF CE 29 */	bl FlushProjection__9CGraphicsFv
/* 8030D044 00309FA4  4B FF C0 35 */	bl Init__13CTevCombinersFv
/* 8030D048 00309FA8  4B FF F9 35 */	bl DisableAllLights__9CGraphicsFv
/* 8030D04C 00309FAC  4B FF D0 89 */	bl SetDefaultVtxAttrFmt__9CGraphicsFv
/* 8030D050 00309FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D054 00309FB4  7C 08 03 A6 */	mtlr r0
/* 8030D058 00309FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D05C 00309FBC  4E 80 00 20 */	blr

.global Shutdown__9CGraphicsFv
Shutdown__9CGraphicsFv:
/* 8030D060 00309FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030D064 00309FC4  7C 08 02 A6 */	mflr r0
/* 8030D068 00309FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D06C 00309FCC  80 6D A8 30 */	lwz r3, mGXDefaultTexRegionCallback__9CGraphics@sda21(r13)
/* 8030D070 00309FD0  48 06 D8 19 */	bl GXSetTexRegionCallback
/* 8030D074 00309FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D078 00309FD8  7C 08 03 A6 */	mtlr r0
/* 8030D07C 00309FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D080 00309FE0  4E 80 00 20 */	blr

.global InitGraphicsVariables__9CGraphicsFv
InitGraphicsVariables__9CGraphicsFv:
/* 8030D084 00309FE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8030D088 00309FE8  7C 08 02 A6 */	mflr r0
/* 8030D08C 00309FEC  3C 60 80 3F */	lis r3, mLightTypes__9CGraphics@ha
/* 8030D090 00309FF0  38 E0 00 02 */	li r7, 2
/* 8030D094 00309FF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8030D098 00309FF8  38 C3 D9 28 */	addi r6, r3, mLightTypes__9CGraphics@l
/* 8030D09C 00309FFC  38 00 00 00 */	li r0, 0
/* 8030D0A0 0030A000  38 60 00 00 */	li r3, 0
/* 8030D0A4 0030A004  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8030D0A8 0030A008  38 A0 00 00 */	li r5, 0
/* 8030D0AC 0030A00C  90 E6 00 00 */	stw r7, 0(r6)
/* 8030D0B0 0030A010  80 8D 9C 70 */	lwz r4, mDepthFunc__9CGraphics@sda21(r13)
/* 8030D0B4 0030A014  90 E6 00 04 */	stw r7, 4(r6)
/* 8030D0B8 0030A018  90 E6 00 08 */	stw r7, 8(r6)
/* 8030D0BC 0030A01C  90 E6 00 0C */	stw r7, 0xc(r6)
/* 8030D0C0 0030A020  90 E6 00 10 */	stw r7, 0x10(r6)
/* 8030D0C4 0030A024  90 E6 00 14 */	stw r7, 0x14(r6)
/* 8030D0C8 0030A028  90 E6 00 18 */	stw r7, 0x18(r6)
/* 8030D0CC 0030A02C  90 E6 00 1C */	stw r7, 0x1c(r6)
/* 8030D0D0 0030A030  98 0D A8 16 */	stb r0, mLightActive__9CGraphics@sda21(r13)
/* 8030D0D4 0030A034  4B FF E9 C1 */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 8030D0D8 0030A038  38 60 00 00 */	li r3, 0
/* 8030D0DC 0030A03C  4B FF E9 95 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 8030D0E0 0030A040  C0 22 C8 30 */	lfs f1, lbl_805AE550@sda21(r2)
/* 8030D0E4 0030A044  38 61 00 08 */	addi r3, r1, 8
/* 8030D0E8 0030A048  C0 82 C8 10 */	lfs f4, lbl_805AE530@sda21(r2)
/* 8030D0EC 0030A04C  FC 40 08 90 */	fmr f2, f1
/* 8030D0F0 0030A050  FC 60 08 90 */	fmr f3, f1
/* 8030D0F4 0030A054  48 05 62 F9 */	bl __ct__6CColorFffff
/* 8030D0F8 0030A058  4B FF EF 25 */	bl SetAmbientColor__9CGraphicsFRC6CColor
/* 8030D0FC 0030A05C  38 00 00 00 */	li r0, 0
/* 8030D100 0030A060  98 0D 9C 80 */	stb r0, mIsGXModelMatrixIdentity__9CGraphics@sda21(r13)
/* 8030D104 0030A064  4B FF F5 C1 */	bl SetIdentityViewPointMatrix__9CGraphicsFv
/* 8030D108 0030A068  4B FF F4 91 */	bl SetIdentityModelMatrix__9CGraphicsFv
/* 8030D10C 0030A06C  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 8030D110 0030A070  38 60 00 00 */	li r3, 0
/* 8030D114 0030A074  3B E4 D9 10 */	addi r31, r4, mViewport__9CGraphics@l
/* 8030D118 0030A078  38 80 00 00 */	li r4, 0
/* 8030D11C 0030A07C  80 BF 00 08 */	lwz r5, 8(r31)
/* 8030D120 0030A080  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8030D124 0030A084  4B FF EF 6D */	bl SetViewport__9CGraphicsFiiii
/* 8030D128 0030A088  80 BF 00 08 */	lwz r5, 8(r31)
/* 8030D12C 0030A08C  3C 80 43 30 */	lis r4, 0x4330
/* 8030D130 0030A090  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8030D134 0030A094  3C 60 80 5A */	lis r3, mProj__9CGraphics@ha
/* 8030D138 0030A098  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8030D13C 0030A09C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8030D140 0030A0A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030D144 0030A0A4  38 63 61 B8 */	addi r3, r3, mProj__9CGraphics@l
/* 8030D148 0030A0A8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8030D14C 0030A0AC  C8 A2 C7 E8 */	lfd f5, lbl_805AE508@sda21(r2)
/* 8030D150 0030A0B0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8030D154 0030A0B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8030D158 0030A0B8  EC 40 28 28 */	fsubs f2, f0, f5
/* 8030D15C 0030A0BC  C0 22 C7 F4 */	lfs f1, lbl_805AE514@sda21(r2)
/* 8030D160 0030A0C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8030D164 0030A0C4  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 8030D168 0030A0C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8030D16C 0030A0CC  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 8030D170 0030A0D0  EC 00 28 28 */	fsubs f0, f0, f5
/* 8030D174 0030A0D4  EC 42 00 24 */	fdivs f2, f2, f0
/* 8030D178 0030A0D8  4B FF F3 19 */	bl SetPerspective__9CGraphicsFffff
/* 8030D17C 0030A0DC  C0 22 C8 10 */	lfs f1, lbl_805AE530@sda21(r2)
/* 8030D180 0030A0E0  38 6D A7 F8 */	addi r3, r13, mClearColor__9CGraphics@sda21
/* 8030D184 0030A0E4  4B FF EE 45 */	bl SetCopyClear__9CGraphicsFRC6CColorf
/* 8030D188 0030A0E8  80 02 C7 AC */	lwz r0, lbl_805AE4CC@sda21(r2)
/* 8030D18C 0030A0EC  38 81 00 0C */	addi r4, r1, 0xc
/* 8030D190 0030A0F0  38 60 00 00 */	li r3, 0
/* 8030D194 0030A0F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030D198 0030A0F8  4B FF BB C5 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 8030D19C 0030A0FC  38 6D A7 B8 */	addi r3, r13, sRenderState__9CGraphics@sda21
/* 8030D1A0 0030A100  4B FF C1 59 */	bl ResetFlushAll__Q29CGraphics12CRenderStateFv
/* 8030D1A4 0030A104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8030D1A8 0030A108  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8030D1AC 0030A10C  7C 08 03 A6 */	mtlr r0
/* 8030D1B0 0030A110  38 21 00 30 */	addi r1, r1, 0x30
/* 8030D1B4 0030A114  4E 80 00 20 */	blr

.global TexRegionCallback__9CGraphicsFPC9_GXTexObj11_GXTexMapID
TexRegionCallback__9CGraphicsFPC9_GXTexObj11_GXTexMapID:
/* 8030D1B8 0030A118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030D1BC 0030A11C  7C 08 02 A6 */	mflr r0
/* 8030D1C0 0030A120  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030D1C4 0030A124  88 0D A8 58 */	lbz r0, "init$2337"@sda21(r13)
/* 8030D1C8 0030A128  7C 00 07 75 */	extsb. r0, r0
/* 8030D1CC 0030A12C  40 82 00 14 */	bne lbl_8030D1E0
/* 8030D1D0 0030A130  38 A0 00 00 */	li r5, 0
/* 8030D1D4 0030A134  38 00 00 01 */	li r0, 1
/* 8030D1D8 0030A138  90 AD A8 54 */	stw r5, "nextTexRgn$2336"@sda21(r13)
/* 8030D1DC 0030A13C  98 0D A8 58 */	stb r0, "init$2337"@sda21(r13)
lbl_8030D1E0:
/* 8030D1E0 0030A140  88 0D A8 60 */	lbz r0, "init$2340"@sda21(r13)
/* 8030D1E4 0030A144  7C 00 07 75 */	extsb. r0, r0
/* 8030D1E8 0030A148  40 82 00 14 */	bne lbl_8030D1FC
/* 8030D1EC 0030A14C  38 A0 00 00 */	li r5, 0
/* 8030D1F0 0030A150  38 00 00 01 */	li r0, 1
/* 8030D1F4 0030A154  90 AD A8 5C */	stw r5, "nextTexRgnCI$2339"@sda21(r13)
/* 8030D1F8 0030A158  98 0D A8 60 */	stb r0, "init$2340"@sda21(r13)
lbl_8030D1FC:
/* 8030D1FC 0030A15C  2C 04 00 07 */	cmpwi r4, 7
/* 8030D200 0030A160  40 82 00 10 */	bne lbl_8030D210
/* 8030D204 0030A164  3C 60 80 5A */	lis r3, mTexRegions__9CGraphics@ha
/* 8030D208 0030A168  38 63 64 40 */	addi r3, r3, mTexRegions__9CGraphics@l
/* 8030D20C 0030A16C  48 00 00 70 */	b lbl_8030D27C
lbl_8030D210:
/* 8030D210 0030A170  48 06 D0 E5 */	bl GXGetTexObjFmt
/* 8030D214 0030A174  2C 03 00 08 */	cmpwi r3, 8
/* 8030D218 0030A178  41 82 00 48 */	beq lbl_8030D260
/* 8030D21C 0030A17C  2C 03 00 09 */	cmpwi r3, 9
/* 8030D220 0030A180  41 82 00 40 */	beq lbl_8030D260
/* 8030D224 0030A184  2C 03 00 0A */	cmpwi r3, 0xa
/* 8030D228 0030A188  41 82 00 38 */	beq lbl_8030D260
/* 8030D22C 0030A18C  80 6D A8 54 */	lwz r3, "nextTexRgn$2336"@sda21(r13)
/* 8030D230 0030A190  2C 03 00 00 */	cmpwi r3, 0
/* 8030D234 0030A194  40 82 00 0C */	bne lbl_8030D240
/* 8030D238 0030A198  38 03 00 01 */	addi r0, r3, 1
/* 8030D23C 0030A19C  90 0D A8 54 */	stw r0, "nextTexRgn$2336"@sda21(r13)
lbl_8030D240:
/* 8030D240 0030A1A0  80 AD A8 54 */	lwz r5, "nextTexRgn$2336"@sda21(r13)
/* 8030D244 0030A1A4  3C 60 80 5A */	lis r3, mTexRegions__9CGraphics@ha
/* 8030D248 0030A1A8  38 03 64 40 */	addi r0, r3, mTexRegions__9CGraphics@l
/* 8030D24C 0030A1AC  38 85 00 01 */	addi r4, r5, 1
/* 8030D250 0030A1B0  54 A3 26 76 */	rlwinm r3, r5, 4, 0x19, 0x1b
/* 8030D254 0030A1B4  90 8D A8 54 */	stw r4, "nextTexRgn$2336"@sda21(r13)
/* 8030D258 0030A1B8  7C 60 1A 14 */	add r3, r0, r3
/* 8030D25C 0030A1BC  48 00 00 20 */	b lbl_8030D27C
lbl_8030D260:
/* 8030D260 0030A1C0  80 AD A8 5C */	lwz r5, "nextTexRgnCI$2339"@sda21(r13)
/* 8030D264 0030A1C4  3C 60 80 5A */	lis r3, mTexRegionsCI__9CGraphics@ha
/* 8030D268 0030A1C8  38 03 64 C0 */	addi r0, r3, mTexRegionsCI__9CGraphics@l
/* 8030D26C 0030A1CC  38 85 00 01 */	addi r4, r5, 1
/* 8030D270 0030A1D0  54 A3 26 B6 */	rlwinm r3, r5, 4, 0x1a, 0x1b
/* 8030D274 0030A1D4  90 8D A8 5C */	stw r4, "nextTexRgnCI$2339"@sda21(r13)
/* 8030D278 0030A1D8  7C 60 1A 14 */	add r3, r0, r3
lbl_8030D27C:
/* 8030D27C 0030A1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030D280 0030A1E0  7C 08 03 A6 */	mtlr r0
/* 8030D284 0030A1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8030D288 0030A1E8  4E 80 00 20 */	blr

.global Startup__9CGraphicsFRC10COsContextUiPv
Startup__9CGraphicsFRC10COsContextUiPv:
/* 8030D28C 0030A1EC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8030D290 0030A1F0  7C 08 02 A6 */	mflr r0
/* 8030D294 0030A1F4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8030D298 0030A1F8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8030D29C 0030A1FC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8030D2A0 0030A200  7C 7E 1B 78 */	mr r30, r3
/* 8030D2A4 0030A204  7C A3 2B 78 */	mr r3, r5
/* 8030D2A8 0030A208  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8030D2AC 0030A20C  93 81 00 90 */	stw r28, 0x90(r1)
/* 8030D2B0 0030A210  7C 9C 23 78 */	mr r28, r4
/* 8030D2B4 0030A214  7F 9D E3 78 */	mr r29, r28
/* 8030D2B8 0030A218  90 AD A8 34 */	stw r5, mpFifo__9CGraphics@sda21(r13)
/* 8030D2BC 0030A21C  48 06 7E 91 */	bl GXInit
/* 8030D2C0 0030A220  90 6D A8 38 */	stw r3, mpFifoObj__9CGraphics@sda21(r13)
/* 8030D2C4 0030A224  7F A5 EB 78 */	mr r5, r29
/* 8030D2C8 0030A228  80 8D A8 34 */	lwz r4, mpFifo__9CGraphics@sda21(r13)
/* 8030D2CC 0030A22C  38 61 00 08 */	addi r3, r1, 8
/* 8030D2D0 0030A230  48 06 90 E1 */	bl GXInitFifoBase
/* 8030D2D4 0030A234  38 61 00 08 */	addi r3, r1, 8
/* 8030D2D8 0030A238  48 06 91 C1 */	bl GXSetCPUFifo
/* 8030D2DC 0030A23C  38 61 00 08 */	addi r3, r1, 8
/* 8030D2E0 0030A240  48 06 92 C9 */	bl GXSetGPFifo
/* 8030D2E4 0030A244  80 6D A8 38 */	lwz r3, mpFifoObj__9CGraphics@sda21(r13)
/* 8030D2E8 0030A248  38 9C C0 00 */	addi r4, r28, -16384
/* 8030D2EC 0030A24C  3C BC FF FF */	addis r5, r28, 0xffff
/* 8030D2F0 0030A250  48 06 91 9D */	bl GXInitFifoLimits
/* 8030D2F4 0030A254  80 6D A8 38 */	lwz r3, mpFifoObj__9CGraphics@sda21(r13)
/* 8030D2F8 0030A258  48 06 91 A1 */	bl GXSetCPUFifo
/* 8030D2FC 0030A25C  80 6D A8 38 */	lwz r3, mpFifoObj__9CGraphics@sda21(r13)
/* 8030D300 0030A260  48 06 92 A9 */	bl GXSetGPFifo
/* 8030D304 0030A264  38 60 00 01 */	li r3, 1
/* 8030D308 0030A268  38 80 00 08 */	li r4, 8
/* 8030D30C 0030A26C  48 06 AF 99 */	bl GXSetMisc
/* 8030D310 0030A270  38 60 00 00 */	li r3, 0
/* 8030D314 0030A274  48 06 ED 99 */	bl GXSetDither
/* 8030D318 0030A278  4B FF AD ED */	bl ResetGXStates__3CGXFv
/* 8030D31C 0030A27C  4B FF FD 69 */	bl InitGraphicsVariables__9CGraphicsFv
/* 8030D320 0030A280  7F C3 F3 78 */	mr r3, r30
/* 8030D324 0030A284  4B FF FA 8D */	bl ConfigureFrameBuffer__9CGraphicsFRC10COsContext
/* 8030D328 0030A288  3C 60 80 5A */	lis r3, mTexRegions__9CGraphics@ha
/* 8030D32C 0030A28C  3B 80 00 00 */	li r28, 0
/* 8030D330 0030A290  3B A3 64 40 */	addi r29, r3, mTexRegions__9CGraphics@l
/* 8030D334 0030A294  3F E0 00 08 */	lis r31, 8
/* 8030D338 0030A298  3B C0 00 00 */	li r30, 0
lbl_8030D33C:
/* 8030D33C 0030A29C  7F A3 EB 78 */	mr r3, r29
/* 8030D340 0030A2A0  7F C5 F3 78 */	mr r5, r30
/* 8030D344 0030A2A4  7F E7 FB 78 */	mr r7, r31
/* 8030D348 0030A2A8  38 80 00 00 */	li r4, 0
/* 8030D34C 0030A2AC  38 C0 00 00 */	li r6, 0
/* 8030D350 0030A2B0  39 00 00 00 */	li r8, 0
/* 8030D354 0030A2B4  48 06 D2 79 */	bl GXInitTexCacheRegion
/* 8030D358 0030A2B8  3B 9C 00 01 */	addi r28, r28, 1
/* 8030D35C 0030A2BC  3F FF 00 01 */	addis r31, r31, 1
/* 8030D360 0030A2C0  2C 1C 00 08 */	cmpwi r28, 8
/* 8030D364 0030A2C4  3F DE 00 01 */	addis r30, r30, 1
/* 8030D368 0030A2C8  3B DE 80 00 */	addi r30, r30, -32768
/* 8030D36C 0030A2CC  3B BD 00 10 */	addi r29, r29, 0x10
/* 8030D370 0030A2D0  3B FF 80 00 */	addi r31, r31, -32768
/* 8030D374 0030A2D4  41 80 FF C8 */	blt lbl_8030D33C
/* 8030D378 0030A2D8  3C 60 80 5A */	lis r3, mTexRegionsCI__9CGraphics@ha
/* 8030D37C 0030A2DC  3B 80 00 00 */	li r28, 0
/* 8030D380 0030A2E0  3B E3 64 C0 */	addi r31, r3, mTexRegionsCI__9CGraphics@l
/* 8030D384 0030A2E4  3B A0 00 09 */	li r29, 9
/* 8030D388 0030A2E8  3B C0 00 08 */	li r30, 8
lbl_8030D38C:
/* 8030D38C 0030A2EC  7F E3 FB 78 */	mr r3, r31
/* 8030D390 0030A2F0  57 C5 78 20 */	slwi r5, r30, 0xf
/* 8030D394 0030A2F4  57 A7 78 20 */	slwi r7, r29, 0xf
/* 8030D398 0030A2F8  38 80 00 00 */	li r4, 0
/* 8030D39C 0030A2FC  38 C0 00 00 */	li r6, 0
/* 8030D3A0 0030A300  39 00 00 00 */	li r8, 0
/* 8030D3A4 0030A304  48 06 D2 29 */	bl GXInitTexCacheRegion
/* 8030D3A8 0030A308  3B 9C 00 01 */	addi r28, r28, 1
/* 8030D3AC 0030A30C  3B DE 00 02 */	addi r30, r30, 2
/* 8030D3B0 0030A310  2C 1C 00 04 */	cmpwi r28, 4
/* 8030D3B4 0030A314  3B FF 00 10 */	addi r31, r31, 0x10
/* 8030D3B8 0030A318  3B BD 00 02 */	addi r29, r29, 2
/* 8030D3BC 0030A31C  41 80 FF D0 */	blt lbl_8030D38C
/* 8030D3C0 0030A320  3C 60 80 31 */	lis r3, TexRegionCallback__9CGraphicsFPC9_GXTexObj11_GXTexMapID@ha
/* 8030D3C4 0030A324  38 63 D1 B8 */	addi r3, r3, TexRegionCallback__9CGraphicsFPC9_GXTexObj11_GXTexMapID@l
/* 8030D3C8 0030A328  48 06 D4 C1 */	bl GXSetTexRegionCallback
/* 8030D3CC 0030A32C  3C A0 00 04 */	lis r5, 0x00046000@ha
/* 8030D3D0 0030A330  3C 80 80 48 */	lis r4, sSpareFrameBuffer@ha
/* 8030D3D4 0030A334  38 A5 60 00 */	addi r5, r5, 0x00046000@l
/* 8030D3D8 0030A338  3C 00 00 01 */	lis r0, 1
/* 8030D3DC 0030A33C  38 84 9C C0 */	addi r4, r4, sSpareFrameBuffer@l
/* 8030D3E0 0030A340  90 6D A8 30 */	stw r3, mGXDefaultTexRegionCallback__9CGraphics@sda21(r13)
/* 8030D3E4 0030A344  38 60 00 01 */	li r3, 1
/* 8030D3E8 0030A348  90 AD A8 24 */	stw r5, mSpareBufferSize__9CGraphics@sda21(r13)
/* 8030D3EC 0030A34C  90 8D A8 28 */	stw r4, mpSpareBuffer__9CGraphics@sda21(r13)
/* 8030D3F0 0030A350  90 0D A8 2C */	stw r0, mSpareBufferTexCacheSize__9CGraphics@sda21(r13)
/* 8030D3F4 0030A354  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8030D3F8 0030A358  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8030D3FC 0030A35C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8030D400 0030A360  83 81 00 90 */	lwz r28, 0x90(r1)
/* 8030D404 0030A364  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8030D408 0030A368  7C 08 03 A6 */	mtlr r0
/* 8030D40C 0030A36C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8030D410 0030A370  4E 80 00 20 */	blr

.global __sinit_DolphinCGraphics_cpp
__sinit_DolphinCGraphics_cpp:
/* 8030D414 0030A374  94 21 FB E0 */	stwu r1, -0x420(r1)
/* 8030D418 0030A378  7C 08 02 A6 */	mflr r0
/* 8030D41C 0030A37C  90 01 04 24 */	stw r0, 0x424(r1)
/* 8030D420 0030A380  48 07 7F 89 */	bl OSGetTime
/* 8030D424 0030A384  38 00 00 00 */	li r0, 0
/* 8030D428 0030A388  38 A0 00 01 */	li r5, 1
/* 8030D42C 0030A38C  90 8D A7 B4 */	stw r4, sFPSTimer+4@sda21(r13)
/* 8030D430 0030A390  38 80 00 07 */	li r4, 7
/* 8030D434 0030A394  90 6D A7 B0 */	stw r3, sFPSTimer@sda21(r13)
/* 8030D438 0030A398  38 61 01 28 */	addi r3, r1, 0x128
/* 8030D43C 0030A39C  98 A1 03 F0 */	stb r5, 0x3f0(r1)
/* 8030D440 0030A3A0  90 01 03 F4 */	stw r0, 0x3f4(r1)
/* 8030D444 0030A3A4  90 01 03 F8 */	stw r0, 0x3f8(r1)
/* 8030D448 0030A3A8  90 01 03 FC */	stw r0, 0x3fc(r1)
/* 8030D44C 0030A3AC  90 01 04 00 */	stw r0, 0x400(r1)
/* 8030D450 0030A3B0  98 A1 04 04 */	stb r5, 0x404(r1)
/* 8030D454 0030A3B4  90 01 04 08 */	stw r0, 0x408(r1)
/* 8030D458 0030A3B8  90 01 04 0C */	stw r0, 0x40c(r1)
/* 8030D45C 0030A3BC  90 01 04 10 */	stw r0, 0x410(r1)
/* 8030D460 0030A3C0  90 01 04 14 */	stw r0, 0x414(r1)
/* 8030D464 0030A3C4  4B FF BC C9 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D468 0030A3C8  38 61 01 2C */	addi r3, r1, 0x12c
/* 8030D46C 0030A3CC  38 80 00 01 */	li r4, 1
/* 8030D470 0030A3D0  4B FF BC BD */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D474 0030A3D4  38 61 01 30 */	addi r3, r1, 0x130
/* 8030D478 0030A3D8  38 80 00 05 */	li r4, 5
/* 8030D47C 0030A3DC  4B FF BC B1 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D480 0030A3E0  38 61 01 34 */	addi r3, r1, 0x134
/* 8030D484 0030A3E4  38 80 00 07 */	li r4, 7
/* 8030D488 0030A3E8  4B FF BC A5 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D48C 0030A3EC  80 E1 01 34 */	lwz r7, 0x134(r1)
/* 8030D490 0030A3F0  38 61 01 38 */	addi r3, r1, 0x138
/* 8030D494 0030A3F4  80 C1 01 30 */	lwz r6, 0x130(r1)
/* 8030D498 0030A3F8  38 80 00 0F */	li r4, 0xf
/* 8030D49C 0030A3FC  80 A1 01 2C */	lwz r5, 0x12c(r1)
/* 8030D4A0 0030A400  80 01 01 28 */	lwz r0, 0x128(r1)
/* 8030D4A4 0030A404  90 E1 02 68 */	stw r7, 0x268(r1)
/* 8030D4A8 0030A408  90 C1 02 6C */	stw r6, 0x26c(r1)
/* 8030D4AC 0030A40C  90 A1 02 70 */	stw r5, 0x270(r1)
/* 8030D4B0 0030A410  90 01 02 74 */	stw r0, 0x274(r1)
/* 8030D4B4 0030A414  4B FF BC 71 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D4B8 0030A418  38 61 01 3C */	addi r3, r1, 0x13c
/* 8030D4BC 0030A41C  38 80 00 02 */	li r4, 2
/* 8030D4C0 0030A420  4B FF BC 65 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D4C4 0030A424  38 61 01 40 */	addi r3, r1, 0x140
/* 8030D4C8 0030A428  38 80 00 0A */	li r4, 0xa
/* 8030D4CC 0030A42C  4B FF BC 59 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D4D0 0030A430  38 61 01 44 */	addi r3, r1, 0x144
/* 8030D4D4 0030A434  38 80 00 0F */	li r4, 0xf
/* 8030D4D8 0030A438  4B FF BC 4D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D4DC 0030A43C  80 A1 01 44 */	lwz r5, 0x144(r1)
/* 8030D4E0 0030A440  3C 60 80 5A */	lis r3, kEnvModulateConstColor__9CGraphics@ha
/* 8030D4E4 0030A444  81 21 01 40 */	lwz r9, 0x140(r1)
/* 8030D4E8 0030A448  38 63 56 98 */	addi r3, r3, kEnvModulateConstColor__9CGraphics@l
/* 8030D4EC 0030A44C  81 01 01 3C */	lwz r8, 0x13c(r1)
/* 8030D4F0 0030A450  38 81 02 78 */	addi r4, r1, 0x278
/* 8030D4F4 0030A454  80 01 01 38 */	lwz r0, 0x138(r1)
/* 8030D4F8 0030A458  38 C1 04 04 */	addi r6, r1, 0x404
/* 8030D4FC 0030A45C  90 A1 02 78 */	stw r5, 0x278(r1)
/* 8030D500 0030A460  38 A1 02 68 */	addi r5, r1, 0x268
/* 8030D504 0030A464  38 E1 03 F0 */	addi r7, r1, 0x3f0
/* 8030D508 0030A468  91 21 02 7C */	stw r9, 0x27c(r1)
/* 8030D50C 0030A46C  91 01 02 80 */	stw r8, 0x280(r1)
/* 8030D510 0030A470  90 01 02 84 */	stw r0, 0x284(r1)
/* 8030D514 0030A474  4B FF BD 41 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D518 0030A478  38 00 00 00 */	li r0, 0
/* 8030D51C 0030A47C  38 A0 00 01 */	li r5, 1
/* 8030D520 0030A480  98 A1 03 C8 */	stb r5, 0x3c8(r1)
/* 8030D524 0030A484  38 61 01 08 */	addi r3, r1, 0x108
/* 8030D528 0030A488  38 80 00 01 */	li r4, 1
/* 8030D52C 0030A48C  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8030D530 0030A490  90 01 03 D0 */	stw r0, 0x3d0(r1)
/* 8030D534 0030A494  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8030D538 0030A498  90 01 03 D8 */	stw r0, 0x3d8(r1)
/* 8030D53C 0030A49C  98 A1 03 DC */	stb r5, 0x3dc(r1)
/* 8030D540 0030A4A0  90 01 03 E0 */	stw r0, 0x3e0(r1)
/* 8030D544 0030A4A4  90 01 03 E4 */	stw r0, 0x3e4(r1)
/* 8030D548 0030A4A8  90 01 03 E8 */	stw r0, 0x3e8(r1)
/* 8030D54C 0030A4AC  90 01 03 EC */	stw r0, 0x3ec(r1)
/* 8030D550 0030A4B0  4B FF BB DD */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D554 0030A4B4  38 61 01 0C */	addi r3, r1, 0x10c
/* 8030D558 0030A4B8  38 80 00 07 */	li r4, 7
/* 8030D55C 0030A4BC  4B FF BB D1 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D560 0030A4C0  38 61 01 10 */	addi r3, r1, 0x110
/* 8030D564 0030A4C4  38 80 00 07 */	li r4, 7
/* 8030D568 0030A4C8  4B FF BB C5 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D56C 0030A4CC  38 61 01 14 */	addi r3, r1, 0x114
/* 8030D570 0030A4D0  38 80 00 07 */	li r4, 7
/* 8030D574 0030A4D4  4B FF BB B9 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D578 0030A4D8  80 E1 01 14 */	lwz r7, 0x114(r1)
/* 8030D57C 0030A4DC  38 61 01 18 */	addi r3, r1, 0x118
/* 8030D580 0030A4E0  80 C1 01 10 */	lwz r6, 0x110(r1)
/* 8030D584 0030A4E4  38 80 00 02 */	li r4, 2
/* 8030D588 0030A4E8  80 A1 01 0C */	lwz r5, 0x10c(r1)
/* 8030D58C 0030A4EC  80 01 01 08 */	lwz r0, 0x108(r1)
/* 8030D590 0030A4F0  90 E1 02 48 */	stw r7, 0x248(r1)
/* 8030D594 0030A4F4  90 C1 02 4C */	stw r6, 0x24c(r1)
/* 8030D598 0030A4F8  90 A1 02 50 */	stw r5, 0x250(r1)
/* 8030D59C 0030A4FC  90 01 02 54 */	stw r0, 0x254(r1)
/* 8030D5A0 0030A500  4B FF BB 85 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D5A4 0030A504  38 61 01 1C */	addi r3, r1, 0x11c
/* 8030D5A8 0030A508  38 80 00 0F */	li r4, 0xf
/* 8030D5AC 0030A50C  4B FF BB 79 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D5B0 0030A510  38 61 01 20 */	addi r3, r1, 0x120
/* 8030D5B4 0030A514  38 80 00 0F */	li r4, 0xf
/* 8030D5B8 0030A518  4B FF BB 6D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D5BC 0030A51C  38 61 01 24 */	addi r3, r1, 0x124
/* 8030D5C0 0030A520  38 80 00 0F */	li r4, 0xf
/* 8030D5C4 0030A524  4B FF BB 61 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D5C8 0030A528  80 A1 01 24 */	lwz r5, 0x124(r1)
/* 8030D5CC 0030A52C  3C 60 80 5A */	lis r3, kEnvConstColor__9CGraphics@ha
/* 8030D5D0 0030A530  81 21 01 20 */	lwz r9, 0x120(r1)
/* 8030D5D4 0030A534  38 63 5E 70 */	addi r3, r3, kEnvConstColor__9CGraphics@l
/* 8030D5D8 0030A538  81 01 01 1C */	lwz r8, 0x11c(r1)
/* 8030D5DC 0030A53C  38 81 02 58 */	addi r4, r1, 0x258
/* 8030D5E0 0030A540  80 01 01 18 */	lwz r0, 0x118(r1)
/* 8030D5E4 0030A544  38 C1 03 DC */	addi r6, r1, 0x3dc
/* 8030D5E8 0030A548  90 A1 02 58 */	stw r5, 0x258(r1)
/* 8030D5EC 0030A54C  38 A1 02 48 */	addi r5, r1, 0x248
/* 8030D5F0 0030A550  38 E1 03 C8 */	addi r7, r1, 0x3c8
/* 8030D5F4 0030A554  91 21 02 5C */	stw r9, 0x25c(r1)
/* 8030D5F8 0030A558  91 01 02 60 */	stw r8, 0x260(r1)
/* 8030D5FC 0030A55C  90 01 02 64 */	stw r0, 0x264(r1)
/* 8030D600 0030A560  4B FF BC 55 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D604 0030A564  38 00 00 00 */	li r0, 0
/* 8030D608 0030A568  38 A0 00 01 */	li r5, 1
/* 8030D60C 0030A56C  98 A1 03 A0 */	stb r5, 0x3a0(r1)
/* 8030D610 0030A570  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8030D614 0030A574  38 80 00 07 */	li r4, 7
/* 8030D618 0030A578  90 01 03 A4 */	stw r0, 0x3a4(r1)
/* 8030D61C 0030A57C  90 01 03 A8 */	stw r0, 0x3a8(r1)
/* 8030D620 0030A580  90 01 03 AC */	stw r0, 0x3ac(r1)
/* 8030D624 0030A584  90 01 03 B0 */	stw r0, 0x3b0(r1)
/* 8030D628 0030A588  98 A1 03 B4 */	stb r5, 0x3b4(r1)
/* 8030D62C 0030A58C  90 01 03 B8 */	stw r0, 0x3b8(r1)
/* 8030D630 0030A590  90 01 03 BC */	stw r0, 0x3bc(r1)
/* 8030D634 0030A594  90 01 03 C0 */	stw r0, 0x3c0(r1)
/* 8030D638 0030A598  90 01 03 C4 */	stw r0, 0x3c4(r1)
/* 8030D63C 0030A59C  4B FF BA F1 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D640 0030A5A0  38 61 00 EC */	addi r3, r1, 0xec
/* 8030D644 0030A5A4  38 80 00 04 */	li r4, 4
/* 8030D648 0030A5A8  4B FF BA E5 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D64C 0030A5AC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8030D650 0030A5B0  38 80 00 05 */	li r4, 5
/* 8030D654 0030A5B4  4B FF BA D9 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D658 0030A5B8  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8030D65C 0030A5BC  38 80 00 07 */	li r4, 7
/* 8030D660 0030A5C0  4B FF BA CD */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D664 0030A5C4  80 E1 00 F4 */	lwz r7, 0xf4(r1)
/* 8030D668 0030A5C8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8030D66C 0030A5CC  80 C1 00 F0 */	lwz r6, 0xf0(r1)
/* 8030D670 0030A5D0  38 80 00 0F */	li r4, 0xf
/* 8030D674 0030A5D4  80 A1 00 EC */	lwz r5, 0xec(r1)
/* 8030D678 0030A5D8  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 8030D67C 0030A5DC  90 E1 02 28 */	stw r7, 0x228(r1)
/* 8030D680 0030A5E0  90 C1 02 2C */	stw r6, 0x22c(r1)
/* 8030D684 0030A5E4  90 A1 02 30 */	stw r5, 0x230(r1)
/* 8030D688 0030A5E8  90 01 02 34 */	stw r0, 0x234(r1)
/* 8030D68C 0030A5EC  4B FF BA 99 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D690 0030A5F0  38 61 00 FC */	addi r3, r1, 0xfc
/* 8030D694 0030A5F4  38 80 00 08 */	li r4, 8
/* 8030D698 0030A5F8  4B FF BA 8D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D69C 0030A5FC  38 61 01 00 */	addi r3, r1, 0x100
/* 8030D6A0 0030A600  38 80 00 0A */	li r4, 0xa
/* 8030D6A4 0030A604  4B FF BA 81 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D6A8 0030A608  38 61 01 04 */	addi r3, r1, 0x104
/* 8030D6AC 0030A60C  38 80 00 0F */	li r4, 0xf
/* 8030D6B0 0030A610  4B FF BA 75 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D6B4 0030A614  80 A1 01 04 */	lwz r5, 0x104(r1)
/* 8030D6B8 0030A618  3C 60 80 5A */	lis r3, kEnvModulate__9CGraphics@ha
/* 8030D6BC 0030A61C  81 21 01 00 */	lwz r9, 0x100(r1)
/* 8030D6C0 0030A620  38 63 5E BC */	addi r3, r3, kEnvModulate__9CGraphics@l
/* 8030D6C4 0030A624  81 01 00 FC */	lwz r8, 0xfc(r1)
/* 8030D6C8 0030A628  38 81 02 38 */	addi r4, r1, 0x238
/* 8030D6CC 0030A62C  80 01 00 F8 */	lwz r0, 0xf8(r1)
/* 8030D6D0 0030A630  38 C1 03 B4 */	addi r6, r1, 0x3b4
/* 8030D6D4 0030A634  90 A1 02 38 */	stw r5, 0x238(r1)
/* 8030D6D8 0030A638  38 A1 02 28 */	addi r5, r1, 0x228
/* 8030D6DC 0030A63C  38 E1 03 A0 */	addi r7, r1, 0x3a0
/* 8030D6E0 0030A640  91 21 02 3C */	stw r9, 0x23c(r1)
/* 8030D6E4 0030A644  91 01 02 40 */	stw r8, 0x240(r1)
/* 8030D6E8 0030A648  90 01 02 44 */	stw r0, 0x244(r1)
/* 8030D6EC 0030A64C  4B FF BB 69 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D6F0 0030A650  38 00 00 00 */	li r0, 0
/* 8030D6F4 0030A654  38 A0 00 01 */	li r5, 1
/* 8030D6F8 0030A658  98 A1 03 78 */	stb r5, 0x378(r1)
/* 8030D6FC 0030A65C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8030D700 0030A660  38 80 00 05 */	li r4, 5
/* 8030D704 0030A664  90 01 03 7C */	stw r0, 0x37c(r1)
/* 8030D708 0030A668  90 01 03 80 */	stw r0, 0x380(r1)
/* 8030D70C 0030A66C  90 01 03 84 */	stw r0, 0x384(r1)
/* 8030D710 0030A670  90 01 03 88 */	stw r0, 0x388(r1)
/* 8030D714 0030A674  98 A1 03 8C */	stb r5, 0x38c(r1)
/* 8030D718 0030A678  90 01 03 90 */	stw r0, 0x390(r1)
/* 8030D71C 0030A67C  90 01 03 94 */	stw r0, 0x394(r1)
/* 8030D720 0030A680  90 01 03 98 */	stw r0, 0x398(r1)
/* 8030D724 0030A684  90 01 03 9C */	stw r0, 0x39c(r1)
/* 8030D728 0030A688  4B FF BA 05 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D72C 0030A68C  38 61 00 CC */	addi r3, r1, 0xcc
/* 8030D730 0030A690  38 80 00 07 */	li r4, 7
/* 8030D734 0030A694  4B FF B9 F9 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D738 0030A698  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8030D73C 0030A69C  38 80 00 07 */	li r4, 7
/* 8030D740 0030A6A0  4B FF B9 ED */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D744 0030A6A4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8030D748 0030A6A8  38 80 00 07 */	li r4, 7
/* 8030D74C 0030A6AC  4B FF B9 E1 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D750 0030A6B0  80 E1 00 D4 */	lwz r7, 0xd4(r1)
/* 8030D754 0030A6B4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8030D758 0030A6B8  80 C1 00 D0 */	lwz r6, 0xd0(r1)
/* 8030D75C 0030A6BC  38 80 00 0F */	li r4, 0xf
/* 8030D760 0030A6C0  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8030D764 0030A6C4  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 8030D768 0030A6C8  90 E1 02 08 */	stw r7, 0x208(r1)
/* 8030D76C 0030A6CC  90 C1 02 0C */	stw r6, 0x20c(r1)
/* 8030D770 0030A6D0  90 A1 02 10 */	stw r5, 0x210(r1)
/* 8030D774 0030A6D4  90 01 02 14 */	stw r0, 0x214(r1)
/* 8030D778 0030A6D8  4B FF B9 AD */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D77C 0030A6DC  38 61 00 DC */	addi r3, r1, 0xdc
/* 8030D780 0030A6E0  38 80 00 09 */	li r4, 9
/* 8030D784 0030A6E4  4B FF B9 A1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D788 0030A6E8  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8030D78C 0030A6EC  38 80 00 08 */	li r4, 8
/* 8030D790 0030A6F0  4B FF B9 95 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D794 0030A6F4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8030D798 0030A6F8  38 80 00 0A */	li r4, 0xa
/* 8030D79C 0030A6FC  4B FF B9 89 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D7A0 0030A700  80 A1 00 E4 */	lwz r5, 0xe4(r1)
/* 8030D7A4 0030A704  3C 60 80 5A */	lis r3, kEnvDecal__9CGraphics@ha
/* 8030D7A8 0030A708  81 21 00 E0 */	lwz r9, 0xe0(r1)
/* 8030D7AC 0030A70C  38 63 5F 08 */	addi r3, r3, kEnvDecal__9CGraphics@l
/* 8030D7B0 0030A710  81 01 00 DC */	lwz r8, 0xdc(r1)
/* 8030D7B4 0030A714  38 81 02 18 */	addi r4, r1, 0x218
/* 8030D7B8 0030A718  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 8030D7BC 0030A71C  38 C1 03 8C */	addi r6, r1, 0x38c
/* 8030D7C0 0030A720  90 A1 02 18 */	stw r5, 0x218(r1)
/* 8030D7C4 0030A724  38 A1 02 08 */	addi r5, r1, 0x208
/* 8030D7C8 0030A728  38 E1 03 78 */	addi r7, r1, 0x378
/* 8030D7CC 0030A72C  91 21 02 1C */	stw r9, 0x21c(r1)
/* 8030D7D0 0030A730  91 01 02 20 */	stw r8, 0x220(r1)
/* 8030D7D4 0030A734  90 01 02 24 */	stw r0, 0x224(r1)
/* 8030D7D8 0030A738  4B FF BA 7D */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D7DC 0030A73C  38 00 00 00 */	li r0, 0
/* 8030D7E0 0030A740  38 A0 00 01 */	li r5, 1
/* 8030D7E4 0030A744  98 A1 03 50 */	stb r5, 0x350(r1)
/* 8030D7E8 0030A748  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8030D7EC 0030A74C  38 80 00 07 */	li r4, 7
/* 8030D7F0 0030A750  90 01 03 54 */	stw r0, 0x354(r1)
/* 8030D7F4 0030A754  90 01 03 58 */	stw r0, 0x358(r1)
/* 8030D7F8 0030A758  90 01 03 5C */	stw r0, 0x35c(r1)
/* 8030D7FC 0030A75C  90 01 03 60 */	stw r0, 0x360(r1)
/* 8030D800 0030A760  98 A1 03 64 */	stb r5, 0x364(r1)
/* 8030D804 0030A764  90 01 03 68 */	stw r0, 0x368(r1)
/* 8030D808 0030A768  90 01 03 6C */	stw r0, 0x36c(r1)
/* 8030D80C 0030A76C  90 01 03 70 */	stw r0, 0x370(r1)
/* 8030D810 0030A770  90 01 03 74 */	stw r0, 0x374(r1)
/* 8030D814 0030A774  4B FF B9 19 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D818 0030A778  38 61 00 AC */	addi r3, r1, 0xac
/* 8030D81C 0030A77C  38 80 00 05 */	li r4, 5
/* 8030D820 0030A780  4B FF B9 0D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D824 0030A784  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8030D828 0030A788  38 80 00 04 */	li r4, 4
/* 8030D82C 0030A78C  4B FF B9 01 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D830 0030A790  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8030D834 0030A794  38 80 00 07 */	li r4, 7
/* 8030D838 0030A798  4B FF B8 F5 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D83C 0030A79C  80 E1 00 B4 */	lwz r7, 0xb4(r1)
/* 8030D840 0030A7A0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8030D844 0030A7A4  80 C1 00 B0 */	lwz r6, 0xb0(r1)
/* 8030D848 0030A7A8  38 80 00 0F */	li r4, 0xf
/* 8030D84C 0030A7AC  80 A1 00 AC */	lwz r5, 0xac(r1)
/* 8030D850 0030A7B0  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 8030D854 0030A7B4  90 E1 01 E8 */	stw r7, 0x1e8(r1)
/* 8030D858 0030A7B8  90 C1 01 EC */	stw r6, 0x1ec(r1)
/* 8030D85C 0030A7BC  90 A1 01 F0 */	stw r5, 0x1f0(r1)
/* 8030D860 0030A7C0  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 8030D864 0030A7C4  4B FF B8 C1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D868 0030A7C8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8030D86C 0030A7CC  38 80 00 08 */	li r4, 8
/* 8030D870 0030A7D0  4B FF B8 B5 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D874 0030A7D4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8030D878 0030A7D8  38 80 00 0C */	li r4, 0xc
/* 8030D87C 0030A7DC  4B FF B8 A9 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D880 0030A7E0  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8030D884 0030A7E4  38 80 00 0A */	li r4, 0xa
/* 8030D888 0030A7E8  4B FF B8 9D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D88C 0030A7EC  80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 8030D890 0030A7F0  3C 60 80 5A */	lis r3, kEnvBlend__9CGraphics@ha
/* 8030D894 0030A7F4  81 21 00 C0 */	lwz r9, 0xc0(r1)
/* 8030D898 0030A7F8  38 63 5F 54 */	addi r3, r3, kEnvBlend__9CGraphics@l
/* 8030D89C 0030A7FC  81 01 00 BC */	lwz r8, 0xbc(r1)
/* 8030D8A0 0030A800  38 81 01 F8 */	addi r4, r1, 0x1f8
/* 8030D8A4 0030A804  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 8030D8A8 0030A808  38 C1 03 64 */	addi r6, r1, 0x364
/* 8030D8AC 0030A80C  90 A1 01 F8 */	stw r5, 0x1f8(r1)
/* 8030D8B0 0030A810  38 A1 01 E8 */	addi r5, r1, 0x1e8
/* 8030D8B4 0030A814  38 E1 03 50 */	addi r7, r1, 0x350
/* 8030D8B8 0030A818  91 21 01 FC */	stw r9, 0x1fc(r1)
/* 8030D8BC 0030A81C  91 01 02 00 */	stw r8, 0x200(r1)
/* 8030D8C0 0030A820  90 01 02 04 */	stw r0, 0x204(r1)
/* 8030D8C4 0030A824  4B FF B9 91 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D8C8 0030A828  38 00 00 00 */	li r0, 0
/* 8030D8CC 0030A82C  38 A0 00 01 */	li r5, 1
/* 8030D8D0 0030A830  98 A1 03 28 */	stb r5, 0x328(r1)
/* 8030D8D4 0030A834  38 61 00 88 */	addi r3, r1, 0x88
/* 8030D8D8 0030A838  38 80 00 04 */	li r4, 4
/* 8030D8DC 0030A83C  90 01 03 2C */	stw r0, 0x32c(r1)
/* 8030D8E0 0030A840  90 01 03 30 */	stw r0, 0x330(r1)
/* 8030D8E4 0030A844  90 01 03 34 */	stw r0, 0x334(r1)
/* 8030D8E8 0030A848  90 01 03 38 */	stw r0, 0x338(r1)
/* 8030D8EC 0030A84C  98 A1 03 3C */	stb r5, 0x33c(r1)
/* 8030D8F0 0030A850  90 01 03 40 */	stw r0, 0x340(r1)
/* 8030D8F4 0030A854  90 01 03 44 */	stw r0, 0x344(r1)
/* 8030D8F8 0030A858  90 01 03 48 */	stw r0, 0x348(r1)
/* 8030D8FC 0030A85C  90 01 03 4C */	stw r0, 0x34c(r1)
/* 8030D900 0030A860  4B FF B8 2D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D904 0030A864  38 61 00 8C */	addi r3, r1, 0x8c
/* 8030D908 0030A868  38 80 00 07 */	li r4, 7
/* 8030D90C 0030A86C  4B FF B8 21 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D910 0030A870  38 61 00 90 */	addi r3, r1, 0x90
/* 8030D914 0030A874  38 80 00 07 */	li r4, 7
/* 8030D918 0030A878  4B FF B8 15 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D91C 0030A87C  38 61 00 94 */	addi r3, r1, 0x94
/* 8030D920 0030A880  38 80 00 07 */	li r4, 7
/* 8030D924 0030A884  4B FF B8 09 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D928 0030A888  80 E1 00 94 */	lwz r7, 0x94(r1)
/* 8030D92C 0030A88C  38 61 00 98 */	addi r3, r1, 0x98
/* 8030D930 0030A890  80 C1 00 90 */	lwz r6, 0x90(r1)
/* 8030D934 0030A894  38 80 00 08 */	li r4, 8
/* 8030D938 0030A898  80 A1 00 8C */	lwz r5, 0x8c(r1)
/* 8030D93C 0030A89C  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8030D940 0030A8A0  90 E1 01 C8 */	stw r7, 0x1c8(r1)
/* 8030D944 0030A8A4  90 C1 01 CC */	stw r6, 0x1cc(r1)
/* 8030D948 0030A8A8  90 A1 01 D0 */	stw r5, 0x1d0(r1)
/* 8030D94C 0030A8AC  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8030D950 0030A8B0  4B FF B7 D5 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D954 0030A8B4  38 61 00 9C */	addi r3, r1, 0x9c
/* 8030D958 0030A8B8  38 80 00 0F */	li r4, 0xf
/* 8030D95C 0030A8BC  4B FF B7 C9 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D960 0030A8C0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8030D964 0030A8C4  38 80 00 0F */	li r4, 0xf
/* 8030D968 0030A8C8  4B FF B7 BD */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D96C 0030A8CC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8030D970 0030A8D0  38 80 00 0F */	li r4, 0xf
/* 8030D974 0030A8D4  4B FF B7 B1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030D978 0030A8D8  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 8030D97C 0030A8DC  3C 60 80 5A */	lis r3, kEnvReplace__9CGraphics@ha
/* 8030D980 0030A8E0  81 21 00 A0 */	lwz r9, 0xa0(r1)
/* 8030D984 0030A8E4  38 63 5F A0 */	addi r3, r3, kEnvReplace__9CGraphics@l
/* 8030D988 0030A8E8  81 01 00 9C */	lwz r8, 0x9c(r1)
/* 8030D98C 0030A8EC  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 8030D990 0030A8F0  80 01 00 98 */	lwz r0, 0x98(r1)
/* 8030D994 0030A8F4  38 C1 03 3C */	addi r6, r1, 0x33c
/* 8030D998 0030A8F8  90 A1 01 D8 */	stw r5, 0x1d8(r1)
/* 8030D99C 0030A8FC  38 A1 01 C8 */	addi r5, r1, 0x1c8
/* 8030D9A0 0030A900  38 E1 03 28 */	addi r7, r1, 0x328
/* 8030D9A4 0030A904  91 21 01 DC */	stw r9, 0x1dc(r1)
/* 8030D9A8 0030A908  91 01 01 E0 */	stw r8, 0x1e0(r1)
/* 8030D9AC 0030A90C  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 8030D9B0 0030A910  4B FF B8 A5 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030D9B4 0030A914  38 00 00 00 */	li r0, 0
/* 8030D9B8 0030A918  38 A0 00 01 */	li r5, 1
/* 8030D9BC 0030A91C  98 A1 03 00 */	stb r5, 0x300(r1)
/* 8030D9C0 0030A920  38 61 00 68 */	addi r3, r1, 0x68
/* 8030D9C4 0030A924  38 80 00 05 */	li r4, 5
/* 8030D9C8 0030A928  90 01 03 04 */	stw r0, 0x304(r1)
/* 8030D9CC 0030A92C  90 01 03 08 */	stw r0, 0x308(r1)
/* 8030D9D0 0030A930  90 01 03 0C */	stw r0, 0x30c(r1)
/* 8030D9D4 0030A934  90 01 03 10 */	stw r0, 0x310(r1)
/* 8030D9D8 0030A938  98 A1 03 14 */	stb r5, 0x314(r1)
/* 8030D9DC 0030A93C  90 01 03 18 */	stw r0, 0x318(r1)
/* 8030D9E0 0030A940  90 01 03 1C */	stw r0, 0x31c(r1)
/* 8030D9E4 0030A944  90 01 03 20 */	stw r0, 0x320(r1)
/* 8030D9E8 0030A948  90 01 03 24 */	stw r0, 0x324(r1)
/* 8030D9EC 0030A94C  4B FF B7 41 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D9F0 0030A950  38 61 00 6C */	addi r3, r1, 0x6c
/* 8030D9F4 0030A954  38 80 00 07 */	li r4, 7
/* 8030D9F8 0030A958  4B FF B7 35 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030D9FC 0030A95C  38 61 00 70 */	addi r3, r1, 0x70
/* 8030DA00 0030A960  38 80 00 07 */	li r4, 7
/* 8030DA04 0030A964  4B FF B7 29 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DA08 0030A968  38 61 00 74 */	addi r3, r1, 0x74
/* 8030DA0C 0030A96C  38 80 00 07 */	li r4, 7
/* 8030DA10 0030A970  4B FF B7 1D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DA14 0030A974  80 E1 00 74 */	lwz r7, 0x74(r1)
/* 8030DA18 0030A978  38 61 00 78 */	addi r3, r1, 0x78
/* 8030DA1C 0030A97C  80 C1 00 70 */	lwz r6, 0x70(r1)
/* 8030DA20 0030A980  38 80 00 0F */	li r4, 0xf
/* 8030DA24 0030A984  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8030DA28 0030A988  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8030DA2C 0030A98C  90 E1 01 A8 */	stw r7, 0x1a8(r1)
/* 8030DA30 0030A990  90 C1 01 AC */	stw r6, 0x1ac(r1)
/* 8030DA34 0030A994  90 A1 01 B0 */	stw r5, 0x1b0(r1)
/* 8030DA38 0030A998  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8030DA3C 0030A99C  4B FF B6 E9 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DA40 0030A9A0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8030DA44 0030A9A4  38 80 00 0A */	li r4, 0xa
/* 8030DA48 0030A9A8  4B FF B6 DD */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DA4C 0030A9AC  38 61 00 80 */	addi r3, r1, 0x80
/* 8030DA50 0030A9B0  38 80 00 08 */	li r4, 8
/* 8030DA54 0030A9B4  4B FF B6 D1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DA58 0030A9B8  38 61 00 84 */	addi r3, r1, 0x84
/* 8030DA5C 0030A9BC  38 80 00 02 */	li r4, 2
/* 8030DA60 0030A9C0  4B FF B6 C5 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DA64 0030A9C4  80 A1 00 84 */	lwz r5, 0x84(r1)
/* 8030DA68 0030A9C8  3C 60 80 4C */	lis r3, kEnvBlendCTandCConCF@ha
/* 8030DA6C 0030A9CC  81 21 00 80 */	lwz r9, 0x80(r1)
/* 8030DA70 0030A9D0  38 63 FC C0 */	addi r3, r3, kEnvBlendCTandCConCF@l
/* 8030DA74 0030A9D4  81 01 00 7C */	lwz r8, 0x7c(r1)
/* 8030DA78 0030A9D8  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8030DA7C 0030A9DC  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8030DA80 0030A9E0  38 C1 03 14 */	addi r6, r1, 0x314
/* 8030DA84 0030A9E4  90 A1 01 B8 */	stw r5, 0x1b8(r1)
/* 8030DA88 0030A9E8  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 8030DA8C 0030A9EC  38 E1 03 00 */	addi r7, r1, 0x300
/* 8030DA90 0030A9F0  91 21 01 BC */	stw r9, 0x1bc(r1)
/* 8030DA94 0030A9F4  91 01 01 C0 */	stw r8, 0x1c0(r1)
/* 8030DA98 0030A9F8  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 8030DA9C 0030A9FC  4B FF B7 B9 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030DAA0 0030AA00  38 00 00 00 */	li r0, 0
/* 8030DAA4 0030AA04  38 A0 00 01 */	li r5, 1
/* 8030DAA8 0030AA08  98 A1 02 D8 */	stb r5, 0x2d8(r1)
/* 8030DAAC 0030AA0C  38 61 00 48 */	addi r3, r1, 0x48
/* 8030DAB0 0030AA10  38 80 00 07 */	li r4, 7
/* 8030DAB4 0030AA14  90 01 02 DC */	stw r0, 0x2dc(r1)
/* 8030DAB8 0030AA18  90 01 02 E0 */	stw r0, 0x2e0(r1)
/* 8030DABC 0030AA1C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 8030DAC0 0030AA20  90 01 02 E8 */	stw r0, 0x2e8(r1)
/* 8030DAC4 0030AA24  98 A1 02 EC */	stb r5, 0x2ec(r1)
/* 8030DAC8 0030AA28  90 01 02 F0 */	stw r0, 0x2f0(r1)
/* 8030DACC 0030AA2C  90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 8030DAD0 0030AA30  90 01 02 F8 */	stw r0, 0x2f8(r1)
/* 8030DAD4 0030AA34  90 01 02 FC */	stw r0, 0x2fc(r1)
/* 8030DAD8 0030AA38  4B FF B6 55 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DADC 0030AA3C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8030DAE0 0030AA40  38 80 00 05 */	li r4, 5
/* 8030DAE4 0030AA44  4B FF B6 49 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DAE8 0030AA48  38 61 00 50 */	addi r3, r1, 0x50
/* 8030DAEC 0030AA4C  38 80 00 04 */	li r4, 4
/* 8030DAF0 0030AA50  4B FF B6 3D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DAF4 0030AA54  38 61 00 54 */	addi r3, r1, 0x54
/* 8030DAF8 0030AA58  38 80 00 07 */	li r4, 7
/* 8030DAFC 0030AA5C  4B FF B6 31 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DB00 0030AA60  80 E1 00 54 */	lwz r7, 0x54(r1)
/* 8030DB04 0030AA64  38 61 00 58 */	addi r3, r1, 0x58
/* 8030DB08 0030AA68  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 8030DB0C 0030AA6C  38 80 00 0A */	li r4, 0xa
/* 8030DB10 0030AA70  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8030DB14 0030AA74  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8030DB18 0030AA78  90 E1 01 88 */	stw r7, 0x188(r1)
/* 8030DB1C 0030AA7C  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 8030DB20 0030AA80  90 A1 01 90 */	stw r5, 0x190(r1)
/* 8030DB24 0030AA84  90 01 01 94 */	stw r0, 0x194(r1)
/* 8030DB28 0030AA88  4B FF B5 FD */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DB2C 0030AA8C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8030DB30 0030AA90  38 80 00 0F */	li r4, 0xf
/* 8030DB34 0030AA94  4B FF B5 F1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DB38 0030AA98  38 61 00 60 */	addi r3, r1, 0x60
/* 8030DB3C 0030AA9C  38 80 00 0F */	li r4, 0xf
/* 8030DB40 0030AAA0  4B FF B5 E5 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DB44 0030AAA4  38 61 00 64 */	addi r3, r1, 0x64
/* 8030DB48 0030AAA8  38 80 00 0F */	li r4, 0xf
/* 8030DB4C 0030AAAC  4B FF B5 D9 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DB50 0030AAB0  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8030DB54 0030AAB4  3C 60 80 5A */	lis r3, kEnvModulateAlpha__9CGraphics@ha
/* 8030DB58 0030AAB8  81 21 00 60 */	lwz r9, 0x60(r1)
/* 8030DB5C 0030AABC  38 63 5F EC */	addi r3, r3, kEnvModulateAlpha__9CGraphics@l
/* 8030DB60 0030AAC0  81 01 00 5C */	lwz r8, 0x5c(r1)
/* 8030DB64 0030AAC4  38 81 01 98 */	addi r4, r1, 0x198
/* 8030DB68 0030AAC8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8030DB6C 0030AACC  38 C1 02 EC */	addi r6, r1, 0x2ec
/* 8030DB70 0030AAD0  90 A1 01 98 */	stw r5, 0x198(r1)
/* 8030DB74 0030AAD4  38 A1 01 88 */	addi r5, r1, 0x188
/* 8030DB78 0030AAD8  38 E1 02 D8 */	addi r7, r1, 0x2d8
/* 8030DB7C 0030AADC  91 21 01 9C */	stw r9, 0x19c(r1)
/* 8030DB80 0030AAE0  91 01 01 A0 */	stw r8, 0x1a0(r1)
/* 8030DB84 0030AAE4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8030DB88 0030AAE8  4B FF B6 CD */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030DB8C 0030AAEC  38 00 00 00 */	li r0, 0
/* 8030DB90 0030AAF0  38 A0 00 01 */	li r5, 1
/* 8030DB94 0030AAF4  98 A1 02 B0 */	stb r5, 0x2b0(r1)
/* 8030DB98 0030AAF8  38 61 00 28 */	addi r3, r1, 0x28
/* 8030DB9C 0030AAFC  38 80 00 07 */	li r4, 7
/* 8030DBA0 0030AB00  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 8030DBA4 0030AB04  90 01 02 B8 */	stw r0, 0x2b8(r1)
/* 8030DBA8 0030AB08  90 01 02 BC */	stw r0, 0x2bc(r1)
/* 8030DBAC 0030AB0C  90 01 02 C0 */	stw r0, 0x2c0(r1)
/* 8030DBB0 0030AB10  98 A1 02 C4 */	stb r5, 0x2c4(r1)
/* 8030DBB4 0030AB14  90 01 02 C8 */	stw r0, 0x2c8(r1)
/* 8030DBB8 0030AB18  90 01 02 CC */	stw r0, 0x2cc(r1)
/* 8030DBBC 0030AB1C  90 01 02 D0 */	stw r0, 0x2d0(r1)
/* 8030DBC0 0030AB20  90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 8030DBC4 0030AB24  4B FF B5 69 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DBC8 0030AB28  38 61 00 2C */	addi r3, r1, 0x2c
/* 8030DBCC 0030AB2C  38 80 00 05 */	li r4, 5
/* 8030DBD0 0030AB30  4B FF B5 5D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DBD4 0030AB34  38 61 00 30 */	addi r3, r1, 0x30
/* 8030DBD8 0030AB38  38 80 00 06 */	li r4, 6
/* 8030DBDC 0030AB3C  4B FF B5 51 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DBE0 0030AB40  38 61 00 34 */	addi r3, r1, 0x34
/* 8030DBE4 0030AB44  38 80 00 07 */	li r4, 7
/* 8030DBE8 0030AB48  4B FF B5 45 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DBEC 0030AB4C  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 8030DBF0 0030AB50  38 61 00 38 */	addi r3, r1, 0x38
/* 8030DBF4 0030AB54  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 8030DBF8 0030AB58  38 80 00 0F */	li r4, 0xf
/* 8030DBFC 0030AB5C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8030DC00 0030AB60  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8030DC04 0030AB64  90 E1 01 68 */	stw r7, 0x168(r1)
/* 8030DC08 0030AB68  90 C1 01 6C */	stw r6, 0x16c(r1)
/* 8030DC0C 0030AB6C  90 A1 01 70 */	stw r5, 0x170(r1)
/* 8030DC10 0030AB70  90 01 01 74 */	stw r0, 0x174(r1)
/* 8030DC14 0030AB74  4B FF B5 11 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DC18 0030AB78  38 61 00 3C */	addi r3, r1, 0x3c
/* 8030DC1C 0030AB7C  38 80 00 0A */	li r4, 0xa
/* 8030DC20 0030AB80  4B FF B5 05 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DC24 0030AB84  38 61 00 40 */	addi r3, r1, 0x40
/* 8030DC28 0030AB88  38 80 00 08 */	li r4, 8
/* 8030DC2C 0030AB8C  4B FF B4 F9 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DC30 0030AB90  38 61 00 44 */	addi r3, r1, 0x44
/* 8030DC34 0030AB94  38 80 00 0F */	li r4, 0xf
/* 8030DC38 0030AB98  4B FF B4 ED */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DC3C 0030AB9C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8030DC40 0030ABA0  3C 60 80 5A */	lis r3, kEnvModulateColor__9CGraphics@ha
/* 8030DC44 0030ABA4  81 21 00 40 */	lwz r9, 0x40(r1)
/* 8030DC48 0030ABA8  38 63 60 38 */	addi r3, r3, kEnvModulateColor__9CGraphics@l
/* 8030DC4C 0030ABAC  81 01 00 3C */	lwz r8, 0x3c(r1)
/* 8030DC50 0030ABB0  38 81 01 78 */	addi r4, r1, 0x178
/* 8030DC54 0030ABB4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8030DC58 0030ABB8  38 C1 02 C4 */	addi r6, r1, 0x2c4
/* 8030DC5C 0030ABBC  90 A1 01 78 */	stw r5, 0x178(r1)
/* 8030DC60 0030ABC0  38 A1 01 68 */	addi r5, r1, 0x168
/* 8030DC64 0030ABC4  38 E1 02 B0 */	addi r7, r1, 0x2b0
/* 8030DC68 0030ABC8  91 21 01 7C */	stw r9, 0x17c(r1)
/* 8030DC6C 0030ABCC  91 01 01 80 */	stw r8, 0x180(r1)
/* 8030DC70 0030ABD0  90 01 01 84 */	stw r0, 0x184(r1)
/* 8030DC74 0030ABD4  4B FF B5 E1 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030DC78 0030ABD8  38 00 00 00 */	li r0, 0
/* 8030DC7C 0030ABDC  38 A0 00 01 */	li r5, 1
/* 8030DC80 0030ABE0  98 A1 02 88 */	stb r5, 0x288(r1)
/* 8030DC84 0030ABE4  38 61 00 08 */	addi r3, r1, 8
/* 8030DC88 0030ABE8  38 80 00 00 */	li r4, 0
/* 8030DC8C 0030ABEC  90 01 02 8C */	stw r0, 0x28c(r1)
/* 8030DC90 0030ABF0  90 01 02 90 */	stw r0, 0x290(r1)
/* 8030DC94 0030ABF4  90 01 02 94 */	stw r0, 0x294(r1)
/* 8030DC98 0030ABF8  90 01 02 98 */	stw r0, 0x298(r1)
/* 8030DC9C 0030ABFC  98 A1 02 9C */	stb r5, 0x29c(r1)
/* 8030DCA0 0030AC00  90 01 02 A0 */	stw r0, 0x2a0(r1)
/* 8030DCA4 0030AC04  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8030DCA8 0030AC08  90 01 02 A8 */	stw r0, 0x2a8(r1)
/* 8030DCAC 0030AC0C  90 01 02 AC */	stw r0, 0x2ac(r1)
/* 8030DCB0 0030AC10  4B FF B4 7D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DCB4 0030AC14  38 61 00 0C */	addi r3, r1, 0xc
/* 8030DCB8 0030AC18  38 80 00 07 */	li r4, 7
/* 8030DCBC 0030AC1C  4B FF B4 71 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DCC0 0030AC20  38 61 00 10 */	addi r3, r1, 0x10
/* 8030DCC4 0030AC24  38 80 00 07 */	li r4, 7
/* 8030DCC8 0030AC28  4B FF B4 65 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DCCC 0030AC2C  38 61 00 14 */	addi r3, r1, 0x14
/* 8030DCD0 0030AC30  38 80 00 07 */	li r4, 7
/* 8030DCD4 0030AC34  4B FF B4 59 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030DCD8 0030AC38  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8030DCDC 0030AC3C  38 61 00 18 */	addi r3, r1, 0x18
/* 8030DCE0 0030AC40  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8030DCE4 0030AC44  38 80 00 0F */	li r4, 0xf
/* 8030DCE8 0030AC48  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8030DCEC 0030AC4C  80 01 00 08 */	lwz r0, 8(r1)
/* 8030DCF0 0030AC50  90 E1 01 48 */	stw r7, 0x148(r1)
/* 8030DCF4 0030AC54  90 C1 01 4C */	stw r6, 0x14c(r1)
/* 8030DCF8 0030AC58  90 A1 01 50 */	stw r5, 0x150(r1)
/* 8030DCFC 0030AC5C  90 01 01 54 */	stw r0, 0x154(r1)
/* 8030DD00 0030AC60  4B FF B4 25 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DD04 0030AC64  38 61 00 1C */	addi r3, r1, 0x1c
/* 8030DD08 0030AC68  38 80 00 01 */	li r4, 1
/* 8030DD0C 0030AC6C  4B FF B4 19 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DD10 0030AC70  38 61 00 20 */	addi r3, r1, 0x20
/* 8030DD14 0030AC74  38 80 00 00 */	li r4, 0
/* 8030DD18 0030AC78  4B FF B4 0D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DD1C 0030AC7C  38 61 00 24 */	addi r3, r1, 0x24
/* 8030DD20 0030AC80  38 80 00 0F */	li r4, 0xf
/* 8030DD24 0030AC84  4B FF B4 01 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 8030DD28 0030AC88  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8030DD2C 0030AC8C  3C 60 80 5A */	lis r3, kEnvModulateColorByAlpha__9CGraphics@ha
/* 8030DD30 0030AC90  81 21 00 20 */	lwz r9, 0x20(r1)
/* 8030DD34 0030AC94  38 63 60 84 */	addi r3, r3, kEnvModulateColorByAlpha__9CGraphics@l
/* 8030DD38 0030AC98  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 8030DD3C 0030AC9C  38 81 01 58 */	addi r4, r1, 0x158
/* 8030DD40 0030ACA0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8030DD44 0030ACA4  38 C1 02 9C */	addi r6, r1, 0x29c
/* 8030DD48 0030ACA8  90 A1 01 58 */	stw r5, 0x158(r1)
/* 8030DD4C 0030ACAC  38 A1 01 48 */	addi r5, r1, 0x148
/* 8030DD50 0030ACB0  38 E1 02 88 */	addi r7, r1, 0x288
/* 8030DD54 0030ACB4  91 21 01 5C */	stw r9, 0x15c(r1)
/* 8030DD58 0030ACB8  91 01 01 60 */	stw r8, 0x160(r1)
/* 8030DD5C 0030ACBC  90 01 01 64 */	stw r0, 0x164(r1)
/* 8030DD60 0030ACC0  4B FF B4 F5 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 8030DD64 0030ACC4  38 6D A7 B8 */	addi r3, r13, sRenderState__9CGraphics@sda21
/* 8030DD68 0030ACC8  4B FF B6 81 */	bl __ct__Q29CGraphics12CRenderStateFv
/* 8030DD6C 0030ACCC  3C 60 80 5A */	lis r3, mLightParams@ha
/* 8030DD70 0030ACD0  3C 80 80 31 */	lis r4, __ct__14CGXLightParamsFv@ha
/* 8030DD74 0030ACD4  38 63 60 D0 */	addi r3, r3, mLightParams@l
/* 8030DD78 0030ACD8  38 A0 00 00 */	li r5, 0
/* 8030DD7C 0030ACDC  38 84 DE 38 */	addi r4, r4, __ct__14CGXLightParamsFv@l
/* 8030DD80 0030ACE0  38 C0 00 14 */	li r6, 0x14
/* 8030DD84 0030ACE4  38 E0 00 08 */	li r7, 8
/* 8030DD88 0030ACE8  48 07 B9 C5 */	bl __construct_array
/* 8030DD8C 0030ACEC  C0 62 C7 F0 */	lfs f3, lbl_805AE510@sda21(r2)
/* 8030DD90 0030ACF0  3C E0 80 5A */	lis r7, kDefaultPositionVector__9CGraphics@ha
/* 8030DD94 0030ACF4  38 00 00 01 */	li r0, 1
/* 8030DD98 0030ACF8  3C C0 80 5A */	lis r6, kDefaultDirectionVector__9CGraphics@ha
/* 8030DD9C 0030ACFC  D4 67 61 A0 */	stfsu f3, kDefaultPositionVector__9CGraphics@l(r7)
/* 8030DDA0 0030AD00  3C A0 80 5A */	lis r5, mProj__9CGraphics@ha
/* 8030DDA4 0030AD04  C0 42 C8 10 */	lfs f2, lbl_805AE530@sda21(r2)
/* 8030DDA8 0030AD08  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 8030DDAC 0030AD0C  9C 05 61 B8 */	stbu r0, mProj__9CGraphics@l(r5)
/* 8030DDB0 0030AD10  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8030DDB4 0030AD14  C0 22 C8 14 */	lfs f1, lbl_805AE534@sda21(r2)
/* 8030DDB8 0030AD18  38 63 61 D4 */	addi r3, r3, mViewMatrix__9CGraphics@l
/* 8030DDBC 0030AD1C  D4 66 61 AC */	stfsu f3, kDefaultDirectionVector__9CGraphics@l(r6)
/* 8030DDC0 0030AD20  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 8030DDC4 0030AD24  C0 02 C8 34 */	lfs f0, lbl_805AE554@sda21(r2)
/* 8030DDC8 0030AD28  D0 67 00 04 */	stfs f3, 4(r7)
/* 8030DDCC 0030AD2C  D0 67 00 08 */	stfs f3, 8(r7)
/* 8030DDD0 0030AD30  D0 46 00 04 */	stfs f2, 4(r6)
/* 8030DDD4 0030AD34  D0 66 00 08 */	stfs f3, 8(r6)
/* 8030DDD8 0030AD38  D0 25 00 04 */	stfs f1, 4(r5)
/* 8030DDDC 0030AD3C  D0 45 00 08 */	stfs f2, 8(r5)
/* 8030DDE0 0030AD40  D0 45 00 0C */	stfs f2, 0xc(r5)
/* 8030DDE4 0030AD44  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 8030DDE8 0030AD48  D0 45 00 14 */	stfs f2, 0x14(r5)
/* 8030DDEC 0030AD4C  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8030DDF0 0030AD50  48 00 4D 85 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8030DDF4 0030AD54  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 8030DDF8 0030AD58  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8030DDFC 0030AD5C  38 63 62 04 */	addi r3, r3, mModelMatrix__9CGraphics@l
/* 8030DE00 0030AD60  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 8030DE04 0030AD64  48 00 4D 71 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8030DE08 0030AD68  48 03 C1 AD */	bl Black__6CColorFv
/* 8030DE0C 0030AD6C  80 03 00 00 */	lwz r0, 0(r3)
/* 8030DE10 0030AD70  3C 60 80 5A */	lis r3, mViewPoint__9CGraphics@ha
/* 8030DE14 0030AD74  C0 02 C7 F0 */	lfs f0, lbl_805AE510@sda21(r2)
/* 8030DE18 0030AD78  90 0D A7 F8 */	stw r0, mClearColor__9CGraphics@sda21(r13)
/* 8030DE1C 0030AD7C  D4 03 62 34 */	stfsu f0, mViewPoint__9CGraphics@l(r3)
/* 8030DE20 0030AD80  D0 03 00 04 */	stfs f0, 4(r3)
/* 8030DE24 0030AD84  D0 03 00 08 */	stfs f0, 8(r3)
/* 8030DE28 0030AD88  80 01 04 24 */	lwz r0, 0x424(r1)
/* 8030DE2C 0030AD8C  7C 08 03 A6 */	mtlr r0
/* 8030DE30 0030AD90  38 21 04 20 */	addi r1, r1, 0x420
/* 8030DE34 0030AD94  4E 80 00 20 */	blr

.global __ct__14CGXLightParamsFv
__ct__14CGXLightParamsFv:
/* 8030DE38 0030AD98  38 00 00 04 */	li r0, 4
/* 8030DE3C 0030AD9C  38 80 00 00 */	li r4, 0
/* 8030DE40 0030ADA0  90 03 00 00 */	stw r0, 0(r3)
/* 8030DE44 0030ADA4  38 00 00 02 */	li r0, 2
/* 8030DE48 0030ADA8  90 83 00 04 */	stw r4, 4(r3)
/* 8030DE4C 0030ADAC  90 83 00 08 */	stw r4, 8(r3)
/* 8030DE50 0030ADB0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8030DE54 0030ADB4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8030DE58 0030ADB8  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global kSpareBufferTexMapID__9CGraphics
kSpareBufferTexMapID__9CGraphics:
	# ROM: 0x3FAD68
	.4byte 0x00000007

.global lbl_805AE4CC
lbl_805AE4CC:
	# ROM: 0x3FAD6C
	.4byte 0xFFFFFFFF

.global lbl_805AE4D0
lbl_805AE4D0:
	# ROM: 0x3FAD70
	.4byte 0x00001516
	.4byte 0x15000000

.global lbl_805AE4D8
lbl_805AE4D8:
	# ROM: 0x3FAD78
	.4byte 0x00000009

.global lbl_805AE4DC
lbl_805AE4DC:
	# ROM: 0x3FAD7C
	.4byte 0x00000001

.global lbl_805AE4E0
lbl_805AE4E0:
	# ROM: 0x3FAD80
	.4byte 0x0000000A

.global lbl_805AE4E4
lbl_805AE4E4:
	# ROM: 0x3FAD84
	.4byte 0x00000001

.global lbl_805AE4E8
lbl_805AE4E8:
	# ROM: 0x3FAD88
	.4byte 0x0000000B

.global lbl_805AE4EC
lbl_805AE4EC:
	# ROM: 0x3FAD8C
	.4byte 0x00000001

.global lbl_805AE4F0
lbl_805AE4F0:
	# ROM: 0x3FAD90
	.4byte 0x0000000D

.global lbl_805AE4F4
lbl_805AE4F4:
	# ROM: 0x3FAD94
	.4byte 0x00000001

.global lbl_805AE4F8
lbl_805AE4F8:
	# ROM: 0x3FAD98
	.4byte 0x000000FF

.global lbl_805AE4FC
lbl_805AE4FC:
	# ROM: 0x3FAD9C
	.4byte 0

.global lbl_805AE500
lbl_805AE500:
	# ROM: 0x3FADA0
	.4byte 0x04041010

.global lbl_805AE504
lbl_805AE504:
	# ROM: 0x3FADA4
	.2byte 0x00001004

.global lbl_805AE506
lbl_805AE506:
	# ROM: 0x3FADA6
	.2byte 0x00000400

.global lbl_805AE508
lbl_805AE508:
	# ROM: 0x3FADA8
	.double 4.503601774854144E15

.global lbl_805AE510
lbl_805AE510:
	# ROM: 0x3FADB0
	.4byte 0

.global lbl_805AE514
lbl_805AE514:
	# ROM: 0x3FADB4
	.4byte 0x42700000

.global lbl_805AE518
lbl_805AE518:
	# ROM: 0x3FADB8
	.4byte 0x43300000
	.4byte 0

.global lbl_805AE520
lbl_805AE520:
	# ROM: 0x3FADC0
	.4byte 0x40C00000

.global lbl_805AE524
lbl_805AE524:
	# ROM: 0x3FADC4
	.byte 0x04

.global lbl_805AE525
lbl_805AE525:
	# ROM: 0x3FADC5
	.byte 0x02, 0x00, 0x00

.global lbl_805AE528
lbl_805AE528:
	# ROM: 0x3FADC8
	.float 255.0

.global lbl_805AE52C
lbl_805AE52C:
	# ROM: 0x3FADCC
	.4byte 0x01000000

.global lbl_805AE530
lbl_805AE530:
	# ROM: 0x3FADD0
	.float 1.0

.global lbl_805AE534
lbl_805AE534:
	# ROM: 0x3FADD4
	.float -1.0

.global lbl_805AE538
lbl_805AE538:
	# ROM: 0x3FADD8
	.4byte 0xC1200000

.global lbl_805AE53C
lbl_805AE53C:
	# ROM: 0x3FADDC
	.4byte 0x4B7FFFFF

.global lbl_805AE540
lbl_805AE540:
	# ROM: 0x3FADE0
	.float 0.017453292

.global lbl_805AE544
lbl_805AE544:
	# ROM: 0x3FADE4
	.float 0.5

.global lbl_805AE548
lbl_805AE548:
	# ROM: 0x3FADE8
	.float 2.0

.global lbl_805AE54C
lbl_805AE54C:
	# ROM: 0x3FADEC
	.4byte 0x49800000

.global lbl_805AE550
lbl_805AE550:
	# ROM: 0x3FADF0
	.float 0.2

.global lbl_805AE554
lbl_805AE554:
	# ROM: 0x3FADF4
	.4byte 0x42C80000


.section .rodata
.balign 8
.global lbl_803D73C8
lbl_803D73C8:
	# ROM: 0x3D43C8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
