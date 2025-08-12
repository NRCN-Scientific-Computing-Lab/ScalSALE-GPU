V34 :0x24 boundary_mirror_3d_module
22 boundary_mirror_3d.f90 S624 0
08/07/2025  09:03:11
use data_4d_module private
use communication_parameters_module private
use iso_fortran_env private
use iso_c_binding private
use quantity_module private
use data_module private
use vertex_boundary_condition_module private
enduse
D 58 26 650 8 649 7
D 67 26 653 8 652 7
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
D 136 26 765 952 764 7
D 181 22 7
D 183 22 7
D 185 22 7
D 187 22 7
D 189 22 7
D 191 22 7
D 499 26 1188 648 1183 7
D 532 22 7
D 534 22 7
D 626 26 1349 600 1345 7
D 659 22 7
D 661 22 7
D 990 26 1715 192 1713 7
D 1169 26 1951 0 1943 0
D 1196 26 1981 0 1980 0
D 1202 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 1208 23 626 1 875 881 0 1 0 0 1
 876 879 880 876 879 877
D 1211 23 7 1 0 220 0 0 0 0 0
 0 220 0 11 220 0
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 boundary_mirror_3d_module
S 626 23 0 0 0 9 1943 624 5071 14 0 A 0 0 0 0 B 400000 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_boundary_condition_t
S 628 23 0 0 0 9 1409 624 5111 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 data_t
S 630 23 0 0 0 9 1713 624 5134 14 0 A 0 0 0 0 B 400000 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 quantity_t
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 633 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 634 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 649 25 7 iso_c_binding c_ptr
R 650 5 8 iso_c_binding val c_ptr
R 652 25 10 iso_c_binding c_funptr
R 653 5 11 iso_c_binding val c_funptr
R 687 6 45 iso_c_binding c_null_ptr$ac
R 689 6 47 iso_c_binding c_null_funptr$ac
R 690 26 48 iso_c_binding ==
R 692 26 50 iso_c_binding !=
S 724 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 725 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 728 7 3 iso_fortran_env character_kinds$ac
R 750 7 25 iso_fortran_env integer_kinds$ac
R 752 7 27 iso_fortran_env logical_kinds$ac
R 754 7 29 iso_fortran_env real_kinds$ac
S 757 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 759 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 760 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 761 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 762 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 763 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 764 25 1 communication_parameters_module communication_parameters_t
R 765 5 2 communication_parameters_module mpi_params communication_parameters_t
R 767 5 4 communication_parameters_module mpi_params$p communication_parameters_t
R 768 5 5 communication_parameters_module communicate_to communication_parameters_t
R 769 5 6 communication_parameters_module tag communication_parameters_t
R 770 5 7 communication_parameters_module comm communication_parameters_t
R 771 5 8 communication_parameters_module d1 communication_parameters_t
R 772 5 9 communication_parameters_module d2 communication_parameters_t
R 773 5 10 communication_parameters_module d3 communication_parameters_t
R 774 5 11 communication_parameters_module dim_offset communication_parameters_t
R 776 5 13 communication_parameters_module types_send communication_parameters_t
R 777 5 14 communication_parameters_module types_send$sd communication_parameters_t
R 778 5 15 communication_parameters_module types_send$p communication_parameters_t
R 779 5 16 communication_parameters_module types_send$o communication_parameters_t
R 781 5 18 communication_parameters_module types_recv communication_parameters_t
R 783 5 20 communication_parameters_module types_recv$sd communication_parameters_t
R 784 5 21 communication_parameters_module types_recv$p communication_parameters_t
R 785 5 22 communication_parameters_module types_recv$o communication_parameters_t
R 788 5 25 communication_parameters_module sizes_send communication_parameters_t
R 789 5 26 communication_parameters_module sizes_send$sd communication_parameters_t
R 790 5 27 communication_parameters_module sizes_send$p communication_parameters_t
R 791 5 28 communication_parameters_module sizes_send$o communication_parameters_t
R 793 5 30 communication_parameters_module sizes_recv communication_parameters_t
R 795 5 32 communication_parameters_module sizes_recv$sd communication_parameters_t
R 796 5 33 communication_parameters_module sizes_recv$p communication_parameters_t
R 797 5 34 communication_parameters_module sizes_recv$o communication_parameters_t
R 800 5 37 communication_parameters_module start_send communication_parameters_t
R 801 5 38 communication_parameters_module start_send$sd communication_parameters_t
R 802 5 39 communication_parameters_module start_send$p communication_parameters_t
R 803 5 40 communication_parameters_module start_send$o communication_parameters_t
R 805 5 42 communication_parameters_module start_recv communication_parameters_t
R 807 5 44 communication_parameters_module start_recv$sd communication_parameters_t
R 808 5 45 communication_parameters_module start_recv$p communication_parameters_t
R 809 5 46 communication_parameters_module start_recv$o communication_parameters_t
S 889 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 1183 25 4 data_4d_module data_4d_t
R 1188 5 9 data_4d_module values data_4d_t
R 1189 5 10 data_4d_module values$sd data_4d_t
R 1190 5 11 data_4d_module values$p data_4d_t
R 1191 5 12 data_4d_module values$o data_4d_t
R 1193 5 14 data_4d_module nx data_4d_t
R 1194 5 15 data_4d_module ny data_4d_t
R 1195 5 16 data_4d_module nz data_4d_t
R 1196 5 17 data_4d_module nmats data_4d_t
R 1197 5 18 data_4d_module communication data_4d_t
R 1199 5 20 data_4d_module communication$p data_4d_t
R 1200 5 21 data_4d_module communication_parameters data_4d_t
R 1202 5 23 data_4d_module communication_parameters$p data_4d_t
R 1203 5 24 data_4d_module parallel_params data_4d_t
R 1205 5 26 data_4d_module parallel_params$p data_4d_t
R 1207 5 28 data_4d_module send_buf data_4d_t
R 1208 5 29 data_4d_module send_buf$sd data_4d_t
R 1209 5 30 data_4d_module send_buf$p data_4d_t
R 1210 5 31 data_4d_module send_buf$o data_4d_t
R 1213 5 34 data_4d_module recv_buf data_4d_t
R 1214 5 35 data_4d_module recv_buf$sd data_4d_t
R 1215 5 36 data_4d_module recv_buf$p data_4d_t
R 1216 5 37 data_4d_module recv_buf$o data_4d_t
R 1218 5 39 data_4d_module request data_4d_t
R 1232 5 53 data_4d_module .read$0 data_4d_t
R 1233 5 54 data_4d_module read_data$tbp$1 data_4d_t
R 1234 5 55 data_4d_module .write$2 data_4d_t
R 1235 5 56 data_4d_module write_data$tbp$3 data_4d_t
R 1236 5 57 data_4d_module debug_print$tbp$4 data_4d_t
R 1237 5 58 data_4d_module exchange_end$tbp$5 data_4d_t
R 1238 5 59 data_4d_module exchange_virtual_space_nonblocking$tbp$6 data_4d_t
R 1239 5 60 data_4d_module get_recv_buf$tbp$7 data_4d_t
R 1240 5 61 data_4d_module set_send_buf$tbp$8 data_4d_t
R 1241 5 62 data_4d_module exchange_virtual_space_blocking$tbp$9 data_4d_t
R 1242 5 63 data_4d_module debug_check_nan$tbp$10 data_4d_t
R 1243 5 64 data_4d_module set_communication$tbp$11 data_4d_t
R 1244 5 65 data_4d_module clean_data$tbp$12 data_4d_t
R 1245 5 66 data_4d_module point_to_data$tbp$13 data_4d_t
R 1345 25 4 data_module data_t
R 1349 5 8 data_module values data_t
R 1350 5 9 data_module values$sd data_t
R 1351 5 10 data_module values$p data_t
R 1352 5 11 data_module values$o data_t
R 1354 5 13 data_module nx data_t
R 1355 5 14 data_module ny data_t
R 1356 5 15 data_module nz data_t
R 1357 5 16 data_module communication data_t
R 1359 5 18 data_module communication$p data_t
R 1360 5 19 data_module communication_parameters data_t
R 1362 5 21 data_module communication_parameters$p data_t
R 1363 5 22 data_module parallel_params data_t
R 1365 5 24 data_module parallel_params$p data_t
R 1367 5 26 data_module send_buf data_t
R 1368 5 27 data_module send_buf$sd data_t
R 1369 5 28 data_module send_buf$p data_t
R 1370 5 29 data_module send_buf$o data_t
R 1373 5 32 data_module recv_buf data_t
R 1374 5 33 data_module recv_buf$sd data_t
R 1375 5 34 data_module recv_buf$p data_t
R 1376 5 35 data_module recv_buf$o data_t
R 1378 5 37 data_module request data_t
R 1392 5 51 data_module .read$0 data_t
R 1393 5 52 data_module read_data$tbp$1 data_t
R 1394 5 53 data_module .write$2 data_t
R 1395 5 54 data_module write_data$tbp$3 data_t
R 1396 5 55 data_module debug_print$tbp$4 data_t
R 1397 5 56 data_module exchange_end$tbp$5 data_t
R 1398 5 57 data_module exchange_virtual_space_nonblocking$tbp$6 data_t
R 1399 5 58 data_module get_recv_buf$tbp$7 data_t
R 1400 5 59 data_module set_send_buf$tbp$8 data_t
R 1401 5 60 data_module exchange_virtual_space_blocking$tbp$9 data_t
R 1402 5 61 data_module debug_check_nan$tbp$10 data_t
R 1403 5 62 data_module set_communication$tbp$11 data_t
R 1404 5 63 data_module clean_data$tbp$12 data_t
R 1405 5 64 data_module point_to_data$tbp$13 data_t
R 1409 19 68 data_module data_t
R 1713 25 8 quantity_module quantity_t
R 1715 5 10 quantity_module data quantity_t
R 1716 5 11 quantity_module data$sd quantity_t
R 1717 5 12 quantity_module data$p quantity_t
R 1718 5 13 quantity_module data$o quantity_t
R 1720 5 15 quantity_module data_4d quantity_t
R 1722 5 17 quantity_module data_4d$p quantity_t
R 1723 5 18 quantity_module boundary_params quantity_t
R 1725 5 20 quantity_module boundary_params$p quantity_t
R 1726 5 21 quantity_module parallel_params quantity_t
R 1728 5 23 quantity_module parallel_params$p quantity_t
R 1729 5 24 quantity_module d1 quantity_t
R 1730 5 25 quantity_module d2 quantity_t
R 1731 5 26 quantity_module d3 quantity_t
R 1732 5 27 quantity_module number_of_axises quantity_t
R 1757 5 52 quantity_module .read$2 quantity_t
R 1758 5 53 quantity_module read_quantity$tbp$3 quantity_t
R 1759 5 54 quantity_module read_quantity_abstract$tbp$4 quantity_t
R 1760 5 55 quantity_module .write$5 quantity_t
R 1761 5 56 quantity_module write_quantity$tbp$6 quantity_t
R 1762 5 57 quantity_module write_quantity_abstract$tbp$7 quantity_t
R 1763 5 58 quantity_module debug_print$tbp$8 quantity_t
R 1764 5 59 quantity_module init_quantity_init_val_4d$tbp$9 quantity_t
R 1765 5 60 quantity_module exchange_end$tbp$10 quantity_t
R 1766 5 61 quantity_module exchange_virtual_space_nonblocking$tbp$11 quantity_t
R 1767 5 62 quantity_module exchange_virtual_space_blocking$tbp$12 quantity_t
R 1768 5 63 quantity_module debug_check_nan$tbp$13 quantity_t
R 1769 5 64 quantity_module set_communication$tbp$14 quantity_t
R 1770 5 65 quantity_module clean_quantity$tbp$15 quantity_t
R 1771 5 66 quantity_module point_to_data$tbpg$16 quantity_t
R 1772 5 67 quantity_module point_to_data$tbpg$17 quantity_t
R 1773 5 68 quantity_module point_to_data$tbpg$18 quantity_t
R 1774 5 69 quantity_module point_to_data$tbpg$19 quantity_t
R 1775 5 70 quantity_module point_to_data$tbpg$20 quantity_t
R 1776 5 71 quantity_module ptr_coordinates_4d$tbp$21 quantity_t
R 1777 5 72 quantity_module ptr_coordinates_3d$tbp$22 quantity_t
R 1778 5 73 quantity_module ptr_coordinates_2d$tbp$23 quantity_t
R 1779 5 74 quantity_module ptr_coordinates_1d_first$tbp$24 quantity_t
R 1780 5 75 quantity_module ptr_coordinates_1d$tbp$25 quantity_t
R 1781 5 76 quantity_module init_quantity_no_init$tbp$26 quantity_t
R 1782 5 77 quantity_module init_quantity_init_val$tbp$27 quantity_t
R 1783 5 78 quantity_module init_quantity_no_bc$tbp$28 quantity_t
R 1784 5 79 quantity_module init_quantity_init_arr$tbp$29 quantity_t
R 1943 25 3 vertex_boundary_condition_module vertex_boundary_condition_t
R 1951 5 11 vertex_boundary_condition_module calculate_corner$tbp$0 boundary_mirror_3d_t
R 1952 5 12 vertex_boundary_condition_module calculate_face$tbp$1 vertex_boundary_condition_t
R 1953 5 13 vertex_boundary_condition_module calculate$tbp$2 vertex_boundary_condition_t
R 1954 8 14 vertex_boundary_condition_module vertex_boundary_condition_module$$$$vertex_boundary_condition_t$$$$td
S 1980 25 0 0 0 1196 1 624 15564 10000004 800210 A 0 0 0 0 B 0 9 0 0 0 0 0 1943 0 0 0 0 0 0 0 0 0 0 3 1994 0 0 0 624 0 0 0 0 boundary_mirror_3d_t
S 1981 5 0 0 0 1169 1991 624 5071 10800000 10 A 0 0 0 0 B 0 0 0 0 0 0 0 1981 1196 0 0 0 0 0 0 0 0 0 0 1954 1 1981 0 624 0 0 0 0 vertex_boundary_condition_t
S 1987 14 0 0 0 9 1 624 15184 10 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1196 0 0 0 0 0 0 0 0 calculate_face$tbp calculate_face$tbp 
S 1990 14 0 0 0 9 1 624 15230 10 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1196 0 0 0 0 0 0 0 0 calculate_corner$tbp calculate_corner$tbp 
S 1991 5 0 0 0 6 1992 624 15656 800002 2200 A 0 0 0 0 B 0 17 0 0 0 0 0 0 1196 0 0 0 0 0 0 1990 0 0 2024 0 0 0 0 0 0 0 0 0 calculate_corner$tbp$1
S 1992 5 0 0 0 6 1993 624 15679 800002 2200 A 0 0 0 0 B 0 17 0 0 0 0 0 0 1196 0 0 0 0 0 0 1987 0 0 2017 0 0 0 0 0 0 0 0 0 calculate_face$tbp$2
S 1993 5 0 0 0 6 1 624 15700 800002 2200 A 0 0 0 0 B 0 17 0 0 0 0 0 0 1196 0 0 0 0 0 0 1998 0 0 2006 0 0 0 0 0 0 0 0 0 calculate$tbp$3
S 1994 8 5 0 0 1202 1 624 15716 40822004 1220 A 0 0 0 0 B 0 17 0 0 0 0 0 1196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 boundary_mirror_3d_module$$$$boundary_mirror_3d_t$$$$td
S 1998 14 0 0 0 9 1 624 15145 0 200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1196 0 0 0 624 0 0 0 0 calculate$tbp calculate$tbp 
S 1999 23 5 0 0 0 2006 624 15595 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 boundary_mirror_3d_calculate
S 2000 1 3 3 0 1196 1 1999 8307 14 3200 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 2001 1 3 3 0 990 1 1999 15381 14 3200 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 2002 7 3 3 0 1208 1 1999 15392 10801014 3014 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2007 0 0 0 0 0 0 0 0 coordinates
S 2003 1 3 1 0 10 1 1999 15404 14 3000 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 2004 1 3 1 0 6 1 1999 11644 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 2005 1 3 0 0 18 1 1999 15410 80000014 3000 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 2006 14 5 0 0 0 1 1999 15595 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 470 6 0 0 0 0 0 0 0 0 0 0 0 0 22 0 624 0 0 0 0 boundary_mirror_3d_calculate boundary_mirror_3d_calculate 
F 2006 6 2000 2001 2002 2003 2004 2005
S 2007 8 1 0 0 1211 1 1999 15772 40822014 1020 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates$sd12
S 2011 23 5 0 0 0 2017 624 15624 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calculate_face
S 2012 1 3 3 0 1196 1 2011 8307 14 3200 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 2013 1 3 3 0 990 1 2011 15381 14 3200 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 2014 1 3 1 0 10 1 2011 15404 14 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 2015 1 3 1 0 6 1 2011 11644 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 2016 1 3 0 0 18 1 2011 15410 80000014 3000 A 0 0 0 0 B 0 145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 2017 14 5 0 0 0 1 2011 15624 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 477 5 0 0 0 0 0 0 0 0 0 0 0 0 145 0 624 0 0 0 0 calculate_face calculate_face 
F 2017 5 2012 2013 2014 2015 2016
S 2018 23 5 0 0 0 2024 624 15639 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 calculate_corner
S 2019 1 3 3 0 1196 1 2018 8307 14 3200 A 0 0 0 0 B 0 154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 2020 1 3 3 0 990 1 2018 15381 14 3200 A 0 0 0 0 B 0 154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 2021 1 3 1 0 10 1 2018 15404 14 3000 A 0 0 0 0 B 0 154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 2022 1 3 1 0 6 1 2018 11644 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 2023 1 3 0 0 18 1 2018 15410 80000014 3000 A 0 0 0 0 B 0 154 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 2024 14 5 0 0 0 1 2018 15639 90 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 483 5 0 0 0 0 0 0 0 0 0 0 0 0 154 0 624 0 0 0 0 calculate_corner calculate_corner 
F 2024 5 2019 2020 2021 2022 2023
A 13 2 0 0 0 6 632 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 633 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 17 2 0 0 0 6 634 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 68 1 0 0 0 58 687 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 0 0 67 689 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 114 2 0 0 0 7 724 0 0 0 114 0 0 0 0 0 0 0 0 0 0 0
A 115 2 0 0 0 7 725 0 0 0 115 0 0 0 0 0 0 0 0 0 0 0
A 118 1 0 1 0 76 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 3 0 82 750 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 130 1 0 3 0 88 752 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 5 0 94 754 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 0 7 759 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 137 2 0 0 0 7 763 0 0 0 137 0 0 0 0 0 0 0 0 0 0 0
A 139 2 0 0 0 7 760 0 0 0 139 0 0 0 0 0 0 0 0 0 0 0
A 141 2 0 0 0 7 761 0 0 0 141 0 0 0 0 0 0 0 0 0 0 0
A 145 2 0 0 0 7 762 0 0 0 145 0 0 0 0 0 0 0 0 0 0 0
A 147 2 0 0 0 7 757 0 0 0 147 0 0 0 0 0 0 0 0 0 0 0
A 220 2 0 0 82 7 889 0 0 0 220 0 0 0 0 0 0 0 0 0 0 0
A 874 1 0 9 0 1211 2007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 875 10 0 0 0 7 874 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 137
A 876 10 0 0 875 7 874 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 139
A 877 10 0 0 876 7 874 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 141
A 878 4 0 0 0 7 877 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 879 4 0 0 0 7 876 0 878 0 0 0 0 1 0 0 0 0 0 0 0 0
A 880 10 0 0 877 7 874 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 145
A 881 10 0 0 880 7 874 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
T 764 136 0 0 0 0
A 778 7 181 0 1 2 1
A 777 7 0 135 1 10 1
A 784 7 183 0 1 2 1
A 783 7 0 135 1 10 1
A 790 7 185 0 1 2 1
A 789 7 0 135 1 10 1
A 796 7 187 0 1 2 1
A 795 7 0 135 1 10 1
A 802 7 189 0 1 2 1
A 801 7 0 135 1 10 1
A 808 7 191 0 1 2 1
A 807 7 0 135 1 10 0
T 1183 499 0 0 0 0
A 1209 7 532 0 1 2 1
A 1208 7 0 135 1 10 1
A 1215 7 534 0 1 2 1
A 1214 7 0 135 1 10 0
T 1345 626 0 0 0 0
A 1369 7 659 0 1 2 1
A 1368 7 0 135 1 10 1
A 1375 7 661 0 1 2 1
A 1374 7 0 135 1 10 0
Z
