////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: fp_add.v
// /___/   /\     Timestamp: Sun Nov 28 00:30:13 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/fp_add.ngc ./tmp/_cg/fp_add.v 
// Device	: 5vlx110tff1136-1
// Input file	: ./tmp/_cg/fp_add.ngc
// Output file	: ./tmp/_cg/fp_add.v
// # of Modules	: 1
// Design Name	: fp_add
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

module fp_add (
a, b, result
)/* synthesis syn_black_box syn_noprune=1 */;
  input [31 : 0] a;
  input [31 : 0] b;
  output [31 : 0] result;
  
  // synthesis translate_off
  
  wire \blk00000003/sig000001f3 ;
  wire \blk00000003/sig000001f2 ;
  wire \blk00000003/sig000001f1 ;
  wire \blk00000003/sig000001f0 ;
  wire \blk00000003/sig000001ef ;
  wire \blk00000003/sig000001ee ;
  wire \blk00000003/sig000001ed ;
  wire \blk00000003/sig000001ec ;
  wire \blk00000003/sig000001eb ;
  wire \blk00000003/sig000001ea ;
  wire \blk00000003/sig000001e9 ;
  wire \blk00000003/sig000001e8 ;
  wire \blk00000003/sig000001e7 ;
  wire \blk00000003/sig000001e6 ;
  wire \blk00000003/sig000001e5 ;
  wire \blk00000003/sig000001e4 ;
  wire \blk00000003/sig000001e3 ;
  wire \blk00000003/sig000001e2 ;
  wire \blk00000003/sig000001e1 ;
  wire \blk00000003/sig000001e0 ;
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
  wire \blk00000003/sig000001ca ;
  wire \blk00000003/sig000001c9 ;
  wire \blk00000003/sig000001c8 ;
  wire \blk00000003/sig000001c7 ;
  wire \blk00000003/sig000001c6 ;
  wire \blk00000003/sig000001c5 ;
  wire \blk00000003/sig000001c4 ;
  wire \blk00000003/sig000001c3 ;
  wire \blk00000003/sig000001c2 ;
  wire \blk00000003/sig000001c1 ;
  wire \blk00000003/sig000001c0 ;
  wire \blk00000003/sig000001bf ;
  wire \blk00000003/sig000001be ;
  wire \blk00000003/sig000001bd ;
  wire \blk00000003/sig000001bc ;
  wire \blk00000003/sig000001bb ;
  wire \blk00000003/sig000001ba ;
  wire \blk00000003/sig000001b9 ;
  wire \blk00000003/sig000001b8 ;
  wire \blk00000003/sig000001b7 ;
  wire \blk00000003/sig000001b6 ;
  wire \blk00000003/sig000001b5 ;
  wire \blk00000003/sig000001b4 ;
  wire \blk00000003/sig000001b3 ;
  wire \blk00000003/sig000001b2 ;
  wire \blk00000003/sig000001b1 ;
  wire \blk00000003/sig000001b0 ;
  wire \blk00000003/sig000001af ;
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
  wire \blk00000003/sig00000183 ;
  wire \blk00000003/sig00000182 ;
  wire \blk00000003/sig00000181 ;
  wire \blk00000003/sig00000180 ;
  wire \blk00000003/sig0000017f ;
  wire \blk00000003/sig0000017e ;
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
  wire \NLW_blk00000003/blk00000079_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_P<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000079_CARRYOUT<0>_UNCONNECTED ;
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
  wire \NLW_blk00000003/blk00000061_P<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000061_P<40>_UNCONNECTED ;
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
  wire \NLW_blk00000003/blk0000005f_O_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000036_O_UNCONNECTED ;
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
  MUXF7   \blk00000003/blk00000171  (
    .I0(\blk00000003/sig000001f3 ),
    .I1(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000001d5 ),
    .O(\blk00000003/sig000001db )
  );
  LUT6 #(
    .INIT ( 64'h5D5C080CDDCC88CC ))
  \blk00000003/blk00000170  (
    .I0(\blk00000003/sig000001d4 ),
    .I1(a_0[31]),
    .I2(\blk00000003/sig000001d2 ),
    .I3(\blk00000003/sig000000f3 ),
    .I4(b_1[31]),
    .I5(\blk00000003/sig000000c3 ),
    .O(\blk00000003/sig000001f3 )
  );
  LUT6 #(
    .INIT ( 64'h0818181818181010 ))
  \blk00000003/blk0000016f  (
    .I0(\blk00000003/sig0000006f ),
    .I1(\blk00000003/sig00000072 ),
    .I2(\blk00000003/sig00000075 ),
    .I3(\blk00000003/sig00000066 ),
    .I4(\blk00000003/sig00000069 ),
    .I5(\blk00000003/sig0000006c ),
    .O(\blk00000003/sig000001e4 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk0000016e  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig00000110 )
  );
  LUT5 #(
    .INIT ( 32'h00800200 ))
  \blk00000003/blk0000016d  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig00000119 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000002 ))
  \blk00000003/blk0000016c  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000111 )
  );
  LUT6 #(
    .INIT ( 64'h4001000000010004 ))
  \blk00000003/blk0000016b  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000112 )
  );
  LUT6 #(
    .INIT ( 64'h0400100000100040 ))
  \blk00000003/blk0000016a  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000116 )
  );
  LUT6 #(
    .INIT ( 64'h0200080000200080 ))
  \blk00000003/blk00000169  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000117 )
  );
  LUT6 #(
    .INIT ( 64'h0100040000400100 ))
  \blk00000003/blk00000168  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000118 )
  );
  LUT6 #(
    .INIT ( 64'h0040010001000400 ))
  \blk00000003/blk00000167  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig0000011a )
  );
  LUT6 #(
    .INIT ( 64'h0200080000200080 ))
  \blk00000003/blk00000166  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006f ),
    .I3(\blk00000003/sig0000006c ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig0000011b )
  );
  LUT6 #(
    .INIT ( 64'h0010004004001000 ))
  \blk00000003/blk00000165  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig0000011c )
  );
  LUT6 #(
    .INIT ( 64'h0200080000200080 ))
  \blk00000003/blk00000164  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig0000006f ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig00000069 ),
    .I4(\blk00000003/sig00000075 ),
    .I5(\blk00000003/sig00000072 ),
    .O(\blk00000003/sig0000011d )
  );
  LUT6 #(
    .INIT ( 64'h2000800000020008 ))
  \blk00000003/blk00000163  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000113 )
  );
  LUT6 #(
    .INIT ( 64'h1000400000040010 ))
  \blk00000003/blk00000162  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000114 )
  );
  LUT6 #(
    .INIT ( 64'h0010004004001000 ))
  \blk00000003/blk00000161  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig00000075 ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig0000006f ),
    .O(\blk00000003/sig0000011e )
  );
  LUT6 #(
    .INIT ( 64'h0800200000080020 ))
  \blk00000003/blk00000160  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig00000075 ),
    .O(\blk00000003/sig00000115 )
  );
  LUT6 #(
    .INIT ( 64'h0200080000200080 ))
  \blk00000003/blk0000015f  (
    .I0(\blk00000003/sig00000066 ),
    .I1(\blk00000003/sig00000069 ),
    .I2(\blk00000003/sig00000075 ),
    .I3(\blk00000003/sig0000006c ),
    .I4(\blk00000003/sig00000072 ),
    .I5(\blk00000003/sig0000006f ),
    .O(\blk00000003/sig0000011f )
  );
  LUT6 #(
    .INIT ( 64'h666666666666666A ))
  \blk00000003/blk0000015e  (
    .I0(\blk00000003/sig00000072 ),
    .I1(\blk00000003/sig00000075 ),
    .I2(\blk00000003/sig0000006c ),
    .I3(\blk00000003/sig0000006f ),
    .I4(\blk00000003/sig00000069 ),
    .I5(\blk00000003/sig00000066 ),
    .O(\blk00000003/sig000001ec )
  );
  INV   \blk00000003/blk0000015d  (
    .I(\blk00000003/sig0000009d ),
    .O(\blk00000003/sig0000009e )
  );
  INV   \blk00000003/blk0000015c  (
    .I(\blk00000003/sig00000099 ),
    .O(\blk00000003/sig0000009a )
  );
  INV   \blk00000003/blk0000015b  (
    .I(\blk00000003/sig00000095 ),
    .O(\blk00000003/sig00000096 )
  );
  INV   \blk00000003/blk0000015a  (
    .I(\blk00000003/sig000001ec ),
    .O(\blk00000003/sig000000f8 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAA8AA ))
  \blk00000003/blk00000159  (
    .I0(\blk00000003/sig00000152 ),
    .I1(\blk00000003/sig00000151 ),
    .I2(\blk00000003/sig00000153 ),
    .I3(\blk00000003/sig000001ef ),
    .I4(\blk00000003/sig00000154 ),
    .O(\blk00000003/sig000001f2 )
  );
  LUT6 #(
    .INIT ( 64'hC888D888C080D888 ))
  \blk00000003/blk00000158  (
    .I0(\blk00000003/sig0000013b ),
    .I1(\blk00000003/sig00000153 ),
    .I2(\blk00000003/sig00000154 ),
    .I3(\blk00000003/sig0000013c ),
    .I4(\blk00000003/sig000001ef ),
    .I5(\blk00000003/sig00000152 ),
    .O(\blk00000003/sig000001f1 )
  );
  MUXF7   \blk00000003/blk00000157  (
    .I0(\blk00000003/sig000001f1 ),
    .I1(\blk00000003/sig000001f2 ),
    .S(\blk00000003/sig0000013a ),
    .O(\blk00000003/sig000001b1 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000156  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014a ),
    .I2(\blk00000003/sig0000014b ),
    .I3(\blk00000003/sig0000013b ),
    .I4(\blk00000003/sig0000013a ),
    .O(\blk00000003/sig0000016f )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000155  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014c ),
    .I2(\blk00000003/sig0000014d ),
    .I3(\blk00000003/sig0000013d ),
    .I4(\blk00000003/sig0000013c ),
    .O(\blk00000003/sig00000171 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \blk00000003/blk00000154  (
    .I0(\blk00000003/sig0000017b ),
    .I1(\blk00000003/sig00000149 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig0000017d ),
    .I4(\blk00000003/sig00000148 ),
    .O(\blk00000003/sig000001a0 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000153  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014e ),
    .I2(\blk00000003/sig0000014f ),
    .I3(\blk00000003/sig0000013f ),
    .I4(\blk00000003/sig0000013e ),
    .O(\blk00000003/sig00000173 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \blk00000003/blk00000152  (
    .I0(\blk00000003/sig00000179 ),
    .I1(\blk00000003/sig00000147 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig0000017b ),
    .I4(\blk00000003/sig00000146 ),
    .O(\blk00000003/sig000001a2 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000151  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000150 ),
    .I2(\blk00000003/sig00000151 ),
    .I3(\blk00000003/sig00000141 ),
    .I4(\blk00000003/sig00000140 ),
    .O(\blk00000003/sig00000175 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000150  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000152 ),
    .I2(\blk00000003/sig00000153 ),
    .I3(\blk00000003/sig00000143 ),
    .I4(\blk00000003/sig00000142 ),
    .O(\blk00000003/sig00000176 )
  );
  LUT4 #(
    .INIT ( 16'h2227 ))
  \blk00000003/blk0000014f  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000154 ),
    .I2(\blk00000003/sig00000145 ),
    .I3(\blk00000003/sig00000144 ),
    .O(\blk00000003/sig00000178 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \blk00000003/blk0000014e  (
    .I0(\blk00000003/sig00000146 ),
    .I1(\blk00000003/sig00000147 ),
    .I2(\blk00000003/sig00000091 ),
    .O(\blk00000003/sig0000017a )
  );
  LUT6 #(
    .INIT ( 64'h0400151104000400 ))
  \blk00000003/blk0000014d  (
    .I0(\blk00000003/sig00000170 ),
    .I1(\blk00000003/sig00000091 ),
    .I2(\blk00000003/sig0000014a ),
    .I3(\blk00000003/sig0000014b ),
    .I4(\blk00000003/sig0000013a ),
    .I5(\blk00000003/sig0000013b ),
    .O(\blk00000003/sig000001ae )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \blk00000003/blk0000014c  (
    .I0(\blk00000003/sig00000148 ),
    .I1(\blk00000003/sig00000149 ),
    .I2(\blk00000003/sig00000091 ),
    .O(\blk00000003/sig0000017c )
  );
  LUT5 #(
    .INIT ( 32'hEA404040 ))
  \blk00000003/blk0000014b  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000013b ),
    .I2(\blk00000003/sig0000013a ),
    .I3(\blk00000003/sig0000014a ),
    .I4(\blk00000003/sig0000014b ),
    .O(\blk00000003/sig000001b0 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \blk00000003/blk0000014a  (
    .I0(\blk00000003/sig00000145 ),
    .I1(\blk00000003/sig00000177 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig00000179 ),
    .I4(\blk00000003/sig00000144 ),
    .O(\blk00000003/sig000001a4 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000149  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[0]),
    .I2(a_0[1]),
    .I3(b_1[1]),
    .I4(b_1[0]),
    .O(\blk00000003/sig00000162 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000148  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[2]),
    .I2(a_0[3]),
    .I3(b_1[3]),
    .I4(b_1[2]),
    .O(\blk00000003/sig00000164 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000147  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[4]),
    .I2(a_0[5]),
    .I3(b_1[5]),
    .I4(b_1[4]),
    .O(\blk00000003/sig00000166 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000146  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[6]),
    .I2(a_0[7]),
    .I3(b_1[7]),
    .I4(b_1[6]),
    .O(\blk00000003/sig00000168 )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000145  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[8]),
    .I2(a_0[9]),
    .I3(b_1[9]),
    .I4(b_1[8]),
    .O(\blk00000003/sig0000016a )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000144  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[10]),
    .I2(a_0[11]),
    .I3(b_1[11]),
    .I4(b_1[10]),
    .O(\blk00000003/sig0000016c )
  );
  LUT5 #(
    .INIT ( 32'h02020257 ))
  \blk00000003/blk00000143  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[12]),
    .I2(a_0[13]),
    .I3(b_1[13]),
    .I4(b_1[12]),
    .O(\blk00000003/sig0000016e )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \blk00000003/blk00000142  (
    .I0(\blk00000003/sig000000a3 ),
    .I1(\blk00000003/sig00000091 ),
    .I2(\blk00000003/sig0000017d ),
    .O(\blk00000003/sig000001ee )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk00000141  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[10]),
    .I3(a_0[10]),
    .O(\blk00000003/sig00000105 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk00000140  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[11]),
    .I3(a_0[11]),
    .O(\blk00000003/sig00000104 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk0000013f  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[12]),
    .I3(a_0[12]),
    .O(\blk00000003/sig00000103 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk0000013e  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[13]),
    .I3(a_0[13]),
    .O(\blk00000003/sig00000102 )
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \blk00000003/blk0000013d  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(a_0[9]),
    .I2(b_1[9]),
    .I3(\blk00000003/sig000001ec ),
    .O(\blk00000003/sig00000106 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \blk00000003/blk0000013c  (
    .I0(\blk00000003/sig0000017b ),
    .I1(\blk00000003/sig0000017d ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig00000148 ),
    .O(\blk00000003/sig000001a1 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \blk00000003/blk0000013b  (
    .I0(\blk00000003/sig00000179 ),
    .I1(\blk00000003/sig0000017b ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig00000146 ),
    .O(\blk00000003/sig000001a3 )
  );
  LUT5 #(
    .INIT ( 32'h00E00040 ))
  \blk00000003/blk0000013a  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000144 ),
    .I2(\blk00000003/sig00000177 ),
    .I3(\blk00000003/sig00000179 ),
    .I4(\blk00000003/sig00000154 ),
    .O(\blk00000003/sig000001a5 )
  );
  LUT6 #(
    .INIT ( 64'h0020000002220000 ))
  \blk00000003/blk00000139  (
    .I0(\blk00000003/sig0000018c ),
    .I1(\blk00000003/sig00000177 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig00000152 ),
    .I4(\blk00000003/sig0000008c ),
    .I5(\blk00000003/sig00000142 ),
    .O(\blk00000003/sig000001a6 )
  );
  LUT5 #(
    .INIT ( 32'h00E00040 ))
  \blk00000003/blk00000138  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000142 ),
    .I2(\blk00000003/sig0000008c ),
    .I3(\blk00000003/sig00000177 ),
    .I4(\blk00000003/sig00000152 ),
    .O(\blk00000003/sig000001a7 )
  );
  LUT6 #(
    .INIT ( 64'h0020000002220000 ))
  \blk00000003/blk00000137  (
    .I0(\blk00000003/sig00000184 ),
    .I1(\blk00000003/sig0000008c ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig00000150 ),
    .I4(\blk00000003/sig00000174 ),
    .I5(\blk00000003/sig00000140 ),
    .O(\blk00000003/sig000001a8 )
  );
  LUT5 #(
    .INIT ( 32'h00E00040 ))
  \blk00000003/blk00000136  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000140 ),
    .I2(\blk00000003/sig00000174 ),
    .I3(\blk00000003/sig0000008c ),
    .I4(\blk00000003/sig00000150 ),
    .O(\blk00000003/sig000001a9 )
  );
  LUT6 #(
    .INIT ( 64'h0020000002220000 ))
  \blk00000003/blk00000135  (
    .I0(\blk00000003/sig00000186 ),
    .I1(\blk00000003/sig00000174 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig0000014e ),
    .I4(\blk00000003/sig00000172 ),
    .I5(\blk00000003/sig0000013e ),
    .O(\blk00000003/sig000001aa )
  );
  LUT5 #(
    .INIT ( 32'h00E00040 ))
  \blk00000003/blk00000134  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000013e ),
    .I2(\blk00000003/sig00000172 ),
    .I3(\blk00000003/sig00000174 ),
    .I4(\blk00000003/sig0000014e ),
    .O(\blk00000003/sig000001ab )
  );
  LUT6 #(
    .INIT ( 64'h0020000002220000 ))
  \blk00000003/blk00000133  (
    .I0(\blk00000003/sig0000017e ),
    .I1(\blk00000003/sig00000172 ),
    .I2(\blk00000003/sig00000091 ),
    .I3(\blk00000003/sig0000014c ),
    .I4(\blk00000003/sig00000170 ),
    .I5(\blk00000003/sig0000013c ),
    .O(\blk00000003/sig000001ac )
  );
  LUT5 #(
    .INIT ( 32'h00E00040 ))
  \blk00000003/blk00000132  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000013c ),
    .I2(\blk00000003/sig00000170 ),
    .I3(\blk00000003/sig00000172 ),
    .I4(\blk00000003/sig0000014c ),
    .O(\blk00000003/sig000001ad )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk00000131  (
    .I0(\blk00000003/sig00000170 ),
    .I1(\blk00000003/sig00000091 ),
    .I2(\blk00000003/sig0000013a ),
    .I3(\blk00000003/sig0000014a ),
    .O(\blk00000003/sig000001af )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \blk00000003/blk00000130  (
    .I0(\blk00000003/sig000000f6 ),
    .I1(b_1[31]),
    .I2(a_0[31]),
    .O(\blk00000003/sig000000f7 )
  );
  LUT6 #(
    .INIT ( 64'h5555555455545554 ))
  \blk00000003/blk0000012f  (
    .I0(\blk00000003/sig000001d7 ),
    .I1(\blk00000003/sig000001e6 ),
    .I2(\blk00000003/sig000000a3 ),
    .I3(\blk00000003/sig000001d8 ),
    .I4(\blk00000003/sig00000091 ),
    .I5(\blk00000003/sig0000017d ),
    .O(\blk00000003/sig000001ed )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk0000012e  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig000001e1 ),
    .O(\blk00000003/sig00000137 )
  );
  LUT4 #(
    .INIT ( 16'hA965 ))
  \blk00000003/blk0000012d  (
    .I0(\blk00000003/sig00000087 ),
    .I1(\blk00000003/sig0000008c ),
    .I2(\blk00000003/sig00000172 ),
    .I3(\blk00000003/sig00000179 ),
    .O(\blk00000003/sig00000088 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk0000012c  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[14]),
    .I3(b_1[0]),
    .I4(a_0[0]),
    .I5(b_1[14]),
    .O(\blk00000003/sig0000010f )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk0000012b  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[15]),
    .I3(b_1[1]),
    .I4(a_0[1]),
    .I5(b_1[15]),
    .O(\blk00000003/sig0000010e )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk0000012a  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[16]),
    .I3(b_1[2]),
    .I4(a_0[2]),
    .I5(b_1[16]),
    .O(\blk00000003/sig0000010d )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000129  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[17]),
    .I3(b_1[3]),
    .I4(a_0[3]),
    .I5(b_1[17]),
    .O(\blk00000003/sig0000010c )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000128  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[18]),
    .I3(b_1[4]),
    .I4(a_0[4]),
    .I5(b_1[18]),
    .O(\blk00000003/sig0000010b )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000127  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[19]),
    .I3(b_1[5]),
    .I4(a_0[5]),
    .I5(b_1[19]),
    .O(\blk00000003/sig0000010a )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000126  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[20]),
    .I3(b_1[6]),
    .I4(a_0[6]),
    .I5(b_1[20]),
    .O(\blk00000003/sig00000109 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000125  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[21]),
    .I3(b_1[7]),
    .I4(a_0[7]),
    .I5(b_1[21]),
    .O(\blk00000003/sig00000108 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk00000124  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(a_0[22]),
    .I3(b_1[8]),
    .I4(a_0[8]),
    .I5(b_1[22]),
    .O(\blk00000003/sig00000107 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk00000123  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(a_0[25]),
    .I3(a_0[26]),
    .I4(a_0[27]),
    .I5(\blk00000003/sig000001f0 ),
    .O(\blk00000003/sig000001e3 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk00000122  (
    .I0(a_0[28]),
    .I1(a_0[29]),
    .I2(a_0[30]),
    .O(\blk00000003/sig000001f0 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \blk00000003/blk00000121  (
    .I0(\blk00000003/sig000001dd ),
    .I1(\blk00000003/sig00000156 ),
    .I2(\blk00000003/sig00000155 ),
    .I3(\blk00000003/sig000001de ),
    .O(\blk00000003/sig000001ef )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000003/blk00000120  (
    .I0(\blk00000003/sig000001ec ),
    .O(\blk00000003/sig000000f5 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F0F0F00020000 ))
  \blk00000003/blk0000011f  (
    .I0(\blk00000003/sig000001ba ),
    .I1(\blk00000003/sig000001e5 ),
    .I2(\blk00000003/sig000001d8 ),
    .I3(\blk00000003/sig000001e6 ),
    .I4(\blk00000003/sig000001ee ),
    .I5(\blk00000003/sig000001d7 ),
    .O(result_2[22])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk0000011e  (
    .I0(b_1[0]),
    .I1(a_0[0]),
    .I2(b_1[1]),
    .I3(a_0[1]),
    .O(\blk00000003/sig000000c5 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000011d  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014b ),
    .I2(\blk00000003/sig0000013b ),
    .O(\blk00000003/sig00000180 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000011c  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014a ),
    .I2(\blk00000003/sig0000013a ),
    .O(\blk00000003/sig00000181 )
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk0000011b  (
    .I0(\blk00000003/sig000001b9 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[23])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk0000011a  (
    .I0(\blk00000003/sig000001b8 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[24])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000119  (
    .I0(\blk00000003/sig000001b7 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[25])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000118  (
    .I0(\blk00000003/sig000001b6 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[26])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000117  (
    .I0(\blk00000003/sig000001b5 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[27])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000116  (
    .I0(\blk00000003/sig000001b4 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[28])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000115  (
    .I0(\blk00000003/sig000001b3 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[29])
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \blk00000003/blk00000114  (
    .I0(\blk00000003/sig000001b2 ),
    .I1(\blk00000003/sig000001ed ),
    .I2(\blk00000003/sig000001e7 ),
    .O(result_2[30])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000113  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001d0 ),
    .O(result_2[0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000112  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c6 ),
    .O(result_2[10])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000111  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c5 ),
    .O(result_2[11])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000110  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c4 ),
    .O(result_2[12])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010f  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c3 ),
    .O(result_2[13])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010e  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c2 ),
    .O(result_2[14])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010d  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c1 ),
    .O(result_2[15])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010c  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c0 ),
    .O(result_2[16])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010b  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001bf ),
    .O(result_2[17])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk0000010a  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001be ),
    .O(result_2[18])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000109  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001bd ),
    .O(result_2[19])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000108  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001cf ),
    .O(result_2[1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000107  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001bc ),
    .O(result_2[20])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000106  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001bb ),
    .O(result_2[21])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000105  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001ce ),
    .O(result_2[2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000104  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001cd ),
    .O(result_2[3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000103  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001cc ),
    .O(result_2[4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000102  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001cb ),
    .O(result_2[5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000101  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001ca ),
    .O(result_2[6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk00000100  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c9 ),
    .O(result_2[7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000ff  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c8 ),
    .O(result_2[8])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000fe  (
    .I0(\blk00000003/sig000001e8 ),
    .I1(\blk00000003/sig000001c7 ),
    .O(result_2[9])
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000fd  (
    .I0(b_1[1]),
    .I1(b_1[0]),
    .I2(a_0[0]),
    .I3(a_0[1]),
    .O(\blk00000003/sig000000c4 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000fc  (
    .I0(b_1[2]),
    .I1(a_0[2]),
    .I2(b_1[3]),
    .I3(a_0[3]),
    .O(\blk00000003/sig000000c8 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000fb  (
    .I0(b_1[3]),
    .I1(b_1[2]),
    .I2(a_0[2]),
    .I3(a_0[3]),
    .O(\blk00000003/sig000000c7 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000fa  (
    .I0(b_1[4]),
    .I1(a_0[4]),
    .I2(b_1[5]),
    .I3(a_0[5]),
    .O(\blk00000003/sig000000cb )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000f9  (
    .I0(b_1[5]),
    .I1(b_1[4]),
    .I2(a_0[4]),
    .I3(a_0[5]),
    .O(\blk00000003/sig000000ca )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000f8  (
    .I0(b_1[6]),
    .I1(a_0[6]),
    .I2(b_1[7]),
    .I3(a_0[7]),
    .O(\blk00000003/sig000000ce )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000f7  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014d ),
    .I2(\blk00000003/sig0000013d ),
    .O(\blk00000003/sig0000017e )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000f6  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014c ),
    .I2(\blk00000003/sig0000013c ),
    .O(\blk00000003/sig0000017f )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000f5  (
    .I0(b_1[7]),
    .I1(b_1[6]),
    .I2(a_0[6]),
    .I3(a_0[7]),
    .O(\blk00000003/sig000000cd )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000f4  (
    .I0(b_1[8]),
    .I1(a_0[8]),
    .I2(b_1[9]),
    .I3(a_0[9]),
    .O(\blk00000003/sig000000d1 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000f3  (
    .I0(b_1[9]),
    .I1(b_1[8]),
    .I2(a_0[8]),
    .I3(a_0[9]),
    .O(\blk00000003/sig000000d0 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000f2  (
    .I0(b_1[10]),
    .I1(a_0[10]),
    .I2(b_1[11]),
    .I3(a_0[11]),
    .O(\blk00000003/sig000000d4 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk000000f1  (
    .I0(\blk00000003/sig000001eb ),
    .I1(\blk00000003/sig0000008c ),
    .I2(\blk00000003/sig00000194 ),
    .I3(\blk00000003/sig00000182 ),
    .I4(\blk00000003/sig0000018e ),
    .I5(\blk00000003/sig00000188 ),
    .O(\blk00000003/sig0000007e )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000f0  (
    .I0(b_1[11]),
    .I1(b_1[10]),
    .I2(a_0[10]),
    .I3(a_0[11]),
    .O(\blk00000003/sig000000d3 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000ef  (
    .I0(\blk00000003/sig0000008c ),
    .I1(\blk00000003/sig00000179 ),
    .I2(\blk00000003/sig00000172 ),
    .O(\blk00000003/sig000001eb )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000ee  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[14]),
    .I3(a_0[14]),
    .O(\blk00000003/sig00000101 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000ed  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[15]),
    .I3(a_0[15]),
    .O(\blk00000003/sig00000100 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000ec  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[16]),
    .I3(a_0[16]),
    .O(\blk00000003/sig000000ff )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000eb  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[17]),
    .I3(a_0[17]),
    .O(\blk00000003/sig000000fe )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000ea  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[18]),
    .I3(a_0[18]),
    .O(\blk00000003/sig000000fd )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000e9  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[19]),
    .I3(a_0[19]),
    .O(\blk00000003/sig000000fc )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000e8  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[20]),
    .I3(a_0[20]),
    .O(\blk00000003/sig000000fb )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000e7  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[21]),
    .I3(a_0[21]),
    .O(\blk00000003/sig000000fa )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \blk00000003/blk000000e6  (
    .I0(\blk00000003/sig000001ec ),
    .I1(\blk00000003/sig000000f3 ),
    .I2(b_1[22]),
    .I3(a_0[22]),
    .O(\blk00000003/sig000000f9 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000e5  (
    .I0(b_1[12]),
    .I1(a_0[12]),
    .I2(b_1[13]),
    .I3(a_0[13]),
    .O(\blk00000003/sig000000d7 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \blk00000003/blk000000e4  (
    .I0(\blk00000003/sig000001eb ),
    .I1(\blk00000003/sig0000008c ),
    .I2(\blk00000003/sig00000195 ),
    .I3(\blk00000003/sig00000183 ),
    .I4(\blk00000003/sig0000018f ),
    .I5(\blk00000003/sig00000189 ),
    .O(\blk00000003/sig00000083 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000e3  (
    .I0(b_1[13]),
    .I1(b_1[12]),
    .I2(a_0[12]),
    .I3(a_0[13]),
    .O(\blk00000003/sig000000d6 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000e2  (
    .I0(b_1[14]),
    .I1(a_0[14]),
    .I2(b_1[15]),
    .I3(a_0[15]),
    .O(\blk00000003/sig000000da )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000e1  (
    .I0(b_1[15]),
    .I1(b_1[14]),
    .I2(a_0[14]),
    .I3(a_0[15]),
    .O(\blk00000003/sig000000d9 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000e0  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014f ),
    .I2(\blk00000003/sig0000013f ),
    .O(\blk00000003/sig00000186 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000df  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014e ),
    .I2(\blk00000003/sig0000013e ),
    .O(\blk00000003/sig00000187 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000de  (
    .I0(b_1[16]),
    .I1(a_0[16]),
    .I2(b_1[17]),
    .I3(a_0[17]),
    .O(\blk00000003/sig000000dd )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000dd  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000151 ),
    .I2(\blk00000003/sig00000141 ),
    .O(\blk00000003/sig00000184 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000dc  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000150 ),
    .I2(\blk00000003/sig00000140 ),
    .O(\blk00000003/sig00000185 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000db  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000153 ),
    .I2(\blk00000003/sig00000143 ),
    .O(\blk00000003/sig0000018c )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000da  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000152 ),
    .I2(\blk00000003/sig00000142 ),
    .O(\blk00000003/sig0000018d )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000d9  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000154 ),
    .I2(\blk00000003/sig00000144 ),
    .O(\blk00000003/sig0000018b )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000d8  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000145 ),
    .O(\blk00000003/sig0000018a )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000d7  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000147 ),
    .O(\blk00000003/sig00000192 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000d6  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000146 ),
    .O(\blk00000003/sig00000193 )
  );
  LUT6 #(
    .INIT ( 64'h0000080000000000 ))
  \blk00000003/blk000000d5  (
    .I0(\blk00000003/sig000000a0 ),
    .I1(\blk00000003/sig00000098 ),
    .I2(\blk00000003/sig000000a3 ),
    .I3(\blk00000003/sig0000009c ),
    .I4(\blk00000003/sig000000a2 ),
    .I5(\blk00000003/sig000001ea ),
    .O(\blk00000003/sig000001e5 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \blk00000003/blk000000d4  (
    .I0(\blk00000003/sig00000094 ),
    .I1(\blk00000003/sig0000008f ),
    .I2(\blk00000003/sig0000008a ),
    .I3(\blk00000003/sig00000086 ),
    .I4(\blk00000003/sig00000081 ),
    .O(\blk00000003/sig000001ea )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000d3  (
    .I0(b_1[17]),
    .I1(b_1[16]),
    .I2(a_0[16]),
    .I3(a_0[17]),
    .O(\blk00000003/sig000000dc )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000d2  (
    .I0(b_1[18]),
    .I1(a_0[18]),
    .I2(b_1[19]),
    .I3(a_0[19]),
    .O(\blk00000003/sig000000e0 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000d1  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000149 ),
    .O(\blk00000003/sig00000190 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000d0  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000148 ),
    .O(\blk00000003/sig00000191 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000cf  (
    .I0(b_1[19]),
    .I1(b_1[18]),
    .I2(a_0[18]),
    .I3(a_0[19]),
    .O(\blk00000003/sig000000df )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000ce  (
    .I0(b_1[20]),
    .I1(a_0[20]),
    .I2(b_1[21]),
    .I3(a_0[21]),
    .O(\blk00000003/sig000000e3 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000cd  (
    .I0(b_1[21]),
    .I1(b_1[20]),
    .I2(a_0[20]),
    .I3(a_0[21]),
    .O(\blk00000003/sig000000e2 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000cc  (
    .I0(b_1[22]),
    .I1(a_0[22]),
    .I2(b_1[23]),
    .I3(a_0[23]),
    .O(\blk00000003/sig000000e6 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000cb  (
    .I0(b_1[23]),
    .I1(b_1[22]),
    .I2(a_0[22]),
    .I3(a_0[23]),
    .O(\blk00000003/sig000000e5 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000ca  (
    .I0(b_1[24]),
    .I1(a_0[24]),
    .I2(b_1[25]),
    .I3(a_0[25]),
    .O(\blk00000003/sig000000e9 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000c9  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(a_0[24]),
    .I3(a_0[25]),
    .O(\blk00000003/sig000000e8 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000c8  (
    .I0(b_1[26]),
    .I1(a_0[26]),
    .I2(b_1[27]),
    .I3(a_0[27]),
    .O(\blk00000003/sig000000ec )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000c7  (
    .I0(b_1[27]),
    .I1(b_1[26]),
    .I2(a_0[26]),
    .I3(a_0[27]),
    .O(\blk00000003/sig000000eb )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000003/blk000000c6  (
    .I0(b_1[28]),
    .I1(a_0[28]),
    .I2(b_1[29]),
    .I3(a_0[29]),
    .O(\blk00000003/sig000000ef )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \blk00000003/blk000000c5  (
    .I0(b_1[29]),
    .I1(b_1[28]),
    .I2(a_0[28]),
    .I3(a_0[29]),
    .O(\blk00000003/sig000000ee )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk000000c4  (
    .I0(b_1[30]),
    .I1(a_0[30]),
    .O(\blk00000003/sig000000f2 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000c3  (
    .I0(a_0[30]),
    .I1(b_1[30]),
    .O(\blk00000003/sig000000f1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk000000c2  (
    .I0(\blk00000003/sig000000a3 ),
    .I1(\blk00000003/sig000000a2 ),
    .I2(\blk00000003/sig000000a0 ),
    .I3(\blk00000003/sig0000009c ),
    .I4(\blk00000003/sig00000098 ),
    .I5(\blk00000003/sig000001e9 ),
    .O(\blk00000003/sig000001e6 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \blk00000003/blk000000c1  (
    .I0(\blk00000003/sig00000094 ),
    .I1(\blk00000003/sig0000008f ),
    .I2(\blk00000003/sig0000008a ),
    .I3(\blk00000003/sig00000086 ),
    .I4(\blk00000003/sig00000081 ),
    .O(\blk00000003/sig000001e9 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000003/blk000000c0  (
    .I0(\blk00000003/sig000001dc ),
    .I1(\blk00000003/sig000001e5 ),
    .I2(\blk00000003/sig000000a3 ),
    .I3(\blk00000003/sig000001e6 ),
    .I4(\blk00000003/sig000001d7 ),
    .I5(\blk00000003/sig000001d8 ),
    .O(\blk00000003/sig000001e8 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAABAA ))
  \blk00000003/blk000000bf  (
    .I0(\blk00000003/sig000001d7 ),
    .I1(\blk00000003/sig000001d8 ),
    .I2(\blk00000003/sig000001dc ),
    .I3(\blk00000003/sig000001e5 ),
    .I4(\blk00000003/sig000000a3 ),
    .I5(\blk00000003/sig000001e6 ),
    .O(\blk00000003/sig000001e7 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \blk00000003/blk000000be  (
    .I0(\blk00000003/sig000001e3 ),
    .I1(\blk00000003/sig000001e0 ),
    .I2(\blk00000003/sig000001e4 ),
    .I3(\blk00000003/sig000001e2 ),
    .O(\blk00000003/sig00000138 )
  );
  LUT4 #(
    .INIT ( 16'h8001 ))
  \blk00000003/blk000000bd  (
    .I0(\blk00000003/sig00000078 ),
    .I1(\blk00000003/sig00000075 ),
    .I2(\blk00000003/sig0000007c ),
    .I3(\blk00000003/sig0000007b ),
    .O(\blk00000003/sig000001e2 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk000000bc  (
    .I0(a_0[30]),
    .I1(a_0[29]),
    .I2(a_0[28]),
    .I3(a_0[27]),
    .I4(a_0[26]),
    .I5(\blk00000003/sig000001e1 ),
    .O(\blk00000003/sig000001d5 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \blk00000003/blk000000bb  (
    .I0(a_0[23]),
    .I1(a_0[24]),
    .I2(\blk00000003/sig000001e0 ),
    .I3(a_0[25]),
    .O(\blk00000003/sig000001e1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk000000ba  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig000001df ),
    .O(\blk00000003/sig000001e0 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \blk00000003/blk000000b9  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig000001df )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b8  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014a ),
    .O(\blk00000003/sig00000196 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b7  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000153 ),
    .O(\blk00000003/sig0000019f )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b6  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000152 ),
    .O(\blk00000003/sig0000019e )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b5  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000151 ),
    .O(\blk00000003/sig0000019d )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b4  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig00000150 ),
    .O(\blk00000003/sig0000019c )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b3  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014f ),
    .O(\blk00000003/sig0000019b )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b2  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014e ),
    .O(\blk00000003/sig0000019a )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b1  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014d ),
    .O(\blk00000003/sig00000199 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000b0  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014c ),
    .O(\blk00000003/sig00000198 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000003/blk000000af  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000014b ),
    .O(\blk00000003/sig00000197 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk000000ae  (
    .I0(\blk00000003/sig0000015d ),
    .I1(\blk00000003/sig0000015c ),
    .I2(\blk00000003/sig0000015e ),
    .I3(\blk00000003/sig0000015f ),
    .I4(\blk00000003/sig00000160 ),
    .I5(\blk00000003/sig00000161 ),
    .O(\blk00000003/sig000001de )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \blk00000003/blk000000ad  (
    .I0(\blk00000003/sig000000f6 ),
    .I1(\blk00000003/sig00000157 ),
    .I2(\blk00000003/sig00000158 ),
    .I3(\blk00000003/sig00000159 ),
    .I4(\blk00000003/sig0000015a ),
    .I5(\blk00000003/sig0000015b ),
    .O(\blk00000003/sig000001dd )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000ac  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[0]),
    .I2(a_0[0]),
    .O(\blk00000003/sig00000136 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000ab  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[10]),
    .I2(a_0[10]),
    .O(\blk00000003/sig0000012c )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000aa  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[11]),
    .I2(a_0[11]),
    .O(\blk00000003/sig0000012b )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a9  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[12]),
    .I2(a_0[12]),
    .O(\blk00000003/sig0000012a )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a8  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[13]),
    .I2(a_0[13]),
    .O(\blk00000003/sig00000129 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a7  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[14]),
    .I2(a_0[14]),
    .O(\blk00000003/sig00000128 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a6  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[15]),
    .I2(a_0[15]),
    .O(\blk00000003/sig00000127 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a5  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[16]),
    .I2(a_0[16]),
    .O(\blk00000003/sig00000126 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a4  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[17]),
    .I2(a_0[17]),
    .O(\blk00000003/sig00000125 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a3  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[18]),
    .I2(a_0[18]),
    .O(\blk00000003/sig00000124 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a2  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[19]),
    .I2(a_0[19]),
    .O(\blk00000003/sig00000123 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a1  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[1]),
    .I2(a_0[1]),
    .O(\blk00000003/sig00000135 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk000000a0  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[20]),
    .I2(a_0[20]),
    .O(\blk00000003/sig00000122 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009f  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[21]),
    .I2(a_0[21]),
    .O(\blk00000003/sig00000121 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009e  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[22]),
    .I2(a_0[22]),
    .O(\blk00000003/sig00000120 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009d  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[2]),
    .I2(a_0[2]),
    .O(\blk00000003/sig00000134 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009c  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[3]),
    .I2(a_0[3]),
    .O(\blk00000003/sig00000133 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009b  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[4]),
    .I2(a_0[4]),
    .O(\blk00000003/sig00000132 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000009a  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[5]),
    .I2(a_0[5]),
    .O(\blk00000003/sig00000131 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk00000099  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[6]),
    .I2(a_0[6]),
    .O(\blk00000003/sig00000130 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk00000098  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[7]),
    .I2(a_0[7]),
    .O(\blk00000003/sig0000012f )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk00000097  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[8]),
    .I2(a_0[8]),
    .O(\blk00000003/sig0000012e )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk00000096  (
    .I0(\blk00000003/sig000000f3 ),
    .I1(b_1[9]),
    .I2(a_0[9]),
    .O(\blk00000003/sig0000012d )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000003/blk00000095  (
    .I0(\blk00000003/sig00000091 ),
    .I1(\blk00000003/sig0000017d ),
    .O(\blk00000003/sig000001dc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000094  (
    .I0(b_1[31]),
    .I1(a_0[31]),
    .O(\blk00000003/sig00000139 )
  );
  LUT6 #(
    .INIT ( 64'hFFAA0C08FFFF0C0C ))
  \blk00000003/blk00000093  (
    .I0(\blk00000003/sig000001d8 ),
    .I1(\blk00000003/sig000001db ),
    .I2(\blk00000003/sig000001d6 ),
    .I3(\blk00000003/sig000001d7 ),
    .I4(\blk00000003/sig000001da ),
    .I5(\blk00000003/sig000001dc ),
    .O(result_2[31])
  );
  LUT4 #(
    .INIT ( 16'hC040 ))
  \blk00000003/blk00000092  (
    .I0(\blk00000003/sig000001d6 ),
    .I1(b_1[31]),
    .I2(a_0[31]),
    .I3(\blk00000003/sig000001d5 ),
    .O(\blk00000003/sig000001da )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \blk00000003/blk00000091  (
    .I0(\blk00000003/sig0000007c ),
    .I1(b_1[23]),
    .I2(a_0[23]),
    .O(\blk00000003/sig000000b3 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk00000090  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[24]),
    .I2(b_1[24]),
    .O(\blk00000003/sig000000b2 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008f  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[25]),
    .I2(b_1[25]),
    .O(\blk00000003/sig000000b0 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008e  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[26]),
    .I2(b_1[26]),
    .O(\blk00000003/sig000000ae )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008d  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[27]),
    .I2(b_1[27]),
    .O(\blk00000003/sig000000ac )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008c  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[28]),
    .I2(b_1[28]),
    .O(\blk00000003/sig000000aa )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008b  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[29]),
    .I2(b_1[29]),
    .O(\blk00000003/sig000000a8 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \blk00000003/blk0000008a  (
    .I0(\blk00000003/sig0000007c ),
    .I1(a_0[30]),
    .I2(b_1[30]),
    .O(\blk00000003/sig000000a6 )
  );
  LUT6 #(
    .INIT ( 64'h4000FFFF40004000 ))
  \blk00000003/blk00000089  (
    .I0(\blk00000003/sig000000bb ),
    .I1(\blk00000003/sig000001d9 ),
    .I2(a_0[30]),
    .I3(a_0[29]),
    .I4(\blk00000003/sig000000c3 ),
    .I5(\blk00000003/sig000001d2 ),
    .O(\blk00000003/sig000001d6 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk00000088  (
    .I0(a_0[28]),
    .I1(a_0[27]),
    .I2(a_0[26]),
    .I3(a_0[25]),
    .I4(a_0[24]),
    .I5(a_0[23]),
    .O(\blk00000003/sig000001d9 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF14445444 ))
  \blk00000003/blk00000087  (
    .I0(\blk00000003/sig000001d6 ),
    .I1(\blk00000003/sig000001d4 ),
    .I2(\blk00000003/sig000001d2 ),
    .I3(\blk00000003/sig000000c3 ),
    .I4(\blk00000003/sig00000139 ),
    .I5(\blk00000003/sig000001d5 ),
    .O(\blk00000003/sig000001d8 )
  );
  LUT5 #(
    .INIT ( 32'h55555444 ))
  \blk00000003/blk00000086  (
    .I0(\blk00000003/sig000001d5 ),
    .I1(\blk00000003/sig000001d4 ),
    .I2(\blk00000003/sig000001d2 ),
    .I3(\blk00000003/sig000000c3 ),
    .I4(\blk00000003/sig000001d6 ),
    .O(\blk00000003/sig000001d7 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk00000085  (
    .I0(\blk00000003/sig000000bb ),
    .I1(a_0[30]),
    .I2(a_0[29]),
    .I3(a_0[28]),
    .I4(a_0[27]),
    .I5(\blk00000003/sig000001d3 ),
    .O(\blk00000003/sig000001d4 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \blk00000003/blk00000084  (
    .I0(a_0[26]),
    .I1(a_0[25]),
    .I2(a_0[24]),
    .I3(a_0[23]),
    .O(\blk00000003/sig000001d3 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000083  (
    .I0(a_0[0]),
    .I1(a_0[1]),
    .I2(a_0[2]),
    .I3(a_0[3]),
    .I4(a_0[4]),
    .I5(a_0[5]),
    .O(\blk00000003/sig000000b4 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000082  (
    .I0(a_0[6]),
    .I1(a_0[7]),
    .I2(a_0[8]),
    .I3(a_0[9]),
    .I4(a_0[10]),
    .I5(a_0[11]),
    .O(\blk00000003/sig000000b6 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk00000081  (
    .I0(a_0[12]),
    .I1(a_0[13]),
    .I2(a_0[14]),
    .I3(a_0[15]),
    .I4(a_0[16]),
    .I5(a_0[17]),
    .O(\blk00000003/sig000000b8 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk00000080  (
    .I0(a_0[18]),
    .I1(a_0[19]),
    .I2(a_0[20]),
    .I3(a_0[21]),
    .I4(a_0[22]),
    .O(\blk00000003/sig000000ba )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000003/blk0000007f  (
    .I0(b_1[30]),
    .I1(b_1[29]),
    .I2(b_1[28]),
    .I3(b_1[27]),
    .I4(b_1[26]),
    .I5(\blk00000003/sig000001d1 ),
    .O(\blk00000003/sig000001d2 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000003/blk0000007e  (
    .I0(b_1[25]),
    .I1(b_1[24]),
    .I2(b_1[23]),
    .O(\blk00000003/sig000001d1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000007d  (
    .I0(b_1[0]),
    .I1(b_1[1]),
    .I2(b_1[2]),
    .I3(b_1[3]),
    .I4(b_1[4]),
    .I5(b_1[5]),
    .O(\blk00000003/sig000000bc )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000007c  (
    .I0(b_1[6]),
    .I1(b_1[7]),
    .I2(b_1[8]),
    .I3(b_1[9]),
    .I4(b_1[10]),
    .I5(b_1[11]),
    .O(\blk00000003/sig000000be )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000003/blk0000007b  (
    .I0(b_1[12]),
    .I1(b_1[13]),
    .I2(b_1[14]),
    .I3(b_1[15]),
    .I4(b_1[16]),
    .I5(b_1[17]),
    .O(\blk00000003/sig000000c0 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000003/blk0000007a  (
    .I0(b_1[18]),
    .I1(b_1[19]),
    .I2(b_1[20]),
    .I3(b_1[21]),
    .I4(b_1[22]),
    .O(\blk00000003/sig000000c2 )
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
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ),
    .MASK ( 48'h3FFFFFFFFFFF ))
  \blk00000003/blk00000079  (
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
    .PATTERNBDETECT(\NLW_blk00000003/blk00000079_PATTERNBDETECT_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000003/blk00000079_PATTERNDETECT_UNCONNECTED ),
    .OVERFLOW(\NLW_blk00000003/blk00000079_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000079_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000079_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000079_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig0000017f , \blk00000003/sig0000017e , \blk00000003/sig00000187 , \blk00000003/sig00000186 , 
\blk00000003/sig00000185 , \blk00000003/sig00000184 , \blk00000003/sig0000018d , \blk00000003/sig0000018c , \blk00000003/sig0000018b , 
\blk00000003/sig0000018a , \blk00000003/sig00000193 , \blk00000003/sig00000192 , \blk00000003/sig00000191 , \blk00000003/sig00000190 , 
\blk00000003/sig00000196 , \blk00000003/sig00000197 , \blk00000003/sig00000198 , \blk00000003/sig00000199 , \blk00000003/sig0000019a , 
\blk00000003/sig0000019b , \blk00000003/sig0000019c , \blk00000003/sig0000019d , \blk00000003/sig0000019e , \blk00000003/sig0000019f }),
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
    .B({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig000001a0 , \blk00000003/sig000001a1 , \blk00000003/sig000001a2 , 
\blk00000003/sig000001a3 , \blk00000003/sig000001a4 , \blk00000003/sig000001a5 , \blk00000003/sig000001a6 , \blk00000003/sig000001a7 , 
\blk00000003/sig000001a8 , \blk00000003/sig000001a9 , \blk00000003/sig000001aa , \blk00000003/sig000001ab , \blk00000003/sig000001ac , 
\blk00000003/sig000001ad , \blk00000003/sig000001ae , \blk00000003/sig000001af }),
    .C({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig000000a0 , \blk00000003/sig0000009c , 
\blk00000003/sig00000098 , \blk00000003/sig00000094 , \blk00000003/sig0000008f , \blk00000003/sig0000008a , \blk00000003/sig00000086 , 
\blk00000003/sig00000081 , \blk00000003/sig00000003 , \blk00000003/sig00000180 , \blk00000003/sig000001b0 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig000001b1 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000003 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , 
\blk00000003/sig00000002 , \blk00000003/sig00000003 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .PCOUT({\NLW_blk00000003/blk00000079_PCOUT<47>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<45>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<43>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<41>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<39>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<37>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<35>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<33>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<31>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_PCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000079_PCOUT<0>_UNCONNECTED }),
    .P({\NLW_blk00000003/blk00000079_P<47>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_P<45>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<44>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_P<39>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<38>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_P<36>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<35>_UNCONNECTED , \blk00000003/sig000001b2 , \blk00000003/sig000001b3 
, \blk00000003/sig000001b4 , \blk00000003/sig000001b5 , \blk00000003/sig000001b6 , \blk00000003/sig000001b7 , \blk00000003/sig000001b8 , 
\blk00000003/sig000001b9 , \NLW_blk00000003/blk00000079_P<26>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<25>_UNCONNECTED , \blk00000003/sig000001ba 
, \blk00000003/sig000001bb , \blk00000003/sig000001bc , \blk00000003/sig000001bd , \blk00000003/sig000001be , \blk00000003/sig000001bf , 
\blk00000003/sig000001c0 , \blk00000003/sig000001c1 , \blk00000003/sig000001c2 , \blk00000003/sig000001c3 , \blk00000003/sig000001c4 , 
\blk00000003/sig000001c5 , \blk00000003/sig000001c6 , \blk00000003/sig000001c7 , \blk00000003/sig000001c8 , \blk00000003/sig000001c9 , 
\blk00000003/sig000001ca , \blk00000003/sig000001cb , \blk00000003/sig000001cc , \blk00000003/sig000001cd , \blk00000003/sig000001ce , 
\blk00000003/sig000001cf , \blk00000003/sig000001d0 , \NLW_blk00000003/blk00000079_P<1>_UNCONNECTED , \NLW_blk00000003/blk00000079_P<0>_UNCONNECTED })
,
    .BCOUT({\NLW_blk00000003/blk00000079_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000079_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ACOUT({\NLW_blk00000003/blk00000079_ACOUT<29>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<27>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<25>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<23>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<21>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<19>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_ACOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000079_ACOUT<0>_UNCONNECTED }),
    .CARRYOUT({\NLW_blk00000003/blk00000079_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000079_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000079_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000079_CARRYOUT<0>_UNCONNECTED })
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  \blk00000003/blk00000078  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000190 ),
    .I2(\blk00000003/sig00000191 ),
    .I3(\blk00000003/sig00000192 ),
    .I4(\blk00000003/sig00000193 ),
    .O(\blk00000003/sig00000195 )
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  \blk00000003/blk00000077  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000190 ),
    .I2(\blk00000003/sig00000191 ),
    .I3(\blk00000003/sig00000192 ),
    .I4(\blk00000003/sig00000193 ),
    .O(\blk00000003/sig00000194 )
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  \blk00000003/blk00000076  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig0000018a ),
    .I2(\blk00000003/sig0000018b ),
    .I3(\blk00000003/sig0000018c ),
    .I4(\blk00000003/sig0000018d ),
    .O(\blk00000003/sig0000018f )
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  \blk00000003/blk00000075  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig0000018a ),
    .I2(\blk00000003/sig0000018b ),
    .I3(\blk00000003/sig0000018c ),
    .I4(\blk00000003/sig0000018d ),
    .O(\blk00000003/sig0000018e )
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  \blk00000003/blk00000074  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000184 ),
    .I2(\blk00000003/sig00000185 ),
    .I3(\blk00000003/sig00000186 ),
    .I4(\blk00000003/sig00000187 ),
    .O(\blk00000003/sig00000189 )
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  \blk00000003/blk00000073  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig00000184 ),
    .I2(\blk00000003/sig00000185 ),
    .I3(\blk00000003/sig00000186 ),
    .I4(\blk00000003/sig00000187 ),
    .O(\blk00000003/sig00000188 )
  );
  LUT5 #(
    .INIT ( 32'h000000FC ))
  \blk00000003/blk00000072  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig0000017e ),
    .I2(\blk00000003/sig0000017f ),
    .I3(\blk00000003/sig00000180 ),
    .I4(\blk00000003/sig00000181 ),
    .O(\blk00000003/sig00000183 )
  );
  LUT5 #(
    .INIT ( 32'h0000FF0C ))
  \blk00000003/blk00000071  (
    .I0(\blk00000003/sig00000002 ),
    .I1(\blk00000003/sig0000017e ),
    .I2(\blk00000003/sig0000017f ),
    .I3(\blk00000003/sig00000180 ),
    .I4(\blk00000003/sig00000181 ),
    .O(\blk00000003/sig00000182 )
  );
  MUXCY   \blk00000003/blk00000070  (
    .CI(\blk00000003/sig0000017b ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000017c ),
    .O(\blk00000003/sig0000017d )
  );
  MUXCY   \blk00000003/blk0000006f  (
    .CI(\blk00000003/sig00000179 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000017a ),
    .O(\blk00000003/sig0000017b )
  );
  MUXCY   \blk00000003/blk0000006e  (
    .CI(\blk00000003/sig00000177 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000178 ),
    .O(\blk00000003/sig00000179 )
  );
  MUXCY   \blk00000003/blk0000006d  (
    .CI(\blk00000003/sig0000008c ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000176 ),
    .O(\blk00000003/sig00000177 )
  );
  MUXCY   \blk00000003/blk0000006c  (
    .CI(\blk00000003/sig00000174 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000175 ),
    .O(\blk00000003/sig0000008c )
  );
  MUXCY   \blk00000003/blk0000006b  (
    .CI(\blk00000003/sig00000172 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000173 ),
    .O(\blk00000003/sig00000174 )
  );
  MUXCY   \blk00000003/blk0000006a  (
    .CI(\blk00000003/sig00000170 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000171 ),
    .O(\blk00000003/sig00000172 )
  );
  MUXCY   \blk00000003/blk00000069  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000016f ),
    .O(\blk00000003/sig00000170 )
  );
  MUXCY   \blk00000003/blk00000068  (
    .CI(\blk00000003/sig0000016d ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000016e ),
    .O(\blk00000003/sig000000f4 )
  );
  MUXCY   \blk00000003/blk00000067  (
    .CI(\blk00000003/sig0000016b ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000016c ),
    .O(\blk00000003/sig0000016d )
  );
  MUXCY   \blk00000003/blk00000066  (
    .CI(\blk00000003/sig00000169 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig0000016a ),
    .O(\blk00000003/sig0000016b )
  );
  MUXCY   \blk00000003/blk00000065  (
    .CI(\blk00000003/sig00000167 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000168 ),
    .O(\blk00000003/sig00000169 )
  );
  MUXCY   \blk00000003/blk00000064  (
    .CI(\blk00000003/sig00000165 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000166 ),
    .O(\blk00000003/sig00000167 )
  );
  MUXCY   \blk00000003/blk00000063  (
    .CI(\blk00000003/sig00000163 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000164 ),
    .O(\blk00000003/sig00000165 )
  );
  MUXCY   \blk00000003/blk00000062  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000162 ),
    .O(\blk00000003/sig00000163 )
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
    .MASK ( 48'hFF0000FFFFFF ))
  \blk00000003/blk00000061  (
    .CARRYIN(\blk00000003/sig000000f7 ),
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
    .PATTERNDETECT(\blk00000003/sig00000091 ),
    .OVERFLOW(\NLW_blk00000003/blk00000061_OVERFLOW_UNCONNECTED ),
    .UNDERFLOW(\NLW_blk00000003/blk00000061_UNDERFLOW_UNCONNECTED ),
    .CARRYCASCIN(\blk00000003/sig00000002 ),
    .CARRYCASCOUT(\NLW_blk00000003/blk00000061_CARRYCASCOUT_UNCONNECTED ),
    .MULTSIGNIN(\blk00000003/sig00000002 ),
    .MULTSIGNOUT(\NLW_blk00000003/blk00000061_MULTSIGNOUT_UNCONNECTED ),
    .A({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig000000f8 , \blk00000003/sig000000f9 , \blk00000003/sig000000fa , \blk00000003/sig000000fb , 
\blk00000003/sig000000fc , \blk00000003/sig000000fd , \blk00000003/sig000000fe , \blk00000003/sig000000ff , \blk00000003/sig00000100 , 
\blk00000003/sig00000101 , \blk00000003/sig00000102 , \blk00000003/sig00000103 , \blk00000003/sig00000104 , \blk00000003/sig00000105 , 
\blk00000003/sig00000106 , \blk00000003/sig00000107 , \blk00000003/sig00000108 , \blk00000003/sig00000109 , \blk00000003/sig0000010a , 
\blk00000003/sig0000010b , \blk00000003/sig0000010c , \blk00000003/sig0000010d , \blk00000003/sig0000010e , \blk00000003/sig0000010f }),
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
    .B({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000110 , \blk00000003/sig00000111 , \blk00000003/sig00000112 , 
\blk00000003/sig00000113 , \blk00000003/sig00000114 , \blk00000003/sig00000115 , \blk00000003/sig00000116 , \blk00000003/sig00000117 , 
\blk00000003/sig00000118 , \blk00000003/sig00000119 , \blk00000003/sig0000011a , \blk00000003/sig0000011b , \blk00000003/sig0000011c , 
\blk00000003/sig0000011d , \blk00000003/sig0000011e , \blk00000003/sig0000011f }),
    .C({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , 
\blk00000003/sig00000120 , \blk00000003/sig00000121 , \blk00000003/sig00000122 , \blk00000003/sig00000123 , \blk00000003/sig00000124 , 
\blk00000003/sig00000125 , \blk00000003/sig00000126 , \blk00000003/sig00000127 , \blk00000003/sig00000128 , \blk00000003/sig00000129 , 
\blk00000003/sig0000012a , \blk00000003/sig0000012b , \blk00000003/sig0000012c , \blk00000003/sig0000012d , \blk00000003/sig0000012e , 
\blk00000003/sig0000012f , \blk00000003/sig00000130 , \blk00000003/sig00000131 , \blk00000003/sig00000132 , \blk00000003/sig00000133 , 
\blk00000003/sig00000134 , \blk00000003/sig00000135 , \blk00000003/sig00000136 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .CARRYINSEL({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .OPMODE({\blk00000003/sig00000002 , \blk00000003/sig00000137 , \blk00000003/sig00000137 , \blk00000003/sig00000002 , \blk00000003/sig00000138 , 
\blk00000003/sig00000002 , \blk00000003/sig00000138 }),
    .BCIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
    .ALUMODE({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000139 , \blk00000003/sig00000139 }),
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
\NLW_blk00000003/blk00000061_P<42>_UNCONNECTED , \NLW_blk00000003/blk00000061_P<41>_UNCONNECTED , \NLW_blk00000003/blk00000061_P<40>_UNCONNECTED , 
\blk00000003/sig0000013a , \blk00000003/sig0000013b , \blk00000003/sig0000013c , \blk00000003/sig0000013d , \blk00000003/sig0000013e , 
\blk00000003/sig0000013f , \blk00000003/sig00000140 , \blk00000003/sig00000141 , \blk00000003/sig00000142 , \blk00000003/sig00000143 , 
\blk00000003/sig00000144 , \blk00000003/sig00000145 , \blk00000003/sig00000146 , \blk00000003/sig00000147 , \blk00000003/sig00000148 , 
\blk00000003/sig00000149 , \blk00000003/sig0000014a , \blk00000003/sig0000014b , \blk00000003/sig0000014c , \blk00000003/sig0000014d , 
\blk00000003/sig0000014e , \blk00000003/sig0000014f , \blk00000003/sig00000150 , \blk00000003/sig00000151 , \blk00000003/sig00000152 , 
\blk00000003/sig00000153 , \blk00000003/sig00000154 , \blk00000003/sig00000155 , \blk00000003/sig00000156 , \blk00000003/sig00000157 , 
\blk00000003/sig00000158 , \blk00000003/sig00000159 , \blk00000003/sig0000015a , \blk00000003/sig0000015b , \blk00000003/sig0000015c , 
\blk00000003/sig0000015d , \blk00000003/sig0000015e , \blk00000003/sig0000015f , \blk00000003/sig00000160 , \blk00000003/sig00000161 }),
    .BCOUT({\NLW_blk00000003/blk00000061_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk00000061_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk00000061_BCOUT<0>_UNCONNECTED }),
    .ACIN({\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , 
\blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 , \blk00000003/sig00000002 }),
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
  MUXCY   \blk00000003/blk00000060  (
    .CI(\blk00000003/sig000000f4 ),
    .DI(\blk00000003/sig00000003 ),
    .S(\blk00000003/sig000000f5 ),
    .O(\blk00000003/sig000000f6 )
  );
  XORCY   \blk00000003/blk0000005f  (
    .CI(\blk00000003/sig000000f4 ),
    .LI(\blk00000003/sig000000f5 ),
    .O(\NLW_blk00000003/blk0000005f_O_UNCONNECTED )
  );
  MUXCY   \blk00000003/blk0000005e  (
    .CI(\blk00000003/sig000000f0 ),
    .DI(\blk00000003/sig000000f1 ),
    .S(\blk00000003/sig000000f2 ),
    .O(\blk00000003/sig000000f3 )
  );
  MUXCY   \blk00000003/blk0000005d  (
    .CI(\blk00000003/sig000000ed ),
    .DI(\blk00000003/sig000000ee ),
    .S(\blk00000003/sig000000ef ),
    .O(\blk00000003/sig000000f0 )
  );
  MUXCY   \blk00000003/blk0000005c  (
    .CI(\blk00000003/sig000000ea ),
    .DI(\blk00000003/sig000000eb ),
    .S(\blk00000003/sig000000ec ),
    .O(\blk00000003/sig000000ed )
  );
  MUXCY   \blk00000003/blk0000005b  (
    .CI(\blk00000003/sig000000e7 ),
    .DI(\blk00000003/sig000000e8 ),
    .S(\blk00000003/sig000000e9 ),
    .O(\blk00000003/sig000000ea )
  );
  MUXCY   \blk00000003/blk0000005a  (
    .CI(\blk00000003/sig000000e4 ),
    .DI(\blk00000003/sig000000e5 ),
    .S(\blk00000003/sig000000e6 ),
    .O(\blk00000003/sig000000e7 )
  );
  MUXCY   \blk00000003/blk00000059  (
    .CI(\blk00000003/sig000000e1 ),
    .DI(\blk00000003/sig000000e2 ),
    .S(\blk00000003/sig000000e3 ),
    .O(\blk00000003/sig000000e4 )
  );
  MUXCY   \blk00000003/blk00000058  (
    .CI(\blk00000003/sig000000de ),
    .DI(\blk00000003/sig000000df ),
    .S(\blk00000003/sig000000e0 ),
    .O(\blk00000003/sig000000e1 )
  );
  MUXCY   \blk00000003/blk00000057  (
    .CI(\blk00000003/sig000000db ),
    .DI(\blk00000003/sig000000dc ),
    .S(\blk00000003/sig000000dd ),
    .O(\blk00000003/sig000000de )
  );
  MUXCY   \blk00000003/blk00000056  (
    .CI(\blk00000003/sig000000d8 ),
    .DI(\blk00000003/sig000000d9 ),
    .S(\blk00000003/sig000000da ),
    .O(\blk00000003/sig000000db )
  );
  MUXCY   \blk00000003/blk00000055  (
    .CI(\blk00000003/sig000000d5 ),
    .DI(\blk00000003/sig000000d6 ),
    .S(\blk00000003/sig000000d7 ),
    .O(\blk00000003/sig000000d8 )
  );
  MUXCY   \blk00000003/blk00000054  (
    .CI(\blk00000003/sig000000d2 ),
    .DI(\blk00000003/sig000000d3 ),
    .S(\blk00000003/sig000000d4 ),
    .O(\blk00000003/sig000000d5 )
  );
  MUXCY   \blk00000003/blk00000053  (
    .CI(\blk00000003/sig000000cf ),
    .DI(\blk00000003/sig000000d0 ),
    .S(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig000000d2 )
  );
  MUXCY   \blk00000003/blk00000052  (
    .CI(\blk00000003/sig000000cc ),
    .DI(\blk00000003/sig000000cd ),
    .S(\blk00000003/sig000000ce ),
    .O(\blk00000003/sig000000cf )
  );
  MUXCY   \blk00000003/blk00000051  (
    .CI(\blk00000003/sig000000c9 ),
    .DI(\blk00000003/sig000000ca ),
    .S(\blk00000003/sig000000cb ),
    .O(\blk00000003/sig000000cc )
  );
  MUXCY   \blk00000003/blk00000050  (
    .CI(\blk00000003/sig000000c6 ),
    .DI(\blk00000003/sig000000c7 ),
    .S(\blk00000003/sig000000c8 ),
    .O(\blk00000003/sig000000c9 )
  );
  MUXCY   \blk00000003/blk0000004f  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig000000c4 ),
    .S(\blk00000003/sig000000c5 ),
    .O(\blk00000003/sig000000c6 )
  );
  MUXCY   \blk00000003/blk0000004e  (
    .CI(\blk00000003/sig000000c1 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000c2 ),
    .O(\blk00000003/sig000000c3 )
  );
  MUXCY   \blk00000003/blk0000004d  (
    .CI(\blk00000003/sig000000bf ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000c0 ),
    .O(\blk00000003/sig000000c1 )
  );
  MUXCY   \blk00000003/blk0000004c  (
    .CI(\blk00000003/sig000000bd ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000be ),
    .O(\blk00000003/sig000000bf )
  );
  MUXCY   \blk00000003/blk0000004b  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000bc ),
    .O(\blk00000003/sig000000bd )
  );
  MUXCY   \blk00000003/blk0000004a  (
    .CI(\blk00000003/sig000000b9 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ba ),
    .O(\blk00000003/sig000000bb )
  );
  MUXCY   \blk00000003/blk00000049  (
    .CI(\blk00000003/sig000000b7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b8 ),
    .O(\blk00000003/sig000000b9 )
  );
  MUXCY   \blk00000003/blk00000048  (
    .CI(\blk00000003/sig000000b5 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b6 ),
    .O(\blk00000003/sig000000b7 )
  );
  MUXCY   \blk00000003/blk00000047  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b4 ),
    .O(\blk00000003/sig000000b5 )
  );
  MUXCY   \blk00000003/blk00000046  (
    .CI(\blk00000003/sig00000002 ),
    .DI(\blk00000003/sig00000003 ),
    .S(\blk00000003/sig000000b3 ),
    .O(\blk00000003/sig000000b1 )
  );
  XORCY   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig00000002 ),
    .LI(\blk00000003/sig000000b3 ),
    .O(\blk00000003/sig0000007d )
  );
  MUXCY   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig000000b1 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b2 ),
    .O(\blk00000003/sig000000af )
  );
  XORCY   \blk00000003/blk00000043  (
    .CI(\blk00000003/sig000000b1 ),
    .LI(\blk00000003/sig000000b2 ),
    .O(\blk00000003/sig00000082 )
  );
  MUXCY   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig000000af ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000b0 ),
    .O(\blk00000003/sig000000ad )
  );
  XORCY   \blk00000003/blk00000041  (
    .CI(\blk00000003/sig000000af ),
    .LI(\blk00000003/sig000000b0 ),
    .O(\blk00000003/sig00000087 )
  );
  MUXCY   \blk00000003/blk00000040  (
    .CI(\blk00000003/sig000000ad ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ae ),
    .O(\blk00000003/sig000000ab )
  );
  XORCY   \blk00000003/blk0000003f  (
    .CI(\blk00000003/sig000000ad ),
    .LI(\blk00000003/sig000000ae ),
    .O(\blk00000003/sig0000008b )
  );
  MUXCY   \blk00000003/blk0000003e  (
    .CI(\blk00000003/sig000000ab ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000ac ),
    .O(\blk00000003/sig000000a9 )
  );
  XORCY   \blk00000003/blk0000003d  (
    .CI(\blk00000003/sig000000ab ),
    .LI(\blk00000003/sig000000ac ),
    .O(\blk00000003/sig00000090 )
  );
  MUXCY   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig000000a9 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000aa ),
    .O(\blk00000003/sig000000a7 )
  );
  XORCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig000000a9 ),
    .LI(\blk00000003/sig000000aa ),
    .O(\blk00000003/sig00000095 )
  );
  MUXCY   \blk00000003/blk0000003a  (
    .CI(\blk00000003/sig000000a7 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000a8 ),
    .O(\blk00000003/sig000000a5 )
  );
  XORCY   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig000000a7 ),
    .LI(\blk00000003/sig000000a8 ),
    .O(\blk00000003/sig00000099 )
  );
  MUXCY   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig000000a5 ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig000000a6 ),
    .O(\blk00000003/sig000000a4 )
  );
  XORCY   \blk00000003/blk00000037  (
    .CI(\blk00000003/sig000000a5 ),
    .LI(\blk00000003/sig000000a6 ),
    .O(\blk00000003/sig0000009d )
  );
  XORCY   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig000000a4 ),
    .LI(\blk00000003/sig00000002 ),
    .O(\NLW_blk00000003/blk00000036_O_UNCONNECTED )
  );
  XORCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig000000a1 ),
    .LI(\blk00000003/sig00000003 ),
    .O(\blk00000003/sig000000a3 )
  );
  XORCY   \blk00000003/blk00000034  (
    .CI(\blk00000003/sig0000009f ),
    .LI(\blk00000003/sig00000003 ),
    .O(\blk00000003/sig000000a2 )
  );
  MUXCY   \blk00000003/blk00000033  (
    .CI(\blk00000003/sig0000009f ),
    .DI(\blk00000003/sig00000002 ),
    .S(\blk00000003/sig00000003 ),
    .O(\blk00000003/sig000000a1 )
  );
  XORCY   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig0000009b ),
    .LI(\blk00000003/sig0000009e ),
    .O(\blk00000003/sig000000a0 )
  );
  MUXCY   \blk00000003/blk00000031  (
    .CI(\blk00000003/sig0000009b ),
    .DI(\blk00000003/sig0000009d ),
    .S(\blk00000003/sig0000009e ),
    .O(\blk00000003/sig0000009f )
  );
  XORCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig00000097 ),
    .LI(\blk00000003/sig0000009a ),
    .O(\blk00000003/sig0000009c )
  );
  MUXCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig00000097 ),
    .DI(\blk00000003/sig00000099 ),
    .S(\blk00000003/sig0000009a ),
    .O(\blk00000003/sig0000009b )
  );
  XORCY   \blk00000003/blk0000002e  (
    .CI(\blk00000003/sig00000093 ),
    .LI(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig00000098 )
  );
  MUXCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig00000093 ),
    .DI(\blk00000003/sig00000095 ),
    .S(\blk00000003/sig00000096 ),
    .O(\blk00000003/sig00000097 )
  );
  XORCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig0000008e ),
    .LI(\blk00000003/sig00000092 ),
    .O(\blk00000003/sig00000094 )
  );
  MUXCY   \blk00000003/blk0000002b  (
    .CI(\blk00000003/sig0000008e ),
    .DI(\blk00000003/sig00000090 ),
    .S(\blk00000003/sig00000092 ),
    .O(\blk00000003/sig00000093 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000002a  (
    .I0(\blk00000003/sig00000090 ),
    .I1(\blk00000003/sig00000091 ),
    .O(\blk00000003/sig00000092 )
  );
  XORCY   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig00000089 ),
    .LI(\blk00000003/sig0000008d ),
    .O(\blk00000003/sig0000008f )
  );
  MUXCY   \blk00000003/blk00000028  (
    .CI(\blk00000003/sig00000089 ),
    .DI(\blk00000003/sig0000008b ),
    .S(\blk00000003/sig0000008d ),
    .O(\blk00000003/sig0000008e )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000027  (
    .I0(\blk00000003/sig0000008b ),
    .I1(\blk00000003/sig0000008c ),
    .O(\blk00000003/sig0000008d )
  );
  XORCY   \blk00000003/blk00000026  (
    .CI(\blk00000003/sig00000085 ),
    .LI(\blk00000003/sig00000088 ),
    .O(\blk00000003/sig0000008a )
  );
  MUXCY   \blk00000003/blk00000025  (
    .CI(\blk00000003/sig00000085 ),
    .DI(\blk00000003/sig00000087 ),
    .S(\blk00000003/sig00000088 ),
    .O(\blk00000003/sig00000089 )
  );
  XORCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig00000080 ),
    .LI(\blk00000003/sig00000084 ),
    .O(\blk00000003/sig00000086 )
  );
  MUXCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig00000080 ),
    .DI(\blk00000003/sig00000082 ),
    .S(\blk00000003/sig00000084 ),
    .O(\blk00000003/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000022  (
    .I0(\blk00000003/sig00000082 ),
    .I1(\blk00000003/sig00000083 ),
    .O(\blk00000003/sig00000084 )
  );
  XORCY   \blk00000003/blk00000021  (
    .CI(\blk00000003/sig00000003 ),
    .LI(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig00000081 )
  );
  MUXCY   \blk00000003/blk00000020  (
    .CI(\blk00000003/sig00000003 ),
    .DI(\blk00000003/sig0000007d ),
    .S(\blk00000003/sig0000007f ),
    .O(\blk00000003/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000001f  (
    .I0(\blk00000003/sig0000007d ),
    .I1(\blk00000003/sig0000007e ),
    .O(\blk00000003/sig0000007f )
  );
  XORCY   \blk00000003/blk0000001e  (
    .CI(\blk00000003/sig0000007a ),
    .LI(\blk00000003/sig00000003 ),
    .O(\blk00000003/sig0000007c )
  );
  XORCY   \blk00000003/blk0000001d  (
    .CI(\blk00000003/sig00000077 ),
    .LI(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig0000007b )
  );
  MUXCY   \blk00000003/blk0000001c  (
    .CI(\blk00000003/sig00000077 ),
    .DI(b_1[30]),
    .S(\blk00000003/sig00000079 ),
    .O(\blk00000003/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000001b  (
    .I0(b_1[30]),
    .I1(a_0[30]),
    .O(\blk00000003/sig00000079 )
  );
  XORCY   \blk00000003/blk0000001a  (
    .CI(\blk00000003/sig00000074 ),
    .LI(\blk00000003/sig00000076 ),
    .O(\blk00000003/sig00000078 )
  );
  MUXCY   \blk00000003/blk00000019  (
    .CI(\blk00000003/sig00000074 ),
    .DI(b_1[29]),
    .S(\blk00000003/sig00000076 ),
    .O(\blk00000003/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000018  (
    .I0(b_1[29]),
    .I1(a_0[29]),
    .O(\blk00000003/sig00000076 )
  );
  XORCY   \blk00000003/blk00000017  (
    .CI(\blk00000003/sig00000071 ),
    .LI(\blk00000003/sig00000073 ),
    .O(\blk00000003/sig00000075 )
  );
  MUXCY   \blk00000003/blk00000016  (
    .CI(\blk00000003/sig00000071 ),
    .DI(b_1[28]),
    .S(\blk00000003/sig00000073 ),
    .O(\blk00000003/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000015  (
    .I0(b_1[28]),
    .I1(a_0[28]),
    .O(\blk00000003/sig00000073 )
  );
  XORCY   \blk00000003/blk00000014  (
    .CI(\blk00000003/sig0000006e ),
    .LI(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig00000072 )
  );
  MUXCY   \blk00000003/blk00000013  (
    .CI(\blk00000003/sig0000006e ),
    .DI(b_1[27]),
    .S(\blk00000003/sig00000070 ),
    .O(\blk00000003/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000012  (
    .I0(b_1[27]),
    .I1(a_0[27]),
    .O(\blk00000003/sig00000070 )
  );
  XORCY   \blk00000003/blk00000011  (
    .CI(\blk00000003/sig0000006b ),
    .LI(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig0000006f )
  );
  MUXCY   \blk00000003/blk00000010  (
    .CI(\blk00000003/sig0000006b ),
    .DI(b_1[26]),
    .S(\blk00000003/sig0000006d ),
    .O(\blk00000003/sig0000006e )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000000f  (
    .I0(b_1[26]),
    .I1(a_0[26]),
    .O(\blk00000003/sig0000006d )
  );
  XORCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig00000068 ),
    .LI(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig0000006c )
  );
  MUXCY   \blk00000003/blk0000000d  (
    .CI(\blk00000003/sig00000068 ),
    .DI(b_1[25]),
    .S(\blk00000003/sig0000006a ),
    .O(\blk00000003/sig0000006b )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000000c  (
    .I0(b_1[25]),
    .I1(a_0[25]),
    .O(\blk00000003/sig0000006a )
  );
  XORCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig00000065 ),
    .LI(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000069 )
  );
  MUXCY   \blk00000003/blk0000000a  (
    .CI(\blk00000003/sig00000065 ),
    .DI(b_1[24]),
    .S(\blk00000003/sig00000067 ),
    .O(\blk00000003/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000009  (
    .I0(b_1[24]),
    .I1(a_0[24]),
    .O(\blk00000003/sig00000067 )
  );
  XORCY   \blk00000003/blk00000008  (
    .CI(\blk00000003/sig00000003 ),
    .LI(\blk00000003/sig00000064 ),
    .O(\blk00000003/sig00000066 )
  );
  MUXCY   \blk00000003/blk00000007  (
    .CI(\blk00000003/sig00000003 ),
    .DI(b_1[23]),
    .S(\blk00000003/sig00000064 ),
    .O(\blk00000003/sig00000065 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000006  (
    .I0(b_1[23]),
    .I1(a_0[23]),
    .O(\blk00000003/sig00000064 )
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
