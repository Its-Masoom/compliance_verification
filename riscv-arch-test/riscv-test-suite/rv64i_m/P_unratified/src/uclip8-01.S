
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
// This assembly file tests the uclip8 instruction of the RISC-V RV64PZicsr extension for the uclip8 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",uclip8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x4,signature_x4_1)

inst_0:
// rs1 == rd, rs1==x22, rd==x22, rs1_b0_val == 0, rs1_b3_val == 251, imm_val == 3, rs1_b1_val == 239, rs1_b6_val == 16, rs1_b4_val == 251, rs1_b2_val == 85
// opcode: uclip8 ; op1:x22; dest:x22; op1val:0x121006fbfb55ef00;  immval:0x3
TEST_PKIMM_OP( uclip8, x22, x22, 0x0000000000000000, 0x121006fbfb55ef00, 0x3, x22, x4, 0, x6)

inst_1:
// rs1 != rd, rs1==x24, rd==x13, imm_val == 7, rs1_b6_val == 254, rs1_b2_val == 127, rs1_b1_val == 4, rs1_b4_val == 8, rs1_b7_val == 8, rs1_b0_val == 247
// opcode: uclip8 ; op1:x24; dest:x13; op1val:0x8fe0708057f04f7;  immval:0x7
TEST_PKIMM_OP( uclip8, x13, x24, 0x0000000000000000, 0x8fe0708057f04f7, 0x7, x24, x4, 16, x6)

inst_2:
// rs1==x3, rd==x14, imm_val == 6, rs1_b6_val == 251, rs1_b3_val == 16, rs1_b2_val == 247, rs1_b5_val == 247, rs1_b7_val == 255
// opcode: uclip8 ; op1:x3; dest:x14; op1val:0xfffbf70b10f70e0d;  immval:0x6
TEST_PKIMM_OP( uclip8, x14, x3, 0x0000000000000000, 0xfffbf70b10f70e0d, 0x6, x3, x4, 32, x6)

inst_3:
// rs1==x13, rd==x8, imm_val == 5, rs1_b1_val == 170, rs1_b4_val == 85, rs1_b0_val == 255, rs1_b6_val == 4, rs1_b2_val == 170, rs1_b7_val == 251
// opcode: uclip8 ; op1:x13; dest:x8; op1val:0xfb04095503aaaaff;  immval:0x5
TEST_PKIMM_OP( uclip8, x8, x13, 0x0000000000000000, 0xfb04095503aaaaff, 0x5, x13, x4, 48, x6)

inst_4:
// rs1==x12, rd==x16, imm_val == 4, rs1_b3_val == 64, rs1_b0_val == 251, rs1_b7_val == 64
// opcode: uclip8 ; op1:x12; dest:x16; op1val:0x4013071140aa05fb;  immval:0x4
TEST_PKIMM_OP( uclip8, x16, x12, 0x0000000000000000, 0x4013071140aa05fb, 0x4, x12, x4, 64, x6)

inst_5:
// rs1==x1, rd==x19, imm_val == 2, rs1_b0_val == 2, rs1_b4_val == 32, rs1_b1_val == 2, rs1_b7_val == 0, rs1_b2_val == 2, rs1_b5_val == 16
// opcode: uclip8 ; op1:x1; dest:x19; op1val:0x13102006020202;  immval:0x2
TEST_PKIMM_OP( uclip8, x19, x1, 0x0000000000000000, 0x13102006020202, 0x2, x1, x4, 80, x6)

inst_6:
// rs1==x18, rd==x24, imm_val == 1, rs1_b7_val == 1, rs1_b4_val == 247, rs1_b0_val == 8
// opcode: uclip8 ; op1:x18; dest:x24; op1val:0x1060df70a050308;  immval:0x1
TEST_PKIMM_OP( uclip8, x24, x18, 0x0000000000000000, 0x1060df70a050308, 0x1, x18, x4, 96, x6)

inst_7:
// rs1==x20, rd==x26, imm_val == 0, rs1_b5_val == 255, rs1_b6_val == 1, rs1_b7_val == 253, rs1_b2_val == 128, rs1_b3_val == 170
// opcode: uclip8 ; op1:x20; dest:x26; op1val:0xfd01ff0aaa800e00;  immval:0x0
TEST_PKIMM_OP( uclip8, x26, x20, 0x0000000000000000, 0xfd01ff0aaa800e00, 0x0, x20, x4, 112, x6)

inst_8:
// rs1==x14, rd==x5, rs1_b7_val == 170, rs1_b3_val == 4, rs1_b1_val == 223
// opcode: uclip8 ; op1:x14; dest:x5; op1val:0xaa06130c0455dfff;  immval:0x6
TEST_PKIMM_OP( uclip8, x5, x14, 0x0000000000000000, 0xaa06130c0455dfff, 0x6, x14, x4, 128, x6)

inst_9:
// rs1==x2, rd==x25, rs1_b7_val == 85, rs1_b6_val == 0, rs1_b3_val == 255, rs1_b4_val == 64, rs1_b0_val == 4
// opcode: uclip8 ; op1:x2; dest:x25; op1val:0x55000940ff0b1104;  immval:0x6
TEST_PKIMM_OP( uclip8, x25, x2, 0x0000000000000000, 0x55000940ff0b1104, 0x6, x2, x4, 144, x6)

inst_10:
// rs1==x5, rd==x10, rs1_b7_val == 127, rs1_b6_val == 8, rs1_b0_val == 1, rs1_b3_val == 8
// opcode: uclip8 ; op1:x5; dest:x10; op1val:0x7f080709080c0301;  immval:0x2
TEST_PKIMM_OP( uclip8, x10, x5, 0x0000000000000000, 0x7f080709080c0301, 0x2, x5, x4, 160, x6)

inst_11:
// rs1==x9, rd==x15, rs1_b7_val == 191, rs1_b3_val == 253, rs1_b4_val == 170
// opcode: uclip8 ; op1:x9; dest:x15; op1val:0xbf1309aafd0f0700;  immval:0x5
TEST_PKIMM_OP( uclip8, x15, x9, 0x0000000000000000, 0xbf1309aafd0f0700, 0x5, x9, x4, 176, x6)

inst_12:
// rs1==x28, rd==x18, rs1_b7_val == 223, rs1_b1_val == 251
// opcode: uclip8 ; op1:x28; dest:x18; op1val:0xdf0312fb110efb13;  immval:0x3
TEST_PKIMM_OP( uclip8, x18, x28, 0x0000000000000000, 0xdf0312fb110efb13, 0x3, x28, x4, 192, x6)

inst_13:
// rs1==x15, rd==x17, rs1_b7_val == 239, rs1_b3_val == 254, rs1_b1_val == 64, rs1_b6_val == 2, rs1_b2_val == 254
// opcode: uclip8 ; op1:x15; dest:x17; op1val:0xef020bf7fefe4006;  immval:0x0
TEST_PKIMM_OP( uclip8, x17, x15, 0x0000000000000000, 0xef020bf7fefe4006, 0x0, x15, x4, 208, x6)

inst_14:
// rs1==x10, rd==x31, rs1_b7_val == 247, rs1_b5_val == 2, rs1_b6_val == 239, rs1_b2_val == 16
// opcode: uclip8 ; op1:x10; dest:x31; op1val:0xf7ef02130b10aa09;  immval:0x1
TEST_PKIMM_OP( uclip8, x31, x10, 0x0000000000000000, 0xf7ef02130b10aa09, 0x1, x10, x4, 224, x6)

inst_15:
// rs1==x21, rd==x23, rs1_b7_val == 254, rs1_b5_val == 4, rs1_b2_val == 251, rs1_b0_val == 191
// opcode: uclip8 ; op1:x21; dest:x23; op1val:0xfe1004030dfb40bf;  immval:0x2
TEST_PKIMM_OP( uclip8, x23, x21, 0x0000000000000000, 0xfe1004030dfb40bf, 0x2, x21, x4, 240, x6)

inst_16:
// rs1==x30, rd==x7, rs1_b7_val == 128, rs1_b1_val == 255, rs1_b5_val == 191, rs1_b2_val == 1
// opcode: uclip8 ; op1:x30; dest:x7; op1val:0x8010bf404001ff05;  immval:0x2
TEST_PKIMM_OP( uclip8, x7, x30, 0x0000000000000000, 0x8010bf404001ff05, 0x2, x30, x4, 256, x6)

inst_17:
// rs1==x27, rd==x21, rs1_b7_val == 32, rs1_b4_val == 223, rs1_b1_val == 32
// opcode: uclip8 ; op1:x27; dest:x21; op1val:0x201005dfff0f20ff;  immval:0x0
TEST_PKIMM_OP( uclip8, x21, x27, 0x0000000000000000, 0x201005dfff0f20ff, 0x0, x27, x4, 272, x6)

inst_18:
// rs1==x17, rd==x20, rs1_b7_val == 16, rs1_b5_val == 127
// opcode: uclip8 ; op1:x17; dest:x20; op1val:0x10137f0b1306060a;  immval:0x4
TEST_PKIMM_OP( uclip8, x20, x17, 0x0000000000000000, 0x10137f0b1306060a, 0x4, x17, x4, 288, x10)

inst_19:
// rs1==x8, rd==x28, rs1_b7_val == 4, rs1_b2_val == 223, rs1_b3_val == 1
// opcode: uclip8 ; op1:x8; dest:x28; op1val:0x4090f4001df0605;  immval:0x2
TEST_PKIMM_OP( uclip8, x28, x8, 0x0000000000000000, 0x4090f4001df0605, 0x2, x8, x4, 304, x10)

inst_20:
// rs1==x7, rd==x30, rs1_b7_val == 2, rs1_b6_val == 191, rs1_b5_val == 32, rs1_b3_val == 247
// opcode: uclip8 ; op1:x7; dest:x30; op1val:0x2bf20f7f7100405;  immval:0x1
TEST_PKIMM_OP( uclip8, x30, x7, 0x0000000000000000, 0x2bf20f7f7100405, 0x1, x7, x4, 320, x10)

inst_21:
// rs1==x29, rd==x0, rs1_b6_val == 170, rs1_b2_val == 4, rs1_b1_val == 8
// opcode: uclip8 ; op1:x29; dest:x0; op1val:0xaaa0a13fd0408fb;  immval:0x5
TEST_PKIMM_OP( uclip8, x0, x29, 0x0000000000000000, 0xaaa0a13fd0408fb, 0x5, x29, x4, 336, x10)
RVTEST_SIGBASE(x5,signature_x5_0)

inst_22:
// rs1==x4, rd==x2, rs1_b6_val == 85, rs1_b0_val == 64, rs1_b4_val == 2
// opcode: uclip8 ; op1:x4; dest:x2; op1val:0xbf551102090c0540;  immval:0x4
TEST_PKIMM_OP( uclip8, x2, x4, 0x0000000000000000, 0xbf551102090c0540, 0x4, x4, x5, 0, x10)

inst_23:
// rs1==x6, rd==x3, rs1_b6_val == 127, rs1_b5_val == 64, rs1_b0_val == 85, rs1_b4_val == 255
// opcode: uclip8 ; op1:x6; dest:x3; op1val:0xd7f40ff03800655;  immval:0x3
TEST_PKIMM_OP( uclip8, x3, x6, 0x0000000000000000, 0xd7f40ff03800655, 0x3, x6, x5, 16, x10)

inst_24:
// rs1==x11, rd==x9, rs1_b6_val == 223, 
// opcode: uclip8 ; op1:x11; dest:x9; op1val:0xffdf050906aa1340;  immval:0x6
TEST_PKIMM_OP( uclip8, x9, x11, 0x0000000000000000, 0xffdf050906aa1340, 0x6, x11, x5, 32, x10)

inst_25:
// rs1==x0, rd==x1, rs1_b2_val == 0, rs1_b5_val == 128
// opcode: uclip8 ; op1:x0; dest:x1; op1val:0xdf0f80134000110f;  immval:0x7
TEST_PKIMM_OP( uclip8, x1, x0, 0x0000000000000000, 0xdf0f80134000110f, 0x7, x0, x5, 48, x10)

inst_26:
// rs1==x25, rd==x6, rs1_b1_val == 85, rs1_b4_val == 128
// opcode: uclip8 ; op1:x25; dest:x6; op1val:0xc55118008025508;  immval:0x3
TEST_PKIMM_OP( uclip8, x6, x25, 0x0000000000000000, 0xc55118008025508, 0x3, x25, x5, 64, x10)

inst_27:
// rs1==x31, rd==x4, rs1_b1_val == 127, rs1_b3_val == 85, rs1_b6_val == 255
// opcode: uclip8 ; op1:x31; dest:x4; op1val:0x6ff0c09550c7f07;  immval:0x2
TEST_PKIMM_OP( uclip8, x4, x31, 0x0000000000000000, 0x6ff0c09550c7f07, 0x2, x31, x5, 80, x10)

inst_28:
// rs1==x26, rd==x11, rs1_b1_val == 191, rs1_b0_val == 254
// opcode: uclip8 ; op1:x26; dest:x11; op1val:0x7100b0f0707bffe;  immval:0x5
TEST_PKIMM_OP( uclip8, x11, x26, 0x0000000000000000, 0x7100b0f0707bffe, 0x5, x26, x5, 96, x10)

inst_29:
// rs1==x19, rd==x29, rs1_b1_val == 247, rs1_b0_val == 253, rs1_b5_val == 8
// opcode: uclip8 ; op1:x19; dest:x29; op1val:0x80080811f705f7fd;  immval:0x7
TEST_PKIMM_OP( uclip8, x29, x19, 0x0000000000000000, 0x80080811f705f7fd, 0x7, x19, x5, 112, x10)

inst_30:
// rs1==x16, rd==x27, rs1_b1_val == 253, rs1_b2_val == 32, rs1_b5_val == 239
// opcode: uclip8 ; op1:x16; dest:x27; op1val:0xff02ef120420fd00;  immval:0x7
TEST_PKIMM_OP( uclip8, x27, x16, 0x0000000000000000, 0xff02ef120420fd00, 0x7, x16, x5, 128, x10)

inst_31:
// rs1==x23, rd==x12, rs1_b1_val == 254, rs1_b0_val == 32, rs1_b4_val == 16, rs1_b3_val == 32
// opcode: uclip8 ; op1:x23; dest:x12; op1val:0xf0c10102001fe20;  immval:0x5
TEST_PKIMM_OP( uclip8, x12, x23, 0x0000000000000000, 0xf0c10102001fe20, 0x5, x23, x5, 144, x10)

inst_32:
// rs1_b1_val == 128, rs1_b4_val == 127
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xff0e0e7ff70e80f7;  immval:0x6
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xff0e0e7ff70e80f7, 0x6, x30, x5, 160, x10)

inst_33:
// rs1_b1_val == 16, rs1_b4_val == 191
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x30b0fbf04aa10fb;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x30b0fbf04aa10fb, 0x0, x30, x5, 176, x10)

inst_34:
// rs1_b1_val == 1, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x302200bfb020113;  immval:0x6
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x302200bfb020113, 0x6, x30, x5, 192, x10)

inst_35:
// rs1_b1_val == 0, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x20ef082009060040;  immval:0x1
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x20ef082009060040, 0x1, x30, x5, 208, x10)

inst_36:
// rs1_b0_val == 170, rs1_b5_val == 170
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x1010aa40fbfe01aa;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x1010aa40fbfe01aa, 0x0, x30, x5, 224, x10)

inst_37:
// rs1_b0_val == 127, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x50804fb0afe0c7f;  immval:0x1
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x50804fb0afe0c7f, 0x1, x30, x5, 240, x10)

inst_38:
// rs1_b0_val == 223, rs1_b3_val == 0
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x7f130b10000010df;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x7f130b10000010df, 0x2, x30, x5, 256, x10)

inst_39:
// rs1_b0_val == 239, rs1_b5_val == 254
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x701fe80400006ef;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x701fe80400006ef, 0x2, x30, x5, 272, x10)

inst_40:
// rs1_b0_val == 128, rs1_b3_val == 239
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x40cef02ef020280;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x40cef02ef020280, 0x7, x30, x5, 288, x10)

inst_41:
// rs1_b5_val == 1, rs1_b6_val == 247
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xbf7017f40130dbf;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xbf7017f40130dbf, 0x0, x30, x5, 304, x10)

inst_42:
// rs1_b5_val == 0, rs1_b3_val == 223
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfb0c00bfdf060404;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfb0c00bfdf060404, 0x7, x30, x5, 320, x10)

inst_43:
// rs1_b4_val == 239, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x7f0df7ef0b120201;  immval:0x5
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x7f0df7ef0b120201, 0x5, x30, x5, 336, x10)

inst_44:
// rs1_b4_val == 253, rs1_b2_val == 255
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfb0d11fd08ffeffe;  immval:0x3
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfb0d11fd08ffeffe, 0x3, x30, x5, 352, x10)

inst_45:
// rs1_b4_val == 254, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xf7010efefb0cef07;  immval:0x5
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xf7010efefb0cef07, 0x5, x30, x5, 368, x10)

inst_46:
// rs1_b4_val == 4, rs1_b5_val == 223
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfbfedf040f05fbfb;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfbfedf040f05fbfb, 0x7, x30, x5, 384, x10)

inst_47:
// rs1_b4_val == 1, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x80050501010c800c;  immval:0x4
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x80050501010c800c, 0x4, x30, x5, 400, x10)

inst_48:
// rs1_b4_val == 0, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xaa1103000efb0bbf;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xaa1103000efb0bbf, 0x2, x30, x5, 416, x10)

inst_49:
// rs1_b3_val == 127, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xcfb7f0a7ffe117f;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xcfb7f0a7ffe117f, 0x7, x30, x5, 432, x10)

inst_50:
// rs1_b5_val == 251, rs1_b2_val == 191, rs1_b6_val == 253
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x6fdfb0e0abf7f0a;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x6fdfb0e0abf7f0a, 0x2, x30, x5, 448, x10)

inst_51:
// rs1_b0_val == 16, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfb120712ef200610;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfb120712ef200610, 0x0, x30, x5, 464, x10)

inst_52:
// rs1_b3_val == 128, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x8009effb8004110a;  immval:0x5
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x8009effb8004110a, 0x5, x30, x5, 480, x10)

inst_53:
// rs1_b6_val == 128, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xef80fe0d05aa09bf;  immval:0x1
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xef80fe0d05aa09bf, 0x1, x30, x5, 496, x10)

inst_54:
// rs1_b6_val == 64, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xaa400a1020110f55;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xaa400a1020110f55, 0x7, x30, x5, 512, x10)

inst_55:
// rs1_b6_val == 32, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x80207f03040b0212;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x80207f03040b0212, 0x2, x30, x5, 528, x10)

inst_56:
// rs1_b3_val == 2, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xbf70d020207bf06;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xbf70d020207bf06, 0x2, x30, x5, 544, x10)

inst_57:
// rs1_b5_val == 85, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfefe5580040902ff;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfefe5580040902ff, 0x0, x30, x5, 560, x10)

inst_58:
// rs1_b2_val == 239, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xe55070706ef400c;  immval:0x3
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xe55070706ef400c, 0x3, x30, x5, 576, x10)

inst_59:
// rs1_b2_val == 253, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xfd400c080cfdfd40;  immval:0x1
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xfd400c080cfdfd40, 0x1, x30, x5, 592, x10)

inst_60:
// rs1_b2_val == 64, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x1002f703ff400b10;  immval:0x5
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x1002f703ff400b10, 0x5, x30, x5, 608, x10)

inst_61:
// rs1_b5_val == 253, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x7fdffd0ffe200bf7;  immval:0x2
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x7fdffd0ffe200bf7, 0x2, x30, x5, 624, x10)

inst_62:
// rs1_b2_val == 8, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0x40612fb1008010a;  immval:0x0
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0x40612fb1008010a, 0x0, x30, x5, 640, x10)

inst_63:
// rs1_b3_val == 191, 
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xbf05dfffbf80130c;  immval:0x3
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xbf05dfffbf80130c, 0x3, x30, x5, 656, x10)

inst_64:
// rs1_b6_val == 170, rs1_b2_val == 4, rs1_b1_val == 8
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xaaa0a13fd0408fb;  immval:0x5
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xaaa0a13fd0408fb, 0x5, x30, x5, 672, x10)

inst_65:
// rs1_b2_val == 0, rs1_b5_val == 128
// opcode: uclip8 ; op1:x30; dest:x31; op1val:0xdf0f80134000110f;  immval:0x7
TEST_PKIMM_OP( uclip8, x31, x30, 0x0000000000000000, 0xdf0f80134000110f, 0x7, x30, x5, 688, x10)
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


signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 44*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 88*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
