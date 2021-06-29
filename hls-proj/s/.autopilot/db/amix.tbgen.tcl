set moduleName amix
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {amix}
set C_modelType { float 32 }
set C_modelArgList {
	{ sample_in float 32 regular {axi_slave 0}  }
	{ gain_lp float 32 regular {axi_slave 0}  }
	{ gain_bp float 32 regular {axi_slave 0}  }
	{ gain_hp float 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sample_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sample_in","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "gain_lp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_lp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "gain_bp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_bp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "gain_hp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_hp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"amix","role":"start","value":"0","valid_bit":"0"},{"name":"amix","role":"continue","value":"0","valid_bit":"4"},{"name":"amix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_in","role":"data","value":"24"},{"name":"gain_lp","role":"data","value":"32"},{"name":"gain_bp","role":"data","value":"40"},{"name":"gain_hp","role":"data","value":"48"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"amix","role":"start","value":"0","valid_bit":"0"},{"name":"amix","role":"done","value":"0","valid_bit":"1"},{"name":"amix","role":"idle","value":"0","valid_bit":"2"},{"name":"amix","role":"ready","value":"0","valid_bit":"3"},{"name":"amix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "amix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "229", "EstimateLatencyMax" : "229",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sample_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_lp", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_bp", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_hp", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_reg", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "num_lp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_bp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_hp", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_lp_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_bp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_hp_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	amix {
		sample_in {Type I LastRead 0 FirstWrite -1}
		gain_lp {Type I LastRead 0 FirstWrite -1}
		gain_bp {Type I LastRead 0 FirstWrite -1}
		gain_hp {Type I LastRead 0 FirstWrite -1}
		shift_reg {Type IO LastRead -1 FirstWrite -1}
		num_lp {Type I LastRead -1 FirstWrite -1}
		num_bp {Type I LastRead -1 FirstWrite -1}
		num_hp {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "229", "Max" : "229"}
	, {"Name" : "Interval", "Min" : "230", "Max" : "230"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName amix
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {amix}
set C_modelType { float 32 }
set C_modelArgList {
	{ sample_in float 32 regular {axi_slave 0}  }
	{ gain_lp float 32 regular {axi_slave 0}  }
	{ gain_bp float 32 regular {axi_slave 0}  }
	{ gain_hp float 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sample_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sample_in","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "gain_lp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_lp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "gain_bp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_bp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "gain_hp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "gain_hp","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"amix","role":"start","value":"0","valid_bit":"0"},{"name":"amix","role":"continue","value":"0","valid_bit":"4"},{"name":"amix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sample_in","role":"data","value":"24"},{"name":"gain_lp","role":"data","value":"32"},{"name":"gain_bp","role":"data","value":"40"},{"name":"gain_hp","role":"data","value":"48"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"amix","role":"start","value":"0","valid_bit":"0"},{"name":"amix","role":"done","value":"0","valid_bit":"1"},{"name":"amix","role":"idle","value":"0","valid_bit":"2"},{"name":"amix","role":"ready","value":"0","valid_bit":"3"},{"name":"amix","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "amix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "228", "EstimateLatencyMax" : "228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sample_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_lp", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_bp", "Type" : "None", "Direction" : "I"},
			{"Name" : "gain_hp", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_reg_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "num_lp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_bp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_hp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shift_reg_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "shift_reg_49", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_lp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_bp_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.num_hp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	amix {
		sample_in {Type I LastRead 0 FirstWrite -1}
		gain_lp {Type I LastRead 0 FirstWrite -1}
		gain_bp {Type I LastRead 0 FirstWrite -1}
		gain_hp {Type I LastRead 0 FirstWrite -1}
		shift_reg_0 {Type IO LastRead -1 FirstWrite -1}
		num_lp {Type I LastRead -1 FirstWrite -1}
		num_bp {Type I LastRead -1 FirstWrite -1}
		num_hp {Type I LastRead -1 FirstWrite -1}
		shift_reg_1 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_2 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_3 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_4 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_5 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_6 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_7 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_8 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_9 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_10 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_11 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_12 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_13 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_14 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_15 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_16 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_17 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_18 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_19 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_20 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_21 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_22 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_23 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_24 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_25 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_26 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_27 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_28 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_29 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_30 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_31 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_32 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_33 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_34 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_35 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_36 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_37 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_38 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_39 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_40 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_41 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_42 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_43 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_44 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_45 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_46 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_47 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_48 {Type IO LastRead -1 FirstWrite -1}
		shift_reg_49 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "228", "Max" : "228"}
	, {"Name" : "Interval", "Min" : "229", "Max" : "229"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
