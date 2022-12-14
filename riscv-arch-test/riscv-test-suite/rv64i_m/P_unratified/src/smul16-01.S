
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.6.3
// timestamp : Sat Apr 23 14:55:55 2022 GMT
// usage     : riscv_ctg \
//                  --cgf /scratch/git-repo/github/riscv_ctg/sample_cgfs/dataset.cgf \
//                  --cgf /scratch/git-repo/github/riscv_ctg/sample_cgfs/rv32ip.cgf \
//                  --cgf /scratch/git-repo/github/riscv_ctg/sample_cgfs/rv64ip.cgf \
//                  --xlen 64  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the smul16 instruction of the RISC-V RV64PZicsr extension for the smul16 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IPZicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smul16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x15,signature_x15_1)

inst_0:
// rs1 == rd != rs2, rs1==x18, rs2==x28, rd==x18, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val > 0, rs1_h2_val != rs2_h2_val, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h3_val == -21846, rs2_h3_val == 16384, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h2_val == -4097, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == 8192, rs1_h1_val == -129
// opcode: smul16 ; op1:x18; op2:x28; dest:x18; op1val:0xaaaaefffff7f8000;  op2val:0x4000000620000003
TEST_P64_PNN_OP(smul16, x18, $rd_hi, x18, x28, 0x0000000000000000, $correctval_hi, 0xaaaaefffff7f8000, 0x4000000620000003, x15, 0, x17)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x14, rs2==x9, rd==x8, rs1_h3_val == rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val < 0, rs2_h3_val == -17, rs2_h2_val == -129, rs1_h2_val < 0 and rs2_h2_val < 0, rs2_h1_val == -33, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h3_val == -17
// opcode: smul16 ; op1:x14; op2:x9; dest:x8; op1val:0xffefc00000078000;  op2val:0xffefff7fffdffff9
TEST_P64_PNN_OP(smul16, x8, $rd_hi, x14, x9, 0x0000000000000000, $correctval_hi, 0xffefc00000078000, 0xffefff7fffdffff9, x15, 16, x17)

inst_2:
// rs1 == rs2 != rd, rs1==x19, rs2==x19, rd==x24, rs1_h3_val > 0 and rs2_h3_val < 0, rs2_h3_val == -257, rs1_h2_val == 1024, rs1_h3_val == 1, rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h0_val == 256, rs2_h1_val == -9, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h2_val == 2
// opcode: smul16 ; op1:x19; op2:x19; dest:x24; op1val:0x0001040000050100;  op2val:0xfeff0002fff73fff
TEST_P64_PNN_OP(smul16, x24, $rd_hi, x19, x19, 0x0000000000000000, $correctval_hi, 0x0001040000050100, 0xfeff0002fff73fff, x15, 32, x17)

inst_3:
// rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h2_val == 128, rs1_h1_val == -21846, rs2_h3_val == 16, rs1_h0_val == -2049, rs1_h3_val == 16384, rs2_h0_val == 128
// opcode: smul16 ; op1:x12; op2:x12; dest:x12; op1val:0x40000080aaaaf7ff;  op2val:0x0010000300070080
TEST_P64_PNN_OP(smul16, x12, $rd_hi, x12, x12, 0x0000000000000000, $correctval_hi, 0x40000080aaaaf7ff, 0x0010000300070080, x15, 48, x17)

inst_4:
// rs2 == rd != rs1, rs1==x1, rs2==x22, rd==x22, rs1_h2_val == rs2_h2_val, rs2_h3_val == -9, rs1_h1_val == 256, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h3_val == -33, rs1_h0_val == -1025, rs2_h1_val == 32, rs2_h0_val == 256
// opcode: smul16 ; op1:x1; op2:x22; dest:x22; op1val:0xffdf00060100fbff;  op2val:0xfff7000600200100
TEST_P64_PNN_OP(smul16, x22, $rd_hi, x1, x22, 0x0000000000000000, $correctval_hi, 0xffdf00060100fbff, 0xfff7000600200100, x15, 64, x17)

inst_5:
// rs1==x26, rs2==x16, rd==x30, rs1_h2_val > 0 and rs2_h2_val < 0, rs1_h2_val == 16, rs2_h1_val == -129, rs1_h3_val == -16385, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h0_val == 32, rs2_h3_val == 32, rs1_h1_val == -65
// opcode: smul16 ; op1:x26; op2:x16; dest:x30; op1val:0xbfff0010ffbf0020;  op2val:0x0020fff9ff7f0080
TEST_P64_PNN_OP(smul16, x30, $rd_hi, x26, x16, 0x0000000000000000, $correctval_hi, 0xbfff0010ffbf0020, 0x0020fff9ff7f0080, x15, 80, x17)

inst_6:
// rs1==x13, rs2==x24, rd==x4, rs1_h1_val == rs2_h1_val, rs1_h2_val == 4096, rs2_h1_val == 0, rs1_h3_val == 21845, rs1_h0_val == 512, rs1_h1_val == 0
// opcode: smul16 ; op1:x13; op2:x24; dest:x4; op1val:0x5555100000000200;  op2val:0xc000000300000009
TEST_P64_PNN_OP(smul16, x4, $rd_hi, x13, x24, 0x0000000000000000, $correctval_hi, 0x5555100000000200, 0xc000000300000009, x15, 96, x17)

inst_7:
// rs1==x16, rs2==x11, rd==x26, rs1_h0_val == rs2_h0_val, rs2_h3_val == 256, rs1_h2_val == 21845, rs2_h0_val == 512, rs1_h3_val == -4097
// opcode: smul16 ; op1:x16; op2:x11; dest:x26; op1val:0xefff5555c0000200;  op2val:0x0100fff600030200
TEST_P64_PNN_OP(smul16, x26, $rd_hi, x16, x11, 0x0000000000000000, $correctval_hi, 0xefff5555c0000200, 0x0100fff600030200, x15, 112, x17)

inst_8:
// rs1==x25, rs2==x4, rd==x20, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == -513, rs2_h1_val == -17, rs1_h0_val == 64, rs1_h1_val == 1, rs2_h0_val == -3, rs1_h2_val == -257
// opcode: smul16 ; op1:x25; op2:x4; dest:x20; op1val:0x0006feff00010040;  op2val:0xfdff0005ffeffffd
TEST_P64_PNN_OP(smul16, x20, $rd_hi, x25, x4, 0x0000000000000000, $correctval_hi, 0x0006feff00010040, 0xfdff0005ffeffffd, x15, 128, x17)

inst_9:
// rs1==x3, rs2==x27, rd==x2, rs2_h3_val == -21846, rs2_h1_val == 512, rs2_h0_val == 2, rs1_h2_val == -129
// opcode: smul16 ; op1:x3; op2:x27; dest:x2; op1val:0x0009ff7f00030007;  op2val:0xaaaafffc02000002
TEST_P64_PNN_OP(smul16, x2, $rd_hi, x3, x27, 0x0000000000000000, $correctval_hi, 0x0009ff7f00030007, 0xaaaafffc02000002, x15, 144, x17)

inst_10:
// rs1==x11, rs2==x0, rd==x16, rs2_h3_val == 21845, rs1_h3_val == -513, rs1_h0_val == -5, rs1_h1_val == 512
// opcode: smul16 ; op1:x11; op2:x0; dest:x16; op1val:0xfdff04000200fffb;  op2val:0x55550007fff80005
TEST_P64_PNN_OP(smul16, x16, $rd_hi, x11, x0, 0x0000000000000000, $correctval_hi, 0xfdff04000200fffb, 0x55550007fff80005, x15, 160, x17)

inst_11:
// rs1==x30, rs2==x25, rd==x6, rs2_h3_val == 32767, rs2_h2_val == -65, rs1_h1_val == -1, rs1_h2_val == 2
// opcode: smul16 ; op1:x30; op2:x25; dest:x6; op1val:0xbfff0002ffffc000;  op2val:0x7fffffbffff80200
TEST_P64_PNN_OP(smul16, x6, $rd_hi, x30, x25, 0x0000000000000000, $correctval_hi, 0xbfff0002ffffc000, 0x7fffffbffff80200, x15, 176, x17)

inst_12:
// rs1==x24, rs2==x6, rd==x28, rs2_h3_val == -16385, rs1_h1_val == 2, rs2_h0_val == 1024, rs1_h3_val == -8193
// opcode: smul16 ; op1:x24; op2:x6; dest:x28; op1val:0xdfff555500020020;  op2val:0xbfff3ffffff70400
TEST_P64_PNN_OP(smul16, x28, $rd_hi, x24, x6, 0x0000000000000000, $correctval_hi, 0xdfff555500020020, 0xbfff3ffffff70400, x15, 192, x17)

inst_13:
// rs1==x5, rs2==x31, rd==x10, rs2_h3_val == -8193, rs1_h1_val == -2, rs2_h1_val == -4097, rs1_h0_val == 16384, rs1_h2_val == 32, rs2_h0_val == -1025, rs2_h2_val == 64, rs1_h3_val == 8192
// opcode: smul16 ; op1:x5; op2:x31; dest:x10; op1val:0x20000020fffe4000;  op2val:0xdfff0040effffbff
TEST_P64_PNN_OP(smul16, x10, $rd_hi, x5, x31, 0x0000000000000000, $correctval_hi, 0x20000020fffe4000, 0xdfff0040effffbff, x15, 208, x17)

inst_14:
// rs1==x27, rs2==x7, rd==x14, rs2_h3_val == -4097, rs2_h2_val == -4097, rs1_h1_val == -32768, rs2_h1_val == 1, rs1_h2_val == -1, rs1_h0_val == -4097
// opcode: smul16 ; op1:x27; op2:x7; dest:x14; op1val:0xfff8ffff8000efff;  op2val:0xefffefff0001fff9
TEST_P64_PNN_OP(smul16, x14, $rd_hi, x27, x7, 0x0000000000000000, $correctval_hi, 0xfff8ffff8000efff, 0xefffefff0001fff9, x15, 224, x17)

inst_15:
// rs1==x6, rs2==x10, rs2_h3_val == -2049, rs2_h1_val == -1025, rs1_h1_val == -17
// opcode: smul16 ; op1:x6; op2:x10; dest:x25; op1val:0x40000002ffefefff;  op2val:0xf7fffff6fbff0080
TEST_P64_PNN_OP(smul16, x25, $rd_hi, x6, x10, 0x0000000000000000, $correctval_hi, 0x40000002ffefefff, 0xf7fffff6fbff0080, x15, 240, x12)

inst_16:
// rs1==x0, rs2==x5, rs2_h3_val == -1025, rs2_h0_val == -2049, rs1_h3_val == 32767, rs1_h0_val == 4, rs1_h2_val == -513, rs2_h1_val == 256
// opcode: smul16 ; op1:x0; op2:x5; dest:x2; op1val:0x7ffffdffc0000004;  op2val:0xfbff00090100f7ff
TEST_P64_PNN_OP(smul16, x2, $rd_hi, x0, x5, 0x0000000000000000, $correctval_hi, 0x7ffffdffc0000004, 0xfbff00090100f7ff, x15, 256, x12)

inst_17:
// rs1==x23, rs2==x3, rs2_h3_val == -129, rs2_h2_val == 512
// opcode: smul16 ; op1:x23; op2:x3; dest:x19; op1val:0xc0000007aaaa0004;  op2val:0xff7f020000000009
TEST_P64_PNN_OP(smul16, x19, $rd_hi, x23, x3, 0x0000000000000000, $correctval_hi, 0xc0000007aaaa0004, 0xff7f020000000009, x15, 272, x12)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_18:
// rs1==x28, rs2==x2, rs2_h3_val == -65, rs1_h3_val == 4, rs2_h1_val == 2, rs2_h0_val == -4097
// opcode: smul16 ; op1:x28; op2:x2; dest:x10; op1val:0x0004fffc80004000;  op2val:0xffbf00030002efff
TEST_P64_PNN_OP(smul16, x10, $rd_hi, x28, x2, 0x0000000000000000, $correctval_hi, 0x0004fffc80004000, 0xffbf00030002efff, x3, 0, x12)

inst_19:
// rs1==x31, rs2==x18, rs2_h3_val == -33, rs2_h0_val == -129, rs1_h1_val == 64, rs2_h2_val == 0
// opcode: smul16 ; op1:x31; op2:x18; dest:x2; op1val:0xfffcfdff00400005;  op2val:0xffdf0000fbffff7f
TEST_P64_PNN_OP(smul16, x2, $rd_hi, x31, x18, 0x0000000000000000, $correctval_hi, 0xfffcfdff00400005, 0xffdf0000fbffff7f, x3, 16, x12)

inst_20:
// rs1==x8, rs2==x21, rs2_h3_val == -5, rs1_h3_val == -1025, rs2_h0_val == 2048, rs1_h0_val == -513
// opcode: smul16 ; op1:x8; op2:x21; dest:x11; op1val:0xfbfffffcffbffdff;  op2val:0xfffb0003fffa0800
TEST_P64_PNN_OP(smul16, x11, $rd_hi, x8, x21, 0x0000000000000000, $correctval_hi, 0xfbfffffcffbffdff, 0xfffb0003fffa0800, x3, 32, x12)

inst_21:
// rs1==x22, rs2==x29, rs2_h3_val == -3, rs1_h0_val == 8192, rs1_h3_val == 64
// opcode: smul16 ; op1:x22; op2:x29; dest:x5; op1val:0x0040000201002000;  op2val:0xfffdfff6ffdf0002
TEST_P64_PNN_OP(smul16, x5, $rd_hi, x22, x29, 0x0000000000000000, $correctval_hi, 0x0040000201002000, 0xfffdfff6ffdf0002, x3, 48, x12)

inst_22:
// rs1==x21, rs2==x20, rs2_h3_val == -2, rs1_h1_val == -1025, rs2_h0_val == 8192
// opcode: smul16 ; op1:x21; op2:x20; dest:x31; op1val:0xefff0006fbfffdff;  op2val:0xfffec000ffef2000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x21, x20, 0x0000000000000000, $correctval_hi, 0xefff0006fbfffdff, 0xfffec000ffef2000, x3, 64, x12)

inst_23:
// rs1==x15, rs2==x23, rs2_h3_val == -32768, rs1_h1_val == -5, rs2_h0_val == 4, rs2_h2_val == -257, rs2_h1_val == 1024, rs1_h2_val == -2
// opcode: smul16 ; op1:x15; op2:x23; dest:x5; op1val:0xffdffffefffb2000;  op2val:0x8000feff04000004
TEST_P64_PNN_OP(smul16, x5, $rd_hi, x15, x23, 0x0000000000000000, $correctval_hi, 0xffdffffefffb2000, 0x8000feff04000004, x3, 80, x12)

inst_24:
// rs1==x20, rs2==x13, rs2_h3_val == 8192, rs2_h0_val == 16384, rs1_h3_val == 256, rs2_h2_val == -5
// opcode: smul16 ; op1:x20; op2:x13; dest:x29; op1val:0x01000009fffa0100;  op2val:0x2000fffbfbff4000
TEST_P64_PNN_OP(smul16, x29, $rd_hi, x20, x13, 0x0000000000000000, $correctval_hi, 0x01000009fffa0100, 0x2000fffbfbff4000, x3, 96, x12)

inst_25:
// rs1==x4, rs2==x26, rs2_h3_val == 4096, rs1_h1_val == 1024, rs1_h2_val == -9, rs2_h2_val == 4
// opcode: smul16 ; op1:x4; op2:x26; dest:x19; op1val:0x2000fff704000100;  op2val:0x100000040100fff6
TEST_P64_PNN_OP(smul16, x19, $rd_hi, x4, x26, 0x0000000000000000, $correctval_hi, 0x2000fff704000100, 0x100000040100fff6, x3, 112, x12)

inst_26:
// rs1==x2, rs2==x17, rs2_h3_val == 2048, rs2_h0_val == 64
// opcode: smul16 ; op1:x2; op2:x17; dest:x20; op1val:0x0001000500038000;  op2val:0x0800000401000040
TEST_P64_PNN_OP(smul16, x20, $rd_hi, x2, x17, 0x0000000000000000, $correctval_hi, 0x0001000500038000, 0x0800000401000040, x3, 128, x12)

inst_27:
// rs1==x29, rs2==x15, rs2_h3_val == 1024, rs2_h0_val == -1, rs1_h3_val == 128, rs2_h2_val == 32767
// opcode: smul16 ; op1:x29; op2:x15; dest:x22; op1val:0x008000050005fffa;  op2val:0x04007fff0005ffff
TEST_P64_PNN_OP(smul16, x22, $rd_hi, x29, x15, 0x0000000000000000, $correctval_hi, 0x008000050005fffa, 0x04007fff0005ffff, x3, 144, x12)

inst_28:
// rs1==x7, rs2==x1, rs2_h3_val == 512, rs1_h2_val == -17, rs2_h0_val == 4096, rs2_h2_val == 2048, rs1_h1_val == 32767
// opcode: smul16 ; op1:x7; op2:x1; dest:x23; op1val:0x0100ffef7ffffffa;  op2val:0x0200080000031000
TEST_P64_PNN_OP(smul16, x23, $rd_hi, x7, x1, 0x0000000000000000, $correctval_hi, 0x0100ffef7ffffffa, 0x0200080000031000, x3, 160, x12)

inst_29:
// rs1==x9, rs2==x8, rs2_h3_val == 128, rs2_h2_val == -9, rs1_h3_val == 16
// opcode: smul16 ; op1:x9; op2:x8; dest:x15; op1val:0x00100010fff8fff6;  op2val:0x0080fff7c000fff9
TEST_P64_PNN_OP(smul16, x15, $rd_hi, x9, x8, 0x0000000000000000, $correctval_hi, 0x00100010fff8fff6, 0x0080fff7c000fff9, x3, 176, x12)

inst_30:
// rs1==x10, rs2==x14, rs2_h3_val == 64, rs1_h3_val == 32
// opcode: smul16 ; op1:x10; op2:x14; dest:x24; op1val:0x0020feffffeffbff;  op2val:0x0040fff6fff9fffc
TEST_P64_PNN_OP(smul16, x24, $rd_hi, x10, x14, 0x0000000000000000, $correctval_hi, 0x0020feffffeffbff, 0x0040fff6fff9fffc, x3, 192, x12)

inst_31:
// rs1==x17, rs2==x30, rs2_h3_val == 8, rs1_h0_val == 128
// opcode: smul16 ; op1:x17; op2:x30; dest:x21; op1val:0xffefefff02000080;  op2val:0x000802003fff0400
TEST_P64_PNN_OP(smul16, x21, $rd_hi, x17, x30, 0x0000000000000000, $correctval_hi, 0xffefefff02000080, 0x000802003fff0400, x3, 208, x1)

inst_32:
// rs2_h3_val == 4, rs1_h2_val == -16385, rs1_h0_val == 16, rs2_h0_val == 1
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffbfffffef0010;  op2val:0x0004c00000000001
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xdfffbfffffef0010, 0x0004c00000000001, x3, 224, x1)

inst_33:
// rs2_h3_val == 2, rs1_h2_val == 16384, rs2_h2_val == -2, rs1_h1_val == 16
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000400000100010;  op2val:0x0002fffe00020002
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x2000400000100010, 0x0002fffe00020002, x3, 240, x1)

inst_34:
// rs2_h3_val == 1, rs1_h2_val == 0, rs2_h0_val == 32767
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x3fff000000000020;  op2val:0x00017fff00057fff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x3fff000000000020, 0x00017fff00057fff, x3, 256, x1)

inst_35:
// rs2_h3_val == 0, rs1_h0_val == -2, rs2_h0_val == -257
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff00207ffffffe;  op2val:0x000002000100feff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff00207ffffffe, 0x000002000100feff, x3, 272, x1)

inst_36:
// rs2_h3_val == -1, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x400040000000f7ff;  op2val:0xffff0005ffeffffa
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x400040000000f7ff, 0xffff0005ffeffffa, x3, 288, x1)

inst_37:
// rs2_h2_val == -21846, rs2_h1_val == 21845, rs2_h0_val == 21845
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdffff7ffbff0004;  op2val:0x0006aaaa55555555
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfdffff7ffbff0004, 0x0006aaaa55555555, x3, 304, x1)

inst_38:
// rs2_h2_val == 21845, rs2_h1_val == -5, rs1_h3_val == -2049
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffeffff7ffffa;  op2val:0x00065555fffb0080
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7fffeffff7ffffa, 0x00065555fffb0080, x3, 320, x1)

inst_39:
// rs2_h2_val == -16385, rs1_h0_val == -33, rs1_h2_val == 512
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x555502000002ffdf;  op2val:0x0040bfff00070002
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x555502000002ffdf, 0x0040bfff00070002, x3, 336, x1)

inst_40:
// rs1_h1_val == -3, rs1_h3_val == -257, rs2_h1_val == -65
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffeffffffd0004;  op2val:0x7ffffffaffbf0100
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfeffeffffffd0004, 0x7ffffffaffbf0100, x3, 352, x1)

inst_41:
// rs1_h1_val == 16384, rs1_h0_val == 4096, rs2_h2_val == -32768
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff8555540001000;  op2val:0xdfff80005555fff9
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff8555540001000, 0xdfff80005555fff9, x3, 368, x1)

inst_42:
// rs1_h1_val == 8192, rs2_h2_val == 1024, rs2_h1_val == -8193, rs2_h0_val == -21846
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafdff2000f7ff;  op2val:0xfdff0400dfffaaaa
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xaaaafdff2000f7ff, 0xfdff0400dfffaaaa, x3, 384, x1)

inst_43:
// rs1_h1_val == 4096, rs2_h1_val == -513, rs2_h2_val == 16, rs1_h0_val == -257, rs1_h3_val == 2048
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x080004001000feff;  op2val:0xff7f0010fdffffff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x080004001000feff, 0xff7f0010fdffffff, x3, 400, x1)

inst_44:
// rs1_h1_val == 2048, rs1_h0_val == -8193, rs2_h1_val == -2
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0800efff0800dfff;  op2val:0x00020000fffe0080
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0800efff0800dfff, 0x00020000fffe0080, x3, 416, x1)

inst_45:
// rs1_h1_val == 128, rs1_h3_val == -5, rs2_h2_val == 4096
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb008000801000;  op2val:0xffdf100000070002
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffb008000801000, 0xffdf100000070002, x3, 432, x1)

inst_46:
// rs1_h1_val == 32, rs1_h2_val == -5, rs2_h2_val == -1025, rs2_h0_val == -513
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffb00200020;  op2val:0x0004fbfffffafdff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdffffb00200020, 0x0004fbfffffafdff, x3, 448, x1)

inst_47:
// rs1_h1_val == 8, rs1_h2_val == -1025
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000fbff0008fff8;  op2val:0x0100000900072000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x4000fbff0008fff8, 0x0100000900072000, x3, 464, x1)

inst_48:
// rs1_h1_val == 4, rs1_h2_val == -33, rs2_h2_val == 256, rs2_h1_val == 8
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0100ffdf0004f7ff;  op2val:0x7fff010000080001
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0100ffdf0004f7ff, 0x7fff010000080001, x3, 480, x1)

inst_49:
// rs1_h0_val == -21846, rs2_h0_val == 8
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0000c000aaaa;  op2val:0xffeffbff00200008
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffb0000c000aaaa, 0xffeffbff00200008, x3, 496, x1)

inst_50:
// rs1_h0_val == 21845, rs1_h1_val == 21845, rs1_h2_val == 32767, rs2_h0_val == -9, rs1_h3_val == 8
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x00087fff55555555;  op2val:0xffeffff70400fff7
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00087fff55555555, 0xffeffff70400fff7, x3, 512, x1)

inst_51:
// rs1_h0_val == 32767, rs2_h2_val == 16384, rs2_h1_val == 64
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff00097fff7fff;  op2val:0x0005400000400003
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xefff00097fff7fff, 0x0005400000400003, x3, 528, x1)

inst_52:
// rs1_h0_val == -16385, rs2_h2_val == 8, rs1_h3_val == -1, rs2_h1_val == 4096
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff0003bfff;  op2val:0xfbff000810000002
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffffeff0003bfff, 0xfbff000810000002, x3, 544, x1)

inst_53:
// rs1_h0_val == -129, rs2_h0_val == 32
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0080fffcff7f;  op2val:0x0008aaaafffe0020
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff0080fffcff7f, 0x0008aaaafffe0020, x3, 560, x1)

inst_54:
// rs1_h0_val == -65, rs1_h1_val == -33
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x01007fffffdfffbf;  op2val:0xffbfffbfffef0006
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x01007fffffdfffbf, 0xffbfffbfffef0006, x3, 576, x1)

inst_55:
// rs1_h0_val == -17, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0000aaaaffef;  op2val:0x0020fffa00021000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfbff0000aaaaffef, 0x0020fffa00021000, x3, 592, x1)

inst_56:
// rs1_h0_val == -9, rs2_h2_val == -33
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0009fff9fff9fff7;  op2val:0x1000ffdffff70080
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0009fff9fff9fff7, 0x1000ffdffff70080, x3, 608, x1)

inst_57:
// rs1_h0_val == -3, rs2_h0_val == -16385, rs2_h1_val == -257, rs2_h2_val == 1
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0003fff8aaaafffd;  op2val:0xfffc0001feffbfff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003fff8aaaafffd, 0xfffc0001feffbfff, x3, 624, x1)

inst_58:
// rs1_h0_val == 2048, rs2_h1_val == -16385, rs1_h3_val == 4096, rs1_h1_val == -9
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x10000000fff70800;  op2val:0xfffffff9bffffff7
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x10000000fff70800, 0xfffffff9bffffff7, x3, 640, x1)

inst_59:
// rs1_h0_val == 1024, rs1_h2_val == 8, rs2_h2_val == 128
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0008fffc0400;  op2val:0x20000080fff8fff8
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff0008fffc0400, 0x20000080fff8fff8, x3, 656, x1)

inst_60:
// rs2_h1_val == 4, rs2_h2_val == -513
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x000900083fff0009;  op2val:0xfffbfdff00040400
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000900083fff0009, 0xfffbfdff00040400, x3, 672, x1)

inst_61:
// rs2_h1_val == -1, rs1_h3_val == 2
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0002c0000008dfff;  op2val:0x0006fffbffffc000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0002c0000008dfff, 0x0006fffbffffc000, x3, 688, x1)

inst_62:
// rs2_h0_val == -8193, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0009efff7fff0020;  op2val:0x002055555555dfff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0009efff7fff0020, 0x002055555555dfff, x3, 704, x1)

inst_63:
// rs2_h0_val == -65, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfefffbffc0005555;  op2val:0x0080fbff0000ffbf
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfefffbffc0005555, 0x0080fbff0000ffbf, x3, 720, x1)

inst_64:
// rs2_h0_val == -33, rs1_h2_val == -65
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffbffbff0040;  op2val:0xfffb1000ffefffdf
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffbffbffbff0040, 0xfffb1000ffefffdf, x3, 736, x1)

inst_65:
// rs2_h0_val == -17, rs1_h3_val == -2
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffbffff80007;  op2val:0x0002feff0020ffef
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffeffbffff80007, 0x0002feff0020ffef, x3, 752, x1)

inst_66:
// rs2_h0_val == -5, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb00100200c000;  op2val:0xfdff00050040fffb
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffb00100200c000, 0xfdff00050040fffb, x3, 768, x1)

inst_67:
// rs2_h0_val == -2, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff655550005f7ff;  op2val:0x5555fff60200fffe
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff655550005f7ff, 0x5555fff60200fffe, x3, 784, x1)

inst_68:
// rs2_h0_val == -32768, rs1_h1_val == -4097
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x10007fffeffffbff;  op2val:0x0009aaaafffb8000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x10007fffeffffbff, 0x0009aaaafffb8000, x3, 800, x1)

inst_69:
// rs2_h0_val == 16, rs2_h1_val == -2049
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffcfffc2000;  op2val:0x01000200f7ff0010
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000fffcfffc2000, 0x01000200f7ff0010, x3, 816, x1)

inst_70:
// rs2_h0_val == 0, rs2_h2_val == -2049
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff00035555efff;  op2val:0x4000f7ff10000000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff00035555efff, 0x4000f7ff10000000, x3, 832, x1)

inst_71:
// rs1_h0_val == 8, rs1_h2_val == -8193, rs1_h1_val == -2049
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0003dffff7ff0008;  op2val:0x00060200fffc4000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003dffff7ff0008, 0x00060200fffc4000, x3, 848, x1)

inst_72:
// rs1_h3_val == -129, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffffceffffff9;  op2val:0x0008fffe0009fffe
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xff7ffffceffffff9, 0x0008fffe0009fffe, x3, 864, x1)

inst_73:
// rs1_h0_val == 2, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0006fffc00000002;  op2val:0xffef0001dfffc000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0006fffc00000002, 0xffef0001dfffc000, x3, 880, x1)

inst_74:
// rs1_h3_val == -65, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf000701000009;  op2val:0x0005bffffff9fdff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf000701000009, 0x0005bffffff9fdff, x3, 896, x1)

inst_75:
// rs1_h0_val == 1, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffff708000001;  op2val:0xaaaa1000fff7ffff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7fffff708000001, 0xaaaa1000fff7ffff, x3, 912, x1)

inst_76:
// rs1_h0_val == 0, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffefffdf0000;  op2val:0xbffffbff0008ff7f
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000ffefffdf0000, 0xbffffbff0008ff7f, x3, 928, x1)

inst_77:
// rs1_h0_val == -1, rs1_h1_val == -257, rs2_h2_val == -3
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0004fefffeffffff;  op2val:0xfffdfffdfff8aaaa
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0004fefffeffffff, 0xfffdfffdfff8aaaa, x3, 944, x1)

inst_78:
// rs1_h3_val == -9, rs2_h2_val == -1
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7020000100080;  op2val:0x0040ffff0040fffe
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff7020000100080, 0x0040ffff0040fffe, x3, 960, x1)

inst_79:
// rs1_h3_val == 1024, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0400400000081000;  op2val:0x1000fefffff7ffff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0400400000081000, 0x1000fefffff7ffff, x3, 976, x1)

inst_80:
// rs2_h2_val == -8193, rs2_h1_val == -3
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0100000755550008;  op2val:0x0008dffffffd0010
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0100000755550008, 0x0008dffffffd0010, x3, 992, x1)

inst_81:
// rs1_h3_val == 512, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200fefffffa1000;  op2val:0x000000010200fff6
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0200fefffffa1000, 0x000000010200fff6, x3, 1008, x1)

inst_82:
// rs2_h2_val == -17, rs1_h1_val == -513
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0200fdff1000;  op2val:0xfffaffef0009fff9
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfbff0200fdff1000, 0xfffaffef0009fff9, x3, 1024, x1)

inst_83:
// rs1_h3_val == 0, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0000fff90008fffd;  op2val:0x00013fff02000003
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0000fff90008fffd, 0x00013fff02000003, x3, 1040, x1)

inst_84:
// rs1_h2_val == -21846, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0400aaaafff60008;  op2val:0xfffc00060400ffbf
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0400aaaafff60008, 0xfffc00060400ffbf, x3, 1056, x1)

inst_85:
// rs2_h2_val == 8192, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0007fffa00100000;  op2val:0x00052000fffedfff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0007fffa00100000, 0x00052000fffedfff, x3, 1072, x1)

inst_86:
// rs1_h2_val == -2049, rs1_h3_val == -32768
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000f7ff0005bfff;  op2val:0x0200ff7f00040004
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x8000f7ff0005bfff, 0x0200ff7f00040004, x3, 1088, x1)

inst_87:
// rs2_h2_val == 32, rs1_h2_val == 256
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0100fff8aaaa;  op2val:0xbfff0020ffffefff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf0100fff8aaaa, 0xbfff0020ffffefff, x3, 1104, x1)

inst_88:
// rs1_h2_val == -3, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fffd0200bfff;  op2val:0x00200008fff7fffc
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff9fffd0200bfff, 0x00200008fff7fffc, x3, 1120, x1)

inst_89:
// rs1_h2_val == -32768, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x10008000aaaaefff;  op2val:0x80000400ffbf0006
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x10008000aaaaefff, 0x80000400ffbf0006, x3, 1136, x1)

inst_90:
// rs2_h1_val == -21846, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc0020ff7f0006;  op2val:0xaaaaffbfaaaaffbf
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffc0020ff7f0006, 0xaaaaffbfaaaaffbf, x3, 1152, x1)

inst_91:
// rs1_h2_val == 8192, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef20000002fbff;  op2val:0xffdf0020ff7faaaa
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffef20000002fbff, 0xffdf0020ff7faaaa, x3, 1168, x1)

inst_92:
// rs2_h1_val == 32767, rs1_h2_val == 2048
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x000708000100fffd;  op2val:0x000100017fff0800
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000708000100fffd, 0x000100017fff0800, x3, 1184, x1)

inst_93:
// rs1_h2_val == 64, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000004000100009;  op2val:0xfeff1000ffbffffb
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000004000100009, 0xfeff1000ffbffffb, x3, 1200, x1)

inst_94:
// rs1_h2_val == 4, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe000400200008;  op2val:0xfff97fff00023fff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffe000400200008, 0xfff97fff00023fff, x3, 1216, x1)

inst_95:
// rs1_h2_val == 1, rs2_h1_val == 16384
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff0001fffb0080;  op2val:0x0009000340000003
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7ff0001fffb0080, 0x0009000340000003, x3, 1232, x1)

inst_96:
// rs2_h1_val == -32768, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffffafbff2000;  op2val:0x000200078000fff9
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffeffffafbff2000, 0x000200078000fff9, x3, 1248, x1)

inst_97:
// rs1_h1_val == -16385, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffff6bfff0001;  op2val:0x0400fff8ffbfc000
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xff7ffff6bfff0001, 0x0400fff8ffbfc000, x3, 1264, x1)

inst_98:
// rs1_h1_val == -8193, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x01007fffdffffff6;  op2val:0xfff8dfffefff0010
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x01007fffdffffff6, 0xfff8dfffefff0010, x3, 1280, x1)

inst_99:
// rs1_h3_val == -3, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0009fdff0005;  op2val:0x1000ff7fff7ffff6
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffd0009fdff0005, 0x1000ff7fff7ffff6, x3, 1296, x1)

inst_100:
// rs2_h1_val == 128, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff6fffd0200fffb;  op2val:0xfff6f7ff0080fff8
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff6fffd0200fffb, 0xfff6f7ff0080fff8, x3, 1312, x1)

inst_101:
// rs2_h1_val == 16, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0xeffffffffffb0400;  op2val:0xffbf008000100040
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xeffffffffffb0400, 0xffbf008000100040, x3, 1328, x1)

inst_102:
// rs2_h1_val == 2048, 
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x555520001000feff;  op2val:0xfff8fffa08000200
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x555520001000feff, 0xfff8fffa08000200, x3, 1344, x1)

inst_103:
// rs1_h3_val > 0 and rs2_h3_val < 0, rs2_h3_val == -257, rs1_h2_val == 1024, rs1_h3_val == 1, rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h0_val == 256, rs2_h1_val == -9, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h2_val == 2
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x0001040000050100;  op2val:0xfeff0002fff73fff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0001040000050100, 0xfeff0002fff73fff, x3, 1360, x1)

inst_104:
// rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h2_val == 128, rs1_h1_val == -21846, rs2_h3_val == 16, rs1_h0_val == -2049, rs1_h3_val == 16384, rs2_h0_val == 128
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000080aaaaf7ff;  op2val:0x0010000300070080
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x40000080aaaaf7ff, 0x0010000300070080, x3, 1376, x1)

inst_105:
// rs2_h3_val == -1025, rs2_h0_val == -2049, rs1_h3_val == 32767, rs1_h0_val == 4, rs1_h2_val == -513, rs2_h1_val == 256
// opcode: smul16 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffdffc0000004;  op2val:0xfbff00090100f7ff
TEST_P64_PNN_OP(smul16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x7ffffdffc0000004, 0xfbff00090100f7ff, x3, 1392, x1)
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


signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 36*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 176*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
