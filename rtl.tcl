open_project rtl-proj/rtl.xpr
upgrade_ip [get_ips]
reset_runs impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
exit
