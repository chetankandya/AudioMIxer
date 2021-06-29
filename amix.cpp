#define BUFF_SIZE 51
float amix(float sample_in, float gain_lp, float gain_bp, float gain_hp) {
	
	#pragma HLS INTERFACE s_axilite port=sample_in      
	#pragma HLS INTERFACE s_axilite port=return     
	#pragma HLS INTERFACE s_axilite port=gain_lp    
	#pragma HLS INTERFACE s_axilite port=gain_bp    
	#pragma HLS INTERFACE s_axilite port=gain_hp 
	#pragma HLS INTERFACE ap_ctrl_hs port=return
	
	const float num_lp[BUFF_SIZE]= {-9.70552162e-04, -8.21476535e-04, -5.16572505e-04,  3.47401155e-05,
                  9.00778345e-04,  2.05356335e-03,  3.30894228e-03,  4.31029642e-03,
                  4.57599493e-03,  3.61329865e-03,  1.08015800e-03, -3.04274883e-03,
                 -8.31837839e-03, -1.38053755e-02, -1.81282636e-02, -1.96723622e-02,
                 -1.68788810e-02, -8.58689305e-03,  5.64979014e-03,  2.53457249e-02,
                  4.90268911e-02,  7.43632230e-02,  9.84804897e-02,  1.18401459e-01,
                  1.31535463e-01,  1.36121381e-01,  1.31535463e-01,  1.18401459e-01,
                  9.84804897e-02,  7.43632230e-02,  4.90268911e-02,  2.53457249e-02,
                  5.64979014e-03, -8.58689305e-03, -1.68788810e-02, -1.96723622e-02,
                 -1.81282636e-02, -1.38053755e-02, -8.31837839e-03, -3.04274883e-03,
                  1.08015800e-03,  3.61329865e-03,  4.57599493e-03,  4.31029642e-03,
                  3.30894228e-03,  2.05356335e-03,  9.00778345e-04,  3.47401155e-05,
                 -5.16572505e-04, -8.21476535e-04, -9.70552162e-04};
    const float num_bp[BUFF_SIZE]= { 8.10099084e-05,  1.21865924e-03,  1.79781209e-03, -1.50801547e-04,
                 -2.97797027e-03, -2.64516641e-03, -1.06860068e-04, -2.17273903e-03,
                 -8.94414879e-03, -8.57072562e-03,  3.83507690e-03,  1.22573301e-02,
                  4.29832552e-03, -1.04616877e-03,  1.88175680e-02,  4.13602264e-02,
                  2.35383158e-02, -2.02666655e-02, -2.54751445e-02,  1.03751813e-02,
                 -5.75463955e-03, -1.16042247e-01, -1.91950458e-01, -7.33847653e-02,
                  1.82822792e-01,  3.18355772e-01,  1.82822792e-01, -7.33847653e-02,
                 -1.91950458e-01, -1.16042247e-01, -5.75463955e-03,  1.03751813e-02,
                 -2.54751445e-02, -2.02666655e-02,  2.35383158e-02,  4.13602264e-02,
                  1.88175680e-02, -1.04616877e-03,  4.29832552e-03,  1.22573301e-02,
                  3.83507690e-03, -8.57072562e-03, -8.94414879e-03, -2.17273903e-03,
                 -1.06860068e-04, -2.64516641e-03, -2.97797027e-03, -1.50801547e-04,
                  1.79781209e-03,  1.21865924e-03,  8.10099084e-05};
    const float num_hp[BUFF_SIZE]= { 8.90425301e-04, -3.94661020e-04, -1.27806258e-03,  1.15801652e-04,
                  2.07189418e-03,  5.85918322e-04, -3.20483159e-03, -2.14427598e-03,
                  4.35078134e-03,  4.94138248e-03, -4.91016213e-03, -9.19329504e-03,
                  4.03318125e-03,  1.48607133e-02, -6.46114576e-04, -2.16086914e-02,
                 -6.60993817e-03,  2.88289998e-02,  1.97816404e-02, -3.57246971e-02,
                 -4.33194229e-02,  4.14419200e-02,  9.30969220e-02, -4.52223860e-02,
                 -3.14178949e-01,  5.47181269e-01, -3.14178949e-01, -4.52223860e-02,
                  9.30969220e-02,  4.14419200e-02, -4.33194229e-02, -3.57246971e-02,
                  1.97816404e-02,  2.88289998e-02, -6.60993817e-03, -2.16086914e-02,
                 -6.46114576e-04,  1.48607133e-02,  4.03318125e-03, -9.19329504e-03,
                 -4.91016213e-03,  4.94138248e-03,  4.35078134e-03, -2.14427598e-03,
                 -3.20483159e-03,  5.85918322e-04,  2.07189418e-03,  1.15801652e-04,
                 -1.27806258e-03, -3.94661020e-04,  8.90425301e-04};
				 
	float sample_lp = 0, sample_bp = 0, sample_hp = 0;
    static float shift_reg[BUFF_SIZE] = {0}; // declare and define shift_reg
    #pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=0 // provide all array values simultaneously by partitioning the array such that each element has its own ports for read/write

	for (int i = BUFF_SIZE-1; i >= 0; i--)
	{
	      #pragma HLS PIPELINE II=1 	// pipline for loop and unroll
		
		// Shift shift_reg
		if (i == 0)
			shift_reg[0] = sample_in; // Add new sample to shift_reg
		else
			shift_reg[i] = shift_reg[i-1];
		
		// Compute filter value 
		sample_lp += (shift_reg[i] * num_lp[i]);
        sample_bp += (shift_reg[i] * num_bp[i]);
        sample_hp += (shift_reg[i] * num_hp[i]);			
	}
 
	// Apply gain
	sample_lp *= gain_lp;
	sample_bp *= gain_bp;
	sample_hp *= gain_hp;
	
	return (sample_lp + sample_bp + sample_hp);
}
