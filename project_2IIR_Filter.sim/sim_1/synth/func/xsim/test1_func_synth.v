// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun May  4 21:23:18 2025
// Host        : DESKTOP-UR0PACQ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/verilog_11/project_2IIR_Filter/project_2IIR_Filter.sim/sim_1/synth/func/xsim/test1_func_synth.v
// Design      : iir
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tisbv484-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* n = "15" *) (* s0 = "3'b000" *) (* s1 = "3'b001" *) 
(* s2 = "3'b010" *) (* s3 = "3'b011" *) (* s4 = "3'b100" *) 
(* s5 = "3'b101" *) 
(* NotValidForBitStream *)
module iir
   (clk,
    reset,
    result,
    done);
  input clk;
  input reset;
  output [6:0]result;
  output done;

  wire \B1/a0b1 ;
  wire \B1/p_3_in ;
  wire \B1/p_4_in ;
  wire \B1/p_6_in ;
  wire \FSM_onehot_ns[5]_i_1_n_0 ;
  wire \FSM_onehot_ns[5]_i_2_n_0 ;
  wire \FSM_onehot_ns_reg_n_0_[0] ;
  wire [2:2]a1;
  wire \a1[2]_i_1_n_0 ;
  wire \a1_reg_n_0_[0] ;
  wire \a1_reg_n_0_[2] ;
  wire [3:0]b1;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire i;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_3_n_0 ;
  wire [3:0]i__0;
  wire [3:0]i_reg;
  wire [0:0]multi;
  wire [6:1]p_0_in;
  wire reset;
  wire reset_IBUF;
  wire [6:0]result;
  wire \result[5]_i_2_n_0 ;
  wire \result[5]_i_3_n_0 ;
  wire \result[5]_i_4_n_0 ;
  wire \result[5]_i_5_n_0 ;
  wire \result[5]_i_6_n_0 ;
  wire \result[5]_i_7_n_0 ;
  wire \result[5]_i_8_n_0 ;
  wire \result[5]_i_9_n_0 ;
  wire \result[6]_i_1_n_0 ;
  wire \result[6]_i_3_n_0 ;
  wire [6:0]result_OBUF;
  wire \result_reg[5]_i_1_n_0 ;
  wire \result_reg[5]_i_1_n_1 ;
  wire \result_reg[5]_i_1_n_2 ;
  wire \result_reg[5]_i_1_n_3 ;
  wire sum1;
  wire sum11;
  wire [6:1]sum11__0;
  wire [6:1]sum1__0;
  wire sum2;
  wire [6:0]sum22;
  wire \sum2[4]_i_1_n_0 ;
  wire \sum2[6]_i_1_n_0 ;
  wire [6:0]sum2__0;
  wire sum3;
  wire [6:1]sum33;
  wire [6:1]sum3__0;
  wire [3:0]xload;
  wire [3:0]\NLW_result_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[6]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_ns[5]_i_1 
       (.I0(sum3),
        .I1(sum1),
        .I2(\FSM_onehot_ns_reg_n_0_[0] ),
        .I3(sum11),
        .I4(sum2),
        .O(\FSM_onehot_ns[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \FSM_onehot_ns[5]_i_2 
       (.I0(sum3),
        .I1(i_reg[3]),
        .I2(i_reg[0]),
        .I3(i_reg[1]),
        .I4(i_reg[2]),
        .O(\FSM_onehot_ns[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s0:000001,s1:000010,s2:000100,s3:001000,s5:100000,s4:010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_ns_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_ns[5]_i_1_n_0 ),
        .D(sum11),
        .Q(\FSM_onehot_ns_reg_n_0_[0] ),
        .S(reset_IBUF));
  (* FSM_ENCODED_STATES = "s0:000001,s1:000010,s2:000100,s3:001000,s5:100000,s4:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_ns[5]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[0] ),
        .Q(sum1),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s0:000001,s1:000010,s2:000100,s3:001000,s5:100000,s4:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_ns[5]_i_1_n_0 ),
        .D(sum1),
        .Q(sum2),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s0:000001,s1:000010,s2:000100,s3:001000,s5:100000,s4:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_ns[5]_i_1_n_0 ),
        .D(sum2),
        .Q(sum3),
        .R(reset_IBUF));
  (* FSM_ENCODED_STATES = "s0:000001,s1:000010,s2:000100,s3:001000,s5:100000,s4:010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_ns[5]_i_1_n_0 ),
        .D(\FSM_onehot_ns[5]_i_2_n_0 ),
        .Q(sum11),
        .R(reset_IBUF));
  LUT4 #(
    .INIT(16'h00FE)) 
    \a1[2]_i_1 
       (.I0(sum2),
        .I1(\FSM_onehot_ns_reg_n_0_[0] ),
        .I2(sum1),
        .I3(reset_IBUF),
        .O(\a1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \a1[2]_i_2 
       (.I0(sum1),
        .I1(\FSM_onehot_ns_reg_n_0_[0] ),
        .I2(sum2),
        .O(a1));
  FDRE #(
    .INIT(1'b0)) 
    \a1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(\FSM_onehot_ns_reg_n_0_[0] ),
        .Q(\a1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \a1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(a1),
        .Q(\a1_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8C74)) 
    \b1[0]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .I2(i_reg[0]),
        .I3(i_reg[1]),
        .O(xload[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h583D)) 
    \b1[1]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[0]),
        .O(xload[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEDFA)) 
    \b1[2]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[1]),
        .I2(i_reg[2]),
        .I3(i_reg[0]),
        .O(xload[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h68F4)) 
    \b1[3]_i_1 
       (.I0(i_reg[3]),
        .I1(i_reg[2]),
        .I2(i_reg[1]),
        .I3(i_reg[0]),
        .O(xload[3]));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(xload[0]),
        .Q(b1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(xload[1]),
        .Q(b1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(xload[2]),
        .Q(b1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\a1[2]_i_1_n_0 ),
        .D(xload[3]),
        .Q(b1[3]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(1'b1),
        .O(done));
  LUT2 #(
    .INIT(4'h6)) 
    \i[0]_i_1 
       (.I0(sum1),
        .I1(i_reg[0]),
        .O(i__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h87878778)) 
    \i[1]_i_1 
       (.I0(sum1),
        .I1(i_reg[0]),
        .I2(i_reg[1]),
        .I3(\FSM_onehot_ns_reg_n_0_[0] ),
        .I4(sum3),
        .O(i__0[1]));
  LUT6 #(
    .INIT(64'hFF88077F0077F880)) 
    \i[2]_i_1 
       (.I0(i_reg[0]),
        .I1(sum1),
        .I2(\FSM_onehot_ns_reg_n_0_[0] ),
        .I3(i_reg[1]),
        .I4(sum3),
        .I5(i_reg[2]),
        .O(\i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \i[3]_i_1 
       (.I0(sum1),
        .I1(\FSM_onehot_ns_reg_n_0_[0] ),
        .I2(sum3),
        .O(i));
  LUT4 #(
    .INIT(16'hD2B4)) 
    \i[3]_i_2 
       (.I0(\i[3]_i_3_n_0 ),
        .I1(sum3),
        .I2(i_reg[3]),
        .I3(i_reg[2]),
        .O(i__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEA8A8A8)) 
    \i[3]_i_3 
       (.I0(i_reg[1]),
        .I1(sum3),
        .I2(\FSM_onehot_ns_reg_n_0_[0] ),
        .I3(sum1),
        .I4(i_reg[0]),
        .O(\i[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .D(i__0[0]),
        .Q(i_reg[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .D(i__0[1]),
        .Q(i_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .D(\i[2]_i_1_n_0 ),
        .Q(i_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(i),
        .D(i__0[3]),
        .Q(i_reg[3]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  LUT3 #(
    .INIT(8'h96)) 
    \result[1]_i_1 
       (.I0(sum11__0[1]),
        .I1(sum22[1]),
        .I2(sum33[1]),
        .O(p_0_in[1]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[5]_i_2 
       (.I0(sum22[4]),
        .I1(sum33[4]),
        .I2(sum11__0[4]),
        .O(\result[5]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[5]_i_3 
       (.I0(sum22[3]),
        .I1(sum33[3]),
        .I2(sum11__0[3]),
        .O(\result[5]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result[5]_i_4 
       (.I0(sum22[2]),
        .I1(sum33[2]),
        .I2(sum11__0[2]),
        .O(\result[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \result[5]_i_5 
       (.I0(sum22[1]),
        .I1(sum33[1]),
        .I2(sum11__0[1]),
        .O(\result[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \result[5]_i_6 
       (.I0(\result[5]_i_2_n_0 ),
        .I1(sum33[5]),
        .I2(sum22[5]),
        .I3(sum11__0[5]),
        .O(\result[5]_i_6_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result[5]_i_7 
       (.I0(sum22[4]),
        .I1(sum33[4]),
        .I2(sum11__0[4]),
        .I3(\result[5]_i_3_n_0 ),
        .O(\result[5]_i_7_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result[5]_i_8 
       (.I0(sum22[3]),
        .I1(sum33[3]),
        .I2(sum11__0[3]),
        .I3(\result[5]_i_4_n_0 ),
        .O(\result[5]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \result[5]_i_9 
       (.I0(sum22[2]),
        .I1(sum33[2]),
        .I2(sum11__0[2]),
        .I3(\result[5]_i_5_n_0 ),
        .O(\result[5]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[6]_i_1 
       (.I0(\FSM_onehot_ns_reg_n_0_[0] ),
        .I1(reset_IBUF),
        .O(\result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \result[6]_i_3 
       (.I0(sum11__0[5]),
        .I1(sum33[5]),
        .I2(sum22[5]),
        .I3(sum33[6]),
        .I4(sum22[6]),
        .I5(sum11__0[6]),
        .O(\result[6]_i_3_n_0 ));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(sum22[0]),
        .Q(result_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(result_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(result_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(result_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(result_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(result_OBUF[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[5]_i_1_n_0 ,\result_reg[5]_i_1_n_1 ,\result_reg[5]_i_1_n_2 ,\result_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result[5]_i_2_n_0 ,\result[5]_i_3_n_0 ,\result[5]_i_4_n_0 ,\result[5]_i_5_n_0 }),
        .O(p_0_in[5:2]),
        .S({\result[5]_i_6_n_0 ,\result[5]_i_7_n_0 ,\result[5]_i_8_n_0 ,\result[5]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[6]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(result_OBUF[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_reg[6]_i_2 
       (.CI(\result_reg[5]_i_1_n_0 ),
        .CO(\NLW_result_reg[6]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_reg[6]_i_2_O_UNCONNECTED [3:1],p_0_in[6]}),
        .S({1'b0,1'b0,1'b0,\result[6]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[1]),
        .Q(sum11__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[2]),
        .Q(sum11__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[3]),
        .Q(sum11__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[4]),
        .Q(sum11__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[5]),
        .Q(sum11__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum11_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum1__0[6]),
        .Q(sum11__0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(multi),
        .Q(sum1__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(\B1/a0b1 ),
        .Q(sum1__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(\B1/p_3_in ),
        .Q(sum1__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(\B1/p_4_in ),
        .Q(sum1__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(\sum2[4]_i_1_n_0 ),
        .Q(sum1__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum1),
        .D(\B1/p_6_in ),
        .Q(sum1__0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[0]),
        .Q(sum22[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[1]),
        .Q(sum22[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[2]),
        .Q(sum22[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[3]),
        .Q(sum22[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[4]),
        .Q(sum22[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[5]),
        .Q(sum22[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum22_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum2__0[6]),
        .Q(sum22[6]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum2[0]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .I1(b1[0]),
        .O(multi));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum2[1]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .I1(b1[1]),
        .O(\B1/a0b1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \sum2[2]_i_1 
       (.I0(b1[2]),
        .I1(\a1_reg_n_0_[0] ),
        .I2(b1[0]),
        .I3(\a1_reg_n_0_[2] ),
        .O(\B1/p_3_in ));
  LUT6 #(
    .INIT(64'h8F7FF0007080F000)) 
    \sum2[3]_i_1 
       (.I0(b1[0]),
        .I1(b1[2]),
        .I2(\a1_reg_n_0_[2] ),
        .I3(b1[1]),
        .I4(\a1_reg_n_0_[0] ),
        .I5(b1[3]),
        .O(\B1/p_4_in ));
  LUT6 #(
    .INIT(64'hDF88F78800888888)) 
    \sum2[4]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .I1(b1[3]),
        .I2(b1[0]),
        .I3(\a1_reg_n_0_[2] ),
        .I4(b1[1]),
        .I5(b1[2]),
        .O(\sum2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA80FA00FA005A00)) 
    \sum2[5]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .I1(b1[0]),
        .I2(\a1_reg_n_0_[2] ),
        .I3(b1[3]),
        .I4(b1[1]),
        .I5(b1[2]),
        .O(\B1/p_6_in ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \sum2[6]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .I1(\a1_reg_n_0_[2] ),
        .I2(b1[3]),
        .O(\sum2[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(multi),
        .Q(sum2__0[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\B1/a0b1 ),
        .Q(sum2__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\B1/p_3_in ),
        .Q(sum2__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\B1/p_4_in ),
        .Q(sum2__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\sum2[4]_i_1_n_0 ),
        .Q(sum2__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\B1/p_6_in ),
        .Q(sum2__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum2),
        .D(\sum2[6]_i_1_n_0 ),
        .Q(sum2__0[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[1]),
        .Q(sum33[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[2]),
        .Q(sum33[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[3]),
        .Q(sum33[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[4]),
        .Q(sum33[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[5]),
        .Q(sum33[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum33_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum11),
        .D(sum3__0[6]),
        .Q(sum33[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(multi),
        .Q(sum3__0[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(\B1/a0b1 ),
        .Q(sum3__0[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(\B1/p_3_in ),
        .Q(sum3__0[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(\B1/p_4_in ),
        .Q(sum3__0[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(\sum2[4]_i_1_n_0 ),
        .Q(sum3__0[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \sum3_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sum3),
        .D(\B1/p_6_in ),
        .Q(sum3__0[6]),
        .R(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
