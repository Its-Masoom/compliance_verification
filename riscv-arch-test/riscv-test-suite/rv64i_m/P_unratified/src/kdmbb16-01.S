
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
// This assembly file tests the kdmbb16 instruction of the RISC-V RV64PZicsr extension for the kdmbb16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kdmbb16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x7,signature_x7_1)

inst_0:
// rs1 == rd != rs2, rs1==x27, rs2==x15, rd==x27, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val > 0, rs2_h1_val == -8193, rs1_h2_val != rs2_h2_val, rs2_h0_val == 32767, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h0_val != rs2_h0_val, rs1_h2_val == -1025, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h3_val == 32
// opcode: kdmbb16 ; op1:x27; op2:x15; dest:x27; op1val:0xfffcfbfffff68000;  op2val:0x200006dfff7fff
TEST_PKRR_OP(kdmbb16, x27, x27, x15, 0x0000000000000000, 0xfffcfbfffff68000, 0x200006dfff7fff, x27, x7, 0, x14)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x27, rd==x31, rs1_h3_val == rs2_h3_val, rs1_h3_val == 1024, rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h0_val == -16385, rs1_h2_val < 0 and rs2_h2_val < 0, rs2_h2_val == -2, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h3_val == 1024, rs2_h1_val == 8192, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h2_val == -257, rs1_h1_val == -513
// opcode: kdmbb16 ; op1:x3; op2:x27; dest:x31; op1val:0x400fefffdfffff8;  op2val:0x400fffe2000bfff
TEST_PKRR_OP(kdmbb16, x31, x3, x27, 0x0000000000000000, 0x400fefffdfffff8, 0x400fffe2000bfff, x3, x7, 16, x14)

inst_2:
// rs1 == rs2 != rd, rs1==x21, rs2==x21, rd==x12, rs1_h3_val < 0 and rs2_h3_val < 0, rs2_h0_val == 1, rs1_h0_val == 16384, rs1_h1_val == -2049, rs1_h2_val == 32, rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h2_val == 512, rs1_h3_val == -9, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 128
// opcode: kdmbb16 ; op1:x21; op2:x21; dest:x12; op1val:0xfff70020f7ff4000;  op2val:0xfff6020000800001
TEST_PKRR_OP(kdmbb16, x12, x21, x21, 0x0000000000000000, 0xfff70020f7ff4000, 0xfff6020000800001, x21, x7, 32, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x13, rs2==x13, rd==x13, rs1_h3_val > 0 and rs2_h3_val < 0, rs1_h1_val == 256, rs2_h1_val == -9, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h2_val == 2048, rs1_h0_val == 21845, rs2_h0_val == 2048, rs2_h3_val == -8193
// opcode: kdmbb16 ; op1:x13; op2:x13; dest:x13; op1val:0x400fffa01005555;  op2val:0xdfff0800fff70800
TEST_PKRR_OP(kdmbb16, x13, x13, x13, 0x0000000000000000, 0x400fffa01005555, 0xdfff0800fff70800, x13, x7, 48, x14)

inst_4:
// rs2 == rd != rs1, rs1==x11, rs2==x19, rd==x19, rs1_h2_val == rs2_h2_val, rs1_h2_val == 128, rs2_h0_val == -8193, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h3_val == -17, rs2_h2_val == 128, rs2_h3_val == 16, rs1_h1_val == -17
// opcode: kdmbb16 ; op1:x11; op2:x19; dest:x19; op1val:0xffef0080ffef0005;  op2val:0x1000800080dfff
TEST_PKRR_OP(kdmbb16, x19, x11, x19, 0x0000000000000000, 0xffef0080ffef0005, 0x1000800080dfff, x11, x7, 64, x14)

inst_5:
// rs1==x26, rs2==x18, rd==x8, rs1_h2_val > 0 and rs2_h2_val < 0, rs1_h1_val == -32768, rs1_h3_val == 32, rs2_h3_val == -5, rs1_h2_val == 21845, rs1_h0_val == -21846, rs2_h1_val == 2048, rs2_h0_val == 1024
// opcode: kdmbb16 ; op1:x26; op2:x18; dest:x8; op1val:0x2055558000aaaa;  op2val:0xfffbfffe08000400
TEST_PKRR_OP(kdmbb16, x8, x26, x18, 0x0000000000000000, 0x2055558000aaaa, 0xfffbfffe08000400, x26, x7, 80, x14)

inst_6:
// rs1==x28, rs2==x17, rd==x29, rs1_h1_val == rs2_h1_val, rs2_h2_val == -4097, rs1_h3_val == 1, rs2_h3_val == 256, rs1_h0_val == -1, rs1_h2_val == -129
// opcode: kdmbb16 ; op1:x28; op2:x17; dest:x29; op1val:0x01ff7ffffaffff;  op2val:0x100effffffa0001
TEST_PKRR_OP(kdmbb16, x29, x28, x17, 0x0000000000000000, 0x01ff7ffffaffff, 0x100effffffa0001, x28, x7, 96, x14)

inst_7:
// rs1==x2, rs2==x5, rd==x3, rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h1_val == 2, rs2_h0_val == 32, rs1_h2_val == 64, rs1_h1_val == 128, rs2_h3_val == 64, rs1_h3_val == 16384
// opcode: kdmbb16 ; op1:x2; op2:x5; dest:x3; op1val:0x4000004000803fff;  op2val:0x40000500020020
TEST_PKRR_OP(kdmbb16, x3, x2, x5, 0x0000000000000000, 0x4000004000803fff, 0x40000500020020, x2, x7, 112, x14)

inst_8:
// rs1==x30, rs2==x10, rd==x23, rs1_h0_val == rs2_h0_val, rs2_h0_val == 8, rs1_h3_val == 16, rs1_h2_val == -1, rs2_h1_val == -2, rs1_h0_val == 8, rs2_h2_val == 32767
// opcode: kdmbb16 ; op1:x30; op2:x10; dest:x23; op1val:0x10ffff00800008;  op2val:0x207ffffffe0008
TEST_PKRR_OP(kdmbb16, x23, x30, x10, 0x0000000000000000, 0x10ffff00800008, 0x207ffffffe0008, x30, x7, 128, x14)

inst_9:
// rs1==x25, rs2==x6, rd==x4, rs2_h3_val == -21846, rs1_h0_val == -5, rs1_h1_val == 2048, rs1_h3_val == -16385, rs2_h1_val == -65, rs2_h0_val == -9
// opcode: kdmbb16 ; op1:x25; op2:x6; dest:x4; op1val:0xbfff55550800fffb;  op2val:0xaaaa0080ffbffff7
TEST_PKRR_OP(kdmbb16, x4, x25, x6, 0x0000000000000000, 0xbfff55550800fffb, 0xaaaa0080ffbffff7, x25, x7, 144, x14)

inst_10:
// rs1==x16, rs2==x31, rd==x0, rs2_h3_val == 21845, rs2_h0_val == 4, rs1_h1_val == 16384, rs2_h1_val == -33, rs1_h2_val == -16385, rs1_h3_val == -65, rs1_h0_val == -513, rs2_h2_val == 1
// opcode: kdmbb16 ; op1:x16; op2:x31; dest:x0; op1val:0xffbfbfff4000fdff;  op2val:0x55550001ffdf0004
TEST_PKRR_OP(kdmbb16, x0, x16, x31, 0x0000000000000000, 0xffbfbfff4000fdff, 0x55550001ffdf0004, x16, x7, 160, x14)

inst_11:
// rs1==x0, rs2==x1, rd==x6, rs2_h3_val == 32767, rs1_h1_val == -3, rs1_h2_val == 512, rs2_h2_val == -513, rs2_h0_val == 2, rs1_h3_val == 21845, rs1_h0_val == 1
// opcode: kdmbb16 ; op1:x0; op2:x1; dest:x6; op1val:0x55550200fffd0001;  op2val:0x7ffffdfffffe0002
TEST_PKRR_OP(kdmbb16, x6, x0, x1, 0x0000000000000000, 0x55550200fffd0001, 0x7ffffdfffffe0002, x0, x7, 176, x14)

inst_12:
// rs1==x31, rs2==x30, rd==x15, rs2_h3_val == -16385, rs2_h2_val == -16385, rs1_h0_val == -4097, rs1_h2_val == -9
// opcode: kdmbb16 ; op1:x31; op2:x30; dest:x15; op1val:0x03fff70080efff;  op2val:0xbfffbfffdffffff9
TEST_PKRR_OP(kdmbb16, x15, x31, x30, 0x0000000000000000, 0x03fff70080efff, 0xbfffbfffdffffff9, x31, x7, 192, x14)

inst_13:
// rs1==x17, rs2==x9, rd==x18, rs2_h3_val == -4097, rs1_h3_val == -3, rs2_h2_val == -9, rs2_h1_val == 32, rs1_h1_val == 4096
// opcode: kdmbb16 ; op1:x17; op2:x9; dest:x18; op1val:0xfffdfff71000efff;  op2val:0xeffffff70020fff9
TEST_PKRR_OP(kdmbb16, x18, x17, x9, 0x0000000000000000, 0xfffdfff71000efff, 0xeffffff70020fff9, x17, x7, 208, x14)

inst_14:
// rs1==x15, rs2==x14, rd==x1, rs2_h3_val == -2049, rs2_h2_val == 32, rs2_h1_val == 21845, rs1_h1_val == -21846, rs1_h2_val == 256
// opcode: kdmbb16 ; op1:x15; op2:x14; dest:x1; op1val:0x3fff0100aaaa0006;  op2val:0xf7ff00205555fff8
TEST_PKRR_OP(kdmbb16, x1, x15, x14, 0x0000000000000000, 0x3fff0100aaaa0006, 0xf7ff00205555fff8, x15, x7, 224, x27)
RVTEST_SIGBASE(x13,signature_x13_0)

inst_15:
// rs1==x10, rs2==x11, rd==x24, rs2_h3_val == -1025, rs1_h0_val == -65, rs2_h1_val == -4097, rs2_h0_val == 0, rs1_h2_val == -33, rs2_h2_val == 21845
// opcode: kdmbb16 ; op1:x10; op2:x11; dest:x24; op1val:0x06ffdff7ffffbf;  op2val:0xfbff5555efff0000
TEST_PKRR_OP(kdmbb16, x24, x10, x11, 0x0000000000000000, 0x06ffdff7ffffbf, 0xfbff5555efff0000, x10, x13, 0, x27)

inst_16:
// rs1==x20, rs2==x28, rd==x30, rs2_h3_val == -513, rs2_h2_val == -1, rs1_h1_val == 64, rs2_h0_val == -513, rs1_h3_val == -4097, rs1_h0_val == 256, rs2_h1_val == 4096
// opcode: kdmbb16 ; op1:x20; op2:x28; dest:x30; op1val:0xefff002000400100;  op2val:0xfdffffff1000fdff
TEST_PKRR_OP(kdmbb16, x30, x20, x28, 0x0000000000000000, 0xefff002000400100, 0xfdffffff1000fdff, x20, x13, 16, x27)

inst_17:
// rs1==x6, rs2==x24, rd==x7, rs2_h3_val == -257, rs1_h0_val == 16, rs1_h2_val == 4096, rs1_h1_val == 8
// opcode: kdmbb16 ; op1:x6; op2:x24; dest:x7; op1val:0xfff8100000080010;  op2val:0xfeff3fff0003fffc
TEST_PKRR_OP(kdmbb16, x7, x6, x24, 0x0000000000000000, 0xfff8100000080010, 0xfeff3fff0003fffc, x6, x13, 32, x27)

inst_18:
// rs1==x4, rs2==x26, rd==x14, rs2_h3_val == -129, rs2_h1_val == 512, rs1_h2_val == 8, rs2_h0_val == -1025, rs1_h1_val == 2
// opcode: kdmbb16 ; op1:x4; op2:x26; dest:x14; op1val:0x5555000800020007;  op2val:0xff7f55550200fbff
TEST_PKRR_OP(kdmbb16, x14, x4, x26, 0x0000000000000000, 0x5555000800020007, 0xff7f55550200fbff, x4, x13, 48, x27)

inst_19:
// rs1==x12, rs2==x0, rd==x21, rs2_h3_val == -65, rs1_h1_val == 1, rs1_h2_val == -2049, rs2_h0_val == -21846
// opcode: kdmbb16 ; op1:x12; op2:x0; dest:x21; op1val:0xfffaf7ff0001fff8;  op2val:0xffbffffc5555aaaa
TEST_PKRR_OP(kdmbb16, x21, x12, x0, 0x0000000000000000, 0xfffaf7ff0001fff8, 0xffbffffc5555aaaa, x12, x13, 64, x27)

inst_20:
// rs1==x5, rs2==x8, rd==x22, rs2_h3_val == -33, rs1_h0_val == -16385, rs1_h3_val == -257, rs2_h2_val == 256
// opcode: kdmbb16 ; op1:x5; op2:x8; dest:x22; op1val:0xfefffff90800bfff;  op2val:0xffdf010000050005
TEST_PKRR_OP(kdmbb16, x22, x5, x8, 0x0000000000000000, 0xfefffff90800bfff, 0xffdf010000050005, x5, x13, 80, x27)

inst_21:
// rs1==x19, rs2==x12, rd==x5, rs2_h3_val == -17, rs1_h3_val == 128
// opcode: kdmbb16 ; op1:x19; op2:x12; dest:x5; op1val:0x80000900070008;  op2val:0xffeffdfffff9fff6
TEST_PKRR_OP(kdmbb16, x5, x19, x12, 0x0000000000000000, 0x80000900070008, 0xffeffdfffff9fff6, x19, x13, 96, x27)

inst_22:
// rs1==x24, rs2==x4, rd==x26, rs2_h3_val == -9, rs1_h3_val == -5
// opcode: kdmbb16 ; op1:x24; op2:x4; dest:x26; op1val:0xfffbfffafffdffff;  op2val:0xfff7fffa5555fbff
TEST_PKRR_OP(kdmbb16, x26, x24, x4, 0x0000000000000000, 0xfffbfffafffdffff, 0xfff7fffa5555fbff, x24, x13, 112, x27)

inst_23:
// rs1==x7, rs2==x25, rd==x16, rs2_h3_val == -3, rs1_h1_val == 512, rs2_h1_val == 0, rs1_h2_val == 4
// opcode: kdmbb16 ; op1:x7; op2:x25; dest:x16; op1val:0x0500040200fffa;  op2val:0xfffdbfff00000005
TEST_PKRR_OP(kdmbb16, x16, x7, x25, 0x0000000000000000, 0x0500040200fffa, 0xfffdbfff00000005, x7, x13, 128, x27)

inst_24:
// rs1==x1, rs2==x29, rd==x11, rs2_h3_val == -2, rs2_h1_val == 32767, rs1_h2_val == 2048, rs2_h2_val == 16384, rs1_h1_val == -8193, rs1_h3_val == 8192
// opcode: kdmbb16 ; op1:x1; op2:x29; dest:x11; op1val:0x20000800dfff0010;  op2val:0xfffe40007ffffdff
TEST_PKRR_OP(kdmbb16, x11, x1, x29, 0x0000000000000000, 0x20000800dfff0010, 0xfffe40007ffffdff, x1, x13, 144, x27)

inst_25:
// rs1==x9, rs2==x16, rd==x25, rs2_h3_val == -32768, rs1_h2_val == -65, rs2_h1_val == 1, rs2_h0_val == -257
// opcode: kdmbb16 ; op1:x9; op2:x16; dest:x25; op1val:0xfffbffbffff9fff8;  op2val:0x800000800001feff
TEST_PKRR_OP(kdmbb16, x25, x9, x16, 0x0000000000000000, 0xfffbffbffff9fff8, 0x800000800001feff, x9, x13, 160, x27)

inst_26:
// rs1==x8, rs2==x23, rd==x9, rs2_h3_val == 16384, rs2_h0_val == 4096
// opcode: kdmbb16 ; op1:x8; op2:x23; dest:x9; op1val:0x5555fff9fffd4000;  op2val:0x4000008002001000
TEST_PKRR_OP(kdmbb16, x9, x8, x23, 0x0000000000000000, 0x5555fff9fffd4000, 0x4000008002001000, x8, x13, 176, x27)

inst_27:
// rs1==x23, rs2==x7, rd==x2, rs2_h3_val == 8192, rs1_h0_val == 4, rs2_h1_val == -16385, rs2_h2_val == -257, rs2_h0_val == -129
// opcode: kdmbb16 ; op1:x23; op2:x7; dest:x2; op1val:0x030004f7ff0004;  op2val:0x2000feffbfffff7f
TEST_PKRR_OP(kdmbb16, x2, x23, x7, 0x0000000000000000, 0x030004f7ff0004, 0x2000feffbfffff7f, x23, x13, 192, x27)

inst_28:
// rs1==x29, rs2==x22, rd==x28, rs2_h3_val == 4096, rs2_h0_val == -4097, rs1_h1_val == 32767, rs2_h2_val == -21846, rs1_h0_val == -257
// opcode: kdmbb16 ; op1:x29; op2:x22; dest:x28; op1val:0xefffff7f7ffffeff;  op2val:0x1000aaaa0007efff
TEST_PKRR_OP(kdmbb16, x28, x29, x22, 0x0000000000000000, 0xefffff7f7ffffeff, 0x1000aaaa0007efff, x29, x13, 208, x27)

inst_29:
// rs1==x22, rs2==x20, rd==x10, rs2_h3_val == 2048, rs1_h1_val == -5, rs1_h3_val == 4096, rs1_h0_val == 32767
// opcode: kdmbb16 ; op1:x22; op2:x20; dest:x10; op1val:0x10000009fffb7fff;  op2val:0x800fff81000ff7f
TEST_PKRR_OP(kdmbb16, x10, x22, x20, 0x0000000000000000, 0x10000009fffb7fff, 0x800fff81000ff7f, x22, x13, 224, x27)

inst_30:
// rs1==x14, rs2==x2, rd==x20, rs2_h3_val == 512, rs1_h2_val == 8192, rs1_h1_val == 16
// opcode: kdmbb16 ; op1:x14; op2:x2; dest:x20; op1val:0xfeff200000100009;  op2val:0x200fff60002efff
TEST_PKRR_OP(kdmbb16, x20, x14, x2, 0x0000000000000000, 0xfeff200000100009, 0x200fff60002efff, x14, x13, 240, x27)

inst_31:
// rs1==x18, rs2==x3, rd==x17, rs2_h3_val == 128, rs2_h1_val == -513, rs2_h2_val == 2, rs1_h0_val == -8193, rs1_h3_val == -33
// opcode: kdmbb16 ; op1:x18; op2:x3; dest:x17; op1val:0xffdf00040040dfff;  op2val:0x800002fdfffff8
TEST_PKRR_OP(kdmbb16, x17, x18, x3, 0x0000000000000000, 0xffdf00040040dfff, 0x800002fdfffff8, x18, x13, 256, x27)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_32:
// rs2_h3_val == 8, rs1_h0_val == -33, rs1_h1_val == 8192
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fff72000ffdf;  op2val:0x08fdff0007fff8
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfff9fff72000ffdf, 0x08fdff0007fff8, x30, x1, 0, x2)

inst_33:
// rs1_h1_val == -2, rs2_h1_val == -257
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fffcfffe0004;  op2val:0xfffcbffffefffff7
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfff9fffcfffe0004, 0xfffcbffffefffff7, x30, x1, 16, x2)

inst_34:
// rs1_h1_val == 1024, rs1_h2_val == 1024, rs2_h1_val == -2049
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555040004000003;  op2val:0xfeff0080f7ff0400
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x5555040004000003, 0xfeff0080f7ff0400, x30, x1, 32, x2)

inst_35:
// rs1_h1_val == 32, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xc00004000020fff6;  op2val:0xffbfbfff08000002
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xc00004000020fff6, 0xffbfbfff08000002, x30, x1, 48, x2)

inst_36:
// rs1_h1_val == 4, rs2_h1_val == 1024, rs2_h2_val == 8, rs2_h0_val == 128
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0700050004ffff;  op2val:0x07000804000080
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x0700050004ffff, 0x07000804000080, x30, x1, 64, x2)

inst_37:
// rs1_h1_val == 0, rs2_h0_val == -65, rs2_h3_val == 2, rs2_h1_val == 64, rs1_h2_val == 1
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x05000100000004;  op2val:0x0200200040ffbf
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x05000100000004, 0x0200200040ffbf, x30, x1, 80, x2)

inst_38:
// rs1_h1_val == -1, rs2_h1_val == -1025, rs2_h2_val == -33, rs1_h3_val == 2
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x02fff9ffffefff;  op2val:0xfffaffdffbff0006
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x02fff9ffffefff, 0xfffaffdffbff0006, x30, x1, 96, x2)

inst_39:
// rs1_h0_val == -2049, rs2_h2_val == 16, rs2_h0_val == -2
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfff7ffffaf7ff;  op2val:0xfffb00100040fffe
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffdfff7ffffaf7ff, 0xfffb00100040fffe, x30, x1, 112, x2)

inst_40:
// rs1_h0_val == -1025, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef3fff0004fbff;  op2val:0xffef0009dfffdfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffef3fff0004fbff, 0xffef0009dfffdfff, x30, x1, 128, x2)

inst_41:
// rs1_h0_val == -129, rs1_h1_val == -1025, rs2_h2_val == -8193, rs1_h3_val == 256
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x1002000fbffff7f;  op2val:0xfdffdfff0006fff6
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x1002000fbffff7f, 0xfdffdfff0006fff6, x30, x1, 144, x2)

inst_42:
// rs1_h0_val == -17, rs1_h1_val == 21845, rs2_h0_val == -32768
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0700405555ffef;  op2val:0x3ffffffa00068000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x0700405555ffef, 0x3ffffffa00068000, x30, x1, 160, x2)

inst_43:
// rs1_h0_val == -9, rs2_h1_val == 256, rs1_h3_val == 0
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x00f7fffff9fff7;  op2val:0x200ffdf0100fffe
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x00f7fffff9fff7, 0x200ffdf0100fffe, x30, x1, 176, x2)

inst_44:
// rs1_h0_val == -3, rs2_h0_val == -5, rs2_h1_val == 16
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb00804000fffd;  op2val:0xbfff02000010fffb
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffb00804000fffd, 0xbfff02000010fffb, x30, x1, 192, x2)

inst_45:
// rs1_h0_val == -2, rs2_h2_val == -2049, rs2_h0_val == 21845
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffcffff0001fffe;  op2val:0xfffcf7ff00075555
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffcffff0001fffe, 0xfffcf7ff00075555, x30, x1, 208, x2)

inst_46:
// rs1_h0_val == 8192, rs2_h1_val == -32768, rs1_h2_val == -21846, rs1_h3_val == 2048
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x800aaaafffe2000;  op2val:0x4000038000bfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x800aaaafffe2000, 0x4000038000bfff, x30, x1, 224, x2)

inst_47:
// rs1_h0_val == 4096, rs2_h2_val == 1024
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x060005fffb1000;  op2val:0x80004000007fff6
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x060005fffb1000, 0x80004000007fff6, x30, x1, 240, x2)

inst_48:
// rs1_h0_val == 2048, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x103ffffdff0800;  op2val:0x02000100090003
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x103ffffdff0800, 0x02000100090003, x30, x1, 256, x2)

inst_49:
// rs1_h0_val == 1024, rs2_h2_val == -17
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdc00000060400;  op2val:0x200ffeffeffff7f
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffdc00000060400, 0x200ffeffeffff7f, x30, x1, 272, x2)

inst_50:
// rs1_h0_val == 512, rs2_h3_val == 4, rs1_h2_val == 16
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000001000020200;  op2val:0x04fff8fff77fff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xc000001000020200, 0x04fff8fff77fff, x30, x1, 288, x2)

inst_51:
// rs1_h0_val == 128, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x03aaaa3fff0080;  op2val:0xff7f0800fdff0006
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x03aaaa3fff0080, 0xff7f0800fdff0006, x30, x1, 304, x2)

inst_52:
// rs1_h0_val == 64, rs1_h2_val == -3
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7fffdfdff0040;  op2val:0xffef00090020fdff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfff7fffdfdff0040, 0xffef00090020fdff, x30, x1, 320, x2)

inst_53:
// rs1_h0_val == 32, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0009fffe0020;  op2val:0xfffd080000070002
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xbfff0009fffe0020, 0xfffd080000070002, x30, x1, 336, x2)

inst_54:
// rs1_h0_val == 2, rs2_h2_val == 4096
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x80080000010002;  op2val:0xfeff1000fffe0400
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x80080000010002, 0xfeff1000fffe0400, x30, x1, 352, x2)

inst_55:
// rs1_h0_val == 0, rs2_h0_val == 8192
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff020000060000;  op2val:0x06fdff00202000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xbfff020000060000, 0x06fdff00202000, x30, x1, 368, x2)

inst_56:
// rs2_h3_val == 1, rs1_h2_val == -2
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x01fffe0080ff7f;  op2val:0x01ffdf0007feff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x01fffe0080ff7f, 0x01ffdf0007feff, x30, x1, 384, x2)

inst_57:
// rs2_h1_val == 4, rs2_h0_val == -3
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x05fffd0005bfff;  op2val:0x013fff0004fffd
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x05fffd0005bfff, 0x013fff0004fffd, x30, x1, 400, x2)

inst_58:
// rs2_h1_val == -1, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x01200000050200;  op2val:0xfff6f7ffffff0002
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x01200000050200, 0xfff6f7ffffff0002, x30, x1, 416, x2)

inst_59:
// rs1_h1_val == -9, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfff6fff70003;  op2val:0xfff7feff00020400
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffdfff6fff70003, 0xfff7feff00020400, x30, x1, 432, x2)

inst_60:
// rs2_h0_val == -2049, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x55550400ffffc000;  op2val:0xc000fff80080f7ff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x55550400ffffc000, 0xc000fff80080f7ff, x30, x1, 448, x2)

inst_61:
// rs2_h0_val == -33, rs1_h3_val == -21846
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa0080dfffaaaa;  op2val:0x20040000003ffdf
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa0080dfffaaaa, 0x20040000003ffdf, x30, x1, 464, x2)

inst_62:
// rs2_h0_val == -17, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0300100040bfff;  op2val:0xfefff7ffdfffffef
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x0300100040bfff, 0xfefff7ffdfffffef, x30, x1, 480, x2)

inst_63:
// rs2_h0_val == 16384, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb000102000004;  op2val:0xffdf4000c0004000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffb000102000004, 0xffdf4000c0004000, x30, x1, 496, x2)

inst_64:
// rs2_h0_val == 512, rs1_h2_val == 16384
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x1040001000aaaa;  op2val:0x05bffffffe0200
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x1040001000aaaa, 0x05bffffffe0200, x30, x1, 512, x2)

inst_65:
// rs2_h0_val == 256, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x02fffafff9ff7f;  op2val:0x200002fff90100
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x02fffafff9ff7f, 0x200002fff90100, x30, x1, 528, x2)

inst_66:
// rs2_h0_val == 64, rs2_h3_val == -1
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x020020fffbaaaa;  op2val:0xffffaaaafeff0040
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x020020fffbaaaa, 0xffffaaaafeff0040, x30, x1, 544, x2)

inst_67:
// rs2_h0_val == 16, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x100010003fff4000;  op2val:0xfff8040010000010
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x100010003fff4000, 0xfff8040010000010, x30, x1, 560, x2)

inst_68:
// rs2_h0_val == -1, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x80200000070020;  op2val:0x06feff0001ffff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x80200000070020, 0x06feff0001ffff, x30, x1, 576, x2)

inst_69:
// rs1_h3_val == 32767, rs2_h2_val == -5, rs1_h2_val == 2
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff000255550006;  op2val:0x4000fffb0040fffb
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x7fff000255550006, 0x4000fffb0040fffb, x30, x1, 592, x2)

inst_70:
// rs1_h3_val == -8193, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff00400002c000;  op2val:0xbffffffbfeffffbf
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xdfff00400002c000, 0xbffffffbfeffffbf, x30, x1, 608, x2)

inst_71:
// rs1_h3_val == -2049, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffff6fff70003;  op2val:0x80001000fdfffeff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xf7fffff6fff70003, 0x80001000fdfffeff, x30, x1, 624, x2)

inst_72:
// rs1_h3_val == -1025, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffff65555fffd;  op2val:0x8000fffe0080bfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfbfffff65555fffd, 0x8000fffe0080bfff, x30, x1, 640, x2)

inst_73:
// rs1_h3_val == -513, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff5555c000ff7f;  op2val:0x2000400ffff0010
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfdff5555c000ff7f, 0x2000400ffff0010, x30, x1, 656, x2)

inst_74:
// rs1_h3_val == -129, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f400055550020;  op2val:0x04040001000040
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xff7f400055550020, 0x04040001000040, x30, x1, 672, x2)

inst_75:
// rs1_h3_val == -2, rs1_h2_val == -32768
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe8000ffeffffe;  op2val:0x80000005ffdffff8
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffe8000ffeffffe, 0x80000005ffdffff8, x30, x1, 688, x2)

inst_76:
// rs2_h3_val == 0, rs2_h2_val == -65
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x07f7ff4000ffdf;  op2val:0x00ffbf0010fffe
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x07f7ff4000ffdf, 0x00ffbf0010fffe, x30, x1, 704, x2)

inst_77:
// rs1_h3_val == -32768, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x80001000fffc2000;  op2val:0xff7f00091000c000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x80001000fffc2000, 0xff7f00091000c000, x30, x1, 720, x2)

inst_78:
// rs1_h3_val == 512, rs2_h2_val == 8192, rs1_h2_val == -17
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x200ffeffffcfffb;  op2val:0x0020000006ff7f
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x200ffeffffcfffb, 0x0020000006ff7f, x30, x1, 736, x2)

inst_79:
// rs2_h2_val == -1025, rs1_h3_val == 4
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x04000702000009;  op2val:0xfffafbff0007fdff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x04000702000009, 0xfffafbff0007fdff, x30, x1, 752, x2)

inst_80:
// rs1_h3_val == 64, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x405555dfff0003;  op2val:0xffff0010effffff6
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x405555dfff0003, 0xffff0010effffff6, x30, x1, 768, x2)

inst_81:
// rs2_h2_val == -129, rs1_h2_val == 0
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff000000042000;  op2val:0x100ff7ff7ffff7f
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xdfff000000042000, 0x100ff7ff7ffff7f, x30, x1, 784, x2)

inst_82:
// rs1_h3_val == 8, rs2_h2_val == -32768
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0880000800fffb;  op2val:0xfff780000000ff7f
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x0880000800fffb, 0xfff780000000ff7f, x30, x1, 800, x2)

inst_83:
// rs1_h3_val == -1, rs1_h1_val == -65
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff4000ffbfaaaa;  op2val:0x092000ffff0000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffff4000ffbfaaaa, 0x092000ffff0000, x30, x1, 816, x2)

inst_84:
// rs2_h2_val == -3, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x401000fff62000;  op2val:0x100fffd0200dfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x401000fff62000, 0x100fffd0200dfff, x30, x1, 832, x2)

inst_85:
// rs1_h2_val == 32767, rs1_h1_val == -257
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa7ffffefffbff;  op2val:0xdfffffef3fffdfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa7ffffefffbff, 0xdfffffef3fffdfff, x30, x1, 848, x2)

inst_86:
// rs1_h2_val == -8193, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffdfff20002000;  op2val:0x7ffffffcf7ff0003
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfbffdfff20002000, 0x7ffffffcf7ff0003, x30, x1, 864, x2)

inst_87:
// rs1_h2_val == -4097, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xefffeffff7ff0800;  op2val:0xffbf400008000040
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xefffeffff7ff0800, 0xffbf400008000040, x30, x1, 880, x2)

inst_88:
// rs1_h2_val == -513, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x10fdffffbf0002;  op2val:0x04fff900800100
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x10fdffffbf0002, 0x04fff900800100, x30, x1, 896, x2)

inst_89:
// rs2_h1_val == -21846, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x05555504000100;  op2val:0xffbfaaaaaaaabfff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x05555504000100, 0xffbfaaaaaaaabfff, x30, x1, 912, x2)

inst_90:
// rs2_h1_val == -129, rs1_h1_val == -4097
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef3fffefffaaaa;  op2val:0x400fff6ff7ffff9
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffef3fffefffaaaa, 0x400fff6ff7ffff9, x30, x1, 928, x2)

inst_91:
// rs2_h1_val == 8, rs1_h1_val == -16385
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff0008bfffffdf;  op2val:0x800010000080400
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xf7ff0008bfffffdf, 0x800010000080400, x30, x1, 944, x2)

inst_92:
// rs2_h1_val == -17, rs2_h2_val == 4
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf2000feffffdf;  op2val:0xffdf0004ffeffff8
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffbf2000feffffdf, 0xffdf0004ffeffff8, x30, x1, 960, x2)

inst_93:
// rs2_h1_val == -5, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa80003fffffef;  op2val:0x10effffffbfff9
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa80003fffffef, 0x10effffffbfff9, x30, x1, 976, x2)

inst_94:
// rs2_h1_val == -3, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff8100004000008;  op2val:0x80fffafffdfffc
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfff8100004000008, 0x80fffafffdfffc, x30, x1, 992, x2)

inst_95:
// rs2_h1_val == 16384, rs2_h2_val == 0
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x3ffffffe0040fff6;  op2val:0x09000040003fff
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x3ffffffe0040fff6, 0x09000040003fff, x30, x1, 1008, x2)

inst_96:
// rs2_h2_val == 64, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff700800005fff6;  op2val:0xfff900407ffffffb
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfff700800005fff6, 0xfff900407ffffffb, x30, x1, 1024, x2)

inst_97:
// rs1_h1_val == -129, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x09fffeff7f0006;  op2val:0x080001fffd0009
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x09fffeff7f0006, 0x080001fffd0009, x30, x1, 1040, x2)

inst_98:
// rs1_h2_val == -5, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x100fffbff7f0006;  op2val:0x05fff700088000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x100fffbff7f0006, 0x05fff700088000, x30, x1, 1056, x2)

inst_99:
// rs1_h1_val == -33, 
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ff7ffffdffffa;  op2val:0xfbfffffbfff71000
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xff7ff7ffffdffffa, 0xfbfffffbfff71000, x30, x1, 1072, x2)

inst_100:
// rs1_h3_val > 0 and rs2_h3_val < 0, rs1_h1_val == 256, rs2_h1_val == -9, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h2_val == 2048, rs1_h0_val == 21845, rs2_h0_val == 2048, rs2_h3_val == -8193
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x400fffa01005555;  op2val:0xdfff0800fff70800
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x400fffa01005555, 0xdfff0800fff70800, x30, x1, 1088, x2)

inst_101:
// rs2_h3_val == 21845, rs2_h0_val == 4, rs1_h1_val == 16384, rs2_h1_val == -33, rs1_h2_val == -16385, rs1_h3_val == -65, rs1_h0_val == -513, rs2_h2_val == 1
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfbfff4000fdff;  op2val:0x55550001ffdf0004
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xffbfbfff4000fdff, 0x55550001ffdf0004, x30, x1, 1104, x2)

inst_102:
// rs2_h3_val == 32767, rs1_h1_val == -3, rs1_h2_val == 512, rs2_h2_val == -513, rs2_h0_val == 2, rs1_h3_val == 21845, rs1_h0_val == 1
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x55550200fffd0001;  op2val:0x7ffffdfffffe0002
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0x55550200fffd0001, 0x7ffffdfffffe0002, x30, x1, 1120, x2)

inst_103:
// rs2_h3_val == -65, rs1_h1_val == 1, rs1_h2_val == -2049, rs2_h0_val == -21846
// opcode: kdmbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffaf7ff0001fff8;  op2val:0xffbffffc5555aaaa
TEST_PKRR_OP(kdmbb16, x31, x30, x29, 0x0000000000000000, 0xfffaf7ff0001fff8, 0xffbffffc5555aaaa, x30, x1, 1136, x2)
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


signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x13_0:
    .fill 34*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 144*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
