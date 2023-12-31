// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_adding_pilot_Pipeline_output_arrangement (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp2_re599_din,
        temp2_re599_full_n,
        temp2_re599_write,
        temp2_im600_din,
        temp2_im600_full_n,
        temp2_im600_write,
        pilot_sym_M_real_V_address0,
        pilot_sym_M_real_V_ce0,
        pilot_sym_M_real_V_q0,
        pilot_sym_M_imag_V_address0,
        pilot_sym_M_imag_V_ce0,
        pilot_sym_M_imag_V_q0,
        data_symb1_M_real_V_address0,
        data_symb1_M_real_V_ce0,
        data_symb1_M_real_V_q0,
        data_symb1_M_imag_V_address0,
        data_symb1_M_imag_V_ce0,
        data_symb1_M_imag_V_q0,
        data_symb2_M_real_V_address0,
        data_symb2_M_real_V_ce0,
        data_symb2_M_real_V_q0,
        data_symb2_M_imag_V_address0,
        data_symb2_M_imag_V_ce0,
        data_symb2_M_imag_V_q0,
        data_symb3_M_real_V_address0,
        data_symb3_M_real_V_ce0,
        data_symb3_M_real_V_q0,
        data_symb3_M_imag_V_address0,
        data_symb3_M_imag_V_ce0,
        data_symb3_M_imag_V_q0,
        data_symb4_M_real_V_address0,
        data_symb4_M_real_V_ce0,
        data_symb4_M_real_V_q0,
        data_symb4_M_imag_V_address0,
        data_symb4_M_imag_V_ce0,
        data_symb4_M_imag_V_q0,
        data_symb5_M_real_V_address0,
        data_symb5_M_real_V_ce0,
        data_symb5_M_real_V_q0,
        data_symb5_M_imag_V_address0,
        data_symb5_M_imag_V_ce0,
        data_symb5_M_imag_V_q0,
        data_symb6_M_real_V_address0,
        data_symb6_M_real_V_ce0,
        data_symb6_M_real_V_q0,
        data_symb6_M_imag_V_address0,
        data_symb6_M_imag_V_ce0,
        data_symb6_M_imag_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] temp2_re599_din;
input   temp2_re599_full_n;
output   temp2_re599_write;
output  [15:0] temp2_im600_din;
input   temp2_im600_full_n;
output   temp2_im600_write;
output  [9:0] pilot_sym_M_real_V_address0;
output   pilot_sym_M_real_V_ce0;
input  [14:0] pilot_sym_M_real_V_q0;
output  [9:0] pilot_sym_M_imag_V_address0;
output   pilot_sym_M_imag_V_ce0;
input  [14:0] pilot_sym_M_imag_V_q0;
output  [9:0] data_symb1_M_real_V_address0;
output   data_symb1_M_real_V_ce0;
input  [15:0] data_symb1_M_real_V_q0;
output  [9:0] data_symb1_M_imag_V_address0;
output   data_symb1_M_imag_V_ce0;
input  [15:0] data_symb1_M_imag_V_q0;
output  [9:0] data_symb2_M_real_V_address0;
output   data_symb2_M_real_V_ce0;
input  [15:0] data_symb2_M_real_V_q0;
output  [9:0] data_symb2_M_imag_V_address0;
output   data_symb2_M_imag_V_ce0;
input  [15:0] data_symb2_M_imag_V_q0;
output  [9:0] data_symb3_M_real_V_address0;
output   data_symb3_M_real_V_ce0;
input  [15:0] data_symb3_M_real_V_q0;
output  [9:0] data_symb3_M_imag_V_address0;
output   data_symb3_M_imag_V_ce0;
input  [15:0] data_symb3_M_imag_V_q0;
output  [9:0] data_symb4_M_real_V_address0;
output   data_symb4_M_real_V_ce0;
input  [15:0] data_symb4_M_real_V_q0;
output  [9:0] data_symb4_M_imag_V_address0;
output   data_symb4_M_imag_V_ce0;
input  [15:0] data_symb4_M_imag_V_q0;
output  [9:0] data_symb5_M_real_V_address0;
output   data_symb5_M_real_V_ce0;
input  [15:0] data_symb5_M_real_V_q0;
output  [9:0] data_symb5_M_imag_V_address0;
output   data_symb5_M_imag_V_ce0;
input  [15:0] data_symb5_M_imag_V_q0;
output  [9:0] data_symb6_M_real_V_address0;
output   data_symb6_M_real_V_ce0;
input  [15:0] data_symb6_M_real_V_q0;
output  [9:0] data_symb6_M_imag_V_address0;
output   data_symb6_M_imag_V_ce0;
input  [15:0] data_symb6_M_imag_V_q0;

reg ap_idle;
reg[15:0] temp2_re599_din;
reg temp2_re599_write;
reg[15:0] temp2_im600_din;
reg temp2_im600_write;
reg pilot_sym_M_real_V_ce0;
reg pilot_sym_M_imag_V_ce0;
reg data_symb1_M_real_V_ce0;
reg data_symb1_M_imag_V_ce0;
reg data_symb2_M_real_V_ce0;
reg data_symb2_M_imag_V_ce0;
reg data_symb3_M_real_V_ce0;
reg data_symb3_M_imag_V_ce0;
reg data_symb4_M_real_V_ce0;
reg data_symb4_M_imag_V_ce0;
reg data_symb5_M_real_V_ce0;
reg data_symb5_M_imag_V_ce0;
reg data_symb6_M_real_V_ce0;
reg data_symb6_M_imag_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln242_reg_445;
reg   [0:0] icmp_ln247_reg_449;
reg   [0:0] icmp_ln252_reg_453;
reg   [0:0] tmp_20_reg_457;
reg    ap_predicate_op74_write_state2;
reg    ap_predicate_op76_write_state2;
reg   [0:0] icmp_ln262_reg_471;
reg   [0:0] icmp_ln267_reg_475;
reg    ap_predicate_op79_write_state2;
reg    ap_predicate_op81_write_state2;
reg    ap_predicate_op84_write_state2;
reg    ap_predicate_op86_write_state2;
reg    ap_predicate_op89_write_state2;
reg    ap_predicate_op91_write_state2;
reg    ap_predicate_op94_write_state2;
reg    ap_predicate_op96_write_state2;
reg    ap_predicate_op99_write_state2;
reg    ap_predicate_op101_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln240_fu_308_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    temp2_re599_blk_n;
wire    ap_block_pp0_stage0;
reg    temp2_im600_blk_n;
wire   [0:0] icmp_ln242_fu_340_p2;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln247_fu_356_p2;
wire   [0:0] icmp_ln252_fu_362_p2;
wire   [0:0] tmp_20_fu_368_p3;
wire   [0:0] icmp_ln262_fu_382_p2;
wire   [0:0] icmp_ln267_fu_388_p2;
wire   [63:0] zext_ln259_fu_376_p1;
wire   [63:0] zext_ln269_fu_394_p1;
wire   [63:0] zext_ln264_fu_402_p1;
wire   [63:0] zext_ln254_fu_408_p1;
wire   [63:0] zext_ln249_fu_414_p1;
wire   [63:0] i_17_cast19_fu_320_p1;
reg   [12:0] i_fu_88;
wire   [12:0] add_ln240_fu_314_p2;
wire    ap_loop_init;
reg   [12:0] ap_sig_allocacmp_i_10;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] p_030_fu_425_p1;
wire   [15:0] p_0_fu_430_p1;
wire   [2:0] tmp_fu_330_p4;
wire   [1:0] tmp_19_fu_346_p4;
wire   [9:0] empty_fu_326_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_361;
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln240_fu_308_p2 == 1'd0))) begin
            i_fu_88 <= add_ln240_fu_314_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_88 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln242_reg_445 <= icmp_ln242_fu_340_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln242_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln247_reg_449 <= icmp_ln247_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln247_fu_356_p2 == 1'd0) & (icmp_ln242_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln252_reg_453 <= icmp_ln252_fu_362_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_20_fu_368_p3 == 1'd1) & (icmp_ln252_fu_362_p2 == 1'd0) & (icmp_ln247_fu_356_p2 == 1'd0) & (icmp_ln242_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln262_reg_471 <= icmp_ln262_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln262_fu_382_p2 == 1'd0) & (tmp_20_fu_368_p3 == 1'd1) & (icmp_ln252_fu_362_p2 == 1'd0) & (icmp_ln247_fu_356_p2 == 1'd0) & (icmp_ln242_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln267_reg_475 <= icmp_ln267_fu_388_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_362_p2 == 1'd0) & (icmp_ln247_fu_356_p2 == 1'd0) & (icmp_ln242_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_20_reg_457 <= ap_sig_allocacmp_i_10[32'd12];
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln240_fu_308_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_10 = 13'd0;
    end else begin
        ap_sig_allocacmp_i_10 = i_fu_88;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb1_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb1_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb1_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb1_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb2_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb2_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb2_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb2_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb3_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb3_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb3_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb3_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb4_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb4_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb4_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb4_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb5_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb5_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb5_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb6_M_imag_V_ce0 = 1'b1;
    end else begin
        data_symb6_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_symb6_M_real_V_ce0 = 1'b1;
    end else begin
        data_symb6_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pilot_sym_M_imag_V_ce0 = 1'b1;
    end else begin
        pilot_sym_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pilot_sym_M_real_V_ce0 = 1'b1;
    end else begin
        pilot_sym_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op91_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op86_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op76_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op101_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op96_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        temp2_im600_blk_n = temp2_im600_full_n;
    end else begin
        temp2_im600_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((icmp_ln242_reg_445 == 1'd1)) begin
            temp2_im600_din = p_0_fu_430_p1;
        end else if ((ap_predicate_op101_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb1_M_imag_V_q0;
        end else if ((ap_predicate_op96_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb2_M_imag_V_q0;
        end else if ((ap_predicate_op91_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb4_M_imag_V_q0;
        end else if ((ap_predicate_op86_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb5_M_imag_V_q0;
        end else if ((ap_predicate_op81_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb6_M_imag_V_q0;
        end else if ((ap_predicate_op76_write_state2 == 1'b1)) begin
            temp2_im600_din = data_symb3_M_imag_V_q0;
        end else begin
            temp2_im600_din = 'bx;
        end
    end else begin
        temp2_im600_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op91_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op86_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op81_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op76_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op101_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op96_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        temp2_im600_write = 1'b1;
    end else begin
        temp2_im600_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op94_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op89_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op84_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_predicate_op74_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        temp2_re599_blk_n = temp2_re599_full_n;
    end else begin
        temp2_re599_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_361)) begin
        if ((icmp_ln242_reg_445 == 1'd1)) begin
            temp2_re599_din = p_030_fu_425_p1;
        end else if ((ap_predicate_op99_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb1_M_real_V_q0;
        end else if ((ap_predicate_op94_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb2_M_real_V_q0;
        end else if ((ap_predicate_op89_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb4_M_real_V_q0;
        end else if ((ap_predicate_op84_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb5_M_real_V_q0;
        end else if ((ap_predicate_op79_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb6_M_real_V_q0;
        end else if ((ap_predicate_op74_write_state2 == 1'b1)) begin
            temp2_re599_din = data_symb3_M_real_V_q0;
        end else begin
            temp2_re599_din = 'bx;
        end
    end else begin
        temp2_re599_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op94_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op89_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op84_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op79_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op74_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        temp2_re599_write = 1'b1;
    end else begin
        temp2_re599_write = 1'b0;
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

assign add_ln240_fu_314_p2 = (ap_sig_allocacmp_i_10 + 13'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op94_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op91_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op89_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op86_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op84_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op76_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((temp2_im600_full_n == 1'b0) & (icmp_ln242_reg_445 == 1'd1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op101_write_state2 == 1'b1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)) | ((ap_predicate_op74_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((temp2_re599_full_n == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (temp2_re599_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op94_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op91_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op89_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op86_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op84_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op76_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((temp2_im600_full_n == 1'b0) & (icmp_ln242_reg_445 == 1'd1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op101_write_state2 == 1'b1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)) | ((ap_predicate_op74_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((temp2_re599_full_n == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (temp2_re599_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ap_predicate_op94_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op91_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op89_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op86_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op84_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op76_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((temp2_im600_full_n == 1'b0) & (icmp_ln242_reg_445 == 1'd1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op101_write_state2 == 1'b1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)) | ((ap_predicate_op74_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((temp2_re599_full_n == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (temp2_re599_full_n == 1'b0))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ap_predicate_op94_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op91_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op89_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op86_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op84_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op81_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((ap_predicate_op79_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((ap_predicate_op76_write_state2 == 1'b1) & (temp2_im600_full_n == 1'b0)) | ((temp2_im600_full_n == 1'b0) & (icmp_ln242_reg_445 == 1'd1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op101_write_state2 == 1'b1)) | ((temp2_im600_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)) | ((ap_predicate_op74_write_state2 == 1'b1) & (temp2_re599_full_n == 1'b0)) | ((temp2_re599_full_n == 1'b0) & (ap_predicate_op99_write_state2 == 1'b1)) | ((icmp_ln242_reg_445 == 1'd1) & (temp2_re599_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_361 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op101_write_state2 = ((icmp_ln247_reg_449 == 1'd1) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op74_write_state2 = ((tmp_20_reg_457 == 1'd0) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op76_write_state2 = ((tmp_20_reg_457 == 1'd0) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op79_write_state2 = ((icmp_ln267_reg_475 == 1'd0) & (icmp_ln262_reg_471 == 1'd0) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op81_write_state2 = ((icmp_ln267_reg_475 == 1'd0) & (icmp_ln262_reg_471 == 1'd0) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op84_write_state2 = ((icmp_ln267_reg_475 == 1'd1) & (icmp_ln262_reg_471 == 1'd0) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op86_write_state2 = ((icmp_ln267_reg_475 == 1'd1) & (icmp_ln262_reg_471 == 1'd0) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op89_write_state2 = ((icmp_ln262_reg_471 == 1'd1) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op91_write_state2 = ((icmp_ln262_reg_471 == 1'd1) & (tmp_20_reg_457 == 1'd1) & (icmp_ln252_reg_453 == 1'd0) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op94_write_state2 = ((icmp_ln252_reg_453 == 1'd1) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op96_write_state2 = ((icmp_ln252_reg_453 == 1'd1) & (icmp_ln247_reg_449 == 1'd0) & (icmp_ln242_reg_445 == 1'd0));
end

always @ (*) begin
    ap_predicate_op99_write_state2 = ((icmp_ln247_reg_449 == 1'd1) & (icmp_ln242_reg_445 == 1'd0));
end

assign data_symb1_M_imag_V_address0 = zext_ln249_fu_414_p1;

assign data_symb1_M_real_V_address0 = zext_ln249_fu_414_p1;

assign data_symb2_M_imag_V_address0 = zext_ln254_fu_408_p1;

assign data_symb2_M_real_V_address0 = zext_ln254_fu_408_p1;

assign data_symb3_M_imag_V_address0 = zext_ln259_fu_376_p1;

assign data_symb3_M_real_V_address0 = zext_ln259_fu_376_p1;

assign data_symb4_M_imag_V_address0 = zext_ln264_fu_402_p1;

assign data_symb4_M_real_V_address0 = zext_ln264_fu_402_p1;

assign data_symb5_M_imag_V_address0 = zext_ln269_fu_394_p1;

assign data_symb5_M_real_V_address0 = zext_ln269_fu_394_p1;

assign data_symb6_M_imag_V_address0 = zext_ln269_fu_394_p1;

assign data_symb6_M_real_V_address0 = zext_ln269_fu_394_p1;

assign empty_fu_326_p1 = ap_sig_allocacmp_i_10[9:0];

assign i_17_cast19_fu_320_p1 = ap_sig_allocacmp_i_10;

assign icmp_ln240_fu_308_p2 = ((ap_sig_allocacmp_i_10 == 13'd7168) ? 1'b1 : 1'b0);

assign icmp_ln242_fu_340_p2 = ((tmp_fu_330_p4 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln247_fu_356_p2 = ((tmp_19_fu_346_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln252_fu_362_p2 = ((ap_sig_allocacmp_i_10 < 13'd3072) ? 1'b1 : 1'b0);

assign icmp_ln262_fu_382_p2 = ((ap_sig_allocacmp_i_10 < 13'd5120) ? 1'b1 : 1'b0);

assign icmp_ln267_fu_388_p2 = ((ap_sig_allocacmp_i_10 < 13'd6144) ? 1'b1 : 1'b0);

assign p_030_fu_425_p1 = pilot_sym_M_real_V_q0;

assign p_0_fu_430_p1 = pilot_sym_M_imag_V_q0;

assign pilot_sym_M_imag_V_address0 = i_17_cast19_fu_320_p1;

assign pilot_sym_M_real_V_address0 = i_17_cast19_fu_320_p1;

assign tmp_19_fu_346_p4 = {{ap_sig_allocacmp_i_10[12:11]}};

assign tmp_20_fu_368_p3 = ap_sig_allocacmp_i_10[32'd12];

assign tmp_fu_330_p4 = {{ap_sig_allocacmp_i_10[12:10]}};

assign zext_ln249_fu_414_p1 = empty_fu_326_p1;

assign zext_ln254_fu_408_p1 = empty_fu_326_p1;

assign zext_ln259_fu_376_p1 = empty_fu_326_p1;

assign zext_ln264_fu_402_p1 = empty_fu_326_p1;

assign zext_ln269_fu_394_p1 = empty_fu_326_p1;

endmodule //top_tx_adding_pilot_Pipeline_output_arrangement
