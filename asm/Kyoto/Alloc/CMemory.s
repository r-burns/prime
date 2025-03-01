.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CMemory_cpp

.section .bss
.balign 8

.lcomm lbl_804BFD58, 0xC, 4
.lcomm gGameAllocator, 0xC0, 4

.section .sdata
.balign 8

.global mpAllocator__7CMemory
mpAllocator__7CMemory:
	# ROM: 0x3F6208
	.4byte gGameAllocator

.section .sbss, "wa"
.balign 8

.global lbl_805A9460
lbl_805A9460:
	.skip 0x4
.global gLeakCount
gLeakCount:
	.skip 0x4
.global gLeakBytes
gLeakBytes:
	.skip 0x8

.section .text, "ax"

.global __nwa__FUlPCcPCc
__nwa__FUlPCcPCc:
/* 80315818 00312778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031581C 0031277C  7C 08 02 A6 */	mflr r0
/* 80315820 00312780  7C A6 2B 78 */	mr r6, r5
/* 80315824 00312784  7C 85 23 78 */	mr r5, r4
/* 80315828 00312788  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031582C 0031278C  38 80 FF FF */	li r4, -1
/* 80315830 00312790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315834 00312794  7C 7F 1B 78 */	mr r31, r3
/* 80315838 00312798  38 61 00 08 */	addi r3, r1, 8
/* 8031583C 0031279C  4B FC 0B 99 */	bl __ct__10CCallStackFUiPCcPCc
/* 80315840 003127A0  7C 67 1B 78 */	mr r7, r3
/* 80315844 003127A4  7F E3 FB 78 */	mr r3, r31
/* 80315848 003127A8  38 80 00 00 */	li r4, 0
/* 8031584C 003127AC  38 A0 00 01 */	li r5, 1
/* 80315850 003127B0  38 C0 00 01 */	li r6, 1
/* 80315854 003127B4  48 00 01 41 */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 80315858 003127B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031585C 003127BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80315860 003127C0  7C 08 03 A6 */	mtlr r0
/* 80315864 003127C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80315868 003127C8  4E 80 00 20 */	blr

.global __nw__FUlPCcPCc
__nw__FUlPCcPCc:
/* 8031586C 003127CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80315870 003127D0  7C 08 02 A6 */	mflr r0
/* 80315874 003127D4  7C A6 2B 78 */	mr r6, r5
/* 80315878 003127D8  7C 85 23 78 */	mr r5, r4
/* 8031587C 003127DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80315880 003127E0  38 80 FF FF */	li r4, -1
/* 80315884 003127E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315888 003127E8  7C 7F 1B 78 */	mr r31, r3
/* 8031588C 003127EC  38 61 00 08 */	addi r3, r1, 8
/* 80315890 003127F0  4B FC 0B 45 */	bl __ct__10CCallStackFUiPCcPCc
/* 80315894 003127F4  7C 67 1B 78 */	mr r7, r3
/* 80315898 003127F8  7F E3 FB 78 */	mr r3, r31
/* 8031589C 003127FC  38 80 00 00 */	li r4, 0
/* 803158A0 00312800  38 A0 00 01 */	li r5, 1
/* 803158A4 00312804  38 C0 00 00 */	li r6, 0
/* 803158A8 00312808  48 00 00 ED */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 803158AC 0031280C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803158B0 00312810  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803158B4 00312814  7C 08 03 A6 */	mtlr r0
/* 803158B8 00312818  38 21 00 20 */	addi r1, r1, 0x20
/* 803158BC 0031281C  4E 80 00 20 */	blr

.global OffsetFakeStatics__7CMemoryFi
OffsetFakeStatics__7CMemoryFi:
/* 803158C0 00312820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803158C4 00312824  7C 08 02 A6 */	mflr r0
/* 803158C8 00312828  7C 64 1B 78 */	mr r4, r3
/* 803158CC 0031282C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803158D0 00312830  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 803158D4 00312834  81 83 00 00 */	lwz r12, 0(r3)
/* 803158D8 00312838  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 803158DC 0031283C  7D 89 03 A6 */	mtctr r12
/* 803158E0 00312840  4E 80 04 21 */	bctrl
/* 803158E4 00312844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803158E8 00312848  7C 08 03 A6 */	mtlr r0
/* 803158EC 0031284C  38 21 00 10 */	addi r1, r1, 0x10
/* 803158F0 00312850  4E 80 00 20 */	blr

.global SetOutOfMemoryCallback__7CMemoryFPFPCvUi_CbPCv
SetOutOfMemoryCallback__7CMemoryFPFPCvUi_CbPCv:
/* 803158F4 00312854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803158F8 00312858  7C 08 02 A6 */	mflr r0
/* 803158FC 0031285C  7C 85 23 78 */	mr r5, r4
/* 80315900 00312860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315904 00312864  7C 60 1B 78 */	mr r0, r3
/* 80315908 00312868  7C 04 03 78 */	mr r4, r0
/* 8031590C 0031286C  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 80315910 00312870  81 83 00 00 */	lwz r12, 0(r3)
/* 80315914 00312874  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80315918 00312878  7D 89 03 A6 */	mtctr r12
/* 8031591C 0031287C  4E 80 04 21 */	bctrl
/* 80315920 00312880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315924 00312884  7C 08 03 A6 */	mtlr r0
/* 80315928 00312888  38 21 00 10 */	addi r1, r1, 0x10
/* 8031592C 0031288C  4E 80 00 20 */	blr

.global Free__7CMemoryFPCv
Free__7CMemoryFPCv:
/* 80315930 00312890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80315934 00312894  7C 08 02 A6 */	mflr r0
/* 80315938 00312898  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031593C 0031289C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315940 003128A0  7C 7F 1B 78 */	mr r31, r3
/* 80315944 003128A4  48 06 BD 1D */	bl OSDisableInterrupts
/* 80315948 003128A8  7C 03 00 D0 */	neg r0, r3
/* 8031594C 003128AC  28 1F 00 00 */	cmplwi r31, 0
/* 80315950 003128B0  7C 00 1B 78 */	or r0, r0, r3
/* 80315954 003128B4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80315958 003128B8  98 01 00 08 */	stb r0, 8(r1)
/* 8031595C 003128BC  41 82 00 1C */	beq lbl_80315978
/* 80315960 003128C0  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 80315964 003128C4  7F E4 FB 78 */	mr r4, r31
/* 80315968 003128C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8031596C 003128CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80315970 003128D0  7D 89 03 A6 */	mtctr r12
/* 80315974 003128D4  4E 80 04 21 */	bctrl
lbl_80315978:
/* 80315978 003128D8  88 61 00 08 */	lbz r3, 8(r1)
/* 8031597C 003128DC  48 06 BD 0D */	bl OSRestoreInterrupts
/* 80315980 003128E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80315984 003128E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80315988 003128E8  7C 08 03 A6 */	mtlr r0
/* 8031598C 003128EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80315990 003128F0  4E 80 00 20 */	blr

.global Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack:
/* 80315994 003128F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80315998 003128F8  7C 08 02 A6 */	mflr r0
/* 8031599C 003128FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803159A0 00312900  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 803159A4 00312904  7C 7B 1B 78 */	mr r27, r3
/* 803159A8 00312908  7C 9C 23 78 */	mr r28, r4
/* 803159AC 0031290C  7C BD 2B 78 */	mr r29, r5
/* 803159B0 00312910  7C DE 33 78 */	mr r30, r6
/* 803159B4 00312914  7C FF 3B 78 */	mr r31, r7
/* 803159B8 00312918  48 06 BC A9 */	bl OSDisableInterrupts
/* 803159BC 0031291C  7C 03 00 D0 */	neg r0, r3
/* 803159C0 00312920  7F 64 DB 78 */	mr r4, r27
/* 803159C4 00312924  7C 00 1B 78 */	or r0, r0, r3
/* 803159C8 00312928  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 803159CC 0031292C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803159D0 00312930  7F 85 E3 78 */	mr r5, r28
/* 803159D4 00312934  81 83 00 00 */	lwz r12, 0(r3)
/* 803159D8 00312938  7F A6 EB 78 */	mr r6, r29
/* 803159DC 0031293C  7F C7 F3 78 */	mr r7, r30
/* 803159E0 00312940  7F E8 FB 78 */	mr r8, r31
/* 803159E4 00312944  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803159E8 00312948  98 01 00 08 */	stb r0, 8(r1)
/* 803159EC 0031294C  7D 89 03 A6 */	mtctr r12
/* 803159F0 00312950  4E 80 04 21 */	bctrl
/* 803159F4 00312954  7C 7F 1B 79 */	or. r31, r3, r3
/* 803159F8 00312958  40 82 00 18 */	bne lbl_80315A10
/* 803159FC 0031295C  3C 60 80 3D */	lis r3, lbl_803D7808@ha
/* 80315A00 00312960  7F 64 DB 78 */	mr r4, r27
/* 80315A04 00312964  38 63 78 08 */	addi r3, r3, lbl_803D7808@l
/* 80315A08 00312968  4C C6 31 82 */	crclr 6
/* 80315A0C 0031296C  4B FC 0E 21 */	bl rs_debugger_printf__FPCce
lbl_80315A10:
/* 80315A10 00312970  88 61 00 08 */	lbz r3, 8(r1)
/* 80315A14 00312974  48 06 BC 75 */	bl OSRestoreInterrupts
/* 80315A18 00312978  7F E3 FB 78 */	mr r3, r31
/* 80315A1C 0031297C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80315A20 00312980  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80315A24 00312984  7C 08 03 A6 */	mtlr r0
/* 80315A28 00312988  38 21 00 30 */	addi r1, r1, 0x30
/* 80315A2C 0031298C  4E 80 00 20 */	blr

.global Shutdown__7CMemoryFv
Shutdown__7CMemoryFv:
/* 80315A30 00312990  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80315A34 00312994  7C 08 02 A6 */	mflr r0
/* 80315A38 00312998  90 01 00 64 */	stw r0, 0x64(r1)
/* 80315A3C 0031299C  38 00 00 00 */	li r0, 0
/* 80315A40 003129A0  38 61 00 08 */	addi r3, r1, 8
/* 80315A44 003129A4  80 8D 9C A8 */	lwz r4, mpAllocator__7CMemory@sda21(r13)
/* 80315A48 003129A8  98 0D A8 A0 */	stb r0, lbl_805A9460@sda21(r13)
/* 80315A4C 003129AC  81 84 00 00 */	lwz r12, 0(r4)
/* 80315A50 003129B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80315A54 003129B4  7D 89 03 A6 */	mtctr r12
/* 80315A58 003129B8  4E 80 04 21 */	bctrl
/* 80315A5C 003129BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80315A60 003129C0  28 00 00 00 */	cmplwi r0, 0
/* 80315A64 003129C4  41 82 00 34 */	beq lbl_80315A98
/* 80315A68 003129C8  38 00 00 00 */	li r0, 0
/* 80315A6C 003129CC  3C 60 80 31 */	lis r3, cmemory_enum_alloc_cb__FRCQ210IAllocator10SAllocInfoPCv@ha
/* 80315A70 003129D0  38 83 5A BC */	addi r4, r3, cmemory_enum_alloc_cb__FRCQ210IAllocator10SAllocInfoPCv@l
/* 80315A74 003129D4  90 0D A8 A4 */	stw r0, gLeakCount@sda21(r13)
/* 80315A78 003129D8  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 80315A7C 003129DC  38 A0 00 00 */	li r5, 0
/* 80315A80 003129E0  90 0D A8 A8 */	stw r0, gLeakBytes@sda21(r13)
/* 80315A84 003129E4  38 C0 00 00 */	li r6, 0
/* 80315A88 003129E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80315A8C 003129EC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80315A90 003129F0  7D 89 03 A6 */	mtctr r12
/* 80315A94 003129F4  4E 80 04 21 */	bctrl
lbl_80315A98:
/* 80315A98 003129F8  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 80315A9C 003129FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80315AA0 00312A00  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80315AA4 00312A04  7D 89 03 A6 */	mtctr r12
/* 80315AA8 00312A08  4E 80 04 21 */	bctrl
/* 80315AAC 00312A0C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80315AB0 00312A10  7C 08 03 A6 */	mtlr r0
/* 80315AB4 00312A14  38 21 00 60 */	addi r1, r1, 0x60
/* 80315AB8 00312A18  4E 80 00 20 */	blr

.global cmemory_enum_alloc_cb__FRCQ210IAllocator10SAllocInfoPCv
cmemory_enum_alloc_cb__FRCQ210IAllocator10SAllocInfoPCv:
/* 80315ABC 00312A1C  88 03 00 08 */	lbz r0, 8(r3)
/* 80315AC0 00312A20  28 00 00 00 */	cmplwi r0, 0
/* 80315AC4 00312A24  41 82 00 2C */	beq lbl_80315AF0
/* 80315AC8 00312A28  88 03 00 09 */	lbz r0, 9(r3)
/* 80315ACC 00312A2C  28 00 00 00 */	cmplwi r0, 0
/* 80315AD0 00312A30  40 82 00 20 */	bne lbl_80315AF0
/* 80315AD4 00312A34  80 AD A8 A4 */	lwz r5, gLeakCount@sda21(r13)
/* 80315AD8 00312A38  80 8D A8 A8 */	lwz r4, gLeakBytes@sda21(r13)
/* 80315ADC 00312A3C  80 03 00 04 */	lwz r0, 4(r3)
/* 80315AE0 00312A40  38 65 00 01 */	addi r3, r5, 1
/* 80315AE4 00312A44  90 6D A8 A4 */	stw r3, gLeakCount@sda21(r13)
/* 80315AE8 00312A48  7C 04 02 14 */	add r0, r4, r0
/* 80315AEC 00312A4C  90 0D A8 A8 */	stw r0, gLeakBytes@sda21(r13)
lbl_80315AF0:
/* 80315AF0 00312A50  38 60 00 01 */	li r3, 1
/* 80315AF4 00312A54  4E 80 00 20 */	blr

.global SetAllocator__7CMemoryFR10COsContextR10IAllocator
SetAllocator__7CMemoryFR10COsContextR10IAllocator:
/* 80315AF8 00312A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315AFC 00312A5C  7C 08 02 A6 */	mflr r0
/* 80315B00 00312A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315B04 00312A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315B08 00312A68  7C 9F 23 78 */	mr r31, r4
/* 80315B0C 00312A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80315B10 00312A70  7C 7E 1B 78 */	mr r30, r3
/* 80315B14 00312A74  80 0D 9C A8 */	lwz r0, mpAllocator__7CMemory@sda21(r13)
/* 80315B18 00312A78  7C 00 F8 40 */	cmplw r0, r31
/* 80315B1C 00312A7C  41 82 00 3C */	beq lbl_80315B58
/* 80315B20 00312A80  28 00 00 00 */	cmplwi r0, 0
/* 80315B24 00312A84  41 82 00 18 */	beq lbl_80315B3C
/* 80315B28 00312A88  7C 03 03 78 */	mr r3, r0
/* 80315B2C 00312A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80315B30 00312A90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80315B34 00312A94  7D 89 03 A6 */	mtctr r12
/* 80315B38 00312A98  4E 80 04 21 */	bctrl
lbl_80315B3C:
/* 80315B3C 00312A9C  93 ED 9C A8 */	stw r31, mpAllocator__7CMemory@sda21(r13)
/* 80315B40 00312AA0  7F E3 FB 78 */	mr r3, r31
/* 80315B44 00312AA4  7F C4 F3 78 */	mr r4, r30
/* 80315B48 00312AA8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80315B4C 00312AAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80315B50 00312AB0  7D 89 03 A6 */	mtctr r12
/* 80315B54 00312AB4  4E 80 04 21 */	bctrl
lbl_80315B58:
/* 80315B58 00312AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315B5C 00312ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315B60 00312AC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80315B64 00312AC4  7C 08 03 A6 */	mtlr r0
/* 80315B68 00312AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80315B6C 00312ACC  4E 80 00 20 */	blr

.global Startup__7CMemoryFR10COsContext
Startup__7CMemoryFR10COsContext:
/* 80315B70 00312AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315B74 00312AD4  7C 08 02 A6 */	mflr r0
/* 80315B78 00312AD8  7C 64 1B 78 */	mr r4, r3
/* 80315B7C 00312ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315B80 00312AE0  80 6D 9C A8 */	lwz r3, mpAllocator__7CMemory@sda21(r13)
/* 80315B84 00312AE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80315B88 00312AE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80315B8C 00312AEC  7D 89 03 A6 */	mtctr r12
/* 80315B90 00312AF0  4E 80 04 21 */	bctrl
/* 80315B94 00312AF4  98 6D A8 A0 */	stb r3, lbl_805A9460@sda21(r13)
/* 80315B98 00312AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315B9C 00312AFC  7C 08 03 A6 */	mtlr r0
/* 80315BA0 00312B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80315BA4 00312B04  4E 80 00 20 */	blr

.global GetGameAllocator__10CMemorySysFv
GetGameAllocator__10CMemorySysFv:
/* 80315BA8 00312B08  3C 60 80 4C */	lis r3, gGameAllocator@ha
/* 80315BAC 00312B0C  38 63 FD 64 */	addi r3, r3, gGameAllocator@l
/* 80315BB0 00312B10  4E 80 00 20 */	blr

.global __dt__10CMemorySysFv
__dt__10CMemorySysFv:
/* 80315BB4 00312B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315BB8 00312B18  7C 08 02 A6 */	mflr r0
/* 80315BBC 00312B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315BC0 00312B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315BC4 00312B24  7C 9F 23 78 */	mr r31, r4
/* 80315BC8 00312B28  93 C1 00 08 */	stw r30, 8(r1)
/* 80315BCC 00312B2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80315BD0 00312B30  41 82 00 18 */	beq lbl_80315BE8
/* 80315BD4 00312B34  4B FF FE 5D */	bl Shutdown__7CMemoryFv
/* 80315BD8 00312B38  7F E0 07 35 */	extsh. r0, r31
/* 80315BDC 00312B3C  40 81 00 0C */	ble lbl_80315BE8
/* 80315BE0 00312B40  7F C3 F3 78 */	mr r3, r30
/* 80315BE4 00312B44  4B FF FD 4D */	bl Free__7CMemoryFPCv
lbl_80315BE8:
/* 80315BE8 00312B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315BEC 00312B4C  7F C3 F3 78 */	mr r3, r30
/* 80315BF0 00312B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315BF4 00312B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80315BF8 00312B58  7C 08 03 A6 */	mtlr r0
/* 80315BFC 00312B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80315C00 00312B60  4E 80 00 20 */	blr

.global __ct__10CMemorySysFR10COsContextR10IAllocator
__ct__10CMemorySysFR10COsContextR10IAllocator:
/* 80315C04 00312B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80315C08 00312B68  7C 08 02 A6 */	mflr r0
/* 80315C0C 00312B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80315C10 00312B70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80315C14 00312B74  7C BF 2B 78 */	mr r31, r5
/* 80315C18 00312B78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80315C1C 00312B7C  7C 9E 23 78 */	mr r30, r4
/* 80315C20 00312B80  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80315C24 00312B84  7C 7D 1B 78 */	mr r29, r3
/* 80315C28 00312B88  7F C3 F3 78 */	mr r3, r30
/* 80315C2C 00312B8C  4B FF FF 45 */	bl Startup__7CMemoryFR10COsContext
/* 80315C30 00312B90  7F C3 F3 78 */	mr r3, r30
/* 80315C34 00312B94  7F E4 FB 78 */	mr r4, r31
/* 80315C38 00312B98  4B FF FE C1 */	bl SetAllocator__7CMemoryFR10COsContextR10IAllocator
/* 80315C3C 00312B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80315C40 00312BA0  7F A3 EB 78 */	mr r3, r29
/* 80315C44 00312BA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80315C48 00312BA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80315C4C 00312BAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80315C50 00312BB0  7C 08 03 A6 */	mtlr r0
/* 80315C54 00312BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80315C58 00312BB8  4E 80 00 20 */	blr

.global __sinit_CMemory_cpp
__sinit_CMemory_cpp:
/* 80315C5C 00312BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315C60 00312BC0  7C 08 02 A6 */	mflr r0
/* 80315C64 00312BC4  3C 60 80 4C */	lis r3, gGameAllocator@ha
/* 80315C68 00312BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315C6C 00312BCC  38 63 FD 64 */	addi r3, r3, gGameAllocator@l
/* 80315C70 00312BD0  48 03 C9 5D */	bl __ct__14CGameAllocatorFv
/* 80315C74 00312BD4  3C 80 80 35 */	lis r4, __dt__14CGameAllocatorFv@ha
/* 80315C78 00312BD8  3C A0 80 4C */	lis r5, lbl_804BFD58@ha
/* 80315C7C 00312BDC  38 84 25 44 */	addi r4, r4, __dt__14CGameAllocatorFv@l
/* 80315C80 00312BE0  38 A5 FD 58 */	addi r5, r5, lbl_804BFD58@l
/* 80315C84 00312BE4  48 07 3A 09 */	bl __register_global_object
/* 80315C88 00312BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315C8C 00312BEC  7C 08 03 A6 */	mtlr r0
/* 80315C90 00312BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80315C94 00312BF4  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D7808
lbl_803D7808:
	# ROM: 0x3D4808
	.asciz "Alloc failed - Size: %d"

