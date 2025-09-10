V34 :0x24 momentum_module
12 momentum.f90 S624 0
09/04/2025  12:55:57
use data_module private
use data_4d_module private
use communication_parameters_module private
use iso_fortran_env private
use quantity_module private
use iso_c_binding private
use boundary_parameters_module private
use general_utils_module private
use vertex_boundary_condition_module private
use vertex_quantity_module private
enduse
D 58 26 653 8 652 7
D 67 26 656 8 655 7
D 76 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 79 23 6 1 11 11 0 0 0 0 0
 0 11 11 11 11 11
D 82 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 85 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 88 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 91 23 6 1 11 114 0 0 0 0 0
 0 114 11 11 114 114
D 94 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 97 23 6 1 11 115 0 0 0 0 0
 0 115 11 11 115 115
D 136 26 768 952 767 7
D 181 22 7
D 183 22 7
D 185 22 7
D 187 22 7
D 189 22 7
D 191 22 7
D 499 26 1191 648 1186 7
D 532 22 7
D 534 22 7
D 626 26 1353 600 1349 7
D 659 22 7
D 661 22 7
D 766 26 1554 1168 1553 7
D 1184 26 1979 136 1948 7
D 1276 26 1719 192 1717 7
D 1288 26 1990 344 1989 7
D 1349 26 2205 344 2204 7
D 1355 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 1361 23 1184 1 950 956 0 1 0 0 1
 951 954 955 951 954 952
D 1364 23 7 1 0 220 0 0 0 0 0
 0 220 0 11 220 0
D 1367 23 7 1 0 261 0 0 0 0 0
 0 261 0 11 261 0
S 624 24 0 0 0 6 1 0 5012 10015 0 A 0 0 0 0 B 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 momentum_module
S 626 23 0 0 0 9 1989 624 5051 14 0 A 0 0 0 0 B 400000 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_quantity_t
S 628 23 0 0 0 9 1947 624 5102 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_boundary_condition_t
S 629 23 0 0 0 9 1948 624 5130 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_bc_wrapper_t
S 631 23 0 0 0 9 2133 624 5171 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 get_axises_num
S 633 23 0 0 0 9 1641 624 5213 14 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 boundary_parameters_t
S 635 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 636 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 637 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 652 25 7 iso_c_binding c_ptr
R 653 5 8 iso_c_binding val c_ptr
R 655 25 10 iso_c_binding c_funptr
R 656 5 11 iso_c_binding val c_funptr
R 690 6 45 iso_c_binding c_null_ptr$ac
R 692 6 47 iso_c_binding c_null_funptr$ac
R 693 26 48 iso_c_binding ==
R 695 26 50 iso_c_binding !=
S 727 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 728 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 731 7 3 iso_fortran_env character_kinds$ac
R 753 7 25 iso_fortran_env integer_kinds$ac
R 755 7 27 iso_fortran_env logical_kinds$ac
R 757 7 29 iso_fortran_env real_kinds$ac
S 760 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 762 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 763 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 764 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 765 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 766 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 767 25 1 communication_parameters_module communication_parameters_t
R 768 5 2 communication_parameters_module mpi_params communication_parameters_t
R 770 5 4 communication_parameters_module mpi_params$p communication_parameters_t
R 771 5 5 communication_parameters_module communicate_to communication_parameters_t
R 772 5 6 communication_parameters_module tag communication_parameters_t
R 773 5 7 communication_parameters_module comm communication_parameters_t
R 774 5 8 communication_parameters_module d1 communication_parameters_t
R 775 5 9 communication_parameters_module d2 communication_parameters_t
R 776 5 10 communication_parameters_module d3 communication_parameters_t
R 777 5 11 communication_parameters_module dim_offset communication_parameters_t
R 779 5 13 communication_parameters_module types_send communication_parameters_t
R 780 5 14 communication_parameters_module types_send$sd communication_parameters_t
R 781 5 15 communication_parameters_module types_send$p communication_parameters_t
R 782 5 16 communication_parameters_module types_send$o communication_parameters_t
R 784 5 18 communication_parameters_module types_recv communication_parameters_t
R 786 5 20 communication_parameters_module types_recv$sd communication_parameters_t
R 787 5 21 communication_parameters_module types_recv$p communication_parameters_t
R 788 5 22 communication_parameters_module types_recv$o communication_parameters_t
R 791 5 25 communication_parameters_module sizes_send communication_parameters_t
R 792 5 26 communication_parameters_module sizes_send$sd communication_parameters_t
R 793 5 27 communication_parameters_module sizes_send$p communication_parameters_t
R 794 5 28 communication_parameters_module sizes_send$o communication_parameters_t
R 796 5 30 communication_parameters_module sizes_recv communication_parameters_t
R 798 5 32 communication_parameters_module sizes_recv$sd communication_parameters_t
R 799 5 33 communication_parameters_module sizes_recv$p communication_parameters_t
R 800 5 34 communication_parameters_module sizes_recv$o communication_parameters_t
R 803 5 37 communication_parameters_module start_send communication_parameters_t
R 804 5 38 communication_parameters_module start_send$sd communication_parameters_t
R 805 5 39 communication_parameters_module start_send$p communication_parameters_t
R 806 5 40 communication_parameters_module start_send$o communication_parameters_t
R 808 5 42 communication_parameters_module start_recv communication_parameters_t
R 810 5 44 communication_parameters_module start_recv$sd communication_parameters_t
R 811 5 45 communication_parameters_module start_recv$p communication_parameters_t
R 812 5 46 communication_parameters_module start_recv$o communication_parameters_t
S 892 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 1041 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1186 25 4 data_4d_module data_4d_t
R 1191 5 9 data_4d_module values data_4d_t
R 1192 5 10 data_4d_module values$sd data_4d_t
R 1193 5 11 data_4d_module values$p data_4d_t
R 1194 5 12 data_4d_module values$o data_4d_t
R 1196 5 14 data_4d_module nx data_4d_t
R 1197 5 15 data_4d_module ny data_4d_t
R 1198 5 16 data_4d_module nz data_4d_t
R 1199 5 17 data_4d_module nmats data_4d_t
R 1200 5 18 data_4d_module communication data_4d_t
R 1202 5 20 data_4d_module communication$p data_4d_t
R 1203 5 21 data_4d_module communication_parameters data_4d_t
R 1205 5 23 data_4d_module communication_parameters$p data_4d_t
R 1206 5 24 data_4d_module parallel_params data_4d_t
R 1208 5 26 data_4d_module parallel_params$p data_4d_t
R 1210 5 28 data_4d_module send_buf data_4d_t
R 1211 5 29 data_4d_module send_buf$sd data_4d_t
R 1212 5 30 data_4d_module send_buf$p data_4d_t
R 1213 5 31 data_4d_module send_buf$o data_4d_t
R 1216 5 34 data_4d_module recv_buf data_4d_t
R 1217 5 35 data_4d_module recv_buf$sd data_4d_t
R 1218 5 36 data_4d_module recv_buf$p data_4d_t
R 1219 5 37 data_4d_module recv_buf$o data_4d_t
R 1221 5 39 data_4d_module request data_4d_t
R 1235 5 53 data_4d_module .read$0 data_4d_t
R 1236 5 54 data_4d_module read_data$tbp$1 data_4d_t
R 1237 5 55 data_4d_module .write$2 data_4d_t
R 1238 5 56 data_4d_module write_data$tbp$3 data_4d_t
R 1239 5 57 data_4d_module debug_print$tbp$4 data_4d_t
R 1240 5 58 data_4d_module exchange_end$tbp$5 data_4d_t
R 1241 5 59 data_4d_module exchange_virtual_space_nonblocking$tbp$6 data_4d_t
R 1242 5 60 data_4d_module get_recv_buf$tbp$7 data_4d_t
R 1243 5 61 data_4d_module set_send_buf$tbp$8 data_4d_t
R 1244 5 62 data_4d_module exchange_virtual_space_blocking$tbp$9 data_4d_t
R 1245 5 63 data_4d_module debug_check_nan$tbp$10 data_4d_t
R 1246 5 64 data_4d_module set_communication$tbp$11 data_4d_t
R 1247 5 65 data_4d_module clean_data$tbp$12 data_4d_t
R 1248 5 66 data_4d_module point_to_data$tbp$13 data_4d_t
R 1349 25 4 data_module data_t
R 1353 5 8 data_module values data_t
R 1354 5 9 data_module values$sd data_t
R 1355 5 10 data_module values$p data_t
R 1356 5 11 data_module values$o data_t
R 1358 5 13 data_module nx data_t
R 1359 5 14 data_module ny data_t
R 1360 5 15 data_module nz data_t
R 1361 5 16 data_module communication data_t
R 1363 5 18 data_module communication$p data_t
R 1364 5 19 data_module communication_parameters data_t
R 1366 5 21 data_module communication_parameters$p data_t
R 1367 5 22 data_module parallel_params data_t
R 1369 5 24 data_module parallel_params$p data_t
R 1371 5 26 data_module send_buf data_t
R 1372 5 27 data_module send_buf$sd data_t
R 1373 5 28 data_module send_buf$p data_t
R 1374 5 29 data_module send_buf$o data_t
R 1377 5 32 data_module recv_buf data_t
R 1378 5 33 data_module recv_buf$sd data_t
R 1379 5 34 data_module recv_buf$p data_t
R 1380 5 35 data_module recv_buf$o data_t
R 1382 5 37 data_module request data_t
R 1396 5 51 data_module .read$0 data_t
R 1397 5 52 data_module read_data$tbp$1 data_t
R 1398 5 53 data_module .write$2 data_t
R 1399 5 54 data_module write_data$tbp$3 data_t
R 1400 5 55 data_module debug_print$tbp$4 data_t
R 1401 5 56 data_module exchange_end$tbp$5 data_t
R 1402 5 57 data_module exchange_virtual_space_nonblocking$tbp$6 data_t
R 1403 5 58 data_module get_recv_buf$tbp$7 data_t
R 1404 5 59 data_module set_send_buf$tbp$8 data_t
R 1405 5 60 data_module exchange_virtual_space_blocking$tbp$9 data_t
R 1406 5 61 data_module debug_check_nan$tbp$10 data_t
R 1407 5 62 data_module set_communication$tbp$11 data_t
R 1408 5 63 data_module clean_data$tbp$12 data_t
R 1409 5 64 data_module point_to_data$tbp$13 data_t
R 1553 25 5 boundary_parameters_module boundary_parameters_t
R 1554 5 6 boundary_parameters_module nxp boundary_parameters_t
R 1555 5 7 boundary_parameters_module nyp boundary_parameters_t
R 1556 5 8 boundary_parameters_module nzp boundary_parameters_t
R 1557 5 9 boundary_parameters_module dimension boundary_parameters_t
R 1559 5 11 boundary_parameters_module edge_num boundary_parameters_t
R 1560 5 12 boundary_parameters_module edge_num$sd boundary_parameters_t
R 1561 5 13 boundary_parameters_module edge_num$p boundary_parameters_t
R 1562 5 14 boundary_parameters_module edge_num$o boundary_parameters_t
R 1565 5 17 boundary_parameters_module angles boundary_parameters_t
R 1566 5 18 boundary_parameters_module angles$sd boundary_parameters_t
R 1567 5 19 boundary_parameters_module angles$p boundary_parameters_t
R 1568 5 20 boundary_parameters_module angles$o boundary_parameters_t
R 1570 5 22 boundary_parameters_module normal_i1 boundary_parameters_t
R 1571 5 23 boundary_parameters_module normal_inxp boundary_parameters_t
R 1572 5 24 boundary_parameters_module normal_j1 boundary_parameters_t
R 1573 5 25 boundary_parameters_module normal_jnyp boundary_parameters_t
R 1574 5 26 boundary_parameters_module normal_k1 boundary_parameters_t
R 1575 5 27 boundary_parameters_module normal_knzp boundary_parameters_t
R 1577 5 29 boundary_parameters_module edge_vector_x boundary_parameters_t
R 1578 5 30 boundary_parameters_module edge_vector_x$sd boundary_parameters_t
R 1579 5 31 boundary_parameters_module edge_vector_x$p boundary_parameters_t
R 1580 5 32 boundary_parameters_module edge_vector_x$o boundary_parameters_t
R 1583 5 35 boundary_parameters_module edge_vector_y boundary_parameters_t
R 1584 5 36 boundary_parameters_module edge_vector_y$sd boundary_parameters_t
R 1585 5 37 boundary_parameters_module edge_vector_y$p boundary_parameters_t
R 1586 5 38 boundary_parameters_module edge_vector_y$o boundary_parameters_t
R 1589 5 41 boundary_parameters_module edge_vector_z boundary_parameters_t
R 1590 5 42 boundary_parameters_module edge_vector_z$sd boundary_parameters_t
R 1591 5 43 boundary_parameters_module edge_vector_z$p boundary_parameters_t
R 1592 5 44 boundary_parameters_module edge_vector_z$o boundary_parameters_t
R 1594 5 46 boundary_parameters_module plane_const_i1 boundary_parameters_t
R 1595 5 47 boundary_parameters_module plane_const_inxp boundary_parameters_t
R 1596 5 48 boundary_parameters_module plane_const_j1 boundary_parameters_t
R 1597 5 49 boundary_parameters_module plane_const_jnyp boundary_parameters_t
R 1598 5 50 boundary_parameters_module plane_const_k1 boundary_parameters_t
R 1599 5 51 boundary_parameters_module plane_const_knzp boundary_parameters_t
R 1600 5 52 boundary_parameters_module is_wall_x_top boundary_parameters_t
R 1601 5 53 boundary_parameters_module is_wall_x_bot boundary_parameters_t
R 1602 5 54 boundary_parameters_module is_wall_y_top boundary_parameters_t
R 1603 5 55 boundary_parameters_module is_wall_y_bot boundary_parameters_t
R 1604 5 56 boundary_parameters_module is_wall_z_top boundary_parameters_t
R 1605 5 57 boundary_parameters_module is_wall_z_bot boundary_parameters_t
R 1606 5 58 boundary_parameters_module is_parallel boundary_parameters_t
R 1607 5 59 boundary_parameters_module mesh_type boundary_parameters_t
R 1609 5 61 boundary_parameters_module boundary_type boundary_parameters_t
R 1610 5 62 boundary_parameters_module boundary_type$sd boundary_parameters_t
R 1611 5 63 boundary_parameters_module boundary_type$p boundary_parameters_t
R 1612 5 64 boundary_parameters_module boundary_type$o boundary_parameters_t
R 1614 5 66 boundary_parameters_module mpi_comm boundary_parameters_t
R 1616 5 68 boundary_parameters_module mpi_comm$p boundary_parameters_t
R 1617 5 69 boundary_parameters_module parallel_params boundary_parameters_t
R 1619 5 71 boundary_parameters_module parallel_params$p boundary_parameters_t
R 1630 5 82 boundary_parameters_module .read$1 boundary_parameters_t
R 1631 5 83 boundary_parameters_module read_boundary_parameters$tbp$2 boundary_parameters_t
R 1632 5 84 boundary_parameters_module .write$3 boundary_parameters_t
R 1633 5 85 boundary_parameters_module write_boundary_parameters$tbp$4 boundary_parameters_t
R 1634 5 86 boundary_parameters_module build_boundary$tbp$5 boundary_parameters_t
R 1635 5 87 boundary_parameters_module point_to_edges$tbp$6 boundary_parameters_t
R 1636 5 88 boundary_parameters_module point_to_edge_vectors$tbp$7 boundary_parameters_t
R 1637 5 89 boundary_parameters_module set_communication$tbp$8 boundary_parameters_t
R 1638 5 90 boundary_parameters_module calculate_edge_vector_3d$tbp$9 boundary_parameters_t
R 1639 5 91 boundary_parameters_module calculate_boundary_normal_3d$tbp$10 boundary_parameters_t
R 1641 19 93 boundary_parameters_module boundary_parameters_t
R 1717 25 8 quantity_module quantity_t
R 1719 5 10 quantity_module data quantity_t
R 1720 5 11 quantity_module data$sd quantity_t
R 1721 5 12 quantity_module data$p quantity_t
R 1722 5 13 quantity_module data$o quantity_t
R 1724 5 15 quantity_module data_4d quantity_t
R 1726 5 17 quantity_module data_4d$p quantity_t
R 1727 5 18 quantity_module boundary_params quantity_t
R 1729 5 20 quantity_module boundary_params$p quantity_t
R 1730 5 21 quantity_module parallel_params quantity_t
R 1732 5 23 quantity_module parallel_params$p quantity_t
R 1733 5 24 quantity_module d1 quantity_t
R 1734 5 25 quantity_module d2 quantity_t
R 1735 5 26 quantity_module d3 quantity_t
R 1736 5 27 quantity_module number_of_axises quantity_t
R 1741 14 32 quantity_module ptr_coordinates_1d$tbp
R 1742 14 33 quantity_module ptr_coordinates_1d_first$tbp
R 1743 14 34 quantity_module ptr_coordinates_2d$tbp
R 1744 14 35 quantity_module ptr_coordinates_3d$tbp
R 1745 14 36 quantity_module ptr_coordinates_4d$tbp
R 1756 14 47 quantity_module write_quantity$tbp
R 1759 14 50 quantity_module read_quantity$tbp
R 1761 5 52 quantity_module .read$2 quantity_t
R 1762 5 53 quantity_module read_quantity$tbp$3 quantity_t
R 1763 5 54 quantity_module read_quantity_abstract$tbp$4 quantity_t
R 1764 5 55 quantity_module .write$5 quantity_t
R 1765 5 56 quantity_module write_quantity$tbp$6 quantity_t
R 1766 5 57 quantity_module write_quantity_abstract$tbp$7 quantity_t
R 1767 5 58 quantity_module debug_print$tbp$8 quantity_t
R 1768 5 59 quantity_module init_quantity_init_val_4d$tbp$9 quantity_t
R 1769 5 60 quantity_module exchange_end$tbp$10 quantity_t
R 1770 5 61 quantity_module exchange_virtual_space_nonblocking$tbp$11 quantity_t
R 1771 5 62 quantity_module exchange_virtual_space_blocking$tbp$12 quantity_t
R 1772 5 63 quantity_module debug_check_nan$tbp$13 quantity_t
R 1773 5 64 quantity_module set_communication$tbp$14 quantity_t
R 1774 5 65 quantity_module clean_quantity$tbp$15 quantity_t
R 1775 5 66 quantity_module point_to_data$tbpg$16 quantity_t
R 1776 5 67 quantity_module point_to_data$tbpg$17 quantity_t
R 1777 5 68 quantity_module point_to_data$tbpg$18 quantity_t
R 1778 5 69 quantity_module point_to_data$tbpg$19 quantity_t
R 1779 5 70 quantity_module point_to_data$tbpg$20 quantity_t
R 1780 5 71 quantity_module ptr_coordinates_4d$tbp$21 quantity_t
R 1781 5 72 quantity_module ptr_coordinates_3d$tbp$22 quantity_t
R 1782 5 73 quantity_module ptr_coordinates_2d$tbp$23 quantity_t
R 1783 5 74 quantity_module ptr_coordinates_1d_first$tbp$24 quantity_t
R 1784 5 75 quantity_module ptr_coordinates_1d$tbp$25 quantity_t
R 1785 5 76 quantity_module init_quantity_no_init$tbp$26 quantity_t
R 1786 5 77 quantity_module init_quantity_init_val$tbp$27 quantity_t
R 1787 5 78 quantity_module init_quantity_no_bc$tbp$28 quantity_t
R 1788 5 79 quantity_module init_quantity_init_arr$tbp$29 quantity_t
R 1801 14 92 quantity_module init_quantity_init_arr
R 1821 14 112 quantity_module init_quantity_init_val
R 1832 14 123 quantity_module init_quantity_init_val_4d
R 1842 14 133 quantity_module init_quantity_no_bc
R 1850 14 141 quantity_module init_quantity_no_init
R 1854 14 145 quantity_module clean_quantity
R 1859 14 150 quantity_module ptr_coordinates_1d
R 1864 14 155 quantity_module ptr_coordinates_1d_first
R 1876 14 167 quantity_module ptr_coordinates_2d
R 1884 14 175 quantity_module ptr_coordinates_3d
R 1891 14 182 quantity_module ptr_coordinates_4d
R 1897 14 188 quantity_module set_communication
R 1903 14 194 quantity_module exchange_virtual_space_blocking
R 1907 14 198 quantity_module exchange_virtual_space_nonblocking
R 1910 14 201 quantity_module exchange_end
R 1914 14 205 quantity_module debug_check_nan
R 1920 14 211 quantity_module debug_print
R 1926 14 217 quantity_module write_quantity_abstract
R 1932 14 223 quantity_module write_quantity
R 1938 14 229 quantity_module read_quantity_abstract
R 1944 14 235 quantity_module read_quantity
R 1947 25 3 vertex_boundary_condition_module vertex_boundary_condition_t
R 1948 25 4 vertex_boundary_condition_module vertex_bc_wrapper_t
R 1979 5 35 vertex_boundary_condition_module bc vertex_bc_wrapper_t
R 1981 5 37 vertex_boundary_condition_module bc$td vertex_bc_wrapper_t
R 1982 5 38 vertex_boundary_condition_module bc$p vertex_bc_wrapper_t
R 1989 25 6 vertex_quantity_module vertex_quantity_t
R 1990 5 7 vertex_quantity_module quantity_t vertex_quantity_t
R 1992 5 9 vertex_quantity_module boundary_conditions vertex_quantity_t
R 1993 5 10 vertex_quantity_module boundary_conditions$sd vertex_quantity_t
R 1994 5 11 vertex_quantity_module boundary_conditions$p vertex_quantity_t
R 1995 5 12 vertex_quantity_module boundary_conditions$o vertex_quantity_t
R 2004 5 21 vertex_quantity_module init_quantity_init_arr$tbp$0 vertex_quantity_t
R 2005 5 22 vertex_quantity_module init_quantity_no_bc$tbp$1 vertex_quantity_t
R 2006 5 23 vertex_quantity_module init_quantity_init_val$tbp$2 vertex_quantity_t
R 2007 5 24 vertex_quantity_module init_quantity_no_init$tbp$3 vertex_quantity_t
R 2008 5 25 vertex_quantity_module ptr_coordinates_1d$tbp$4 vertex_quantity_t
R 2009 5 26 vertex_quantity_module ptr_coordinates_1d_first$tbp$5 vertex_quantity_t
R 2010 5 27 vertex_quantity_module ptr_coordinates_2d$tbp$6 vertex_quantity_t
R 2011 5 28 vertex_quantity_module ptr_coordinates_3d$tbp$7 vertex_quantity_t
R 2012 5 29 vertex_quantity_module ptr_coordinates_4d$tbp$8 vertex_quantity_t
R 2013 5 30 vertex_quantity_module point_to_data$tbpg$9 vertex_quantity_t
R 2014 5 31 vertex_quantity_module clean_quantity$tbp$10 vertex_quantity_t
R 2015 5 32 vertex_quantity_module set_communication$tbp$12 vertex_quantity_t
R 2016 5 33 vertex_quantity_module debug_check_nan$tbp$14 vertex_quantity_t
R 2017 5 34 vertex_quantity_module exchange_virtual_space_blocking$tbp$15 vertex_quantity_t
R 2018 5 35 vertex_quantity_module exchange_virtual_space_nonblocking$tbp$16 momentum_t
R 2019 5 36 vertex_quantity_module exchange_end$tbp$17 vertex_quantity_t
R 2020 5 37 vertex_quantity_module init_quantity_init_val_4d$tbp$18 vertex_quantity_t
R 2021 5 38 vertex_quantity_module debug_print$tbp$19 vertex_quantity_t
R 2022 5 39 vertex_quantity_module write_quantity_abstract$tbp$20 vertex_quantity_t
R 2023 5 40 vertex_quantity_module write_quantity$tbp$21 vertex_quantity_t
R 2024 5 41 vertex_quantity_module .write$22 vertex_quantity_t
R 2025 5 42 vertex_quantity_module read_quantity_abstract$tbp$23 vertex_quantity_t
R 2026 5 43 vertex_quantity_module read_quantity$tbp$24 vertex_quantity_t
R 2027 5 44 vertex_quantity_module .read$25 vertex_quantity_t
R 2028 5 45 vertex_quantity_module read_vertex_quantity$tbp$26 vertex_quantity_t
R 2029 5 46 vertex_quantity_module write_vertex_quantity$tbp$27 vertex_quantity_t
R 2030 5 47 vertex_quantity_module apply_boundary$tbp$28 vertex_quantity_t
R 2031 5 48 vertex_quantity_module clean_vertex_quantity$tbp$29 vertex_quantity_t
R 2032 5 49 vertex_quantity_module init_vertex_quantity_no_init$tbp$30 vertex_quantity_t
R 2033 5 50 vertex_quantity_module init_vertex_quantity_init_val$tbp$31 vertex_quantity_t
R 2034 5 51 vertex_quantity_module init_vertex_quantity_init_arr$tbp$32 vertex_quantity_t
R 2035 8 52 vertex_quantity_module vertex_quantity_module$$$vertex_quantity_t$$$td
R 2070 14 87 vertex_quantity_module init_vertex_quantity_init_arr
R 2092 14 109 vertex_quantity_module init_vertex_quantity_init_val
R 2103 14 120 vertex_quantity_module init_vertex_quantity_no_init
R 2108 14 125 vertex_quantity_module clean_vertex_quantity
R 2114 14 131 vertex_quantity_module apply_boundary
R 2121 14 138 vertex_quantity_module write_vertex_quantity
R 2127 14 144 vertex_quantity_module read_vertex_quantity
R 2133 14 6 general_utils_module get_axises_num
S 2204 25 0 0 0 1349 1 624 17391 10000004 800214 A 0 0 0 0 B 0 10 0 0 0 0 0 1989 0 0 0 0 0 0 0 0 0 0 29 2241 0 0 0 624 0 0 0 0 momentum_t
S 2205 5 0 0 0 1288 2209 624 5051 10800000 10 A 0 0 0 0 B 0 0 0 0 0 0 0 2205 1349 0 0 0 0 0 0 0 0 0 0 2035 1 2205 0 624 0 0 0 0 vertex_quantity_t
S 2208 14 0 0 0 9 1 624 17417 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 29 1349 0 0 0 0 0 0 0 0 clean_momentum$tbp clean_momentum$tbp 
S 2209 5 0 0 0 6 2210 624 17436 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2244 0 0 2070 0 0 0 0 0 0 0 0 0 init_vertex_quantity_init_arr$tbp$0
S 2210 5 0 0 0 6 2211 624 17472 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2245 0 0 2092 0 0 0 0 0 0 0 0 0 init_vertex_quantity_init_val$tbp$1
S 2211 5 0 0 0 6 2212 624 17508 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2246 0 0 2103 0 0 0 0 0 0 0 0 0 init_vertex_quantity_no_init$tbp$2
S 2212 5 0 0 0 6 2213 624 17543 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2247 0 0 2108 0 0 0 0 0 0 0 0 0 clean_vertex_quantity$tbp$3
S 2213 5 0 0 0 6 2214 624 17571 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2248 0 0 2114 0 0 0 0 0 0 0 0 0 apply_boundary$tbp$4
S 2214 5 0 0 0 6 2215 624 17592 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2249 0 0 2121 0 0 0 0 0 0 0 0 0 write_vertex_quantity$tbp$5
S 2215 5 0 0 0 6 2216 624 17620 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2250 0 0 2127 0 0 0 0 0 0 0 0 0 read_vertex_quantity$tbp$6
S 2216 5 0 0 0 9 2217 624 17647 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2251 0 0 2252 0 0 0 0 0 0 0 0 0 .read$7
S 2217 5 0 0 0 6 2218 624 17655 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2252 0 0 1944 0 0 0 0 0 0 0 0 0 read_quantity$tbp$8
S 2218 5 0 0 0 6 2219 624 17675 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2253 0 0 1938 0 0 0 0 0 0 0 0 0 read_quantity_abstract$tbp$9
S 2219 5 0 0 0 9 2220 624 17704 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2254 0 0 2255 0 0 0 0 0 0 0 0 0 .write$10
S 2220 5 0 0 0 6 2221 624 17714 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2255 0 0 1932 0 0 0 0 0 0 0 0 0 write_quantity$tbp$11
S 2221 5 0 0 0 6 2222 624 17736 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2256 0 0 1926 0 0 0 0 0 0 0 0 0 write_quantity_abstract$tbp$12
S 2222 5 0 0 0 6 2223 624 17767 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2257 0 0 1920 0 0 0 0 0 0 0 0 0 debug_print$tbp$13
S 2223 5 0 0 0 6 2224 624 17786 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2258 0 0 1832 0 0 0 0 0 0 0 0 0 init_quantity_init_val_4d$tbp$14
S 2224 5 0 0 0 6 2225 624 17819 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2259 0 0 1910 0 0 0 0 0 0 0 0 0 exchange_end$tbp$15
S 2225 5 0 0 0 6 2226 624 17839 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2260 0 0 1907 0 0 0 0 0 0 0 0 0 exchange_virtual_space_nonblocking$tbp$17
S 2226 5 0 0 0 6 2227 624 17881 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2261 0 0 1903 0 0 0 0 0 0 0 0 0 exchange_virtual_space_blocking$tbp$18
S 2227 5 0 0 0 6 2228 624 17920 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2262 0 0 1914 0 0 0 0 0 0 0 0 0 debug_check_nan$tbp$19
S 2228 5 0 0 0 6 2229 624 17943 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2263 0 0 1897 0 0 0 0 0 0 0 0 0 set_communication$tbp$20
S 2229 5 0 0 0 6 2230 624 17968 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2264 0 0 1854 0 0 0 0 0 0 0 0 0 clean_quantity$tbp$21
S 2230 5 0 0 0 9 2231 624 17990 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2265 0 0 2266 0 0 0 0 0 0 0 0 0 point_to_data$tbpg$22
S 2231 5 0 0 0 6 2232 624 18012 800012 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2266 0 0 1891 0 0 0 0 0 0 0 0 0 ptr_coordinates_4d$tbp$23
S 2232 5 0 0 0 6 2233 624 18038 800012 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2267 0 0 1884 0 0 0 0 0 0 0 0 0 ptr_coordinates_3d$tbp$24
S 2233 5 0 0 0 6 2234 624 18064 800012 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2268 0 0 1876 0 0 0 0 0 0 0 0 0 ptr_coordinates_2d$tbp$25
S 2234 5 0 0 0 6 2235 624 18090 800012 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2269 0 0 1864 0 0 0 0 0 0 0 0 0 ptr_coordinates_1d_first$tbp$26
S 2235 5 0 0 0 6 2236 624 18122 800012 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2270 0 0 1859 0 0 0 0 0 0 0 0 0 ptr_coordinates_1d$tbp$27
S 2236 5 0 0 0 6 2237 624 18148 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2271 0 0 1850 0 0 0 0 0 0 0 0 0 init_quantity_no_init$tbp$28
S 2237 5 0 0 0 6 2238 624 18177 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2272 0 0 1821 0 0 0 0 0 0 0 0 0 init_quantity_init_val$tbp$29
S 2238 5 0 0 0 6 2239 624 18207 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2273 0 0 1842 0 0 0 0 0 0 0 0 0 init_quantity_no_bc$tbp$30
S 2239 5 0 0 0 6 2240 624 18234 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2274 0 0 1801 0 0 0 0 0 0 0 0 0 init_quantity_init_arr$tbp$31
S 2240 5 0 0 0 6 1 624 18264 800002 2200 A 0 0 0 0 B 0 19 0 0 0 0 0 0 1349 0 0 0 0 0 0 2208 0 0 2292 0 0 0 0 0 0 0 0 0 clean_momentum$tbp$32
S 2241 8 5 0 0 1355 1 624 18286 40822004 1220 A 0 0 0 0 B 0 19 0 0 0 0 0 1349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 momentum_module$$momentum_t$$td
S 2242 19 0 0 0 6 1 624 17391 4000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 69 1 0 0 2204 0 0 624 0 0 0 0 momentum_t
O 2242 1 2243
S 2243 27 0 0 0 9 2276 624 7020 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 70 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 constructor
Q 2243 2242 0
S 2244 14 0 0 0 6 1 624 15710 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_init_arr$tbp init_vertex_quantity_init_arr$tbp 
S 2245 14 0 0 0 6 1 624 15744 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_init_val$tbp init_vertex_quantity_init_val$tbp 
S 2246 14 0 0 0 6 1 624 15778 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 24 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_no_init$tbp init_vertex_quantity_no_init$tbp 
S 2247 14 0 0 0 9 1 624 15811 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 1288 0 0 0 624 0 0 0 0 clean_vertex_quantity$tbp clean_vertex_quantity$tbp 
S 2248 14 0 0 0 9 1 624 15837 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 1288 0 0 0 624 0 0 0 0 apply_boundary$tbp apply_boundary$tbp 
S 2249 14 0 0 0 9 1 624 15856 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 27 1288 0 0 0 624 0 0 0 0 write_vertex_quantity$tbp write_vertex_quantity$tbp 
S 2250 14 0 0 0 9 1 624 15882 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 1288 0 0 0 624 0 0 0 0 read_vertex_quantity$tbp read_vertex_quantity$tbp 
S 2251 19 0 0 0 0 1 624 10566 4010 200 A 0 0 0 0 B 20000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 62 1 22 1349 0 0 0 624 0 0 0 0 .read
O 2251 1 1759
S 2252 14 0 0 0 9 1 624 13834 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21 1276 1 0 0 624 0 0 0 0 read_quantity$tbp read_quantity$tbp 
S 2253 14 0 0 0 9 1 624 13807 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1276 0 0 0 624 0 0 0 0 read_quantity_abstract$tbp read_quantity_abstract$tbp 
S 2254 19 0 0 0 0 1 624 10545 4010 200 A 0 0 0 0 B 20000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 1 20 1349 0 0 0 624 0 0 0 0 .write
O 2254 1 1756
S 2255 14 0 0 0 9 1 624 13788 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 19 1276 1 0 0 624 0 0 0 0 write_quantity$tbp write_quantity$tbp 
S 2256 14 0 0 0 9 1 624 13760 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 1276 0 0 0 624 0 0 0 0 write_quantity_abstract$tbp write_quantity_abstract$tbp 
S 2257 14 0 0 0 9 1 624 10514 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17 1276 0 0 0 624 0 0 0 0 debug_print$tbp debug_print$tbp 
S 2258 14 0 0 0 6 1 624 13730 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 1276 0 0 0 624 0 0 0 0 init_quantity_init_val_4d$tbp init_quantity_init_val_4d$tbp 
S 2259 14 0 0 0 9 1 624 10497 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 15 1276 0 0 0 624 0 0 0 0 exchange_end$tbp exchange_end$tbp 
S 2260 14 0 0 0 9 1 624 10458 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 1276 0 0 0 624 0 0 0 0 exchange_virtual_space_nonblocking$tbp exchange_virtual_space_nonblocking$tbp 
S 2261 14 0 0 0 9 1 624 10388 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 1276 0 0 0 624 0 0 0 0 exchange_virtual_space_blocking$tbp exchange_virtual_space_blocking$tbp 
S 2262 14 0 0 0 9 1 624 10368 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 12 1276 0 0 0 624 0 0 0 0 debug_check_nan$tbp debug_check_nan$tbp 
S 2263 14 0 0 0 9 1 624 10346 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 11 1276 0 0 0 624 0 0 0 0 set_communication$tbp set_communication$tbp 
S 2264 14 0 0 0 9 1 624 13711 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 1276 0 0 0 624 0 0 0 0 clean_quantity$tbp clean_quantity$tbp 
S 2265 19 0 0 0 9 1 624 14598 0 200 A 0 0 0 0 B 20000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 5 10 1349 0 0 0 624 0 0 0 0 point_to_data$tbpg
O 2265 5 1741 1742 1743 1744 1745
S 2266 14 0 0 0 9 1 624 13674 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 1276 1 0 0 624 0 0 0 0 ptr_coordinates_4d$tbp ptr_coordinates_4d$tbp 
S 2267 14 0 0 0 9 1 624 13651 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 1276 0 0 0 624 0 0 0 0 ptr_coordinates_3d$tbp ptr_coordinates_3d$tbp 
S 2268 14 0 0 0 9 1 624 13628 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 1276 0 0 0 624 0 0 0 0 ptr_coordinates_2d$tbp ptr_coordinates_2d$tbp 
S 2269 14 0 0 0 9 1 624 13599 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 1276 0 0 0 624 0 0 0 0 ptr_coordinates_1d_first$tbp ptr_coordinates_1d_first$tbp 
S 2270 14 0 0 0 9 1 624 13576 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 1276 0 0 0 624 0 0 0 0 ptr_coordinates_1d$tbp ptr_coordinates_1d$tbp 
S 2271 14 0 0 0 6 1 624 13550 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 1276 0 0 0 624 0 0 0 0 init_quantity_no_init$tbp init_quantity_no_init$tbp 
S 2272 14 0 0 0 6 1 624 13523 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1276 0 0 0 624 0 0 0 0 init_quantity_init_val$tbp init_quantity_init_val$tbp 
S 2273 14 0 0 0 6 1 624 13499 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1276 0 0 0 624 0 0 0 0 init_quantity_no_bc$tbp init_quantity_no_bc$tbp 
S 2274 14 0 0 0 6 1 624 13472 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1276 0 0 0 624 0 0 0 0 init_quantity_init_arr$tbp init_quantity_init_arr$tbp 
S 2276 23 5 0 0 1349 2283 624 7020 14 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 2277 1 3 1 0 10 1 2276 11014 14 3000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initial_data
S 2278 1 3 1 0 6 1 2276 7516 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nx
S 2279 1 3 1 0 6 1 2276 7519 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ny
S 2280 1 3 1 0 6 1 2276 7522 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nz
S 2281 7 3 1 0 1361 1 2276 13089 10801014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2285 0 0 0 0 0 0 0 0 bc
S 2282 1 3 1 0 766 1 2276 14670 1014 3014 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2289 0 0 0 0 0 0 0 0 bc_params
S 2283 14 5 0 0 1349 1 2276 7020 14 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 567 6 0 0 2284 0 0 0 0 0 0 0 0 0 29 0 624 0 0 0 0 constructor constructor constructor
F 2283 6 2277 2278 2279 2280 2281 2282
S 2284 1 3 0 0 1349 1 2276 7020 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 2285 8 1 0 0 1364 1 2276 18318 40822014 1020 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bc$sd13
S 2289 8 1 0 0 1367 1 2276 18348 40822016 1020 A 0 0 0 0 B 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bc_params$sd15
S 2290 23 5 0 0 0 2292 624 17402 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clean_momentum
S 2291 1 3 3 0 1349 1 2290 8397 14 3200 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 2292 14 5 0 0 0 1 2290 17402 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 574 1 0 0 0 0 0 0 0 0 0 0 0 0 44 0 624 0 0 0 0 clean_momentum clean_momentum 
F 2292 1 2291
A 13 2 0 0 0 6 635 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 636 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 637 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 690 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 114 2 0 0 0 7 727 0 0 0 114 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 7 728 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 731 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 3 0 82 753 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 130 1 0 3 0 88 755 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 5 0 94 757 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 7 762 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 7 766 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 7 763 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 7 764 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 7 765 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 7 760 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 220 2 0 0 82 7 892 0 0 0 220 0 0 0 0 0 0 0 0 0 0 0
A 261 2 0 0 0 7 1041 0 0 0 261 0 0 0 0 0 0 0 0 0 0 0
A 949 1 0 9 0 1364 2285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 950 10 0 0 0 7 949 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 951 10 0 0 950 7 949 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 952 10 0 0 951 7 949 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 953 4 0 0 0 7 952 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 954 4 0 0 0 7 951 0 953 0 0 0 0 1 0 0 0 0 0 0 0 0
A 955 10 0 0 952 7 949 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 956 10 0 0 955 7 949 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 147
Z
J 133 1 1
V 68 58 7 0
S 0 58 0 0 0
A 0 6 0 0 1 2 0
J 134 1 1
V 71 67 7 0
S 0 67 0 0 0
A 0 6 0 0 1 2 0
J 29 1 1
V 118 76 7 0
R 0 79 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 124 82 7 0
R 0 85 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 77 1 1
V 130 88 7 0
R 0 91 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 15 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
J 80 1 1
V 134 94 7 0
R 0 97 0 0
A 0 6 0 0 1 13 1
A 0 6 0 0 1 17 0
T 767 136 0 0 0 0
A 781 7 181 0 1 2 1
A 780 7 0 135 1 10 1
A 787 7 183 0 1 2 1
A 786 7 0 135 1 10 1
A 793 7 185 0 1 2 1
A 792 7 0 135 1 10 1
A 799 7 187 0 1 2 1
A 798 7 0 135 1 10 1
A 805 7 189 0 1 2 1
A 804 7 0 135 1 10 1
A 811 7 191 0 1 2 1
A 810 7 0 135 1 10 0
T 1186 499 0 0 0 0
A 1212 7 532 0 1 2 1
A 1211 7 0 135 1 10 1
A 1218 7 534 0 1 2 1
A 1217 7 0 135 1 10 0
T 1349 626 0 0 0 0
A 1373 7 659 0 1 2 1
A 1372 7 0 135 1 10 1
A 1379 7 661 0 1 2 1
A 1378 7 0 135 1 10 0
Z
