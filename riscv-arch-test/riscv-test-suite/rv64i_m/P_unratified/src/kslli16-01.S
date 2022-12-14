
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
// This assembly file tests the kslli16 instruction of the RISC-V RV64PZicsr extension for the kslli16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kslli16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x13,signature_x13_1)

inst_0:
// rs1 == rd, rs1==x16, rd==x16, rs1_h0_val == -32768, imm_val == 0, rs1_h1_val == 1, rs1_h2_val == -1025
// opcode: kslli16 ; op1:x16; dest:x16; op1val:0xfffafbff00018000;  immval:0x0
TEST_PKIMM_OP( kslli16, x16, x16, 0x0000000000000000, 0xfffafbff00018000, 0x0, x16, x13, 0, x7)

inst_1:
// rs1 != rd, rs1==x8, rd==x9, imm_val == 15, rs1_h2_val == 8, rs1_h3_val == -8193, rs1_h0_val == 1
// opcode: kslli16 ; op1:x8; dest:x9; op1val:0xdfff000800050001;  immval:0xf
TEST_PKIMM_OP( kslli16, x9, x8, 0x0000000000000000, 0xdfff000800050001, 0xf, x8, x13, 16, x7)

inst_2:
// rs1==x28, rd==x27, imm_val == 14, rs1_h2_val == -65, rs1_h0_val == 16, rs1_h3_val == -1, rs1_h1_val == 32
// opcode: kslli16 ; op1:x28; dest:x27; op1val:0xffffffbf00200010;  immval:0xe
TEST_PKIMM_OP( kslli16, x27, x28, 0x0000000000000000, 0xffffffbf00200010, 0xe, x28, x13, 32, x7)

inst_3:
// rs1==x25, rd==x11, imm_val == 13, rs1_h3_val == -3, rs1_h0_val == -1
// opcode: kslli16 ; op1:x25; dest:x11; op1val:0xfffdc000fffaffff;  immval:0xd
TEST_PKIMM_OP( kslli16, x11, x25, 0x0000000000000000, 0xfffdc000fffaffff, 0xd, x25, x13, 48, x7)

inst_4:
// rs1==x27, rd==x3, imm_val == 12, rs1_h1_val == -2049
// opcode: kslli16 ; op1:x27; dest:x3; op1val:0xfffffbfff7ff0007;  immval:0xc
TEST_PKIMM_OP( kslli16, x3, x27, 0x0000000000000000, 0xfffffbfff7ff0007, 0xc, x27, x13, 64, x7)

inst_5:
// rs1==x6, rd==x8, imm_val == 11, rs1_h3_val == 32767, rs1_h0_val == 2, rs1_h1_val == -8193, rs1_h2_val == 0
// opcode: kslli16 ; op1:x6; dest:x8; op1val:0x7fff0000dfff0002;  immval:0xb
TEST_PKIMM_OP( kslli16, x8, x6, 0x0000000000000000, 0x7fff0000dfff0002, 0xb, x6, x13, 80, x7)

inst_6:
// rs1==x3, rd==x12, imm_val == 10, rs1_h1_val == 512, rs1_h2_val == -4097, rs1_h3_val == -9
// opcode: kslli16 ; op1:x3; dest:x12; op1val:0xfff7efff0200ffff;  immval:0xa
TEST_PKIMM_OP( kslli16, x12, x3, 0x0000000000000000, 0xfff7efff0200ffff, 0xa, x3, x13, 96, x7)

inst_7:
// rs1==x14, rd==x21, imm_val == 9, rs1_h3_val == -513, rs1_h0_val == -21846
// opcode: kslli16 ; op1:x14; dest:x21; op1val:0xfdfffbff0005aaaa;  immval:0x9
TEST_PKIMM_OP( kslli16, x21, x14, 0x0000000000000000, 0xfdfffbff0005aaaa, 0x9, x14, x13, 112, x7)

inst_8:
// rs1==x23, rd==x30, imm_val == 8, rs1_h2_val == -5, rs1_h0_val == 256, rs1_h3_val == 8
// opcode: kslli16 ; op1:x23; dest:x30; op1val:0x08fffb00050100;  immval:0x8
TEST_PKIMM_OP( kslli16, x30, x23, 0x0000000000000000, 0x08fffb00050100, 0x8, x23, x13, 128, x7)

inst_9:
// rs1==x12, rd==x23, imm_val == 7, rs1_h0_val == -2049, rs1_h2_val == 4
// opcode: kslli16 ; op1:x12; dest:x23; op1val:0x7fff00040005f7ff;  immval:0x7
TEST_PKIMM_OP( kslli16, x23, x12, 0x0000000000000000, 0x7fff00040005f7ff, 0x7, x12, x13, 144, x7)

inst_10:
// rs1==x1, rd==x0, imm_val == 6, rs1_h2_val == 64, rs1_h0_val == 8192, rs1_h1_val == 0, rs1_h3_val == 8192
// opcode: kslli16 ; op1:x1; dest:x0; op1val:0x2000004000002000;  immval:0x6
TEST_PKIMM_OP( kslli16, x0, x1, 0x0000000000000000, 0x2000004000002000, 0x6, x1, x13, 160, x7)

inst_11:
// rs1==x11, rd==x19, imm_val == 5, rs1_h2_val == -2049, rs1_h1_val == -16385
// opcode: kslli16 ; op1:x11; dest:x19; op1val:0x3ffff7ffbfff0003;  immval:0x5
TEST_PKIMM_OP( kslli16, x19, x11, 0x0000000000000000, 0x3ffff7ffbfff0003, 0x5, x11, x13, 176, x7)

inst_12:
// rs1==x15, rd==x22, imm_val == 4, rs1_h3_val == -5, rs1_h1_val == 21845
// opcode: kslli16 ; op1:x15; dest:x22; op1val:0xfffb00055555fff8;  immval:0x4
TEST_PKIMM_OP( kslli16, x22, x15, 0x0000000000000000, 0xfffb00055555fff8, 0x4, x15, x13, 192, x7)

inst_13:
// rs1==x18, rd==x28, imm_val == 3, rs1_h2_val == -3, rs1_h0_val == -129
// opcode: kslli16 ; op1:x18; dest:x28; op1val:0xfffbfffd0020ff7f;  immval:0x3
TEST_PKIMM_OP( kslli16, x28, x18, 0x0000000000000000, 0xfffbfffd0020ff7f, 0x3, x18, x13, 208, x7)

inst_14:
// rs1==x9, rd==x18, imm_val == 2, rs1_h3_val == 1, rs1_h2_val == 512
// opcode: kslli16 ; op1:x9; dest:x18; op1val:0x01020000200003;  immval:0x2
TEST_PKIMM_OP( kslli16, x18, x9, 0x0000000000000000, 0x01020000200003, 0x2, x9, x13, 224, x7)

inst_15:
// rs1==x5, rd==x15, imm_val == 1, rs1_h2_val == -17, rs1_h1_val == 16384
// opcode: kslli16 ; op1:x5; dest:x15; op1val:0x03ffef40003fff;  immval:0x1
TEST_PKIMM_OP( kslli16, x15, x5, 0x0000000000000000, 0x03ffef40003fff, 0x1, x5, x13, 240, x7)

inst_16:
// rs1==x2, rd==x6, rs1_h3_val == -21846, rs1_h2_val == 16384, rs1_h1_val == -3, rs1_h0_val == 32
// opcode: kslli16 ; op1:x2; dest:x6; op1val:0xaaaa4000fffd0020;  immval:0x2
TEST_PKIMM_OP( kslli16, x6, x2, 0x0000000000000000, 0xaaaa4000fffd0020, 0x2, x2, x13, 256, x7)

inst_17:
// rs1==x31, rd==x14, rs1_h3_val == 21845, 
// opcode: kslli16 ; op1:x31; dest:x14; op1val:0x5555fffa00010006;  immval:0xa
TEST_PKIMM_OP( kslli16, x14, x31, 0x0000000000000000, 0x5555fffa00010006, 0xa, x31, x13, 272, x7)

inst_18:
// rs1==x30, rd==x31, rs1_h3_val == -16385, rs1_h1_val == -21846, rs1_h2_val == 21845
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xbfff5555aaaa0005;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xbfff5555aaaa0005, 0x8, x30, x13, 288, x7)

inst_19:
// rs1==x29, rd==x2, rs1_h3_val == -4097, 
// opcode: kslli16 ; op1:x29; dest:x2; op1val:0xeffffbfff7ff0005;  immval:0xf
TEST_PKIMM_OP( kslli16, x2, x29, 0x0000000000000000, 0xeffffbfff7ff0005, 0xf, x29, x13, 304, x7)

inst_20:
// rs1==x19, rd==x10, rs1_h3_val == -2049, 
// opcode: kslli16 ; op1:x19; dest:x10; op1val:0xf7ff00000020c000;  immval:0x2
TEST_PKIMM_OP( kslli16, x10, x19, 0x0000000000000000, 0xf7ff00000020c000, 0x2, x19, x13, 320, x7)

inst_21:
// rs1==x4, rd==x26, rs1_h3_val == -1025, rs1_h1_val == -1025
// opcode: kslli16 ; op1:x4; dest:x26; op1val:0xfbfffff6fbff0001;  immval:0x3
TEST_PKIMM_OP( kslli16, x26, x4, 0x0000000000000000, 0xfbfffff6fbff0001, 0x3, x4, x13, 336, x7)

inst_22:
// rs1==x10, rd==x24, rs1_h3_val == -257, rs1_h1_val == -4097, rs1_h2_val == 128
// opcode: kslli16 ; op1:x10; dest:x24; op1val:0xfeff0080effffff9;  immval:0x3
TEST_PKIMM_OP( kslli16, x24, x10, 0x0000000000000000, 0xfeff0080effffff9, 0x3, x10, x13, 352, x7)

inst_23:
// rs1==x26, rd==x7, rs1_h3_val == -129, rs1_h0_val == 0, rs1_h2_val == 1
// opcode: kslli16 ; op1:x26; dest:x7; op1val:0xff7f000102000000;  immval:0x2
TEST_PKIMM_OP( kslli16, x7, x26, 0x0000000000000000, 0xff7f000102000000, 0x2, x26, x13, 368, x3)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_24:
// rs1==x17, rd==x13, rs1_h3_val == -65, rs1_h0_val == 4096
// opcode: kslli16 ; op1:x17; dest:x13; op1val:0xffbf000155551000;  immval:0xc
TEST_PKIMM_OP( kslli16, x13, x17, 0x0000000000000000, 0xffbf000155551000, 0xc, x17, x2, 0, x3)

inst_25:
// rs1==x24, rd==x29, rs1_h3_val == -33, 
// opcode: kslli16 ; op1:x24; dest:x29; op1val:0xffdf400055550020;  immval:0x7
TEST_PKIMM_OP( kslli16, x29, x24, 0x0000000000000000, 0xffdf400055550020, 0x7, x24, x2, 16, x3)

inst_26:
// rs1==x21, rd==x25, rs1_h3_val == -17, rs1_h1_val == -33
// opcode: kslli16 ; op1:x21; dest:x25; op1val:0xffef0004ffdf0001;  immval:0x7
TEST_PKIMM_OP( kslli16, x25, x21, 0x0000000000000000, 0xffef0004ffdf0001, 0x7, x21, x2, 32, x3)

inst_27:
// rs1==x22, rd==x20, rs1_h3_val == -2, rs1_h2_val == -33, rs1_h1_val == 2048
// opcode: kslli16 ; op1:x22; dest:x20; op1val:0xfffeffdf08002000;  immval:0xb
TEST_PKIMM_OP( kslli16, x20, x22, 0x0000000000000000, 0xfffeffdf08002000, 0xb, x22, x2, 48, x3)

inst_28:
// rs1==x20, rd==x1, rs1_h3_val == -32768, rs1_h1_val == 2, rs1_h2_val == -21846
// opcode: kslli16 ; op1:x20; dest:x1; op1val:0x8000aaaa0002aaaa;  immval:0xc
TEST_PKIMM_OP( kslli16, x1, x20, 0x0000000000000000, 0x8000aaaa0002aaaa, 0xc, x20, x2, 64, x3)

inst_29:
// rs1==x13, rd==x5, rs1_h3_val == 16384, rs1_h0_val == -5
// opcode: kslli16 ; op1:x13; dest:x5; op1val:0x4000fbff4000fffb;  immval:0x3
TEST_PKIMM_OP( kslli16, x5, x13, 0x0000000000000000, 0x4000fbff4000fffb, 0x3, x13, x2, 80, x3)

inst_30:
// rs1==x7, rd==x17, rs1_h3_val == 4096, rs1_h1_val == 16, rs1_h2_val == 256
// opcode: kslli16 ; op1:x7; dest:x17; op1val:0x100001000010ff7f;  immval:0xd
TEST_PKIMM_OP( kslli16, x17, x7, 0x0000000000000000, 0x100001000010ff7f, 0xd, x7, x2, 96, x3)

inst_31:
// rs1==x0, rd==x4, rs1_h3_val == 2048, 
// opcode: kslli16 ; op1:x0; dest:x4; op1val:0x800fffa08000003;  immval:0xa
TEST_PKIMM_OP( kslli16, x4, x0, 0x0000000000000000, 0x800fffa08000003, 0xa, x0, x2, 112, x3)

inst_32:
// rs1_h3_val == 1024, rs1_h1_val == -9
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x4000001fff7fffb;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x4000001fff7fffb, 0x8, x30, x2, 128, x3)

inst_33:
// rs1_h3_val == 512, rs1_h2_val == -16385, rs1_h0_val == -33
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x200bfffbfffffdf;  immval:0x5
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x200bfffbfffffdf, 0x5, x30, x2, 144, x3)

inst_34:
// rs1_h3_val == 256, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x100000300100100;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x100000300100100, 0x0, x30, x2, 160, x3)

inst_35:
// rs1_h0_val == -16385, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x1000fff9efffbfff;  immval:0x7
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x1000fff9efffbfff, 0x7, x30, x2, 176, x3)

inst_36:
// rs1_h0_val == -8193, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff8c000efffdfff;  immval:0x1
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff8c000efffdfff, 0x1, x30, x2, 192, x3)

inst_37:
// rs1_h0_val == -4097, rs1_h2_val == -257
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x4000feff0001efff;  immval:0xa
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x4000feff0001efff, 0xa, x30, x2, 208, x3)

inst_38:
// rs1_h0_val == -1025, rs1_h2_val == -9
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x5555fff70000fbff;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x5555fff70000fbff, 0x0, x30, x2, 224, x3)

inst_39:
// rs1_h0_val == -513, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x8003fff3ffffdff;  immval:0xd
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x8003fff3ffffdff, 0xd, x30, x2, 240, x3)

inst_40:
// rs1_h0_val == -257, rs1_h2_val == -8193, rs1_h1_val == -1
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xaaaadffffffffeff;  immval:0x3
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xaaaadffffffffeff, 0x3, x30, x2, 256, x3)

inst_41:
// rs1_h0_val == -65, rs1_h2_val == -1
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xefffffff0005ffbf;  immval:0x7
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xefffffff0005ffbf, 0x7, x30, x2, 272, x3)

inst_42:
// rs1_h0_val == -17, rs1_h2_val == 2048
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x40008000000ffef;  immval:0x4
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x40008000000ffef, 0x4, x30, x2, 288, x3)

inst_43:
// rs1_h0_val == -9, rs1_h1_val == -65
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xffbf4000ffbffff7;  immval:0xa
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xffbf4000ffbffff7, 0xa, x30, x2, 304, x3)

inst_44:
// rs1_h0_val == -3, rs1_h1_val == -129
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff7aaaaff7ffffd;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff7aaaaff7ffffd, 0x8, x30, x2, 320, x3)

inst_45:
// rs1_h0_val == -2, rs1_h2_val == 8192
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffa2000fff7fffe;  immval:0x4
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffa2000fff7fffe, 0x4, x30, x2, 336, x3)

inst_46:
// rs1_h0_val == 16384, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xf7ff000940004000;  immval:0x2
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xf7ff000940004000, 0x2, x30, x2, 352, x3)

inst_47:
// rs1_h0_val == 2048, rs1_h1_val == 256
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xffbffff801000800;  immval:0xc
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xffbffff801000800, 0xc, x30, x2, 368, x3)

inst_48:
// rs1_h0_val == 1024, rs1_h2_val == -129
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff6ff7fc0000400;  immval:0x9
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff6ff7fc0000400, 0x9, x30, x2, 384, x3)

inst_49:
// rs1_h0_val == 512, rs1_h2_val == -2
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x4000fffeffdf0200;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x4000fffeffdf0200, 0x0, x30, x2, 400, x3)

inst_50:
// rs1_h0_val == 128, rs1_h1_val == -5, rs1_h2_val == 2
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfeff0002fffb0080;  immval:0x2
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfeff0002fffb0080, 0x2, x30, x2, 416, x3)

inst_51:
// rs1_h0_val == 64, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfdffc000dfff0040;  immval:0xe
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfdffc000dfff0040, 0xe, x30, x2, 432, x3)

inst_52:
// rs1_h2_val == -32768, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xffdf800000050010;  immval:0x7
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xffdf800000050010, 0x7, x30, x2, 448, x3)

inst_53:
// rs1_h2_val == 4096, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffa1000fff90020;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffa1000fff90020, 0x8, x30, x2, 464, x3)

inst_54:
// rs1_h2_val == 1024, rs1_h1_val == -17
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff80400ffef0002;  immval:0x1
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff80400ffef0002, 0x1, x30, x2, 480, x3)

inst_55:
// rs1_h2_val == 32, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff90020fffcff7f;  immval:0x1
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff90020fffcff7f, 0x1, x30, x2, 496, x3)

inst_56:
// rs1_h2_val == 16, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfff70010ffeffeff;  immval:0xe
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfff70010ffeffeff, 0xe, x30, x2, 512, x3)

inst_57:
// rs1_h2_val == 32767, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffc7ffffffc0400;  immval:0x4
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffc7ffffffc0400, 0x4, x30, x2, 528, x3)

inst_58:
// rs1_h0_val == 8, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfeff200000090008;  immval:0x3
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfeff200000090008, 0x3, x30, x2, 544, x3)

inst_59:
// rs1_h0_val == 4, rs1_h1_val == 64
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffdffdf00400004;  immval:0xa
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffdffdf00400004, 0xa, x30, x2, 560, x3)

inst_60:
// rs1_h1_val == 32767, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xdffffff67fffbfff;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xdffffff67fffbfff, 0x0, x30, x2, 576, x3)

inst_61:
// rs1_h1_val == -513, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x070006fdff0003;  immval:0xf
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x070006fdff0003, 0xf, x30, x2, 592, x3)

inst_62:
// rs1_h1_val == -257, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x097ffffeff0080;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x097ffffeff0080, 0x0, x30, x2, 608, x3)

inst_63:
// rs1_h1_val == -2, rs1_h3_val == 2
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x020010fffe0080;  immval:0x6
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x020010fffe0080, 0x6, x30, x2, 624, x3)

inst_64:
// rs1_h3_val == 128, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x800007fff60080;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x800007fff60080, 0x8, x30, x2, 640, x3)

inst_65:
// rs1_h1_val == -32768, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x02c00080004000;  immval:0x4
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x02c00080004000, 0x4, x30, x2, 656, x3)

inst_66:
// rs1_h3_val == 64, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x400003ffef0020;  immval:0x6
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x400003ffef0020, 0x6, x30, x2, 672, x3)

inst_67:
// rs1_h3_val == 32, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x20aaaadffffffe;  immval:0x7
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x20aaaadffffffe, 0x7, x30, x2, 688, x3)

inst_68:
// rs1_h1_val == 8192, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfefffff92000ffdf;  immval:0xe
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfefffff92000ffdf, 0xe, x30, x2, 704, x3)

inst_69:
// rs1_h3_val == 16, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x1000075555ffef;  immval:0xa
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x1000075555ffef, 0xa, x30, x2, 720, x3)

inst_70:
// rs1_h1_val == 4096, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x2080001000fff7;  immval:0x3
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x2080001000fff7, 0x3, x30, x2, 736, x3)

inst_71:
// rs1_h3_val == 4, rs1_h0_val == 32767
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x0400027fff7fff;  immval:0x5
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x0400027fff7fff, 0x5, x30, x2, 752, x3)

inst_72:
// rs1_h1_val == 1024, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfdfffff704000000;  immval:0x8
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfdfffff704000000, 0x8, x30, x2, 768, x3)

inst_73:
// rs1_h3_val == 0, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x00efff00030006;  immval:0x4
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x00efff00030006, 0x4, x30, x2, 784, x3)

inst_74:
// rs1_h1_val == 128, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x400dfff00804000;  immval:0xc
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x400dfff00804000, 0xc, x30, x2, 800, x3)

inst_75:
// rs1_h1_val == 4, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x400fff80004fbff;  immval:0x3
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x400fff80004fbff, 0x3, x30, x2, 816, x3)

inst_76:
// rs1_h2_val == -513, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffefdff0005bfff;  immval:0x0
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffefdff0005bfff, 0x0, x30, x2, 832, x3)

inst_77:
// rs1_h0_val == 21845, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x02fffc40005555;  immval:0x6
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x02fffc40005555, 0x6, x30, x2, 848, x3)

inst_78:
// rs1_h1_val == 8, 
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0xfffd04000008ffdf;  immval:0xe
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0xfffd04000008ffdf, 0xe, x30, x2, 864, x3)

inst_79:
// imm_val == 6, rs1_h2_val == 64, rs1_h0_val == 8192, rs1_h1_val == 0, rs1_h3_val == 8192
// opcode: kslli16 ; op1:x30; dest:x31; op1val:0x2000004000002000;  immval:0x6
TEST_PKIMM_OP( kslli16, x31, x30, 0x0000000000000000, 0x2000004000002000, 0x6, x30, x2, 880, x3)
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


signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 48*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 112*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
