
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
// This assembly file tests the kmmwb2 instruction of the RISC-V RV64PZicsr extension for the kmmwb2 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kmmwb2)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:
// rs1 == rd != rs2, rs1==x12, rs2==x25, rd==x12, rs1_w0_val == -2147483648, rs1_w1_val == -65537, rs2_h0_val == 16, rs2_h3_val == 32767, rs2_h2_val == 256
// opcode: kmmwb2 ; op1:x12; op2:x25; dest:x12; op1val:0xfffeffff80000000;  op2val:0x7fff01003fff0010
TEST_PKRR_OP(kmmwb2, x12, x12, x25, 0x0000000000000000, 0xfffeffff80000000, 0x7fff01003fff0010, x12, x5, 0, x18)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x2, rs2==x23, rd==x13, rs2_h3_val == -21846, rs1_w0_val == -1073741825, rs2_h1_val == -513, rs1_w1_val == -8193
// opcode: kmmwb2 ; op1:x2; op2:x23; dest:x13; op1val:0xffffdfffbfffffff;  op2val:0xaaaa0007fdff0006
TEST_PKRR_OP(kmmwb2, x13, x2, x23, 0x0000000000000000, 0xffffdfffbfffffff, 0xaaaa0007fdff0006, x2, x5, 16, x18)

inst_2:
// rs1 == rs2 != rd, rs1==x22, rs2==x22, rd==x3, rs2_h3_val == 21845, rs2_h2_val == 8, rs2_h0_val == 64, rs2_h1_val == 21845, rs1_w0_val == -17, rs1_w1_val == -524289
// opcode: kmmwb2 ; op1:x22; op2:x22; dest:x3; op1val:0xfff7ffffffffffef;  op2val:0x5555000855550040
TEST_PKRR_OP(kmmwb2, x3, x22, x22, 0x0000000000000000, 0xfff7ffffffffffef, 0x5555000855550040, x22, x5, 32, x18)

inst_3:
// rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs2_h3_val == -16385, rs1_w0_val == 8192, rs2_h0_val == -9, rs1_w1_val == 0, rs2_h2_val == -129
// opcode: kmmwb2 ; op1:x26; op2:x26; dest:x26; op1val:0x00000000002000;  op2val:0xbfffff7f0003fff7
TEST_PKRR_OP(kmmwb2, x26, x26, x26, 0x0000000000000000, 0x00000000002000, 0xbfffff7f0003fff7, x26, x5, 48, x18)

inst_4:
// rs2 == rd != rs1, rs1==x30, rs2==x0, rd==x0, rs2_h3_val == -8193, rs1_w1_val == -1025, rs2_h0_val == 256, rs1_w0_val == -1
// opcode: kmmwb2 ; op1:x30; op2:x0; dest:x0; op1val:0xfffffbffffffffff;  op2val:0xdffffffa00070100
TEST_PKRR_OP(kmmwb2, x0, x30, x0, 0x0000000000000000, 0xfffffbffffffffff, 0xdffffffa00070100, x30, x5, 64, x18)

inst_5:
// rs1==x15, rs2==x17, rd==x1, rs2_h3_val == -4097, rs2_h1_val == 512, rs2_h2_val == -4097, rs1_w1_val == 1, rs2_h0_val == 128
// opcode: kmmwb2 ; op1:x15; op2:x17; dest:x1; op1val:0x000001c0000000;  op2val:0xefffefff02000080
TEST_PKRR_OP(kmmwb2, x1, x15, x17, 0x0000000000000000, 0x000001c0000000, 0xefffefff02000080, x15, x5, 80, x18)

inst_6:
// rs1==x8, rs2==x12, rd==x19, rs2_h3_val == -2049, rs2_h1_val == -3, rs2_h2_val == -9, rs1_w0_val == -8388609
// opcode: kmmwb2 ; op1:x8; op2:x12; dest:x19; op1val:0x3fffffffff7fffff;  op2val:0xf7fffff7fffd0003
TEST_PKRR_OP(kmmwb2, x19, x8, x12, 0x0000000000000000, 0x3fffffffff7fffff, 0xf7fffff7fffd0003, x8, x5, 96, x18)

inst_7:
// rs1==x0, rs2==x3, rd==x4, rs2_h3_val == -1025, rs2_h0_val == -17, rs1_w1_val == 268435456, rs2_h1_val == -17
// opcode: kmmwb2 ; op1:x0; op2:x3; dest:x4; op1val:0x10000000ffffffef;  op2val:0xfbfffff8ffefffef
TEST_PKRR_OP(kmmwb2, x4, x0, x3, 0x0000000000000000, 0x10000000ffffffef, 0xfbfffff8ffefffef, x0, x5, 112, x18)

inst_8:
// rs1==x4, rs2==x9, rd==x20, rs2_h3_val == -513, rs2_h2_val == 64, rs2_h1_val == 128, rs1_w0_val == -262145, rs2_h0_val == -4097, rs1_w1_val == -33554433
// opcode: kmmwb2 ; op1:x4; op2:x9; dest:x20; op1val:0xfdfffffffffbffff;  op2val:0xfdff00400080efff
TEST_PKRR_OP(kmmwb2, x20, x4, x9, 0x0000000000000000, 0xfdfffffffffbffff, 0xfdff00400080efff, x4, x5, 128, x18)

inst_9:
// rs1==x24, rs2==x15, rd==x2, rs2_h3_val == -257, rs2_h0_val == 4096, rs2_h1_val == -32768, rs2_h2_val == -2
// opcode: kmmwb2 ; op1:x24; op2:x15; dest:x2; op1val:0xffffdfff00000005;  op2val:0xfefffffe80001000
TEST_PKRR_OP(kmmwb2, x2, x24, x15, 0x0000000000000000, 0xffffdfff00000005, 0xfefffffe80001000, x24, x5, 144, x18)

inst_10:
// rs1==x10, rs2==x7, rd==x8, rs2_h3_val == -129, rs2_h0_val == 8192, rs2_h1_val == 0, rs1_w1_val == 8388608, rs1_w0_val == -129
// opcode: kmmwb2 ; op1:x10; op2:x7; dest:x8; op1val:0x800000ffffff7f;  op2val:0xff7f010000002000
TEST_PKRR_OP(kmmwb2, x8, x10, x7, 0x0000000000000000, 0x800000ffffff7f, 0xff7f010000002000, x10, x5, 160, x18)

inst_11:
// rs1==x13, rs2==x11, rd==x14, rs2_h3_val == -65, rs1_w1_val == 4, rs1_w0_val == 1048576, rs2_h1_val == -257, rs2_h2_val == 21845
// opcode: kmmwb2 ; op1:x13; op2:x11; dest:x14; op1val:0x00000400100000;  op2val:0xffbf5555feffefff
TEST_PKRR_OP(kmmwb2, x14, x13, x11, 0x0000000000000000, 0x00000400100000, 0xffbf5555feffefff, x13, x5, 176, x18)

inst_12:
// rs1==x16, rs2==x30, rd==x11, rs2_h3_val == -33, rs1_w0_val == -2097153, rs2_h1_val == 2, rs2_h2_val == -2049, rs2_h0_val == 8, rs1_w1_val == -129
// opcode: kmmwb2 ; op1:x16; op2:x30; dest:x11; op1val:0xffffff7fffdfffff;  op2val:0xffdff7ff00020008
TEST_PKRR_OP(kmmwb2, x11, x16, x30, 0x0000000000000000, 0xffffff7fffdfffff, 0xffdff7ff00020008, x16, x5, 192, x18)

inst_13:
// rs1==x21, rs2==x28, rd==x25, rs2_h3_val == -17, rs1_w1_val == -1, rs2_h0_val == 2048, rs2_h1_val == -1
// opcode: kmmwb2 ; op1:x21; op2:x28; dest:x25; op1val:0xfffffffffffffff9;  op2val:0xffef0006ffff0800
TEST_PKRR_OP(kmmwb2, x25, x21, x28, 0x0000000000000000, 0xfffffffffffffff9, 0xffef0006ffff0800, x21, x5, 208, x18)

inst_14:
// rs1==x6, rs2==x16, rd==x10, rs2_h3_val == -9, rs2_h1_val == -21846, rs1_w1_val == -257, rs1_w0_val == -2049, rs2_h2_val == -3
// opcode: kmmwb2 ; op1:x6; op2:x16; dest:x10; op1val:0xfffffefffffff7ff;  op2val:0xfff7fffdaaaa0010
TEST_PKRR_OP(kmmwb2, x10, x6, x16, 0x0000000000000000, 0xfffffefffffff7ff, 0xfff7fffdaaaa0010, x6, x5, 224, x18)

inst_15:
// rs1==x27, rs2==x1, rd==x24, rs2_h3_val == -5, rs1_w0_val == -131073, rs2_h0_val == 512, rs2_h1_val == -4097, rs1_w1_val == 2048
// opcode: kmmwb2 ; op1:x27; op2:x1; dest:x24; op1val:0x000800fffdffff;  op2val:0xfffbefffefff0200
TEST_PKRR_OP(kmmwb2, x24, x27, x1, 0x0000000000000000, 0x000800fffdffff, 0xfffbefffefff0200, x27, x5, 240, x12)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_16:
// rs1==x1, rs2==x21, rd==x27, rs2_h3_val == -3, rs1_w1_val == 512, rs2_h1_val == 256, rs1_w0_val == -1048577
// opcode: kmmwb2 ; op1:x1; op2:x21; dest:x27; op1val:0x000200ffefffff;  op2val:0xfffd3fff0100efff
TEST_PKRR_OP(kmmwb2, x27, x1, x21, 0x0000000000000000, 0x000200ffefffff, 0xfffd3fff0100efff, x1, x2, 0, x12)

inst_17:
// rs1==x29, rs2==x24, rd==x7, rs2_h3_val == -2, rs1_w0_val == 1024, rs1_w1_val == -2147483648, rs2_h1_val == -16385
// opcode: kmmwb2 ; op1:x29; op2:x24; dest:x7; op1val:0x8000000000000400;  op2val:0xfffe0007bfff0008
TEST_PKRR_OP(kmmwb2, x7, x29, x24, 0x0000000000000000, 0x8000000000000400, 0xfffe0007bfff0008, x29, x2, 16, x12)

inst_18:
// rs1==x18, rs2==x10, rd==x6, rs2_h3_val == -32768, rs1_w1_val == -16777217, rs2_h2_val == 1, rs1_w0_val == 4194304
// opcode: kmmwb2 ; op1:x18; op2:x10; dest:x6; op1val:0xfeffffff00400000;  op2val:0x8000000100800010
TEST_PKRR_OP(kmmwb2, x6, x18, x10, 0x0000000000000000, 0xfeffffff00400000, 0x8000000100800010, x18, x2, 32, x12)

inst_19:
// rs1==x19, rs2==x13, rd==x15, rs2_h3_val == 16384, rs2_h2_val == -16385, rs2_h1_val == -5, rs1_w1_val == 4194304, rs1_w0_val == 67108864
// opcode: kmmwb2 ; op1:x19; op2:x13; dest:x15; op1val:0x40000004000000;  op2val:0x4000bffffffbfffc
TEST_PKRR_OP(kmmwb2, x15, x19, x13, 0x0000000000000000, 0x40000004000000, 0x4000bffffffbfffc, x19, x2, 48, x12)

inst_20:
// rs1==x5, rs2==x14, rd==x18, rs2_h3_val == 8192, rs1_w1_val == -67108865, rs2_h2_val == 32, rs1_w0_val == 4
// opcode: kmmwb2 ; op1:x5; op2:x14; dest:x18; op1val:0xfbffffff00000004;  op2val:0x20000020aaaa0009
TEST_PKRR_OP(kmmwb2, x18, x5, x14, 0x0000000000000000, 0xfbffffff00000004, 0x20000020aaaa0009, x5, x2, 64, x12)

inst_21:
// rs1==x31, rs2==x4, rd==x28, rs2_h3_val == 4096, rs1_w0_val == -134217729, rs1_w1_val == -134217729
// opcode: kmmwb2 ; op1:x31; op2:x4; dest:x28; op1val:0xf7fffffff7ffffff;  op2val:0x100000070080fff6
TEST_PKRR_OP(kmmwb2, x28, x31, x4, 0x0000000000000000, 0xf7fffffff7ffffff, 0x100000070080fff6, x31, x2, 80, x12)

inst_22:
// rs1==x14, rs2==x18, rd==x16, rs2_h3_val == 2048, rs1_w1_val == 536870912
// opcode: kmmwb2 ; op1:x14; op2:x18; dest:x16; op1val:0x2000000000100000;  op2val:0x800c00000061000
TEST_PKRR_OP(kmmwb2, x16, x14, x18, 0x0000000000000000, 0x2000000000100000, 0x800c00000061000, x14, x2, 96, x12)

inst_23:
// rs1==x9, rs2==x27, rd==x21, rs2_h3_val == 1024, rs2_h1_val == 1024
// opcode: kmmwb2 ; op1:x9; op2:x27; dest:x21; op1val:0x80000000ffffffef;  op2val:0x400000704000100
TEST_PKRR_OP(kmmwb2, x21, x9, x27, 0x0000000000000000, 0x80000000ffffffef, 0x400000704000100, x9, x2, 112, x12)

inst_24:
// rs1==x23, rs2==x8, rd==x5, rs2_h3_val == 512, rs2_h0_val == 16384, rs1_w0_val == 32768
// opcode: kmmwb2 ; op1:x23; op2:x8; dest:x5; op1val:0xc000000000008000;  op2val:0x200efffefff4000
TEST_PKRR_OP(kmmwb2, x5, x23, x8, 0x0000000000000000, 0xc000000000008000, 0x200efffefff4000, x23, x2, 128, x12)

inst_25:
// rs1==x28, rs2==x5, rd==x9, rs2_h3_val == 256, rs2_h2_val == 16, rs1_w1_val == -1048577
// opcode: kmmwb2 ; op1:x28; op2:x5; dest:x9; op1val:0xffeffffff7ffffff;  op2val:0x1000010fff90005
TEST_PKRR_OP(kmmwb2, x9, x28, x5, 0x0000000000000000, 0xffeffffff7ffffff, 0x1000010fff90005, x28, x2, 144, x12)

inst_26:
// rs1==x7, rs2==x6, rd==x22, rs2_h3_val == 128, rs1_w1_val == -1431655766
// opcode: kmmwb2 ; op1:x7; op2:x6; dest:x22; op1val:0xaaaaaaaa3fffffff;  op2val:0x80fffe00030009
TEST_PKRR_OP(kmmwb2, x22, x7, x6, 0x0000000000000000, 0xaaaaaaaa3fffffff, 0x80fffe00030009, x7, x2, 160, x12)

inst_27:
// rs1==x3, rs2==x31, rd==x17, rs2_h3_val == 64, rs2_h0_val == -16385
// opcode: kmmwb2 ; op1:x3; op2:x31; dest:x17; op1val:0xfffffeff00000006;  op2val:0x40f7ffaaaabfff
TEST_PKRR_OP(kmmwb2, x17, x3, x31, 0x0000000000000000, 0xfffffeff00000006, 0x40f7ffaaaabfff, x3, x2, 176, x12)

inst_28:
// rs1==x11, rs2==x20, rd==x30, rs2_h3_val == 32, rs2_h0_val == -5, rs1_w0_val == 131072, rs1_w1_val == -4097
// opcode: kmmwb2 ; op1:x11; op2:x20; dest:x30; op1val:0xffffefff00020000;  op2val:0x20fff9fffffffb
TEST_PKRR_OP(kmmwb2, x30, x11, x20, 0x0000000000000000, 0xffffefff00020000, 0x20fff9fffffffb, x11, x2, 192, x12)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_29:
// rs1==x25, rs2==x29, rd==x23, rs2_h3_val == 16, rs1_w1_val == -16385, rs2_h1_val == 8192, rs2_h2_val == -513
// opcode: kmmwb2 ; op1:x25; op2:x29; dest:x23; op1val:0xffffbfff00000007;  op2val:0x10fdff20000200
TEST_PKRR_OP(kmmwb2, x23, x25, x29, 0x0000000000000000, 0xffffbfff00000007, 0x10fdff20000200, x25, x1, 0, x3)

inst_30:
// rs1==x17, rs2==x19, rd==x31, rs2_h3_val == 8, rs1_w1_val == 1024, rs1_w0_val == -536870913
// opcode: kmmwb2 ; op1:x17; op2:x19; dest:x31; op1val:0x000400dfffffff;  op2val:0x08fdff0080fff9
TEST_PKRR_OP(kmmwb2, x31, x17, x19, 0x0000000000000000, 0x000400dfffffff, 0x08fdff0080fff9, x17, x1, 16, x3)

inst_31:
// rs1==x20, rs2==x2, rd==x29, rs2_h3_val == 4, rs1_w0_val == -65, rs2_h2_val == 512, rs1_w1_val == -268435457
// opcode: kmmwb2 ; op1:x20; op2:x2; dest:x29; op1val:0xefffffffffffffbf;  op2val:0x040200aaaafff6
TEST_PKRR_OP(kmmwb2, x29, x20, x2, 0x0000000000000000, 0xefffffffffffffbf, 0x040200aaaafff6, x20, x1, 32, x3)

inst_32:
// rs2_h3_val == 2, rs2_h1_val == -1025, rs1_w1_val == 16777216, rs2_h0_val == 1, rs1_w0_val == -257
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000fffffeff;  op2val:0x02fff8fbff0001
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x1000000fffffeff, 0x02fff8fbff0001, x30, x1, 48, x3)

inst_33:
// rs2_h3_val == 1, rs1_w0_val == -9
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x3ffffffffffffff7;  op2val:0x01fff6fffb3fff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x3ffffffffffffff7, 0x01fff6fffb3fff, x30, x1, 64, x3)

inst_34:
// rs2_h3_val == 0, rs2_h2_val == -5, rs1_w0_val == -1025
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffffffffbff;  op2val:0x00fffb04000009
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xf7fffffffffffbff, 0x00fffb04000009, x30, x1, 80, x3)

inst_35:
// rs2_h3_val == -1, rs1_w1_val == -8388609, rs2_h0_val == -1025, rs2_h2_val == -257
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffffffffffff7;  op2val:0xfffffefffffbfbff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xff7ffffffffffff7, 0xfffffefffffbfbff, x30, x1, 96, x3)

inst_36:
// rs2_h2_val == -21846, rs1_w1_val == 134217728
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000fffff7ff;  op2val:0xffbfaaaafeffefff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x8000000fffff7ff, 0xffbfaaaafeffefff, x30, x1, 112, x3)

inst_37:
// rs2_h2_val == 32767, rs1_w1_val == 16384, rs1_w0_val == -32769
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x004000ffff7fff;  op2val:0xff7f7fff0200fff6
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x004000ffff7fff, 0xff7f7fff0200fff6, x30, x1, 128, x3)

inst_38:
// rs2_h2_val == -8193, rs1_w0_val == -524289, rs2_h1_val == -9
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000006fff7ffff;  op2val:0xfbffdffffff70007
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000006fff7ffff, 0xfbffdffffff70007, x30, x1, 144, x3)

inst_39:
// rs2_h2_val == -1025, rs1_w0_val == 268435456
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000310000000;  op2val:0x40fbff00030040
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000310000000, 0x40fbff00030040, x30, x1, 160, x3)

inst_40:
// rs1_w0_val == 2097152, rs2_h0_val == 32, rs2_h1_val == 32
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000600200000;  op2val:0x06c00000200020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000600200000, 0x06c00000200020, x30, x1, 176, x3)

inst_41:
// rs1_w0_val == 524288, rs2_h1_val == -2049
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff00080000;  op2val:0x09fffbf7fffffb
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xefffffff00080000, 0x09fffbf7fffffb, x30, x1, 192, x3)

inst_42:
// rs1_w0_val == 262144, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00020000040000;  op2val:0x02fffcbfff2000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00020000040000, 0x02fffcbfff2000, x30, x1, 208, x3)

inst_43:
// rs1_w0_val == 65536, rs1_w1_val == 131072, rs2_h2_val == 4
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x02000000010000;  op2val:0x5555000402000006
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x02000000010000, 0x5555000402000006, x30, x1, 224, x3)

inst_44:
// rs1_w0_val == 16384, rs1_w1_val == -65
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf00004000;  op2val:0x40000900030020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffffffbf00004000, 0x40000900030020, x30, x1, 240, x3)

inst_45:
// rs1_w0_val == 4096, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000700001000;  op2val:0x03ff7f80000040
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000700001000, 0x03ff7f80000040, x30, x1, 256, x3)

inst_46:
// rs1_w0_val == 2048, rs2_h1_val == 2048
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x40000000000800;  op2val:0xfeff00090800fbff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x40000000000800, 0xfeff00090800fbff, x30, x1, 272, x3)

inst_47:
// rs1_w0_val == 512, rs2_h0_val == -21846
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffffbfff00000200;  op2val:0xfff7effffbffaaaa
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffffbfff00000200, 0xfff7effffbffaaaa, x30, x1, 288, x3)

inst_48:
// rs1_w0_val == 256, rs2_h1_val == -8193, rs1_w1_val == 16
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00001000000100;  op2val:0x060006dfff0005
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00001000000100, 0x060006dfff0005, x30, x1, 304, x3)

inst_49:
// rs1_w0_val == 128, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x800000000000080;  op2val:0xf7fffff800030020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x800000000000080, 0xf7fffff800030020, x30, x1, 320, x3)

inst_50:
// rs1_w0_val == 64, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff00000040;  op2val:0x40000180000005
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xf7ffffff00000040, 0x40000180000005, x30, x1, 336, x3)

inst_51:
// rs1_w0_val == 32, rs2_h0_val == -513, rs1_w1_val == 128, rs2_h1_val == 64, rs2_h2_val == 2
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00008000000020;  op2val:0x80000020040fdff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00008000000020, 0x80000020040fdff, x30, x1, 352, x3)

inst_52:
// rs1_w0_val == 16, rs1_w1_val == 256, rs2_h2_val == 0
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00010000000010;  op2val:0xaaaa00000080c000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00010000000010, 0xaaaa00000080c000, x30, x1, 368, x3)

inst_53:
// rs1_w0_val == 8, rs1_w1_val == -3
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd00000008;  op2val:0xefffdfffffeffbff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffffd00000008, 0xefffdfffffeffbff, x30, x1, 384, x3)

inst_54:
// rs1_w0_val == 2, rs2_h2_val == -65, rs2_h0_val == -2049, rs1_w1_val == -536870913, rs2_h1_val == 16
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffffff00000002;  op2val:0xffffffbf0010f7ff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xdfffffff00000002, 0xffffffbf0010f7ff, x30, x1, 400, x3)

inst_55:
// rs1_w0_val == 1, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00000001;  op2val:0x800fffb00020003
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffffefff00000001, 0x800fffb00020003, x30, x1, 416, x3)

inst_56:
// rs1_w0_val == 0, rs2_h2_val == 8192, rs2_h0_val == 2, rs2_h1_val == 4096
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeff00000000;  op2val:0x3fff200010000002
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffeff00000000, 0x3fff200010000002, x30, x1, 432, x3)

inst_57:
// rs2_h2_val == -33, rs1_w1_val == 1048576, rs2_h0_val == 21845
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x100000ffff7fff;  op2val:0x3fffffdffdff5555
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x100000ffff7fff, 0x3fffffdffdff5555, x30, x1, 448, x3)

inst_58:
// rs2_h2_val == -17, rs2_h1_val == -2, rs1_w1_val == 1431655765, rs2_h0_val == -129
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x5555555510000000;  op2val:0xfeffffeffffeff7f
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x5555555510000000, 0xfeffffeffffeff7f, x30, x1, 464, x3)

inst_59:
// rs2_h2_val == -32768, rs1_w1_val == -513
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdfff7ffffff;  op2val:0xfbff80008000ff7f
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffdfff7ffffff, 0xfbff80008000ff7f, x30, x1, 480, x3)

inst_60:
// rs2_h2_val == 16384, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000ff7fffff;  op2val:0x80004000fbfffff8
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x1000000ff7fffff, 0x80004000fbfffff8, x30, x1, 496, x3)

inst_61:
// rs2_h2_val == 4096, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000300020000;  op2val:0x03100000000003
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000300020000, 0x03100000000003, x30, x1, 512, x3)

inst_62:
// rs2_h2_val == 2048, rs2_h0_val == -8193, rs1_w1_val == 2147483647
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffff00000400;  op2val:0x400008000020dfff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x7fffffff00000400, 0x400008000020dfff, x30, x1, 528, x3)

inst_63:
// rs2_h2_val == 1024, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffefffffffff6;  op2val:0x4004003fff0020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffefffffffff6, 0x4004003fff0020, x30, x1, 544, x3)

inst_64:
// rs2_h2_val == 128, rs2_h1_val == -65, rs1_w1_val == 4096, rs2_h0_val == -32768
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00100000000006;  op2val:0x400080ffbf8000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00100000000006, 0x400080ffbf8000, x30, x1, 560, x3)

inst_65:
// rs2_h2_val == -1, rs1_w0_val == -268435457
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffaefffffff;  op2val:0xffbfffff00200020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffffaefffffff, 0xffbfffff00200020, x30, x1, 576, x3)

inst_66:
// rs2_h1_val == 32767, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x10000000000020;  op2val:0x0000807fffaaaa
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x10000000000020, 0x0000807fffaaaa, x30, x1, 592, x3)

inst_67:
// rs2_h0_val == 1024, rs1_w1_val == 8192
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00200000000020;  op2val:0xfffa008000030400
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00200000000020, 0xfffa008000030400, x30, x1, 608, x3)

inst_68:
// rs2_h0_val == 4, rs1_w1_val == -33
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf00100000;  op2val:0x08f7ff3fff0004
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffffffdf00100000, 0x08f7ff3fff0004, x30, x1, 624, x3)

inst_69:
// rs2_h0_val == 0, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000000000200;  op2val:0xffbffeff00090000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x1000000000000200, 0xffbffeff00090000, x30, x1, 640, x3)

inst_70:
// rs2_h0_val == -1, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00400000000000;  op2val:0x80004000007ffff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00400000000000, 0x80004000007ffff, x30, x1, 656, x3)

inst_71:
// rs1_w1_val == -1073741825, rs2_h1_val == 4
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff00400000;  op2val:0xffef00800004fff7
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xbfffffff00400000, 0xffef00800004fff7, x30, x1, 672, x3)

inst_72:
// rs1_w1_val == -4194305, rs1_w0_val == -5
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffbffffffffffffb;  op2val:0xefffffffffef8000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffbffffffffffffb, 0xefffffffffef8000, x30, x1, 688, x3)

inst_73:
// rs1_w1_val == -2097153, rs2_h0_val == -2
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffffbfffffff;  op2val:0xfbfffff7effffffe
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffdfffffbfffffff, 0xfbfffff7effffffe, x30, x1, 704, x3)

inst_74:
// rs1_w1_val == -262145, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfffffffbffff;  op2val:0xfffe0200fff60007
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffbfffffffbffff, 0xfffe0200fff60007, x30, x1, 720, x3)

inst_75:
// rs1_w1_val == -131073, rs1_w0_val == -3, rs2_h0_val == -257
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfffffffffffd;  op2val:0x01c0000800feff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffdfffffffffffd, 0x01c0000800feff, x30, x1, 736, x3)

inst_76:
// rs1_w1_val == -32769, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffff7fffdfffffff;  op2val:0x200000700063fff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffff7fffdfffffff, 0x200000700063fff, x30, x1, 752, x3)

inst_77:
// rs1_w1_val == -2049, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7ff00000000;  op2val:0xc00000032000fffa
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffff7ff00000000, 0xc00000032000fffa, x30, x1, 768, x3)

inst_78:
// rs1_w1_val == -17, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef00000002;  op2val:0xfff9aaaa00030200
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xffffffef00000002, 0xfff9aaaa00030200, x30, x1, 784, x3)

inst_79:
// rs1_w1_val == -9, rs1_w0_val == -4097
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7ffffefff;  op2val:0x20000155550005
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffff7ffffefff, 0x20000155550005, x30, x1, 800, x3)

inst_80:
// rs1_w1_val == -5, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffbf7ffffff;  op2val:0xffdf00060002fff8
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffffbf7ffffff, 0xffdf00060002fff8, x30, x1, 816, x3)

inst_81:
// rs1_w1_val == -2, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe10000000;  op2val:0xefffc0000007aaaa
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffffe10000000, 0xefffc0000007aaaa, x30, x1, 832, x3)

inst_82:
// rs1_w1_val == 1073741824, rs1_w0_val == -4194305
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x40000000ffbfffff;  op2val:0x800ffff0004fffe
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x40000000ffbfffff, 0x800ffff0004fffe, x30, x1, 848, x3)

inst_83:
// rs1_w1_val == 67108864, rs2_h0_val == -65
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x400000000000001;  op2val:0xfff700040800ffbf
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x400000000000001, 0xfff700040800ffbf, x30, x1, 864, x3)

inst_84:
// rs1_w1_val == 33554432, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x2000000ffff7fff;  op2val:0x0100010020bfff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x2000000ffff7fff, 0x0100010020bfff, x30, x1, 880, x3)

inst_85:
// rs1_w1_val == 2097152, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x200000ffffffff;  op2val:0xffef0020fffd3fff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x200000ffffffff, 0xffef0020fffd3fff, x30, x1, 896, x3)

inst_86:
// rs1_w1_val == 524288, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x08000000000002;  op2val:0xffdf1000fffc0020
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x08000000000002, 0xffdf1000fffc0020, x30, x1, 912, x3)

inst_87:
// rs1_w1_val == 262144, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x040000ffdfffff;  op2val:0xffbfffdf8000ffff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x040000ffdfffff, 0xffbfffdf8000ffff, x30, x1, 928, x3)

inst_88:
// rs1_w1_val == 65536, rs2_h1_val == -129
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x01000000000004;  op2val:0x1004000ff7f0002
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x01000000000004, 0x1004000ff7f0002, x30, x1, 944, x3)

inst_89:
// rs1_w1_val == 32768, rs1_w0_val == 33554432
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00800002000000;  op2val:0xfffbc00000105555
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00800002000000, 0xfffbc00000105555, x30, x1, 960, x3)

inst_90:
// rs1_w1_val == 64, rs1_w0_val == 16777216
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00004001000000;  op2val:0xfeff1000fdffefff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00004001000000, 0xfeff1000fdffefff, x30, x1, 976, x3)

inst_91:
// rs1_w1_val == 32, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00002000400000;  op2val:0x2000fdffdfff0007
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00002000400000, 0x2000fdffdfff0007, x30, x1, 992, x3)

inst_92:
// rs1_w1_val == 8, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000800000080;  op2val:0x800040fefffff8
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000800000080, 0x800040fefffff8, x30, x1, 1008, x3)

inst_93:
// rs1_w1_val == 2, rs2_h1_val == -33
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000002fffdffff;  op2val:0xffbf8000ffdffff8
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000002fffdffff, 0xffbf8000ffdffff8, x30, x1, 1024, x3)

inst_94:
// rs1_w0_val == -1431655766, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000020aaaaaaaa;  op2val:0xfdff100002000080
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000020aaaaaaaa, 0xfdff100002000080, x30, x1, 1040, x3)

inst_95:
// rs1_w0_val == 1431655765, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00800055555555;  op2val:0x07dfff0100c000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00800055555555, 0x07dfff0100c000, x30, x1, 1056, x3)

inst_96:
// rs1_w0_val == 2147483647, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x0100007fffffff;  op2val:0x00f7ff0000fffe
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x0100007fffffff, 0x00f7ff0000fffe, x30, x1, 1072, x3)

inst_97:
// rs2_h1_val == 16384, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00001001000000;  op2val:0x800400040000007
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00001001000000, 0x800400040000007, x30, x1, 1088, x3)

inst_98:
// rs1_w0_val == -67108865, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x800000fbffffff;  op2val:0x07ffef0400fffc
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x800000fbffffff, 0x07ffef0400fffc, x30, x1, 1104, x3)

inst_99:
// rs1_w0_val == -33554433, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffefdffffff;  op2val:0x01ffef0800ffef
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffffefdffffff, 0x01ffef0800ffef, x30, x1, 1120, x3)

inst_100:
// rs1_w0_val == -16777217, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x002000feffffff;  op2val:0x080800fffcfffc
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x002000feffffff, 0x080800fffcfffc, x30, x1, 1136, x3)

inst_101:
// rs1_w0_val == -65537, rs2_h1_val == 1
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7fffeffff;  op2val:0xffef080000010001
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffff7fffeffff, 0xffef080000010001, x30, x1, 1152, x3)

inst_102:
// rs2_h1_val == 8, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x400000000000006;  op2val:0x06000700081000
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x400000000000006, 0x06000700081000, x30, x1, 1168, x3)

inst_103:
// rs1_w0_val == -16385, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000007ffffbfff;  op2val:0x07020010003fff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000007ffffbfff, 0x07020010003fff, x30, x1, 1184, x3)

inst_104:
// rs1_w0_val == -8193, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000080ffffdfff;  op2val:0x800000050005f7ff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000080ffffdfff, 0x800000050005f7ff, x30, x1, 1200, x3)

inst_105:
// rs1_w0_val == -513, rs2_h0_val == -33
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x40000000fffffdff;  op2val:0xfffefff70002ffdf
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x40000000fffffdff, 0xfffefff70002ffdf, x30, x1, 1216, x3)

inst_106:
// rs2_h0_val == 32767, rs1_w0_val == 1073741824
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000840000000;  op2val:0x200000600207fff
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000840000000, 0x200000600207fff, x30, x1, 1232, x3)

inst_107:
// rs1_w0_val == -33, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000200ffffffdf;  op2val:0x07200000000005
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000200ffffffdf, 0x07200000000005, x30, x1, 1248, x3)

inst_108:
// rs1_w0_val == -2, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdfffffffffe;  op2val:0xc0007fff0008fff7
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffdfffffffffe, 0xc0007fff0008fff7, x30, x1, 1264, x3)

inst_109:
// rs1_w0_val == 536870912, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaa20000000;  op2val:0xc00000050400fffa
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaa20000000, 0xc00000050400fffa, x30, x1, 1280, x3)

inst_110:
// rs1_w0_val == 134217728, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff08000000;  op2val:0x2000c00000070004
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfeffffff08000000, 0x2000c00000070004, x30, x1, 1296, x3)

inst_111:
// rs2_h0_val == -3, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x000006f7ffffff;  op2val:0x800001bffffffd
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x000006f7ffffff, 0x800001bffffffd, x30, x1, 1312, x3)

inst_112:
// rs1_w0_val == 8388608, 
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff00800000;  op2val:0x5555ffff0000fffe
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfeffffff00800000, 0x5555ffff0000fffe, x30, x1, 1328, x3)

inst_113:
// rs2_h3_val == 21845, rs2_h2_val == 8, rs2_h0_val == 64, rs2_h1_val == 21845, rs1_w0_val == -17, rs1_w1_val == -524289
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffffffffffef;  op2val:0x5555000855550040
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfff7ffffffffffef, 0x5555000855550040, x30, x1, 1344, x3)

inst_114:
// rs2_h3_val == -16385, rs1_w0_val == 8192, rs2_h0_val == -9, rs1_w1_val == 0, rs2_h2_val == -129
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0x00000000002000;  op2val:0xbfffff7f0003fff7
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0x00000000002000, 0xbfffff7f0003fff7, x30, x1, 1360, x3)

inst_115:
// rs2_h3_val == -8193, rs1_w1_val == -1025, rs2_h0_val == 256, rs1_w0_val == -1
// opcode: kmmwb2 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbffffffffff;  op2val:0xdffffffa00070100
TEST_PKRR_OP(kmmwb2, x31, x30, x29, 0x0000000000000000, 0xfffffbffffffffff, 0xdffffffa00070100, x30, x1, 1376, x3)
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


signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 26*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 174*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
