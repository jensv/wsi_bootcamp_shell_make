module lu_decompose
implicit none

contains

subroutine lu_decompose_matrix(array, ipiv, work)

integer, parameter :: dp=kind(0.d0)
real(dp), intent(inout) :: array(:, :)
real(dp), intent(inout) :: work(:)
integer, intent(inout) :: ipiv(:)
integer :: m
integer, dimension(2) :: a

external DGETRF

a = shape(array)
m = a(1)

call DGETRF(m, m, array, m, ipiv, work)

end subroutine lu_decompose_matrix
end module lu_decompose
