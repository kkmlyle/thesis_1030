// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_top_tx_Pipeline_loop_input (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp5_M_real_V_address0,
        temp5_M_real_V_ce0,
        temp5_M_real_V_q0,
        temp5_M_real_V_address1,
        temp5_M_real_V_ce1,
        temp5_M_real_V_q1,
        temp5_M_real_V_address2,
        temp5_M_real_V_ce2,
        temp5_M_real_V_q2,
        temp5_M_real_V_address3,
        temp5_M_real_V_ce3,
        temp5_M_real_V_q3,
        temp5_M_real_V_address4,
        temp5_M_real_V_ce4,
        temp5_M_real_V_q4,
        temp5_M_real_V_address5,
        temp5_M_real_V_ce5,
        temp5_M_real_V_q5,
        temp5_M_real_V_address6,
        temp5_M_real_V_ce6,
        temp5_M_real_V_q6,
        temp5_M_imag_V_address0,
        temp5_M_imag_V_ce0,
        temp5_M_imag_V_q0,
        temp5_M_imag_V_address1,
        temp5_M_imag_V_ce1,
        temp5_M_imag_V_q1,
        temp5_M_imag_V_address2,
        temp5_M_imag_V_ce2,
        temp5_M_imag_V_q2,
        temp5_M_imag_V_address3,
        temp5_M_imag_V_ce3,
        temp5_M_imag_V_q3,
        temp5_M_imag_V_address4,
        temp5_M_imag_V_ce4,
        temp5_M_imag_V_q4,
        temp5_M_imag_V_address5,
        temp5_M_imag_V_ce5,
        temp5_M_imag_V_q5,
        temp5_M_imag_V_address6,
        temp5_M_imag_V_ce6,
        temp5_M_imag_V_q6,
        temp3_M_real_V_address0,
        temp3_M_real_V_ce0,
        temp3_M_real_V_we0,
        temp3_M_real_V_d0,
        temp3_M_imag_V_address0,
        temp3_M_imag_V_ce0,
        temp3_M_imag_V_we0,
        temp3_M_imag_V_d0,
        temp4_M_real_V_address0,
        temp4_M_real_V_ce0,
        temp4_M_real_V_we0,
        temp4_M_real_V_d0,
        temp4_M_imag_V_address0,
        temp4_M_imag_V_ce0,
        temp4_M_imag_V_we0,
        temp4_M_imag_V_d0,
        temp6_M_real_V_address0,
        temp6_M_real_V_ce0,
        temp6_M_real_V_we0,
        temp6_M_real_V_d0,
        temp6_M_imag_V_address0,
        temp6_M_imag_V_ce0,
        temp6_M_imag_V_we0,
        temp6_M_imag_V_d0,
        temp7_M_real_V_address0,
        temp7_M_real_V_ce0,
        temp7_M_real_V_we0,
        temp7_M_real_V_d0,
        temp7_M_imag_V_address0,
        temp7_M_imag_V_ce0,
        temp7_M_imag_V_we0,
        temp7_M_imag_V_d0,
        temp8_M_real_V_address0,
        temp8_M_real_V_ce0,
        temp8_M_real_V_we0,
        temp8_M_real_V_d0,
        temp8_M_imag_V_address0,
        temp8_M_imag_V_ce0,
        temp8_M_imag_V_we0,
        temp8_M_imag_V_d0,
        temp9_M_real_V_address0,
        temp9_M_real_V_ce0,
        temp9_M_real_V_we0,
        temp9_M_real_V_d0,
        temp9_M_imag_V_address0,
        temp9_M_imag_V_ce0,
        temp9_M_imag_V_we0,
        temp9_M_imag_V_d0,
        temp10_M_real_V_address0,
        temp10_M_real_V_ce0,
        temp10_M_real_V_we0,
        temp10_M_real_V_d0,
        temp10_M_imag_V_address0,
        temp10_M_imag_V_ce0,
        temp10_M_imag_V_we0,
        temp10_M_imag_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] temp5_M_real_V_address0;
output   temp5_M_real_V_ce0;
input  [15:0] temp5_M_real_V_q0;
output  [12:0] temp5_M_real_V_address1;
output   temp5_M_real_V_ce1;
input  [15:0] temp5_M_real_V_q1;
output  [12:0] temp5_M_real_V_address2;
output   temp5_M_real_V_ce2;
input  [15:0] temp5_M_real_V_q2;
output  [12:0] temp5_M_real_V_address3;
output   temp5_M_real_V_ce3;
input  [15:0] temp5_M_real_V_q3;
output  [12:0] temp5_M_real_V_address4;
output   temp5_M_real_V_ce4;
input  [15:0] temp5_M_real_V_q4;
output  [12:0] temp5_M_real_V_address5;
output   temp5_M_real_V_ce5;
input  [15:0] temp5_M_real_V_q5;
output  [12:0] temp5_M_real_V_address6;
output   temp5_M_real_V_ce6;
input  [15:0] temp5_M_real_V_q6;
output  [12:0] temp5_M_imag_V_address0;
output   temp5_M_imag_V_ce0;
input  [15:0] temp5_M_imag_V_q0;
output  [12:0] temp5_M_imag_V_address1;
output   temp5_M_imag_V_ce1;
input  [15:0] temp5_M_imag_V_q1;
output  [12:0] temp5_M_imag_V_address2;
output   temp5_M_imag_V_ce2;
input  [15:0] temp5_M_imag_V_q2;
output  [12:0] temp5_M_imag_V_address3;
output   temp5_M_imag_V_ce3;
input  [15:0] temp5_M_imag_V_q3;
output  [12:0] temp5_M_imag_V_address4;
output   temp5_M_imag_V_ce4;
input  [15:0] temp5_M_imag_V_q4;
output  [12:0] temp5_M_imag_V_address5;
output   temp5_M_imag_V_ce5;
input  [15:0] temp5_M_imag_V_q5;
output  [12:0] temp5_M_imag_V_address6;
output   temp5_M_imag_V_ce6;
input  [15:0] temp5_M_imag_V_q6;
output  [9:0] temp3_M_real_V_address0;
output   temp3_M_real_V_ce0;
output   temp3_M_real_V_we0;
output  [15:0] temp3_M_real_V_d0;
output  [9:0] temp3_M_imag_V_address0;
output   temp3_M_imag_V_ce0;
output   temp3_M_imag_V_we0;
output  [15:0] temp3_M_imag_V_d0;
output  [9:0] temp4_M_real_V_address0;
output   temp4_M_real_V_ce0;
output   temp4_M_real_V_we0;
output  [15:0] temp4_M_real_V_d0;
output  [9:0] temp4_M_imag_V_address0;
output   temp4_M_imag_V_ce0;
output   temp4_M_imag_V_we0;
output  [15:0] temp4_M_imag_V_d0;
output  [9:0] temp6_M_real_V_address0;
output   temp6_M_real_V_ce0;
output   temp6_M_real_V_we0;
output  [15:0] temp6_M_real_V_d0;
output  [9:0] temp6_M_imag_V_address0;
output   temp6_M_imag_V_ce0;
output   temp6_M_imag_V_we0;
output  [15:0] temp6_M_imag_V_d0;
output  [9:0] temp7_M_real_V_address0;
output   temp7_M_real_V_ce0;
output   temp7_M_real_V_we0;
output  [15:0] temp7_M_real_V_d0;
output  [9:0] temp7_M_imag_V_address0;
output   temp7_M_imag_V_ce0;
output   temp7_M_imag_V_we0;
output  [15:0] temp7_M_imag_V_d0;
output  [9:0] temp8_M_real_V_address0;
output   temp8_M_real_V_ce0;
output   temp8_M_real_V_we0;
output  [15:0] temp8_M_real_V_d0;
output  [9:0] temp8_M_imag_V_address0;
output   temp8_M_imag_V_ce0;
output   temp8_M_imag_V_we0;
output  [15:0] temp8_M_imag_V_d0;
output  [9:0] temp9_M_real_V_address0;
output   temp9_M_real_V_ce0;
output   temp9_M_real_V_we0;
output  [15:0] temp9_M_real_V_d0;
output  [9:0] temp9_M_imag_V_address0;
output   temp9_M_imag_V_ce0;
output   temp9_M_imag_V_we0;
output  [15:0] temp9_M_imag_V_d0;
output  [9:0] temp10_M_real_V_address0;
output   temp10_M_real_V_ce0;
output   temp10_M_real_V_we0;
output  [15:0] temp10_M_real_V_d0;
output  [9:0] temp10_M_imag_V_address0;
output   temp10_M_imag_V_ce0;
output   temp10_M_imag_V_we0;
output  [15:0] temp10_M_imag_V_d0;

reg ap_idle;
reg temp5_M_real_V_ce0;
reg temp5_M_real_V_ce1;
reg temp5_M_real_V_ce2;
reg temp5_M_real_V_ce3;
reg temp5_M_real_V_ce4;
reg temp5_M_real_V_ce5;
reg temp5_M_real_V_ce6;
reg temp5_M_imag_V_ce0;
reg temp5_M_imag_V_ce1;
reg temp5_M_imag_V_ce2;
reg temp5_M_imag_V_ce3;
reg temp5_M_imag_V_ce4;
reg temp5_M_imag_V_ce5;
reg temp5_M_imag_V_ce6;
reg temp3_M_real_V_ce0;
reg temp3_M_real_V_we0;
reg temp3_M_imag_V_ce0;
reg temp3_M_imag_V_we0;
reg temp4_M_real_V_ce0;
reg temp4_M_real_V_we0;
reg temp4_M_imag_V_ce0;
reg temp4_M_imag_V_we0;
reg temp6_M_real_V_ce0;
reg temp6_M_real_V_we0;
reg temp6_M_imag_V_ce0;
reg temp6_M_imag_V_we0;
reg temp7_M_real_V_ce0;
reg temp7_M_real_V_we0;
reg temp7_M_imag_V_ce0;
reg temp7_M_imag_V_we0;
reg temp8_M_real_V_ce0;
reg temp8_M_real_V_we0;
reg temp8_M_imag_V_ce0;
reg temp8_M_imag_V_we0;
reg temp9_M_real_V_ce0;
reg temp9_M_real_V_we0;
reg temp9_M_imag_V_ce0;
reg temp9_M_imag_V_we0;
reg temp10_M_real_V_ce0;
reg temp10_M_real_V_we0;
reg temp10_M_imag_V_ce0;
reg temp10_M_imag_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln86_fu_466_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] i_1_cast23_fu_478_p1;
reg   [63:0] i_1_cast23_reg_697;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] empty_fu_496_p1;
reg   [9:0] empty_reg_703;
wire   [0:0] icmp_ln88_fu_510_p2;
reg   [0:0] icmp_ln88_reg_713;
wire   [0:0] and_ln95_fu_548_p2;
reg   [0:0] and_ln95_reg_727;
wire   [0:0] and_ln99_fu_576_p2;
reg   [0:0] and_ln99_reg_741;
wire   [0:0] and_ln103_fu_602_p2;
reg   [0:0] and_ln103_reg_755;
wire   [0:0] and_ln107_fu_622_p2;
reg   [0:0] and_ln107_reg_769;
wire   [0:0] and_ln111_fu_640_p2;
reg   [0:0] and_ln111_reg_783;
wire   [0:0] icmp_ln115_fu_646_p2;
reg   [0:0] icmp_ln115_reg_797;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln97_fu_657_p1;
wire   [63:0] zext_ln101_fu_662_p1;
wire   [63:0] zext_ln105_fu_667_p1;
wire   [63:0] zext_ln109_fu_672_p1;
wire   [63:0] zext_ln113_fu_677_p1;
wire   [63:0] zext_ln117_fu_682_p1;
reg   [12:0] i_1_fu_88;
wire   [12:0] add_ln86_fu_472_p2;
wire    ap_loop_init;
reg   [12:0] ap_sig_allocacmp_i;
wire   [2:0] tmp_fu_500_p4;
wire   [2:0] tmp_2_fu_516_p4;
wire   [1:0] tmp_3_fu_532_p4;
wire   [0:0] icmp_ln95_fu_526_p2;
wire   [0:0] icmp_ln95_1_fu_542_p2;
wire   [1:0] tmp_4_fu_554_p4;
wire   [0:0] icmp_ln99_fu_564_p2;
wire   [0:0] icmp_ln99_1_fu_570_p2;
wire   [0:0] tmp_5_fu_588_p3;
wire   [0:0] icmp_ln103_fu_582_p2;
wire   [0:0] xor_ln103_fu_596_p2;
wire   [0:0] tmp_6_fu_608_p3;
wire   [0:0] icmp_ln107_fu_616_p2;
wire   [0:0] icmp_ln111_fu_628_p2;
wire   [0:0] icmp_ln111_1_fu_634_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
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
        if (((icmp_ln86_fu_466_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_88 <= add_ln86_fu_472_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_88 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln86_fu_466_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln103_reg_755 <= and_ln103_fu_602_p2;
        and_ln107_reg_769 <= and_ln107_fu_622_p2;
        and_ln111_reg_783 <= and_ln111_fu_640_p2;
        and_ln95_reg_727 <= and_ln95_fu_548_p2;
        and_ln99_reg_741 <= and_ln99_fu_576_p2;
        empty_reg_703 <= empty_fu_496_p1;
        i_1_cast23_reg_697[12 : 0] <= i_1_cast23_fu_478_p1[12 : 0];
        icmp_ln115_reg_797 <= icmp_ln115_fu_646_p2;
        icmp_ln88_reg_713 <= icmp_ln88_fu_510_p2;
    end
end

always @ (*) begin
    if (((icmp_ln86_fu_466_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 13'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp10_M_imag_V_ce0 = 1'b1;
    end else begin
        temp10_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln115_reg_797 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp10_M_imag_V_we0 = 1'b1;
    end else begin
        temp10_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp10_M_real_V_ce0 = 1'b1;
    end else begin
        temp10_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln115_reg_797 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp10_M_real_V_we0 = 1'b1;
    end else begin
        temp10_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_M_imag_V_ce0 = 1'b1;
    end else begin
        temp3_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln88_reg_713 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_M_imag_V_we0 = 1'b1;
    end else begin
        temp3_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_M_real_V_ce0 = 1'b1;
    end else begin
        temp3_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln88_reg_713 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp3_M_real_V_we0 = 1'b1;
    end else begin
        temp3_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp4_M_imag_V_ce0 = 1'b1;
    end else begin
        temp4_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln95_reg_727) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp4_M_imag_V_we0 = 1'b1;
    end else begin
        temp4_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp4_M_real_V_ce0 = 1'b1;
    end else begin
        temp4_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln95_reg_727) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp4_M_real_V_we0 = 1'b1;
    end else begin
        temp4_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce0 = 1'b1;
    end else begin
        temp5_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce1 = 1'b1;
    end else begin
        temp5_M_imag_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce2 = 1'b1;
    end else begin
        temp5_M_imag_V_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce3 = 1'b1;
    end else begin
        temp5_M_imag_V_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce4 = 1'b1;
    end else begin
        temp5_M_imag_V_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce5 = 1'b1;
    end else begin
        temp5_M_imag_V_ce5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_imag_V_ce6 = 1'b1;
    end else begin
        temp5_M_imag_V_ce6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce0 = 1'b1;
    end else begin
        temp5_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce1 = 1'b1;
    end else begin
        temp5_M_real_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce2 = 1'b1;
    end else begin
        temp5_M_real_V_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce3 = 1'b1;
    end else begin
        temp5_M_real_V_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce4 = 1'b1;
    end else begin
        temp5_M_real_V_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce5 = 1'b1;
    end else begin
        temp5_M_real_V_ce5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp5_M_real_V_ce6 = 1'b1;
    end else begin
        temp5_M_real_V_ce6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_M_imag_V_ce0 = 1'b1;
    end else begin
        temp6_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln99_reg_741) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_M_imag_V_we0 = 1'b1;
    end else begin
        temp6_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_M_real_V_ce0 = 1'b1;
    end else begin
        temp6_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln99_reg_741) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp6_M_real_V_we0 = 1'b1;
    end else begin
        temp6_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp7_M_imag_V_ce0 = 1'b1;
    end else begin
        temp7_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln103_reg_755) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp7_M_imag_V_we0 = 1'b1;
    end else begin
        temp7_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp7_M_real_V_ce0 = 1'b1;
    end else begin
        temp7_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln103_reg_755) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp7_M_real_V_we0 = 1'b1;
    end else begin
        temp7_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp8_M_imag_V_ce0 = 1'b1;
    end else begin
        temp8_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln107_reg_769) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp8_M_imag_V_we0 = 1'b1;
    end else begin
        temp8_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp8_M_real_V_ce0 = 1'b1;
    end else begin
        temp8_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln107_reg_769) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp8_M_real_V_we0 = 1'b1;
    end else begin
        temp8_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp9_M_imag_V_ce0 = 1'b1;
    end else begin
        temp9_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln111_reg_783) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp9_M_imag_V_we0 = 1'b1;
    end else begin
        temp9_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp9_M_real_V_ce0 = 1'b1;
    end else begin
        temp9_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln111_reg_783) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp9_M_real_V_we0 = 1'b1;
    end else begin
        temp9_M_real_V_we0 = 1'b0;
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

assign add_ln86_fu_472_p2 = (ap_sig_allocacmp_i + 13'd1);

assign and_ln103_fu_602_p2 = (xor_ln103_fu_596_p2 & icmp_ln103_fu_582_p2);

assign and_ln107_fu_622_p2 = (tmp_6_fu_608_p3 & icmp_ln107_fu_616_p2);

assign and_ln111_fu_640_p2 = (icmp_ln111_fu_628_p2 & icmp_ln111_1_fu_634_p2);

assign and_ln95_fu_548_p2 = (icmp_ln95_fu_526_p2 & icmp_ln95_1_fu_542_p2);

assign and_ln99_fu_576_p2 = (icmp_ln99_fu_564_p2 & icmp_ln99_1_fu_570_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_496_p1 = ap_sig_allocacmp_i[9:0];

assign i_1_cast23_fu_478_p1 = ap_sig_allocacmp_i;

assign icmp_ln103_fu_582_p2 = ((ap_sig_allocacmp_i > 13'd3071) ? 1'b1 : 1'b0);

assign icmp_ln107_fu_616_p2 = ((ap_sig_allocacmp_i < 13'd5120) ? 1'b1 : 1'b0);

assign icmp_ln111_1_fu_634_p2 = ((ap_sig_allocacmp_i < 13'd6144) ? 1'b1 : 1'b0);

assign icmp_ln111_fu_628_p2 = ((ap_sig_allocacmp_i > 13'd5119) ? 1'b1 : 1'b0);

assign icmp_ln115_fu_646_p2 = ((ap_sig_allocacmp_i > 13'd6143) ? 1'b1 : 1'b0);

assign icmp_ln86_fu_466_p2 = ((ap_sig_allocacmp_i == 13'd7168) ? 1'b1 : 1'b0);

assign icmp_ln88_fu_510_p2 = ((tmp_fu_500_p4 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln95_1_fu_542_p2 = ((tmp_3_fu_532_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln95_fu_526_p2 = ((tmp_2_fu_516_p4 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln99_1_fu_570_p2 = ((ap_sig_allocacmp_i < 13'd3072) ? 1'b1 : 1'b0);

assign icmp_ln99_fu_564_p2 = ((tmp_4_fu_554_p4 != 2'd0) ? 1'b1 : 1'b0);

assign temp10_M_imag_V_address0 = zext_ln117_fu_682_p1;

assign temp10_M_imag_V_d0 = temp5_M_imag_V_q0;

assign temp10_M_real_V_address0 = zext_ln117_fu_682_p1;

assign temp10_M_real_V_d0 = temp5_M_real_V_q0;

assign temp3_M_imag_V_address0 = i_1_cast23_reg_697;

assign temp3_M_imag_V_d0 = temp5_M_imag_V_q6;

assign temp3_M_real_V_address0 = i_1_cast23_reg_697;

assign temp3_M_real_V_d0 = temp5_M_real_V_q6;

assign temp4_M_imag_V_address0 = zext_ln97_fu_657_p1;

assign temp4_M_imag_V_d0 = temp5_M_imag_V_q5;

assign temp4_M_real_V_address0 = zext_ln97_fu_657_p1;

assign temp4_M_real_V_d0 = temp5_M_real_V_q5;

assign temp5_M_imag_V_address0 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address1 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address2 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address3 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address4 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address5 = i_1_cast23_fu_478_p1;

assign temp5_M_imag_V_address6 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address0 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address1 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address2 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address3 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address4 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address5 = i_1_cast23_fu_478_p1;

assign temp5_M_real_V_address6 = i_1_cast23_fu_478_p1;

assign temp6_M_imag_V_address0 = zext_ln101_fu_662_p1;

assign temp6_M_imag_V_d0 = temp5_M_imag_V_q4;

assign temp6_M_real_V_address0 = zext_ln101_fu_662_p1;

assign temp6_M_real_V_d0 = temp5_M_real_V_q4;

assign temp7_M_imag_V_address0 = zext_ln105_fu_667_p1;

assign temp7_M_imag_V_d0 = temp5_M_imag_V_q3;

assign temp7_M_real_V_address0 = zext_ln105_fu_667_p1;

assign temp7_M_real_V_d0 = temp5_M_real_V_q3;

assign temp8_M_imag_V_address0 = zext_ln109_fu_672_p1;

assign temp8_M_imag_V_d0 = temp5_M_imag_V_q2;

assign temp8_M_real_V_address0 = zext_ln109_fu_672_p1;

assign temp8_M_real_V_d0 = temp5_M_real_V_q2;

assign temp9_M_imag_V_address0 = zext_ln113_fu_677_p1;

assign temp9_M_imag_V_d0 = temp5_M_imag_V_q1;

assign temp9_M_real_V_address0 = zext_ln113_fu_677_p1;

assign temp9_M_real_V_d0 = temp5_M_real_V_q1;

assign tmp_2_fu_516_p4 = {{ap_sig_allocacmp_i[12:10]}};

assign tmp_3_fu_532_p4 = {{ap_sig_allocacmp_i[12:11]}};

assign tmp_4_fu_554_p4 = {{ap_sig_allocacmp_i[12:11]}};

assign tmp_5_fu_588_p3 = ap_sig_allocacmp_i[32'd12];

assign tmp_6_fu_608_p3 = ap_sig_allocacmp_i[32'd12];

assign tmp_fu_500_p4 = {{ap_sig_allocacmp_i[12:10]}};

assign xor_ln103_fu_596_p2 = (tmp_5_fu_588_p3 ^ 1'd1);

assign zext_ln101_fu_662_p1 = empty_reg_703;

assign zext_ln105_fu_667_p1 = empty_reg_703;

assign zext_ln109_fu_672_p1 = empty_reg_703;

assign zext_ln113_fu_677_p1 = empty_reg_703;

assign zext_ln117_fu_682_p1 = empty_reg_703;

assign zext_ln97_fu_657_p1 = empty_reg_703;

always @ (posedge ap_clk) begin
    i_1_cast23_reg_697[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end

endmodule //top_tx_top_tx_Pipeline_loop_input
