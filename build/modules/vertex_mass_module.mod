V34 :0x24 vertex_mass_module
15 vertex_mass.f90 S624 0
08/07/2025  09:03:41
use data_module private
use data_4d_module private
use communication_parameters_module private
use iso_fortran_env private
use quantity_module private
use iso_c_binding private
use boundary_parameters_module private
use parallel_parameters_module private
use coordinates_module private
use density_module private
use cell_mass_module private
use geometry_module private
use vertex_boundary_condition_module private
use vertex_quantity_module private
enduse
D 58 26 662 8 661 7
D 67 26 665 8 664 7
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
D 136 26 777 952 776 7
D 181 22 7
D 183 22 7
D 185 22 7
D 187 22 7
D 189 22 7
D 191 22 7
D 499 26 1199 648 1194 7
D 532 22 7
D 534 22 7
D 626 26 1361 600 1357 7
D 659 22 7
D 661 22 7
D 766 26 1562 1168 1561 7
D 1184 26 1987 136 1956 7
D 1276 26 1727 192 1725 7
D 1288 26 1998 344 1997 7
D 2085 26 3948 344 3947 7
D 2350 26 4188 344 4187 7
D 2475 26 4319 352 4318 7
D 2502 26 4435 344 4434 7
D 2508 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 2514 23 1184 1 1391 1397 0 1 0 0 1
 1392 1395 1396 1392 1395 1393
D 2517 23 7 1 0 220 0 0 0 0 0
 0 220 0 11 220 0
D 2520 23 7 1 0 261 0 0 0 0 0
 0 261 0 11 261 0
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 vertex_mass_module
S 626 23 0 0 0 9 1997 624 5054 14 0 A 0 0 0 0 B 400000 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_quantity_t
S 628 23 0 0 0 9 1955 624 5105 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_boundary_condition_t
S 629 23 0 0 0 9 1956 624 5133 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_bc_wrapper_t
S 631 23 0 0 0 9 2720 624 5169 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 quad_area
S 632 23 0 0 0 9 3283 624 5179 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tetrahederon_volume
S 634 23 0 0 0 9 4230 624 5216 14 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 cell_mass_t
S 636 23 0 0 0 9 3988 624 5243 14 0 A 0 0 0 0 B 400000 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 density_t
S 638 23 0 0 0 9 4361 624 5272 14 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 coordinates_t
S 640 23 0 0 0 9 967 624 5313 14 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 parallel_parameters_t
S 642 23 0 0 0 9 1649 624 5362 14 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 boundary_parameters_t
S 644 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 645 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 646 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 661 25 7 iso_c_binding c_ptr
R 662 5 8 iso_c_binding val c_ptr
R 664 25 10 iso_c_binding c_funptr
R 665 5 11 iso_c_binding val c_funptr
R 699 6 45 iso_c_binding c_null_ptr$ac
R 701 6 47 iso_c_binding c_null_funptr$ac
R 702 26 48 iso_c_binding ==
R 704 26 50 iso_c_binding !=
S 736 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 737 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 740 7 3 iso_fortran_env character_kinds$ac
R 762 7 25 iso_fortran_env integer_kinds$ac
R 764 7 27 iso_fortran_env logical_kinds$ac
R 766 7 29 iso_fortran_env real_kinds$ac
S 769 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 771 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 772 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 773 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 774 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 775 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 776 25 1 communication_parameters_module communication_parameters_t
R 777 5 2 communication_parameters_module mpi_params communication_parameters_t
R 779 5 4 communication_parameters_module mpi_params$p communication_parameters_t
R 780 5 5 communication_parameters_module communicate_to communication_parameters_t
R 781 5 6 communication_parameters_module tag communication_parameters_t
R 782 5 7 communication_parameters_module comm communication_parameters_t
R 783 5 8 communication_parameters_module d1 communication_parameters_t
R 784 5 9 communication_parameters_module d2 communication_parameters_t
R 785 5 10 communication_parameters_module d3 communication_parameters_t
R 786 5 11 communication_parameters_module dim_offset communication_parameters_t
R 788 5 13 communication_parameters_module types_send communication_parameters_t
R 789 5 14 communication_parameters_module types_send$sd communication_parameters_t
R 790 5 15 communication_parameters_module types_send$p communication_parameters_t
R 791 5 16 communication_parameters_module types_send$o communication_parameters_t
R 793 5 18 communication_parameters_module types_recv communication_parameters_t
R 795 5 20 communication_parameters_module types_recv$sd communication_parameters_t
R 796 5 21 communication_parameters_module types_recv$p communication_parameters_t
R 797 5 22 communication_parameters_module types_recv$o communication_parameters_t
R 800 5 25 communication_parameters_module sizes_send communication_parameters_t
R 801 5 26 communication_parameters_module sizes_send$sd communication_parameters_t
R 802 5 27 communication_parameters_module sizes_send$p communication_parameters_t
R 803 5 28 communication_parameters_module sizes_send$o communication_parameters_t
R 805 5 30 communication_parameters_module sizes_recv communication_parameters_t
R 807 5 32 communication_parameters_module sizes_recv$sd communication_parameters_t
R 808 5 33 communication_parameters_module sizes_recv$p communication_parameters_t
R 809 5 34 communication_parameters_module sizes_recv$o communication_parameters_t
R 812 5 37 communication_parameters_module start_send communication_parameters_t
R 813 5 38 communication_parameters_module start_send$sd communication_parameters_t
R 814 5 39 communication_parameters_module start_send$p communication_parameters_t
R 815 5 40 communication_parameters_module start_send$o communication_parameters_t
R 817 5 42 communication_parameters_module start_recv communication_parameters_t
R 819 5 44 communication_parameters_module start_recv$sd communication_parameters_t
R 820 5 45 communication_parameters_module start_recv$p communication_parameters_t
R 821 5 46 communication_parameters_module start_recv$o communication_parameters_t
S 900 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 967 19 67 parallel_parameters_module parallel_parameters_t
S 1049 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1194 25 4 data_4d_module data_4d_t
R 1199 5 9 data_4d_module values data_4d_t
R 1200 5 10 data_4d_module values$sd data_4d_t
R 1201 5 11 data_4d_module values$p data_4d_t
R 1202 5 12 data_4d_module values$o data_4d_t
R 1204 5 14 data_4d_module nx data_4d_t
R 1205 5 15 data_4d_module ny data_4d_t
R 1206 5 16 data_4d_module nz data_4d_t
R 1207 5 17 data_4d_module nmats data_4d_t
R 1208 5 18 data_4d_module communication data_4d_t
R 1210 5 20 data_4d_module communication$p data_4d_t
R 1211 5 21 data_4d_module communication_parameters data_4d_t
R 1213 5 23 data_4d_module communication_parameters$p data_4d_t
R 1214 5 24 data_4d_module parallel_params data_4d_t
R 1216 5 26 data_4d_module parallel_params$p data_4d_t
R 1218 5 28 data_4d_module send_buf data_4d_t
R 1219 5 29 data_4d_module send_buf$sd data_4d_t
R 1220 5 30 data_4d_module send_buf$p data_4d_t
R 1221 5 31 data_4d_module send_buf$o data_4d_t
R 1224 5 34 data_4d_module recv_buf data_4d_t
R 1225 5 35 data_4d_module recv_buf$sd data_4d_t
R 1226 5 36 data_4d_module recv_buf$p data_4d_t
R 1227 5 37 data_4d_module recv_buf$o data_4d_t
R 1229 5 39 data_4d_module request data_4d_t
R 1243 5 53 data_4d_module .read$0 data_4d_t
R 1244 5 54 data_4d_module read_data$tbp$1 data_4d_t
R 1245 5 55 data_4d_module .write$2 data_4d_t
R 1246 5 56 data_4d_module write_data$tbp$3 data_4d_t
R 1247 5 57 data_4d_module debug_print$tbp$4 data_4d_t
R 1248 5 58 data_4d_module exchange_end$tbp$5 data_4d_t
R 1249 5 59 data_4d_module exchange_virtual_space_nonblocking$tbp$6 data_4d_t
R 1250 5 60 data_4d_module get_recv_buf$tbp$7 data_4d_t
R 1251 5 61 data_4d_module set_send_buf$tbp$8 data_4d_t
R 1252 5 62 data_4d_module exchange_virtual_space_blocking$tbp$9 data_4d_t
R 1253 5 63 data_4d_module debug_check_nan$tbp$10 data_4d_t
R 1254 5 64 data_4d_module set_communication$tbp$11 data_4d_t
R 1255 5 65 data_4d_module clean_data$tbp$12 data_4d_t
R 1256 5 66 data_4d_module point_to_data$tbp$13 data_4d_t
R 1357 25 4 data_module data_t
R 1361 5 8 data_module values data_t
R 1362 5 9 data_module values$sd data_t
R 1363 5 10 data_module values$p data_t
R 1364 5 11 data_module values$o data_t
R 1366 5 13 data_module nx data_t
R 1367 5 14 data_module ny data_t
R 1368 5 15 data_module nz data_t
R 1369 5 16 data_module communication data_t
R 1371 5 18 data_module communication$p data_t
R 1372 5 19 data_module communication_parameters data_t
R 1374 5 21 data_module communication_parameters$p data_t
R 1375 5 22 data_module parallel_params data_t
R 1377 5 24 data_module parallel_params$p data_t
R 1379 5 26 data_module send_buf data_t
R 1380 5 27 data_module send_buf$sd data_t
R 1381 5 28 data_module send_buf$p data_t
R 1382 5 29 data_module send_buf$o data_t
R 1385 5 32 data_module recv_buf data_t
R 1386 5 33 data_module recv_buf$sd data_t
R 1387 5 34 data_module recv_buf$p data_t
R 1388 5 35 data_module recv_buf$o data_t
R 1390 5 37 data_module request data_t
R 1404 5 51 data_module .read$0 data_t
R 1405 5 52 data_module read_data$tbp$1 data_t
R 1406 5 53 data_module .write$2 data_t
R 1407 5 54 data_module write_data$tbp$3 data_t
R 1408 5 55 data_module debug_print$tbp$4 data_t
R 1409 5 56 data_module exchange_end$tbp$5 data_t
R 1410 5 57 data_module exchange_virtual_space_nonblocking$tbp$6 data_t
R 1411 5 58 data_module get_recv_buf$tbp$7 data_t
R 1412 5 59 data_module set_send_buf$tbp$8 data_t
R 1413 5 60 data_module exchange_virtual_space_blocking$tbp$9 data_t
R 1414 5 61 data_module debug_check_nan$tbp$10 data_t
R 1415 5 62 data_module set_communication$tbp$11 data_t
R 1416 5 63 data_module clean_data$tbp$12 data_t
R 1417 5 64 data_module point_to_data$tbp$13 data_t
R 1561 25 5 boundary_parameters_module boundary_parameters_t
R 1562 5 6 boundary_parameters_module nxp boundary_parameters_t
R 1563 5 7 boundary_parameters_module nyp boundary_parameters_t
R 1564 5 8 boundary_parameters_module nzp boundary_parameters_t
R 1565 5 9 boundary_parameters_module dimension boundary_parameters_t
R 1567 5 11 boundary_parameters_module edge_num boundary_parameters_t
R 1568 5 12 boundary_parameters_module edge_num$sd boundary_parameters_t
R 1569 5 13 boundary_parameters_module edge_num$p boundary_parameters_t
R 1570 5 14 boundary_parameters_module edge_num$o boundary_parameters_t
R 1573 5 17 boundary_parameters_module angles boundary_parameters_t
R 1574 5 18 boundary_parameters_module angles$sd boundary_parameters_t
R 1575 5 19 boundary_parameters_module angles$p boundary_parameters_t
R 1576 5 20 boundary_parameters_module angles$o boundary_parameters_t
R 1578 5 22 boundary_parameters_module normal_i1 boundary_parameters_t
R 1579 5 23 boundary_parameters_module normal_inxp boundary_parameters_t
R 1580 5 24 boundary_parameters_module normal_j1 boundary_parameters_t
R 1581 5 25 boundary_parameters_module normal_jnyp boundary_parameters_t
R 1582 5 26 boundary_parameters_module normal_k1 boundary_parameters_t
R 1583 5 27 boundary_parameters_module normal_knzp boundary_parameters_t
R 1585 5 29 boundary_parameters_module edge_vector_x boundary_parameters_t
R 1586 5 30 boundary_parameters_module edge_vector_x$sd boundary_parameters_t
R 1587 5 31 boundary_parameters_module edge_vector_x$p boundary_parameters_t
R 1588 5 32 boundary_parameters_module edge_vector_x$o boundary_parameters_t
R 1591 5 35 boundary_parameters_module edge_vector_y boundary_parameters_t
R 1592 5 36 boundary_parameters_module edge_vector_y$sd boundary_parameters_t
R 1593 5 37 boundary_parameters_module edge_vector_y$p boundary_parameters_t
R 1594 5 38 boundary_parameters_module edge_vector_y$o boundary_parameters_t
R 1597 5 41 boundary_parameters_module edge_vector_z boundary_parameters_t
R 1598 5 42 boundary_parameters_module edge_vector_z$sd boundary_parameters_t
R 1599 5 43 boundary_parameters_module edge_vector_z$p boundary_parameters_t
R 1600 5 44 boundary_parameters_module edge_vector_z$o boundary_parameters_t
R 1602 5 46 boundary_parameters_module plane_const_i1 boundary_parameters_t
R 1603 5 47 boundary_parameters_module plane_const_inxp boundary_parameters_t
R 1604 5 48 boundary_parameters_module plane_const_j1 boundary_parameters_t
R 1605 5 49 boundary_parameters_module plane_const_jnyp boundary_parameters_t
R 1606 5 50 boundary_parameters_module plane_const_k1 boundary_parameters_t
R 1607 5 51 boundary_parameters_module plane_const_knzp boundary_parameters_t
R 1608 5 52 boundary_parameters_module is_wall_x_top boundary_parameters_t
R 1609 5 53 boundary_parameters_module is_wall_x_bot boundary_parameters_t
R 1610 5 54 boundary_parameters_module is_wall_y_top boundary_parameters_t
R 1611 5 55 boundary_parameters_module is_wall_y_bot boundary_parameters_t
R 1612 5 56 boundary_parameters_module is_wall_z_top boundary_parameters_t
R 1613 5 57 boundary_parameters_module is_wall_z_bot boundary_parameters_t
R 1614 5 58 boundary_parameters_module is_parallel boundary_parameters_t
R 1615 5 59 boundary_parameters_module mesh_type boundary_parameters_t
R 1617 5 61 boundary_parameters_module boundary_type boundary_parameters_t
R 1618 5 62 boundary_parameters_module boundary_type$sd boundary_parameters_t
R 1619 5 63 boundary_parameters_module boundary_type$p boundary_parameters_t
R 1620 5 64 boundary_parameters_module boundary_type$o boundary_parameters_t
R 1622 5 66 boundary_parameters_module mpi_comm boundary_parameters_t
R 1624 5 68 boundary_parameters_module mpi_comm$p boundary_parameters_t
R 1625 5 69 boundary_parameters_module parallel_params boundary_parameters_t
R 1627 5 71 boundary_parameters_module parallel_params$p boundary_parameters_t
R 1638 5 82 boundary_parameters_module .read$1 boundary_parameters_t
R 1639 5 83 boundary_parameters_module read_boundary_parameters$tbp$2 boundary_parameters_t
R 1640 5 84 boundary_parameters_module .write$3 boundary_parameters_t
R 1641 5 85 boundary_parameters_module write_boundary_parameters$tbp$4 boundary_parameters_t
R 1642 5 86 boundary_parameters_module build_boundary$tbp$5 boundary_parameters_t
R 1643 5 87 boundary_parameters_module point_to_edges$tbp$6 boundary_parameters_t
R 1644 5 88 boundary_parameters_module point_to_edge_vectors$tbp$7 boundary_parameters_t
R 1645 5 89 boundary_parameters_module set_communication$tbp$8 boundary_parameters_t
R 1646 5 90 boundary_parameters_module calculate_edge_vector_3d$tbp$9 boundary_parameters_t
R 1647 5 91 boundary_parameters_module calculate_boundary_normal_3d$tbp$10 boundary_parameters_t
R 1649 19 93 boundary_parameters_module boundary_parameters_t
R 1725 25 8 quantity_module quantity_t
R 1727 5 10 quantity_module data quantity_t
R 1728 5 11 quantity_module data$sd quantity_t
R 1729 5 12 quantity_module data$p quantity_t
R 1730 5 13 quantity_module data$o quantity_t
R 1732 5 15 quantity_module data_4d quantity_t
R 1734 5 17 quantity_module data_4d$p quantity_t
R 1735 5 18 quantity_module boundary_params quantity_t
R 1737 5 20 quantity_module boundary_params$p quantity_t
R 1738 5 21 quantity_module parallel_params quantity_t
R 1740 5 23 quantity_module parallel_params$p quantity_t
R 1741 5 24 quantity_module d1 quantity_t
R 1742 5 25 quantity_module d2 quantity_t
R 1743 5 26 quantity_module d3 quantity_t
R 1744 5 27 quantity_module number_of_axises quantity_t
R 1749 14 32 quantity_module ptr_coordinates_1d$tbp
R 1750 14 33 quantity_module ptr_coordinates_1d_first$tbp
R 1751 14 34 quantity_module ptr_coordinates_2d$tbp
R 1752 14 35 quantity_module ptr_coordinates_3d$tbp
R 1753 14 36 quantity_module ptr_coordinates_4d$tbp
R 1764 14 47 quantity_module write_quantity$tbp
R 1767 14 50 quantity_module read_quantity$tbp
R 1769 5 52 quantity_module .read$2 quantity_t
R 1770 5 53 quantity_module read_quantity$tbp$3 quantity_t
R 1771 5 54 quantity_module read_quantity_abstract$tbp$4 quantity_t
R 1772 5 55 quantity_module .write$5 quantity_t
R 1773 5 56 quantity_module write_quantity$tbp$6 quantity_t
R 1774 5 57 quantity_module write_quantity_abstract$tbp$7 quantity_t
R 1775 5 58 quantity_module debug_print$tbp$8 quantity_t
R 1776 5 59 quantity_module init_quantity_init_val_4d$tbp$9 quantity_t
R 1777 5 60 quantity_module exchange_end$tbp$10 quantity_t
R 1778 5 61 quantity_module exchange_virtual_space_nonblocking$tbp$11 quantity_t
R 1779 5 62 quantity_module exchange_virtual_space_blocking$tbp$12 quantity_t
R 1780 5 63 quantity_module debug_check_nan$tbp$13 quantity_t
R 1781 5 64 quantity_module set_communication$tbp$14 quantity_t
R 1782 5 65 quantity_module clean_quantity$tbp$15 quantity_t
R 1783 5 66 quantity_module point_to_data$tbpg$16 quantity_t
R 1784 5 67 quantity_module point_to_data$tbpg$17 quantity_t
R 1785 5 68 quantity_module point_to_data$tbpg$18 quantity_t
R 1786 5 69 quantity_module point_to_data$tbpg$19 quantity_t
R 1787 5 70 quantity_module point_to_data$tbpg$20 quantity_t
R 1788 5 71 quantity_module ptr_coordinates_4d$tbp$21 quantity_t
R 1789 5 72 quantity_module ptr_coordinates_3d$tbp$22 quantity_t
R 1790 5 73 quantity_module ptr_coordinates_2d$tbp$23 quantity_t
R 1791 5 74 quantity_module ptr_coordinates_1d_first$tbp$24 quantity_t
R 1792 5 75 quantity_module ptr_coordinates_1d$tbp$25 quantity_t
R 1793 5 76 quantity_module init_quantity_no_init$tbp$26 quantity_t
R 1794 5 77 quantity_module init_quantity_init_val$tbp$27 quantity_t
R 1795 5 78 quantity_module init_quantity_no_bc$tbp$28 quantity_t
R 1796 5 79 quantity_module init_quantity_init_arr$tbp$29 quantity_t
R 1809 14 92 quantity_module init_quantity_init_arr
R 1829 14 112 quantity_module init_quantity_init_val
R 1840 14 123 quantity_module init_quantity_init_val_4d
R 1850 14 133 quantity_module init_quantity_no_bc
R 1858 14 141 quantity_module init_quantity_no_init
R 1862 14 145 quantity_module clean_quantity
R 1867 14 150 quantity_module ptr_coordinates_1d
R 1872 14 155 quantity_module ptr_coordinates_1d_first
R 1884 14 167 quantity_module ptr_coordinates_2d
R 1892 14 175 quantity_module ptr_coordinates_3d
R 1899 14 182 quantity_module ptr_coordinates_4d
R 1905 14 188 quantity_module set_communication
R 1911 14 194 quantity_module exchange_virtual_space_blocking
R 1915 14 198 quantity_module exchange_virtual_space_nonblocking
R 1918 14 201 quantity_module exchange_end
R 1922 14 205 quantity_module debug_check_nan
R 1928 14 211 quantity_module debug_print
R 1934 14 217 quantity_module write_quantity_abstract
R 1940 14 223 quantity_module write_quantity
R 1946 14 229 quantity_module read_quantity_abstract
R 1952 14 235 quantity_module read_quantity
R 1955 25 3 vertex_boundary_condition_module vertex_boundary_condition_t
R 1956 25 4 vertex_boundary_condition_module vertex_bc_wrapper_t
R 1987 5 35 vertex_boundary_condition_module bc vertex_bc_wrapper_t
R 1989 5 37 vertex_boundary_condition_module bc$td vertex_bc_wrapper_t
R 1990 5 38 vertex_boundary_condition_module bc$p vertex_bc_wrapper_t
R 1997 25 6 vertex_quantity_module vertex_quantity_t
R 1998 5 7 vertex_quantity_module quantity_t vertex_quantity_t
R 2000 5 9 vertex_quantity_module boundary_conditions vertex_quantity_t
R 2001 5 10 vertex_quantity_module boundary_conditions$sd vertex_quantity_t
R 2002 5 11 vertex_quantity_module boundary_conditions$p vertex_quantity_t
R 2003 5 12 vertex_quantity_module boundary_conditions$o vertex_quantity_t
R 2012 5 21 vertex_quantity_module init_quantity_init_arr$tbp$0 vertex_quantity_t
R 2013 5 22 vertex_quantity_module init_quantity_no_bc$tbp$1 vertex_quantity_t
R 2014 5 23 vertex_quantity_module init_quantity_init_val$tbp$2 vertex_quantity_t
R 2015 5 24 vertex_quantity_module init_quantity_no_init$tbp$3 vertex_quantity_t
R 2016 5 25 vertex_quantity_module ptr_coordinates_1d$tbp$4 vertex_quantity_t
R 2017 5 26 vertex_quantity_module ptr_coordinates_1d_first$tbp$5 vertex_quantity_t
R 2018 5 27 vertex_quantity_module ptr_coordinates_2d$tbp$6 vertex_quantity_t
R 2019 5 28 vertex_quantity_module ptr_coordinates_3d$tbp$7 vertex_quantity_t
R 2020 5 29 vertex_quantity_module ptr_coordinates_4d$tbp$8 vertex_quantity_t
R 2021 5 30 vertex_quantity_module point_to_data$tbpg$9 vertex_quantity_t
R 2022 5 31 vertex_quantity_module clean_quantity$tbp$10 vertex_quantity_t
R 2023 5 32 vertex_quantity_module set_communication$tbp$12 vertex_quantity_t
R 2024 5 33 vertex_quantity_module debug_check_nan$tbp$14 vertex_quantity_t
R 2025 5 34 vertex_quantity_module exchange_virtual_space_blocking$tbp$15 vertex_quantity_t
R 2026 5 35 vertex_quantity_module exchange_virtual_space_nonblocking$tbp$16 vertex_quantity_t
R 2027 5 36 vertex_quantity_module exchange_end$tbp$17 vertex_quantity_t
R 2028 5 37 vertex_quantity_module init_quantity_init_val_4d$tbp$18 vertex_quantity_t
R 2029 5 38 vertex_quantity_module debug_print$tbp$19 vertex_quantity_t
R 2030 5 39 vertex_quantity_module write_quantity_abstract$tbp$20 vertex_quantity_t
R 2031 5 40 vertex_quantity_module write_quantity$tbp$21 vertex_quantity_t
R 2032 5 41 vertex_quantity_module .write$22 vertex_quantity_t
R 2033 5 42 vertex_quantity_module read_quantity_abstract$tbp$23 vertex_quantity_t
R 2034 5 43 vertex_quantity_module read_quantity$tbp$24 vertex_quantity_t
R 2035 5 44 vertex_quantity_module .read$25 vertex_quantity_t
R 2036 5 45 vertex_quantity_module read_vertex_quantity$tbp$26 vertex_quantity_t
R 2037 5 46 vertex_quantity_module write_vertex_quantity$tbp$27 vertex_quantity_t
R 2038 5 47 vertex_quantity_module apply_boundary$tbp$28 vertex_quantity_t
R 2039 5 48 vertex_quantity_module clean_vertex_quantity$tbp$29 vertex_quantity_t
R 2040 5 49 vertex_quantity_module init_vertex_quantity_no_init$tbp$30 vertex_quantity_t
R 2041 5 50 vertex_quantity_module init_vertex_quantity_init_val$tbp$31 vertex_quantity_t
R 2042 5 51 vertex_quantity_module init_vertex_quantity_init_arr$tbp$32 vertex_quantity_t
R 2043 8 52 vertex_quantity_module vertex_quantity_module$$$vertex_quantity_t$$$td
R 2078 14 87 vertex_quantity_module init_vertex_quantity_init_arr
R 2100 14 109 vertex_quantity_module init_vertex_quantity_init_val
R 2111 14 120 vertex_quantity_module init_vertex_quantity_no_init
R 2116 14 125 vertex_quantity_module clean_vertex_quantity
R 2122 14 131 vertex_quantity_module apply_boundary
R 2129 14 138 vertex_quantity_module write_vertex_quantity
R 2135 14 144 vertex_quantity_module read_vertex_quantity
R 2720 14 12 geometry_module quad_area
R 3283 14 575 geometry_module tetrahederon_volume
R 3947 25 6 density_module density_t
R 3948 5 7 density_module cell_quantity_t density_t
R 3952 5 11 density_module init_cell_quantity_init_arr$tbp$1 density_t
R 3953 5 12 density_module init_cell_quantity_init_val$tbp$2 density_t
R 3954 5 13 density_module init_cell_quantity_no_init$tbp$3 density_t
R 3955 5 14 density_module init_cell_quantity_copy$tbp$4 density_t
R 3956 5 15 density_module clean_cell_quantity$tbp$5 density_t
R 3957 5 16 density_module apply_boundary$tbp$6 vertex_mass_t
R 3958 5 17 density_module write_cell_quantity$tbp$7 density_t
R 3959 5 18 density_module read_cell_quantity$tbp$8 density_t
R 3960 5 19 density_module .read$9 density_t
R 3961 5 20 density_module read_quantity$tbp$10 density_t
R 3962 5 21 density_module .write$11 density_t
R 3963 5 22 density_module write_quantity$tbp$12 density_t
R 3964 5 23 density_module debug_print$tbp$13 density_t
R 3965 5 24 density_module init_quantity_init_val_4d$tbp$14 density_t
R 3966 5 25 density_module exchange_end$tbp$15 density_t
R 3967 5 26 density_module exchange_virtual_space_nonblocking$tbp$17 density_t
R 3968 5 27 density_module exchange_virtual_space_blocking$tbp$18 density_t
R 3969 5 28 density_module debug_check_nan$tbp$19 density_t
R 3970 5 29 density_module set_communication$tbp$20 density_t
R 3971 5 30 density_module clean_quantity$tbp$21 density_t
R 3972 5 31 density_module point_to_data$tbpg$22 density_t
R 3973 5 32 density_module ptr_coordinates_4d$tbp$23 density_t
R 3974 5 33 density_module ptr_coordinates_3d$tbp$24 density_t
R 3975 5 34 density_module ptr_coordinates_2d$tbp$25 density_t
R 3976 5 35 density_module ptr_coordinates_1d_first$tbp$26 density_t
R 3977 5 36 density_module ptr_coordinates_1d$tbp$27 density_t
R 3978 5 37 density_module init_quantity_no_init$tbp$28 density_t
R 3979 5 38 density_module init_quantity_init_val$tbp$29 density_t
R 3980 5 39 density_module init_quantity_no_bc$tbp$30 density_t
R 3981 5 40 density_module init_quantity_init_arr$tbp$31 density_t
R 3982 5 41 density_module read_quantity_abstract$tbp$32 density_t
R 3983 5 42 density_module read_density$tbp$33 density_t
R 3984 5 43 density_module write_quantity_abstract$tbp$34 density_t
R 3985 5 44 density_module write_density$tbp$35 density_t
R 3986 5 45 density_module clean_density$tbp$36 density_t
R 3988 19 47 density_module density_t
R 4187 25 7 cell_mass_module cell_mass_t
R 4188 5 8 cell_mass_module cell_quantity_t cell_mass_t
R 4193 5 13 cell_mass_module init_cell_quantity_init_arr$tbp$2 cell_mass_t
R 4194 5 14 cell_mass_module init_cell_quantity_init_val$tbp$3 cell_mass_t
R 4195 5 15 cell_mass_module init_cell_quantity_no_init$tbp$4 cell_mass_t
R 4196 5 16 cell_mass_module init_cell_quantity_copy$tbp$5 cell_mass_t
R 4197 5 17 cell_mass_module clean_cell_quantity$tbp$6 cell_mass_t
R 4198 5 18 cell_mass_module apply_boundary$tbp$7 vertex_mass_t
R 4199 5 19 cell_mass_module write_cell_quantity$tbp$8 cell_mass_t
R 4200 5 20 cell_mass_module read_cell_quantity$tbp$9 cell_mass_t
R 4201 5 21 cell_mass_module .read$10 cell_mass_t
R 4202 5 22 cell_mass_module read_quantity$tbp$11 cell_mass_t
R 4203 5 23 cell_mass_module .write$12 cell_mass_t
R 4204 5 24 cell_mass_module write_quantity$tbp$13 cell_mass_t
R 4205 5 25 cell_mass_module debug_print$tbp$14 cell_mass_t
R 4206 5 26 cell_mass_module init_quantity_init_val_4d$tbp$15 cell_mass_t
R 4207 5 27 cell_mass_module exchange_end$tbp$16 cell_mass_t
R 4208 5 28 cell_mass_module exchange_virtual_space_nonblocking$tbp$18 cell_mass_t
R 4209 5 29 cell_mass_module exchange_virtual_space_blocking$tbp$19 cell_mass_t
R 4210 5 30 cell_mass_module debug_check_nan$tbp$20 cell_mass_t
R 4211 5 31 cell_mass_module set_communication$tbp$21 cell_mass_t
R 4212 5 32 cell_mass_module clean_quantity$tbp$22 cell_mass_t
R 4213 5 33 cell_mass_module point_to_data$tbpg$23 cell_mass_t
R 4214 5 34 cell_mass_module ptr_coordinates_4d$tbp$24 cell_mass_t
R 4215 5 35 cell_mass_module ptr_coordinates_3d$tbp$25 cell_mass_t
R 4216 5 36 cell_mass_module ptr_coordinates_2d$tbp$26 cell_mass_t
R 4217 5 37 cell_mass_module ptr_coordinates_1d_first$tbp$27 cell_mass_t
R 4218 5 38 cell_mass_module ptr_coordinates_1d$tbp$28 cell_mass_t
R 4219 5 39 cell_mass_module init_quantity_no_init$tbp$29 cell_mass_t
R 4220 5 40 cell_mass_module init_quantity_init_val$tbp$30 cell_mass_t
R 4221 5 41 cell_mass_module init_quantity_no_bc$tbp$31 cell_mass_t
R 4222 5 42 cell_mass_module init_quantity_init_arr$tbp$32 cell_mass_t
R 4223 5 43 cell_mass_module read_quantity_abstract$tbp$33 cell_mass_t
R 4224 5 44 cell_mass_module read_cell_mass$tbp$34 cell_mass_t
R 4225 5 45 cell_mass_module write_quantity_abstract$tbp$35 cell_mass_t
R 4226 5 46 cell_mass_module write_cell_mass$tbp$36 cell_mass_t
R 4227 5 47 cell_mass_module calculate_cell_mass$tbp$37 cell_mass_t
R 4228 5 48 cell_mass_module clean_cell_mass$tbp$38 cell_mass_t
R 4230 19 50 cell_mass_module cell_mass_t
R 4318 25 6 coordinates_module coordinates_t
R 4319 5 7 coordinates_module vertex_quantity_t coordinates_t
R 4320 5 8 coordinates_module dimension coordinates_t
R 4325 5 13 coordinates_module init_vertex_quantity_init_arr$tbp$0 vertex_mass_t
R 4326 5 14 coordinates_module init_vertex_quantity_init_val$tbp$1 coordinates_t
R 4327 5 15 coordinates_module init_vertex_quantity_no_init$tbp$2 coordinates_t
R 4328 5 16 coordinates_module clean_vertex_quantity$tbp$3 coordinates_t
R 4329 5 17 coordinates_module write_vertex_quantity$tbp$4 coordinates_t
R 4330 5 18 coordinates_module read_vertex_quantity$tbp$5 coordinates_t
R 4331 5 19 coordinates_module .read$6 coordinates_t
R 4332 5 20 coordinates_module read_quantity$tbp$7 coordinates_t
R 4333 5 21 coordinates_module .write$8 coordinates_t
R 4334 5 22 coordinates_module write_quantity$tbp$9 coordinates_t
R 4335 5 23 coordinates_module debug_print$tbp$10 coordinates_t
R 4336 5 24 coordinates_module init_quantity_init_val_4d$tbp$11 coordinates_t
R 4337 5 25 coordinates_module exchange_end$tbp$12 coordinates_t
R 4338 5 26 coordinates_module exchange_virtual_space_nonblocking$tbp$13 coordinates_t
R 4339 5 27 coordinates_module exchange_virtual_space_blocking$tbp$14 coordinates_t
R 4340 5 28 coordinates_module debug_check_nan$tbp$15 coordinates_t
R 4341 5 29 coordinates_module set_communication$tbp$16 coordinates_t
R 4342 5 30 coordinates_module clean_quantity$tbp$17 coordinates_t
R 4343 5 31 coordinates_module point_to_data$tbpg$21 coordinates_t
R 4344 5 32 coordinates_module ptr_coordinates_4d$tbp$22 coordinates_t
R 4345 5 33 coordinates_module ptr_coordinates_3d$tbp$23 coordinates_t
R 4346 5 34 coordinates_module ptr_coordinates_2d$tbp$24 coordinates_t
R 4347 5 35 coordinates_module ptr_coordinates_1d_first$tbp$25 coordinates_t
R 4348 5 36 coordinates_module ptr_coordinates_1d$tbp$26 coordinates_t
R 4349 5 37 coordinates_module init_quantity_no_init$tbp$27 coordinates_t
R 4350 5 38 coordinates_module init_quantity_init_val$tbp$28 coordinates_t
R 4351 5 39 coordinates_module init_quantity_no_bc$tbp$29 coordinates_t
R 4352 5 40 coordinates_module init_quantity_init_arr$tbp$30 coordinates_t
R 4353 5 41 coordinates_module read_quantity_abstract$tbp$31 coordinates_t
R 4354 5 42 coordinates_module read_coordinates$tbp$32 coordinates_t
R 4355 5 43 coordinates_module write_quantity_abstract$tbp$33 coordinates_t
R 4356 5 44 coordinates_module write_coordinates$tbp$34 coordinates_t
R 4357 5 45 coordinates_module apply_boundary$tbp$35 coordinates_t
R 4358 5 46 coordinates_module clean_coordinates$tbp$36 coordinates_t
R 4359 5 47 coordinates_module calculate$tbp$37 coordinates_t
R 4361 19 49 coordinates_module coordinates_t
S 4434 25 0 0 0 2502 1 624 32135 10000004 800214 A 0 0 0 0 B 0 14 0 0 0 0 0 1997 0 0 0 0 0 0 0 0 0 0 31 4479 0 0 0 624 0 0 0 0 vertex_mass_t
S 4435 5 0 0 0 1288 4445 624 5054 10800000 10 A 0 0 0 0 B 0 0 0 0 0 0 0 4435 2502 0 0 0 0 0 0 0 0 0 0 2043 1 4435 0 624 0 0 0 0 vertex_quantity_t
S 4438 14 0 0 0 9 1 624 32167 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 29 2502 0 0 0 0 0 0 0 0 clean_vertex_mass$tbp clean_vertex_mass$tbp 
S 4441 14 0 0 0 9 1 624 32214 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 30 2502 0 0 0 0 0 0 0 0 calculate_vertex_mass_2d$tbp calculate_vertex_mass_2d$tbp 
S 4444 14 0 0 0 9 1 624 32268 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 2502 0 0 0 0 0 0 0 0 calculate_vertex_mass_3d$tbp calculate_vertex_mass_3d$tbp 
S 4445 5 0 0 0 6 4446 624 32297 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4482 0 0 2078 0 0 0 0 0 0 0 0 0 init_vertex_quantity_init_arr$tbp$1
S 4446 5 0 0 0 6 4447 624 32333 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4483 0 0 2100 0 0 0 0 0 0 0 0 0 init_vertex_quantity_init_val$tbp$2
S 4447 5 0 0 0 6 4448 624 32369 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4484 0 0 2111 0 0 0 0 0 0 0 0 0 init_vertex_quantity_no_init$tbp$3
S 4448 5 0 0 0 6 4449 624 32404 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4485 0 0 2116 0 0 0 0 0 0 0 0 0 clean_vertex_quantity$tbp$4
S 4449 5 0 0 0 6 4450 624 32432 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4486 0 0 2122 0 0 0 0 0 0 0 0 0 apply_boundary$tbp$8
S 4450 5 0 0 0 6 4451 624 32453 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4487 0 0 2129 0 0 0 0 0 0 0 0 0 write_vertex_quantity$tbp$9
S 4451 5 0 0 0 6 4452 624 32481 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4488 0 0 2135 0 0 0 0 0 0 0 0 0 read_vertex_quantity$tbp$10
S 4452 5 0 0 0 9 4453 624 32509 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4489 0 0 4490 0 0 0 0 0 0 0 0 0 .read$11
S 4453 5 0 0 0 6 4454 624 32518 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4490 0 0 1952 0 0 0 0 0 0 0 0 0 read_quantity$tbp$12
S 4454 5 0 0 0 6 4455 624 32539 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4491 0 0 1946 0 0 0 0 0 0 0 0 0 read_quantity_abstract$tbp$13
S 4455 5 0 0 0 9 4456 624 32569 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4492 0 0 4493 0 0 0 0 0 0 0 0 0 .write$14
S 4456 5 0 0 0 6 4457 624 32579 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4493 0 0 1940 0 0 0 0 0 0 0 0 0 write_quantity$tbp$15
S 4457 5 0 0 0 6 4458 624 32601 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4494 0 0 1934 0 0 0 0 0 0 0 0 0 write_quantity_abstract$tbp$16
S 4458 5 0 0 0 6 4459 624 32632 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4495 0 0 1928 0 0 0 0 0 0 0 0 0 debug_print$tbp$17
S 4459 5 0 0 0 6 4460 624 32651 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4496 0 0 1840 0 0 0 0 0 0 0 0 0 init_quantity_init_val_4d$tbp$19
S 4460 5 0 0 0 6 4461 624 32684 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4497 0 0 1918 0 0 0 0 0 0 0 0 0 exchange_end$tbp$20
S 4461 5 0 0 0 6 4462 624 32704 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4498 0 0 1915 0 0 0 0 0 0 0 0 0 exchange_virtual_space_nonblocking$tbp$21
S 4462 5 0 0 0 6 4463 624 32746 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4499 0 0 1911 0 0 0 0 0 0 0 0 0 exchange_virtual_space_blocking$tbp$22
S 4463 5 0 0 0 6 4464 624 32785 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4500 0 0 1922 0 0 0 0 0 0 0 0 0 debug_check_nan$tbp$23
S 4464 5 0 0 0 6 4465 624 32808 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4501 0 0 1905 0 0 0 0 0 0 0 0 0 set_communication$tbp$24
S 4465 5 0 0 0 6 4466 624 32833 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4502 0 0 1862 0 0 0 0 0 0 0 0 0 clean_quantity$tbp$25
S 4466 5 0 0 0 9 4467 624 32855 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4503 0 0 4504 0 0 0 0 0 0 0 0 0 point_to_data$tbpg$26
S 4467 5 0 0 0 6 4468 624 32877 800012 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4504 0 0 1899 0 0 0 0 0 0 0 0 0 ptr_coordinates_4d$tbp$27
S 4468 5 0 0 0 6 4469 624 32903 800012 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4505 0 0 1892 0 0 0 0 0 0 0 0 0 ptr_coordinates_3d$tbp$28
S 4469 5 0 0 0 6 4470 624 32929 800012 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4506 0 0 1884 0 0 0 0 0 0 0 0 0 ptr_coordinates_2d$tbp$29
S 4470 5 0 0 0 6 4471 624 32955 800012 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4507 0 0 1872 0 0 0 0 0 0 0 0 0 ptr_coordinates_1d_first$tbp$30
S 4471 5 0 0 0 6 4472 624 32987 800012 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4508 0 0 1867 0 0 0 0 0 0 0 0 0 ptr_coordinates_1d$tbp$31
S 4472 5 0 0 0 6 4473 624 33013 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4509 0 0 1858 0 0 0 0 0 0 0 0 0 init_quantity_no_init$tbp$32
S 4473 5 0 0 0 6 4474 624 33042 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4510 0 0 1829 0 0 0 0 0 0 0 0 0 init_quantity_init_val$tbp$33
S 4474 5 0 0 0 6 4475 624 33072 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4511 0 0 1850 0 0 0 0 0 0 0 0 0 init_quantity_no_bc$tbp$34
S 4475 5 0 0 0 6 4476 624 33099 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4512 0 0 1809 0 0 0 0 0 0 0 0 0 init_quantity_init_arr$tbp$35
S 4476 5 0 0 0 6 4477 624 33129 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4444 0 0 4543 0 0 0 0 0 0 0 0 0 calculate_vertex_mass_3d$tbp$36
S 4477 5 0 0 0 6 4478 624 33161 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4441 0 0 4537 0 0 0 0 0 0 0 0 0 calculate_vertex_mass_2d$tbp$37
S 4478 5 0 0 0 6 1 624 33193 800002 2200 A 0 0 0 0 B 0 26 0 0 0 0 0 0 2502 0 0 0 0 0 0 4438 0 0 4546 0 0 0 0 0 0 0 0 0 clean_vertex_mass$tbp$38
S 4479 8 5 0 0 2508 1 624 33218 40822004 1220 A 0 0 0 0 B 0 26 0 0 0 0 0 2502 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_mass_module$$$vertex_mass_t$$$td
S 4480 19 0 0 0 9 1 624 32135 4000 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 180 1 0 0 4434 0 0 624 0 0 0 0 vertex_mass_t
O 4480 1 4481
S 4481 27 0 0 0 9 4516 624 7169 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 181 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 constructor
Q 4481 4480 0
S 4482 14 0 0 0 6 1 624 15810 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_init_arr$tbp init_vertex_quantity_init_arr$tbp 
S 4483 14 0 0 0 6 1 624 15844 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 23 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_init_val$tbp init_vertex_quantity_init_val$tbp 
S 4484 14 0 0 0 6 1 624 15878 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 24 1288 0 0 0 624 0 0 0 0 init_vertex_quantity_no_init$tbp init_vertex_quantity_no_init$tbp 
S 4485 14 0 0 0 9 1 624 15911 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 1288 0 0 0 624 0 0 0 0 clean_vertex_quantity$tbp clean_vertex_quantity$tbp 
S 4486 14 0 0 0 9 1 624 15937 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 1288 0 0 0 624 0 0 0 0 apply_boundary$tbp apply_boundary$tbp 
S 4487 14 0 0 0 9 1 624 15956 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 27 1288 0 0 0 624 0 0 0 0 write_vertex_quantity$tbp write_vertex_quantity$tbp 
S 4488 14 0 0 0 9 1 624 15982 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 1288 0 0 0 624 0 0 0 0 read_vertex_quantity$tbp read_vertex_quantity$tbp 
S 4489 19 0 0 0 0 1 624 10666 4010 200 A 0 0 0 0 B 20000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 169 1 22 2502 0 0 0 624 0 0 0 0 .read
O 4489 1 1767
S 4490 14 0 0 0 9 1 624 13934 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 21 1276 1 0 0 624 0 0 0 0 read_quantity$tbp read_quantity$tbp 
S 4491 14 0 0 0 9 1 624 13907 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1276 0 0 0 624 0 0 0 0 read_quantity_abstract$tbp read_quantity_abstract$tbp 
S 4492 19 0 0 0 0 1 624 10645 4010 200 A 0 0 0 0 B 20000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 170 1 20 2502 0 0 0 624 0 0 0 0 .write
O 4492 1 1764
S 4493 14 0 0 0 9 1 624 13888 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 19 1276 1 0 0 624 0 0 0 0 write_quantity$tbp write_quantity$tbp 
S 4494 14 0 0 0 9 1 624 13860 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 1276 0 0 0 624 0 0 0 0 write_quantity_abstract$tbp write_quantity_abstract$tbp 
S 4495 14 0 0 0 9 1 624 10614 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17 1276 0 0 0 624 0 0 0 0 debug_print$tbp debug_print$tbp 
S 4496 14 0 0 0 6 1 624 13830 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 1276 0 0 0 624 0 0 0 0 init_quantity_init_val_4d$tbp init_quantity_init_val_4d$tbp 
S 4497 14 0 0 0 9 1 624 10597 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 15 1276 0 0 0 624 0 0 0 0 exchange_end$tbp exchange_end$tbp 
S 4498 14 0 0 0 9 1 624 10558 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 1276 0 0 0 624 0 0 0 0 exchange_virtual_space_nonblocking$tbp exchange_virtual_space_nonblocking$tbp 
S 4499 14 0 0 0 9 1 624 10488 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 1276 0 0 0 624 0 0 0 0 exchange_virtual_space_blocking$tbp exchange_virtual_space_blocking$tbp 
S 4500 14 0 0 0 9 1 624 10468 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 12 1276 0 0 0 624 0 0 0 0 debug_check_nan$tbp debug_check_nan$tbp 
S 4501 14 0 0 0 9 1 624 10446 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 11 1276 0 0 0 624 0 0 0 0 set_communication$tbp set_communication$tbp 
S 4502 14 0 0 0 9 1 624 13811 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 1276 0 0 0 624 0 0 0 0 clean_quantity$tbp clean_quantity$tbp 
S 4503 19 0 0 0 9 1 624 14698 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 112 5 10 2502 0 0 0 624 0 0 0 0 point_to_data$tbpg
O 4503 5 1749 1750 1751 1752 1753
S 4504 14 0 0 0 9 1 624 13774 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 1276 1 0 0 624 0 0 0 0 ptr_coordinates_4d$tbp ptr_coordinates_4d$tbp 
S 4505 14 0 0 0 9 1 624 13751 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 1276 0 0 0 624 0 0 0 0 ptr_coordinates_3d$tbp ptr_coordinates_3d$tbp 
S 4506 14 0 0 0 9 1 624 13728 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 1276 0 0 0 624 0 0 0 0 ptr_coordinates_2d$tbp ptr_coordinates_2d$tbp 
S 4507 14 0 0 0 9 1 624 13699 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 1276 0 0 0 624 0 0 0 0 ptr_coordinates_1d_first$tbp ptr_coordinates_1d_first$tbp 
S 4508 14 0 0 0 9 1 624 13676 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 1276 0 0 0 624 0 0 0 0 ptr_coordinates_1d$tbp ptr_coordinates_1d$tbp 
S 4509 14 0 0 0 6 1 624 13650 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 1276 0 0 0 624 0 0 0 0 init_quantity_no_init$tbp init_quantity_no_init$tbp 
S 4510 14 0 0 0 6 1 624 13623 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1276 0 0 0 624 0 0 0 0 init_quantity_init_val$tbp init_quantity_init_val$tbp 
S 4511 14 0 0 0 6 1 624 13599 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1276 0 0 0 624 0 0 0 0 init_quantity_no_bc$tbp init_quantity_no_bc$tbp 
S 4512 14 0 0 0 6 1 624 13572 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1276 0 0 0 624 0 0 0 0 init_quantity_init_arr$tbp init_quantity_init_arr$tbp 
S 4516 23 5 0 0 2502 4523 624 7169 14 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 4517 1 3 1 0 10 1 4516 33258 14 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_data
S 4518 1 3 1 0 6 1 4516 7604 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nxp
S 4519 1 3 1 0 6 1 4516 7608 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nyp
S 4520 1 3 1 0 6 1 4516 7612 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nzp
S 4521 7 3 1 0 2514 1 4516 13189 10801014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4525 0 0 0 0 0 0 0 0 bc
S 4522 1 3 1 0 766 1 4516 14770 1014 3014 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4529 0 0 0 0 0 0 0 0 bc_params
S 4523 14 5 0 0 2502 1 4516 7169 14 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 1800 6 0 0 4524 0 0 0 0 0 0 0 0 0 39 0 624 0 0 0 0 constructor constructor constructor
F 4523 6 4517 4518 4519 4520 4521 4522
S 4524 1 3 0 0 2502 1 4516 7169 14 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 constructor
S 4525 8 1 0 0 2517 1 4516 33268 40822014 1020 A 0 0 0 0 B 0 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bc$sd19
S 4529 8 1 0 0 2520 1 4516 33298 40822016 1020 A 0 0 0 0 B 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 bc_params$sd23
S 4530 23 5 0 0 0 4537 624 32189 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calculate_vertex_mass_2d
S 4531 1 3 3 0 2502 1 4530 8497 14 3200 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 4532 1 3 3 0 2475 1 4530 15559 14 3000 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates
S 4533 1 3 3 0 2085 1 4530 33313 14 3000 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tot_density
S 4534 1 3 1 0 2350 1 4530 33325 14 3000 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c_mass
S 4535 1 3 1 0 6 1 4530 33332 14 3000 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 wilkins_scheme
S 4536 1 3 1 0 10 1 4530 22873 14 3000 A 0 0 0 0 B 0 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 cyl
S 4537 14 5 0 0 0 1 4530 32189 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 1807 6 0 0 0 0 0 0 0 0 0 0 0 0 51 0 624 0 0 0 0 calculate_vertex_mass_2d calculate_vertex_mass_2d 
F 4537 6 4531 4532 4533 4534 4535 4536
S 4538 23 5 0 0 0 4543 624 32243 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calculate_vertex_mass_3d
S 4539 1 3 3 0 2502 1 4538 8497 14 3200 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 4540 1 3 3 0 2475 1 4538 15559 14 3200 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates
S 4541 1 3 1 0 2085 1 4538 33313 14 3000 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tot_density
S 4542 1 3 1 0 2350 1 4538 33325 14 3000 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c_mass
S 4543 14 5 0 0 0 1 4538 32243 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 1814 4 0 0 0 0 0 0 0 0 0 0 0 0 129 0 624 0 0 0 0 calculate_vertex_mass_3d calculate_vertex_mass_3d 
F 4543 4 4539 4540 4541 4542
S 4544 23 5 0 0 0 4546 624 32149 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clean_vertex_mass
S 4545 1 3 3 0 2502 1 4544 8497 14 3200 A 0 0 0 0 B 0 252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 4546 14 5 0 0 0 1 4544 32149 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 1819 1 0 0 0 0 0 0 0 0 0 0 0 0 252 0 624 0 0 0 0 clean_vertex_mass clean_vertex_mass 
F 4546 1 4545
A 13 2 0 0 0 6 644 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 645 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 646 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 114 2 0 0 0 7 736 0 0 0 114 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 7 737 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 3 0 82 762 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 130 1 0 3 0 88 764 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 5 0 94 766 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 7 771 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 7 775 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 7 772 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 7 773 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 7 774 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 7 769 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 220 2 0 0 80 7 900 0 0 0 220 0 0 0 0 0 0 0 0 0 0 0
A 261 2 0 0 0 7 1049 0 0 0 261 0 0 0 0 0 0 0 0 0 0 0
A 1390 1 0 9 0 2517 4525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 1391 10 0 0 0 7 1390 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 1392 10 0 0 1391 7 1390 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 1393 10 0 0 1392 7 1390 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 1394 4 0 0 0 7 1393 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 1395 4 0 0 0 7 1392 0 1394 0 0 0 0 1 0 0 0 0 0 0 0 0
A 1396 10 0 0 1393 7 1390 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 1397 10 0 0 1396 7 1390 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 776 136 0 0 0 0
A 790 7 181 0 1 2 1
A 789 7 0 135 1 10 1
A 796 7 183 0 1 2 1
A 795 7 0 135 1 10 1
A 802 7 185 0 1 2 1
A 801 7 0 135 1 10 1
A 808 7 187 0 1 2 1
A 807 7 0 135 1 10 1
A 814 7 189 0 1 2 1
A 813 7 0 135 1 10 1
A 820 7 191 0 1 2 1
A 819 7 0 135 1 10 0
T 1194 499 0 0 0 0
A 1220 7 532 0 1 2 1
A 1219 7 0 135 1 10 1
A 1226 7 534 0 1 2 1
A 1225 7 0 135 1 10 0
T 1357 626 0 0 0 0
A 1381 7 659 0 1 2 1
A 1380 7 0 135 1 10 1
A 1387 7 661 0 1 2 1
A 1386 7 0 135 1 10 0
Z
