
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
// This assembly file tests the sraiw.u instruction of the RISC-V RV64PZicsr extension for the sraiw.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sraiw.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd, rs1==x31, rd==x31, rs1_w0_val == -2147483648, imm_val == 30
// opcode: sraiw.u ; op1:x31; dest:x31; op1val:0xfffffffa80000000;  immval:0x1e
TEST_IMM_OP( sraiw.u, x31, x31, 0x0000000000000000, 0xfffffffa80000000, 0x1e, x1, 0, x7)

inst_1:
// rs1 != rd, rs1==x20, rd==x14, imm_val == 31, rs1_w0_val == 67108864, rs1_w1_val == 16384
// opcode: sraiw.u ; op1:x20; dest:x14; op1val:0x00400004000000;  immval:0x1f
TEST_IMM_OP( sraiw.u, x14, x20, 0x0000000000000000, 0x00400004000000, 0x1f, x1, 8, x7)

inst_2:
// rs1==x10, rd==x30, imm_val == 29, rs1_w1_val == -262145
// opcode: sraiw.u ; op1:x10; dest:x30; op1val:0xfffbfffffffffffa;  immval:0x1d
TEST_IMM_OP( sraiw.u, x30, x10, 0x0000000000000000, 0xfffbfffffffffffa, 0x1d, x1, 16, x7)

inst_3:
// rs1==x2, rd==x6, imm_val == 28, rs1_w1_val == 256, rs1_w0_val == -17
// opcode: sraiw.u ; op1:x2; dest:x6; op1val:0x000100ffffffef;  immval:0x1c
TEST_IMM_OP( sraiw.u, x6, x2, 0x0000000000000000, 0x000100ffffffef, 0x1c, x1, 24, x7)

inst_4:
// rs1==x9, rd==x16, imm_val == 27, rs1_w0_val == -1073741825
// opcode: sraiw.u ; op1:x9; dest:x16; op1val:0xfffffff6bfffffff;  immval:0x1b
TEST_IMM_OP( sraiw.u, x16, x9, 0x0000000000000000, 0xfffffff6bfffffff, 0x1b, x1, 32, x7)

inst_5:
// rs1==x19, rd==x3, imm_val == 26, rs1_w0_val == 1073741824
// opcode: sraiw.u ; op1:x19; dest:x3; op1val:0x00010040000000;  immval:0x1a
TEST_IMM_OP( sraiw.u, x3, x19, 0x0000000000000000, 0x00010040000000, 0x1a, x1, 40, x7)

inst_6:
// rs1==x17, rd==x18, imm_val == 25, rs1_w1_val == 1, rs1_w0_val == 2
// opcode: sraiw.u ; op1:x17; dest:x18; op1val:0x00000100000002;  immval:0x19
TEST_IMM_OP( sraiw.u, x18, x17, 0x0000000000000000, 0x00000100000002, 0x19, x1, 48, x7)

inst_7:
// rs1==x29, rd==x22, imm_val == 24, rs1_w1_val == -8388609, rs1_w0_val == -67108865
// opcode: sraiw.u ; op1:x29; dest:x22; op1val:0xff7ffffffbffffff;  immval:0x18
TEST_IMM_OP( sraiw.u, x22, x29, 0x0000000000000000, 0xff7ffffffbffffff, 0x18, x1, 56, x7)

inst_8:
// rs1==x30, rd==x17, imm_val == 23, rs1_w1_val == 536870912, rs1_w0_val == 0
// opcode: sraiw.u ; op1:x30; dest:x17; op1val:0x2000000000000000;  immval:0x17
TEST_IMM_OP( sraiw.u, x17, x30, 0x0000000000000000, 0x2000000000000000, 0x17, x1, 64, x7)

inst_9:
// rs1==x3, rd==x10, imm_val == 22, rs1_w1_val == 4, rs1_w0_val == 512
// opcode: sraiw.u ; op1:x3; dest:x10; op1val:0x00000400000200;  immval:0x16
TEST_IMM_OP( sraiw.u, x10, x3, 0x0000000000000000, 0x00000400000200, 0x16, x1, 72, x7)

inst_10:
// rs1==x5, rd==x25, imm_val == 21, rs1_w1_val == -2147483648, rs1_w0_val == -9
// opcode: sraiw.u ; op1:x5; dest:x25; op1val:0x80000000fffffff7;  immval:0x15
TEST_IMM_OP( sraiw.u, x25, x5, 0x0000000000000000, 0x80000000fffffff7, 0x15, x1, 80, x7)

inst_11:
// rs1==x11, rd==x29, imm_val == 20, rs1_w0_val == -8193
// opcode: sraiw.u ; op1:x11; dest:x29; op1val:0x000004ffffdfff;  immval:0x14
TEST_IMM_OP( sraiw.u, x29, x11, 0x0000000000000000, 0x000004ffffdfff, 0x14, x1, 88, x7)

inst_12:
// rs1==x6, rd==x9, imm_val == 19, rs1_w1_val == 1048576
// opcode: sraiw.u ; op1:x6; dest:x9; op1val:0x10000040000000;  immval:0x13
TEST_IMM_OP( sraiw.u, x9, x6, 0x0000000000000000, 0x10000040000000, 0x13, x1, 96, x7)

inst_13:
// rs1==x16, rd==x0, imm_val == 18, rs1_w0_val == 8, rs1_w1_val == -8193
// opcode: sraiw.u ; op1:x16; dest:x0; op1val:0xffffdfff00000008;  immval:0x12
TEST_IMM_OP( sraiw.u, x0, x16, 0x0000000000000000, 0xffffdfff00000008, 0x12, x1, 104, x7)

inst_14:
// rs1==x22, rd==x20, imm_val == 17, rs1_w0_val == -16385, rs1_w1_val == -257
// opcode: sraiw.u ; op1:x22; dest:x20; op1val:0xfffffeffffffbfff;  immval:0x11
TEST_IMM_OP( sraiw.u, x20, x22, 0x0000000000000000, 0xfffffeffffffbfff, 0x11, x1, 112, x7)

inst_15:
// rs1==x24, rd==x5, imm_val == 16, rs1_w0_val == 16, rs1_w1_val == -4097
// opcode: sraiw.u ; op1:x24; dest:x5; op1val:0xffffefff00000010;  immval:0x10
TEST_IMM_OP( sraiw.u, x5, x24, 0x0000000000000000, 0xffffefff00000010, 0x10, x1, 120, x7)

inst_16:
// rs1==x4, rd==x28, imm_val == 15, rs1_w0_val == 2048, rs1_w1_val == -2097153
// opcode: sraiw.u ; op1:x4; dest:x28; op1val:0xffdfffff00000800;  immval:0xf
TEST_IMM_OP( sraiw.u, x28, x4, 0x0000000000000000, 0xffdfffff00000800, 0xf, x1, 128, x7)

inst_17:
// rs1==x27, rd==x8, imm_val == 14, rs1_w1_val == 131072, rs1_w0_val == 64
// opcode: sraiw.u ; op1:x27; dest:x8; op1val:0x02000000000040;  immval:0xe
TEST_IMM_OP( sraiw.u, x8, x27, 0x0000000000000000, 0x02000000000040, 0xe, x1, 136, x7)

inst_18:
// rs1==x25, rd==x13, imm_val == 13, rs1_w1_val == 2048
// opcode: sraiw.u ; op1:x25; dest:x13; op1val:0x00080000000008;  immval:0xd
TEST_IMM_OP( sraiw.u, x13, x25, 0x0000000000000000, 0x00080000000008, 0xd, x1, 144, x7)

inst_19:
// rs1==x26, rd==x12, imm_val == 12, rs1_w0_val == 1048576
// opcode: sraiw.u ; op1:x26; dest:x12; op1val:0x00000500100000;  immval:0xc
TEST_IMM_OP( sraiw.u, x12, x26, 0x0000000000000000, 0x00000500100000, 0xc, x1, 152, x7)

inst_20:
// rs1==x14, rd==x19, imm_val == 11, rs1_w1_val == 32
// opcode: sraiw.u ; op1:x14; dest:x19; op1val:0x00002000000002;  immval:0xb
TEST_IMM_OP( sraiw.u, x19, x14, 0x0000000000000000, 0x00002000000002, 0xb, x1, 160, x7)

inst_21:
// rs1==x23, rd==x24, imm_val == 10, rs1_w1_val == -513, rs1_w0_val == -3
// opcode: sraiw.u ; op1:x23; dest:x24; op1val:0xfffffdfffffffffd;  immval:0xa
TEST_IMM_OP( sraiw.u, x24, x23, 0x0000000000000000, 0xfffffdfffffffffd, 0xa, x1, 168, x7)

inst_22:
// rs1==x0, rd==x27, imm_val == 9, 
// opcode: sraiw.u ; op1:x0; dest:x27; op1val:0x00080000000800;  immval:0x9
TEST_IMM_OP( sraiw.u, x27, x0, 0x0000000000000000, 0x00080000000800, 0x9, x1, 176, x5)

inst_23:
// rs1==x28, rd==x7, imm_val == 8, rs1_w1_val == 128, rs1_w0_val == 16777216
// opcode: sraiw.u ; op1:x28; dest:x7; op1val:0x00008001000000;  immval:0x8
TEST_IMM_OP( sraiw.u, x7, x28, 0x0000000000000000, 0x00008001000000, 0x8, x1, 184, x5)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_24:
// rs1==x15, rd==x21, imm_val == 7, rs1_w1_val == -1048577
// opcode: sraiw.u ; op1:x15; dest:x21; op1val:0xffeffffffffffffd;  immval:0x7
TEST_IMM_OP( sraiw.u, x21, x15, 0x0000000000000000, 0xffeffffffffffffd, 0x7, x3, 0, x5)

inst_25:
// rs1==x12, rd==x15, imm_val == 6, rs1_w1_val == -268435457
// opcode: sraiw.u ; op1:x12; dest:x15; op1val:0xeffffffffffffff9;  immval:0x6
TEST_IMM_OP( sraiw.u, x15, x12, 0x0000000000000000, 0xeffffffffffffff9, 0x6, x3, 8, x5)

inst_26:
// rs1==x7, rd==x2, imm_val == 5, rs1_w1_val == -536870913
// opcode: sraiw.u ; op1:x7; dest:x2; op1val:0xdfffffffffffdfff;  immval:0x5
TEST_IMM_OP( sraiw.u, x2, x7, 0x0000000000000000, 0xdfffffffffffdfff, 0x5, x3, 16, x5)

inst_27:
// rs1==x18, rd==x1, imm_val == 4, rs1_w1_val == -129
// opcode: sraiw.u ; op1:x18; dest:x1; op1val:0xffffff7ffffffff9;  immval:0x4
TEST_IMM_OP( sraiw.u, x1, x18, 0x0000000000000000, 0xffffff7ffffffff9, 0x4, x3, 24, x5)

inst_28:
// rs1==x13, rd==x26, imm_val == 3, rs1_w0_val == -536870913
// opcode: sraiw.u ; op1:x13; dest:x26; op1val:0x20000000dfffffff;  immval:0x3
TEST_IMM_OP( sraiw.u, x26, x13, 0x0000000000000000, 0x20000000dfffffff, 0x3, x3, 32, x5)

inst_29:
// rs1==x21, rd==x4, imm_val == 2, rs1_w1_val == 4194304
// opcode: sraiw.u ; op1:x21; dest:x4; op1val:0x400000fffffff9;  immval:0x2
TEST_IMM_OP( sraiw.u, x4, x21, 0x0000000000000000, 0x400000fffffff9, 0x2, x3, 40, x5)

inst_30:
// rs1==x1, rd==x23, imm_val == 1, 
// opcode: sraiw.u ; op1:x1; dest:x23; op1val:0x000001fffffffd;  immval:0x1
TEST_IMM_OP( sraiw.u, x23, x1, 0x0000000000000000, 0x000001fffffffd, 0x1, x3, 48, x5)

inst_31:
// rs1==x8, rd==x11, imm_val == 0, rs1_w1_val == 2147483647, rs1_w0_val == 8388608
// opcode: sraiw.u ; op1:x8; dest:x11; op1val:0x7fffffff00800000;  immval:0x0
TEST_IMM_OP( sraiw.u, x11, x8, 0x0000000000000000, 0x7fffffff00800000, 0x0, x3, 56, x5)

inst_32:
// rs1_w1_val == -1431655766, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xaaaaaaaafffffffa;  immval:0x7
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xaaaaaaaafffffffa, 0x7, x3, 64, x5)

inst_33:
// rs1_w1_val == 1431655765, rs1_w0_val == 134217728
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x5555555508000000;  immval:0x1f
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x5555555508000000, 0x1f, x3, 72, x5)

inst_34:
// rs1_w1_val == -1073741825, rs1_w0_val == -257
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xbffffffffffffeff;  immval:0xb
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xbffffffffffffeff, 0xb, x3, 80, x5)

inst_35:
// rs1_w1_val == -134217729, rs1_w0_val == -1048577
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xf7ffffffffefffff;  immval:0x12
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xf7ffffffffefffff, 0x12, x3, 88, x5)

inst_36:
// rs1_w1_val == -67108865, rs1_w0_val == -268435457
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfbffffffefffffff;  immval:0x11
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfbffffffefffffff, 0x11, x3, 96, x5)

inst_37:
// rs1_w1_val == -33554433, rs1_w0_val == -134217729
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfdfffffff7ffffff;  immval:0x14
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfdfffffff7ffffff, 0x14, x3, 104, x5)

inst_38:
// rs1_w1_val == -16777217, rs1_w0_val == -33
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfeffffffffffffdf;  immval:0x1c
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfeffffffffffffdf, 0x1c, x3, 112, x5)

inst_39:
// rs1_w1_val == -4194305, rs1_w0_val == -33554433
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffbffffffdffffff;  immval:0x1b
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffbffffffdffffff, 0x1b, x3, 120, x5)

inst_40:
// rs1_w1_val == -524289, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfff7ffff01000000;  immval:0x18
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfff7ffff01000000, 0x18, x3, 128, x5)

inst_41:
// rs1_w1_val == -131073, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffdffff3fffffff;  immval:0x8
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffdffff3fffffff, 0x8, x3, 136, x5)

inst_42:
// rs1_w1_val == -65537, rs1_w0_val == -16777217
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffefffffeffffff;  immval:0x1d
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffefffffeffffff, 0x1d, x3, 144, x5)

inst_43:
// rs1_w1_val == -32769, rs1_w0_val == -513
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffff7ffffffffdff;  immval:0x4
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffff7ffffffffdff, 0x4, x3, 152, x5)

inst_44:
// rs1_w1_val == -16385, rs1_w0_val == -1431655766
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffbfffaaaaaaaa;  immval:0x4
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffbfffaaaaaaaa, 0x4, x3, 160, x5)

inst_45:
// rs1_w1_val == -2049, rs1_w0_val == 65536
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffff7ff00010000;  immval:0xb
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffff7ff00010000, 0xb, x3, 168, x5)

inst_46:
// rs1_w1_val == -1025, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffbff00800000;  immval:0xe
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffbff00800000, 0xe, x3, 176, x5)

inst_47:
// rs1_w1_val == -65, rs1_w0_val == 4
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffffbf00000004;  immval:0xf
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffffbf00000004, 0xf, x3, 184, x5)

inst_48:
// rs1_w1_val == -33, rs1_w0_val == -1
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffffdfffffffff;  immval:0x3
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffffdfffffffff, 0x3, x3, 192, x5)

inst_49:
// rs1_w0_val == -65, rs1_w1_val == 32768
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x008000ffffffbf;  immval:0x13
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x008000ffffffbf, 0x13, x3, 200, x5)

inst_50:
// rs1_w0_val == -5, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffeffffffffffb;  immval:0x1e
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffeffffffffffb, 0x1e, x3, 208, x5)

inst_51:
// rs1_w0_val == -2, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x000005fffffffe;  immval:0x16
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x000005fffffffe, 0x16, x3, 216, x5)

inst_52:
// rs1_w0_val == 536870912, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffbff20000000;  immval:0x1b
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffbff20000000, 0x1b, x3, 224, x5)

inst_53:
// rs1_w0_val == 268435456, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xc000000010000000;  immval:0x1d
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xc000000010000000, 0x1d, x3, 232, x5)

inst_54:
// rs1_w0_val == 33554432, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xff7fffff02000000;  immval:0x7
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xff7fffff02000000, 0x7, x3, 240, x5)

inst_55:
// rs1_w0_val == 4194304, rs1_w1_val == 0
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00000000400000;  immval:0xb
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00000000400000, 0xb, x3, 248, x5)

inst_56:
// rs1_w0_val == 2097152, rs1_w1_val == 524288
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x08000000200000;  immval:0x1a
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x08000000200000, 0x1a, x3, 256, x5)

inst_57:
// rs1_w0_val == 524288, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00000400080000;  immval:0xb
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00000400080000, 0xb, x3, 264, x5)

inst_58:
// rs1_w0_val == 262144, rs1_w1_val == 1024
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00040000040000;  immval:0x3
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00040000040000, 0x3, x3, 272, x5)

inst_59:
// rs1_w0_val == 131072, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x40000000020000;  immval:0x11
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x40000000020000, 0x11, x3, 280, x5)

inst_60:
// rs1_w0_val == 32768, rs1_w1_val == 65536
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x01000000008000;  immval:0x18
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x01000000008000, 0x18, x3, 288, x5)

inst_61:
// rs1_w0_val == 16384, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x7fffffff00004000;  immval:0x7
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x7fffffff00004000, 0x7, x3, 296, x5)

inst_62:
// rs1_w0_val == 8192, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00008000002000;  immval:0x8
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00008000002000, 0x8, x3, 304, x5)

inst_63:
// rs1_w0_val == 4096, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffff900001000;  immval:0x2
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffff900001000, 0x2, x3, 312, x5)

inst_64:
// rs1_w0_val == 1024, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffbfff00000400;  immval:0x1c
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffbfff00000400, 0x1c, x3, 320, x5)

inst_65:
// rs1_w0_val == 256, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x5555555500000100;  immval:0x16
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x5555555500000100, 0x16, x3, 328, x5)

inst_66:
// rs1_w0_val == 128, rs1_w1_val == -3
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffffd00000080;  immval:0x1a
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffffd00000080, 0x1a, x3, 336, x5)

inst_67:
// rs1_w0_val == 32, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffdff00000020;  immval:0x19
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffdff00000020, 0x19, x3, 344, x5)

inst_68:
// rs1_w0_val == 1, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x8000000000000001;  immval:0x15
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x8000000000000001, 0x15, x3, 352, x5)

inst_69:
// rs1_w1_val == -17, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffffefffffffff;  immval:0x11
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffffefffffffff, 0x11, x3, 360, x5)

inst_70:
// rs1_w1_val == -9, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffff7fffffff9;  immval:0x10
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffff7fffffff9, 0x10, x3, 368, x5)

inst_71:
// rs1_w1_val == -5, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffffb80000000;  immval:0x15
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffffb80000000, 0x15, x3, 376, x5)

inst_72:
// rs1_w1_val == -2, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffffeefffffff;  immval:0x4
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffffeefffffff, 0x4, x3, 384, x5)

inst_73:
// rs1_w1_val == 1073741824, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x4000000000000007;  immval:0x2
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x4000000000000007, 0x2, x3, 392, x5)

inst_74:
// rs1_w1_val == 268435456, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x1000000000000005;  immval:0x15
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x1000000000000005, 0x15, x3, 400, x5)

inst_75:
// rs1_w1_val == 134217728, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x800000000000080;  immval:0x1f
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x800000000000080, 0x1f, x3, 408, x5)

inst_76:
// rs1_w1_val == 67108864, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x400000008000000;  immval:0x8
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x400000008000000, 0x8, x3, 416, x5)

inst_77:
// rs1_w1_val == 33554432, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x200000008000000;  immval:0xb
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x200000008000000, 0xb, x3, 424, x5)

inst_78:
// rs1_w1_val == 16777216, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x100000001000000;  immval:0xf
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x100000001000000, 0xf, x3, 432, x5)

inst_79:
// rs1_w1_val == 8388608, rs1_w0_val == -4097
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x800000ffffefff;  immval:0x1f
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x800000ffffefff, 0x1f, x3, 440, x5)

inst_80:
// rs1_w1_val == 2097152, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x200000fffffeff;  immval:0x1f
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x200000fffffeff, 0x1f, x3, 448, x5)

inst_81:
// rs1_w1_val == 262144, rs1_w0_val == -129
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x040000ffffff7f;  immval:0x7
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x040000ffffff7f, 0x7, x3, 456, x5)

inst_82:
// rs1_w1_val == 8192, rs1_w0_val == -8388609
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x002000ff7fffff;  immval:0x13
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x002000ff7fffff, 0x13, x3, 464, x5)

inst_83:
// rs1_w1_val == 4096, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00100000008000;  immval:0x1d
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00100000008000, 0x1d, x3, 472, x5)

inst_84:
// rs1_w1_val == 512, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00020000002000;  immval:0x16
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00020000002000, 0x16, x3, 480, x5)

inst_85:
// rs1_w1_val == 64, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00004000000000;  immval:0x2
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00004000000000, 0x2, x3, 488, x5)

inst_86:
// rs1_w1_val == 2, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00000200000100;  immval:0x9
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00000200000100, 0x9, x3, 496, x5)

inst_87:
// rs1_w1_val == -1, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffffff00000200;  immval:0x9
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffffff00000200, 0x9, x3, 504, x5)

inst_88:
// rs1_w0_val == 1431655765, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffbfff55555555;  immval:0x6
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffbfff55555555, 0x6, x3, 512, x5)

inst_89:
// rs1_w0_val == 2147483647, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffbfff7fffffff;  immval:0x4
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffbfff7fffffff, 0x4, x3, 520, x5)

inst_90:
// rs1_w0_val == -4194305, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffffdfffbfffff;  immval:0x12
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffffdfffbfffff, 0x12, x3, 528, x5)

inst_91:
// rs1_w0_val == -2097153, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xaaaaaaaaffdfffff;  immval:0x13
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xaaaaaaaaffdfffff, 0x13, x3, 536, x5)

inst_92:
// rs1_w0_val == -524289, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffffdfff7ffff;  immval:0x1f
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffffdfff7ffff, 0x1f, x3, 544, x5)

inst_93:
// rs1_w0_val == -262145, rs1_w1_val == 8
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x000008fffbffff;  immval:0xc
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x000008fffbffff, 0xc, x3, 552, x5)

inst_94:
// rs1_w0_val == -131073, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x000008fffdffff;  immval:0xa
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x000008fffdffff, 0xa, x3, 560, x5)

inst_95:
// rs1_w0_val == -65537, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfffffffffffeffff;  immval:0x15
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfffffffffffeffff, 0x15, x3, 568, x5)

inst_96:
// rs1_w0_val == -2049, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x80000000fffff7ff;  immval:0xe
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x80000000fffff7ff, 0xe, x3, 576, x5)

inst_97:
// rs1_w0_val == -1025, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x20000000fffffbff;  immval:0x6
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x20000000fffffbff, 0x6, x3, 584, x5)

inst_98:
// rs1_w1_val == 16, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0x00001008000000;  immval:0x1a
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0x00001008000000, 0x1a, x3, 592, x5)

inst_99:
// rs1_w0_val == -32769, 
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xfbffffffffff7fff;  immval:0x2
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xfbffffffffff7fff, 0x2, x3, 600, x5)

inst_100:
// imm_val == 18, rs1_w0_val == 8, rs1_w1_val == -8193
// opcode: sraiw.u ; op1:x30; dest:x31; op1val:0xffffdfff00000008;  immval:0x12
TEST_IMM_OP( sraiw.u, x31, x30, 0x0000000000000000, 0xffffdfff00000008, 0x12, x3, 608, x5)
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
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 77*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
