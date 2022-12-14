
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
// This assembly file tests the kmmwb2.u instruction of the RISC-V RV64PZicsr extension for the kmmwb2.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kmmwb2.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd != rs2, rs1==x6, rs2==x29, rd==x6, rs1_w0_val == -2147483648, rs2_h1_val == -3, rs2_h0_val == 1024, rs1_w1_val == 4096
// opcode: kmmwb2.u ; op1:x6; op2:x29; dest:x6; op1val:0x00100080000000;  op2val:0xfffc0009fffd0400
TEST_PKRR_OP(kmmwb2.u, x6, x6, x29, 0x0000000000000000, 0x00100080000000, 0xfffc0009fffd0400, x6, x1, 0, x10)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x5, rd==x13, rs2_h3_val == -21846, rs1_w1_val == -1431655766, rs1_w0_val == 2
// opcode: kmmwb2.u ; op1:x26; op2:x5; dest:x13; op1val:0xaaaaaaaa00000002;  op2val:0xaaaa0003fffd0003
TEST_PKRR_OP(kmmwb2.u, x13, x26, x5, 0x0000000000000000, 0xaaaaaaaa00000002, 0xaaaa0003fffd0003, x26, x1, 16, x10)

inst_2:
// rs1 == rs2 != rd, rs1==x24, rs2==x24, rd==x2, rs2_h3_val == 21845, rs1_w1_val == -32769, rs1_w0_val == 4096, rs2_h0_val == 1, rs2_h1_val == -129, rs2_h2_val == 8192
// opcode: kmmwb2.u ; op1:x24; op2:x24; dest:x2; op1val:0xffff7fff00001000;  op2val:0x55552000ff7f0001
TEST_PKRR_OP(kmmwb2.u, x2, x24, x24, 0x0000000000000000, 0xffff7fff00001000, 0x55552000ff7f0001, x24, x1, 32, x10)

inst_3:
// rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs2_h3_val == 32767, rs1_w0_val == 256
// opcode: kmmwb2.u ; op1:x4; op2:x4; dest:x4; op1val:0x00000900000100;  op2val:0x7fff000900070009
TEST_PKRR_OP(kmmwb2.u, x4, x4, x4, 0x0000000000000000, 0x00000900000100, 0x7fff000900070009, x4, x1, 48, x10)

inst_4:
// rs2 == rd != rs1, rs1==x29, rs2==x23, rd==x23, rs2_h3_val == -16385, rs2_h0_val == 16384, rs1_w0_val == -268435457, rs2_h1_val == -33, rs2_h2_val == 1
// opcode: kmmwb2.u ; op1:x29; op2:x23; dest:x23; op1val:0xc0000000efffffff;  op2val:0xbfff0001ffdf4000
TEST_PKRR_OP(kmmwb2.u, x23, x29, x23, 0x0000000000000000, 0xc0000000efffffff, 0xbfff0001ffdf4000, x29, x1, 64, x10)

inst_5:
// rs1==x20, rs2==x21, rd==x26, rs2_h3_val == -8193, rs2_h1_val == 1024, rs1_w0_val == -1048577, rs2_h2_val == 32767, rs1_w1_val == 0, rs2_h0_val == -65
// opcode: kmmwb2.u ; op1:x20; op2:x21; dest:x26; op1val:0x000000ffefffff;  op2val:0xdfff7fff0400ffbf
TEST_PKRR_OP(kmmwb2.u, x26, x20, x21, 0x0000000000000000, 0x000000ffefffff, 0xdfff7fff0400ffbf, x20, x1, 80, x10)

inst_6:
// rs1==x18, rs2==x12, rd==x27, rs2_h3_val == -4097, rs1_w1_val == -5, rs2_h0_val == -9, rs1_w0_val == -1431655766
// opcode: kmmwb2.u ; op1:x18; op2:x12; dest:x27; op1val:0xfffffffbaaaaaaaa;  op2val:0xefff00070400fff7
TEST_PKRR_OP(kmmwb2.u, x27, x18, x12, 0x0000000000000000, 0xfffffffbaaaaaaaa, 0xefff00070400fff7, x18, x1, 96, x10)

inst_7:
// rs1==x23, rs2==x13, rd==x5, rs2_h3_val == -2049, rs2_h2_val == 16, rs2_h0_val == -2, rs2_h1_val == 8
// opcode: kmmwb2.u ; op1:x23; op2:x13; dest:x5; op1val:0x001000fffffffc;  op2val:0xf7ff00100008fffe
TEST_PKRR_OP(kmmwb2.u, x5, x23, x13, 0x0000000000000000, 0x001000fffffffc, 0xf7ff00100008fffe, x23, x1, 112, x10)

inst_8:
// rs1==x28, rs2==x27, rd==x24, rs2_h3_val == -1025, rs2_h0_val == 16, rs1_w1_val == -4194305, rs2_h1_val == -9
// opcode: kmmwb2.u ; op1:x28; op2:x27; dest:x24; op1val:0xffbfffff00000009;  op2val:0xfbff0005fff70010
TEST_PKRR_OP(kmmwb2.u, x24, x28, x27, 0x0000000000000000, 0xffbfffff00000009, 0xfbff0005fff70010, x28, x1, 128, x10)

inst_9:
// rs1==x22, rs2==x25, rd==x30, rs2_h3_val == -513, rs1_w1_val == -257, rs2_h0_val == 8, rs2_h1_val == -1, rs2_h2_val == -2, rs1_w0_val == -134217729
// opcode: kmmwb2.u ; op1:x22; op2:x25; dest:x30; op1val:0xfffffefff7ffffff;  op2val:0xfdfffffeffff0008
TEST_PKRR_OP(kmmwb2.u, x30, x22, x25, 0x0000000000000000, 0xfffffefff7ffffff, 0xfdfffffeffff0008, x22, x1, 144, x10)

inst_10:
// rs1==x9, rs2==x22, rd==x20, rs2_h3_val == -257, rs1_w0_val == -4194305, rs2_h0_val == -33, rs1_w1_val == -513, rs2_h1_val == 64
// opcode: kmmwb2.u ; op1:x9; op2:x22; dest:x20; op1val:0xfffffdffffbfffff;  op2val:0xfeff00090040ffdf
TEST_PKRR_OP(kmmwb2.u, x20, x9, x22, 0x0000000000000000, 0xfffffdffffbfffff, 0xfeff00090040ffdf, x9, x1, 160, x10)

inst_11:
// rs1==x13, rs2==x26, rd==x25, rs2_h3_val == -129, rs1_w1_val == -16385, rs2_h1_val == -8193, rs2_h2_val == -21846, rs1_w0_val == 32768
// opcode: kmmwb2.u ; op1:x13; op2:x26; dest:x25; op1val:0xffffbfff00008000;  op2val:0xff7faaaadffffff7
TEST_PKRR_OP(kmmwb2.u, x25, x13, x26, 0x0000000000000000, 0xffffbfff00008000, 0xff7faaaadffffff7, x13, x1, 176, x10)

inst_12:
// rs1==x8, rs2==x3, rd==x15, rs2_h3_val == -65, rs1_w0_val == -1, rs2_h1_val == 8192, rs2_h2_val == -32768
// opcode: kmmwb2.u ; op1:x8; op2:x3; dest:x15; op1val:0x000005ffffffff;  op2val:0xffbf800020000010
TEST_PKRR_OP(kmmwb2.u, x15, x8, x3, 0x0000000000000000, 0x000005ffffffff, 0xffbf800020000010, x8, x1, 192, x10)

inst_13:
// rs1==x0, rs2==x7, rd==x11, rs2_h3_val == -33, rs1_w0_val == 524288, rs1_w1_val == 8388608, rs2_h2_val == 1024, rs2_h0_val == 0
// opcode: kmmwb2.u ; op1:x0; op2:x7; dest:x11; op1val:0x80000000080000;  op2val:0xffdf040000090000
TEST_PKRR_OP(kmmwb2.u, x11, x0, x7, 0x0000000000000000, 0x80000000080000, 0xffdf040000090000, x0, x1, 208, x10)

inst_14:
// rs1==x15, rs2==x16, rd==x14, rs2_h3_val == -17, rs2_h2_val == -4097, rs2_h0_val == -5
// opcode: kmmwb2.u ; op1:x15; op2:x16; dest:x14; op1val:0xfffffff680000000;  op2val:0xffefefff0006fffb
TEST_PKRR_OP(kmmwb2.u, x14, x15, x16, 0x0000000000000000, 0xfffffff680000000, 0xffefefff0006fffb, x15, x1, 224, x10)

inst_15:
// rs1==x31, rs2==x19, rd==x21, rs2_h3_val == -9, rs1_w0_val == -536870913, rs2_h2_val == -513, rs1_w1_val == 268435456
// opcode: kmmwb2.u ; op1:x31; op2:x19; dest:x21; op1val:0x10000000dfffffff;  op2val:0xfff7fdff04000010
TEST_PKRR_OP(kmmwb2.u, x21, x31, x19, 0x0000000000000000, 0x10000000dfffffff, 0xfff7fdff04000010, x31, x1, 240, x13)
RVTEST_SIGBASE(x4,signature_x4_0)

inst_16:
// rs1==x17, rs2==x1, rd==x7, rs2_h3_val == -5, rs1_w0_val == -67108865, rs2_h1_val == -2049
// opcode: kmmwb2.u ; op1:x17; op2:x1; dest:x7; op1val:0xfffffffafbffffff;  op2val:0xfffbfffaf7fffff9
TEST_PKRR_OP(kmmwb2.u, x7, x17, x1, 0x0000000000000000, 0xfffffffafbffffff, 0xfffbfffaf7fffff9, x17, x4, 0, x13)

inst_17:
// rs1==x10, rs2==x30, rd==x31, rs2_h3_val == -3, rs2_h0_val == -17
// opcode: kmmwb2.u ; op1:x10; op2:x30; dest:x31; op1val:0xfffffdfffffffff9;  op2val:0xfffdfff8dfffffef
TEST_PKRR_OP(kmmwb2.u, x31, x10, x30, 0x0000000000000000, 0xfffffdfffffffff9, 0xfffdfff8dfffffef, x10, x4, 16, x13)

inst_18:
// rs1==x12, rs2==x17, rd==x10, rs2_h3_val == -2, rs1_w1_val == 2, rs2_h2_val == 4096, rs2_h0_val == 21845, rs2_h1_val == -4097
// opcode: kmmwb2.u ; op1:x12; op2:x17; dest:x10; op1val:0x00000200000007;  op2val:0xfffe1000efff5555
TEST_PKRR_OP(kmmwb2.u, x10, x12, x17, 0x0000000000000000, 0x00000200000007, 0xfffe1000efff5555, x12, x4, 32, x13)

inst_19:
// rs1==x16, rs2==x6, rd==x3, rs2_h3_val == -32768, rs1_w1_val == -2147483648, rs2_h0_val == 256, rs2_h2_val == -129
// opcode: kmmwb2.u ; op1:x16; op2:x6; dest:x3; op1val:0x80000000aaaaaaaa;  op2val:0x8000ff7fffdf0100
TEST_PKRR_OP(kmmwb2.u, x3, x16, x6, 0x0000000000000000, 0x80000000aaaaaaaa, 0x8000ff7fffdf0100, x16, x4, 48, x13)

inst_20:
// rs1==x14, rs2==x20, rd==x19, rs2_h3_val == 16384, rs1_w0_val == 134217728, rs2_h0_val == -1025, rs2_h2_val == 256
// opcode: kmmwb2.u ; op1:x14; op2:x20; dest:x19; op1val:0xfffffeff08000000;  op2val:0x400001000003fbff
TEST_PKRR_OP(kmmwb2.u, x19, x14, x20, 0x0000000000000000, 0xfffffeff08000000, 0x400001000003fbff, x14, x4, 64, x13)

inst_21:
// rs1==x27, rs2==x15, rd==x1, rs2_h3_val == 8192, rs2_h1_val == -257, rs1_w0_val == 65536, rs1_w1_val == 2097152
// opcode: kmmwb2.u ; op1:x27; op2:x15; dest:x1; op1val:0x20000000010000;  op2val:0x2000ff7ffefffbff
TEST_PKRR_OP(kmmwb2.u, x1, x27, x15, 0x0000000000000000, 0x20000000010000, 0x2000ff7ffefffbff, x27, x4, 80, x13)

inst_22:
// rs1==x5, rs2==x2, rd==x9, rs2_h3_val == 4096, rs1_w1_val == 32, rs2_h2_val == -33, rs2_h1_val == 32767, rs2_h0_val == 512
// opcode: kmmwb2.u ; op1:x5; op2:x2; dest:x9; op1val:0x000020efffffff;  op2val:0x1000ffdf7fff0200
TEST_PKRR_OP(kmmwb2.u, x9, x5, x2, 0x0000000000000000, 0x000020efffffff, 0x1000ffdf7fff0200, x5, x4, 96, x13)

inst_23:
// rs1==x25, rs2==x28, rd==x22, rs2_h3_val == 2048, rs1_w1_val == 1048576
// opcode: kmmwb2.u ; op1:x25; op2:x28; dest:x22; op1val:0x10000000000003;  op2val:0x800c0000006fff8
TEST_PKRR_OP(kmmwb2.u, x22, x25, x28, 0x0000000000000000, 0x10000000000003, 0x800c0000006fff8, x25, x4, 112, x13)

inst_24:
// rs1==x3, rs2==x0, rd==x16, rs2_h3_val == 1024, rs2_h2_val == 16384, rs2_h1_val == 21845, rs1_w0_val == 0
// opcode: kmmwb2.u ; op1:x3; op2:x0; dest:x16; op1val:0xffffbfff00000000;  op2val:0x400400055550100
TEST_PKRR_OP(kmmwb2.u, x16, x3, x0, 0x0000000000000000, 0xffffbfff00000000, 0x400400055550100, x3, x4, 128, x13)

inst_25:
// rs1==x30, rs2==x31, rd==x17, rs2_h3_val == 512, rs2_h2_val == -17, rs1_w0_val == -524289, rs1_w1_val == 1431655765
// opcode: kmmwb2.u ; op1:x30; op2:x31; dest:x17; op1val:0x55555555fff7ffff;  op2val:0x200ffefffdffffa
TEST_PKRR_OP(kmmwb2.u, x17, x30, x31, 0x0000000000000000, 0x55555555fff7ffff, 0x200ffefffdffffa, x30, x4, 144, x13)

inst_26:
// rs1==x2, rs2==x10, rd==x28, rs2_h3_val == 256, rs2_h1_val == -1025, rs1_w0_val == -5, rs1_w1_val == -536870913, rs2_h2_val == 0
// opcode: kmmwb2.u ; op1:x2; op2:x10; dest:x28; op1val:0xdffffffffffffffb;  op2val:0x1000000fbfffffe
TEST_PKRR_OP(kmmwb2.u, x28, x2, x10, 0x0000000000000000, 0xdffffffffffffffb, 0x1000000fbfffffe, x2, x4, 160, x13)

inst_27:
// rs1==x1, rs2==x11, rd==x8, rs2_h3_val == 128, rs2_h2_val == 8, rs1_w0_val == -8388609
// opcode: kmmwb2.u ; op1:x1; op2:x11; dest:x8; op1val:0x100000ff7fffff;  op2val:0x800008fbfffff7
TEST_PKRR_OP(kmmwb2.u, x8, x1, x11, 0x0000000000000000, 0x100000ff7fffff, 0x800008fbfffff7, x1, x4, 176, x13)

inst_28:
// rs1==x19, rs2==x9, rd==x29, rs2_h3_val == 64, rs1_w1_val == -1073741825
// opcode: kmmwb2.u ; op1:x19; op2:x9; dest:x29; op1val:0xbffffffffbffffff;  op2val:0x40aaaa0005fff8
TEST_PKRR_OP(kmmwb2.u, x29, x19, x9, 0x0000000000000000, 0xbffffffffbffffff, 0x40aaaa0005fff8, x19, x4, 192, x13)

inst_29:
// rs1==x21, rs2==x18, rd==x0, rs2_h3_val == 32, rs1_w1_val == 8192, rs2_h0_val == -3
// opcode: kmmwb2.u ; op1:x21; op2:x18; dest:x0; op1val:0x00200000000005;  op2val:0x20fff9f7fffffd
TEST_PKRR_OP(kmmwb2.u, x0, x21, x18, 0x0000000000000000, 0x00200000000005, 0x20fff9f7fffffd, x21, x4, 208, x13)

inst_30:
// rs1==x11, rs2==x8, rd==x18, rs2_h3_val == 16, rs2_h1_val == -5, rs1_w1_val == -2
// opcode: kmmwb2.u ; op1:x11; op2:x8; dest:x18; op1val:0xfffffffefffffff6;  op2val:0x10fffefffbfbff
TEST_PKRR_OP(kmmwb2.u, x18, x11, x8, 0x0000000000000000, 0xfffffffefffffff6, 0x10fffefffbfbff, x11, x4, 224, x1)

inst_31:
// rs1==x7, rs2==x14, rd==x12, rs2_h3_val == 8, rs1_w1_val == -8193, rs2_h0_val == -32768
// opcode: kmmwb2.u ; op1:x7; op2:x14; dest:x12; op1val:0xffffdfff00000006;  op2val:0x08ffdf20008000
TEST_PKRR_OP(kmmwb2.u, x12, x7, x14, 0x0000000000000000, 0xffffdfff00000006, 0x08ffdf20008000, x7, x4, 240, x1)

inst_32:
// rs2_h3_val == 4, rs1_w0_val == 1024, rs2_h2_val == -3
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000900000400;  op2val:0x04fffd00090003
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000900000400, 0x04fffd00090003, x30, x4, 256, x1)

inst_33:
// rs2_h3_val == 2, rs1_w1_val == -17
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffeffffffff8;  op2val:0x020005efff0008
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffeffffffff8, 0x020005efff0008, x30, x4, 272, x1)

inst_34:
// rs2_h3_val == 1, rs2_h2_val == -8193, rs1_w0_val == 1431655765
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000555555555;  op2val:0x01dffff7ff0005
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000555555555, 0x01dffff7ff0005, x30, x4, 288, x1)

inst_35:
// rs2_h3_val == 0, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff00010000;  op2val:0x00fff9fbff0000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffeff00010000, 0x00fff9fbff0000, x30, x4, 304, x1)

inst_36:
// rs2_h3_val == -1, rs1_w1_val == 131072, rs2_h0_val == 2048
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x020000ffffffff;  op2val:0xffff3ffffffb0800
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x020000ffffffff, 0xffff3ffffffb0800, x30, x4, 320, x1)

inst_37:
// rs2_h2_val == 21845, rs1_w0_val == -16385, rs1_w1_val == -3, rs2_h1_val == 16, rs2_h0_val == 32767
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdffffbfff;  op2val:0xffff555500107fff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffffdffffbfff, 0xffff555500107fff, x30, x4, 336, x1)

inst_38:
// rs2_h2_val == -16385, rs1_w1_val == 256
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00010000000007;  op2val:0xfffebfff55558000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00010000000007, 0xfffebfff55558000, x30, x4, 352, x1)

inst_39:
// rs2_h2_val == -2049, rs1_w1_val == 4, rs2_h0_val == -257
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000400080000;  op2val:0x08f7fffefffeff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000400080000, 0x08f7fffefffeff, x30, x4, 368, x1)

inst_40:
// rs2_h2_val == -1025, rs2_h1_val == 2, rs1_w1_val == 4194304, rs2_h0_val == 4, rs1_w0_val == -33554433
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x400000fdffffff;  op2val:0x03fbff00020004
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x400000fdffffff, 0x03fbff00020004, x30, x4, 384, x1)

inst_41:
// rs2_h2_val == -257, rs2_h1_val == -65, rs1_w0_val == -513
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdfffffdff;  op2val:0xfffefeffffbfffbf
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffffdfffffdff, 0xfffefeffffbfffbf, x30, x4, 400, x1)

inst_42:
// rs1_w0_val == 2097152, rs1_w1_val == 8
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000800200000;  op2val:0xf7ff0008fff6ffdf
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000800200000, 0xf7ff0008fff6ffdf, x30, x4, 416, x1)

inst_43:
// rs1_w0_val == 1048576, rs2_h1_val == -2, rs2_h0_val == -21846
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x02000000100000;  op2val:0xfffe0008fffeaaaa
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x02000000100000, 0xfffe0008fffeaaaa, x30, x4, 432, x1)

inst_44:
// rs1_w0_val == 262144, rs2_h0_val == -16385, rs2_h1_val == 1, rs1_w1_val == -268435457
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff00040000;  op2val:0xfff810000001bfff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xefffffff00040000, 0xfff810000001bfff, x30, x4, 448, x1)

inst_45:
// rs1_w0_val == 131072, rs1_w1_val == 33554432, rs2_h1_val == -32768
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000000020000;  op2val:0x05ffef80005555
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x200000000020000, 0x05ffef80005555, x30, x4, 464, x1)

inst_46:
// rs1_w0_val == 16384, rs2_h1_val == 32
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff00004000;  op2val:0xfefff7ff0020fffe
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xbfffffff00004000, 0xfefff7ff0020fffe, x30, x4, 480, x1)

inst_47:
// rs1_w0_val == 8192, rs1_w1_val == -134217729
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff00002000;  op2val:0x2000ffdf00400200
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xf7ffffff00002000, 0x2000ffdf00400200, x30, x4, 496, x1)

inst_48:
// rs1_w0_val == 2048, rs2_h2_val == -9, rs1_w1_val == -8388609
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffff00000800;  op2val:0xfdfffff70007ffdf
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xff7fffff00000800, 0xfdfffff70007ffdf, x30, x4, 512, x1)

inst_49:
// rs1_w0_val == 512, rs2_h1_val == -16385
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x02000000000200;  op2val:0xbfff8000bfffffef
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x02000000000200, 0xbfff8000bfffffef, x30, x4, 528, x1)

inst_50:
// rs1_w0_val == 128, rs2_h0_val == 64, rs1_w1_val == -129
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f00000080;  op2val:0xaaaaff7fffbf0040
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffff7f00000080, 0xaaaaff7fffbf0040, x30, x4, 544, x1)

inst_51:
// rs1_w0_val == 64, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000200000040;  op2val:0xffeffbff5555feff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000200000040, 0xffeffbff5555feff, x30, x4, 560, x1)

inst_52:
// rs1_w0_val == 32, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff00000020;  op2val:0x07fffdfffcfbff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffdff00000020, 0x07fffdfffcfbff, x30, x4, 576, x1)

inst_53:
// rs1_w0_val == 16, rs2_h0_val == -4097
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaa00000010;  op2val:0xffef3ffffffeefff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaa00000010, 0xffef3ffffffeefff, x30, x4, 592, x1)

inst_54:
// rs1_w0_val == 8, rs2_h0_val == -513
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff00000008;  op2val:0x4000fffd5555fdff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffeff00000008, 0x4000fffd5555fdff, x30, x4, 608, x1)

inst_55:
// rs1_w0_val == 4, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff00000004;  op2val:0xfffafffe80000400
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xf7ffffff00000004, 0xfffafffe80000400, x30, x4, 624, x1)

inst_56:
// rs1_w0_val == 1, rs2_h1_val == 512, rs1_w1_val == 512
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00020000000001;  op2val:0xfff9fffe02008000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00020000000001, 0xfff9fffe02008000, x30, x4, 640, x1)

inst_57:
// rs2_h2_val == -65, rs1_w1_val == 2048
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00080000000009;  op2val:0x01ffbfffdf0001
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00080000000009, 0x01ffbfffdf0001, x30, x4, 656, x1)

inst_58:
// rs2_h2_val == -5, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000400000040;  op2val:0x80fffb00400009
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000400000040, 0x80fffb00400009, x30, x4, 672, x1)

inst_59:
// rs2_h2_val == 2048, rs2_h1_val == 2048
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f00040000;  op2val:0x4008000800fdff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffff7f00040000, 0x4008000800fdff, x30, x4, 688, x1)

inst_60:
// rs2_h2_val == 512, rs2_h0_val == 32, rs1_w1_val == 536870912
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x2000000000200000;  op2val:0xfff90200ffff0020
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x2000000000200000, 0xfff90200ffff0020, x30, x4, 704, x1)

inst_61:
// rs2_h2_val == 128, rs1_w0_val == -16777217
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000000feffffff;  op2val:0x400080fff60008
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000000feffffff, 0x400080fff60008, x30, x4, 720, x1)

inst_62:
// rs2_h2_val == 64, rs1_w1_val == 65536, rs1_w0_val == -17
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x010000ffffffef;  op2val:0xfffe0040dffffeff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x010000ffffffef, 0xfffe0040dffffeff, x30, x4, 736, x1)

inst_63:
// rs2_h2_val == 32, rs1_w1_val == 134217728
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x800000000000400;  op2val:0x020020fff63fff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x800000000000400, 0x020020fff63fff, x30, x4, 752, x1)

inst_64:
// rs2_h2_val == 4, rs1_w1_val == 1024, rs1_w0_val == -129
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000400ffffff7f;  op2val:0xff7f0004f7ff0004
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000400ffffff7f, 0xff7f0004f7ff0004, x30, x4, 768, x1)

inst_65:
// rs2_h2_val == 2, rs1_w1_val == 2147483647, rs2_h1_val == 16384, rs2_h0_val == 2
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffffffffbfff;  op2val:0x400000240000002
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x7fffffffffffbfff, 0x400000240000002, x30, x4, 784, x1)

inst_66:
// rs2_h2_val == -1, rs1_w1_val == -65
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf08000000;  op2val:0xfefffffffbff7fff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffbf08000000, 0xfefffffffbff7fff, x30, x4, 800, x1)

inst_67:
// rs2_h1_val == -21846, rs1_w0_val == -32769
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x800000ffff7fff;  op2val:0xfffb0005aaaafbff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x800000ffff7fff, 0xfffb0005aaaafbff, x30, x4, 816, x1)

inst_68:
// rs2_h1_val == -513, rs1_w1_val == -67108865
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffff00001000;  op2val:0x8000fffffdff3fff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfbffffff00001000, 0x8000fffffdff3fff, x30, x4, 832, x1)

inst_69:
// rs2_h0_val == 8192, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000400000800;  op2val:0xffbf0002fffc2000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000400000800, 0xffbf0002fffc2000, x30, x4, 848, x1)

inst_70:
// rs2_h0_val == 4096, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000800fffffffb;  op2val:0xc000fffbffff1000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000800fffffffb, 0xc000fffbffff1000, x30, x4, 864, x1)

inst_71:
// rs2_h0_val == 128, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000655555555;  op2val:0x800040fff90080
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000655555555, 0x800040fff90080, x30, x4, 880, x1)

inst_72:
// rs2_h0_val == -1, rs1_w1_val == 1, rs1_w0_val == -9
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000001fffffff7;  op2val:0x1000fff70010ffff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000001fffffff7, 0x1000fff70010ffff, x30, x4, 896, x1)

inst_73:
// rs1_w1_val == -33554433, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffff00000006;  op2val:0x070040fffbefff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfdffffff00000006, 0x070040fffbefff, x30, x4, 912, x1)

inst_74:
// rs1_w1_val == -16777217, rs1_w0_val == -1073741825, rs2_h0_val == -129
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffffbfffffff;  op2val:0x02fffcfbffff7f
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfeffffffbfffffff, 0x02fffcfbffff7f, x30, x4, 928, x1)

inst_75:
// rs1_w1_val == -2097153, rs1_w0_val == 33554432
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff02000000;  op2val:0xfff60005ffff8000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffdfffff02000000, 0xfff60005ffff8000, x30, x4, 944, x1)

inst_76:
// rs1_w1_val == -1048577, rs1_w0_val == 8388608
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff00800000;  op2val:0xfdff004008000004
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffefffff00800000, 0xfdff004008000004, x30, x4, 960, x1)

inst_77:
// rs1_w1_val == -524289, rs2_h1_val == -17
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffffffefffff;  op2val:0xfff9fff7ffef0000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfff7ffffffefffff, 0xfff9fff7ffef0000, x30, x4, 976, x1)

inst_78:
// rs1_w1_val == -262145, rs1_w0_val == -4097, rs2_h1_val == 4096
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffffffffefff;  op2val:0xfffe002010004000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffbffffffffefff, 0xfffe002010004000, x30, x4, 992, x1)

inst_79:
// rs1_w1_val == -131073, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff00004000;  op2val:0xdfff00093fff0002
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffdffff00004000, 0xdfff00093fff0002, x30, x4, 1008, x1)

inst_80:
// rs1_w1_val == -65537, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffff00000200;  op2val:0x08040040000009
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffeffff00000200, 0x08040040000009, x30, x4, 1024, x1)

inst_81:
// rs1_w1_val == -4097, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffeffffffffff6;  op2val:0x1000fff800020007
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffeffffffffff6, 0x1000fff800020007, x30, x4, 1040, x1)

inst_82:
// rs1_w1_val == -2049, rs1_w0_val == -1025
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7fffffffbff;  op2val:0x00fdff00050002
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffff7fffffffbff, 0x00fdff00050002, x30, x4, 1056, x1)

inst_83:
// rs1_w1_val == -1025, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff00000002;  op2val:0x400fbffffff2000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffbff00000002, 0x400fbffffff2000, x30, x4, 1072, x1)

inst_84:
// rs1_w1_val == -33, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdffffffff9;  op2val:0x800ff7f0200feff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffdffffffff9, 0x800ff7f0200feff, x30, x4, 1088, x1)

inst_85:
// rs1_w1_val == -9, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7f7ffffff;  op2val:0x04fffd00092000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffff7f7ffffff, 0x04fffd00092000, x30, x4, 1104, x1)

inst_86:
// rs1_w1_val == 1073741824, rs1_w0_val == -65
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x40000000ffffffbf;  op2val:0x100fff77ffffffd
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x40000000ffffffbf, 0x100fff77ffffffd, x30, x4, 1120, x1)

inst_87:
// rs1_w1_val == 67108864, rs1_w0_val == -257
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x4000000fffffeff;  op2val:0x8040000200aaaa
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x4000000fffffeff, 0x8040000200aaaa, x30, x4, 1136, x1)

inst_88:
// rs1_w1_val == 16777216, rs1_w0_val == 1073741824
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000040000000;  op2val:0xffff00060002fffb
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x100000040000000, 0xffff00060002fffb, x30, x4, 1152, x1)

inst_89:
// rs1_w1_val == 262144, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x040000ffffffef;  op2val:0x1000feffdffffffe
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x040000ffffffef, 0x1000feffdffffffe, x30, x4, 1168, x1)

inst_90:
// rs1_w1_val == 524288, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x080000fffffff7;  op2val:0x2000000020feff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x080000fffffff7, 0x2000000020feff, x30, x4, 1184, x1)

inst_91:
// rs1_w1_val == 32768, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x008000fffffffa;  op2val:0xfff6002000100000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x008000fffffffa, 0xfff6002000100000, x30, x4, 1200, x1)

inst_92:
// rs1_w1_val == 16384, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x004000bfffffff;  op2val:0x000400fff7aaaa
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x004000bfffffff, 0x000400fff7aaaa, x30, x4, 1216, x1)

inst_93:
// rs1_w1_val == 128, rs1_w0_val == -262145
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000080fffbffff;  op2val:0x05efffbfffffef
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000080fffbffff, 0x05efffbfffffef, x30, x4, 1232, x1)

inst_94:
// rs1_w1_val == 64, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00004000000000;  op2val:0x080003feff0008
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00004000000000, 0x080003feff0008, x30, x4, 1248, x1)

inst_95:
// rs1_w1_val == 16, rs1_w0_val == 268435456
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00001010000000;  op2val:0x20fffcc0000400
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00001010000000, 0x20fffcc0000400, x30, x4, 1264, x1)

inst_96:
// rs1_w1_val == -1, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff80000000;  op2val:0x02bfffdfff0040
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffff80000000, 0x02bfffdfff0040, x30, x4, 1280, x1)

inst_97:
// rs1_w0_val == 2147483647, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff87fffffff;  op2val:0xfbfffffdfffe0020
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffff87fffffff, 0xfbfffffdfffe0020, x30, x4, 1296, x1)

inst_98:
// rs1_w0_val == -2097153, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000ffdfffff;  op2val:0xf7ffaaaa0007feff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x100000ffdfffff, 0xf7ffaaaa0007feff, x30, x4, 1312, x1)

inst_99:
// rs2_h1_val == 256, rs1_w0_val == 536870912
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000020000000;  op2val:0xfffd00100100ffef
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x100000020000000, 0xfffd00100100ffef, x30, x4, 1328, x1)

inst_100:
// rs2_h1_val == 128, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000000080000;  op2val:0xbfff004000800004
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x200000000080000, 0xbfff004000800004, x30, x4, 1344, x1)

inst_101:
// rs1_w0_val == -131073, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffefffdffff;  op2val:0xc000fff7fffe0005
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xfffffffefffdffff, 0xc000fff7fffe0005, x30, x4, 1360, x1)

inst_102:
// rs1_w0_val == -65537, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffeffffeffff;  op2val:0xffbf3fff1000efff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffeffffeffff, 0xffbf3fff1000efff, x30, x4, 1376, x1)

inst_103:
// rs2_h1_val == 4, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x000008ffdfffff;  op2val:0x8000fffb0004ffef
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x000008ffdfffff, 0x8000fffb0004ffef, x30, x4, 1392, x1)

inst_104:
// rs1_w0_val == -8193, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000ffffdfff;  op2val:0xffbf4000c0005555
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x200000ffffdfff, 0xffbf4000c0005555, x30, x4, 1408, x1)

inst_105:
// rs2_h1_val == 0, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000fffeffff;  op2val:0x100f7ff00000040
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x200000fffeffff, 0x100f7ff00000040, x30, x4, 1424, x1)

inst_106:
// rs1_w0_val == -2049, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000fffff7ff;  op2val:0x1000fefffbffc000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x100000fffff7ff, 0x1000fefffbffc000, x30, x4, 1440, x1)

inst_107:
// rs2_h0_val == -8193, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdffdffffff;  op2val:0x3fffff7fefffdfff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffdffdffffff, 0x3fffff7fefffdfff, x30, x4, 1456, x1)

inst_108:
// rs1_w0_val == -33, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x008000ffffffdf;  op2val:0x10003fff00060003
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x008000ffffffdf, 0x10003fff00060003, x30, x4, 1472, x1)

inst_109:
// rs2_h0_val == -2049, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000500000100;  op2val:0xfbfffff9ffeff7ff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000500000100, 0xfbfffff9ffeff7ff, x30, x4, 1488, x1)

inst_110:
// rs1_w0_val == -3, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x020000fffffffd;  op2val:0xfff7fff90007fffe
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x020000fffffffd, 0xfff7fff90007fffe, x30, x4, 1504, x1)

inst_111:
// rs1_w0_val == 67108864, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef04000000;  op2val:0x403ffffffc0010
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffffffef04000000, 0x403ffffffc0010, x30, x4, 1520, x1)

inst_112:
// rs1_w0_val == 16777216, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x1000000001000000;  op2val:0xfff7fffefbff5555
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x1000000001000000, 0xfff7fffefbff5555, x30, x4, 1536, x1)

inst_113:
// rs1_w0_val == -2, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffff7ffffffffffe;  op2val:0xfdfffffbfff9feff
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffff7ffffffffffe, 0xfdfffffbfff9feff, x30, x4, 1552, x1)

inst_114:
// rs1_w0_val == 4194304, 
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000400400000;  op2val:0xdffffffbff7f0200
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000400400000, 0xdffffffbff7f0200, x30, x4, 1568, x1)

inst_115:
// rs2_h3_val == 21845, rs1_w1_val == -32769, rs1_w0_val == 4096, rs2_h0_val == 1, rs2_h1_val == -129, rs2_h2_val == 8192
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0xffff7fff00001000;  op2val:0x55552000ff7f0001
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0xffff7fff00001000, 0x55552000ff7f0001, x30, x4, 1584, x1)

inst_116:
// rs2_h3_val == 32767, rs1_w0_val == 256
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000900000100;  op2val:0x7fff000900070009
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00000900000100, 0x7fff000900070009, x30, x4, 1600, x1)

inst_117:
// rs2_h3_val == -33, rs1_w0_val == 524288, rs1_w1_val == 8388608, rs2_h2_val == 1024, rs2_h0_val == 0
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x80000000080000;  op2val:0xffdf040000090000
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x80000000080000, 0xffdf040000090000, x30, x4, 1616, x1)

inst_118:
// rs2_h3_val == 32, rs1_w1_val == 8192, rs2_h0_val == -3
// opcode: kmmwb2.u ; op1:x30; op2:x29; dest:x31; op1val:0x00200000000005;  op2val:0x20fff9f7fffffd
TEST_PKRR_OP(kmmwb2.u, x31, x30, x29, 0x0000000000000000, 0x00200000000005, 0x20fff9f7fffffd, x30, x4, 1632, x1)
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
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 206*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
