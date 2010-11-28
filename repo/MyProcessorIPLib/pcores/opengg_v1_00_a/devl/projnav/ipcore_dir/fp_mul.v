////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: fp_mul.v
// /___/   /\     Timestamp: Sun Nov 28 01:15:10 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/fp_mul.ngc ./tmp/_cg/fp_mul.v 
// Device	: 5vlx110tff1136-1
// Input file	: ./tmp/_cg/fp_mul.ngc
// Output file	: ./tmp/_cg/fp_mul.v
// # of Modules	: 1
// Design Name	: fp_mul
// Xilinx        : /opt/Xilinx/12.2/ISE_DS/ISE/
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

module fp_mul (
a, b, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input [31 : 0] a;
  input [31 : 0] b;
  output [31 : 0] result;
  
  // synthesis translate_off
  
  wire \blk00000003/sig0000017d ;
  wire \blk00000003/sig0000017c ;
  wire \blk00000003/sig0000017b ;
  wire \blk00000003/sig0000017a ;
  wire \blk00000003/sig00000179 ;
  wire \blk00000003/sig00000178 ;
  wire \blk00000003/sig00000177 ;
  wire \blk00000003/sig00000176 ;
  wire \blk00000003/sig00000175 ;
  wire \blk00000003/sig00000174 ;
  wire \blk00000003/sig00000173 ;
  wire \blk00000003/sig00000172 ;
  wire \blk00000003/sig00000171 ;
  wire \blk00000003/sig00000170 ;
  wire \blk00000003/sig0000016f ;
  wire \blk00000003/sig0000016e ;
  wire \blk00000003/sig0000016d ;
  wire \blk00000003/sig0000016c ;
  wire \blk00000003/sig0000016b ;
  wire \blk00000003/sig0000016a ;
  wire \blk00000003/sig00000169 ;
  wire \blk00000003/sig00000168 ;
  wire \blk00000003/sig00000167 ;
  wire \blk00000003/sig00000166 ;
  wire \blk00000003/sig00000165 ;
  wire \blk00000003/sig00000164 ;
  wire \blk00000003/sig00000163 ;
  wire \blk00000003/sig00000162 ;
  wire \blk00000003/sig00000161 ;
  wire \blk00000003/sig00000160 ;
  wire \blk00000003/sig0000015f ;
  wire \blk00000003/sig0000015e ;
  wire \blk00000003/sig0000015d ;
  wire \blk00000003/sig0000015c ;
  wire \blk00000003/sig0000015b ;
  wire \blk00000003/sig0000015a ;
  wire \blk00000003/sig00000159 ;
  wire \blk00000003/sig00000158 ;
  wire \blk00000003/sig00000157 ;
  wire \blk00000003/sig00000156 ;
  wire \blk00000003/sig00000155 ;
  wire \blk00000003/sig00000154 ;
  wire \blk00000003/sig00000153 ;
  wire \blk00000003/sig00000152 ;
  wire \blk00000003/sig00000151 ;
  wire \blk00000003/sig00000150 ;
  wire \blk00000003/sig0000014f ;
  wire \blk00000003/sig0000014e ;
  wire \blk00000003/sig0000014d ;
  wire \blk00000003/sig0000014c ;
  wire \blk00000003/sig0000014b ;
  wire \blk00000003/sig0000014a ;
  wire \blk00000003/sig00000149 ;
  wire \blk00000003/sig00000148 ;
  wire \blk00000003/sig00000147 ;
  wire \blk00000003/sig00000146 ;
  wire \blk00000003/sig00000145 ;
  wire \blk00000003/sig00000144 ;
  wire \blk00000003/sig00000143 ;
  wire \blk00000003/sig00000142 ;
  wire \blk00000003/sig00000141 ;
  wire \blk00000003/sig00000140 ;
  wire \blk00000003/sig0000013f ;
  wire \blk00000003/sig0000013e ;
  wire \blk00000003/sig0000013d ;
  wire \blk00000003/sig0000013c ;
  wire \blk00000003/sig0000013b ;
  wire \blk00000003/sig0000013a ;
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
  wire \blk00000003/sig00000003 ;
  wire \blk00000003/sig00000002 ;
  wire \blk00000003/sig00000001 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000020_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_P<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000020_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_P<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001f_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_P<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000001e_CARRYOUT<0>_UNCONNECTED ;
  wire [31 : 0] a_0;
  wire [31 : 0] b_1;
  wire [31 : 0] result_2;
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
    b_1[31] = b[31],
    b_1[30] = b[30],
    b_1[29] = b[29],
    b_1[28] = b[28],
    b_1[27] = b[27],
    b_1[26] = b[26],
    b_1[25] = b[25],
    b_1[24] = b[24],
    b_1[23] = b[23],
    b_1[22] = b[22],
    b_1[21] = b[21],
    b_1[20] = b[20],
    b_1[19] = b[19],
    b_1[18] = b[18],
    b_1[17] = b[17],
    b_1[16] = b[16],
    b_1[15] = b[15],
    b_1[14] = b[14],
    b_1[13] = b[13],
    b_1[12] = b[12],
    b_1[11] = b[11],
    b_1[10] = b[10],
    b_1[9] = b[9],
    b_1[8] = b[8],
    b_1[7] = b[7],
    b_1[6] = b[6],
    b_1[5] = b[5],
    b_1[4] = b[4],
    b_1[3] = b[3],
    b_1[2] = b[2],
    b_1[1] = b[1],
    b_1[0] = b[0],
    result[31] = result_2[31],
    result[30] = result_2[30],
    result[29] = result_2[29],
    result[28] = result_2[28],
    result[27] = result_2[27],
    result[26] = result_2[26],
    result[25] = result_2[25],
    result[24] = result_2[24],
    result[23] = result_2[23],
    result[22] = result_2[22],
    result[21] = result_2[21],
    result[20] = result_2[20],
    result[19] = result_2[19],
    result[18] = result_2[18],
    result[17] = result_2[17],
    result[16] = result_2[16],
    result[15] = result_2[15],
    result[14] = result_2[14],
    result[13] = result_2[13],
    result[12] = result_2[12],
    result[11] = result_2[11],
    result[10] = result_2[10],
    result[9] = result_2[9],
    result[8] = result_2[8],
    result[7] = result_2[7],
    result[6] = result_2[6],
    result[5] = result_2[5],
    result[4] = result_2[4],
    result[3] = result_2[3],
    result[2] = result_2[2],
    result[1] = result_2[1],
    result[0] = result_2[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  MUXF7   \blk00000003/blk00000080  (
    .I0(\blk00000003/sig0000017d ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[10])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000007f  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d9 ),
    .I3(\blk00000003/sig00000141 ),
    .I4(\blk00000003/sig00000142 ),
    .I5(\blk00000003/sig000000d8 ),
    .O(\blk00000003/sig0000017d )
  );
  MUXF7   \blk00000003/blk0000007e  (
    .I0(\blk00000003/sig0000017c ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[11])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000007d  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d8 ),
    .I3(\blk00000003/sig00000140 ),
    .I4(\blk00000003/sig00000141 ),
    .I5(\blk00000003/sig000000d7 ),
    .O(\blk00000003/sig0000017c )
  );
  MUXF7   \blk00000003/blk0000007c  (
    .I0(\blk00000003/sig0000017b ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[12])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000007b  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d7 ),
    .I3(\blk00000003/sig0000013f ),
    .I4(\blk00000003/sig00000140 ),
    .I5(\blk00000003/sig000000d6 ),
    .O(\blk00000003/sig0000017b )
  );
  MUXF7   \blk00000003/blk0000007a  (
    .I0(\blk00000003/sig0000017a ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[13])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000079  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d6 ),
    .I3(\blk00000003/sig0000013e ),
    .I4(\blk00000003/sig0000013f ),
    .I5(\blk00000003/sig000000d5 ),
    .O(\blk00000003/sig0000017a )
  );
  MUXF7   \blk00000003/blk00000078  (
    .I0(\blk00000003/sig00000179 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[14])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000077  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d5 ),
    .I3(\blk00000003/sig0000013d ),
    .I4(\blk00000003/sig0000013e ),
    .I5(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig00000179 )
  );
  MUXF7   \blk00000003/blk00000076  (
    .I0(\blk00000003/sig00000178 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[15])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000075  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d4 ),
    .I3(\blk00000003/sig0000013c ),
    .I4(\blk00000003/sig0000013d ),
    .I5(\blk00000003/sig000000d3 ),
    .O(\blk00000003/sig00000178 )
  );
  MUXF7   \blk00000003/blk00000074  (
    .I0(\blk00000003/sig00000177 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[16])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000073  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d3 ),
    .I3(\blk00000003/sig0000013b ),
    .I4(\blk00000003/sig0000013c ),
    .I5(\blk00000003/sig000000d2 ),
    .O(\blk00000003/sig00000177 )
  );
  MUXF7   \blk00000003/blk00000072  (
    .I0(\blk00000003/sig00000176 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[17])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000071  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d2 ),
    .I3(\blk00000003/sig0000013a ),
    .I4(\blk00000003/sig0000013b ),
    .I5(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig00000176 )
  );
  MUXF7   \blk00000003/blk00000070  (
    .I0(\blk00000003/sig00000175 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[18])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000006f  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d1 ),
    .I3(\blk00000003/sig00000139 ),
    .I4(\blk00000003/sig0000013a ),
    .I5(\blk00000003/sig000000d0 ),
    .O(\blk00000003/sig00000175 )
  );
  MUXF7   \blk00000003/blk0000006e  (
    .I0(\blk00000003/sig00000174 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[19])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000006d  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000d0 ),
    .I3(\blk00000003/sig00000138 ),
    .I4(\blk00000003/sig00000139 ),
    .I5(\blk00000003/sig000000cf ),
    .O(\blk00000003/sig00000174 )
  );
  MUXF7   \blk00000003/blk0000006c  (
    .I0(\blk00000003/sig00000173 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[1])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000006b  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000e2 ),
    .I3(\blk00000003/sig0000014a ),
    .I4(\blk00000003/sig0000014b ),
    .I5(\blk00000003/sig000000e1 ),
    .O(\blk00000003/sig00000173 )
  );
  MUXF7   \blk00000003/blk0000006a  (
    .I0(\blk00000003/sig00000172 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[20])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000069  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000cf ),
    .I3(\blk00000003/sig00000137 ),
    .I4(\blk00000003/sig00000138 ),
    .I5(\blk00000003/sig000000ce ),
    .O(\blk00000003/sig00000172 )
  );
  MUXF7   \blk00000003/blk00000068  (
    .I0(\blk00000003/sig00000171 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[21])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000067  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000ce ),
    .I3(\blk00000003/sig00000136 ),
    .I4(\blk00000003/sig00000137 ),
    .I5(\blk00000003/sig000000cd ),
    .O(\blk00000003/sig00000171 )
  );
  MUXF7   \blk00000003/blk00000066  (
    .I0(\blk00000003/sig00000170 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[2])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000065  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000e1 ),
    .I3(\blk00000003/sig00000149 ),
    .I4(\blk00000003/sig0000014a ),
    .I5(\blk00000003/sig000000e0 ),
    .O(\blk00000003/sig00000170 )
  );
  MUXF7   \blk00000003/blk00000064  (
    .I0(\blk00000003/sig0000016f ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[3])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000063  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000e0 ),
    .I3(\blk00000003/sig00000148 ),
    .I4(\blk00000003/sig00000149 ),
    .I5(\blk00000003/sig000000df ),
    .O(\blk00000003/sig0000016f )
  );
  MUXF7   \blk00000003/blk00000062  (
    .I0(\blk00000003/sig0000016e ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[4])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000061  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000df ),
    .I3(\blk00000003/sig00000147 ),
    .I4(\blk00000003/sig00000148 ),
    .I5(\blk00000003/sig000000de ),
    .O(\blk00000003/sig0000016e )
  );
  MUXF7   \blk00000003/blk00000060  (
    .I0(\blk00000003/sig0000016d ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[5])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000005f  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000de ),
    .I3(\blk00000003/sig00000146 ),
    .I4(\blk00000003/sig00000147 ),
    .I5(\blk00000003/sig000000dd ),
    .O(\blk00000003/sig0000016d )
  );
  MUXF7   \blk00000003/blk0000005e  (
    .I0(\blk00000003/sig0000016c ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[6])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000005d  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000dd ),
    .I3(\blk00000003/sig00000145 ),
    .I4(\blk00000003/sig00000146 ),
    .I5(\blk00000003/sig000000dc ),
    .O(\blk00000003/sig0000016c )
  );
  MUXF7   \blk00000003/blk0000005c  (
    .I0(\blk00000003/sig0000016b ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[7])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk0000005b  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000dc ),
    .I3(\blk00000003/sig00000144 ),
    .I4(\blk00000003/sig00000145 ),
    .I5(\blk00000003/sig000000db ),
    .O(\blk00000003/sig0000016b )
  );
  MUXF7   \blk00000003/blk0000005a  (
    .I0(\blk00000003/sig0000016a ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[8])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000059  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000db ),
    .I3(\blk00000003/sig00000143 ),
    .I4(\blk00000003/sig00000144 ),
    .I5(\blk00000003/sig000000da ),
    .O(\blk00000003/sig0000016a )
  );
  MUXF7   \blk00000003/blk00000058  (
    .I0(\blk00000003/sig00000169 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000015c ),
    .O(result_2[9])
  );
  LUT6 #(
    .INIT ( 64'hFDB9ECA875316420 ))
  \blk00000003/blk00000057  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000da ),
    .I3(\blk00000003/sig00000142 ),
    .I4(\blk00000003/sig00000143 ),
    .I5(\blk00000003/sig000000d9 ),
    .O(\blk00000003/sig00000169 )
  );
  MUXF7   \blk00000003/blk00000056  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000168 ),
    .S(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig0000015a )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk00000055  (
    .I0(\blk00000003/sig00000067 ),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000070 ),
    .I3(\blk00000003/sig00000073 ),
    .I4(\blk00000003/sig00000076 ),
    .I5(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig00000168 )
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000054  (
    .I0(\blk00000003/sig00000162 ),
    .I1(\blk00000003/sig0000015d ),
    .I2(\blk00000003/sig000000cc ),
    .I3(\blk00000003/sig00000135 ),
    .I4(\blk00000003/sig00000160 ),
    .O(\blk00000003/sig00000167 )
  );
  LUT6 #(
    .INIT ( 64'h5555555554501050 ))
  \blk00000003/blk00000053  (
    .I0(\blk00000003/sig00000162 ),
    .I1(\blk00000003/sig0000015d ),
    .I2(\blk00000003/sig00000136 ),
    .I3(\blk00000003/sig0000014c ),
    .I4(\blk00000003/sig000000cd ),
    .I5(\blk00000003/sig00000160 ),
    .O(\blk00000003/sig00000166 )
  );
  MUXF7   \blk00000003/blk00000052  (
    .I0(\blk00000003/sig00000166 ),
    .I1(\blk00000003/sig00000167 ),
    .S(\blk00000003/sig00000134 ),
    .O(result_2[22])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF1110 ))
  \blk00000003/blk00000051  (
    .I0(\blk00000003/sig0000014e ),
    .I1(\blk00000003/sig00000152 ),
    .I2(\blk00000003/sig0000015b ),
    .I3(\blk00000003/sig00000161 ),
    .I4(\blk00000003/sig00000160 ),
    .I5(\blk00000003/sig00000153 ),
    .O(\blk00000003/sig0000015c )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF02200AA0 ))
  \blk00000003/blk00000050  (
    .I0(\blk00000003/sig00000134 ),
    .I1(\blk00000003/sig0000007b ),
    .I2(\blk00000003/sig00000067 ),
    .I3(\blk00000003/sig00000066 ),
    .I4(\blk00000003/sig0000015a ),
    .I5(\blk00000003/sig00000153 ),
    .O(\blk00000003/sig00000164 )
  );
  LUT6 #(
    .INIT ( 64'hAA88AA08AA88AA88 ))
  \blk00000003/blk0000004f  (
    .I0(\blk00000003/sig0000014c ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000e4 ),
    .I3(\blk00000003/sig0000014d ),
    .I4(\blk00000003/sig0000014b ),
    .I5(\blk00000003/sig00000133 ),
    .O(\blk00000003/sig00000165 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF10 ))
  \blk00000003/blk0000004e  (
    .I0(\blk00000003/sig00000151 ),
    .I1(\blk00000003/sig0000014f ),
    .I2(\blk00000003/sig00000163 ),
    .I3(\blk00000003/sig0000014e ),
    .I4(\blk00000003/sig00000152 ),
    .O(\blk00000003/sig00000160 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \blk00000003/blk0000004d  (
    .I0(\blk00000003/sig000000cb ),
    .I1(\blk00000003/sig0000014c ),
    .I2(\blk00000003/sig0000014d ),
    .I3(\blk00000003/sig00000134 ),
    .O(\blk00000003/sig0000015f )
  );
  LUT6 #(
    .INIT ( 64'h3030302030303030 ))
  \blk00000003/blk0000004c  (
    .I0(\blk00000003/sig00000164 ),
    .I1(\blk00000003/sig00000160 ),
    .I2(\blk00000003/sig00000162 ),
    .I3(\blk00000003/sig00000152 ),
    .I4(\blk00000003/sig0000014e ),
    .I5(\blk00000003/sig00000159 ),
    .O(\blk00000003/sig0000015e )
  );
  LUT6 #(
    .INIT ( 64'hABBB8888ABBB0888 ))
  \blk00000003/blk0000004b  (
    .I0(\blk00000003/sig0000014c ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig000000e4 ),
    .I3(\blk00000003/sig00000133 ),
    .I4(\blk00000003/sig0000014d ),
    .I5(\blk00000003/sig0000014b ),
    .O(\blk00000003/sig0000015d )
  );
  LUT5 #(
    .INIT ( 32'hECEC8880 ))
  \blk00000003/blk0000004a  (
    .I0(\blk00000003/sig0000015a ),
    .I1(\blk00000003/sig00000067 ),
    .I2(\blk00000003/sig0000007b ),
    .I3(\blk00000003/sig00000134 ),
    .I4(\blk00000003/sig00000066 ),
    .O(\blk00000003/sig00000163 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF1110 ))
  \blk00000003/blk00000049  (
    .I0(\blk00000003/sig0000014e ),
    .I1(\blk00000003/sig00000152 ),
    .I2(\blk00000003/sig0000015b ),
    .I3(\blk00000003/sig00000161 ),
    .I4(\blk00000003/sig00000153 ),
    .O(\blk00000003/sig00000162 )
  );
  LUT5 #(
    .INIT ( 32'h75207733 ))
  \blk00000003/blk00000048  (
    .I0(\blk00000003/sig00000134 ),
    .I1(\blk00000003/sig00000066 ),
    .I2(\blk00000003/sig0000015a ),
    .I3(\blk00000003/sig00000159 ),
    .I4(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000161 )
  );
  LUT6 #(
    .INIT ( 64'h5555555545404045 ))
  \blk00000003/blk00000047  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig000000c3 ),
    .I2(\blk00000003/sig0000015f ),
    .I3(\blk00000003/sig000000e3 ),
    .I4(\blk00000003/sig00000066 ),
    .I5(\blk00000003/sig00000160 ),
    .O(result_2[30])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000046  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000ca ),
    .I3(\blk00000003/sig000000c2 ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[23])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000045  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c9 ),
    .I3(\blk00000003/sig000000c1 ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[24])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000044  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c8 ),
    .I3(\blk00000003/sig000000c0 ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[25])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000043  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c7 ),
    .I3(\blk00000003/sig000000bf ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[26])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000042  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c6 ),
    .I3(\blk00000003/sig000000be ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[27])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000041  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c5 ),
    .I3(\blk00000003/sig000000bd ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[28])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  \blk00000003/blk00000040  (
    .I0(\blk00000003/sig0000015e ),
    .I1(\blk00000003/sig0000015f ),
    .I2(\blk00000003/sig000000c4 ),
    .I3(\blk00000003/sig000000bc ),
    .I4(\blk00000003/sig00000160 ),
    .O(result_2[29])
  );
  LUT6 #(
    .INIT ( 64'h4541545005011410 ))
  \blk00000003/blk0000003f  (
    .I0(\blk00000003/sig0000015c ),
    .I1(\blk00000003/sig00000134 ),
    .I2(\blk00000003/sig0000015d ),
    .I3(\blk00000003/sig0000014b ),
    .I4(\blk00000003/sig0000014c ),
    .I5(\blk00000003/sig000000e2 ),
    .O(result_2[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000003e  (
    .I0(b_1[23]),
    .I1(a_0[23]),
    .O(\blk00000003/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000003d  (
    .I0(b_1[24]),
    .I1(a_0[24]),
    .O(\blk00000003/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000003c  (
    .I0(b_1[25]),
    .I1(a_0[25]),
    .O(\blk00000003/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000003b  (
    .I0(b_1[26]),
    .I1(a_0[26]),
    .O(\blk00000003/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000003a  (
    .I0(b_1[27]),
    .I1(a_0[27]),
    .O(\blk00000003/sig0000006f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000039  (
    .I0(b_1[28]),
    .I1(a_0[28]),
    .O(\blk00000003/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000038  (
    .I0(b_1[29]),
    .I1(a_0[29]),
    .O(\blk00000003/sig00000069 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \blk00000003/blk00000037  (
    .I0(\blk00000003/sig0000007b ),
    .I1(\blk00000003/sig0000015a ),
    .I2(\blk00000003/sig00000066 ),
    .I3(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig0000015b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000036  (
    .I0(b_1[30]),
    .I1(a_0[30]),
    .O(\blk00000003/sig00000065 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \blk00000003/blk00000035  (
    .I0(\blk00000003/sig00000067 ),
    .I1(\blk00000003/sig00000066 ),
    .I2(\blk00000003/sig0000006a ),
    .I3(\blk00000003/sig0000006d ),
    .I4(\blk00000003/sig00000070 ),
    .I5(\blk00000003/sig00000158 ),
    .O(\blk00000003/sig00000159 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \blk00000003/blk00000034  (
    .I0(\blk00000003/sig00000073 ),
    .I1(\blk00000003/sig00000076 ),
    .I2(\blk00000003/sig00000079 ),
    .I3(\blk00000003/sig0000007b ),
    .O(\blk00000003/sig00000158 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk00000033  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig00000157 ),
    .O(\blk00000003/sig0000014e )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000003/blk00000032  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(a_0[23]),
    .O(\blk00000003/sig00000157 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000031  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig00000156 ),
    .O(\blk00000003/sig00000151 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk00000030  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(a_0[23]),
    .O(\blk00000003/sig00000156 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk0000002f  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig00000155 ),
    .O(\blk00000003/sig00000152 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000003/blk0000002e  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig00000155 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000002d  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig00000154 ),
    .O(\blk00000003/sig0000014f )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk0000002c  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig00000154 )
  );
  LUT6 #(
    .INIT ( 64'h005D00005D585D58 ))
  \blk00000003/blk0000002b  (
    .I0(\blk00000003/sig00000152 ),
    .I1(\blk00000003/sig0000008b ),
    .I2(\blk00000003/sig00000151 ),
    .I3(\blk00000003/sig0000014f ),
    .I4(\blk00000003/sig00000083 ),
    .I5(\blk00000003/sig0000014e ),
    .O(\blk00000003/sig00000153 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000002a  (
    .I0(a_0[0]),
    .I1(a_0[1]),
    .I2(a_0[2]),
    .I3(a_0[3]),
    .I4(a_0[4]),
    .I5(a_0[5]),
    .O(\blk00000003/sig0000007c )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000029  (
    .I0(b_1[0]),
    .I1(b_1[1]),
    .I2(b_1[2]),
    .I3(b_1[3]),
    .I4(b_1[4]),
    .I5(b_1[5]),
    .O(\blk00000003/sig00000084 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000028  (
    .I0(a_0[6]),
    .I1(a_0[7]),
    .I2(a_0[8]),
    .I3(a_0[9]),
    .I4(a_0[10]),
    .I5(a_0[11]),
    .O(\blk00000003/sig0000007e )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000027  (
    .I0(b_1[6]),
    .I1(b_1[7]),
    .I2(b_1[8]),
    .I3(b_1[9]),
    .I4(b_1[10]),
    .I5(b_1[11]),
    .O(\blk00000003/sig00000086 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000026  (
    .I0(a_0[12]),
    .I1(a_0[13]),
    .I2(a_0[14]),
    .I3(a_0[15]),
    .I4(a_0[16]),
    .I5(a_0[17]),
    .O(\blk00000003/sig00000080 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000025  (
    .I0(b_1[12]),
    .I1(b_1[13]),
    .I2(b_1[14]),
    .I3(b_1[15]),
    .I4(b_1[16]),
    .I5(b_1[17]),
    .O(\blk00000003/sig00000088 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk00000024  (
    .I0(a_0[18]),
    .I1(a_0[19]),
    .I2(a_0[20]),
    .I3(a_0[21]),
    .I4(a_0[22]),
    .O(\blk00000003/sig00000082 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk00000023  (
    .I0(b_1[18]),
    .I1(b_1[19]),
    .I2(b_1[20]),
    .I3(b_1[21]),
    .I4(b_1[22]),
    .O(\blk00000003/sig0000008a )
  );
  LUT6 #(
    .INIT ( 64'h0000022000000FF0 ))
  \blk00000003/blk00000022  (
    .I0(\blk00000003/sig0000008b ),
    .I1(\blk00000003/sig00000151 ),
    .I2(a_0[31]),
    .I3(b_1[31]),
    .I4(\blk00000003/sig00000150 ),
    .I5(\blk00000003/sig00000152 ),
    .O(result_2[31])
  );
  LUT3 #(
    .INIT ( 8'hC4 ))
  \blk00000003/blk00000021  (
    .I0(\blk00000003/sig00000083 ),
    .I1(\blk00000003/sig0000014e ),
    .I2(\blk00000003/sig0000014f ),
    .O(\blk00000003/sig00000150 )
  );
  DSP48E #(
    .ACASCREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 0 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "CASCADE" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .MREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT" ),
    .USE_PATTERN_DETECT ( "PATDET" ),
    .USE_SIMD ( "ONE48" ),
    .MASK ( 48'hFFFFFFFFFFE0 ))
  \blk00000003/blk00000020  (
    .CARRYIN(\blk00000003/sig00000002 ),
    .CEA1(\blk00000003/sig00000002 ),
    .CEA2(\blk00000003/sig00000002 ),
    .CEB1(\blk00000003/sig00000002 ),
    .CEB2(\blk00000003/sig00000002 ),
    .CEC(\blk00000003/sig00000002 ),
    .CECTRL(\blk00000003/sig00000002 ),
    .CEP(\blk00000003/sig00000002 ),
    .CEM(\blk00000003/sig00000002 ),
    .CECARRYIN(\blk00000003/sig00000002 ),
    .CEMULTCARRYIN(\blk00000003/sig00000002 ),
    .CLK(\blk00000003/sig00000001 ),
    .RSTA(\blk00000003/sig00000002 ),
    .RSTB(\blk00000003/sig00000002 ),
    .RSTC(\blk00000003/sig00000002 ),
    .RSTCTRL(\blk00000003/sig00000002 ),
    .RSTP(\blk00000003/sig00000002 ),
    .RSTM(\blk00000003/sig00000002 ),
    .RSTALLCARRYIN(\blk00000003/sig00000002 ),
    .CEALUMODE(\blk00000003/sig00000002 ),
    .RSTALUMODE(\blk00000003/sig00000002 ),
    .PATTERNBDETECT(\NLW_blk00000003/blk00000020_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\blk00000003/sig00000133 ),
    .OVERFLOW(\NLW_blk00000003/blk00000020_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000020_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000020_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000020_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCIN({\blk00000003/sig000000e5 , \blk00000003/sig000000e6 , \blk00000003/sig000000e7 , \blk00000003/sig000000e8 , \blk00000003/sig000000e9 , 
\blk00000003/sig000000ea , \blk00000003/sig000000eb , \blk00000003/sig000000ec , \blk00000003/sig000000ed , \blk00000003/sig000000ee , 
\blk00000003/sig000000ef , \blk00000003/sig000000f0 , \blk00000003/sig000000f1 , \blk00000003/sig000000f2 , \blk00000003/sig000000f3 , 
\blk00000003/sig000000f4 , \blk00000003/sig000000f5 , \blk00000003/sig000000f6 , \blk00000003/sig000000f7 , \blk00000003/sig000000f8 , 
\blk00000003/sig000000f9 , \blk00000003/sig000000fa , \blk00000003/sig000000fb , \blk00000003/sig000000fc , \blk00000003/sig000000fd , 
\blk00000003/sig000000fe , \blk00000003/sig000000ff , \blk00000003/sig00000100 , \blk00000003/sig00000101 , \blk00000003/sig00000102 , 
\blk00000003/sig00000103 , \blk00000003/sig00000104 , \blk00000003/sig00000105 , \blk00000003/sig00000106 , \blk00000003/sig00000107 , 
\blk00000003/sig00000108 , \blk00000003/sig00000109 , \blk00000003/sig0000010a , \blk00000003/sig0000010b , \blk00000003/sig0000010c , 
\blk00000003/sig0000010d , \blk00000003/sig0000010e , \blk00000003/sig0000010f , \blk00000003/sig00000110 , \blk00000003/sig00000111 , 
\blk00000003/sig00000112 , \blk00000003/sig00000113 , \blk00000003/sig00000114 }),
    .B({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 , b_1[22], b_1[21], b_1[20], b_1[19], b_1[18], b_1[17]}),
    .C({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , 
\blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , 
\blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , 
\blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , 
\blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , 
\blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac , \blk00000003/sig000000ad , \blk00000003/sig000000ae , 
\blk00000003/sig000000af , \blk00000003/sig000000b0 , \blk00000003/sig000000b1 , \blk00000003/sig000000b2 , \blk00000003/sig000000b3 , 
\blk00000003/sig000000b4 , \blk00000003/sig000000b5 , \blk00000003/sig000000b6 , \blk00000003/sig000000b7 , \blk00000003/sig000000b8 , 
\blk00000003/sig000000b9 , \blk00000003/sig000000ba , \blk00000003/sig000000bb }),
    .P({\NLW_blk00000003/blk00000020_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<33>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<32>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<31>_UNCONNECTED , 
\blk00000003/sig00000134 , \blk00000003/sig00000135 , \blk00000003/sig00000136 , \blk00000003/sig00000137 , \blk00000003/sig00000138 , 
\blk00000003/sig00000139 , \blk00000003/sig0000013a , \blk00000003/sig0000013b , \blk00000003/sig0000013c , \blk00000003/sig0000013d , 
\blk00000003/sig0000013e , \blk00000003/sig0000013f , \blk00000003/sig00000140 , \blk00000003/sig00000141 , \blk00000003/sig00000142 , 
\blk00000003/sig00000143 , \blk00000003/sig00000144 , \blk00000003/sig00000145 , \blk00000003/sig00000146 , \blk00000003/sig00000147 , 
\blk00000003/sig00000148 , \blk00000003/sig00000149 , \blk00000003/sig0000014a , \blk00000003/sig0000014b , \blk00000003/sig0000014c , 
\blk00000003/sig0000014d , \NLW_blk00000003/blk00000020_P<4>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<3>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_P<2>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<1>_UNCONNECTED , \NLW_blk00000003/blk00000020_P<0>_UNCONNECTED }),
    .BCOUT({\NLW_blk00000003/blk00000020_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000020_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000115 , \blk00000003/sig00000116 , \blk00000003/sig00000117 , \blk00000003/sig00000118 , \blk00000003/sig00000119 , 
\blk00000003/sig0000011a , \blk00000003/sig0000011b , \blk00000003/sig0000011c , \blk00000003/sig0000011d , \blk00000003/sig0000011e , 
\blk00000003/sig0000011f , \blk00000003/sig00000120 , \blk00000003/sig00000121 , \blk00000003/sig00000122 , \blk00000003/sig00000123 , 
\blk00000003/sig00000124 , \blk00000003/sig00000125 , \blk00000003/sig00000126 , \blk00000003/sig00000127 , \blk00000003/sig00000128 , 
\blk00000003/sig00000129 , \blk00000003/sig0000012a , \blk00000003/sig0000012b , \blk00000003/sig0000012c , \blk00000003/sig0000012d , 
\blk00000003/sig0000012e , \blk00000003/sig0000012f , \blk00000003/sig00000130 , \blk00000003/sig00000131 , \blk00000003/sig00000132 }),
    .ACOUT({\NLW_blk00000003/blk00000020_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000020_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk00000003/blk00000020_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000020_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000020_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000020_CARRYOUT<0>_UNCONNECTED })
  );
  DSP48E #(
    .ACASCREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 0 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .MREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "MULT" ),
    .USE_PATTERN_DETECT ( "PATDET" ),
    .USE_SIMD ( "ONE48" ),
    .MASK ( 48'hFFFFFFFE0000 ))
  \blk00000003/blk0000001f  (
    .CARRYIN(\blk00000003/sig00000002 ),
    .CEA1(\blk00000003/sig00000002 ),
    .CEA2(\blk00000003/sig00000002 ),
    .CEB1(\blk00000003/sig00000002 ),
    .CEB2(\blk00000003/sig00000002 ),
    .CEC(\blk00000003/sig00000002 ),
    .CECTRL(\blk00000003/sig00000002 ),
    .CEP(\blk00000003/sig00000002 ),
    .CEM(\blk00000003/sig00000002 ),
    .CECARRYIN(\blk00000003/sig00000002 ),
    .CEMULTCARRYIN(\blk00000003/sig00000002 ),
    .CLK(\blk00000003/sig00000001 ),
    .RSTA(\blk00000003/sig00000002 ),
    .RSTB(\blk00000003/sig00000002 ),
    .RSTC(\blk00000003/sig00000002 ),
    .RSTCTRL(\blk00000003/sig00000002 ),
    .RSTP(\blk00000003/sig00000002 ),
    .RSTM(\blk00000003/sig00000002 ),
    .RSTALLCARRYIN(\blk00000003/sig00000002 ),
    .CEALUMODE(\blk00000003/sig00000002 ),
    .RSTALUMODE(\blk00000003/sig00000002 ),
    .PATTERNBDETECT(\NLW_blk00000003/blk0000001f_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\blk00000003/sig000000e4 ),
    .OVERFLOW(\NLW_blk00000003/blk0000001f_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk0000001f_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk0000001f_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk0000001f_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 , a_0[22], a_0[21], a_0[20], a_0[19], a_0[18], a_0[17], a_0[16], a_0[15], a_0[14], a_0[13], 
a_0[12], a_0[11], a_0[10], a_0[9], a_0[8], a_0[7], a_0[6], a_0[5], a_0[4], a_0[3], a_0[2], a_0[1], a_0[0]}),
    .PCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .B({\blk00000003/sig00000002 , b_1[16], b_1[15], b_1[14], b_1[13], b_1[12], b_1[11], b_1[10], b_1[9], b_1[8], b_1[7], b_1[6], b_1[5], b_1[4], 
b_1[3], b_1[2], b_1[1], b_1[0]}),
    .C({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\blk00000003/sig000000e5 , \blk00000003/sig000000e6 , \blk00000003/sig000000e7 , \blk00000003/sig000000e8 , \blk00000003/sig000000e9 , 
\blk00000003/sig000000ea , \blk00000003/sig000000eb , \blk00000003/sig000000ec , \blk00000003/sig000000ed , \blk00000003/sig000000ee , 
\blk00000003/sig000000ef , \blk00000003/sig000000f0 , \blk00000003/sig000000f1 , \blk00000003/sig000000f2 , \blk00000003/sig000000f3 , 
\blk00000003/sig000000f4 , \blk00000003/sig000000f5 , \blk00000003/sig000000f6 , \blk00000003/sig000000f7 , \blk00000003/sig000000f8 , 
\blk00000003/sig000000f9 , \blk00000003/sig000000fa , \blk00000003/sig000000fb , \blk00000003/sig000000fc , \blk00000003/sig000000fd , 
\blk00000003/sig000000fe , \blk00000003/sig000000ff , \blk00000003/sig00000100 , \blk00000003/sig00000101 , \blk00000003/sig00000102 , 
\blk00000003/sig00000103 , \blk00000003/sig00000104 , \blk00000003/sig00000105 , \blk00000003/sig00000106 , \blk00000003/sig00000107 , 
\blk00000003/sig00000108 , \blk00000003/sig00000109 , \blk00000003/sig0000010a , \blk00000003/sig0000010b , \blk00000003/sig0000010c , 
\blk00000003/sig0000010d , \blk00000003/sig0000010e , \blk00000003/sig0000010f , \blk00000003/sig00000110 , \blk00000003/sig00000111 , 
\blk00000003/sig00000112 , \blk00000003/sig00000113 , \blk00000003/sig00000114 }),
    .P({\NLW_blk00000003/blk0000001f_P<47>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<45>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<44>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<42>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<41>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<39>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<38>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<36>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<35>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<33>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<32>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<31>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<30>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<29>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<28>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<27>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<26>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<25>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<24>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<23>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<22>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<21>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<20>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<19>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<18>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<17>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<16>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<15>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<14>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<13>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<12>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<11>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<9>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<8>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<7>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<6>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<5>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<3>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<2>_UNCONNECTED , \NLW_blk00000003/blk0000001f_P<1>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_P<0>_UNCONNECTED }),
    .BCOUT({\NLW_blk00000003/blk0000001f_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk0000001f_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ACOUT({\blk00000003/sig00000115 , \blk00000003/sig00000116 , \blk00000003/sig00000117 , \blk00000003/sig00000118 , \blk00000003/sig00000119 , 
\blk00000003/sig0000011a , \blk00000003/sig0000011b , \blk00000003/sig0000011c , \blk00000003/sig0000011d , \blk00000003/sig0000011e , 
\blk00000003/sig0000011f , \blk00000003/sig00000120 , \blk00000003/sig00000121 , \blk00000003/sig00000122 , \blk00000003/sig00000123 , 
\blk00000003/sig00000124 , \blk00000003/sig00000125 , \blk00000003/sig00000126 , \blk00000003/sig00000127 , \blk00000003/sig00000128 , 
\blk00000003/sig00000129 , \blk00000003/sig0000012a , \blk00000003/sig0000012b , \blk00000003/sig0000012c , \blk00000003/sig0000012d , 
\blk00000003/sig0000012e , \blk00000003/sig0000012f , \blk00000003/sig00000130 , \blk00000003/sig00000131 , \blk00000003/sig00000132 }),
    .CARRYOUT({\NLW_blk00000003/blk0000001f_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk0000001f_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000001f_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk0000001f_CARRYOUT<0>_UNCONNECTED })
  );
  DSP48E #(
    .ACASCREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 0 ),
    .AUTORESET_PATTERN_DETECT ( "FALSE" ),
    .AUTORESET_PATTERN_DETECT_OPTINV ( "MATCH" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .MREG ( 0 ),
    .MULTCARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .PREG ( 0 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .SEL_ROUNDING_MASK ( "SEL_MASK" ),
    .SIM_MODE ( "SAFE" ),
    .USE_MULT ( "NONE" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ),
    .MASK ( 48'h3FFFFFFFFFFF ))
  \blk00000003/blk0000001e  (
    .CARRYIN(\blk00000003/sig00000002 ),
    .CEA1(\blk00000003/sig00000002 ),
    .CEA2(\blk00000003/sig00000002 ),
    .CEB1(\blk00000003/sig00000002 ),
    .CEB2(\blk00000003/sig00000002 ),
    .CEC(\blk00000003/sig00000002 ),
    .CECTRL(\blk00000003/sig00000002 ),
    .CEP(\blk00000003/sig00000002 ),
    .CEM(\blk00000003/sig00000002 ),
    .CECARRYIN(\blk00000003/sig00000002 ),
    .CEMULTCARRYIN(\blk00000003/sig00000002 ),
    .CLK(\blk00000003/sig00000001 ),
    .RSTA(\blk00000003/sig00000002 ),
    .RSTB(\blk00000003/sig00000002 ),
    .RSTC(\blk00000003/sig00000002 ),
    .RSTCTRL(\blk00000003/sig00000002 ),
    .RSTP(\blk00000003/sig00000002 ),
    .RSTM(\blk00000003/sig00000002 ),
    .RSTALLCARRYIN(\blk00000003/sig00000002 ),
    .CEALUMODE(\blk00000003/sig00000002 ),
    .RSTALUMODE(\blk00000003/sig00000002 ),
    .PATTERNBDETECT(\NLW_blk00000003/blk0000001e_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk0000001e_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_blk00000003/blk0000001e_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk0000001e_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk0000001e_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk0000001e_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCIN({\blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , 
\blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , 
\blk00000003/sig00000096 , \blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , 
\blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e , \blk00000003/sig0000009f , 
\blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , \blk00000003/sig000000a3 , \blk00000003/sig000000a4 , 
\blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , \blk00000003/sig000000a8 , \blk00000003/sig000000a9 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac , \blk00000003/sig000000ad , \blk00000003/sig000000ae , 
\blk00000003/sig000000af , \blk00000003/sig000000b0 , \blk00000003/sig000000b1 , \blk00000003/sig000000b2 , \blk00000003/sig000000b3 , 
\blk00000003/sig000000b4 , \blk00000003/sig000000b5 , \blk00000003/sig000000b6 , \blk00000003/sig000000b7 , \blk00000003/sig000000b8 , 
\blk00000003/sig000000b9 , \blk00000003/sig000000ba , \blk00000003/sig000000bb }),
    .B({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .C({\blk00000003/sig0000006a , \blk00000003/sig0000006d , \blk00000003/sig00000070 , \blk00000003/sig00000073 , \blk00000003/sig00000076 , 
\blk00000003/sig00000079 , \blk00000003/sig0000007b , \blk00000003/sig00000002 , \blk00000003/sig00000066 , \blk00000003/sig0000006a , 
\blk00000003/sig0000006d , \blk00000003/sig00000070 , \blk00000003/sig00000073 , \blk00000003/sig00000076 , \blk00000003/sig00000079 , 
\blk00000003/sig0000007b , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000003 , \blk00000003/sig00000003 , 
\blk00000003/sig00000003 , \blk00000003/sig00000003 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\NLW_blk00000003/blk0000001e_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk0000001e_PCOUT<0>_UNCONNECTED }),
    .P({\blk00000003/sig000000bc , \blk00000003/sig000000bd , \blk00000003/sig000000be , \blk00000003/sig000000bf , \blk00000003/sig000000c0 , 
\blk00000003/sig000000c1 , \blk00000003/sig000000c2 , \NLW_blk00000003/blk0000001e_P<40>_UNCONNECTED , \blk00000003/sig000000c3 , 
\blk00000003/sig000000c4 , \blk00000003/sig000000c5 , \blk00000003/sig000000c6 , \blk00000003/sig000000c7 , \blk00000003/sig000000c8 , 
\blk00000003/sig000000c9 , \blk00000003/sig000000ca , \NLW_blk00000003/blk0000001e_P<31>_UNCONNECTED , \blk00000003/sig000000cb , 
\blk00000003/sig000000cc , \blk00000003/sig000000cd , \blk00000003/sig000000ce , \blk00000003/sig000000cf , \blk00000003/sig000000d0 , 
\blk00000003/sig000000d1 , \blk00000003/sig000000d2 , \blk00000003/sig000000d3 , \blk00000003/sig000000d4 , \blk00000003/sig000000d5 , 
\blk00000003/sig000000d6 , \blk00000003/sig000000d7 , \blk00000003/sig000000d8 , \blk00000003/sig000000d9 , \blk00000003/sig000000da , 
\blk00000003/sig000000db , \blk00000003/sig000000dc , \blk00000003/sig000000dd , \blk00000003/sig000000de , \blk00000003/sig000000df , 
\blk00000003/sig000000e0 , \blk00000003/sig000000e1 , \blk00000003/sig000000e2 , \NLW_blk00000003/blk0000001e_P<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_P<5>_UNCONNECTED , \NLW_blk00000003/blk0000001e_P<4>_UNCONNECTED , \NLW_blk00000003/blk0000001e_P<3>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_P<2>_UNCONNECTED , \NLW_blk00000003/blk0000001e_P<1>_UNCONNECTED , \NLW_blk00000003/blk0000001e_P<0>_UNCONNECTED }),
    .BCOUT({\NLW_blk00000003/blk0000001e_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk0000001e_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ACOUT({\NLW_blk00000003/blk0000001e_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000001e_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk0000001e_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\blk00000003/sig000000e3 , \NLW_blk00000003/blk0000001e_CARRYOUT<2>_UNCONNECTED , \NLW_blk00000003/blk0000001e_CARRYOUT<1>_UNCONNECTED 
, \NLW_blk00000003/blk0000001e_CARRYOUT<0>_UNCONNECTED })
  );
  MUXCY   \blk00000003/blk0000001d  (
    .CI(\blk00000003/sig00000089 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000008a ),
    .O(\blk00000003/sig0000008b )
  );
  MUXCY   \blk00000003/blk0000001c  (
    .CI(\blk00000003/sig00000087 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000088 ),
    .O(\blk00000003/sig00000089 )
  );
  MUXCY   \blk00000003/blk0000001b  (
    .CI(\blk00000003/sig00000085 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000086 ),
    .O(\blk00000003/sig00000087 )
  );
  MUXCY   \blk00000003/blk0000001a  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000084 ),
    .O(\blk00000003/sig00000085 )
  );
  MUXCY   \blk00000003/blk00000019  (
    .CI(\blk00000003/sig00000081 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000082 ),
    .O(\blk00000003/sig00000083 )
  );
  MUXCY   \blk00000003/blk00000018  (
    .CI(\blk00000003/sig0000007f ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000080 ),
    .O(\blk00000003/sig00000081 )
  );
  MUXCY   \blk00000003/blk00000017  (
    .CI(\blk00000003/sig0000007d ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000007e ),
    .O(\blk00000003/sig0000007f )
  );
  MUXCY   \blk00000003/blk00000016  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000007c ),
    .O(\blk00000003/sig0000007d )
  );
  MUXCY   \blk00000003/blk00000015  (
    .CI(\blk00000003/sig00000003 ),
    .DI(b_1[23]),
    .S(\blk00000003/sig0000007a ),
    .O(\blk00000003/sig00000077 )
  );
  XORCY   \blk00000003/blk00000014  (
    .CI(\blk00000003/sig00000003 ),
    .LI(\blk00000003/sig0000007a ),
    .O(\blk00000003/sig0000007b )
  );
  MUXCY   \blk00000003/blk00000013  (
    .CI(\blk00000003/sig00000077 ),
    .DI(b_1[24]),
    .S(\blk00000003/sig00000078 ),
    .O(\blk00000003/sig00000074 )
  );
  XORCY   \blk00000003/blk00000012  (
    .CI(\blk00000003/sig00000077 ),
    .LI(\blk00000003/sig00000078 ),
    .O(\blk00000003/sig00000079 )
  );
  MUXCY   \blk00000003/blk00000011  (
    .CI(\blk00000003/sig00000074 ),
    .DI(b_1[25]),
    .S(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000071 )
  );
  XORCY   \blk00000003/blk00000010  (
    .CI(\blk00000003/sig00000074 ),
    .LI(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000076 )
  );
  MUXCY   \blk00000003/blk0000000f  (
    .CI(\blk00000003/sig00000071 ),
    .DI(b_1[26]),
    .S(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig0000006e )
  );
  XORCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig00000071 ),
    .LI(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig00000073 )
  );
  MUXCY   \blk00000003/blk0000000d  (
    .CI(\blk00000003/sig0000006e ),
    .DI(b_1[27]),
    .S(\blk00000003/sig0000006f ),
    .O(\blk00000003/sig0000006b )
  );
  XORCY   \blk00000003/blk0000000c  (
    .CI(\blk00000003/sig0000006e ),
    .LI(\blk00000003/sig0000006f ),
    .O(\blk00000003/sig00000070 )
  );
  MUXCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig0000006b ),
    .DI(b_1[28]),
    .S(\blk00000003/sig0000006c ),
    .O(\blk00000003/sig00000068 )
  );
  XORCY   \blk00000003/blk0000000a  (
    .CI(\blk00000003/sig0000006b ),
    .LI(\blk00000003/sig0000006c ),
    .O(\blk00000003/sig0000006d )
  );
  MUXCY   \blk00000003/blk00000009  (
    .CI(\blk00000003/sig00000068 ),
    .DI(b_1[29]),
    .S(\blk00000003/sig00000069 ),
    .O(\blk00000003/sig00000064 )
  );
  XORCY   \blk00000003/blk00000008  (
    .CI(\blk00000003/sig00000068 ),
    .LI(\blk00000003/sig00000069 ),
    .O(\blk00000003/sig0000006a )
  );
  MUXCY   \blk00000003/blk00000007  (
    .CI(\blk00000003/sig00000064 ),
    .DI(b_1[30]),
    .S(\blk00000003/sig00000065 ),
    .O(\blk00000003/sig00000067 )
  );
  XORCY   \blk00000003/blk00000006  (
    .CI(\blk00000003/sig00000064 ),
    .LI(\blk00000003/sig00000065 ),
    .O(\blk00000003/sig00000066 )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig00000003 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000002 )
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
