.include "macros.inc"

.section .bss

.global lbl_804795A0
lbl_804795A0:
	.skip 0x200
	
.section .text, "ax"

.global Stringize__7CBasicsFPCce
Stringize__7CBasicsFPCce:
/* 802D61B0 002D3110  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802D61B4 002D3114  7C 08 02 A6 */	mflr r0
/* 802D61B8 002D3118  90 01 00 94 */	stw r0, 0x94(r1)
/* 802D61BC 002D311C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 802D61C0 002D3120  93 C1 00 88 */	stw r30, 0x88(r1)
/* 802D61C4 002D3124  93 A1 00 84 */	stw r29, 0x84(r1)
/* 802D61C8 002D3128  40 86 00 24 */	bne cr1, lbl_802D61EC
/* 802D61CC 002D312C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802D61D0 002D3130  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802D61D4 002D3134  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802D61D8 002D3138  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802D61DC 002D313C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802D61E0 002D3140  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802D61E4 002D3144  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802D61E8 002D3148  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802D61EC:
/* 802D61EC 002D314C  3B E1 00 98 */	addi r31, r1, 0x98
/* 802D61F0 002D3150  39 81 00 08 */	addi r12, r1, 8
/* 802D61F4 002D3154  3F C0 01 00 */	lis r30, 0x100
/* 802D61F8 002D3158  3D 60 80 48 */	lis r11, lbl_804795A0@ha
/* 802D61FC 002D315C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802D6200 002D3160  3B A1 00 68 */	addi r29, r1, 0x68
/* 802D6204 002D3164  38 0B 95 A0 */	addi r0, r11, lbl_804795A0@l
/* 802D6208 002D3168  7C 64 1B 78 */	mr r4, r3
/* 802D620C 002D316C  90 61 00 08 */	stw r3, 8(r1)
/* 802D6210 002D3170  7C 03 03 78 */	mr r3, r0
/* 802D6214 002D3174  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802D6218 002D3178  7F A5 EB 78 */	mr r5, r29
/* 802D621C 002D317C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802D6220 002D3180  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802D6224 002D3184  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802D6228 002D3188  91 21 00 20 */	stw r9, 0x20(r1)
/* 802D622C 002D318C  91 41 00 24 */	stw r10, 0x24(r1)
/* 802D6230 002D3190  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802D6234 002D3194  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802D6238 002D3198  91 81 00 70 */	stw r12, 0x70(r1)
/* 802D623C 002D319C  48 0B 7B 81 */	bl vsprintf
/* 802D6240 002D31A0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802D6244 002D31A4  3C 60 80 48 */	lis r3, lbl_804795A0@ha
/* 802D6248 002D31A8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 802D624C 002D31AC  38 63 95 A0 */	addi r3, r3, lbl_804795A0@l
/* 802D6250 002D31B0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 802D6254 002D31B4  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 802D6258 002D31B8  7C 08 03 A6 */	mtlr r0
/* 802D625C 002D31BC  38 21 00 90 */	addi r1, r1, 0x90
/* 802D6260 002D31C0  4E 80 00 20 */	blr 
