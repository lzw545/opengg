////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: fp_mul.v
// /___/   /\     Timestamp: Sun Nov 28 17:55:55 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\fp_mul.ngc ./tmp/_cg\fp_mul.v 
// Device	: 5vlx110tff1136-1
// Input file	: ./tmp/_cg/fp_mul.ngc
// Output file	: ./tmp/_cg/fp_mul.v
// # of Modules	: 1
// Design Name	: fp_mul
// Xilinx        : E:\Xilinx\12.2\ISE_DS\ISE\
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
  
  wire \blk00000003/sig000001df ;
  wire \blk00000003/sig000001de ;
  wire \blk00000003/sig000001dd ;
  wire \blk00000003/sig000001dc ;
  wire \blk00000003/sig000001db ;
  wire \blk00000003/sig000001da ;
  wire \blk00000003/sig000001d9 ;
  wire \blk00000003/sig000001d8 ;
  wire \blk00000003/sig000001d7 ;
  wire \blk00000003/sig000001d6 ;
  wire \blk00000003/sig000001d5 ;
  wire \blk00000003/sig000001d4 ;
  wire \blk00000003/sig000001d3 ;
  wire \blk00000003/sig000001d2 ;
  wire \blk00000003/sig000001d1 ;
  wire \blk00000003/sig000001d0 ;
  wire \blk00000003/sig000001cf ;
  wire \blk00000003/sig000001ce ;
  wire \blk00000003/sig000001cd ;
  wire \blk00000003/sig000001cc ;
  wire \blk00000003/sig000001cb ;
  wire \blk00000003/sig000001ae ;
  wire \blk00000003/sig000001ad ;
  wire \blk00000003/sig000001ac ;
  wire \blk00000003/sig000001ab ;
  wire \blk00000003/sig000001aa ;
  wire \blk00000003/sig000001a9 ;
  wire \blk00000003/sig000001a8 ;
  wire \blk00000003/sig000001a7 ;
  wire \blk00000003/sig000001a6 ;
  wire \blk00000003/sig000001a5 ;
  wire \blk00000003/sig000001a4 ;
  wire \blk00000003/sig000001a3 ;
  wire \blk00000003/sig000001a2 ;
  wire \blk00000003/sig000001a1 ;
  wire \blk00000003/sig000001a0 ;
  wire \blk00000003/sig0000019f ;
  wire \blk00000003/sig0000019e ;
  wire \blk00000003/sig0000019d ;
  wire \blk00000003/sig0000019c ;
  wire \blk00000003/sig0000019b ;
  wire \blk00000003/sig0000019a ;
  wire \blk00000003/sig00000199 ;
  wire \blk00000003/sig00000198 ;
  wire \blk00000003/sig00000197 ;
  wire \blk00000003/sig00000196 ;
  wire \blk00000003/sig00000195 ;
  wire \blk00000003/sig00000194 ;
  wire \blk00000003/sig00000193 ;
  wire \blk00000003/sig00000192 ;
  wire \blk00000003/sig00000191 ;
  wire \blk00000003/sig00000190 ;
  wire \blk00000003/sig0000018f ;
  wire \blk00000003/sig0000018e ;
  wire \blk00000003/sig0000018d ;
  wire \blk00000003/sig0000018c ;
  wire \blk00000003/sig0000018b ;
  wire \blk00000003/sig0000018a ;
  wire \blk00000003/sig00000189 ;
  wire \blk00000003/sig00000188 ;
  wire \blk00000003/sig00000187 ;
  wire \blk00000003/sig00000186 ;
  wire \blk00000003/sig00000185 ;
  wire \blk00000003/sig00000184 ;
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
  wire \NLW_blk00000003/blk00000061_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_P<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000060_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000039_O_UNCONNECTED ;
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
  MUXF7   \blk00000003/blk000000d0  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig000001df ),
    .S(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig000001d7 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk000000cf  (
    .I0(\blk00000003/sig00000067 ),
    .I1(\blk00000003/sig0000006d ),
    .I2(\blk00000003/sig00000070 ),
    .I3(\blk00000003/sig00000073 ),
    .I4(\blk00000003/sig00000076 ),
    .I5(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig000001df )
  );
  INV   \blk00000003/blk000000ce  (
    .I(\blk00000003/sig00000190 ),
    .O(\blk00000003/sig000000b6 )
  );
  INV   \blk00000003/blk000000cd  (
    .I(\blk00000003/sig00000066 ),
    .O(\blk00000003/sig000000d9 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF10 ))
  \blk00000003/blk000000cc  (
    .I0(\blk00000003/sig000001ce ),
    .I1(\blk00000003/sig000001cc ),
    .I2(\blk00000003/sig000001dd ),
    .I3(\blk00000003/sig000001cb ),
    .I4(\blk00000003/sig000001cf ),
    .O(\blk00000003/sig000001da )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000cb  (
    .I0(\blk00000003/sig000000bd ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[21])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000ca  (
    .I0(\blk00000003/sig000000c0 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[20])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c9  (
    .I0(\blk00000003/sig000000c3 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[19])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c8  (
    .I0(\blk00000003/sig000000c6 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[18])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c7  (
    .I0(\blk00000003/sig000000c9 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[17])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c6  (
    .I0(\blk00000003/sig000000cc ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[16])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c5  (
    .I0(\blk00000003/sig000000cf ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[15])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c4  (
    .I0(\blk00000003/sig000000d2 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[14])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c3  (
    .I0(\blk00000003/sig000000d5 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[13])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c2  (
    .I0(\blk00000003/sig000000d7 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[12])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c1  (
    .I0(\blk00000003/sig00000093 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[11])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000c0  (
    .I0(\blk00000003/sig00000097 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[10])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000bf  (
    .I0(\blk00000003/sig0000009a ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[9])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000be  (
    .I0(\blk00000003/sig0000009d ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[8])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000bd  (
    .I0(\blk00000003/sig000000a0 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[7])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000bc  (
    .I0(\blk00000003/sig000000b4 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000bb  (
    .I0(\blk00000003/sig000000b2 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[1])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000ba  (
    .I0(\blk00000003/sig000000af ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[2])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000b9  (
    .I0(\blk00000003/sig000000ac ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[3])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000b8  (
    .I0(\blk00000003/sig000000a9 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[4])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000b7  (
    .I0(\blk00000003/sig000000a6 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[5])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000003/blk000000b6  (
    .I0(\blk00000003/sig000000a3 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d9 ),
    .O(result_2[6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF02200AA0 ))
  \blk00000003/blk000000b5  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000007b ),
    .I2(\blk00000003/sig00000067 ),
    .I3(\blk00000003/sig00000066 ),
    .I4(\blk00000003/sig000001d7 ),
    .I5(\blk00000003/sig000001cb ),
    .O(\blk00000003/sig000001db )
  );
  LUT5 #(
    .INIT ( 32'hFFFF1110 ))
  \blk00000003/blk000000b4  (
    .I0(\blk00000003/sig000001cb ),
    .I1(\blk00000003/sig000001cf ),
    .I2(\blk00000003/sig000001d8 ),
    .I3(\blk00000003/sig000001de ),
    .I4(\blk00000003/sig000001d0 ),
    .O(\blk00000003/sig000001d9 )
  );
  LUT5 #(
    .INIT ( 32'h4E444F4F ))
  \blk00000003/blk000000b3  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001d6 ),
    .I2(\blk00000003/sig00000066 ),
    .I3(\blk00000003/sig000001d7 ),
    .I4(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig000001de )
  );
  LUT5 #(
    .INIT ( 32'hECEC8880 ))
  \blk00000003/blk000000b2  (
    .I0(\blk00000003/sig000001d7 ),
    .I1(\blk00000003/sig00000067 ),
    .I2(\blk00000003/sig0000007b ),
    .I3(\blk00000003/sig00000190 ),
    .I4(\blk00000003/sig00000066 ),
    .O(\blk00000003/sig000001dd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000b1  (
    .I0(\blk00000003/sig0000007b ),
    .O(\blk00000003/sig000000ed )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000b0  (
    .I0(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig000000eb )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000af  (
    .I0(\blk00000003/sig00000076 ),
    .O(\blk00000003/sig000000e8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000ae  (
    .I0(\blk00000003/sig00000073 ),
    .O(\blk00000003/sig000000e5 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000ad  (
    .I0(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig000000e2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000ac  (
    .I0(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig000000df )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk000000ab  (
    .I0(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig000000dc )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \blk00000003/blk000000aa  (
    .I0(\blk00000003/sig000000ef ),
    .I1(\blk00000003/sig000001a8 ),
    .I2(\blk00000003/sig000001a9 ),
    .I3(\blk00000003/sig0000017a ),
    .O(\blk00000003/sig0000008c )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a9  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000da ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[30])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a8  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000dd ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[29])
  );
  LUT6 #(
    .INIT ( 64'h322277773222F777 ))
  \blk00000003/blk000000a7  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a8 ),
    .I2(\blk00000003/sig000000ef ),
    .I3(\blk00000003/sig0000017a ),
    .I4(\blk00000003/sig000001a9 ),
    .I5(\blk00000003/sig000001a7 ),
    .O(\blk00000003/sig0000008f )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a6  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000e0 ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[28])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a5  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000e3 ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[27])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a4  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000e6 ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[26])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a3  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000e9 ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[25])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a2  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000ec ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[24])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a1  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000000ee ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[23])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \blk00000003/blk000000a0  (
    .I0(\blk00000003/sig000001d9 ),
    .I1(\blk00000003/sig000000ba ),
    .I2(\blk00000003/sig000001da ),
    .O(result_2[22])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009f  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a8 ),
    .I2(\blk00000003/sig000001a7 ),
    .O(\blk00000003/sig000000b3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009e  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a7 ),
    .I2(\blk00000003/sig000001a6 ),
    .O(\blk00000003/sig000000b1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009d  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a6 ),
    .I2(\blk00000003/sig000001a5 ),
    .O(\blk00000003/sig000000ae )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009c  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a5 ),
    .I2(\blk00000003/sig000001a4 ),
    .O(\blk00000003/sig000000ab )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009b  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a4 ),
    .I2(\blk00000003/sig000001a3 ),
    .O(\blk00000003/sig000000a8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000009a  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a3 ),
    .I2(\blk00000003/sig000001a2 ),
    .O(\blk00000003/sig000000a5 )
  );
  LUT6 #(
    .INIT ( 64'h2222222222222202 ))
  \blk00000003/blk00000099  (
    .I0(\blk00000003/sig000001d9 ),
    .I1(\blk00000003/sig000001da ),
    .I2(\blk00000003/sig000001d6 ),
    .I3(\blk00000003/sig000001d0 ),
    .I4(\blk00000003/sig000001cf ),
    .I5(\blk00000003/sig000001db ),
    .O(\blk00000003/sig000001dc )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000098  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a2 ),
    .I2(\blk00000003/sig000001a1 ),
    .O(\blk00000003/sig000000a2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000097  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a1 ),
    .I2(\blk00000003/sig000001a0 ),
    .O(\blk00000003/sig0000009f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000096  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig000001a0 ),
    .I2(\blk00000003/sig0000019f ),
    .O(\blk00000003/sig0000009c )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000095  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019f ),
    .I2(\blk00000003/sig0000019e ),
    .O(\blk00000003/sig00000099 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000094  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019e ),
    .I2(\blk00000003/sig0000019d ),
    .O(\blk00000003/sig00000096 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000093  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019d ),
    .I2(\blk00000003/sig0000019c ),
    .O(\blk00000003/sig00000092 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000092  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019c ),
    .I2(\blk00000003/sig0000019b ),
    .O(\blk00000003/sig000000d6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000091  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019b ),
    .I2(\blk00000003/sig0000019a ),
    .O(\blk00000003/sig000000d4 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000090  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig0000019a ),
    .I2(\blk00000003/sig00000199 ),
    .O(\blk00000003/sig000000d1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008f  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000199 ),
    .I2(\blk00000003/sig00000198 ),
    .O(\blk00000003/sig000000ce )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008e  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000198 ),
    .I2(\blk00000003/sig00000197 ),
    .O(\blk00000003/sig000000cb )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008d  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000197 ),
    .I2(\blk00000003/sig00000196 ),
    .O(\blk00000003/sig000000c8 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008c  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000196 ),
    .I2(\blk00000003/sig00000195 ),
    .O(\blk00000003/sig000000c5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008b  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000195 ),
    .I2(\blk00000003/sig00000194 ),
    .O(\blk00000003/sig000000c2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk0000008a  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000194 ),
    .I2(\blk00000003/sig00000193 ),
    .O(\blk00000003/sig000000bf )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000089  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000193 ),
    .I2(\blk00000003/sig00000192 ),
    .O(\blk00000003/sig000000bc )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000003/blk00000088  (
    .I0(\blk00000003/sig00000190 ),
    .I1(\blk00000003/sig00000192 ),
    .I2(\blk00000003/sig00000191 ),
    .O(\blk00000003/sig000000b9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000087  (
    .I0(b_1[23]),
    .I1(a_0[23]),
    .O(\blk00000003/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000086  (
    .I0(b_1[24]),
    .I1(a_0[24]),
    .O(\blk00000003/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000085  (
    .I0(b_1[25]),
    .I1(a_0[25]),
    .O(\blk00000003/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000084  (
    .I0(b_1[26]),
    .I1(a_0[26]),
    .O(\blk00000003/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000083  (
    .I0(b_1[27]),
    .I1(a_0[27]),
    .O(\blk00000003/sig0000006f )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \blk00000003/blk00000082  (
    .I0(\blk00000003/sig0000007b ),
    .I1(\blk00000003/sig000001d7 ),
    .I2(\blk00000003/sig00000066 ),
    .I3(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig000001d8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000081  (
    .I0(b_1[28]),
    .I1(a_0[28]),
    .O(\blk00000003/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000080  (
    .I0(b_1[29]),
    .I1(a_0[29]),
    .O(\blk00000003/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007f  (
    .I0(b_1[30]),
    .I1(a_0[30]),
    .O(\blk00000003/sig00000065 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \blk00000003/blk0000007e  (
    .I0(\blk00000003/sig00000067 ),
    .I1(\blk00000003/sig00000066 ),
    .I2(\blk00000003/sig0000006a ),
    .I3(\blk00000003/sig0000006d ),
    .I4(\blk00000003/sig00000070 ),
    .I5(\blk00000003/sig000001d5 ),
    .O(\blk00000003/sig000001d6 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \blk00000003/blk0000007d  (
    .I0(\blk00000003/sig00000073 ),
    .I1(\blk00000003/sig00000076 ),
    .I2(\blk00000003/sig00000079 ),
    .I3(\blk00000003/sig0000007b ),
    .O(\blk00000003/sig000001d5 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk0000007c  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig000001d4 ),
    .O(\blk00000003/sig000001cb )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000003/blk0000007b  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(a_0[23]),
    .O(\blk00000003/sig000001d4 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000007a  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig000001d3 ),
    .O(\blk00000003/sig000001ce )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk00000079  (
    .I0(a_0[25]),
    .I1(a_0[24]),
    .I2(a_0[23]),
    .O(\blk00000003/sig000001d3 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk00000078  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig000001d2 ),
    .O(\blk00000003/sig000001cf )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000003/blk00000077  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig000001d2 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000076  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig000001d1 ),
    .O(\blk00000003/sig000001cc )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk00000075  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig000001d1 )
  );
  LUT6 #(
    .INIT ( 64'h005D00005D585D58 ))
  \blk00000003/blk00000074  (
    .I0(\blk00000003/sig000001cf ),
    .I1(\blk00000003/sig0000008b ),
    .I2(\blk00000003/sig000001ce ),
    .I3(\blk00000003/sig000001cc ),
    .I4(\blk00000003/sig00000083 ),
    .I5(\blk00000003/sig000001cb ),
    .O(\blk00000003/sig000001d0 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000073  (
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
  \blk00000003/blk00000072  (
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
  \blk00000003/blk00000071  (
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
  \blk00000003/blk00000070  (
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
  \blk00000003/blk0000006f  (
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
  \blk00000003/blk0000006e  (
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
  \blk00000003/blk0000006d  (
    .I0(a_0[18]),
    .I1(a_0[19]),
    .I2(a_0[20]),
    .I3(a_0[21]),
    .I4(a_0[22]),
    .O(\blk00000003/sig00000082 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk0000006c  (
    .I0(b_1[18]),
    .I1(b_1[19]),
    .I2(b_1[20]),
    .I3(b_1[21]),
    .I4(b_1[22]),
    .O(\blk00000003/sig0000008a )
  );
  LUT6 #(
    .INIT ( 64'h0000022000000FF0 ))
  \blk00000003/blk0000006b  (
    .I0(\blk00000003/sig0000008b ),
    .I1(\blk00000003/sig000001ce ),
    .I2(a_0[31]),
    .I3(b_1[31]),
    .I4(\blk00000003/sig000001cd ),
    .I5(\blk00000003/sig000001cf ),
    .O(result_2[31])
  );
  LUT3 #(
    .INIT ( 8'hC4 ))
  \blk00000003/blk0000006a  (
    .I0(\blk00000003/sig00000083 ),
    .I1(\blk00000003/sig000001cb ),
    .I2(\blk00000003/sig000001cc ),
    .O(\blk00000003/sig000001cd )
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
  \blk00000003/blk00000061  (
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
    .PATTERNBDETECT(\NLW_blk00000003/blk00000061_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\blk00000003/sig0000017a ),
    .OVERFLOW(\NLW_blk00000003/blk00000061_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000061_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000061_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000061_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCIN({\blk00000003/sig0000011b , \blk00000003/sig0000011c , \blk00000003/sig0000011d , \blk00000003/sig0000011e , \blk00000003/sig0000011f , 
\blk00000003/sig00000120 , \blk00000003/sig00000121 , \blk00000003/sig00000122 , \blk00000003/sig00000123 , \blk00000003/sig00000124 , 
\blk00000003/sig00000125 , \blk00000003/sig00000126 , \blk00000003/sig00000127 , \blk00000003/sig00000128 , \blk00000003/sig00000129 , 
\blk00000003/sig0000012a , \blk00000003/sig0000012b , \blk00000003/sig0000012c , \blk00000003/sig0000012d , \blk00000003/sig0000012e , 
\blk00000003/sig0000012f , \blk00000003/sig00000130 , \blk00000003/sig00000131 , \blk00000003/sig00000132 , \blk00000003/sig00000133 , 
\blk00000003/sig00000134 , \blk00000003/sig00000135 , \blk00000003/sig00000136 , \blk00000003/sig00000137 , \blk00000003/sig00000138 , 
\blk00000003/sig00000139 , \blk00000003/sig0000013a , \blk00000003/sig0000013b , \blk00000003/sig0000013c , \blk00000003/sig0000013d , 
\blk00000003/sig0000013e , \blk00000003/sig0000013f , \blk00000003/sig00000140 , \blk00000003/sig00000141 , \blk00000003/sig00000142 , 
\blk00000003/sig00000143 , \blk00000003/sig00000144 , \blk00000003/sig00000145 , \blk00000003/sig00000146 , \blk00000003/sig00000147 , 
\blk00000003/sig00000148 , \blk00000003/sig00000149 , \blk00000003/sig0000014a }),
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
    .PCOUT({\NLW_blk00000003/blk00000061_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000061_PCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk00000003/blk00000061_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000061_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000061_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000061_P<43>_UNCONNECTED , 
\blk00000003/sig00000184 , \blk00000003/sig00000185 , \blk00000003/sig00000186 , \blk00000003/sig00000187 , \blk00000003/sig00000188 , 
\blk00000003/sig00000189 , \blk00000003/sig0000018a , \blk00000003/sig0000018b , \blk00000003/sig0000018c , \blk00000003/sig0000018d , 
\blk00000003/sig0000018e , \blk00000003/sig0000018f , \blk00000003/sig00000190 , \blk00000003/sig00000191 , \blk00000003/sig00000192 , 
\blk00000003/sig00000193 , \blk00000003/sig00000194 , \blk00000003/sig00000195 , \blk00000003/sig00000196 , \blk00000003/sig00000197 , 
\blk00000003/sig00000198 , \blk00000003/sig00000199 , \blk00000003/sig0000019a , \blk00000003/sig0000019b , \blk00000003/sig0000019c , 
\blk00000003/sig0000019d , \blk00000003/sig0000019e , \blk00000003/sig0000019f , \blk00000003/sig000001a0 , \blk00000003/sig000001a1 , 
\blk00000003/sig000001a2 , \blk00000003/sig000001a3 , \blk00000003/sig000001a4 , \blk00000003/sig000001a5 , \blk00000003/sig000001a6 , 
\blk00000003/sig000001a7 , \blk00000003/sig000001a8 , \blk00000003/sig000001a9 , \blk00000003/sig000001aa , \blk00000003/sig000001ab , 
\blk00000003/sig000001ac , \blk00000003/sig000001ad , \blk00000003/sig000001ae }),
    .BCOUT({\NLW_blk00000003/blk00000061_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig0000015c , \blk00000003/sig0000015d , \blk00000003/sig0000015e , \blk00000003/sig0000015f , \blk00000003/sig00000160 , 
\blk00000003/sig00000161 , \blk00000003/sig00000162 , \blk00000003/sig00000163 , \blk00000003/sig00000164 , \blk00000003/sig00000165 , 
\blk00000003/sig00000166 , \blk00000003/sig00000167 , \blk00000003/sig00000168 , \blk00000003/sig00000169 , \blk00000003/sig0000016a , 
\blk00000003/sig0000016b , \blk00000003/sig0000016c , \blk00000003/sig0000016d , \blk00000003/sig0000016e , \blk00000003/sig0000016f , 
\blk00000003/sig00000170 , \blk00000003/sig00000171 , \blk00000003/sig00000172 , \blk00000003/sig00000173 , \blk00000003/sig00000174 , 
\blk00000003/sig00000175 , \blk00000003/sig00000176 , \blk00000003/sig00000177 , \blk00000003/sig00000178 , \blk00000003/sig00000179 }),
    .ACOUT({\NLW_blk00000003/blk00000061_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000061_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk00000003/blk00000061_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000061_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000061_CARRYOUT<0>_UNCONNECTED })
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
  \blk00000003/blk00000060  (
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
    .PATTERNBDETECT(\NLW_blk00000003/blk00000060_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\blk00000003/sig000000ef ),
    .OVERFLOW(\NLW_blk00000003/blk00000060_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000060_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000060_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000060_MULTSIGNOUT_UNCONNECTED ),
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
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\blk00000003/sig0000011b , \blk00000003/sig0000011c , \blk00000003/sig0000011d , \blk00000003/sig0000011e , \blk00000003/sig0000011f , 
\blk00000003/sig00000120 , \blk00000003/sig00000121 , \blk00000003/sig00000122 , \blk00000003/sig00000123 , \blk00000003/sig00000124 , 
\blk00000003/sig00000125 , \blk00000003/sig00000126 , \blk00000003/sig00000127 , \blk00000003/sig00000128 , \blk00000003/sig00000129 , 
\blk00000003/sig0000012a , \blk00000003/sig0000012b , \blk00000003/sig0000012c , \blk00000003/sig0000012d , \blk00000003/sig0000012e , 
\blk00000003/sig0000012f , \blk00000003/sig00000130 , \blk00000003/sig00000131 , \blk00000003/sig00000132 , \blk00000003/sig00000133 , 
\blk00000003/sig00000134 , \blk00000003/sig00000135 , \blk00000003/sig00000136 , \blk00000003/sig00000137 , \blk00000003/sig00000138 , 
\blk00000003/sig00000139 , \blk00000003/sig0000013a , \blk00000003/sig0000013b , \blk00000003/sig0000013c , \blk00000003/sig0000013d , 
\blk00000003/sig0000013e , \blk00000003/sig0000013f , \blk00000003/sig00000140 , \blk00000003/sig00000141 , \blk00000003/sig00000142 , 
\blk00000003/sig00000143 , \blk00000003/sig00000144 , \blk00000003/sig00000145 , \blk00000003/sig00000146 , \blk00000003/sig00000147 , 
\blk00000003/sig00000148 , \blk00000003/sig00000149 , \blk00000003/sig0000014a }),
    .P({\NLW_blk00000003/blk00000060_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<35>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<33>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<32>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<30>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<29>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<27>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<26>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<24>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<23>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<21>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<20>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_P<18>_UNCONNECTED , \NLW_blk00000003/blk00000060_P<17>_UNCONNECTED , \blk00000003/sig0000014b , \blk00000003/sig0000014c 
, \blk00000003/sig0000014d , \blk00000003/sig0000014e , \blk00000003/sig0000014f , \blk00000003/sig00000150 , \blk00000003/sig00000151 , 
\blk00000003/sig00000152 , \blk00000003/sig00000153 , \blk00000003/sig00000154 , \blk00000003/sig00000155 , \blk00000003/sig00000156 , 
\blk00000003/sig00000157 , \blk00000003/sig00000158 , \blk00000003/sig00000159 , \blk00000003/sig0000015a , \blk00000003/sig0000015b }),
    .BCOUT({\NLW_blk00000003/blk00000060_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000060_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ACOUT({\blk00000003/sig0000015c , \blk00000003/sig0000015d , \blk00000003/sig0000015e , \blk00000003/sig0000015f , \blk00000003/sig00000160 , 
\blk00000003/sig00000161 , \blk00000003/sig00000162 , \blk00000003/sig00000163 , \blk00000003/sig00000164 , \blk00000003/sig00000165 , 
\blk00000003/sig00000166 , \blk00000003/sig00000167 , \blk00000003/sig00000168 , \blk00000003/sig00000169 , \blk00000003/sig0000016a , 
\blk00000003/sig0000016b , \blk00000003/sig0000016c , \blk00000003/sig0000016d , \blk00000003/sig0000016e , \blk00000003/sig0000016f , 
\blk00000003/sig00000170 , \blk00000003/sig00000171 , \blk00000003/sig00000172 , \blk00000003/sig00000173 , \blk00000003/sig00000174 , 
\blk00000003/sig00000175 , \blk00000003/sig00000176 , \blk00000003/sig00000177 , \blk00000003/sig00000178 , \blk00000003/sig00000179 }),
    .CARRYOUT({\NLW_blk00000003/blk00000060_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000060_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000060_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000060_CARRYOUT<0>_UNCONNECTED })
  );
  MUXCY   \blk00000003/blk0000005f  (
    .CI(\blk00000003/sig000000b7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000ea )
  );
  XORCY   \blk00000003/blk0000005e  (
    .CI(\blk00000003/sig000000b7 ),
    .LI(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000ee )
  );
  MUXCY   \blk00000003/blk0000005d  (
    .CI(\blk00000003/sig000000ea ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000e7 )
  );
  XORCY   \blk00000003/blk0000005c  (
    .CI(\blk00000003/sig000000ea ),
    .LI(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000ec )
  );
  MUXCY   \blk00000003/blk0000005b  (
    .CI(\blk00000003/sig000000e7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000e8 ),
    .O(\blk00000003/sig000000e4 )
  );
  XORCY   \blk00000003/blk0000005a  (
    .CI(\blk00000003/sig000000e7 ),
    .LI(\blk00000003/sig000000e8 ),
    .O(\blk00000003/sig000000e9 )
  );
  MUXCY   \blk00000003/blk00000059  (
    .CI(\blk00000003/sig000000e4 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000e5 ),
    .O(\blk00000003/sig000000e1 )
  );
  XORCY   \blk00000003/blk00000058  (
    .CI(\blk00000003/sig000000e4 ),
    .LI(\blk00000003/sig000000e5 ),
    .O(\blk00000003/sig000000e6 )
  );
  MUXCY   \blk00000003/blk00000057  (
    .CI(\blk00000003/sig000000e1 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000e2 ),
    .O(\blk00000003/sig000000de )
  );
  XORCY   \blk00000003/blk00000056  (
    .CI(\blk00000003/sig000000e1 ),
    .LI(\blk00000003/sig000000e2 ),
    .O(\blk00000003/sig000000e3 )
  );
  MUXCY   \blk00000003/blk00000055  (
    .CI(\blk00000003/sig000000de ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000df ),
    .O(\blk00000003/sig000000db )
  );
  XORCY   \blk00000003/blk00000054  (
    .CI(\blk00000003/sig000000de ),
    .LI(\blk00000003/sig000000df ),
    .O(\blk00000003/sig000000e0 )
  );
  MUXCY   \blk00000003/blk00000053  (
    .CI(\blk00000003/sig000000db ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000dc ),
    .O(\blk00000003/sig000000d8 )
  );
  XORCY   \blk00000003/blk00000052  (
    .CI(\blk00000003/sig000000db ),
    .LI(\blk00000003/sig000000dc ),
    .O(\blk00000003/sig000000dd )
  );
  XORCY   \blk00000003/blk00000051  (
    .CI(\blk00000003/sig000000d8 ),
    .LI(\blk00000003/sig000000d9 ),
    .O(\blk00000003/sig000000da )
  );
  MUXCY   \blk00000003/blk00000050  (
    .CI(\blk00000003/sig00000094 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000d6 ),
    .O(\blk00000003/sig000000d3 )
  );
  XORCY   \blk00000003/blk0000004f  (
    .CI(\blk00000003/sig00000094 ),
    .LI(\blk00000003/sig000000d6 ),
    .O(\blk00000003/sig000000d7 )
  );
  MUXCY   \blk00000003/blk0000004e  (
    .CI(\blk00000003/sig000000d3 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig000000d0 )
  );
  XORCY   \blk00000003/blk0000004d  (
    .CI(\blk00000003/sig000000d3 ),
    .LI(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig000000d5 )
  );
  MUXCY   \blk00000003/blk0000004c  (
    .CI(\blk00000003/sig000000d0 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig000000cd )
  );
  XORCY   \blk00000003/blk0000004b  (
    .CI(\blk00000003/sig000000d0 ),
    .LI(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig000000d2 )
  );
  MUXCY   \blk00000003/blk0000004a  (
    .CI(\blk00000003/sig000000cd ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ce ),
    .O(\blk00000003/sig000000ca )
  );
  XORCY   \blk00000003/blk00000049  (
    .CI(\blk00000003/sig000000cd ),
    .LI(\blk00000003/sig000000ce ),
    .O(\blk00000003/sig000000cf )
  );
  MUXCY   \blk00000003/blk00000048  (
    .CI(\blk00000003/sig000000ca ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000cb ),
    .O(\blk00000003/sig000000c7 )
  );
  XORCY   \blk00000003/blk00000047  (
    .CI(\blk00000003/sig000000ca ),
    .LI(\blk00000003/sig000000cb ),
    .O(\blk00000003/sig000000cc )
  );
  MUXCY   \blk00000003/blk00000046  (
    .CI(\blk00000003/sig000000c7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000c8 ),
    .O(\blk00000003/sig000000c4 )
  );
  XORCY   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig000000c7 ),
    .LI(\blk00000003/sig000000c8 ),
    .O(\blk00000003/sig000000c9 )
  );
  MUXCY   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig000000c4 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000c5 ),
    .O(\blk00000003/sig000000c1 )
  );
  XORCY   \blk00000003/blk00000043  (
    .CI(\blk00000003/sig000000c4 ),
    .LI(\blk00000003/sig000000c5 ),
    .O(\blk00000003/sig000000c6 )
  );
  MUXCY   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig000000c1 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000c2 ),
    .O(\blk00000003/sig000000be )
  );
  XORCY   \blk00000003/blk00000041  (
    .CI(\blk00000003/sig000000c1 ),
    .LI(\blk00000003/sig000000c2 ),
    .O(\blk00000003/sig000000c3 )
  );
  MUXCY   \blk00000003/blk00000040  (
    .CI(\blk00000003/sig000000be ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000bf ),
    .O(\blk00000003/sig000000bb )
  );
  XORCY   \blk00000003/blk0000003f  (
    .CI(\blk00000003/sig000000be ),
    .LI(\blk00000003/sig000000bf ),
    .O(\blk00000003/sig000000c0 )
  );
  MUXCY   \blk00000003/blk0000003e  (
    .CI(\blk00000003/sig000000bb ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000bc ),
    .O(\blk00000003/sig000000b8 )
  );
  XORCY   \blk00000003/blk0000003d  (
    .CI(\blk00000003/sig000000bb ),
    .LI(\blk00000003/sig000000bc ),
    .O(\blk00000003/sig000000bd )
  );
  MUXCY   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig000000b8 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b9 ),
    .O(\blk00000003/sig000000b5 )
  );
  XORCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig000000b8 ),
    .LI(\blk00000003/sig000000b9 ),
    .O(\blk00000003/sig000000ba )
  );
  MUXCY   \blk00000003/blk0000003a  (
    .CI(\blk00000003/sig000000b5 ),
    .DI(\blk00000003/sig00000003 ),
    .S(\blk00000003/sig000000b6 ),
    .O(\blk00000003/sig000000b7 )
  );
  XORCY   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig000000b5 ),
    .LI(\blk00000003/sig000000b6 ),
    .O(\NLW_blk00000003/blk00000039_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig00000090 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b3 ),
    .O(\blk00000003/sig000000b0 )
  );
  XORCY   \blk00000003/blk00000037  (
    .CI(\blk00000003/sig00000090 ),
    .LI(\blk00000003/sig000000b3 ),
    .O(\blk00000003/sig000000b4 )
  );
  MUXCY   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig000000b0 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b1 ),
    .O(\blk00000003/sig000000ad )
  );
  XORCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig000000b0 ),
    .LI(\blk00000003/sig000000b1 ),
    .O(\blk00000003/sig000000b2 )
  );
  MUXCY   \blk00000003/blk00000034  (
    .CI(\blk00000003/sig000000ad ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ae ),
    .O(\blk00000003/sig000000aa )
  );
  XORCY   \blk00000003/blk00000033  (
    .CI(\blk00000003/sig000000ad ),
    .LI(\blk00000003/sig000000ae ),
    .O(\blk00000003/sig000000af )
  );
  MUXCY   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig000000aa ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ab ),
    .O(\blk00000003/sig000000a7 )
  );
  XORCY   \blk00000003/blk00000031  (
    .CI(\blk00000003/sig000000aa ),
    .LI(\blk00000003/sig000000ab ),
    .O(\blk00000003/sig000000ac )
  );
  MUXCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig000000a7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000a8 ),
    .O(\blk00000003/sig000000a4 )
  );
  XORCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig000000a7 ),
    .LI(\blk00000003/sig000000a8 ),
    .O(\blk00000003/sig000000a9 )
  );
  MUXCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig000000a4 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000a5 ),
    .O(\blk00000003/sig000000a1 )
  );
  XORCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig000000a4 ),
    .LI(\blk00000003/sig000000a5 ),
    .O(\blk00000003/sig000000a6 )
  );
  MUXCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig000000a1 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000a2 ),
    .O(\blk00000003/sig0000009e )
  );
  XORCY   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig000000a1 ),
    .LI(\blk00000003/sig000000a2 ),
    .O(\blk00000003/sig000000a3 )
  );
  MUXCY   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig0000009e ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000009f ),
    .O(\blk00000003/sig0000009b )
  );
  XORCY   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig0000009e ),
    .LI(\blk00000003/sig0000009f ),
    .O(\blk00000003/sig000000a0 )
  );
  MUXCY   \blk00000003/blk00000028  (
    .CI(\blk00000003/sig0000009b ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000009c ),
    .O(\blk00000003/sig00000098 )
  );
  XORCY   \blk00000003/blk00000027  (
    .CI(\blk00000003/sig0000009b ),
    .LI(\blk00000003/sig0000009c ),
    .O(\blk00000003/sig0000009d )
  );
  MUXCY   \blk00000003/blk00000026  (
    .CI(\blk00000003/sig00000098 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000099 ),
    .O(\blk00000003/sig00000095 )
  );
  XORCY   \blk00000003/blk00000025  (
    .CI(\blk00000003/sig00000098 ),
    .LI(\blk00000003/sig00000099 ),
    .O(\blk00000003/sig0000009a )
  );
  MUXCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig00000095 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig00000091 )
  );
  XORCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig00000095 ),
    .LI(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig00000097 )
  );
  MUXCY   \blk00000003/blk00000022  (
    .CI(\blk00000003/sig00000091 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000092 ),
    .O(\blk00000003/sig00000094 )
  );
  XORCY   \blk00000003/blk00000021  (
    .CI(\blk00000003/sig00000091 ),
    .LI(\blk00000003/sig00000092 ),
    .O(\blk00000003/sig00000093 )
  );
  MUXCY   \blk00000003/blk00000020  (
    .CI(\blk00000003/sig0000008e ),
    .DI(\blk00000003/sig00000003 ),
    .S(\blk00000003/sig0000008f ),
    .O(\blk00000003/sig00000090 )
  );
  MUXCY   \blk00000003/blk0000001f  (
    .CI(\blk00000003/sig0000008d ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000002 ),
    .O(\blk00000003/sig0000008e )
  );
  MUXCY   \blk00000003/blk0000001e  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000008d )
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
