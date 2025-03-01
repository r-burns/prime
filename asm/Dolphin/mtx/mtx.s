.include "macros.inc"

.section .sdata
.balign 8

.global lbl_805A8B20
lbl_805A8B20:
	# ROM: 0x3F64C0
	.4byte 0
	.float 1.0


.section .sdata2
.balign 8
.global lbl_805AEBF8
lbl_805AEBF8:
	# ROM: 0x3FB498
	.float 1.0

.global lbl_805AEBFC
lbl_805AEBFC:
	# ROM: 0x3FB49C
	.4byte 0


.section .text, "ax"

.global PSMTXIdentity
PSMTXIdentity:
/* 8037D040 00379FA0  C0 02 CE DC */	lfs f0, lbl_805AEBFC@sda21(r2)
/* 8037D044 00379FA4  C0 22 CE D8 */	lfs f1, lbl_805AEBF8@sda21(r2)
/* 8037D048 00379FA8  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8037D04C 00379FAC  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 8037D050 00379FB0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8037D054 00379FB4  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 8037D058 00379FB8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8037D05C 00379FBC  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 8037D060 00379FC0  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 8037D064 00379FC4  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 8037D068 00379FC8  4E 80 00 20 */	blr

.global PSMTXCopy
PSMTXCopy:
/* 8037D06C 00379FCC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8037D070 00379FD0  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8037D074 00379FD4  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8037D078 00379FD8  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 8037D07C 00379FDC  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8037D080 00379FE0  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 8037D084 00379FE4  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8037D088 00379FE8  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 8037D08C 00379FEC  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8037D090 00379FF0  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 8037D094 00379FF4  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8037D098 00379FF8  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 8037D09C 00379FFC  4E 80 00 20 */	blr

.global PSMTXConcat
PSMTXConcat:
/* 8037D0A0 0037A000  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037D0A4 0037A004  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8037D0A8 0037A008  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8037D0AC 0037A00C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8037D0B0 0037A010  3C C0 80 5B */	lis r6, lbl_805A8B20@ha
/* 8037D0B4 0037A014  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 8037D0B8 0037A018  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8037D0BC 0037A01C  38 C6 8B 20 */	addi r6, r6, lbl_805A8B20@l
/* 8037D0C0 0037A020  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8037D0C4 0037A024  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 8037D0C8 0037A028  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 8037D0CC 0037A02C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8037D0D0 0037A030  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 8037D0D4 0037A034  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 8037D0D8 0037A038  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 8037D0DC 0037A03C  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 8037D0E0 0037A040  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 8037D0E4 0037A044  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8037D0E8 0037A048  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 8037D0EC 0037A04C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8037D0F0 0037A050  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 8037D0F4 0037A054  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 8037D0F8 0037A058  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 8037D0FC 0037A05C  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 8037D100 0037A060  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 8037D104 0037A064  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8037D108 0037A068  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8037D10C 0037A06C  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8037D110 0037A070  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 8037D114 0037A074  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 8037D118 0037A078  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 8037D11C 0037A07C  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 8037D120 0037A080  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 8037D124 0037A084  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 8037D128 0037A088  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 8037D12C 0037A08C  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 8037D130 0037A090  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 8037D134 0037A094  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 8037D138 0037A098  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 8037D13C 0037A09C  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 8037D140 0037A0A0  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 8037D144 0037A0A4  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8037D148 0037A0A8  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 8037D14C 0037A0AC  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 8037D150 0037A0B0  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 8037D154 0037A0B4  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 8037D158 0037A0B8  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8037D15C 0037A0BC  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 8037D160 0037A0C0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8037D164 0037A0C4  38 21 00 40 */	addi r1, r1, 0x40
/* 8037D168 0037A0C8  4E 80 00 20 */	blr

.global PSMTXInvXpose
PSMTXInvXpose:
/* 8037D16C 0037A0CC  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 8037D170 0037A0D0  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 8037D174 0037A0D4  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 8037D178 0037A0D8  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 8037D17C 0037A0DC  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 8037D180 0037A0E0  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 8037D184 0037A0E4  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8037D188 0037A0E8  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 8037D18C 0037A0EC  11 63 01 B2 */	ps_mul f11, f3, f6
/* 8037D190 0037A0F0  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8037D194 0037A0F4  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 8037D198 0037A0F8  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8037D19C 0037A0FC  11 81 02 32 */	ps_mul f12, f1, f8
/* 8037D1A0 0037A100  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8037D1A4 0037A104  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8037D1A8 0037A108  11 43 01 32 */	ps_mul f10, f3, f4
/* 8037D1AC 0037A10C  11 20 01 72 */	ps_mul f9, f0, f5
/* 8037D1B0 0037A110  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8037D1B4 0037A114  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8037D1B8 0037A118  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8037D1BC 0037A11C  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8037D1C0 0037A120  10 E0 03 72 */	ps_mul f7, f0, f13
/* 8037D1C4 0037A124  10 21 08 28 */	ps_sub f1, f1, f1
/* 8037D1C8 0037A128  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8037D1CC 0037A12C  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 8037D1D0 0037A130  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 8037D1D4 0037A134  40 82 00 0C */	bne lbl_8037D1E0
/* 8037D1D8 0037A138  38 60 00 00 */	li r3, 0
/* 8037D1DC 0037A13C  4E 80 00 20 */	blr
lbl_8037D1E0:
/* 8037D1E0 0037A140  EC 00 38 30 */	fres f0, f7
/* 8037D1E4 0037A144  F0 24 80 0C */	psq_st f1, 12(r4), 1, qr0
/* 8037D1E8 0037A148  10 C0 00 2A */	ps_add f6, f0, f0
/* 8037D1EC 0037A14C  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8037D1F0 0037A150  F0 24 80 1C */	psq_st f1, 28(r4), 1, qr0
/* 8037D1F4 0037A154  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8037D1F8 0037A158  F0 24 80 2C */	psq_st f1, 44(r4), 1, qr0
/* 8037D1FC 0037A15C  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 8037D200 0037A160  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 8037D204 0037A164  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8037D208 0037A168  F1 A4 00 00 */	psq_st f13, 0(r4), 0, qr0
/* 8037D20C 0037A16C  F1 84 00 10 */	psq_st f12, 16(r4), 0, qr0
/* 8037D210 0037A170  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 8037D214 0037A174  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8037D218 0037A178  F1 64 00 20 */	psq_st f11, 32(r4), 0, qr0
/* 8037D21C 0037A17C  F1 44 80 08 */	psq_st f10, 8(r4), 1, qr0
/* 8037D220 0037A180  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 8037D224 0037A184  38 60 00 01 */	li r3, 1
/* 8037D228 0037A188  F1 24 80 18 */	psq_st f9, 24(r4), 1, qr0
/* 8037D22C 0037A18C  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 8037D230 0037A190  4E 80 00 20 */	blr

.global PSMTXTrans
PSMTXTrans:
/* 8037D234 0037A194  C0 02 CE DC */	lfs f0, lbl_805AEBFC@sda21(r2)
/* 8037D238 0037A198  C0 82 CE D8 */	lfs f4, lbl_805AEBF8@sda21(r2)
/* 8037D23C 0037A19C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8037D240 0037A1A0  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8037D244 0037A1A4  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8037D248 0037A1A8  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8037D24C 0037A1AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8037D250 0037A1B0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 8037D254 0037A1B4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8037D258 0037A1B8  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8037D25C 0037A1BC  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8037D260 0037A1C0  D0 83 00 00 */	stfs f4, 0(r3)
/* 8037D264 0037A1C4  4E 80 00 20 */	blr

.global PSMTXScale
PSMTXScale:
/* 8037D268 0037A1C8  C0 02 CE DC */	lfs f0, lbl_805AEBFC@sda21(r2)
/* 8037D26C 0037A1CC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8037D270 0037A1D0  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8037D274 0037A1D4  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 8037D278 0037A1D8  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8037D27C 0037A1DC  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8037D280 0037A1E0  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8037D284 0037A1E4  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 8037D288 0037A1E8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8037D28C 0037A1EC  4E 80 00 20 */	blr

.global PSMTXScaleApply
PSMTXScaleApply:
/* 8037D290 0037A1F0  FC 20 08 18 */	frsp f1, f1
/* 8037D294 0037A1F4  E0 83 00 00 */	psq_l f4, 0(r3), 0, qr0
/* 8037D298 0037A1F8  FC 40 10 18 */	frsp f2, f2
/* 8037D29C 0037A1FC  E0 A3 00 08 */	psq_l f5, 8(r3), 0, qr0
/* 8037D2A0 0037A200  FC 60 18 18 */	frsp f3, f3
/* 8037D2A4 0037A204  10 84 00 58 */	ps_muls0 f4, f4, f1
/* 8037D2A8 0037A208  E0 C3 00 10 */	psq_l f6, 16(r3), 0, qr0
/* 8037D2AC 0037A20C  10 A5 00 58 */	ps_muls0 f5, f5, f1
/* 8037D2B0 0037A210  E0 E3 00 18 */	psq_l f7, 24(r3), 0, qr0
/* 8037D2B4 0037A214  10 C6 00 98 */	ps_muls0 f6, f6, f2
/* 8037D2B8 0037A218  E1 03 00 20 */	psq_l f8, 32(r3), 0, qr0
/* 8037D2BC 0037A21C  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 8037D2C0 0037A220  10 E7 00 98 */	ps_muls0 f7, f7, f2
/* 8037D2C4 0037A224  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 8037D2C8 0037A228  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 8037D2CC 0037A22C  11 08 00 D8 */	ps_muls0 f8, f8, f3
/* 8037D2D0 0037A230  F0 C4 00 10 */	psq_st f6, 16(r4), 0, qr0
/* 8037D2D4 0037A234  10 42 00 D8 */	ps_muls0 f2, f2, f3
/* 8037D2D8 0037A238  F0 E4 00 18 */	psq_st f7, 24(r4), 0, qr0
/* 8037D2DC 0037A23C  F1 04 00 20 */	psq_st f8, 32(r4), 0, qr0
/* 8037D2E0 0037A240  F0 44 00 28 */	psq_st f2, 40(r4), 0, qr0
/* 8037D2E4 0037A244  4E 80 00 20 */	blr

.global C_MTXLookAt
C_MTXLookAt:
/* 8037D2E8 0037A248  7C 08 02 A6 */	mflr r0
/* 8037D2EC 0037A24C  90 01 00 04 */	stw r0, 4(r1)
/* 8037D2F0 0037A250  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037D2F4 0037A254  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8037D2F8 0037A258  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8037D2FC 0037A25C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8037D300 0037A260  7C 7D 1B 78 */	mr r29, r3
/* 8037D304 0037A264  7C 9E 23 78 */	mr r30, r4
/* 8037D308 0037A268  7C BF 2B 78 */	mr r31, r5
/* 8037D30C 0037A26C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8037D310 0037A270  38 61 00 30 */	addi r3, r1, 0x30
/* 8037D314 0037A274  C0 06 00 00 */	lfs f0, 0(r6)
/* 8037D318 0037A278  7C 64 1B 78 */	mr r4, r3
/* 8037D31C 0037A27C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037D320 0037A280  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8037D324 0037A284  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8037D328 0037A288  C0 06 00 04 */	lfs f0, 4(r6)
/* 8037D32C 0037A28C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037D330 0037A290  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8037D334 0037A294  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8037D338 0037A298  C0 06 00 08 */	lfs f0, 8(r6)
/* 8037D33C 0037A29C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037D340 0037A2A0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8037D344 0037A2A4  48 00 03 0D */	bl C_VECNormalize
/* 8037D348 0037A2A8  7F E3 FB 78 */	mr r3, r31
/* 8037D34C 0037A2AC  38 81 00 30 */	addi r4, r1, 0x30
/* 8037D350 0037A2B0  38 A1 00 24 */	addi r5, r1, 0x24
/* 8037D354 0037A2B4  48 00 03 41 */	bl C_VECCrossProduct
/* 8037D358 0037A2B8  38 61 00 24 */	addi r3, r1, 0x24
/* 8037D35C 0037A2BC  7C 64 1B 78 */	mr r4, r3
/* 8037D360 0037A2C0  48 00 02 F1 */	bl C_VECNormalize
/* 8037D364 0037A2C4  38 61 00 30 */	addi r3, r1, 0x30
/* 8037D368 0037A2C8  38 81 00 24 */	addi r4, r1, 0x24
/* 8037D36C 0037A2CC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8037D370 0037A2D0  48 00 03 25 */	bl C_VECCrossProduct
/* 8037D374 0037A2D4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8037D378 0037A2D8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8037D37C 0037A2DC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037D380 0037A2E0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8037D384 0037A2E4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8037D388 0037A2E8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8037D38C 0037A2EC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8037D390 0037A2F0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8037D394 0037A2F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8037D398 0037A2F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037D39C 0037A2FC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8037D3A0 0037A300  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8037D3A4 0037A304  EC 01 00 32 */	fmuls f0, f1, f0
/* 8037D3A8 0037A308  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8037D3AC 0037A30C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037D3B0 0037A310  EC 02 00 2A */	fadds f0, f2, f0
/* 8037D3B4 0037A314  EC 01 00 2A */	fadds f0, f1, f0
/* 8037D3B8 0037A318  FC 00 00 50 */	fneg f0, f0
/* 8037D3BC 0037A31C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8037D3C0 0037A320  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8037D3C4 0037A324  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8037D3C8 0037A328  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8037D3CC 0037A32C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8037D3D0 0037A330  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8037D3D4 0037A334  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8037D3D8 0037A338  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8037D3DC 0037A33C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8037D3E0 0037A340  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8037D3E4 0037A344  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8037D3E8 0037A348  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8037D3EC 0037A34C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8037D3F0 0037A350  EC 01 00 32 */	fmuls f0, f1, f0
/* 8037D3F4 0037A354  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8037D3F8 0037A358  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037D3FC 0037A35C  EC 02 00 2A */	fadds f0, f2, f0
/* 8037D400 0037A360  EC 01 00 2A */	fadds f0, f1, f0
/* 8037D404 0037A364  FC 00 00 50 */	fneg f0, f0
/* 8037D408 0037A368  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8037D40C 0037A36C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8037D410 0037A370  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8037D414 0037A374  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8037D418 0037A378  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8037D41C 0037A37C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8037D420 0037A380  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8037D424 0037A384  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8037D428 0037A388  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8037D42C 0037A38C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8037D430 0037A390  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8037D434 0037A394  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8037D438 0037A398  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8037D43C 0037A39C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8037D440 0037A3A0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8037D444 0037A3A4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8037D448 0037A3A8  EC 02 00 2A */	fadds f0, f2, f0
/* 8037D44C 0037A3AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8037D450 0037A3B0  FC 00 00 50 */	fneg f0, f0
/* 8037D454 0037A3B4  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8037D458 0037A3B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037D45C 0037A3BC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8037D460 0037A3C0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8037D464 0037A3C4  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8037D468 0037A3C8  38 21 00 50 */	addi r1, r1, 0x50
/* 8037D46C 0037A3CC  7C 08 03 A6 */	mtlr r0
/* 8037D470 0037A3D0  4E 80 00 20 */	blr

