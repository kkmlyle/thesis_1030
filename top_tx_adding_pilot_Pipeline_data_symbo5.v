// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_adding_pilot_Pipeline_data_symbo5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_symb5_M_imag_V_address0,
        data_symb5_M_imag_V_ce0,
        data_symb5_M_imag_V_we0,
        data_symb5_M_imag_V_d0,
        data_symb5_M_imag_V_address1,
        data_symb5_M_imag_V_ce1,
        data_symb5_M_imag_V_we1,
        data_symb5_M_imag_V_d1,
        data_symb5_M_real_V_address0,
        data_symb5_M_real_V_ce0,
        data_symb5_M_real_V_we0,
        data_symb5_M_real_V_d0,
        data_symb5_M_real_V_address1,
        data_symb5_M_real_V_ce1,
        data_symb5_M_real_V_we1,
        data_symb5_M_real_V_d1,
        symb5_M_real_V_address0,
        symb5_M_real_V_ce0,
        symb5_M_real_V_q0,
        symb5_M_imag_V_address0,
        symb5_M_imag_V_ce0,
        symb5_M_imag_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] data_symb5_M_imag_V_address0;
output   data_symb5_M_imag_V_ce0;
output   data_symb5_M_imag_V_we0;
output  [15:0] data_symb5_M_imag_V_d0;
output  [9:0] data_symb5_M_imag_V_address1;
output   data_symb5_M_imag_V_ce1;
output   data_symb5_M_imag_V_we1;
output  [15:0] data_symb5_M_imag_V_d1;
output  [9:0] data_symb5_M_real_V_address0;
output   data_symb5_M_real_V_ce0;
output   data_symb5_M_real_V_we0;
output  [15:0] data_symb5_M_real_V_d0;
output  [9:0] data_symb5_M_real_V_address1;
output   data_symb5_M_real_V_ce1;
output   data_symb5_M_real_V_we1;
output  [15:0] data_symb5_M_real_V_d1;
output  [9:0] symb5_M_real_V_address0;
output   symb5_M_real_V_ce0;
input  [15:0] symb5_M_real_V_q0;
output  [9:0] symb5_M_imag_V_address0;
output   symb5_M_imag_V_ce0;
input  [15:0] symb5_M_imag_V_q0;

reg ap_idle;
reg[9:0] data_symb5_M_imag_V_address0;
reg data_symb5_M_imag_V_ce0;
reg data_symb5_M_imag_V_we0;
reg[15:0] data_symb5_M_imag_V_d0;
reg data_symb5_M_imag_V_ce1;
reg data_symb5_M_imag_V_we1;
reg[9:0] data_symb5_M_real_V_address0;
reg data_symb5_M_real_V_ce0;
reg data_symb5_M_real_V_we0;
reg[15:0] data_symb5_M_real_V_d0;
reg data_symb5_M_real_V_ce1;
reg data_symb5_M_real_V_we1;
reg[9:0] symb5_M_real_V_address0;
reg symb5_M_real_V_ce0;
reg[9:0] symb5_M_imag_V_address0;
reg symb5_M_imag_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln198_fu_190_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] i_15_cast17_fu_202_p1;
reg   [63:0] i_15_cast17_reg_303;
wire   [0:0] icmp_ln200_fu_212_p2;
reg   [0:0] icmp_ln200_reg_311;
wire   [0:0] icmp_ln204_fu_224_p2;
reg   [0:0] icmp_ln204_reg_315;
wire   [0:0] and_ln208_fu_242_p2;
reg   [0:0] and_ln208_reg_319;
wire   [0:0] icmp_ln212_fu_248_p2;
reg   [0:0] icmp_ln212_reg_323;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln214_fu_260_p1;
wire   [63:0] zext_ln206_fu_272_p1;
wire   [9:0] data_symb5_M_real_V_addr_1_gep_fu_164_p3;
wire   [9:0] data_symb5_M_imag_V_addr_1_gep_fu_172_p3;
reg   [10:0] i_fu_48;
wire   [10:0] add_ln198_fu_196_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_13;
wire   [9:0] empty_fu_208_p1;
wire   [9:0] add_ln204_fu_218_p2;
wire   [0:0] icmp_ln208_fu_230_p2;
wire   [0:0] icmp_ln208_2_fu_236_p2;
wire   [9:0] add_ln214_fu_254_p2;
wire   [9:0] add_ln206_fu_266_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_149;
reg    ap_condition_142;
reg    ap_condition_282;
reg    ap_condition_280;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

top_tx_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln198_fu_190_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= add_ln198_fu_196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln208_reg_319 <= and_ln208_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_15_cast17_reg_303[10 : 0] <= i_15_cast17_fu_202_p1[10 : 0];
        icmp_ln200_reg_311 <= icmp_ln200_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_212_p2 == 1'd0) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln204_reg_315 <= icmp_ln204_fu_224_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (1'd0 == and_ln208_fu_242_p2) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln212_reg_323 <= icmp_ln212_fu_248_p2;
    end
end

always @ (*) begin
    if (((icmp_ln198_fu_190_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_13 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_48;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_142)) begin
        if ((icmp_ln200_reg_311 == 1'd1)) begin
            data_symb5_M_imag_V_address0 = 64'd0;
        end else if (((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0))) begin
            data_symb5_M_imag_V_address0 = data_symb5_M_imag_V_addr_1_gep_fu_172_p3;
        end else if ((1'b1 == ap_condition_149)) begin
            data_symb5_M_imag_V_address0 = i_15_cast17_reg_303;
        end else begin
            data_symb5_M_imag_V_address0 = 'bx;
        end
    end else begin
        data_symb5_M_imag_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_imag_V_ce1 = 1'b1;
    end else begin
        data_symb5_M_imag_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_imag_V_d0 = 16'd0;
    end else if ((((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_imag_V_d0 = symb5_M_imag_V_q0;
    end else begin
        data_symb5_M_imag_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_imag_V_we0 = 1'b1;
    end else begin
        data_symb5_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (1'd1 == and_ln208_fu_242_p2) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_imag_V_we1 = 1'b1;
    end else begin
        data_symb5_M_imag_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_142)) begin
        if ((icmp_ln200_reg_311 == 1'd1)) begin
            data_symb5_M_real_V_address0 = 64'd0;
        end else if (((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0))) begin
            data_symb5_M_real_V_address0 = data_symb5_M_real_V_addr_1_gep_fu_164_p3;
        end else if ((1'b1 == ap_condition_149)) begin
            data_symb5_M_real_V_address0 = i_15_cast17_reg_303;
        end else begin
            data_symb5_M_real_V_address0 = 'bx;
        end
    end else begin
        data_symb5_M_real_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_real_V_ce1 = 1'b1;
    end else begin
        data_symb5_M_real_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_real_V_d0 = 16'd0;
    end else if ((((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_real_V_d0 = symb5_M_real_V_q0;
    end else begin
        data_symb5_M_real_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln200_reg_311 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd1) & (icmp_ln200_reg_311 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_reg_323 == 1'd1)))) begin
        data_symb5_M_real_V_we0 = 1'b1;
    end else begin
        data_symb5_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (1'd1 == and_ln208_fu_242_p2) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_symb5_M_real_V_we1 = 1'b1;
    end else begin
        data_symb5_M_real_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_280)) begin
        if ((icmp_ln204_fu_224_p2 == 1'd1)) begin
            symb5_M_imag_V_address0 = zext_ln206_fu_272_p1;
        end else if ((1'b1 == ap_condition_282)) begin
            symb5_M_imag_V_address0 = zext_ln214_fu_260_p1;
        end else begin
            symb5_M_imag_V_address0 = 'bx;
        end
    end else begin
        symb5_M_imag_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln204_fu_224_p2 == 1'd1) & (icmp_ln200_fu_212_p2 == 1'd0) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (1'd0 == and_ln208_fu_242_p2) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_fu_248_p2 == 1'd1)))) begin
        symb5_M_imag_V_ce0 = 1'b1;
    end else begin
        symb5_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_280)) begin
        if ((icmp_ln204_fu_224_p2 == 1'd1)) begin
            symb5_M_real_V_address0 = zext_ln206_fu_272_p1;
        end else if ((1'b1 == ap_condition_282)) begin
            symb5_M_real_V_address0 = zext_ln214_fu_260_p1;
        end else begin
            symb5_M_real_V_address0 = 'bx;
        end
    end else begin
        symb5_M_real_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln204_fu_224_p2 == 1'd1) & (icmp_ln200_fu_212_p2 == 1'd0) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln204_fu_224_p2 == 1'd0) & (icmp_ln200_fu_212_p2 == 1'd0) & (1'd0 == and_ln208_fu_242_p2) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln212_fu_248_p2 == 1'd1)))) begin
        symb5_M_real_V_ce0 = 1'b1;
    end else begin
        symb5_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln198_fu_196_p2 = (ap_sig_allocacmp_i_13 + 11'd1);

assign add_ln204_fu_218_p2 = ($signed(empty_fu_208_p1) + $signed(10'd1023));

assign add_ln206_fu_266_p2 = (empty_fu_208_p1 + 10'd299);

assign add_ln214_fu_254_p2 = (empty_fu_208_p1 + 10'd300);

assign and_ln208_fu_242_p2 = (icmp_ln208_fu_230_p2 & icmp_ln208_2_fu_236_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_142 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_149 = ((icmp_ln204_reg_315 == 1'd0) & (icmp_ln200_reg_311 == 1'd0) & (1'd0 == and_ln208_reg_319) & (icmp_ln212_reg_323 == 1'd1));
end

always @ (*) begin
    ap_condition_280 = ((icmp_ln200_fu_212_p2 == 1'd0) & (icmp_ln198_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_282 = ((icmp_ln204_fu_224_p2 == 1'd0) & (1'd0 == and_ln208_fu_242_p2) & (icmp_ln212_fu_248_p2 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign data_symb5_M_imag_V_addr_1_gep_fu_172_p3 = i_15_cast17_reg_303;

assign data_symb5_M_imag_V_address1 = i_15_cast17_fu_202_p1;

assign data_symb5_M_imag_V_d1 = 16'd0;

assign data_symb5_M_real_V_addr_1_gep_fu_164_p3 = i_15_cast17_reg_303;

assign data_symb5_M_real_V_address1 = i_15_cast17_fu_202_p1;

assign data_symb5_M_real_V_d1 = 16'd0;

assign empty_fu_208_p1 = ap_sig_allocacmp_i_13[9:0];

assign i_15_cast17_fu_202_p1 = ap_sig_allocacmp_i_13;

assign icmp_ln198_fu_190_p2 = ((ap_sig_allocacmp_i_13 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_212_p2 = ((ap_sig_allocacmp_i_13 == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln204_fu_224_p2 = ((add_ln204_fu_218_p2 < 10'd300) ? 1'b1 : 1'b0);

assign icmp_ln208_2_fu_236_p2 = ((ap_sig_allocacmp_i_13 < 11'd724) ? 1'b1 : 1'b0);

assign icmp_ln208_fu_230_p2 = ((ap_sig_allocacmp_i_13 > 11'd300) ? 1'b1 : 1'b0);

assign icmp_ln212_fu_248_p2 = ((ap_sig_allocacmp_i_13 > 11'd723) ? 1'b1 : 1'b0);

assign zext_ln206_fu_272_p1 = add_ln206_fu_266_p2;

assign zext_ln214_fu_260_p1 = add_ln214_fu_254_p2;

always @ (posedge ap_clk) begin
    i_15_cast17_reg_303[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end

endmodule //top_tx_adding_pilot_Pipeline_data_symbo5
