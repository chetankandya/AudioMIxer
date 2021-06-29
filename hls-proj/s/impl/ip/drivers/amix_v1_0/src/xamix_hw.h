// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of sample_in
//        bit 31~0 - sample_in[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of gain_lp
//        bit 31~0 - gain_lp[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of gain_bp
//        bit 31~0 - gain_bp[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of gain_hp
//        bit 31~0 - gain_hp[31:0] (Read/Write)
// 0x34 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAMIX_CONTROL_ADDR_AP_CTRL        0x00
#define XAMIX_CONTROL_ADDR_GIE            0x04
#define XAMIX_CONTROL_ADDR_IER            0x08
#define XAMIX_CONTROL_ADDR_ISR            0x0c
#define XAMIX_CONTROL_ADDR_AP_RETURN      0x10
#define XAMIX_CONTROL_BITS_AP_RETURN      32
#define XAMIX_CONTROL_ADDR_SAMPLE_IN_DATA 0x18
#define XAMIX_CONTROL_BITS_SAMPLE_IN_DATA 32
#define XAMIX_CONTROL_ADDR_GAIN_LP_DATA   0x20
#define XAMIX_CONTROL_BITS_GAIN_LP_DATA   32
#define XAMIX_CONTROL_ADDR_GAIN_BP_DATA   0x28
#define XAMIX_CONTROL_BITS_GAIN_BP_DATA   32
#define XAMIX_CONTROL_ADDR_GAIN_HP_DATA   0x30
#define XAMIX_CONTROL_BITS_GAIN_HP_DATA   32

