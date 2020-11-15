/*
 * File: z_en_horse_zelda.c
 * Overlay: ovl_En_Horse_Zelda
 * Description: Zelda's Horse
 */

#include "z_en_horse_zelda.h"

#define FLAGS 0x00000010

#define THIS ((EnHorseZelda*)thisx)

void EnHorseZelda_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorseZelda_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A6DCCC(EnHorseZelda* this, GlobalContext* globalCtx);
void func_80A6DDFC(EnHorseZelda* this, GlobalContext* globalCtx);
void func_80A6DC7C(EnHorseZelda* this);

const ActorInit En_Horse_Zelda_InitVars = {
    ACTOR_EN_HORSE_ZELDA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_ZELDA,
    sizeof(EnHorseZelda),
    (ActorFunc)EnHorseZelda_Init,
    (ActorFunc)EnHorseZelda_Destroy,
    (ActorFunc)EnHorseZelda_Update,
    (ActorFunc)EnHorseZelda_Draw,
};

static AnimationHeader* sAnimationHeaders[] = { 0x06007148 };

static f32 sAnimPlaybackSpeeds[] = { 0.66666666f };

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 100, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x12, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 0xA, 0x23, 0x64, 0xFE };

typedef struct {
    /* 0x0 */ Vec3s unk_0;
    /* 0x6 */ u8 unk_6;
} unknownStruct; // size = 0x7

static unknownStruct D_80A6E240[] = {
    { 0xF96E, 0xFE0C, 0x3122, 0x07 }, { 0xF328, 0xFE0C, 0x32D5, 0x07 }, { 0xEBEA, 0xFE5F, 0x2D6E, 0x07 },
    { 0xE95E, 0xFE27, 0x2565, 0x07 }, { 0xE593, 0xFE0C, 0x20AC, 0x07 }, { 0xE625, 0xFE77, 0x1B07, 0x07 },
    { 0xEBB7, 0x007C, 0x1539, 0x07 }, { 0xF466, 0x0002, 0x11B9, 0x07 }, { 0xF47B, 0xFFDD, 0x11AF, 0x07 },
    { 0xF88D, 0xFFD1, 0x0BA2, 0x07 }, { 0x09B8, 0x0126, 0x0E2C, 0x07 }, { 0x0C11, 0x017A, 0x1269, 0x07 },
    { 0x064E, 0xFEFB, 0x1DAC, 0x07 }, { 0x02F2, 0xFF45, 0x244F, 0x07 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_STOP),
};

static EnHorseZeldaActionFunc sActionFuncs[] = {
    func_80A6DCCC,
    func_80A6DDFC,
};

extern SkeletonHeader D_06006B2C;
extern AnimationHeader D_06007148;

void func_80A6D8D0(unknownStruct* data, s32 index, Vec3f* vec) {
    vec->x = data[index].unk_0.x;
    vec->y = data[index].unk_0.y;
    vec->z = data[index].unk_0.z;
}

void func_80A6D918(EnHorseZelda* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp28;
    s16 yawDiff;

    func_80A6D8D0(D_80A6E240, this->unk_1EC, &sp28);
    if (Math3D_Vec3f_DistXYZ(&sp28, &this->actor.posRot.pos) <= 400.0f) {
        this->unk_1EC += 1;
        if (this->unk_1EC >= 14) {
            this->unk_1EC = 0;
            func_80A6D8D0(D_80A6E240, 0, &sp28);
        }
    }
    yawDiff = Math_Vec3f_Yaw(&this->actor.posRot.pos, &sp28) - this->actor.posRot.rot.y;
    if (yawDiff >= 0x12D) {
        this->actor.posRot.rot.y += 0x12C;
    } else if (yawDiff < -0x12C) {
        this->actor.posRot.rot.y -= 0x12C;
    } else {
        this->actor.posRot.rot.y += yawDiff;
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (func_8002DB8C(&this->actor, &PLAYER->actor) <= 300.0f) {
        if (this->actor.speedXZ < 12.0f) {
            this->actor.speedXZ += 1.0f;
        } else {
            this->actor.speedXZ -= 1.0f;
        }
    } else if (this->actor.speedXZ < D_80A6E240[this->unk_1EC].unk_6) {
        this->actor.speedXZ += 0.5f;
    } else {
        this->actor.speedXZ -= 0.5f;
    }
}

void EnHorseZelda_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseZelda* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.0115f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Squiggly, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actionIndex = 0;
    this->actor.posRot2.pos.y += 70.0f;
    func_800A663C(globalCtx, &this->skin, &D_06006B2C, &D_06007148);
    this->animationIndex = 0;
    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, sAnimationHeaders[0]);
    Collider_InitCylinder(globalCtx, &this->colliderCylinder);
    Collider_SetCylinder_Set3(globalCtx, &this->colliderCylinder, &this->actor, &sCylinderInit);
    Collider_InitJntSph(globalCtx, &this->colliderSphere);
    Collider_SetJntSph(globalCtx, &this->colliderSphere, &this->actor, &sJntSphInit, &this->colliderSphereItem);
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->animationIndex = 0;
    func_80A6DC7C(this);
}

void EnHorseZelda_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseZelda* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    Collider_DestroyJntSph(globalCtx, &this->colliderSphere);
    func_800A6888(globalCtx, &this->skin);
}

void func_80A6DC7C(EnHorseZelda* this) {
    this->actionIndex = 0;
    this->animationIndex += 1;
    if (this->animationIndex > 0) {
        this->animationIndex = 0;
    }
    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, sAnimationHeaders[this->animationIndex]);
}

void func_80A6DCCC(EnHorseZelda* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        func_80A6DC7C(this);
    }
}

void func_80A6DD14(EnHorseZelda* this) {
    f32 sp34;

    this->actionIndex = 1;
    this->animationIndex = 0;
    sp34 = this->actor.speedXZ / 6.0f;
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    SkelAnime_ChangeAnim(&this->skin.skelAnime, sAnimationHeaders[this->animationIndex],
                         sAnimPlaybackSpeeds[this->animationIndex] * sp34 * 1.5f, 0.0f,
                         SkelAnime_GetFrameCount(&sAnimationHeaders[this->animationIndex]->genericHeader), 2, 0.0f);
}

void func_80A6DDFC(EnHorseZelda* this, GlobalContext* globalCtx) {
    func_80A6D918(this, globalCtx);
    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime)) {
        func_80A6DD14(this);
    }
}

void func_80A6DE38(EnHorseZelda* this, GlobalContext* globalCtx) {
    s32 pad;
    CollisionPoly* sp38;
    s32 pad2;
    Vec3f sp28;
    f32 sp24;

    sp28.x = (Math_Sins(this->actor.shape.rot.y) * 30.0f) + this->actor.posRot.pos.x;
    sp28.y = this->actor.posRot.pos.y + 60.0f;
    sp28.z = (Math_Coss(this->actor.shape.rot.y) * 30.0f) + this->actor.posRot.pos.z;
    this->unk_1F4 = func_8003C940(&globalCtx->colCtx, &sp38, &sp24, &sp28);
    this->actor.shape.rot.x = Math_atan2f(this->actor.posRot.pos.y - this->unk_1F4, 30.0f) * ((f32)0x8000 / M_PI);
}

void EnHorseZelda_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseZelda* this = THIS;
    s32 pad;

    sActionFuncs[this->actionIndex](this, globalCtx);
    this->actor.speedXZ = 0.0f;
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 55.0f, 100.0f, 0x1D);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
}

void func_80A6DFD4(EnHorseZelda* this, GlobalContext* globalCtx, ColliderJntSphItem* colliderSphereItem) {
    Vec3f sp4C;
    Vec3f sp40;
    s32 pad;
    s32 i;

    for (i = 0; i < this->colliderSphere.count; i++) {
        sp4C.x = this->colliderSphere.list[i].dim.modelSphere.center.x;
        sp4C.y = this->colliderSphere.list[i].dim.modelSphere.center.y;
        sp4C.z = this->colliderSphere.list[i].dim.modelSphere.center.z;

        func_800A6408(colliderSphereItem, this->colliderSphere.list[i].dim.joint, &sp4C, &sp40);

        this->colliderSphere.list[i].dim.worldSphere.center.x = sp40.x;
        this->colliderSphere.list[i].dim.worldSphere.center.y = sp40.y;
        this->colliderSphere.list[i].dim.worldSphere.center.z = sp40.z;

        this->colliderSphere.list[i].dim.worldSphere.radius =
            this->colliderSphere.list[i].dim.modelSphere.radius * this->colliderSphere.list[i].dim.scale;
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
}

void EnHorseZelda_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHorseZelda* this = THIS;

    func_80A6DE38(this, globalCtx);
    func_80093D18(globalCtx->state.gfxCtx);
    func_800A6330(&this->actor, globalCtx, &this->skin, func_80A6DFD4, 1);
}
