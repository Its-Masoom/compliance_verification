
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.7.1
// timestamp : Sun Aug  7 18:12:45 2022 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/anku/work2/bcrypto/64/dataset.yaml \
//                  --cgf /home/anku/work2/bcrypto/64/rv64ik.yaml \
 \
//                  -- xlen 64  \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the aes64dsm instruction of the RISC-V RV64Zk,RV64Zkn,RV64Zknd extension for the aes64dsm covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IZk,RV64IZkn,RV64IZknd")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zk.*);def TEST_CASE_1=True;",aes64dsm)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zkn.*);def TEST_CASE_1=True;",aes64dsm)

RVTEST_CASE(2,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zknd.*);def TEST_CASE_1=True;",aes64dsm)

RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs2 == rd != rs1, rs1==x30, rs2==x31, rd==x31, 
// opcode: aes64dsm ; op1:x30; op2:x31; dest:x31; op1val:0x706050403020100;  op2val:0xf0e0d0c0b0a0908
TEST_RR_OP(aes64dsm, x31, x30, x31, 0x0000000000000000, 0x706050403020100, 0xf0e0d0c0b0a0908, x1, 0, x2)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x31, rs2==x29, rd==x30, 
// opcode: aes64dsm ; op1:x31; op2:x29; dest:x30; op1val:0x6af29145404fd8ed;  op2val:0x990e75eafff569c2
TEST_RR_OP(aes64dsm, x30, x31, x29, 0x0000000000000000, 0x6af29145404fd8ed, 0x990e75eafff569c2, x1, 8, x2)

inst_2:
// rs1 == rs2 != rd, rs1==x28, rs2==x28, rd==x29, 
// opcode: aes64dsm ; op1:x28; op2:x28; dest:x29; op1val:0x6d23c0488a6019c1;  op2val:0x6d23c0488a6019c1
TEST_RR_OP(aes64dsm, x29, x28, x28, 0x0000000000000000, 0x6d23c0488a6019c1, 0x6d23c0488a6019c1, x1, 16, x2)

inst_3:
// rs1 == rs2 == rd, rs1==x27, rs2==x27, rd==x27, 
// opcode: aes64dsm ; op1:x27; op2:x27; dest:x27; op1val:0x1f7d946f17168ab3;  op2val:0x1f7d946f17168ab3
TEST_RR_OP(aes64dsm, x27, x27, x27, 0x0000000000000000, 0x1f7d946f17168ab3, 0x1f7d946f17168ab3, x1, 24, x2)

inst_4:
// rs1 == rd != rs2, rs1==x26, rs2==x30, rd==x26, 
// opcode: aes64dsm ; op1:x26; op2:x30; dest:x26; op1val:0xef1d54db32b81f27;  op2val:0x1826a804284fe16c
TEST_RR_OP(aes64dsm, x26, x26, x30, 0x0000000000000000, 0xef1d54db32b81f27, 0x1826a804284fe16c, x1, 32, x2)

inst_5:
// rs1==x29, rs2==x26, rd==x28, 
// opcode: aes64dsm ; op1:x29; op2:x26; dest:x28; op1val:0xb694de26ad9e5431;  op2val:0x293f9f6071fad878
TEST_RR_OP(aes64dsm, x28, x29, x26, 0x0000000000000000, 0xb694de26ad9e5431, 0x293f9f6071fad878, x1, 40, x2)

inst_6:
// rs1==x24, rs2==x23, rd==x25, 
// opcode: aes64dsm ; op1:x24; op2:x23; dest:x25; op1val:0x987daa20b858e304;  op2val:0x1aa1beebefb902cb
TEST_RR_OP(aes64dsm, x25, x24, x23, 0x0000000000000000, 0x987daa20b858e304, 0x1aa1beebefb902cb, x1, 48, x2)

inst_7:
// rs1==x23, rs2==x25, rd==x24, 
// opcode: aes64dsm ; op1:x23; op2:x25; dest:x24; op1val:0x79bb7c341d3110bc;  op2val:0x8678f5e3d272e229
TEST_RR_OP(aes64dsm, x24, x23, x25, 0x0000000000000000, 0x79bb7c341d3110bc, 0x8678f5e3d272e229, x1, 56, x2)

inst_8:
// rs1==x25, rs2==x24, rd==x23, 
// opcode: aes64dsm ; op1:x25; op2:x24; dest:x23; op1val:0xe2eaf4a09869be8c;  op2val:0x5b730cad91766f62
TEST_RR_OP(aes64dsm, x23, x25, x24, 0x0000000000000000, 0xe2eaf4a09869be8c, 0x5b730cad91766f62, x1, 64, x2)

inst_9:
// rs1==x21, rs2==x20, rd==x22, 
// opcode: aes64dsm ; op1:x21; op2:x20; dest:x22; op1val:0xc0fe15dd0df9564b;  op2val:0xb22bbf7eb4c858fb
TEST_RR_OP(aes64dsm, x22, x21, x20, 0x0000000000000000, 0xc0fe15dd0df9564b, 0xb22bbf7eb4c858fb, x1, 72, x2)

inst_10:
// rs1==x20, rs2==x22, rd==x21, 
// opcode: aes64dsm ; op1:x20; op2:x22; dest:x21; op1val:0x4113ee60952acffe;  op2val:0x53a66ed1dc80d916
TEST_RR_OP(aes64dsm, x21, x20, x22, 0x0000000000000000, 0x4113ee60952acffe, 0x53a66ed1dc80d916, x1, 80, x2)

inst_11:
// rs1==x22, rs2==x21, rd==x20, 
// opcode: aes64dsm ; op1:x22; op2:x21; dest:x20; op1val:0x40a5ff526f38a9c7;  op2val:0xb6f9706fb4f741aa
TEST_RR_OP(aes64dsm, x20, x22, x21, 0x0000000000000000, 0x40a5ff526f38a9c7, 0xb6f9706fb4f741aa, x1, 88, x2)

inst_12:
// rs1==x18, rs2==x17, rd==x19, 
// opcode: aes64dsm ; op1:x18; op2:x17; dest:x19; op1val:0x9bedfe390d6ddd9d;  op2val:0xd05668ae0fdb82bc
TEST_RR_OP(aes64dsm, x19, x18, x17, 0x0000000000000000, 0x9bedfe390d6ddd9d, 0xd05668ae0fdb82bc, x1, 96, x2)

inst_13:
// rs1==x17, rs2==x19, rd==x18, 
// opcode: aes64dsm ; op1:x17; op2:x19; dest:x18; op1val:0xd75739f82ac177c6;  op2val:0xaa6bb2bde9ed477d
TEST_RR_OP(aes64dsm, x18, x17, x19, 0x0000000000000000, 0xd75739f82ac177c6, 0xaa6bb2bde9ed477d, x1, 104, x2)

inst_14:
// rs1==x19, rs2==x18, rd==x17, 
// opcode: aes64dsm ; op1:x19; op2:x18; dest:x17; op1val:0x9a4e9ef10171f4df;  op2val:0x299c3bcf90efb625
TEST_RR_OP(aes64dsm, x17, x19, x18, 0x0000000000000000, 0x9a4e9ef10171f4df, 0x299c3bcf90efb625, x1, 112, x2)

inst_15:
// rs1==x15, rs2==x14, rd==x16, 
// opcode: aes64dsm ; op1:x15; op2:x14; dest:x16; op1val:0xd169a3f8cad5e297;  op2val:0x1fc493caa371db42
TEST_RR_OP(aes64dsm, x16, x15, x14, 0x0000000000000000, 0xd169a3f8cad5e297, 0x1fc493caa371db42, x1, 120, x2)

inst_16:
// rs1==x14, rs2==x16, rd==x15, 
// opcode: aes64dsm ; op1:x14; op2:x16; dest:x15; op1val:0xd5b9fe5cf69bdcf3;  op2val:0xf4c30307672f666d
TEST_RR_OP(aes64dsm, x15, x14, x16, 0x0000000000000000, 0xd5b9fe5cf69bdcf3, 0xf4c30307672f666d, x1, 128, x2)

inst_17:
// rs1==x16, rs2==x15, rd==x14, 
// opcode: aes64dsm ; op1:x16; op2:x15; dest:x14; op1val:0xe4921bf73047c198;  op2val:0xa0569d765ebc64cb
TEST_RR_OP(aes64dsm, x14, x16, x15, 0x0000000000000000, 0xe4921bf73047c198, 0xa0569d765ebc64cb, x1, 136, x2)

inst_18:
// rs1==x12, rs2==x11, rd==x13, 
// opcode: aes64dsm ; op1:x12; op2:x11; dest:x13; op1val:0xfcc1b543c49cd65b;  op2val:0x2daf9ac7f5faf207
TEST_RR_OP(aes64dsm, x13, x12, x11, 0x0000000000000000, 0xfcc1b543c49cd65b, 0x2daf9ac7f5faf207, x1, 144, x2)

inst_19:
// rs1==x11, rs2==x13, rd==x12, 
// opcode: aes64dsm ; op1:x11; op2:x13; dest:x12; op1val:0x436f40f274b8de87;  op2val:0x3459294ef273b44c
TEST_RR_OP(aes64dsm, x12, x11, x13, 0x0000000000000000, 0x436f40f274b8de87, 0x3459294ef273b44c, x1, 152, x2)

inst_20:
// rs1==x13, rs2==x12, rd==x11, 
// opcode: aes64dsm ; op1:x13; op2:x12; dest:x11; op1val:0x75a3adb3254a9493;  op2val:0xc5521660f3a3c571
TEST_RR_OP(aes64dsm, x11, x13, x12, 0x0000000000000000, 0x75a3adb3254a9493, 0xc5521660f3a3c571, x1, 160, x2)

inst_21:
// rs1==x9, rs2==x8, rd==x10, 
// opcode: aes64dsm ; op1:x9; op2:x8; dest:x10; op1val:0xfffefdfcfbfaf9f8;  op2val:0xf7f6f5f4f3f2f1f0
TEST_RR_OP(aes64dsm, x10, x9, x8, 0x0000000000000000, 0xfffefdfcfbfaf9f8, 0xf7f6f5f4f3f2f1f0, x1, 168, x2)

inst_22:
// rs1==x8, rs2==x10, rd==x9, 
// opcode: aes64dsm ; op1:x8; op2:x10; dest:x9; op1val:0xf7f6f5f4f3f2f1f0;  op2val:0xfffefdfcfbfaf9f8
TEST_RR_OP(aes64dsm, x9, x8, x10, 0x0000000000000000, 0xf7f6f5f4f3f2f1f0, 0xfffefdfcfbfaf9f8, x1, 176, x2)

inst_23:
// rs1==x10, rs2==x9, rd==x8, 
// opcode: aes64dsm ; op1:x10; op2:x9; dest:x8; op1val:0xefeeedecebeae9e8;  op2val:0xe7e6e5e4e3e2e1e0
TEST_RR_OP(aes64dsm, x8, x10, x9, 0x0000000000000000, 0xefeeedecebeae9e8, 0xe7e6e5e4e3e2e1e0, x1, 184, x2)

inst_24:
// rs1==x6, rs2==x5, rd==x7, 
// opcode: aes64dsm ; op1:x6; op2:x5; dest:x7; op1val:0xe7e6e5e4e3e2e1e0;  op2val:0xefeeedecebeae9e8
TEST_RR_OP(aes64dsm, x7, x6, x5, 0x0000000000000000, 0xe7e6e5e4e3e2e1e0, 0xefeeedecebeae9e8, x1, 192, x2)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_25:
// rs1==x5, rs2==x7, rd==x6, 
// opcode: aes64dsm ; op1:x5; op2:x7; dest:x6; op1val:0xdfdedddcdbdad9d8;  op2val:0xd7d6d5d4d3d2d1d0
TEST_RR_OP(aes64dsm, x6, x5, x7, 0x0000000000000000, 0xdfdedddcdbdad9d8, 0xd7d6d5d4d3d2d1d0, x8, 0, x9)

inst_26:
// rs1==x7, rs2==x6, rd==x5, 
// opcode: aes64dsm ; op1:x7; op2:x6; dest:x5; op1val:0xd7d6d5d4d3d2d1d0;  op2val:0xdfdedddcdbdad9d8
TEST_RR_OP(aes64dsm, x5, x7, x6, 0x0000000000000000, 0xd7d6d5d4d3d2d1d0, 0xdfdedddcdbdad9d8, x8, 8, x9)

inst_27:
// rs1==x3, rs2==x2, rd==x4, 
// opcode: aes64dsm ; op1:x3; op2:x2; dest:x4; op1val:0xcfcecdcccbcac9c8;  op2val:0xc7c6c5c4c3c2c1c0
TEST_RR_OP(aes64dsm, x4, x3, x2, 0x0000000000000000, 0xcfcecdcccbcac9c8, 0xc7c6c5c4c3c2c1c0, x8, 16, x9)

inst_28:
// rs1==x2, rs2==x4, rd==x3, 
// opcode: aes64dsm ; op1:x2; op2:x4; dest:x3; op1val:0xc7c6c5c4c3c2c1c0;  op2val:0xcfcecdcccbcac9c8
TEST_RR_OP(aes64dsm, x3, x2, x4, 0x0000000000000000, 0xc7c6c5c4c3c2c1c0, 0xcfcecdcccbcac9c8, x8, 24, x9)

inst_29:
// rs1==x4, rs2==x3, rd==x2, 
// opcode: aes64dsm ; op1:x4; op2:x3; dest:x2; op1val:0xbfbebdbcbbbab9b8;  op2val:0xb7b6b5b4b3b2b1b0
TEST_RR_OP(aes64dsm, x2, x4, x3, 0x0000000000000000, 0xbfbebdbcbbbab9b8, 0xb7b6b5b4b3b2b1b0, x8, 32, x9)

inst_30:
// rs1==x1, 
// opcode: aes64dsm ; op1:x1; op2:x30; dest:x31; op1val:0xb7b6b5b4b3b2b1b0;  op2val:0xbfbebdbcbbbab9b8
TEST_RR_OP(aes64dsm, x31, x1, x30, 0x0000000000000000, 0xb7b6b5b4b3b2b1b0, 0xbfbebdbcbbbab9b8, x8, 40, x9)

inst_31:
// rs1==x0, 
// opcode: aes64dsm ; op1:x0; op2:x30; dest:x31; op1val:0x0;  op2val:0xa7a6a5a4a3a2a1a0
TEST_RR_OP(aes64dsm, x31, x0, x30, 0x0000000000000000, 0x0, 0xa7a6a5a4a3a2a1a0, x8, 48, x9)

inst_32:
// rs2==x1, 
// opcode: aes64dsm ; op1:x30; op2:x1; dest:x31; op1val:0xa7a6a5a4a3a2a1a0;  op2val:0xafaeadacabaaa9a8
TEST_RR_OP(aes64dsm, x31, x30, x1, 0x0000000000000000, 0xa7a6a5a4a3a2a1a0, 0xafaeadacabaaa9a8, x8, 56, x9)

inst_33:
// rs2==x0, 
// opcode: aes64dsm ; op1:x30; op2:x0; dest:x31; op1val:0x9f9e9d9c9b9a9998;  op2val:0x0
TEST_RR_OP(aes64dsm, x31, x30, x0, 0x0000000000000000, 0x9f9e9d9c9b9a9998, 0x0, x8, 64, x9)

inst_34:
// rd==x1, 
// opcode: aes64dsm ; op1:x31; op2:x30; dest:x1; op1val:0x9796959493929190;  op2val:0x9f9e9d9c9b9a9998
TEST_RR_OP(aes64dsm, x1, x31, x30, 0x0000000000000000, 0x9796959493929190, 0x9f9e9d9c9b9a9998, x8, 72, x9)

inst_35:
// rd==x0, 
// opcode: aes64dsm ; op1:x31; op2:x30; dest:x0; op1val:0x8f8e8d8c8b8a8988;  op2val:0x8786858483828180
TEST_RR_OP(aes64dsm, x0, x31, x30, 0x0000000000000000, 0x8f8e8d8c8b8a8988, 0x8786858483828180, x8, 80, x9)

inst_36:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x8786858483828180;  op2val:0x8f8e8d8c8b8a8988
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x8786858483828180, 0x8f8e8d8c8b8a8988, x8, 88, x9)

inst_37:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x7f7e7d7c7b7a7978;  op2val:0x7776757473727170
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x7f7e7d7c7b7a7978, 0x7776757473727170, x8, 96, x9)

inst_38:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x7776757473727170;  op2val:0x7f7e7d7c7b7a7978
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x7776757473727170, 0x7f7e7d7c7b7a7978, x8, 104, x9)

inst_39:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x6f6e6d6c6b6a6968;  op2val:0x6766656463626160
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x6f6e6d6c6b6a6968, 0x6766656463626160, x8, 112, x9)

inst_40:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x6766656463626160;  op2val:0x6f6e6d6c6b6a6968
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x6766656463626160, 0x6f6e6d6c6b6a6968, x8, 120, x9)

inst_41:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x5f5e5d5c5b5a5958;  op2val:0x5756555453525150
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x5f5e5d5c5b5a5958, 0x5756555453525150, x8, 128, x9)

inst_42:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x5756555453525150;  op2val:0x5f5e5d5c5b5a5958
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x5756555453525150, 0x5f5e5d5c5b5a5958, x8, 136, x9)

inst_43:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x4f4e4d4c4b4a4948;  op2val:0x4746454443424140
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x4f4e4d4c4b4a4948, 0x4746454443424140, x8, 144, x9)

inst_44:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x4746454443424140;  op2val:0x4f4e4d4c4b4a4948
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x4746454443424140, 0x4f4e4d4c4b4a4948, x8, 152, x9)

inst_45:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x3f3e3d3c3b3a3938;  op2val:0x3736353433323130
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x3f3e3d3c3b3a3938, 0x3736353433323130, x8, 160, x9)

inst_46:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x3736353433323130;  op2val:0x3f3e3d3c3b3a3938
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x3736353433323130, 0x3f3e3d3c3b3a3938, x8, 168, x9)

inst_47:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x2f2e2d2c2b2a2928;  op2val:0x2726252423222120
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x2f2e2d2c2b2a2928, 0x2726252423222120, x8, 176, x9)

inst_48:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x2726252423222120;  op2val:0x2f2e2d2c2b2a2928
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x2726252423222120, 0x2f2e2d2c2b2a2928, x8, 184, x9)

inst_49:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x1f1e1d1c1b1a1918;  op2val:0x1716151413121110
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x1f1e1d1c1b1a1918, 0x1716151413121110, x8, 192, x9)

inst_50:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x1716151413121110;  op2val:0x1f1e1d1c1b1a1918
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x1716151413121110, 0x1f1e1d1c1b1a1918, x8, 200, x9)

inst_51:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0xf0e0d0c0b0a0908;  op2val:0x706050403020100
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0xf0e0d0c0b0a0908, 0x706050403020100, x8, 208, x9)

inst_52:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x6d23c0488a6019c1;  op2val:0x860bdaad7447a088
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x6d23c0488a6019c1, 0x860bdaad7447a088, x8, 216, x9)

inst_53:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x1f7d946f17168ab3;  op2val:0x66eae3d9bbb4f560
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x1f7d946f17168ab3, 0x66eae3d9bbb4f560, x8, 224, x9)

inst_54:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0xafaeadacabaaa9a8;  op2val:0xa7a6a5a4a3a2a1a0
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0xafaeadacabaaa9a8, 0xa7a6a5a4a3a2a1a0, x8, 232, x9)

inst_55:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x9f9e9d9c9b9a9998;  op2val:0x9796959493929190
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x9f9e9d9c9b9a9998, 0x9796959493929190, x8, 240, x9)

inst_56:
// 
// opcode: aes64dsm ; op1:x30; op2:x29; dest:x31; op1val:0x8f8e8d8c8b8a8988;  op2val:0x8786858483828180
TEST_RR_OP(aes64dsm, x31, x30, x29, 0x0000000000000000, 0x8f8e8d8c8b8a8988, 0x8786858483828180, x8, 248, x9)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 32*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
