module myfunctions
contains
! my own functions for reading and interpolate files 3/8/2019
! the solution for finding h from q given that the state lies on a 1-wave

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Interpolation
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function readmydata(filename)
real(kind=8), allocatable  :: readmydata(:,:)
integer :: n, i
real(kind=8) :: x,t
character (*), intent(in) :: filename
real(kind=8), allocatable :: donnees(:,:)
n=0
open(unit=20,file=filename,status='old',form='formatted')
do
read(20,*,iostat=io) t, x
if (io/=0) exit
n=n+1
end do
allocate(donnees(n,2))
allocate(readmydata(n,2))

rewind(unit=20)
do i=1,n
read(20,*,iostat=io) t,x
donnees(i,1)=t
donnees(i,2)=x
enddo
close(unit=20)
readmydata=donnees
end function readmydata

function  interpole1(time,donnees,n)
real(kind=8) :: interpole1
real(kind=8) :: array1(1:n)
real(kind=8) :: x,t
real(kind=8), intent(in) :: time
real(kind=8), intent(in) :: donnees (n,2)
integer :: i,ipos
integer, intent(in) :: n

forall (i=1:n) array1(i)=abs(donnees(i,1)-time)

ipos=minloc(array1,1)

if ((ipos>=1).and. (ipos<=n)) then
interpole1=donnees(ipos,2)+(time-donnees(ipos,1))/(donnees(ipos+1,1)-donnees(ipos,1))*(donnees(ipos+1,2)-donnees(ipos,2))
else
interpole1=0.
endif

end function interpole1



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! 1-wave 
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function  racine3(r,q,g)
real(kind=8) :: racine3
real(kind=8) :: r, q, g, dis, a
 
dis = sqrt(27*g**4*q**4 - g**3*q**3*r**3)
a = (216*g**2*q**2 - 36*g*q*r**3 + r**6 + 24*sqrt(3.d0)*sqrt(27*g**4*q**4 - g**3*q**3*r**3))**(1.d0/3.d0)
racine3 = a/(12.*g) + r**2/(12.*g) - (24*g*q*r - r**4)/(12.*a*g)

end function racine3

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! root of a third order polynomial
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! see 5.6 Quadratic and Cubic Equations (p. 79) in
! Numerical Recipes in Fortran 90
function root3(a,b,c) result (sol)
real(kind=8)       :: a, b, c, Q, R, theta, pi
real(kind=8), dimension(3) :: sol
pi = 4.d0*atan(1.d0)
Q=(a**2-3.d0*b)/9.d0
R=(2.d0*a**3-9.d0*a*b+27.d0*c)/54.d0
theta = dacos(R/Q**1.5d0)
 
sol(1) = -2.d0*Q**0.5 * dcos(theta/3.d0) - a/3.d0 
sol(2) = -2.d0*Q**0.5 * dcos(theta/3.d0+2*pi/3.d0) - a/3.d0 
sol(3) = -2.d0*Q**0.5 * dcos(theta/3.d0-2*pi/3.d0) - a/3.d0

end function root3


end module myfunctions
