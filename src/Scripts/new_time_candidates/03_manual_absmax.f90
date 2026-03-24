   subroutine Calculate_vel_grad_dt_3d(this, mesh, velocity)
      class (time_t)               , intent(in out):: this
      class(mesh_base_t), pointer  , intent(in)    :: mesh
      type (velocity_t), pointer   , intent(in)    :: velocity

      integer :: nx, ny, nz

      real(8), dimension(:,:,:), pointer :: x
      real(8), dimension(:,:,:), pointer :: y
      real(8), dimension(:,:,:), pointer :: z
      real(8), dimension(:,:,:), pointer :: velocity_x
      real(8), dimension(:,:,:), pointer :: velocity_y
      real(8), dimension(:,:,:), pointer :: velocity_z
      real(8), dimension(:, :, :), pointer :: vel_grad_temp
      real(8) :: global_max
      integer :: packed_idx

      integer :: i, j, k
      real(8) :: vel_grad
      real(8) :: vel_grad_max
      real(8) :: vel_diff_coor_diff_i
      real(8) :: vel_diff_coor_diff_j
      real(8) :: vel_diff_coor_diff_k
      real(8) :: abs_i, abs_j, abs_k
      real(8) :: start_time

      call mesh%Point_to_data(x, y, z)
      call velocity%Point_to_data(velocity_x, velocity_y, velocity_z)

      vel_grad_max = 0d0
      this%dt_grad = 1d20
      nx = velocity%d1 - 1
      ny = velocity%d2 - 1
      nz = velocity%d3 - 1

      allocate(vel_grad_temp(1:nx, 1:ny, 1:nz))

      start_time = omp_get_wtime()
      global_max = -1d0
      packed_idx = -1
      !$omp target data map(tofrom: global_max, packed_idx) map(alloc: vel_grad_temp(1:nx, 1:ny, 1:nz))
      !$omp target teams distribute parallel do collapse(3) private(vel_diff_coor_diff_i, vel_diff_coor_diff_j, vel_diff_coor_diff_k, abs_i, abs_j, abs_k, vel_grad) &
      !$omp& reduction(max:global_max)
      do k = 1, nz
         do j = 1, ny
            do i = 1, nx
               vel_diff_coor_diff_i = ((velocity_x(i+1, j, k) - velocity_x(i, j, k)) * (x(i+1, j, k) - x(i, j, k)) &
                                      +(velocity_y(i+1, j, k) - velocity_y(i, j, k)) * (y(i+1, j, k) - y(i, j, k)) &
                                      +(velocity_z(i+1, j, k) - velocity_z(i, j, k)) * (z(i+1, j, k) - z(i, j, k))) / &
                                      ((x(i+1, j, k) - x(i, j, k)) ** 2 &
                                      +(y(i+1, j, k) - y(i, j, k)) ** 2 &
                                      +(z(i+1, j, k) - z(i, j, k)) ** 2)

               vel_diff_coor_diff_j = ((velocity_x(i, j+1, k) - velocity_x(i, j, k)) * (x(i, j+1, k) - x(i, j, k)) &
                                      +(velocity_y(i, j+1, k) - velocity_y(i, j, k)) * (y(i, j+1, k) - y(i, j, k)) &
                                      +(velocity_z(i, j+1, k) - velocity_z(i, j, k)) * (z(i, j+1, k) - z(i, j, k))) / &
                                      ((x(i, j+1, k) - x(i, j, k)) ** 2 &
                                      +(y(i, j+1, k) - y(i, j, k)) ** 2 &
                                      +(z(i, j+1, k) - z(i, j, k)) ** 2)

               vel_diff_coor_diff_k = ((velocity_x(i, j, k+1) - velocity_x(i, j, k)) * (x(i, j, k+1) - x(i, j, k)) &
                                      +(velocity_y(i, j, k+1) - velocity_y(i, j, k)) * (y(i, j, k+1) - y(i, j, k)) &
                                      +(velocity_z(i, j, k+1) - velocity_z(i, j, k)) * (z(i, j, k+1) - z(i, j, k))) / &
                                      ((x(i, j, k+1) - x(i, j, k)) ** 2 &
                                      +(y(i, j, k+1) - y(i, j, k)) ** 2 &
                                      +(z(i, j, k+1) - z(i, j, k)) ** 2)

               abs_i = abs(vel_diff_coor_diff_i)
               abs_j = abs(vel_diff_coor_diff_j)
               abs_k = abs(vel_diff_coor_diff_k)
               vel_grad = abs_i
               if (abs_j > vel_grad) vel_grad = abs_j
               if (abs_k > vel_grad) vel_grad = abs_k

               vel_grad_temp(i,j,k) = vel_grad
               if (vel_grad > global_max) global_max = vel_grad
            end do
         end do
      end do
      !$omp end target teams distribute parallel do

      !$omp target teams distribute parallel do collapse(3) map(to: global_max) map(tofrom: packed_idx)
      do k = 1, nz
         do j = 1, ny
            do i = 1, nx
               if (vel_grad_temp(i,j,k) == global_max) then
                  !$omp atomic write
                  packed_idx = (k-1)*ny*nx + (j-1)*nx + i
               endif
            end do
         end do
      end do
      !$omp end target teams distribute parallel do
      !$omp end target data

      this%i_grad = mod(mod(packed_idx - 1, nx * ny), nx) + 1
      this%j_grad = mod(packed_idx - 1, nx * ny) / nx + 1
      this%k_grad = (packed_idx - 1) / (nx * ny) + 1
      write(*,'(A50, F12.6)') "Calculate_vel_grad_dt_3d inside calculate_dt time: ", omp_get_wtime() - start_time
      write(*,'(A50, F12.6)') "max value time: ", global_max
      write(*,'(A50, 3(I0,1X))') "ijk: ", this%i_grad, this%j_grad, this%k_grad
      write(*,'(A50, F12.6)') "val time: ", vel_grad_temp(this%i_grad,this%j_grad,this%k_grad)
      deallocate(vel_grad_temp)

      vel_grad_max = global_max
      if (vel_grad_max /= 0d0) this%dt_grad = this%dt_factor / vel_grad_max
   end subroutine Calculate_vel_grad_dt_3d
