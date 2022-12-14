
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
// This assembly file tests the ksll16 instruction of the RISC-V RV64PZicsr extension for the ksll16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",ksll16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd != rs2, rs1==x24, rs2==x16, rd==x24, rs2_val == 5, rs1_h3_val == -5, rs1_h1_val == -17
// opcode: ksll16 ; op1:x24; op2:x16; dest:x24; op1val:0xfffb0009ffef0007;  op2val:0x5
TEST_PKRR_OP(ksll16, x24, x24, x16, 0x0000000000000000, 0xfffb0009ffef0007, 0x5, x24, x1, 0, x18)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x9, rs2==x13, rd==x22, rs2_val == 7, rs1_h3_val == -3, rs1_h0_val == 1
// opcode: ksll16 ; op1:x9; op2:x13; dest:x22; op1val:0xfffd000600090001;  op2val:0x7
TEST_PKRR_OP(ksll16, x22, x9, x13, 0x0000000000000000, 0xfffd000600090001, 0x7, x9, x1, 16, x18)

inst_2:
// rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x2, rs2_val == 11, rs1_h0_val == -16385, rs1_h2_val == -33, rs1_h1_val == -65, rs1_h3_val == -33
// opcode: ksll16 ; op1:x12; op2:x12; dest:x2; op1val:0xffdfffdfffbfbfff;  op2val:0xb
TEST_PKRR_OP(ksll16, x2, x12, x12, 0x0000000000000000, 0xffdfffdfffbfbfff, 0xb, x12, x1, 32, x18)

inst_3:
// rs1 == rs2 == rd, rs1==x14, rs2==x14, rd==x14, rs2_val == 13, rs1_h0_val == -5, rs1_h1_val == 64, rs1_h3_val == 8192, rs1_h2_val == -32768
// opcode: ksll16 ; op1:x14; op2:x14; dest:x14; op1val:0x200080000040fffb;  op2val:0xd
TEST_PKRR_OP(ksll16, x14, x14, x14, 0x0000000000000000, 0x200080000040fffb, 0xd, x14, x1, 48, x18)

inst_4:
// rs2 == rd != rs1, rs1==x0, rs2==x11, rd==x11, rs2_val == 14, rs1_h2_val == 2048, rs1_h0_val == 4, rs1_h3_val == -9
// opcode: ksll16 ; op1:x0; op2:x11; dest:x11; op1val:0xfff70800ffbf0004;  op2val:0xe
TEST_PKRR_OP(ksll16, x11, x0, x11, 0x0000000000000000, 0xfff70800ffbf0004, 0xe, x0, x1, 64, x18)

inst_5:
// rs1==x7, rs2==x27, rd==x26, rs2_val == 8, rs1_h2_val == 16, rs1_h1_val == -8193, rs1_h3_val == 16, rs1_h0_val == 2
// opcode: ksll16 ; op1:x7; op2:x27; dest:x26; op1val:0x100010dfff0002;  op2val:0x8
TEST_PKRR_OP(ksll16, x26, x7, x27, 0x0000000000000000, 0x100010dfff0002, 0x8, x7, x1, 80, x18)

inst_6:
// rs1==x15, rs2==x4, rd==x30, rs2_val == 4, rs1_h2_val == -1, rs1_h3_val == 2, rs1_h1_val == -33, rs1_h0_val == 21845
// opcode: ksll16 ; op1:x15; op2:x4; dest:x30; op1val:0x02ffffffdf5555;  op2val:0x4
TEST_PKRR_OP(ksll16, x30, x15, x4, 0x0000000000000000, 0x02ffffffdf5555, 0x4, x15, x1, 96, x18)

inst_7:
// rs1==x17, rs2==x21, rd==x12, rs2_val == 2, rs1_h0_val == -65, rs1_h2_val == 1, rs1_h3_val == -2049
// opcode: ksll16 ; op1:x17; op2:x21; dest:x12; op1val:0xf7ff00010005ffbf;  op2val:0x2
TEST_PKRR_OP(ksll16, x12, x17, x21, 0x0000000000000000, 0xf7ff00010005ffbf, 0x2, x17, x1, 112, x18)

inst_8:
// rs1==x28, rs2==x22, rd==x8, rs2_val == 1, rs1_h1_val == 4096, rs1_h0_val == -513, rs1_h2_val == -2
// opcode: ksll16 ; op1:x28; op2:x22; dest:x8; op1val:0xfffafffe1000fdff;  op2val:0x1
TEST_PKRR_OP(ksll16, x8, x28, x22, 0x0000000000000000, 0xfffafffe1000fdff, 0x1, x28, x1, 128, x18)

inst_9:
// rs1==x25, rs2==x19, rd==x6, rs1_h3_val == -21846, rs1_h1_val == -5, rs1_h2_val == 32, rs1_h0_val == 4096
// opcode: ksll16 ; op1:x25; op2:x19; dest:x6; op1val:0xaaaa0020fffb1000;  op2val:0xc
TEST_PKRR_OP(ksll16, x6, x25, x19, 0x0000000000000000, 0xaaaa0020fffb1000, 0xc, x25, x1, 144, x18)

inst_10:
// rs1==x21, rs2==x10, rd==x3, rs1_h3_val == 21845, rs1_h0_val == 32767, rs1_h1_val == 8192, rs1_h2_val == 128
// opcode: ksll16 ; op1:x21; op2:x10; dest:x3; op1val:0x5555008020007fff;  op2val:0xd
TEST_PKRR_OP(ksll16, x3, x21, x10, 0x0000000000000000, 0x5555008020007fff, 0xd, x21, x1, 160, x18)

inst_11:
// rs1==x30, rs2==x24, rd==x9, rs1_h3_val == 32767, rs1_h1_val == 256, rs1_h2_val == -5
// opcode: ksll16 ; op1:x30; op2:x24; dest:x9; op1val:0x7ffffffb01000002;  op2val:0xb
TEST_PKRR_OP(ksll16, x9, x30, x24, 0x0000000000000000, 0x7ffffffb01000002, 0xb, x30, x1, 176, x18)

inst_12:
// rs1==x23, rs2==x30, rd==x10, rs1_h3_val == -16385, rs1_h1_val == -1, rs1_h2_val == -3, rs1_h0_val == 128
// opcode: ksll16 ; op1:x23; op2:x30; dest:x10; op1val:0xbffffffdffff0080;  op2val:0x3
TEST_PKRR_OP(ksll16, x10, x23, x30, 0x0000000000000000, 0xbffffffdffff0080, 0x3, x23, x1, 192, x18)

inst_13:
// rs1==x11, rs2==x26, rd==x16, rs1_h3_val == -8193, rs2_val == 10, rs1_h0_val == -257
// opcode: ksll16 ; op1:x11; op2:x26; dest:x16; op1val:0xdfffffdffff8feff;  op2val:0xa
TEST_PKRR_OP(ksll16, x16, x11, x26, 0x0000000000000000, 0xdfffffdffff8feff, 0xa, x11, x1, 208, x18)

inst_14:
// rs1==x5, rs2==x3, rd==x31, rs1_h3_val == -4097, rs1_h0_val == 8192, rs1_h2_val == -4097
// opcode: ksll16 ; op1:x5; op2:x3; dest:x31; op1val:0xefffeffffffb2000;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x5, x3, 0x0000000000000000, 0xefffeffffffb2000, 0x10, x5, x1, 224, x18)
RVTEST_SIGBASE(x11,signature_x11_0)

inst_15:
// rs1==x13, rs2==x1, rd==x28, rs1_h3_val == -1025, rs1_h0_val == 64, rs1_h1_val == -2049
// opcode: ksll16 ; op1:x13; op2:x1; dest:x28; op1val:0xfbff0800f7ff0040;  op2val:0x10
TEST_PKRR_OP(ksll16, x28, x13, x1, 0x0000000000000000, 0xfbff0800f7ff0040, 0x10, x13, x11, 0, x12)

inst_16:
// rs1==x1, rs2==x5, rd==x4, rs1_h3_val == -513, rs1_h1_val == -2
// opcode: ksll16 ; op1:x1; op2:x5; dest:x4; op1val:0xfdff0001fffe5555;  op2val:0x11
TEST_PKRR_OP(ksll16, x4, x1, x5, 0x0000000000000000, 0xfdff0001fffe5555, 0x11, x1, x11, 16, x12)

inst_17:
// rs1==x22, rs2==x6, rd==x23, rs1_h3_val == -257, rs1_h2_val == 1024, rs1_h0_val == -2
// opcode: ksll16 ; op1:x22; op2:x6; dest:x23; op1val:0xfeff04000100fffe;  op2val:0xe
TEST_PKRR_OP(ksll16, x23, x22, x6, 0x0000000000000000, 0xfeff04000100fffe, 0xe, x22, x11, 32, x12)

inst_18:
// rs1==x8, rs2==x31, rd==x17, rs1_h3_val == -129, 
// opcode: ksll16 ; op1:x8; op2:x31; dest:x17; op1val:0xff7f040020000009;  op2val:0x13
TEST_PKRR_OP(ksll16, x17, x8, x31, 0x0000000000000000, 0xff7f040020000009, 0x13, x8, x11, 48, x12)

inst_19:
// rs1==x6, rs2==x7, rd==x5, rs1_h3_val == -65, rs1_h2_val == 8, rs1_h1_val == 16384
// opcode: ksll16 ; op1:x6; op2:x7; dest:x5; op1val:0xffbf000840000004;  op2val:0x6
TEST_PKRR_OP(ksll16, x5, x6, x7, 0x0000000000000000, 0xffbf000840000004, 0x6, x6, x11, 64, x12)

inst_20:
// rs1==x2, rs2==x0, rd==x7, rs1_h3_val == -17, rs1_h2_val == -513
// opcode: ksll16 ; op1:x2; op2:x0; dest:x7; op1val:0xffeffdffffbffffe;  op2val:0x0
TEST_PKRR_OP(ksll16, x7, x2, x0, 0x0000000000000000, 0xffeffdffffbffffe, 0x0, x2, x11, 80, x12)

inst_21:
// rs1==x10, rs2==x8, rd==x0, rs1_h3_val == -2, rs1_h2_val == 16384, rs1_h0_val == 16
// opcode: ksll16 ; op1:x10; op2:x8; dest:x0; op1val:0xfffe4000fffb0010;  op2val:0x10
TEST_PKRR_OP(ksll16, x0, x10, x8, 0x0000000000000000, 0xfffe4000fffb0010, 0x10, x10, x11, 96, x12)

inst_22:
// rs1==x29, rs2==x20, rd==x1, rs1_h3_val == -32768, rs1_h1_val == -513, rs1_h0_val == -8193
// opcode: ksll16 ; op1:x29; op2:x20; dest:x1; op1val:0x80003ffffdffdfff;  op2val:0xb
TEST_PKRR_OP(ksll16, x1, x29, x20, 0x0000000000000000, 0x80003ffffdffdfff, 0xb, x29, x11, 112, x12)

inst_23:
// rs1==x16, rs2==x23, rd==x20, rs1_h3_val == 16384, rs1_h0_val == 256
// opcode: ksll16 ; op1:x16; op2:x23; dest:x20; op1val:0x40000080c0000100;  op2val:0x5
TEST_PKRR_OP(ksll16, x20, x16, x23, 0x0000000000000000, 0x40000080c0000100, 0x5, x16, x11, 128, x12)

inst_24:
// rs1==x18, rs2==x17, rd==x19, rs1_h3_val == 4096, rs1_h1_val == -4097
// opcode: ksll16 ; op1:x18; op2:x17; dest:x19; op1val:0x10000020efffdfff;  op2val:0x11
TEST_PKRR_OP(ksll16, x19, x18, x17, 0x0000000000000000, 0x10000020efffdfff, 0x11, x18, x11, 144, x12)

inst_25:
// rs1==x27, rs2==x28, rd==x15, rs1_h3_val == 2048, 
// opcode: ksll16 ; op1:x27; op2:x28; dest:x15; op1val:0x800fffc0006dfff;  op2val:0x6
TEST_PKRR_OP(ksll16, x15, x27, x28, 0x0000000000000000, 0x800fffc0006dfff, 0x6, x27, x11, 160, x12)

inst_26:
// rs1==x3, rs2==x29, rd==x27, rs1_h3_val == 1024, rs1_h2_val == -16385, rs1_h0_val == -129
// opcode: ksll16 ; op1:x3; op2:x29; dest:x27; op1val:0x400bfff2000ff7f;  op2val:0xd
TEST_PKRR_OP(ksll16, x27, x3, x29, 0x0000000000000000, 0x400bfff2000ff7f, 0xd, x3, x11, 176, x12)

inst_27:
// rs1==x26, rs2==x25, rd==x21, rs1_h3_val == 512, rs1_h1_val == 2048, rs1_h2_val == -129
// opcode: ksll16 ; op1:x26; op2:x25; dest:x21; op1val:0x200ff7f0800bfff;  op2val:0x7
TEST_PKRR_OP(ksll16, x21, x26, x25, 0x0000000000000000, 0x200ff7f0800bfff, 0x7, x26, x11, 192, x12)

inst_28:
// rs1==x4, rs2==x2, rd==x25, rs1_h3_val == 256, rs1_h0_val == 32, rs1_h1_val == -32768
// opcode: ksll16 ; op1:x4; op2:x2; dest:x25; op1val:0x100400080000020;  op2val:0x7
TEST_PKRR_OP(ksll16, x25, x4, x2, 0x0000000000000000, 0x100400080000020, 0x7, x4, x11, 208, x12)

inst_29:
// rs1==x20, rs2==x15, rd==x13, rs1_h0_val == -33, rs1_h3_val == 0, rs1_h2_val == 4
// opcode: ksll16 ; op1:x20; op2:x15; dest:x13; op1val:0x000004fffaffdf;  op2val:0xe
TEST_PKRR_OP(ksll16, x13, x20, x15, 0x0000000000000000, 0x000004fffaffdf, 0xe, x20, x11, 224, x12)

inst_30:
// rs1==x31, rs2==x18, rd==x29, rs1_h0_val == -17, rs1_h1_val == 32767
// opcode: ksll16 ; op1:x31; op2:x18; dest:x29; op1val:0xff7f00807fffffef;  op2val:0x7
TEST_PKRR_OP(ksll16, x29, x31, x18, 0x0000000000000000, 0xff7f00807fffffef, 0x7, x31, x11, 240, x12)

inst_31:
// rs1==x19, rs2==x9, rd==x18, rs1_h0_val == -9, rs1_h1_val == -257
// opcode: ksll16 ; op1:x19; op2:x9; dest:x18; op1val:0xfffd0020fefffff7;  op2val:0x13
TEST_PKRR_OP(ksll16, x18, x19, x9, 0x0000000000000000, 0xfffd0020fefffff7, 0x13, x19, x11, 256, x12)

inst_32:
// rs1_h0_val == -3, rs1_h2_val == -1025
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fbfff7fffffd;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfff9fbfff7fffffd, 0x10, x30, x11, 272, x2)
RVTEST_SIGBASE(x1,signature_x1_2)

inst_33:
// rs1_h0_val == -32768, rs1_h1_val == 8
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef001000088000;  op2val:0x1
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xffef001000088000, 0x1, x30, x1, 0, x2)

inst_34:
// rs1_h0_val == 16384, rs1_h1_val == 128
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000fffd00804000;  op2val:0x11
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xc000fffd00804000, 0x11, x30, x1, 16, x2)

inst_35:
// rs1_h0_val == 2048, rs1_h1_val == 4
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff002000040800;  op2val:0x9
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x7fff002000040800, 0x9, x30, x1, 32, x2)

inst_36:
// rs1_h0_val == 1024, rs1_h1_val == -21846, rs1_h2_val == -2049
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaf7ffaaaa0400;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xaaaaf7ffaaaa0400, 0x7, x30, x1, 48, x2)

inst_37:
// rs1_h0_val == 512, rs1_h2_val == -257
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfefffeff0200;  op2val:0xb
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfffbfefffeff0200, 0xb, x30, x1, 64, x2)

inst_38:
// rs1_h0_val == 8, rs1_h3_val == 128
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x800009fff60008;  op2val:0x11
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x800009fff60008, 0x11, x30, x1, 80, x2)

inst_39:
// rs1_h0_val == 0, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xeffffffb00030000;  op2val:0x0
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xeffffffb00030000, 0x0, x30, x1, 96, x2)

inst_40:
// rs1_h0_val == -1, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x05fffa7fffffff;  op2val:0x13
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x05fffa7fffffff, 0x13, x30, x1, 112, x2)

inst_41:
// rs1_h3_val == 64, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x40c0000007ff7f;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x40c0000007ff7f, 0x10, x30, x1, 128, x2)

inst_42:
// rs1_h3_val == 32, rs1_h2_val == -17
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x20ffeffffa5555;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x20ffeffffa5555, 0x7, x30, x1, 144, x2)

inst_43:
// rs1_h3_val == 8, rs1_h1_val == 0
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x0800090000ff7f;  op2val:0x4
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x0800090000ff7f, 0x4, x30, x1, 160, x2)

inst_44:
// rs1_h3_val == 4, rs1_h2_val == -8193, rs1_h1_val == 32
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x04dfff0020dfff;  op2val:0xa
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x04dfff0020dfff, 0xa, x30, x1, 176, x2)

inst_45:
// rs1_h2_val == 8192, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc200000400800;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfffc200000400800, 0x8, x30, x1, 192, x2)

inst_46:
// rs1_h2_val == 4096, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x100010000008ffef;  op2val:0x8
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x100010000008ffef, 0x8, x30, x1, 208, x2)

inst_47:
// rs1_h2_val == 512, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x0002000800fffd;  op2val:0x1
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x0002000800fffd, 0x1, x30, x1, 224, x2)

inst_48:
// rs1_h2_val == 256, rs1_h1_val == 21845
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000010055553fff;  op2val:0x12
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x2000010055553fff, 0x12, x30, x1, 240, x2)

inst_49:
// rs1_h2_val == 64, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff700403fff0800;  op2val:0x7
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfff700403fff0800, 0x7, x30, x1, 256, x2)

inst_50:
// rs1_h2_val == 2, rs1_h1_val == 1
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff000200010100;  op2val:0xe
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfbff000200010100, 0xe, x30, x1, 272, x2)

inst_51:
// rs1_h2_val == 0, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x80000000dffffdff;  op2val:0x1
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x80000000dffffdff, 0x1, x30, x1, 288, x2)

inst_52:
// rs1_h1_val == -16385, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x08c000bfff4000;  op2val:0xa
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x08c000bfff4000, 0xa, x30, x1, 304, x2)

inst_53:
// rs1_h1_val == -1025, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x051000fbff0009;  op2val:0xf
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x051000fbff0009, 0xf, x30, x1, 320, x2)

inst_54:
// rs1_h1_val == -129, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x03ff7fff7f7fff;  op2val:0xd
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x03ff7fff7f7fff, 0xd, x30, x1, 336, x2)

inst_55:
// rs1_h1_val == -9, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x001000fff70001;  op2val:0x3
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x001000fff70001, 0x3, x30, x1, 352, x2)

inst_56:
// rs1_h1_val == -3, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0003fffd0020;  op2val:0x11
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfffb0003fffd0020, 0x11, x30, x1, 368, x2)

inst_57:
// rs1_h1_val == 1024, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x09fff804007fff;  op2val:0x13
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x09fff804007fff, 0x13, x30, x1, 384, x2)

inst_58:
// rs1_h1_val == 512, rs1_h3_val == 1
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x01000302000003;  op2val:0xc
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x01000302000003, 0xc, x30, x1, 400, x2)

inst_59:
// rs1_h0_val == -2049, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fff8ff7ff7ff;  op2val:0x2
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x00fff8ff7ff7ff, 0x2, x30, x1, 416, x2)

inst_60:
// rs1_h3_val == -1, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff3fffbffffffc;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xffff3fffbffffffc, 0x10, x30, x1, 432, x2)

inst_61:
// rs1_h2_val == -21846, rs1_h0_val == -21846
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x06aaaa3fffaaaa;  op2val:0x3
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x06aaaa3fffaaaa, 0x3, x30, x1, 448, x2)

inst_62:
// rs1_h2_val == 21845, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x1055550000ffff;  op2val:0x2
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x1055550000ffff, 0x2, x30, x1, 464, x2)

inst_63:
// rs1_h1_val == 2, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfc0000002f7ff;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xffbfc0000002f7ff, 0x10, x30, x1, 480, x2)

inst_64:
// rs1_h2_val == -65, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffbfefff0007;  op2val:0xa
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfdffffbfefff0007, 0xa, x30, x1, 496, x2)

inst_65:
// rs1_h0_val == -4097, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff00001000efff;  op2val:0xd
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xdfff00001000efff, 0xd, x30, x1, 512, x2)

inst_66:
// rs1_h2_val == -9, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fff70008dfff;  op2val:0xe
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x1000fff70008dfff, 0xe, x30, x1, 528, x2)

inst_67:
// rs1_h0_val == -1025, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000008ffbffbff;  op2val:0xf
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x8000008ffbffbff, 0xf, x30, x1, 544, x2)

inst_68:
// rs1_h1_val == 16, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fffd0010fff8;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x00fffd0010fff8, 0x10, x30, x1, 560, x2)

inst_69:
// rs1_h2_val == 32767, 
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x037fffffdf0003;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x037fffffdf0003, 0x10, x30, x1, 576, x2)

inst_70:
// rs2_val == 11, rs1_h0_val == -16385, rs1_h2_val == -33, rs1_h1_val == -65, rs1_h3_val == -33
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffdfffbfbfff;  op2val:0xb
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xffdfffdfffbfbfff, 0xb, x30, x1, 592, x2)

inst_71:
// rs2_val == 13, rs1_h0_val == -5, rs1_h1_val == 64, rs1_h3_val == 8192, rs1_h2_val == -32768
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0x200080000040fffb;  op2val:0xd
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0x200080000040fffb, 0xd, x30, x1, 608, x2)

inst_72:
// rs1_h3_val == -17, rs1_h2_val == -513
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffdffffbffffe;  op2val:0x11
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xffeffdffffbffffe, 0x11, x30, x1, 624, x2)

inst_73:
// rs1_h3_val == -2, rs1_h2_val == 16384, rs1_h0_val == 16
// opcode: ksll16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe4000fffb0010;  op2val:0x10
TEST_PKRR_OP(ksll16, x31, x30, x29, 0x0000000000000000, 0xfffe4000fffb0010, 0x10, x30, x1, 640, x2)
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


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x11_0:
    .fill 36*(XLEN/32),4,0xdeadbeef


signature_x1_2:
    .fill 82*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
