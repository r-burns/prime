.include "macros.inc"

.section .text, "ax"

.global __init_user
__init_user:
/* 80385824 00382784  7C 08 02 A6 */	mflr r0
/* 80385828 00382788  90 01 00 04 */	stw r0, 4(r1)
/* 8038582C 0038278C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80385830 00382790  48 00 00 15 */	bl __init_cpp
/* 80385834 00382794  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80385838 00382798  38 21 00 08 */	addi r1, r1, 8
/* 8038583C 0038279C  7C 08 03 A6 */	mtlr r0
/* 80385840 003827A0  4E 80 00 20 */	blr 

.global __init_cpp
__init_cpp:
/* 80385844 003827A4  7C 08 02 A6 */	mflr r0
/* 80385848 003827A8  90 01 00 04 */	stw r0, 4(r1)
/* 8038584C 003827AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80385850 003827B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80385854 003827B4  3C 60 80 3D */	lis r3, __init_cpp_exceptions_reference@ha
/* 80385858 003827B8  38 03 B1 C0 */	addi r0, r3, __init_cpp_exceptions_reference@l
/* 8038585C 003827BC  7C 1F 03 78 */	mr r31, r0
/* 80385860 003827C0  48 00 00 04 */	b lbl_80385864
lbl_80385864:
/* 80385864 003827C4  48 00 00 04 */	b lbl_80385868
lbl_80385868:
/* 80385868 003827C8  48 00 00 10 */	b lbl_80385878
lbl_8038586C:
/* 8038586C 003827CC  7D 88 03 A6 */	mtlr r12
/* 80385870 003827D0  4E 80 00 21 */	blrl 
/* 80385874 003827D4  3B FF 00 04 */	addi r31, r31, 4
lbl_80385878:
/* 80385878 003827D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8038587C 003827DC  28 0C 00 00 */	cmplwi r12, 0
/* 80385880 003827E0  40 82 FF EC */	bne lbl_8038586C
/* 80385884 003827E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80385888 003827E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038588C 003827EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80385890 003827F0  7C 08 03 A6 */	mtlr r0
/* 80385894 003827F4  4E 80 00 20 */	blr 

.global _ExitProcess
_ExitProcess:
/* 80385898 003827F8  7C 08 02 A6 */	mflr r0
/* 8038589C 003827FC  90 01 00 04 */	stw r0, 4(r1)
/* 803858A0 00382800  94 21 FF F8 */	stwu r1, -8(r1)
/* 803858A4 00382804  4B FE 9F 71 */	bl PPCHalt
/* 803858A8 00382808  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803858AC 0038280C  38 21 00 08 */	addi r1, r1, 8
/* 803858B0 00382810  7C 08 03 A6 */	mtlr r0
/* 803858B4 00382814  4E 80 00 20 */	blr 
