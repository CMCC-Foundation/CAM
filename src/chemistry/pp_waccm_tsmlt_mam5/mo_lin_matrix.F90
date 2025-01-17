      module mo_lin_matrix
      use chem_mods, only: veclen
      private
      public :: linmat
      contains
      subroutine linmat01( avec_len, mat, y, rxt, het_rates )
!----------------------------------------------
! ... linear matrix entries for implicit species
!----------------------------------------------
      use chem_mods, only : gas_pcnst, rxntot, nzcnt
      use shr_kind_mod, only : r8 => shr_kind_r8
      implicit none
!----------------------------------------------
! ... dummy arguments
!----------------------------------------------
      integer, intent(in) :: avec_len
      real(r8), intent(in) :: y(veclen,gas_pcnst)
      real(r8), intent(in) :: rxt(veclen,rxntot)
      real(r8), intent(in) :: het_rates(veclen,gas_pcnst)
      real(r8), intent(inout) :: mat(veclen,nzcnt)
!----------------------------------------------
! ... local variables
!----------------------------------------------
      integer :: k
      do k = 1,avec_len
         mat(k,642) = -( rxt(k,20) + het_rates(k,1) )
         mat(k,687) = -( rxt(k,21) + het_rates(k,2) )
         mat(k,1) = -( het_rates(k,3) )
         mat(k,2) = -( het_rates(k,4) )
         mat(k,3) = -( het_rates(k,5) )
         mat(k,974) = -( het_rates(k,6) )
         mat(k,160) = -( het_rates(k,7) )
         mat(k,415) = -( rxt(k,22) + het_rates(k,8) )
         mat(k,166) = -( rxt(k,23) + het_rates(k,9) )
         mat(k,379) = -( rxt(k,24) + het_rates(k,10) )
         mat(k,465) = -( rxt(k,25) + het_rates(k,11) )
         mat(k,416) = .500_r8*rxt(k,22)
         mat(k,167) = rxt(k,23)
         mat(k,663) = .200_r8*rxt(k,71)
         mat(k,727) = .060_r8*rxt(k,73)
         mat(k,279) = -( rxt(k,26) + het_rates(k,12) )
         mat(k,662) = .200_r8*rxt(k,71)
         mat(k,725) = .200_r8*rxt(k,73)
         mat(k,598) = -( rxt(k,27) + het_rates(k,13) )
         mat(k,222) = rxt(k,47)
         mat(k,1086) = rxt(k,57)
         mat(k,664) = .200_r8*rxt(k,71)
         mat(k,728) = .150_r8*rxt(k,73)
         mat(k,329) = -( rxt(k,28) + het_rates(k,14) )
         mat(k,726) = .210_r8*rxt(k,73)
         mat(k,226) = -( het_rates(k,15) )
         mat(k,355) = -( het_rates(k,16) )
         mat(k,1511) = -( het_rates(k,17) )
         mat(k,230) = rxt(k,75)
         mat(k,1563) = rxt(k,76)
         mat(k,568) = rxt(k,78)
         mat(k,141) = rxt(k,80)
         mat(k,147) = rxt(k,81)
         mat(k,481) = 2.000_r8*rxt(k,87)
         mat(k,604) = rxt(k,88)
         mat(k,387) = 3.000_r8*rxt(k,91)
         mat(k,109) = 2.000_r8*rxt(k,99)
         mat(k,829) = rxt(k,100)
         mat(k,789) = rxt(k,106)
         mat(k,229) = -( rxt(k,75) + het_rates(k,18) )
         mat(k,1565) = -( rxt(k,76) + het_rates(k,19) )
         mat(k,569) = rxt(k,77)
         mat(k,566) = -( rxt(k,77) + rxt(k,78) + rxt(k,564) + rxt(k,567) + rxt(k,572) &
                 + het_rates(k,20) )
         mat(k,4) = -( het_rates(k,21) )
         mat(k,235) = -( het_rates(k,22) )
         mat(k,344) = rxt(k,29)
         mat(k,345) = -( rxt(k,29) + het_rates(k,23) )
         mat(k,285) = -( het_rates(k,24) )
         mat(k,550) = -( het_rates(k,25) )
         mat(k,265) = -( het_rates(k,26) )
         mat(k,350) = -( rxt(k,30) + het_rates(k,27) )
         mat(k,298) = -( het_rates(k,28) )
         mat(k,1133) = -( het_rates(k,29) )
         mat(k,1370) = .700_r8*rxt(k,56)
         mat(k,409) = -( rxt(k,31) + het_rates(k,30) )
         mat(k,304) = -( het_rates(k,31) )
         mat(k,269) = -( rxt(k,32) + het_rates(k,32) )
         mat(k,101) = -( rxt(k,79) + het_rates(k,33) )
         mat(k,139) = -( rxt(k,80) + het_rates(k,34) )
         mat(k,144) = -( rxt(k,81) + het_rates(k,35) )
         mat(k,111) = -( rxt(k,82) + het_rates(k,36) )
         mat(k,149) = -( rxt(k,83) + het_rates(k,37) )
         mat(k,115) = -( rxt(k,84) + het_rates(k,38) )
         mat(k,154) = -( rxt(k,85) + het_rates(k,39) )
         mat(k,119) = -( rxt(k,86) + het_rates(k,40) )
         mat(k,479) = -( rxt(k,87) + het_rates(k,41) )
         mat(k,1987) = -( rxt(k,33) + rxt(k,34) + het_rates(k,42) )
         mat(k,650) = .100_r8*rxt(k,20)
         mat(k,695) = .100_r8*rxt(k,21)
         mat(k,456) = rxt(k,39)
         mat(k,2252) = .180_r8*rxt(k,40)
         mat(k,1169) = rxt(k,44)
         mat(k,1203) = .330_r8*rxt(k,46)
         mat(k,1212) = rxt(k,48)
         mat(k,716) = rxt(k,50)
         mat(k,1276) = 1.340_r8*rxt(k,51)
         mat(k,897) = rxt(k,58)
         mat(k,547) = rxt(k,63)
         mat(k,401) = rxt(k,64)
         mat(k,660) = .375_r8*rxt(k,66)
         mat(k,491) = .400_r8*rxt(k,68)
         mat(k,1125) = .680_r8*rxt(k,70)
         mat(k,445) = rxt(k,308)
         mat(k,463) = 2.000_r8*rxt(k,338)
         mat(k,602) = -( rxt(k,88) + het_rates(k,43) )
         mat(k,123) = -( rxt(k,89) + het_rates(k,44) )
         mat(k,1151) = -( rxt(k,35) + het_rates(k,45) )
         mat(k,646) = .400_r8*rxt(k,20)
         mat(k,692) = .400_r8*rxt(k,21)
         mat(k,352) = rxt(k,30)
         mat(k,1192) = .330_r8*rxt(k,46)
         mat(k,323) = rxt(k,54)
         mat(k,544) = rxt(k,63)
         mat(k,371) = -( rxt(k,90) + het_rates(k,46) )
         mat(k,104) = -( het_rates(k,47) )
         mat(k,1080) = -( rxt(k,36) + het_rates(k,48) )
         mat(k,645) = .250_r8*rxt(k,20)
         mat(k,691) = .250_r8*rxt(k,21)
         mat(k,411) = .820_r8*rxt(k,31)
         mat(k,1191) = .170_r8*rxt(k,46)
         mat(k,653) = .300_r8*rxt(k,66)
         mat(k,489) = .050_r8*rxt(k,68)
         mat(k,1118) = .500_r8*rxt(k,70)
         mat(k,1281) = -( rxt(k,37) + het_rates(k,49) )
         mat(k,382) = .180_r8*rxt(k,24)
         mat(k,331) = rxt(k,28)
         mat(k,672) = .400_r8*rxt(k,71)
         mat(k,736) = .540_r8*rxt(k,73)
         mat(k,424) = .510_r8*rxt(k,74)
         mat(k,705) = -( het_rates(k,50) )
         mat(k,620) = -( rxt(k,38) + het_rates(k,51) )
         mat(k,824) = -( het_rates(k,52) )
         mat(k,454) = -( rxt(k,39) + het_rates(k,53) )
         mat(k,2259) = -( rxt(k,40) + rxt(k,41) + het_rates(k,54) )
         mat(k,385) = -( rxt(k,91) + het_rates(k,55) )
         mat(k,2168) = -( het_rates(k,56) )
         mat(k,231) = rxt(k,75)
         mat(k,103) = 4.000_r8*rxt(k,79)
         mat(k,143) = rxt(k,80)
         mat(k,114) = 2.000_r8*rxt(k,82)
         mat(k,153) = 2.000_r8*rxt(k,83)
         mat(k,118) = 2.000_r8*rxt(k,84)
         mat(k,158) = rxt(k,85)
         mat(k,122) = 2.000_r8*rxt(k,86)
         mat(k,125) = 3.000_r8*rxt(k,89)
         mat(k,375) = rxt(k,90)
         mat(k,176) = 2.000_r8*rxt(k,92)
         mat(k,97) = 2.000_r8*rxt(k,93)
         mat(k,1602) = rxt(k,94)
         mat(k,963) = rxt(k,95)
         mat(k,249) = rxt(k,98)
         mat(k,245) = rxt(k,101)
         mat(k,255) = rxt(k,102)
         mat(k,296) = rxt(k,103)
         mat(k,1506) = rxt(k,104)
         mat(k,842) = rxt(k,107)
         mat(k,175) = -( rxt(k,92) + het_rates(k,57) )
         mat(k,95) = -( rxt(k,93) + rxt(k,249) + het_rates(k,58) )
         mat(k,1592) = -( rxt(k,94) + het_rates(k,59) )
         mat(k,957) = rxt(k,96)
         mat(k,337) = rxt(k,108)
         mat(k,96) = 2.000_r8*rxt(k,249)
         mat(k,955) = -( rxt(k,95) + rxt(k,96) + rxt(k,566) + rxt(k,571) + rxt(k,577) &
                 + het_rates(k,60) )
         mat(k,5) = -( het_rates(k,61) )
         mat(k,1160) = -( het_rates(k,62) )
         mat(k,168) = 1.500_r8*rxt(k,23)
         mat(k,381) = .450_r8*rxt(k,24)
         mat(k,600) = .600_r8*rxt(k,27)
         mat(k,330) = rxt(k,28)
         mat(k,1975) = rxt(k,33) + rxt(k,34)
         mat(k,1152) = rxt(k,35)
         mat(k,1280) = rxt(k,37)
         mat(k,2240) = .380_r8*rxt(k,40)
         mat(k,1449) = rxt(k,42) + rxt(k,110)
         mat(k,1165) = rxt(k,44)
         mat(k,1055) = 2.000_r8*rxt(k,45)
         mat(k,1193) = .330_r8*rxt(k,46)
         mat(k,1268) = 1.340_r8*rxt(k,52)
         mat(k,1372) = .700_r8*rxt(k,56)
         mat(k,200) = 1.500_r8*rxt(k,65)
         mat(k,655) = .250_r8*rxt(k,66)
         mat(k,1075) = rxt(k,69)
         mat(k,1120) = 1.700_r8*rxt(k,70)
         mat(k,366) = rxt(k,137)
         mat(k,1450) = -( rxt(k,42) + rxt(k,110) + het_rates(k,63) )
         mat(k,622) = rxt(k,38)
         mat(k,2241) = .440_r8*rxt(k,40)
         mat(k,536) = .400_r8*rxt(k,61)
         mat(k,658) = rxt(k,66)
         mat(k,1123) = .800_r8*rxt(k,70)
         mat(k,238) = -( rxt(k,97) + het_rates(k,64) )
         mat(k,140) = rxt(k,80)
         mat(k,145) = rxt(k,81)
         mat(k,150) = rxt(k,83)
         mat(k,116) = 2.000_r8*rxt(k,84)
         mat(k,155) = 2.000_r8*rxt(k,85)
         mat(k,120) = rxt(k,86)
         mat(k,108) = 2.000_r8*rxt(k,99)
         mat(k,250) = rxt(k,102)
         mat(k,291) = rxt(k,103)
         mat(k,246) = -( rxt(k,98) + het_rates(k,65) )
         mat(k,112) = rxt(k,82)
         mat(k,151) = rxt(k,83)
         mat(k,242) = rxt(k,101)
         mat(k,194) = -( het_rates(k,66) )
         mat(k,310) = -( het_rates(k,67) )
         mat(k,6) = -( het_rates(k,68) )
         mat(k,7) = -( het_rates(k,69) )
         mat(k,8) = -( het_rates(k,70) )
         mat(k,9) = -( rxt(k,594) + het_rates(k,71) )
         mat(k,127) = -( rxt(k,43) + het_rates(k,72) )
         mat(k,925) = -( het_rates(k,73) )
         mat(k,146) = rxt(k,81)
         mat(k,156) = rxt(k,85)
         mat(k,239) = 2.000_r8*rxt(k,97)
         mat(k,247) = rxt(k,98)
         mat(k,283) = rxt(k,105)
         mat(k,1166) = -( rxt(k,44) + het_rates(k,74) )
         mat(k,1194) = .330_r8*rxt(k,46)
         mat(k,656) = .250_r8*rxt(k,66)
      end do
      end subroutine linmat01
      subroutine linmat02( avec_len, mat, y, rxt, het_rates )
!----------------------------------------------
! ... linear matrix entries for implicit species
!----------------------------------------------
      use chem_mods, only : gas_pcnst, rxntot, nzcnt
      use shr_kind_mod, only : r8 => shr_kind_r8
      implicit none
!----------------------------------------------
! ... dummy arguments
!----------------------------------------------
      integer, intent(in) :: avec_len
      real(r8), intent(in) :: y(veclen,gas_pcnst)
      real(r8), intent(in) :: rxt(veclen,rxntot)
      real(r8), intent(in) :: het_rates(veclen,gas_pcnst)
      real(r8), intent(inout) :: mat(veclen,nzcnt)
!----------------------------------------------
! ... local variables
!----------------------------------------------
      integer :: k
      do k = 1,avec_len
         mat(k,1054) = -( rxt(k,45) + rxt(k,520) + het_rates(k,75) )
         mat(k,418) = rxt(k,22)
         mat(k,380) = .130_r8*rxt(k,24)
         mat(k,341) = .700_r8*rxt(k,62)
         mat(k,670) = .600_r8*rxt(k,71)
         mat(k,734) = .340_r8*rxt(k,73)
         mat(k,423) = .170_r8*rxt(k,74)
         mat(k,2121) = -( het_rates(k,76) )
         mat(k,2443) = 2.000_r8*rxt(k,2) + rxt(k,3)
         mat(k,1991) = 2.000_r8*rxt(k,34)
         mat(k,457) = rxt(k,39)
         mat(k,2256) = .330_r8*rxt(k,40) + rxt(k,41)
         mat(k,834) = rxt(k,100)
         mat(k,1505) = rxt(k,104)
         mat(k,284) = rxt(k,105)
         mat(k,1461) = -( het_rates(k,77) )
         mat(k,2428) = rxt(k,1)
         mat(k,1977) = rxt(k,33)
         mat(k,2242) = 1.440_r8*rxt(k,40)
         mat(k,107) = -( rxt(k,99) + het_rates(k,78) )
         mat(k,582) = -( rxt(k,4) + het_rates(k,79) )
         mat(k,130) = -( rxt(k,136) + het_rates(k,80) )
         mat(k,828) = -( rxt(k,100) + het_rates(k,81) )
         mat(k,241) = -( rxt(k,101) + het_rates(k,82) )
         mat(k,251) = -( rxt(k,102) + het_rates(k,83) )
         mat(k,292) = -( rxt(k,103) + het_rates(k,84) )
         mat(k,1495) = -( rxt(k,104) + het_rates(k,85) )
         mat(k,182) = -( het_rates(k,86) )
         mat(k,919) = -( het_rates(k,87) )
         mat(k,282) = -( rxt(k,105) + het_rates(k,88) )
         mat(k,2055) = -( rxt(k,9) + het_rates(k,89) )
         mat(k,1204) = rxt(k,522)
         mat(k,596) = rxt(k,523)
         mat(k,564) = rxt(k,524)
         mat(k,277) = 2.000_r8*rxt(k,525) + 2.000_r8*rxt(k,562) + 2.000_r8*rxt(k,565) &
                      + 2.000_r8*rxt(k,576)
         mat(k,431) = rxt(k,526)
         mat(k,1099) = rxt(k,527)
         mat(k,1963) = .500_r8*rxt(k,529)
         mat(k,1658) = rxt(k,530)
         mat(k,396) = rxt(k,531)
         mat(k,234) = rxt(k,532)
         mat(k,631) = rxt(k,533)
         mat(k,572) = rxt(k,564) + rxt(k,567) + rxt(k,572)
         mat(k,961) = rxt(k,566) + rxt(k,571) + rxt(k,577)
         mat(k,2368) = -( rxt(k,521) + het_rates(k,90) )
         mat(k,477) = rxt(k,11) + rxt(k,212)
         mat(k,651) = rxt(k,20)
         mat(k,696) = .900_r8*rxt(k,21)
         mat(k,420) = rxt(k,22)
         mat(k,169) = 1.500_r8*rxt(k,23)
         mat(k,384) = .560_r8*rxt(k,24)
         mat(k,467) = rxt(k,25)
         mat(k,281) = .600_r8*rxt(k,26)
         mat(k,601) = .600_r8*rxt(k,27)
         mat(k,333) = rxt(k,28)
         mat(k,349) = rxt(k,29)
         mat(k,354) = rxt(k,30)
         mat(k,413) = rxt(k,31)
         mat(k,1157) = rxt(k,35)
         mat(k,1287) = rxt(k,37)
         mat(k,1170) = 2.000_r8*rxt(k,44)
         mat(k,1058) = 2.000_r8*rxt(k,45)
         mat(k,1205) = .670_r8*rxt(k,46)
         mat(k,225) = rxt(k,47)
         mat(k,1213) = rxt(k,48)
         mat(k,408) = rxt(k,49)
         mat(k,717) = rxt(k,50)
         mat(k,1278) = 1.340_r8*rxt(k,51) + .660_r8*rxt(k,52)
         mat(k,1100) = rxt(k,57)
         mat(k,343) = rxt(k,62)
         mat(k,548) = rxt(k,63)
         mat(k,202) = rxt(k,65)
         mat(k,661) = rxt(k,66)
         mat(k,632) = rxt(k,67)
         mat(k,492) = rxt(k,68)
         mat(k,1079) = rxt(k,69)
         mat(k,1126) = 1.200_r8*rxt(k,70)
         mat(k,674) = rxt(k,71)
         mat(k,739) = rxt(k,73)
         mat(k,426) = rxt(k,74)
         mat(k,446) = rxt(k,308)
         mat(k,464) = rxt(k,338)
         mat(k,1345) = rxt(k,413)
         mat(k,472) = -( rxt(k,10) + rxt(k,11) + rxt(k,212) + het_rates(k,91) )
         mat(k,787) = -( rxt(k,106) + het_rates(k,92) )
         mat(k,567) = rxt(k,564) + rxt(k,567) + rxt(k,572)
         mat(k,837) = -( rxt(k,107) + het_rates(k,93) )
         mat(k,954) = rxt(k,566) + rxt(k,571) + rxt(k,577)
         mat(k,1195) = -( rxt(k,46) + rxt(k,522) + het_rates(k,94) )
         mat(k,221) = -( rxt(k,47) + het_rates(k,95) )
         mat(k,1315) = rxt(k,413)
         mat(k,1208) = -( rxt(k,48) + het_rates(k,96) )
         mat(k,1196) = .170_r8*rxt(k,46)
         mat(k,326) = -( het_rates(k,97) )
         mat(k,133) = -( het_rates(k,98) )
         mat(k,876) = -( het_rates(k,99) )
         mat(k,589) = -( rxt(k,523) + het_rates(k,100) )
         mat(k,558) = -( rxt(k,524) + het_rates(k,101) )
         mat(k,403) = -( rxt(k,49) + het_rates(k,102) )
         mat(k,711) = -( rxt(k,50) + het_rates(k,103) )
         mat(k,404) = rxt(k,49)
         mat(k,76) = -( het_rates(k,104) )
         mat(k,1269) = -( rxt(k,51) + rxt(k,52) + het_rates(k,105) )
         mat(k,713) = .300_r8*rxt(k,50)
         mat(k,316) = -( het_rates(k,106) )
         mat(k,517) = -( rxt(k,53) + het_rates(k,107) )
         mat(k,641) = .800_r8*rxt(k,20)
         mat(k,686) = .800_r8*rxt(k,21)
         mat(k,321) = -( rxt(k,54) + het_rates(k,108) )
         mat(k,611) = -( rxt(k,55) + rxt(k,395) + het_rates(k,109) )
         mat(k,1018) = -( het_rates(k,110) )
         mat(k,1376) = -( rxt(k,56) + het_rates(k,111) )
         mat(k,714) = .700_r8*rxt(k,50)
         mat(k,999) = -( rxt(k,111) + het_rates(k,112) )
         mat(k,1881) = rxt(k,15)
         mat(k,808) = rxt(k,592)
         mat(k,256) = -( rxt(k,12) + het_rates(k,113) )
         mat(k,273) = -( rxt(k,13) + rxt(k,14) + rxt(k,213) + rxt(k,525) + rxt(k,562) &
                      + rxt(k,565) + rxt(k,576) + het_rates(k,114) )
         mat(k,427) = -( rxt(k,526) + het_rates(k,115) )
         mat(k,1090) = -( rxt(k,57) + rxt(k,527) + het_rates(k,116) )
         mat(k,10) = -( het_rates(k,117) )
         mat(k,11) = -( het_rates(k,118) )
         mat(k,12) = -( het_rates(k,119) )
         mat(k,98) = -( het_rates(k,120) )
         mat(k,13) = -( rxt(k,528) + het_rates(k,121) )
         mat(k,14) = -( rxt(k,596) + het_rates(k,122) )
         mat(k,15) = -( rxt(k,595) + het_rates(k,123) )
         mat(k,1914) = -( rxt(k,15) + rxt(k,16) + het_rates(k,124) )
         mat(k,275) = rxt(k,14)
         mat(k,1959) = rxt(k,17) + .500_r8*rxt(k,529)
         mat(k,1654) = rxt(k,19)
         mat(k,857) = rxt(k,589)
         mat(k,1960) = -( rxt(k,17) + rxt(k,529) + het_rates(k,125) )
         mat(k,2052) = rxt(k,9)
         mat(k,476) = rxt(k,11) + rxt(k,212)
         mat(k,276) = rxt(k,13) + rxt(k,213)
         mat(k,1655) = rxt(k,18)
         mat(k,649) = rxt(k,20)
         mat(k,1202) = rxt(k,46)
         mat(k,407) = rxt(k,49)
         mat(k,617) = rxt(k,55) + rxt(k,395)
         mat(k,1097) = rxt(k,57)
         mat(k,896) = rxt(k,58)
         mat(k,395) = rxt(k,59)
         mat(k,233) = rxt(k,60)
         mat(k,539) = .600_r8*rxt(k,61) + rxt(k,345)
         mat(k,630) = rxt(k,67)
         mat(k,571) = rxt(k,77)
         mat(k,960) = rxt(k,96)
         mat(k,138) = rxt(k,470)
         mat(k,1652) = -( rxt(k,18) + rxt(k,19) + rxt(k,530) + het_rates(k,126) )
         mat(k,474) = rxt(k,10)
         mat(k,274) = rxt(k,13) + rxt(k,14) + rxt(k,213)
         mat(k,537) = .400_r8*rxt(k,61)
         mat(k,570) = rxt(k,78)
         mat(k,958) = rxt(k,95)
         mat(k,892) = -( rxt(k,58) + het_rates(k,127) )
         mat(k,391) = -( rxt(k,59) + rxt(k,531) + het_rates(k,128) )
         mat(k,16) = -( het_rates(k,129) )
         mat(k,17) = -( het_rates(k,130) )
         mat(k,18) = -( het_rates(k,131) )
         mat(k,19) = -( het_rates(k,132) )
         mat(k,20) = -( het_rates(k,133) )
         mat(k,2099) = -( rxt(k,120) + rxt(k,121) + rxt(k,122) + rxt(k,123) + rxt(k,124) &
                      + rxt(k,125) + het_rates(k,134) )
         mat(k,2442) = rxt(k,2)
         mat(k,1550) = 2.000_r8*rxt(k,5) + rxt(k,6) + rxt(k,127) + rxt(k,128) + rxt(k,129) &
                      + rxt(k,131) + rxt(k,132) + rxt(k,133) + 2.000_r8*rxt(k,134) &
                      + 2.000_r8*rxt(k,135)
         mat(k,2230) = rxt(k,8)
         mat(k,278) = rxt(k,14)
         mat(k,1919) = rxt(k,15)
         mat(k,1964) = rxt(k,17)
         mat(k,1659) = rxt(k,18)
         mat(k,2255) = .180_r8*rxt(k,40)
         mat(k,1456) = rxt(k,42) + rxt(k,110)
         mat(k,1574) = rxt(k,76)
         mat(k,1600) = rxt(k,94)
         mat(k,338) = rxt(k,108)
         mat(k,1484) = rxt(k,138)
         mat(k,950) = rxt(k,139)
         mat(k,263) = rxt(k,140)
         mat(k,2033) = rxt(k,155)
         mat(k,1542) = -( rxt(k,5) + rxt(k,6) + rxt(k,126) + rxt(k,127) + rxt(k,128) &
                      + rxt(k,129) + rxt(k,130) + rxt(k,131) + rxt(k,132) + rxt(k,133) &
                      + rxt(k,134) + rxt(k,135) + het_rates(k,135) )
         mat(k,2220) = rxt(k,8)
         mat(k,1649) = rxt(k,19)
         mat(k,178) = rxt(k,151) + rxt(k,159)
         mat(k,181) = rxt(k,152)
         mat(k,2233) = -( rxt(k,7) + rxt(k,8) + het_rates(k,136) )
         mat(k,21) = -( het_rates(k,137) )
         mat(k,334) = -( rxt(k,108) + het_rates(k,138) )
         mat(k,363) = -( rxt(k,137) + het_rates(k,139) )
         mat(k,232) = -( rxt(k,60) + rxt(k,532) + het_rates(k,140) )
         mat(k,534) = -( rxt(k,61) + rxt(k,345) + het_rates(k,141) )
         mat(k,136) = -( rxt(k,470) + het_rates(k,142) )
         mat(k,468) = -( het_rates(k,143) )
         mat(k,270) = rxt(k,32)
      end do
      end subroutine linmat02
      subroutine linmat03( avec_len, mat, y, rxt, het_rates )
!----------------------------------------------
! ... linear matrix entries for implicit species
!----------------------------------------------
      use chem_mods, only : gas_pcnst, rxntot, nzcnt
      use shr_kind_mod, only : r8 => shr_kind_r8
      implicit none
!----------------------------------------------
! ... dummy arguments
!----------------------------------------------
      integer, intent(in) :: avec_len
      real(r8), intent(in) :: y(veclen,gas_pcnst)
      real(r8), intent(in) :: rxt(veclen,rxntot)
      real(r8), intent(in) :: het_rates(veclen,gas_pcnst)
      real(r8), intent(inout) :: mat(veclen,nzcnt)
!----------------------------------------------
! ... local variables
!----------------------------------------------
      integer :: k
      do k = 1,avec_len
         mat(k,170) = -( het_rates(k,144) )
         mat(k,339) = -( rxt(k,62) + het_rates(k,145) )
         mat(k,22) = -( het_rates(k,146) )
         mat(k,23) = -( het_rates(k,147) )
         mat(k,542) = -( rxt(k,63) + het_rates(k,148) )
         mat(k,397) = -( rxt(k,64) + het_rates(k,149) )
         mat(k,718) = -( het_rates(k,150) )
         mat(k,364) = rxt(k,137)
         mat(k,1474) = rxt(k,138)
         mat(k,24) = -( rxt(k,109) + het_rates(k,151) )
         mat(k,1476) = -( rxt(k,138) + het_rates(k,152) )
         mat(k,948) = rxt(k,139)
         mat(k,947) = -( rxt(k,139) + het_rates(k,153) )
         mat(k,262) = rxt(k,140)
         mat(k,261) = -( rxt(k,140) + het_rates(k,154) )
         mat(k,131) = rxt(k,136)
         mat(k,25) = -( het_rates(k,155) )
         mat(k,26) = -( het_rates(k,156) )
         mat(k,27) = -( het_rates(k,157) )
         mat(k,28) = -( het_rates(k,158) )
         mat(k,29) = -( rxt(k,141) + het_rates(k,159) )
         mat(k,30) = -( rxt(k,142) + het_rates(k,160) )
         mat(k,31) = -( rxt(k,143) + het_rates(k,161) )
         mat(k,32) = -( rxt(k,144) + het_rates(k,162) )
         mat(k,33) = -( rxt(k,145) + het_rates(k,163) )
         mat(k,34) = -( rxt(k,146) + het_rates(k,164) )
         mat(k,35) = -( rxt(k,147) + het_rates(k,165) )
         mat(k,36) = -( rxt(k,148) + het_rates(k,166) )
         mat(k,37) = -( rxt(k,149) + het_rates(k,167) )
         mat(k,38) = -( rxt(k,150) + het_rates(k,168) )
         mat(k,39) = -( het_rates(k,169) )
         mat(k,1053) = rxt(k,520)
         mat(k,40) = -( het_rates(k,170) )
         mat(k,41) = -( het_rates(k,171) )
         mat(k,42) = -( het_rates(k,172) )
         mat(k,43) = -( het_rates(k,173) )
         mat(k,44) = -( rxt(k,597) + het_rates(k,174) )
         mat(k,50) = -( het_rates(k,175) )
         mat(k,199) = -( rxt(k,65) + het_rates(k,176) )
         mat(k,652) = -( rxt(k,66) + het_rates(k,177) )
         mat(k,627) = -( rxt(k,67) + rxt(k,533) + het_rates(k,178) )
         mat(k,486) = -( rxt(k,68) + het_rates(k,179) )
         mat(k,1072) = -( rxt(k,69) + het_rates(k,180) )
         mat(k,392) = rxt(k,59)
         mat(k,628) = rxt(k,67)
         mat(k,488) = rxt(k,68)
         mat(k,1119) = -( rxt(k,70) + het_rates(k,181) )
         mat(k,654) = rxt(k,66)
         mat(k,1074) = rxt(k,69)
         mat(k,665) = -( rxt(k,71) + het_rates(k,182) )
         mat(k,187) = -( het_rates(k,183) )
         mat(k,203) = -( rxt(k,72) + het_rates(k,184) )
         mat(k,208) = -( het_rates(k,185) )
         mat(k,729) = -( rxt(k,73) + het_rates(k,186) )
         mat(k,216) = -( het_rates(k,187) )
         mat(k,421) = -( rxt(k,74) + het_rates(k,188) )
         mat(k,523) = -( het_rates(k,191) )
         mat(k,137) = rxt(k,470)
         mat(k,1042) = -( het_rates(k,192) )
         mat(k,56) = -( het_rates(k,193) )
         mat(k,495) = -( het_rates(k,194) )
         mat(k,62) = -( het_rates(k,195) )
         mat(k,435) = -( het_rates(k,196) )
         mat(k,901) = -( het_rates(k,197) )
         mat(k,519) = rxt(k,53)
         mat(k,935) = -( het_rates(k,198) )
         mat(k,635) = -( het_rates(k,199) )
         mat(k,1428) = -( het_rates(k,200) )
         mat(k,383) = .130_r8*rxt(k,24)
         mat(k,332) = rxt(k,28)
         mat(k,1082) = rxt(k,36)
         mat(k,1282) = rxt(k,37)
         mat(k,1198) = .330_r8*rxt(k,46)
         mat(k,1210) = rxt(k,48)
         mat(k,1273) = 1.340_r8*rxt(k,51)
         mat(k,520) = rxt(k,53)
         mat(k,324) = rxt(k,54)
         mat(k,1378) = .300_r8*rxt(k,56)
         mat(k,894) = rxt(k,58)
         mat(k,535) = .600_r8*rxt(k,61) + rxt(k,345)
         mat(k,399) = rxt(k,64)
         mat(k,201) = .500_r8*rxt(k,65)
         mat(k,1122) = .650_r8*rxt(k,70)
         mat(k,2421) = -( het_rates(k,201) )
         mat(k,1158) = rxt(k,35)
         mat(k,1084) = rxt(k,36)
         mat(k,625) = rxt(k,38)
         mat(k,2261) = rxt(k,41)
         mat(k,1390) = .300_r8*rxt(k,56)
         mat(k,541) = .400_r8*rxt(k,61)
         mat(k,609) = rxt(k,88)
         mat(k,377) = rxt(k,90)
         mat(k,778) = -( het_rates(k,202) )
         mat(k,280) = .600_r8*rxt(k,26)
         mat(k,865) = -( het_rates(k,203) )
         mat(k,1875) = rxt(k,16)
         mat(k,998) = rxt(k,111)
         mat(k,2079) = rxt(k,120) + rxt(k,121) + rxt(k,122) + rxt(k,123) + rxt(k,124) &
                      + rxt(k,125)
         mat(k,1534) = rxt(k,126) + rxt(k,127) + rxt(k,128) + rxt(k,129) + rxt(k,130) &
                      + rxt(k,131) + rxt(k,132) + rxt(k,133)
         mat(k,574) = -( het_rates(k,204) )
         mat(k,460) = -( rxt(k,338) + het_rates(k,205) )
         mat(k,128) = rxt(k,43)
         mat(k,797) = -( het_rates(k,206) )
         mat(k,441) = -( rxt(k,308) + het_rates(k,207) )
         mat(k,1299) = -( het_rates(k,208) )
         mat(k,1332) = -( rxt(k,413) + het_rates(k,209) )
         mat(k,1253) = -( het_rates(k,210) )
         mat(k,68) = -( het_rates(k,211) )
         mat(k,74) = -( het_rates(k,212) )
         mat(k,1356) = -( het_rates(k,213) )
         mat(k,740) = -( het_rates(k,214) )
         mat(k,466) = .600_r8*rxt(k,25)
         mat(k,1397) = -( het_rates(k,215) )
         mat(k,1272) = .660_r8*rxt(k,51)
         mat(k,613) = rxt(k,55) + rxt(k,395)
         mat(k,910) = -( het_rates(k,216) )
         mat(k,599) = .600_r8*rxt(k,27)
         mat(k,698) = -( het_rates(k,217) )
         mat(k,82) = -( het_rates(k,218) )
         mat(k,529) = -( het_rates(k,219) )
         mat(k,676) = -( het_rates(k,220) )
         mat(k,845) = -( het_rates(k,221) )
         mat(k,1873) = rxt(k,16)
         mat(k,852) = rxt(k,589)
         mat(k,806) = rxt(k,592)
         mat(k,502) = -( het_rates(k,222) )
         mat(k,994) = rxt(k,111)
         mat(k,1106) = -( het_rates(k,223) )
         mat(k,2031) = -( rxt(k,155) + het_rates(k,224) )
         mat(k,2440) = rxt(k,1)
         mat(k,1549) = rxt(k,6)
         mat(k,2228) = rxt(k,7)
         mat(k,259) = rxt(k,12)
         mat(k,177) = -( rxt(k,151) + rxt(k,159) + het_rates(k,225) )
         mat(k,2179) = rxt(k,7)
         mat(k,179) = rxt(k,163)
         mat(k,180) = -( rxt(k,152) + rxt(k,163) + het_rates(k,226) )
         mat(k,853) = -( rxt(k,589) + het_rates(k,227) )
         mat(k,1533) = rxt(k,126) + rxt(k,130)
         mat(k,1818) = -( het_rates(k,228) )
         mat(k,2436) = rxt(k,3)
         mat(k,584) = 2.000_r8*rxt(k,4)
         mat(k,2050) = rxt(k,9)
         mat(k,475) = rxt(k,10)
         mat(k,694) = rxt(k,21)
         mat(k,419) = rxt(k,22)
         mat(k,348) = rxt(k,29)
         mat(k,353) = rxt(k,30)
         mat(k,412) = rxt(k,31)
         mat(k,272) = rxt(k,32)
         mat(k,623) = rxt(k,38)
         mat(k,455) = rxt(k,39)
         mat(k,2249) = .330_r8*rxt(k,40)
         mat(k,129) = rxt(k,43)
         mat(k,224) = rxt(k,47)
         mat(k,715) = rxt(k,50)
         mat(k,325) = rxt(k,54)
         mat(k,394) = rxt(k,59)
         mat(k,342) = rxt(k,62)
         mat(k,546) = rxt(k,63)
         mat(k,400) = rxt(k,64)
         mat(k,659) = rxt(k,66)
         mat(k,490) = rxt(k,68)
         mat(k,673) = rxt(k,71)
         mat(k,205) = rxt(k,72)
         mat(k,738) = rxt(k,73)
         mat(k,425) = rxt(k,74)
         mat(k,791) = rxt(k,106)
         mat(k,840) = rxt(k,107)
         mat(k,1958) = .500_r8*rxt(k,529)
         mat(k,805) = -( rxt(k,592) + het_rates(k,229) )
         mat(k,2074) = rxt(k,120) + rxt(k,121) + rxt(k,122) + rxt(k,123) + rxt(k,124) &
                      + rxt(k,125)
         mat(k,1531) = rxt(k,127) + rxt(k,128) + rxt(k,129) + rxt(k,131) + rxt(k,132) &
                      + rxt(k,133)
         mat(k,448) = -( het_rates(k,230) )
         mat(k,814) = -( het_rates(k,231) )
         mat(k,1217) = -( het_rates(k,232) )
         mat(k,1121) = .150_r8*rxt(k,70)
         mat(k,1178) = -( het_rates(k,233) )
         mat(k,1062) = -( het_rates(k,234) )
         mat(k,751) = -( het_rates(k,235) )
         mat(k,88) = -( het_rates(k,236) )
         mat(k,1233) = -( het_rates(k,237) )
         mat(k,767) = -( het_rates(k,238) )
         mat(k,94) = -( het_rates(k,239) )
         mat(k,510) = -( het_rates(k,240) )
         mat(k,2449) = -( rxt(k,1) + rxt(k,2) + rxt(k,3) + het_rates(k,241) )
         mat(k,2262) = .050_r8*rxt(k,40)
         mat(k,132) = rxt(k,136)
         mat(k,2370) = rxt(k,521)
      end do
      end subroutine linmat03
      subroutine linmat( avec_len, mat, y, rxt, het_rates )
!----------------------------------------------
! ... linear matrix entries for implicit species
!----------------------------------------------
      use chem_mods, only : gas_pcnst, rxntot, nzcnt
      use shr_kind_mod, only : r8 => shr_kind_r8
      implicit none
!----------------------------------------------
! ... dummy arguments
!----------------------------------------------
      integer, intent(in) :: avec_len
      real(r8), intent(in) :: y(veclen,gas_pcnst)
      real(r8), intent(in) :: rxt(veclen,rxntot)
      real(r8), intent(in) :: het_rates(veclen,gas_pcnst)
      real(r8), intent(inout) :: mat(veclen,nzcnt)
      call linmat01( avec_len, mat, y, rxt, het_rates )
      call linmat02( avec_len, mat, y, rxt, het_rates )
      call linmat03( avec_len, mat, y, rxt, het_rates )
      end subroutine linmat
      end module mo_lin_matrix
