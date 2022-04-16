.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ct__11CTransitionFR12CInputStream
__ct__11CTransitionFR12CInputStream:
/* 802E6E24 002E3D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E6E28 002E3D88  7C 08 02 A6 */	mflr r0
/* 802E6E2C 002E3D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E6E30 002E3D90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E6E34 002E3D94  7C 9F 23 78 */	mr r31, r4
/* 802E6E38 002E3D98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E6E3C 002E3D9C  7C 7E 1B 78 */	mr r30, r3
/* 802E6E40 002E3DA0  7F E3 FB 78 */	mr r3, r31
/* 802E6E44 002E3DA4  48 05 7E 41 */	bl ReadLong__12CInputStreamFv
/* 802E6E48 002E3DA8  90 7E 00 00 */	stw r3, 0(r30)
/* 802E6E4C 002E3DAC  7F E3 FB 78 */	mr r3, r31
/* 802E6E50 002E3DB0  48 05 7E 35 */	bl ReadLong__12CInputStreamFv
/* 802E6E54 002E3DB4  90 7E 00 04 */	stw r3, 4(r30)
/* 802E6E58 002E3DB8  7F E3 FB 78 */	mr r3, r31
/* 802E6E5C 002E3DBC  48 05 7E 29 */	bl ReadLong__12CInputStreamFv
/* 802E6E60 002E3DC0  90 7E 00 08 */	stw r3, 8(r30)
/* 802E6E64 002E3DC4  7F E4 FB 78 */	mr r4, r31
/* 802E6E68 002E3DC8  38 61 00 08 */	addi r3, r1, 8
/* 802E6E6C 002E3DCC  4B FF AF 81 */	bl CreateMetaTrans__17CMetaTransFactoryFR12CInputStream
/* 802E6E70 002E3DD0  80 01 00 08 */	lwz r0, 8(r1)
/* 802E6E74 002E3DD4  38 61 00 08 */	addi r3, r1, 8
/* 802E6E78 002E3DD8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802E6E7C 002E3DDC  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802E6E80 002E3DE0  80 85 00 04 */	lwz r4, 4(r5)
/* 802E6E84 002E3DE4  38 04 00 01 */	addi r0, r4, 1
/* 802E6E88 002E3DE8  90 05 00 04 */	stw r0, 4(r5)
/* 802E6E8C 002E3DEC  4B D4 D4 09 */	bl __dt__17CMetaTransFactoryFv
/* 802E6E90 002E3DF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E6E94 002E3DF4  7F C3 F3 78 */	mr r3, r30
/* 802E6E98 002E3DF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E6E9C 002E3DFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E6EA0 002E3E00  7C 08 03 A6 */	mtlr r0
/* 802E6EA4 002E3E04  38 21 00 20 */	addi r1, r1, 0x20
/* 802E6EA8 002E3E08  4E 80 00 20 */	blr
