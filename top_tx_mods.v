// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module top_tx_mods (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        en_qpsk,
        en_qam16,
        en_qam64,
        input1_TDATA,
        input1_TVALID,
        input1_TREADY,
        input2_TDATA,
        input2_TVALID,
        input2_TREADY,
        input3_TDATA,
        input3_TVALID,
        input3_TREADY,
        input4_TDATA,
        input4_TVALID,
        input4_TREADY,
        input5_TDATA,
        input5_TVALID,
        input5_TREADY,
        input6_TDATA,
        input6_TVALID,
        input6_TREADY,
        temp1_re597_din,
        temp1_re597_full_n,
        temp1_re597_write,
        temp1_im598_din,
        temp1_im598_full_n,
        temp1_im598_write
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
input  [0:0] en_qpsk;
input  [0:0] en_qam16;
input  [0:0] en_qam64;
input  [7:0] input1_TDATA;
input   input1_TVALID;
output   input1_TREADY;
input  [7:0] input2_TDATA;
input   input2_TVALID;
output   input2_TREADY;
input  [7:0] input3_TDATA;
input   input3_TVALID;
output   input3_TREADY;
input  [7:0] input4_TDATA;
input   input4_TVALID;
output   input4_TREADY;
input  [7:0] input5_TDATA;
input   input5_TVALID;
output   input5_TREADY;
input  [7:0] input6_TDATA;
input   input6_TVALID;
output   input6_TREADY;
output  [15:0] temp1_re597_din;
input   temp1_re597_full_n;
output   temp1_re597_write;
output  [15:0] temp1_im598_din;
input   temp1_im598_full_n;
output   temp1_im598_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input1_TREADY;
reg input2_TREADY;
reg input3_TREADY;
reg input4_TREADY;
reg input5_TREADY;
reg input6_TREADY;
reg temp1_re597_write;
reg temp1_im598_write;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] brmerge189_fu_154_p2;
reg   [0:0] brmerge189_reg_214;
wire    ap_CS_fsm_state5;
wire   [0:0] brmerge191_fu_171_p2;
reg   [0:0] brmerge191_reg_219;
wire   [0:0] brmerge193_fu_187_p2;
reg   [0:0] brmerge193_reg_224;
reg   [11:0] input1_buff_V_address0;
reg    input1_buff_V_ce0;
reg    input1_buff_V_we0;
wire   [0:0] input1_buff_V_q0;
reg   [11:0] input2_buff_V_address0;
reg    input2_buff_V_ce0;
reg    input2_buff_V_we0;
wire   [0:0] input2_buff_V_q0;
reg   [11:0] input3_buff_V_address0;
reg    input3_buff_V_ce0;
reg    input3_buff_V_we0;
wire   [0:0] input3_buff_V_q0;
reg   [11:0] input4_buff_V_address0;
reg    input4_buff_V_ce0;
reg    input4_buff_V_we0;
wire   [0:0] input4_buff_V_q0;
reg   [11:0] input5_buff_V_address0;
reg    input5_buff_V_ce0;
reg    input5_buff_V_we0;
wire   [0:0] input5_buff_V_q0;
reg   [11:0] input6_buff_V_address0;
reg    input6_buff_V_ce0;
reg    input6_buff_V_we0;
wire   [0:0] input6_buff_V_q0;
wire    grp_mods_Pipeline_input_buff_fu_98_ap_start;
wire    grp_mods_Pipeline_input_buff_fu_98_ap_done;
wire    grp_mods_Pipeline_input_buff_fu_98_ap_idle;
wire    grp_mods_Pipeline_input_buff_fu_98_ap_ready;
wire    grp_mods_Pipeline_input_buff_fu_98_input1_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_d0;
wire    grp_mods_Pipeline_input_buff_fu_98_input2_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_d0;
wire    grp_mods_Pipeline_input_buff_fu_98_input3_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_d0;
wire    grp_mods_Pipeline_input_buff_fu_98_input4_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_d0;
wire    grp_mods_Pipeline_input_buff_fu_98_input5_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_d0;
wire    grp_mods_Pipeline_input_buff_fu_98_input6_TREADY;
wire   [11:0] grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_address0;
wire    grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_ce0;
wire    grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_we0;
wire   [0:0] grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_d0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_ap_start;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_ap_done;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_ap_idle;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_ap_ready;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_ce0;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_ce0;
wire   [15:0] grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_din;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_write;
wire   [15:0] grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_din;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_write;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_ce0;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_ce0;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_ce0;
wire   [11:0] grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_address0;
wire    grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_ce0;
reg    grp_mods_Pipeline_input_buff_fu_98_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_fu_150_p2;
wire   [0:0] en_qpsk_not_fu_145_p2;
wire   [0:0] en_qam16_not_fu_161_p2;
wire   [0:0] tmp1_fu_166_p2;
wire   [0:0] en_qam64_not_fu_177_p2;
wire   [0:0] tmp2_fu_182_p2;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_mods_Pipeline_input_buff_fu_98_ap_start_reg = 1'b0;
#0 grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg = 1'b0;
end

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input1_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input1_buff_V_address0),
    .ce0(input1_buff_V_ce0),
    .we0(input1_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_d0),
    .q0(input1_buff_V_q0)
);

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input2_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input2_buff_V_address0),
    .ce0(input2_buff_V_ce0),
    .we0(input2_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_d0),
    .q0(input2_buff_V_q0)
);

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input3_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input3_buff_V_address0),
    .ce0(input3_buff_V_ce0),
    .we0(input3_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_d0),
    .q0(input3_buff_V_q0)
);

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input4_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input4_buff_V_address0),
    .ce0(input4_buff_V_ce0),
    .we0(input4_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_d0),
    .q0(input4_buff_V_q0)
);

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input5_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input5_buff_V_address0),
    .ce0(input5_buff_V_ce0),
    .we0(input5_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_d0),
    .q0(input5_buff_V_q0)
);

top_tx_mods_input1_buff_V_RAM_AUTO_1R1W #(
    .DataWidth( 1 ),
    .AddressRange( 3600 ),
    .AddressWidth( 12 ))
input6_buff_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input6_buff_V_address0),
    .ce0(input6_buff_V_ce0),
    .we0(input6_buff_V_we0),
    .d0(grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_d0),
    .q0(input6_buff_V_q0)
);

top_tx_mods_Pipeline_input_buff grp_mods_Pipeline_input_buff_fu_98(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mods_Pipeline_input_buff_fu_98_ap_start),
    .ap_done(grp_mods_Pipeline_input_buff_fu_98_ap_done),
    .ap_idle(grp_mods_Pipeline_input_buff_fu_98_ap_idle),
    .ap_ready(grp_mods_Pipeline_input_buff_fu_98_ap_ready),
    .input1_TVALID(input1_TVALID),
    .input2_TVALID(input2_TVALID),
    .input3_TVALID(input3_TVALID),
    .input4_TVALID(input4_TVALID),
    .input5_TVALID(input5_TVALID),
    .input6_TVALID(input6_TVALID),
    .input1_TDATA(input1_TDATA),
    .input1_TREADY(grp_mods_Pipeline_input_buff_fu_98_input1_TREADY),
    .input1_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_address0),
    .input1_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_ce0),
    .input1_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_we0),
    .input1_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_d0),
    .input2_TDATA(input2_TDATA),
    .input2_TREADY(grp_mods_Pipeline_input_buff_fu_98_input2_TREADY),
    .input2_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_address0),
    .input2_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_ce0),
    .input2_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_we0),
    .input2_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_d0),
    .input3_TDATA(input3_TDATA),
    .input3_TREADY(grp_mods_Pipeline_input_buff_fu_98_input3_TREADY),
    .input3_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_address0),
    .input3_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_ce0),
    .input3_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_we0),
    .input3_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_d0),
    .input4_TDATA(input4_TDATA),
    .input4_TREADY(grp_mods_Pipeline_input_buff_fu_98_input4_TREADY),
    .input4_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_address0),
    .input4_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_ce0),
    .input4_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_we0),
    .input4_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_d0),
    .input5_TDATA(input5_TDATA),
    .input5_TREADY(grp_mods_Pipeline_input_buff_fu_98_input5_TREADY),
    .input5_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_address0),
    .input5_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_ce0),
    .input5_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_we0),
    .input5_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_d0),
    .input6_TDATA(input6_TDATA),
    .input6_TREADY(grp_mods_Pipeline_input_buff_fu_98_input6_TREADY),
    .input6_buff_V_address0(grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_address0),
    .input6_buff_V_ce0(grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_ce0),
    .input6_buff_V_we0(grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_we0),
    .input6_buff_V_d0(grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_d0)
);

top_tx_mods_Pipeline_mods_call_funct grp_mods_Pipeline_mods_call_funct_fu_120(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mods_Pipeline_mods_call_funct_fu_120_ap_start),
    .ap_done(grp_mods_Pipeline_mods_call_funct_fu_120_ap_done),
    .ap_idle(grp_mods_Pipeline_mods_call_funct_fu_120_ap_idle),
    .ap_ready(grp_mods_Pipeline_mods_call_funct_fu_120_ap_ready),
    .input1_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_address0),
    .input1_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_ce0),
    .input1_buff_V_q0(input1_buff_V_q0),
    .input2_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_address0),
    .input2_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_ce0),
    .input2_buff_V_q0(input2_buff_V_q0),
    .temp1_re597_din(grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_din),
    .temp1_re597_full_n(temp1_re597_full_n),
    .temp1_re597_write(grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_write),
    .temp1_im598_din(grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_din),
    .temp1_im598_full_n(temp1_im598_full_n),
    .temp1_im598_write(grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_write),
    .brmerge189(brmerge189_reg_214),
    .input3_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_address0),
    .input3_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_ce0),
    .input3_buff_V_q0(input3_buff_V_q0),
    .input4_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_address0),
    .input4_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_ce0),
    .input4_buff_V_q0(input4_buff_V_q0),
    .brmerge191(brmerge191_reg_219),
    .input5_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_address0),
    .input5_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_ce0),
    .input5_buff_V_q0(input5_buff_V_q0),
    .input6_buff_V_address0(grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_address0),
    .input6_buff_V_ce0(grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_ce0),
    .input6_buff_V_q0(input6_buff_V_q0),
    .brmerge193(brmerge193_reg_224)
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
        grp_mods_Pipeline_input_buff_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_mods_Pipeline_input_buff_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_mods_Pipeline_input_buff_fu_98_ap_ready == 1'b1)) begin
            grp_mods_Pipeline_input_buff_fu_98_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg <= 1'b1;
        end else if ((grp_mods_Pipeline_mods_call_funct_fu_120_ap_ready == 1'b1)) begin
            grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        brmerge189_reg_214 <= brmerge189_fu_154_p2;
        brmerge191_reg_219 <= brmerge191_fu_171_p2;
        brmerge193_reg_224 <= brmerge193_fu_187_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_mods_Pipeline_input_buff_fu_98_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_mods_Pipeline_mods_call_funct_fu_120_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_mods_Pipeline_mods_call_funct_fu_120_ap_done == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_mods_Pipeline_mods_call_funct_fu_120_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input1_TREADY = grp_mods_Pipeline_input_buff_fu_98_input1_TREADY;
    end else begin
        input1_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input1_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input1_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_address0;
    end else begin
        input1_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input1_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input1_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input1_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_ce0;
    end else begin
        input1_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input1_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input1_buff_V_we0;
    end else begin
        input1_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input2_TREADY = grp_mods_Pipeline_input_buff_fu_98_input2_TREADY;
    end else begin
        input2_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input2_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input2_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_address0;
    end else begin
        input2_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input2_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input2_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input2_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_ce0;
    end else begin
        input2_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input2_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input2_buff_V_we0;
    end else begin
        input2_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input3_TREADY = grp_mods_Pipeline_input_buff_fu_98_input3_TREADY;
    end else begin
        input3_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input3_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input3_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_address0;
    end else begin
        input3_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input3_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input3_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input3_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_ce0;
    end else begin
        input3_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input3_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input3_buff_V_we0;
    end else begin
        input3_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input4_TREADY = grp_mods_Pipeline_input_buff_fu_98_input4_TREADY;
    end else begin
        input4_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input4_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input4_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_address0;
    end else begin
        input4_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input4_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input4_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input4_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_ce0;
    end else begin
        input4_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input4_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input4_buff_V_we0;
    end else begin
        input4_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input5_TREADY = grp_mods_Pipeline_input_buff_fu_98_input5_TREADY;
    end else begin
        input5_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input5_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input5_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_address0;
    end else begin
        input5_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input5_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input5_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input5_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_ce0;
    end else begin
        input5_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input5_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input5_buff_V_we0;
    end else begin
        input5_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input6_TREADY = grp_mods_Pipeline_input_buff_fu_98_input6_TREADY;
    end else begin
        input6_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input6_buff_V_address0 = grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input6_buff_V_address0 = grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_address0;
    end else begin
        input6_buff_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input6_buff_V_ce0 = grp_mods_Pipeline_mods_call_funct_fu_120_input6_buff_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        input6_buff_V_ce0 = grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_ce0;
    end else begin
        input6_buff_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input6_buff_V_we0 = grp_mods_Pipeline_input_buff_fu_98_input6_buff_V_we0;
    end else begin
        input6_buff_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp1_im598_write = grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_write;
    end else begin
        temp1_im598_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp1_re597_write = grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_write;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_mods_Pipeline_input_buff_fu_98_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_mods_Pipeline_mods_call_funct_fu_120_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign brmerge189_fu_154_p2 = (tmp_fu_150_p2 | en_qpsk_not_fu_145_p2);

assign brmerge191_fu_171_p2 = (tmp1_fu_166_p2 | en_qpsk);

assign brmerge193_fu_187_p2 = (tmp2_fu_182_p2 | en_qpsk);

assign en_qam16_not_fu_161_p2 = (en_qam16 ^ 1'd1);

assign en_qam64_not_fu_177_p2 = (en_qam64 ^ 1'd1);

assign en_qpsk_not_fu_145_p2 = (en_qpsk ^ 1'd1);

assign grp_mods_Pipeline_input_buff_fu_98_ap_start = grp_mods_Pipeline_input_buff_fu_98_ap_start_reg;

assign grp_mods_Pipeline_mods_call_funct_fu_120_ap_start = grp_mods_Pipeline_mods_call_funct_fu_120_ap_start_reg;

assign temp1_im598_din = grp_mods_Pipeline_mods_call_funct_fu_120_temp1_im598_din;

assign temp1_re597_din = grp_mods_Pipeline_mods_call_funct_fu_120_temp1_re597_din;

assign tmp1_fu_166_p2 = (en_qam64 | en_qam16_not_fu_161_p2);

assign tmp2_fu_182_p2 = (en_qam64_not_fu_177_p2 | en_qam16);

assign tmp_fu_150_p2 = (en_qam64 | en_qam16);

endmodule //top_tx_mods
