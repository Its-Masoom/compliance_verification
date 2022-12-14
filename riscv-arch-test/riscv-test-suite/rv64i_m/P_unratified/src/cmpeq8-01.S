
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
// This assembly file tests the cmpeq8 instruction of the RISC-V RV64PZicsr extension for the cmpeq8 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",cmpeq8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x7,signature_x7_1)

inst_0:
// rs1 == rd != rs2, rs1==x8, rs2==x22, rd==x8, rs1_b0_val == -128, rs1_b7_val != rs2_b7_val, rs1_b7_val > 0 and rs2_b7_val > 0, rs1_b6_val != rs2_b6_val, rs1_b6_val < 0 and rs2_b6_val < 0, rs1_b5_val != rs2_b5_val, rs1_b5_val < 0 and rs2_b5_val < 0, rs1_b4_val != rs2_b4_val, rs2_b3_val == 0, rs1_b4_val < 0 and rs2_b4_val < 0, rs1_b3_val != rs2_b3_val, rs2_b2_val == -5, rs1_b2_val != rs2_b2_val, rs1_b4_val == -1, rs1_b2_val < 0 and rs2_b2_val < 0, rs1_b1_val != rs2_b1_val, rs1_b1_val > 0 and rs2_b1_val < 0, rs1_b0_val != rs2_b0_val, rs1_b0_val < 0 and rs2_b0_val > 0, rs2_b1_val == -2, rs2_b7_val == 8, rs2_b0_val == 8, rs2_b6_val == -3, rs2_b5_val == -33, rs1_b6_val == -9, rs2_b4_val == -86
// opcode: cmpeq8 ; op1:x8; op2:x22; dest:x8; op1val:0x9f7f8ff3ff60580;  op2val:0x8fddfaa00fbfe08
TEST_RR_OP(cmpeq8, x8, x8, x22, 0x0000000000000000, 0x9f7f8ff3ff60580, 0x8fddfaa00fbfe08, x7, 0, x1)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x28, rs2==x4, rd==x26, rs1_b7_val == rs2_b7_val, rs1_b5_val == -5, rs1_b0_val == -9, rs1_b7_val < 0 and rs2_b7_val < 0, rs2_b7_val == -1, rs1_b7_val == -1, rs1_b1_val < 0 and rs2_b1_val > 0, rs2_b2_val == 0, rs1_b3_val == -17, rs2_b5_val == 127, rs1_b6_val > 0 and rs2_b6_val < 0, rs1_b2_val == 2, rs2_b0_val == 1, rs1_b5_val < 0 and rs2_b5_val > 0, rs1_b6_val == 2, rs2_b4_val == -2, rs2_b6_val == -1, rs1_b3_val < 0 and rs2_b3_val > 0, rs1_b4_val == 0
// opcode: cmpeq8 ; op1:x28; op2:x4; dest:x26; op1val:0xff02fb00ef02f6f7;  op2val:0xffff7ffe03000601
TEST_RR_OP(cmpeq8, x26, x28, x4, 0x0000000000000000, 0xff02fb00ef02f6f7, 0xffff7ffe03000601, x7, 8, x1)

inst_2:
// rs1 == rs2 != rd, rs1==x25, rs2==x25, rd==x9, rs1_b7_val < 0 and rs2_b7_val > 0, rs2_b0_val == -33, rs1_b3_val == -33, rs1_b1_val < 0 and rs2_b1_val < 0, rs2_b5_val == 2, rs1_b6_val == -5, rs2_b6_val == -128, rs1_b0_val > 0 and rs2_b0_val < 0, rs1_b5_val > 0 and rs2_b5_val > 0
// opcode: cmpeq8 ; op1:x25; op2:x25; dest:x9; op1val:0xfcfb3ffadffcc003;  op2val:0x78002c00500f6df
TEST_RR_OP(cmpeq8, x9, x25, x25, 0x0000000000000000, 0xfcfb3ffadffcc003, 0x78002c00500f6df, x7, 16, x1)

inst_3:
// rs1 == rs2 == rd, rs1==x31, rs2==x31, rd==x31, rs1_b7_val > 0 and rs2_b7_val < 0, rs1_b2_val > 0 and rs2_b2_val < 0, rs2_b3_val == -33, rs1_b0_val == -2, rs1_b5_val == 1, rs1_b3_val == 16, rs2_b7_val == -33, rs2_b4_val == -128, rs2_b1_val == 0, rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b7_val == 16
// opcode: cmpeq8 ; op1:x31; op2:x31; dest:x31; op1val:0x10f701f9100503fe;  op2val:0xdffd7f80dfc0003f
TEST_RR_OP(cmpeq8, x31, x31, x31, 0x0000000000000000, 0x10f701f9100503fe, 0xdffd7f80dfc0003f, x7, 24, x1)

inst_4:
// rs2 == rd != rs1, rs1==x30, rs2==x14, rd==x14, rs1_b6_val == rs2_b6_val, rs2_b6_val == -17, rs1_b6_val == -17, rs1_b0_val == 1, rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b3_val == 4, rs1_b4_val < 0 and rs2_b4_val > 0, rs1_b4_val == -3, rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b2_val == -33, rs2_b5_val == -17
// opcode: cmpeq8 ; op1:x30; op2:x14; dest:x14; op1val:0xfaeffbfd3fdf0901;  op2val:0x6efef060400f806
TEST_RR_OP(cmpeq8, x14, x30, x14, 0x0000000000000000, 0xfaeffbfd3fdf0901, 0x6efef060400f806, x7, 32, x1)

inst_5:
// rs1==x9, rs2==x20, rd==x10, rs1_b6_val < 0 and rs2_b6_val > 0, rs1_b3_val == -3, rs1_b1_val == -86, rs2_b2_val == -9, rs2_b7_val == -86, rs1_b4_val == -128, rs2_b5_val == 85, rs2_b4_val == 8, rs1_b3_val < 0 and rs2_b3_val < 0, rs1_b7_val == 32, rs2_b0_val == 85
// opcode: cmpeq8 ; op1:x9; op2:x20; dest:x10; op1val:0x20f6fc80fd07aa06;  op2val:0xaa075508faf7fa55
TEST_RR_OP(cmpeq8, x10, x9, x20, 0x0000000000000000, 0x20f6fc80fd07aa06, 0xaa075508faf7fa55, x7, 40, x1)

inst_6:
// rs1==x19, rs2==x23, rd==x0, rs1_b6_val > 0 and rs2_b6_val > 0, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b5_val == -3, rs2_b2_val == 8, rs1_b3_val == 127, rs1_b0_val == -3, rs1_b6_val == 127, rs2_b0_val == 64, rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b4_val == 16, rs1_b2_val == -17, rs1_b1_val == 85, rs2_b6_val == 16, rs1_b4_val > 0 and rs2_b4_val > 0, rs2_b1_val == 2, rs2_b7_val == -2
// opcode: cmpeq8 ; op1:x19; op2:x23; dest:x0; op1val:0xff7ffd107fef55fd;  op2val:0xfe103f0907080240
TEST_RR_OP(cmpeq8, x0, x19, x23, 0x0000000000000000, 0xff7ffd107fef55fd, 0xfe103f0907080240, x7, 48, x1)

inst_7:
// rs1==x12, rs2==x29, rd==x16, rs1_b5_val == rs2_b5_val, rs2_b0_val == -17, rs1_b1_val == -9, rs1_b3_val == 1, rs1_b4_val > 0 and rs2_b4_val < 0, rs2_b7_val == -9, rs2_b2_val == 127, rs1_b7_val == -3, rs1_b0_val == 85
// opcode: cmpeq8 ; op1:x12; op2:x29; dest:x16; op1val:0xfdfc3f0301f6f755;  op2val:0xf7063ff9097f02ef
TEST_RR_OP(cmpeq8, x16, x12, x29, 0x0000000000000000, 0xfdfc3f0301f6f755, 0xf7063ff9097f02ef, x7, 56, x1)

inst_8:
// rs1==x17, rs2==x26, rd==x27, rs1_b5_val > 0 and rs2_b5_val < 0, rs1_b2_val > 0 and rs2_b2_val > 0, rs2_b6_val == -86, rs1_b4_val == 32, rs1_b5_val == 8, rs2_b1_val == 32, rs1_b2_val == 85, rs2_b5_val == -86, rs1_b1_val == 0, rs2_b0_val == 127
// opcode: cmpeq8 ; op1:x17; op2:x26; dest:x27; op1val:0xf9050820f95500f8;  op2val:0x5aaaaf9df06207f
TEST_RR_OP(cmpeq8, x27, x17, x26, 0x0000000000000000, 0xf9050820f95500f8, 0x5aaaaf9df06207f, x7, 64, x1)

inst_9:
// rs1==x23, rs2==x30, rd==x22, rs1_b4_val == rs2_b4_val, rs2_b2_val == 16, rs2_b0_val == -2, rs1_b1_val == 127, rs2_b1_val == -17, rs1_b6_val == -2, rs2_b7_val == -3
// opcode: cmpeq8 ; op1:x23; op2:x30; dest:x22; op1val:0xfdfe3f09ef557f05;  op2val:0xfdaa55090610effe
TEST_RR_OP(cmpeq8, x22, x23, x30, 0x0000000000000000, 0xfdfe3f09ef557f05, 0xfdaa55090610effe, x7, 72, x1)

inst_10:
// rs1==x29, rs2==x9, rd==x6, rs1_b3_val == rs2_b3_val, rs1_b7_val == 1, rs2_b2_val == 4, rs1_b6_val == -65, rs2_b3_val == 2, rs1_b3_val == 2, rs1_b1_val == 8, rs1_b5_val == -86, rs2_b4_val == 16, rs2_b0_val == -86, rs1_b4_val == 1
// opcode: cmpeq8 ; op1:x29; op2:x9; dest:x6; op1val:0x1bfaa0102550803;  op2val:0x809c0100204f6aa
TEST_RR_OP(cmpeq8, x6, x29, x9, 0x0000000000000000, 0x1bfaa0102550803, 0x809c0100204f6aa, x7, 80, x1)

inst_11:
// rs1==x10, rs2==x28, rd==x23, rs1_b2_val == rs2_b2_val, rs1_b5_val == -128, rs2_b5_val == -1, rs2_b3_val == 32, rs2_b7_val == 64, rs1_b1_val == -17, rs1_b2_val == -5, rs2_b1_val == -1
// opcode: cmpeq8 ; op1:x10; op2:x28; dest:x23; op1val:0xf6ef80063ffbef05;  op2val:0x40c0ff1020fbff03
TEST_RR_OP(cmpeq8, x23, x10, x28, 0x0000000000000000, 0xf6ef80063ffbef05, 0x40c0ff1020fbff03, x7, 88, x1)

inst_12:
// rs1==x15, rs2==x16, rd==x2, rs1_b1_val == rs2_b1_val, rs1_b5_val == 64, rs2_b3_val == -9, rs2_b6_val == -9, rs1_b1_val == 1, rs2_b4_val == 127, rs2_b1_val == 1
// opcode: cmpeq8 ; op1:x15; op2:x16; dest:x2; op1val:0x3fbf40f8f8c00155;  op2val:0xdff7067ff7fa01aa
TEST_RR_OP(cmpeq8, x2, x15, x16, 0x0000000000000000, 0x3fbf40f8f8c00155, 0xdff7067ff7fa01aa, x7, 96, x1)

inst_13:
// rs1==x4, rs2==x2, rd==x29, rs1_b0_val == rs2_b0_val, rs1_b2_val == 32, rs2_b5_val == 64, rs1_b0_val < 0 and rs2_b0_val < 0, rs2_b6_val == 64, rs2_b4_val == -33, rs2_b7_val == 85, rs1_b4_val == -17
// opcode: cmpeq8 ; op1:x4; op2:x2; dest:x29; op1val:0xc002fbef0520aaf9;  op2val:0x554040df0008f9f9
TEST_RR_OP(cmpeq8, x29, x4, x2, 0x0000000000000000, 0xc002fbef0520aaf9, 0x554040df0008f9f9, x7, 104, x1)

inst_14:
// rs1==x2, rs2==x13, rd==x3, rs2_b7_val == 127, rs1_b4_val == 64, rs1_b2_val == 4, rs2_b2_val == -1, rs1_b5_val == 2, rs2_b3_val == -2, rs2_b4_val == -65, rs2_b0_val == -1, rs1_b6_val == 64, rs1_b1_val == -2, rs2_b1_val == 4
// opcode: cmpeq8 ; op1:x2; op2:x13; dest:x3; op1val:0x7400240c004fe07;  op2val:0x7f0602bffeff04ff
TEST_RR_OP(cmpeq8, x3, x2, x13, 0x0000000000000000, 0x7400240c004fe07, 0x7f0602bffeff04ff, x7, 112, x1)

inst_15:
// rs1==x14, rs2==x0, rd==x15, rs2_b7_val == -65, rs1_b0_val == 64, rs1_b6_val == -3, rs2_b4_val == -9, rs1_b5_val == 85, rs2_b2_val == -128
// opcode: cmpeq8 ; op1:x14; op2:x0; dest:x15; op1val:0xc0fd55faef09ef40;  op2val:0xbff6fcf73f800601
TEST_RR_OP(cmpeq8, x15, x14, x0, 0x0000000000000000, 0xc0fd55faef09ef40, 0xbff6fcf73f800601, x7, 120, x1)

inst_16:
// rs1==x21, rs2==x11, rd==x17, rs2_b7_val == -17, rs2_b1_val == -3, rs1_b0_val == 0, rs1_b7_val == -9
// opcode: cmpeq8 ; op1:x21; op2:x11; dest:x17; op1val:0xf7020920c0ef0700;  op2val:0xeff7f97f06fafd06
TEST_RR_OP(cmpeq8, x17, x21, x11, 0x0000000000000000, 0xf7020920c0ef0700, 0xeff7f97f06fafd06, x7, 128, x1)

inst_17:
// rs1==x27, rs2==x1, rd==x5, rs2_b7_val == -5, rs2_b6_val == -33, rs2_b3_val == 16, rs1_b6_val == -128, rs1_b3_val == 0, rs1_b0_val == 127
// opcode: cmpeq8 ; op1:x27; op2:x1; dest:x5; op1val:0xfd8080000003f87f;  op2val:0xfbdff83f1009fff9
TEST_RR_OP(cmpeq8, x5, x27, x1, 0x0000000000000000, 0xfd8080000003f87f, 0xfbdff83f1009fff9, x7, 136, x9)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_18:
// rs1==x18, rs2==x21, rd==x20, rs2_b7_val == -128, rs1_b2_val == 64, rs1_b5_val == 32, rs2_b1_val == -33, rs2_b3_val == 8, rs1_b3_val == 4, rs1_b6_val == 16, rs1_b7_val == 127
// opcode: cmpeq8 ; op1:x18; op2:x21; dest:x20; op1val:0x7f10204004405540;  op2val:0x80dff6030806df7f
TEST_RR_OP(cmpeq8, x20, x18, x21, 0x0000000000000000, 0x7f10204004405540, 0x80dff6030806df7f, x2, 0, x9)

inst_19:
// rs1==x3, rs2==x15, rd==x1, rs2_b7_val == 32, rs2_b1_val == -86, rs1_b2_val == -9, rs2_b2_val == 2
// opcode: cmpeq8 ; op1:x3; op2:x15; dest:x1; op1val:0x3ff8f6f603f77ffa;  op2val:0x20aa02fcfa02aa06
TEST_RR_OP(cmpeq8, x1, x3, x15, 0x0000000000000000, 0x3ff8f6f603f77ffa, 0x20aa02fcfa02aa06, x2, 8, x9)

inst_20:
// rs1==x20, rs2==x10, rd==x4, rs2_b7_val == 16, rs2_b5_val == -65, rs1_b4_val == 127, rs2_b6_val == 32, rs1_b3_val == -1, rs2_b4_val == 4, rs1_b7_val == 8
// opcode: cmpeq8 ; op1:x20; op2:x10; dest:x4; op1val:0x8fb017fff0500fa;  op2val:0x1020bf042000efdf
TEST_RR_OP(cmpeq8, x4, x20, x10, 0x0000000000000000, 0x8fb017fff0500fa, 0x1020bf042000efdf, x2, 16, x9)

inst_21:
// rs1==x1, rs2==x17, rd==x13, rs2_b7_val == 4, rs2_b5_val == -5, rs2_b2_val == 64, rs1_b2_val == -65, rs1_b0_val == 8, rs2_b1_val == -128, rs2_b3_val == -1, rs1_b6_val == 4, rs2_b4_val == 64
// opcode: cmpeq8 ; op1:x1; op2:x17; dest:x13; op1val:0x7f04f60100bf0008;  op2val:0x4aafb40ff4080fa
TEST_RR_OP(cmpeq8, x13, x1, x17, 0x0000000000000000, 0x7f04f60100bf0008, 0x4aafb40ff4080fa, x2, 24, x9)

inst_22:
// rs1==x13, rs2==x27, rd==x24, rs2_b7_val == 2, rs1_b4_val == -65, rs1_b3_val == 85, rs1_b0_val == 32, rs2_b4_val == 85
// opcode: cmpeq8 ; op1:x13; op2:x27; dest:x24; op1val:0x97ff6bf5555aa20;  op2val:0x2f6bf55f800fa03
TEST_RR_OP(cmpeq8, x24, x13, x27, 0x0000000000000000, 0x97ff6bf5555aa20, 0x2f6bf55f800fa03, x2, 32, x9)

inst_23:
// rs1==x22, rs2==x12, rd==x7, rs2_b7_val == 1, rs2_b3_val == 127, rs1_b1_val == 32, rs2_b2_val == 85
// opcode: cmpeq8 ; op1:x22; op2:x12; dest:x7; op1val:0xc002fd7fef092006;  op2val:0x106fc097f553fdf
TEST_RR_OP(cmpeq8, x7, x22, x12, 0x0000000000000000, 0xc002fd7fef092006, 0x106fc097f553fdf, x2, 40, x9)

inst_24:
// rs1==x24, rs2==x18, rd==x21, rs2_b7_val == 0, rs1_b7_val == 2, rs2_b4_val == -5, rs2_b6_val == 85
// opcode: cmpeq8 ; op1:x24; op2:x18; dest:x21; op1val:0x20509f8f94007fc;  op2val:0x5506fbf70500fc
TEST_RR_OP(cmpeq8, x21, x24, x18, 0x0000000000000000, 0x20509f8f94007fc, 0x5506fbf70500fc, x2, 48, x9)

inst_25:
// rs1==x16, rs2==x3, rd==x12, rs2_b6_val == 127, rs2_b0_val == 32, rs2_b1_val == 85, rs2_b5_val == 0, rs1_b7_val == -17
// opcode: cmpeq8 ; op1:x16; op2:x3; dest:x12; op1val:0xef7f550106f80640;  op2val:0xbf7f00fe00025520
TEST_RR_OP(cmpeq8, x12, x16, x3, 0x0000000000000000, 0xef7f550106f80640, 0xbf7f00fe00025520, x2, 56, x9)

inst_26:
// rs1==x5, rs2==x24, rd==x19, rs2_b6_val == -65, rs2_b3_val == -86, rs1_b5_val == -1, rs2_b0_val == 2
// opcode: cmpeq8 ; op1:x5; op2:x24; dest:x19; op1val:0x8bffffdff0520f8;  op2val:0xf8bff9f6aa06ff02
TEST_RR_OP(cmpeq8, x19, x5, x24, 0x0000000000000000, 0x8bffffdff0520f8, 0xf8bff9f6aa06ff02, x2, 64, x9)

inst_27:
// rs1==x11, rs2==x19, rd==x25, rs2_b6_val == -5, rs1_b5_val == -17
// opcode: cmpeq8 ; op1:x11; op2:x19; dest:x25; op1val:0x7feef07090705f9;  op2val:0xf9fb403f06faf9fe
TEST_RR_OP(cmpeq8, x25, x11, x19, 0x0000000000000000, 0x7feef07090705f9, 0xf9fb403f06faf9fe, x2, 72, x9)

inst_28:
// rs1==x0, rs2==x6, rd==x11, rs1_b5_val == -2, rs1_b3_val == -65
// opcode: cmpeq8 ; op1:x0; op2:x6; dest:x11; op1val:0x5fefe07bfc0aa3f;  op2val:0x3f06aa07ff7fc0ef
TEST_RR_OP(cmpeq8, x11, x0, x6, 0x0000000000000000, 0x5fefe07bfc0aa3f, 0x3f06aa07ff7fc0ef, x2, 80, x9)

inst_29:
// rs1==x7, rs2==x5, rd==x28, rs1_b5_val == 16, rs2_b3_val == 85, rs2_b5_val == 1, rs1_b3_val == 8, rs2_b6_val == 2, rs1_b4_val == 4, rs2_b2_val == -3
// opcode: cmpeq8 ; op1:x7; op2:x5; dest:x28; op1val:0xff10100408fc0055;  op2val:0x40201fc55fd03f8
TEST_RR_OP(cmpeq8, x28, x7, x5, 0x0000000000000000, 0xff10100408fc0055, 0x40201fc55fd03f8, x2, 88, x9)

inst_30:
// rs1==x26, rs2==x8, rd==x18, rs1_b5_val == 4, rs1_b2_val == 8, rs1_b3_val == -9, rs1_b4_val == -33, rs2_b6_val == 4, rs2_b2_val == -17
// opcode: cmpeq8 ; op1:x26; op2:x8; dest:x18; op1val:0x3f0504dff708f97f;  op2val:0xfc04fffcaaefc040
TEST_RR_OP(cmpeq8, x18, x26, x8, 0x0000000000000000, 0x3f0504dff708f97f, 0xfc04fffcaaefc040, x2, 96, x9)

inst_31:
// rs1==x6, rs2==x7, rd==x30, rs1_b5_val == 0, rs1_b4_val == 85, rs2_b1_val == -9
// opcode: cmpeq8 ; op1:x6; op2:x7; dest:x30; op1val:0xfd1000550003f9f8;  op2val:0xc00955aa06c0f740
TEST_RR_OP(cmpeq8, x30, x6, x7, 0x0000000000000000, 0xfd1000550003f9f8, 0xc00955aa06c0f740, x2, 104, x9)

inst_32:
// rs1_b4_val == -86, rs2_b2_val == 32, rs1_b7_val == 64
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x404008aa04f9aa05;  op2val:0xfaeff8fbaa20f801
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x404008aa04f9aa05, 0xfaeff8fbaa20f801, x2, 112, x9)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_33:
// rs1_b4_val == -9, rs1_b3_val == -128, rs1_b7_val == -65, rs1_b1_val == 16
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xbf80eff780fa10fa;  op2val:0xf8fd400410f70302
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xbf80eff780fa10fa, 0xf8fd400410f70302, x1, 0, x2)

inst_34:
// rs1_b4_val == -5, rs1_b0_val == 4, rs2_b5_val == 8
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x20fa00fbf6f7fa04;  op2val:0xc0f608fa073f0609
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x20fa00fbf6f7fa04, 0xc0f608fa073f0609, x1, 8, x2)

inst_35:
// rs1_b4_val == -2, rs2_b2_val == -65, rs1_b7_val == -2, rs2_b3_val == 64, rs1_b2_val == 127
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfe0555feef7f0620;  op2val:0xefbff9fb40bff701
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfe0555feef7f0620, 0xefbff9fb40bff701, x1, 16, x2)

inst_36:
// rs1_b4_val == 8, rs1_b7_val == -5, rs2_b1_val == 64, rs1_b6_val == 1
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfb01010804faf63f;  op2val:0x7fd00fb1010403f
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfb01010804faf63f, 0x7fd00fb1010403f, x1, 24, x2)

inst_37:
// rs1_b4_val == 2, rs2_b5_val == -128, rs2_b3_val == -128, rs2_b4_val == 2, rs2_b1_val == 8
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x502f60208400907;  op2val:0x557f800280f608f8
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x502f60208400907, 0x557f800280f608f8, x1, 32, x2)

inst_38:
// rs1_b3_val == -86, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x5100555aa7f06f8;  op2val:0x90609fec0c0f77f
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x5100555aa7f06f8, 0x90609fec0c0f77f, x1, 40, x2)

inst_39:
// rs1_b3_val == -5, rs1_b1_val == -128, rs1_b0_val == -1
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfbfa07fb0380ff;  op2val:0x1bfbf04c0bf0401
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfbfbfa07fb0380ff, 0x1bfbf04c0bf0401, x1, 48, x2)

inst_40:
// rs1_b3_val == -2, rs2_b6_val == 8, rs2_b0_val == -3
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xef04807ffebff9fc;  op2val:0x5508094008063ffd
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xef04807ffebff9fc, 0x5508094008063ffd, x1, 56, x2)

inst_41:
// rs1_b3_val == 64, rs2_b3_val == -5, rs1_b6_val == -86, rs1_b0_val == -86
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x10aaf8fd4003f7aa;  op2val:0x10aa07fefb030003
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x10aaf8fd4003f7aa, 0x10aa07fefb030003, x1, 64, x2)

inst_42:
// rs1_b3_val == 32, rs2_b3_val == -3, rs2_b5_val == 32
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x7ff920aa20088008;  op2val:0xc008207ffd07807f
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x7ff920aa20088008, 0xc008207ffd07807f, x1, 72, x2)

inst_43:
// rs1_b2_val == -86, rs1_b0_val == -65
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xef10f8fcbfaa06bf;  op2val:0x9fd0980100904fd
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xef10f8fcbfaa06bf, 0x9fd0980100904fd, x1, 80, x2)

inst_44:
// rs1_b2_val == -3, rs1_b1_val == -5, rs1_b5_val == -9
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x7feff703f8fdfbbf;  op2val:0xfb07f6fe3f3f09ff
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x7feff703f8fdfbbf, 0xfb07f6fe3f3f09ff, x1, 88, x2)

inst_45:
// rs1_b2_val == -2, rs2_b0_val == -9, rs1_b0_val == 16, rs2_b1_val == -65, rs2_b4_val == -17, rs1_b1_val == -1
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfcfc07fbfdfeff10;  op2val:0xbf5507eff9c0bff7
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfcfc07fbfdfeff10, 0xbf5507eff9c0bff7, x1, 96, x2)

inst_46:
// rs1_b2_val == -128, rs2_b5_val == -3, rs2_b3_val == 1
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffc08f9aa803f09;  op2val:0x1f8fdf901ff0002
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x7ffc08f9aa803f09, 0x1f8fdf901ff0002, x1, 104, x2)

inst_47:
// rs2_b4_val == -1, rs2_b0_val == -65, rs2_b5_val == -2, rs1_b0_val == -5, rs2_b3_val == -65, rs1_b1_val == 4
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdfbf755f8c004fb;  op2val:0x820feffbf07efbf
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfdfbf755f8c004fb, 0x820feffbf07efbf, x1, 112, x2)

inst_48:
// rs2_b3_val == -17, rs1_b7_val == 0, rs2_b1_val == 16
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xf907aafafafcaa;  op2val:0x380fe05ef0710f9
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xf907aafafafcaa, 0x380fe05ef0710f9, x1, 120, x2)

inst_49:
// rs2_b2_val == -86, rs1_b7_val == -128, rs2_b5_val == 16
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x80f8f9c0f9553f10;  op2val:0xf7bf1002f6aa08fd
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x80f8f9c0f9553f10, 0xf7bf1002f6aa08fd, x1, 128, x2)

inst_50:
// rs2_b2_val == -33, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfafe070409fc7ffb;  op2val:0x820bf063fdf10c0
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfafe070409fc7ffb, 0x820bf063fdf10c0, x1, 136, x2)

inst_51:
// rs2_b2_val == -2, rs1_b6_val == -1
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x8ff047f0303f603;  op2val:0xf83faa083ffeef20
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x8ff047f0303f603, 0xf83faa083ffeef20, x1, 144, x2)

inst_52:
// rs2_b2_val == 1, rs1_b5_val == -33
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x310dfffdffcfebf;  op2val:0xff7f05dfdf01bffa
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x310dfffdffcfebf, 0xff7f05dfdf01bffa, x1, 152, x2)

inst_53:
// rs2_b1_val == 127, rs1_b7_val == 4, rs1_b1_val == -3, rs2_b5_val == -9
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x40309fc07fafd06;  op2val:0x3f55f7fefe3f7f20
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x40309fc07fafd06, 0x3f55f7fefe3f7f20, x1, 160, x2)

inst_54:
// rs2_b1_val == -5, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xc006ef08f7f87ff6;  op2val:0x3fc03feffec0fbf8
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xc006ef08f7f87ff6, 0x3fc03feffec0fbf8, x1, 168, x2)

inst_55:
// rs1_b2_val == 16, rs1_b1_val == 2
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x5ef09efff1002f7;  op2val:0x3f09f9f7dfc080bf
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x5ef09efff1002f7, 0x3f09f9f7dfc080bf, x1, 176, x2)

inst_56:
// rs2_b0_val == -5, rs1_b0_val == -17, rs1_b1_val == 64, rs2_b4_val == -3
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x1bf04bfaa0440ef;  op2val:0x80355fd552002fb
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x1bf04bfaa0440ef, 0x80355fd552002fb, x1, 184, x2)

inst_57:
// rs1_b2_val == 1, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xf7f707020701fa20;  op2val:0xaaf705f7feef3f03
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xf7f707020701fa20, 0xaaf705f7feef3f03, x1, 192, x2)

inst_58:
// rs1_b2_val == 0, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xbf06fd06f7008020;  op2val:0xfdfdfb80fc07bf03
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xbf06fd06f7008020, 0xfdfdfb80fc07bf03, x1, 200, x2)

inst_59:
// rs2_b0_val == -128, rs1_b0_val == 2, rs1_b5_val == -65
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x40c0bf01c055fe02;  op2val:0xfaaafffefeff0680
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x40c0bf01c055fe02, 0xfaaafffefeff0680, x1, 208, x2)

inst_60:
// rs1_b2_val == -1, rs1_b6_val == 8, rs2_b0_val == 0
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfc08fa03f6fff702;  op2val:0xc002f706dff94000
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfc08fa03f6fff702, 0xc002f706dff94000, x1, 216, x2)

inst_61:
// rs2_b0_val == 16, rs1_b0_val == -33
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xc0efdffb40aa02df;  op2val:0x5509f7f6fc020510
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xc0efdffb40aa02df, 0x5509f7f6fc020510, x1, 224, x2)

inst_62:
// rs1_b1_val == -65, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xc0fe00fb1008bff7;  op2val:0xfd0420fdbf0100ff
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xc0fe00fb1008bff7, 0xfd0420fdbf0100ff, x1, 232, x2)

inst_63:
// rs2_b0_val == 4, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xeff8070504bffcfc;  op2val:0xf6fbfd3feffe1004
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xeff8070504bffcfc, 0xf6fbfd3feffe1004, x1, 240, x2)

inst_64:
// rs1_b1_val == -33, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfc03fbfef740df03;  op2val:0x80ffef03f9fc02aa
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfc03fbfef740df03, 0x80ffef03f9fc02aa, x1, 248, x2)

inst_65:
// rs1_b6_val == 85, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x35555fc04020906;  op2val:0xf902c0f910fff8ef
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x35555fc04020906, 0xf902c0f910fff8ef, x1, 256, x2)

inst_66:
// rs2_b5_val == 4, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fd55c03f04f7df;  op2val:0xf8550409ef80fefa
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xf7fd55c03f04f7df, 0xf8550409ef80fefa, x1, 264, x2)

inst_67:
// rs1_b6_val == -33, rs2_b6_val == 0
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfcdf03c0fe03c0aa;  op2val:0xdf00fb0305aabfff
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfcdf03c0fe03c0aa, 0xdf00fb0305aabfff, x1, 272, x2)

inst_68:
// rs2_b6_val == -2, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x40070010f7f7f9fb;  op2val:0xaafefffc061008fe
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x40070010f7f7f9fb, 0xaafefffc061008fe, x1, 280, x2)

inst_69:
// rs1_b7_val == -86, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xaac0fdf83f060707;  op2val:0x5f80610f8bfdfc0
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xaac0fdf83f060707, 0x5f80610f8bfdfc0, x1, 288, x2)

inst_70:
// rs1_b6_val == 32, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfa2080032080fb06;  op2val:0xf6ff7f0800bfc0f7
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfa2080032080fb06, 0xf6ff7f0800bfc0f7, x1, 296, x2)

inst_71:
// rs1_b7_val == 85, rs2_b4_val == 0
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x55fcc0fdef0406fb;  op2val:0xaaf80800fc0003aa
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x55fcc0fdef0406fb, 0xaaf80800fc0003aa, x1, 304, x2)

inst_72:
// rs1_b7_val == -33, rs2_b4_val == 32
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xdf40fdaa08fbfa10;  op2val:0x4055f9203fc0fef7
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xdf40fdaa08fbfa10, 0x4055f9203fc0fef7, x1, 312, x2)

inst_73:
// rs2_b4_val == 1, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xfa4007fe0507fa55;  op2val:0xfafdbf010310aa20
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xfa4007fe0507fa55, 0xfafdbf010310aa20, x1, 320, x2)

inst_74:
// rs1_b5_val == 127, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xc0807f08dfdfbf40;  op2val:0xbf55aafdaa06c004
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xc0807f08dfdfbf40, 0xbf55aafdaa06c004, x1, 328, x2)

inst_75:
// rs2_b6_val == 1, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x80c0fbf9fc04dfaa;  op2val:0xdf01ef06023faaf6
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x80c0fbf9fc04dfaa, 0xdf01ef06023faaf6, x1, 336, x2)

inst_76:
// rs1_b6_val == 0, 
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x7f0009effafb05fd;  op2val:0xfa03f620f7fa05ff
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x7f0009effafb05fd, 0xfa03f620f7fa05ff, x1, 344, x2)

inst_77:
// rs1_b7_val > 0 and rs2_b7_val < 0, rs1_b2_val > 0 and rs2_b2_val < 0, rs2_b3_val == -33, rs1_b0_val == -2, rs1_b5_val == 1, rs1_b3_val == 16, rs2_b7_val == -33, rs2_b4_val == -128, rs2_b1_val == 0, rs1_b3_val > 0 and rs2_b3_val < 0, rs1_b7_val == 16
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x10f701f9100503fe;  op2val:0xdffd7f80dfc0003f
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x10f701f9100503fe, 0xdffd7f80dfc0003f, x1, 352, x2)

inst_78:
// rs1_b6_val > 0 and rs2_b6_val > 0, rs1_b2_val < 0 and rs2_b2_val > 0, rs1_b5_val == -3, rs2_b2_val == 8, rs1_b3_val == 127, rs1_b0_val == -3, rs1_b6_val == 127, rs2_b0_val == 64, rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b4_val == 16, rs1_b2_val == -17, rs1_b1_val == 85, rs2_b6_val == 16, rs1_b4_val > 0 and rs2_b4_val > 0, rs2_b1_val == 2, rs2_b7_val == -2
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffd107fef55fd;  op2val:0xfe103f0907080240
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0xff7ffd107fef55fd, 0xfe103f0907080240, x1, 360, x2)

inst_79:
// rs1_b5_val == -2, rs1_b3_val == -65
// opcode: cmpeq8 ; op1:x30; op2:x29; dest:x31; op1val:0x5fefe07bfc0aa3f;  op2val:0x3f06aa07ff7fc0ef
TEST_RR_OP(cmpeq8, x31, x30, x29, 0x0000000000000000, 0x5fefe07bfc0aa3f, 0x3f06aa07ff7fc0ef, x1, 368, x2)
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
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 47*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
