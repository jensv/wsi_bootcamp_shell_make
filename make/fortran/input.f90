module input
implicit none

contains

subroutine matrix(array)

integer, parameter :: dp=kind(0.d0)
real(dp), dimension(:,:), allocatable,  INTENT(INOUT) :: array

allocate(array(3,3))
array = transpose(reshape((/ 1, 3, 3, 1, 4, 3, 1, 3, 4 /), shape(array)))

end subroutine matrix
end module input
