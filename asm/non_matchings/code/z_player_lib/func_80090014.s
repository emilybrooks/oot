glabel func_80090014
/* B071B4 80090014 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B071B8 80090018 AFB00020 */  sw    $s0, 0x20($sp)
/* B071BC 8009001C 8FB0003C */  lw    $s0, 0x3c($sp)
/* B071C0 80090020 8FAE0038 */  lw    $t6, 0x38($sp)
/* B071C4 80090024 AFBF0024 */  sw    $ra, 0x24($sp)
/* B071C8 80090028 AFA5002C */  sw    $a1, 0x2c($sp)
/* B071CC 8009002C AFA60030 */  sw    $a2, 0x30($sp)
/* B071D0 80090030 AFB00014 */  sw    $s0, 0x14($sp)
/* B071D4 80090034 0C023F32 */  jal   func_8008FCC8
/* B071D8 80090038 AFAE0010 */   sw    $t6, 0x10($sp)
/* B071DC 8009003C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B071E0 80090040 144000A6 */  bnez  $v0, .L800902DC
/* B071E4 80090044 8FA60030 */   lw    $a2, 0x30($sp)
/* B071E8 80090048 24070010 */  li    $a3, 16
/* B071EC 8009004C 14A70043 */  bne   $a1, $a3, .L8009015C
/* B071F0 80090050 24040013 */   li    $a0, 19
/* B071F4 80090054 3C048016 */  lui   $a0, %hi(D_80160014)
/* B071F8 80090058 24840014 */  addiu $a0, %lo(D_80160014) # addiu $a0, $a0, 0x14
/* B071FC 8009005C 8C830000 */  lw    $v1, ($a0)
/* B07200 80090060 24010004 */  li    $at, 4
/* B07204 80090064 8E020164 */  lw    $v0, 0x164($s0)
/* B07208 80090068 14610011 */  bne   $v1, $at, .L800900B0
/* B0720C 8009006C 3C058016 */   lui   $a1, %hi(gSaveContext)
/* B07210 80090070 24A5E660 */  addiu $a1, %lo(gSaveContext)
/* B07214 80090074 94AF0036 */  lhu   $t7, 0x36($a1)
/* B07218 80090078 44802000 */  mtc1  $zero, $f4
/* B0721C 8009007C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B07220 80090080 448F3000 */  mtc1  $t7, $f6
/* B07224 80090084 05E10004 */  bgez  $t7, .L80090098
/* B07228 80090088 46803220 */   cvt.s.w $f8, $f6
/* B0722C 8009008C 44815000 */  mtc1  $at, $f10
/* B07230 80090090 00000000 */  nop
/* B07234 80090094 460A4200 */  add.s $f8, $f8, $f10
.L80090098:
/* B07238 80090098 4604403E */  c.le.s $f8, $f4
/* B0723C 8009009C 00000000 */  nop
/* B07240 800900A0 45000003 */  bc1f  .L800900B0
/* B07244 800900A4 00000000 */   nop
/* B07248 800900A8 10000025 */  b     .L80090140
/* B0724C 800900AC 24420010 */   addiu $v0, $v0, 0x10
.L800900B0:
/* B07250 800900B0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07254 800900B4 24010006 */  li    $at, 6
/* B07258 800900B8 1461000C */  bne   $v1, $at, .L800900EC
/* B0725C 800900BC 24A5E660 */   addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B07260 800900C0 8E18067C */  lw    $t8, 0x67c($s0)
/* B07264 800900C4 3C0A8012 */  lui   $t2, %hi(D_80125E08) # $t2, 0x8012
/* B07268 800900C8 0018C980 */  sll   $t9, $t8, 6
/* B0726C 800900CC 07230008 */  bgezl $t9, .L800900F0
/* B07270 800900D0 920B015C */   lbu   $t3, 0x15c($s0)
/* B07274 800900D4 8CA80004 */  lw    $t0, 4($a1)
/* B07278 800900D8 254A5E08 */  addiu $t2, %lo(D_80125E08) # addiu $t2, $t2, 0x5e08
/* B0727C 800900DC AC800000 */  sw    $zero, ($a0)
/* B07280 800900E0 00084880 */  sll   $t1, $t0, 2
/* B07284 800900E4 10000016 */  b     .L80090140
/* B07288 800900E8 012A1021 */   addu  $v0, $t1, $t2
.L800900EC:
/* B0728C 800900EC 920B015C */  lbu   $t3, 0x15c($s0)
.L800900F0:
/* B07290 800900F0 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B07294 800900F4 15600012 */  bnez  $t3, .L80090140
/* B07298 800900F8 00000000 */   nop
/* B0729C 800900FC 44818000 */  mtc1  $at, $f16
/* B072A0 80090100 C6120068 */  lwc1  $f18, 0x68($s0)
/* B072A4 80090104 4612803C */  c.lt.s $f16, $f18
/* B072A8 80090108 00000000 */  nop
/* B072AC 8009010C 4500000C */  bc1f  .L80090140
/* B072B0 80090110 00000000 */   nop
/* B072B4 80090114 8E0C067C */  lw    $t4, 0x67c($s0)
/* B072B8 80090118 3C188012 */  lui   $t8, %hi(D_80125E18) # $t8, 0x8012
/* B072BC 8009011C 27185E18 */  addiu $t8, %lo(D_80125E18) # addiu $t8, $t8, 0x5e18
/* B072C0 80090120 000C6900 */  sll   $t5, $t4, 4
/* B072C4 80090124 05A00006 */  bltz  $t5, .L80090140
/* B072C8 80090128 00000000 */   nop
/* B072CC 8009012C 8CAE0004 */  lw    $t6, 4($a1)
/* B072D0 80090130 24190001 */  li    $t9, 1
/* B072D4 80090134 AC990000 */  sw    $t9, ($a0)
/* B072D8 80090138 000E7880 */  sll   $t7, $t6, 2
/* B072DC 8009013C 01F81021 */  addu  $v0, $t7, $t8
.L80090140:
/* B072E0 80090140 3C088016 */  lui   $t0, %hi(D_80160004) # $t0, 0x8016
/* B072E4 80090144 8D080004 */  lw    $t0, %lo(D_80160004)($t0)
/* B072E8 80090148 00084880 */  sll   $t1, $t0, 2
/* B072EC 8009014C 00495021 */  addu  $t2, $v0, $t1
/* B072F0 80090150 8D4B0000 */  lw    $t3, ($t2)
/* B072F4 80090154 10000061 */  b     .L800902DC
/* B072F8 80090158 ACCB0000 */   sw    $t3, ($a2)
.L8009015C:
/* B072FC 8009015C 14A40029 */  bne   $a1, $a0, .L80090204
/* B07300 80090160 24010014 */   li    $at, 20
/* B07304 80090164 3C038016 */  lui   $v1, %hi(D_80160018) # $v1, 0x8016
/* B07308 80090168 24630018 */  addiu $v1, %lo(D_80160018) # addiu $v1, $v1, 0x18
/* B0730C 8009016C 8C6C0000 */  lw    $t4, ($v1)
/* B07310 80090170 2401000A */  li    $at, 10
/* B07314 80090174 8E020160 */  lw    $v0, 0x160($s0)
/* B07318 80090178 55810006 */  bnel  $t4, $at, .L80090194
/* B0731C 8009017C 920F015D */   lbu   $t7, 0x15d($s0)
/* B07320 80090180 820D014E */  lb    $t5, 0x14e($s0)
/* B07324 80090184 000D7100 */  sll   $t6, $t5, 4
/* B07328 80090188 10000017 */  b     .L800901E8
/* B0732C 8009018C 004E1021 */   addu  $v0, $v0, $t6
/* B07330 80090190 920F015D */  lbu   $t7, 0x15d($s0)
.L80090194:
/* B07334 80090194 24010008 */  li    $at, 8
/* B07338 80090198 15E10013 */  bne   $t7, $at, .L800901E8
/* B0733C 8009019C 3C014000 */   li    $at, 0x40000000 # 0.000000
/* B07340 800901A0 44813000 */  mtc1  $at, $f6
/* B07344 800901A4 C60A0068 */  lwc1  $f10, 0x68($s0)
/* B07348 800901A8 460A303C */  c.lt.s $f6, $f10
/* B0734C 800901AC 00000000 */  nop
/* B07350 800901B0 4500000D */  bc1f  .L800901E8
/* B07354 800901B4 00000000 */   nop
/* B07358 800901B8 8E18067C */  lw    $t8, 0x67c($s0)
/* B0735C 800901BC 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07360 800901C0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B07364 800901C4 0018C900 */  sll   $t9, $t8, 4
/* B07368 800901C8 07200007 */  bltz  $t9, .L800901E8
/* B0736C 800901CC 3C0A8012 */   lui   $t2, %hi(D_80125E58) # $t2, 0x8012
/* B07370 800901D0 8CA80004 */  lw    $t0, 4($a1)
/* B07374 800901D4 254A5E58 */  addiu $t2, %lo(D_80125E58) # addiu $t2, $t2, 0x5e58
/* B07378 800901D8 240B0009 */  li    $t3, 9
/* B0737C 800901DC 00084880 */  sll   $t1, $t0, 2
/* B07380 800901E0 012A1021 */  addu  $v0, $t1, $t2
/* B07384 800901E4 AC6B0000 */  sw    $t3, ($v1)
.L800901E8:
/* B07388 800901E8 3C0C8016 */  lui   $t4, %hi(D_80160004) # $t4, 0x8016
/* B0738C 800901EC 8D8C0004 */  lw    $t4, %lo(D_80160004)($t4)
/* B07390 800901F0 000C6880 */  sll   $t5, $t4, 2
/* B07394 800901F4 004D7021 */  addu  $t6, $v0, $t5
/* B07398 800901F8 8DCF0000 */  lw    $t7, ($t6)
/* B0739C 800901FC 10000037 */  b     .L800902DC
/* B073A0 80090200 ACCF0000 */   sw    $t7, ($a2)
.L80090204:
/* B073A4 80090204 14A1002C */  bne   $a1, $at, .L800902B8
/* B073A8 80090208 3C0B8016 */   lui   $t3, %hi(D_80160004) # $t3, 0x8016
/* B073AC 8009020C 9202015E */  lbu   $v0, 0x15e($s0)
/* B073B0 80090210 24010012 */  li    $at, 18
/* B073B4 80090214 8E030168 */  lw    $v1, 0x168($s0)
/* B073B8 80090218 10410003 */  beq   $v0, $at, .L80090228
/* B073BC 8009021C 3C058016 */   lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B073C0 80090220 14820010 */  bne   $a0, $v0, .L80090264
/* B073C4 80090224 00000000 */   nop
.L80090228:
/* B073C8 80090228 8202014E */  lb    $v0, 0x14e($s0)
/* B073CC 8009022C 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B073D0 80090230 8CB90004 */  lw    $t9, 4($a1)
/* B073D4 80090234 0002C100 */  sll   $t8, $v0, 4
/* B073D8 80090238 00781821 */  addu  $v1, $v1, $t8
/* B073DC 8009023C 13200018 */  beqz  $t9, .L800902A0
/* B073E0 80090240 28410002 */   slti  $at, $v0, 2
/* B073E4 80090244 10200016 */  beqz  $at, .L800902A0
/* B073E8 80090248 00000000 */   nop
/* B073EC 8009024C 90A80068 */  lbu   $t0, 0x68($a1)
/* B073F0 80090250 2401003B */  li    $at, 59
/* B073F4 80090254 11010012 */  beq   $t0, $at, .L800902A0
/* B073F8 80090258 00000000 */   nop
/* B073FC 8009025C 10000010 */  b     .L800902A0
/* B07400 80090260 24630040 */   addiu $v1, $v1, 0x40
.L80090264:
/* B07404 80090264 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07408 80090268 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B0740C 8009026C 8CA90004 */  lw    $t1, 4($a1)
/* B07410 80090270 1120000B */  beqz  $t1, .L800902A0
/* B07414 80090274 00000000 */   nop
/* B07418 80090278 10E20003 */  beq   $a3, $v0, .L80090288
/* B0741C 8009027C 24010011 */   li    $at, 17
/* B07420 80090280 14410007 */  bne   $v0, $at, .L800902A0
/* B07424 80090284 00000000 */   nop
.L80090288:
/* B07428 80090288 90AA0068 */  lbu   $t2, 0x68($a1)
/* B0742C 8009028C 2401003B */  li    $at, 59
/* B07430 80090290 11410003 */  beq   $t2, $at, .L800902A0
/* B07434 80090294 00000000 */   nop
/* B07438 80090298 3C038012 */  lui   $v1, %hi(D_80125D68) # $v1, 0x8012
/* B0743C 8009029C 24635D68 */  addiu $v1, %lo(D_80125D68) # addiu $v1, $v1, 0x5d68
.L800902A0:
/* B07440 800902A0 8D6B0004 */  lw    $t3, %lo(D_80160004)($t3)
/* B07444 800902A4 000B6080 */  sll   $t4, $t3, 2
/* B07448 800902A8 006C6821 */  addu  $t5, $v1, $t4
/* B0744C 800902AC 8DAE0000 */  lw    $t6, ($t5)
/* B07450 800902B0 1000000A */  b     .L800902DC
/* B07454 800902B4 ACCE0000 */   sw    $t6, ($a2)
.L800902B8:
/* B07458 800902B8 24010002 */  li    $at, 2
/* B0745C 800902BC 14A10007 */  bne   $a1, $at, .L800902DC
/* B07460 800902C0 3C188016 */   lui   $t8, %hi(D_80160004) # $t8, 0x8016
/* B07464 800902C4 8F180004 */  lw    $t8, %lo(D_80160004)($t8)
/* B07468 800902C8 8E0F016C */  lw    $t7, 0x16c($s0)
/* B0746C 800902CC 0018C880 */  sll   $t9, $t8, 2
/* B07470 800902D0 01F94021 */  addu  $t0, $t7, $t9
/* B07474 800902D4 8D090000 */  lw    $t1, ($t0)
/* B07478 800902D8 ACC90000 */  sw    $t1, ($a2)
.L800902DC:
/* B0747C 800902DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B07480 800902E0 8FB00020 */  lw    $s0, 0x20($sp)
/* B07484 800902E4 27BD0028 */  addiu $sp, $sp, 0x28
/* B07488 800902E8 03E00008 */  jr    $ra
/* B0748C 800902EC 00001025 */   move  $v0, $zero

