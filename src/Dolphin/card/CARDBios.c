#include <dolphin/card.h>
#include <dolphin/dsp.h>
#include <dolphin/dvd.h>
#include <dolphin/os.h>

#include <dolphin/CARDPriv.h>

const char* __CARDVersion =
    "<< Dolphin SDK - CARD\trelease build: Sep  5 2002 05:35:20 (0x2301) >>";

CARDControl __CARDBlock[2];
DVDDiskID __CARDDiskNone;

static u16 __CARDEncode;

s32 __CARDReadStatus(s32 chan, u8* status);
s32 __CARDClearStatus(s32 chan);
void __CARDSetDiskID(const DVDDiskID* id);
static s32 Retry(s32 chan);

BOOL OnReset(BOOL f);
static OSResetFunctionInfo ResetFunctionInfo = {OnReset, 127};

void __CARDDefaultApiCallback(s32 chan, s32 result) {}

void __CARDExtHandler(s32 chan, OSContext* context) {
  CARDControl* card;
  CARDCallback callback;

  card = &__CARDBlock[chan];
  if (card->attached) {
    card->attached = FALSE;
    EXISetExiCallback(chan, 0);
    OSCancelAlarm(&card->alarm);
    callback = card->exiCallback;

    if (callback) {
      card->exiCallback = 0;
      callback(chan, CARD_RESULT_NOCARD);
    }

    if (card->result != CARD_RESULT_BUSY) {
      card->result = CARD_RESULT_NOCARD;
    }

    callback = card->extCallback;
    if (callback && CARD_MAX_MOUNT_STEP <= card->mountStep) {
      card->extCallback = 0;
      callback(chan, CARD_RESULT_NOCARD);
    }
  }
}

void __CARDExiHandler(s32 chan, OSContext* context) {
  CARDControl* card;
  CARDCallback callback;
  u8 status;
  s32 result;

  card = &__CARDBlock[chan];

  OSCancelAlarm(&card->alarm);

  if (!card->attached) {
    return;
  }

  if (!EXILock(chan, 0, 0)) {
    result = CARD_RESULT_FATAL_ERROR;
    goto fatal;
  }

  if ((result = __CARDReadStatus(chan, &status)) < 0 || (result = __CARDClearStatus(chan)) < 0) {
    goto error;
  }

  if ((result = (status & 0x18) ? CARD_RESULT_IOERROR : CARD_RESULT_READY) == CARD_RESULT_IOERROR &&
      --card->retry > 0) {
    result = Retry(chan);
    if (result >= 0) {
      return;
    }
    goto fatal;
  }

error:
  EXIUnlock(chan);

fatal:
  callback = card->exiCallback;
  if (callback) {
    card->exiCallback = 0;
    callback(chan, result);
  }
}

void __CARDTxHandler(s32 chan, OSContext* context) {
  CARDControl* card;
  CARDCallback callback;
  BOOL err;

  card = &__CARDBlock[chan];
  err = !EXIDeselect(chan);
  EXIUnlock(chan);
  callback = card->txCallback;
  if (callback) {
    card->txCallback = 0;
    callback(chan, (!err && EXIProbe(chan)) ? CARD_RESULT_READY : CARD_RESULT_NOCARD);
  }
}

void __CARDUnlockedHandler(s32 chan, OSContext* context) {
  CARDControl* card;
  CARDCallback callback;

  card = &__CARDBlock[chan];
  callback = card->unlockCallback;
  if (callback) {
    card->unlockCallback = 0;
    callback(chan, EXIProbe(chan) ? CARD_RESULT_UNLOCKED : CARD_RESULT_NOCARD);
  }
}

s32 __CARDEnableInterrupt(s32 chan, BOOL enable) {
  BOOL err;
  u32 cmd;

  if (!EXISelect(chan, 0, 4)) {
    return CARD_RESULT_NOCARD;
  }

  cmd = enable ? 0x81010000 : 0x81000000;
  err = FALSE;
  err |= !EXIImm(chan, &cmd, 2, 1, NULL);
  err |= !EXISync(chan);
  err |= !EXIDeselect(chan);
  return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

s32 __CARDReadStatus(s32 chan, u8* status) {
  BOOL err;
  u32 cmd;

  if (!EXISelect(chan, 0, 4)) {
    return CARD_RESULT_NOCARD;
  }

  cmd = 0x83000000;
  err = FALSE;
  err |= !EXIImm(chan, &cmd, 2, 1, NULL);
  err |= !EXISync(chan);
  err |= !EXIImm(chan, status, 1, 0, NULL);
  err |= !EXISync(chan);
  err |= !EXIDeselect(chan);
  return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

s32 __CARDClearStatus(s32 chan) {
  BOOL err;
  u32 cmd;

  if (!EXISelect(chan, 0, 4)) {
    return CARD_RESULT_NOCARD;
  }

  cmd = 0x89000000;
  err = FALSE;
  err |= !EXIImm(chan, &cmd, 1, 1, 0);
  err |= !EXISync(chan);
  err |= !EXIDeselect(chan);

  return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

static void TimeoutHandler(OSAlarm* alarm, OSContext* context) {
  s32 chan;
  CARDControl* card;
  CARDCallback callback;
  for (chan = 0; chan < 2; ++chan) {
    card = &__CARDBlock[chan];
    if (alarm == &card->alarm) {
      break;
    }
  }

  if (!card->attached) {
    return;
  }

  EXISetExiCallback(chan, NULL);
  callback = card->exiCallback;
  if (callback) {
    card->exiCallback = 0;
    callback(chan, CARD_RESULT_IOERROR);
  }
}

static void SetupTimeoutAlarm(CARDControl* card) {
  OSCancelAlarm(&card->alarm);
  switch (card->cmd[0]) {
  case 0xF2:
    OSSetAlarm(&card->alarm, OSMillisecondsToTicks(100), TimeoutHandler);
    break;
  case 0xF3:
    break;
  case 0xF4:
  case 0xF1:
    OSSetAlarm(&card->alarm, OSSecondsToTicks((OSTime)2) * (card->sectorSize / 0x2000),
               TimeoutHandler);
    break;
  }
}

static s32 Retry(s32 chan) {
  CARDControl* card;
  card = &__CARDBlock[chan];

  if (!EXISelect(chan, 0, 4)) {
    EXIUnlock(chan);
    return CARD_RESULT_NOCARD;
  }

  SetupTimeoutAlarm(card);

  if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1)) {
    EXIDeselect(chan);
    EXIUnlock(chan);
    return CARD_RESULT_NOCARD;
  }

  if (card->cmd[0] == 0x52 &&
      !EXIImmEx(chan, (u8*)card->workArea + sizeof(CARDID), card->latency, 1)) {
    EXIDeselect(chan);
    EXIUnlock(chan);
    return CARD_RESULT_NOCARD;
  }

  if (card->mode == 0xffffffff) {
    EXIDeselect(chan);
    EXIUnlock(chan);
    return CARD_RESULT_READY;
  }

  if (!EXIDma(chan, card->buffer, (s32)((card->cmd[0] == 0x52) ? 512 : 128), card->mode,
              __CARDTxHandler)) {
    EXIDeselect(chan);
    EXIUnlock(chan);
    return CARD_RESULT_NOCARD;
  }

  return CARD_RESULT_READY;
}

static void UnlockedCallback(s32 chan, s32 result) {
  CARDCallback callback;
  CARDControl* card;

  card = &__CARDBlock[chan];
  if (result >= 0) {
    card->unlockCallback = UnlockedCallback;
    if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
      result = CARD_RESULT_READY;
    } else {
      card->unlockCallback = 0;
      result = Retry(chan);
    }
  }

  if (result < 0) {
    switch (card->cmd[0]) {
    case 0x52:
      callback = card->txCallback;
      if (callback) {
        card->txCallback = 0;
        callback(chan, result);
      }

      break;
    case 0xF2:
    case 0xF4:
    case 0xF1:
      callback = card->exiCallback;
      if (callback) {
        card->exiCallback = 0;
        callback(chan, result);
      }
      break;
    }
  }
}

static s32 __CARDStart(s32 chan, CARDCallback txCallback, CARDCallback exiCallback) {
  BOOL enabled;
  CARDControl* card;
  s32 result;

  enabled = OSDisableInterrupts();

  card = &__CARDBlock[chan];
  if (!card->attached) {
    result = CARD_RESULT_NOCARD;
  } else {

    if (txCallback) {
      card->txCallback = txCallback;
    }
    if (exiCallback) {
      card->exiCallback = exiCallback;
    }
    card->unlockCallback = UnlockedCallback;
    if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
      result = CARD_RESULT_BUSY;
    } else {
      card->unlockCallback = 0;

      if (!EXISelect(chan, 0, 4)) {
        EXIUnlock(chan);
        result = CARD_RESULT_NOCARD;
      } else {
        SetupTimeoutAlarm(card);
        result = CARD_RESULT_READY;
      }
    }
  }

  OSRestoreInterrupts(enabled);
  return result;
}

#define AD1(x) ((u8)(((x) >> 17) & 0x7f))
#define AD1EX(x) ((u8)(AD1(x) | 0x80));
#define AD2(x) ((u8)(((x) >> 9) & 0xff))
#define AD3(x) ((u8)(((x) >> 7) & 0x03))
#define BA(x) ((u8)((x)&0x7f))

s32 __CARDReadSegment(s32 chan, CARDCallback callback) {
  CARDControl* card;
  s32 result;

  card = &__CARDBlock[chan];
  card->cmd[0] = 0x52;
  card->cmd[1] = AD1(card->addr);
  card->cmd[2] = AD2(card->addr);
  card->cmd[3] = AD3(card->addr);
  card->cmd[4] = BA(card->addr);
  card->cmdlen = 5;
  card->mode = 0;
  card->retry = 0;

  result = __CARDStart(chan, callback, 0);
  if (result == CARD_RESULT_BUSY) {
    result = CARD_RESULT_READY;
  } else if (result >= 0) {
    if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1) ||
        !EXIImmEx(chan, (u8*)card->workArea + sizeof(CARDID), card->latency,
                  1) || // XXX use DMA if possible
        !EXIDma(chan, card->buffer, 512, card->mode, __CARDTxHandler)) {
      card->txCallback = 0;
      EXIDeselect(chan);
      EXIUnlock(chan);
      result = CARD_RESULT_NOCARD;
    } else {
      result = CARD_RESULT_READY;
    }
  }
  return result;
}

s32 __CARDWritePage(s32 chan, CARDCallback callback) {
  CARDControl* card;
  s32 result;

  card = &__CARDBlock[chan];
  card->cmd[0] = 0xF2;
  card->cmd[1] = AD1(card->addr);
  card->cmd[2] = AD2(card->addr);
  card->cmd[3] = AD3(card->addr);
  card->cmd[4] = BA(card->addr);
  card->cmdlen = 5;
  card->mode = 1;
  card->retry = 3;

  result = __CARDStart(chan, 0, callback);
  if (result == CARD_RESULT_BUSY) {
    result = CARD_RESULT_READY;
  } else if (result >= 0) {
    if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1) ||
        !EXIDma(chan, card->buffer, 128, card->mode, __CARDTxHandler)) {
      card->exiCallback = 0;
      EXIDeselect(chan);
      EXIUnlock(chan);
      result = CARD_RESULT_NOCARD;
    } else {
      result = CARD_RESULT_READY;
    }
  }
  return result;
}

#if NONMATCHING
/* TODO: Needs frank fix for disconnected stack epilogue */
s32 __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback) {
  CARDControl* card;
  s32 result;

  card = &__CARDBlock[chan];
  card->cmd[0] = 0xF1;
  card->cmd[1] = AD1(addr);
  card->cmd[2] = AD2(addr);
  card->cmdlen = 3;
  card->mode = -1;
  card->retry = 3;

  result = __CARDStart(chan, 0, callback);

  if (result == CARD_RESULT_BUSY) {
    result = CARD_RESULT_READY;
  } else if (result >= 0) {
    if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1)) {
      card->exiCallback = NULL;
      result = CARD_RESULT_NOCARD;
    } else {
      result = CARD_RESULT_READY;
    }

    EXIDeselect(chan);
    EXIUnlock(chan);
  }
  return result;
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x28(r1)
  stw r31, 0x24(r1)
  stw r30, 0x20(r1)
  stw r29, 0x1c(r1)
  addi r29, r3, 0
  mulli r6, r29, 0x110
  lis r3, __CARDBlock@ha
  addi r0, r3, __CARDBlock@l
  add r31, r0, r6
  li r0, 0xf1
  stb r0, 0x94(r31)
  rlwinm r3, r4, 0xf, 0x19, 0x1f
  rlwinm r0, r4, 0x17, 0x18, 0x1f
  stb r3, 0x95(r31)
  li r6, 3
  addi r3, r29, 0
  stb r0, 0x96(r31)
  li r0, -1
  li r4, 0
  stw r6, 0xa0(r31)
  stw r0, 0xa4(r31)
  stw r6, 0xa8(r31)
  bl __CARDStart
  addi r30, r3, 0
  cmpwi r30, -1
  bne lbl_803B8C4C
  li r30, 0
  b lbl_803B8C94
lbl_803B8C4C:
  cmpwi r30, 0
  blt lbl_803B8C94
  lwz r5, 0xa0(r31)
  addi r3, r29, 0
  addi r4, r31, 0x94
  li r6, 1
  bl EXIImmEx
  cmpwi r3, 0
  bne lbl_803B8C80
  li r0, 0
  stw r0, 0xcc(r31)
  li r30, -3
  b lbl_803B8C84
lbl_803B8C80:
  li r30, 0
lbl_803B8C84:
  mr r3, r29
  bl EXIDeselect
  mr r3, r29
  bl EXIUnlock
lbl_803B8C94:
  mr r3, r30
  lwz r0, 0x2c(r1)
  lwz r31, 0x24(r1)
  lwz r30, 0x20(r1)
  lwz r29, 0x1c(r1)
  addi r1, r1, 0x28
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif 
void CARDInit(void) {
  int chan;

  if (__CARDBlock[0].diskID && __CARDBlock[1].diskID) {
    return;
  }

  __CARDEncode = OSGetFontEncode();

  OSRegisterVersion(__CARDVersion);

  DSPInit();
  OSInitAlarm();

  for (chan = 0; chan < 2; ++chan) {
    CARDControl* card = &__CARDBlock[chan];

    card->result = CARD_RESULT_NOCARD;
    OSInitThreadQueue(&card->threadQueue);
    OSCreateAlarm(&card->alarm);
  }
  __CARDSetDiskID((DVDDiskID*)OSPhysicalToCached(0x0));

  OSRegisterResetFunction(&ResetFunctionInfo);
}

u16 __CARDGetFontEncode() { return __CARDEncode; }

void __CARDSetDiskID(const DVDDiskID* id) {
  __CARDBlock[0].diskID = id ? id : &__CARDDiskNone;
  __CARDBlock[1].diskID = id ? id : &__CARDDiskNone;
}

s32 __CARDGetControlBlock(s32 chan, CARDControl** pcard) {
  BOOL enabled;
  s32 result;
  CARDControl* card;

  card = &__CARDBlock[chan];
  if (chan < 0 || chan >= 2 || card->diskID == NULL) {
    return CARD_RESULT_FATAL_ERROR;
  }

  enabled = OSDisableInterrupts();
  if (!card->attached) {
    result = CARD_RESULT_NOCARD;
  } else if (card->result == CARD_RESULT_BUSY) {
    result = CARD_RESULT_BUSY;
  } else {
    card->result = CARD_RESULT_BUSY;
    result = CARD_RESULT_READY;
    card->apiCallback = 0;
    *pcard = card;
  }
  OSRestoreInterrupts(enabled);
  return result;
}

#if NONMATCHING
/* TODO: Needs frank fix for disconnected stack epilogue */
s32 __CARDPutControlBlock(CARDControl* card, s32 result) {
  BOOL enabled;

  enabled = OSDisableInterrupts();
  if (card->attached) {
    card->result = result;
  } else if (card->result == CARD_RESULT_BUSY) {
    card->result = result;
  }
  OSRestoreInterrupts(enabled);
  return result;
}
#else
#pragma push
/* clang-format off */
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 __CARDPutControlBlock(CARDControl* card, s32 result) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x18(r1)
  stw r31, 0x14(r1)
  addi r31, r4, 0
  stw r30, 0x10(r1)
  addi r30, r3, 0
  bl OSDisableInterrupts
  lwz r0, 0(r30)
  cmpwi r0, 0
  beq lbl_803B8E8C
  stw r31, 4(r30)
  b lbl_803B8E9C
lbl_803B8E8C:
  lwz r0, 4(r30)
  cmpwi r0, -1
  bne lbl_803B8E9C
  stw r31, 4(r30)
lbl_803B8E9C:
  bl OSRestoreInterrupts
  mr r3, r31
  lwz r0, 0x1c(r1)
  lwz r31, 0x14(r1)
  lwz r30, 0x10(r1)
  addi r1, r1, 0x18
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

s32 CARDGetResultCode(s32 chan) {
  CARDControl* card;
  if (chan < 0 || chan >= 2) {
    return CARD_RESULT_FATAL_ERROR;
  }
  card = &__CARDBlock[chan];
  return card->result;
}

#if NONMATCHING
s32 CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed) {
  CARDControl* card;
  s32 result;
  u16* fat;
  CARDDir* dir;
  CARDDir* ent;
  u16 fileNo;

  result = __CARDGetControlBlock(chan, &card);
  if (result < 0) {
    return result;
  }

  fat = __CARDGetFatBlock(card);
  dir = __CARDGetDirBlock(card);
  if (fat == 0 || dir == 0) {
    return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
  }

  if (byteNotUsed) {
    *byteNotUsed = (s32)(card->sectorSize * fat[CARD_FAT_FREEBLOCKS]);
  }

  if (filesNotUsed) {
    *filesNotUsed = 0;
    for (fileNo = 0; fileNo < CARD_MAX_FILE; fileNo++) {
      ent = &dir[fileNo];
      if (ent->fileName[0] == 0xff) {
        ++*filesNotUsed;
      }
    }
  }

  return __CARDPutControlBlock(card, CARD_RESULT_READY);
}
#else
/* clang-format off */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed) {
  nofralloc
  mflr r0
  stw r0, 4(r1)
  stwu r1, -0x30(r1)
  stw r31, 0x2c(r1)
  addi r31, r5, 0
  stw r30, 0x28(r1)
  stw r29, 0x24(r1)
  addi r29, r4, 0
  addi r4, r1, 0x18
  bl __CARDGetControlBlock
  cmpwi r3, 0
  bge lbl_803B8F20
  b lbl_803B9020
lbl_803B8F20:
  lwz r3, 0x18(r1)
  bl __CARDGetFatBlock
  mr r30, r3
  lwz r3, 0x18(r1)
  bl __CARDGetDirBlock
  cmplwi r30, 0
  beq lbl_803B8F44
  cmplwi r3, 0
  bne lbl_803B8F84
lbl_803B8F44:
  lwz r30, 0x18(r1)
  bl OSDisableInterrupts
  lwz r0, 0(r30)
  cmpwi r0, 0
  beq lbl_803B8F64
  li r0, -6
  stw r0, 4(r30)
  b lbl_803B8F78
lbl_803B8F64:
  lwz r0, 4(r30)
  cmpwi r0, -1
  bne lbl_803B8F78
  li r0, -6
  stw r0, 4(r30)
lbl_803B8F78:
  bl OSRestoreInterrupts
  li r3, -6
  b lbl_803B9020
lbl_803B8F84:
  cmplwi r29, 0
  beq lbl_803B8FA0
  lwz r4, 0x18(r1)
  lhz r0, 6(r30)
  lwz r4, 0xc(r4)
  mullw r0, r4, r0
  stw r0, 0(r29)
lbl_803B8FA0:
  cmplwi r31, 0
  beq lbl_803B8FE4
  li r0, 0
  stw r0, 0(r31)
  li r5, 0
  b lbl_803B8FD8
lbl_803B8FB8:
  lbz r0, 8(r3)
  cmplwi r0, 0xff
  bne lbl_803B8FD0
  lwz r4, 0(r31)
  addi r0, r4, 1
  stw r0, 0(r31)
lbl_803B8FD0:
  addi r3, r3, 0x40
  addi r5, r5, 1
lbl_803B8FD8:
  clrlwi r0, r5, 0x10
  cmplwi r0, 0x7f
  blt lbl_803B8FB8
lbl_803B8FE4:
  lwz r30, 0x18(r1)
  bl OSDisableInterrupts
  lwz r0, 0(r30)
  cmpwi r0, 0
  beq lbl_803B9004
  li r0, 0
  stw r0, 4(r30)
  b lbl_803B9018
lbl_803B9004:
  lwz r0, 4(r30)
  cmpwi r0, -1
  bne lbl_803B9018
  li r0, 0
  stw r0, 4(r30)
lbl_803B9018:
  bl OSRestoreInterrupts
  li r3, 0
lbl_803B9020:
  lwz r0, 0x34(r1)
  lwz r31, 0x2c(r1)
  lwz r30, 0x28(r1)
  lwz r29, 0x24(r1)
  addi r1, r1, 0x30
  mtlr r0
  blr
}
/* clang-format on */
#pragma pop
#endif

static BOOL OnReset(BOOL f) {
  if (!f) {
    if (CARDUnmount(0) == CARD_RESULT_BUSY || CARDUnmount(1) == CARD_RESULT_BUSY) {
      return FALSE;
    }
  }

  return TRUE;
}
