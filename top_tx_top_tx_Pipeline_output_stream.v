// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_top_tx_Pipeline_output_stream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        cp_outre_TREADY,
        cp_outim_TREADY,
        cp_out_re_V_address0,
        cp_out_re_V_ce0,
        cp_out_re_V_q0,
        cp_out_re_V_1_address0,
        cp_out_re_V_1_ce0,
        cp_out_re_V_1_q0,
        cp_out_re_V_2_address0,
        cp_out_re_V_2_ce0,
        cp_out_re_V_2_q0,
        cp_out_re_V_3_address0,
        cp_out_re_V_3_ce0,
        cp_out_re_V_3_q0,
        cp_out_re_V_4_address0,
        cp_out_re_V_4_ce0,
        cp_out_re_V_4_q0,
        cp_out_re_V_5_address0,
        cp_out_re_V_5_ce0,
        cp_out_re_V_5_q0,
        cp_out_re_V_6_address0,
        cp_out_re_V_6_ce0,
        cp_out_re_V_6_q0,
        cp_out_re_V_7_address0,
        cp_out_re_V_7_ce0,
        cp_out_re_V_7_q0,
        cp_out_re_V_8_address0,
        cp_out_re_V_8_ce0,
        cp_out_re_V_8_q0,
        cp_out_re_V_9_address0,
        cp_out_re_V_9_ce0,
        cp_out_re_V_9_q0,
        cp_out_re_V_10_address0,
        cp_out_re_V_10_ce0,
        cp_out_re_V_10_q0,
        cp_out_re_V_11_address0,
        cp_out_re_V_11_ce0,
        cp_out_re_V_11_q0,
        cp_out_re_V_12_address0,
        cp_out_re_V_12_ce0,
        cp_out_re_V_12_q0,
        cp_out_re_V_13_address0,
        cp_out_re_V_13_ce0,
        cp_out_re_V_13_q0,
        cp_outre_TDATA,
        cp_outre_TVALID,
        cp_out_im_V_address0,
        cp_out_im_V_ce0,
        cp_out_im_V_q0,
        cp_out_im_V_1_address0,
        cp_out_im_V_1_ce0,
        cp_out_im_V_1_q0,
        cp_out_im_V_2_address0,
        cp_out_im_V_2_ce0,
        cp_out_im_V_2_q0,
        cp_out_im_V_3_address0,
        cp_out_im_V_3_ce0,
        cp_out_im_V_3_q0,
        cp_out_im_V_4_address0,
        cp_out_im_V_4_ce0,
        cp_out_im_V_4_q0,
        cp_out_im_V_5_address0,
        cp_out_im_V_5_ce0,
        cp_out_im_V_5_q0,
        cp_out_im_V_6_address0,
        cp_out_im_V_6_ce0,
        cp_out_im_V_6_q0,
        cp_out_im_V_7_address0,
        cp_out_im_V_7_ce0,
        cp_out_im_V_7_q0,
        cp_out_im_V_8_address0,
        cp_out_im_V_8_ce0,
        cp_out_im_V_8_q0,
        cp_out_im_V_9_address0,
        cp_out_im_V_9_ce0,
        cp_out_im_V_9_q0,
        cp_out_im_V_10_address0,
        cp_out_im_V_10_ce0,
        cp_out_im_V_10_q0,
        cp_out_im_V_11_address0,
        cp_out_im_V_11_ce0,
        cp_out_im_V_11_q0,
        cp_out_im_V_12_address0,
        cp_out_im_V_12_ce0,
        cp_out_im_V_12_q0,
        cp_out_im_V_13_address0,
        cp_out_im_V_13_ce0,
        cp_out_im_V_13_q0,
        cp_outim_TDATA,
        cp_outim_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   cp_outre_TREADY;
input   cp_outim_TREADY;
output  [10:0] cp_out_re_V_address0;
output   cp_out_re_V_ce0;
input  [15:0] cp_out_re_V_q0;
output  [10:0] cp_out_re_V_1_address0;
output   cp_out_re_V_1_ce0;
input  [15:0] cp_out_re_V_1_q0;
output  [10:0] cp_out_re_V_2_address0;
output   cp_out_re_V_2_ce0;
input  [15:0] cp_out_re_V_2_q0;
output  [10:0] cp_out_re_V_3_address0;
output   cp_out_re_V_3_ce0;
input  [15:0] cp_out_re_V_3_q0;
output  [10:0] cp_out_re_V_4_address0;
output   cp_out_re_V_4_ce0;
input  [15:0] cp_out_re_V_4_q0;
output  [10:0] cp_out_re_V_5_address0;
output   cp_out_re_V_5_ce0;
input  [15:0] cp_out_re_V_5_q0;
output  [10:0] cp_out_re_V_6_address0;
output   cp_out_re_V_6_ce0;
input  [15:0] cp_out_re_V_6_q0;
output  [10:0] cp_out_re_V_7_address0;
output   cp_out_re_V_7_ce0;
input  [0:0] cp_out_re_V_7_q0;
output  [10:0] cp_out_re_V_8_address0;
output   cp_out_re_V_8_ce0;
input  [0:0] cp_out_re_V_8_q0;
output  [10:0] cp_out_re_V_9_address0;
output   cp_out_re_V_9_ce0;
input  [0:0] cp_out_re_V_9_q0;
output  [10:0] cp_out_re_V_10_address0;
output   cp_out_re_V_10_ce0;
input  [0:0] cp_out_re_V_10_q0;
output  [10:0] cp_out_re_V_11_address0;
output   cp_out_re_V_11_ce0;
input  [0:0] cp_out_re_V_11_q0;
output  [10:0] cp_out_re_V_12_address0;
output   cp_out_re_V_12_ce0;
input  [0:0] cp_out_re_V_12_q0;
output  [10:0] cp_out_re_V_13_address0;
output   cp_out_re_V_13_ce0;
input  [0:0] cp_out_re_V_13_q0;
output  [15:0] cp_outre_TDATA;
output   cp_outre_TVALID;
output  [10:0] cp_out_im_V_address0;
output   cp_out_im_V_ce0;
input  [15:0] cp_out_im_V_q0;
output  [10:0] cp_out_im_V_1_address0;
output   cp_out_im_V_1_ce0;
input  [15:0] cp_out_im_V_1_q0;
output  [10:0] cp_out_im_V_2_address0;
output   cp_out_im_V_2_ce0;
input  [15:0] cp_out_im_V_2_q0;
output  [10:0] cp_out_im_V_3_address0;
output   cp_out_im_V_3_ce0;
input  [15:0] cp_out_im_V_3_q0;
output  [10:0] cp_out_im_V_4_address0;
output   cp_out_im_V_4_ce0;
input  [15:0] cp_out_im_V_4_q0;
output  [10:0] cp_out_im_V_5_address0;
output   cp_out_im_V_5_ce0;
input  [15:0] cp_out_im_V_5_q0;
output  [10:0] cp_out_im_V_6_address0;
output   cp_out_im_V_6_ce0;
input  [15:0] cp_out_im_V_6_q0;
output  [10:0] cp_out_im_V_7_address0;
output   cp_out_im_V_7_ce0;
input  [0:0] cp_out_im_V_7_q0;
output  [10:0] cp_out_im_V_8_address0;
output   cp_out_im_V_8_ce0;
input  [0:0] cp_out_im_V_8_q0;
output  [10:0] cp_out_im_V_9_address0;
output   cp_out_im_V_9_ce0;
input  [0:0] cp_out_im_V_9_q0;
output  [10:0] cp_out_im_V_10_address0;
output   cp_out_im_V_10_ce0;
input  [0:0] cp_out_im_V_10_q0;
output  [10:0] cp_out_im_V_11_address0;
output   cp_out_im_V_11_ce0;
input  [0:0] cp_out_im_V_11_q0;
output  [10:0] cp_out_im_V_12_address0;
output   cp_out_im_V_12_ce0;
input  [0:0] cp_out_im_V_12_q0;
output  [10:0] cp_out_im_V_13_address0;
output   cp_out_im_V_13_ce0;
input  [0:0] cp_out_im_V_13_q0;
output  [15:0] cp_outim_TDATA;
output   cp_outim_TVALID;

reg ap_idle;
reg cp_out_re_V_ce0;
reg cp_out_re_V_1_ce0;
reg cp_out_re_V_2_ce0;
reg cp_out_re_V_3_ce0;
reg cp_out_re_V_4_ce0;
reg cp_out_re_V_5_ce0;
reg cp_out_re_V_6_ce0;
reg cp_out_re_V_7_ce0;
reg cp_out_re_V_8_ce0;
reg cp_out_re_V_9_ce0;
reg cp_out_re_V_10_ce0;
reg cp_out_re_V_11_ce0;
reg cp_out_re_V_12_ce0;
reg cp_out_re_V_13_ce0;
reg cp_outre_TVALID;
reg cp_out_im_V_ce0;
reg cp_out_im_V_1_ce0;
reg cp_out_im_V_2_ce0;
reg cp_out_im_V_3_ce0;
reg cp_out_im_V_4_ce0;
reg cp_out_im_V_5_ce0;
reg cp_out_im_V_6_ce0;
reg cp_out_im_V_7_ce0;
reg cp_out_im_V_8_ce0;
reg cp_out_im_V_9_ce0;
reg cp_out_im_V_10_ce0;
reg cp_out_im_V_11_ce0;
reg cp_out_im_V_12_ce0;
reg cp_out_im_V_13_ce0;
reg cp_outim_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln232_fu_518_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    cp_outre_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    cp_outim_TDATA_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln234_fu_553_p1;
reg   [13:0] phi_urem20_fu_110;
wire   [13:0] select_ln232_fu_545_p3;
wire    ap_loop_init;
reg   [13:0] ap_sig_allocacmp_phi_urem20_load;
reg   [28:0] phi_mul18_fu_114;
wire   [28:0] add_ln234_fu_598_p2;
reg   [13:0] i_fu_118;
wire   [13:0] add_ln232_fu_524_p2;
reg   [13:0] ap_sig_allocacmp_i_2;
wire   [15:0] p_s_fu_642_p16;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] p_0_fu_705_p16;
wire   [13:0] add_ln232_1_fu_533_p2;
wire   [0:0] icmp_ln232_1_fu_539_p2;
wire   [15:0] p_s_fu_642_p8;
wire   [15:0] p_s_fu_642_p9;
wire   [15:0] p_s_fu_642_p10;
wire   [15:0] p_s_fu_642_p11;
wire   [15:0] p_s_fu_642_p12;
wire   [15:0] p_s_fu_642_p13;
wire   [15:0] p_s_fu_642_p14;
wire   [3:0] p_s_fu_642_p15;
wire   [15:0] p_0_fu_705_p8;
wire   [15:0] p_0_fu_705_p9;
wire   [15:0] p_0_fu_705_p10;
wire   [15:0] p_0_fu_705_p11;
wire   [15:0] p_0_fu_705_p12;
wire   [15:0] p_0_fu_705_p13;
wire   [15:0] p_0_fu_705_p14;
wire   [3:0] p_0_fu_705_p15;
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

top_tx_mux_144_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 16 ),
    .din9_WIDTH( 16 ),
    .din10_WIDTH( 16 ),
    .din11_WIDTH( 16 ),
    .din12_WIDTH( 16 ),
    .din13_WIDTH( 16 ),
    .din14_WIDTH( 4 ),
    .dout_WIDTH( 16 ))
mux_144_16_1_1_U248(
    .din0(cp_out_re_V_q0),
    .din1(cp_out_re_V_1_q0),
    .din2(cp_out_re_V_2_q0),
    .din3(cp_out_re_V_3_q0),
    .din4(cp_out_re_V_4_q0),
    .din5(cp_out_re_V_5_q0),
    .din6(cp_out_re_V_6_q0),
    .din7(p_s_fu_642_p8),
    .din8(p_s_fu_642_p9),
    .din9(p_s_fu_642_p10),
    .din10(p_s_fu_642_p11),
    .din11(p_s_fu_642_p12),
    .din12(p_s_fu_642_p13),
    .din13(p_s_fu_642_p14),
    .din14(p_s_fu_642_p15),
    .dout(p_s_fu_642_p16)
);

top_tx_mux_144_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 16 ),
    .din9_WIDTH( 16 ),
    .din10_WIDTH( 16 ),
    .din11_WIDTH( 16 ),
    .din12_WIDTH( 16 ),
    .din13_WIDTH( 16 ),
    .din14_WIDTH( 4 ),
    .dout_WIDTH( 16 ))
mux_144_16_1_1_U249(
    .din0(cp_out_im_V_q0),
    .din1(cp_out_im_V_1_q0),
    .din2(cp_out_im_V_2_q0),
    .din3(cp_out_im_V_3_q0),
    .din4(cp_out_im_V_4_q0),
    .din5(cp_out_im_V_5_q0),
    .din6(cp_out_im_V_6_q0),
    .din7(p_0_fu_705_p8),
    .din8(p_0_fu_705_p9),
    .din9(p_0_fu_705_p10),
    .din10(p_0_fu_705_p11),
    .din11(p_0_fu_705_p12),
    .din12(p_0_fu_705_p13),
    .din13(p_0_fu_705_p14),
    .din14(p_0_fu_705_p15),
    .dout(p_0_fu_705_p16)
);

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
        if (((icmp_ln232_fu_518_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_118 <= add_ln232_fu_524_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_118 <= 14'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            phi_mul18_fu_114 <= 29'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            phi_mul18_fu_114 <= add_ln234_fu_598_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln232_fu_518_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            phi_urem20_fu_110 <= select_ln232_fu_545_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_urem20_fu_110 <= 14'd0;
        end
    end
end

always @ (*) begin
    if (((icmp_ln232_fu_518_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 14'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_118;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_urem20_load = 14'd0;
    end else begin
        ap_sig_allocacmp_phi_urem20_load = phi_urem20_fu_110;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_10_ce0 = 1'b1;
    end else begin
        cp_out_im_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_11_ce0 = 1'b1;
    end else begin
        cp_out_im_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_12_ce0 = 1'b1;
    end else begin
        cp_out_im_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_13_ce0 = 1'b1;
    end else begin
        cp_out_im_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_1_ce0 = 1'b1;
    end else begin
        cp_out_im_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_2_ce0 = 1'b1;
    end else begin
        cp_out_im_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_3_ce0 = 1'b1;
    end else begin
        cp_out_im_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_4_ce0 = 1'b1;
    end else begin
        cp_out_im_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_5_ce0 = 1'b1;
    end else begin
        cp_out_im_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_6_ce0 = 1'b1;
    end else begin
        cp_out_im_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_7_ce0 = 1'b1;
    end else begin
        cp_out_im_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_8_ce0 = 1'b1;
    end else begin
        cp_out_im_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_9_ce0 = 1'b1;
    end else begin
        cp_out_im_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_im_V_ce0 = 1'b1;
    end else begin
        cp_out_im_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_10_ce0 = 1'b1;
    end else begin
        cp_out_re_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_11_ce0 = 1'b1;
    end else begin
        cp_out_re_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_12_ce0 = 1'b1;
    end else begin
        cp_out_re_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_13_ce0 = 1'b1;
    end else begin
        cp_out_re_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_1_ce0 = 1'b1;
    end else begin
        cp_out_re_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_2_ce0 = 1'b1;
    end else begin
        cp_out_re_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_3_ce0 = 1'b1;
    end else begin
        cp_out_re_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_4_ce0 = 1'b1;
    end else begin
        cp_out_re_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_5_ce0 = 1'b1;
    end else begin
        cp_out_re_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_6_ce0 = 1'b1;
    end else begin
        cp_out_re_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_7_ce0 = 1'b1;
    end else begin
        cp_out_re_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_8_ce0 = 1'b1;
    end else begin
        cp_out_re_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_9_ce0 = 1'b1;
    end else begin
        cp_out_re_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_out_re_V_ce0 = 1'b1;
    end else begin
        cp_out_re_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_outim_TDATA_blk_n = cp_outim_TREADY;
    end else begin
        cp_outim_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_outim_TVALID = 1'b1;
    end else begin
        cp_outim_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_outre_TDATA_blk_n = cp_outre_TREADY;
    end else begin
        cp_outre_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cp_outre_TVALID = 1'b1;
    end else begin
        cp_outre_TVALID = 1'b0;
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

assign add_ln232_1_fu_533_p2 = (ap_sig_allocacmp_phi_urem20_load + 14'd1);

assign add_ln232_fu_524_p2 = (ap_sig_allocacmp_i_2 + 14'd1);

assign add_ln234_fu_598_p2 = (phi_mul18_fu_114 + 29'd28729);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((cp_outim_TREADY == 1'b0) | (cp_outre_TREADY == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((cp_outim_TREADY == 1'b0) | (cp_outre_TREADY == 1'b0) | (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((cp_outim_TREADY == 1'b0) | (cp_outre_TREADY == 1'b0) | (1'b1 == ap_block_state2_io)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_io = ((cp_outim_TREADY == 1'b0) | (cp_outre_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((cp_outim_TREADY == 1'b0) | (cp_outre_TREADY == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign cp_out_im_V_10_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_11_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_12_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_13_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_1_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_2_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_3_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_4_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_5_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_6_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_7_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_8_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_9_address0 = zext_ln234_fu_553_p1;

assign cp_out_im_V_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_10_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_11_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_12_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_13_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_1_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_2_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_3_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_4_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_5_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_6_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_7_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_8_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_9_address0 = zext_ln234_fu_553_p1;

assign cp_out_re_V_address0 = zext_ln234_fu_553_p1;

assign cp_outim_TDATA = p_0_fu_705_p16;

assign cp_outre_TDATA = p_s_fu_642_p16;

assign icmp_ln232_1_fu_539_p2 = ((add_ln232_1_fu_533_p2 < 14'd1168) ? 1'b1 : 1'b0);

assign icmp_ln232_fu_518_p2 = ((ap_sig_allocacmp_i_2 == 14'd16352) ? 1'b1 : 1'b0);

assign p_0_fu_705_p10 = cp_out_im_V_9_q0;

assign p_0_fu_705_p11 = cp_out_im_V_10_q0;

assign p_0_fu_705_p12 = cp_out_im_V_11_q0;

assign p_0_fu_705_p13 = cp_out_im_V_12_q0;

assign p_0_fu_705_p14 = cp_out_im_V_13_q0;

assign p_0_fu_705_p15 = {{phi_mul18_fu_114[28:25]}};

assign p_0_fu_705_p8 = cp_out_im_V_7_q0;

assign p_0_fu_705_p9 = cp_out_im_V_8_q0;

assign p_s_fu_642_p10 = cp_out_re_V_9_q0;

assign p_s_fu_642_p11 = cp_out_re_V_10_q0;

assign p_s_fu_642_p12 = cp_out_re_V_11_q0;

assign p_s_fu_642_p13 = cp_out_re_V_12_q0;

assign p_s_fu_642_p14 = cp_out_re_V_13_q0;

assign p_s_fu_642_p15 = {{phi_mul18_fu_114[28:25]}};

assign p_s_fu_642_p8 = cp_out_re_V_7_q0;

assign p_s_fu_642_p9 = cp_out_re_V_8_q0;

assign select_ln232_fu_545_p3 = ((icmp_ln232_1_fu_539_p2[0:0] == 1'b1) ? add_ln232_1_fu_533_p2 : 14'd0);

assign zext_ln234_fu_553_p1 = ap_sig_allocacmp_phi_urem20_load;

endmodule //top_tx_top_tx_Pipeline_output_stream
