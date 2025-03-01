.include "macros.inc"

.section .data
.balign 8

.global __vt__19CHUDBillboardEffect
__vt__19CHUDBillboardEffect:
	# ROM: 0x3DDD70
	.4byte 0
	.4byte 0
	.4byte __dt__19CHUDBillboardEffectFv
	.4byte Accept__19CHUDBillboardEffectFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__19CHUDBillboardEffectFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__19CHUDBillboardEffectFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__19CHUDBillboardEffectCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__19CHUDBillboardEffectCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__6CActorCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A76E8
lbl_805A76E8:
	# ROM: 0x3F5088
	.4byte 0x3F4CCCCD
	.4byte 0

.section .bss
.balign 8

.lcomm lbl_8046C738, 0x10, 4

.section .sbss
.balign 8

# CHudBillboardEffect
.global g_BillboardCount__19CHUDBillboardEffect
g_BillboardCount__19CHUDBillboardEffect:
	.skip 0x4
.global g_IndirectTexturedBillboardCount__19CHUDBillboardEffect
g_IndirectTexturedBillboardCount__19CHUDBillboardEffect:
	.skip 0x4
.global lbl_805A8F78
lbl_805A8F78:
	.skip 0x8

.section .sdata2, "a"
.balign 8

.global lbl_805AB658
lbl_805AB658:
	# ROM: 0x3F7EF8
	.4byte 0x41F00000

.global lbl_805AB65C
lbl_805AB65C:
	# ROM: 0x3F7EFC
	.float 1.0

.global lbl_805AB660
lbl_805AB660:
	# ROM: 0x3F7F00
	.4byte 0

.global lbl_805AB664
lbl_805AB664:
	# ROM: 0x3F7F04
	.float 0.01

.global lbl_805AB668
lbl_805AB668:
	# ROM: 0x3F7F08
	.4byte 0x3E1EB852

.global lbl_805AB66C
lbl_805AB66C:
	# ROM: 0x3F7F0C
	.float 0.2

.global lbl_805AB670
lbl_805AB670:
	# ROM: 0x3F7F10
	.float 0.1
	.4byte 0

.global lbl_805AB678
lbl_805AB678:
	# ROM: 0x3F7F18
	.double 4.503601774854144E15

.section .text, "ax"

.global Accept__19CHUDBillboardEffectFR8IVisitor
Accept__19CHUDBillboardEffectFR8IVisitor:
/* 8012FAD8 0012CA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FADC 0012CA3C  7C 08 02 A6 */	mflr r0
/* 8012FAE0 0012CA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FAE4 0012CA44  7C 60 1B 78 */	mr r0, r3
/* 8012FAE8 0012CA48  7C 83 23 78 */	mr r3, r4
/* 8012FAEC 0012CA4C  81 84 00 00 */	lwz r12, 0(r4)
/* 8012FAF0 0012CA50  7C 04 03 78 */	mr r4, r0
/* 8012FAF4 0012CA54  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8012FAF8 0012CA58  7D 89 03 A6 */	mtctr r12
/* 8012FAFC 0012CA5C  4E 80 04 21 */	bctrl
/* 8012FB00 0012CA60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FB04 0012CA64  7C 08 03 A6 */	mtlr r0
/* 8012FB08 0012CA68  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FB0C 0012CA6C  4E 80 00 20 */	blr

.global Think__19CHUDBillboardEffectFfR13CStateManager
Think__19CHUDBillboardEffectFfR13CStateManager:
/* 8012FB10 0012CA70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8012FB14 0012CA74  7C 08 02 A6 */	mflr r0
/* 8012FB18 0012CA78  90 01 00 54 */	stw r0, 0x54(r1)
/* 8012FB1C 0012CA7C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8012FB20 0012CA80  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8012FB24 0012CA84  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8012FB28 0012CA88  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8012FB2C 0012CA8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012FB30 0012CA90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012FB34 0012CA94  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012FB38 0012CA98  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8012FB3C 0012CA9C  FF C0 08 90 */	fmr f30, f1
/* 8012FB40 0012CAA0  7C 7D 1B 78 */	mr r29, r3
/* 8012FB44 0012CAA4  7C 9E 23 78 */	mr r30, r4
/* 8012FB48 0012CAA8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012FB4C 0012CAAC  41 82 01 04 */	beq lbl_8012FC50
/* 8012FB50 0012CAB0  80 DE 08 50 */	lwz r6, 0x850(r30)
/* 8012FB54 0012CAB4  7F C3 F3 78 */	mr r3, r30
/* 8012FB58 0012CAB8  7F A4 EB 78 */	mr r4, r29
/* 8012FB5C 0012CABC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8012FB60 0012CAC0  80 06 00 68 */	lwz r0, 0x68(r6)
/* 8012FB64 0012CAC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012FB68 0012CAC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012FB6C 0012CACC  4B F1 57 0D */	bl SetActorAreaId__13CStateManagerFR6CActor7TAreaId
/* 8012FB70 0012CAD0  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 8012FB74 0012CAD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FB78 0012CAD8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8012FB7C 0012CADC  7D 89 03 A6 */	mtctr r12
/* 8012FB80 0012CAE0  4E 80 04 21 */	bctrl
/* 8012FB84 0012CAE4  FF E0 08 90 */	fmr f31, f1
/* 8012FB88 0012CAE8  83 FD 00 E8 */	lwz r31, 0xe8(r29)
/* 8012FB8C 0012CAEC  48 00 06 D9 */	bl CalcGenRate__19CHUDBillboardEffectFv
/* 8012FB90 0012CAF0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012FB94 0012CAF4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8012FB98 0012CAF8  7F E3 FB 78 */	mr r3, r31
/* 8012FB9C 0012CAFC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8012FBA0 0012CB00  7D 89 03 A6 */	mtctr r12
/* 8012FBA4 0012CB04  4E 80 04 21 */	bctrl
/* 8012FBA8 0012CB08  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 8012FBAC 0012CB0C  FC 20 F0 90 */	fmr f1, f30
/* 8012FBB0 0012CB10  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FBB4 0012CB14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8012FBB8 0012CB18  7D 89 03 A6 */	mtctr r12
/* 8012FBBC 0012CB1C  4E 80 04 21 */	bctrl
/* 8012FBC0 0012CB20  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 8012FBC4 0012CB24  FC 20 F8 90 */	fmr f1, f31
/* 8012FBC8 0012CB28  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FBCC 0012CB2C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8012FBD0 0012CB30  7D 89 03 A6 */	mtctr r12
/* 8012FBD4 0012CB34  4E 80 04 21 */	bctrl
/* 8012FBD8 0012CB38  88 1D 01 04 */	lbz r0, 0x104(r29)
/* 8012FBDC 0012CB3C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8012FBE0 0012CB40  40 82 00 3C */	bne lbl_8012FC1C
/* 8012FBE4 0012CB44  C0 3D 01 08 */	lfs f1, 0x108(r29)
/* 8012FBE8 0012CB48  C0 02 99 38 */	lfs f0, lbl_805AB658@sda21(r2)
/* 8012FBEC 0012CB4C  EC 21 F0 2A */	fadds f1, f1, f30
/* 8012FBF0 0012CB50  D0 3D 01 08 */	stfs f1, 0x108(r29)
/* 8012FBF4 0012CB54  C0 3D 01 08 */	lfs f1, 0x108(r29)
/* 8012FBF8 0012CB58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012FBFC 0012CB5C  40 81 00 20 */	ble lbl_8012FC1C
/* 8012FC00 0012CB60  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8012FC04 0012CB64  7F C3 F3 78 */	mr r3, r30
/* 8012FC08 0012CB68  38 81 00 14 */	addi r4, r1, 0x14
/* 8012FC0C 0012CB6C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8012FC10 0012CB70  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8012FC14 0012CB74  4B F1 C6 59 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8012FC18 0012CB78  48 00 00 38 */	b lbl_8012FC50
lbl_8012FC1C:
/* 8012FC1C 0012CB7C  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 8012FC20 0012CB80  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FC24 0012CB84  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8012FC28 0012CB88  7D 89 03 A6 */	mtctr r12
/* 8012FC2C 0012CB8C  4E 80 04 21 */	bctrl
/* 8012FC30 0012CB90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FC34 0012CB94  41 82 00 1C */	beq lbl_8012FC50
/* 8012FC38 0012CB98  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8012FC3C 0012CB9C  7F C3 F3 78 */	mr r3, r30
/* 8012FC40 0012CBA0  38 81 00 0C */	addi r4, r1, 0xc
/* 8012FC44 0012CBA4  B0 01 00 08 */	sth r0, 8(r1)
/* 8012FC48 0012CBA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8012FC4C 0012CBAC  4B F1 C6 21 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_8012FC50:
/* 8012FC50 0012CBB0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8012FC54 0012CBB4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8012FC58 0012CBB8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8012FC5C 0012CBBC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8012FC60 0012CBC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012FC64 0012CBC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012FC68 0012CBC8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012FC6C 0012CBCC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012FC70 0012CBD0  7C 08 03 A6 */	mtlr r0
/* 8012FC74 0012CBD4  38 21 00 50 */	addi r1, r1, 0x50
/* 8012FC78 0012CBD8  4E 80 00 20 */	blr

.global SetGeneratorRate__12CParticleGenFf
SetGeneratorRate__12CParticleGenFf:
/* 8012FC7C 0012CBDC  4E 80 00 20 */	blr

.global GetGeneratorRate__12CParticleGenCFv
GetGeneratorRate__12CParticleGenCFv:
/* 8012FC80 0012CBE0  C0 22 99 3C */	lfs f1, lbl_805AB65C@sda21(r2)
/* 8012FC84 0012CBE4  4E 80 00 20 */	blr

.global Render__19CHUDBillboardEffectCFRC13CStateManager
Render__19CHUDBillboardEffectCFRC13CStateManager:
/* 8012FC88 0012CBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FC8C 0012CBEC  7C 08 02 A6 */	mflr r0
/* 8012FC90 0012CBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FC94 0012CBF4  88 83 01 04 */	lbz r4, 0x104(r3)
/* 8012FC98 0012CBF8  54 80 D7 FF */	rlwinm. r0, r4, 0x1a, 0x1f, 0x1f
/* 8012FC9C 0012CBFC  41 82 00 20 */	beq lbl_8012FCBC
/* 8012FCA0 0012CC00  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8012FCA4 0012CC04  40 82 00 18 */	bne lbl_8012FCBC
/* 8012FCA8 0012CC08  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 8012FCAC 0012CC0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FCB0 0012CC10  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8012FCB4 0012CC14  7D 89 03 A6 */	mtctr r12
/* 8012FCB8 0012CC18  4E 80 04 21 */	bctrl
lbl_8012FCBC:
/* 8012FCBC 0012CC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FCC0 0012CC20  7C 08 03 A6 */	mtlr r0
/* 8012FCC4 0012CC24  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FCC8 0012CC28  4E 80 00 20 */	blr

.global PreRender__19CHUDBillboardEffectFR13CStateManagerRC14CFrustumPlanes
PreRender__19CHUDBillboardEffectFR13CStateManagerRC14CFrustumPlanes:
/* 8012FCCC 0012CC2C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8012FCD0 0012CC30  7C 08 02 A6 */	mflr r0
/* 8012FCD4 0012CC34  90 01 00 94 */	stw r0, 0x94(r1)
/* 8012FCD8 0012CC38  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8012FCDC 0012CC3C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8012FCE0 0012CC40  7C 9E 23 78 */	mr r30, r4
/* 8012FCE4 0012CC44  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8012FCE8 0012CC48  7C 7D 1B 78 */	mr r29, r3
/* 8012FCEC 0012CC4C  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8012FCF0 0012CC50  80 03 02 F4 */	lwz r0, 0x2f4(r3)
/* 8012FCF4 0012CC54  2C 00 00 00 */	cmpwi r0, 0
/* 8012FCF8 0012CC58  40 82 00 78 */	bne lbl_8012FD70
/* 8012FCFC 0012CC5C  80 9E 08 70 */	lwz r4, 0x870(r30)
/* 8012FD00 0012CC60  7F C5 F3 78 */	mr r5, r30
/* 8012FD04 0012CC64  38 61 00 18 */	addi r3, r1, 0x18
/* 8012FD08 0012CC68  4B ED AC 61 */	bl GetCurrentCameraTransform__14CCameraManagerCFRC13CStateManager
/* 8012FD0C 0012CC6C  38 61 00 48 */	addi r3, r1, 0x48
/* 8012FD10 0012CC70  38 81 00 18 */	addi r4, r1, 0x18
/* 8012FD14 0012CC74  48 1E 2E 61 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8012FD18 0012CC78  83 FD 00 E8 */	lwz r31, 0xe8(r29)
/* 8012FD1C 0012CC7C  38 61 00 0C */	addi r3, r1, 0xc
/* 8012FD20 0012CC80  38 81 00 48 */	addi r4, r1, 0x48
/* 8012FD24 0012CC84  38 BD 00 EC */	addi r5, r29, 0xec
/* 8012FD28 0012CC88  48 1E 2D C1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8012FD2C 0012CC8C  7F E3 FB 78 */	mr r3, r31
/* 8012FD30 0012CC90  38 81 00 0C */	addi r4, r1, 0xc
/* 8012FD34 0012CC94  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012FD38 0012CC98  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8012FD3C 0012CC9C  7D 89 03 A6 */	mtctr r12
/* 8012FD40 0012CCA0  4E 80 04 21 */	bctrl
/* 8012FD44 0012CCA4  80 7D 00 E8 */	lwz r3, 0xe8(r29)
/* 8012FD48 0012CCA8  38 81 00 48 */	addi r4, r1, 0x48
/* 8012FD4C 0012CCAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FD50 0012CCB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8012FD54 0012CCB4  7D 89 03 A6 */	mtctr r12
/* 8012FD58 0012CCB8  4E 80 04 21 */	bctrl
/* 8012FD5C 0012CCBC  88 1D 01 04 */	lbz r0, 0x104(r29)
/* 8012FD60 0012CCC0  38 60 00 01 */	li r3, 1
/* 8012FD64 0012CCC4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8012FD68 0012CCC8  98 1D 01 04 */	stb r0, 0x104(r29)
/* 8012FD6C 0012CCCC  48 00 00 14 */	b lbl_8012FD80
lbl_8012FD70:
/* 8012FD70 0012CCD0  88 1D 01 04 */	lbz r0, 0x104(r29)
/* 8012FD74 0012CCD4  38 60 00 00 */	li r3, 0
/* 8012FD78 0012CCD8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8012FD7C 0012CCDC  98 1D 01 04 */	stb r0, 0x104(r29)
lbl_8012FD80:
/* 8012FD80 0012CCE0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8012FD84 0012CCE4  7F C3 F3 78 */	mr r3, r30
/* 8012FD88 0012CCE8  38 81 00 08 */	addi r4, r1, 8
/* 8012FD8C 0012CCEC  B0 01 00 08 */	sth r0, 8(r1)
/* 8012FD90 0012CCF0  4B F1 4B 49 */	bl RenderLast__13CStateManagerFRC9TUniqueId
/* 8012FD94 0012CCF4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8012FD98 0012CCF8  88 1D 01 04 */	lbz r0, 0x104(r29)
/* 8012FD9C 0012CCFC  7C 63 00 34 */	cntlzw r3, r3
/* 8012FDA0 0012CD00  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 8012FDA4 0012CD04  98 1D 01 04 */	stb r0, 0x104(r29)
/* 8012FDA8 0012CD08  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8012FDAC 0012CD0C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8012FDB0 0012CD10  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8012FDB4 0012CD14  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8012FDB8 0012CD18  7C 08 03 A6 */	mtlr r0
/* 8012FDBC 0012CD1C  38 21 00 90 */	addi r1, r1, 0x90
/* 8012FDC0 0012CD20  4E 80 00 20 */	blr

.global AddToRenderer__19CHUDBillboardEffectCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__19CHUDBillboardEffectCFRC14CFrustumPlanesRC13CStateManager:
/* 8012FDC4 0012CD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FDC8 0012CD28  7C 08 02 A6 */	mflr r0
/* 8012FDCC 0012CD2C  7C 64 1B 78 */	mr r4, r3
/* 8012FDD0 0012CD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FDD4 0012CD34  88 63 01 04 */	lbz r3, 0x104(r3)
/* 8012FDD8 0012CD38  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8012FDDC 0012CD3C  41 82 00 24 */	beq lbl_8012FE00
/* 8012FDE0 0012CD40  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8012FDE4 0012CD44  41 82 00 1C */	beq lbl_8012FE00
/* 8012FDE8 0012CD48  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8012FDEC 0012CD4C  80 84 00 E8 */	lwz r4, 0xe8(r4)
/* 8012FDF0 0012CD50  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FDF4 0012CD54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8012FDF8 0012CD58  7D 89 03 A6 */	mtctr r12
/* 8012FDFC 0012CD5C  4E 80 04 21 */	bctrl
lbl_8012FE00:
/* 8012FE00 0012CD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FE04 0012CD64  7C 08 03 A6 */	mtlr r0
/* 8012FE08 0012CD68  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FE0C 0012CD6C  4E 80 00 20 */	blr

.global __dt__19CHUDBillboardEffectFv
__dt__19CHUDBillboardEffectFv:
/* 8012FE10 0012CD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FE14 0012CD74  7C 08 02 A6 */	mflr r0
/* 8012FE18 0012CD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FE1C 0012CD7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012FE20 0012CD80  7C 9F 23 78 */	mr r31, r4
/* 8012FE24 0012CD84  93 C1 00 08 */	stw r30, 8(r1)
/* 8012FE28 0012CD88  7C 7E 1B 79 */	or. r30, r3, r3
/* 8012FE2C 0012CD8C  41 82 00 B0 */	beq lbl_8012FEDC
/* 8012FE30 0012CD90  3C 60 80 3E */	lis r3, __vt__19CHUDBillboardEffect@ha
/* 8012FE34 0012CD94  38 03 0D 70 */	addi r0, r3, __vt__19CHUDBillboardEffect@l
/* 8012FE38 0012CD98  90 1E 00 00 */	stw r0, 0(r30)
/* 8012FE3C 0012CD9C  80 6D A3 B0 */	lwz r3, g_BillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 8012FE40 0012CDA0  38 03 FF FF */	addi r0, r3, -1
/* 8012FE44 0012CDA4  90 0D A3 B0 */	stw r0, g_BillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 8012FE48 0012CDA8  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8012FE4C 0012CDAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FE50 0012CDB0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8012FE54 0012CDB4  7D 89 03 A6 */	mtctr r12
/* 8012FE58 0012CDB8  4E 80 04 21 */	bctrl
/* 8012FE5C 0012CDBC  3C 03 AF BF */	addis r0, r3, 0xafbf
/* 8012FE60 0012CDC0  28 00 52 54 */	cmplwi r0, 0x5254
/* 8012FE64 0012CDC4  40 82 00 20 */	bne lbl_8012FE84
/* 8012FE68 0012CDC8  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8012FE6C 0012CDCC  48 1E 77 D9 */	bl IsIndirectTextured__11CElementGenCFv
/* 8012FE70 0012CDD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FE74 0012CDD4  41 82 00 10 */	beq lbl_8012FE84
/* 8012FE78 0012CDD8  80 6D A3 B4 */	lwz r3, g_IndirectTexturedBillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 8012FE7C 0012CDDC  38 03 FF FF */	addi r0, r3, -1
/* 8012FE80 0012CDE0  90 0D A3 B4 */	stw r0, g_IndirectTexturedBillboardCount__19CHUDBillboardEffect@sda21(r13)
lbl_8012FE84:
/* 8012FE84 0012CDE4  34 1E 00 E8 */	addic. r0, r30, 0xe8
/* 8012FE88 0012CDE8  41 82 00 24 */	beq lbl_8012FEAC
/* 8012FE8C 0012CDEC  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8012FE90 0012CDF0  28 03 00 00 */	cmplwi r3, 0
/* 8012FE94 0012CDF4  41 82 00 18 */	beq lbl_8012FEAC
/* 8012FE98 0012CDF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8012FE9C 0012CDFC  38 80 00 01 */	li r4, 1
/* 8012FEA0 0012CE00  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012FEA4 0012CE04  7D 89 03 A6 */	mtctr r12
/* 8012FEA8 0012CE08  4E 80 04 21 */	bctrl
lbl_8012FEAC:
/* 8012FEAC 0012CE0C  28 1E 00 00 */	cmplwi r30, 0
/* 8012FEB0 0012CE10  41 82 00 1C */	beq lbl_8012FECC
/* 8012FEB4 0012CE14  3C 80 80 3E */	lis r4, __vt__7CEffect@ha
/* 8012FEB8 0012CE18  7F C3 F3 78 */	mr r3, r30
/* 8012FEBC 0012CE1C  38 04 A1 18 */	addi r0, r4, __vt__7CEffect@l
/* 8012FEC0 0012CE20  38 80 00 00 */	li r4, 0
/* 8012FEC4 0012CE24  90 1E 00 00 */	stw r0, 0(r30)
/* 8012FEC8 0012CE28  4B F2 58 29 */	bl __dt__6CActorFv
lbl_8012FECC:
/* 8012FECC 0012CE2C  7F E0 07 35 */	extsh. r0, r31
/* 8012FED0 0012CE30  40 81 00 0C */	ble lbl_8012FEDC
/* 8012FED4 0012CE34  7F C3 F3 78 */	mr r3, r30
/* 8012FED8 0012CE38  48 1E 5A 59 */	bl Free__7CMemoryFPCv
lbl_8012FEDC:
/* 8012FEDC 0012CE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FEE0 0012CE40  7F C3 F3 78 */	mr r3, r30
/* 8012FEE4 0012CE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012FEE8 0012CE48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012FEEC 0012CE4C  7C 08 03 A6 */	mtlr r0
/* 8012FEF0 0012CE50  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FEF4 0012CE54  4E 80 00 20 */	blr

.global "__ct__19CHUDBillboardEffectFRCQ24rstl44optional_object<25TToken<15CGenDescription>>RCQ24rstl49optional_object<30TToken<20CElectricDescription>>9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fRC9CVector3fRC6CColorRC9CVector3fRC9CVector3f"
"__ct__19CHUDBillboardEffectFRCQ24rstl44optional_object<25TToken<15CGenDescription>>RCQ24rstl49optional_object<30TToken<20CElectricDescription>>9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fRC9CVector3fRC6CColorRC9CVector3fRC9CVector3f":
/* 8012FEF8 0012CE58  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8012FEFC 0012CE5C  7C 08 02 A6 */	mflr r0
/* 8012FF00 0012CE60  90 01 00 94 */	stw r0, 0x94(r1)
/* 8012FF04 0012CE64  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8012FF08 0012CE68  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8012FF0C 0012CE6C  BE C1 00 58 */	stmw r22, 0x58(r1)
/* 8012FF10 0012CE70  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8012FF14 0012CE74  3D 60 80 57 */	lis r11, NullConnectionList__7CEntity@ha
/* 8012FF18 0012CE78  81 8D A3 90 */	lwz r12, kInvalidAreaId@sda21(r13)
/* 8012FF1C 0012CE7C  FF E0 08 90 */	fmr f31, f1
/* 8012FF20 0012CE80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012FF24 0012CE84  38 0B D4 10 */	addi r0, r11, NullConnectionList__7CEntity@l
/* 8012FF28 0012CE88  7C 7F 1B 78 */	mr r31, r3
/* 8012FF2C 0012CE8C  7C 99 23 78 */	mr r25, r4
/* 8012FF30 0012CE90  7C BA 2B 78 */	mr r26, r5
/* 8012FF34 0012CE94  7C D6 33 78 */	mr r22, r6
/* 8012FF38 0012CE98  91 81 00 20 */	stw r12, 0x20(r1)
/* 8012FF3C 0012CE9C  83 A1 00 98 */	lwz r29, 0x98(r1)
/* 8012FF40 0012CEA0  7C F7 3B 78 */	mr r23, r7
/* 8012FF44 0012CEA4  83 C1 00 9C */	lwz r30, 0x9c(r1)
/* 8012FF48 0012CEA8  7D 18 43 78 */	mr r24, r8
/* 8012FF4C 0012CEAC  7D 3B 4B 78 */	mr r27, r9
/* 8012FF50 0012CEB0  7D 5C 53 78 */	mr r28, r10
/* 8012FF54 0012CEB4  7C 05 03 78 */	mr r5, r0
/* 8012FF58 0012CEB8  38 61 00 34 */	addi r3, r1, 0x34
/* 8012FF5C 0012CEBC  38 81 00 20 */	addi r4, r1, 0x20
/* 8012FF60 0012CEC0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8012FF64 0012CEC4  4B F2 15 21 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8012FF68 0012CEC8  A0 16 00 00 */	lhz r0, 0(r22)
/* 8012FF6C 0012CECC  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 8012FF70 0012CED0  39 03 66 70 */	addi r8, r3, sIdentity__12CTransform4f@l
/* 8012FF74 0012CED4  7E E6 BB 78 */	mr r6, r23
/* 8012FF78 0012CED8  B0 01 00 08 */	sth r0, 8(r1)
/* 8012FF7C 0012CEDC  7F E3 FB 78 */	mr r3, r31
/* 8012FF80 0012CEE0  7F 07 C3 78 */	mr r7, r24
/* 8012FF84 0012CEE4  38 81 00 08 */	addi r4, r1, 8
/* 8012FF88 0012CEE8  38 A1 00 34 */	addi r5, r1, 0x34
/* 8012FF8C 0012CEEC  4B F2 AD C5 */	bl "__ct__7CEffectF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f"
/* 8012FF90 0012CEF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8012FF94 0012CEF4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8012FF98 0012CEF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8012FF9C 0012CEFC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8012FFA0 0012CF00  7C 64 1B 78 */	mr r4, r3
/* 8012FFA4 0012CF04  7C 03 02 14 */	add r0, r3, r0
/* 8012FFA8 0012CF08  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012FFAC 0012CF0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012FFB0 0012CF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FFB4 0012CF14  48 00 00 08 */	b lbl_8012FFBC
lbl_8012FFB8:
/* 8012FFB8 0012CF18  38 84 00 0C */	addi r4, r4, 0xc
lbl_8012FFBC:
/* 8012FFBC 0012CF1C  7C 04 00 40 */	cmplw r4, r0
/* 8012FFC0 0012CF20  40 82 FF F8 */	bne lbl_8012FFB8
/* 8012FFC4 0012CF24  28 03 00 00 */	cmplwi r3, 0
/* 8012FFC8 0012CF28  41 82 00 08 */	beq lbl_8012FFD0
/* 8012FFCC 0012CF2C  48 1E 59 65 */	bl Free__7CMemoryFPCv
lbl_8012FFD0:
/* 8012FFD0 0012CF30  3C 60 80 3E */	lis r3, __vt__19CHUDBillboardEffect@ha
/* 8012FFD4 0012CF34  38 80 00 00 */	li r4, 0
/* 8012FFD8 0012CF38  38 03 0D 70 */	addi r0, r3, __vt__19CHUDBillboardEffect@l
/* 8012FFDC 0012CF3C  38 60 00 01 */	li r3, 1
/* 8012FFE0 0012CF40  90 1F 00 00 */	stw r0, 0(r31)
/* 8012FFE4 0012CF44  C0 02 99 40 */	lfs f0, lbl_805AB660@sda21(r2)
/* 8012FFE8 0012CF48  90 9F 00 E8 */	stw r4, 0xe8(r31)
/* 8012FFEC 0012CF4C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8012FFF0 0012CF50  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8012FFF4 0012CF54  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8012FFF8 0012CF58  EC 5F 10 2A */	fadds f2, f31, f2
/* 8012FFFC 0012CF5C  D0 3F 00 EC */	stfs f1, 0xec(r31)
/* 80130000 0012CF60  D0 5F 00 F0 */	stfs f2, 0xf0(r31)
/* 80130004 0012CF64  D0 7F 00 F4 */	stfs f3, 0xf4(r31)
/* 80130008 0012CF68  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8013000C 0012CF6C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80130010 0012CF70  C0 9D 00 04 */	lfs f4, 4(r29)
/* 80130014 0012CF74  C0 7B 00 04 */	lfs f3, 4(r27)
/* 80130018 0012CF78  EC 22 00 72 */	fmuls f1, f2, f1
/* 8013001C 0012CF7C  C0 BD 00 08 */	lfs f5, 8(r29)
/* 80130020 0012CF80  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80130024 0012CF84  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80130028 0012CF88  D0 3F 00 F8 */	stfs f1, 0xf8(r31)
/* 8013002C 0012CF8C  EC 25 00 B2 */	fmuls f1, f5, f2
/* 80130030 0012CF90  D0 7F 00 FC */	stfs f3, 0xfc(r31)
/* 80130034 0012CF94  D0 3F 01 00 */	stfs f1, 0x100(r31)
/* 80130038 0012CF98  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 8013003C 0012CF9C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80130040 0012CFA0  98 1F 01 04 */	stb r0, 0x104(r31)
/* 80130044 0012CFA4  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 80130048 0012CFA8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8013004C 0012CFAC  98 1F 01 04 */	stb r0, 0x104(r31)
/* 80130050 0012CFB0  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 80130054 0012CFB4  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80130058 0012CFB8  98 1F 01 04 */	stb r0, 0x104(r31)
/* 8013005C 0012CFBC  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 80130060 0012CFC0  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80130064 0012CFC4  98 1F 01 04 */	stb r0, 0x104(r31)
/* 80130068 0012CFC8  D0 1F 01 08 */	stfs f0, 0x108(r31)
/* 8013006C 0012CFCC  88 19 00 08 */	lbz r0, 8(r25)
/* 80130070 0012CFD0  28 00 00 00 */	cmplwi r0, 0
/* 80130074 0012CFD4  41 82 00 B0 */	beq lbl_80130124
/* 80130078 0012CFD8  88 1F 01 04 */	lbz r0, 0x104(r31)
/* 8013007C 0012CFDC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80130080 0012CFE0  3C 60 80 3D */	lis r3, lbl_803D0048@ha
/* 80130084 0012CFE4  3A C0 00 00 */	li r22, 0
/* 80130088 0012CFE8  98 1F 01 04 */	stb r0, 0x104(r31)
/* 8013008C 0012CFEC  38 83 00 48 */	addi r4, r3, lbl_803D0048@l
/* 80130090 0012CFF0  38 60 03 40 */	li r3, 0x340
/* 80130094 0012CFF4  38 A0 00 00 */	li r5, 0
/* 80130098 0012CFF8  48 1E 57 D5 */	bl __nw__FUlPCcPCc
/* 8013009C 0012CFFC  7C 7A 1B 79 */	or. r26, r3, r3
/* 801300A0 0012D000  41 82 00 2C */	beq lbl_801300CC
/* 801300A4 0012D004  7F 24 CB 78 */	mr r4, r25
/* 801300A8 0012D008  38 61 00 2C */	addi r3, r1, 0x2c
/* 801300AC 0012D00C  48 21 0D FD */	bl __ct__6CTokenFRC6CToken
/* 801300B0 0012D010  7F 43 D3 78 */	mr r3, r26
/* 801300B4 0012D014  38 81 00 2C */	addi r4, r1, 0x2c
/* 801300B8 0012D018  3A C0 00 01 */	li r22, 1
/* 801300BC 0012D01C  38 A0 00 00 */	li r5, 0
/* 801300C0 0012D020  38 C0 00 01 */	li r6, 1
/* 801300C4 0012D024  48 1E F3 1D */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801300C8 0012D028  7C 7A 1B 78 */	mr r26, r3
lbl_801300CC:
/* 801300CC 0012D02C  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801300D0 0012D030  28 03 00 00 */	cmplwi r3, 0
/* 801300D4 0012D034  41 82 00 18 */	beq lbl_801300EC
/* 801300D8 0012D038  81 83 00 00 */	lwz r12, 0(r3)
/* 801300DC 0012D03C  38 80 00 01 */	li r4, 1
/* 801300E0 0012D040  81 8C 00 08 */	lwz r12, 8(r12)
/* 801300E4 0012D044  7D 89 03 A6 */	mtctr r12
/* 801300E8 0012D048  4E 80 04 21 */	bctrl
lbl_801300EC:
/* 801300EC 0012D04C  7E C0 07 75 */	extsb. r0, r22
/* 801300F0 0012D050  93 5F 00 E8 */	stw r26, 0xe8(r31)
/* 801300F4 0012D054  41 82 00 10 */	beq lbl_80130104
/* 801300F8 0012D058  38 61 00 2C */	addi r3, r1, 0x2c
/* 801300FC 0012D05C  38 80 00 00 */	li r4, 0
/* 80130100 0012D060  48 21 0D 41 */	bl __dt__6CTokenFv
lbl_80130104:
/* 80130104 0012D064  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 80130108 0012D068  48 1E 75 3D */	bl IsIndirectTextured__11CElementGenCFv
/* 8013010C 0012D06C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130110 0012D070  41 82 00 8C */	beq lbl_8013019C
/* 80130114 0012D074  80 6D A3 B4 */	lwz r3, g_IndirectTexturedBillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 80130118 0012D078  38 03 00 01 */	addi r0, r3, 1
/* 8013011C 0012D07C  90 0D A3 B4 */	stw r0, g_IndirectTexturedBillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 80130120 0012D080  48 00 00 7C */	b lbl_8013019C
lbl_80130124:
/* 80130124 0012D084  3C 60 80 3D */	lis r3, lbl_803D0048@ha
/* 80130128 0012D088  3A C0 00 00 */	li r22, 0
/* 8013012C 0012D08C  38 83 00 48 */	addi r4, r3, lbl_803D0048@l
/* 80130130 0012D090  38 A0 00 00 */	li r5, 0
/* 80130134 0012D094  38 60 04 58 */	li r3, 0x458
/* 80130138 0012D098  48 1E 57 35 */	bl __nw__FUlPCcPCc
/* 8013013C 0012D09C  7C 79 1B 79 */	or. r25, r3, r3
/* 80130140 0012D0A0  41 82 00 24 */	beq lbl_80130164
/* 80130144 0012D0A4  7F 44 D3 78 */	mr r4, r26
/* 80130148 0012D0A8  38 61 00 24 */	addi r3, r1, 0x24
/* 8013014C 0012D0AC  48 21 0D 5D */	bl __ct__6CTokenFRC6CToken
/* 80130150 0012D0B0  7F 23 CB 78 */	mr r3, r25
/* 80130154 0012D0B4  38 81 00 24 */	addi r4, r1, 0x24
/* 80130158 0012D0B8  3A C0 00 01 */	li r22, 1
/* 8013015C 0012D0BC  48 23 20 15 */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 80130160 0012D0C0  7C 79 1B 78 */	mr r25, r3
lbl_80130164:
/* 80130164 0012D0C4  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 80130168 0012D0C8  28 03 00 00 */	cmplwi r3, 0
/* 8013016C 0012D0CC  41 82 00 18 */	beq lbl_80130184
/* 80130170 0012D0D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80130174 0012D0D4  38 80 00 01 */	li r4, 1
/* 80130178 0012D0D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8013017C 0012D0DC  7D 89 03 A6 */	mtctr r12
/* 80130180 0012D0E0  4E 80 04 21 */	bctrl
lbl_80130184:
/* 80130184 0012D0E4  7E C0 07 75 */	extsb. r0, r22
/* 80130188 0012D0E8  93 3F 00 E8 */	stw r25, 0xe8(r31)
/* 8013018C 0012D0EC  41 82 00 10 */	beq lbl_8013019C
/* 80130190 0012D0F0  38 61 00 24 */	addi r3, r1, 0x24
/* 80130194 0012D0F4  38 80 00 00 */	li r4, 0
/* 80130198 0012D0F8  48 21 0C A9 */	bl __dt__6CTokenFv
lbl_8013019C:
/* 8013019C 0012D0FC  80 6D A3 B0 */	lwz r3, g_BillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 801301A0 0012D100  7F 84 E3 78 */	mr r4, r28
/* 801301A4 0012D104  38 03 00 01 */	addi r0, r3, 1
/* 801301A8 0012D108  90 0D A3 B0 */	stw r0, g_BillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 801301AC 0012D10C  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801301B0 0012D110  81 83 00 00 */	lwz r12, 0(r3)
/* 801301B4 0012D114  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801301B8 0012D118  7D 89 03 A6 */	mtctr r12
/* 801301BC 0012D11C  4E 80 04 21 */	bctrl
/* 801301C0 0012D120  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801301C4 0012D124  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 801301C8 0012D128  81 83 00 00 */	lwz r12, 0(r3)
/* 801301CC 0012D12C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801301D0 0012D130  7D 89 03 A6 */	mtctr r12
/* 801301D4 0012D134  4E 80 04 21 */	bctrl
/* 801301D8 0012D138  7F E3 FB 78 */	mr r3, r31
/* 801301DC 0012D13C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801301E0 0012D140  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801301E4 0012D144  BA C1 00 58 */	lmw r22, 0x58(r1)
/* 801301E8 0012D148  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801301EC 0012D14C  7C 08 03 A6 */	mtlr r0
/* 801301F0 0012D150  38 21 00 90 */	addi r1, r1, 0x90
/* 801301F4 0012D154  4E 80 00 20 */	blr

.global GetNearClipDistance__19CHUDBillboardEffectFRC13CStateManager
GetNearClipDistance__19CHUDBillboardEffectFRC13CStateManager:
/* 801301F8 0012D158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801301FC 0012D15C  7C 08 02 A6 */	mflr r0
/* 80130200 0012D160  7C 64 1B 78 */	mr r4, r3
/* 80130204 0012D164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130208 0012D168  80 63 08 70 */	lwz r3, 0x870(r3)
/* 8013020C 0012D16C  4B ED B9 0D */	bl GetCurrentCamera__14CCameraManagerCFRC13CStateManager
/* 80130210 0012D170  C0 22 99 44 */	lfs f1, lbl_805AB664@sda21(r2)
/* 80130214 0012D174  C0 03 01 60 */	lfs f0, 0x160(r3)
/* 80130218 0012D178  EC 21 00 2A */	fadds f1, f1, f0
/* 8013021C 0012D17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130220 0012D180  7C 08 03 A6 */	mtlr r0
/* 80130224 0012D184  38 21 00 10 */	addi r1, r1, 0x10
/* 80130228 0012D188  4E 80 00 20 */	blr

.global GetScaleForPOV__19CHUDBillboardEffectFRC13CStateManager
GetScaleForPOV__19CHUDBillboardEffectFRC13CStateManager:
/* 8013022C 0012D18C  88 0D A3 B8 */	lbz r0, lbl_805A8F78@sda21(r13)
/* 80130230 0012D190  7C 00 07 75 */	extsb. r0, r0
/* 80130234 0012D194  40 82 00 24 */	bne lbl_80130258
/* 80130238 0012D198  C0 22 99 48 */	lfs f1, lbl_805AB668@sda21(r2)
/* 8013023C 0012D19C  3C 60 80 47 */	lis r3, lbl_8046C738@ha
/* 80130240 0012D1A0  38 00 00 01 */	li r0, 1
/* 80130244 0012D1A4  C0 02 99 3C */	lfs f0, lbl_805AB65C@sda21(r2)
/* 80130248 0012D1A8  D4 23 C7 38 */	stfsu f1, lbl_8046C738@l(r3)
/* 8013024C 0012D1AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80130250 0012D1B0  D0 23 00 08 */	stfs f1, 8(r3)
/* 80130254 0012D1B4  98 0D A3 B8 */	stb r0, lbl_805A8F78@sda21(r13)
lbl_80130258:
/* 80130258 0012D1B8  3C 60 80 47 */	lis r3, lbl_8046C738@ha
/* 8013025C 0012D1BC  38 63 C7 38 */	addi r3, r3, lbl_8046C738@l
/* 80130260 0012D1C0  4E 80 00 20 */	blr

.global CalcGenRate__19CHUDBillboardEffectFv
CalcGenRate__19CHUDBillboardEffectFv:
/* 80130264 0012D1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80130268 0012D1C8  80 AD A3 B0 */	lwz r5, g_BillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 8013026C 0012D1CC  80 8D A3 B4 */	lwz r4, g_IndirectTexturedBillboardCount__19CHUDBillboardEffect@sda21(r13)
/* 80130270 0012D1D0  7C 05 22 14 */	add r0, r5, r4
/* 80130274 0012D1D4  2C 00 00 04 */	cmpwi r0, 4
/* 80130278 0012D1D8  41 81 00 0C */	bgt lbl_80130284
/* 8013027C 0012D1DC  C0 22 99 40 */	lfs f1, lbl_805AB660@sda21(r2)
/* 80130280 0012D1E0  48 00 00 44 */	b lbl_801302C4
lbl_80130284:
/* 80130284 0012D1E4  3C 60 43 30 */	lis r3, 0x4330
/* 80130288 0012D1E8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8013028C 0012D1EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80130290 0012D1F0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80130294 0012D1F4  C8 62 99 58 */	lfd f3, lbl_805AB678@sda21(r2)
/* 80130298 0012D1F8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8013029C 0012D1FC  C0 22 99 50 */	lfs f1, lbl_805AB670@sda21(r2)
/* 801302A0 0012D200  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801302A4 0012D204  90 01 00 14 */	stw r0, 0x14(r1)
/* 801302A8 0012D208  EC 00 18 28 */	fsubs f0, f0, f3
/* 801302AC 0012D20C  C0 82 99 4C */	lfs f4, lbl_805AB66C@sda21(r2)
/* 801302B0 0012D210  90 61 00 10 */	stw r3, 0x10(r1)
/* 801302B4 0012D214  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801302B8 0012D218  EC 01 00 32 */	fmuls f0, f1, f0
/* 801302BC 0012D21C  EC 22 18 28 */	fsubs f1, f2, f3
/* 801302C0 0012D220  EC 24 00 7A */	fmadds f1, f4, f1, f0
lbl_801302C4:
/* 801302C4 0012D224  C0 0D 8B 28 */	lfs f0, lbl_805A76E8@sda21(r13)
/* 801302C8 0012D228  D0 21 00 08 */	stfs f1, 8(r1)
/* 801302CC 0012D22C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801302D0 0012D230  40 80 00 0C */	bge lbl_801302DC
/* 801302D4 0012D234  38 61 00 08 */	addi r3, r1, 8
/* 801302D8 0012D238  48 00 00 08 */	b lbl_801302E0
lbl_801302DC:
/* 801302DC 0012D23C  38 6D 8B 28 */	addi r3, r13, lbl_805A76E8@sda21
lbl_801302E0:
/* 801302E0 0012D240  C0 22 99 3C */	lfs f1, lbl_805AB65C@sda21(r2)
/* 801302E4 0012D244  C0 03 00 00 */	lfs f0, 0(r3)
/* 801302E8 0012D248  EC 21 00 28 */	fsubs f1, f1, f0
/* 801302EC 0012D24C  38 21 00 20 */	addi r1, r1, 0x20
/* 801302F0 0012D250  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D0048
lbl_803D0048:
	# ROM: 0x3CD048
	.asciz "??(??)"
	.balign 4
