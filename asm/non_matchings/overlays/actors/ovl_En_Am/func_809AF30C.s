glabel func_809AF30C
/* 013EC 809AF30C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 013F0 809AF310 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 013F4 809AF314 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 013F8 809AF318 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 013FC 809AF31C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01400 809AF320 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01404 809AF324 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 01408 809AF328 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 0140C 809AF32C 84980158 */  lh      $t8, 0x0158($a0)           ## 00000158
/* 01410 809AF330 84860258 */  lh      $a2, 0x0258($a0)           ## 00000258
/* 01414 809AF334 2405200A */  addiu   $a1, $zero, 0x200A         ## $a1 = 0000200A
/* 01418 809AF338 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0141C 809AF33C 24C8F800 */  addiu   $t0, $a2, 0xF800           ## $t0 = FFFFF800
/* 01420 809AF340 14C0000A */  bne     $a2, $zero, .L809AF36C     
/* 01424 809AF344 468020A0 */  cvt.s.w $f2, $f4                   
/* 01428 809AF348 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0142C 809AF34C C4860150 */  lwc1    $f6, 0x0150($a0)           ## 00000150
/* 01430 809AF350 24198000 */  addiu   $t9, $zero, 0x8000         ## $t9 = FFFF8000
/* 01434 809AF354 46066032 */  c.eq.s  $f12, $f6                  
/* 01438 809AF358 00000000 */  nop
/* 0143C 809AF35C 4503006F */  bc1tl   .L809AF51C                 
/* 01440 809AF360 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
/* 01444 809AF364 1000006C */  beq     $zero, $zero, .L809AF518   
/* 01448 809AF368 A4990258 */  sh      $t9, 0x0258($a0)           ## 00000258
.L809AF36C:
/* 0144C 809AF36C A6080258 */  sh      $t0, 0x0258($s0)           ## 00000258
/* 01450 809AF370 E7A20030 */  swc1    $f2, 0x0030($sp)           
/* 01454 809AF374 A7A3002E */  sh      $v1, 0x002E($sp)           
/* 01458 809AF378 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0145C 809AF37C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01460 809AF380 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01464 809AF384 C6000150 */  lwc1    $f0, 0x0150($s0)           ## 00000150
/* 01468 809AF388 87A3002E */  lh      $v1, 0x002E($sp)           
/* 0146C 809AF38C C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 01470 809AF390 460C003C */  c.lt.s  $f0, $f12                  
/* 01474 809AF394 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01478 809AF398 45020008 */  bc1fl   .L809AF3BC                 
/* 0147C 809AF39C 920B0286 */  lbu     $t3, 0x0286($s0)           ## 00000286
/* 01480 809AF3A0 86090158 */  lh      $t1, 0x0158($s0)           ## 00000158
/* 01484 809AF3A4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01488 809AF3A8 01215021 */  addu    $t2, $t1, $at              
/* 0148C 809AF3AC 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01490 809AF3B0 00000000 */  nop
/* 01494 809AF3B4 468040A0 */  cvt.s.w $f2, $f8                   
/* 01498 809AF3B8 920B0286 */  lbu     $t3, 0x0286($s0)           ## 00000286
.L809AF3BC:
/* 0149C 809AF3BC 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 014A0 809AF3C0 51800011 */  beql    $t4, $zero, .L809AF408     
/* 014A4 809AF3C4 46006032 */  c.eq.s  $f12, $f0                  
/* 014A8 809AF3C8 8E050280 */  lw      $a1, 0x0280($s0)           ## 00000280
/* 014AC 809AF3CC E7A20030 */  swc1    $f2, 0x0030($sp)           
/* 014B0 809AF3D0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 014B4 809AF3D4 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 014B8 809AF3D8 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 014BC 809AF3DC C7A20030 */  lwc1    $f2, 0x0030($sp)           
/* 014C0 809AF3E0 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 014C4 809AF3E4 46805420 */  cvt.s.w $f16, $f10                 
/* 014C8 809AF3E8 C6000150 */  lwc1    $f0, 0x0150($s0)           ## 00000150
/* 014CC 809AF3EC 46028481 */  sub.s   $f18, $f16, $f2            
/* 014D0 809AF3F0 4600910D */  trunc.w.s $f4, $f18                  
/* 014D4 809AF3F4 44032000 */  mfc1    $v1, $f4                   
/* 014D8 809AF3F8 00000000 */  nop
/* 014DC 809AF3FC 00031C00 */  sll     $v1, $v1, 16               
/* 014E0 809AF400 00031C03 */  sra     $v1, $v1, 16               
/* 014E4 809AF404 46006032 */  c.eq.s  $f12, $f0                  
.L809AF408:
/* 014E8 809AF408 00000000 */  nop
/* 014EC 809AF40C 4503002E */  bc1tl   .L809AF4C8                 
/* 014F0 809AF410 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 014F4 809AF414 86060258 */  lh      $a2, 0x0258($s0)           ## 00000258
/* 014F8 809AF418 50C0002B */  beql    $a2, $zero, .L809AF4C8     
/* 014FC 809AF41C 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 01500 809AF420 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 01504 809AF424 00062400 */  sll     $a0, $a2, 16               
/* 01508 809AF428 00042403 */  sra     $a0, $a0, 16               
/* 0150C 809AF42C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01510 809AF430 51E00025 */  beql    $t7, $zero, .L809AF4C8     
/* 01514 809AF434 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 01518 809AF438 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0151C 809AF43C A7A3002E */  sh      $v1, 0x002E($sp)           
/* 01520 809AF440 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01524 809AF444 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01528 809AF448 C6060150 */  lwc1    $f6, 0x0150($s0)           ## 00000150
/* 0152C 809AF44C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01530 809AF450 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 01534 809AF454 46083282 */  mul.s   $f10, $f6, $f8             
/* 01538 809AF458 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 0153C 809AF45C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01540 809AF460 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01544 809AF464 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01548 809AF468 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0154C 809AF46C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01550 809AF470 46128100 */  add.s   $f4, $f16, $f18            
/* 01554 809AF474 4600218D */  trunc.w.s $f6, $f4                   
/* 01558 809AF478 44073000 */  mfc1    $a3, $f6                   
/* 0155C 809AF47C 00000000 */  nop
/* 01560 809AF480 00073C00 */  sll     $a3, $a3, 16               
/* 01564 809AF484 0C010D76 */  jal     func_800435D8              
/* 01568 809AF488 00073C03 */  sra     $a3, $a3, 16               
/* 0156C 809AF48C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01570 809AF490 1040000C */  beq     $v0, $zero, .L809AF4C4     
/* 01574 809AF494 87A3002E */  lh      $v1, 0x002E($sp)           
/* 01578 809AF498 92080286 */  lbu     $t0, 0x0286($s0)           ## 00000286
/* 0157C 809AF49C 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 01580 809AF4A0 51200012 */  beql    $t1, $zero, .L809AF4EC     
/* 01584 809AF4A4 860C0158 */  lh      $t4, 0x0158($s0)           ## 00000158
/* 01588 809AF4A8 04600003 */  bltz    $v1, .L809AF4B8            
/* 0158C 809AF4AC 00031023 */  subu    $v0, $zero, $v1            
/* 01590 809AF4B0 10000001 */  beq     $zero, $zero, .L809AF4B8   
/* 01594 809AF4B4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809AF4B8:
/* 01598 809AF4B8 28412001 */  slti    $at, $v0, 0x2001           
/* 0159C 809AF4BC 5020000B */  beql    $at, $zero, .L809AF4EC     
/* 015A0 809AF4C0 860C0158 */  lh      $t4, 0x0158($s0)           ## 00000158
.L809AF4C4:
/* 015A4 809AF4C4 8FA20034 */  lw      $v0, 0x0034($sp)           
.L809AF4C8:
/* 015A8 809AF4C8 A6000258 */  sh      $zero, 0x0258($s0)         ## 00000258
/* 015AC 809AF4CC 2401FEAE */  addiu   $at, $zero, 0xFEAE         ## $at = FFFFFEAE
/* 015B0 809AF4D0 8C4A0680 */  lw      $t2, 0x0680($v0)           ## 00000680
/* 015B4 809AF4D4 E44C0068 */  swc1    $f12, 0x0068($v0)          ## 00000068
/* 015B8 809AF4D8 01415824 */  and     $t3, $t2, $at              
/* 015BC 809AF4DC AC4B0680 */  sw      $t3, 0x0680($v0)           ## 00000680
/* 015C0 809AF4E0 E60C0150 */  swc1    $f12, 0x0150($s0)          ## 00000150
/* 015C4 809AF4E4 E60C0154 */  swc1    $f12, 0x0154($s0)          ## 00000154
/* 015C8 809AF4E8 860C0158 */  lh      $t4, 0x0158($s0)           ## 00000158
.L809AF4EC:
/* 015CC 809AF4EC 86040258 */  lh      $a0, 0x0258($s0)           ## 00000258
/* 015D0 809AF4F0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 015D4 809AF4F4 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 015D8 809AF4F8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 015DC 809AF4FC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 015E0 809AF500 C6080150 */  lwc1    $f8, 0x0150($s0)           ## 00000150
/* 015E4 809AF504 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 015E8 809AF508 460A4402 */  mul.s   $f16, $f8, $f10            
/* 015EC 809AF50C 00000000 */  nop
/* 015F0 809AF510 46100482 */  mul.s   $f18, $f0, $f16            
/* 015F4 809AF514 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
.L809AF518:
/* 015F8 809AF518 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L809AF51C:
/* 015FC 809AF51C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01600 809AF520 31AE0002 */  andi    $t6, $t5, 0x0002           ## $t6 = 00000000
/* 01604 809AF524 51C00006 */  beql    $t6, $zero, .L809AF540     
/* 01608 809AF528 E60C0154 */  swc1    $f12, 0x0154($s0)          ## 00000154
/* 0160C 809AF52C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01610 809AF530 24052835 */  addiu   $a1, $zero, 0x2835         ## $a1 = 00002835
/* 01614 809AF534 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01618 809AF538 00000000 */  nop
/* 0161C 809AF53C E60C0154 */  swc1    $f12, 0x0154($s0)          ## 00000154
.L809AF540:
/* 01620 809AF540 E60C0150 */  swc1    $f12, 0x0150($s0)          ## 00000150
/* 01624 809AF544 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01628 809AF548 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0162C 809AF54C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01630 809AF550 03E00008 */  jr      $ra                        
/* 01634 809AF554 00000000 */  nop
