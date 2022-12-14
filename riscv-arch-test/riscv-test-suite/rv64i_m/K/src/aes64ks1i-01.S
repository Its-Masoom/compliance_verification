
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
// This assembly file tests the aes64ks1i instruction of the RISC-V RV64Zk,RV64Zkn,RV64Zknd,RV64Zkne extension for the aes64ks1i covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IZk,RV64IZkn,RV64IZknd,RV64IZkne")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zk.*);def TEST_CASE_1=True;",aes64ks1i)

RVTEST_CASE(1,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zkn.*);def TEST_CASE_1=True;",aes64ks1i)

RVTEST_CASE(2,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zknd.*);def TEST_CASE_1=True;",aes64ks1i)

RVTEST_CASE(3,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*Zkne.*);def TEST_CASE_1=True;",aes64ks1i)

RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 != rd, rs1==x30, rd==x31, 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x706050403020100;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x706050403020100, 0xa, x1, 0, x2)

inst_1:
// rs1 == rd, rs1==x29, rd==x29, 
// opcode: aes64ks1i ; op1:x29; dest:x29; op1val:0x71fad878b369e102;  immval:0x0
TEST_IMM_OP( aes64ks1i, x29, x29, 0x0000000000000000, 0x71fad878b369e102, 0x0, x1, 8, x2)

inst_2:
// rs1==x31, rd==x30, 
// opcode: aes64ks1i ; op1:x31; dest:x30; op1val:0xa4b7f979a8e45869;  immval:0x0
TEST_IMM_OP( aes64ks1i, x30, x31, 0x0000000000000000, 0xa4b7f979a8e45869, 0x0, x1, 16, x2)

inst_3:
// rs1==x27, rd==x28, 
// opcode: aes64ks1i ; op1:x27; dest:x28; op1val:0xb3fd605358a9235;  immval:0x1
TEST_IMM_OP( aes64ks1i, x28, x27, 0x0000000000000000, 0xb3fd605358a9235, 0x1, x1, 24, x2)

inst_4:
// rs1==x28, rd==x27, 
// opcode: aes64ks1i ; op1:x28; dest:x27; op1val:0xb0873a0f0334fcca;  immval:0x7
TEST_IMM_OP( aes64ks1i, x27, x28, 0x0000000000000000, 0xb0873a0f0334fcca, 0x7, x1, 32, x2)

inst_5:
// rs1==x25, rd==x26, 
// opcode: aes64ks1i ; op1:x25; dest:x26; op1val:0x5b730cad91766f62;  immval:0x7
TEST_IMM_OP( aes64ks1i, x26, x25, 0x0000000000000000, 0x5b730cad91766f62, 0x7, x1, 40, x2)

inst_6:
// rs1==x26, rd==x25, 
// opcode: aes64ks1i ; op1:x26; dest:x25; op1val:0xb7c1fc5f1efa1095;  immval:0x3
TEST_IMM_OP( aes64ks1i, x25, x26, 0x0000000000000000, 0xb7c1fc5f1efa1095, 0x3, x1, 48, x2)

inst_7:
// rs1==x23, rd==x24, 
// opcode: aes64ks1i ; op1:x23; dest:x24; op1val:0x25ae27ee4113ee60;  immval:0x5
TEST_IMM_OP( aes64ks1i, x24, x23, 0x0000000000000000, 0x25ae27ee4113ee60, 0x5, x1, 56, x2)

inst_8:
// rs1==x24, rd==x23, 
// opcode: aes64ks1i ; op1:x24; dest:x23; op1val:0xe3f4fca319f046a5;  immval:0x6
TEST_IMM_OP( aes64ks1i, x23, x24, 0x0000000000000000, 0xe3f4fca319f046a5, 0x6, x1, 64, x2)

inst_9:
// rs1==x21, rd==x22, 
// opcode: aes64ks1i ; op1:x21; dest:x22; op1val:0xff9a1b805ced7e2e;  immval:0x6
TEST_IMM_OP( aes64ks1i, x22, x21, 0x0000000000000000, 0xff9a1b805ced7e2e, 0x6, x1, 72, x2)

inst_10:
// rs1==x22, rd==x21, 
// opcode: aes64ks1i ; op1:x22; dest:x21; op1val:0x9722c9a6b0942992;  immval:0x5
TEST_IMM_OP( aes64ks1i, x21, x22, 0x0000000000000000, 0x9722c9a6b0942992, 0x5, x1, 80, x2)

inst_11:
// rs1==x19, rd==x20, 
// opcode: aes64ks1i ; op1:x19; dest:x20; op1val:0x9bedfe390d6ddd9d;  immval:0x4
TEST_IMM_OP( aes64ks1i, x20, x19, 0x0000000000000000, 0x9bedfe390d6ddd9d, 0x4, x1, 88, x2)

inst_12:
// rs1==x20, rd==x19, 
// opcode: aes64ks1i ; op1:x20; dest:x19; op1val:0xd75739f82ac177c6;  immval:0x3
TEST_IMM_OP( aes64ks1i, x19, x20, 0x0000000000000000, 0xd75739f82ac177c6, 0x3, x1, 96, x2)

inst_13:
// rs1==x17, rd==x18, 
// opcode: aes64ks1i ; op1:x17; dest:x18; op1val:0x90efb625d9fbcdb5;  immval:0x3
TEST_IMM_OP( aes64ks1i, x18, x17, 0x0000000000000000, 0x90efb625d9fbcdb5, 0x3, x1, 104, x2)

inst_14:
// rs1==x18, rd==x17, 
// opcode: aes64ks1i ; op1:x18; dest:x17; op1val:0x60067d39d169a3f8;  immval:0x1
TEST_IMM_OP( aes64ks1i, x17, x18, 0x0000000000000000, 0x60067d39d169a3f8, 0x1, x1, 112, x2)

inst_15:
// rs1==x15, rd==x16, 
// opcode: aes64ks1i ; op1:x15; dest:x16; op1val:0xd5b9fe5cf69bdcf3;  immval:0x6
TEST_IMM_OP( aes64ks1i, x16, x15, 0x0000000000000000, 0xd5b9fe5cf69bdcf3, 0x6, x1, 120, x2)

inst_16:
// rs1==x16, rd==x15, 
// opcode: aes64ks1i ; op1:x16; dest:x15; op1val:0x58d548aae4921bf7;  immval:0x6
TEST_IMM_OP( aes64ks1i, x15, x16, 0x0000000000000000, 0x58d548aae4921bf7, 0x6, x1, 128, x2)

inst_17:
// rs1==x13, rd==x14, 
// opcode: aes64ks1i ; op1:x13; dest:x14; op1val:0x2daf9ac7f5faf207;  immval:0x3
TEST_IMM_OP( aes64ks1i, x14, x13, 0x0000000000000000, 0x2daf9ac7f5faf207, 0x3, x1, 136, x2)

inst_18:
// rs1==x14, rd==x13, 
// opcode: aes64ks1i ; op1:x14; dest:x13; op1val:0x3acdf61655d98c6e;  immval:0x3
TEST_IMM_OP( aes64ks1i, x13, x14, 0x0000000000000000, 0x3acdf61655d98c6e, 0x3, x1, 144, x2)

inst_19:
// rs1==x11, rd==x12, 
// opcode: aes64ks1i ; op1:x11; dest:x12; op1val:0x436f40f274b8de87;  immval:0x3
TEST_IMM_OP( aes64ks1i, x12, x11, 0x0000000000000000, 0x436f40f274b8de87, 0x3, x1, 152, x2)

inst_20:
// rs1==x12, rd==x11, 
// opcode: aes64ks1i ; op1:x12; dest:x11; op1val:0x75a3adb3254a9493;  immval:0x2
TEST_IMM_OP( aes64ks1i, x11, x12, 0x0000000000000000, 0x75a3adb3254a9493, 0x2, x1, 160, x2)

inst_21:
// rs1==x9, rd==x10, 
// opcode: aes64ks1i ; op1:x9; dest:x10; op1val:0x3020100fffefdfc;  immval:0xa
TEST_IMM_OP( aes64ks1i, x10, x9, 0x0000000000000000, 0x3020100fffefdfc, 0xa, x1, 168, x2)

inst_22:
// rs1==x10, rd==x9, 
// opcode: aes64ks1i ; op1:x10; dest:x9; op1val:0xfffefdfcfbfaf9f8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x9, x10, 0x0000000000000000, 0xfffefdfcfbfaf9f8, 0xa, x1, 176, x2)

inst_23:
// rs1==x7, rd==x8, 
// opcode: aes64ks1i ; op1:x7; dest:x8; op1val:0xfbfaf9f8f7f6f5f4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x8, x7, 0x0000000000000000, 0xfbfaf9f8f7f6f5f4, 0xa, x1, 184, x2)

inst_24:
// rs1==x8, rd==x7, 
// opcode: aes64ks1i ; op1:x8; dest:x7; op1val:0xf7f6f5f4f3f2f1f0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x7, x8, 0x0000000000000000, 0xf7f6f5f4f3f2f1f0, 0xa, x1, 192, x2)

inst_25:
// rs1==x5, rd==x6, 
// opcode: aes64ks1i ; op1:x5; dest:x6; op1val:0xf3f2f1f0efeeedec;  immval:0xa
TEST_IMM_OP( aes64ks1i, x6, x5, 0x0000000000000000, 0xf3f2f1f0efeeedec, 0xa, x1, 200, x2)

inst_26:
// rs1==x6, rd==x5, 
// opcode: aes64ks1i ; op1:x6; dest:x5; op1val:0xefeeedecebeae9e8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x5, x6, 0x0000000000000000, 0xefeeedecebeae9e8, 0xa, x1, 208, x7)

inst_27:
// rs1==x3, rd==x4, 
// opcode: aes64ks1i ; op1:x3; dest:x4; op1val:0xebeae9e8e7e6e5e4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x4, x3, 0x0000000000000000, 0xebeae9e8e7e6e5e4, 0xa, x1, 216, x7)
RVTEST_SIGBASE(x5,signature_x5_0)

inst_28:
// rs1==x4, rd==x3, 
// opcode: aes64ks1i ; op1:x4; dest:x3; op1val:0xe7e6e5e4e3e2e1e0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x3, x4, 0x0000000000000000, 0xe7e6e5e4e3e2e1e0, 0xa, x5, 0, x7)

inst_29:
// rs1==x1, rd==x2, 
// opcode: aes64ks1i ; op1:x1; dest:x2; op1val:0xe3e2e1e0dfdedddc;  immval:0xa
TEST_IMM_OP( aes64ks1i, x2, x1, 0x0000000000000000, 0xe3e2e1e0dfdedddc, 0xa, x5, 8, x7)

inst_30:
// rs1==x2, rd==x1, 
// opcode: aes64ks1i ; op1:x2; dest:x1; op1val:0xdfdedddcdbdad9d8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x1, x2, 0x0000000000000000, 0xdfdedddcdbdad9d8, 0xa, x5, 16, x7)

inst_31:
// rs1==x0, 
// opcode: aes64ks1i ; op1:x0; dest:x31; op1val:0x0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x0, 0x0000000000000000, 0x0, 0xa, x5, 24, x7)

inst_32:
// rd==x0, 
// opcode: aes64ks1i ; op1:x31; dest:x0; op1val:0xd7d6d5d4d3d2d1d0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x0, x31, 0x0000000000000000, 0xd7d6d5d4d3d2d1d0, 0xa, x5, 32, x7)

inst_33:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xd3d2d1d0cfcecdcc;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xd3d2d1d0cfcecdcc, 0xa, x5, 40, x7)

inst_34:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xcfcecdcccbcac9c8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xcfcecdcccbcac9c8, 0xa, x5, 48, x7)

inst_35:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xcbcac9c8c7c6c5c4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xcbcac9c8c7c6c5c4, 0xa, x5, 56, x7)

inst_36:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xc7c6c5c4c3c2c1c0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xc7c6c5c4c3c2c1c0, 0xa, x5, 64, x7)

inst_37:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xc3c2c1c0bfbebdbc;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xc3c2c1c0bfbebdbc, 0xa, x5, 72, x7)

inst_38:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xbfbebdbcbbbab9b8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xbfbebdbcbbbab9b8, 0xa, x5, 80, x7)

inst_39:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xbbbab9b8b7b6b5b4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xbbbab9b8b7b6b5b4, 0xa, x5, 88, x7)

inst_40:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xb7b6b5b4b3b2b1b0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xb7b6b5b4b3b2b1b0, 0xa, x5, 96, x7)

inst_41:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xb3b2b1b0afaeadac;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xb3b2b1b0afaeadac, 0xa, x5, 104, x7)

inst_42:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xafaeadacabaaa9a8;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xafaeadacabaaa9a8, 0xa, x5, 112, x7)

inst_43:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xabaaa9a8a7a6a5a4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xabaaa9a8a7a6a5a4, 0xa, x5, 120, x7)

inst_44:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xa7a6a5a4a3a2a1a0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xa7a6a5a4a3a2a1a0, 0xa, x5, 128, x7)

inst_45:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xa3a2a1a09f9e9d9c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xa3a2a1a09f9e9d9c, 0xa, x5, 136, x7)

inst_46:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x9f9e9d9c9b9a9998;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x9f9e9d9c9b9a9998, 0xa, x5, 144, x7)

inst_47:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x9b9a999897969594;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x9b9a999897969594, 0xa, x5, 152, x7)

inst_48:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x9796959493929190;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x9796959493929190, 0xa, x5, 160, x7)

inst_49:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x939291908f8e8d8c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x939291908f8e8d8c, 0xa, x5, 168, x7)

inst_50:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x8f8e8d8c8b8a8988;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x8f8e8d8c8b8a8988, 0xa, x5, 176, x7)

inst_51:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x8b8a898887868584;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x8b8a898887868584, 0xa, x5, 184, x7)

inst_52:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x8786858483828180;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x8786858483828180, 0xa, x5, 192, x7)

inst_53:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x838281807f7e7d7c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x838281807f7e7d7c, 0xa, x5, 200, x7)

inst_54:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x7f7e7d7c7b7a7978;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x7f7e7d7c7b7a7978, 0xa, x5, 208, x7)

inst_55:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x7b7a797877767574;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x7b7a797877767574, 0xa, x5, 216, x7)

inst_56:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x7776757473727170;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x7776757473727170, 0xa, x5, 224, x7)

inst_57:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x737271706f6e6d6c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x737271706f6e6d6c, 0xa, x5, 232, x7)

inst_58:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x6f6e6d6c6b6a6968;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x6f6e6d6c6b6a6968, 0xa, x5, 240, x7)

inst_59:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x6b6a696867666564;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x6b6a696867666564, 0xa, x5, 248, x7)

inst_60:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x6766656463626160;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x6766656463626160, 0xa, x5, 256, x7)

inst_61:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x636261605f5e5d5c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x636261605f5e5d5c, 0xa, x5, 264, x7)

inst_62:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x5f5e5d5c5b5a5958;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x5f5e5d5c5b5a5958, 0xa, x5, 272, x7)

inst_63:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x5b5a595857565554;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x5b5a595857565554, 0xa, x5, 280, x7)

inst_64:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x5756555453525150;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x5756555453525150, 0xa, x5, 288, x7)

inst_65:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x535251504f4e4d4c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x535251504f4e4d4c, 0xa, x5, 296, x7)

inst_66:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x4f4e4d4c4b4a4948;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x4f4e4d4c4b4a4948, 0xa, x5, 304, x7)

inst_67:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x4b4a494847464544;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x4b4a494847464544, 0xa, x5, 312, x7)

inst_68:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x4746454443424140;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x4746454443424140, 0xa, x5, 320, x7)

inst_69:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x434241403f3e3d3c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x434241403f3e3d3c, 0xa, x5, 328, x7)

inst_70:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x3f3e3d3c3b3a3938;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x3f3e3d3c3b3a3938, 0xa, x5, 336, x7)

inst_71:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x3b3a393837363534;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x3b3a393837363534, 0xa, x5, 344, x7)

inst_72:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x3736353433323130;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x3736353433323130, 0xa, x5, 352, x7)

inst_73:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x333231302f2e2d2c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x333231302f2e2d2c, 0xa, x5, 360, x7)

inst_74:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x2f2e2d2c2b2a2928;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x2f2e2d2c2b2a2928, 0xa, x5, 368, x7)

inst_75:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x2b2a292827262524;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x2b2a292827262524, 0xa, x5, 376, x7)

inst_76:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x2726252423222120;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x2726252423222120, 0xa, x5, 384, x7)

inst_77:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x232221201f1e1d1c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x232221201f1e1d1c, 0xa, x5, 392, x7)

inst_78:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x1f1e1d1c1b1a1918;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x1f1e1d1c1b1a1918, 0xa, x5, 400, x7)

inst_79:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x1b1a191817161514;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x1b1a191817161514, 0xa, x5, 408, x7)

inst_80:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x1716151413121110;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x1716151413121110, 0xa, x5, 416, x7)

inst_81:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0x131211100f0e0d0c;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0x131211100f0e0d0c, 0xa, x5, 424, x7)

inst_82:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xf0e0d0c0b0a0908;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xf0e0d0c0b0a0908, 0xa, x5, 432, x7)

inst_83:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xb0a090807060504;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xb0a090807060504, 0xa, x5, 440, x7)

inst_84:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xdbdad9d8d7d6d5d4;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xdbdad9d8d7d6d5d4, 0xa, x5, 448, x7)

inst_85:
// 
// opcode: aes64ks1i ; op1:x30; dest:x31; op1val:0xd7d6d5d4d3d2d1d0;  immval:0xa
TEST_IMM_OP( aes64ks1i, x31, x30, 0x0000000000000000, 0xd7d6d5d4d3d2d1d0, 0xa, x5, 456, x7)
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
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 58*(XLEN/32),4,0xdeadbeef

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
