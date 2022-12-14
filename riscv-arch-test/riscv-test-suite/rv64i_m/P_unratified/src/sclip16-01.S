
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
// This assembly file tests the sclip16 instruction of the RISC-V RV64PZicsr extension for the sclip16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sclip16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x6,signature_x6_1)

inst_0:
// rs1 == rd, rs1==x3, rd==x3, rs1_h0_val == -32768, rs1_h2_val == 8, rs1_h3_val == 128, imm_val == 11
// opcode: sclip16 ; op1:x3; dest:x3; op1val:0x800008fffa8000;  immval:0xb
TEST_PKIMM_OP( sclip16, x3, x3, 0x0000000000000000, 0x800008fffa8000, 0xb, x3, x6, 0, x17)

inst_1:
// rs1 != rd, rs1==x15, rd==x16, imm_val == 15, rs1_h1_val == -3, rs1_h3_val == 1, rs1_h0_val == -513
// opcode: sclip16 ; op1:x15; dest:x16; op1val:0x010006fffdfdff;  immval:0xf
TEST_PKIMM_OP( sclip16, x16, x15, 0x0000000000000000, 0x010006fffdfdff, 0xf, x15, x6, 16, x17)

inst_2:
// rs1==x11, rd==x28, imm_val == 14, rs1_h3_val == -3, rs1_h0_val == -8193, rs1_h2_val == 2, rs1_h1_val == -2049
// opcode: sclip16 ; op1:x11; dest:x28; op1val:0xfffd0002f7ffdfff;  immval:0xe
TEST_PKIMM_OP( sclip16, x28, x11, 0x0000000000000000, 0xfffd0002f7ffdfff, 0xe, x11, x6, 32, x17)

inst_3:
// rs1==x0, rd==x29, imm_val == 13, rs1_h2_val == -8193, rs1_h1_val == 16, rs1_h0_val == 1024, rs1_h3_val == 4096
// opcode: sclip16 ; op1:x0; dest:x29; op1val:0x1000dfff00100400;  immval:0xd
TEST_PKIMM_OP( sclip16, x29, x0, 0x0000000000000000, 0x1000dfff00100400, 0xd, x0, x6, 48, x17)

inst_4:
// rs1==x13, rd==x25, imm_val == 12, rs1_h1_val == 2, rs1_h0_val == -4097
// opcode: sclip16 ; op1:x13; dest:x25; op1val:0xfffcdfff0002efff;  immval:0xc
TEST_PKIMM_OP( sclip16, x25, x13, 0x0000000000000000, 0xfffcdfff0002efff, 0xc, x13, x6, 64, x17)

inst_5:
// rs1==x14, rd==x30, imm_val == 10, rs1_h0_val == 8192, rs1_h1_val == -8193, rs1_h3_val == -33, rs1_h2_val == 256
// opcode: sclip16 ; op1:x14; dest:x30; op1val:0xffdf0100dfff2000;  immval:0xa
TEST_PKIMM_OP( sclip16, x30, x14, 0x0000000000000000, 0xffdf0100dfff2000, 0xa, x14, x6, 80, x17)

inst_6:
// rs1==x10, rd==x24, imm_val == 9, rs1_h0_val == -3, rs1_h1_val == 2048
// opcode: sclip16 ; op1:x10; dest:x24; op1val:0x093fff0800fffd;  immval:0x9
TEST_PKIMM_OP( sclip16, x24, x10, 0x0000000000000000, 0x093fff0800fffd, 0x9, x10, x6, 96, x17)

inst_7:
// rs1==x7, rd==x1, imm_val == 8, rs1_h1_val == -21846, rs1_h0_val == -2, rs1_h2_val == -5, rs1_h3_val == -17
// opcode: sclip16 ; op1:x7; dest:x1; op1val:0xffeffffbaaaafffe;  immval:0x8
TEST_PKIMM_OP( sclip16, x1, x7, 0x0000000000000000, 0xffeffffbaaaafffe, 0x8, x7, x6, 112, x17)

inst_8:
// rs1==x20, rd==x14, imm_val == 7, rs1_h0_val == -21846, rs1_h3_val == 2048
// opcode: sclip16 ; op1:x20; dest:x14; op1val:0x80000080800aaaa;  immval:0x7
TEST_PKIMM_OP( sclip16, x14, x20, 0x0000000000000000, 0x80000080800aaaa, 0x7, x20, x6, 128, x17)

inst_9:
// rs1==x12, rd==x2, imm_val == 6, rs1_h3_val == -513, rs1_h0_val == 8, rs1_h2_val == -3, rs1_h1_val == 8
// opcode: sclip16 ; op1:x12; dest:x2; op1val:0xfdfffffd00080008;  immval:0x6
TEST_PKIMM_OP( sclip16, x2, x12, 0x0000000000000000, 0xfdfffffd00080008, 0x6, x12, x6, 144, x17)

inst_10:
// rs1==x26, rd==x9, imm_val == 5, rs1_h3_val == 1024, rs1_h0_val == 1, rs1_h1_val == 4096
// opcode: sclip16 ; op1:x26; dest:x9; op1val:0x400000910000001;  immval:0x5
TEST_PKIMM_OP( sclip16, x9, x26, 0x0000000000000000, 0x400000910000001, 0x5, x26, x6, 160, x17)

inst_11:
// rs1==x31, rd==x27, imm_val == 4, rs1_h1_val == -5, rs1_h2_val == -32768
// opcode: sclip16 ; op1:x31; dest:x27; op1val:0x058000fffb2000;  immval:0x4
TEST_PKIMM_OP( sclip16, x27, x31, 0x0000000000000000, 0x058000fffb2000, 0x4, x31, x6, 176, x17)

inst_12:
// rs1==x23, rd==x7, imm_val == 3, rs1_h1_val == 512, rs1_h0_val == 4, rs1_h3_val == 16
// opcode: sclip16 ; op1:x23; dest:x7; op1val:0x103fff02000004;  immval:0x3
TEST_PKIMM_OP( sclip16, x7, x23, 0x0000000000000000, 0x103fff02000004, 0x3, x23, x6, 192, x17)

inst_13:
// rs1==x21, rd==x19, imm_val == 2, rs1_h2_val == -65, rs1_h0_val == 128
// opcode: sclip16 ; op1:x21; dest:x19; op1val:0x07ffbffffb0080;  immval:0x2
TEST_PKIMM_OP( sclip16, x19, x21, 0x0000000000000000, 0x07ffbffffb0080, 0x2, x21, x6, 208, x17)

inst_14:
// rs1==x4, rd==x22, imm_val == 1, rs1_h2_val == -1025, rs1_h0_val == 21845, rs1_h1_val == -16385
// opcode: sclip16 ; op1:x4; dest:x22; op1val:0xc000fbffbfff5555;  immval:0x1
TEST_PKIMM_OP( sclip16, x22, x4, 0x0000000000000000, 0xc000fbffbfff5555, 0x1, x4, x6, 224, x17)

inst_15:
// rs1==x5, rd==x8, imm_val == 0, rs1_h2_val == 16, rs1_h1_val == -32768, rs1_h3_val == -16385
// opcode: sclip16 ; op1:x5; dest:x8; op1val:0xbfff00108000efff;  immval:0x0
TEST_PKIMM_OP( sclip16, x8, x5, 0x0000000000000000, 0xbfff00108000efff, 0x0, x5, x6, 240, x17)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_16:
// rs1==x16, rd==x13, rs1_h3_val == -21846, rs1_h2_val == 16384, rs1_h0_val == 2048
// opcode: sclip16 ; op1:x16; dest:x13; op1val:0xaaaa4000c0000800;  immval:0x5
TEST_PKIMM_OP( sclip16, x13, x16, 0x0000000000000000, 0xaaaa4000c0000800, 0x5, x16, x3, 0, x7)

inst_17:
// rs1==x8, rd==x6, rs1_h3_val == 21845, 
// opcode: sclip16 ; op1:x8; dest:x6; op1val:0x555500020010dfff;  immval:0x9
TEST_PKIMM_OP( sclip16, x6, x8, 0x0000000000000000, 0x555500020010dfff, 0x9, x8, x3, 16, x7)

inst_18:
// rs1==x2, rd==x11, rs1_h3_val == 32767, rs1_h0_val == 4096, rs1_h1_val == -1
// opcode: sclip16 ; op1:x2; dest:x11; op1val:0x7fffc000ffff1000;  immval:0xd
TEST_PKIMM_OP( sclip16, x11, x2, 0x0000000000000000, 0x7fffc000ffff1000, 0xd, x2, x3, 32, x7)

inst_19:
// rs1==x17, rd==x12, rs1_h3_val == -8193, rs1_h1_val == -129, rs1_h2_val == -9
// opcode: sclip16 ; op1:x17; dest:x12; op1val:0xdffffff7ff7f8000;  immval:0xa
TEST_PKIMM_OP( sclip16, x12, x17, 0x0000000000000000, 0xdffffff7ff7f8000, 0xa, x17, x3, 48, x7)

inst_20:
// rs1==x30, rd==x5, rs1_h3_val == -4097, 
// opcode: sclip16 ; op1:x30; dest:x5; op1val:0xeffffff9fff80800;  immval:0x8
TEST_PKIMM_OP( sclip16, x5, x30, 0x0000000000000000, 0xeffffff9fff80800, 0x8, x30, x3, 64, x7)

inst_21:
// rs1==x9, rd==x21, rs1_h3_val == -2049, rs1_h0_val == 256
// opcode: sclip16 ; op1:x9; dest:x21; op1val:0xf7ffffbff7ff0100;  immval:0xd
TEST_PKIMM_OP( sclip16, x21, x9, 0x0000000000000000, 0xf7ffffbff7ff0100, 0xd, x9, x3, 80, x7)

inst_22:
// rs1==x1, rd==x15, rs1_h3_val == -1025, rs1_h2_val == 1024, rs1_h1_val == -9
// opcode: sclip16 ; op1:x1; dest:x15; op1val:0xfbff0400fff7dfff;  immval:0xe
TEST_PKIMM_OP( sclip16, x15, x1, 0x0000000000000000, 0xfbff0400fff7dfff, 0xe, x1, x3, 96, x7)

inst_23:
// rs1==x27, rd==x17, rs1_h3_val == -257, rs1_h0_val == 16
// opcode: sclip16 ; op1:x27; dest:x17; op1val:0xfefffff8fffd0010;  immval:0x9
TEST_PKIMM_OP( sclip16, x17, x27, 0x0000000000000000, 0xfefffff8fffd0010, 0x9, x27, x3, 112, x7)

inst_24:
// rs1==x24, rd==x0, rs1_h3_val == -129, rs1_h1_val == -65
// opcode: sclip16 ; op1:x24; dest:x0; op1val:0xff7f4000ffbfdfff;  immval:0x6
TEST_PKIMM_OP( sclip16, x0, x24, 0x0000000000000000, 0xff7f4000ffbfdfff, 0x6, x24, x3, 128, x7)

inst_25:
// rs1==x25, rd==x26, rs1_h3_val == -65, rs1_h2_val == 32, rs1_h1_val == 32
// opcode: sclip16 ; op1:x25; dest:x26; op1val:0xffbf002000200100;  immval:0xa
TEST_PKIMM_OP( sclip16, x26, x25, 0x0000000000000000, 0xffbf002000200100, 0xa, x25, x3, 144, x7)

inst_26:
// rs1==x22, rd==x20, rs1_h3_val == -9, rs1_h2_val == -2
// opcode: sclip16 ; op1:x22; dest:x20; op1val:0xfff7fffeaaaa8000;  immval:0xf
TEST_PKIMM_OP( sclip16, x20, x22, 0x0000000000000000, 0xfff7fffeaaaa8000, 0xf, x22, x3, 160, x7)

inst_27:
// rs1==x29, rd==x23, rs1_h3_val == -5, rs1_h0_val == -65
// opcode: sclip16 ; op1:x29; dest:x23; op1val:0xfffbffbfbfffffbf;  immval:0xf
TEST_PKIMM_OP( sclip16, x23, x29, 0x0000000000000000, 0xfffbffbfbfffffbf, 0xf, x29, x3, 176, x7)

inst_28:
// rs1==x28, rd==x4, rs1_h3_val == -2, rs1_h0_val == 16384
// opcode: sclip16 ; op1:x28; dest:x4; op1val:0xfffefffb00054000;  immval:0x7
TEST_PKIMM_OP( sclip16, x4, x28, 0x0000000000000000, 0xfffefffb00054000, 0x7, x28, x3, 192, x7)

inst_29:
// rs1==x19, rd==x18, rs1_h3_val == -32768, rs1_h2_val == -1
// opcode: sclip16 ; op1:x19; dest:x18; op1val:0x8000ffff3fff0080;  immval:0x7
TEST_PKIMM_OP( sclip16, x18, x19, 0x0000000000000000, 0x8000ffff3fff0080, 0x7, x19, x3, 208, x7)

inst_30:
// rs1==x6, rd==x31, rs1_h3_val == 16384, rs1_h1_val == 16384, rs1_h2_val == 128
// opcode: sclip16 ; op1:x6; dest:x31; op1val:0x400000804000fffd;  immval:0x2
TEST_PKIMM_OP( sclip16, x31, x6, 0x0000000000000000, 0x400000804000fffd, 0x2, x6, x3, 224, x7)

inst_31:
// rs1==x18, rd==x10, rs1_h3_val == 8192, rs1_h1_val == 128
// opcode: sclip16 ; op1:x18; dest:x10; op1val:0x2000001000800009;  immval:0xa
TEST_PKIMM_OP( sclip16, x10, x18, 0x0000000000000000, 0x2000001000800009, 0xa, x18, x3, 240, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_32:
// rs1_h0_val == -16385, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x8000fff60010bfff;  immval:0x7
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x8000fff60010bfff, 0x7, x30, x1, 0, x2)

inst_33:
// rs1_h0_val == -2049, rs1_h3_val == 512
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x200fffd3ffff7ff;  immval:0xd
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x200fffd3ffff7ff, 0xd, x30, x1, 16, x2)

inst_34:
// rs1_h0_val == -1025, rs1_h2_val == 21845
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfff855550080fbff;  immval:0x0
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfff855550080fbff, 0x0, x30, x1, 32, x2)

inst_35:
// rs1_h0_val == -257, rs1_h1_val == 256
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xf7ff55550100feff;  immval:0x1
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xf7ff55550100feff, 0x1, x30, x1, 48, x2)

inst_36:
// rs1_h0_val == -129, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfff955558000ff7f;  immval:0x3
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfff955558000ff7f, 0x3, x30, x1, 64, x2)

inst_37:
// rs1_h0_val == -33, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x0300030007ffdf;  immval:0x4
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x0300030007ffdf, 0x4, x30, x1, 80, x2)

inst_38:
// rs1_h0_val == -17, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x8000fffe0008ffef;  immval:0xc
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x8000fffe0008ffef, 0xc, x30, x1, 96, x2)

inst_39:
// rs1_h0_val == -9, rs1_h2_val == 512
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x100200fff6fff7;  immval:0xe
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x100200fff6fff7, 0xe, x30, x1, 112, x2)

inst_40:
// rs1_h0_val == -5, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x8000fff8ff7ffffb;  immval:0xb
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x8000fff8ff7ffffb, 0xb, x30, x1, 128, x2)

inst_41:
// rs1_h0_val == 512, rs1_h1_val == -2, rs1_h2_val == 32767
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x077ffffffe0200;  immval:0x9
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x077ffffffe0200, 0x9, x30, x1, 144, x2)

inst_42:
// rs1_h0_val == 64, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfff80400aaaa0040;  immval:0xe
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfff80400aaaa0040, 0xe, x30, x1, 160, x2)

inst_43:
// rs1_h0_val == 32, rs1_h2_val == 2048
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x7fff0800fff70020;  immval:0x5
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x7fff0800fff70020, 0x5, x30, x1, 176, x2)

inst_44:
// rs1_h0_val == 2, rs1_h1_val == 1024, rs1_h2_val == -2049
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xffbff7ff04000002;  immval:0xf
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xffbff7ff04000002, 0xf, x30, x1, 192, x2)

inst_45:
// rs1_h0_val == 0, rs1_h2_val == -129
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x8000ff7ffff60000;  immval:0xc
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x8000ff7ffff60000, 0xc, x30, x1, 208, x2)

inst_46:
// rs1_h0_val == -1, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xffefc0001000ffff;  immval:0xf
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xffefc0001000ffff, 0xf, x30, x1, 224, x2)

inst_47:
// rs1_h3_val == 256, rs1_h1_val == -257
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x1000008fefffbff;  immval:0x0
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x1000008fefffbff, 0x0, x30, x1, 240, x2)

inst_48:
// rs1_h3_val == 64, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x40008001000001;  immval:0xa
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x40008001000001, 0xa, x30, x1, 256, x2)

inst_49:
// rs1_h3_val == 32, rs1_h1_val == -17, rs1_h2_val == -257
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x20feffffef0400;  immval:0xf
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x20feffffef0400, 0xf, x30, x1, 272, x2)

inst_50:
// rs1_h2_val == -33, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xaaaaffdf08000006;  immval:0xd
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xaaaaffdf08000006, 0xd, x30, x1, 288, x2)

inst_51:
// rs1_h2_val == -17, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfffdffef02000200;  immval:0x6
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfffdffef02000200, 0x6, x30, x1, 304, x2)

inst_52:
// rs1_h2_val == 8192, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xaaaa2000ffbf0400;  immval:0x4
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xaaaa2000ffbf0400, 0x4, x30, x1, 320, x2)

inst_53:
// rs1_h2_val == 4096, rs1_h1_val == -513
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x4001000fdff0200;  immval:0x4
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x4001000fdff0200, 0x4, x30, x1, 336, x2)

inst_54:
// rs1_h2_val == 64, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xaaaa00403fff0006;  immval:0x0
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xaaaa00403fff0006, 0x0, x30, x1, 352, x2)

inst_55:
// rs1_h2_val == 4, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x200004fdff0100;  immval:0x7
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x200004fdff0100, 0x7, x30, x1, 368, x2)

inst_56:
// rs1_h2_val == 1, rs1_h1_val == 32767, rs1_h3_val == -1
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xffff00017ffffeff;  immval:0xc
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xffff00017ffffeff, 0xc, x30, x1, 384, x2)

inst_57:
// rs1_h2_val == 0, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xc0000000ff7f0002;  immval:0x5
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xc0000000ff7f0002, 0x5, x30, x1, 400, x2)

inst_58:
// rs1_h1_val == 21845, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xff7f800055550200;  immval:0xa
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xff7f800055550200, 0xa, x30, x1, 416, x2)

inst_59:
// rs1_h2_val == -16385, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x3fffbfff08000080;  immval:0x8
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x3fffbfff08000080, 0x8, x30, x1, 432, x2)

inst_60:
// rs1_h1_val == -4097, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfffbfeffefff0003;  immval:0xd
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfffbfeffefff0003, 0xd, x30, x1, 448, x2)

inst_61:
// rs1_h1_val == -1025, rs1_h2_val == -513
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x05fdfffbff5555;  immval:0x2
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x05fdfffbff5555, 0x2, x30, x1, 464, x2)

inst_62:
// rs1_h1_val == -33, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xffbfffbfffdffff8;  immval:0x8
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xffbfffbfffdffff8, 0x8, x30, x1, 480, x2)

inst_63:
// rs1_h2_val == -4097, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xc000efffbfff5555;  immval:0x2
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xc000efffbfff5555, 0x2, x30, x1, 496, x2)

inst_64:
// rs1_h1_val == 8192, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfffc200020000009;  immval:0xd
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfffc200020000009, 0xd, x30, x1, 512, x2)

inst_65:
// rs1_h3_val == 8, rs1_h1_val == 0
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x08ffdf0000ffbf;  immval:0x8
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x08ffdf0000ffbf, 0x8, x30, x1, 528, x2)

inst_66:
// rs1_h3_val == 4, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x04fff700000040;  immval:0x4
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x04fff700000040, 0x4, x30, x1, 544, x2)

inst_67:
// rs1_h3_val == 2, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x02ffbffff9bfff;  immval:0x0
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x02ffbffff9bfff, 0x0, x30, x1, 560, x2)

inst_68:
// rs1_h3_val == 0, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x00fff908000009;  immval:0x1
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x00fff908000009, 0x1, x30, x1, 576, x2)

inst_69:
// rs1_h1_val == 64, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xf7ff00040040fff7;  immval:0x0
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xf7ff00040040fff7, 0x0, x30, x1, 592, x2)

inst_70:
// rs1_h1_val == 4, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xfff610000004fdff;  immval:0xa
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xfff610000004fdff, 0xa, x30, x1, 608, x2)

inst_71:
// rs1_h1_val == 1, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x0400060001ffff;  immval:0xf
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x0400060001ffff, 0xf, x30, x1, 624, x2)

inst_72:
// rs1_h2_val == -21846, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x3fffaaaafff80080;  immval:0xe
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x3fffaaaafff80080, 0xe, x30, x1, 640, x2)

inst_73:
// rs1_h0_val == 32767, 
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0xff7fffdf20007fff;  immval:0xc
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0xff7fffdf20007fff, 0xc, x30, x1, 656, x2)

inst_74:
// imm_val == 13, rs1_h2_val == -8193, rs1_h1_val == 16, rs1_h0_val == 1024, rs1_h3_val == 4096
// opcode: sclip16 ; op1:x30; dest:x31; op1val:0x1000dfff00100400;  immval:0xd
TEST_PKIMM_OP( sclip16, x31, x30, 0x0000000000000000, 0x1000dfff00100400, 0xd, x30, x1, 672, x2)
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
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 86*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
