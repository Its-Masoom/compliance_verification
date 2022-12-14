
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
// This assembly file tests the smxds32 instruction of the RISC-V RV64PZicsr extension for the smxds32 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smxds32)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x6,signature_x6_1)

inst_0:
// rs1 == rd != rs2, rs1==x11, rs2==x18, rd==x11, rs1_w0_val == -2147483648, rs1_w1_val != rs2_w1_val, rs1_w1_val < 0 and rs2_w1_val > 0, rs1_w0_val != rs2_w0_val, rs1_w0_val < 0 and rs2_w0_val > 0, rs2_w0_val == 4194304, rs2_w1_val == 65536
// opcode: smxds32 ; op1:x11; op2:x18; dest:x11; op1val:0xfffffffa80000000;  op2val:0x01000000400000
TEST_RR_OP(smxds32, x11, x11, x18, 0x0000000000000000, 0xfffffffa80000000, 0x01000000400000, x6, 0, x9)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x4, rs2==x28, rd==x15, rs1_w1_val == rs2_w1_val, rs1_w1_val == 536870912, rs2_w1_val == 536870912, rs2_w0_val == 32768, rs1_w1_val > 0 and rs2_w1_val > 0
// opcode: smxds32 ; op1:x4; op2:x28; dest:x15; op1val:0x20000000fffffff8;  op2val:0x2000000000008000
TEST_RR_OP(smxds32, x15, x4, x28, 0x0000000000000000, 0x20000000fffffff8, 0x2000000000008000, x6, 8, x9)

inst_2:
// rs1 == rs2 != rd, rs1==x13, rs2==x13, rd==x31, rs1_w1_val < 0 and rs2_w1_val < 0, rs1_w1_val == -2097153, rs1_w0_val > 0 and rs2_w0_val < 0, rs1_w0_val == 16384, rs2_w1_val == -1, rs2_w0_val == -33554433
// opcode: smxds32 ; op1:x13; op2:x13; dest:x31; op1val:0xffdfffff00004000;  op2val:0xfffffffffdffffff
TEST_RR_OP(smxds32, x31, x13, x13, 0x0000000000000000, 0xffdfffff00004000, 0xfffffffffdffffff, x6, 16, x9)

inst_3:
// rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs1_w1_val > 0 and rs2_w1_val < 0, rs2_w0_val == -1431655766, rs1_w1_val == 134217728, rs1_w0_val == 256, rs2_w1_val == -8388609
// opcode: smxds32 ; op1:x12; op2:x12; dest:x12; op1val:0x800000000000100;  op2val:0xff7fffffaaaaaaaa
TEST_RR_OP(smxds32, x12, x12, x12, 0x0000000000000000, 0x800000000000100, 0xff7fffffaaaaaaaa, x6, 24, x9)

inst_4:
// rs2 == rd != rs1, rs1==x21, rs2==x29, rd==x29, rs1_w0_val == rs2_w0_val, rs2_w0_val == -32769, rs1_w0_val < 0 and rs2_w0_val < 0, rs1_w0_val == -32769, rs2_w1_val == 16777216, rs1_w1_val == 268435456
// opcode: smxds32 ; op1:x21; op2:x29; dest:x29; op1val:0x10000000ffff7fff;  op2val:0x1000000ffff7fff
TEST_RR_OP(smxds32, x29, x21, x29, 0x0000000000000000, 0x10000000ffff7fff, 0x1000000ffff7fff, x6, 32, x9)

inst_5:
// rs1==x17, rs2==x0, rd==x5, rs1_w0_val > 0 and rs2_w0_val > 0, rs2_w0_val == 1431655765, rs1_w1_val == 131072, rs2_w1_val == 1, rs1_w0_val == 2048
// opcode: smxds32 ; op1:x17; op2:x0; dest:x5; op1val:0x02000000000800;  op2val:0x00000155555555
TEST_RR_OP(smxds32, x5, x17, x0, 0x0000000000000000, 0x02000000000800, 0x00000155555555, x6, 40, x9)

inst_6:
// rs1==x2, rs2==x5, rd==x26, rs2_w1_val == -1431655766, rs1_w0_val == 1048576, rs1_w1_val == 16777216, rs2_w0_val == 134217728
// opcode: smxds32 ; op1:x2; op2:x5; dest:x26; op1val:0x100000000100000;  op2val:0xaaaaaaaa08000000
TEST_RR_OP(smxds32, x26, x2, x5, 0x0000000000000000, 0x100000000100000, 0xaaaaaaaa08000000, x6, 48, x9)

inst_7:
// rs1==x7, rs2==x14, rd==x8, rs2_w1_val == 1431655765, rs2_w0_val == -8388609, rs1_w1_val == 2147483647
// opcode: smxds32 ; op1:x7; op2:x14; dest:x8; op1val:0x7ffffffffffffff9;  op2val:0x55555555ff7fffff
TEST_RR_OP(smxds32, x8, x7, x14, 0x0000000000000000, 0x7ffffffffffffff9, 0x55555555ff7fffff, x6, 56, x9)

inst_8:
// rs1==x20, rs2==x1, rd==x7, rs2_w1_val == 2147483647, rs1_w0_val == 1, rs1_w1_val == 1431655765, rs2_w0_val == -524289
// opcode: smxds32 ; op1:x20; op2:x1; dest:x7; op1val:0x5555555500000001;  op2val:0x7ffffffffff7ffff
TEST_RR_OP(smxds32, x7, x20, x1, 0x0000000000000000, 0x5555555500000001, 0x7ffffffffff7ffff, x6, 64, x9)

inst_9:
// rs1==x23, rs2==x19, rd==x17, rs2_w1_val == -1073741825, rs2_w0_val == 1073741824, rs1_w0_val == -4194305
// opcode: smxds32 ; op1:x23; op2:x19; dest:x17; op1val:0x8000000ffbfffff;  op2val:0xbfffffff40000000
TEST_RR_OP(smxds32, x17, x23, x19, 0x0000000000000000, 0x8000000ffbfffff, 0xbfffffff40000000, x6, 72, x9)

inst_10:
// rs1==x15, rs2==x27, rd==x2, rs2_w1_val == -536870913, rs1_w1_val == 8192, rs2_w0_val == -2097153
// opcode: smxds32 ; op1:x15; op2:x27; dest:x2; op1val:0x002000ffff7fff;  op2val:0xdfffffffffdfffff
TEST_RR_OP(smxds32, x2, x15, x27, 0x0000000000000000, 0x002000ffff7fff, 0xdfffffffffdfffff, x6, 80, x9)

inst_11:
// rs1==x16, rs2==x22, rd==x3, rs2_w1_val == -268435457, rs1_w1_val == -262145, rs1_w0_val == -134217729
// opcode: smxds32 ; op1:x16; op2:x22; dest:x3; op1val:0xfffbfffff7ffffff;  op2val:0xefffffff00000007
TEST_RR_OP(smxds32, x3, x16, x22, 0x0000000000000000, 0xfffbfffff7ffffff, 0xefffffff00000007, x6, 88, x9)

inst_12:
// rs1==x30, rs2==x23, rd==x18, rs2_w1_val == -134217729, rs1_w0_val == -1073741825, rs1_w1_val == -1431655766
// opcode: smxds32 ; op1:x30; op2:x23; dest:x18; op1val:0xaaaaaaaabfffffff;  op2val:0xf7fffffffffffff8
TEST_RR_OP(smxds32, x18, x30, x23, 0x0000000000000000, 0xaaaaaaaabfffffff, 0xf7fffffffffffff8, x6, 96, x9)

inst_13:
// rs1==x18, rs2==x11, rd==x21, rs2_w1_val == -67108865, rs1_w0_val == 16777216, rs2_w0_val == -17
// opcode: smxds32 ; op1:x18; op2:x11; dest:x21; op1val:0x02000001000000;  op2val:0xfbffffffffffffef
TEST_RR_OP(smxds32, x21, x18, x11, 0x0000000000000000, 0x02000001000000, 0xfbffffffffffffef, x6, 104, x12)

inst_14:
// rs1==x1, rs2==x2, rd==x16, rs2_w1_val == -33554433, rs2_w0_val == 16777216, rs1_w0_val == 64, rs1_w1_val == 67108864
// opcode: smxds32 ; op1:x1; op2:x2; dest:x16; op1val:0x400000000000040;  op2val:0xfdffffff01000000
TEST_RR_OP(smxds32, x16, x1, x2, 0x0000000000000000, 0x400000000000040, 0xfdffffff01000000, x6, 112, x12)

inst_15:
// rs1==x10, rs2==x4, rd==x23, rs2_w1_val == -16777217, rs1_w0_val == 1024
// opcode: smxds32 ; op1:x10; op2:x4; dest:x23; op1val:0x1000000000000400;  op2val:0xfefffffffffffff9
TEST_RR_OP(smxds32, x23, x10, x4, 0x0000000000000000, 0x1000000000000400, 0xfefffffffffffff9, x6, 120, x12)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_16:
// rs1==x5, rs2==x16, rd==x30, rs2_w1_val == -4194305, rs1_w1_val == -268435457, rs1_w0_val == 128, rs2_w0_val == 8
// opcode: smxds32 ; op1:x5; op2:x16; dest:x30; op1val:0xefffffff00000080;  op2val:0xffbfffff00000008
TEST_RR_OP(smxds32, x30, x5, x16, 0x0000000000000000, 0xefffffff00000080, 0xffbfffff00000008, x2, 0, x12)

inst_17:
// rs1==x26, rs2==x24, rd==x10, rs2_w1_val == -2097153, rs1_w0_val == 2147483647, rs1_w1_val == -67108865
// opcode: smxds32 ; op1:x26; op2:x24; dest:x10; op1val:0xfbffffff7fffffff;  op2val:0xffdfffff01000000
TEST_RR_OP(smxds32, x10, x26, x24, 0x0000000000000000, 0xfbffffff7fffffff, 0xffdfffff01000000, x2, 8, x12)

inst_18:
// rs1==x25, rs2==x7, rd==x0, rs2_w1_val == -1048577, rs1_w0_val == -33554433
// opcode: smxds32 ; op1:x25; op2:x7; dest:x0; op1val:0x55555555fdffffff;  op2val:0xffefffff00000007
TEST_RR_OP(smxds32, x0, x25, x7, 0x0000000000000000, 0x55555555fdffffff, 0xffefffff00000007, x2, 16, x12)

inst_19:
// rs1==x28, rs2==x15, rd==x14, rs2_w1_val == -524289, rs1_w1_val == -4194305, rs1_w0_val == -65537, rs2_w0_val == 64
// opcode: smxds32 ; op1:x28; op2:x15; dest:x14; op1val:0xffbffffffffeffff;  op2val:0xfff7ffff00000040
TEST_RR_OP(smxds32, x14, x28, x15, 0x0000000000000000, 0xffbffffffffeffff, 0xfff7ffff00000040, x2, 24, x12)

inst_20:
// rs1==x9, rs2==x26, rd==x27, rs2_w1_val == -262145, rs2_w0_val == 8388608, rs1_w0_val == 134217728, rs1_w1_val == 128
// opcode: smxds32 ; op1:x9; op2:x26; dest:x27; op1val:0x00008008000000;  op2val:0xfffbffff00800000
TEST_RR_OP(smxds32, x27, x9, x26, 0x0000000000000000, 0x00008008000000, 0xfffbffff00800000, x2, 32, x12)

inst_21:
// rs1==x0, rs2==x21, rd==x28, rs2_w1_val == -131073, rs1_w1_val == 4096, rs2_w0_val == -33, rs1_w0_val == 524288
// opcode: smxds32 ; op1:x0; op2:x21; dest:x28; op1val:0x00100000080000;  op2val:0xfffdffffffffffdf
TEST_RR_OP(smxds32, x28, x0, x21, 0x0000000000000000, 0x00100000080000, 0xfffdffffffffffdf, x2, 40, x12)

inst_22:
// rs1==x14, rs2==x6, rd==x9, rs2_w1_val == -65537, rs1_w0_val == -1
// opcode: smxds32 ; op1:x14; op2:x6; dest:x9; op1val:0x001000ffffffff;  op2val:0xfffeffffffffffef
TEST_RR_OP(smxds32, x9, x14, x6, 0x0000000000000000, 0x001000ffffffff, 0xfffeffffffffffef, x2, 48, x12)

inst_23:
// rs1==x22, rs2==x3, rd==x25, rs2_w1_val == -32769, rs1_w1_val == 4
// opcode: smxds32 ; op1:x22; op2:x3; dest:x25; op1val:0x00000400000080;  op2val:0xffff7fffff7fffff
TEST_RR_OP(smxds32, x25, x22, x3, 0x0000000000000000, 0x00000400000080, 0xffff7fffff7fffff, x2, 56, x12)

inst_24:
// rs1==x27, rs2==x9, rd==x22, rs2_w1_val == -16385, rs1_w0_val == 1431655765
// opcode: smxds32 ; op1:x27; op2:x9; dest:x22; op1val:0xfbffffff55555555;  op2val:0xffffbfff3fffffff
TEST_RR_OP(smxds32, x22, x27, x9, 0x0000000000000000, 0xfbffffff55555555, 0xffffbfff3fffffff, x2, 64, x12)

inst_25:
// rs1==x29, rs2==x30, rd==x24, rs2_w1_val == -8193, rs1_w1_val == 64, rs1_w0_val == -8193
// opcode: smxds32 ; op1:x29; op2:x30; dest:x24; op1val:0x000040ffffdfff;  op2val:0xffffdfff00400000
TEST_RR_OP(smxds32, x24, x29, x30, 0x0000000000000000, 0x000040ffffdfff, 0xffffdfff00400000, x2, 72, x12)

inst_26:
// rs1==x31, rs2==x8, rd==x4, rs2_w1_val == -4097, rs1_w1_val == 1
// opcode: smxds32 ; op1:x31; op2:x8; dest:x4; op1val:0x000001fffffff9;  op2val:0xffffefff00000008
TEST_RR_OP(smxds32, x4, x31, x8, 0x0000000000000000, 0x000001fffffff9, 0xffffefff00000008, x2, 80, x12)

inst_27:
// rs1==x3, rs2==x31, rd==x6, rs2_w1_val == -2049, rs2_w0_val == -65537, rs1_w0_val == -8388609
// opcode: smxds32 ; op1:x3; op2:x31; dest:x6; op1val:0x8000000ff7fffff;  op2val:0xfffff7fffffeffff
TEST_RR_OP(smxds32, x6, x3, x31, 0x0000000000000000, 0x8000000ff7fffff, 0xfffff7fffffeffff, x2, 88, x12)

inst_28:
// rs1==x24, rs2==x25, rd==x13, rs2_w1_val == -1025, rs1_w1_val == -16385, rs1_w0_val == 65536
// opcode: smxds32 ; op1:x24; op2:x25; dest:x13; op1val:0xffffbfff00010000;  op2val:0xfffffbfffffffffc
TEST_RR_OP(smxds32, x13, x24, x25, 0x0000000000000000, 0xffffbfff00010000, 0xfffffbfffffffffc, x2, 96, x12)

inst_29:
// rs1==x6, rs2==x17, rd==x20, rs2_w1_val == -513, rs1_w0_val == 131072, rs1_w1_val == -513, rs2_w0_val == 268435456
// opcode: smxds32 ; op1:x6; op2:x17; dest:x20; op1val:0xfffffdff00020000;  op2val:0xfffffdff10000000
TEST_RR_OP(smxds32, x20, x6, x17, 0x0000000000000000, 0xfffffdff00020000, 0xfffffdff10000000, x2, 104, x3)

inst_30:
// rs1==x19, rs2==x20, rd==x1, rs2_w1_val == -257, rs2_w0_val == 65536, rs1_w0_val == -17
// opcode: smxds32 ; op1:x19; op2:x20; dest:x1; op1val:0xfffbffffffffffef;  op2val:0xfffffeff00010000
TEST_RR_OP(smxds32, x1, x19, x20, 0x0000000000000000, 0xfffbffffffffffef, 0xfffffeff00010000, x2, 112, x3)

inst_31:
// rs1==x8, rs2==x10, rd==x19, rs2_w1_val == -129, rs1_w1_val == -65, rs2_w0_val == -16777217, rs1_w0_val == -268435457
// opcode: smxds32 ; op1:x8; op2:x10; dest:x19; op1val:0xffffffbfefffffff;  op2val:0xffffff7ffeffffff
TEST_RR_OP(smxds32, x19, x8, x10, 0x0000000000000000, 0xffffffbfefffffff, 0xffffff7ffeffffff, x2, 120, x3)

inst_32:
// rs2_w1_val == -65, rs2_w0_val == -2, rs1_w1_val == 0
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000000000007;  op2val:0xffffffbffffffffe
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000000000007, 0xffffffbffffffffe, x2, 128, x3)

inst_33:
// rs2_w1_val == -33, rs2_w0_val == -67108865, rs1_w0_val == -1048577, rs1_w1_val == 32768
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x008000ffefffff;  op2val:0xffffffdffbffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x008000ffefffff, 0xffffffdffbffffff, x2, 136, x3)

inst_34:
// rs2_w1_val == -17, rs2_w0_val == -3, rs1_w1_val == -3, rs1_w0_val == -2049
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdfffff7ff;  op2val:0xffffffeffffffffd
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffdfffff7ff, 0xffffffeffffffffd, x2, 144, x3)

inst_35:
// rs2_w1_val == -9, rs1_w0_val == 2097152
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000300200000;  op2val:0xfffffff700000040
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000300200000, 0xfffffff700000040, x2, 152, x3)

inst_36:
// rs2_w1_val == -5, rs1_w1_val == -16777217, rs2_w0_val == 2048
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff00000080;  op2val:0xfffffffb00000800
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfeffffff00000080, 0xfffffffb00000800, x2, 160, x3)

inst_37:
// rs2_w1_val == -3, rs2_w0_val == -16385, rs1_w1_val == 33554432
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x200000000000001;  op2val:0xfffffffdffffbfff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x200000000000001, 0xfffffffdffffbfff, x2, 168, x3)

inst_38:
// rs2_w1_val == -2, rs1_w1_val == -134217729
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffffffffffc;  op2val:0xfffffffe55555555
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xf7fffffffffffffc, 0xfffffffe55555555, x2, 176, x3)

inst_39:
// rs2_w1_val == -2147483648, rs1_w1_val == 256
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00010000020000;  op2val:0x80000000fffffff9
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00010000020000, 0x80000000fffffff9, x2, 184, x3)

inst_40:
// rs2_w1_val == 1073741824, rs1_w1_val == -33554433, rs2_w0_val == -2049
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffff00000080;  op2val:0x40000000fffff7ff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfdffffff00000080, 0x40000000fffff7ff, x2, 192, x3)

inst_41:
// rs2_w1_val == 268435456, rs2_w0_val == 262144
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbffffffff8;  op2val:0x1000000000040000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffffbffffffff8, 0x1000000000040000, x2, 200, x3)

inst_42:
// rs2_w1_val == 134217728, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000055555555;  op2val:0x8000000aaaaaaaa
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000055555555, 0x8000000aaaaaaaa, x2, 208, x3)

inst_43:
// rs2_w1_val == 67108864, rs1_w0_val == 32768
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x3fffffff00008000;  op2val:0x400000008000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x3fffffff00008000, 0x400000008000000, x2, 216, x3)

inst_44:
// rs2_w1_val == 33554432, rs2_w0_val == 128, rs1_w1_val == -257
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff7fffffff;  op2val:0x200000000000080
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffeff7fffffff, 0x200000000000080, x2, 224, x3)

inst_45:
// rs2_w1_val == 8388608, rs1_w1_val == -4097
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffefffbfffffff;  op2val:0x80000000000040
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffefffbfffffff, 0x80000000000040, x2, 232, x3)

inst_46:
// rs2_w1_val == 4194304, rs2_w0_val == -4194305
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffff00200000;  op2val:0x400000ffbfffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfdffffff00200000, 0x400000ffbfffff, x2, 240, x3)

inst_47:
// rs2_w1_val == 2097152, rs2_w0_val == 524288
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd00000007;  op2val:0x20000000080000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffd00000007, 0x20000000080000, x2, 248, x3)

inst_48:
// rs2_w1_val == 1048576, rs1_w1_val == -1073741825
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffffffffdfff;  op2val:0x100000fffffff8
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xbfffffffffffdfff, 0x100000fffffff8, x2, 256, x3)

inst_49:
// rs2_w1_val == 524288, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00000003;  op2val:0x08000000000006
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffefff00000003, 0x08000000000006, x2, 264, x3)

inst_50:
// rs1_w0_val == 33554432, rs2_w1_val == 2, rs1_w1_val == -32769
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffff7fff02000000;  op2val:0x00000200080000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffff7fff02000000, 0x00000200080000, x2, 272, x3)

inst_51:
// rs1_w0_val == 8388608, rs1_w1_val == 1048576
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x10000000800000;  op2val:0x000009fff7ffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x10000000800000, 0x000009fff7ffff, x2, 280, x3)

inst_52:
// rs1_w0_val == 4194304, rs1_w1_val == -129
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f00400000;  op2val:0xffffdfffffdfffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffff7f00400000, 0xffffdfffffdfffff, x2, 288, x3)

inst_53:
// rs1_w0_val == 262144, rs1_w1_val == 16384
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00400000040000;  op2val:0xfffffffafffff7ff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00400000040000, 0xfffffffafffff7ff, x2, 296, x3)

inst_54:
// rs1_w0_val == 8192, rs1_w1_val == 8388608
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x80000000002000;  op2val:0xaaaaaaaa00000006
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x80000000002000, 0xaaaaaaaa00000006, x2, 304, x3)

inst_55:
// rs1_w0_val == 4096, rs1_w1_val == -2049
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7ff00001000;  op2val:0x5555555500040000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffff7ff00001000, 0x5555555500040000, x2, 312, x3)

inst_56:
// rs1_w0_val == 512, rs2_w1_val == 8
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x3fffffff00000200;  op2val:0x000008fffffffe
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x3fffffff00000200, 0x000008fffffffe, x2, 320, x3)

inst_57:
// rs1_w0_val == 32, rs2_w0_val == -1025
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffa00000020;  op2val:0x000009fffffbff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffa00000020, 0x000009fffffbff, x2, 328, x3)

inst_58:
// rs1_w0_val == 16, rs2_w1_val == 32, rs2_w0_val == -129
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x02000000000010;  op2val:0x000020ffffff7f
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x02000000000010, 0x000020ffffff7f, x2, 336, x3)

inst_59:
// rs1_w0_val == 8, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000600000008;  op2val:0xfffffefffdffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000600000008, 0xfffffefffdffffff, x2, 344, x3)

inst_60:
// rs1_w0_val == 4, rs2_w0_val == 1024, rs2_w1_val == 4
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000500000004;  op2val:0x00000400000400
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000500000004, 0x00000400000400, x2, 352, x3)

inst_61:
// rs1_w0_val == 2, rs2_w0_val == 536870912
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x200000000000002;  op2val:0x00002020000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x200000000000002, 0x00002020000000, x2, 360, x3)

inst_62:
// rs1_w0_val == 0, rs2_w0_val == 32
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x800000000000000;  op2val:0xffffffff00000020
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x800000000000000, 0xffffffff00000020, x2, 368, x3)

inst_63:
// rs2_w1_val == 262144, rs1_w0_val == -65
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x001000ffffffbf;  op2val:0x040000ffdfffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x001000ffffffbf, 0x040000ffdfffff, x2, 376, x3)

inst_64:
// rs2_w1_val == 131072, rs1_w1_val == -131073
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff00000400;  op2val:0x020000fffffff6
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffdffff00000400, 0x020000fffffff6, x2, 384, x3)

inst_65:
// rs2_w1_val == 32768, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x008000fffffff9;  op2val:0x008000fffffffd
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x008000fffffff9, 0x008000fffffffd, x2, 392, x3)

inst_66:
// rs2_w1_val == 16384, rs2_w0_val == 16384, rs1_w0_val == -16385
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000009ffffbfff;  op2val:0x00400000004000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000009ffffbfff, 0x00400000004000, x2, 400, x3)

inst_67:
// rs2_w1_val == 8192, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff00008000;  op2val:0x00200000000020
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffdff00008000, 0x00200000000020, x2, 408, x3)

inst_68:
// rs2_w1_val == 4096, rs1_w0_val == -67108865, rs1_w1_val == -2147483648
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x80000000fbffffff;  op2val:0x00100000040000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x80000000fbffffff, 0x00100000040000, x2, 416, x3)

inst_69:
// rs2_w1_val == 2048, rs1_w1_val == 32, rs2_w0_val == 2147483647
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00002000002000;  op2val:0x0008007fffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00002000002000, 0x0008007fffffff, x2, 424, x3)

inst_70:
// rs2_w1_val == 1024, rs2_w0_val == 2
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x10000000ff7fffff;  op2val:0x00040000000002
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x10000000ff7fffff, 0x00040000000002, x2, 432, x3)

inst_71:
// rs2_w1_val == 512, rs1_w1_val == -524289
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffff00000006;  op2val:0x00020000000007
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfff7ffff00000006, 0x00020000000007, x2, 440, x3)

inst_72:
// rs2_w1_val == 256, rs1_w1_val == 262144
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x040000c0000000;  op2val:0x000100fffffffe
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x040000c0000000, 0x000100fffffffe, x2, 448, x3)

inst_73:
// rs2_w1_val == 128, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbffffffbffffff;  op2val:0x000080ffffffef
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffbffffffbffffff, 0x000080ffffffef, x2, 456, x3)

inst_74:
// rs2_w1_val == 64, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000500100000;  op2val:0x000040fffffffc
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000500100000, 0x000040fffffffc, x2, 464, x3)

inst_75:
// rs2_w1_val == 16, rs1_w1_val == -65537
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffff00001000;  op2val:0x000010feffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffeffff00001000, 0x000010feffffff, x2, 472, x3)

inst_76:
// rs2_w1_val == 0, rs2_w0_val == 4096, rs1_w1_val == -8388609
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffffffffffff6;  op2val:0x00000000001000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xff7ffffffffffff6, 0x00000000001000, x2, 480, x3)

inst_77:
// rs2_w0_val == -1073741825, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffc00000020;  op2val:0x020000bfffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffc00000020, 0x020000bfffffff, x2, 488, x3)

inst_78:
// rs2_w0_val == -536870913, rs1_w0_val == 67108864
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00800004000000;  op2val:0xfffffff9dfffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00800004000000, 0xfffffff9dfffffff, x2, 496, x3)

inst_79:
// rs2_w0_val == -268435457, rs1_w1_val == 2097152, rs1_w0_val == -1431655766
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x200000aaaaaaaa;  op2val:0xfffffbffefffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x200000aaaaaaaa, 0xfffffbffefffffff, x2, 504, x3)

inst_80:
// rs2_w0_val == -134217729, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f00800000;  op2val:0x020000f7ffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffff7f00800000, 0x020000f7ffffff, x2, 512, x3)

inst_81:
// rs2_w0_val == 131072, rs1_w0_val == -524289
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaafff7ffff;  op2val:0x00000200020000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaafff7ffff, 0x00000200020000, x2, 520, x3)

inst_82:
// rs2_w0_val == 8192, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000020fffffff9;  op2val:0xfff7ffff00002000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000020fffffff9, 0xfff7ffff00002000, x2, 528, x3)

inst_83:
// rs2_w0_val == 512, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffffff7fffff;  op2val:0xffffefff00000200
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffbfffffff7fffff, 0xffffefff00000200, x2, 536, x3)

inst_84:
// rs2_w0_val == 256, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbffff00000100;  op2val:0x20000000000100
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffbffff00000100, 0x20000000000100, x2, 544, x3)

inst_85:
// rs2_w0_val == 16, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaafffffff9;  op2val:0xfffffdff00000010
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaafffffff9, 0xfffffdff00000010, x2, 552, x3)

inst_86:
// rs2_w0_val == 4, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeffff7fffff;  op2val:0xffffbfff00000004
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffeffff7fffff, 0xffffbfff00000004, x2, 560, x3)

inst_87:
// rs2_w0_val == 1, rs1_w1_val == 4194304, rs1_w0_val == -1025
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x400000fffffbff;  op2val:0xfffffffa00000001
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x400000fffffbff, 0xfffffffa00000001, x2, 568, x3)

inst_88:
// rs2_w0_val == 0, rs1_w0_val == -5, rs1_w1_val == -9
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7fffffffb;  op2val:0x00004000000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffff7fffffffb, 0x00004000000000, x2, 576, x3)

inst_89:
// rs2_w0_val == -1, rs1_w0_val == -257
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x800000fffffeff;  op2val:0xdfffffffffffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x800000fffffeff, 0xdfffffffffffffff, x2, 584, x3)

inst_90:
// rs1_w1_val == -536870913, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffffff01000000;  op2val:0xfffffffdffdfffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xdfffffff01000000, 0xfffffffdffdfffff, x2, 592, x3)

inst_91:
// rs1_w1_val == -1048577, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff80000000;  op2val:0xdfffffff10000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffefffff80000000, 0xdfffffff10000000, x2, 600, x3)

inst_92:
// rs1_w1_val == -8193, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff00040000;  op2val:0x02000000000800
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffdfff00040000, 0x02000000000800, x2, 608, x3)

inst_93:
// rs1_w1_val == -1025, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff00000800;  op2val:0xfffffffaffffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffbff00000800, 0xfffffffaffffffff, x2, 616, x3)

inst_94:
// rs1_w1_val == -33, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf00008000;  op2val:0xfffffff900020000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffffdf00008000, 0xfffffff900020000, x2, 624, x3)

inst_95:
// rs1_w1_val == -17, rs2_w0_val == -262145
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef00000001;  op2val:0x001000fffbffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffffef00000001, 0x001000fffbffff, x2, 632, x3)

inst_96:
// rs1_w1_val == -5, rs1_w0_val == -2
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffbfffffffe;  op2val:0x040000f7ffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffbfffffffe, 0x040000f7ffffff, x2, 640, x3)

inst_97:
// rs1_w1_val == -2, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe00002000;  op2val:0x00000300008000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffe00002000, 0x00000300008000, x2, 648, x3)

inst_98:
// rs1_w1_val == 1073741824, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x4000000000040000;  op2val:0x8000000000000004
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x4000000000040000, 0x8000000000000004, x2, 656, x3)

inst_99:
// rs1_w1_val == 524288, rs1_w0_val == -4097
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x080000ffffefff;  op2val:0xaaaaaaaa00000008
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x080000ffffefff, 0xaaaaaaaa00000008, x2, 664, x3)

inst_100:
// rs1_w1_val == 65536, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x01000000040000;  op2val:0x08000000000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x01000000040000, 0x08000000000000, x2, 672, x3)

inst_101:
// rs1_w1_val == 2048, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00080055555555;  op2val:0xffffffef00008000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00080055555555, 0xffffffef00008000, x2, 680, x3)

inst_102:
// rs1_w1_val == 1024, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00040055555555;  op2val:0x1000000ffffff7f
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00040055555555, 0x1000000ffffff7f, x2, 688, x3)

inst_103:
// rs1_w1_val == 512, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00020000000007;  op2val:0x08000000000009
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00020000000007, 0x08000000000009, x2, 696, x3)

inst_104:
// rs1_w1_val == 16, rs2_w0_val == 33554432
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00001000000002;  op2val:0x3fffffff02000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00001000000002, 0x3fffffff02000000, x2, 704, x3)

inst_105:
// rs1_w1_val == 8, rs2_w0_val == -257
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000008ff7fffff;  op2val:0xfffffefffffffeff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000008ff7fffff, 0xfffffefffffffeff, x2, 712, x3)

inst_106:
// rs1_w1_val == 2, rs2_w0_val == -513, rs1_w0_val == 1073741824
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000240000000;  op2val:0x400000fffffdff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000240000000, 0x400000fffffdff, x2, 720, x3)

inst_107:
// rs1_w1_val == -1, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff00000007;  op2val:0xf7ffffff00000400
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffffff00000007, 0xf7ffffff00000400, x2, 728, x3)

inst_108:
// rs1_w0_val == -536870913, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000100dfffffff;  op2val:0x4000000fdffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000100dfffffff, 0x4000000fdffffff, x2, 736, x3)

inst_109:
// rs2_w0_val == -1048577, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x80000000fffeffff;  op2val:0x000020ffefffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x80000000fffeffff, 0x000020ffefffff, x2, 744, x3)

inst_110:
// rs1_w0_val == 268435456, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff910000000;  op2val:0xffffffff00000006
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffff910000000, 0xffffffff00000006, x2, 752, x3)

inst_111:
// rs2_w0_val == -131073, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000400ffffefff;  op2val:0xfffffff9fffdffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000400ffffefff, 0xfffffff9fffdffff, x2, 760, x3)

inst_112:
// rs1_w0_val == -16777217, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000020feffffff;  op2val:0xffefffffffdfffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000020feffffff, 0xffefffffffdfffff, x2, 768, x3)

inst_113:
// rs2_w0_val == -8193, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7fffffff8;  op2val:0xffffffffffffdfff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffff7fffffff8, 0xffffffffffffdfff, x2, 776, x3)

inst_114:
// rs1_w0_val == -2097153, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffaffdfffff;  op2val:0xfffffffbfffffeff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffaffdfffff, 0xfffffffbfffffeff, x2, 784, x3)

inst_115:
// rs2_w0_val == -4097, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdffbfffff;  op2val:0x010000ffffefff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffdffbfffff, 0x010000ffffefff, x2, 792, x3)

inst_116:
// rs1_w0_val == -262145, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000080fffbffff;  op2val:0xfffff7fffbffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000080fffbffff, 0xfffff7fffbffffff, x2, 800, x3)

inst_117:
// rs1_w0_val == -131073, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffffffffdffff;  op2val:0x2000000000000007
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x7ffffffffffdffff, 0x2000000000000007, x2, 808, x3)

inst_118:
// rs2_w0_val == -65, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x04000008000000;  op2val:0xffffffbfffffffbf
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x04000008000000, 0xffffffbfffffffbf, x2, 816, x3)

inst_119:
// rs2_w0_val == -9, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff01000000;  op2val:0x000400fffffff7
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffdfff01000000, 0x000400fffffff7, x2, 824, x3)

inst_120:
// rs2_w0_val == -5, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00010000008000;  op2val:0xffffdffffffffffb
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00010000008000, 0xffffdffffffffffb, x2, 832, x3)

inst_121:
// rs1_w0_val == -513, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000800fffffdff;  op2val:0x001000dfffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000800fffffdff, 0x001000dfffffff, x2, 840, x3)

inst_122:
// rs2_w0_val == -2147483648, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000020f7ffffff;  op2val:0x00400080000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000020f7ffffff, 0x00400080000000, x2, 848, x3)

inst_123:
// rs1_w0_val == -129, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffffffffff7f;  op2val:0x20000000001000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffffffffffffff7f, 0x20000000001000, x2, 856, x3)

inst_124:
// rs1_w0_val == -33, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x000004ffffffdf;  op2val:0x8000000000010000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x000004ffffffdf, 0x8000000000010000, x2, 864, x3)

inst_125:
// rs1_w0_val == -9, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffefffffffff7;  op2val:0x4000000fffbffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffefffffffff7, 0x4000000fffbffff, x2, 872, x3)

inst_126:
// rs2_w0_val == 67108864, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xbffffffffffffffc;  op2val:0x00000004000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xbffffffffffffffc, 0x00000004000000, x2, 880, x3)

inst_127:
// rs1_w0_val == -3, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000fffffffd;  op2val:0xfbfffffffffffbff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x1000000fffffffd, 0xfbfffffffffffbff, x2, 888, x3)

inst_128:
// rs1_w0_val == 536870912, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00000520000000;  op2val:0x00000080000000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00000520000000, 0x00000080000000, x2, 896, x3)

inst_129:
// rs2_w0_val == 2097152, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff00004000;  op2val:0x00000500200000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffdff00004000, 0x00000500200000, x2, 904, x3)

inst_130:
// rs2_w0_val == 1048576, 
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb00000003;  op2val:0x200000000100000
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xfffffffb00000003, 0x200000000100000, x2, 912, x3)

inst_131:
// rs1_w1_val < 0 and rs2_w1_val < 0, rs1_w1_val == -2097153, rs1_w0_val > 0 and rs2_w0_val < 0, rs1_w0_val == 16384, rs2_w1_val == -1, rs2_w0_val == -33554433
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff00004000;  op2val:0xfffffffffdffffff
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0xffdfffff00004000, 0xfffffffffdffffff, x2, 920, x3)

inst_132:
// rs1_w1_val > 0 and rs2_w1_val < 0, rs2_w0_val == -1431655766, rs1_w1_val == 134217728, rs1_w0_val == 256, rs2_w1_val == -8388609
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x800000000000100;  op2val:0xff7fffffaaaaaaaa
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x800000000000100, 0xff7fffffaaaaaaaa, x2, 928, x3)

inst_133:
// rs1_w0_val > 0 and rs2_w0_val > 0, rs2_w0_val == 1431655765, rs1_w1_val == 131072, rs2_w1_val == 1, rs1_w0_val == 2048
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x02000000000800;  op2val:0x00000155555555
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x02000000000800, 0x00000155555555, x2, 936, x3)

inst_134:
// rs2_w1_val == -1048577, rs1_w0_val == -33554433
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x55555555fdffffff;  op2val:0xffefffff00000007
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x55555555fdffffff, 0xffefffff00000007, x2, 944, x3)

inst_135:
// rs2_w1_val == -131073, rs1_w1_val == 4096, rs2_w0_val == -33, rs1_w0_val == 524288
// opcode: smxds32 ; op1:x30; op2:x29; dest:x31; op1val:0x00100000080000;  op2val:0xfffdffffffffffdf
TEST_RR_OP(smxds32, x31, x30, x29, 0x0000000000000000, 0x00100000080000, 0xfffdffffffffffdf, x2, 952, x3)
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


signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
