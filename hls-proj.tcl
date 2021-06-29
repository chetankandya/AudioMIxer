open_project -reset hls-proj
add_files amix.cpp
set_top amix
open_solution s -flow_target vitis
set_part xc7z020-1clg400
config_interface -m_axi_addr64=0

exit
