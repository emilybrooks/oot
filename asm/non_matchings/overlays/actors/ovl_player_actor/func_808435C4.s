glabel func_808435C4
/* 113B4 808435C4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 113B8 808435C8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 113BC 808435CC AFB10028 */  sw      $s1, 0x0028($sp)
/* 113C0 808435D0 AFB00024 */  sw      $s0, 0x0024($sp)
/* 113C4 808435D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 113C8 808435D8 0C20DC87 */  jal     func_8083721C
/* 113CC 808435DC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 113D0 808435E0 820E084F */  lb      $t6, 0x084F($s0)           ## 0000084F
/* 113D4 808435E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 113D8 808435E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 113DC 808435EC 15C00018 */  bne     $t6, $zero, .L80843650
/* 113E0 808435F0 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 113E4 808435F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 113E8 808435F8 0C20D99C */  jal     func_80836670
/* 113EC 808435FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 113F0 80843600 3C018085 */  lui     $at, %hi(D_808535E0)       ## $at = 80850000
/* 113F4 80843604 AC2235E0 */  sw      $v0, %lo(D_808535E0)($at)
/* 113F8 80843608 8E0F082C */  lw      $t7, 0x082C($s0)           ## 0000082C
/* 113FC 8084360C 3C188083 */  lui     $t8, %hi(func_80834B5C)    ## $t8 = 80830000
/* 11400 80843610 27184B5C */  addiu   $t8, $t8, %lo(func_80834B5C) ## $t8 = 80834B5C
/* 11404 80843614 11F80006 */  beq     $t7, $t8, .L80843630
/* 11408 80843618 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1140C 8084361C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 11410 80843620 260606C8 */  addiu   $a2, $s0, 0x06C8           ## $a2 = 000006C8
/* 11414 80843624 0C20DD28 */  jal     func_808374A0
/* 11418 80843628 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 1141C 8084362C 18400032 */  blez    $v0, .L808436F8
.L80843630:
/* 11420 80843630 3C068084 */  lui     $a2, %hi(func_80840450)    ## $a2 = 80840000
/* 11424 80843634 24C60450 */  addiu   $a2, $a2, %lo(func_80840450) ## $a2 = 80840450
/* 11428 80843638 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1142C 8084363C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 11430 80843640 0C20D716 */  jal     func_80835C58
/* 11434 80843644 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 11438 80843648 1000002C */  beq     $zero, $zero, .L808436FC
/* 1143C 8084364C 8FBF002C */  lw      $ra, 0x002C($sp)
.L80843650:
/* 11440 80843650 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 11444 80843654 0C20DD28 */  jal     func_808374A0
/* 11448 80843658 AFA60030 */  sw      $a2, 0x0030($sp)
/* 1144C 8084365C 50400027 */  beql    $v0, $zero, .L808436FC
/* 11450 80843660 8FBF002C */  lw      $ra, 0x002C($sp)
/* 11454 80843664 1C400004 */  bgtz    $v0, .L80843678
/* 11458 80843668 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1145C 8084366C 0C028EF0 */  jal     func_800A3BC0
/* 11460 80843670 8FA50030 */  lw      $a1, 0x0030($sp)
/* 11464 80843674 10400020 */  beq     $v0, $zero, .L808436F8
.L80843678:
/* 11468 80843678 3C068084 */  lui     $a2, %hi(func_80843188)    ## $a2 = 80840000
/* 1146C 8084367C 24C63188 */  addiu   $a2, $a2, %lo(func_80843188) ## $a2 = 80843188
/* 11470 80843680 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 11474 80843684 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 11478 80843688 0C20D716 */  jal     func_80835C58
/* 1147C 8084368C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 11480 80843690 8E19067C */  lw      $t9, 0x067C($s0)           ## 0000067C
/* 11484 80843694 3C010040 */  lui     $at, 0x0040                ## $at = 00400000
/* 11488 80843698 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1148C 8084369C 03214025 */  or      $t0, $t9, $at              ## $t0 = 00400000
/* 11490 808436A0 0C023A90 */  jal     func_8008EA40
/* 11494 808436A4 AE08067C */  sw      $t0, 0x067C($s0)           ## 0000067C
/* 11498 808436A8 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
/* 1149C 808436AC 3C068085 */  lui     $a2, %hi(D_80853AF4)       ## $a2 = 80850000
/* 114A0 808436B0 00095080 */  sll     $t2, $t1,  2
/* 114A4 808436B4 00CA3021 */  addu    $a2, $a2, $t2
/* 114A8 808436B8 8CC43AF4 */  lw      $a0, %lo(D_80853AF4)($a2)
/* 114AC 808436BC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 114B0 808436C0 AFA40038 */  sw      $a0, 0x0038($sp)
/* 114B4 808436C4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 114B8 808436C8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 114BC 808436CC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 114C0 808436D0 46802020 */  cvt.s.w $f0, $f4
/* 114C4 808436D4 8FA60038 */  lw      $a2, 0x0038($sp)
/* 114C8 808436D8 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 114CC 808436DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 114D0 808436E0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 114D4 808436E4 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 114D8 808436E8 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 114DC 808436EC E7A00014 */  swc1    $f0, 0x0014($sp)
/* 114E0 808436F0 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 114E4 808436F4 E7A6001C */  swc1    $f6, 0x001C($sp)
.L808436F8:
/* 114E8 808436F8 8FBF002C */  lw      $ra, 0x002C($sp)
.L808436FC:
/* 114EC 808436FC 8FB00024 */  lw      $s0, 0x0024($sp)
/* 114F0 80843700 8FB10028 */  lw      $s1, 0x0028($sp)
/* 114F4 80843704 03E00008 */  jr      $ra
/* 114F8 80843708 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
