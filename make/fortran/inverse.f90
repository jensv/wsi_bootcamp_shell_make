program inverse
use input
use invert
implicit none

integer, parameter :: dp=kind(0.d0)
real(dp), dimension(:,:), allocatable :: array
integer :: m, row, col
integer, dimension(2) :: a

external DGETRF, DGETRI

call matrix(array)

a = shape(array)
m = a(1)

1    format(3f10.3)

print *, 'Matrix:'
do row=1,m
    print 1, (array(row,col), col=1,m)
end do

call invert_matrix(array)

print *, 'Inverse Matrix:'
do row=1,m
    print 1, (array(row,col), col=1,m)
end do

end program inverse
