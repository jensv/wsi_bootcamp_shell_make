module invert
use lu_decompose
implicit none

contains

subroutine invert_matrix(array)

integer, parameter :: dp=kind(0.d0)
real(dp), INTENT(INOUT) :: array(:, :)
real(dp), dimension(:), allocatable :: work
integer, dimension(:), allocatable :: ipiv
integer, dimension(2) :: a
integer :: m, info

external DGETRI

a = shape(array)
m = a(1)
allocate(work(m))
allocate(ipiv(m))

call lu_decompose_matrix(array, ipiv, work)
call DGETRI(m, array, m, ipiv, work, m, info)

end subroutine invert_matrix
end module invert
