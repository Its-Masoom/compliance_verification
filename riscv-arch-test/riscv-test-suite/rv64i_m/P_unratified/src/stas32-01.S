
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
// This assembly file tests the stas32 instruction of the RISC-V RV64PZicsr extension for the stas32 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",stas32)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x16,signature_x16_1)

inst_0:
// rs1 == rd != rs2, rs1==x18, rs2==x30, rd==x18, rs1_w0_val == -2147483648, rs1_w1_val != rs2_w1_val, rs1_w1_val < 0 and rs2_w1_val < 0, rs1_w0_val != rs2_w0_val, rs2_w0_val == -2049, rs1_w0_val < 0 and rs2_w0_val < 0, rs2_w1_val == -1, rs1_w1_val == -2
// opcode: stas32 ; op1:x18; op2:x30; dest:x18; op1val:0xfffffffe80000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(stas32, x18, x18, x30, 0x0000000000000000, 0xfffffffe80000000, 0xfffffffffffff7ff, x16, 0, x9)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x29, rs2==x2, rd==x0, rs1_w1_val == rs2_w1_val, rs1_w1_val == 524288, rs1_w1_val > 0 and rs2_w1_val > 0, rs2_w0_val == 2048, rs1_w0_val > 0 and rs2_w0_val > 0, rs2_w1_val == 524288, rs1_w0_val == 67108864
// opcode: stas32 ; op1:x29; op2:x2; dest:x0; op1val:0x08000004000000;  op2val:0x08000000000800
TEST_RR_OP(stas32, x0, x29, x2, 0x0000000000000000, 0x08000004000000, 0x08000000000800, x16, 8, x9)

inst_2:
// rs1 == rs2 != rd, rs1==x20, rs2==x20, rd==x22, rs1_w1_val < 0 and rs2_w1_val > 0, rs1_w0_val == -8388609, rs1_w0_val < 0 and rs2_w0_val > 0, rs2_w1_val == 1431655765, rs1_w1_val == -129, rs2_w0_val == 524288
// opcode: stas32 ; op1:x20; op2:x20; dest:x22; op1val:0xffffff7fff7fffff;  op2val:0x5555555500080000
TEST_RR_OP(stas32, x22, x20, x20, 0x0000000000000000, 0xffffff7fff7fffff, 0x5555555500080000, x16, 16, x9)

inst_3:
// rs1 == rs2 == rd, rs1==x15, rs2==x15, rd==x15, rs1_w1_val > 0 and rs2_w1_val < 0, rs2_w0_val == 8, rs1_w0_val == 1024, rs1_w1_val == 16777216, rs2_w1_val == -32769
// opcode: stas32 ; op1:x15; op2:x15; dest:x15; op1val:0x100000000000400;  op2val:0xffff7fff00000008
TEST_RR_OP(stas32, x15, x15, x15, 0x0000000000000000, 0x100000000000400, 0xffff7fff00000008, x16, 24, x9)

inst_4:
// rs2 == rd != rs1, rs1==x2, rs2==x29, rd==x29, rs1_w0_val == rs2_w0_val, rs2_w1_val == 8192, rs1_w0_val == 64, rs2_w0_val == 64, rs1_w1_val == 2
// opcode: stas32 ; op1:x2; op2:x29; dest:x29; op1val:0x00000200000040;  op2val:0x00200000000040
TEST_RR_OP(stas32, x29, x2, x29, 0x0000000000000000, 0x00000200000040, 0x00200000000040, x16, 32, x9)

inst_5:
// rs1==x1, rs2==x5, rd==x4, rs1_w0_val > 0 and rs2_w0_val < 0, rs1_w0_val == 33554432, rs2_w0_val == -16777217, rs2_w1_val == 134217728
// opcode: stas32 ; op1:x1; op2:x5; dest:x4; op1val:0x00000502000000;  op2val:0x8000000feffffff
TEST_RR_OP(stas32, x4, x1, x5, 0x0000000000000000, 0x00000502000000, 0x8000000feffffff, x16, 40, x9)

inst_6:
// rs1==x26, rs2==x3, rd==x12, rs2_w1_val == -1431655766, rs1_w0_val == 4194304, rs2_w0_val == 1048576, rs1_w1_val == 2147483647
// opcode: stas32 ; op1:x26; op2:x3; dest:x12; op1val:0x7fffffff00400000;  op2val:0xaaaaaaaa00100000
TEST_RR_OP(stas32, x12, x26, x3, 0x0000000000000000, 0x7fffffff00400000, 0xaaaaaaaa00100000, x16, 48, x9)

inst_7:
// rs1==x4, rs2==x7, rd==x31, rs2_w1_val == 2147483647, rs1_w1_val == -16385, rs2_w0_val == -1073741825, rs1_w0_val == -134217729
// opcode: stas32 ; op1:x4; op2:x7; dest:x31; op1val:0xffffbffff7ffffff;  op2val:0x7fffffffbfffffff
TEST_RR_OP(stas32, x31, x4, x7, 0x0000000000000000, 0xffffbffff7ffffff, 0x7fffffffbfffffff, x16, 56, x9)

inst_8:
// rs1==x5, rs2==x18, rd==x21, rs2_w1_val == -1073741825, rs1_w1_val == -268435457, rs2_w0_val == 1073741824, rs1_w0_val == 8
// opcode: stas32 ; op1:x5; op2:x18; dest:x21; op1val:0xefffffff00000008;  op2val:0xbfffffff40000000
TEST_RR_OP(stas32, x21, x5, x18, 0x0000000000000000, 0xefffffff00000008, 0xbfffffff40000000, x16, 64, x9)

inst_9:
// rs1==x11, rs2==x0, rd==x30, rs2_w1_val == -536870913, rs2_w0_val == 128, rs1_w1_val == -134217729
// opcode: stas32 ; op1:x11; op2:x0; dest:x30; op1val:0xf7ffffff00000005;  op2val:0xdfffffff00000080
TEST_RR_OP(stas32, x30, x11, x0, 0x0000000000000000, 0xf7ffffff00000005, 0xdfffffff00000080, x16, 72, x9)

inst_10:
// rs1==x23, rs2==x12, rd==x27, rs2_w1_val == -268435457, rs1_w0_val == 16384, rs2_w0_val == -8193
// opcode: stas32 ; op1:x23; op2:x12; dest:x27; op1val:0xfffffffa00004000;  op2val:0xefffffffffffdfff
TEST_RR_OP(stas32, x27, x23, x12, 0x0000000000000000, 0xfffffffa00004000, 0xefffffffffffdfff, x16, 80, x9)

inst_11:
// rs1==x22, rs2==x14, rd==x17, rs2_w1_val == -134217729, rs1_w0_val == 512, rs2_w0_val == -33554433, rs1_w1_val == -33554433
// opcode: stas32 ; op1:x22; op2:x14; dest:x17; op1val:0xfdffffff00000200;  op2val:0xf7fffffffdffffff
TEST_RR_OP(stas32, x17, x22, x14, 0x0000000000000000, 0xfdffffff00000200, 0xf7fffffffdffffff, x16, 88, x9)

inst_12:
// rs1==x21, rs2==x26, rd==x1, rs2_w1_val == -67108865, rs1_w0_val == -5, rs2_w0_val == 0, rs1_w1_val == -2049
// opcode: stas32 ; op1:x21; op2:x26; dest:x1; op1val:0xfffff7fffffffffb;  op2val:0xfbffffff00000000
TEST_RR_OP(stas32, x1, x21, x26, 0x0000000000000000, 0xfffff7fffffffffb, 0xfbffffff00000000, x16, 96, x9)

inst_13:
// rs1==x10, rs2==x17, rd==x6, rs2_w1_val == -33554433, rs2_w0_val == -1, rs1_w1_val == 33554432, rs1_w0_val == 524288
// opcode: stas32 ; op1:x10; op2:x17; dest:x6; op1val:0x200000000080000;  op2val:0xfdffffffffffffff
TEST_RR_OP(stas32, x6, x10, x17, 0x0000000000000000, 0x200000000080000, 0xfdffffffffffffff, x16, 104, x9)

inst_14:
// rs1==x13, rs2==x11, rd==x2, rs2_w1_val == -16777217, rs2_w0_val == -5, rs1_w1_val == 67108864, rs1_w0_val == -1048577
// opcode: stas32 ; op1:x13; op2:x11; dest:x2; op1val:0x4000000ffefffff;  op2val:0xfefffffffffffffb
TEST_RR_OP(stas32, x2, x13, x11, 0x0000000000000000, 0x4000000ffefffff, 0xfefffffffffffffb, x16, 112, x9)

inst_15:
// rs1==x19, rs2==x22, rd==x8, rs2_w1_val == -8388609, rs1_w0_val == -67108865, rs1_w1_val == 1048576, rs2_w0_val == 16
// opcode: stas32 ; op1:x19; op2:x22; dest:x8; op1val:0x100000fbffffff;  op2val:0xff7fffff00000010
TEST_RR_OP(stas32, x8, x19, x22, 0x0000000000000000, 0x100000fbffffff, 0xff7fffff00000010, x16, 120, x9)

inst_16:
// rs1==x9, rs2==x1, rd==x26, rs2_w1_val == -4194305, rs1_w1_val == 4194304, rs1_w0_val == 1073741824, rs2_w0_val == -17
// opcode: stas32 ; op1:x9; op2:x1; dest:x26; op1val:0x40000040000000;  op2val:0xffbfffffffffffef
TEST_RR_OP(stas32, x26, x9, x1, 0x0000000000000000, 0x40000040000000, 0xffbfffffffffffef, x16, 128, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_17:
// rs1==x27, rs2==x10, rd==x13, rs2_w1_val == -2097153, 
// opcode: stas32 ; op1:x27; op2:x10; dest:x13; op1val:0x00000700000006;  op2val:0xffdfffff00080000
TEST_RR_OP(stas32, x13, x27, x10, 0x0000000000000000, 0x00000700000006, 0xffdfffff00080000, x1, 0, x2)

inst_18:
// rs1==x0, rs2==x24, rd==x5, rs2_w1_val == -1048577, rs2_w0_val == 65536, rs1_w0_val == 536870912
// opcode: stas32 ; op1:x0; op2:x24; dest:x5; op1val:0xefffffff20000000;  op2val:0xffefffff00010000
TEST_RR_OP(stas32, x5, x0, x24, 0x0000000000000000, 0xefffffff20000000, 0xffefffff00010000, x1, 8, x2)

inst_19:
// rs1==x28, rs2==x31, rd==x14, rs2_w1_val == -524289, rs1_w1_val == 536870912, rs2_w0_val == -257, rs1_w0_val == 0
// opcode: stas32 ; op1:x28; op2:x31; dest:x14; op1val:0x2000000000000000;  op2val:0xfff7fffffffffeff
TEST_RR_OP(stas32, x14, x28, x31, 0x0000000000000000, 0x2000000000000000, 0xfff7fffffffffeff, x1, 16, x2)

inst_20:
// rs1==x31, rs2==x23, rd==x9, rs2_w1_val == -262145, rs1_w1_val == 2097152, rs2_w0_val == -8388609
// opcode: stas32 ; op1:x31; op2:x23; dest:x9; op1val:0x20000000000005;  op2val:0xfffbffffff7fffff
TEST_RR_OP(stas32, x9, x31, x23, 0x0000000000000000, 0x20000000000005, 0xfffbffffff7fffff, x1, 24, x2)

inst_21:
// rs1==x30, rs2==x9, rd==x3, rs2_w1_val == -131073, rs1_w0_val == -1073741825, rs2_w0_val == -9
// opcode: stas32 ; op1:x30; op2:x9; dest:x3; op1val:0xffffff7fbfffffff;  op2val:0xfffdfffffffffff7
TEST_RR_OP(stas32, x3, x30, x9, 0x0000000000000000, 0xffffff7fbfffffff, 0xfffdfffffffffff7, x1, 32, x2)

inst_22:
// rs1==x6, rs2==x21, rd==x10, rs2_w1_val == -65537, rs2_w0_val == 1024, rs1_w1_val == -8388609
// opcode: stas32 ; op1:x6; op2:x21; dest:x10; op1val:0xff7fffff00000000;  op2val:0xfffeffff00000400
TEST_RR_OP(stas32, x10, x6, x21, 0x0000000000000000, 0xff7fffff00000000, 0xfffeffff00000400, x1, 40, x2)

inst_23:
// rs1==x3, rs2==x4, rd==x19, rs2_w1_val == -16385, rs1_w1_val == -5
// opcode: stas32 ; op1:x3; op2:x4; dest:x19; op1val:0xfffffffbffefffff;  op2val:0xffffbfff00000080
TEST_RR_OP(stas32, x19, x3, x4, 0x0000000000000000, 0xfffffffbffefffff, 0xffffbfff00000080, x1, 48, x2)

inst_24:
// rs1==x25, rs2==x19, rd==x16, rs2_w1_val == -8193, rs1_w1_val == -65, rs2_w0_val == -513
// opcode: stas32 ; op1:x25; op2:x19; dest:x16; op1val:0xffffffbf00400000;  op2val:0xffffdffffffffdff
TEST_RR_OP(stas32, x16, x25, x19, 0x0000000000000000, 0xffffffbf00400000, 0xffffdffffffffdff, x1, 56, x2)

inst_25:
// rs1==x7, rs2==x27, rd==x23, rs2_w1_val == -4097, 
// opcode: stas32 ; op1:x7; op2:x27; dest:x23; op1val:0xffffff7f00000008;  op2val:0xffffefffffffffef
TEST_RR_OP(stas32, x23, x7, x27, 0x0000000000000000, 0xffffff7f00000008, 0xffffefffffffffef, x1, 64, x2)

inst_26:
// rs1==x17, rs2==x8, rd==x20, rs2_w1_val == -2049, rs2_w0_val == 262144, rs1_w0_val == 256, rs1_w1_val == -1025
// opcode: stas32 ; op1:x17; op2:x8; dest:x20; op1val:0xfffffbff00000100;  op2val:0xfffff7ff00040000
TEST_RR_OP(stas32, x20, x17, x8, 0x0000000000000000, 0xfffffbff00000100, 0xfffff7ff00040000, x1, 72, x2)

inst_27:
// rs1==x8, rs2==x28, rd==x25, rs2_w1_val == -1025, rs2_w0_val == -1431655766, rs1_w1_val == 2048, rs1_w0_val == -3
// opcode: stas32 ; op1:x8; op2:x28; dest:x25; op1val:0x000800fffffffd;  op2val:0xfffffbffaaaaaaaa
TEST_RR_OP(stas32, x25, x8, x28, 0x0000000000000000, 0x000800fffffffd, 0xfffffbffaaaaaaaa, x1, 80, x2)

inst_28:
// rs1==x16, rs2==x25, rd==x24, rs2_w1_val == -513, rs1_w0_val == -1
// opcode: stas32 ; op1:x16; op2:x25; dest:x24; op1val:0x3fffffffffffffff;  op2val:0xfffffdffaaaaaaaa
TEST_RR_OP(stas32, x24, x16, x25, 0x0000000000000000, 0x3fffffffffffffff, 0xfffffdffaaaaaaaa, x1, 88, x2)

inst_29:
// rs1==x14, rs2==x6, rd==x11, rs2_w1_val == -257, rs1_w0_val == -1431655766, rs2_w0_val == 4096
// opcode: stas32 ; op1:x14; op2:x6; dest:x11; op1val:0xffffbfffaaaaaaaa;  op2val:0xfffffeff00001000
TEST_RR_OP(stas32, x11, x14, x6, 0x0000000000000000, 0xffffbfffaaaaaaaa, 0xfffffeff00001000, x1, 96, x2)

inst_30:
// rs1==x24, rs2==x13, rd==x7, rs2_w1_val == -129, rs2_w0_val == 16384, rs1_w0_val == -9
// opcode: stas32 ; op1:x24; op2:x13; dest:x7; op1val:0x000007fffffff7;  op2val:0xffffff7f00004000
TEST_RR_OP(stas32, x7, x24, x13, 0x0000000000000000, 0x000007fffffff7, 0xffffff7f00004000, x1, 104, x2)

inst_31:
// rs1==x12, rs2==x16, rd==x28, rs2_w1_val == -65, rs1_w1_val == -1073741825, rs1_w0_val == 4
// opcode: stas32 ; op1:x12; op2:x16; dest:x28; op1val:0xbfffffff00000004;  op2val:0xffffffbffffffff9
TEST_RR_OP(stas32, x28, x12, x16, 0x0000000000000000, 0xbfffffff00000004, 0xffffffbffffffff9, x1, 112, x2)

inst_32:
// rs2_w1_val == -33, rs1_w1_val == -33, rs1_w0_val == 268435456
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf10000000;  op2val:0xffffffdf40000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffffdf10000000, 0xffffffdf40000000, x1, 120, x2)

inst_33:
// rs2_w1_val == -17, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x200000ffffffff;  op2val:0xffffffef00001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x200000ffffffff, 0xffffffef00001000, x1, 128, x2)

inst_34:
// rs2_w1_val == -9, rs1_w1_val == -2097153, rs1_w0_val == 134217728
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff08000000;  op2val:0xfffffff7fffffffa
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffdfffff08000000, 0xfffffff7fffffffa, x1, 136, x2)

inst_35:
// rs2_w1_val == -5, rs2_w0_val == 67108864
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x20000000000004;  op2val:0xfffffffb04000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x20000000000004, 0xfffffffb04000000, x1, 144, x2)

inst_36:
// rs2_w1_val == -3, rs2_w0_val == -2, rs1_w0_val == 1048576, rs1_w1_val == -3
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd00100000;  op2val:0xfffffffdfffffffe
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffd00100000, 0xfffffffdfffffffe, x1, 152, x2)

inst_37:
// rs2_w1_val == -2, rs1_w1_val == -131073
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff02000000;  op2val:0xfffffffe3fffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffdffff02000000, 0xfffffffe3fffffff, x1, 160, x2)

inst_38:
// rs2_w1_val == -2147483648, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffec0000000;  op2val:0x8000000000000800
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffec0000000, 0x8000000000000800, x1, 168, x2)

inst_39:
// rs2_w1_val == 1073741824, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff800100000;  op2val:0x40000000fffff7ff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffff800100000, 0x40000000fffff7ff, x1, 176, x2)

inst_40:
// rs2_w1_val == 536870912, rs2_w0_val == 131072, rs1_w1_val == -9
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff700000006;  op2val:0x2000000000020000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffff700000006, 0x2000000000020000, x1, 184, x2)

inst_41:
// rs2_w1_val == 268435456, rs1_w1_val == 65536
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x01000008000000;  op2val:0x10000000ffffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x01000008000000, 0x10000000ffffffff, x1, 192, x2)

inst_42:
// rs2_w1_val == 67108864, rs1_w0_val == -268435457, rs1_w1_val == 256
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000100efffffff;  op2val:0x400000000000010
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000100efffffff, 0x400000000000010, x1, 200, x2)

inst_43:
// rs2_w1_val == 33554432, rs1_w1_val == -513
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdfff7ffffff;  op2val:0x2000000fffffff9
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffdfff7ffffff, 0x2000000fffffff9, x1, 208, x2)

inst_44:
// rs2_w1_val == 16777216, rs1_w0_val == -1025
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffffffffbff;  op2val:0x1000000fdffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xf7fffffffffffbff, 0x1000000fdffffff, x1, 216, x2)

inst_45:
// rs2_w1_val == 8388608, rs1_w1_val == 134217728, rs1_w0_val == -2097153
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000ffdfffff;  op2val:0x80000000000006
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x8000000ffdfffff, 0x80000000000006, x1, 224, x2)

inst_46:
// rs2_w1_val == 4194304, rs1_w0_val == -33554433, rs1_w1_val == -1048577
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffffffdffffff;  op2val:0x40000000000007
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffeffffffdffffff, 0x40000000000007, x1, 232, x2)

inst_47:
// rs2_w1_val == 2097152, rs2_w0_val == -67108865, rs1_w0_val == -131073
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffffffffdffff;  op2val:0x200000fbffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xff7ffffffffdffff, 0x200000fbffffff, x1, 240, x2)

inst_48:
// rs2_w1_val == 1048576, rs1_w0_val == -257, rs2_w0_val == 536870912
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7fffffffeff;  op2val:0x10000020000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffff7fffffffeff, 0x10000020000000, x1, 248, x2)

inst_49:
// rs1_w0_val == 16777216, rs2_w1_val == 4096, rs2_w0_val == -134217729
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000601000000;  op2val:0x001000f7ffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000601000000, 0x001000f7ffffff, x1, 256, x2)

inst_50:
// rs1_w0_val == 8388608, rs2_w0_val == -1025, rs1_w1_val == 64
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00004000800000;  op2val:0xaaaaaaaafffffbff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00004000800000, 0xaaaaaaaafffffbff, x1, 264, x2)

inst_51:
// rs1_w0_val == 2097152, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000600200000;  op2val:0x800000000000010
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000600200000, 0x800000000000010, x1, 272, x2)

inst_52:
// rs1_w0_val == 262144, rs1_w1_val == 1073741824, rs2_w0_val == 33554432
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x4000000000040000;  op2val:0xffffffef02000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x4000000000040000, 0xffffffef02000000, x1, 280, x2)

inst_53:
// rs1_w0_val == 131072, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00010000020000;  op2val:0xffffbfff00000006
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00010000020000, 0xffffbfff00000006, x1, 288, x2)

inst_54:
// rs1_w0_val == 65536, rs2_w0_val == 1431655765
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x08000000010000;  op2val:0x7fffffff55555555
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x08000000010000, 0x7fffffff55555555, x1, 296, x2)

inst_55:
// rs1_w0_val == 32768, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff00008000;  op2val:0xfffffffa00000005
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffefffff00008000, 0xfffffffa00000005, x1, 304, x2)

inst_56:
// rs1_w0_val == 8192, rs1_w1_val == -4097
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00002000;  op2val:0xfffeffff00000040
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffefff00002000, 0xfffeffff00000040, x1, 312, x2)

inst_57:
// rs1_w0_val == 4096, rs1_w1_val == 32
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00002000001000;  op2val:0xdffffffffffffff8
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00002000001000, 0xdffffffffffffff8, x1, 320, x2)

inst_58:
// rs1_w0_val == 2048, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff00000800;  op2val:0xefffffff00001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffefffff00000800, 0xefffffff00001000, x1, 328, x2)

inst_59:
// rs1_w0_val == 128, rs2_w0_val == 256
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf00000080;  op2val:0xffefffff00000100
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffffbf00000080, 0xffefffff00000100, x1, 336, x2)

inst_60:
// rs1_w0_val == 32, rs2_w0_val == -2147483648, rs1_w1_val == 4
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000400000020;  op2val:0xfffdffff80000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000400000020, 0xfffdffff80000000, x1, 344, x2)

inst_61:
// rs1_w0_val == 16, rs2_w0_val == 8192
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf00000010;  op2val:0x40000000002000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffffdf00000010, 0x40000000002000, x1, 352, x2)

inst_62:
// rs1_w0_val == 2, rs1_w1_val == 512, rs2_w0_val == -536870913
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00020000000002;  op2val:0x000007dfffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00020000000002, 0x000007dfffffff, x1, 360, x2)

inst_63:
// rs1_w0_val == 1, rs2_w0_val == -16385, rs2_w1_val == 4
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff800000001;  op2val:0x000004ffffbfff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffff800000001, 0x000004ffffbfff, x1, 368, x2)

inst_64:
// rs2_w1_val == 262144, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x3fffffff00008000;  op2val:0x04000000000003
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x3fffffff00008000, 0x04000000000003, x1, 376, x2)

inst_65:
// rs2_w1_val == 131072, rs2_w0_val == -129
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x080000bfffffff;  op2val:0x020000ffffff7f
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x080000bfffffff, 0x020000ffffff7f, x1, 384, x2)

inst_66:
// rs2_w1_val == 65536, rs1_w0_val == -129, rs1_w1_val == 131072
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x020000ffffff7f;  op2val:0x010000fffffff9
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x020000ffffff7f, 0x010000fffffff9, x1, 392, x2)

inst_67:
// rs2_w1_val == 32768, rs1_w1_val == -262145
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffff00000100;  op2val:0x008000aaaaaaaa
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffbffff00000100, 0x008000aaaaaaaa, x1, 400, x2)

inst_68:
// rs2_w1_val == 16384, rs2_w0_val == -262145, rs1_w1_val == -67108865
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffffffdffffff;  op2val:0x004000fffbffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfbfffffffdffffff, 0x004000fffbffff, x1, 408, x2)

inst_69:
// rs2_w1_val == 2048, rs1_w1_val == 8192
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00200000020000;  op2val:0x00080000001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00200000020000, 0x00080000001000, x1, 416, x2)

inst_70:
// rs2_w1_val == 1024, rs2_w0_val == 2
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000003ffffff7f;  op2val:0x00040000000002
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000003ffffff7f, 0x00040000000002, x1, 424, x2)

inst_71:
// rs2_w1_val == 512, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000800c0000000;  op2val:0x000200ffffbfff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000800c0000000, 0x000200ffffbfff, x1, 432, x2)

inst_72:
// rs2_w1_val == 256, rs2_w0_val == -4194305
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00002000400000;  op2val:0x000100ffbfffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00002000400000, 0x000100ffbfffff, x1, 440, x2)

inst_73:
// rs2_w1_val == 128, rs1_w1_val == 1024
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00040000000001;  op2val:0x000080f7ffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00040000000001, 0x000080f7ffffff, x1, 448, x2)

inst_74:
// rs2_w1_val == 64, rs2_w0_val == 1
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff700000010;  op2val:0x00004000000001
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffff700000010, 0x00004000000001, x1, 456, x2)

inst_75:
// rs2_w1_val == 32, rs1_w0_val == -33
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffffffffffdf;  op2val:0x00002000001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffbffffffffffdf, 0x00002000001000, x1, 464, x2)

inst_76:
// rs2_w1_val == 16, rs1_w0_val == -16777217
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000002feffffff;  op2val:0x000010fbffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000002feffffff, 0x000010fbffffff, x1, 472, x2)

inst_77:
// rs2_w1_val == 8, rs2_w0_val == -268435457
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffff08000000;  op2val:0x000008efffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffbffff08000000, 0x000008efffffff, x1, 480, x2)

inst_78:
// rs2_w1_val == 2, rs2_w0_val == -2097153
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffff00000010;  op2val:0x000002ffdfffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffbffff00000010, 0x000002ffdfffff, x1, 488, x2)

inst_79:
// rs2_w0_val == 32768, rs1_w1_val == 0
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000020000000;  op2val:0xffffff7f00008000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000020000000, 0xffffff7f00008000, x1, 496, x2)

inst_80:
// rs2_w0_val == 512, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000610000000;  op2val:0x08000000000200
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000610000000, 0x08000000000200, x1, 504, x2)

inst_81:
// rs2_w0_val == 32, rs1_w1_val == -16777217
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff00020000;  op2val:0xf7ffffff00000020
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfeffffff00020000, 0xf7ffffff00000020, x1, 512, x2)

inst_82:
// rs2_w0_val == 4, rs1_w1_val == 1431655765
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x55555555ffefffff;  op2val:0xdfffffff00000004
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x55555555ffefffff, 0xdfffffff00000004, x1, 520, x2)

inst_83:
// rs1_w0_val == -2, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbffffffffe;  op2val:0xefffffff00000003
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffffbffffffffe, 0xefffffff00000003, x1, 528, x2)

inst_84:
// rs1_w1_val == -1431655766, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaa00100000;  op2val:0x000003ffffbfff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaa00100000, 0x000003ffffbfff, x1, 536, x2)

inst_85:
// rs1_w1_val == -536870913, rs1_w0_val == -2049
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xdffffffffffff7ff;  op2val:0xfffffffc00080000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xdffffffffffff7ff, 0xfffffffc00080000, x1, 544, x2)

inst_86:
// rs1_w1_val == -4194305, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff00000004;  op2val:0xaaaaaaaa00001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffbfffff00000004, 0xaaaaaaaa00001000, x1, 552, x2)

inst_87:
// rs1_w1_val == -524289, rs1_w0_val == -4097
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffffffffefff;  op2val:0xbfffffff00001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfff7ffffffffefff, 0xbfffffff00001000, x1, 560, x2)

inst_88:
// rs1_w1_val == -65537, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffff00000002;  op2val:0xc00000003fffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffeffff00000002, 0xc00000003fffffff, x1, 568, x2)

inst_89:
// rs1_w1_val == -32769, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffff7fffaaaaaaaa;  op2val:0xffffff7ffffffeff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffff7fffaaaaaaaa, 0xffffff7ffffffeff, x1, 576, x2)

inst_90:
// rs1_w1_val == -8193, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff00000002;  op2val:0xfffffeffffffffef
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffdfff00000002, 0xfffffeffffffffef, x1, 584, x2)

inst_91:
// rs1_w1_val == -257, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff00000000;  op2val:0x80000000040000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffeff00000000, 0x80000000040000, x1, 592, x2)

inst_92:
// rs1_w1_val == -17, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef00800000;  op2val:0x2000000fffffff7
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffffef00800000, 0x2000000fffffff7, x1, 600, x2)

inst_93:
// rs1_w1_val == -2147483648, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x80000000fffffff7;  op2val:0xfffffeffffffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x80000000fffffff7, 0xfffffeffffffffff, x1, 608, x2)

inst_94:
// rs1_w1_val == 268435456, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000000000003;  op2val:0xfffffff7fdffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x1000000000000003, 0xfffffff7fdffffff, x1, 616, x2)

inst_95:
// rs1_w1_val == 8388608, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x800000fffffff7;  op2val:0xffffbffffbffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x800000fffffff7, 0xffffbffffbffffff, x1, 624, x2)

inst_96:
// rs1_w1_val == 262144, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x040000aaaaaaaa;  op2val:0x10000040000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x040000aaaaaaaa, 0x10000040000000, x1, 632, x2)

inst_97:
// rs1_w1_val == 32768, rs2_w0_val == -1048577
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x008000fffff7ff;  op2val:0xffefffffffefffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x008000fffff7ff, 0xffefffffffefffff, x1, 640, x2)

inst_98:
// rs1_w1_val == 16384, rs1_w0_val == -65
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x004000ffffffbf;  op2val:0x80000000000004
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x004000ffffffbf, 0x80000000000004, x1, 648, x2)

inst_99:
// rs1_w1_val == 4096, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x001000fffdffff;  op2val:0x000003dfffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x001000fffdffff, 0x000003dfffffff, x1, 656, x2)

inst_100:
// rs2_w1_val == 1, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000100fffffffa;  op2val:0x00000100000040
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000100fffffffa, 0x00000100000040, x1, 664, x2)

inst_101:
// rs2_w1_val == 0, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x20000000ffffffdf;  op2val:0x000000fffffffb
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x20000000ffffffdf, 0x000000fffffffb, x1, 672, x2)

inst_102:
// rs1_w1_val == 128, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00008000000009;  op2val:0xffbfffff00000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00008000000009, 0xffbfffff00000000, x1, 680, x2)

inst_103:
// rs1_w1_val == 16, rs1_w0_val == 1431655765
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00001055555555;  op2val:0x001000fffffffe
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00001055555555, 0x001000fffffffe, x1, 688, x2)

inst_104:
// rs2_w0_val == 2147483647, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00001000000008;  op2val:0xffffffdf7fffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00001000000008, 0xffffffdf7fffffff, x1, 696, x2)

inst_105:
// rs1_w1_val == 8, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000008fdffffff;  op2val:0xfffffeff04000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000008fdffffff, 0xfffffeff04000000, x1, 704, x2)

inst_106:
// rs1_w1_val == 1, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000100000009;  op2val:0x00000200100000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00000100000009, 0x00000200100000, x1, 712, x2)

inst_107:
// rs1_w1_val == -1, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffffffffffa;  op2val:0x200000f7ffffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffffffffffa, 0x200000f7ffffff, x1, 720, x2)

inst_108:
// rs1_w0_val == 2147483647, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff7fffffff;  op2val:0xfffffeff00000006
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffbfffff7fffffff, 0xfffffeff00000006, x1, 728, x2)

inst_109:
// rs1_w0_val == -536870913, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffffdfffffff;  op2val:0x00000200001000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfbffffffdfffffff, 0x00000200001000, x1, 736, x2)

inst_110:
// rs2_w0_val == -524289, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff00400000;  op2val:0x7ffffffffff7ffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffdff00400000, 0x7ffffffffff7ffff, x1, 744, x2)

inst_111:
// rs2_w0_val == -131073, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x00002000000009;  op2val:0x000007fffdffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x00002000000009, 0x000007fffdffff, x1, 752, x2)

inst_112:
// rs2_w0_val == -65537, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000800dfffffff;  op2val:0x200000fffeffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000800dfffffff, 0x200000fffeffff, x1, 760, x2)

inst_113:
// rs2_w0_val == -32769, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x200000fbffffff;  op2val:0xfffffffdffff7fff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x200000fbffffff, 0xfffffffdffff7fff, x1, 768, x2)

inst_114:
// rs1_w0_val == -4194305, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000009ffbfffff;  op2val:0xffffffeffffffff6
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000009ffbfffff, 0xffffffeffffffff6, x1, 776, x2)

inst_115:
// rs2_w0_val == -4097, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb00002000;  op2val:0x000001ffffefff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffb00002000, 0x000001ffffefff, x1, 784, x2)

inst_116:
// rs1_w0_val == -524289, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000001fff7ffff;  op2val:0xaaaaaaaaffffff7f
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000001fff7ffff, 0xaaaaaaaaffffff7f, x1, 792, x2)

inst_117:
// rs1_w0_val == -262145, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfffffffbffff;  op2val:0x000009ffefffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffbfffffffbffff, 0x000009ffefffff, x1, 800, x2)

inst_118:
// rs1_w0_val == -65537, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffbffffffeffff;  op2val:0xffffff7fffffdfff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffbffffffeffff, 0xffffff7fffffdfff, x1, 808, x2)

inst_119:
// rs1_w0_val == -32769, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x20000000ffff7fff;  op2val:0xfeffffffffbfffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x20000000ffff7fff, 0xfeffffffffbfffff, x1, 816, x2)

inst_120:
// rs2_w0_val == -65, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbffffffeffffff;  op2val:0x400000ffffffbf
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffbffffffeffffff, 0x400000ffffffbf, x1, 824, x2)

inst_121:
// rs1_w0_val == -16385, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x10000000ffffbfff;  op2val:0x04000000000002
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x10000000ffffbfff, 0x04000000000002, x1, 832, x2)

inst_122:
// rs2_w0_val == -33, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb00002000;  op2val:0x008000ffffffdf
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffb00002000, 0x008000ffffffdf, x1, 840, x2)

inst_123:
// rs1_w0_val == -8193, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x000000ffffdfff;  op2val:0x000020fffbffff
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x000000ffffdfff, 0x000020fffbffff, x1, 848, x2)

inst_124:
// rs2_w0_val == -3, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x400000fffffffd;  op2val:0xffffffeffffffffd
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x400000fffffffd, 0xffffffeffffffffd, x1, 856, x2)

inst_125:
// rs1_w0_val == -513, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffffffffdff;  op2val:0x000004c0000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffffffffffdff, 0x000004c0000000, x1, 864, x2)

inst_126:
// rs2_w0_val == 268435456, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff00100000;  op2val:0x200000010000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffbfffff00100000, 0x200000010000000, x1, 872, x2)

inst_127:
// rs1_w0_val == -17, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdffffffffef;  op2val:0xfffffffaffffffbf
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffdffffffffef, 0xfffffffaffffffbf, x1, 880, x2)

inst_128:
// rs2_w0_val == 134217728, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x040000dfffffff;  op2val:0xffffffef08000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x040000dfffffff, 0xffffffef08000000, x1, 888, x2)

inst_129:
// rs2_w0_val == 16777216, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff7fffffff;  op2val:0x01000001000000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffdff7fffffff, 0x01000001000000, x1, 896, x2)

inst_130:
// rs2_w0_val == 8388608, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffffffffff7ff;  op2val:0x00400000800000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xff7ffffffffff7ff, 0x00400000800000, x1, 904, x2)

inst_131:
// rs2_w0_val == 4194304, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff600004000;  op2val:0xffffdfff00400000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xfffffff600004000, 0xffffdfff00400000, x1, 912, x2)

inst_132:
// rs2_w0_val == 2097152, 
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffbfffefffffff;  op2val:0xfffffbff00200000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffbfffefffffff, 0xfffffbff00200000, x1, 920, x2)

inst_133:
// rs1_w1_val == rs2_w1_val, rs1_w1_val == 524288, rs1_w1_val > 0 and rs2_w1_val > 0, rs2_w0_val == 2048, rs1_w0_val > 0 and rs2_w0_val > 0, rs2_w1_val == 524288, rs1_w0_val == 67108864
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x08000004000000;  op2val:0x08000000000800
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x08000004000000, 0x08000000000800, x1, 928, x2)

inst_134:
// rs1_w1_val < 0 and rs2_w1_val > 0, rs1_w0_val == -8388609, rs1_w0_val < 0 and rs2_w0_val > 0, rs2_w1_val == 1431655765, rs1_w1_val == -129, rs2_w0_val == 524288
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7fff7fffff;  op2val:0x5555555500080000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xffffff7fff7fffff, 0x5555555500080000, x1, 936, x2)

inst_135:
// rs1_w1_val > 0 and rs2_w1_val < 0, rs2_w0_val == 8, rs1_w0_val == 1024, rs1_w1_val == 16777216, rs2_w1_val == -32769
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0x100000000000400;  op2val:0xffff7fff00000008
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0x100000000000400, 0xffff7fff00000008, x1, 944, x2)

inst_136:
// rs2_w1_val == -1048577, rs2_w0_val == 65536, rs1_w0_val == 536870912
// opcode: stas32 ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff20000000;  op2val:0xffefffff00010000
TEST_RR_OP(stas32, x31, x30, x29, 0x0000000000000000, 0xefffffff20000000, 0xffefffff00010000, x1, 952, x2)
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


signature_x16_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x16_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 120*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
