// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Mem2Stream_Batch12_HH_
#define _Mem2Stream_Batch12_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Mem2Stream_1.h"
#include "Mem2Stream.h"
#include "BlackBoxJam_mul_5bkb.h"

namespace ap_rtl {

struct Mem2Stream_Batch12 : public sc_module {
    // Port declarations 64
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_in_V_AWVALID;
    sc_in< sc_logic > m_axi_in_V_AWREADY;
    sc_out< sc_lv<64> > m_axi_in_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_in_V_AWID;
    sc_out< sc_lv<32> > m_axi_in_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_in_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_in_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_in_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_in_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_in_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_in_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_in_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_in_V_AWUSER;
    sc_out< sc_logic > m_axi_in_V_WVALID;
    sc_in< sc_logic > m_axi_in_V_WREADY;
    sc_out< sc_lv<64> > m_axi_in_V_WDATA;
    sc_out< sc_lv<8> > m_axi_in_V_WSTRB;
    sc_out< sc_logic > m_axi_in_V_WLAST;
    sc_out< sc_lv<1> > m_axi_in_V_WID;
    sc_out< sc_lv<1> > m_axi_in_V_WUSER;
    sc_out< sc_logic > m_axi_in_V_ARVALID;
    sc_in< sc_logic > m_axi_in_V_ARREADY;
    sc_out< sc_lv<64> > m_axi_in_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_in_V_ARID;
    sc_out< sc_lv<32> > m_axi_in_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_in_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_in_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_in_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_in_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_in_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_in_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_in_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_in_V_ARUSER;
    sc_in< sc_logic > m_axi_in_V_RVALID;
    sc_out< sc_logic > m_axi_in_V_RREADY;
    sc_in< sc_lv<64> > m_axi_in_V_RDATA;
    sc_in< sc_logic > m_axi_in_V_RLAST;
    sc_in< sc_lv<1> > m_axi_in_V_RID;
    sc_in< sc_lv<1> > m_axi_in_V_RUSER;
    sc_in< sc_lv<2> > m_axi_in_V_RRESP;
    sc_in< sc_logic > m_axi_in_V_BVALID;
    sc_out< sc_logic > m_axi_in_V_BREADY;
    sc_in< sc_lv<2> > m_axi_in_V_BRESP;
    sc_in< sc_lv<1> > m_axi_in_V_BID;
    sc_in< sc_lv<1> > m_axi_in_V_BUSER;
    sc_in< sc_lv<61> > in_V1;
    sc_out< sc_lv<64> > memInStrm_V_V_din;
    sc_in< sc_logic > memInStrm_V_V_full_n;
    sc_out< sc_logic > memInStrm_V_V_write;
    sc_in< sc_lv<32> > numReps;
    sc_out< sc_lv<32> > numReps_channel_din;
    sc_in< sc_logic > numReps_channel_full_n;
    sc_out< sc_logic > numReps_channel_write;
    sc_in< sc_lv<61> > out_V3;
    sc_out< sc_lv<61> > out_V3_out_din;
    sc_in< sc_logic > out_V3_out_full_n;
    sc_out< sc_logic > out_V3_out_write;
    sc_signal< sc_logic > ap_var_for_const3;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<1> > ap_var_for_const2;
    sc_signal< sc_lv<2> > ap_var_for_const1;


    // Module declarations
    Mem2Stream_Batch12(sc_module_name name);
    SC_HAS_PROCESS(Mem2Stream_Batch12);

    ~Mem2Stream_Batch12();

    sc_trace_file* mVcdFile;

    Mem2Stream_1* grp_Mem2Stream_1_fu_92;
    Mem2Stream* grp_Mem2Stream_fu_102;
    BlackBoxJam_mul_5bkb<1,5,5,32,32>* BlackBoxJam_mul_5bkb_U9;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_logic > numReps_channel_blk_n;
    sc_signal< sc_logic > out_V3_out_blk_n;
    sc_signal< bool > ap_condition_119;
    sc_signal< sc_lv<32> > rep_load_reg_186;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_4_i_i_i_i_fu_134_p2;
    sc_signal< sc_lv<1> > tmp_4_i_i_i_i_reg_196;
    sc_signal< sc_lv<1> > tmp_i_i_i_i_fu_120_p2;
    sc_signal< sc_lv<32> > grp_fu_140_p2;
    sc_signal< sc_lv<32> > tmp_5_i_i_i_i_reg_200;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_ap_start;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_ap_done;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_ap_idle;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_ap_ready;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWADDR;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWID;
    sc_signal< sc_lv<32> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWLEN;
    sc_signal< sc_lv<3> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWSIZE;
    sc_signal< sc_lv<2> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWBURST;
    sc_signal< sc_lv<2> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWLOCK;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWCACHE;
    sc_signal< sc_lv<3> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWPROT;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWQOS;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWREGION;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_AWUSER;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_WVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_1_fu_92_m_axi_in_V_WDATA;
    sc_signal< sc_lv<8> > grp_Mem2Stream_1_fu_92_m_axi_in_V_WSTRB;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_WLAST;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_WID;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_WUSER;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARADDR;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARID;
    sc_signal< sc_lv<32> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARLEN;
    sc_signal< sc_lv<3> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARSIZE;
    sc_signal< sc_lv<2> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARBURST;
    sc_signal< sc_lv<2> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARLOCK;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARCACHE;
    sc_signal< sc_lv<3> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARPROT;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARQOS;
    sc_signal< sc_lv<4> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARREGION;
    sc_signal< sc_lv<1> > grp_Mem2Stream_1_fu_92_m_axi_in_V_ARUSER;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_RREADY;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_m_axi_in_V_BREADY;
    sc_signal< sc_lv<64> > grp_Mem2Stream_1_fu_92_out_V_V_din;
    sc_signal< sc_logic > grp_Mem2Stream_1_fu_92_out_V_V_write;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_ap_start;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_ap_done;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_ap_idle;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_ap_ready;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_AWVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_fu_102_m_axi_in_V_AWADDR;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_AWID;
    sc_signal< sc_lv<32> > grp_Mem2Stream_fu_102_m_axi_in_V_AWLEN;
    sc_signal< sc_lv<3> > grp_Mem2Stream_fu_102_m_axi_in_V_AWSIZE;
    sc_signal< sc_lv<2> > grp_Mem2Stream_fu_102_m_axi_in_V_AWBURST;
    sc_signal< sc_lv<2> > grp_Mem2Stream_fu_102_m_axi_in_V_AWLOCK;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_AWCACHE;
    sc_signal< sc_lv<3> > grp_Mem2Stream_fu_102_m_axi_in_V_AWPROT;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_AWQOS;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_AWREGION;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_AWUSER;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_WVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_fu_102_m_axi_in_V_WDATA;
    sc_signal< sc_lv<8> > grp_Mem2Stream_fu_102_m_axi_in_V_WSTRB;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_WLAST;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_WID;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_WUSER;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_ARVALID;
    sc_signal< sc_lv<64> > grp_Mem2Stream_fu_102_m_axi_in_V_ARADDR;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_ARID;
    sc_signal< sc_lv<32> > grp_Mem2Stream_fu_102_m_axi_in_V_ARLEN;
    sc_signal< sc_lv<3> > grp_Mem2Stream_fu_102_m_axi_in_V_ARSIZE;
    sc_signal< sc_lv<2> > grp_Mem2Stream_fu_102_m_axi_in_V_ARBURST;
    sc_signal< sc_lv<2> > grp_Mem2Stream_fu_102_m_axi_in_V_ARLOCK;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_ARCACHE;
    sc_signal< sc_lv<3> > grp_Mem2Stream_fu_102_m_axi_in_V_ARPROT;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_ARQOS;
    sc_signal< sc_lv<4> > grp_Mem2Stream_fu_102_m_axi_in_V_ARREGION;
    sc_signal< sc_lv<1> > grp_Mem2Stream_fu_102_m_axi_in_V_ARUSER;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_RREADY;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_m_axi_in_V_BREADY;
    sc_signal< sc_lv<64> > grp_Mem2Stream_fu_102_out_V_V_din;
    sc_signal< sc_logic > grp_Mem2Stream_fu_102_out_V_V_write;
    sc_signal< sc_logic > ap_reg_grp_Mem2Stream_1_fu_92_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_reg_grp_Mem2Stream_fu_102_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > rep_fu_54;
    sc_signal< sc_lv<32> > rep_4_fu_146_p2;
    sc_signal< sc_lv<32> > rep_3_fu_156_p2;
    sc_signal< sc_lv<32> > tmp_i_i_i_i_fu_120_p0;
    sc_signal< sc_lv<32> > repsLeft_fu_125_p1;
    sc_signal< sc_lv<32> > repsLeft_fu_125_p2;
    sc_signal< sc_lv<4> > tmp_fu_130_p1;
    sc_signal< sc_lv<5> > grp_fu_140_p0;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_10;
    // Thread declarations
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_condition_119();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_Mem2Stream_1_fu_92_ap_start();
    void thread_grp_Mem2Stream_fu_102_ap_start();
    void thread_grp_fu_140_p0();
    void thread_m_axi_in_V_ARADDR();
    void thread_m_axi_in_V_ARBURST();
    void thread_m_axi_in_V_ARCACHE();
    void thread_m_axi_in_V_ARID();
    void thread_m_axi_in_V_ARLEN();
    void thread_m_axi_in_V_ARLOCK();
    void thread_m_axi_in_V_ARPROT();
    void thread_m_axi_in_V_ARQOS();
    void thread_m_axi_in_V_ARREGION();
    void thread_m_axi_in_V_ARSIZE();
    void thread_m_axi_in_V_ARUSER();
    void thread_m_axi_in_V_ARVALID();
    void thread_m_axi_in_V_AWADDR();
    void thread_m_axi_in_V_AWBURST();
    void thread_m_axi_in_V_AWCACHE();
    void thread_m_axi_in_V_AWID();
    void thread_m_axi_in_V_AWLEN();
    void thread_m_axi_in_V_AWLOCK();
    void thread_m_axi_in_V_AWPROT();
    void thread_m_axi_in_V_AWQOS();
    void thread_m_axi_in_V_AWREGION();
    void thread_m_axi_in_V_AWSIZE();
    void thread_m_axi_in_V_AWUSER();
    void thread_m_axi_in_V_AWVALID();
    void thread_m_axi_in_V_BREADY();
    void thread_m_axi_in_V_RREADY();
    void thread_m_axi_in_V_WDATA();
    void thread_m_axi_in_V_WID();
    void thread_m_axi_in_V_WLAST();
    void thread_m_axi_in_V_WSTRB();
    void thread_m_axi_in_V_WUSER();
    void thread_m_axi_in_V_WVALID();
    void thread_memInStrm_V_V_din();
    void thread_memInStrm_V_V_write();
    void thread_numReps_channel_blk_n();
    void thread_numReps_channel_din();
    void thread_numReps_channel_write();
    void thread_out_V3_out_blk_n();
    void thread_out_V3_out_din();
    void thread_out_V3_out_write();
    void thread_rep_3_fu_156_p2();
    void thread_rep_4_fu_146_p2();
    void thread_repsLeft_fu_125_p1();
    void thread_repsLeft_fu_125_p2();
    void thread_tmp_4_i_i_i_i_fu_134_p2();
    void thread_tmp_fu_130_p1();
    void thread_tmp_i_i_i_i_fu_120_p0();
    void thread_tmp_i_i_i_i_fu_120_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
