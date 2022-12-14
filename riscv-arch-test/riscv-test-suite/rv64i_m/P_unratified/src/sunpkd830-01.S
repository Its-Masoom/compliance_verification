
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
// This assembly file tests the sunpkd830 instruction of the RISC-V RV64PZicsr extension for the sunpkd830 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",sunpkd830)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x16,signature_x16_1)

inst_0:
// rs1==x7, rd==x31, rs1_b0_val == -128, rs1_b1_val == -128, rs1_b3_val == -1, rs1_b7_val == -1, rs1_b5_val == 32, rs1_b2_val == 0
// opcode: sunpkd830 ; op1:x7; dest:x31; op1val:0xfffc2003ff008080;
TEST_RD_OP( sunpkd830, x31, x7, 0x0000000000000000, 0xfffc2003ff008080, x16, 0, x19)

inst_1:
// rs1==x25, rd==x4, rs1_b7_val == -86, rs1_b5_val == -3, rs1_b2_val == 16, rs1_b3_val == 32, rs1_b6_val == -3
// opcode: sunpkd830 ; op1:x25; dest:x4; op1val:0xaafdfd032010fc05;
TEST_RD_OP( sunpkd830, x4, x25, 0x0000000000000000, 0xaafdfd032010fc05, x16, 8, x19)

inst_2:
// rs1==x22, rd==x7, rs1_b7_val == 85, rs1_b3_val == 4, rs1_b1_val == -3, rs1_b4_val == -86, rs1_b5_val == -33
// opcode: sunpkd830 ; op1:x22; dest:x7; op1val:0x55fddfaa0409fdf8;
TEST_RD_OP( sunpkd830, x7, x22, 0x0000000000000000, 0x55fddfaa0409fdf8, x16, 16, x19)

inst_3:
// rs1==x6, rd==x18, rs1_b7_val == 127, rs1_b3_val == -5, rs1_b5_val == 85, rs1_b6_val == 1
// opcode: sunpkd830 ; op1:x6; dest:x18; op1val:0x7f015509fbf905f6;
TEST_RD_OP( sunpkd830, x18, x6, 0x0000000000000000, 0x7f015509fbf905f6, x16, 24, x19)

inst_4:
// rs1==x12, rd==x24, rs1_b7_val == -65, rs1_b3_val == 2, rs1_b5_val == -86, rs1_b4_val == 0, rs1_b1_val == -86, rs1_b0_val == 2
// opcode: sunpkd830 ; op1:x12; dest:x24; op1val:0xbf06aa0002fcaa02;
TEST_RD_OP( sunpkd830, x24, x12, 0x0000000000000000, 0xbf06aa0002fcaa02, x16, 32, x19)

inst_5:
// rs1==x3, rd==x1, rs1_b7_val == -33, 
// opcode: sunpkd830 ; op1:x3; dest:x1; op1val:0xdff83f03c0050603;
TEST_RD_OP( sunpkd830, x1, x3, 0x0000000000000000, 0xdff83f03c0050603, x16, 40, x19)

inst_6:
// rs1==x14, rd==x23, rs1_b7_val == -17, rs1_b4_val == -65, rs1_b0_val == 16, rs1_b6_val == -65, rs1_b3_val == -3, rs1_b5_val == 1
// opcode: sunpkd830 ; op1:x14; dest:x23; op1val:0xefbf01bffdf98010;
TEST_RD_OP( sunpkd830, x23, x14, 0x0000000000000000, 0xefbf01bffdf98010, x16, 48, x19)

inst_7:
// rs1==x20, rd==x12, rs1_b7_val == -9, rs1_b0_val == 0, rs1_b6_val == 4, rs1_b5_val == 16
// opcode: sunpkd830 ; op1:x20; dest:x12; op1val:0xf70410fac03ff600;
TEST_RD_OP( sunpkd830, x12, x20, 0x0000000000000000, 0xf70410fac03ff600, x16, 56, x19)

inst_8:
// rs1==x24, rd==x15, rs1_b7_val == -5, rs1_b1_val == 2, rs1_b6_val == -17, rs1_b4_val == -17, rs1_b0_val == 127
// opcode: sunpkd830 ; op1:x24; dest:x15; op1val:0xfbefaaeffbf8027f;
TEST_RD_OP( sunpkd830, x15, x24, 0x0000000000000000, 0xfbefaaeffbf8027f, x16, 64, x19)

inst_9:
// rs1==x29, rd==x2, rs1_b7_val == -3, rs1_b4_val == -1, rs1_b0_val == 4
// opcode: sunpkd830 ; op1:x29; dest:x2; op1val:0xfd0605fffb06aa04;
TEST_RD_OP( sunpkd830, x2, x29, 0x0000000000000000, 0xfd0605fffb06aa04, x16, 72, x19)

inst_10:
// rs1==x28, rd==x13, rs1_b7_val == -2, rs1_b0_val == -3
// opcode: sunpkd830 ; op1:x28; dest:x13; op1val:0xfe3f06f6fa3f03fd;
TEST_RD_OP( sunpkd830, x13, x28, 0x0000000000000000, 0xfe3f06f6fa3f03fd, x16, 80, x19)

inst_11:
// rs1==x31, rd==x22, rs1_b7_val == -128, rs1_b2_val == -1, rs1_b3_val == 8, rs1_b5_val == -9
// opcode: sunpkd830 ; op1:x31; dest:x22; op1val:0x80fcf73f08fff9f9;
TEST_RD_OP( sunpkd830, x22, x31, 0x0000000000000000, 0x80fcf73f08fff9f9, x16, 88, x19)

inst_12:
// rs1==x13, rd==x28, rs1_b7_val == 64, rs1_b2_val == -128
// opcode: sunpkd830 ; op1:x13; dest:x28; op1val:0x400407060780c003;
TEST_RD_OP( sunpkd830, x28, x13, 0x0000000000000000, 0x400407060780c003, x16, 96, x19)

inst_13:
// rs1==x4, rd==x11, rs1_b7_val == 32, rs1_b1_val == 127, rs1_b3_val == -33
// opcode: sunpkd830 ; op1:x4; dest:x11; op1val:0x20f8f6f6dff97f06;
TEST_RD_OP( sunpkd830, x11, x4, 0x0000000000000000, 0x20f8f6f6dff97f06, x16, 104, x19)

inst_14:
// rs1==x26, rd==x0, rs1_b7_val == 16, rs1_b1_val == 32, rs1_b6_val == -1, rs1_b2_val == -2, rs1_b5_val == 64, rs1_b3_val == -9
// opcode: sunpkd830 ; op1:x26; dest:x0; op1val:0x10ff40f6f7fe20fd;
TEST_RD_OP( sunpkd830, x0, x26, 0x0000000000000000, 0x10ff40f6f7fe20fd, x16, 112, x19)

inst_15:
// rs1==x8, rd==x5, rs1_b7_val == 8, rs1_b1_val == 85, rs1_b4_val == -3
// opcode: sunpkd830 ; op1:x8; dest:x5; op1val:0x8f901fdc0035500;
TEST_RD_OP( sunpkd830, x5, x8, 0x0000000000000000, 0x8f901fdc0035500, x16, 120, x19)

inst_16:
// rs1==x17, rd==x10, rs1_b7_val == 4, rs1_b4_val == -5, rs1_b1_val == 8, rs1_b2_val == 64, rs1_b0_val == -33, rs1_b6_val == -5
// opcode: sunpkd830 ; op1:x17; dest:x10; op1val:0x4fb07fbdf4008df;
TEST_RD_OP( sunpkd830, x10, x17, 0x0000000000000000, 0x4fb07fbdf4008df, x16, 128, x19)

inst_17:
// rs1==x0, rd==x9, rs1_b7_val == 2, rs1_b5_val == 4, rs1_b6_val == 8, rs1_b4_val == -128
// opcode: sunpkd830 ; op1:x0; dest:x9; op1val:0x20804800400aa03;
TEST_RD_OP( sunpkd830, x9, x0, 0x0000000000000000, 0x20804800400aa03, x16, 136, x19)

inst_18:
// rs1==x15, rd==x3, rs1_b7_val == 1, rs1_b2_val == -33, rs1_b5_val == 0
// opcode: sunpkd830 ; op1:x15; dest:x3; op1val:0x10500f805df09f9;
TEST_RD_OP( sunpkd830, x3, x15, 0x0000000000000000, 0x10500f805df09f9, x16, 144, x19)

inst_19:
// rs1==x27, rd==x8, rs1_b7_val == 0, rs1_b6_val == 64
// opcode: sunpkd830 ; op1:x27; dest:x8; op1val:0x40f6fcf7063f02;
TEST_RD_OP( sunpkd830, x8, x27, 0x0000000000000000, 0x40f6fcf7063f02, x16, 152, x19)

inst_20:
// rs1==x5, rd==x29, rs1_b6_val == -86, rs1_b0_val == -65, rs1_b1_val == -1, rs1_b2_val == 1
// opcode: sunpkd830 ; op1:x5; dest:x29; op1val:0x1aafc05df01ffbf;
TEST_RD_OP( sunpkd830, x29, x5, 0x0000000000000000, 0x1aafc05df01ffbf, x16, 160, x3)

inst_21:
// rs1==x2, rd==x17, rs1_b6_val == 85, rs1_b4_val == 8, rs1_b2_val == -86, rs1_b3_val == 16
// opcode: sunpkd830 ; op1:x2; dest:x17; op1val:0xaa55fd0810aa3fbf;
TEST_RD_OP( sunpkd830, x17, x2, 0x0000000000000000, 0xaa55fd0810aa3fbf, x16, 168, x3)

inst_22:
// rs1==x21, rd==x19, rs1_b6_val == 127, rs1_b3_val == -2, rs1_b5_val == -17
// opcode: sunpkd830 ; op1:x21; dest:x19; op1val:0x47fef05fe038002;
TEST_RD_OP( sunpkd830, x19, x21, 0x0000000000000000, 0x47fef05fe038002, x16, 176, x3)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_23:
// rs1==x10, rd==x25, rs1_b6_val == -33, rs1_b1_val == 4, rs1_b4_val == 32, rs1_b2_val == -17, rs1_b0_val == 85
// opcode: sunpkd830 ; op1:x10; dest:x25; op1val:0x3fdfdf20faef0455;
TEST_RD_OP( sunpkd830, x25, x10, 0x0000000000000000, 0x3fdfdf20faef0455, x2, 0, x3)

inst_24:
// rs1==x11, rd==x21, rs1_b6_val == -9, rs1_b1_val == -65, rs1_b5_val == 2, rs1_b3_val == -128, rs1_b4_val == 4
// opcode: sunpkd830 ; op1:x11; dest:x21; op1val:0x8f702048010bf02;
TEST_RD_OP( sunpkd830, x21, x11, 0x0000000000000000, 0x8f702048010bf02, x2, 8, x3)

inst_25:
// rs1==x18, rd==x30, rs1_b1_val == -5, 
// opcode: sunpkd830 ; op1:x18; dest:x30; op1val:0xf8403f0910f6fbc0;
TEST_RD_OP( sunpkd830, x30, x18, 0x0000000000000000, 0xf8403f0910f6fbc0, x2, 16, x3)

inst_26:
// rs1==x9, rd==x6, rs1_b1_val == -2, rs1_b5_val == 8, rs1_b0_val == 64
// opcode: sunpkd830 ; op1:x9; dest:x6; op1val:0xfabf08f903fffe40;
TEST_RD_OP( sunpkd830, x6, x9, 0x0000000000000000, 0xfabf08f903fffe40, x2, 24, x3)

inst_27:
// rs1==x16, rd==x26, rs1_b1_val == 64, rs1_b2_val == 2
// opcode: sunpkd830 ; op1:x16; dest:x26; op1val:0x20fcfc08f7024000;
TEST_RD_OP( sunpkd830, x26, x16, 0x0000000000000000, 0x20fcfc08f7024000, x2, 32, x3)

inst_28:
// rs1==x19, rd==x27, rs1_b1_val == 16, rs1_b4_val == 64, rs1_b0_val == 8
// opcode: sunpkd830 ; op1:x19; dest:x27; op1val:0xbf04f84005c01008;
TEST_RD_OP( sunpkd830, x27, x19, 0x0000000000000000, 0xbf04f84005c01008, x2, 40, x3)

inst_29:
// rs1==x30, rd==x16, rs1_b1_val == 1, rs1_b5_val == -2, rs1_b0_val == -9
// opcode: sunpkd830 ; op1:x30; dest:x16; op1val:0xdfdffefff8df01f7;
TEST_RD_OP( sunpkd830, x16, x30, 0x0000000000000000, 0xdfdffefff8df01f7, x2, 48, x3)

inst_30:
// rs1==x23, rd==x20, rs1_b1_val == 0, rs1_b2_val == -5, rs1_b5_val == -1, rs1_b4_val == 1
// opcode: sunpkd830 ; op1:x23; dest:x20; op1val:0x108ff0106fb0000;
TEST_RD_OP( sunpkd830, x20, x23, 0x0000000000000000, 0x108ff0106fb0000, x2, 56, x3)

inst_31:
// rs1==x1, rd==x14, rs1_b0_val == -86, 
// opcode: sunpkd830 ; op1:x1; dest:x14; op1val:0x7eff8f9fb0303aa;
TEST_RD_OP( sunpkd830, x14, x1, 0x0000000000000000, 0x7eff8f9fb0303aa, x2, 64, x3)

inst_32:
// rs1_b0_val == -17, rs1_b3_val == -86, rs1_b4_val == -9
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xfedf05f7aafcf6ef;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xfedf05f7aafcf6ef, x2, 72, x3)

inst_33:
// rs1_b0_val == -5, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xbffceff805007ffb;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xbffceff805007ffb, x2, 80, x3)

inst_34:
// rs1_b0_val == -2, rs1_b6_val == 0
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x20000420faff05fe;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x20000420faff05fe, x2, 88, x3)

inst_35:
// rs1_b0_val == 32, rs1_b3_val == -65, rs1_b2_val == -3
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x608f920bffd0320;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x608f920bffd0320, x2, 96, x3)

inst_36:
// rs1_b0_val == 1, rs1_b5_val == -5, rs1_b3_val == 64, rs1_b6_val == -2
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x1fefb0540f6c001;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x1fefb0540f6c001, x2, 104, x3)

inst_37:
// rs1_b6_val == -128, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x1080063faaefbf08;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x1080063faaefbf08, x2, 112, x3)

inst_38:
// rs1_b4_val == -33, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x707fcdffcfbfafe;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x707fcdffcfbfafe, x2, 120, x3)

inst_39:
// rs1_b4_val == -2, rs1_b1_val == -9
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xeffd55feff3ff720;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xeffd55feff3ff720, x2, 128, x3)

inst_40:
// rs1_b4_val == 16, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xbffffa10020300ef;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xbffffa10020300ef, x2, 136, x3)

inst_41:
// rs1_b4_val == 2, rs1_b6_val == 2
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xf9020102fe3ffd10;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xf9020102fe3ffd10, x2, 144, x3)

inst_42:
// rs1_b3_val == 85, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xfe0201aa5506f7fe;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xfe0201aa5506f7fe, x2, 152, x3)

inst_43:
// rs1_b3_val == 127, rs1_b5_val == -128
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x40fc80fd7fdf4009;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x40fc80fd7fdf4009, x2, 160, x3)

inst_44:
// rs1_b3_val == -17, rs1_b2_val == 85
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xef080920ef5501fe;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xef080920ef5501fe, x2, 168, x3)

inst_45:
// rs1_b0_val == -1, rs1_b2_val == 8
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x1000c0efc008fdff;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x1000c0efc008fdff, x2, 176, x3)

inst_46:
// rs1_b6_val == 32, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x3f20010508100502;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x3f20010508100502, x2, 184, x3)

inst_47:
// rs1_b6_val == 16, rs1_b5_val == -65
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xfe10bf10050100fd;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xfe10bf10050100fd, x2, 192, x3)

inst_48:
// rs1_b3_val == 1, rs1_b2_val == 32
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x609c0bf012010aa;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x609c0bf012010aa, x2, 200, x3)

inst_49:
// rs1_b3_val == 0, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x40f8101000f90501;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x40f8101000f90501, x2, 208, x3)

inst_50:
// rs1_b2_val == 127, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xfe0601aaaa7f0904;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xfe0601aaaa7f0904, x2, 216, x3)

inst_51:
// rs1_b2_val == -65, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x3f9f7fdc0bf403f;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x3f9f7fdc0bf403f, x2, 224, x3)

inst_52:
// rs1_b2_val == 4, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xf820f7fa0804f855;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xf820f7fa0804f855, x2, 232, x3)

inst_53:
// rs1_b4_val == 85, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x209f85505effe20;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x209f85505effe20, x2, 240, x3)

inst_54:
// rs1_b2_val == -9, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0xf780f807fef7fb55;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0xf780f807fef7fb55, x2, 248, x3)

inst_55:
// rs1_b5_val == 127, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x6067f550404c004;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x6067f550404c004, x2, 256, x3)

inst_56:
// rs1_b1_val == -33, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x31040558008df07;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x31040558008df07, x2, 264, x3)

inst_57:
// rs1_b1_val == -17, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x4100510fb05efef;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x4100510fb05efef, x2, 272, x3)

inst_58:
// rs1_b4_val == 127, 
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x4f8c07fefc0feaa;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x4f8c07fefc0feaa, x2, 280, x3)

inst_59:
// rs1_b7_val == 16, rs1_b1_val == 32, rs1_b6_val == -1, rs1_b2_val == -2, rs1_b5_val == 64, rs1_b3_val == -9
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x10ff40f6f7fe20fd;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x10ff40f6f7fe20fd, x2, 288, x3)

inst_60:
// rs1_b7_val == 2, rs1_b5_val == 4, rs1_b6_val == 8, rs1_b4_val == -128
// opcode: sunpkd830 ; op1:x30; dest:x31; op1val:0x20804800400aa03;
TEST_RD_OP( sunpkd830, x31, x30, 0x0000000000000000, 0x20804800400aa03, x2, 296, x3)
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
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 38*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
