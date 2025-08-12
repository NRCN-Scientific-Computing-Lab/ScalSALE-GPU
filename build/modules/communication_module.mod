V34 :0x24 communication_module
17 communication.f90 S624 0
08/07/2025  09:02:51
use iso_fortran_env private
use iso_c_binding private
use parallel_parameters_module private
use communication_utils_module private
use communication_parameters_module private
enduse
D 58 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 61 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 64 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 67 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 70 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 73 23 6 1 11 57 0 0 0 0 0
 0 57 11 11 57 57
D 76 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 79 23 6 1 11 58 0 0 0 0 0
 0 58 11 11 58 58
D 82 26 691 8 690 7
D 91 26 694 8 693 7
D 136 26 766 952 765 7
D 181 22 7
D 183 22 7
D 185 22 7
D 187 22 7
D 189 22 7
D 191 22 7
D 2773 26 8010 576 8009 7
D 2836 26 8157 16 8156 7
D 2842 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2845 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 2848 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2851 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2854 23 10 3 1442 1463 0 1 0 0 1
 1443 1446 1447 1443 1446 1444
 1448 1452 1454 1448 1452 1450
 1456 1460 1462 1456 1460 1458
D 2857 23 7 1 0 1440 0 0 0 0 0
 0 1440 0 11 1440 0
D 2860 23 10 3 1465 1481 0 1 0 0 1
 1466 1469 1470 1466 1469 1467
 1471 1474 1475 1471 1474 1472
 1476 1479 1480 1476 1479 1477
D 2863 23 7 1 0 1440 0 0 0 0 0
 0 1440 0 11 1440 0
D 2866 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2869 23 10 1 1483 1489 0 1 0 0 1
 1484 1487 1488 1484 1487 1485
D 2872 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2875 23 10 1 1491 1497 0 1 0 0 1
 1492 1495 1496 1492 1495 1493
D 2878 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2881 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2884 23 10 1 1499 1505 0 1 0 0 1
 1500 1503 1504 1500 1503 1501
D 2887 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2890 23 10 1 1507 1513 0 1 0 0 1
 1508 1511 1512 1508 1511 1509
D 2893 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2896 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2899 23 10 1 1515 1521 0 1 0 0 1
 1516 1519 1520 1516 1519 1517
D 2902 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2905 23 10 1 1523 1529 0 1 0 0 1
 1524 1527 1528 1524 1527 1525
D 2908 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2911 23 7 1 0 1439 0 0 0 0 0
 0 1439 0 11 1439 0
D 2914 23 10 1 1531 1537 0 1 0 0 1
 1532 1535 1536 1532 1535 1533
D 2917 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
D 2920 23 10 1 1539 1545 0 1 0 0 1
 1540 1543 1544 1540 1543 1541
D 2923 23 7 1 0 1398 0 0 0 0 0
 0 1398 0 11 1398 0
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 communication_module
S 626 23 0 0 0 9 814 624 5065 14 0 A 0 0 0 0 B 400000 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 communication_parameters_t
S 629 23 0 0 0 6 7984 624 5123 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_user_fn_array_by_min_val
S 630 23 0 0 0 6 7991 624 5152 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_user_fn_array_by_max_val
S 632 23 0 0 0 9 8075 624 5208 14 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 parallel_parameters_t
S 635 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 637 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 642 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 643 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 644 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 647 7 3 iso_fortran_env character_kinds$ac
R 669 7 25 iso_fortran_env integer_kinds$ac
R 671 7 27 iso_fortran_env logical_kinds$ac
R 673 7 29 iso_fortran_env real_kinds$ac
R 690 25 7 iso_c_binding c_ptr
R 691 5 8 iso_c_binding val c_ptr
R 693 25 10 iso_c_binding c_funptr
R 694 5 11 iso_c_binding val c_funptr
R 728 6 45 iso_c_binding c_null_ptr$ac
R 730 6 47 iso_c_binding c_null_funptr$ac
R 731 26 48 iso_c_binding ==
R 733 26 50 iso_c_binding !=
S 758 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 760 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 761 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 762 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 763 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 764 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 765 25 1 communication_parameters_module communication_parameters_t
R 766 5 2 communication_parameters_module mpi_params communication_parameters_t
R 768 5 4 communication_parameters_module mpi_params$p communication_parameters_t
R 769 5 5 communication_parameters_module communicate_to communication_parameters_t
R 770 5 6 communication_parameters_module tag communication_parameters_t
R 771 5 7 communication_parameters_module comm communication_parameters_t
R 772 5 8 communication_parameters_module d1 communication_parameters_t
R 773 5 9 communication_parameters_module d2 communication_parameters_t
R 774 5 10 communication_parameters_module d3 communication_parameters_t
R 775 5 11 communication_parameters_module dim_offset communication_parameters_t
R 777 5 13 communication_parameters_module types_send communication_parameters_t
R 778 5 14 communication_parameters_module types_send$sd communication_parameters_t
R 779 5 15 communication_parameters_module types_send$p communication_parameters_t
R 780 5 16 communication_parameters_module types_send$o communication_parameters_t
R 782 5 18 communication_parameters_module types_recv communication_parameters_t
R 784 5 20 communication_parameters_module types_recv$sd communication_parameters_t
R 785 5 21 communication_parameters_module types_recv$p communication_parameters_t
R 786 5 22 communication_parameters_module types_recv$o communication_parameters_t
R 789 5 25 communication_parameters_module sizes_send communication_parameters_t
R 790 5 26 communication_parameters_module sizes_send$sd communication_parameters_t
R 791 5 27 communication_parameters_module sizes_send$p communication_parameters_t
R 792 5 28 communication_parameters_module sizes_send$o communication_parameters_t
R 794 5 30 communication_parameters_module sizes_recv communication_parameters_t
R 796 5 32 communication_parameters_module sizes_recv$sd communication_parameters_t
R 797 5 33 communication_parameters_module sizes_recv$p communication_parameters_t
R 798 5 34 communication_parameters_module sizes_recv$o communication_parameters_t
R 801 5 37 communication_parameters_module start_send communication_parameters_t
R 802 5 38 communication_parameters_module start_send$sd communication_parameters_t
R 803 5 39 communication_parameters_module start_send$p communication_parameters_t
R 804 5 40 communication_parameters_module start_send$o communication_parameters_t
R 806 5 42 communication_parameters_module start_recv communication_parameters_t
R 808 5 44 communication_parameters_module start_recv$sd communication_parameters_t
R 809 5 45 communication_parameters_module start_recv$p communication_parameters_t
R 810 5 46 communication_parameters_module start_recv$o communication_parameters_t
R 814 19 50 communication_parameters_module communication_parameters_t
R 7984 14 6 communication_utils_module mpi_user_fn_array_by_min_val
R 7991 14 13 communication_utils_module mpi_user_fn_array_by_max_val
S 8008 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 8009 25 1 parallel_parameters_module parallel_parameters_t
R 8010 5 2 parallel_parameters_module virt_nxp parallel_parameters_t
R 8011 5 3 parallel_parameters_module virt_nyp parallel_parameters_t
R 8012 5 4 parallel_parameters_module virt_nzp parallel_parameters_t
R 8013 5 5 parallel_parameters_module virt_nx parallel_parameters_t
R 8014 5 6 parallel_parameters_module virt_ny parallel_parameters_t
R 8015 5 7 parallel_parameters_module virt_nz parallel_parameters_t
R 8016 5 8 parallel_parameters_module nxp parallel_parameters_t
R 8017 5 9 parallel_parameters_module nyp parallel_parameters_t
R 8018 5 10 parallel_parameters_module nzp parallel_parameters_t
R 8019 5 11 parallel_parameters_module nx parallel_parameters_t
R 8020 5 12 parallel_parameters_module ny parallel_parameters_t
R 8021 5 13 parallel_parameters_module nz parallel_parameters_t
R 8022 5 14 parallel_parameters_module np parallel_parameters_t
R 8023 5 15 parallel_parameters_module npx parallel_parameters_t
R 8024 5 16 parallel_parameters_module npy parallel_parameters_t
R 8025 5 17 parallel_parameters_module npz parallel_parameters_t
R 8026 5 18 parallel_parameters_module my_coords parallel_parameters_t
R 8028 5 20 parallel_parameters_module i_virt parallel_parameters_t
R 8029 5 21 parallel_parameters_module i_virt$sd parallel_parameters_t
R 8030 5 22 parallel_parameters_module i_virt$p parallel_parameters_t
R 8031 5 23 parallel_parameters_module i_virt$o parallel_parameters_t
R 8034 5 26 parallel_parameters_module j_virt parallel_parameters_t
R 8035 5 27 parallel_parameters_module j_virt$sd parallel_parameters_t
R 8036 5 28 parallel_parameters_module j_virt$p parallel_parameters_t
R 8037 5 29 parallel_parameters_module j_virt$o parallel_parameters_t
R 8040 5 32 parallel_parameters_module k_virt parallel_parameters_t
R 8041 5 33 parallel_parameters_module k_virt$sd parallel_parameters_t
R 8042 5 34 parallel_parameters_module k_virt$p parallel_parameters_t
R 8043 5 35 parallel_parameters_module k_virt$o parallel_parameters_t
R 8045 5 37 parallel_parameters_module my_id parallel_parameters_t
R 8046 5 38 parallel_parameters_module my_rank parallel_parameters_t
R 8047 5 39 parallel_parameters_module is_wall_x_top parallel_parameters_t
R 8048 5 40 parallel_parameters_module is_wall_x_bot parallel_parameters_t
R 8049 5 41 parallel_parameters_module is_wall_y_top parallel_parameters_t
R 8050 5 42 parallel_parameters_module is_wall_y_bot parallel_parameters_t
R 8051 5 43 parallel_parameters_module is_wall_z_top parallel_parameters_t
R 8052 5 44 parallel_parameters_module is_wall_z_bot parallel_parameters_t
R 8053 5 45 parallel_parameters_module is_parallel parallel_parameters_t
R 8064 5 56 parallel_parameters_module inside_physical_world$tbp$0 parallel_parameters_t
R 8065 5 57 parallel_parameters_module point_to_virtual_array$tbp$1 parallel_parameters_t
R 8066 5 58 parallel_parameters_module get_virtual_from_to$tbp$2 parallel_parameters_t
R 8067 5 59 parallel_parameters_module get_physical_index$tbp$3 parallel_parameters_t
R 8068 5 60 parallel_parameters_module get_virtual_index_k$tbp$4 parallel_parameters_t
R 8069 5 61 parallel_parameters_module get_virtual_index_j$tbp$5 parallel_parameters_t
R 8070 5 62 parallel_parameters_module get_virtual_index_i$tbp$6 parallel_parameters_t
R 8071 5 63 parallel_parameters_module get_virtual_index$tbp$7 parallel_parameters_t
R 8072 5 64 parallel_parameters_module get_physical_array$tbp$8 parallel_parameters_t
R 8073 5 65 parallel_parameters_module get_virtual_array$tbp$9 parallel_parameters_t
R 8075 19 67 parallel_parameters_module parallel_parameters_t
S 8156 25 0 0 0 2836 1 624 39333 10000004 800214 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 12 8210 0 0 0 624 0 0 0 0 communication_t
S 8157 5 0 0 0 18 8158 624 38390 800004 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 2836 0 0 0 0 0 0 0 0 0 0 0 1 8157 0 624 0 0 0 0 is_parallel
S 8158 5 6 0 0 2773 8161 624 39349 801004 14 A 0 0 0 0 B 0 16 0 0 0 8 8161 0 2836 0 0 0 0 0 0 0 0 0 0 8160 8157 8158 0 624 0 0 0 0 parallel_params
S 8159 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8160 8 1 0 0 2842 1 624 39365 40822006 1020 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 parallel_params$sd
S 8161 5 0 0 0 7 8198 624 39384 40802001 1020 A 0 0 0 0 B 0 16 0 0 0 8 0 0 2836 0 0 0 0 0 0 0 0 0 0 0 8158 8161 0 624 0 0 0 0 parallel_params$p
S 8164 14 0 0 0 9 1 624 39416 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2836 0 0 0 0 0 0 0 0 send_blocking$tbp send_blocking$tbp 
S 8167 14 0 0 0 9 1 624 39451 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2836 0 0 0 0 0 0 0 0 send_nonblocking$tbp send_nonblocking$tbp 
S 8170 14 0 0 0 9 1 624 39492 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 2836 0 0 0 0 0 0 0 0 send_recv_neighbors$tbp send_recv_neighbors$tbp 
S 8173 14 0 0 0 9 1 624 39541 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 2836 0 0 0 0 0 0 0 0 send_recv_neighbors_diag$tbp send_recv_neighbors_diag$tbp 
S 8176 14 0 0 0 9 1 624 39590 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 2836 0 0 0 0 0 0 0 0 send_neighbors_diag$tbp send_neighbors_diag$tbp 
S 8179 14 0 0 0 9 1 624 39639 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 2836 0 0 0 0 0 0 0 0 wait_recv_neighbors_diag$tbp wait_recv_neighbors_diag$tbp 
S 8182 14 0 0 0 9 1 624 39681 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 2836 0 0 0 0 0 0 0 0 send_get_max$tbp send_get_max$tbp 
S 8185 14 0 0 0 9 1 624 39711 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 2836 0 0 0 0 0 0 0 0 send_get_min$tbp send_get_min$tbp 
S 8188 14 0 0 0 9 1 624 39754 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 2836 0 0 0 0 0 0 0 0 send_get_array_by_min_val$tbp send_get_array_by_min_val$tbp 
S 8191 14 0 0 0 9 1 624 39810 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 2836 0 0 0 0 0 0 0 0 send_get_array_by_max_val$tbp send_get_array_by_max_val$tbp 
S 8194 14 0 0 0 9 1 624 39853 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 11 2836 0 0 0 0 0 0 0 0 send_get_sum$tbp send_get_sum$tbp 
S 8197 14 0 0 0 9 1 624 39878 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 12 2836 0 0 0 0 0 0 0 0 destroy$tbp destroy$tbp 
S 8198 5 0 0 0 6 8199 624 39890 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8197 0 0 8349 0 0 0 0 0 0 0 0 0 destroy$tbp$0
S 8199 5 0 0 0 6 8200 624 39904 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8194 0 0 8346 0 0 0 0 0 0 0 0 0 send_get_sum$tbp$1
S 8200 5 0 0 0 6 8201 624 39923 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8191 0 0 8337 0 0 0 0 0 0 0 0 0 send_get_array_by_max_val$tbp$2
S 8201 5 0 0 0 6 8202 624 39955 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8188 0 0 8328 0 0 0 0 0 0 0 0 0 send_get_array_by_min_val$tbp$3
S 8202 5 0 0 0 6 8203 624 39987 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8185 0 0 8323 0 0 0 0 0 0 0 0 0 send_get_min$tbp$4
S 8203 5 0 0 0 6 8204 624 40006 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8182 0 0 8318 0 0 0 0 0 0 0 0 0 send_get_max$tbp$5
S 8204 5 0 0 0 6 8205 624 40025 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8179 0 0 8304 0 0 0 0 0 0 0 0 0 wait_recv_neighbors_diag$tbp$6
S 8205 5 0 0 0 6 8206 624 40056 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8176 0 0 8288 0 0 0 0 0 0 0 0 0 send_neighbors_diag$tbp$7
S 8206 5 0 0 0 6 8207 624 40082 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8173 0 0 8272 0 0 0 0 0 0 0 0 0 send_recv_neighbors_diag$tbp$8
S 8207 5 0 0 0 6 8208 624 40113 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8170 0 0 8251 0 0 0 0 0 0 0 0 0 send_recv_neighbors$tbp$9
S 8208 5 0 0 0 6 8209 624 40139 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8167 0 0 8244 0 0 0 0 0 0 0 0 0 send_nonblocking$tbp$10
S 8209 5 0 0 0 6 1 624 40163 800002 2200 A 0 0 0 0 B 0 45 0 0 0 0 0 0 2836 0 0 0 0 0 0 8164 0 0 8240 0 0 0 0 0 0 0 0 0 send_blocking$tbp$11
S 8210 8 5 0 0 2845 1 624 40184 40822004 1220 A 0 0 0 0 B 0 45 0 0 0 0 0 2836 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 communication_module$$communication_t$$td
S 8211 19 0 0 0 9 1 624 39333 4000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 922 2 0 0 8156 0 0 624 0 0 0 0 communication_t
O 8211 2 8213 8212
S 8212 27 0 0 0 9 8232 624 6956 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 constructor
Q 8212 8211 0
S 8213 27 0 0 0 9 8228 624 40226 10 400000 A 0 0 0 0 B 0 49 0 0 0 0 925 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 constructor_test
Q 8213 8211 0
S 8214 19 0 0 0 9 1 624 40243 4010 0 A 0 0 0 0 B 0 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 924 1 0 0 0 0 0 624 0 0 0 0 get_rank
O 8214 1 8215
S 8215 27 0 0 0 9 8350 624 14419 10 400000 A 0 0 0 0 B 0 54 0 0 0 0 927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rank
Q 8215 8214 0
S 8228 23 5 0 0 2836 8230 624 40226 14 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor_test
S 8229 1 3 0 0 18 1 8228 40252 14 3000 A 0 0 0 0 B 0 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 use_mpi
S 8230 14 5 0 0 2836 1 8228 40226 14 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5356 1 0 0 8231 0 0 0 0 0 0 0 0 0 59 0 624 0 0 0 0 constructor_test constructor_test constructor_test
F 8230 1 8229
S 8231 1 3 0 0 2836 1 8228 40226 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor_test
S 8232 23 5 0 0 2836 8234 624 6956 14 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 8233 1 3 1 0 2773 1 8232 40260 1014 3014 A 0 0 0 0 B 0 68 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8236 0 0 0 0 0 0 0 0 parallel_p
S 8234 14 5 0 0 2836 1 8232 6956 14 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5358 1 0 0 8235 0 0 0 0 0 0 0 0 0 68 0 624 0 0 0 0 constructor constructor constructor
F 8234 1 8233
S 8235 1 3 0 0 2836 1 8232 6956 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 8236 8 1 0 0 2848 1 8232 40271 40822016 1020 A 0 0 0 0 B 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 parallel_p$sd
S 8237 23 5 0 0 0 8240 624 39402 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_blocking
S 8238 1 3 1 0 2836 1 8237 39004 14 3200 A 0 0 0 0 B 0 78 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8239 1 3 0 0 136 1 8237 40285 14 3000 A 0 0 0 0 B 0 78 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 communication_parameters
S 8240 14 5 0 0 0 1 8237 39402 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5360 2 0 0 0 0 0 0 0 0 0 0 0 0 78 0 624 0 0 0 0 send_blocking send_blocking 
F 8240 2 8238 8239
S 8241 23 5 0 0 0 8244 624 39434 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_nonblocking
S 8242 1 3 1 0 2836 1 8241 39004 14 3200 A 0 0 0 0 B 0 84 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8243 1 3 0 0 136 1 8241 40285 14 3014 A 0 0 0 0 B 0 84 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8245 0 0 0 0 0 0 0 0 communication_parameters
S 8244 14 5 0 0 0 1 8241 39434 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5363 2 0 0 0 0 0 0 0 0 0 0 0 0 84 0 624 0 0 0 0 send_nonblocking send_nonblocking 
F 8244 2 8242 8243
S 8245 8 1 0 0 2851 1 8241 40310 40822016 1020 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 communication_parameters$sd
S 8246 23 5 0 0 0 8251 624 39472 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_recv_neighbors
S 8247 1 3 1 0 2836 1 8246 39004 14 3200 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8248 7 3 1 0 2854 1 8246 40338 10a00014 3050 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8253 0 0 0 0 0 0 0 0 send_buf
S 8249 7 3 3 0 2860 1 8246 40347 10a00014 3050 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8262 0 0 0 0 0 0 0 0 recv_buf
S 8250 1 3 3 0 136 1 8246 40356 14 3014 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8266 0 0 0 0 0 0 0 0 comm_params
S 8251 14 5 0 0 0 1 8246 39472 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5366 4 0 0 0 0 0 0 0 0 0 0 0 0 92 0 624 0 0 0 0 send_recv_neighbors send_recv_neighbors 
F 8251 4 8247 8248 8249 8250
S 8252 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8253 8 1 0 0 2857 1 8246 40368 40822014 1020 A 0 0 0 0 B 0 94 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_buf$sd
S 8257 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8258 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8259 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8260 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8261 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 27 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 8262 8 1 0 0 2863 1 8246 40418 40822014 1020 A 0 0 0 0 B 0 95 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_buf$sd
S 8266 8 1 0 0 2866 1 8246 40468 40822016 1020 A 0 0 0 0 B 0 96 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm_params$sd
S 8267 23 5 0 0 0 8272 624 39516 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_recv_neighbors_diag
S 8268 1 3 1 0 2836 1 8267 39004 14 3200 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8269 1 3 3 0 136 1 8267 40356 14 3014 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8281 0 0 0 0 0 0 0 0 comm_params
S 8270 7 3 3 0 2869 1 8267 40338 10a00014 3050 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8273 0 0 0 0 0 0 0 0 send_buf
S 8271 7 3 3 0 2875 1 8267 40347 10a00014 3050 A 0 0 0 0 B 0 117 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8277 0 0 0 0 0 0 0 0 recv_buf
S 8272 14 5 0 0 0 1 8267 39516 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5371 4 0 0 0 0 0 0 0 0 0 0 0 0 117 0 624 0 0 0 0 send_recv_neighbors_diag send_recv_neighbors_diag 
F 8272 4 8268 8269 8270 8271
S 8273 8 1 0 0 2872 1 8267 40483 40822014 1020 A 0 0 0 0 B 0 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_buf$sd1
S 8277 8 1 0 0 2878 1 8267 40537 40822014 1020 A 0 0 0 0 B 0 120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_buf$sd5
S 8281 8 1 0 0 2881 1 8267 40591 40822016 1020 A 0 0 0 0 B 0 124 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm_params$sd9
S 8282 23 5 0 0 0 8288 624 39570 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_neighbors_diag
S 8283 1 3 1 0 2836 1 8282 39004 14 3200 A 0 0 0 0 B 0 155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8284 1 3 3 0 136 1 8282 40356 14 3014 A 0 0 0 0 B 0 155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8297 0 0 0 0 0 0 0 0 comm_params
S 8285 7 3 3 0 2884 1 8282 40338 10a00014 3050 A 0 0 0 0 B 0 155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8289 0 0 0 0 0 0 0 0 send_buf
S 8286 7 3 3 0 2890 1 8282 40347 10a00014 3050 A 0 0 0 0 B 0 155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8293 0 0 0 0 0 0 0 0 recv_buf
S 8287 1 3 3 0 6 1 8282 14240 14 3000 A 0 0 0 0 B 0 155 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 request
S 8288 14 5 0 0 0 1 8282 39570 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5376 5 0 0 0 0 0 0 0 0 0 0 0 0 155 0 624 0 0 0 0 send_neighbors_diag send_neighbors_diag 
F 8288 5 8283 8284 8285 8286 8287
S 8289 8 1 0 0 2887 1 8282 40607 40822014 1020 A 0 0 0 0 B 0 157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_buf$sd10
S 8293 8 1 0 0 2893 1 8282 40665 40822014 1020 A 0 0 0 0 B 0 158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_buf$sd14
S 8297 8 1 0 0 2896 1 8282 40723 40822016 1020 A 0 0 0 0 B 0 161 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm_params$sd18
S 8298 23 5 0 0 0 8304 624 39614 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 wait_recv_neighbors_diag
S 8299 1 3 1 0 2836 1 8298 39004 14 3200 A 0 0 0 0 B 0 187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8300 1 3 3 0 136 1 8298 40356 14 3014 A 0 0 0 0 B 0 187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8313 0 0 0 0 0 0 0 0 comm_params
S 8301 7 3 3 0 2899 1 8298 40338 10a00014 3050 A 0 0 0 0 B 0 187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8305 0 0 0 0 0 0 0 0 send_buf
S 8302 7 3 3 0 2905 1 8298 40347 10a00014 3050 A 0 0 0 0 B 0 187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8309 0 0 0 0 0 0 0 0 recv_buf
S 8303 1 3 3 0 6 1 8298 14240 14 3000 A 0 0 0 0 B 0 187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 request
S 8304 14 5 0 0 0 1 8298 39614 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5382 5 0 0 0 0 0 0 0 0 0 0 0 0 187 0 624 0 0 0 0 wait_recv_neighbors_diag wait_recv_neighbors_diag 
F 8304 5 8299 8300 8301 8302 8303
S 8305 8 1 0 0 2902 1 8298 40740 40822014 1020 A 0 0 0 0 B 0 189 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_buf$sd19
S 8309 8 1 0 0 2908 1 8298 40798 40822014 1020 A 0 0 0 0 B 0 190 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_buf$sd23
S 8313 8 1 0 0 2911 1 8298 40856 40822016 1020 A 0 0 0 0 B 0 193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm_params$sd27
S 8314 23 5 0 0 0 8318 624 39668 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_get_max
S 8315 1 3 1 0 2836 1 8314 39004 14 3200 A 0 0 0 0 B 0 209 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8316 1 3 1 0 10 1 8314 40873 14 3000 A 0 0 0 0 B 0 209 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_val
S 8317 1 3 3 0 10 1 8314 40882 14 3000 A 0 0 0 0 B 0 209 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_val
S 8318 14 5 0 0 0 1 8314 39668 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5388 3 0 0 0 0 0 0 0 0 0 0 0 0 209 0 624 0 0 0 0 send_get_max send_get_max 
F 8318 3 8315 8316 8317
S 8319 23 5 0 0 0 8323 624 39698 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_get_min
S 8320 1 3 1 0 2836 1 8319 39004 14 3200 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8321 1 3 1 0 10 1 8319 40873 14 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_val
S 8322 1 3 3 0 10 1 8319 40882 14 3000 A 0 0 0 0 B 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_val
S 8323 14 5 0 0 0 1 8319 39698 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5392 3 0 0 0 0 0 0 0 0 0 0 0 0 224 0 624 0 0 0 0 send_get_min send_get_min 
F 8323 3 8320 8321 8322
S 8324 23 5 0 0 0 8328 624 39728 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_get_array_by_min_val
S 8325 1 3 1 0 2836 1 8324 39004 14 3200 A 0 0 0 0 B 0 239 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8326 1 3 3 0 10 1 8324 5716 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 val
S 8327 7 3 3 0 2914 1 8324 40891 10a00014 3050 A 0 0 0 0 B 0 239 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8329 0 0 0 0 0 0 0 0 array
S 8328 14 5 0 0 0 1 8324 39728 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5396 3 0 0 0 0 0 0 0 0 0 0 0 0 239 0 624 0 0 0 0 send_get_array_by_min_val send_get_array_by_min_val 
F 8328 3 8325 8326 8327
S 8329 8 1 0 0 2917 1 8324 40897 40822014 1020 A 0 0 0 0 B 0 242 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 array$sd
S 8333 23 5 0 0 0 8337 624 39784 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_get_array_by_max_val
S 8334 1 3 1 0 2836 1 8333 39004 14 3200 A 0 0 0 0 B 0 271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8335 1 3 3 0 10 1 8333 5716 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 val
S 8336 7 3 3 0 2920 1 8333 40891 10a00014 3050 A 0 0 0 0 B 0 271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8338 0 0 0 0 0 0 0 0 array
S 8337 14 5 0 0 0 1 8333 39784 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5400 3 0 0 0 0 0 0 0 0 0 0 0 0 271 0 624 0 0 0 0 send_get_array_by_max_val send_get_array_by_max_val 
F 8337 3 8334 8335 8336
S 8338 8 1 0 0 2923 1 8333 40935 40822014 1020 A 0 0 0 0 B 0 274 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 array$sd28
S 8342 23 5 0 0 0 8346 624 39840 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_get_sum
S 8343 1 3 1 0 2836 1 8342 39004 14 3200 A 0 0 0 0 B 0 308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8344 1 3 1 0 10 1 8342 40873 14 3000 A 0 0 0 0 B 0 308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 send_val
S 8345 1 3 3 0 10 1 8342 40882 14 3000 A 0 0 0 0 B 0 308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 recv_val
S 8346 14 5 0 0 0 1 8342 39840 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5404 3 0 0 0 0 0 0 0 0 0 0 0 0 308 0 624 0 0 0 0 send_get_sum send_get_sum 
F 8346 3 8343 8344 8345
S 8347 23 5 0 0 0 8349 624 39870 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 destroy
S 8348 1 3 1 0 2836 1 8347 39004 14 3200 A 0 0 0 0 B 0 321 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 8349 14 5 0 0 0 1 8347 39870 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5408 1 0 0 0 0 0 0 0 0 0 0 0 0 321 0 624 0 0 0 0 destroy destroy 
F 8349 1 8348
S 8350 23 5 0 0 6 8352 624 14419 14 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rank
S 8351 1 3 0 0 6 1 8350 6402 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 comm
S 8352 14 5 0 0 6 1 8350 14419 14 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 5410 1 0 0 8353 0 0 0 0 0 0 0 0 0 327 0 624 0 0 0 0 rank rank rank
F 8352 1 8351
S 8353 1 3 0 0 6 1 8350 14419 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 rank
A 16 2 0 0 0 6 635 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 637 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 642 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 643 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 644 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 730 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 7 760 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 7 764 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 7 761 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 7 762 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 7 763 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 7 758 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 1398 2 0 0 0 7 8008 0 0 0 1398 0 0 0 0 0 0 0 0 0 0 0
A 1439 2 0 0 869 7 8159 0 0 0 1439 0 0 0 0 0 0 0 0 0 0 0
A 1440 2 0 0 0 7 8252 0 0 0 1440 0 0 0 0 0 0 0 0 0 0 0
A 1441 1 0 11 0 2857 8253 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1442 10 0 0 0 7 1441 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1443 10 0 0 1442 7 1441 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1444 10 0 0 1443 7 1441 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1445 4 0 0 0 7 1444 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1446 4 0 0 0 7 1443 0 1445 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1447 10 0 0 1444 7 1441 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1448 10 0 0 1447 7 1441 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 135
A 1449 2 0 0 0 7 8257 0 0 0 1449 0 0 0 0 0 0 0 0 0 0 0
A 1450 10 0 0 1448 7 1441 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1449
A 1451 4 0 0 0 7 1450 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1452 4 0 0 0 7 1448 0 1451 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1453 2 0 0 0 7 8260 0 0 0 1453 0 0 0 0 0 0 0 0 0 0 0
A 1454 10 0 0 1450 7 1441 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1453
A 1455 2 0 0 0 7 8258 0 0 0 1455 0 0 0 0 0 0 0 0 0 0 0
A 1456 10 0 0 1454 7 1441 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1455
A 1457 2 0 0 0 7 8259 0 0 0 1457 0 0 0 0 0 0 0 0 0 0 0
A 1458 10 0 0 1456 7 1441 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1457
A 1459 4 0 0 817 7 1458 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1460 4 0 0 0 7 1456 0 1459 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1461 2 0 0 0 7 8261 0 0 0 1461 0 0 0 0 0 0 0 0 0 0 0
A 1462 10 0 0 1458 7 1441 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1461
A 1463 10 0 0 1462 7 1441 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1464 1 0 11 0 2863 8262 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1465 10 0 0 0 7 1464 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1466 10 0 0 1465 7 1464 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1467 10 0 0 1466 7 1464 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1468 4 0 0 0 7 1467 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1469 4 0 0 0 7 1466 0 1468 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1470 10 0 0 1467 7 1464 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1471 10 0 0 1470 7 1464 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 135
A 1472 10 0 0 1471 7 1464 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1449
A 1473 4 0 0 0 7 1472 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1474 4 0 0 1232 7 1471 0 1473 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1475 10 0 0 1472 7 1464 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1453
A 1476 10 0 0 1475 7 1464 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1455
A 1477 10 0 0 1476 7 1464 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1457
A 1478 4 0 0 0 7 1477 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1479 4 0 0 0 7 1476 0 1478 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1480 10 0 0 1477 7 1464 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1461
A 1481 10 0 0 1480 7 1464 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1482 1 0 9 0 2872 8273 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1483 10 0 0 982 7 1482 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1484 10 0 0 1483 7 1482 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1485 10 0 0 1484 7 1482 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1486 4 0 0 0 7 1485 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1487 4 0 0 1144 7 1484 0 1486 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1488 10 0 0 1485 7 1482 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1489 10 0 0 1488 7 1482 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1490 1 0 9 757 2878 8277 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1491 10 0 0 0 7 1490 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1492 10 0 0 1491 7 1490 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1493 10 0 0 1492 7 1490 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1494 4 0 0 0 7 1493 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1495 4 0 0 0 7 1492 0 1494 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1496 10 0 0 1493 7 1490 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1497 10 0 0 1496 7 1490 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1498 1 0 9 0 2887 8289 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1499 10 0 0 0 7 1498 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1500 10 0 0 1499 7 1498 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1501 10 0 0 1500 7 1498 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1502 4 0 0 0 7 1501 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1503 4 0 0 0 7 1500 0 1502 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1504 10 0 0 1501 7 1498 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1505 10 0 0 1504 7 1498 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1506 1 0 9 0 2893 8293 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1507 10 0 0 0 7 1506 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1508 10 0 0 1507 7 1506 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1509 10 0 0 1508 7 1506 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1510 4 0 0 0 7 1509 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1511 4 0 0 0 7 1508 0 1510 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1512 10 0 0 1509 7 1506 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1513 10 0 0 1512 7 1506 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1514 1 0 9 0 2902 8305 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1515 10 0 0 1050 7 1514 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1516 10 0 0 1515 7 1514 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1517 10 0 0 1516 7 1514 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1518 4 0 0 0 7 1517 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1519 4 0 0 0 7 1516 0 1518 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1520 10 0 0 1517 7 1514 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1521 10 0 0 1520 7 1514 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1522 1 0 9 0 2908 8309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1523 10 0 0 1058 7 1522 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1524 10 0 0 1523 7 1522 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1525 10 0 0 1524 7 1522 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1526 4 0 0 1330 7 1525 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1527 4 0 0 0 7 1524 0 1526 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1528 10 0 0 1525 7 1522 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1529 10 0 0 1528 7 1522 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1530 1 0 9 0 2917 8329 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1531 10 0 0 0 7 1530 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1532 10 0 0 1531 7 1530 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1533 10 0 0 1532 7 1530 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1534 4 0 0 0 7 1533 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1535 4 0 0 0 7 1532 0 1534 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1536 10 0 0 1533 7 1530 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1537 10 0 0 1536 7 1530 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
A 1538 1 0 9 0 2923 8338 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1539 10 0 0 988 7 1538 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1540 10 0 0 1539 7 1538 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1541 10 0 0 1540 7 1538 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1542 4 0 0 754 7 1541 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1543 4 0 0 0 7 1540 0 1542 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1544 10 0 0 1541 7 1538 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1545 10 0 0 1544 7 1538 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
Z
J 29 1 1
V 61 58 7 0
R 0 61 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 67 64 7 0
R 0 67 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 77 1 1
V 73 70 7 0
R 0 73 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 33 1
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 80 1 1
V 77 76 7 0
R 0 79 0 0
A 0 6 0 0 1 35 1
A 0 6 0 0 1 16 0
J 133 1 1
V 131 82 7 0
S 0 82 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 134 91 7 0
S 0 91 0 0 0
A 0 6 0 0 1 2 0
T 765 136 0 0 0 0
A 779 7 181 0 1 2 1
A 778 7 0 135 1 10 1
A 785 7 183 0 1 2 1
A 784 7 0 135 1 10 1
A 791 7 185 0 1 2 1
A 790 7 0 135 1 10 1
A 797 7 187 0 1 2 1
A 796 7 0 135 1 10 1
A 803 7 189 0 1 2 1
A 802 7 0 135 1 10 1
A 809 7 191 0 1 2 1
A 808 7 0 135 1 10 0
Z
