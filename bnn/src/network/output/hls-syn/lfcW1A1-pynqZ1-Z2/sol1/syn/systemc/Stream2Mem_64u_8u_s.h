// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Stream2Mem_64u_8u_s_HH_
#define _Stream2Mem_64u_8u_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Stream2Mem_64u_8u_s : public sc_module {
    // Port declarations 60
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_logic > m_axi_out_V_AWVALID;
    sc_in< sc_logic > m_axi_out_V_AWREADY;
    sc_out< sc_lv<64> > m_axi_out_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_out_V_AWID;
    sc_out< sc_lv<32> > m_axi_out_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_out_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_out_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_out_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_out_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_out_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_out_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_out_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_out_V_AWUSER;
    sc_out< sc_logic > m_axi_out_V_WVALID;
    sc_in< sc_logic > m_axi_out_V_WREADY;
    sc_out< sc_lv<64> > m_axi_out_V_WDATA;
    sc_out< sc_lv<8> > m_axi_out_V_WSTRB;
    sc_out< sc_logic > m_axi_out_V_WLAST;
    sc_out< sc_lv<1> > m_axi_out_V_WID;
    sc_out< sc_lv<1> > m_axi_out_V_WUSER;
    sc_out< sc_logic > m_axi_out_V_ARVALID;
    sc_in< sc_logic > m_axi_out_V_ARREADY;
    sc_out< sc_lv<64> > m_axi_out_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_out_V_ARID;
    sc_out< sc_lv<32> > m_axi_out_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_out_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_out_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_out_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_out_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_out_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_out_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_out_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_out_V_ARUSER;
    sc_in< sc_logic > m_axi_out_V_RVALID;
    sc_out< sc_logic > m_axi_out_V_RREADY;
    sc_in< sc_lv<64> > m_axi_out_V_RDATA;
    sc_in< sc_logic > m_axi_out_V_RLAST;
    sc_in< sc_lv<1> > m_axi_out_V_RID;
    sc_in< sc_lv<1> > m_axi_out_V_RUSER;
    sc_in< sc_lv<2> > m_axi_out_V_RRESP;
    sc_in< sc_logic > m_axi_out_V_BVALID;
    sc_out< sc_logic > m_axi_out_V_BREADY;
    sc_in< sc_lv<2> > m_axi_out_V_BRESP;
    sc_in< sc_lv<1> > m_axi_out_V_BID;
    sc_in< sc_lv<1> > m_axi_out_V_BUSER;
    sc_in< sc_lv<61> > out_V3;
    sc_in< sc_lv<32> > tmp_3;
    sc_out< sc_logic > in_V_V_blk_n;
    sc_out< sc_logic > out_V_blk_n_AW;
    sc_out< sc_logic > out_V_blk_n_W;
    sc_out< sc_logic > out_V_blk_n_B;


    // Module declarations
    Stream2Mem_64u_8u_s(sc_module_name name);
    SC_HAS_PROCESS(Stream2Mem_64u_8u_s);

    ~Stream2Mem_64u_8u_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_out_V_AWREADY;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_out_V_WREADY;
    sc_signal< sc_lv<62> > sum_fu_91_p2;
    sc_signal< sc_lv<62> > sum_reg_107;
    sc_signal< sc_lv<64> > tmp_V_reg_117;
    sc_signal< sc_lv<64> > sum_cast_fu_97_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_out_V_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_out_V_WREADY;
    sc_signal< sc_lv<62> > out_V3_cast_fu_87_p1;
    sc_signal< sc_lv<62> > tmp_3_cast_cast_fu_83_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_pipeline_idle_pp0;
    sc_signal< bool > ap_condition_210;
    sc_signal< bool > ap_condition_122;
    sc_signal< bool > ap_condition_216;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_condition_122();
    void thread_ap_condition_210();
    void thread_ap_condition_216();
    void thread_ap_done();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_pipeline_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_out_V_AWREADY();
    void thread_ap_sig_ioackin_m_axi_out_V_WREADY();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_m_axi_out_V_ARADDR();
    void thread_m_axi_out_V_ARBURST();
    void thread_m_axi_out_V_ARCACHE();
    void thread_m_axi_out_V_ARID();
    void thread_m_axi_out_V_ARLEN();
    void thread_m_axi_out_V_ARLOCK();
    void thread_m_axi_out_V_ARPROT();
    void thread_m_axi_out_V_ARQOS();
    void thread_m_axi_out_V_ARREGION();
    void thread_m_axi_out_V_ARSIZE();
    void thread_m_axi_out_V_ARUSER();
    void thread_m_axi_out_V_ARVALID();
    void thread_m_axi_out_V_AWADDR();
    void thread_m_axi_out_V_AWBURST();
    void thread_m_axi_out_V_AWCACHE();
    void thread_m_axi_out_V_AWID();
    void thread_m_axi_out_V_AWLEN();
    void thread_m_axi_out_V_AWLOCK();
    void thread_m_axi_out_V_AWPROT();
    void thread_m_axi_out_V_AWQOS();
    void thread_m_axi_out_V_AWREGION();
    void thread_m_axi_out_V_AWSIZE();
    void thread_m_axi_out_V_AWUSER();
    void thread_m_axi_out_V_AWVALID();
    void thread_m_axi_out_V_BREADY();
    void thread_m_axi_out_V_RREADY();
    void thread_m_axi_out_V_WDATA();
    void thread_m_axi_out_V_WID();
    void thread_m_axi_out_V_WLAST();
    void thread_m_axi_out_V_WSTRB();
    void thread_m_axi_out_V_WUSER();
    void thread_m_axi_out_V_WVALID();
    void thread_out_V3_cast_fu_87_p1();
    void thread_out_V_blk_n_AW();
    void thread_out_V_blk_n_B();
    void thread_out_V_blk_n_W();
    void thread_sum_cast_fu_97_p1();
    void thread_sum_fu_91_p2();
    void thread_tmp_3_cast_cast_fu_83_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif