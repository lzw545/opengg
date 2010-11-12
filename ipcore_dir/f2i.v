////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: f2i.v
// /___/   /\     Timestamp: Wed Nov 10 02:30:38 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\f2i.ngc ./tmp/_cg\f2i.v 
// Device	: 5vlx110tff1136-1
// Input file	: ./tmp/_cg/f2i.ngc
// Output file	: ./tmp/_cg/f2i.v
// # of Modules	: 1
// Design Name	: f2i
// Xilinx        : C:\Xilinx\12.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module f2i (
a, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input [31 : 0] a;
  output [31 : 0] result;
  
  // synthesis translate_off
  
  wire \blk00000003/sig00000139 ;
  wire \blk00000003/sig00000138 ;
  wire \blk00000003/sig00000137 ;
  wire \blk00000003/sig00000136 ;
  wire \blk00000003/sig00000135 ;
  wire \blk00000003/sig00000134 ;
  wire \blk00000003/sig00000133 ;
  wire \blk00000003/sig00000132 ;
  wire \blk00000003/sig00000131 ;
  wire \blk00000003/sig00000130 ;
  wire \blk00000003/sig0000012f ;
  wire \blk00000003/sig0000012e ;
  wire \blk00000003/sig0000012d ;
  wire \blk00000003/sig0000012c ;
  wire \blk00000003/sig0000012b ;
  wire \blk00000003/sig0000012a ;
  wire \blk00000003/sig00000129 ;
  wire \blk00000003/sig00000128 ;
  wire \blk00000003/sig00000127 ;
  wire \blk00000003/sig00000126 ;
  wire \blk00000003/sig00000125 ;
  wire \blk00000003/sig00000124 ;
  wire \blk00000003/sig00000123 ;
  wire \blk00000003/sig00000122 ;
  wire \blk00000003/sig00000121 ;
  wire \blk00000003/sig00000120 ;
  wire \blk00000003/sig0000011f ;
  wire \blk00000003/sig0000011e ;
  wire \blk00000003/sig0000011d ;
  wire \blk00000003/sig0000011c ;
  wire \blk00000003/sig0000011b ;
  wire \blk00000003/sig0000011a ;
  wire \blk00000003/sig00000119 ;
  wire \blk00000003/sig00000118 ;
  wire \blk00000003/sig00000117 ;
  wire \blk00000003/sig00000116 ;
  wire \blk00000003/sig00000115 ;
  wire \blk00000003/sig00000114 ;
  wire \blk00000003/sig00000113 ;
  wire \blk00000003/sig00000112 ;
  wire \blk00000003/sig00000111 ;
  wire \blk00000003/sig00000110 ;
  wire \blk00000003/sig0000010f ;
  wire \blk00000003/sig0000010e ;
  wire \blk00000003/sig0000010d ;
  wire \blk00000003/sig0000010c ;
  wire \blk00000003/sig0000010b ;
  wire \blk00000003/sig0000010a ;
  wire \blk00000003/sig00000109 ;
  wire \blk00000003/sig00000108 ;
  wire \blk00000003/sig00000107 ;
  wire \blk00000003/sig00000106 ;
  wire \blk00000003/sig00000105 ;
  wire \blk00000003/sig00000104 ;
  wire \blk00000003/sig00000103 ;
  wire \blk00000003/sig00000102 ;
  wire \blk00000003/sig00000101 ;
  wire \blk00000003/sig00000100 ;
  wire \blk00000003/sig000000ff ;
  wire \blk00000003/sig000000fe ;
  wire \blk00000003/sig000000fd ;
  wire \blk00000003/sig000000fc ;
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000f8 ;
  wire \blk00000003/sig000000f7 ;
  wire \blk00000003/sig000000f6 ;
  wire \blk00000003/sig000000f5 ;
  wire \blk00000003/sig000000f4 ;
  wire \blk00000003/sig000000f3 ;
  wire \blk00000003/sig000000f2 ;
  wire \blk00000003/sig000000f1 ;
  wire \blk00000003/sig000000f0 ;
  wire \blk00000003/sig000000ef ;
  wire \blk00000003/sig000000ee ;
  wire \blk00000003/sig000000ed ;
  wire \blk00000003/sig000000ec ;
  wire \blk00000003/sig000000eb ;
  wire \blk00000003/sig000000ea ;
  wire \blk00000003/sig000000e9 ;
  wire \blk00000003/sig000000e8 ;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000085 ;
  wire \blk00000003/sig00000084 ;
  wire \blk00000003/sig00000083 ;
  wire \blk00000003/sig00000082 ;
  wire \blk00000003/sig00000081 ;
  wire \blk00000003/sig00000080 ;
  wire \blk00000003/sig0000007f ;
  wire \blk00000003/sig0000007e ;
  wire \blk00000003/sig0000007d ;
  wire \blk00000003/sig0000007c ;
  wire \blk00000003/sig0000007b ;
  wire \blk00000003/sig0000007a ;
  wire \blk00000003/sig00000079 ;
  wire \blk00000003/sig00000078 ;
  wire \blk00000003/sig00000077 ;
  wire \blk00000003/sig00000076 ;
  wire \blk00000003/sig00000075 ;
  wire \blk00000003/sig00000074 ;
  wire \blk00000003/sig00000073 ;
  wire \blk00000003/sig00000072 ;
  wire \blk00000003/sig00000071 ;
  wire \blk00000003/sig00000070 ;
  wire \blk00000003/sig0000006f ;
  wire \blk00000003/sig0000006e ;
  wire \blk00000003/sig0000006d ;
  wire \blk00000003/sig0000006c ;
  wire \blk00000003/sig0000006b ;
  wire \blk00000003/sig0000006a ;
  wire \blk00000003/sig00000069 ;
  wire \blk00000003/sig00000068 ;
  wire \blk00000003/sig00000067 ;
  wire \blk00000003/sig00000066 ;
  wire \blk00000003/sig00000065 ;
  wire \blk00000003/sig00000064 ;
  wire \blk00000003/sig00000063 ;
  wire \blk00000003/sig00000062 ;
  wire \blk00000003/sig00000061 ;
  wire \blk00000003/sig00000060 ;
  wire \blk00000003/sig0000005f ;
  wire \blk00000003/sig0000005e ;
  wire \blk00000003/sig0000005d ;
  wire \blk00000003/sig0000005c ;
  wire \blk00000003/sig0000005b ;
  wire \blk00000003/sig0000005a ;
  wire \blk00000003/sig00000059 ;
  wire \blk00000003/sig00000058 ;
  wire \blk00000003/sig00000057 ;
  wire \blk00000003/sig00000056 ;
  wire \blk00000003/sig00000055 ;
  wire \blk00000003/sig00000054 ;
  wire \blk00000003/sig00000053 ;
  wire \blk00000003/sig00000052 ;
  wire \blk00000003/sig00000051 ;
  wire \blk00000003/sig00000050 ;
  wire \blk00000003/sig0000004f ;
  wire \blk00000003/sig0000004e ;
  wire \blk00000003/sig0000004d ;
  wire \blk00000003/sig0000004c ;
  wire \blk00000003/sig0000004b ;
  wire \blk00000003/sig0000004a ;
  wire \blk00000003/sig00000049 ;
  wire \blk00000003/sig00000048 ;
  wire \blk00000003/sig00000047 ;
  wire \blk00000003/sig00000046 ;
  wire \blk00000003/sig00000045 ;
  wire \blk00000003/sig00000044 ;
  wire \blk00000003/sig00000043 ;
  wire \blk00000003/sig00000002 ;
  wire \blk00000003/sig00000001 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000057_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000016_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000000f_O_UNCONNECTED ;
  wire [31 : 0] a_0;
  wire [31 : 0] result_1;
  assign
    a_0[31] = a[31],
    a_0[30] = a[30],
    a_0[29] = a[29],
    a_0[28] = a[28],
    a_0[27] = a[27],
    a_0[26] = a[26],
    a_0[25] = a[25],
    a_0[24] = a[24],
    a_0[23] = a[23],
    a_0[22] = a[22],
    a_0[21] = a[21],
    a_0[20] = a[20],
    a_0[19] = a[19],
    a_0[18] = a[18],
    a_0[17] = a[17],
    a_0[16] = a[16],
    a_0[15] = a[15],
    a_0[14] = a[14],
    a_0[13] = a[13],
    a_0[12] = a[12],
    a_0[11] = a[11],
    a_0[10] = a[10],
    a_0[9] = a[9],
    a_0[8] = a[8],
    a_0[7] = a[7],
    a_0[6] = a[6],
    a_0[5] = a[5],
    a_0[4] = a[4],
    a_0[3] = a[3],
    a_0[2] = a[2],
    a_0[1] = a[1],
    a_0[0] = a[0],
    result[31] = result_1[31],
    result[30] = result_1[30],
    result[29] = result_1[29],
    result[28] = result_1[28],
    result[27] = result_1[27],
    result[26] = result_1[26],
    result[25] = result_1[25],
    result[24] = result_1[24],
    result[23] = result_1[23],
    result[22] = result_1[22],
    result[21] = result_1[21],
    result[20] = result_1[20],
    result[19] = result_1[19],
    result[18] = result_1[18],
    result[17] = result_1[17],
    result[16] = result_1[16],
    result[15] = result_1[15],
    result[14] = result_1[14],
    result[13] = result_1[13],
    result[12] = result_1[12],
    result[11] = result_1[11],
    result[10] = result_1[10],
    result[9] = result_1[9],
    result[8] = result_1[8],
    result[7] = result_1[7],
    result[6] = result_1[6],
    result[5] = result_1[5],
    result[4] = result_1[4],
    result[3] = result_1[3],
    result[2] = result_1[2],
    result[1] = result_1[1],
    result[0] = result_1[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  MUXF7   \blk00000003/blk0000011f  (
    .I0(\blk00000003/sig00000139 ),
    .I1(\blk00000003/sig00000138 ),
    .S(\blk00000003/sig000000ec ),
    .O(\blk00000003/sig0000010f )
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \blk00000003/blk0000011e  (
    .I0(\blk00000003/sig000000ed ),
    .I1(a_0[12]),
    .I2(\blk00000003/sig00000104 ),
    .I3(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000139 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF006C93FF ))
  \blk00000003/blk0000011d  (
    .I0(a_0[25]),
    .I1(a_0[26]),
    .I2(a_0[24]),
    .I3(a_0[8]),
    .I4(a_0[16]),
    .I5(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000138 )
  );
  MUXF7   \blk00000003/blk0000011c  (
    .I0(\blk00000003/sig00000137 ),
    .I1(\blk00000003/sig00000136 ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000f5 )
  );
  LUT4 #(
    .INIT ( 16'h89CD ))
  \blk00000003/blk0000011b  (
    .I0(\blk00000003/sig000000eb ),
    .I1(\blk00000003/sig000000ec ),
    .I2(a_0[7]),
    .I3(a_0[11]),
    .O(\blk00000003/sig00000137 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF14D7 ))
  \blk00000003/blk0000011a  (
    .I0(a_0[15]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[19]),
    .I4(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000136 )
  );
  MUXF7   \blk00000003/blk00000119  (
    .I0(\blk00000003/sig00000135 ),
    .I1(\blk00000003/sig00000134 ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000f3 )
  );
  LUT4 #(
    .INIT ( 16'hF1FB ))
  \blk00000003/blk00000118  (
    .I0(\blk00000003/sig000000ec ),
    .I1(a_0[8]),
    .I2(\blk00000003/sig000000eb ),
    .I3(a_0[12]),
    .O(\blk00000003/sig00000135 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF14D7 ))
  \blk00000003/blk00000117  (
    .I0(a_0[16]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[20]),
    .I4(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000134 )
  );
  MUXF7   \blk00000003/blk00000116  (
    .I0(\blk00000003/sig00000133 ),
    .I1(\blk00000003/sig00000132 ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000f1 )
  );
  LUT4 #(
    .INIT ( 16'hF1FB ))
  \blk00000003/blk00000115  (
    .I0(\blk00000003/sig000000ec ),
    .I1(a_0[9]),
    .I2(\blk00000003/sig000000eb ),
    .I3(a_0[13]),
    .O(\blk00000003/sig00000133 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF14D7 ))
  \blk00000003/blk00000114  (
    .I0(a_0[17]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[21]),
    .I4(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000132 )
  );
  MUXF7   \blk00000003/blk00000113  (
    .I0(\blk00000003/sig00000131 ),
    .I1(\blk00000003/sig00000001 ),
    .S(a_0[30]),
    .O(\blk00000003/sig000000d0 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \blk00000003/blk00000112  (
    .I0(a_0[28]),
    .I1(a_0[29]),
    .I2(a_0[27]),
    .I3(a_0[26]),
    .I4(a_0[25]),
    .I5(a_0[24]),
    .O(\blk00000003/sig00000131 )
  );
  LUT5 #(
    .INIT ( 32'h1FF1BFFB ))
  \blk00000003/blk00000111  (
    .I0(\blk00000003/sig000000ed ),
    .I1(a_0[10]),
    .I2(\blk00000003/sig000000cd ),
    .I3(a_0[27]),
    .I4(a_0[18]),
    .O(\blk00000003/sig00000130 )
  );
  LUT6 #(
    .INIT ( 64'h6606669FFF06FF9F ))
  \blk00000003/blk00000110  (
    .I0(a_0[27]),
    .I1(\blk00000003/sig000000cd ),
    .I2(a_0[22]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[6]),
    .I5(a_0[14]),
    .O(\blk00000003/sig0000012f )
  );
  MUXF7   \blk00000003/blk0000010f  (
    .I0(\blk00000003/sig0000012f ),
    .I1(\blk00000003/sig00000130 ),
    .S(\blk00000003/sig000000ec ),
    .O(\blk00000003/sig000000f8 )
  );
  LUT6 #(
    .INIT ( 64'h0008000A88AA88AA ))
  \blk00000003/blk0000010e  (
    .I0(\blk00000003/sig0000004e ),
    .I1(a_0[23]),
    .I2(a_0[13]),
    .I3(a_0[12]),
    .I4(a_0[14]),
    .I5(a_0[24]),
    .O(\blk00000003/sig0000012e )
  );
  LUT6 #(
    .INIT ( 64'h000A00AA000200AA ))
  \blk00000003/blk0000010d  (
    .I0(\blk00000003/sig0000004a ),
    .I1(a_0[6]),
    .I2(a_0[5]),
    .I3(a_0[4]),
    .I4(a_0[24]),
    .I5(a_0[23]),
    .O(\blk00000003/sig0000012d )
  );
  MUXF7   \blk00000003/blk0000010c  (
    .I0(\blk00000003/sig0000012d ),
    .I1(\blk00000003/sig0000012e ),
    .S(\blk00000003/sig00000106 ),
    .O(\blk00000003/sig00000128 )
  );
  LUT6 #(
    .INIT ( 64'h9AAAAAAAAAAAAAAA ))
  \blk00000003/blk0000010b  (
    .I0(a_0[31]),
    .I1(a_0[24]),
    .I2(a_0[25]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(a_0[23]),
    .O(\blk00000003/sig000000bb )
  );
  LUT5 #(
    .INIT ( 32'hF77FFFFF ))
  \blk00000003/blk0000010a  (
    .I0(a_0[27]),
    .I1(a_0[20]),
    .I2(a_0[25]),
    .I3(a_0[24]),
    .I4(a_0[26]),
    .O(\blk00000003/sig000000d7 )
  );
  LUT5 #(
    .INIT ( 32'hF77FFFFF ))
  \blk00000003/blk00000109  (
    .I0(a_0[27]),
    .I1(a_0[21]),
    .I2(a_0[25]),
    .I3(a_0[24]),
    .I4(a_0[26]),
    .O(\blk00000003/sig000000d8 )
  );
  LUT5 #(
    .INIT ( 32'hF77FFFFF ))
  \blk00000003/blk00000108  (
    .I0(a_0[27]),
    .I1(a_0[22]),
    .I2(a_0[25]),
    .I3(a_0[24]),
    .I4(a_0[26]),
    .O(\blk00000003/sig000000d6 )
  );
  LUT5 #(
    .INIT ( 32'h8E77FFFF ))
  \blk00000003/blk00000107  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(a_0[19]),
    .I3(a_0[26]),
    .I4(a_0[27]),
    .O(\blk00000003/sig000000da )
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \blk00000003/blk00000106  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[3]),
    .I3(a_0[7]),
    .O(\blk00000003/sig0000012b )
  );
  LUT6 #(
    .INIT ( 64'hF9F3F3F360C0C0C0 ))
  \blk00000003/blk00000105  (
    .I0(a_0[24]),
    .I1(a_0[27]),
    .I2(a_0[4]),
    .I3(a_0[25]),
    .I4(a_0[26]),
    .I5(a_0[20]),
    .O(\blk00000003/sig00000104 )
  );
  LUT6 #(
    .INIT ( 64'h4050404000500040 ))
  \blk00000003/blk00000104  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[23]),
    .I3(a_0[26]),
    .I4(\blk00000003/sig0000004a ),
    .I5(\blk00000003/sig0000004c ),
    .O(\blk00000003/sig0000012a )
  );
  LUT6 #(
    .INIT ( 64'hFEF7FE9198F79891 ))
  \blk00000003/blk00000103  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[15]),
    .I3(a_0[26]),
    .I4(a_0[19]),
    .I5(a_0[11]),
    .O(\blk00000003/sig0000012c )
  );
  LUT6 #(
    .INIT ( 64'h8919897FEF19EF7F ))
  \blk00000003/blk00000102  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[18]),
    .I3(a_0[26]),
    .I4(a_0[22]),
    .I5(a_0[14]),
    .O(\blk00000003/sig00000123 )
  );
  LUT6 #(
    .INIT ( 64'h95D7BDFFFFFFFFFF ))
  \blk00000003/blk00000101  (
    .I0(a_0[26]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[20]),
    .I4(a_0[16]),
    .I5(a_0[27]),
    .O(\blk00000003/sig000000e0 )
  );
  LUT6 #(
    .INIT ( 64'h95D7BDFFFFFFFFFF ))
  \blk00000003/blk00000100  (
    .I0(a_0[26]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[21]),
    .I4(a_0[17]),
    .I5(a_0[27]),
    .O(\blk00000003/sig000000de )
  );
  LUT6 #(
    .INIT ( 64'h95D7BDFFFFFFFFFF ))
  \blk00000003/blk000000ff  (
    .I0(a_0[26]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[22]),
    .I4(a_0[18]),
    .I5(a_0[27]),
    .O(\blk00000003/sig000000dc )
  );
  LUT4 #(
    .INIT ( 16'h9FFF ))
  \blk00000003/blk000000fe  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[26]),
    .I3(a_0[27]),
    .O(\blk00000003/sig000000d5 )
  );
  LUT6 #(
    .INIT ( 64'h8015C03FBFD5FFFF ))
  \blk00000003/blk000000fd  (
    .I0(a_0[27]),
    .I1(a_0[24]),
    .I2(a_0[25]),
    .I3(a_0[26]),
    .I4(\blk00000003/sig000000f6 ),
    .I5(\blk00000003/sig00000121 ),
    .O(\blk00000003/sig000000ff )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \blk00000003/blk000000fc  (
    .I0(a_0[27]),
    .I1(a_0[24]),
    .I2(a_0[25]),
    .I3(a_0[26]),
    .O(\blk00000003/sig000000eb )
  );
  LUT6 #(
    .INIT ( 64'h5A48120012001200 ))
  \blk00000003/blk000000fb  (
    .I0(a_0[24]),
    .I1(a_0[26]),
    .I2(a_0[25]),
    .I3(\blk00000003/sig00000117 ),
    .I4(\blk00000003/sig00000116 ),
    .I5(\blk00000003/sig0000004c ),
    .O(\blk00000003/sig00000129 )
  );
  LUT6 #(
    .INIT ( 64'h9F8718003F0F3000 ))
  \blk00000003/blk000000fa  (
    .I0(a_0[25]),
    .I1(a_0[26]),
    .I2(a_0[27]),
    .I3(\blk00000003/sig0000012b ),
    .I4(\blk00000003/sig0000012c ),
    .I5(a_0[24]),
    .O(\blk00000003/sig0000010d )
  );
  LUT6 #(
    .INIT ( 64'h6555A9996656AA9A ))
  \blk00000003/blk000000f9  (
    .I0(a_0[31]),
    .I1(a_0[23]),
    .I2(a_0[24]),
    .I3(\blk00000003/sig0000010b ),
    .I4(\blk00000003/sig0000011a ),
    .I5(\blk00000003/sig0000010c ),
    .O(\blk00000003/sig00000061 )
  );
  LUT4 #(
    .INIT ( 16'h8222 ))
  \blk00000003/blk000000f8  (
    .I0(a_0[2]),
    .I1(a_0[26]),
    .I2(a_0[25]),
    .I3(a_0[24]),
    .O(\blk00000003/sig00000126 )
  );
  LUT6 #(
    .INIT ( 64'hBE3CAA2896148200 ))
  \blk00000003/blk000000f7  (
    .I0(\blk00000003/sig000000ed ),
    .I1(a_0[27]),
    .I2(\blk00000003/sig000000cd ),
    .I3(a_0[5]),
    .I4(a_0[13]),
    .I5(a_0[21]),
    .O(\blk00000003/sig00000120 )
  );
  LUT6 #(
    .INIT ( 64'h55000000A6A2A2A2 ))
  \blk00000003/blk000000f6  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(\blk00000003/sig000000c4 ),
    .I2(\blk00000003/sig000000cf ),
    .I3(a_0[31]),
    .I4(\blk00000003/sig000000c0 ),
    .I5(\blk00000003/sig000000d2 ),
    .O(result_1[31])
  );
  LUT5 #(
    .INIT ( 32'hFF936C00 ))
  \blk00000003/blk000000f5  (
    .I0(a_0[25]),
    .I1(a_0[26]),
    .I2(a_0[24]),
    .I3(a_0[2]),
    .I4(a_0[10]),
    .O(\blk00000003/sig00000124 )
  );
  LUT4 #(
    .INIT ( 16'h8222 ))
  \blk00000003/blk000000f4  (
    .I0(a_0[6]),
    .I1(a_0[26]),
    .I2(a_0[25]),
    .I3(a_0[24]),
    .O(\blk00000003/sig00000122 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF90 ))
  \blk00000003/blk000000f3  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(\blk00000003/sig00000128 ),
    .I3(\blk00000003/sig00000129 ),
    .I4(\blk00000003/sig0000012a ),
    .O(\blk00000003/sig00000043 )
  );
  LUT6 #(
    .INIT ( 64'h6606669FFF06FF9F ))
  \blk00000003/blk000000f2  (
    .I0(\blk00000003/sig000000cd ),
    .I1(a_0[27]),
    .I2(a_0[16]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[0]),
    .I5(a_0[8]),
    .O(\blk00000003/sig00000105 )
  );
  LUT6 #(
    .INIT ( 64'h6606669FFF06FF9F ))
  \blk00000003/blk000000f1  (
    .I0(\blk00000003/sig000000cd ),
    .I1(a_0[27]),
    .I2(a_0[17]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[1]),
    .I5(a_0[9]),
    .O(\blk00000003/sig00000127 )
  );
  LUT4 #(
    .INIT ( 16'h9F06 ))
  \blk00000003/blk000000f0  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(\blk00000003/sig00000120 ),
    .I3(\blk00000003/sig00000127 ),
    .O(\blk00000003/sig0000010a )
  );
  LUT6 #(
    .INIT ( 64'h6606669FFF06FF9F ))
  \blk00000003/blk000000ef  (
    .I0(\blk00000003/sig000000cd ),
    .I1(a_0[27]),
    .I2(a_0[19]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[3]),
    .I5(a_0[11]),
    .O(\blk00000003/sig000000fd )
  );
  LUT6 #(
    .INIT ( 64'h6606669FFF06FF9F ))
  \blk00000003/blk000000ee  (
    .I0(\blk00000003/sig000000cd ),
    .I1(a_0[27]),
    .I2(a_0[21]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[5]),
    .I5(a_0[13]),
    .O(\blk00000003/sig000000fb )
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \blk00000003/blk000000ed  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(\blk00000003/sig00000127 ),
    .I3(\blk00000003/sig000000fb ),
    .O(\blk00000003/sig00000101 )
  );
  LUT4 #(
    .INIT ( 16'hF960 ))
  \blk00000003/blk000000ec  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[10]),
    .I3(a_0[14]),
    .O(\blk00000003/sig000000f6 )
  );
  LUT6 #(
    .INIT ( 64'hF6F666F6F6F66FFF ))
  \blk00000003/blk000000eb  (
    .I0(a_0[27]),
    .I1(\blk00000003/sig000000cd ),
    .I2(\blk00000003/sig000000ec ),
    .I3(a_0[19]),
    .I4(\blk00000003/sig000000ed ),
    .I5(a_0[15]),
    .O(\blk00000003/sig000000e2 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000003/blk000000ea  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[26]),
    .I3(a_0[23]),
    .O(\blk00000003/sig000000c5 )
  );
  LUT6 #(
    .INIT ( 64'hA8A0282088800800 ))
  \blk00000003/blk000000e9  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000eb ),
    .I2(\blk00000003/sig000000ed ),
    .I3(a_0[12]),
    .I4(a_0[20]),
    .I5(a_0[4]),
    .O(\blk00000003/sig0000011e )
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e8  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000063 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[0])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e7  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000081 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[10])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e6  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000084 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[11])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e5  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000087 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[12])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e4  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000008a ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[13])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e3  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000008d ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[14])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e2  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000090 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[15])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e1  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000093 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[16])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000e0  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000096 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[17])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000df  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000099 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[18])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000de  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000009c ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[19])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000dd  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000066 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[1])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000dc  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000009f ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[20])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000db  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000a2 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[21])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000da  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000a5 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[22])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d9  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000a8 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[23])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d8  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000ab ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[24])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d7  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000ae ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[25])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d6  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000b1 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[26])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d5  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000b4 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[27])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d4  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000b7 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[28])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d3  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000ba ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[29])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d2  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000069 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[2])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d1  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig000000bd ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[30])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000d0  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000006c ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[3])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000cf  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[4])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000ce  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000072 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[5])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000cd  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000075 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[6])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000cc  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig00000078 ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[7])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000cb  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000007b ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[8])
  );
  LUT5 #(
    .INIT ( 32'h55555510 ))
  \blk00000003/blk000000ca  (
    .I0(\blk00000003/sig000000d1 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000c0 ),
    .I3(\blk00000003/sig0000007e ),
    .I4(\blk00000003/sig000000d3 ),
    .O(result_1[9])
  );
  LUT6 #(
    .INIT ( 64'hFFF666F699900090 ))
  \blk00000003/blk000000c9  (
    .I0(\blk00000003/sig000000cd ),
    .I1(a_0[27]),
    .I2(\blk00000003/sig00000126 ),
    .I3(\blk00000003/sig000000ec ),
    .I4(\blk00000003/sig00000122 ),
    .I5(\blk00000003/sig00000125 ),
    .O(\blk00000003/sig0000010c )
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk000000c8  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(a_0[14]),
    .I3(a_0[18]),
    .I4(a_0[10]),
    .I5(a_0[22]),
    .O(\blk00000003/sig00000125 )
  );
  LUT6 #(
    .INIT ( 64'h666F0009F6FF9099 ))
  \blk00000003/blk000000c7  (
    .I0(a_0[27]),
    .I1(\blk00000003/sig000000cd ),
    .I2(\blk00000003/sig000000ec ),
    .I3(\blk00000003/sig00000122 ),
    .I4(\blk00000003/sig00000123 ),
    .I5(\blk00000003/sig00000124 ),
    .O(\blk00000003/sig00000114 )
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk000000c6  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000eb ),
    .I2(a_0[6]),
    .I3(a_0[18]),
    .I4(a_0[2]),
    .I5(a_0[22]),
    .O(\blk00000003/sig00000121 )
  );
  LUT6 #(
    .INIT ( 64'hAAA9A6A56A696665 ))
  \blk00000003/blk000000c5  (
    .I0(a_0[31]),
    .I1(a_0[23]),
    .I2(a_0[24]),
    .I3(\blk00000003/sig000000d6 ),
    .I4(\blk00000003/sig000000d8 ),
    .I5(\blk00000003/sig000000d5 ),
    .O(\blk00000003/sig000000b5 )
  );
  LUT5 #(
    .INIT ( 32'hAAA9A6A5 ))
  \blk00000003/blk000000c4  (
    .I0(a_0[31]),
    .I1(a_0[23]),
    .I2(a_0[24]),
    .I3(\blk00000003/sig000000d5 ),
    .I4(\blk00000003/sig000000d6 ),
    .O(\blk00000003/sig000000b8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk000000c3  (
    .I0(\blk00000003/sig000000c9 ),
    .I1(\blk00000003/sig000000ca ),
    .I2(\blk00000003/sig000000cb ),
    .I3(a_0[18]),
    .I4(a_0[19]),
    .I5(\blk00000003/sig000000cc ),
    .O(\blk00000003/sig000000cf )
  );
  LUT5 #(
    .INIT ( 32'hFDEC3120 ))
  \blk00000003/blk000000c2  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000011f ),
    .I3(\blk00000003/sig00000120 ),
    .I4(\blk00000003/sig0000010d ),
    .O(\blk00000003/sig0000011a )
  );
  LUT6 #(
    .INIT ( 64'hBE3CAA2896148200 ))
  \blk00000003/blk000000c1  (
    .I0(\blk00000003/sig000000ed ),
    .I1(\blk00000003/sig000000cd ),
    .I2(a_0[27]),
    .I3(a_0[1]),
    .I4(a_0[9]),
    .I5(a_0[17]),
    .O(\blk00000003/sig0000011f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000c0  (
    .I0(a_0[31]),
    .O(\blk00000003/sig000000be )
  );
  LUT6 #(
    .INIT ( 64'hFFFDAAA877752220 ))
  \blk00000003/blk000000bf  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000011e ),
    .I3(\blk00000003/sig0000011d ),
    .I4(\blk00000003/sig0000011a ),
    .I5(\blk00000003/sig0000010c ),
    .O(\blk00000003/sig0000011c )
  );
  LUT6 #(
    .INIT ( 64'h00EC00A800640020 ))
  \blk00000003/blk000000be  (
    .I0(\blk00000003/sig000000ed ),
    .I1(\blk00000003/sig000000eb ),
    .I2(a_0[0]),
    .I3(\blk00000003/sig000000ec ),
    .I4(a_0[8]),
    .I5(a_0[16]),
    .O(\blk00000003/sig0000011d )
  );
  LUT4 #(
    .INIT ( 16'h66A6 ))
  \blk00000003/blk000000bd  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig0000011c ),
    .I2(\blk00000003/sig00000048 ),
    .I3(\blk00000003/sig0000011b ),
    .O(\blk00000003/sig0000005f )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \blk00000003/blk000000bc  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .I2(a_0[26]),
    .O(\blk00000003/sig000000cd )
  );
  LUT5 #(
    .INIT ( 32'hBAFE1054 ))
  \blk00000003/blk000000bb  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000010c ),
    .I3(\blk00000003/sig0000010b ),
    .I4(\blk00000003/sig0000011a ),
    .O(\blk00000003/sig0000011b )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk000000ba  (
    .I0(a_0[0]),
    .I1(a_0[1]),
    .I2(a_0[2]),
    .I3(a_0[3]),
    .O(\blk00000003/sig00000049 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk000000b9  (
    .I0(a_0[4]),
    .I1(a_0[5]),
    .I2(a_0[6]),
    .I3(a_0[7]),
    .O(\blk00000003/sig0000004b )
  );
  LUT6 #(
    .INIT ( 64'h2A6E3B7F084C195D ))
  \blk00000003/blk000000b8  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000010a ),
    .I3(\blk00000003/sig00000114 ),
    .I4(\blk00000003/sig0000010b ),
    .I5(\blk00000003/sig0000010d ),
    .O(\blk00000003/sig00000119 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b7  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000119 ),
    .O(\blk00000003/sig00000067 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000b6  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig00000103 ),
    .I3(\blk00000003/sig00000114 ),
    .I4(\blk00000003/sig0000010b ),
    .I5(\blk00000003/sig0000010a ),
    .O(\blk00000003/sig00000118 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b5  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000118 ),
    .O(\blk00000003/sig0000006a )
  );
  LUT5 #(
    .INIT ( 32'h030F010F ))
  \blk00000003/blk000000b4  (
    .I0(a_0[2]),
    .I1(a_0[1]),
    .I2(a_0[0]),
    .I3(a_0[24]),
    .I4(a_0[23]),
    .O(\blk00000003/sig00000117 )
  );
  LUT5 #(
    .INIT ( 32'h030F010F ))
  \blk00000003/blk000000b3  (
    .I0(a_0[10]),
    .I1(a_0[9]),
    .I2(a_0[8]),
    .I3(a_0[24]),
    .I4(a_0[23]),
    .O(\blk00000003/sig00000116 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000b2  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig00000100 ),
    .I3(\blk00000003/sig00000103 ),
    .I4(\blk00000003/sig0000010a ),
    .I5(\blk00000003/sig00000114 ),
    .O(\blk00000003/sig00000115 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b1  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000115 ),
    .O(\blk00000003/sig0000006d )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000b0  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig00000101 ),
    .I3(\blk00000003/sig00000100 ),
    .I4(\blk00000003/sig00000114 ),
    .I5(\blk00000003/sig00000103 ),
    .O(\blk00000003/sig00000113 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000af  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000113 ),
    .O(\blk00000003/sig00000070 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000ae  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000010f ),
    .I3(\blk00000003/sig000000fe ),
    .I4(\blk00000003/sig00000101 ),
    .I5(\blk00000003/sig000000ff ),
    .O(\blk00000003/sig00000112 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000ad  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000112 ),
    .O(\blk00000003/sig00000079 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000ac  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000fa ),
    .I3(\blk00000003/sig0000010f ),
    .I4(\blk00000003/sig000000ff ),
    .I5(\blk00000003/sig000000fe ),
    .O(\blk00000003/sig00000111 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000ab  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000111 ),
    .O(\blk00000003/sig0000007c )
  );
  LUT6 #(
    .INIT ( 64'hABBBEFFF01114555 ))
  \blk00000003/blk000000aa  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(\blk00000003/sig000000eb ),
    .I3(a_0[12]),
    .I4(\blk00000003/sig00000104 ),
    .I5(\blk00000003/sig00000105 ),
    .O(\blk00000003/sig0000010b )
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \blk00000003/blk000000a9  (
    .I0(a_0[25]),
    .I1(a_0[26]),
    .I2(a_0[24]),
    .O(\blk00000003/sig000000ed )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000a8  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000f8 ),
    .I3(\blk00000003/sig000000fa ),
    .I4(\blk00000003/sig000000fe ),
    .I5(\blk00000003/sig0000010f ),
    .O(\blk00000003/sig00000110 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a7  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000110 ),
    .O(\blk00000003/sig0000007f )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk000000a6  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000f5 ),
    .I3(\blk00000003/sig000000f8 ),
    .I4(\blk00000003/sig0000010f ),
    .I5(\blk00000003/sig000000fa ),
    .O(\blk00000003/sig0000010e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a5  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig0000010e ),
    .O(\blk00000003/sig00000082 )
  );
  LUT6 #(
    .INIT ( 64'h37BF159D26AE048C ))
  \blk00000003/blk000000a4  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig0000010a ),
    .I3(\blk00000003/sig0000010b ),
    .I4(\blk00000003/sig0000010c ),
    .I5(\blk00000003/sig0000010d ),
    .O(\blk00000003/sig00000109 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a3  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000109 ),
    .O(\blk00000003/sig00000064 )
  );
  LUT6 #(
    .INIT ( 64'hABBBAFBF01110515 ))
  \blk00000003/blk000000a2  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000eb ),
    .I2(\blk00000003/sig000000ed ),
    .I3(a_0[7]),
    .I4(a_0[15]),
    .I5(\blk00000003/sig000000fd ),
    .O(\blk00000003/sig00000103 )
  );
  LUT6 #(
    .INIT ( 64'hFFCC8080FFCCB3B3 ))
  \blk00000003/blk000000a1  (
    .I0(\blk00000003/sig00000052 ),
    .I1(\blk00000003/sig000000ec ),
    .I2(\blk00000003/sig00000108 ),
    .I3(\blk00000003/sig00000053 ),
    .I4(\blk00000003/sig00000106 ),
    .I5(\blk00000003/sig00000107 ),
    .O(\blk00000003/sig00000044 )
  );
  LUT5 #(
    .INIT ( 32'h51715173 ))
  \blk00000003/blk000000a0  (
    .I0(a_0[24]),
    .I1(a_0[20]),
    .I2(a_0[23]),
    .I3(a_0[21]),
    .I4(a_0[22]),
    .O(\blk00000003/sig00000108 )
  );
  LUT6 #(
    .INIT ( 64'hA8FAA8F8FFFFFFFF ))
  \blk00000003/blk0000009f  (
    .I0(a_0[24]),
    .I1(a_0[17]),
    .I2(a_0[16]),
    .I3(a_0[23]),
    .I4(a_0[18]),
    .I5(\blk00000003/sig00000050 ),
    .O(\blk00000003/sig00000107 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \blk00000003/blk0000009e  (
    .I0(a_0[24]),
    .I1(a_0[26]),
    .I2(a_0[25]),
    .O(\blk00000003/sig00000106 )
  );
  LUT6 #(
    .INIT ( 64'hDDFF88AA5D7F082A ))
  \blk00000003/blk0000009d  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(a_0[12]),
    .I3(\blk00000003/sig00000104 ),
    .I4(\blk00000003/sig00000105 ),
    .I5(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig00000100 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000009c  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000ff ),
    .I3(\blk00000003/sig00000101 ),
    .I4(\blk00000003/sig00000103 ),
    .I5(\blk00000003/sig00000100 ),
    .O(\blk00000003/sig00000102 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000009b  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig00000102 ),
    .O(\blk00000003/sig00000073 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000009a  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000fe ),
    .I3(\blk00000003/sig000000ff ),
    .I4(\blk00000003/sig00000100 ),
    .I5(\blk00000003/sig00000101 ),
    .O(\blk00000003/sig000000fc )
  );
  LUT6 #(
    .INIT ( 64'hDD5DDD7F8808882A ))
  \blk00000003/blk00000099  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(a_0[15]),
    .I3(\blk00000003/sig000000eb ),
    .I4(a_0[7]),
    .I5(\blk00000003/sig000000fd ),
    .O(\blk00000003/sig000000fe )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000098  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000fc ),
    .O(\blk00000003/sig00000076 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000097  (
    .I0(a_0[8]),
    .I1(a_0[9]),
    .I2(a_0[10]),
    .I3(a_0[11]),
    .O(\blk00000003/sig0000004d )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAAAA5D7F082A ))
  \blk00000003/blk00000096  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(a_0[17]),
    .I3(a_0[9]),
    .I4(\blk00000003/sig000000fb ),
    .I5(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000fa )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000095  (
    .I0(a_0[12]),
    .I1(a_0[13]),
    .I2(a_0[14]),
    .I3(a_0[15]),
    .O(\blk00000003/sig0000004f )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000094  (
    .I0(a_0[16]),
    .I1(a_0[17]),
    .I2(a_0[18]),
    .I3(a_0[19]),
    .O(\blk00000003/sig00000051 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000093  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000f3 ),
    .I3(\blk00000003/sig000000f5 ),
    .I4(\blk00000003/sig000000fa ),
    .I5(\blk00000003/sig000000f8 ),
    .O(\blk00000003/sig000000f9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000092  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000f9 ),
    .O(\blk00000003/sig00000085 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000091  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000f1 ),
    .I3(\blk00000003/sig000000f3 ),
    .I4(\blk00000003/sig000000f8 ),
    .I5(\blk00000003/sig000000f5 ),
    .O(\blk00000003/sig000000f7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000090  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000f7 ),
    .O(\blk00000003/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000008f  (
    .I0(a_0[24]),
    .I1(a_0[25]),
    .O(\blk00000003/sig000000ec )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0257A2F7 ))
  \blk00000003/blk0000008e  (
    .I0(\blk00000003/sig000000ed ),
    .I1(a_0[18]),
    .I2(\blk00000003/sig000000ec ),
    .I3(\blk00000003/sig000000f6 ),
    .I4(a_0[22]),
    .I5(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000ef )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000008d  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000ef ),
    .I3(\blk00000003/sig000000f1 ),
    .I4(\blk00000003/sig000000f5 ),
    .I5(\blk00000003/sig000000f3 ),
    .O(\blk00000003/sig000000f4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000008c  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000f4 ),
    .O(\blk00000003/sig0000008b )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000008b  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000ea ),
    .I3(\blk00000003/sig000000ef ),
    .I4(\blk00000003/sig000000f3 ),
    .I5(\blk00000003/sig000000f1 ),
    .O(\blk00000003/sig000000f2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000008a  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000f2 ),
    .O(\blk00000003/sig0000008e )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000089  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000e8 ),
    .I3(\blk00000003/sig000000ea ),
    .I4(\blk00000003/sig000000f1 ),
    .I5(\blk00000003/sig000000ef ),
    .O(\blk00000003/sig000000f0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000088  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000f0 ),
    .O(\blk00000003/sig00000091 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000087  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000e6 ),
    .I3(\blk00000003/sig000000e8 ),
    .I4(\blk00000003/sig000000ef ),
    .I5(\blk00000003/sig000000ea ),
    .O(\blk00000003/sig000000ee )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000086  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000ee ),
    .O(\blk00000003/sig00000094 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF02461357 ))
  \blk00000003/blk00000085  (
    .I0(\blk00000003/sig000000ec ),
    .I1(\blk00000003/sig000000ed ),
    .I2(a_0[15]),
    .I3(a_0[19]),
    .I4(a_0[11]),
    .I5(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000ea )
  );
  LUT6 #(
    .INIT ( 64'hEEAEFFAEEEBFFFBF ))
  \blk00000003/blk00000084  (
    .I0(\blk00000003/sig000000eb ),
    .I1(\blk00000003/sig000000ec ),
    .I2(a_0[16]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[20]),
    .I5(a_0[12]),
    .O(\blk00000003/sig000000e8 )
  );
  LUT6 #(
    .INIT ( 64'hEEAEFFAEEEBFFFBF ))
  \blk00000003/blk00000083  (
    .I0(\blk00000003/sig000000eb ),
    .I1(\blk00000003/sig000000ec ),
    .I2(a_0[17]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[21]),
    .I5(a_0[13]),
    .O(\blk00000003/sig000000e6 )
  );
  LUT6 #(
    .INIT ( 64'hEEAEFFAEEEBFFFBF ))
  \blk00000003/blk00000082  (
    .I0(\blk00000003/sig000000eb ),
    .I1(\blk00000003/sig000000ec ),
    .I2(a_0[18]),
    .I3(\blk00000003/sig000000ed ),
    .I4(a_0[22]),
    .I5(a_0[14]),
    .O(\blk00000003/sig000000e4 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000081  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000e4 ),
    .I3(\blk00000003/sig000000e6 ),
    .I4(\blk00000003/sig000000ea ),
    .I5(\blk00000003/sig000000e8 ),
    .O(\blk00000003/sig000000e9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000080  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000e9 ),
    .O(\blk00000003/sig00000097 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000007f  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000e2 ),
    .I3(\blk00000003/sig000000e4 ),
    .I4(\blk00000003/sig000000e8 ),
    .I5(\blk00000003/sig000000e6 ),
    .O(\blk00000003/sig000000e7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007e  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000e7 ),
    .O(\blk00000003/sig0000009a )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000007d  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000e0 ),
    .I3(\blk00000003/sig000000e2 ),
    .I4(\blk00000003/sig000000e6 ),
    .I5(\blk00000003/sig000000e4 ),
    .O(\blk00000003/sig000000e5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007c  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000e5 ),
    .O(\blk00000003/sig0000009d )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000007b  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000de ),
    .I3(\blk00000003/sig000000e0 ),
    .I4(\blk00000003/sig000000e4 ),
    .I5(\blk00000003/sig000000e2 ),
    .O(\blk00000003/sig000000e3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007a  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000e3 ),
    .O(\blk00000003/sig000000a0 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000079  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000dc ),
    .I3(\blk00000003/sig000000de ),
    .I4(\blk00000003/sig000000e2 ),
    .I5(\blk00000003/sig000000e0 ),
    .O(\blk00000003/sig000000e1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000078  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000e1 ),
    .O(\blk00000003/sig000000a3 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000077  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000da ),
    .I3(\blk00000003/sig000000dc ),
    .I4(\blk00000003/sig000000e0 ),
    .I5(\blk00000003/sig000000de ),
    .O(\blk00000003/sig000000df )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000076  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000df ),
    .O(\blk00000003/sig000000a6 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000075  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000d7 ),
    .I3(\blk00000003/sig000000da ),
    .I4(\blk00000003/sig000000de ),
    .I5(\blk00000003/sig000000dc ),
    .O(\blk00000003/sig000000dd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000074  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000dd ),
    .O(\blk00000003/sig000000a9 )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000073  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000d8 ),
    .I3(\blk00000003/sig000000d7 ),
    .I4(\blk00000003/sig000000dc ),
    .I5(\blk00000003/sig000000da ),
    .O(\blk00000003/sig000000db )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000072  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000db ),
    .O(\blk00000003/sig000000ac )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk00000071  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000d6 ),
    .I3(\blk00000003/sig000000d8 ),
    .I4(\blk00000003/sig000000da ),
    .I5(\blk00000003/sig000000d7 ),
    .O(\blk00000003/sig000000d9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000070  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000d9 ),
    .O(\blk00000003/sig000000af )
  );
  LUT6 #(
    .INIT ( 64'h048C26AE159D37BF ))
  \blk00000003/blk0000006f  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000000d5 ),
    .I3(\blk00000003/sig000000d6 ),
    .I4(\blk00000003/sig000000d7 ),
    .I5(\blk00000003/sig000000d8 ),
    .O(\blk00000003/sig000000d4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000006e  (
    .I0(a_0[31]),
    .I1(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig000000b2 )
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \blk00000003/blk0000006d  (
    .I0(a_0[26]),
    .I1(a_0[27]),
    .I2(a_0[24]),
    .I3(a_0[25]),
    .O(\blk00000003/sig00000045 )
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \blk00000003/blk0000006c  (
    .I0(\blk00000003/sig000000c4 ),
    .I1(\blk00000003/sig000000d2 ),
    .I2(\blk00000003/sig000000cf ),
    .O(\blk00000003/sig000000d3 )
  );
  LUT6 #(
    .INIT ( 64'h0101FFFF00017FFF ))
  \blk00000003/blk0000006b  (
    .I0(a_0[28]),
    .I1(\blk00000003/sig000000c8 ),
    .I2(a_0[29]),
    .I3(a_0[27]),
    .I4(a_0[30]),
    .I5(\blk00000003/sig000000cd ),
    .O(\blk00000003/sig000000d2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEAFFEAC8 ))
  \blk00000003/blk0000006a  (
    .I0(\blk00000003/sig000000c8 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000000ce ),
    .I3(\blk00000003/sig000000cf ),
    .I4(\blk00000003/sig000000c4 ),
    .I5(\blk00000003/sig000000d0 ),
    .O(\blk00000003/sig000000d1 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA88A8 ))
  \blk00000003/blk00000069  (
    .I0(a_0[30]),
    .I1(a_0[28]),
    .I2(a_0[27]),
    .I3(\blk00000003/sig000000cd ),
    .I4(a_0[29]),
    .O(\blk00000003/sig000000ce )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \blk00000003/blk00000068  (
    .I0(a_0[16]),
    .I1(a_0[17]),
    .I2(a_0[13]),
    .I3(a_0[14]),
    .I4(a_0[15]),
    .O(\blk00000003/sig000000cc )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk00000067  (
    .I0(a_0[3]),
    .I1(a_0[4]),
    .I2(a_0[1]),
    .I3(a_0[2]),
    .I4(a_0[20]),
    .I5(a_0[0]),
    .O(\blk00000003/sig000000cb )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk00000066  (
    .I0(a_0[9]),
    .I1(a_0[10]),
    .I2(a_0[7]),
    .I3(a_0[8]),
    .I4(a_0[5]),
    .I5(a_0[6]),
    .O(\blk00000003/sig000000ca )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \blk00000003/blk00000065  (
    .I0(a_0[11]),
    .I1(a_0[12]),
    .I2(a_0[21]),
    .I3(a_0[22]),
    .O(\blk00000003/sig000000c9 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000003/blk00000064  (
    .I0(a_0[30]),
    .I1(a_0[27]),
    .I2(a_0[29]),
    .I3(a_0[28]),
    .O(\blk00000003/sig000000c7 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000063  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(a_0[25]),
    .I3(a_0[26]),
    .O(\blk00000003/sig000000c1 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000062  (
    .I0(a_0[27]),
    .I1(a_0[28]),
    .I2(a_0[29]),
    .I3(a_0[30]),
    .O(\blk00000003/sig000000c3 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000061  (
    .I0(a_0[0]),
    .I1(a_0[1]),
    .I2(a_0[2]),
    .I3(a_0[3]),
    .O(\blk00000003/sig0000005e )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk00000060  (
    .I0(a_0[4]),
    .I1(a_0[5]),
    .I2(a_0[6]),
    .I3(a_0[7]),
    .O(\blk00000003/sig0000005d )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk0000005f  (
    .I0(a_0[8]),
    .I1(a_0[9]),
    .I2(a_0[10]),
    .I3(a_0[11]),
    .O(\blk00000003/sig0000005b )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk0000005e  (
    .I0(a_0[12]),
    .I1(a_0[13]),
    .I2(a_0[14]),
    .I3(a_0[15]),
    .O(\blk00000003/sig00000059 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000003/blk0000005d  (
    .I0(a_0[16]),
    .I1(a_0[17]),
    .I2(a_0[18]),
    .I3(a_0[19]),
    .O(\blk00000003/sig00000057 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \blk00000003/blk0000005c  (
    .I0(a_0[20]),
    .I1(a_0[21]),
    .I2(a_0[22]),
    .O(\blk00000003/sig00000055 )
  );
  MUXCY   \blk00000003/blk0000005b  (
    .CI(\blk00000003/sig000000c6 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000c7 ),
    .O(\blk00000003/sig000000c8 )
  );
  MUXCY   \blk00000003/blk0000005a  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000c5 ),
    .O(\blk00000003/sig000000c6 )
  );
  MUXCY   \blk00000003/blk00000059  (
    .CI(\blk00000003/sig000000c2 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000c3 ),
    .O(\blk00000003/sig000000c4 )
  );
  MUXCY   \blk00000003/blk00000058  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000c1 ),
    .O(\blk00000003/sig000000c2 )
  );
  XORCY   \blk00000003/blk00000057  (
    .CI(\blk00000003/sig000000bf ),
    .LI(\blk00000003/sig00000001 ),
    .O(\NLW_blk00000003/blk00000057_O_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000056  (
    .CI(\blk00000003/sig000000bc ),
    .LI(\blk00000003/sig000000be ),
    .O(\blk00000003/sig000000c0 )
  );
  MUXCY   \blk00000003/blk00000055  (
    .CI(\blk00000003/sig000000bc ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000be ),
    .O(\blk00000003/sig000000bf )
  );
  XORCY   \blk00000003/blk00000054  (
    .CI(\blk00000003/sig000000b9 ),
    .LI(\blk00000003/sig000000bb ),
    .O(\blk00000003/sig000000bd )
  );
  MUXCY   \blk00000003/blk00000053  (
    .CI(\blk00000003/sig000000b9 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000bb ),
    .O(\blk00000003/sig000000bc )
  );
  XORCY   \blk00000003/blk00000052  (
    .CI(\blk00000003/sig000000b6 ),
    .LI(\blk00000003/sig000000b8 ),
    .O(\blk00000003/sig000000ba )
  );
  MUXCY   \blk00000003/blk00000051  (
    .CI(\blk00000003/sig000000b6 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000b8 ),
    .O(\blk00000003/sig000000b9 )
  );
  XORCY   \blk00000003/blk00000050  (
    .CI(\blk00000003/sig000000b3 ),
    .LI(\blk00000003/sig000000b5 ),
    .O(\blk00000003/sig000000b7 )
  );
  MUXCY   \blk00000003/blk0000004f  (
    .CI(\blk00000003/sig000000b3 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000b5 ),
    .O(\blk00000003/sig000000b6 )
  );
  XORCY   \blk00000003/blk0000004e  (
    .CI(\blk00000003/sig000000b0 ),
    .LI(\blk00000003/sig000000b2 ),
    .O(\blk00000003/sig000000b4 )
  );
  MUXCY   \blk00000003/blk0000004d  (
    .CI(\blk00000003/sig000000b0 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000b2 ),
    .O(\blk00000003/sig000000b3 )
  );
  XORCY   \blk00000003/blk0000004c  (
    .CI(\blk00000003/sig000000ad ),
    .LI(\blk00000003/sig000000af ),
    .O(\blk00000003/sig000000b1 )
  );
  MUXCY   \blk00000003/blk0000004b  (
    .CI(\blk00000003/sig000000ad ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000af ),
    .O(\blk00000003/sig000000b0 )
  );
  XORCY   \blk00000003/blk0000004a  (
    .CI(\blk00000003/sig000000aa ),
    .LI(\blk00000003/sig000000ac ),
    .O(\blk00000003/sig000000ae )
  );
  MUXCY   \blk00000003/blk00000049  (
    .CI(\blk00000003/sig000000aa ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000ac ),
    .O(\blk00000003/sig000000ad )
  );
  XORCY   \blk00000003/blk00000048  (
    .CI(\blk00000003/sig000000a7 ),
    .LI(\blk00000003/sig000000a9 ),
    .O(\blk00000003/sig000000ab )
  );
  MUXCY   \blk00000003/blk00000047  (
    .CI(\blk00000003/sig000000a7 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000a9 ),
    .O(\blk00000003/sig000000aa )
  );
  XORCY   \blk00000003/blk00000046  (
    .CI(\blk00000003/sig000000a4 ),
    .LI(\blk00000003/sig000000a6 ),
    .O(\blk00000003/sig000000a8 )
  );
  MUXCY   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig000000a4 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000a6 ),
    .O(\blk00000003/sig000000a7 )
  );
  XORCY   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig000000a1 ),
    .LI(\blk00000003/sig000000a3 ),
    .O(\blk00000003/sig000000a5 )
  );
  MUXCY   \blk00000003/blk00000043  (
    .CI(\blk00000003/sig000000a1 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000a3 ),
    .O(\blk00000003/sig000000a4 )
  );
  XORCY   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig0000009e ),
    .LI(\blk00000003/sig000000a0 ),
    .O(\blk00000003/sig000000a2 )
  );
  MUXCY   \blk00000003/blk00000041  (
    .CI(\blk00000003/sig0000009e ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig000000a0 ),
    .O(\blk00000003/sig000000a1 )
  );
  XORCY   \blk00000003/blk00000040  (
    .CI(\blk00000003/sig0000009b ),
    .LI(\blk00000003/sig0000009d ),
    .O(\blk00000003/sig0000009f )
  );
  MUXCY   \blk00000003/blk0000003f  (
    .CI(\blk00000003/sig0000009b ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000009d ),
    .O(\blk00000003/sig0000009e )
  );
  XORCY   \blk00000003/blk0000003e  (
    .CI(\blk00000003/sig00000098 ),
    .LI(\blk00000003/sig0000009a ),
    .O(\blk00000003/sig0000009c )
  );
  MUXCY   \blk00000003/blk0000003d  (
    .CI(\blk00000003/sig00000098 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000009a ),
    .O(\blk00000003/sig0000009b )
  );
  XORCY   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig00000095 ),
    .LI(\blk00000003/sig00000097 ),
    .O(\blk00000003/sig00000099 )
  );
  MUXCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig00000095 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000097 ),
    .O(\blk00000003/sig00000098 )
  );
  XORCY   \blk00000003/blk0000003a  (
    .CI(\blk00000003/sig00000092 ),
    .LI(\blk00000003/sig00000094 ),
    .O(\blk00000003/sig00000096 )
  );
  MUXCY   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig00000092 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000094 ),
    .O(\blk00000003/sig00000095 )
  );
  XORCY   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig0000008f ),
    .LI(\blk00000003/sig00000091 ),
    .O(\blk00000003/sig00000093 )
  );
  MUXCY   \blk00000003/blk00000037  (
    .CI(\blk00000003/sig0000008f ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000091 ),
    .O(\blk00000003/sig00000092 )
  );
  XORCY   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig0000008c ),
    .LI(\blk00000003/sig0000008e ),
    .O(\blk00000003/sig00000090 )
  );
  MUXCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig0000008c ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000008e ),
    .O(\blk00000003/sig0000008f )
  );
  XORCY   \blk00000003/blk00000034  (
    .CI(\blk00000003/sig00000089 ),
    .LI(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000008d )
  );
  MUXCY   \blk00000003/blk00000033  (
    .CI(\blk00000003/sig00000089 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000008b ),
    .O(\blk00000003/sig0000008c )
  );
  XORCY   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig00000086 ),
    .LI(\blk00000003/sig00000088 ),
    .O(\blk00000003/sig0000008a )
  );
  MUXCY   \blk00000003/blk00000031  (
    .CI(\blk00000003/sig00000086 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000088 ),
    .O(\blk00000003/sig00000089 )
  );
  XORCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig00000083 ),
    .LI(\blk00000003/sig00000085 ),
    .O(\blk00000003/sig00000087 )
  );
  MUXCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig00000083 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000085 ),
    .O(\blk00000003/sig00000086 )
  );
  XORCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig00000080 ),
    .LI(\blk00000003/sig00000082 ),
    .O(\blk00000003/sig00000084 )
  );
  MUXCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig00000080 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000082 ),
    .O(\blk00000003/sig00000083 )
  );
  XORCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig0000007d ),
    .LI(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig00000081 )
  );
  MUXCY   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig0000007d ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig00000080 )
  );
  XORCY   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig0000007a ),
    .LI(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig0000007e )
  );
  MUXCY   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig0000007a ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig0000007d )
  );
  XORCY   \blk00000003/blk00000028  (
    .CI(\blk00000003/sig00000077 ),
    .LI(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig0000007b )
  );
  MUXCY   \blk00000003/blk00000027  (
    .CI(\blk00000003/sig00000077 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig0000007a )
  );
  XORCY   \blk00000003/blk00000026  (
    .CI(\blk00000003/sig00000074 ),
    .LI(\blk00000003/sig00000076 ),
    .O(\blk00000003/sig00000078 )
  );
  MUXCY   \blk00000003/blk00000025  (
    .CI(\blk00000003/sig00000074 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000076 ),
    .O(\blk00000003/sig00000077 )
  );
  XORCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig00000071 ),
    .LI(\blk00000003/sig00000073 ),
    .O(\blk00000003/sig00000075 )
  );
  MUXCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig00000071 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000073 ),
    .O(\blk00000003/sig00000074 )
  );
  XORCY   \blk00000003/blk00000022  (
    .CI(\blk00000003/sig0000006e ),
    .LI(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig00000072 )
  );
  MUXCY   \blk00000003/blk00000021  (
    .CI(\blk00000003/sig0000006e ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig00000071 )
  );
  XORCY   \blk00000003/blk00000020  (
    .CI(\blk00000003/sig0000006b ),
    .LI(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig0000006f )
  );
  MUXCY   \blk00000003/blk0000001f  (
    .CI(\blk00000003/sig0000006b ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig0000006e )
  );
  XORCY   \blk00000003/blk0000001e  (
    .CI(\blk00000003/sig00000068 ),
    .LI(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig0000006c )
  );
  MUXCY   \blk00000003/blk0000001d  (
    .CI(\blk00000003/sig00000068 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig0000006b )
  );
  XORCY   \blk00000003/blk0000001c  (
    .CI(\blk00000003/sig00000065 ),
    .LI(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000069 )
  );
  MUXCY   \blk00000003/blk0000001b  (
    .CI(\blk00000003/sig00000065 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000068 )
  );
  XORCY   \blk00000003/blk0000001a  (
    .CI(\blk00000003/sig00000062 ),
    .LI(\blk00000003/sig00000064 ),
    .O(\blk00000003/sig00000066 )
  );
  MUXCY   \blk00000003/blk00000019  (
    .CI(\blk00000003/sig00000062 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000064 ),
    .O(\blk00000003/sig00000065 )
  );
  XORCY   \blk00000003/blk00000018  (
    .CI(\blk00000003/sig00000060 ),
    .LI(\blk00000003/sig00000061 ),
    .O(\blk00000003/sig00000063 )
  );
  MUXCY   \blk00000003/blk00000017  (
    .CI(\blk00000003/sig00000060 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000061 ),
    .O(\blk00000003/sig00000062 )
  );
  XORCY   \blk00000003/blk00000016  (
    .CI(\blk00000003/sig00000002 ),
    .LI(\blk00000003/sig0000005f ),
    .O(\NLW_blk00000003/blk00000016_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000015  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000005f ),
    .O(\blk00000003/sig00000060 )
  );
  MUXCY   \blk00000003/blk00000014  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000005e ),
    .O(\blk00000003/sig0000005c )
  );
  MUXCY   \blk00000003/blk00000013  (
    .CI(\blk00000003/sig0000005c ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000005d ),
    .O(\blk00000003/sig0000005a )
  );
  MUXCY   \blk00000003/blk00000012  (
    .CI(\blk00000003/sig0000005a ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000005b ),
    .O(\blk00000003/sig00000058 )
  );
  MUXCY   \blk00000003/blk00000011  (
    .CI(\blk00000003/sig00000058 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000059 ),
    .O(\blk00000003/sig00000056 )
  );
  MUXCY   \blk00000003/blk00000010  (
    .CI(\blk00000003/sig00000056 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000057 ),
    .O(\blk00000003/sig00000054 )
  );
  MUXCY   \blk00000003/blk0000000f  (
    .CI(\blk00000003/sig00000054 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000055 ),
    .O(\NLW_blk00000003/blk0000000f_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig00000052 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000001 ),
    .O(\blk00000003/sig00000053 )
  );
  MUXCY   \blk00000003/blk0000000d  (
    .CI(\blk00000003/sig00000050 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000051 ),
    .O(\blk00000003/sig00000052 )
  );
  MUXCY   \blk00000003/blk0000000c  (
    .CI(\blk00000003/sig0000004e ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000004f ),
    .O(\blk00000003/sig00000050 )
  );
  MUXCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig0000004c ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000004d ),
    .O(\blk00000003/sig0000004e )
  );
  MUXCY   \blk00000003/blk0000000a  (
    .CI(\blk00000003/sig0000004a ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig0000004b ),
    .O(\blk00000003/sig0000004c )
  );
  MUXCY   \blk00000003/blk00000009  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000001 ),
    .S(\blk00000003/sig00000049 ),
    .O(\blk00000003/sig0000004a )
  );
  MUXF8   \blk00000003/blk00000008  (
    .I0(\blk00000003/sig00000046 ),
    .I1(\blk00000003/sig00000047 ),
    .S(\blk00000003/sig00000001 ),
    .O(\blk00000003/sig00000048 )
  );
  MUXF7   \blk00000003/blk00000007  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000045 ),
    .O(\blk00000003/sig00000047 )
  );
  MUXF7   \blk00000003/blk00000006  (
    .I0(\blk00000003/sig00000043 ),
    .I1(\blk00000003/sig00000044 ),
    .S(\blk00000003/sig00000045 ),
    .O(\blk00000003/sig00000046 )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig00000002 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000001 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

// synthesis translate_on
