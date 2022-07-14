.include "macros.inc"

.section .text, "ax"

.global CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream:
/* 802DFFDC 002DCF3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFFE0 002DCF40  7C 08 02 A6 */	mflr r0
/* 802DFFE4 002DCF44  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFFE8 002DCF48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFFEC 002DCF4C  7C 7F 1B 78 */	mr r31, r3
/* 802DFFF0 002DCF50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFFF4 002DCF54  7C 9E 23 78 */	mr r30, r4
/* 802DFFF8 002DCF58  7F C3 F3 78 */	mr r3, r30
/* 802DFFFC 002DCF5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E0000 002DCF60  48 05 EC 85 */	bl ReadLong__12CInputStreamFv
/* 802E0004 002DCF64  2C 03 00 02 */	cmpwi r3, 2
/* 802E0008 002DCF68  41 82 00 FC */	beq lbl_802E0104
/* 802E000C 002DCF6C  40 80 00 14 */	bge lbl_802E0020
/* 802E0010 002DCF70  2C 03 00 00 */	cmpwi r3, 0
/* 802E0014 002DCF74  41 82 00 1C */	beq lbl_802E0030
/* 802E0018 002DCF78  40 80 00 94 */	bge lbl_802E00AC
/* 802E001C 002DCF7C  48 00 01 F0 */	b lbl_802E020C
lbl_802E0020:
/* 802E0020 002DCF80  2C 03 00 04 */	cmpwi r3, 4
/* 802E0024 002DCF84  41 82 01 90 */	beq lbl_802E01B4
/* 802E0028 002DCF88  40 80 01 E4 */	bge lbl_802E020C
/* 802E002C 002DCF8C  48 00 01 30 */	b lbl_802E015C
lbl_802E0030:
/* 802E0030 002DCF90  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0034 002DCF94  38 60 00 24 */	li r3, 0x24
/* 802E0038 002DCF98  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E003C 002DCF9C  38 A0 00 00 */	li r5, 0
/* 802E0040 002DCFA0  48 03 58 2D */	bl __nw__FUlPCcPCc
/* 802E0044 002DCFA4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E0048 002DCFA8  41 82 00 34 */	beq lbl_802E007C
/* 802E004C 002DCFAC  3C 80 80 3F */	lis r4, lbl_803ECDF0@ha
/* 802E0050 002DCFB0  3C 60 80 3F */	lis r3, lbl_803ECD30@ha
/* 802E0054 002DCFB4  38 04 CD F0 */	addi r0, r4, lbl_803ECDF0@l
/* 802E0058 002DCFB8  90 1D 00 00 */	stw r0, 0(r29)
/* 802E005C 002DCFBC  38 03 CD 30 */	addi r0, r3, lbl_803ECD30@l
/* 802E0060 002DCFC0  7F C4 F3 78 */	mr r4, r30
/* 802E0064 002DCFC4  38 7D 00 04 */	addi r3, r29, 4
/* 802E0068 002DCFC8  90 1D 00 00 */	stw r0, 0(r29)
/* 802E006C 002DCFCC  48 00 58 BD */	bl __ct__10CPrimitiveFR12CInputStream
/* 802E0070 002DCFD0  7F C4 F3 78 */	mr r4, r30
/* 802E0074 002DCFD4  38 7D 00 1C */	addi r3, r29, 0x1c
/* 802E0078 002DCFD8  48 06 8D 9D */	bl __ct__13CCharAnimTimeFR12CInputStream
lbl_802E007C:
/* 802E007C 002DCFDC  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0080 002DCFE0  38 60 00 08 */	li r3, 8
/* 802E0084 002DCFE4  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E0088 002DCFE8  38 A0 00 00 */	li r5, 0
/* 802E008C 002DCFEC  48 03 57 E1 */	bl __nw__FUlPCcPCc
/* 802E0090 002DCFF0  28 03 00 00 */	cmplwi r3, 0
/* 802E0094 002DCFF4  41 82 00 10 */	beq lbl_802E00A4
/* 802E0098 002DCFF8  93 A3 00 00 */	stw r29, 0(r3)
/* 802E009C 002DCFFC  38 00 00 01 */	li r0, 1
/* 802E00A0 002DD000  90 03 00 04 */	stw r0, 4(r3)
lbl_802E00A4:
/* 802E00A4 002DD004  90 7F 00 00 */	stw r3, 0(r31)
/* 802E00A8 002DD008  48 00 01 7C */	b lbl_802E0224
lbl_802E00AC:
/* 802E00AC 002DD00C  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E00B0 002DD010  38 60 00 14 */	li r3, 0x14
/* 802E00B4 002DD014  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E00B8 002DD018  38 A0 00 00 */	li r5, 0
/* 802E00BC 002DD01C  48 03 57 B1 */	bl __nw__FUlPCcPCc
/* 802E00C0 002DD020  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E00C4 002DD024  41 82 00 10 */	beq lbl_802E00D4
/* 802E00C8 002DD028  7F C4 F3 78 */	mr r4, r30
/* 802E00CC 002DD02C  4B FF FE 55 */	bl __ct__14CMetaAnimBlendFR12CInputStream
/* 802E00D0 002DD030  7C 7D 1B 78 */	mr r29, r3
lbl_802E00D4:
/* 802E00D4 002DD034  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E00D8 002DD038  38 60 00 08 */	li r3, 8
/* 802E00DC 002DD03C  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E00E0 002DD040  38 A0 00 00 */	li r5, 0
/* 802E00E4 002DD044  48 03 57 89 */	bl __nw__FUlPCcPCc
/* 802E00E8 002DD048  28 03 00 00 */	cmplwi r3, 0
/* 802E00EC 002DD04C  41 82 00 10 */	beq lbl_802E00FC
/* 802E00F0 002DD050  93 A3 00 00 */	stw r29, 0(r3)
/* 802E00F4 002DD054  38 00 00 01 */	li r0, 1
/* 802E00F8 002DD058  90 03 00 04 */	stw r0, 4(r3)
lbl_802E00FC:
/* 802E00FC 002DD05C  90 7F 00 00 */	stw r3, 0(r31)
/* 802E0100 002DD060  48 00 01 24 */	b lbl_802E0224
lbl_802E0104:
/* 802E0104 002DD064  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0108 002DD068  38 60 00 14 */	li r3, 0x14
/* 802E010C 002DD06C  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E0110 002DD070  38 A0 00 00 */	li r5, 0
/* 802E0114 002DD074  48 03 57 59 */	bl __nw__FUlPCcPCc
/* 802E0118 002DD078  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E011C 002DD07C  41 82 00 10 */	beq lbl_802E012C
/* 802E0120 002DD080  7F C4 F3 78 */	mr r4, r30
/* 802E0124 002DD084  48 00 08 09 */	bl __ct__19CMetaAnimPhaseBlendFR12CInputStream
/* 802E0128 002DD088  7C 7D 1B 78 */	mr r29, r3
lbl_802E012C:
/* 802E012C 002DD08C  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0130 002DD090  38 60 00 08 */	li r3, 8
/* 802E0134 002DD094  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E0138 002DD098  38 A0 00 00 */	li r5, 0
/* 802E013C 002DD09C  48 03 57 31 */	bl __nw__FUlPCcPCc
/* 802E0140 002DD0A0  28 03 00 00 */	cmplwi r3, 0
/* 802E0144 002DD0A4  41 82 00 10 */	beq lbl_802E0154
/* 802E0148 002DD0A8  93 A3 00 00 */	stw r29, 0(r3)
/* 802E014C 002DD0AC  38 00 00 01 */	li r0, 1
/* 802E0150 002DD0B0  90 03 00 04 */	stw r0, 4(r3)
lbl_802E0154:
/* 802E0154 002DD0B4  90 7F 00 00 */	stw r3, 0(r31)
/* 802E0158 002DD0B8  48 00 00 CC */	b lbl_802E0224
lbl_802E015C:
/* 802E015C 002DD0BC  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0160 002DD0C0  38 60 00 14 */	li r3, 0x14
/* 802E0164 002DD0C4  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E0168 002DD0C8  38 A0 00 00 */	li r5, 0
/* 802E016C 002DD0CC  48 03 57 01 */	bl __nw__FUlPCcPCc
/* 802E0170 002DD0D0  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E0174 002DD0D4  41 82 00 10 */	beq lbl_802E0184
/* 802E0178 002DD0D8  7F C4 F3 78 */	mr r4, r30
/* 802E017C 002DD0DC  48 00 12 E9 */	bl __ct__15CMetaAnimRandomFR12CInputStream
/* 802E0180 002DD0E0  7C 7D 1B 78 */	mr r29, r3
lbl_802E0184:
/* 802E0184 002DD0E4  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E0188 002DD0E8  38 60 00 08 */	li r3, 8
/* 802E018C 002DD0EC  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E0190 002DD0F0  38 A0 00 00 */	li r5, 0
/* 802E0194 002DD0F4  48 03 56 D9 */	bl __nw__FUlPCcPCc
/* 802E0198 002DD0F8  28 03 00 00 */	cmplwi r3, 0
/* 802E019C 002DD0FC  41 82 00 10 */	beq lbl_802E01AC
/* 802E01A0 002DD100  93 A3 00 00 */	stw r29, 0(r3)
/* 802E01A4 002DD104  38 00 00 01 */	li r0, 1
/* 802E01A8 002DD108  90 03 00 04 */	stw r0, 4(r3)
lbl_802E01AC:
/* 802E01AC 002DD10C  90 7F 00 00 */	stw r3, 0(r31)
/* 802E01B0 002DD110  48 00 00 74 */	b lbl_802E0224
lbl_802E01B4:
/* 802E01B4 002DD114  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E01B8 002DD118  38 60 00 14 */	li r3, 0x14
/* 802E01BC 002DD11C  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E01C0 002DD120  38 A0 00 00 */	li r5, 0
/* 802E01C4 002DD124  48 03 56 A9 */	bl __nw__FUlPCcPCc
/* 802E01C8 002DD128  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E01CC 002DD12C  41 82 00 10 */	beq lbl_802E01DC
/* 802E01D0 002DD130  7F C4 F3 78 */	mr r4, r30
/* 802E01D4 002DD134  48 00 1A C9 */	bl __ct__17CMetaAnimSequenceFR12CInputStream
/* 802E01D8 002DD138  7C 7D 1B 78 */	mr r29, r3
lbl_802E01DC:
/* 802E01DC 002DD13C  3C 80 80 3D */	lis r4, lbl_803D6D60@ha
/* 802E01E0 002DD140  38 60 00 08 */	li r3, 8
/* 802E01E4 002DD144  38 84 6D 60 */	addi r4, r4, lbl_803D6D60@l
/* 802E01E8 002DD148  38 A0 00 00 */	li r5, 0
/* 802E01EC 002DD14C  48 03 56 81 */	bl __nw__FUlPCcPCc
/* 802E01F0 002DD150  28 03 00 00 */	cmplwi r3, 0
/* 802E01F4 002DD154  41 82 00 10 */	beq lbl_802E0204
/* 802E01F8 002DD158  93 A3 00 00 */	stw r29, 0(r3)
/* 802E01FC 002DD15C  38 00 00 01 */	li r0, 1
/* 802E0200 002DD160  90 03 00 04 */	stw r0, 4(r3)
lbl_802E0204:
/* 802E0204 002DD164  90 7F 00 00 */	stw r3, 0(r31)
/* 802E0208 002DD168  48 00 00 1C */	b lbl_802E0224
lbl_802E020C:
/* 802E020C 002DD16C  38 0D A9 28 */	addi r0, r13, lbl_805A94E8@sda21
/* 802E0210 002DD170  90 1F 00 00 */	stw r0, 0(r31)
/* 802E0214 002DD174  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E0218 002DD178  80 64 00 04 */	lwz r3, 4(r4)
/* 802E021C 002DD17C  38 03 00 01 */	addi r0, r3, 1
/* 802E0220 002DD180  90 04 00 04 */	stw r0, 4(r4)
lbl_802E0224:
/* 802E0224 002DD184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E0228 002DD188  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E022C 002DD18C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E0230 002DD190  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E0234 002DD194  7C 08 03 A6 */	mtlr r0
/* 802E0238 002DD198  38 21 00 20 */	addi r1, r1, 0x20
/* 802E023C 002DD19C  4E 80 00 20 */	blr
