glabel func_80B58624
/* 05274 80B58624 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 05278 80B58628 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0527C 80B5862C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 05280 80B58630 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05284 80B58634 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 05288 80B58638 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0528C 80B5863C 844E1478 */  lh      $t6, 0x1478($v0)           ## 80161478
/* 05290 80B58640 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 05294 80B58644 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 05298 80B58648 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0529C 80B5864C C48403CC */  lwc1    $f4, 0x03CC($a0)           ## 000003CC
/* 052A0 80B58650 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 052A4 80B58654 46803220 */  cvt.s.w $f8, $f6                   
/* 052A8 80B58658 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 052AC 80B5865C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 052B0 80B58660 248303CC */  addiu   $v1, $a0, 0x03CC           ## $v1 = 000003CC
/* 052B4 80B58664 460A4400 */  add.s   $f16, $f8, $f10            
/* 052B8 80B58668 46102032 */  c.eq.s  $f4, $f16                  
/* 052BC 80B5866C 00000000 */  nop
/* 052C0 80B58670 45020011 */  bc1fl   .L80B586B8                 
/* 052C4 80B58674 844F147A */  lh      $t7, 0x147A($v0)           ## 8016147A
/* 052C8 80B58678 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 052CC 80B5867C C4720000 */  lwc1    $f18, 0x0000($v1)          ## 000003CC
/* 052D0 80B58680 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 052D4 80B58684 24A58050 */  addiu   $a1, $a1, 0x8050           ## $a1 = 06008050
/* 052D8 80B58688 460C9180 */  add.s   $f6, $f18, $f12            
/* 052DC 80B5868C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 052E0 80B58690 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 052E4 80B58694 E4660000 */  swc1    $f6, 0x0000($v1)           ## 000003CC
/* 052E8 80B58698 0C2D5385 */  jal     func_80B54E14              
/* 052EC 80B5869C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 052F0 80B586A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 052F4 80B586A4 0C2D5DCB */  jal     func_80B5772C              
/* 052F8 80B586A8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 052FC 80B586AC 10000063 */  beq     $zero, $zero, .L80B5883C   
/* 05300 80B586B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 05304 80B586B4 844F147A */  lh      $t7, 0x147A($v0)           ## 0000147A
.L80B586B8:
/* 05308 80B586B8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0530C 80B586BC 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 05310 80B586C0 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 05314 80B586C4 260303CC */  addiu   $v1, $s0, 0x03CC           ## $v1 = 000003CC
/* 05318 80B586C8 C4600000 */  lwc1    $f0, 0x0000($v1)           ## 000003CC
/* 0531C 80B586CC 468042A0 */  cvt.s.w $f10, $f8                  
/* 05320 80B586D0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 05324 80B586D4 46045080 */  add.s   $f2, $f10, $f4             
/* 05328 80B586D8 46020032 */  c.eq.s  $f0, $f2                   
/* 0532C 80B586DC 00000000 */  nop
/* 05330 80B586E0 45020015 */  bc1fl   .L80B58738                 
/* 05334 80B586E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 05338 80B586E8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0533C 80B586EC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 05340 80B586F0 241871AC */  addiu   $t8, $zero, 0x71AC         ## $t8 = 000071AC
/* 05344 80B586F4 3305FFFF */  andi    $a1, $t8, 0xFFFF           ## $a1 = 000071AC
/* 05348 80B586F8 460C0400 */  add.s   $f16, $f0, $f12            
/* 0534C 80B586FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05350 80B58700 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05354 80B58704 E4700000 */  swc1    $f16, 0x0000($v1)          ## 000003CC
/* 05358 80B58708 0C042DA0 */  jal     func_8010B680              
/* 0535C 80B5870C A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 05360 80B58710 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 05364 80B58714 24A53FF8 */  addiu   $a1, $a1, 0x3FF8           ## $a1 = 06003FF8
/* 05368 80B58718 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0536C 80B5871C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05370 80B58720 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 05374 80B58724 0C2D5385 */  jal     func_80B54E14              
/* 05378 80B58728 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0537C 80B5872C 10000043 */  beq     $zero, $zero, .L80B5883C   
/* 05380 80B58730 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 05384 80B58734 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.00
.L80B58738:
/* 05388 80B58738 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 0538C 80B5873C 460C1480 */  add.s   $f18, $f2, $f12            
/* 05390 80B58740 46120032 */  c.eq.s  $f0, $f18                  
/* 05394 80B58744 00000000 */  nop
/* 05398 80B58748 4502001D */  bc1fl   .L80B587C0                 
/* 0539C 80B5874C 8459147C */  lh      $t9, 0x147C($v0)           ## 0000147C
/* 053A0 80B58750 0C042F6F */  jal     func_8010BDBC              
/* 053A4 80B58754 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 053A8 80B58758 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 053AC 80B5875C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 053B0 80B58760 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 053B4 80B58764 14410034 */  bne     $v0, $at, .L80B58838       
/* 053B8 80B58768 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 053BC 80B5876C C4660000 */  lwc1    $f6, 0x0000($v1)           ## 00000000
/* 053C0 80B58770 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053C4 80B58774 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 053C8 80B58778 460C3200 */  add.s   $f8, $f6, $f12             
/* 053CC 80B5877C 0C2D4D5F */  jal     func_80B5357C              
/* 053D0 80B58780 E4680000 */  swc1    $f8, 0x0000($v1)           ## 00000000
/* 053D4 80B58784 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053D8 80B58788 0C2D4D5F */  jal     func_80B5357C              
/* 053DC 80B5878C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 053E0 80B58790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053E4 80B58794 0C2D4D5F */  jal     func_80B5357C              
/* 053E8 80B58798 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 053EC 80B5879C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053F0 80B587A0 0C2D4D5F */  jal     func_80B5357C              
/* 053F4 80B587A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 053F8 80B587A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053FC 80B587AC 0C2D4D5F */  jal     func_80B5357C              
/* 05400 80B587B0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05404 80B587B4 10000021 */  beq     $zero, $zero, .L80B5883C   
/* 05408 80B587B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0540C 80B587BC 8459147C */  lh      $t9, 0x147C($v0)           ## 0000147C
.L80B587C0:
/* 05410 80B587C0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 05414 80B587C4 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 05418 80B587C8 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 0541C 80B587CC 2408001C */  addiu   $t0, $zero, 0x001C         ## $t0 = 0000001C
/* 05420 80B587D0 46805120 */  cvt.s.w $f4, $f10                  
/* 05424 80B587D4 46102480 */  add.s   $f18, $f4, $f16            
/* 05428 80B587D8 4600903E */  c.le.s  $f18, $f0                  
/* 0542C 80B587DC 00000000 */  nop
/* 05430 80B587E0 45020014 */  bc1fl   .L80B58834                 
/* 05434 80B587E4 460C0200 */  add.s   $f8, $f0, $f12             
/* 05438 80B587E8 AE08024C */  sw      $t0, 0x024C($s0)           ## 0000024C
/* 0543C 80B587EC 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 05440 80B587F0 00095080 */  sll     $t2, $t1,  2               
/* 05444 80B587F4 022A5821 */  addu    $t3, $s1, $t2              
/* 05448 80B587F8 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 0544C 80B587FC 0C016C69 */  jal     func_8005B1A4              
/* 05450 80B58800 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 05454 80B58804 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 05458 80B58808 24A59FBC */  addiu   $a1, $a1, 0x9FBC           ## $a1 = 06009FBC
/* 0545C 80B5880C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05460 80B58810 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05464 80B58814 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 05468 80B58818 0C2D5385 */  jal     func_80B54E14              
/* 0546C 80B5881C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05470 80B58820 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 05474 80B58824 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 05478 80B58828 10000003 */  beq     $zero, $zero, .L80B58838   
/* 0547C 80B5882C E4660000 */  swc1    $f6, 0x0000($v1)           ## 00000000
/* 05480 80B58830 460C0200 */  add.s   $f8, $f0, $f12             
.L80B58834:
/* 05484 80B58834 E4680000 */  swc1    $f8, 0x0000($v1)           ## 00000000
.L80B58838:
/* 05488 80B58838 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B5883C:
/* 0548C 80B5883C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 05490 80B58840 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 05494 80B58844 03E00008 */  jr      $ra                        
/* 05498 80B58848 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
