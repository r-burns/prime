.include "macros.inc"

.section .sbss
.balign 8
.global lbl_805A99E0
lbl_805A99E0:
	.skip 0x8

.section .text, "ax"

.global __ieee754_log
__ieee754_log:
/* 80392124 0038F084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80392128 0038F088  3C 00 00 10 */	lis r0, 0x10
/* 8039212C 0038F08C  39 00 00 00 */	li r8, 0
/* 80392130 0038F090  D8 21 00 08 */	stfd f1, 8(r1)
/* 80392134 0038F094  80 61 00 08 */	lwz r3, 8(r1)
/* 80392138 0038F098  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8039213C 0038F09C  7C 03 00 00 */	cmpw r3, r0
/* 80392140 0038F0A0  40 80 00 54 */	bge lbl_80392194
/* 80392144 0038F0A4  54 60 00 7E */	clrlwi r0, r3, 1
/* 80392148 0038F0A8  7C 00 23 79 */	or. r0, r0, r4
/* 8039214C 0038F0AC  40 82 00 14 */	bne lbl_80392160
/* 80392150 0038F0B0  C8 22 D1 90 */	lfd f1, lbl_805AEEB0@sda21(r2)
/* 80392154 0038F0B4  C8 0D AE 20 */	lfd f0, lbl_805A99E0@sda21(r13)
/* 80392158 0038F0B8  FC 21 00 24 */	fdiv f1, f1, f0
/* 8039215C 0038F0BC  48 00 02 3C */	b lbl_80392398
lbl_80392160:
/* 80392160 0038F0C0  2C 03 00 00 */	cmpwi r3, 0
/* 80392164 0038F0C4  40 80 00 1C */	bge lbl_80392180
/* 80392168 0038F0C8  FC 21 08 28 */	fsub f1, f1, f1
/* 8039216C 0038F0CC  C8 0D AE 20 */	lfd f0, lbl_805A99E0@sda21(r13)
/* 80392170 0038F0D0  38 00 00 21 */	li r0, 0x21
/* 80392174 0038F0D4  90 0D AE 10 */	stw r0, errno@sda21(r13)
/* 80392178 0038F0D8  FC 21 00 24 */	fdiv f1, f1, f0
/* 8039217C 0038F0DC  48 00 02 1C */	b lbl_80392398
lbl_80392180:
/* 80392180 0038F0E0  C8 02 D1 98 */	lfd f0, lbl_805AEEB8@sda21(r2)
/* 80392184 0038F0E4  39 00 FF CA */	li r8, -54
/* 80392188 0038F0E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8039218C 0038F0EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80392190 0038F0F0  80 61 00 08 */	lwz r3, 8(r1)
lbl_80392194:
/* 80392194 0038F0F4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80392198 0038F0F8  7C 03 00 00 */	cmpw r3, r0
/* 8039219C 0038F0FC  41 80 00 10 */	blt lbl_803921AC
/* 803921A0 0038F100  C8 01 00 08 */	lfd f0, 8(r1)
/* 803921A4 0038F104  FC 20 00 2A */	fadd f1, f0, f0
/* 803921A8 0038F108  48 00 01 F0 */	b lbl_80392398
lbl_803921AC:
/* 803921AC 0038F10C  54 66 03 3E */	clrlwi r6, r3, 0xc
/* 803921B0 0038F110  7C 64 A6 70 */	srawi r4, r3, 0x14
/* 803921B4 0038F114  3C 66 00 09 */	addis r3, r6, 9
/* 803921B8 0038F118  C8 02 D1 A0 */	lfd f0, lbl_805AEEC0@sda21(r2)
/* 803921BC 0038F11C  38 A3 5F 64 */	addi r5, r3, 0x5f64
/* 803921C0 0038F120  7D 04 42 14 */	add r8, r4, r8
/* 803921C4 0038F124  54 A3 02 D6 */	rlwinm r3, r5, 0, 0xb, 0xb
/* 803921C8 0038F128  38 06 00 02 */	addi r0, r6, 2
/* 803921CC 0038F12C  6C 63 3F F0 */	xoris r3, r3, 0x3ff0
/* 803921D0 0038F130  39 08 FC 01 */	addi r8, r8, -1023
/* 803921D4 0038F134  7C C4 1B 78 */	or r4, r6, r3
/* 803921D8 0038F138  54 00 03 3E */	clrlwi r0, r0, 0xc
/* 803921DC 0038F13C  90 81 00 08 */	stw r4, 8(r1)
/* 803921E0 0038F140  54 A3 67 FE */	rlwinm r3, r5, 0xc, 0x1f, 0x1f
/* 803921E4 0038F144  2C 00 00 03 */	cmpwi r0, 3
/* 803921E8 0038F148  C8 21 00 08 */	lfd f1, 8(r1)
/* 803921EC 0038F14C  7D 08 1A 14 */	add r8, r8, r3
/* 803921F0 0038F150  FC 01 00 28 */	fsub f0, f1, f0
/* 803921F4 0038F154  40 80 00 A4 */	bge lbl_80392298
/* 803921F8 0038F158  C8 2D AE 20 */	lfd f1, lbl_805A99E0@sda21(r13)
/* 803921FC 0038F15C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80392200 0038F160  40 82 00 40 */	bne lbl_80392240
/* 80392204 0038F164  2C 08 00 00 */	cmpwi r8, 0
/* 80392208 0038F168  40 82 00 08 */	bne lbl_80392210
/* 8039220C 0038F16C  48 00 01 8C */	b lbl_80392398
lbl_80392210:
/* 80392210 0038F170  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80392214 0038F174  3C 00 43 30 */	lis r0, 0x4330
/* 80392218 0038F178  90 61 00 14 */	stw r3, 0x14(r1)
/* 8039221C 0038F17C  C8 62 D2 08 */	lfd f3, lbl_805AEF28@sda21(r2)
/* 80392220 0038F180  90 01 00 10 */	stw r0, 0x10(r1)
/* 80392224 0038F184  C8 02 D1 B0 */	lfd f0, lbl_805AEED0@sda21(r2)
/* 80392228 0038F188  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8039222C 0038F18C  C8 22 D1 A8 */	lfd f1, lbl_805AEEC8@sda21(r2)
/* 80392230 0038F190  FC 42 18 28 */	fsub f2, f2, f3
/* 80392234 0038F194  FC 00 00 B2 */	fmul f0, f0, f2
/* 80392238 0038F198  FC 21 00 BA */	fmadd f1, f1, f2, f0
/* 8039223C 0038F19C  48 00 01 5C */	b lbl_80392398
lbl_80392240:
/* 80392240 0038F1A0  C8 62 D1 C0 */	lfd f3, lbl_805AEEE0@sda21(r2)
/* 80392244 0038F1A4  FC 20 00 32 */	fmul f1, f0, f0
/* 80392248 0038F1A8  C8 42 D1 B8 */	lfd f2, lbl_805AEED8@sda21(r2)
/* 8039224C 0038F1AC  2C 08 00 00 */	cmpwi r8, 0
/* 80392250 0038F1B0  FC 43 10 3C */	fnmsub f2, f3, f0, f2
/* 80392254 0038F1B4  FC A2 00 72 */	fmul f5, f2, f1
/* 80392258 0038F1B8  40 82 00 0C */	bne lbl_80392264
/* 8039225C 0038F1BC  FC 20 28 28 */	fsub f1, f0, f5
/* 80392260 0038F1C0  48 00 01 38 */	b lbl_80392398
lbl_80392264:
/* 80392264 0038F1C4  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80392268 0038F1C8  3C 00 43 30 */	lis r0, 0x4330
/* 8039226C 0038F1CC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80392270 0038F1D0  C8 82 D2 08 */	lfd f4, lbl_805AEF28@sda21(r2)
/* 80392274 0038F1D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80392278 0038F1D8  C8 22 D1 B0 */	lfd f1, lbl_805AEED0@sda21(r2)
/* 8039227C 0038F1DC  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 80392280 0038F1E0  C8 42 D1 A8 */	lfd f2, lbl_805AEEC8@sda21(r2)
/* 80392284 0038F1E4  FC 63 20 28 */	fsub f3, f3, f4
/* 80392288 0038F1E8  FC 21 28 FC */	fnmsub f1, f1, f3, f5
/* 8039228C 0038F1EC  FC 01 00 28 */	fsub f0, f1, f0
/* 80392290 0038F1F0  FC 22 00 F8 */	fmsub f1, f2, f3, f0
/* 80392294 0038F1F4  48 00 01 04 */	b lbl_80392398
lbl_80392298:
/* 80392298 0038F1F8  C8 22 D1 C8 */	lfd f1, lbl_805AEEE8@sda21(r2)
/* 8039229C 0038F1FC  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 803922A0 0038F200  3C 80 43 30 */	lis r4, 0x4330
/* 803922A4 0038F204  3C 60 00 07 */	lis r3, 0x0006B851@ha
/* 803922A8 0038F208  FC 21 00 2A */	fadd f1, f1, f0
/* 803922AC 0038F20C  3C E6 FF FA */	addis r7, r6, 0xfffa
/* 803922B0 0038F210  38 03 B8 51 */	addi r0, r3, 0x0006B851@l
/* 803922B4 0038F214  C9 02 D1 E8 */	lfd f8, lbl_805AEF08@sda21(r2)
/* 803922B8 0038F218  C8 E2 D1 E0 */	lfd f7, lbl_805AEF00@sda21(r2)
/* 803922BC 0038F21C  7C 06 00 50 */	subf r0, r6, r0
/* 803922C0 0038F220  FC 20 08 24 */	fdiv f1, f0, f1
/* 803922C4 0038F224  38 E7 EB 86 */	addi r7, r7, -5242
/* 803922C8 0038F228  C8 C2 D1 D8 */	lfd f6, lbl_805AEEF8@sda21(r2)
/* 803922CC 0038F22C  7C E7 03 79 */	or. r7, r7, r0
/* 803922D0 0038F230  C8 82 D2 00 */	lfd f4, lbl_805AEF20@sda21(r2)
/* 803922D4 0038F234  C8 62 D1 F8 */	lfd f3, lbl_805AEF18@sda21(r2)
/* 803922D8 0038F238  FD 61 00 72 */	fmul f11, f1, f1
/* 803922DC 0038F23C  C8 A2 D1 D0 */	lfd f5, lbl_805AEEF0@sda21(r2)
/* 803922E0 0038F240  C8 42 D1 F0 */	lfd f2, lbl_805AEF10@sda21(r2)
/* 803922E4 0038F244  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803922E8 0038F248  C9 42 D2 08 */	lfd f10, lbl_805AEF28@sda21(r2)
/* 803922EC 0038F24C  FD 8B 02 F2 */	fmul f12, f11, f11
/* 803922F0 0038F250  90 81 00 10 */	stw r4, 0x10(r1)
/* 803922F4 0038F254  C9 21 00 10 */	lfd f9, 0x10(r1)
/* 803922F8 0038F258  FC E8 3B 3A */	fmadd f7, f8, f12, f7
/* 803922FC 0038F25C  FC 64 1B 3A */	fmadd f3, f4, f12, f3
/* 80392300 0038F260  FC 8C 31 FA */	fmadd f4, f12, f7, f6
/* 80392304 0038F264  FC 4C 10 FA */	fmadd f2, f12, f3, f2
/* 80392308 0038F268  FC 6C 29 3A */	fmadd f3, f12, f4, f5
/* 8039230C 0038F26C  FC 4C 00 B2 */	fmul f2, f12, f2
/* 80392310 0038F270  FC 6B 00 F2 */	fmul f3, f11, f3
/* 80392314 0038F274  FC A9 50 28 */	fsub f5, f9, f10
/* 80392318 0038F278  FC 63 10 2A */	fadd f3, f3, f2
/* 8039231C 0038F27C  40 81 00 4C */	ble lbl_80392368
/* 80392320 0038F280  C8 42 D1 B8 */	lfd f2, lbl_805AEED8@sda21(r2)
/* 80392324 0038F284  2C 08 00 00 */	cmpwi r8, 0
/* 80392328 0038F288  FC 42 00 32 */	fmul f2, f2, f0
/* 8039232C 0038F28C  FC C2 00 32 */	fmul f6, f2, f0
/* 80392330 0038F290  40 82 00 14 */	bne lbl_80392344
/* 80392334 0038F294  FC 46 18 2A */	fadd f2, f6, f3
/* 80392338 0038F298  FC 21 30 BC */	fnmsub f1, f1, f2, f6
/* 8039233C 0038F29C  FC 20 08 28 */	fsub f1, f0, f1
/* 80392340 0038F2A0  48 00 00 58 */	b lbl_80392398
lbl_80392344:
/* 80392344 0038F2A4  C8 42 D1 B0 */	lfd f2, lbl_805AEED0@sda21(r2)
/* 80392348 0038F2A8  FC 66 18 2A */	fadd f3, f6, f3
/* 8039234C 0038F2AC  C8 82 D1 A8 */	lfd f4, lbl_805AEEC8@sda21(r2)
/* 80392350 0038F2B0  FC 42 01 72 */	fmul f2, f2, f5
/* 80392354 0038F2B4  FC 21 10 FA */	fmadd f1, f1, f3, f2
/* 80392358 0038F2B8  FC 26 08 28 */	fsub f1, f6, f1
/* 8039235C 0038F2BC  FC 01 00 28 */	fsub f0, f1, f0
/* 80392360 0038F2C0  FC 24 01 78 */	fmsub f1, f4, f5, f0
/* 80392364 0038F2C4  48 00 00 34 */	b lbl_80392398
lbl_80392368:
/* 80392368 0038F2C8  2C 08 00 00 */	cmpwi r8, 0
/* 8039236C 0038F2CC  40 82 00 10 */	bne lbl_8039237C
/* 80392370 0038F2D0  FC 40 18 28 */	fsub f2, f0, f3
/* 80392374 0038F2D4  FC 21 00 BC */	fnmsub f1, f1, f2, f0
/* 80392378 0038F2D8  48 00 00 20 */	b lbl_80392398
lbl_8039237C:
/* 8039237C 0038F2DC  C8 42 D1 B0 */	lfd f2, lbl_805AEED0@sda21(r2)
/* 80392380 0038F2E0  FC 60 18 28 */	fsub f3, f0, f3
/* 80392384 0038F2E4  C8 82 D1 A8 */	lfd f4, lbl_805AEEC8@sda21(r2)
/* 80392388 0038F2E8  FC 42 01 72 */	fmul f2, f2, f5
/* 8039238C 0038F2EC  FC 21 10 F8 */	fmsub f1, f1, f3, f2
/* 80392390 0038F2F0  FC 01 00 28 */	fsub f0, f1, f0
/* 80392394 0038F2F4  FC 24 01 78 */	fmsub f1, f4, f5, f0
lbl_80392398:
/* 80392398 0038F2F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8039239C 0038F2FC  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AEEB0
lbl_805AEEB0:
	# ROM: 0x3FB750
	.4byte 0xC3500000
	.4byte 0

.global lbl_805AEEB8
lbl_805AEEB8:
	# ROM: 0x3FB758
	.4byte 0x43500000
	.4byte 0

.global lbl_805AEEC0
lbl_805AEEC0:
	# ROM: 0x3FB760
	.double 1.0

.global lbl_805AEEC8
lbl_805AEEC8:
	# ROM: 0x3FB768
	.4byte 0x3FE62E42
	.4byte 0xFEE00000

.global lbl_805AEED0
lbl_805AEED0:
	# ROM: 0x3FB770
	.4byte 0x3DEA39EF
	.4byte 0x35793C76

.global lbl_805AEED8
lbl_805AEED8:
	# ROM: 0x3FB778
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AEEE0
lbl_805AEEE0:
	# ROM: 0x3FB780
	.4byte 0x3FD55555
	.4byte 0x55555555

.global lbl_805AEEE8
lbl_805AEEE8:
	# ROM: 0x3FB788
	.float 2.0
	.4byte 0

.global lbl_805AEEF0
lbl_805AEEF0:
	# ROM: 0x3FB790
	.4byte 0x3FE55555
	.4byte 0x55555593

.global lbl_805AEEF8
lbl_805AEEF8:
	# ROM: 0x3FB798
	.4byte 0x3FD24924
	.4byte 0x94229359

.global lbl_805AEF00
lbl_805AEF00:
	# ROM: 0x3FB7A0
	.4byte 0x3FC74664
	.4byte 0x96CB03DE

.global lbl_805AEF08
lbl_805AEF08:
	# ROM: 0x3FB7A8
	.4byte 0x3FC2F112
	.4byte 0xDF3E5244

.global lbl_805AEF10
lbl_805AEF10:
	# ROM: 0x3FB7B0
	.4byte 0x3FD99999
	.4byte 0x9997FA04

.global lbl_805AEF18
lbl_805AEF18:
	# ROM: 0x3FB7B8
	.4byte 0x3FCC71C5
	.4byte 0x1D8E78AF

.global lbl_805AEF20
lbl_805AEF20:
	# ROM: 0x3FB7C0
	.4byte 0x3FC39A09
	.4byte 0xD078C69F

.global lbl_805AEF28
lbl_805AEF28:
	# ROM: 0x3FB7C8
	.double 4.503601774854144E15

