# 1 "amix.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 375 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 158 "/opt/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "amix.cpp" 2

__attribute__((sdx_kernel("amix", 0))) float amix(float sample_in, float gain_lp, float gain_bp, float gain_hp) {
#pragma HLS TOP name=amix
# 2 "amix.cpp"


#pragma HLS INTERFACE s_axilite port=sample_in
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=gain_lp
#pragma HLS INTERFACE s_axilite port=gain_bp
#pragma HLS INTERFACE s_axilite port=gain_hp
#pragma HLS INTERFACE ap_ctrl_hs port=return

 const float num_lp[51]= {-9.70552162e-04, -8.21476535e-04, -5.16572505e-04, 3.47401155e-05,
                  9.00778345e-04, 2.05356335e-03, 3.30894228e-03, 4.31029642e-03,
                  4.57599493e-03, 3.61329865e-03, 1.08015800e-03, -3.04274883e-03,
                 -8.31837839e-03, -1.38053755e-02, -1.81282636e-02, -1.96723622e-02,
                 -1.68788810e-02, -8.58689305e-03, 5.64979014e-03, 2.53457249e-02,
                  4.90268911e-02, 7.43632230e-02, 9.84804897e-02, 1.18401459e-01,
                  1.31535463e-01, 1.36121381e-01, 1.31535463e-01, 1.18401459e-01,
                  9.84804897e-02, 7.43632230e-02, 4.90268911e-02, 2.53457249e-02,
                  5.64979014e-03, -8.58689305e-03, -1.68788810e-02, -1.96723622e-02,
                 -1.81282636e-02, -1.38053755e-02, -8.31837839e-03, -3.04274883e-03,
                  1.08015800e-03, 3.61329865e-03, 4.57599493e-03, 4.31029642e-03,
                  3.30894228e-03, 2.05356335e-03, 9.00778345e-04, 3.47401155e-05,
                 -5.16572505e-04, -8.21476535e-04, -9.70552162e-04};
    const float num_bp[51]= { 8.10099084e-05, 1.21865924e-03, 1.79781209e-03, -1.50801547e-04,
                 -2.97797027e-03, -2.64516641e-03, -1.06860068e-04, -2.17273903e-03,
                 -8.94414879e-03, -8.57072562e-03, 3.83507690e-03, 1.22573301e-02,
                  4.29832552e-03, -1.04616877e-03, 1.88175680e-02, 4.13602264e-02,
                  2.35383158e-02, -2.02666655e-02, -2.54751445e-02, 1.03751813e-02,
                 -5.75463955e-03, -1.16042247e-01, -1.91950458e-01, -7.33847653e-02,
                  1.82822792e-01, 3.18355772e-01, 1.82822792e-01, -7.33847653e-02,
                 -1.91950458e-01, -1.16042247e-01, -5.75463955e-03, 1.03751813e-02,
                 -2.54751445e-02, -2.02666655e-02, 2.35383158e-02, 4.13602264e-02,
                  1.88175680e-02, -1.04616877e-03, 4.29832552e-03, 1.22573301e-02,
                  3.83507690e-03, -8.57072562e-03, -8.94414879e-03, -2.17273903e-03,
                 -1.06860068e-04, -2.64516641e-03, -2.97797027e-03, -1.50801547e-04,
                  1.79781209e-03, 1.21865924e-03, 8.10099084e-05};
    const float num_hp[51]= { 8.90425301e-04, -3.94661020e-04, -1.27806258e-03, 1.15801652e-04,
                  2.07189418e-03, 5.85918322e-04, -3.20483159e-03, -2.14427598e-03,
                  4.35078134e-03, 4.94138248e-03, -4.91016213e-03, -9.19329504e-03,
                  4.03318125e-03, 1.48607133e-02, -6.46114576e-04, -2.16086914e-02,
                 -6.60993817e-03, 2.88289998e-02, 1.97816404e-02, -3.57246971e-02,
                 -4.33194229e-02, 4.14419200e-02, 9.30969220e-02, -4.52223860e-02,
                 -3.14178949e-01, 5.47181269e-01, -3.14178949e-01, -4.52223860e-02,
                  9.30969220e-02, 4.14419200e-02, -4.33194229e-02, -3.57246971e-02,
                  1.97816404e-02, 2.88289998e-02, -6.60993817e-03, -2.16086914e-02,
                 -6.46114576e-04, 1.48607133e-02, 4.03318125e-03, -9.19329504e-03,
                 -4.91016213e-03, 4.94138248e-03, 4.35078134e-03, -2.14427598e-03,
                 -3.20483159e-03, 5.85918322e-04, 2.07189418e-03, 1.15801652e-04,
                 -1.27806258e-03, -3.94661020e-04, 8.90425301e-04};

 float sample_lp = 0, sample_bp = 0, sample_hp = 0;
    static float shift_reg[51] = {0};
#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=0



 VITIS_LOOP_57_1: for (int i = 51 -1; i >= 0; i--)
 {
#pragma HLS PIPELINE II=1



 if (i == 0)
   shift_reg[0] = sample_in;
  else
   shift_reg[i] = shift_reg[i-1];


  sample_lp += (shift_reg[i] * num_lp[i]);
        sample_bp += (shift_reg[i] * num_bp[i]);
        sample_hp += (shift_reg[i] * num_hp[i]);
 }


 sample_lp *= gain_lp;
 sample_bp *= gain_bp;
 sample_hp *= gain_hp;

 return (sample_lp + sample_bp + sample_hp);
}
