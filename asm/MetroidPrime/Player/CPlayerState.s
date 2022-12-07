.include "macros.inc"

.section .data
.balign 8

.global lbl_803DAD40
lbl_803DAD40:
	# ROM: 0x3D7D40
	.4byte lbl_80091C54
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091C54
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091C54
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091C54
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091C54
	.4byte lbl_80091CC4
	.4byte lbl_80091C80
	.4byte lbl_80091CC4
	.4byte lbl_80091CC4
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte lbl_80091C54
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7150
lbl_805A7150:
	# ROM: 0x3F4AF0
	.4byte 0

.global lbl_805A7154
lbl_805A7154:
	# ROM: 0x3F4AF4
	.4byte 0x3E4CCCC5

.global lbl_805A7158
lbl_805A7158:
	# ROM: 0x3F4AF8
	.4byte 0
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AA828
lbl_805AA828:
	# ROM: 0x3F70C8
	.4byte 0x3FE66666

.global lbl_805AA82C
lbl_805AA82C:
	# ROM: 0x3F70CC
	.4byte 0x42C80000

.global kBaseHealthCapacity
kBaseHealthCapacity:
	# ROM: 0x3F70D0
	.4byte 0x42C60000

.global kMaxVisorTransitionFactor
kMaxVisorTransitionFactor:
	# ROM: 0x3F70D4
	.float 0.2

.global lbl_805AA838
lbl_805AA838:
	# ROM: 0x3F70D8
	.float 0.2

.global lbl_805AA83C
lbl_805AA83C:
	# ROM: 0x3F70DC
	.4byte 0

.global lbl_805AA840
lbl_805AA840:
	# ROM: 0x3F70E0
	.double 4.503601774854144E15

.global lbl_805AA848
lbl_805AA848:
	# ROM: 0x3F70E8
	.float 1.0

.global kDefaultKnockbackResistance
kDefaultKnockbackResistance:
	# ROM: 0x3F70EC
	.4byte 0x42480000

.section .text, "ax"

.global GetMissileComboChargeFactor__12CPlayerStateFv
GetMissileComboChargeFactor__12CPlayerStateFv:
/* 800911FC 0008E15C  C0 22 8B 08 */	lfs f1, lbl_805AA828@sda21(r2)
/* 80091200 0008E160  4E 80 00 20 */	blr

.global GetComboFireAmmoPeriod__12CPlayerStateCFv
GetComboFireAmmoPeriod__12CPlayerStateCFv:
/* 80091204 0008E164  80 03 00 08 */	lwz r0, 8(r3)
/* 80091208 0008E168  3C 60 80 3D */	lis r3, kComboAmmoPeriods@ha
/* 8009120C 0008E16C  38 63 D7 78 */	addi r3, r3, kComboAmmoPeriods@l
/* 80091210 0008E170  54 00 10 3A */	slwi r0, r0, 2
/* 80091214 0008E174  7C 23 04 2E */	lfsx f1, r3, r0
/* 80091218 0008E178  4E 80 00 20 */	blr

.global GetMissileCostForAltAttack__12CPlayerStateCFv
GetMissileCostForAltAttack__12CPlayerStateCFv:
/* 8009121C 0008E17C  80 03 00 08 */	lwz r0, 8(r3)
/* 80091220 0008E180  3C 60 80 3D */	lis r3, kMissileCosts@ha
/* 80091224 0008E184  38 63 D7 64 */	addi r3, r3, kMissileCosts@l
/* 80091228 0008E188  54 00 10 3A */	slwi r0, r0, 2
/* 8009122C 0008E18C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80091230 0008E190  4E 80 00 20 */	blr

.global CalculateItemCollectionRate__12CPlayerStateCFv
CalculateItemCollectionRate__12CPlayerStateCFv:
/* 80091234 0008E194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091238 0008E198  7C 08 02 A6 */	mflr r0
/* 8009123C 0008E19C  38 80 00 07 */	li r4, 7
/* 80091240 0008E1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80091244 0008E1A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091248 0008E1A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009124C 0008E1AC  7C 7E 1B 78 */	mr r30, r3
/* 80091250 0008E1B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80091254 0008E1B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80091258 0008E1B8  48 00 08 9D */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 8009125C 0008E1BC  2C 03 00 04 */	cmpwi r3, 4
/* 80091260 0008E1C0  7C 7C 1B 78 */	mr r28, r3
/* 80091264 0008E1C4  41 80 00 08 */	blt lbl_8009126C
/* 80091268 0008E1C8  3B 83 FF FD */	addi r28, r3, -3
lbl_8009126C:
/* 8009126C 0008E1CC  7F C3 F3 78 */	mr r3, r30
/* 80091270 0008E1D0  38 80 00 02 */	li r4, 2
/* 80091274 0008E1D4  48 00 08 81 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091278 0008E1D8  7C 7D 1B 78 */	mr r29, r3
/* 8009127C 0008E1DC  7F C3 F3 78 */	mr r3, r30
/* 80091280 0008E1E0  38 80 00 01 */	li r4, 1
/* 80091284 0008E1E4  48 00 08 71 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091288 0008E1E8  7C 7F 1B 78 */	mr r31, r3
/* 8009128C 0008E1EC  7F C3 F3 78 */	mr r3, r30
/* 80091290 0008E1F0  38 80 00 03 */	li r4, 3
/* 80091294 0008E1F4  48 00 08 61 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091298 0008E1F8  7F BD 1A 14 */	add r29, r29, r3
/* 8009129C 0008E1FC  7F C3 F3 78 */	mr r3, r30
/* 800912A0 0008E200  38 80 00 04 */	li r4, 4
/* 800912A4 0008E204  48 00 08 51 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800912A8 0008E208  3C A0 66 66 */	lis r5, 0x66666667@ha
/* 800912AC 0008E20C  38 80 00 06 */	li r4, 6
/* 800912B0 0008E210  38 05 66 67 */	addi r0, r5, 0x66666667@l
/* 800912B4 0008E214  7C 00 18 96 */	mulhw r0, r0, r3
/* 800912B8 0008E218  7F C3 F3 78 */	mr r3, r30
/* 800912BC 0008E21C  7C 00 0E 70 */	srawi r0, r0, 1
/* 800912C0 0008E220  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800912C4 0008E224  7C 00 2A 14 */	add r0, r0, r5
/* 800912C8 0008E228  7F BD 02 14 */	add r29, r29, r0
/* 800912CC 0008E22C  48 00 08 29 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800912D0 0008E230  7C 1D 1A 14 */	add r0, r29, r3
/* 800912D4 0008E234  7F C3 F3 78 */	mr r3, r30
/* 800912D8 0008E238  7F A0 E2 14 */	add r29, r0, r28
/* 800912DC 0008E23C  38 80 00 08 */	li r4, 8
/* 800912E0 0008E240  48 00 08 15 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800912E4 0008E244  7F BD 1A 14 */	add r29, r29, r3
/* 800912E8 0008E248  7F C3 F3 78 */	mr r3, r30
/* 800912EC 0008E24C  38 80 00 09 */	li r4, 9
/* 800912F0 0008E250  48 00 08 05 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800912F4 0008E254  7F BD 1A 14 */	add r29, r29, r3
/* 800912F8 0008E258  7F C3 F3 78 */	mr r3, r30
/* 800912FC 0008E25C  38 80 00 0A */	li r4, 0xa
/* 80091300 0008E260  48 00 07 F5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091304 0008E264  7F BD 1A 14 */	add r29, r29, r3
/* 80091308 0008E268  7F C3 F3 78 */	mr r3, r30
/* 8009130C 0008E26C  38 80 00 0B */	li r4, 0xb
/* 80091310 0008E270  48 00 07 E5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091314 0008E274  7F BD 1A 14 */	add r29, r29, r3
/* 80091318 0008E278  7F C3 F3 78 */	mr r3, r30
/* 8009131C 0008E27C  38 80 00 0C */	li r4, 0xc
/* 80091320 0008E280  48 00 07 D5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091324 0008E284  7F BD 1A 14 */	add r29, r29, r3
/* 80091328 0008E288  7F C3 F3 78 */	mr r3, r30
/* 8009132C 0008E28C  38 80 00 0D */	li r4, 0xd
/* 80091330 0008E290  48 00 07 C5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091334 0008E294  7F BD 1A 14 */	add r29, r29, r3
/* 80091338 0008E298  7F C3 F3 78 */	mr r3, r30
/* 8009133C 0008E29C  38 80 00 0E */	li r4, 0xe
/* 80091340 0008E2A0  48 00 07 B5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091344 0008E2A4  7F BD 1A 14 */	add r29, r29, r3
/* 80091348 0008E2A8  7F C3 F3 78 */	mr r3, r30
/* 8009134C 0008E2AC  38 80 00 0F */	li r4, 0xf
/* 80091350 0008E2B0  48 00 07 A5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091354 0008E2B4  7F BD 1A 14 */	add r29, r29, r3
/* 80091358 0008E2B8  7F C3 F3 78 */	mr r3, r30
/* 8009135C 0008E2BC  38 80 00 10 */	li r4, 0x10
/* 80091360 0008E2C0  48 00 07 95 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091364 0008E2C4  7F BD 1A 14 */	add r29, r29, r3
/* 80091368 0008E2C8  7F C3 F3 78 */	mr r3, r30
/* 8009136C 0008E2CC  38 80 00 12 */	li r4, 0x12
/* 80091370 0008E2D0  48 00 07 85 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091374 0008E2D4  7F BD 1A 14 */	add r29, r29, r3
/* 80091378 0008E2D8  7F C3 F3 78 */	mr r3, r30
/* 8009137C 0008E2DC  38 80 00 13 */	li r4, 0x13
/* 80091380 0008E2E0  48 00 07 75 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091384 0008E2E4  7F BD 1A 14 */	add r29, r29, r3
/* 80091388 0008E2E8  7F C3 F3 78 */	mr r3, r30
/* 8009138C 0008E2EC  38 80 00 15 */	li r4, 0x15
/* 80091390 0008E2F0  48 00 07 65 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091394 0008E2F4  7F BD 1A 14 */	add r29, r29, r3
/* 80091398 0008E2F8  7F C3 F3 78 */	mr r3, r30
/* 8009139C 0008E2FC  38 80 00 16 */	li r4, 0x16
/* 800913A0 0008E300  48 00 07 55 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913A4 0008E304  7F BD 1A 14 */	add r29, r29, r3
/* 800913A8 0008E308  7F C3 F3 78 */	mr r3, r30
/* 800913AC 0008E30C  38 80 00 18 */	li r4, 0x18
/* 800913B0 0008E310  48 00 07 45 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913B4 0008E314  7F BD 1A 14 */	add r29, r29, r3
/* 800913B8 0008E318  7F C3 F3 78 */	mr r3, r30
/* 800913BC 0008E31C  38 80 00 1D */	li r4, 0x1d
/* 800913C0 0008E320  48 00 07 35 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913C4 0008E324  7F BD 1A 14 */	add r29, r29, r3
/* 800913C8 0008E328  7F C3 F3 78 */	mr r3, r30
/* 800913CC 0008E32C  38 80 00 1E */	li r4, 0x1e
/* 800913D0 0008E330  48 00 07 25 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913D4 0008E334  7F BD 1A 14 */	add r29, r29, r3
/* 800913D8 0008E338  7F C3 F3 78 */	mr r3, r30
/* 800913DC 0008E33C  38 80 00 1F */	li r4, 0x1f
/* 800913E0 0008E340  48 00 07 15 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913E4 0008E344  7F BD 1A 14 */	add r29, r29, r3
/* 800913E8 0008E348  7F C3 F3 78 */	mr r3, r30
/* 800913EC 0008E34C  38 80 00 20 */	li r4, 0x20
/* 800913F0 0008E350  48 00 07 05 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800913F4 0008E354  7F BD 1A 14 */	add r29, r29, r3
/* 800913F8 0008E358  7F C3 F3 78 */	mr r3, r30
/* 800913FC 0008E35C  38 80 00 21 */	li r4, 0x21
/* 80091400 0008E360  48 00 06 F5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091404 0008E364  7F BD 1A 14 */	add r29, r29, r3
/* 80091408 0008E368  7F C3 F3 78 */	mr r3, r30
/* 8009140C 0008E36C  38 80 00 22 */	li r4, 0x22
/* 80091410 0008E370  48 00 06 E5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091414 0008E374  7F BD 1A 14 */	add r29, r29, r3
/* 80091418 0008E378  7F C3 F3 78 */	mr r3, r30
/* 8009141C 0008E37C  38 80 00 23 */	li r4, 0x23
/* 80091420 0008E380  48 00 06 D5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091424 0008E384  7F BD 1A 14 */	add r29, r29, r3
/* 80091428 0008E388  7F C3 F3 78 */	mr r3, r30
/* 8009142C 0008E38C  38 80 00 24 */	li r4, 0x24
/* 80091430 0008E390  48 00 06 C5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091434 0008E394  7F BD 1A 14 */	add r29, r29, r3
/* 80091438 0008E398  7F C3 F3 78 */	mr r3, r30
/* 8009143C 0008E39C  38 80 00 25 */	li r4, 0x25
/* 80091440 0008E3A0  48 00 06 B5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091444 0008E3A4  7F BD 1A 14 */	add r29, r29, r3
/* 80091448 0008E3A8  7F C3 F3 78 */	mr r3, r30
/* 8009144C 0008E3AC  38 80 00 26 */	li r4, 0x26
/* 80091450 0008E3B0  48 00 06 A5 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091454 0008E3B4  7F BD 1A 14 */	add r29, r29, r3
/* 80091458 0008E3B8  7F C3 F3 78 */	mr r3, r30
/* 8009145C 0008E3BC  38 80 00 27 */	li r4, 0x27
/* 80091460 0008E3C0  48 00 06 95 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091464 0008E3C4  7F BD 1A 14 */	add r29, r29, r3
/* 80091468 0008E3C8  7F C3 F3 78 */	mr r3, r30
/* 8009146C 0008E3CC  38 80 00 28 */	li r4, 0x28
/* 80091470 0008E3D0  48 00 06 85 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091474 0008E3D4  7F BD 1A 14 */	add r29, r29, r3
/* 80091478 0008E3D8  7F C3 F3 78 */	mr r3, r30
/* 8009147C 0008E3DC  38 80 00 1C */	li r4, 0x1c
/* 80091480 0008E3E0  48 00 06 75 */	bl GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091484 0008E3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80091488 0008E3E8  7C 7D 1A 14 */	add r3, r29, r3
/* 8009148C 0008E3EC  7C 7F 1A 14 */	add r3, r31, r3
/* 80091490 0008E3F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091494 0008E3F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091498 0008E3F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009149C 0008E3FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800914A0 0008E400  7C 08 03 A6 */	mtlr r0
/* 800914A4 0008E404  38 21 00 20 */	addi r1, r1, 0x20
/* 800914A8 0008E408  4E 80 00 20 */	blr

.global GetTotalPickupCount__12CPlayerStateCFv
GetTotalPickupCount__12CPlayerStateCFv:
/* 800914AC 0008E40C  38 60 00 63 */	li r3, 0x63
/* 800914B0 0008E410  4E 80 00 20 */	blr

.global SetIsFusionEnabled__12CPlayerStateFb
SetIsFusionEnabled__12CPlayerStateFb:
/* 800914B4 0008E414  88 03 00 00 */	lbz r0, 0(r3)
/* 800914B8 0008E418  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 800914BC 0008E41C  98 03 00 00 */	stb r0, 0(r3)
/* 800914C0 0008E420  4E 80 00 20 */	blr

.global GetIsFusionEnabled__12CPlayerStateCFv
GetIsFusionEnabled__12CPlayerStateCFv:
/* 800914C4 0008E424  88 03 00 00 */	lbz r0, 0(r3)
/* 800914C8 0008E428  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 800914CC 0008E42C  7C 03 00 D0 */	neg r0, r3
/* 800914D0 0008E430  7C 00 1B 78 */	or r0, r0, r3
/* 800914D4 0008E434  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800914D8 0008E438  4E 80 00 20 */	blr

.global GetCurrentSuit__12CPlayerStateCFv
GetCurrentSuit__12CPlayerStateCFv:
/* 800914DC 0008E43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800914E0 0008E440  7C 08 02 A6 */	mflr r0
/* 800914E4 0008E444  90 01 00 14 */	stw r0, 0x14(r1)
/* 800914E8 0008E448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800914EC 0008E44C  7C 7F 1B 78 */	mr r31, r3
/* 800914F0 0008E450  4B FF FF D5 */	bl GetIsFusionEnabled__12CPlayerStateCFv
/* 800914F4 0008E454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800914F8 0008E458  41 82 00 0C */	beq lbl_80091504
/* 800914FC 0008E45C  38 60 00 04 */	li r3, 4
/* 80091500 0008E460  48 00 00 08 */	b lbl_80091508
lbl_80091504:
/* 80091504 0008E464  80 7F 00 20 */	lwz r3, 0x20(r31)
lbl_80091508:
/* 80091508 0008E468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009150C 0008E46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80091510 0008E470  7C 08 03 A6 */	mtlr r0
/* 80091514 0008E474  38 21 00 10 */	addi r1, r1, 0x10
/* 80091518 0008E478  4E 80 00 20 */	blr

.global CanVisorSeeFog__12CPlayerStateCFRC13CStateManager
CanVisorSeeFog__12CPlayerStateCFRC13CStateManager:
/* 8009151C 0008E47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091520 0008E480  7C 08 02 A6 */	mflr r0
/* 80091524 0008E484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091528 0008E488  48 00 00 31 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 8009152C 0008E48C  2C 03 00 00 */	cmpwi r3, 0
/* 80091530 0008E490  38 00 00 00 */	li r0, 0
/* 80091534 0008E494  41 82 00 0C */	beq lbl_80091540
/* 80091538 0008E498  2C 03 00 02 */	cmpwi r3, 2
/* 8009153C 0008E49C  40 82 00 08 */	bne lbl_80091544
lbl_80091540:
/* 80091540 0008E4A0  38 00 00 01 */	li r0, 1
lbl_80091544:
/* 80091544 0008E4A4  7C 03 03 78 */	mr r3, r0
/* 80091548 0008E4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009154C 0008E4AC  7C 08 03 A6 */	mtlr r0
/* 80091550 0008E4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80091554 0008E4B4  4E 80 00 20 */	blr

.global GetActiveVisor__12CPlayerStateCFRC13CStateManager
GetActiveVisor__12CPlayerStateCFRC13CStateManager:
/* 80091558 0008E4B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009155C 0008E4BC  7C 08 02 A6 */	mflr r0
/* 80091560 0008E4C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80091564 0008E4C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091568 0008E4C8  7C 7F 1B 78 */	mr r31, r3
/* 8009156C 0008E4CC  80 64 08 70 */	lwz r3, 0x870(r4)
/* 80091570 0008E4D0  4B F7 A5 A9 */	bl GetCurrentCamera__14CCameraManagerCFRC13CStateManager
/* 80091574 0008E4D4  7C 64 1B 78 */	mr r4, r3
/* 80091578 0008E4D8  38 61 00 08 */	addi r3, r1, 8
/* 8009157C 0008E4DC  48 01 CE F9 */	bl "__ct__32TCastToPtr<18CFirstPersonCamera>FR7CEntity"
/* 80091580 0008E4E0  80 03 00 04 */	lwz r0, 4(r3)
/* 80091584 0008E4E4  28 00 00 00 */	cmplwi r0, 0
/* 80091588 0008E4E8  41 82 00 0C */	beq lbl_80091594
/* 8009158C 0008E4EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80091590 0008E4F0  48 00 00 08 */	b lbl_80091598
lbl_80091594:
/* 80091594 0008E4F4  38 60 00 00 */	li r3, 0
lbl_80091598:
/* 80091598 0008E4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009159C 0008E4FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800915A0 0008E500  7C 08 03 A6 */	mtlr r0
/* 800915A4 0008E504  38 21 00 20 */	addi r1, r1, 0x20
/* 800915A8 0008E508  4E 80 00 20 */	blr

.global UpdateStaticInterference__12CPlayerStateFR13CStateManagerRCf
UpdateStaticInterference__12CPlayerStateFR13CStateManagerRCf:
/* 800915AC 0008E50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800915B0 0008E510  7C 08 02 A6 */	mflr r0
/* 800915B4 0008E514  38 63 01 88 */	addi r3, r3, 0x188
/* 800915B8 0008E518  90 01 00 14 */	stw r0, 0x14(r1)
/* 800915BC 0008E51C  C0 25 00 00 */	lfs f1, 0(r5)
/* 800915C0 0008E520  48 12 F1 E9 */	bl Update__19CStaticInterferenceFR13CStateManagerf
/* 800915C4 0008E524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800915C8 0008E528  7C 08 03 A6 */	mtlr r0
/* 800915CC 0008E52C  38 21 00 10 */	addi r1, r1, 0x10
/* 800915D0 0008E530  4E 80 00 20 */	blr

.global SetScanTime__12CPlayerStateFUif
SetScanTime__12CPlayerStateFUif:
/* 800915D4 0008E534  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800915D8 0008E538  7C 08 02 A6 */	mflr r0
/* 800915DC 0008E53C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800915E0 0008E540  38 A1 00 24 */	addi r5, r1, 0x24
/* 800915E4 0008E544  89 21 00 14 */	lbz r9, 0x14(r1)
/* 800915E8 0008E548  38 E1 00 0C */	addi r7, r1, 0xc
/* 800915EC 0008E54C  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 800915F0 0008E550  FF E0 08 90 */	fmr f31, f1
/* 800915F4 0008E554  80 03 01 74 */	lwz r0, 0x174(r3)
/* 800915F8 0008E558  80 C3 01 7C */	lwz r6, 0x17c(r3)
/* 800915FC 0008E55C  54 00 18 38 */	slwi r0, r0, 3
/* 80091600 0008E560  90 81 00 08 */	stw r4, 8(r1)
/* 80091604 0008E564  7D 06 02 14 */	add r8, r6, r0
/* 80091608 0008E568  38 C1 00 08 */	addi r6, r1, 8
/* 8009160C 0008E56C  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80091610 0008E570  38 81 00 20 */	addi r4, r1, 0x20
/* 80091614 0008E574  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 80091618 0008E578  38 61 00 1C */	addi r3, r1, 0x1c
/* 8009161C 0008E57C  99 21 00 10 */	stb r9, 0x10(r1)
/* 80091620 0008E580  91 01 00 30 */	stw r8, 0x30(r1)
/* 80091624 0008E584  90 01 00 28 */	stw r0, 0x28(r1)
/* 80091628 0008E588  99 21 00 0C */	stb r9, 0xc(r1)
/* 8009162C 0008E58C  91 01 00 24 */	stw r8, 0x24(r1)
/* 80091630 0008E590  90 01 00 20 */	stw r0, 0x20(r1)
/* 80091634 0008E594  48 00 0E 6D */	bl "lower_bound<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>"
/* 80091638 0008E598  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8009163C 0008E59C  38 80 00 00 */	li r4, 0
/* 80091640 0008E5A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80091644 0008E5A4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80091648 0008E5A8  7C 05 00 40 */	cmplw r5, r0
/* 8009164C 0008E5AC  41 82 00 18 */	beq lbl_80091664
/* 80091650 0008E5B0  80 61 00 08 */	lwz r3, 8(r1)
/* 80091654 0008E5B4  80 05 00 00 */	lwz r0, 0(r5)
/* 80091658 0008E5B8  7C 03 00 40 */	cmplw r3, r0
/* 8009165C 0008E5BC  41 80 00 08 */	blt lbl_80091664
/* 80091660 0008E5C0  38 80 00 01 */	li r4, 1
lbl_80091664:
/* 80091664 0008E5C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80091668 0008E5C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8009166C 0008E5CC  41 82 00 08 */	beq lbl_80091674
/* 80091670 0008E5D0  38 61 00 18 */	addi r3, r1, 0x18
lbl_80091674:
/* 80091674 0008E5D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80091678 0008E5D8  D3 E3 00 04 */	stfs f31, 4(r3)
/* 8009167C 0008E5DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80091680 0008E5E0  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80091684 0008E5E4  7C 08 03 A6 */	mtlr r0
/* 80091688 0008E5E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8009168C 0008E5EC  4E 80 00 20 */	blr

.global GetScanTime__12CPlayerStateCFUi
GetScanTime__12CPlayerStateCFUi:
/* 80091690 0008E5F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80091694 0008E5F4  7C 08 02 A6 */	mflr r0
/* 80091698 0008E5F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8009169C 0008E5FC  38 A1 00 24 */	addi r5, r1, 0x24
/* 800916A0 0008E600  89 21 00 14 */	lbz r9, 0x14(r1)
/* 800916A4 0008E604  38 C1 00 08 */	addi r6, r1, 8
/* 800916A8 0008E608  80 03 01 74 */	lwz r0, 0x174(r3)
/* 800916AC 0008E60C  38 E1 00 0C */	addi r7, r1, 0xc
/* 800916B0 0008E610  81 03 01 7C */	lwz r8, 0x17c(r3)
/* 800916B4 0008E614  38 61 00 1C */	addi r3, r1, 0x1c
/* 800916B8 0008E618  54 00 18 38 */	slwi r0, r0, 3
/* 800916BC 0008E61C  90 81 00 08 */	stw r4, 8(r1)
/* 800916C0 0008E620  7C 08 02 14 */	add r0, r8, r0
/* 800916C4 0008E624  38 81 00 20 */	addi r4, r1, 0x20
/* 800916C8 0008E628  99 21 00 10 */	stb r9, 0x10(r1)
/* 800916CC 0008E62C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800916D0 0008E630  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800916D4 0008E634  91 01 00 28 */	stw r8, 0x28(r1)
/* 800916D8 0008E638  99 21 00 0C */	stb r9, 0xc(r1)
/* 800916DC 0008E63C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800916E0 0008E640  91 01 00 20 */	stw r8, 0x20(r1)
/* 800916E4 0008E644  48 00 0C FD */	bl "lower_bound<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>"
/* 800916E8 0008E648  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 800916EC 0008E64C  38 80 00 00 */	li r4, 0
/* 800916F0 0008E650  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800916F4 0008E654  90 A1 00 18 */	stw r5, 0x18(r1)
/* 800916F8 0008E658  7C 05 00 40 */	cmplw r5, r0
/* 800916FC 0008E65C  41 82 00 18 */	beq lbl_80091714
/* 80091700 0008E660  80 61 00 08 */	lwz r3, 8(r1)
/* 80091704 0008E664  80 05 00 00 */	lwz r0, 0(r5)
/* 80091708 0008E668  7C 03 00 40 */	cmplw r3, r0
/* 8009170C 0008E66C  41 80 00 08 */	blt lbl_80091714
/* 80091710 0008E670  38 80 00 01 */	li r4, 1
lbl_80091714:
/* 80091714 0008E674  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80091718 0008E678  38 61 00 2C */	addi r3, r1, 0x2c
/* 8009171C 0008E67C  41 82 00 08 */	beq lbl_80091724
/* 80091720 0008E680  38 61 00 18 */	addi r3, r1, 0x18
lbl_80091724:
/* 80091724 0008E684  80 63 00 00 */	lwz r3, 0(r3)
/* 80091728 0008E688  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009172C 0008E68C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80091730 0008E690  7C 08 03 A6 */	mtlr r0
/* 80091734 0008E694  38 21 00 40 */	addi r1, r1, 0x40
/* 80091738 0008E698  4E 80 00 20 */	blr

.global InitializeScanTimes__12CPlayerStateFv
InitializeScanTimes__12CPlayerStateFv:
/* 8009173C 0008E69C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80091740 0008E6A0  7C 08 02 A6 */	mflr r0
/* 80091744 0008E6A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80091748 0008E6A8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8009174C 0008E6AC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80091750 0008E6B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091754 0008E6B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80091758 0008E6B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009175C 0008E6BC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80091760 0008E6C0  7C 7C 1B 78 */	mr r28, r3
/* 80091764 0008E6C4  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80091768 0008E6C8  2C 00 00 00 */	cmpwi r0, 0
/* 8009176C 0008E6CC  40 82 00 90 */	bne lbl_800917FC
/* 80091770 0008E6D0  83 ED A0 84 */	lwz r31, gpMemoryCard@sda21(r13)
/* 80091774 0008E6D4  38 7C 01 70 */	addi r3, r28, 0x170
/* 80091778 0008E6D8  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8009177C 0008E6DC  48 00 0D E5 */	bl "reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi"
/* 80091780 0008E6E0  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 80091784 0008E6E4  48 00 00 60 */	b lbl_800917E4
lbl_80091788:
/* 80091788 0008E6E8  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 8009178C 0008E6EC  80 BC 01 78 */	lwz r5, 0x178(r28)
/* 80091790 0008E6F0  83 BE 00 00 */	lwz r29, 0(r30)
/* 80091794 0008E6F4  7C 00 28 00 */	cmpw r0, r5
/* 80091798 0008E6F8  C3 ED 85 98 */	lfs f31, lbl_805A7158@sda21(r13)
/* 8009179C 0008E6FC  41 80 00 1C */	blt lbl_800917B8
/* 800917A0 0008E700  2C 05 00 00 */	cmpwi r5, 0
/* 800917A4 0008E704  38 7C 01 70 */	addi r3, r28, 0x170
/* 800917A8 0008E708  38 80 00 04 */	li r4, 4
/* 800917AC 0008E70C  41 82 00 08 */	beq lbl_800917B4
/* 800917B0 0008E710  54 A4 08 3C */	slwi r4, r5, 1
lbl_800917B4:
/* 800917B4 0008E714  48 00 0D AD */	bl "reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi"
lbl_800917B8:
/* 800917B8 0008E718  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 800917BC 0008E71C  80 7C 01 7C */	lwz r3, 0x17c(r28)
/* 800917C0 0008E720  54 00 18 38 */	slwi r0, r0, 3
/* 800917C4 0008E724  7C 63 02 15 */	add. r3, r3, r0
/* 800917C8 0008E728  41 82 00 0C */	beq lbl_800917D4
/* 800917CC 0008E72C  93 A3 00 00 */	stw r29, 0(r3)
/* 800917D0 0008E730  D3 E3 00 04 */	stfs f31, 4(r3)
lbl_800917D4:
/* 800917D4 0008E734  80 7C 01 74 */	lwz r3, 0x174(r28)
/* 800917D8 0008E738  3B DE 00 08 */	addi r30, r30, 8
/* 800917DC 0008E73C  38 03 00 01 */	addi r0, r3, 1
/* 800917E0 0008E740  90 1C 01 74 */	stw r0, 0x174(r28)
lbl_800917E4:
/* 800917E4 0008E744  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 800917E8 0008E748  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800917EC 0008E74C  54 00 18 38 */	slwi r0, r0, 3
/* 800917F0 0008E750  7C 03 02 14 */	add r0, r3, r0
/* 800917F4 0008E754  7C 1E 00 40 */	cmplw r30, r0
/* 800917F8 0008E758  40 82 FF 90 */	bne lbl_80091788
lbl_800917FC:
/* 800917FC 0008E75C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80091800 0008E760  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80091804 0008E764  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80091808 0008E768  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009180C 0008E76C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091810 0008E770  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80091814 0008E774  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80091818 0008E778  7C 08 03 A6 */	mtlr r0
/* 8009181C 0008E77C  38 21 00 30 */	addi r1, r1, 0x30
/* 80091820 0008E780  4E 80 00 20 */	blr

.global GetEnergyTankCapacity__12CPlayerStateFv
GetEnergyTankCapacity__12CPlayerStateFv:
/* 80091824 0008E784  C0 22 8B 0C */	lfs f1, lbl_805AA82C@sda21(r2)
/* 80091828 0008E788  4E 80 00 20 */	blr

.global GetBaseHealthCapacity__12CPlayerStateFv
GetBaseHealthCapacity__12CPlayerStateFv:
/* 8009182C 0008E78C  C0 22 8B 10 */	lfs f1, kBaseHealthCapacity@sda21(r2)
/* 80091830 0008E790  4E 80 00 20 */	blr

.global GetIsVisorTransitioning__12CPlayerStateCFv
GetIsVisorTransitioning__12CPlayerStateCFv:
/* 80091834 0008E794  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80091838 0008E798  38 A0 00 00 */	li r5, 0
/* 8009183C 0008E79C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80091840 0008E7A0  7C 04 00 00 */	cmpw r4, r0
/* 80091844 0008E7A4  40 82 00 14 */	bne lbl_80091858
/* 80091848 0008E7A8  C0 22 8B 14 */	lfs f1, kMaxVisorTransitionFactor@sda21(r2)
/* 8009184C 0008E7AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80091850 0008E7B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80091854 0008E7B4  40 81 00 08 */	ble lbl_8009185C
lbl_80091858:
/* 80091858 0008E7B8  38 A0 00 01 */	li r5, 1
lbl_8009185C:
/* 8009185C 0008E7BC  7C A3 2B 78 */	mr r3, r5
/* 80091860 0008E7C0  4E 80 00 20 */	blr

.global GetVisorTransitionFactor__12CPlayerStateCFv
GetVisorTransitionFactor__12CPlayerStateCFv:
/* 80091864 0008E7C4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80091868 0008E7C8  C0 02 8B 14 */	lfs f0, kMaxVisorTransitionFactor@sda21(r2)
/* 8009186C 0008E7CC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80091870 0008E7D0  4E 80 00 20 */	blr

.global UpdateVisorTransition__12CPlayerStateFf
UpdateVisorTransition__12CPlayerStateFf:
/* 80091874 0008E7D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80091878 0008E7D8  7C 08 02 A6 */	mflr r0
/* 8009187C 0008E7DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80091880 0008E7E0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80091884 0008E7E4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80091888 0008E7E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009188C 0008E7EC  7C 7F 1B 78 */	mr r31, r3
/* 80091890 0008E7F0  FF E0 08 90 */	fmr f31, f1
/* 80091894 0008E7F4  4B FF FF A1 */	bl GetIsVisorTransitioning__12CPlayerStateCFv
/* 80091898 0008E7F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009189C 0008E7FC  41 82 00 9C */	beq lbl_80091938
/* 800918A0 0008E800  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800918A4 0008E804  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800918A8 0008E808  7C 03 00 00 */	cmpw r3, r0
/* 800918AC 0008E80C  40 82 00 34 */	bne lbl_800918E0
/* 800918B0 0008E810  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800918B4 0008E814  C0 02 8B 18 */	lfs f0, lbl_805AA838@sda21(r2)
/* 800918B8 0008E818  EC 21 F8 2A */	fadds f1, f1, f31
/* 800918BC 0008E81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800918C0 0008E820  D0 21 00 08 */	stfs f1, 8(r1)
/* 800918C4 0008E824  40 80 00 0C */	bge lbl_800918D0
/* 800918C8 0008E828  38 61 00 08 */	addi r3, r1, 8
/* 800918CC 0008E82C  48 00 00 08 */	b lbl_800918D4
lbl_800918D0:
/* 800918D0 0008E830  38 62 8B 18 */	addi r3, r2, lbl_805AA838@sda21
lbl_800918D4:
/* 800918D4 0008E834  C0 03 00 00 */	lfs f0, 0(r3)
/* 800918D8 0008E838  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800918DC 0008E83C  48 00 00 5C */	b lbl_80091938
lbl_800918E0:
/* 800918E0 0008E840  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800918E4 0008E844  C0 02 8B 1C */	lfs f0, lbl_805AA83C@sda21(r2)
/* 800918E8 0008E848  EC 21 F8 28 */	fsubs f1, f1, f31
/* 800918EC 0008E84C  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 800918F0 0008E850  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800918F4 0008E854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800918F8 0008E858  40 80 00 40 */	bge lbl_80091938
/* 800918FC 0008E85C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80091900 0008E860  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80091904 0008E864  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80091908 0008E868  FC 00 02 10 */	fabs f0, f0
/* 8009190C 0008E86C  FC 00 00 18 */	frsp f0, f0
/* 80091910 0008E870  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80091914 0008E874  C0 2D 85 94 */	lfs f1, lbl_805A7154@sda21(r13)
/* 80091918 0008E878  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8009191C 0008E87C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80091920 0008E880  40 80 00 0C */	bge lbl_8009192C
/* 80091924 0008E884  38 6D 85 94 */	addi r3, r13, lbl_805A7154@sda21
/* 80091928 0008E888  48 00 00 08 */	b lbl_80091930
lbl_8009192C:
/* 8009192C 0008E88C  38 7F 00 1C */	addi r3, r31, 0x1c
lbl_80091930:
/* 80091930 0008E890  C0 03 00 00 */	lfs f0, 0(r3)
/* 80091934 0008E894  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_80091938:
/* 80091938 0008E898  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8009193C 0008E89C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80091940 0008E8A0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80091944 0008E8A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091948 0008E8A8  7C 08 03 A6 */	mtlr r0
/* 8009194C 0008E8AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80091950 0008E8B0  4E 80 00 20 */	blr

.global StartTransitionToVisor__12CPlayerStateFQ212CPlayerState12EPlayerVisor
StartTransitionToVisor__12CPlayerStateFQ212CPlayerState12EPlayerVisor:
/* 80091954 0008E8B4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80091958 0008E8B8  7C 04 00 00 */	cmpw r4, r0
/* 8009195C 0008E8BC  4D 82 00 20 */	beqlr
/* 80091960 0008E8C0  90 83 00 18 */	stw r4, 0x18(r3)
/* 80091964 0008E8C4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80091968 0008E8C8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8009196C 0008E8CC  7C 04 00 00 */	cmpw r4, r0
/* 80091970 0008E8D0  4E 80 00 20 */	blr

.global ResetVisor__12CPlayerStateFv
ResetVisor__12CPlayerStateFv:
/* 80091974 0008E8D4  38 00 00 00 */	li r0, 0
/* 80091978 0008E8D8  C0 02 8B 1C */	lfs f0, lbl_805AA83C@sda21(r2)
/* 8009197C 0008E8DC  90 03 00 18 */	stw r0, 0x18(r3)
/* 80091980 0008E8E0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80091984 0008E8E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80091988 0008E8E8  4E 80 00 20 */	blr

.global ItemEnabled__12CPlayerStateCFQ212CPlayerState9EItemType
ItemEnabled__12CPlayerStateCFQ212CPlayerState9EItemType:
/* 8009198C 0008E8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091990 0008E8F0  7C 08 02 A6 */	mflr r0
/* 80091994 0008E8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091998 0008E8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009199C 0008E8FC  7C 9F 23 78 */	mr r31, r4
/* 800919A0 0008E900  93 C1 00 08 */	stw r30, 8(r1)
/* 800919A4 0008E904  7C 7E 1B 78 */	mr r30, r3
/* 800919A8 0008E908  48 00 01 19 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 800919AC 0008E90C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800919B0 0008E910  41 82 00 24 */	beq lbl_800919D4
/* 800919B4 0008E914  38 00 00 01 */	li r0, 1
/* 800919B8 0008E918  80 7E 00 04 */	lwz r3, 4(r30)
/* 800919BC 0008E91C  7C 00 F8 30 */	slw r0, r0, r31
/* 800919C0 0008E920  7C 63 00 38 */	and r3, r3, r0
/* 800919C4 0008E924  7C 03 00 D0 */	neg r0, r3
/* 800919C8 0008E928  7C 00 1B 78 */	or r0, r0, r3
/* 800919CC 0008E92C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800919D0 0008E930  48 00 00 08 */	b lbl_800919D8
lbl_800919D4:
/* 800919D4 0008E934  38 60 00 00 */	li r3, 0
lbl_800919D8:
/* 800919D8 0008E938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800919DC 0008E93C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800919E0 0008E940  83 C1 00 08 */	lwz r30, 8(r1)
/* 800919E4 0008E944  7C 08 03 A6 */	mtlr r0
/* 800919E8 0008E948  38 21 00 10 */	addi r1, r1, 0x10
/* 800919EC 0008E94C  4E 80 00 20 */	blr

.global DisableItem__12CPlayerStateFQ212CPlayerState9EItemType
DisableItem__12CPlayerStateFQ212CPlayerState9EItemType:
/* 800919F0 0008E950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800919F4 0008E954  7C 08 02 A6 */	mflr r0
/* 800919F8 0008E958  90 01 00 14 */	stw r0, 0x14(r1)
/* 800919FC 0008E95C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80091A00 0008E960  7C 9F 23 78 */	mr r31, r4
/* 80091A04 0008E964  93 C1 00 08 */	stw r30, 8(r1)
/* 80091A08 0008E968  7C 7E 1B 78 */	mr r30, r3
/* 80091A0C 0008E96C  48 00 00 B5 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091A10 0008E970  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091A14 0008E974  41 82 00 18 */	beq lbl_80091A2C
/* 80091A18 0008E978  38 00 00 01 */	li r0, 1
/* 80091A1C 0008E97C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80091A20 0008E980  7C 00 F8 30 */	slw r0, r0, r31
/* 80091A24 0008E984  7C 60 00 78 */	andc r0, r3, r0
/* 80091A28 0008E988  90 1E 00 04 */	stw r0, 4(r30)
lbl_80091A2C:
/* 80091A2C 0008E98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80091A30 0008E990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80091A34 0008E994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80091A38 0008E998  7C 08 03 A6 */	mtlr r0
/* 80091A3C 0008E99C  38 21 00 10 */	addi r1, r1, 0x10
/* 80091A40 0008E9A0  4E 80 00 20 */	blr

.global EnableItem__12CPlayerStateFQ212CPlayerState9EItemType
EnableItem__12CPlayerStateFQ212CPlayerState9EItemType:
/* 80091A44 0008E9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091A48 0008E9A8  7C 08 02 A6 */	mflr r0
/* 80091A4C 0008E9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091A50 0008E9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80091A54 0008E9B4  7C 9F 23 78 */	mr r31, r4
/* 80091A58 0008E9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80091A5C 0008E9BC  7C 7E 1B 78 */	mr r30, r3
/* 80091A60 0008E9C0  48 00 00 61 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091A64 0008E9C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091A68 0008E9C8  41 82 00 18 */	beq lbl_80091A80
/* 80091A6C 0008E9CC  38 00 00 01 */	li r0, 1
/* 80091A70 0008E9D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80091A74 0008E9D4  7C 00 F8 30 */	slw r0, r0, r31
/* 80091A78 0008E9D8  7C 60 03 78 */	or r0, r3, r0
/* 80091A7C 0008E9DC  90 1E 00 04 */	stw r0, 4(r30)
lbl_80091A80:
/* 80091A80 0008E9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80091A84 0008E9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80091A88 0008E9E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80091A8C 0008E9EC  7C 08 03 A6 */	mtlr r0
/* 80091A90 0008E9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80091A94 0008E9F4  4E 80 00 20 */	blr

.global GetPowerUp__12CPlayerStateFQ212CPlayerState9EItemType
GetPowerUp__12CPlayerStateFQ212CPlayerState9EItemType:
/* 80091A98 0008E9F8  2C 04 00 00 */	cmpwi r4, 0
/* 80091A9C 0008E9FC  41 80 00 0C */	blt lbl_80091AA8
/* 80091AA0 0008EA00  2C 04 00 28 */	cmpwi r4, 0x28
/* 80091AA4 0008EA04  40 81 00 0C */	ble lbl_80091AB0
lbl_80091AA8:
/* 80091AA8 0008EA08  38 60 00 00 */	li r3, 0
/* 80091AAC 0008EA0C  4E 80 00 20 */	blr
lbl_80091AB0:
/* 80091AB0 0008EA10  54 80 18 38 */	slwi r0, r4, 3
/* 80091AB4 0008EA14  7C 63 02 14 */	add r3, r3, r0
/* 80091AB8 0008EA18  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80091ABC 0008EA1C  4E 80 00 20 */	blr

.global HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType:
/* 80091AC0 0008EA20  2C 04 00 00 */	cmpwi r4, 0
/* 80091AC4 0008EA24  41 80 00 0C */	blt lbl_80091AD0
/* 80091AC8 0008EA28  2C 04 00 28 */	cmpwi r4, 0x28
/* 80091ACC 0008EA2C  40 81 00 0C */	ble lbl_80091AD8
lbl_80091AD0:
/* 80091AD0 0008EA30  38 60 00 00 */	li r3, 0
/* 80091AD4 0008EA34  4E 80 00 20 */	blr
lbl_80091AD8:
/* 80091AD8 0008EA38  54 80 18 38 */	slwi r0, r4, 3
/* 80091ADC 0008EA3C  7C 63 02 14 */	add r3, r3, r0
/* 80091AE0 0008EA40  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80091AE4 0008EA44  7C 03 00 D0 */	neg r0, r3
/* 80091AE8 0008EA48  7C 00 18 78 */	andc r0, r0, r3
/* 80091AEC 0008EA4C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80091AF0 0008EA50  4E 80 00 20 */	blr

.global GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType
GetItemCapacity__12CPlayerStateCFQ212CPlayerState9EItemType:
/* 80091AF4 0008EA54  2C 04 00 00 */	cmpwi r4, 0
/* 80091AF8 0008EA58  41 80 00 0C */	blt lbl_80091B04
/* 80091AFC 0008EA5C  2C 04 00 28 */	cmpwi r4, 0x28
/* 80091B00 0008EA60  40 81 00 0C */	ble lbl_80091B0C
lbl_80091B04:
/* 80091B04 0008EA64  38 60 00 00 */	li r3, 0
/* 80091B08 0008EA68  4E 80 00 20 */	blr
lbl_80091B0C:
/* 80091B0C 0008EA6C  54 80 18 38 */	slwi r0, r4, 3
/* 80091B10 0008EA70  7C 63 02 14 */	add r3, r3, r0
/* 80091B14 0008EA74  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80091B18 0008EA78  4E 80 00 20 */	blr

.global GetItemAmount__12CPlayerStateCFQ212CPlayerState9EItemType
GetItemAmount__12CPlayerStateCFQ212CPlayerState9EItemType:
/* 80091B1C 0008EA7C  2C 04 00 00 */	cmpwi r4, 0
/* 80091B20 0008EA80  41 80 00 0C */	blt lbl_80091B2C
/* 80091B24 0008EA84  2C 04 00 28 */	cmpwi r4, 0x28
/* 80091B28 0008EA88  40 81 00 0C */	ble lbl_80091B34
lbl_80091B2C:
/* 80091B2C 0008EA8C  38 60 00 00 */	li r3, 0
/* 80091B30 0008EA90  4E 80 00 20 */	blr
lbl_80091B34:
/* 80091B34 0008EA94  2C 04 00 0F */	cmpwi r4, 0xf
/* 80091B38 0008EA98  41 82 00 44 */	beq lbl_80091B7C
/* 80091B3C 0008EA9C  40 80 00 24 */	bge lbl_80091B60
/* 80091B40 0008EAA0  2C 04 00 07 */	cmpwi r4, 7
/* 80091B44 0008EAA4  40 80 00 10 */	bge lbl_80091B54
/* 80091B48 0008EAA8  2C 04 00 04 */	cmpwi r4, 4
/* 80091B4C 0008EAAC  41 82 00 30 */	beq lbl_80091B7C
/* 80091B50 0008EAB0  48 00 00 3C */	b lbl_80091B8C
lbl_80091B54:
/* 80091B54 0008EAB4  2C 04 00 09 */	cmpwi r4, 9
/* 80091B58 0008EAB8  40 80 00 34 */	bge lbl_80091B8C
/* 80091B5C 0008EABC  48 00 00 20 */	b lbl_80091B7C
lbl_80091B60:
/* 80091B60 0008EAC0  2C 04 00 1D */	cmpwi r4, 0x1d
/* 80091B64 0008EAC4  40 80 00 10 */	bge lbl_80091B74
/* 80091B68 0008EAC8  2C 04 00 18 */	cmpwi r4, 0x18
/* 80091B6C 0008EACC  41 82 00 10 */	beq lbl_80091B7C
/* 80091B70 0008EAD0  48 00 00 1C */	b lbl_80091B8C
lbl_80091B74:
/* 80091B74 0008EAD4  2C 04 00 29 */	cmpwi r4, 0x29
/* 80091B78 0008EAD8  40 80 00 14 */	bge lbl_80091B8C
lbl_80091B7C:
/* 80091B7C 0008EADC  54 80 18 38 */	slwi r0, r4, 3
/* 80091B80 0008EAE0  7C 63 02 14 */	add r3, r3, r0
/* 80091B84 0008EAE4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80091B88 0008EAE8  4E 80 00 20 */	blr
lbl_80091B8C:
/* 80091B8C 0008EAEC  38 60 00 00 */	li r3, 0
/* 80091B90 0008EAF0  4E 80 00 20 */	blr

.global DecrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
DecrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei:
/* 80091B94 0008EAF4  2C 04 00 00 */	cmpwi r4, 0
/* 80091B98 0008EAF8  4D 80 00 20 */	bltlr
/* 80091B9C 0008EAFC  2C 04 00 28 */	cmpwi r4, 0x28
/* 80091BA0 0008EB00  40 81 00 08 */	ble lbl_80091BA8
/* 80091BA4 0008EB04  4E 80 00 20 */	blr
lbl_80091BA8:
/* 80091BA8 0008EB08  2C 04 00 07 */	cmpwi r4, 7
/* 80091BAC 0008EB0C  40 80 00 10 */	bge lbl_80091BBC
/* 80091BB0 0008EB10  2C 04 00 04 */	cmpwi r4, 4
/* 80091BB4 0008EB14  41 82 00 10 */	beq lbl_80091BC4
/* 80091BB8 0008EB18  4E 80 00 20 */	blr
lbl_80091BBC:
/* 80091BBC 0008EB1C  2C 04 00 09 */	cmpwi r4, 9
/* 80091BC0 0008EB20  4C 80 00 20 */	bgelr
lbl_80091BC4:
/* 80091BC4 0008EB24  54 80 18 38 */	slwi r0, r4, 3
/* 80091BC8 0008EB28  7C 63 02 14 */	add r3, r3, r0
/* 80091BCC 0008EB2C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80091BD0 0008EB30  7C 05 00 50 */	subf r0, r5, r0
/* 80091BD4 0008EB34  90 03 00 28 */	stw r0, 0x28(r3)
/* 80091BD8 0008EB38  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80091BDC 0008EB3C  2C 00 00 00 */	cmpwi r0, 0
/* 80091BE0 0008EB40  4C 80 00 20 */	bgelr
/* 80091BE4 0008EB44  38 00 00 00 */	li r0, 0
/* 80091BE8 0008EB48  90 03 00 28 */	stw r0, 0x28(r3)
/* 80091BEC 0008EB4C  4E 80 00 20 */	blr

.global IncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
IncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei:
/* 80091BF0 0008EB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80091BF4 0008EB54  7C 08 02 A6 */	mflr r0
/* 80091BF8 0008EB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80091BFC 0008EB5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80091C00 0008EB60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80091C04 0008EB64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091C08 0008EB68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80091C0C 0008EB6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80091C10 0008EB70  7C 9E 23 79 */	or. r30, r4, r4
/* 80091C14 0008EB74  7C 7D 1B 78 */	mr r29, r3
/* 80091C18 0008EB78  41 80 00 C4 */	blt lbl_80091CDC
/* 80091C1C 0008EB7C  2C 1E 00 28 */	cmpwi r30, 0x28
/* 80091C20 0008EB80  40 81 00 08 */	ble lbl_80091C28
/* 80091C24 0008EB84  48 00 00 B8 */	b lbl_80091CDC
lbl_80091C28:
/* 80091C28 0008EB88  2C 05 00 00 */	cmpwi r5, 0
/* 80091C2C 0008EB8C  41 80 00 B0 */	blt lbl_80091CDC
/* 80091C30 0008EB90  38 1E FF FC */	addi r0, r30, -4
/* 80091C34 0008EB94  28 00 00 24 */	cmplwi r0, 0x24
/* 80091C38 0008EB98  41 81 00 8C */	bgt lbl_80091CC4
/* 80091C3C 0008EB9C  3C 80 80 3E */	lis r4, lbl_803DAD40@ha
/* 80091C40 0008EBA0  54 00 10 3A */	slwi r0, r0, 2
/* 80091C44 0008EBA4  38 84 AD 40 */	addi r4, r4, lbl_803DAD40@l
/* 80091C48 0008EBA8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80091C4C 0008EBAC  7C 09 03 A6 */	mtctr r0
/* 80091C50 0008EBB0  4E 80 04 20 */	bctr
lbl_80091C54:
/* 80091C54 0008EBB4  57 C0 18 38 */	slwi r0, r30, 3
/* 80091C58 0008EBB8  7C 9D 02 14 */	add r4, r29, r0
/* 80091C5C 0008EBBC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80091C60 0008EBC0  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 80091C64 0008EBC4  7C 00 2A 14 */	add r0, r0, r5
/* 80091C68 0008EBC8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80091C6C 0008EBCC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80091C70 0008EBD0  7C 00 18 00 */	cmpw r0, r3
/* 80091C74 0008EBD4  40 81 00 50 */	ble lbl_80091CC4
/* 80091C78 0008EBD8  90 64 00 28 */	stw r3, 0x28(r4)
/* 80091C7C 0008EBDC  48 00 00 48 */	b lbl_80091CC4
lbl_80091C80:
/* 80091C80 0008EBE0  37 FD 00 0C */	addic. r31, r29, 0xc
/* 80091C84 0008EBE4  41 82 00 40 */	beq lbl_80091CC4
/* 80091C88 0008EBE8  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 80091C8C 0008EBEC  3C 00 43 30 */	lis r0, 0x4330
/* 80091C90 0008EBF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80091C94 0008EBF4  C8 42 8B 20 */	lfd f2, lbl_805AA840@sda21(r2)
/* 80091C98 0008EBF8  90 01 00 08 */	stw r0, 8(r1)
/* 80091C9C 0008EBFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80091CA0 0008EC00  C8 21 00 08 */	lfd f1, 8(r1)
/* 80091CA4 0008EC04  EC 21 10 28 */	fsubs f1, f1, f2
/* 80091CA8 0008EC08  EF E1 00 2A */	fadds f31, f1, f0
/* 80091CAC 0008EC0C  48 00 00 85 */	bl CalculateHealth__12CPlayerStateFv
/* 80091CB0 0008EC10  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80091CB4 0008EC14  40 81 00 0C */	ble lbl_80091CC0
/* 80091CB8 0008EC18  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80091CBC 0008EC1C  48 00 00 08 */	b lbl_80091CC4
lbl_80091CC0:
/* 80091CC0 0008EC20  D3 FF 00 00 */	stfs f31, 0(r31)
lbl_80091CC4:
/* 80091CC4 0008EC24  2C 1E 00 18 */	cmpwi r30, 0x18
/* 80091CC8 0008EC28  40 82 00 14 */	bne lbl_80091CDC
/* 80091CCC 0008EC2C  7F A3 EB 78 */	mr r3, r29
/* 80091CD0 0008EC30  38 80 00 1A */	li r4, 0x1a
/* 80091CD4 0008EC34  38 A0 27 0F */	li r5, 0x270f
/* 80091CD8 0008EC38  4B FF FF 19 */	bl IncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
lbl_80091CDC:
/* 80091CDC 0008EC3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80091CE0 0008EC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80091CE4 0008EC44  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80091CE8 0008EC48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091CEC 0008EC4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091CF0 0008EC50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80091CF4 0008EC54  7C 08 03 A6 */	mtlr r0
/* 80091CF8 0008EC58  38 21 00 30 */	addi r1, r1, 0x30
/* 80091CFC 0008EC5C  4E 80 00 20 */	blr

.global ResetAndIncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
ResetAndIncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei:
/* 80091D00 0008EC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091D04 0008EC64  7C 08 02 A6 */	mflr r0
/* 80091D08 0008EC68  38 E0 00 00 */	li r7, 0
/* 80091D0C 0008EC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091D10 0008EC70  54 80 18 38 */	slwi r0, r4, 3
/* 80091D14 0008EC74  7C C3 02 14 */	add r6, r3, r0
/* 80091D18 0008EC78  90 E6 00 28 */	stw r7, 0x28(r6)
/* 80091D1C 0008EC7C  4B FF FE D5 */	bl IncrPickUp__12CPlayerStateFQ212CPlayerState9EItemTypei
/* 80091D20 0008EC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80091D24 0008EC84  7C 08 03 A6 */	mtlr r0
/* 80091D28 0008EC88  38 21 00 10 */	addi r1, r1, 0x10
/* 80091D2C 0008EC8C  4E 80 00 20 */	blr

.global CalculateHealth__12CPlayerStateFv
CalculateHealth__12CPlayerStateFv:
/* 80091D30 0008EC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091D34 0008EC94  3C 00 43 30 */	lis r0, 0x4330
/* 80091D38 0008EC98  C8 42 8B 20 */	lfd f2, lbl_805AA840@sda21(r2)
/* 80091D3C 0008EC9C  80 63 00 E8 */	lwz r3, 0xe8(r3)
/* 80091D40 0008ECA0  90 01 00 08 */	stw r0, 8(r1)
/* 80091D44 0008ECA4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80091D48 0008ECA8  C0 62 8B 0C */	lfs f3, lbl_805AA82C@sda21(r2)
/* 80091D4C 0008ECAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80091D50 0008ECB0  C0 02 8B 10 */	lfs f0, kBaseHealthCapacity@sda21(r2)
/* 80091D54 0008ECB4  C8 21 00 08 */	lfd f1, 8(r1)
/* 80091D58 0008ECB8  EC 21 10 28 */	fsubs f1, f1, f2
/* 80091D5C 0008ECBC  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 80091D60 0008ECC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80091D64 0008ECC4  4E 80 00 20 */	blr

.global InitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei
InitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei:
/* 80091D68 0008ECC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80091D6C 0008ECCC  7C 08 02 A6 */	mflr r0
/* 80091D70 0008ECD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80091D74 0008ECD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80091D78 0008ECD8  7C 7F 1B 78 */	mr r31, r3
/* 80091D7C 0008ECDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80091D80 0008ECE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80091D84 0008ECE4  7C 9D 23 79 */	or. r29, r4, r4
/* 80091D88 0008ECE8  41 80 00 E8 */	blt lbl_80091E70
/* 80091D8C 0008ECEC  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80091D90 0008ECF0  40 81 00 08 */	ble lbl_80091D98
/* 80091D94 0008ECF4  48 00 00 DC */	b lbl_80091E70
lbl_80091D98:
/* 80091D98 0008ECF8  57 A0 18 38 */	slwi r0, r29, 3
/* 80091D9C 0008ECFC  3C 60 80 3D */	lis r3, kPowerUpMax@ha
/* 80091DA0 0008ED00  7F DF 02 14 */	add r30, r31, r0
/* 80091DA4 0008ED04  57 A6 10 3A */	slwi r6, r29, 2
/* 80091DA8 0008ED08  80 FE 00 2C */	lwz r7, 0x2c(r30)
/* 80091DAC 0008ED0C  38 03 D6 C0 */	addi r0, r3, kPowerUpMax@l
/* 80091DB0 0008ED10  38 81 00 08 */	addi r4, r1, 8
/* 80091DB4 0008ED14  3B DE 00 28 */	addi r30, r30, 0x28
/* 80091DB8 0008ED18  7C 65 3A 14 */	add r3, r5, r7
/* 80091DBC 0008ED1C  7C A0 32 14 */	add r5, r0, r6
/* 80091DC0 0008ED20  90 61 00 08 */	stw r3, 8(r1)
/* 80091DC4 0008ED24  38 6D 85 90 */	addi r3, r13, lbl_805A7150@sda21
/* 80091DC8 0008ED28  4B FC 82 9D */	bl "Clamp<i>__5CMathFRCiRCiRCi"
/* 80091DCC 0008ED2C  80 03 00 00 */	lwz r0, 0(r3)
/* 80091DD0 0008ED30  90 1E 00 04 */	stw r0, 4(r30)
/* 80091DD4 0008ED34  80 7E 00 04 */	lwz r3, 4(r30)
/* 80091DD8 0008ED38  80 1E 00 00 */	lwz r0, 0(r30)
/* 80091DDC 0008ED3C  7C 03 00 00 */	cmpw r3, r0
/* 80091DE0 0008ED40  40 80 00 0C */	bge lbl_80091DEC
/* 80091DE4 0008ED44  38 7E 00 04 */	addi r3, r30, 4
/* 80091DE8 0008ED48  48 00 00 08 */	b lbl_80091DF0
lbl_80091DEC:
/* 80091DEC 0008ED4C  7F C3 F3 78 */	mr r3, r30
lbl_80091DF0:
/* 80091DF0 0008ED50  80 03 00 00 */	lwz r0, 0(r3)
/* 80091DF4 0008ED54  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80091DF8 0008ED58  90 1E 00 00 */	stw r0, 0(r30)
/* 80091DFC 0008ED5C  41 80 00 74 */	blt lbl_80091E70
/* 80091E00 0008ED60  2C 1D 00 17 */	cmpwi r29, 0x17
/* 80091E04 0008ED64  41 81 00 6C */	bgt lbl_80091E70
/* 80091E08 0008ED68  7F E3 FB 78 */	mr r3, r31
/* 80091E0C 0008ED6C  38 80 00 17 */	li r4, 0x17
/* 80091E10 0008ED70  4B FF FC B1 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091E14 0008ED74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091E18 0008ED78  41 82 00 10 */	beq lbl_80091E28
/* 80091E1C 0008ED7C  38 00 00 03 */	li r0, 3
/* 80091E20 0008ED80  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80091E24 0008ED84  48 00 00 4C */	b lbl_80091E70
lbl_80091E28:
/* 80091E28 0008ED88  7F E3 FB 78 */	mr r3, r31
/* 80091E2C 0008ED8C  38 80 00 15 */	li r4, 0x15
/* 80091E30 0008ED90  4B FF FC 91 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091E34 0008ED94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091E38 0008ED98  41 82 00 10 */	beq lbl_80091E48
/* 80091E3C 0008ED9C  38 00 00 01 */	li r0, 1
/* 80091E40 0008EDA0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80091E44 0008EDA4  48 00 00 2C */	b lbl_80091E70
lbl_80091E48:
/* 80091E48 0008EDA8  7F E3 FB 78 */	mr r3, r31
/* 80091E4C 0008EDAC  38 80 00 16 */	li r4, 0x16
/* 80091E50 0008EDB0  4B FF FC 71 */	bl HasPowerUp__12CPlayerStateCFQ212CPlayerState9EItemType
/* 80091E54 0008EDB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80091E58 0008EDB8  41 82 00 10 */	beq lbl_80091E68
/* 80091E5C 0008EDBC  38 00 00 02 */	li r0, 2
/* 80091E60 0008EDC0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80091E64 0008EDC4  48 00 00 0C */	b lbl_80091E70
lbl_80091E68:
/* 80091E68 0008EDC8  38 00 00 00 */	li r0, 0
/* 80091E6C 0008EDCC  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80091E70:
/* 80091E70 0008EDD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80091E74 0008EDD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80091E78 0008EDD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80091E7C 0008EDDC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80091E80 0008EDE0  7C 08 03 A6 */	mtlr r0
/* 80091E84 0008EDE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80091E88 0008EDE8  4E 80 00 20 */	blr

.global ReInitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei
ReInitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei:
/* 80091E8C 0008EDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80091E90 0008EDF0  7C 08 02 A6 */	mflr r0
/* 80091E94 0008EDF4  38 E0 00 00 */	li r7, 0
/* 80091E98 0008EDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80091E9C 0008EDFC  54 80 18 38 */	slwi r0, r4, 3
/* 80091EA0 0008EE00  7C C3 02 14 */	add r6, r3, r0
/* 80091EA4 0008EE04  90 E6 00 2C */	stw r7, 0x2c(r6)
/* 80091EA8 0008EE08  4B FF FE C1 */	bl InitializePowerUp__12CPlayerStateFQ212CPlayerState9EItemTypei
/* 80091EAC 0008EE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80091EB0 0008EE10  7C 08 03 A6 */	mtlr r0
/* 80091EB4 0008EE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80091EB8 0008EE18  4E 80 00 20 */	blr

.global PutTo__12CPlayerStateFR13COutputStream
PutTo__12CPlayerStateFR13COutputStream:
/* 80091EBC 0008EE1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80091EC0 0008EE20  7C 08 02 A6 */	mflr r0
/* 80091EC4 0008EE24  90 01 00 44 */	stw r0, 0x44(r1)
/* 80091EC8 0008EE28  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80091ECC 0008EE2C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80091ED0 0008EE30  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80091ED4 0008EE34  7C 7E 1B 78 */	mr r30, r3
/* 80091ED8 0008EE38  7C 9F 23 78 */	mr r31, r4
/* 80091EDC 0008EE3C  80 83 00 04 */	lwz r4, 4(r3)
/* 80091EE0 0008EE40  7F E3 FB 78 */	mr r3, r31
/* 80091EE4 0008EE44  38 A0 00 20 */	li r5, 0x20
/* 80091EE8 0008EE48  48 2A D4 D5 */	bl WriteBits__13COutputStreamFUiUi
/* 80091EEC 0008EE4C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80091EF0 0008EE50  7F E3 FB 78 */	mr r3, r31
/* 80091EF4 0008EE54  38 A0 00 20 */	li r5, 0x20
/* 80091EF8 0008EE58  D0 01 00 08 */	stfs f0, 8(r1)
/* 80091EFC 0008EE5C  80 81 00 08 */	lwz r4, 8(r1)
/* 80091F00 0008EE60  48 2A D4 BD */	bl WriteBits__13COutputStreamFUiUi
/* 80091F04 0008EE64  38 60 00 05 */	li r3, 5
/* 80091F08 0008EE68  48 00 04 B9 */	bl GetBitCount__12CPlayerStateFUi
/* 80091F0C 0008EE6C  80 9E 00 08 */	lwz r4, 8(r30)
/* 80091F10 0008EE70  7C 65 1B 78 */	mr r5, r3
/* 80091F14 0008EE74  7F E3 FB 78 */	mr r3, r31
/* 80091F18 0008EE78  48 2A D4 A5 */	bl WriteBits__13COutputStreamFUiUi
/* 80091F1C 0008EE7C  38 60 00 04 */	li r3, 4
/* 80091F20 0008EE80  48 00 04 A1 */	bl GetBitCount__12CPlayerStateFUi
/* 80091F24 0008EE84  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80091F28 0008EE88  7C 65 1B 78 */	mr r5, r3
/* 80091F2C 0008EE8C  7F E3 FB 78 */	mr r3, r31
/* 80091F30 0008EE90  48 2A D4 8D */	bl WriteBits__13COutputStreamFUiUi
/* 80091F34 0008EE94  3C 60 80 3D */	lis r3, kPowerUpMax@ha
/* 80091F38 0008EE98  3B 9E 00 28 */	addi r28, r30, 0x28
/* 80091F3C 0008EE9C  3B A3 D6 C0 */	addi r29, r3, kPowerUpMax@l
/* 80091F40 0008EEA0  3B 60 00 00 */	li r27, 0
lbl_80091F44:
/* 80091F44 0008EEA4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80091F48 0008EEA8  2C 03 00 00 */	cmpwi r3, 0
/* 80091F4C 0008EEAC  40 81 00 2C */	ble lbl_80091F78
/* 80091F50 0008EEB0  48 00 04 71 */	bl GetBitCount__12CPlayerStateFUi
/* 80091F54 0008EEB4  7C 7A 1B 78 */	mr r26, r3
/* 80091F58 0008EEB8  80 9C 00 00 */	lwz r4, 0(r28)
/* 80091F5C 0008EEBC  7F E3 FB 78 */	mr r3, r31
/* 80091F60 0008EEC0  7F 45 D3 78 */	mr r5, r26
/* 80091F64 0008EEC4  48 2A D4 59 */	bl WriteBits__13COutputStreamFUiUi
/* 80091F68 0008EEC8  80 9C 00 04 */	lwz r4, 4(r28)
/* 80091F6C 0008EECC  7F E3 FB 78 */	mr r3, r31
/* 80091F70 0008EED0  7F 45 D3 78 */	mr r5, r26
/* 80091F74 0008EED4  48 2A D4 49 */	bl WriteBits__13COutputStreamFUiUi
lbl_80091F78:
/* 80091F78 0008EED8  3B 7B 00 01 */	addi r27, r27, 1
/* 80091F7C 0008EEDC  3B 9C 00 08 */	addi r28, r28, 8
/* 80091F80 0008EEE0  2C 1B 00 29 */	cmpwi r27, 0x29
/* 80091F84 0008EEE4  3B BD 00 04 */	addi r29, r29, 4
/* 80091F88 0008EEE8  41 80 FF BC */	blt lbl_80091F44
/* 80091F8C 0008EEEC  83 BE 01 7C */	lwz r29, 0x17c(r30)
/* 80091F90 0008EEF0  C3 E2 8B 28 */	lfs f31, lbl_805AA848@sda21(r2)
/* 80091F94 0008EEF4  48 00 00 30 */	b lbl_80091FC4
lbl_80091F98:
/* 80091F98 0008EEF8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80091F9C 0008EEFC  7F E3 FB 78 */	mr r3, r31
/* 80091FA0 0008EF00  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80091FA4 0008EF04  4C 41 13 82 */	cror 2, 1, 2
/* 80091FA8 0008EF08  40 82 00 0C */	bne lbl_80091FB4
/* 80091FAC 0008EF0C  38 80 00 01 */	li r4, 1
/* 80091FB0 0008EF10  48 00 00 08 */	b lbl_80091FB8
lbl_80091FB4:
/* 80091FB4 0008EF14  38 80 00 00 */	li r4, 0
lbl_80091FB8:
/* 80091FB8 0008EF18  38 A0 00 01 */	li r5, 1
/* 80091FBC 0008EF1C  48 2A D4 01 */	bl WriteBits__13COutputStreamFUiUi
/* 80091FC0 0008EF20  3B BD 00 08 */	addi r29, r29, 8
lbl_80091FC4:
/* 80091FC4 0008EF24  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80091FC8 0008EF28  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 80091FCC 0008EF2C  54 00 18 38 */	slwi r0, r0, 3
/* 80091FD0 0008EF30  7C 03 02 14 */	add r0, r3, r0
/* 80091FD4 0008EF34  7C 1D 00 40 */	cmplw r29, r0
/* 80091FD8 0008EF38  40 82 FF C0 */	bne lbl_80091F98
/* 80091FDC 0008EF3C  38 60 01 00 */	li r3, 0x100
/* 80091FE0 0008EF40  48 00 03 E1 */	bl GetBitCount__12CPlayerStateFUi
/* 80091FE4 0008EF44  80 9E 01 80 */	lwz r4, 0x180(r30)
/* 80091FE8 0008EF48  7C 65 1B 78 */	mr r5, r3
/* 80091FEC 0008EF4C  7F E3 FB 78 */	mr r3, r31
/* 80091FF0 0008EF50  48 2A D3 CD */	bl WriteBits__13COutputStreamFUiUi
/* 80091FF4 0008EF54  38 60 01 00 */	li r3, 0x100
/* 80091FF8 0008EF58  48 00 03 C9 */	bl GetBitCount__12CPlayerStateFUi
/* 80091FFC 0008EF5C  80 9E 01 84 */	lwz r4, 0x184(r30)
/* 80092000 0008EF60  7C 65 1B 78 */	mr r5, r3
/* 80092004 0008EF64  7F E3 FB 78 */	mr r3, r31
/* 80092008 0008EF68  48 2A D3 B5 */	bl WriteBits__13COutputStreamFUiUi
/* 8009200C 0008EF6C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80092010 0008EF70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80092014 0008EF74  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80092018 0008EF78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009201C 0008EF7C  7C 08 03 A6 */	mtlr r0
/* 80092020 0008EF80  38 21 00 40 */	addi r1, r1, 0x40
/* 80092024 0008EF84  4E 80 00 20 */	blr

.global __ct__12CPlayerStateFR12CInputStream
__ct__12CPlayerStateFR12CInputStream:
/* 80092028 0008EF88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8009202C 0008EF8C  7C 08 02 A6 */	mflr r0
/* 80092030 0008EF90  90 01 00 54 */	stw r0, 0x54(r1)
/* 80092034 0008EF94  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80092038 0008EF98  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8009203C 0008EF9C  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 80092040 0008EFA0  7C 7E 1B 78 */	mr r30, r3
/* 80092044 0008EFA4  7C 9F 23 78 */	mr r31, r4
/* 80092048 0008EFA8  88 03 00 00 */	lbz r0, 0(r3)
/* 8009204C 0008EFAC  38 60 00 01 */	li r3, 1
/* 80092050 0008EFB0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80092054 0008EFB4  38 A0 00 00 */	li r5, 0
/* 80092058 0008EFB8  98 1E 00 00 */	stb r0, 0(r30)
/* 8009205C 0008EFBC  38 7E 01 88 */	addi r3, r30, 0x188
/* 80092060 0008EFC0  C0 42 8B 10 */	lfs f2, kBaseHealthCapacity@sda21(r2)
/* 80092064 0008EFC4  38 80 00 05 */	li r4, 5
/* 80092068 0008EFC8  88 1E 00 00 */	lbz r0, 0(r30)
/* 8009206C 0008EFCC  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80092070 0008EFD0  C0 22 8B 2C */	lfs f1, kDefaultKnockbackResistance@sda21(r2)
/* 80092074 0008EFD4  98 1E 00 00 */	stb r0, 0(r30)
/* 80092078 0008EFD8  C0 02 8B 14 */	lfs f0, kMaxVisorTransitionFactor@sda21(r2)
/* 8009207C 0008EFDC  88 1E 00 00 */	lbz r0, 0(r30)
/* 80092080 0008EFE0  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80092084 0008EFE4  98 1E 00 00 */	stb r0, 0(r30)
/* 80092088 0008EFE8  90 BE 00 04 */	stw r5, 4(r30)
/* 8009208C 0008EFEC  90 BE 00 08 */	stw r5, 8(r30)
/* 80092090 0008EFF0  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 80092094 0008EFF4  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 80092098 0008EFF8  90 BE 00 14 */	stw r5, 0x14(r30)
/* 8009209C 0008EFFC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800920A0 0008F000  90 1E 00 18 */	stw r0, 0x18(r30)
/* 800920A4 0008F004  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 800920A8 0008F008  90 BE 00 20 */	stw r5, 0x20(r30)
/* 800920AC 0008F00C  90 BE 00 24 */	stw r5, 0x24(r30)
/* 800920B0 0008F010  90 BE 01 74 */	stw r5, 0x174(r30)
/* 800920B4 0008F014  90 BE 01 78 */	stw r5, 0x178(r30)
/* 800920B8 0008F018  90 BE 01 7C */	stw r5, 0x17c(r30)
/* 800920BC 0008F01C  90 BE 01 80 */	stw r5, 0x180(r30)
/* 800920C0 0008F020  90 BE 01 84 */	stw r5, 0x184(r30)
/* 800920C4 0008F024  48 12 EB 89 */	bl __ct__19CStaticInterferenceFi
/* 800920C8 0008F028  7F E3 FB 78 */	mr r3, r31
/* 800920CC 0008F02C  38 80 00 20 */	li r4, 0x20
/* 800920D0 0008F030  48 2A CC 69 */	bl ReadBits__12CInputStreamFUi
/* 800920D4 0008F034  90 7E 00 04 */	stw r3, 4(r30)
/* 800920D8 0008F038  7F E3 FB 78 */	mr r3, r31
/* 800920DC 0008F03C  38 80 00 20 */	li r4, 0x20
/* 800920E0 0008F040  48 2A CC 59 */	bl ReadBits__12CInputStreamFUi
/* 800920E4 0008F044  90 61 00 08 */	stw r3, 8(r1)
/* 800920E8 0008F048  38 60 00 05 */	li r3, 5
/* 800920EC 0008F04C  C0 02 8B 2C */	lfs f0, kDefaultKnockbackResistance@sda21(r2)
/* 800920F0 0008F050  C0 21 00 08 */	lfs f1, 8(r1)
/* 800920F4 0008F054  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 800920F8 0008F058  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 800920FC 0008F05C  48 00 02 C5 */	bl GetBitCount__12CPlayerStateFUi
/* 80092100 0008F060  7C 64 1B 78 */	mr r4, r3
/* 80092104 0008F064  7F E3 FB 78 */	mr r3, r31
/* 80092108 0008F068  48 2A CC 31 */	bl ReadBits__12CInputStreamFUi
/* 8009210C 0008F06C  90 7E 00 08 */	stw r3, 8(r30)
/* 80092110 0008F070  38 60 00 04 */	li r3, 4
/* 80092114 0008F074  48 00 02 AD */	bl GetBitCount__12CPlayerStateFUi
/* 80092118 0008F078  7C 64 1B 78 */	mr r4, r3
/* 8009211C 0008F07C  7F E3 FB 78 */	mr r3, r31
/* 80092120 0008F080  48 2A CC 19 */	bl ReadBits__12CInputStreamFUi
/* 80092124 0008F084  3C 80 80 3D */	lis r4, kPowerUpMax@ha
/* 80092128 0008F088  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8009212C 0008F08C  3B 64 D6 C0 */	addi r27, r4, kPowerUpMax@l
/* 80092130 0008F090  3B 9E 00 24 */	addi r28, r30, 0x24
/* 80092134 0008F094  3B A0 00 00 */	li r29, 0
lbl_80092138:
/* 80092138 0008F098  80 7B 00 00 */	lwz r3, 0(r27)
/* 8009213C 0008F09C  3B 40 00 00 */	li r26, 0
/* 80092140 0008F0A0  38 A0 00 00 */	li r5, 0
/* 80092144 0008F0A4  28 03 00 00 */	cmplwi r3, 0
/* 80092148 0008F0A8  41 82 00 34 */	beq lbl_8009217C
/* 8009214C 0008F0AC  48 00 02 75 */	bl GetBitCount__12CPlayerStateFUi
/* 80092150 0008F0B0  7C 60 1B 78 */	mr r0, r3
/* 80092154 0008F0B4  7F E3 FB 78 */	mr r3, r31
/* 80092158 0008F0B8  7C 19 03 78 */	mr r25, r0
/* 8009215C 0008F0BC  7F 24 CB 78 */	mr r4, r25
/* 80092160 0008F0C0  48 2A CB D9 */	bl ReadBits__12CInputStreamFUi
/* 80092164 0008F0C4  7C 60 1B 78 */	mr r0, r3
/* 80092168 0008F0C8  7F E3 FB 78 */	mr r3, r31
/* 8009216C 0008F0CC  7C 1A 03 78 */	mr r26, r0
/* 80092170 0008F0D0  7F 24 CB 78 */	mr r4, r25
/* 80092174 0008F0D4  48 2A CB C5 */	bl ReadBits__12CInputStreamFUi
/* 80092178 0008F0D8  7C 65 1B 78 */	mr r5, r3
lbl_8009217C:
/* 8009217C 0008F0DC  7F 44 D3 78 */	mr r4, r26
/* 80092180 0008F0E0  38 61 00 0C */	addi r3, r1, 0xc
/* 80092184 0008F0E4  48 00 02 31 */	bl __ct__Q212CPlayerState8CPowerUpFii
/* 80092188 0008F0E8  80 1C 00 00 */	lwz r0, 0(r28)
/* 8009218C 0008F0EC  54 00 18 38 */	slwi r0, r0, 3
/* 80092190 0008F0F0  7C 7C 02 14 */	add r3, r28, r0
/* 80092194 0008F0F4  34 63 00 04 */	addic. r3, r3, 4
/* 80092198 0008F0F8  41 82 00 14 */	beq lbl_800921AC
/* 8009219C 0008F0FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800921A0 0008F100  90 03 00 00 */	stw r0, 0(r3)
/* 800921A4 0008F104  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800921A8 0008F108  90 03 00 04 */	stw r0, 4(r3)
lbl_800921AC:
/* 800921AC 0008F10C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800921B0 0008F110  3B BD 00 01 */	addi r29, r29, 1
/* 800921B4 0008F114  2C 1D 00 29 */	cmpwi r29, 0x29
/* 800921B8 0008F118  3B 7B 00 04 */	addi r27, r27, 4
/* 800921BC 0008F11C  38 03 00 01 */	addi r0, r3, 1
/* 800921C0 0008F120  90 1E 00 24 */	stw r0, 0x24(r30)
/* 800921C4 0008F124  41 80 FF 74 */	blt lbl_80092138
/* 800921C8 0008F128  83 AD A0 84 */	lwz r29, gpMemoryCard@sda21(r13)
/* 800921CC 0008F12C  38 7E 01 70 */	addi r3, r30, 0x170
/* 800921D0 0008F130  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 800921D4 0008F134  48 00 03 8D */	bl "reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi"
/* 800921D8 0008F138  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 800921DC 0008F13C  48 00 00 84 */	b lbl_80092260
lbl_800921E0:
/* 800921E0 0008F140  7F E3 FB 78 */	mr r3, r31
/* 800921E4 0008F144  38 80 00 01 */	li r4, 1
/* 800921E8 0008F148  48 2A CB 51 */	bl ReadBits__12CInputStreamFUi
/* 800921EC 0008F14C  7C 03 00 D0 */	neg r0, r3
/* 800921F0 0008F150  7C 00 1B 78 */	or r0, r0, r3
/* 800921F4 0008F154  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800921F8 0008F158  41 82 00 0C */	beq lbl_80092204
/* 800921FC 0008F15C  C3 E2 8B 28 */	lfs f31, lbl_805AA848@sda21(r2)
/* 80092200 0008F160  48 00 00 08 */	b lbl_80092208
lbl_80092204:
/* 80092204 0008F164  C3 E2 8B 1C */	lfs f31, lbl_805AA83C@sda21(r2)
lbl_80092208:
/* 80092208 0008F168  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8009220C 0008F16C  80 BE 01 78 */	lwz r5, 0x178(r30)
/* 80092210 0008F170  83 7C 00 00 */	lwz r27, 0(r28)
/* 80092214 0008F174  7C 00 28 00 */	cmpw r0, r5
/* 80092218 0008F178  41 80 00 1C */	blt lbl_80092234
/* 8009221C 0008F17C  2C 05 00 00 */	cmpwi r5, 0
/* 80092220 0008F180  38 7E 01 70 */	addi r3, r30, 0x170
/* 80092224 0008F184  38 80 00 04 */	li r4, 4
/* 80092228 0008F188  41 82 00 08 */	beq lbl_80092230
/* 8009222C 0008F18C  54 A4 08 3C */	slwi r4, r5, 1
lbl_80092230:
/* 80092230 0008F190  48 00 03 31 */	bl "reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi"
lbl_80092234:
/* 80092234 0008F194  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80092238 0008F198  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8009223C 0008F19C  54 00 18 38 */	slwi r0, r0, 3
/* 80092240 0008F1A0  7C 63 02 15 */	add. r3, r3, r0
/* 80092244 0008F1A4  41 82 00 0C */	beq lbl_80092250
/* 80092248 0008F1A8  93 63 00 00 */	stw r27, 0(r3)
/* 8009224C 0008F1AC  D3 E3 00 04 */	stfs f31, 4(r3)
lbl_80092250:
/* 80092250 0008F1B0  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80092254 0008F1B4  3B 9C 00 08 */	addi r28, r28, 8
/* 80092258 0008F1B8  38 03 00 01 */	addi r0, r3, 1
/* 8009225C 0008F1BC  90 1E 01 74 */	stw r0, 0x174(r30)
lbl_80092260:
/* 80092260 0008F1C0  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 80092264 0008F1C4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80092268 0008F1C8  54 00 18 38 */	slwi r0, r0, 3
/* 8009226C 0008F1CC  7C 03 02 14 */	add r0, r3, r0
/* 80092270 0008F1D0  7C 1C 00 40 */	cmplw r28, r0
/* 80092274 0008F1D4  40 82 FF 6C */	bne lbl_800921E0
/* 80092278 0008F1D8  38 60 01 00 */	li r3, 0x100
/* 8009227C 0008F1DC  48 00 01 45 */	bl GetBitCount__12CPlayerStateFUi
/* 80092280 0008F1E0  7C 64 1B 78 */	mr r4, r3
/* 80092284 0008F1E4  7F E3 FB 78 */	mr r3, r31
/* 80092288 0008F1E8  48 2A CA B1 */	bl ReadBits__12CInputStreamFUi
/* 8009228C 0008F1EC  90 7E 01 80 */	stw r3, 0x180(r30)
/* 80092290 0008F1F0  38 60 01 00 */	li r3, 0x100
/* 80092294 0008F1F4  48 00 01 2D */	bl GetBitCount__12CPlayerStateFUi
/* 80092298 0008F1F8  7C 64 1B 78 */	mr r4, r3
/* 8009229C 0008F1FC  7F E3 FB 78 */	mr r3, r31
/* 800922A0 0008F200  48 2A CA 99 */	bl ReadBits__12CInputStreamFUi
/* 800922A4 0008F204  90 7E 01 84 */	stw r3, 0x184(r30)
/* 800922A8 0008F208  7F C3 F3 78 */	mr r3, r30
/* 800922AC 0008F20C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 800922B0 0008F210  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800922B4 0008F214  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 800922B8 0008F218  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800922BC 0008F21C  7C 08 03 A6 */	mtlr r0
/* 800922C0 0008F220  38 21 00 50 */	addi r1, r1, 0x50
/* 800922C4 0008F224  4E 80 00 20 */	blr

.global __ct__12CPlayerStateFv
__ct__12CPlayerStateFv:
/* 800922C8 0008F228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800922CC 0008F22C  7C 08 02 A6 */	mflr r0
/* 800922D0 0008F230  38 C0 00 00 */	li r6, 0
/* 800922D4 0008F234  C0 42 8B 10 */	lfs f2, kBaseHealthCapacity@sda21(r2)
/* 800922D8 0008F238  90 01 00 24 */	stw r0, 0x24(r1)
/* 800922DC 0008F23C  38 80 00 00 */	li r4, 0
/* 800922E0 0008F240  C0 22 8B 2C */	lfs f1, kDefaultKnockbackResistance@sda21(r2)
/* 800922E4 0008F244  38 A0 00 00 */	li r5, 0
/* 800922E8 0008F248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800922EC 0008F24C  7C 7F 1B 78 */	mr r31, r3
/* 800922F0 0008F250  38 60 00 01 */	li r3, 1
/* 800922F4 0008F254  C0 02 8B 14 */	lfs f0, kMaxVisorTransitionFactor@sda21(r2)
/* 800922F8 0008F258  88 1F 00 00 */	lbz r0, 0(r31)
/* 800922FC 0008F25C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80092300 0008F260  38 61 00 08 */	addi r3, r1, 8
/* 80092304 0008F264  98 1F 00 00 */	stb r0, 0(r31)
/* 80092308 0008F268  88 1F 00 00 */	lbz r0, 0(r31)
/* 8009230C 0008F26C  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80092310 0008F270  98 1F 00 00 */	stb r0, 0(r31)
/* 80092314 0008F274  88 1F 00 00 */	lbz r0, 0(r31)
/* 80092318 0008F278  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8009231C 0008F27C  98 1F 00 00 */	stb r0, 0(r31)
/* 80092320 0008F280  90 DF 00 04 */	stw r6, 4(r31)
/* 80092324 0008F284  90 DF 00 08 */	stw r6, 8(r31)
/* 80092328 0008F288  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 8009232C 0008F28C  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80092330 0008F290  90 DF 00 14 */	stw r6, 0x14(r31)
/* 80092334 0008F294  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80092338 0008F298  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8009233C 0008F29C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80092340 0008F2A0  90 DF 00 20 */	stw r6, 0x20(r31)
/* 80092344 0008F2A4  48 00 00 71 */	bl __ct__Q212CPlayerState8CPowerUpFii
/* 80092348 0008F2A8  38 00 00 29 */	li r0, 0x29
/* 8009234C 0008F2AC  38 7F 00 28 */	addi r3, r31, 0x28
/* 80092350 0008F2B0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80092354 0008F2B4  7C 09 03 A6 */	mtctr r0
lbl_80092358:
/* 80092358 0008F2B8  28 03 00 00 */	cmplwi r3, 0
/* 8009235C 0008F2BC  41 82 00 14 */	beq lbl_80092370
/* 80092360 0008F2C0  80 01 00 08 */	lwz r0, 8(r1)
/* 80092364 0008F2C4  90 03 00 00 */	stw r0, 0(r3)
/* 80092368 0008F2C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8009236C 0008F2CC  90 03 00 04 */	stw r0, 4(r3)
lbl_80092370:
/* 80092370 0008F2D0  38 63 00 08 */	addi r3, r3, 8
/* 80092374 0008F2D4  42 00 FF E4 */	bdnz lbl_80092358
/* 80092378 0008F2D8  38 00 00 00 */	li r0, 0
/* 8009237C 0008F2DC  38 7F 01 88 */	addi r3, r31, 0x188
/* 80092380 0008F2E0  90 1F 01 74 */	stw r0, 0x174(r31)
/* 80092384 0008F2E4  38 80 00 05 */	li r4, 5
/* 80092388 0008F2E8  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8009238C 0008F2EC  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 80092390 0008F2F0  90 1F 01 80 */	stw r0, 0x180(r31)
/* 80092394 0008F2F4  90 1F 01 84 */	stw r0, 0x184(r31)
/* 80092398 0008F2F8  48 12 E8 B5 */	bl __ct__19CStaticInterferenceFi
/* 8009239C 0008F2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800923A0 0008F300  7F E3 FB 78 */	mr r3, r31
/* 800923A4 0008F304  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800923A8 0008F308  7C 08 03 A6 */	mtlr r0
/* 800923AC 0008F30C  38 21 00 20 */	addi r1, r1, 0x20
/* 800923B0 0008F310  4E 80 00 20 */	blr

.global __ct__Q212CPlayerState8CPowerUpFii
__ct__Q212CPlayerState8CPowerUpFii:
/* 800923B4 0008F314  90 83 00 00 */	stw r4, 0(r3)
/* 800923B8 0008F318  90 A3 00 04 */	stw r5, 4(r3)
/* 800923BC 0008F31C  4E 80 00 20 */	blr

.global GetBitCount__12CPlayerStateFUi
GetBitCount__12CPlayerStateFUi:
/* 800923C0 0008F320  38 80 00 00 */	li r4, 0
/* 800923C4 0008F324  48 00 00 0C */	b lbl_800923D0
lbl_800923C8:
/* 800923C8 0008F328  54 63 F8 7E */	srwi r3, r3, 1
/* 800923CC 0008F32C  38 84 00 01 */	addi r4, r4, 1
lbl_800923D0:
/* 800923D0 0008F330  28 03 00 00 */	cmplwi r3, 0
/* 800923D4 0008F334  40 82 FF F4 */	bne lbl_800923C8
/* 800923D8 0008F338  7C 83 23 78 */	mr r3, r4
/* 800923DC 0008F33C  4E 80 00 20 */	blr

.global "lower_bound<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>"
"lower_bound<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>":
/* 800923E0 0008F340  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800923E4 0008F344  7C 08 02 A6 */	mflr r0
/* 800923E8 0008F348  90 01 00 34 */	stw r0, 0x34(r1)
/* 800923EC 0008F34C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800923F0 0008F350  7C 9F 23 78 */	mr r31, r4
/* 800923F4 0008F354  7C 7E 1B 78 */	mr r30, r3
/* 800923F8 0008F358  7C DB 33 78 */	mr r27, r6
/* 800923FC 0008F35C  38 61 00 0C */	addi r3, r1, 0xc
/* 80092400 0008F360  80 85 00 00 */	lwz r4, 0(r5)
/* 80092404 0008F364  80 1F 00 00 */	lwz r0, 0(r31)
/* 80092408 0008F368  90 81 00 08 */	stw r4, 8(r1)
/* 8009240C 0008F36C  38 81 00 08 */	addi r4, r1, 8
/* 80092410 0008F370  90 01 00 0C */	stw r0, 0xc(r1)
/* 80092414 0008F374  48 00 02 C5 */	bl "distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 80092418 0008F378  80 1F 00 00 */	lwz r0, 0(r31)
/* 8009241C 0008F37C  7C 7D 1B 78 */	mr r29, r3
/* 80092420 0008F380  90 01 00 10 */	stw r0, 0x10(r1)
/* 80092424 0008F384  48 00 00 58 */	b lbl_8009247C
lbl_80092428:
/* 80092428 0008F388  57 A3 0F FE */	srwi r3, r29, 0x1f
/* 8009242C 0008F38C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80092430 0008F390  7C 83 EA 14 */	add r4, r3, r29
/* 80092434 0008F394  38 61 00 10 */	addi r3, r1, 0x10
/* 80092438 0008F398  7C 9C 0E 70 */	srawi r28, r4, 1
/* 8009243C 0008F39C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80092440 0008F3A0  7F 84 E3 78 */	mr r4, r28
/* 80092444 0008F3A4  48 00 02 15 */	bl "advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
/* 80092448 0008F3A8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8009244C 0008F3AC  80 1B 00 00 */	lwz r0, 0(r27)
/* 80092450 0008F3B0  80 64 00 00 */	lwz r3, 0(r4)
/* 80092454 0008F3B4  7C 03 00 40 */	cmplw r3, r0
/* 80092458 0008F3B8  40 80 00 20 */	bge lbl_80092478
/* 8009245C 0008F3BC  90 9F 00 00 */	stw r4, 0(r31)
/* 80092460 0008F3C0  7C 7C E8 50 */	subf r3, r28, r29
/* 80092464 0008F3C4  3B A3 FF FF */	addi r29, r3, -1
/* 80092468 0008F3C8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8009246C 0008F3CC  38 03 00 08 */	addi r0, r3, 8
/* 80092470 0008F3D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80092474 0008F3D4  48 00 00 08 */	b lbl_8009247C
lbl_80092478:
/* 80092478 0008F3D8  7F 9D E3 78 */	mr r29, r28
lbl_8009247C:
/* 8009247C 0008F3DC  2C 1D 00 00 */	cmpwi r29, 0
/* 80092480 0008F3E0  41 81 FF A8 */	bgt lbl_80092428
/* 80092484 0008F3E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80092488 0008F3E8  90 1E 00 00 */	stw r0, 0(r30)
/* 8009248C 0008F3EC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80092490 0008F3F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80092494 0008F3F4  7C 08 03 A6 */	mtlr r0
/* 80092498 0008F3F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8009249C 0008F3FC  4E 80 00 20 */	blr

.global "lower_bound<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>"
"lower_bound<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,Ui,Q24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RCUiQ24rstl56pair_sorter_finder<Q24rstl10pair<Ui,f>,Q24rstl8less<Ui>>":
/* 800924A0 0008F400  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800924A4 0008F404  7C 08 02 A6 */	mflr r0
/* 800924A8 0008F408  90 01 00 34 */	stw r0, 0x34(r1)
/* 800924AC 0008F40C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800924B0 0008F410  7C 9F 23 78 */	mr r31, r4
/* 800924B4 0008F414  7C 7E 1B 78 */	mr r30, r3
/* 800924B8 0008F418  7C DB 33 78 */	mr r27, r6
/* 800924BC 0008F41C  38 61 00 0C */	addi r3, r1, 0xc
/* 800924C0 0008F420  80 85 00 00 */	lwz r4, 0(r5)
/* 800924C4 0008F424  80 1F 00 00 */	lwz r0, 0(r31)
/* 800924C8 0008F428  90 81 00 08 */	stw r4, 8(r1)
/* 800924CC 0008F42C  38 81 00 08 */	addi r4, r1, 8
/* 800924D0 0008F430  90 01 00 0C */	stw r0, 0xc(r1)
/* 800924D4 0008F434  48 00 02 49 */	bl "distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 800924D8 0008F438  80 1F 00 00 */	lwz r0, 0(r31)
/* 800924DC 0008F43C  7C 7D 1B 78 */	mr r29, r3
/* 800924E0 0008F440  90 01 00 10 */	stw r0, 0x10(r1)
/* 800924E4 0008F444  48 00 00 58 */	b lbl_8009253C
lbl_800924E8:
/* 800924E8 0008F448  57 A3 0F FE */	srwi r3, r29, 0x1f
/* 800924EC 0008F44C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800924F0 0008F450  7C 83 EA 14 */	add r4, r3, r29
/* 800924F4 0008F454  38 61 00 10 */	addi r3, r1, 0x10
/* 800924F8 0008F458  7C 9C 0E 70 */	srawi r28, r4, 1
/* 800924FC 0008F45C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80092500 0008F460  7F 84 E3 78 */	mr r4, r28
/* 80092504 0008F464  48 00 01 81 */	bl "advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
/* 80092508 0008F468  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8009250C 0008F46C  80 1B 00 00 */	lwz r0, 0(r27)
/* 80092510 0008F470  80 64 00 00 */	lwz r3, 0(r4)
/* 80092514 0008F474  7C 03 00 40 */	cmplw r3, r0
/* 80092518 0008F478  40 80 00 20 */	bge lbl_80092538
/* 8009251C 0008F47C  90 9F 00 00 */	stw r4, 0(r31)
/* 80092520 0008F480  7C 7C E8 50 */	subf r3, r28, r29
/* 80092524 0008F484  3B A3 FF FF */	addi r29, r3, -1
/* 80092528 0008F488  80 7F 00 00 */	lwz r3, 0(r31)
/* 8009252C 0008F48C  38 03 00 08 */	addi r0, r3, 8
/* 80092530 0008F490  90 1F 00 00 */	stw r0, 0(r31)
/* 80092534 0008F494  48 00 00 08 */	b lbl_8009253C
lbl_80092538:
/* 80092538 0008F498  7F 9D E3 78 */	mr r29, r28
lbl_8009253C:
/* 8009253C 0008F49C  2C 1D 00 00 */	cmpwi r29, 0
/* 80092540 0008F4A0  41 81 FF A8 */	bgt lbl_800924E8
/* 80092544 0008F4A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80092548 0008F4A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8009254C 0008F4AC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80092550 0008F4B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80092554 0008F4B4  7C 08 03 A6 */	mtlr r0
/* 80092558 0008F4B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8009255C 0008F4BC  4E 80 00 20 */	blr

.global "reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>Fi":
/* 80092560 0008F4C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80092564 0008F4C4  7C 08 02 A6 */	mflr r0
/* 80092568 0008F4C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009256C 0008F4CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80092570 0008F4D0  7C 9F 23 78 */	mr r31, r4
/* 80092574 0008F4D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80092578 0008F4D8  7C 7E 1B 78 */	mr r30, r3
/* 8009257C 0008F4DC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80092580 0008F4E0  80 03 00 08 */	lwz r0, 8(r3)
/* 80092584 0008F4E4  7C 1F 00 00 */	cmpw r31, r0
/* 80092588 0008F4E8  40 81 00 B4 */	ble lbl_8009263C
/* 8009258C 0008F4EC  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 80092590 0008F4F0  40 82 00 0C */	bne lbl_8009259C
/* 80092594 0008F4F4  3B A0 00 00 */	li r29, 0
/* 80092598 0008F4F8  48 00 00 1C */	b lbl_800925B4
lbl_8009259C:
/* 8009259C 0008F4FC  3C 80 80 3D */	lis r4, lbl_803CD78C@ha
/* 800925A0 0008F500  38 A0 00 00 */	li r5, 0
/* 800925A4 0008F504  38 84 D7 8C */	addi r4, r4, lbl_803CD78C@l
/* 800925A8 0008F508  38 84 00 2D */	addi r4, r4, 0x2d
/* 800925AC 0008F50C  48 28 32 6D */	bl __nwa__FUlPCcPCc
/* 800925B0 0008F510  7C 7D 1B 78 */	mr r29, r3
lbl_800925B4:
/* 800925B4 0008F514  80 1E 00 04 */	lwz r0, 4(r30)
/* 800925B8 0008F518  7F A4 EB 78 */	mr r4, r29
/* 800925BC 0008F51C  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800925C0 0008F520  54 00 18 38 */	slwi r0, r0, 3
/* 800925C4 0008F524  7C 65 02 14 */	add r3, r5, r0
/* 800925C8 0008F528  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800925CC 0008F52C  90 61 00 08 */	stw r3, 8(r1)
/* 800925D0 0008F530  90 61 00 0C */	stw r3, 0xc(r1)
/* 800925D4 0008F534  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800925D8 0008F538  48 00 00 24 */	b lbl_800925FC
lbl_800925DC:
/* 800925DC 0008F53C  28 04 00 00 */	cmplwi r4, 0
/* 800925E0 0008F540  41 82 00 14 */	beq lbl_800925F4
/* 800925E4 0008F544  80 05 00 00 */	lwz r0, 0(r5)
/* 800925E8 0008F548  90 04 00 00 */	stw r0, 0(r4)
/* 800925EC 0008F54C  C0 05 00 04 */	lfs f0, 4(r5)
/* 800925F0 0008F550  D0 04 00 04 */	stfs f0, 4(r4)
lbl_800925F4:
/* 800925F4 0008F554  38 84 00 08 */	addi r4, r4, 8
/* 800925F8 0008F558  38 A5 00 08 */	addi r5, r5, 8
lbl_800925FC:
/* 800925FC 0008F55C  7C 05 18 40 */	cmplw r5, r3
/* 80092600 0008F560  40 82 FF DC */	bne lbl_800925DC
/* 80092604 0008F564  80 1E 00 04 */	lwz r0, 4(r30)
/* 80092608 0008F568  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8009260C 0008F56C  54 00 18 38 */	slwi r0, r0, 3
/* 80092610 0008F570  7C 64 1B 78 */	mr r4, r3
/* 80092614 0008F574  7C 03 02 14 */	add r0, r3, r0
/* 80092618 0008F578  48 00 00 08 */	b lbl_80092620
lbl_8009261C:
/* 8009261C 0008F57C  38 84 00 08 */	addi r4, r4, 8
lbl_80092620:
/* 80092620 0008F580  7C 04 00 40 */	cmplw r4, r0
/* 80092624 0008F584  40 82 FF F8 */	bne lbl_8009261C
/* 80092628 0008F588  28 03 00 00 */	cmplwi r3, 0
/* 8009262C 0008F58C  41 82 00 08 */	beq lbl_80092634
/* 80092630 0008F590  48 28 33 01 */	bl Free__7CMemoryFPCv
lbl_80092634:
/* 80092634 0008F594  93 BE 00 0C */	stw r29, 0xc(r30)
/* 80092638 0008F598  93 FE 00 08 */	stw r31, 8(r30)
lbl_8009263C:
/* 8009263C 0008F59C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80092640 0008F5A0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80092644 0008F5A4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80092648 0008F5A8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8009264C 0008F5AC  7C 08 03 A6 */	mtlr r0
/* 80092650 0008F5B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80092654 0008F5B4  4E 80 00 20 */	blr

.global "advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
"advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i":
/* 80092658 0008F5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009265C 0008F5BC  7C 08 02 A6 */	mflr r0
/* 80092660 0008F5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80092664 0008F5C4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80092668 0008F5C8  88 01 00 08 */	lbz r0, 8(r1)
/* 8009266C 0008F5CC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80092670 0008F5D0  48 00 00 55 */	bl "__advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
/* 80092674 0008F5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80092678 0008F5D8  7C 08 03 A6 */	mtlr r0
/* 8009267C 0008F5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80092680 0008F5E0  4E 80 00 20 */	blr

.global "advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
"advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i":
/* 80092684 0008F5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80092688 0008F5E8  7C 08 02 A6 */	mflr r0
/* 8009268C 0008F5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80092690 0008F5F0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80092694 0008F5F4  88 01 00 08 */	lbz r0, 8(r1)
/* 80092698 0008F5F8  98 01 00 0C */	stb r0, 0xc(r1)
/* 8009269C 0008F5FC  48 00 00 15 */	bl "__advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
/* 800926A0 0008F600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800926A4 0008F604  7C 08 03 A6 */	mtlr r0
/* 800926A8 0008F608  38 21 00 10 */	addi r1, r1, 0x10
/* 800926AC 0008F60C  4E 80 00 20 */	blr

.global "__advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
"__advance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag":
/* 800926B0 0008F610  80 A3 00 00 */	lwz r5, 0(r3)
/* 800926B4 0008F614  54 80 18 38 */	slwi r0, r4, 3
/* 800926B8 0008F618  7C 05 02 14 */	add r0, r5, r0
/* 800926BC 0008F61C  90 03 00 00 */	stw r0, 0(r3)
/* 800926C0 0008F620  4E 80 00 20 */	blr

.global "__advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
"__advance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag":
/* 800926C4 0008F624  80 A3 00 00 */	lwz r5, 0(r3)
/* 800926C8 0008F628  54 80 18 38 */	slwi r0, r4, 3
/* 800926CC 0008F62C  7C 05 02 14 */	add r0, r5, r0
/* 800926D0 0008F630  90 03 00 00 */	stw r0, 0(r3)
/* 800926D4 0008F634  4E 80 00 20 */	blr

.global "distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 800926D8 0008F638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800926DC 0008F63C  7C 08 02 A6 */	mflr r0
/* 800926E0 0008F640  90 01 00 24 */	stw r0, 0x24(r1)
/* 800926E4 0008F644  38 A1 00 0C */	addi r5, r1, 0xc
/* 800926E8 0008F648  88 E1 00 08 */	lbz r7, 8(r1)
/* 800926EC 0008F64C  80 C4 00 00 */	lwz r6, 0(r4)
/* 800926F0 0008F650  38 81 00 10 */	addi r4, r1, 0x10
/* 800926F4 0008F654  80 03 00 00 */	lwz r0, 0(r3)
/* 800926F8 0008F658  38 61 00 14 */	addi r3, r1, 0x14
/* 800926FC 0008F65C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80092700 0008F660  98 E1 00 0C */	stb r7, 0xc(r1)
/* 80092704 0008F664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80092708 0008F668  48 00 00 59 */	bl "__distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
/* 8009270C 0008F66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80092710 0008F670  7C 08 03 A6 */	mtlr r0
/* 80092714 0008F674  38 21 00 20 */	addi r1, r1, 0x20
/* 80092718 0008F678  4E 80 00 20 */	blr

.global "distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 8009271C 0008F67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80092720 0008F680  7C 08 02 A6 */	mflr r0
/* 80092724 0008F684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80092728 0008F688  38 A1 00 0C */	addi r5, r1, 0xc
/* 8009272C 0008F68C  88 E1 00 08 */	lbz r7, 8(r1)
/* 80092730 0008F690  80 C4 00 00 */	lwz r6, 0(r4)
/* 80092734 0008F694  38 81 00 10 */	addi r4, r1, 0x10
/* 80092738 0008F698  80 03 00 00 */	lwz r0, 0(r3)
/* 8009273C 0008F69C  38 61 00 14 */	addi r3, r1, 0x14
/* 80092740 0008F6A0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80092744 0008F6A4  98 E1 00 0C */	stb r7, 0xc(r1)
/* 80092748 0008F6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009274C 0008F6AC  48 00 00 2D */	bl "__distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
/* 80092750 0008F6B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80092754 0008F6B4  7C 08 03 A6 */	mtlr r0
/* 80092758 0008F6B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8009275C 0008F6BC  4E 80 00 20 */	blr

.global "__distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
"__distance<Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl134const_pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag":
/* 80092760 0008F6C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80092764 0008F6C4  80 04 00 00 */	lwz r0, 0(r4)
/* 80092768 0008F6C8  7C 03 00 50 */	subf r0, r3, r0
/* 8009276C 0008F6CC  7C 00 1E 70 */	srawi r0, r0, 3
/* 80092770 0008F6D0  7C 60 01 94 */	addze r3, r0
/* 80092774 0008F6D4  4E 80 00 20 */	blr

.global "__distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
"__distance<Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl128pointer_iterator<Q24rstl10pair<Ui,f>,Q24rstl54vector<Q24rstl10pair<Ui,f>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag":
/* 80092778 0008F6D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8009277C 0008F6DC  80 04 00 00 */	lwz r0, 0(r4)
/* 80092780 0008F6E0  7C 03 00 50 */	subf r0, r3, r0
/* 80092784 0008F6E4  7C 00 1E 70 */	srawi r0, r0, 3
/* 80092788 0008F6E8  7C 60 01 94 */	addze r3, r0
/* 8009278C 0008F6EC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global kPowerUpMax
kPowerUpMax:
	# ROM: 0x3CA6C0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x000000FA
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001

.global kMissileCosts
kMissileCosts:
	# ROM: 0x3CA764
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00000001

.global kComboAmmoPeriods
kComboAmmoPeriods:
	# ROM: 0x3CA778
	.float 0.2
	.float 0.1
	.float 0.2
	.float 0.2
	.float 1.0

.global lbl_803CD78C
lbl_803CD78C:
	# ROM: 0x3CA78C
	.asciz "CombatVisor"
	.asciz "XRayVisor"
	.asciz "ScanVisor"
	.asciz "ThermalVisor"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
