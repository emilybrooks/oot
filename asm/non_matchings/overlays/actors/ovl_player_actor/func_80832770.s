glabel func_80832770
/* 00560 80832770 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00564 80832774 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00568 80832778 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0056C 8083277C 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 00570 80832780 0C20C9D7 */  jal     func_8083275C              
/* 00574 80832784 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00578 80832788 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0057C 8083278C 0C00BDF7 */  jal     func_8002F7DC              
/* 00580 80832790 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00000000
/* 00584 80832794 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00588 80832798 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0058C 8083279C 03E00008 */  jr      $ra                        
/* 00590 808327A0 00000000 */  nop
