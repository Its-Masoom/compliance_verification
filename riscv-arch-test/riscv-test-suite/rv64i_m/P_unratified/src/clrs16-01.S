
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
// This assembly file tests the clrs16 instruction of the RISC-V RV64PZicsr extension for the clrs16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",clrs16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x7,signature_x7_1)

inst_0:
// rs1==x2, rd==x31, rs1_h0_val == -32768, rs1_h2_val == 256
// opcode: clrs16 ; op1:x2; dest:x31; op1val:0xc0000100c0008000;
TEST_RD_OP( clrs16, x31, x2, 0x0000000000000000, 0xc0000100c0008000, x7, 0, x14)

inst_1:
// rs1==x12, rd==x28, rs1_h3_val == -21846, rs1_h1_val == 21845, rs1_h2_val == 128
// opcode: clrs16 ; op1:x12; dest:x28; op1val:0xaaaa008055558000;
TEST_RD_OP( clrs16, x28, x12, 0x0000000000000000, 0xaaaa008055558000, x7, 8, x14)

inst_2:
// rs1==x31, rd==x19, rs1_h3_val == 21845, rs1_h2_val == 8192, rs1_h1_val == 0, rs1_h0_val == 128
// opcode: clrs16 ; op1:x31; dest:x19; op1val:0x5555200000000080;
TEST_RD_OP( clrs16, x19, x31, 0x0000000000000000, 0x5555200000000080, x7, 16, x14)

inst_3:
// rs1==x30, rd==x1, rs1_h3_val == 32767, rs1_h1_val == 1024, rs1_h0_val == 4096
// opcode: clrs16 ; op1:x30; dest:x1; op1val:0x7fff000604001000;
TEST_RD_OP( clrs16, x1, x30, 0x0000000000000000, 0x7fff000604001000, x7, 24, x14)

inst_4:
// rs1==x17, rd==x12, rs1_h3_val == -16385, rs1_h1_val == 1
// opcode: clrs16 ; op1:x17; dest:x12; op1val:0xbfffc00000010007;
TEST_RD_OP( clrs16, x12, x17, 0x0000000000000000, 0xbfffc00000010007, x7, 32, x14)

inst_5:
// rs1==x22, rd==x10, rs1_h3_val == -8193, rs1_h2_val == -129
// opcode: clrs16 ; op1:x22; dest:x10; op1val:0xdfffff7ffff9fff6;
TEST_RD_OP( clrs16, x10, x22, 0x0000000000000000, 0xdfffff7ffff9fff6, x7, 40, x14)

inst_6:
// rs1==x29, rd==x24, rs1_h3_val == -4097, rs1_h0_val == 16
// opcode: clrs16 ; op1:x29; dest:x24; op1val:0xefff0003c0000010;
TEST_RD_OP( clrs16, x24, x29, 0x0000000000000000, 0xefff0003c0000010, x7, 48, x14)

inst_7:
// rs1==x8, rd==x6, rs1_h3_val == -2049, rs1_h2_val == -5, rs1_h1_val == -4097, rs1_h0_val == 32767
// opcode: clrs16 ; op1:x8; dest:x6; op1val:0xf7fffffbefff7fff;
TEST_RD_OP( clrs16, x6, x8, 0x0000000000000000, 0xf7fffffbefff7fff, x7, 56, x14)

inst_8:
// rs1==x13, rd==x9, rs1_h3_val == -1025, rs1_h0_val == 2048, rs1_h2_val == 21845
// opcode: clrs16 ; op1:x13; dest:x9; op1val:0xfbff555500070800;
TEST_RD_OP( clrs16, x9, x13, 0x0000000000000000, 0xfbff555500070800, x7, 64, x14)

inst_9:
// rs1==x23, rd==x17, rs1_h3_val == -513, rs1_h2_val == -65, rs1_h1_val == -32768, rs1_h0_val == -129
// opcode: clrs16 ; op1:x23; dest:x17; op1val:0xfdffffbf8000ff7f;
TEST_RD_OP( clrs16, x17, x23, 0x0000000000000000, 0xfdffffbf8000ff7f, x7, 72, x14)

inst_10:
// rs1==x5, rd==x21, rs1_h3_val == -257, rs1_h1_val == 64, rs1_h2_val == -513, rs1_h0_val == 256
// opcode: clrs16 ; op1:x5; dest:x21; op1val:0xfefffdff00400100;
TEST_RD_OP( clrs16, x21, x5, 0x0000000000000000, 0xfefffdff00400100, x7, 80, x14)

inst_11:
// rs1==x3, rd==x0, rs1_h3_val == -129, rs1_h0_val == -2
// opcode: clrs16 ; op1:x3; dest:x0; op1val:0xff7ffff90005fffe;
TEST_RD_OP( clrs16, x0, x3, 0x0000000000000000, 0xff7ffff90005fffe, x7, 88, x14)

inst_12:
// rs1==x18, rd==x26, rs1_h3_val == -65, 
// opcode: clrs16 ; op1:x18; dest:x26; op1val:0xffbf0007c0001000;
TEST_RD_OP( clrs16, x26, x18, 0x0000000000000000, 0xffbf0007c0001000, x7, 96, x14)

inst_13:
// rs1==x9, rd==x22, rs1_h3_val == -33, rs1_h0_val == 64
// opcode: clrs16 ; op1:x9; dest:x22; op1val:0xffdf00803fff0040;
TEST_RD_OP( clrs16, x22, x9, 0x0000000000000000, 0xffdf00803fff0040, x7, 104, x14)

inst_14:
// rs1==x0, rd==x27, rs1_h3_val == -17, rs1_h0_val == 0, rs1_h2_val == 0
// opcode: clrs16 ; op1:x0; dest:x27; op1val:0xffef0000fff60000;
TEST_RD_OP( clrs16, x27, x0, 0x0000000000000000, 0xffef0000fff60000, x7, 112, x14)

inst_15:
// rs1==x19, rd==x25, rs1_h3_val == -9, rs1_h0_val == -1025, rs1_h2_val == 1024, rs1_h1_val == 16384
// opcode: clrs16 ; op1:x19; dest:x25; op1val:0xfff704004000fbff;
TEST_RD_OP( clrs16, x25, x19, 0x0000000000000000, 0xfff704004000fbff, x7, 120, x14)

inst_16:
// rs1==x4, rd==x23, rs1_h3_val == -5, rs1_h1_val == -21846
// opcode: clrs16 ; op1:x4; dest:x23; op1val:0xfffb0007aaaafffe;
TEST_RD_OP( clrs16, x23, x4, 0x0000000000000000, 0xfffb0007aaaafffe, x7, 128, x14)

inst_17:
// rs1==x26, rd==x11, rs1_h3_val == -3, rs1_h0_val == 8, rs1_h2_val == -257, rs1_h1_val == -2049
// opcode: clrs16 ; op1:x26; dest:x11; op1val:0xfffdfefff7ff0008;
TEST_RD_OP( clrs16, x11, x26, 0x0000000000000000, 0xfffdfefff7ff0008, x7, 136, x14)

inst_18:
// rs1==x28, rd==x29, rs1_h3_val == -2, rs1_h1_val == 512
// opcode: clrs16 ; op1:x28; dest:x29; op1val:0xfffefff90200fffa;
TEST_RD_OP( clrs16, x29, x28, 0x0000000000000000, 0xfffefff90200fffa, x7, 144, x14)

inst_19:
// rs1==x11, rd==x8, rs1_h3_val == -32768, rs1_h0_val == -33, rs1_h1_val == -16385
// opcode: clrs16 ; op1:x11; dest:x8; op1val:0x80000007bfffffdf;
TEST_RD_OP( clrs16, x8, x11, 0x0000000000000000, 0x80000007bfffffdf, x7, 152, x14)

inst_20:
// rs1==x27, rd==x3, rs1_h3_val == 16384, rs1_h1_val == -1025, rs1_h2_val == -21846
// opcode: clrs16 ; op1:x27; dest:x3; op1val:0x4000aaaafbff0010;
TEST_RD_OP( clrs16, x3, x27, 0x0000000000000000, 0x4000aaaafbff0010, x7, 160, x14)

inst_21:
// rs1==x24, rd==x16, rs1_h3_val == 8192, rs1_h2_val == -17, rs1_h0_val == 1024
// opcode: clrs16 ; op1:x24; dest:x16; op1val:0x2000ffeff7ff0400;
TEST_RD_OP( clrs16, x16, x24, 0x0000000000000000, 0x2000ffeff7ff0400, x7, 168, x14)

inst_22:
// rs1==x20, rd==x5, rs1_h3_val == 4096, rs1_h2_val == -4097, rs1_h0_val == 4, rs1_h1_val == -257
// opcode: clrs16 ; op1:x20; dest:x5; op1val:0x1000effffeff0004;
TEST_RD_OP( clrs16, x5, x20, 0x0000000000000000, 0x1000effffeff0004, x7, 176, x8)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_23:
// rs1==x1, rd==x30, rs1_h3_val == 2048, 
// opcode: clrs16 ; op1:x1; dest:x30; op1val:0x800000000030004;
TEST_RD_OP( clrs16, x30, x1, 0x0000000000000000, 0x800000000030004, x3, 0, x8)

inst_24:
// rs1==x25, rd==x2, rs1_h3_val == 1024, rs1_h2_val == 4096
// opcode: clrs16 ; op1:x25; dest:x2; op1val:0x40010000005ffdf;
TEST_RD_OP( clrs16, x2, x25, 0x0000000000000000, 0x40010000005ffdf, x3, 8, x8)

inst_25:
// rs1==x6, rd==x4, rs1_h3_val == 512, rs1_h0_val == -2049, rs1_h2_val == 16, rs1_h1_val == 32767
// opcode: clrs16 ; op1:x6; dest:x4; op1val:0x20000107ffff7ff;
TEST_RD_OP( clrs16, x4, x6, 0x0000000000000000, 0x20000107ffff7ff, x3, 16, x8)

inst_26:
// rs1==x16, rd==x20, rs1_h3_val == 256, 
// opcode: clrs16 ; op1:x16; dest:x20; op1val:0x1003fff0009fff6;
TEST_RD_OP( clrs16, x20, x16, 0x0000000000000000, 0x1003fff0009fff6, x3, 24, x8)

inst_27:
// rs1==x15, rd==x18, rs1_h3_val == 128, rs1_h1_val == -33
// opcode: clrs16 ; op1:x15; dest:x18; op1val:0x80ffbfffdffffa;
TEST_RD_OP( clrs16, x18, x15, 0x0000000000000000, 0x80ffbfffdffffa, x3, 32, x8)

inst_28:
// rs1==x21, rd==x14, rs1_h3_val == 64, rs1_h2_val == -8193, rs1_h1_val == 8
// opcode: clrs16 ; op1:x21; dest:x14; op1val:0x40dfff0008ffdf;
TEST_RD_OP( clrs16, x14, x21, 0x0000000000000000, 0x40dfff0008ffdf, x3, 40, x8)

inst_29:
// rs1==x7, rd==x13, rs1_h3_val == 32, rs1_h2_val == -1, rs1_h0_val == 32, rs1_h1_val == 8192
// opcode: clrs16 ; op1:x7; dest:x13; op1val:0x20ffff20000020;
TEST_RD_OP( clrs16, x13, x7, 0x0000000000000000, 0x20ffff20000020, x3, 48, x8)

inst_30:
// rs1==x14, rd==x15, rs1_h3_val == 16, rs1_h2_val == -2049
// opcode: clrs16 ; op1:x14; dest:x15; op1val:0x10f7fffff60005;
TEST_RD_OP( clrs16, x15, x14, 0x0000000000000000, 0x10f7fffff60005, x3, 56, x8)

inst_31:
// rs1==x10, rd==x7, rs1_h0_val == 8192, rs1_h1_val == -17
// opcode: clrs16 ; op1:x10; dest:x7; op1val:0x07fffaffef2000;
TEST_RD_OP( clrs16, x7, x10, 0x0000000000000000, 0x07fffaffef2000, x3, 64, x8)

inst_32:
// rs1_h0_val == 512, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x20fdff40000200;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x20fdff40000200, x3, 72, x8)

inst_33:
// rs1_h0_val == 2, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff8fffcc0000002;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff8fffcc0000002, x3, 80, x8)

inst_34:
// rs1_h0_val == 1, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xefffff7faaaa0001;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xefffff7faaaa0001, x3, 88, x8)

inst_35:
// rs1_h0_val == -1, rs1_h2_val == 32
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfeff00204000ffff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfeff00204000ffff, x3, 96, x8)

inst_36:
// rs1_h3_val == 8, rs1_h2_val == 512
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x080200c000fffa;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x080200c000fffa, x3, 104, x8)

inst_37:
// rs1_h3_val == 4, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x04dfff5555fffc;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x04dfff5555fffc, x3, 112, x8)

inst_38:
// rs1_h3_val == 2, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x02aaaa20008000;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x02aaaa20008000, x3, 120, x8)

inst_39:
// rs1_h3_val == 1, rs1_h1_val == 4096
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x01555510000400;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x01555510000400, x3, 128, x8)

inst_40:
// rs1_h3_val == 0, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x0000000200ffdf;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x0000000200ffdf, x3, 136, x8)

inst_41:
// rs1_h3_val == -1, rs1_h1_val == -513
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xffff2000fdffff7f;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xffff2000fdffff7f, x3, 144, x8)

inst_42:
// rs1_h2_val == 32767, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x057fff0000fff6;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x057fff0000fff6, x3, 152, x8)

inst_43:
// rs1_h2_val == -16385, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff6bfff00072000;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff6bfff00072000, x3, 160, x8)

inst_44:
// rs1_h2_val == -1025, rs1_h0_val == -17, rs1_h1_val == -9
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfbfffbfffff7ffef;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfbfffbfffff7ffef, x3, 168, x8)

inst_45:
// rs1_h2_val == -33, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xaaaaffdf0007fffa;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xaaaaffdf0007fffa, x3, 176, x8)

inst_46:
// rs1_h2_val == -9, rs1_h1_val == -129
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xffdffff7ff7f0010;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xffdffff7ff7f0010, x3, 184, x8)

inst_47:
// rs1_h2_val == -3, rs1_h0_val == -9
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff7fffd0008fff7;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff7fffd0008fff7, x3, 192, x8)

inst_48:
// rs1_h2_val == -2, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x06fffe04000005;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x06fffe04000005, x3, 200, x8)

inst_49:
// rs1_h2_val == -32768, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x7fff8000f7ffffdf;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x7fff8000f7ffffdf, x3, 208, x8)

inst_50:
// rs1_h2_val == 64, rs1_h0_val == -257
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x100000408000feff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x100000408000feff, x3, 216, x8)

inst_51:
// rs1_h2_val == 8, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x8000008ffdf0010;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x8000008ffdf0010, x3, 224, x8)

inst_52:
// rs1_h2_val == 4, rs1_h0_val == -3
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x3fff00040200fffd;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x3fff00040200fffd, x3, 232, x8)

inst_53:
// rs1_h2_val == 2, rs1_h1_val == -3
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x010002fffdffef;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x010002fffdffef, x3, 240, x8)

inst_54:
// rs1_h2_val == 1, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x0800017ffffbff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x0800017ffffbff, x3, 248, x8)

inst_55:
// rs1_h1_val == -8193, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x05ffbfdffffffe;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x05ffbfdffffffe, x3, 256, x8)

inst_56:
// rs1_h1_val == -65, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xff7ffff7ffbf0008;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xff7ffff7ffbf0008, x3, 264, x8)

inst_57:
// rs1_h1_val == -5, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x1000fefffffb0002;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x1000fefffffb0002, x3, 272, x8)

inst_58:
// rs1_h1_val == -2, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff9fffcfffe0003;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff9fffcfffe0003, x3, 280, x8)

inst_59:
// rs1_h2_val == 16384, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xc0004000fff60007;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xc0004000fff60007, x3, 288, x8)

inst_60:
// rs1_h1_val == 2048, rs1_h0_val == 16384
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x2000000808004000;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x2000000808004000, x3, 296, x8)

inst_61:
// rs1_h1_val == 256, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x40000701000006;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x40000701000006, x3, 304, x8)

inst_62:
// rs1_h1_val == 128, rs1_h0_val == -16385
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xdfff00040080bfff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xdfff00040080bfff, x3, 312, x8)

inst_63:
// rs1_h1_val == 32, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff8000400200002;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff8000400200002, x3, 320, x8)

inst_64:
// rs1_h1_val == 16, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x0255550010fff7;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x0255550010fff7, x3, 328, x8)

inst_65:
// rs1_h1_val == 4, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x100bfff00040800;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x100bfff00040800, x3, 336, x8)

inst_66:
// rs1_h1_val == 2, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x8010000002fff8;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x8010000002fff8, x3, 344, x8)

inst_67:
// rs1_h1_val == -1, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff9dfffffff1000;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff9dfffffff1000, x3, 352, x8)

inst_68:
// rs1_h0_val == -21846, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xfff60400fdffaaaa;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xfff60400fdffaaaa, x3, 360, x8)

inst_69:
// rs1_h0_val == -8193, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x08ffbffeffdfff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x08ffbffeffdfff, x3, 368, x8)

inst_70:
// rs1_h0_val == -4097, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x0904000080efff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x0904000080efff, x3, 376, x8)

inst_71:
// rs1_h0_val == -513, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x010007fff8fdff;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x010007fff8fdff, x3, 384, x8)

inst_72:
// rs1_h0_val == -65, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xffbf00070005ffbf;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xffbf00070005ffbf, x3, 392, x8)

inst_73:
// rs1_h2_val == 2048, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x2000080000060006;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x2000080000060006, x3, 400, x8)

inst_74:
// rs1_h0_val == -5, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xffeffff70200fffb;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xffeffff70200fffb, x3, 408, x8)

inst_75:
// rs1_h0_val == 21845, 
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0x03008000075555;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0x03008000075555, x3, 416, x8)

inst_76:
// rs1_h3_val == -17, rs1_h0_val == 0, rs1_h2_val == 0
// opcode: clrs16 ; op1:x30; dest:x31; op1val:0xffef0000fff60000;
TEST_RD_OP( clrs16, x31, x30, 0x0000000000000000, 0xffef0000fff60000, x3, 424, x8)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 54*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
