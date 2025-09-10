V34 :0x24 vertex_boundary_condition_module
29 vertex_boundary_condition.f90 S624 0
09/04/2025  12:54:10
use data_4d_module private
use communication_parameters_module private
use iso_fortran_env private
use iso_c_binding private
use quantity_module private
use data_module private
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
D 82 26 687 8 686 7
D 91 26 690 8 689 7
D 199 26 913 952 912 7
D 244 22 7
D 246 22 7
D 248 22 7
D 250 22 7
D 252 22 7
D 254 22 7
D 499 26 1180 600 1176 7
D 532 22 7
D 534 22 7
D 629 26 1389 648 1384 7
D 662 22 7
D 664 22 7
D 990 26 1713 192 1711 7
D 1089 26 1953 0 1939 0
D 1095 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
D 1098 23 499 1 880 879 0 1 0 0 1
 874 877 878 874 877 875
D 1104 23 7 1 0 166 0 0 0 0 0
 0 166 0 11 166 0
D 1107 26 1983 136 1940 7
D 1113 23 7 1 0 166 0 0 0 0 0
 0 166 0 11 166 0
D 1116 23 7 1 0 11 0 0 0 0 0
 0 11 0 11 11 0
S 624 24 0 0 0 9 1 0 5012 10015 0 A 0 0 0 0 B 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 vertex_boundary_condition_module
S 626 23 0 0 0 9 1240 624 5057 14 0 A 0 0 0 0 B 400000 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 data_t
S 628 23 0 0 0 9 1711 624 5080 14 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 quantity_t
S 631 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 633 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 638 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 639 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 640 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 643 7 3 iso_fortran_env character_kinds$ac
R 665 7 25 iso_fortran_env integer_kinds$ac
R 667 7 27 iso_fortran_env logical_kinds$ac
R 669 7 29 iso_fortran_env real_kinds$ac
R 686 25 7 iso_c_binding c_ptr
R 687 5 8 iso_c_binding val c_ptr
R 689 25 10 iso_c_binding c_funptr
R 690 5 11 iso_c_binding val c_funptr
R 724 6 45 iso_c_binding c_null_ptr$ac
R 726 6 47 iso_c_binding c_null_funptr$ac
R 727 26 48 iso_c_binding ==
R 729 26 50 iso_c_binding !=
S 756 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 757 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 758 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 759 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 760 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 761 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 762 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 912 25 1 communication_parameters_module communication_parameters_t
R 913 5 2 communication_parameters_module mpi_params communication_parameters_t
R 915 5 4 communication_parameters_module mpi_params$p communication_parameters_t
R 916 5 5 communication_parameters_module communicate_to communication_parameters_t
R 917 5 6 communication_parameters_module tag communication_parameters_t
R 918 5 7 communication_parameters_module comm communication_parameters_t
R 919 5 8 communication_parameters_module d1 communication_parameters_t
R 920 5 9 communication_parameters_module d2 communication_parameters_t
R 921 5 10 communication_parameters_module d3 communication_parameters_t
R 922 5 11 communication_parameters_module dim_offset communication_parameters_t
R 924 5 13 communication_parameters_module types_send communication_parameters_t
R 925 5 14 communication_parameters_module types_send$sd communication_parameters_t
R 926 5 15 communication_parameters_module types_send$p communication_parameters_t
R 927 5 16 communication_parameters_module types_send$o communication_parameters_t
R 929 5 18 communication_parameters_module types_recv communication_parameters_t
R 931 5 20 communication_parameters_module types_recv$sd communication_parameters_t
R 932 5 21 communication_parameters_module types_recv$p communication_parameters_t
R 933 5 22 communication_parameters_module types_recv$o communication_parameters_t
R 936 5 25 communication_parameters_module sizes_send communication_parameters_t
R 937 5 26 communication_parameters_module sizes_send$sd communication_parameters_t
R 938 5 27 communication_parameters_module sizes_send$p communication_parameters_t
R 939 5 28 communication_parameters_module sizes_send$o communication_parameters_t
R 941 5 30 communication_parameters_module sizes_recv communication_parameters_t
R 943 5 32 communication_parameters_module sizes_recv$sd communication_parameters_t
R 944 5 33 communication_parameters_module sizes_recv$p communication_parameters_t
R 945 5 34 communication_parameters_module sizes_recv$o communication_parameters_t
R 948 5 37 communication_parameters_module start_send communication_parameters_t
R 949 5 38 communication_parameters_module start_send$sd communication_parameters_t
R 950 5 39 communication_parameters_module start_send$p communication_parameters_t
R 951 5 40 communication_parameters_module start_send$o communication_parameters_t
R 953 5 42 communication_parameters_module start_recv communication_parameters_t
R 955 5 44 communication_parameters_module start_recv$sd communication_parameters_t
R 956 5 45 communication_parameters_module start_recv$p communication_parameters_t
R 957 5 46 communication_parameters_module start_recv$o communication_parameters_t
R 1176 25 4 data_module data_t
R 1180 5 8 data_module values data_t
R 1181 5 9 data_module values$sd data_t
R 1182 5 10 data_module values$p data_t
R 1183 5 11 data_module values$o data_t
R 1185 5 13 data_module nx data_t
R 1186 5 14 data_module ny data_t
R 1187 5 15 data_module nz data_t
R 1188 5 16 data_module communication data_t
R 1190 5 18 data_module communication$p data_t
R 1191 5 19 data_module communication_parameters data_t
R 1193 5 21 data_module communication_parameters$p data_t
R 1194 5 22 data_module parallel_params data_t
R 1196 5 24 data_module parallel_params$p data_t
R 1198 5 26 data_module send_buf data_t
R 1199 5 27 data_module send_buf$sd data_t
R 1200 5 28 data_module send_buf$p data_t
R 1201 5 29 data_module send_buf$o data_t
R 1204 5 32 data_module recv_buf data_t
R 1205 5 33 data_module recv_buf$sd data_t
R 1206 5 34 data_module recv_buf$p data_t
R 1207 5 35 data_module recv_buf$o data_t
R 1209 5 37 data_module request data_t
R 1223 5 51 data_module .read$0 data_t
R 1224 5 52 data_module read_data$tbp$1 data_t
R 1225 5 53 data_module .write$2 data_t
R 1226 5 54 data_module write_data$tbp$3 data_t
R 1227 5 55 data_module debug_print$tbp$4 data_t
R 1228 5 56 data_module exchange_end$tbp$5 data_t
R 1229 5 57 data_module exchange_virtual_space_nonblocking$tbp$6 data_t
R 1230 5 58 data_module get_recv_buf$tbp$7 data_t
R 1231 5 59 data_module set_send_buf$tbp$8 data_t
R 1232 5 60 data_module exchange_virtual_space_blocking$tbp$9 data_t
R 1233 5 61 data_module debug_check_nan$tbp$10 data_t
R 1234 5 62 data_module set_communication$tbp$11 data_t
R 1235 5 63 data_module clean_data$tbp$12 data_t
R 1236 5 64 data_module point_to_data$tbp$13 data_t
R 1240 19 68 data_module data_t
R 1384 25 4 data_4d_module data_4d_t
R 1389 5 9 data_4d_module values data_4d_t
R 1390 5 10 data_4d_module values$sd data_4d_t
R 1391 5 11 data_4d_module values$p data_4d_t
R 1392 5 12 data_4d_module values$o data_4d_t
R 1394 5 14 data_4d_module nx data_4d_t
R 1395 5 15 data_4d_module ny data_4d_t
R 1396 5 16 data_4d_module nz data_4d_t
R 1397 5 17 data_4d_module nmats data_4d_t
R 1398 5 18 data_4d_module communication data_4d_t
R 1400 5 20 data_4d_module communication$p data_4d_t
R 1401 5 21 data_4d_module communication_parameters data_4d_t
R 1403 5 23 data_4d_module communication_parameters$p data_4d_t
R 1404 5 24 data_4d_module parallel_params data_4d_t
R 1406 5 26 data_4d_module parallel_params$p data_4d_t
R 1408 5 28 data_4d_module send_buf data_4d_t
R 1409 5 29 data_4d_module send_buf$sd data_4d_t
R 1410 5 30 data_4d_module send_buf$p data_4d_t
R 1411 5 31 data_4d_module send_buf$o data_4d_t
R 1414 5 34 data_4d_module recv_buf data_4d_t
R 1415 5 35 data_4d_module recv_buf$sd data_4d_t
R 1416 5 36 data_4d_module recv_buf$p data_4d_t
R 1417 5 37 data_4d_module recv_buf$o data_4d_t
R 1419 5 39 data_4d_module request data_4d_t
R 1433 5 53 data_4d_module .read$0 data_4d_t
R 1434 5 54 data_4d_module read_data$tbp$1 data_4d_t
R 1435 5 55 data_4d_module .write$2 data_4d_t
R 1436 5 56 data_4d_module write_data$tbp$3 data_4d_t
R 1437 5 57 data_4d_module debug_print$tbp$4 data_4d_t
R 1438 5 58 data_4d_module exchange_end$tbp$5 data_4d_t
R 1439 5 59 data_4d_module exchange_virtual_space_nonblocking$tbp$6 data_4d_t
R 1440 5 60 data_4d_module get_recv_buf$tbp$7 data_4d_t
R 1441 5 61 data_4d_module set_send_buf$tbp$8 data_4d_t
R 1442 5 62 data_4d_module exchange_virtual_space_blocking$tbp$9 data_4d_t
R 1443 5 63 data_4d_module debug_check_nan$tbp$10 data_4d_t
R 1444 5 64 data_4d_module set_communication$tbp$11 data_4d_t
R 1445 5 65 data_4d_module clean_data$tbp$12 data_4d_t
R 1446 5 66 data_4d_module point_to_data$tbp$13 data_4d_t
R 1711 25 8 quantity_module quantity_t
R 1713 5 10 quantity_module data quantity_t
R 1714 5 11 quantity_module data$sd quantity_t
R 1715 5 12 quantity_module data$p quantity_t
R 1716 5 13 quantity_module data$o quantity_t
R 1718 5 15 quantity_module data_4d quantity_t
R 1720 5 17 quantity_module data_4d$p quantity_t
R 1721 5 18 quantity_module boundary_params quantity_t
R 1723 5 20 quantity_module boundary_params$p quantity_t
R 1724 5 21 quantity_module parallel_params quantity_t
R 1726 5 23 quantity_module parallel_params$p quantity_t
R 1727 5 24 quantity_module d1 quantity_t
R 1728 5 25 quantity_module d2 quantity_t
R 1729 5 26 quantity_module d3 quantity_t
R 1730 5 27 quantity_module number_of_axises quantity_t
R 1755 5 52 quantity_module .read$2 quantity_t
R 1756 5 53 quantity_module read_quantity$tbp$3 quantity_t
R 1757 5 54 quantity_module read_quantity_abstract$tbp$4 quantity_t
R 1758 5 55 quantity_module .write$5 quantity_t
R 1759 5 56 quantity_module write_quantity$tbp$6 quantity_t
R 1760 5 57 quantity_module write_quantity_abstract$tbp$7 quantity_t
R 1761 5 58 quantity_module debug_print$tbp$8 quantity_t
R 1762 5 59 quantity_module init_quantity_init_val_4d$tbp$9 quantity_t
R 1763 5 60 quantity_module exchange_end$tbp$10 quantity_t
R 1764 5 61 quantity_module exchange_virtual_space_nonblocking$tbp$11 quantity_t
R 1765 5 62 quantity_module exchange_virtual_space_blocking$tbp$12 quantity_t
R 1766 5 63 quantity_module debug_check_nan$tbp$13 quantity_t
R 1767 5 64 quantity_module set_communication$tbp$14 quantity_t
R 1768 5 65 quantity_module clean_quantity$tbp$15 quantity_t
R 1769 5 66 quantity_module point_to_data$tbpg$16 quantity_t
R 1770 5 67 quantity_module point_to_data$tbpg$17 quantity_t
R 1771 5 68 quantity_module point_to_data$tbpg$18 quantity_t
R 1772 5 69 quantity_module point_to_data$tbpg$19 quantity_t
R 1773 5 70 quantity_module point_to_data$tbpg$20 quantity_t
R 1774 5 71 quantity_module ptr_coordinates_4d$tbp$21 quantity_t
R 1775 5 72 quantity_module ptr_coordinates_3d$tbp$22 quantity_t
R 1776 5 73 quantity_module ptr_coordinates_2d$tbp$23 quantity_t
R 1777 5 74 quantity_module ptr_coordinates_1d_first$tbp$24 quantity_t
R 1778 5 75 quantity_module ptr_coordinates_1d$tbp$25 quantity_t
R 1779 5 76 quantity_module init_quantity_no_init$tbp$26 quantity_t
R 1780 5 77 quantity_module init_quantity_init_val$tbp$27 quantity_t
R 1781 5 78 quantity_module init_quantity_no_bc$tbp$28 quantity_t
R 1782 5 79 quantity_module init_quantity_init_arr$tbp$29 quantity_t
S 1939 25 0 0 0 1089 1 624 15051 10004004 800210 A 0 0 0 0 B 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1956 0 0 0 624 0 0 0 0 vertex_boundary_condition_t
S 1940 25 0 0 0 1107 1 624 15079 10000004 800014 A 0 0 0 0 B 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1987 0 0 0 624 0 0 0 0 vertex_bc_wrapper_t
S 1941 14 0 0 0 0 1 624 15099 4090 400000 A 1000000 0 0 0 B 0 18 0 0 0 0 0 450 6 0 0 0 0 0 0 0 0 0 0 0 0 28 0 624 0 0 0 0 calculate_interface calculate_interface 
F 1941 6 1957 1958 1959 1960 1961 1962
S 1944 14 0 0 0 9 1 624 15129 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1089 0 0 0 0 0 0 0 0 calculate$tbp calculate$tbp 
S 1945 14 0 0 0 0 1 624 15143 4090 400000 A 1000000 0 0 0 B 0 20 0 0 0 0 0 456 5 0 0 0 0 0 0 0 0 0 0 0 0 41 0 624 0 0 0 0 calculate_face_interface calculate_face_interface 
F 1945 5 1973 1974 1975 1976 1977
S 1948 14 0 0 0 9 1 624 15183 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1089 0 0 0 0 0 0 0 0 calculate_face$tbp calculate_face$tbp 
S 1949 14 0 0 0 0 1 624 15202 4090 400000 A 1000000 0 0 0 B 0 22 0 0 0 0 0 461 5 0 0 0 0 0 0 0 0 0 0 0 0 53 0 624 0 0 0 0 calculate_corner_interface calculate_corner_interface 
F 1949 5 1978 1979 1980 1981 1982
S 1952 14 0 0 0 9 1 624 15246 0 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1089 0 0 0 0 0 0 0 0 calculate_corner$tbp calculate_corner$tbp 
S 1953 5 0 0 0 6 1954 624 15267 800002 2200 A 0 0 0 0 B 0 24 0 0 0 0 0 0 1089 0 0 1949 0 0 0 1952 0 0 1949 0 0 0 0 0 0 0 0 0 calculate_corner$tbp$0
S 1954 5 0 0 0 6 1955 624 15290 800002 2200 A 0 0 0 0 B 0 24 0 0 0 0 0 0 1089 0 0 1945 0 0 0 1948 0 0 1945 0 0 0 0 0 0 0 0 0 calculate_face$tbp$1
S 1955 5 0 0 0 6 1 624 15311 800002 2200 A 0 0 0 0 B 0 24 0 0 0 0 0 0 1089 0 0 1941 0 0 0 1944 0 0 1941 0 0 0 0 0 0 0 0 0 calculate$tbp$2
S 1956 8 5 0 0 1095 1 624 15327 40822004 1220 A 0 0 0 0 B 0 24 0 0 0 0 0 1089 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_boundary_condition_module$$$$vertex_boundary_condition_t$$$$td
S 1957 1 3 3 0 1089 1 1941 7241 2014 2200 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 1958 1 3 3 0 990 1 1941 15397 2014 2200 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 1959 7 3 3 0 1098 1 1941 15408 10801014 2014 A 0 0 0 0 B 0 28 0 0 0 0 1970 0 0 0 1972 0 0 0 0 0 0 0 0 1969 0 0 1971 0 0 0 0 0 coordinates
S 1960 1 3 1 0 10 1 1941 15420 2014 2000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 1961 1 3 1 0 6 1 1941 11590 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 1962 1 3 0 0 18 1 1941 15426 80002014 2000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 1969 8 1 0 0 1104 1 1941 15476 40822004 3020 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates$sd1
S 1970 6 1 0 0 7 1 1941 15492 40802011 3020 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates$p
S 1971 6 1 0 0 7 1 1941 15506 40802010 3020 A 0 0 0 0 B 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates$o
S 1972 22 1 0 0 9 1 1941 15520 40000000 3000 A 0 0 0 0 B 0 34 0 0 0 0 0 1959 0 0 0 0 1969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 coordinates$arrdsc
S 1973 1 3 3 0 1089 1 1945 7241 2014 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 1974 1 3 3 0 990 1 1945 15397 2014 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 1975 1 3 1 0 10 1 1945 15420 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 1976 1 3 1 0 6 1 1945 11590 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 1977 1 3 0 0 18 1 1945 15426 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 1978 1 3 3 0 1089 1 1949 7241 2014 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 this
S 1979 1 3 3 0 990 1 1949 15397 2014 2200 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 v_quantity
S 1980 1 3 1 0 10 1 1949 15420 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 angle
S 1981 1 3 1 0 6 1 1949 11590 2014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 edge_num
S 1982 1 3 0 0 18 1 1949 15426 80002014 2000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 is_offload
S 1983 5 6 0 0 1089 1986 624 12975 801004 214 A 0 0 0 0 B 0 68 0 0 0 0 1986 0 1107 0 0 0 0 0 0 0 0 0 0 1984 1 1983 0 624 0 0 0 0 bc
S 1984 8 1 0 0 1113 1 624 15539 40822004 1020 A 0 0 0 0 B 0 68 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bc$sd2
S 1985 5 1 0 0 1113 1 624 15546 40822004 1200 A 0 0 0 0 B 0 68 0 0 0 8 0 0 1107 0 0 0 0 0 0 0 0 0 0 0 1986 1985 0 624 0 0 0 0 bc$td
S 1986 5 0 0 0 7 1985 624 15552 40802001 1020 A 0 0 0 0 B 0 68 0 0 0 0 0 0 1107 0 0 0 0 0 0 0 0 0 0 0 1983 1986 0 624 0 0 0 0 bc$p
S 1987 8 5 0 0 1116 1 624 15557 40822004 1220 A 0 0 0 0 B 0 69 0 0 0 0 0 1107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 vertex_boundary_condition_module$$$$vertex_bc_wrapper_t$$$$td
A 16 2 0 0 0 6 631 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0
A 33 2 0 0 0 6 633 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0
A 35 2 0 0 0 6 638 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 57 2 0 0 0 7 639 0 0 0 57 0 0 0 0 0 0 0 0 0 0 0
A 58 2 0 0 0 7 640 0 0 0 58 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 643 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 3 0 64 665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 73 1 0 3 0 70 667 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 77 1 0 5 0 76 669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 131 1 0 0 0 82 724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 134 1 0 0 0 91 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 136 2 0 0 0 7 756 0 0 0 136 0 0 0 0 0 0 0 0 0 0 0
A 138 2 0 0 0 7 761 0 0 0 138 0 0 0 0 0 0 0 0 0 0 0
A 140 2 0 0 0 7 757 0 0 0 140 0 0 0 0 0 0 0 0 0 0 0
A 142 2 0 0 0 7 758 0 0 0 142 0 0 0 0 0 0 0 0 0 0 0
A 146 2 0 0 0 7 759 0 0 0 146 0 0 0 0 0 0 0 0 0 0 0
A 148 2 0 0 0 7 760 0 0 0 148 0 0 0 0 0 0 0 0 0 0 0
A 166 2 0 0 0 7 762 0 0 0 166 0 0 0 0 0 0 0 0 0 0 0
A 873 1 0 9 0 1104 1969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 874 10 0 0 0 7 873 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 140
A 875 10 0 0 874 7 873 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 142
A 876 4 0 0 0 7 875 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 877 4 0 0 0 7 874 0 876 0 0 0 0 1 0 0 0 0 0 0 0 0
A 878 10 0 0 875 7 873 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 146
A 879 10 0 0 878 7 873 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 148
A 880 10 0 0 879 7 873 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 138
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
T 912 199 0 0 0 0
A 926 7 244 0 1 2 1
A 925 7 0 136 1 10 1
A 932 7 246 0 1 2 1
A 931 7 0 136 1 10 1
A 938 7 248 0 1 2 1
A 937 7 0 136 1 10 1
A 944 7 250 0 1 2 1
A 943 7 0 136 1 10 1
A 950 7 252 0 1 2 1
A 949 7 0 136 1 10 1
A 956 7 254 0 1 2 1
A 955 7 0 136 1 10 0
T 1176 499 0 0 0 0
A 1200 7 532 0 1 2 1
A 1199 7 0 136 1 10 1
A 1206 7 534 0 1 2 1
A 1205 7 0 136 1 10 0
T 1384 629 0 0 0 0
A 1410 7 662 0 1 2 1
A 1409 7 0 136 1 10 1
A 1416 7 664 0 1 2 1
A 1415 7 0 136 1 10 0
Z
