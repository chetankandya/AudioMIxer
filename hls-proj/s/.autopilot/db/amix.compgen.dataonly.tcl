# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
sample_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
gain_lp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
gain_bp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
gain_hp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
}
dict set axilite_register_dict control $port_control


