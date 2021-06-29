############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls-proj
set_top amix
add_files amix.cpp
add_files -tb main.cpp
open_solution "s" -flow_target vitis
set_part {xc7z020-clg400-1}
create_clock -period 10ns -name default
config_interface -m_axi_addr64=0 -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512 -m_axi_offset slave
config_rtl -register_reset_num 3
config_export -format ip_catalog
source "./hls-proj/s/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
