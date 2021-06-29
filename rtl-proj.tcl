create_project -part xc7z020-1clg400 rtl.xpr rtl-proj
set_property ip_repo_paths hls-proj [current_project]
update_ip_catalog
create_bd_design overlay
open_bd_design overlay
create_bd_cell -vlnv xilinx.com:ip:processing_system7 ps
create_bd_cell -vlnv xilinx.com:hls:amix amix
save_bd_design
set_property top overlay [current_fileset]
exit
