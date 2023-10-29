// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_mods_Pipeline_mods_call_funct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input1_buff_V_address0,
        input1_buff_V_ce0,
        input1_buff_V_q0,
        input2_buff_V_address0,
        input2_buff_V_ce0,
        input2_buff_V_q0,
        temp1_re597_din,
        temp1_re597_full_n,
        temp1_re597_write,
        temp1_im598_din,
        temp1_im598_full_n,
        temp1_im598_write,
        brmerge189,
        input3_buff_V_address0,
        input3_buff_V_ce0,
        input3_buff_V_q0,
        input4_buff_V_address0,
        input4_buff_V_ce0,
        input4_buff_V_q0,
        brmerge191,
        input5_buff_V_address0,
        input5_buff_V_ce0,
        input5_buff_V_q0,
        input6_buff_V_address0,
        input6_buff_V_ce0,
        input6_buff_V_q0,
        brmerge193
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] input1_buff_V_address0;
output   input1_buff_V_ce0;
input  [0:0] input1_buff_V_q0;
output  [11:0] input2_buff_V_address0;
output   input2_buff_V_ce0;
input  [0:0] input2_buff_V_q0;
output  [15:0] temp1_re597_din;
input   temp1_re597_full_n;
output   temp1_re597_write;
output  [15:0] temp1_im598_din;
input   temp1_im598_full_n;
output   temp1_im598_write;
input  [0:0] brmerge189;
output  [11:0] input3_buff_V_address0;
output   input3_buff_V_ce0;
input  [0:0] input3_buff_V_q0;
output  [11:0] input4_buff_V_address0;
output   input4_buff_V_ce0;
input  [0:0] input4_buff_V_q0;
input  [0:0] brmerge191;
output  [11:0] input5_buff_V_address0;
output   input5_buff_V_ce0;
input  [0:0] input5_buff_V_q0;
output  [11:0] input6_buff_V_address0;
output   input6_buff_V_ce0;
input  [0:0] input6_buff_V_q0;
input  [0:0] brmerge193;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] input1_buff_V_address0;
reg input1_buff_V_ce0;
reg[11:0] input2_buff_V_address0;
reg input2_buff_V_ce0;
reg[15:0] temp1_re597_din;
reg temp1_re597_write;
reg[15:0] temp1_im598_din;
reg temp1_im598_write;
reg[11:0] input3_buff_V_address0;
reg input3_buff_V_ce0;
reg[11:0] input4_buff_V_address0;
reg input4_buff_V_ce0;
reg input5_buff_V_ce0;
reg input6_buff_V_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    temp1_re597_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln117_fu_298_p2;
reg    temp1_im598_blk_n;
wire   [11:0] add_ln117_fu_304_p2;
reg   [11:0] add_ln117_reg_352;
wire   [11:0] input1_buff_V_addr_1_gep_fu_134_p3;
wire   [11:0] input2_buff_V_addr_1_gep_fu_142_p3;
wire   [11:0] input1_buff_V_addr_2_gep_fu_176_p3;
wire   [11:0] input2_buff_V_addr_2_gep_fu_184_p3;
wire   [11:0] input3_buff_V_addr_1_gep_fu_192_p3;
wire   [11:0] input4_buff_V_addr_1_gep_fu_200_p3;
reg   [0:0] input1_buff_V_load_reg_417;
wire    ap_CS_fsm_state3;
reg   [0:0] input2_buff_V_load_reg_422;
reg   [0:0] input1_buff_V_load_1_reg_427;
wire    ap_CS_fsm_state5;
reg   [0:0] input2_buff_V_load_1_reg_432;
reg   [0:0] input3_buff_V_load_reg_437;
reg   [0:0] input4_buff_V_load_reg_442;
reg   [0:0] input1_buff_V_load_2_reg_447;
wire    ap_CS_fsm_state6;
reg   [0:0] input2_buff_V_load_2_reg_452;
reg   [0:0] input3_buff_V_load_1_reg_457;
reg   [0:0] input4_buff_V_load_1_reg_462;
reg   [0:0] input5_buff_V_load_reg_467;
reg   [0:0] input6_buff_V_load_reg_472;
wire   [15:0] grp_qpsk_fu_234_temp1_re597_din;
wire    grp_qpsk_fu_234_temp1_re597_write;
wire   [15:0] grp_qpsk_fu_234_temp1_im598_din;
wire    grp_qpsk_fu_234_temp1_im598_write;
wire    grp_qpsk_fu_234_ap_start;
wire    grp_qpsk_fu_234_ap_done;
wire    grp_qpsk_fu_234_ap_ready;
wire    grp_qpsk_fu_234_ap_idle;
reg    grp_qpsk_fu_234_ap_continue;
wire    grp_qam16_fu_248_ap_start;
wire    grp_qam16_fu_248_ap_done;
wire    grp_qam16_fu_248_ap_idle;
wire    grp_qam16_fu_248_ap_ready;
wire   [15:0] grp_qam16_fu_248_temp1_re597_din;
wire    grp_qam16_fu_248_temp1_re597_write;
wire   [15:0] grp_qam16_fu_248_temp1_im598_din;
wire    grp_qam16_fu_248_temp1_im598_write;
wire    grp_qam64_fu_268_ap_start;
wire    grp_qam64_fu_268_ap_done;
wire    grp_qam64_fu_268_ap_idle;
wire    grp_qam64_fu_268_ap_ready;
wire   [15:0] grp_qam64_fu_268_temp1_re597_din;
wire    grp_qam64_fu_268_temp1_re597_write;
wire   [15:0] grp_qam64_fu_268_temp1_im598_din;
wire    grp_qam64_fu_268_temp1_im598_write;
reg    grp_qpsk_fu_234_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_sync_grp_qpsk_fu_234_ap_ready;
wire    ap_sync_grp_qpsk_fu_234_ap_done;
reg    ap_predicate_op58_call_state4;
reg    ap_predicate_op60_call_state4;
reg    ap_block_state4_on_subcall_done;
reg    ap_sync_reg_grp_qpsk_fu_234_ap_ready;
reg    ap_sync_reg_grp_qpsk_fu_234_ap_done;
reg    grp_qam16_fu_248_ap_start_reg;
reg    grp_qam64_fu_268_ap_start_reg;
wire   [63:0] i_4_cast_fu_310_p1;
reg   [11:0] i_fu_70;
reg    ap_predicate_op49_write_state2;
reg    ap_predicate_op50_write_state2;
reg    ap_block_state2;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_condition_230;
reg    ap_condition_372;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_qpsk_fu_234_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_qpsk_fu_234_ap_ready = 1'b0;
#0 ap_sync_reg_grp_qpsk_fu_234_ap_done = 1'b0;
#0 grp_qam16_fu_248_ap_start_reg = 1'b0;
#0 grp_qam64_fu_268_ap_start_reg = 1'b0;
end

top_tx_qpsk grp_qpsk_fu_234(
    .input1(input1_buff_V_load_reg_417),
    .input2(input2_buff_V_load_reg_422),
    .temp1_re597_din(grp_qpsk_fu_234_temp1_re597_din),
    .temp1_re597_full_n(temp1_re597_full_n),
    .temp1_re597_write(grp_qpsk_fu_234_temp1_re597_write),
    .temp1_im598_din(grp_qpsk_fu_234_temp1_im598_din),
    .temp1_im598_full_n(temp1_im598_full_n),
    .temp1_im598_write(grp_qpsk_fu_234_temp1_im598_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .input2_ap_vld(1'b1),
    .input1_ap_vld(1'b1),
    .ap_start(grp_qpsk_fu_234_ap_start),
    .ap_done(grp_qpsk_fu_234_ap_done),
    .ap_ready(grp_qpsk_fu_234_ap_ready),
    .ap_idle(grp_qpsk_fu_234_ap_idle),
    .ap_continue(grp_qpsk_fu_234_ap_continue)
);

top_tx_qam16 grp_qam16_fu_248(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qam16_fu_248_ap_start),
    .ap_done(grp_qam16_fu_248_ap_done),
    .ap_idle(grp_qam16_fu_248_ap_idle),
    .ap_ready(grp_qam16_fu_248_ap_ready),
    .input1(input1_buff_V_load_1_reg_427),
    .input2(input2_buff_V_load_1_reg_432),
    .input3(input3_buff_V_load_reg_437),
    .input4(input4_buff_V_load_reg_442),
    .temp1_re597_din(grp_qam16_fu_248_temp1_re597_din),
    .temp1_re597_full_n(temp1_re597_full_n),
    .temp1_re597_write(grp_qam16_fu_248_temp1_re597_write),
    .temp1_im598_din(grp_qam16_fu_248_temp1_im598_din),
    .temp1_im598_full_n(temp1_im598_full_n),
    .temp1_im598_write(grp_qam16_fu_248_temp1_im598_write)
);

top_tx_qam64 grp_qam64_fu_268(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_qam64_fu_268_ap_start),
    .ap_done(grp_qam64_fu_268_ap_done),
    .ap_idle(grp_qam64_fu_268_ap_idle),
    .ap_ready(grp_qam64_fu_268_ap_ready),
    .input1(input1_buff_V_load_2_reg_447),
    .input2(input2_buff_V_load_2_reg_452),
    .input3(input3_buff_V_load_1_reg_457),
    .input4(input4_buff_V_load_1_reg_462),
    .input5(input5_buff_V_load_reg_467),
    .input6(input6_buff_V_load_reg_472),
    .temp1_re597_din(grp_qam64_fu_268_temp1_re597_din),
    .temp1_re597_full_n(temp1_re597_full_n),
    .temp1_re597_write(grp_qam64_fu_268_temp1_re597_write),
    .temp1_im598_din(grp_qam64_fu_268_temp1_im598_din),
    .temp1_im598_full_n(temp1_im598_full_n),
    .temp1_im598_write(grp_qam64_fu_268_temp1_im598_write)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_qpsk_fu_234_ap_done <= 1'b0;
    end else begin
        if (((brmerge189 == 1'd0) & (1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_sync_reg_grp_qpsk_fu_234_ap_done <= 1'b0;
        end else if ((grp_qpsk_fu_234_ap_done == 1'b1)) begin
            ap_sync_reg_grp_qpsk_fu_234_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_qpsk_fu_234_ap_ready <= 1'b0;
    end else begin
        if (((brmerge189 == 1'd0) & (1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_sync_reg_grp_qpsk_fu_234_ap_ready <= 1'b0;
        end else if ((grp_qpsk_fu_234_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_qpsk_fu_234_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qam16_fu_248_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_qam16_fu_248_ap_start_reg <= 1'b1;
        end else if ((grp_qam16_fu_248_ap_ready == 1'b1)) begin
            grp_qam16_fu_248_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qam64_fu_268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_qam64_fu_268_ap_start_reg <= 1'b1;
        end else if ((grp_qam64_fu_268_ap_ready == 1'b1)) begin
            grp_qam64_fu_268_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_qpsk_fu_234_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) | ((brmerge189 == 1'd0) & (ap_sync_grp_qpsk_fu_234_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state4)))) begin
            grp_qpsk_fu_234_ap_start_reg <= 1'b1;
        end else if ((grp_qpsk_fu_234_ap_ready == 1'b1)) begin
            grp_qpsk_fu_234_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_70 <= 12'd0;
    end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
        i_fu_70 <= add_ln117_reg_352;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln117_reg_352 <= add_ln117_fu_304_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input1_buff_V_load_1_reg_427 <= input1_buff_V_q0;
        input2_buff_V_load_1_reg_432 <= input2_buff_V_q0;
        input3_buff_V_load_reg_437 <= input3_buff_V_q0;
        input4_buff_V_load_reg_442 <= input4_buff_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input1_buff_V_load_2_reg_447 <= input1_buff_V_q0;
        input2_buff_V_load_2_reg_452 <= input2_buff_V_q0;
        input3_buff_V_load_1_reg_457 <= input3_buff_V_q0;
        input4_buff_V_load_1_reg_462 <= input4_buff_V_q0;
        input5_buff_V_load_reg_467 <= input5_buff_V_q0;
        input6_buff_V_load_reg_472 <= input6_buff_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input1_buff_V_load_reg_417 <= input1_buff_V_q0;
        input2_buff_V_load_reg_422 <= input2_buff_V_q0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state4_on_subcall_done)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (icmp_ln117_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (icmp_ln117_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((brmerge189 == 1'd0) & (1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_qpsk_fu_234_ap_continue = 1'b1;
    end else begin
        grp_qpsk_fu_234_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((1'b1 == ap_condition_230)) begin
            input1_buff_V_address0 = input1_buff_V_addr_2_gep_fu_176_p3;
        end else if (((brmerge191 == 1'd0) & (brmerge189 == 1'd1))) begin
            input1_buff_V_address0 = input1_buff_V_addr_1_gep_fu_134_p3;
        end else if ((brmerge189 == 1'd0)) begin
            input1_buff_V_address0 = i_4_cast_fu_310_p1;
        end else begin
            input1_buff_V_address0 = 'bx;
        end
    end else begin
        input1_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge191 == 1'd0) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge189 == 1'd0) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        input1_buff_V_ce0 = 1'b1;
    end else begin
        input1_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        if ((1'b1 == ap_condition_230)) begin
            input2_buff_V_address0 = input2_buff_V_addr_2_gep_fu_184_p3;
        end else if (((brmerge191 == 1'd0) & (brmerge189 == 1'd1))) begin
            input2_buff_V_address0 = input2_buff_V_addr_1_gep_fu_142_p3;
        end else if ((brmerge189 == 1'd0)) begin
            input2_buff_V_address0 = i_4_cast_fu_310_p1;
        end else begin
            input2_buff_V_address0 = 'bx;
        end
    end else begin
        input2_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge191 == 1'd0) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge189 == 1'd0) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        input2_buff_V_ce0 = 1'b1;
    end else begin
        input2_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_372)) begin
        if (((brmerge193 == 1'd0) & (brmerge191 == 1'd1))) begin
            input3_buff_V_address0 = input3_buff_V_addr_1_gep_fu_192_p3;
        end else if ((brmerge191 == 1'd0)) begin
            input3_buff_V_address0 = i_4_cast_fu_310_p1;
        end else begin
            input3_buff_V_address0 = 'bx;
        end
    end else begin
        input3_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge191 == 1'd0) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        input3_buff_V_ce0 = 1'b1;
    end else begin
        input3_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_372)) begin
        if (((brmerge193 == 1'd0) & (brmerge191 == 1'd1))) begin
            input4_buff_V_address0 = input4_buff_V_addr_1_gep_fu_200_p3;
        end else if ((brmerge191 == 1'd0)) begin
            input4_buff_V_address0 = i_4_cast_fu_310_p1;
        end else begin
            input4_buff_V_address0 = 'bx;
        end
    end else begin
        input4_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge191 == 1'd0) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        input4_buff_V_ce0 = 1'b1;
    end else begin
        input4_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
        input5_buff_V_ce0 = 1'b1;
    end else begin
        input5_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (1'b1 == ap_CS_fsm_state2))) begin
        input6_buff_V_ce0 = 1'b1;
    end else begin
        input6_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((brmerge193 == 1'd1) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_im598_blk_n = temp1_im598_full_n;
    end else begin
        temp1_im598_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (ap_predicate_op50_write_state2 == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_im598_din = 16'd0;
    end else if (((ap_predicate_op60_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_din = grp_qam64_fu_268_temp1_im598_din;
    end else if (((ap_predicate_op58_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_din = grp_qam16_fu_248_temp1_im598_din;
    end else if (((brmerge189 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_din = grp_qpsk_fu_234_temp1_im598_din;
    end else begin
        temp1_im598_din = grp_qam64_fu_268_temp1_im598_din;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (ap_predicate_op50_write_state2 == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_im598_write = 1'b1;
    end else if (((ap_predicate_op60_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_write = grp_qam64_fu_268_temp1_im598_write;
    end else if (((ap_predicate_op58_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_write = grp_qam16_fu_248_temp1_im598_write;
    end else if (((brmerge189 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_im598_write = grp_qpsk_fu_234_temp1_im598_write;
    end else begin
        temp1_im598_write = 1'b0;
    end
end

always @ (*) begin
    if (((brmerge193 == 1'd1) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_re597_blk_n = temp1_re597_full_n;
    end else begin
        temp1_re597_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (ap_predicate_op49_write_state2 == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_re597_din = 16'd0;
    end else if (((ap_predicate_op60_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_din = grp_qam64_fu_268_temp1_re597_din;
    end else if (((ap_predicate_op58_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_din = grp_qam16_fu_248_temp1_re597_din;
    end else if (((brmerge189 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_din = grp_qpsk_fu_234_temp1_re597_din;
    end else begin
        temp1_re597_din = grp_qam64_fu_268_temp1_re597_din;
    end
end

always @ (*) begin
    if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (ap_predicate_op49_write_state2 == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_re597_write = 1'b1;
    end else if (((ap_predicate_op60_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_write = grp_qam64_fu_268_temp1_re597_write;
    end else if (((ap_predicate_op58_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_write = grp_qam16_fu_248_temp1_re597_write;
    end else if (((brmerge189 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        temp1_re597_write = grp_qpsk_fu_234_temp1_re597_write;
    end else begin
        temp1_re597_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (icmp_ln117_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd1) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge191 == 1'd0) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~(((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1))) & (brmerge189 == 1'd0) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln117_fu_304_p2 = (i_fu_70 + 12'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state2 = (((temp1_im598_full_n == 1'b0) & (ap_predicate_op50_write_state2 == 1'b1)) | ((temp1_re597_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state4_on_subcall_done = (((ap_predicate_op60_call_state4 == 1'b1) & (grp_qam64_fu_268_ap_done == 1'b0)) | ((ap_predicate_op58_call_state4 == 1'b1) & (grp_qam16_fu_248_ap_done == 1'b0)) | ((brmerge189 == 1'd0) & ((ap_sync_grp_qpsk_fu_234_ap_ready & ap_sync_grp_qpsk_fu_234_ap_done) == 1'b0)));
end

always @ (*) begin
    ap_condition_230 = ((brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1));
end

always @ (*) begin
    ap_condition_372 = ((brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2));
end

always @ (*) begin
    ap_predicate_op49_write_state2 = ((brmerge193 == 1'd1) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op50_write_state2 = ((brmerge193 == 1'd1) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1) & (icmp_ln117_fu_298_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op58_call_state4 = ((brmerge191 == 1'd0) & (brmerge189 == 1'd1));
end

always @ (*) begin
    ap_predicate_op60_call_state4 = ((brmerge193 == 1'd0) & (brmerge191 == 1'd1) & (brmerge189 == 1'd1));
end

assign ap_sync_grp_qpsk_fu_234_ap_done = (grp_qpsk_fu_234_ap_done | ap_sync_reg_grp_qpsk_fu_234_ap_done);

assign ap_sync_grp_qpsk_fu_234_ap_ready = (grp_qpsk_fu_234_ap_ready | ap_sync_reg_grp_qpsk_fu_234_ap_ready);

assign grp_qam16_fu_248_ap_start = grp_qam16_fu_248_ap_start_reg;

assign grp_qam64_fu_268_ap_start = grp_qam64_fu_268_ap_start_reg;

assign grp_qpsk_fu_234_ap_start = grp_qpsk_fu_234_ap_start_reg;

assign i_4_cast_fu_310_p1 = i_fu_70;

assign icmp_ln117_fu_298_p2 = ((i_fu_70 == 12'd3600) ? 1'b1 : 1'b0);

assign input1_buff_V_addr_1_gep_fu_134_p3 = i_4_cast_fu_310_p1;

assign input1_buff_V_addr_2_gep_fu_176_p3 = i_4_cast_fu_310_p1;

assign input2_buff_V_addr_1_gep_fu_142_p3 = i_4_cast_fu_310_p1;

assign input2_buff_V_addr_2_gep_fu_184_p3 = i_4_cast_fu_310_p1;

assign input3_buff_V_addr_1_gep_fu_192_p3 = i_4_cast_fu_310_p1;

assign input4_buff_V_addr_1_gep_fu_200_p3 = i_4_cast_fu_310_p1;

assign input5_buff_V_address0 = i_4_cast_fu_310_p1;

assign input6_buff_V_address0 = i_4_cast_fu_310_p1;

endmodule //top_tx_mods_Pipeline_mods_call_funct