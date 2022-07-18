.include "macros.inc"

.section .data

.global lbl_803EC030
lbl_803EC030:
	# ROM: 0x3E9030
	.4byte 0
	.4byte 0
	.4byte __dt__22CScriptShadowProjectorFv
	.4byte Accept__22CScriptShadowProjectorFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__22CScriptShadowProjectorFfR13CStateManager
	.4byte AcceptScriptMsg__22CScriptShadowProjectorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__22CScriptShadowProjectorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__22CScriptShadowProjectorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
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
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte 0

.section .text, "ax"

.global __dt__22CScriptShadowProjectorFv
__dt__22CScriptShadowProjectorFv:
/* 8029ECD8 0029BC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029ECDC 0029BC3C  7C 08 02 A6 */	mflr r0
/* 8029ECE0 0029BC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029ECE4 0029BC44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029ECE8 0029BC48  7C 9F 23 78 */	mr r31, r4
/* 8029ECEC 0029BC4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8029ECF0 0029BC50  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029ECF4 0029BC54  41 82 00 40 */	beq lbl_8029ED34
/* 8029ECF8 0029BC58  3C 60 80 3F */	lis r3, lbl_803EC030@ha
/* 8029ECFC 0029BC5C  34 1E 01 08 */	addic. r0, r30, 0x108
/* 8029ED00 0029BC60  38 03 C0 30 */	addi r0, r3, lbl_803EC030@l
/* 8029ED04 0029BC64  90 1E 00 00 */	stw r0, 0(r30)
/* 8029ED08 0029BC68  41 82 00 10 */	beq lbl_8029ED18
/* 8029ED0C 0029BC6C  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029ED10 0029BC70  38 80 00 01 */	li r4, 1
/* 8029ED14 0029BC74  4B FF F6 6D */	bl __dt__16CProjectedShadowFv
lbl_8029ED18:
/* 8029ED18 0029BC78  7F C3 F3 78 */	mr r3, r30
/* 8029ED1C 0029BC7C  38 80 00 00 */	li r4, 0
/* 8029ED20 0029BC80  4B DB 69 D1 */	bl __dt__6CActorFv
/* 8029ED24 0029BC84  7F E0 07 35 */	extsh. r0, r31
/* 8029ED28 0029BC88  40 81 00 0C */	ble lbl_8029ED34
/* 8029ED2C 0029BC8C  7F C3 F3 78 */	mr r3, r30
/* 8029ED30 0029BC90  48 07 6C 01 */	bl Free__7CMemoryFPCv
lbl_8029ED34:
/* 8029ED34 0029BC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029ED38 0029BC98  7F C3 F3 78 */	mr r3, r30
/* 8029ED3C 0029BC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029ED40 0029BCA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029ED44 0029BCA4  7C 08 03 A6 */	mtlr r0
/* 8029ED48 0029BCA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029ED4C 0029BCAC  4E 80 00 20 */	blr

.global Think__22CScriptShadowProjectorFfR13CStateManager
Think__22CScriptShadowProjectorFfR13CStateManager:
/* 8029ED50 0029BCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029ED54 0029BCB4  7C 08 02 A6 */	mflr r0
/* 8029ED58 0029BCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029ED5C 0029BCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029ED60 0029BCC0  7C 9F 23 78 */	mr r31, r4
/* 8029ED64 0029BCC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8029ED68 0029BCC8  7C 7E 1B 78 */	mr r30, r3
/* 8029ED6C 0029BCCC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8029ED70 0029BCD0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029ED74 0029BCD4  41 82 00 6C */	beq lbl_8029EDE0
/* 8029ED78 0029BCD8  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 8029ED7C 0029BCDC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8029ED80 0029BCE0  41 82 00 60 */	beq lbl_8029EDE0
/* 8029ED84 0029BCE4  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8029ED88 0029BCE8  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 8029ED8C 0029BCEC  C0 02 C0 E8 */	lfs f0, lbl_805ADE08@sda21(r2)
/* 8029ED90 0029BCF0  EC 23 10 7C */	fnmsubs f1, f3, f1, f2
/* 8029ED94 0029BCF4  D0 3E 00 FC */	stfs f1, 0xfc(r30)
/* 8029ED98 0029BCF8  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8029ED9C 0029BCFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029EDA0 0029BD00  4C 40 13 82 */	cror 2, 0, 2
/* 8029EDA4 0029BD04  40 82 00 3C */	bne lbl_8029EDE0
/* 8029EDA8 0029BD08  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 8029EDAC 0029BD0C  38 80 00 01 */	li r4, 1
/* 8029EDB0 0029BD10  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029EDB4 0029BD14  4B FF F5 CD */	bl __dt__16CProjectedShadowFv
/* 8029EDB8 0029BD18  38 E0 00 00 */	li r7, 0
/* 8029EDBC 0029BD1C  7F C3 F3 78 */	mr r3, r30
/* 8029EDC0 0029BD20  90 FE 01 08 */	stw r7, 0x108(r30)
/* 8029EDC4 0029BD24  7F E5 FB 78 */	mr r5, r31
/* 8029EDC8 0029BD28  38 80 00 09 */	li r4, 9
/* 8029EDCC 0029BD2C  38 C0 FF FF */	li r6, -1
/* 8029EDD0 0029BD30  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 8029EDD4 0029BD34  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 8029EDD8 0029BD38  98 1E 01 10 */	stb r0, 0x110(r30)
/* 8029EDDC 0029BD3C  4B DB 22 E5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8029EDE0:
/* 8029EDE0 0029BD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EDE4 0029BD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EDE8 0029BD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029EDEC 0029BD4C  7C 08 03 A6 */	mtlr r0
/* 8029EDF0 0029BD50  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EDF4 0029BD54  4E 80 00 20 */	blr

.global Accept__22CScriptShadowProjectorFR8IVisitor
Accept__22CScriptShadowProjectorFR8IVisitor:
/* 8029EDF8 0029BD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EDFC 0029BD5C  7C 08 02 A6 */	mflr r0
/* 8029EE00 0029BD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EE04 0029BD64  7C 60 1B 78 */	mr r0, r3
/* 8029EE08 0029BD68  7C 83 23 78 */	mr r3, r4
/* 8029EE0C 0029BD6C  81 84 00 00 */	lwz r12, 0(r4)
/* 8029EE10 0029BD70  7C 04 03 78 */	mr r4, r0
/* 8029EE14 0029BD74  81 8C 00 08 */	lwz r12, 8(r12)
/* 8029EE18 0029BD78  7D 89 03 A6 */	mtctr r12
/* 8029EE1C 0029BD7C  4E 80 04 21 */	bctrl
/* 8029EE20 0029BD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EE24 0029BD84  7C 08 03 A6 */	mtlr r0
/* 8029EE28 0029BD88  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EE2C 0029BD8C  4E 80 00 20 */	blr

.global PreRender__22CScriptShadowProjectorFR13CStateManagerRC14CFrustumPlanes
PreRender__22CScriptShadowProjectorFR13CStateManagerRC14CFrustumPlanes:
/* 8029EE30 0029BD90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029EE34 0029BD94  7C 08 02 A6 */	mflr r0
/* 8029EE38 0029BD98  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029EE3C 0029BD9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8029EE40 0029BDA0  7C 9F 23 78 */	mr r31, r4
/* 8029EE44 0029BDA4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8029EE48 0029BDA8  7C 7E 1B 78 */	mr r30, r3
/* 8029EE4C 0029BDAC  38 60 00 01 */	li r3, 1
/* 8029EE50 0029BDB0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8029EE54 0029BDB4  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8029EE58 0029BDB8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8029EE5C 0029BDBC  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8029EE60 0029BDC0  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 8029EE64 0029BDC4  28 00 00 00 */	cmplwi r0, 0
/* 8029EE68 0029BDC8  41 82 00 E0 */	beq lbl_8029EF48
/* 8029EE6C 0029BDCC  A0 1E 01 04 */	lhz r0, 0x104(r30)
/* 8029EE70 0029BDD0  7F E3 FB 78 */	mr r3, r31
/* 8029EE74 0029BDD4  38 81 00 08 */	addi r4, r1, 8
/* 8029EE78 0029BDD8  B0 01 00 08 */	sth r0, 8(r1)
/* 8029EE7C 0029BDDC  4B DA D6 F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8029EE80 0029BDE0  7C 64 1B 78 */	mr r4, r3
/* 8029EE84 0029BDE4  38 61 00 0C */	addi r3, r1, 0xc
/* 8029EE88 0029BDE8  4B E1 0E 09 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8029EE8C 0029BDEC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8029EE90 0029BDF0  28 1D 00 00 */	cmplwi r29, 0
/* 8029EE94 0029BDF4  41 82 00 40 */	beq lbl_8029EED4
/* 8029EE98 0029BDF8  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8029EE9C 0029BDFC  38 80 00 00 */	li r4, 0
/* 8029EEA0 0029BE00  7C 05 00 D0 */	neg r0, r5
/* 8029EEA4 0029BE04  7C 00 2B 78 */	or r0, r0, r5
/* 8029EEA8 0029BE08  54 03 0F FF */	rlwinm. r3, r0, 1, 0x1f, 0x1f
/* 8029EEAC 0029BE0C  41 82 00 20 */	beq lbl_8029EECC
/* 8029EEB0 0029BE10  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8029EEB4 0029BE14  28 00 00 00 */	cmplwi r0, 0
/* 8029EEB8 0029BE18  40 82 00 10 */	bne lbl_8029EEC8
/* 8029EEBC 0029BE1C  88 05 00 28 */	lbz r0, 0x28(r5)
/* 8029EEC0 0029BE20  28 00 00 00 */	cmplwi r0, 0
/* 8029EEC4 0029BE24  41 82 00 08 */	beq lbl_8029EECC
lbl_8029EEC8:
/* 8029EEC8 0029BE28  38 80 00 01 */	li r4, 1
lbl_8029EECC:
/* 8029EECC 0029BE2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8029EED0 0029BE30  40 82 00 10 */	bne lbl_8029EEE0
lbl_8029EED4:
/* 8029EED4 0029BE34  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029EED8 0029BE38  B0 1E 01 04 */	sth r0, 0x104(r30)
/* 8029EEDC 0029BE3C  48 00 00 6C */	b lbl_8029EF48
lbl_8029EEE0:
/* 8029EEE0 0029BE40  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8029EEE4 0029BE44  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029EEE8 0029BE48  41 82 00 60 */	beq lbl_8029EF48
/* 8029EEEC 0029BE4C  28 03 00 00 */	cmplwi r3, 0
/* 8029EEF0 0029BE50  38 60 00 00 */	li r3, 0
/* 8029EEF4 0029BE54  41 82 00 14 */	beq lbl_8029EF08
/* 8029EEF8 0029BE58  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8029EEFC 0029BE5C  28 00 00 00 */	cmplwi r0, 0
/* 8029EF00 0029BE60  41 82 00 08 */	beq lbl_8029EF08
/* 8029EF04 0029BE64  38 60 00 01 */	li r3, 1
lbl_8029EF08:
/* 8029EF08 0029BE68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029EF0C 0029BE6C  41 82 00 0C */	beq lbl_8029EF18
/* 8029EF10 0029BE70  80 65 00 10 */	lwz r3, 0x10(r5)
/* 8029EF14 0029BE74  4B D8 DA F1 */	bl PreRender__9CAnimDataFv
lbl_8029EF18:
/* 8029EF18 0029BE78  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8029EF1C 0029BE7C  7F E4 FB 78 */	mr r4, r31
/* 8029EF20 0029BE80  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029EF24 0029BE84  38 DD 00 34 */	addi r6, r29, 0x34
/* 8029EF28 0029BE88  39 1E 00 EC */	addi r8, r30, 0xec
/* 8029EF2C 0029BE8C  38 E0 00 00 */	li r7, 0
/* 8029EF30 0029BE90  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 8029EF34 0029BE94  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029EF38 0029BE98  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8029EF3C 0029BE9C  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8029EF40 0029BEA0  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 8029EF44 0029BEA4  4B FF EE 45 */	bl RenderShadowBuffer__16CProjectedShadowFR13CStateManagerRC10CModelDataRC12CTransform4fiRC9CVector3fff
lbl_8029EF48:
/* 8029EF48 0029BEA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029EF4C 0029BEAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8029EF50 0029BEB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8029EF54 0029BEB4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8029EF58 0029BEB8  7C 08 03 A6 */	mtlr r0
/* 8029EF5C 0029BEBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8029EF60 0029BEC0  4E 80 00 20 */	blr

.global AddToRenderer__22CScriptShadowProjectorCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__22CScriptShadowProjectorCFRC14CFrustumPlanesRC13CStateManager:
/* 8029EF64 0029BEC4  4E 80 00 20 */	blr

.global AcceptScriptMsg__22CScriptShadowProjectorF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__22CScriptShadowProjectorF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8029EF68 0029BEC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8029EF6C 0029BECC  7C 08 02 A6 */	mflr r0
/* 8029EF70 0029BED0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8029EF74 0029BED4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8029EF78 0029BED8  7C DF 33 78 */	mr r31, r6
/* 8029EF7C 0029BEDC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8029EF80 0029BEE0  7C 7E 1B 78 */	mr r30, r3
/* 8029EF84 0029BEE4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8029EF88 0029BEE8  7C 9D 23 78 */	mr r29, r4
/* 8029EF8C 0029BEEC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8029EF90 0029BEF0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8029EF94 0029BEF4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8029EF98 0029BEF8  4B DB 46 7D */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8029EF9C 0029BEFC  2C 1D 00 05 */	cmpwi r29, 5
/* 8029EFA0 0029BF00  41 82 01 98 */	beq lbl_8029F138
/* 8029EFA4 0029BF04  40 80 00 1C */	bge lbl_8029EFC0
/* 8029EFA8 0029BF08  2C 1D 00 01 */	cmpwi r29, 1
/* 8029EFAC 0029BF0C  41 82 01 00 */	beq lbl_8029F0AC
/* 8029EFB0 0029BF10  41 80 01 B4 */	blt lbl_8029F164
/* 8029EFB4 0029BF14  2C 1D 00 04 */	cmpwi r29, 4
/* 8029EFB8 0029BF18  40 80 00 F4 */	bge lbl_8029F0AC
/* 8029EFBC 0029BF1C  48 00 01 A8 */	b lbl_8029F164
lbl_8029EFC0:
/* 8029EFC0 0029BF20  2C 1D 00 23 */	cmpwi r29, 0x23
/* 8029EFC4 0029BF24  41 82 00 08 */	beq lbl_8029EFCC
/* 8029EFC8 0029BF28  48 00 01 9C */	b lbl_8029F164
lbl_8029EFCC:
/* 8029EFCC 0029BF2C  83 BE 00 2C */	lwz r29, 0x2c(r30)
/* 8029EFD0 0029BF30  48 00 00 98 */	b lbl_8029F068
lbl_8029EFD4:
/* 8029EFD4 0029BF34  80 1D 00 00 */	lwz r0, 0(r29)
/* 8029EFD8 0029BF38  2C 00 00 12 */	cmpwi r0, 0x12
/* 8029EFDC 0029BF3C  40 82 00 88 */	bne lbl_8029F064
/* 8029EFE0 0029BF40  80 1D 00 08 */	lwz r0, 8(r29)
/* 8029EFE4 0029BF44  7F E4 FB 78 */	mr r4, r31
/* 8029EFE8 0029BF48  38 61 00 10 */	addi r3, r1, 0x10
/* 8029EFEC 0029BF4C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8029EFF0 0029BF50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8029EFF4 0029BF54  4B DA 8F 29 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 8029EFF8 0029BF58  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8029EFFC 0029BF5C  7F E3 FB 78 */	mr r3, r31
/* 8029F000 0029BF60  38 81 00 14 */	addi r4, r1, 0x14
/* 8029F004 0029BF64  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8029F008 0029BF68  4B DA D5 6D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8029F00C 0029BF6C  7C 64 1B 78 */	mr r4, r3
/* 8029F010 0029BF70  38 61 00 20 */	addi r3, r1, 0x20
/* 8029F014 0029BF74  4B E1 0C 7D */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8029F018 0029BF78  80 A3 00 04 */	lwz r5, 4(r3)
/* 8029F01C 0029BF7C  28 05 00 00 */	cmplwi r5, 0
/* 8029F020 0029BF80  41 82 00 44 */	beq lbl_8029F064
/* 8029F024 0029BF84  80 85 00 64 */	lwz r4, 0x64(r5)
/* 8029F028 0029BF88  38 60 00 00 */	li r3, 0
/* 8029F02C 0029BF8C  28 04 00 00 */	cmplwi r4, 0
/* 8029F030 0029BF90  41 82 00 20 */	beq lbl_8029F050
/* 8029F034 0029BF94  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8029F038 0029BF98  28 00 00 00 */	cmplwi r0, 0
/* 8029F03C 0029BF9C  40 82 00 10 */	bne lbl_8029F04C
/* 8029F040 0029BFA0  88 04 00 28 */	lbz r0, 0x28(r4)
/* 8029F044 0029BFA4  28 00 00 00 */	cmplwi r0, 0
/* 8029F048 0029BFA8  41 82 00 08 */	beq lbl_8029F050
lbl_8029F04C:
/* 8029F04C 0029BFAC  38 60 00 01 */	li r3, 1
lbl_8029F050:
/* 8029F050 0029BFB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029F054 0029BFB4  41 82 00 10 */	beq lbl_8029F064
/* 8029F058 0029BFB8  A0 05 00 08 */	lhz r0, 8(r5)
/* 8029F05C 0029BFBC  B0 1E 01 04 */	sth r0, 0x104(r30)
/* 8029F060 0029BFC0  48 00 00 20 */	b lbl_8029F080
lbl_8029F064:
/* 8029F064 0029BFC4  3B BD 00 0C */	addi r29, r29, 0xc
lbl_8029F068:
/* 8029F068 0029BFC8  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8029F06C 0029BFCC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8029F070 0029BFD0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8029F074 0029BFD4  7C 03 02 14 */	add r0, r3, r0
/* 8029F078 0029BFD8  7C 1D 00 40 */	cmplw r29, r0
/* 8029F07C 0029BFDC  40 82 FF 58 */	bne lbl_8029EFD4
lbl_8029F080:
/* 8029F080 0029BFE0  A0 7E 01 04 */	lhz r3, 0x104(r30)
/* 8029F084 0029BFE4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029F088 0029BFE8  7C 03 00 40 */	cmplw r3, r0
/* 8029F08C 0029BFEC  40 82 00 20 */	bne lbl_8029F0AC
/* 8029F090 0029BFF0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8029F094 0029BFF4  7F E3 FB 78 */	mr r3, r31
/* 8029F098 0029BFF8  38 81 00 0C */	addi r4, r1, 0xc
/* 8029F09C 0029BFFC  B0 01 00 08 */	sth r0, 8(r1)
/* 8029F0A0 0029C000  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8029F0A4 0029C004  4B DA D1 C9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8029F0A8 0029C008  48 00 00 BC */	b lbl_8029F164
lbl_8029F0AC:
/* 8029F0AC 0029C00C  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8029F0B0 0029C010  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F0B4 0029C014  41 82 00 6C */	beq lbl_8029F120
/* 8029F0B8 0029C018  A0 7E 01 04 */	lhz r3, 0x104(r30)
/* 8029F0BC 0029C01C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029F0C0 0029C020  7C 03 00 40 */	cmplw r3, r0
/* 8029F0C4 0029C024  41 82 00 5C */	beq lbl_8029F120
/* 8029F0C8 0029C028  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8029F0CC 0029C02C  C0 02 C0 E8 */	lfs f0, lbl_805ADE08@sda21(r2)
/* 8029F0D0 0029C030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F0D4 0029C034  40 81 00 4C */	ble lbl_8029F120
/* 8029F0D8 0029C038  3C 80 80 3D */	lis r4, lbl_803D5EB0@ha
/* 8029F0DC 0029C03C  38 60 00 9C */	li r3, 0x9c
/* 8029F0E0 0029C040  38 84 5E B0 */	addi r4, r4, lbl_803D5EB0@l
/* 8029F0E4 0029C044  38 A0 00 00 */	li r5, 0
/* 8029F0E8 0029C048  48 07 67 85 */	bl __nw__FUlPCcPCc
/* 8029F0EC 0029C04C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029F0F0 0029C050  41 82 00 1C */	beq lbl_8029F10C
/* 8029F0F4 0029C054  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 8029F0F8 0029C058  80 9E 01 0C */	lwz r4, 0x10c(r30)
/* 8029F0FC 0029C05C  54 06 CF FE */	rlwinm r6, r0, 0x19, 0x1f, 0x1f
/* 8029F100 0029C060  7C 85 23 78 */	mr r5, r4
/* 8029F104 0029C064  4B FF F2 D9 */	bl __ct__16CProjectedShadowFv
/* 8029F108 0029C068  7C 7F 1B 78 */	mr r31, r3
lbl_8029F10C:
/* 8029F10C 0029C06C  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029F110 0029C070  38 80 00 01 */	li r4, 1
/* 8029F114 0029C074  4B FF F2 6D */	bl __dt__16CProjectedShadowFv
/* 8029F118 0029C078  93 FE 01 08 */	stw r31, 0x108(r30)
/* 8029F11C 0029C07C  48 00 00 48 */	b lbl_8029F164
lbl_8029F120:
/* 8029F120 0029C080  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8029F124 0029C084  38 80 00 01 */	li r4, 1
/* 8029F128 0029C088  4B FF F2 59 */	bl __dt__16CProjectedShadowFv
/* 8029F12C 0029C08C  38 00 00 00 */	li r0, 0
/* 8029F130 0029C090  90 1E 01 08 */	stw r0, 0x108(r30)
/* 8029F134 0029C094  48 00 00 30 */	b lbl_8029F164
lbl_8029F138:
/* 8029F138 0029C098  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8029F13C 0029C09C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F140 0029C0A0  41 82 00 24 */	beq lbl_8029F164
/* 8029F144 0029C0A4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8029F148 0029C0A8  C0 02 C0 E8 */	lfs f0, lbl_805ADE08@sda21(r2)
/* 8029F14C 0029C0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F150 0029C0B0  40 81 00 14 */	ble lbl_8029F164
/* 8029F154 0029C0B4  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 8029F158 0029C0B8  38 60 00 01 */	li r3, 1
/* 8029F15C 0029C0BC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8029F160 0029C0C0  98 1E 01 10 */	stb r0, 0x110(r30)
lbl_8029F164:
/* 8029F164 0029C0C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8029F168 0029C0C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8029F16C 0029C0CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8029F170 0029C0D0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8029F174 0029C0D4  7C 08 03 A6 */	mtlr r0
/* 8029F178 0029C0D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8029F17C 0029C0DC  4E 80 00 20 */	blr

.global "__ct__22CScriptShadowProjectorF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC9CVector3fbffffi"
"__ct__22CScriptShadowProjectorF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC9CVector3fbffffi":
/* 8029F180 0029C0E0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8029F184 0029C0E4  7C 08 02 A6 */	mflr r0
/* 8029F188 0029C0E8  90 01 01 44 */	stw r0, 0x144(r1)
/* 8029F18C 0029C0EC  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8029F190 0029C0F0  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 8029F194 0029C0F4  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8029F198 0029C0F8  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 8029F19C 0029C0FC  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8029F1A0 0029C100  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 8029F1A4 0029C104  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8029F1A8 0029C108  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 8029F1AC 0029C10C  BE E1 00 DC */	stmw r23, 0xdc(r1)
/* 8029F1B0 0029C110  FF 80 08 90 */	fmr f28, f1
/* 8029F1B4 0029C114  7C 7F 1B 78 */	mr r31, r3
/* 8029F1B8 0029C118  FF A0 10 90 */	fmr f29, f2
/* 8029F1BC 0029C11C  83 C1 01 48 */	lwz r30, 0x148(r1)
/* 8029F1C0 0029C120  FF C0 18 90 */	fmr f30, f3
/* 8029F1C4 0029C124  7C 97 23 78 */	mr r23, r4
/* 8029F1C8 0029C128  FF E0 20 90 */	fmr f31, f4
/* 8029F1CC 0029C12C  7C B8 2B 78 */	mr r24, r5
/* 8029F1D0 0029C130  7C D9 33 78 */	mr r25, r6
/* 8029F1D4 0029C134  7C FA 3B 78 */	mr r26, r7
/* 8029F1D8 0029C138  7D 1B 43 78 */	mr r27, r8
/* 8029F1DC 0029C13C  7D 3C 4B 78 */	mr r28, r9
/* 8029F1E0 0029C140  7D 5D 53 78 */	mr r29, r10
/* 8029F1E4 0029C144  38 61 00 88 */	addi r3, r1, 0x88
/* 8029F1E8 0029C148  4B D9 B5 BD */	bl CModelDataNull__10CModelDataFv
/* 8029F1EC 0029C14C  38 61 00 20 */	addi r3, r1, 0x20
/* 8029F1F0 0029C150  4B D7 BC 49 */	bl None__16CActorParametersFv
/* 8029F1F4 0029C154  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029F1F8 0029C158  38 80 00 00 */	li r4, 0
/* 8029F1FC 0029C15C  A1 97 00 00 */	lhz r12, 0(r23)
/* 8029F200 0029C160  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F204 0029C164  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8029F208 0029C168  38 01 00 10 */	addi r0, r1, 0x10
/* 8029F20C 0029C16C  7F E3 FB 78 */	mr r3, r31
/* 8029F210 0029C170  7F 65 DB 78 */	mr r5, r27
/* 8029F214 0029C174  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8029F218 0029C178  7F 06 C3 78 */	mr r6, r24
/* 8029F21C 0029C17C  7F 27 CB 78 */	mr r7, r25
/* 8029F220 0029C180  7F 48 D3 78 */	mr r8, r26
/* 8029F224 0029C184  90 81 00 18 */	stw r4, 0x18(r1)
/* 8029F228 0029C188  38 81 00 14 */	addi r4, r1, 0x14
/* 8029F22C 0029C18C  39 21 00 88 */	addi r9, r1, 0x88
/* 8029F230 0029C190  39 41 00 18 */	addi r10, r1, 0x18
/* 8029F234 0029C194  B1 81 00 14 */	sth r12, 0x14(r1)
/* 8029F238 0029C198  91 61 00 08 */	stw r11, 8(r1)
/* 8029F23C 0029C19C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029F240 0029C1A0  4B DB 65 E1 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 8029F244 0029C1A4  38 61 00 20 */	addi r3, r1, 0x20
/* 8029F248 0029C1A8  38 80 FF FF */	li r4, -1
/* 8029F24C 0029C1AC  4B E6 73 BD */	bl __dt__16CActorParametersFv
/* 8029F250 0029C1B0  38 61 00 88 */	addi r3, r1, 0x88
/* 8029F254 0029C1B4  38 80 FF FF */	li r4, -1
/* 8029F258 0029C1B8  4B E7 77 F5 */	bl __dt__10CModelDataFv
/* 8029F25C 0029C1BC  3C 60 80 3F */	lis r3, lbl_803EC030@ha
/* 8029F260 0029C1C0  C0 22 C0 E8 */	lfs f1, lbl_805ADE08@sda21(r2)
/* 8029F264 0029C1C4  38 03 C0 30 */	addi r0, r3, lbl_803EC030@l
/* 8029F268 0029C1C8  C8 02 C0 F0 */	lfd f0, lbl_805ADE10@sda21(r2)
/* 8029F26C 0029C1CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8029F270 0029C1D0  EC 3E 08 28 */	fsubs f1, f30, f1
/* 8029F274 0029C1D4  D3 9F 00 E8 */	stfs f28, 0xe8(r31)
/* 8029F278 0029C1D8  FC 40 0A 10 */	fabs f2, f1
/* 8029F27C 0029C1DC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8029F280 0029C1E0  D0 3F 00 EC */	stfs f1, 0xec(r31)
/* 8029F284 0029C1E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8029F288 0029C1E8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8029F28C 0029C1EC  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8029F290 0029C1F0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8029F294 0029C1F4  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 8029F298 0029C1F8  D3 BF 00 F8 */	stfs f29, 0xf8(r31)
/* 8029F29C 0029C1FC  D3 DF 00 FC */	stfs f30, 0xfc(r31)
/* 8029F2A0 0029C200  40 80 00 0C */	bge lbl_8029F2AC
/* 8029F2A4 0029C204  C0 02 C0 EC */	lfs f0, lbl_805ADE0C@sda21(r2)
/* 8029F2A8 0029C208  48 00 00 08 */	b lbl_8029F2B0
lbl_8029F2AC:
/* 8029F2AC 0029C20C  EC 1F F0 24 */	fdivs f0, f31, f30
lbl_8029F2B0:
/* 8029F2B0 0029C210  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 8029F2B4 0029C214  38 A0 00 00 */	li r5, 0
/* 8029F2B8 0029C218  7F E3 FB 78 */	mr r3, r31
/* 8029F2BC 0029C21C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029F2C0 0029C220  B0 1F 01 04 */	sth r0, 0x104(r31)
/* 8029F2C4 0029C224  90 BF 01 08 */	stw r5, 0x108(r31)
/* 8029F2C8 0029C228  93 DF 01 0C */	stw r30, 0x10c(r31)
/* 8029F2CC 0029C22C  88 1F 01 10 */	lbz r0, 0x110(r31)
/* 8029F2D0 0029C230  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 8029F2D4 0029C234  98 1F 01 10 */	stb r0, 0x110(r31)
/* 8029F2D8 0029C238  88 1F 01 10 */	lbz r0, 0x110(r31)
/* 8029F2DC 0029C23C  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8029F2E0 0029C240  98 1F 01 10 */	stb r0, 0x110(r31)
/* 8029F2E4 0029C244  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 8029F2E8 0029C248  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8029F2EC 0029C24C  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 8029F2F0 0029C250  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8029F2F4 0029C254  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 8029F2F8 0029C258  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8029F2FC 0029C25C  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 8029F300 0029C260  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8029F304 0029C264  BA E1 00 DC */	lmw r23, 0xdc(r1)
/* 8029F308 0029C268  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8029F30C 0029C26C  7C 08 03 A6 */	mtlr r0
/* 8029F310 0029C270  38 21 01 40 */	addi r1, r1, 0x140
/* 8029F314 0029C274  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ADE08
lbl_805ADE08:
	# ROM: 0x3FA6A8
	.4byte 0

.global lbl_805ADE0C
lbl_805ADE0C:
	# ROM: 0x3FA6AC
	.float 1.0

.global lbl_805ADE10
lbl_805ADE10:
	# ROM: 0x3FA6B0
	.double 9.999999747378752E-6

