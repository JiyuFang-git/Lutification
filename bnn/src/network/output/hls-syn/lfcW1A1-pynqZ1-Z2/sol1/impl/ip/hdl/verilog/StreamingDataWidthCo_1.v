// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingDataWidthCo_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write,
        numReps_dout,
        numReps_empty_n,
        numReps_read,
        numReps_out_din,
        numReps_out_full_n,
        numReps_out_write
);

parameter    ap_ST_fsm_state1 = 3'b1;
parameter    ap_ST_fsm_pp0_stage0 = 3'b10;
parameter    ap_ST_fsm_state4 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv48_0 = 48'b000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_2F = 32'b101111;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [63:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
input  [31:0] numReps_dout;
input   numReps_empty_n;
output   numReps_read;
output  [31:0] numReps_out_din;
input   numReps_out_full_n;
output   numReps_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_read;
reg out_V_V_write;
reg numReps_read;
reg numReps_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg    in_V_V_blk_n;
wire   [0:0] ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] exitcond_i_reg_187;
reg    out_V_V_blk_n;
reg   [0:0] tmp_i_reg_196;
reg    numReps_blk_n;
reg    numReps_out_blk_n;
reg   [47:0] r_V_reg_83;
reg   [31:0] t_i_reg_95;
wire   [31:0] tmp_fu_111_p2;
reg   [31:0] tmp_reg_182;
reg    ap_condition_79;
wire   [0:0] exitcond_i_fu_117_p2;
reg    ap_condition_90;
wire   [31:0] t_fu_122_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_i_fu_137_p2;
wire   [47:0] phitmp_cast_i_fu_167_p3;
reg   [31:0] i_1_fu_52;
wire   [31:0] i_fu_131_p2;
wire   [31:0] tmp_1_fu_157_p4;
wire   [0:0] ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'b1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & ~(1'b0 == exitcond_i_fu_117_p2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b0 == exitcond_i_fu_117_p2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end else if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & ~(1'b0 == exitcond_i_fu_117_p2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b0 == exitcond_i_fu_117_p2) & (1'b0 == tmp_i_fu_137_p2))) begin
        i_1_fu_52 <= i_fu_131_p2;
    end else if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b0 == exitcond_i_fu_117_p2) & ~(1'b0 == tmp_i_fu_137_p2)))) begin
        i_1_fu_52 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_187 == 1'b0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)))) begin
        r_V_reg_83 <= phitmp_cast_i_fu_167_p3;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
        r_V_reg_83 <= ap_const_lv48_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'b0 == exitcond_i_fu_117_p2))) begin
        t_i_reg_95 <= t_fu_122_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
        t_i_reg_95 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)))) begin
        exitcond_i_reg_187 <= exitcond_i_fu_117_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b0 == exitcond_i_fu_117_p2))) begin
        tmp_i_reg_196 <= tmp_i_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
        tmp_reg_182[31 : 2] <= tmp_fu_111_p2[31 : 2];
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_187 == 1'b0))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_187 == 1'b0) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        numReps_blk_n = numReps_empty_n;
    end else begin
        numReps_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        numReps_out_blk_n = numReps_out_full_n;
    end else begin
        numReps_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
        numReps_out_write = 1'b1;
    end else begin
        numReps_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_79 == 1'b1))) begin
        numReps_read = 1'b1;
    end else begin
        numReps_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~(1'b0 == tmp_i_reg_196))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & ~(1'b0 == tmp_i_reg_196) & ~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_condition_79 == 1'b1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~(~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(1'b0 == exitcond_i_fu_117_p2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((1'b1 == ap_enable_reg_pp0_iter1) & (ap_condition_90 == 1'b1)) & (1'b1 == ap_enable_reg_pp0_iter0) & ~(1'b0 == exitcond_i_fu_117_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_2];

always @ (*) begin
    ap_condition_79 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | (numReps_empty_n == 1'b0) | (numReps_out_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_90 = (((exitcond_i_reg_187 == 1'b0) & (in_V_V_empty_n == 1'b0)) | (~(1'b0 == tmp_i_reg_196) & (out_V_V_full_n == 1'b0)));
end

assign exitcond_i_fu_117_p2 = ((t_i_reg_95 == tmp_reg_182) ? 1'b1 : 1'b0);

assign i_fu_131_p2 = (i_1_fu_52 + ap_const_lv32_1);

assign numReps_out_din = numReps_dout;

assign out_V_V_din = {{in_V_V_dout}, {r_V_reg_83}};

assign phitmp_cast_i_fu_167_p3 = {{in_V_V_dout}, {tmp_1_fu_157_p4}};

assign t_fu_122_p2 = (t_i_reg_95 + ap_const_lv32_1);

assign tmp_1_fu_157_p4 = {{r_V_reg_83[ap_const_lv32_2F : ap_const_lv32_10]}};

assign tmp_fu_111_p2 = numReps_dout << ap_const_lv32_2;

assign tmp_i_fu_137_p2 = ((i_fu_131_p2 == ap_const_lv32_4) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_reg_182[1:0] <= 2'b00;
end

endmodule //StreamingDataWidthCo_1