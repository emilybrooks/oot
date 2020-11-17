#ifndef _Z_EN_HORSE_ZELDA_H_
#define _Z_EN_HORSE_ZELDA_H_

#include "ultra64.h"
#include "global.h"

struct EnHorseZelda;

typedef void (*EnHorseZeldaActionFunc)(struct EnHorseZelda*, GlobalContext*);

typedef struct EnHorseZelda {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 actionIndex;
    /* 0x0150 */ s32 animationIndex;
    /* 0x0154 */ PSkinAwb skin;
    /* 0x01E4 */ char unk_1E4[0x8];
    /* 0x01EC */ s32 unk_1EC;
    /* 0x01F0 */ char unk_1F0[0x4];
    /* 0x01F4 */ f32 unk_1F4;
    /* 0x01F8 */ char unk_1F8[0x4];
    /* 0x01FC */ ColliderCylinder colliderCylinder;
    /* 0x0248 */ ColliderJntSph colliderSphere;
    /* 0x0268 */ ColliderJntSphItem colliderSphereItem;
} EnHorseZelda; // size = 0x02A8

extern const ActorInit En_Horse_Zelda_InitVars;

#endif
