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
         mat(k,1) = -( het_rates(k,1) )
         mat(k,2) = -( het_rates(k,2) )
         mat(k,767) = -( het_rates(k,3) )
         mat(k,98) = rxt(k,26)
         mat(k,745) = rxt(k,27)
         mat(k,204) = rxt(k,29)
         mat(k,56) = rxt(k,31)
         mat(k,62) = rxt(k,32)
         mat(k,167) = 2.000_r8*rxt(k,38)
         mat(k,212) = rxt(k,39)
         mat(k,155) = 3.000_r8*rxt(k,42)
         mat(k,33) = 2.000_r8*rxt(k,50)
         mat(k,258) = rxt(k,51)
         mat(k,249) = rxt(k,57)
         mat(k,97) = -( rxt(k,26) + het_rates(k,4) )
         mat(k,744) = -( rxt(k,27) + het_rates(k,5) )
         mat(k,203) = rxt(k,28)
         mat(k,199) = -( rxt(k,28) + rxt(k,29) + rxt(k,269) + rxt(k,272) + rxt(k,277) &
                 + het_rates(k,6) )
         mat(k,3) = -( het_rates(k,7) )
         mat(k,27) = -( rxt(k,30) + het_rates(k,8) )
         mat(k,53) = -( rxt(k,31) + het_rates(k,9) )
         mat(k,58) = -( rxt(k,32) + het_rates(k,10) )
         mat(k,34) = -( rxt(k,33) + het_rates(k,11) )
         mat(k,63) = -( rxt(k,34) + het_rates(k,12) )
         mat(k,38) = -( rxt(k,35) + het_rates(k,13) )
         mat(k,68) = -( rxt(k,36) + het_rates(k,14) )
         mat(k,42) = -( rxt(k,37) + het_rates(k,15) )
         mat(k,164) = -( rxt(k,38) + het_rates(k,16) )
         mat(k,472) = -( rxt(k,20) + rxt(k,21) + het_rates(k,17) )
         mat(k,161) = rxt(k,22)
         mat(k,394) = .180_r8*rxt(k,24)
         mat(k,207) = -( rxt(k,39) + het_rates(k,18) )
         mat(k,46) = -( rxt(k,40) + het_rates(k,19) )
         mat(k,144) = -( rxt(k,41) + het_rates(k,20) )
         mat(k,408) = -( het_rates(k,21) )
         mat(k,391) = rxt(k,23)
         mat(k,208) = rxt(k,39)
         mat(k,146) = rxt(k,41)
         mat(k,158) = -( rxt(k,22) + het_rates(k,22) )
         mat(k,390) = -( rxt(k,23) + rxt(k,24) + het_rates(k,23) )
         mat(k,152) = -( rxt(k,42) + het_rates(k,24) )
         mat(k,904) = -( het_rates(k,25) )
         mat(k,99) = rxt(k,26)
         mat(k,29) = 4.000_r8*rxt(k,30)
         mat(k,57) = rxt(k,31)
         mat(k,37) = 2.000_r8*rxt(k,33)
         mat(k,67) = 2.000_r8*rxt(k,34)
         mat(k,41) = 2.000_r8*rxt(k,35)
         mat(k,72) = rxt(k,36)
         mat(k,45) = 2.000_r8*rxt(k,37)
         mat(k,48) = 3.000_r8*rxt(k,40)
         mat(k,150) = rxt(k,41)
         mat(k,74) = 2.000_r8*rxt(k,43)
         mat(k,26) = 2.000_r8*rxt(k,44)
         mat(k,591) = rxt(k,45)
         mat(k,313) = rxt(k,46)
         mat(k,88) = rxt(k,49)
         mat(k,84) = rxt(k,52)
         mat(k,93) = rxt(k,53)
         mat(k,114) = rxt(k,54)
         mat(k,463) = rxt(k,55)
         mat(k,267) = rxt(k,58)
         mat(k,73) = -( rxt(k,43) + het_rates(k,26) )
         mat(k,24) = -( rxt(k,44) + rxt(k,190) + het_rates(k,27) )
         mat(k,581) = -( rxt(k,45) + het_rates(k,28) )
         mat(k,307) = rxt(k,47)
         mat(k,134) = rxt(k,59)
         mat(k,25) = 2.000_r8*rxt(k,190)
         mat(k,305) = -( rxt(k,46) + rxt(k,47) + rxt(k,271) + rxt(k,276) + rxt(k,282) &
                 + het_rates(k,29) )
         mat(k,4) = -( het_rates(k,30) )
         mat(k,279) = -( het_rates(k,31) )
         mat(k,467) = rxt(k,20) + rxt(k,21)
         mat(k,386) = .380_r8*rxt(k,24)
         mat(k,194) = rxt(k,25) + rxt(k,61)
         mat(k,138) = rxt(k,88)
         mat(k,193) = -( rxt(k,25) + rxt(k,61) + het_rates(k,32) )
         mat(k,385) = .440_r8*rxt(k,24)
         mat(k,94) = -( rxt(k,48) + het_rates(k,33) )
         mat(k,54) = rxt(k,31)
         mat(k,59) = rxt(k,32)
         mat(k,65) = rxt(k,34)
         mat(k,39) = 2.000_r8*rxt(k,35)
         mat(k,69) = 2.000_r8*rxt(k,36)
         mat(k,43) = rxt(k,37)
         mat(k,31) = 2.000_r8*rxt(k,50)
         mat(k,90) = rxt(k,53)
         mat(k,109) = rxt(k,54)
         mat(k,85) = -( rxt(k,49) + het_rates(k,34) )
         mat(k,35) = rxt(k,33)
         mat(k,64) = rxt(k,34)
         mat(k,81) = rxt(k,52)
         mat(k,125) = -( het_rates(k,35) )
         mat(k,5) = -( het_rates(k,36) )
         mat(k,6) = -( het_rates(k,37) )
         mat(k,7) = -( het_rates(k,38) )
         mat(k,287) = -( het_rates(k,39) )
         mat(k,60) = rxt(k,32)
         mat(k,70) = rxt(k,36)
         mat(k,95) = 2.000_r8*rxt(k,48)
         mat(k,86) = rxt(k,49)
         mat(k,117) = rxt(k,56)
         mat(k,436) = -( het_rates(k,40) )
         mat(k,938) = 2.000_r8*rxt(k,2) + rxt(k,3)
         mat(k,470) = 2.000_r8*rxt(k,20)
         mat(k,160) = rxt(k,22)
         mat(k,392) = rxt(k,23) + .330_r8*rxt(k,24)
         mat(k,254) = rxt(k,51)
         mat(k,449) = rxt(k,55)
         mat(k,118) = rxt(k,56)
         mat(k,928) = -( het_rates(k,41) )
         mat(k,955) = rxt(k,1)
         mat(k,487) = rxt(k,21)
         mat(k,405) = 1.440_r8*rxt(k,24)
         mat(k,30) = -( rxt(k,50) + het_rates(k,42) )
         mat(k,216) = -( rxt(k,4) + het_rates(k,43) )
         mat(k,542) = .500_r8*rxt(k,263)
         mat(k,50) = -( rxt(k,87) + het_rates(k,44) )
         mat(k,253) = -( rxt(k,51) + het_rates(k,45) )
         mat(k,80) = -( rxt(k,52) + het_rates(k,46) )
         mat(k,89) = -( rxt(k,53) + het_rates(k,47) )
         mat(k,110) = -( rxt(k,54) + het_rates(k,48) )
         mat(k,450) = -( rxt(k,55) + het_rates(k,49) )
         mat(k,116) = -( rxt(k,56) + het_rates(k,50) )
         mat(k,871) = -( rxt(k,9) + het_rates(k,51) )
         mat(k,124) = 2.000_r8*rxt(k,264) + 2.000_r8*rxt(k,267) + 2.000_r8*rxt(k,270) &
                      + 2.000_r8*rxt(k,281)
         mat(k,799) = .500_r8*rxt(k,265)
         mat(k,615) = rxt(k,266)
         mat(k,206) = rxt(k,269) + rxt(k,272) + rxt(k,277)
         mat(k,312) = rxt(k,271) + rxt(k,276) + rxt(k,282)
         mat(k,171) = -( rxt(k,10) + rxt(k,11) + rxt(k,153) + het_rates(k,52) )
         mat(k,245) = -( rxt(k,57) + het_rates(k,53) )
         mat(k,200) = rxt(k,269) + rxt(k,272) + rxt(k,277)
         mat(k,262) = -( rxt(k,58) + het_rates(k,54) )
         mat(k,304) = rxt(k,271) + rxt(k,276) + rxt(k,282)
         mat(k,344) = -( rxt(k,62) + het_rates(k,55) )
         mat(k,664) = rxt(k,15)
         mat(k,373) = rxt(k,300)
         mat(k,100) = -( rxt(k,12) + het_rates(k,56) )
         mat(k,119) = -( rxt(k,13) + rxt(k,14) + rxt(k,154) + rxt(k,264) + rxt(k,267) &
                      + rxt(k,270) + rxt(k,281) + het_rates(k,57) )
         mat(k,8) = -( het_rates(k,58) )
         mat(k,9) = -( het_rates(k,59) )
         mat(k,10) = -( het_rates(k,60) )
         mat(k,676) = -( rxt(k,15) + rxt(k,16) + het_rates(k,61) )
         mat(k,122) = rxt(k,14)
         mat(k,793) = rxt(k,17) + .500_r8*rxt(k,265)
         mat(k,609) = rxt(k,19)
         mat(k,363) = rxt(k,297)
         mat(k,184) = rxt(k,310)
         mat(k,797) = -( rxt(k,17) + rxt(k,265) + het_rates(k,62) )
         mat(k,869) = rxt(k,9)
         mat(k,175) = rxt(k,11) + rxt(k,153)
         mat(k,123) = rxt(k,13) + rxt(k,154)
         mat(k,613) = rxt(k,18)
         mat(k,205) = rxt(k,28)
         mat(k,310) = rxt(k,47)
         mat(k,607) = -( rxt(k,18) + rxt(k,19) + rxt(k,266) + het_rates(k,63) )
         mat(k,174) = rxt(k,10)
         mat(k,120) = rxt(k,13) + rxt(k,14) + rxt(k,154)
         mat(k,201) = rxt(k,29)
         mat(k,308) = rxt(k,46)
         mat(k,11) = -( het_rates(k,64) )
         mat(k,12) = -( het_rates(k,65) )
         mat(k,13) = -( het_rates(k,66) )
         mat(k,14) = -( het_rates(k,67) )
         mat(k,650) = -( rxt(k,71) + rxt(k,72) + rxt(k,73) + rxt(k,74) + rxt(k,75) &
                      + rxt(k,76) + het_rates(k,68) )
         mat(k,946) = rxt(k,2)
         mat(k,509) = 2.000_r8*rxt(k,5) + rxt(k,6) + rxt(k,77) + rxt(k,79) + rxt(k,81) &
                      + 2.000_r8*rxt(k,82) + 2.000_r8*rxt(k,83) + rxt(k,84) + rxt(k,85) &
                      + rxt(k,86)
         mat(k,530) = rxt(k,8)
         mat(k,121) = rxt(k,14)
         mat(k,675) = rxt(k,15)
         mat(k,792) = rxt(k,17)
         mat(k,608) = rxt(k,18)
         mat(k,398) = .180_r8*rxt(k,24)
         mat(k,198) = rxt(k,25) + rxt(k,61)
         mat(k,741) = rxt(k,27)
         mat(k,583) = rxt(k,45)
         mat(k,135) = rxt(k,59)
         mat(k,428) = rxt(k,89)
         mat(k,300) = rxt(k,90)
         mat(k,107) = rxt(k,91)
         mat(k,717) = rxt(k,96)
         mat(k,190) = rxt(k,304)
         mat(k,183) = rxt(k,309)
         mat(k,505) = -( rxt(k,5) + rxt(k,6) + rxt(k,77) + rxt(k,78) + rxt(k,79) &
                      + rxt(k,80) + rxt(k,81) + rxt(k,82) + rxt(k,83) + rxt(k,84) &
                      + rxt(k,85) + rxt(k,86) + het_rates(k,69) )
         mat(k,525) = rxt(k,8)
         mat(k,603) = rxt(k,19)
         mat(k,76) = rxt(k,92) + rxt(k,100)
         mat(k,79) = rxt(k,93)
         mat(k,526) = -( rxt(k,7) + rxt(k,8) + het_rates(k,70) )
         mat(k,131) = -( rxt(k,59) + het_rates(k,71) )
         mat(k,136) = -( rxt(k,88) + het_rates(k,72) )
         mat(k,15) = -( het_rates(k,73) )
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
         mat(k,16) = -( het_rates(k,74) )
         mat(k,232) = -( het_rates(k,75) )
         mat(k,137) = rxt(k,88)
         mat(k,420) = rxt(k,89)
         mat(k,17) = -( rxt(k,60) + het_rates(k,76) )
         mat(k,422) = -( rxt(k,89) + het_rates(k,77) )
         mat(k,298) = rxt(k,90)
         mat(k,297) = -( rxt(k,90) + het_rates(k,78) )
         mat(k,106) = rxt(k,91)
         mat(k,105) = -( rxt(k,91) + het_rates(k,79) )
         mat(k,51) = rxt(k,87)
         mat(k,18) = -( het_rates(k,80) )
         mat(k,19) = -( het_rates(k,81) )
         mat(k,20) = -( het_rates(k,82) )
         mat(k,21) = -( het_rates(k,83) )
         mat(k,22) = -( het_rates(k,84) )
         mat(k,23) = -( het_rates(k,85) )
         mat(k,320) = -( het_rates(k,86) )
         mat(k,662) = rxt(k,16)
         mat(k,342) = rxt(k,62)
         mat(k,636) = rxt(k,71) + rxt(k,72) + rxt(k,73) + rxt(k,74) + rxt(k,75) &
                      + rxt(k,76)
         mat(k,498) = rxt(k,77) + rxt(k,78) + rxt(k,79) + rxt(k,80) + rxt(k,81) &
                      + rxt(k,84) + rxt(k,85) + rxt(k,86)
         mat(k,552) = -( rxt(k,263) + het_rates(k,87) )
         mat(k,173) = rxt(k,11) + rxt(k,153)
         mat(k,331) = -( het_rates(k,88) )
         mat(k,223) = -( het_rates(k,89) )
         mat(k,186) = rxt(k,304)
         mat(k,180) = rxt(k,309)
         mat(k,239) = -( het_rates(k,90) )
         mat(k,661) = rxt(k,16)
         mat(k,354) = rxt(k,297)
         mat(k,368) = rxt(k,300)
         mat(k,270) = -( het_rates(k,91) )
         mat(k,341) = rxt(k,62)
         mat(k,181) = rxt(k,310)
         mat(k,719) = -( rxt(k,96) + het_rates(k,92) )
         mat(k,948) = rxt(k,1)
         mat(k,511) = rxt(k,6)
         mat(k,532) = rxt(k,7)
         mat(k,103) = rxt(k,12)
         mat(k,75) = -( rxt(k,92) + rxt(k,100) + het_rates(k,93) )
         mat(k,519) = rxt(k,7)
         mat(k,77) = rxt(k,104)
         mat(k,78) = -( rxt(k,93) + rxt(k,104) + het_rates(k,94) )
         mat(k,358) = -( rxt(k,297) + het_rates(k,95) )
         mat(k,501) = rxt(k,78) + rxt(k,80)
         mat(k,847) = -( het_rates(k,96) )
         mat(k,952) = rxt(k,3)
         mat(k,220) = 2.000_r8*rxt(k,4)
         mat(k,870) = rxt(k,9)
         mat(k,176) = rxt(k,10)
         mat(k,162) = rxt(k,22)
         mat(k,402) = .330_r8*rxt(k,24)
         mat(k,250) = rxt(k,57)
         mat(k,266) = rxt(k,58)
         mat(k,798) = .500_r8*rxt(k,265)
         mat(k,375) = -( rxt(k,300) + het_rates(k,97) )
         mat(k,640) = rxt(k,73) + rxt(k,74)
         mat(k,502) = rxt(k,79) + rxt(k,81)
         mat(k,182) = rxt(k,284)
         mat(k,188) = rxt(k,285)
         mat(k,185) = -( rxt(k,285) + rxt(k,304) + het_rates(k,98) )
         mat(k,623) = rxt(k,75) + rxt(k,76)
         mat(k,492) = rxt(k,85) + rxt(k,86)
         mat(k,179) = rxt(k,286)
         mat(k,178) = -( rxt(k,284) + rxt(k,286) + rxt(k,309) + rxt(k,310) &
                 + het_rates(k,99) )
         mat(k,622) = rxt(k,71) + rxt(k,72)
         mat(k,491) = rxt(k,77) + rxt(k,84)
         mat(k,956) = -( rxt(k,1) + rxt(k,2) + rxt(k,3) + het_rates(k,100) )
         mat(k,406) = .050_r8*rxt(k,24)
         mat(k,52) = rxt(k,87)
      end do
      end subroutine linmat02
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
      end subroutine linmat
      end module mo_lin_matrix
