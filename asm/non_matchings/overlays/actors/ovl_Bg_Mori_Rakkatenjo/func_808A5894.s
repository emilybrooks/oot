glabel func_808A5894
/* 00324 808A5894 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00328 808A5898 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0032C 808A589C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00330 808A58A0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00334 808A58A4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00338 808A58A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0033C 808A58AC 00A12021 */  addu    $a0, $a1, $at              
/* 00340 808A58B0 0C026062 */  jal     Object_IsLoaded
              
/* 00344 808A58B4 81C50174 */  lb      $a1, 0x0174($t6)           ## 00000174
/* 00348 808A58B8 50400008 */  beql    $v0, $zero, .L808A58DC     
/* 0034C 808A58BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00350 808A58C0 0C22963A */  jal     func_808A58E8              
/* 00354 808A58C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00358 808A58C8 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 0035C 808A58CC 3C0F808A */  lui     $t7, %hi(func_808A5D60)    ## $t7 = 808A0000
/* 00360 808A58D0 25EF5D60 */  addiu   $t7, $t7, %lo(func_808A5D60) ## $t7 = 808A5D60
/* 00364 808A58D4 AF0F0134 */  sw      $t7, 0x0134($t8)           ## 00000134
/* 00368 808A58D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A58DC:
/* 0036C 808A58DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00370 808A58E0 03E00008 */  jr      $ra                        
/* 00374 808A58E4 00000000 */  nop
