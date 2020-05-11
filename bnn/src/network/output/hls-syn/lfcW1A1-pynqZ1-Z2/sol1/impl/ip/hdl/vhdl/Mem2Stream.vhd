-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.3
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mem2Stream is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_in_V_AWVALID : OUT STD_LOGIC;
    m_axi_in_V_AWREADY : IN STD_LOGIC;
    m_axi_in_V_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_WVALID : OUT STD_LOGIC;
    m_axi_in_V_WREADY : IN STD_LOGIC;
    m_axi_in_V_WDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_WSTRB : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_in_V_WLAST : OUT STD_LOGIC;
    m_axi_in_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_ARVALID : OUT STD_LOGIC;
    m_axi_in_V_ARREADY : IN STD_LOGIC;
    m_axi_in_V_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_in_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_in_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_in_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RVALID : IN STD_LOGIC;
    m_axi_in_V_RREADY : OUT STD_LOGIC;
    m_axi_in_V_RDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    m_axi_in_V_RLAST : IN STD_LOGIC;
    m_axi_in_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_BVALID : IN STD_LOGIC;
    m_axi_in_V_BREADY : OUT STD_LOGIC;
    m_axi_in_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_in_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_in_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    in_V1 : IN STD_LOGIC_VECTOR (60 downto 0);
    tmp_8 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_V_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of Mem2Stream is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv4_D : STD_LOGIC_VECTOR (3 downto 0) := "1101";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal in_V_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal in_V_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal tmp_reg_151 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_pipeline_reg_pp0_iter1_tmp_reg_151 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_93 : STD_LOGIC_VECTOR (3 downto 0);
    signal sum1_fu_112_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal sum1_reg_140 : STD_LOGIC_VECTOR (61 downto 0);
    signal ap_sig_ioackin_m_axi_in_V_ARREADY : STD_LOGIC;
    signal tmp_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_fu_134_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal e_V_reg_160 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal sum1_cast_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_in_V_ARREADY : STD_LOGIC := '0';
    signal in_V1_cast9_fu_108_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal tmp_cast8_fu_104_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and not((ap_const_lv1_0 = tmp_fu_128_p2)))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_lv1_1 = ap_CS_fsm_state8))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and (ap_const_lv1_0 = tmp_fu_128_p2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                elsif ((((ap_const_lv1_1 = ap_CS_fsm_state8)) or ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and not((ap_const_lv1_0 = tmp_fu_128_p2))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0))))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_lv1_1 = ap_CS_fsm_state8))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_m_axi_in_V_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_state2)) then
                    if (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_in_V_ARREADY))) then 
                        ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_0;
                    elsif ((ap_const_logic_1 = m_axi_in_V_ARREADY)) then 
                        ap_reg_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_reg_93_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = tmp_fu_128_p2))) then 
                i_reg_93 <= i_3_fu_134_p2;
            elsif (((ap_const_lv1_1 = ap_CS_fsm_state8))) then 
                i_reg_93 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))))) then
                ap_pipeline_reg_pp0_iter1_tmp_reg_151 <= tmp_reg_151;
                tmp_reg_151 <= tmp_fu_128_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv1_0 = tmp_reg_151) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))))) then
                e_V_reg_160 <= m_axi_in_V_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then
                sum1_reg_140 <= sum1_fu_112_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, m_axi_in_V_RVALID, out_V_V_full_n, ap_enable_reg_pp0_iter1, tmp_reg_151, ap_enable_reg_pp0_iter2, ap_pipeline_reg_pp0_iter1_tmp_reg_151, ap_sig_ioackin_m_axi_in_V_ARREADY, tmp_fu_128_p2, ap_enable_reg_pp0_iter0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_in_V_ARREADY))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and not((ap_const_logic_1 = ap_enable_reg_pp0_iter1)))) and not((not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not((ap_const_lv1_0 = tmp_fu_128_p2)) and not((ap_const_logic_1 = ap_enable_reg_pp0_iter1)))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and not((ap_const_logic_1 = ap_enable_reg_pp0_iter1))) or (not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not((ap_const_lv1_0 = tmp_fu_128_p2)) and not((ap_const_logic_1 = ap_enable_reg_pp0_iter1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(8 downto 8);
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state12 <= ap_CS_fsm(9 downto 9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7 downto 7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1)) or ((ap_const_lv1_1 = ap_CS_fsm_state12)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state12))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_in_V_ARREADY_assign_proc : process(m_axi_in_V_ARREADY, ap_reg_ioackin_m_axi_in_V_ARREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_m_axi_in_V_ARREADY)) then 
            ap_sig_ioackin_m_axi_in_V_ARREADY <= m_axi_in_V_ARREADY;
        else 
            ap_sig_ioackin_m_axi_in_V_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    i_3_fu_134_p2 <= std_logic_vector(unsigned(i_reg_93) + unsigned(ap_const_lv4_1));
    in_V1_cast9_fu_108_p1 <= std_logic_vector(resize(unsigned(in_V1),62));

    in_V_blk_n_AR_assign_proc : process(m_axi_in_V_ARREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2))) then 
            in_V_blk_n_AR <= m_axi_in_V_ARREADY;
        else 
            in_V_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    in_V_blk_n_R_assign_proc : process(m_axi_in_V_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_151)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151))) then 
            in_V_blk_n_R <= m_axi_in_V_RVALID;
        else 
            in_V_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    m_axi_in_V_ARADDR <= sum1_cast_fu_118_p1;
    m_axi_in_V_ARBURST <= ap_const_lv2_0;
    m_axi_in_V_ARCACHE <= ap_const_lv4_0;
    m_axi_in_V_ARID <= ap_const_lv1_0;
    m_axi_in_V_ARLEN <= ap_const_lv32_D;
    m_axi_in_V_ARLOCK <= ap_const_lv2_0;
    m_axi_in_V_ARPROT <= ap_const_lv3_0;
    m_axi_in_V_ARQOS <= ap_const_lv4_0;
    m_axi_in_V_ARREGION <= ap_const_lv4_0;
    m_axi_in_V_ARSIZE <= ap_const_lv3_0;
    m_axi_in_V_ARUSER <= ap_const_lv1_0;

    m_axi_in_V_ARVALID_assign_proc : process(ap_CS_fsm_state2, ap_reg_ioackin_m_axi_in_V_ARREADY)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2) and (ap_const_logic_0 = ap_reg_ioackin_m_axi_in_V_ARREADY))) then 
            m_axi_in_V_ARVALID <= ap_const_logic_1;
        else 
            m_axi_in_V_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_in_V_AWADDR <= ap_const_lv64_0;
    m_axi_in_V_AWBURST <= ap_const_lv2_0;
    m_axi_in_V_AWCACHE <= ap_const_lv4_0;
    m_axi_in_V_AWID <= ap_const_lv1_0;
    m_axi_in_V_AWLEN <= ap_const_lv32_0;
    m_axi_in_V_AWLOCK <= ap_const_lv2_0;
    m_axi_in_V_AWPROT <= ap_const_lv3_0;
    m_axi_in_V_AWQOS <= ap_const_lv4_0;
    m_axi_in_V_AWREGION <= ap_const_lv4_0;
    m_axi_in_V_AWSIZE <= ap_const_lv3_0;
    m_axi_in_V_AWUSER <= ap_const_lv1_0;
    m_axi_in_V_AWVALID <= ap_const_logic_0;
    m_axi_in_V_BREADY <= ap_const_logic_0;

    m_axi_in_V_RREADY_assign_proc : process(m_axi_in_V_RVALID, out_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_151, ap_enable_reg_pp0_iter2, ap_pipeline_reg_pp0_iter1_tmp_reg_151)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))))) then 
            m_axi_in_V_RREADY <= ap_const_logic_1;
        else 
            m_axi_in_V_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_in_V_WDATA <= ap_const_lv64_0;
    m_axi_in_V_WID <= ap_const_lv1_0;
    m_axi_in_V_WLAST <= ap_const_logic_0;
    m_axi_in_V_WSTRB <= ap_const_lv8_0;
    m_axi_in_V_WUSER <= ap_const_lv1_0;
    m_axi_in_V_WVALID <= ap_const_logic_0;

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp0_iter2, ap_pipeline_reg_pp0_iter1_tmp_reg_151)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= e_V_reg_160;

    out_V_V_write_assign_proc : process(m_axi_in_V_RVALID, out_V_V_full_n, ap_enable_reg_pp0_iter1, tmp_reg_151, ap_enable_reg_pp0_iter2, ap_pipeline_reg_pp0_iter1_tmp_reg_151)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and not((((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = tmp_reg_151) and (m_axi_in_V_RVALID = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter1_tmp_reg_151) and (out_V_V_full_n = ap_const_logic_0)))))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    sum1_cast_fu_118_p1 <= std_logic_vector(resize(unsigned(sum1_reg_140),64));
    sum1_fu_112_p2 <= std_logic_vector(unsigned(in_V1_cast9_fu_108_p1) + unsigned(tmp_cast8_fu_104_p1));
    tmp_cast8_fu_104_p1 <= std_logic_vector(resize(unsigned(tmp_8),62));
    tmp_fu_128_p2 <= "1" when (i_reg_93 = ap_const_lv4_D) else "0";
end behav;
