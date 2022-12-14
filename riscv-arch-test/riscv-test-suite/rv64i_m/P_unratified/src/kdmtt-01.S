
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
// This assembly file tests the kdmtt instruction of the RISC-V RV64PZicsr extension for the kdmtt covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",kdmtt)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd != rs2, rs1==x18, rs2==x21, rd==x18, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs2_h1_val == 21845, rs1_h3_val == 512, rs1_h3_val > 0 and rs2_h3_val < 0, rs1_h2_val == rs2_h2_val, rs1_h2_val < 0 and rs2_h2_val < 0, rs2_h3_val == -2, rs2_h2_val == -9, rs1_h1_val != rs2_h1_val, rs1_h1_val == 8, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs2_h0_val == -9, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h2_val == -9
// opcode: kdmtt ; op1:x18; op2:x21; dest:x18; op1val:0x200fff700088000;  op2val:0xfffefff75555fff7
TEST_PKRR_OP(kdmtt, x18, x18, x21, 0x0000000000000000, 0x200fff700088000, 0xfffefff75555fff7, x18, x1, 0, x10)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x30, rd==x6, rs1_h3_val == rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val < 0, rs1_h0_val == -2, rs1_h2_val != rs2_h2_val, rs2_h2_val == -5, rs2_h1_val == -65, rs1_h3_val == -1, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h2_val == -1025, rs2_h3_val == -1
// opcode: kdmtt ; op1:x24; op2:x30; dest:x6; op1val:0xfffffbff0009fffe;  op2val:0xfffffffbffbffffa
TEST_PKRR_OP(kdmtt, x6, x24, x30, 0x0000000000000000, 0xfffffbff0009fffe, 0xfffffffbffbffffa, x24, x1, 16, x10)

inst_2:
// rs1 == rs2 != rd, rs1==x14, rs2==x14, rd==x24, rs1_h3_val < 0 and rs2_h3_val > 0, rs1_h1_val == -5, rs2_h2_val == -8193, rs1_h2_val == 64, rs1_h2_val > 0 and rs2_h2_val < 0, rs2_h1_val == -129, rs1_h0_val == 128, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h3_val == 256, rs2_h0_val == -2, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h3_val == -5
// opcode: kdmtt ; op1:x14; op2:x14; dest:x24; op1val:0xfffb0040fffb0080;  op2val:0x100dfffff7ffffe
TEST_PKRR_OP(kdmtt, x24, x14, x14, 0x0000000000000000, 0xfffb0040fffb0080, 0x100dfffff7ffffe, x14, x1, 32, x10)

inst_3:
// rs1 == rs2 == rd, rs1==x20, rs2==x20, rd==x20, rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h1_val == 16384, rs2_h0_val == -17, rs2_h2_val == -1025
// opcode: kdmtt ; op1:x20; op2:x20; dest:x20; op1val:0x05fffa0005fffe;  op2val:0x3ffffbff4000ffef
TEST_PKRR_OP(kdmtt, x20, x20, x20, 0x0000000000000000, 0x05fffa0005fffe, 0x3ffffbff4000ffef, x20, x1, 48, x10)

inst_4:
// rs2 == rd != rs1, rs1==x22, rs2==x0, rd==x0, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h0_val == 1024, rs1_h1_val == 2, rs1_h2_val == -513, rs2_h3_val == -4097, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 128, rs2_h2_val == 1
// opcode: kdmtt ; op1:x22; op2:x0; dest:x0; op1val:0x09fdff00020400;  op2val:0xefff000100800009
TEST_PKRR_OP(kdmtt, x0, x22, x0, 0x0000000000000000, 0x09fdff00020400, 0xefff000100800009, x22, x1, 64, x10)

inst_5:
// rs1==x7, rs2==x27, rd==x8, rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h2_val == 16384, rs1_h3_val == 128, rs2_h2_val == 2048, rs1_h0_val < 0 and rs2_h0_val > 0, rs1_h0_val == -1, rs2_h1_val == 512, rs2_h0_val == 1024, rs2_h3_val == -8193
// opcode: kdmtt ; op1:x7; op2:x27; dest:x8; op1val:0x8040000007ffff;  op2val:0xdfff080002000400
TEST_PKRR_OP(kdmtt, x8, x7, x27, 0x0000000000000000, 0x8040000007ffff, 0xdfff080002000400, x7, x1, 80, x10)

inst_6:
// rs1==x16, rs2==x4, rd==x2, rs1_h1_val == rs2_h1_val, rs2_h1_val == 0, rs2_h2_val == -513, rs1_h3_val == 1, rs2_h3_val == 4096, rs1_h2_val == -4097, rs1_h1_val == 0, rs1_h0_val == 1, rs2_h0_val == 128
// opcode: kdmtt ; op1:x16; op2:x4; dest:x2; op1val:0x01efff00000001;  op2val:0x1000fdff00000080
TEST_PKRR_OP(kdmtt, x2, x16, x4, 0x0000000000000000, 0x01efff00000001, 0x1000fdff00000080, x16, x1, 96, x10)

inst_7:
// rs1==x27, rs2==x28, rd==x9, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h0_val == -16385, rs1_h0_val == 64, rs1_h3_val == -8193, rs2_h2_val == 128
// opcode: kdmtt ; op1:x27; op2:x28; dest:x9; op1val:0xdffffbfffff80040;  op2val:0xc00000800080bfff
TEST_PKRR_OP(kdmtt, x9, x27, x28, 0x0000000000000000, 0xdffffbfffff80040, 0xc00000800080bfff, x27, x1, 112, x10)

inst_8:
// rs1==x6, rs2==x22, rd==x19, rs1_h0_val == rs2_h0_val, rs2_h2_val == 16384, rs1_h1_val == -21846, rs1_h0_val == -17
// opcode: kdmtt ; op1:x6; op2:x22; dest:x19; op1val:0xffff3fffaaaaffef;  op2val:0xc00040000000ffef
TEST_PKRR_OP(kdmtt, x19, x6, x22, 0x0000000000000000, 0xffff3fffaaaaffef, 0xc00040000000ffef, x6, x1, 128, x10)

inst_9:
// rs1==x8, rs2==x13, rd==x5, rs2_h3_val == -21846, rs1_h2_val == 21845, rs2_h2_val == 8192, rs2_h0_val == -32768, rs2_h1_val == 256, rs1_h1_val == -2049, rs1_h3_val == 4096
// opcode: kdmtt ; op1:x8; op2:x13; dest:x5; op1val:0x10005555f7ff0007;  op2val:0xaaaa200001008000
TEST_PKRR_OP(kdmtt, x5, x8, x13, 0x0000000000000000, 0x10005555f7ff0007, 0xaaaa200001008000, x8, x1, 144, x10)

inst_10:
// rs1==x9, rs2==x31, rd==x27, rs2_h3_val == 21845, rs2_h0_val == 32
// opcode: kdmtt ; op1:x9; op2:x31; dest:x27; op1val:0xfffcefff00070006;  op2val:0x5555fffafff80020
TEST_PKRR_OP(kdmtt, x27, x9, x31, 0x0000000000000000, 0xfffcefff00070006, 0x5555fffafff80020, x9, x1, 160, x10)

inst_11:
// rs1==x3, rs2==x15, rd==x31, rs2_h3_val == 32767, rs1_h3_val == -21846, rs2_h2_val == 8, rs1_h2_val == 32767
// opcode: kdmtt ; op1:x3; op2:x15; dest:x31; op1val:0xaaaa7fff0002fff8;  op2val:0x7fff000800060003
TEST_PKRR_OP(kdmtt, x31, x3, x15, 0x0000000000000000, 0xaaaa7fff0002fff8, 0x7fff000800060003, x3, x1, 176, x10)

inst_12:
// rs1==x25, rs2==x23, rd==x15, rs2_h3_val == -16385, rs1_h2_val == -17, rs2_h0_val == 16
// opcode: kdmtt ; op1:x25; op2:x23; dest:x15; op1val:0x09ffef0005fffc;  op2val:0xbffffbffc0000010
TEST_PKRR_OP(kdmtt, x15, x25, x23, 0x0000000000000000, 0x09ffef0005fffc, 0xbffffbffc0000010, x25, x1, 192, x10)

inst_13:
// rs1==x12, rs2==x11, rd==x30, rs2_h3_val == -2049, rs2_h2_val == -65, rs2_h1_val == -33, rs1_h1_val == -16385, rs1_h0_val == 32767, rs1_h2_val == -33
// opcode: kdmtt ; op1:x12; op2:x11; dest:x30; op1val:0x80ffdfbfff7fff;  op2val:0xf7ffffbfffdf0020
TEST_PKRR_OP(kdmtt, x30, x12, x11, 0x0000000000000000, 0x80ffdfbfff7fff, 0xf7ffffbfffdf0020, x12, x1, 208, x10)

inst_14:
// rs1==x10, rs2==x3, rd==x11, rs2_h3_val == -1025, rs1_h3_val == -257, rs1_h2_val == 8, rs2_h1_val == 8192
// opcode: kdmtt ; op1:x10; op2:x3; dest:x11; op1val:0xfeff0008fff8fff6;  op2val:0xfbfffff920000010
TEST_PKRR_OP(kdmtt, x11, x10, x3, 0x0000000000000000, 0xfeff0008fff8fff6, 0xfbfffff920000010, x10, x1, 224, x12)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_15:
// rs1==x23, rs2==x7, rd==x3, rs2_h3_val == -513, rs1_h2_val == 256, rs1_h3_val == -33, rs2_h0_val == -257, rs2_h1_val == 2048
// opcode: kdmtt ; op1:x23; op2:x7; dest:x3; op1val:0xffdf010000080080;  op2val:0xfdff08000800feff
TEST_PKRR_OP(kdmtt, x3, x23, x7, 0x0000000000000000, 0xffdf010000080080, 0xfdff08000800feff, x23, x8, 0, x12)

inst_16:
// rs1==x2, rs2==x24, rd==x22, rs2_h3_val == -257, rs1_h1_val == 1, rs1_h0_val == -9, rs2_h1_val == -16385, rs2_h2_val == 2
// opcode: kdmtt ; op1:x2; op2:x24; dest:x22; op1val:0x01fff70001fff7;  op2val:0xfeff0002bfff0020
TEST_PKRR_OP(kdmtt, x22, x2, x24, 0x0000000000000000, 0x01fff70001fff7, 0xfeff0002bfff0020, x2, x8, 16, x12)

inst_17:
// rs1==x28, rs2==x10, rd==x17, rs2_h3_val == -129, rs1_h1_val == -32768, rs2_h2_val == -129, rs2_h1_val == -1025, rs1_h2_val == -21846, rs1_h3_val == -9, rs2_h0_val == 4096
// opcode: kdmtt ; op1:x28; op2:x10; dest:x17; op1val:0xfff7aaaa80000006;  op2val:0xff7fff7ffbff1000
TEST_PKRR_OP(kdmtt, x17, x28, x10, 0x0000000000000000, 0xfff7aaaa80000006, 0xff7fff7ffbff1000, x28, x8, 32, x12)

inst_18:
// rs1==x0, rs2==x2, rd==x25, rs2_h3_val == -65, rs2_h2_val == -1, rs2_h0_val == 2048, rs1_h1_val == 4096
// opcode: kdmtt ; op1:x0; op2:x2; dest:x25; op1val:0xfff9fff91000fff7;  op2val:0xffbfffff00070800
TEST_PKRR_OP(kdmtt, x25, x0, x2, 0x0000000000000000, 0xfff9fff91000fff7, 0xffbfffff00070800, x0, x8, 48, x12)

inst_19:
// rs1==x30, rs2==x5, rd==x7, rs2_h3_val == -33, rs1_h3_val == -3, rs2_h1_val == -32768, rs1_h2_val == -5, rs1_h0_val == 4
// opcode: kdmtt ; op1:x30; op2:x5; dest:x7; op1val:0xfffdfffb10000004;  op2val:0xffdfff7f80000800
TEST_PKRR_OP(kdmtt, x7, x30, x5, 0x0000000000000000, 0xfffdfffb10000004, 0xffdfff7f80000800, x30, x8, 64, x12)

inst_20:
// rs1==x31, rs2==x1, rd==x29, rs2_h3_val == -17, rs1_h2_val == 4096, rs1_h1_val == 256, rs2_h1_val == 64, rs1_h3_val == 16
// opcode: kdmtt ; op1:x31; op2:x1; dest:x29; op1val:0x1010000100ffff;  op2val:0xffef00030040fffe
TEST_PKRR_OP(kdmtt, x29, x31, x1, 0x0000000000000000, 0x1010000100ffff, 0xffef00030040fffe, x31, x8, 80, x12)

inst_21:
// rs1==x4, rs2==x6, rd==x10, rs2_h3_val == -9, rs2_h2_val == -33, rs2_h0_val == -4097, rs1_h0_val == 512, rs1_h3_val == -129, rs1_h1_val == -65
// opcode: kdmtt ; op1:x4; op2:x6; dest:x10; op1val:0xff7f0100ffbf0200;  op2val:0xfff7ffdffff6efff
TEST_PKRR_OP(kdmtt, x10, x4, x6, 0x0000000000000000, 0xff7f0100ffbf0200, 0xfff7ffdffff6efff, x4, x8, 96, x12)

inst_22:
// rs1==x19, rs2==x9, rd==x21, rs2_h3_val == -5, rs2_h2_val == 64, rs1_h3_val == 4, rs1_h0_val == -5, rs2_h0_val == -129
// opcode: kdmtt ; op1:x19; op2:x9; dest:x21; op1val:0x047fff0009fffb;  op2val:0xfffb00400009ff7f
TEST_PKRR_OP(kdmtt, x21, x19, x9, 0x0000000000000000, 0x047fff0009fffb, 0xfffb00400009ff7f, x19, x8, 112, x12)

inst_23:
// rs1==x15, rs2==x16, rd==x26, rs2_h3_val == -3, rs2_h0_val == 16384, rs1_h1_val == -2
// opcode: kdmtt ; op1:x15; op2:x16; dest:x26; op1val:0xff7f1000fffefff7;  op2val:0xfffdfbff55554000
TEST_PKRR_OP(kdmtt, x26, x15, x16, 0x0000000000000000, 0xff7f1000fffefff7, 0xfffdfbff55554000, x15, x8, 128, x12)

inst_24:
// rs1==x17, rs2==x26, rd==x4, rs2_h3_val == -32768, rs1_h3_val == 1024, rs1_h2_val == -2
// opcode: kdmtt ; op1:x17; op2:x26; dest:x4; op1val:0x400fffe0003fff7;  op2val:0x8000fffbffbffffc
TEST_PKRR_OP(kdmtt, x4, x17, x26, 0x0000000000000000, 0x400fffe0003fff7, 0x8000fffbffbffffc, x17, x8, 144, x12)

inst_25:
// rs1==x26, rs2==x18, rd==x13, rs2_h3_val == 16384, rs2_h2_val == -4097, rs2_h0_val == 8, rs1_h3_val == 16384, rs1_h0_val == 0
// opcode: kdmtt ; op1:x26; op2:x18; dest:x13; op1val:0x4000c00000020000;  op2val:0x4000efff00000008
TEST_PKRR_OP(kdmtt, x13, x26, x18, 0x0000000000000000, 0x4000c00000020000, 0x4000efff00000008, x26, x8, 160, x12)

inst_26:
// rs1==x5, rs2==x29, rd==x14, rs2_h3_val == 8192, rs2_h0_val == 256, rs1_h1_val == -129, rs2_h2_val == -2, rs1_h3_val == 2048
// opcode: kdmtt ; op1:x5; op2:x29; dest:x14; op1val:0x800fdffff7ffffe;  op2val:0x2000fffefbff0100
TEST_PKRR_OP(kdmtt, x14, x5, x29, 0x0000000000000000, 0x800fdffff7ffffe, 0x2000fffefbff0100, x5, x8, 176, x3)

inst_27:
// rs1==x21, rs2==x19, rd==x28, rs2_h3_val == 2048, rs2_h1_val == -21846, rs1_h3_val == -2, rs1_h0_val == 4096, rs2_h0_val == 0
// opcode: kdmtt ; op1:x21; op2:x19; dest:x28; op1val:0xfffefdffffbf1000;  op2val:0x800c000aaaa0000
TEST_PKRR_OP(kdmtt, x28, x21, x19, 0x0000000000000000, 0xfffefdffffbf1000, 0x800c000aaaa0000, x21, x8, 192, x3)

inst_28:
// rs1==x11, rs2==x12, rd==x1, rs2_h3_val == 1024, rs1_h1_val == -1025, rs2_h1_val == -2, rs1_h2_val == -3, rs2_h2_val == -32768
// opcode: kdmtt ; op1:x11; op2:x12; dest:x1; op1val:0xfffcfffdfbffffef;  op2val:0x4008000fffebfff
TEST_PKRR_OP(kdmtt, x1, x11, x12, 0x0000000000000000, 0xfffcfffdfbffffef, 0x4008000fffebfff, x11, x8, 208, x3)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_29:
// rs1==x13, rs2==x8, rd==x23, rs2_h3_val == 512, rs1_h2_val == -65
// opcode: kdmtt ; op1:x13; op2:x8; dest:x23; op1val:0xdfffffbf0000fff9;  op2val:0x200fffffffa0800
TEST_PKRR_OP(kdmtt, x23, x13, x8, 0x0000000000000000, 0xdfffffbf0000fff9, 0x200fffffffa0800, x13, x2, 0, x3)

inst_30:
// rs1==x29, rs2==x17, rd==x16, rs2_h3_val == 128, rs1_h2_val == 8192, rs1_h1_val == 32767, rs2_h1_val == 4096
// opcode: kdmtt ; op1:x29; op2:x17; dest:x16; op1val:0xfffc20007ffffffc;  op2val:0x80ffdf10008000
TEST_PKRR_OP(kdmtt, x16, x29, x17, 0x0000000000000000, 0xfffc20007ffffffc, 0x80ffdf10008000, x29, x2, 16, x3)

inst_31:
// rs1==x1, rs2==x25, rd==x12, rs2_h3_val == 64, rs2_h1_val == 32767, rs1_h3_val == 64, rs1_h1_val == 16
// opcode: kdmtt ; op1:x1; op2:x25; dest:x12; op1val:0x4000030010fff9;  op2val:0x4000037fff4000
TEST_PKRR_OP(kdmtt, x12, x1, x25, 0x0000000000000000, 0x4000030010fff9, 0x4000037fff4000, x1, x2, 32, x3)

inst_32:
// rs2_h3_val == 32, rs1_h3_val == -65, rs1_h2_val == 128
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0080fffcfff6;  op2val:0x2020000100feff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xffbf0080fffcfff6, 0x2020000100feff, x30, x2, 48, x3)

inst_33:
// rs2_h3_val == 16, rs1_h0_val == 8192, rs2_h1_val == -1, rs2_h0_val == -3
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x3fff0005ffbf2000;  op2val:0x10fff7fffffffd
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x3fff0005ffbf2000, 0x10fff7fffffffd, x30, x2, 64, x3)

inst_34:
// rs1_h1_val == -3, rs2_h1_val == -513, rs2_h2_val == 1024, rs1_h0_val == -513, rs1_h3_val == -4097
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xefff2000fffdfdff;  op2val:0xbfff0400fdfffffa
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xefff2000fffdfdff, 0xbfff0400fdfffffa, x30, x2, 80, x3)

inst_35:
// rs1_h1_val == 16384, rs1_h2_val == 0, rs1_h3_val == 32767, rs2_h1_val == 16, rs1_h0_val == -129
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x7fff00004000ff7f;  op2val:0xfdfffffc0010ffef
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x7fff00004000ff7f, 0xfdfffffc0010ffef, x30, x2, 96, x3)

inst_36:
// rs1_h1_val == 8192, rs1_h0_val == 16
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x40fffb20000010;  op2val:0xfffd000101000010
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x40fffb20000010, 0xfffd000101000010, x30, x2, 112, x3)

inst_37:
// rs1_h1_val == 2048, rs1_h0_val == -65, rs2_h2_val == -17, rs1_h3_val == -2049, rs1_h2_val == -1, rs2_h1_val == 1024
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff0800ffbf;  op2val:0x06ffef0400fff8
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xf7ffffff0800ffbf, 0x06ffef0400fff8, x30, x2, 128, x3)

inst_38:
// rs1_h1_val == 1024, rs1_h2_val == -16385, rs2_h2_val == -257, rs1_h0_val == 21845
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x03bfff04005555;  op2val:0xfff6feffff7f1000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x03bfff04005555, 0xfff6feffff7f1000, x30, x2, 144, x3)

inst_39:
// rs1_h1_val == 512, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff700050200fff8;  op2val:0xfffcfff7ff7fbfff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff700050200fff8, 0xfffcfff7ff7fbfff, x30, x2, 160, x3)

inst_40:
// rs1_h1_val == 128, rs2_h0_val == -513, rs2_h2_val == 0
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x06aaaa0080ffff;  op2val:0xffbf0000c000fdff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x06aaaa0080ffff, 0xffbf0000c000fdff, x30, x2, 176, x3)

inst_41:
// rs1_h1_val == 64, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x200000800400006;  op2val:0x5555200000070005
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x200000800400006, 0x5555200000070005, x30, x2, 192, x3)

inst_42:
// rs1_h1_val == 32, rs2_h2_val == 16
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x400ffbf0020ffef;  op2val:0xff7f001020008000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x400ffbf0020ffef, 0xff7f001020008000, x30, x2, 208, x3)

inst_43:
// rs1_h1_val == 4, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x10fffc0004ffff;  op2val:0x1008000400fff7
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x10fffc0004ffff, 0x1008000400fff7, x30, x2, 224, x3)

inst_44:
// rs1_h1_val == -1, rs2_h0_val == -21846
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff90005ffff0400;  op2val:0x5555ffbf0200aaaa
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff90005ffff0400, 0x5555ffbf0200aaaa, x30, x2, 240, x3)

inst_45:
// rs1_h0_val == -21846, rs2_h1_val == -3, rs2_h2_val == -21846
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfffec0008000aaaa;  op2val:0xffefaaaafffd0080
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfffec0008000aaaa, 0xffefaaaafffd0080, x30, x2, 256, x3)

inst_46:
// rs1_h0_val == -16385, rs2_h1_val == 4
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff00030200bfff;  op2val:0xfffec0000004aaaa
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xf7ff00030200bfff, 0xfffec0000004aaaa, x30, x2, 272, x3)

inst_47:
// rs1_h0_val == -8193, rs2_h0_val == -33
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x0300800100dfff;  op2val:0xffff0005aaaaffdf
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x0300800100dfff, 0xffff0005aaaaffdf, x30, x2, 288, x3)

inst_48:
// rs1_h0_val == -4097, rs2_h3_val == 1, rs2_h1_val == 1
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x10fff6fffaefff;  op2val:0x0108000001fff7
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x10fff6fffaefff, 0x0108000001fff7, x30, x2, 304, x3)

inst_49:
// rs1_h0_val == -2049, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffbfffef7ff;  op2val:0x7fff0002ff7f0006
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xf7fffffbfffef7ff, 0x7fff0002ff7f0006, x30, x2, 320, x3)

inst_50:
// rs1_h0_val == -1025, rs1_h2_val == -257, rs2_h2_val == -3, rs2_h0_val == 1, rs1_h1_val == -4097
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff9feffeffffbff;  op2val:0x400fffdfffc0001
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff9feffeffffbff, 0x400fffdfffc0001, x30, x2, 336, x3)

inst_51:
// rs1_h0_val == -257, rs2_h0_val == 64
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfffe01000003feff;  op2val:0x1000000700050040
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfffe01000003feff, 0x1000000700050040, x30, x2, 352, x3)

inst_52:
// rs1_h0_val == -33, rs1_h1_val == -33, rs2_h2_val == 4, rs2_h0_val == 512
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x200efffffdfffdf;  op2val:0xf7ff0004fffd0200
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x200efffffdfffdf, 0xf7ff0004fffd0200, x30, x2, 368, x3)

inst_53:
// rs1_h0_val == -3, rs1_h2_val == 512
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfffc0200fffffffd;  op2val:0xfffe00060007ffef
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfffc0200fffffffd, 0xfffe00060007ffef, x30, x2, 384, x3)

inst_54:
// rs1_h0_val == 16384, rs2_h2_val == -16385
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xff7f0040ff7f4000;  op2val:0xffdfbffffffd0100
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xff7f0040ff7f4000, 0xffdfbffffffd0100, x30, x2, 400, x3)

inst_55:
// rs1_h0_val == 2048, rs2_h2_val == 4096, rs2_h0_val == -1025
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffffff7f0800;  op2val:0xfff710000007fbff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x1000ffffff7f0800, 0xfff710000007fbff, x30, x2, 416, x3)

inst_56:
// rs1_h0_val == 256, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffefffff0100;  op2val:0xfbfffdfffffa0007
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x1000ffefffff0100, 0xfbfffdfffffa0007, x30, x2, 432, x3)

inst_57:
// rs2_h1_val == 2, rs1_h2_val == -129
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x05ff7fc0001000;  op2val:0x03fff90002fffc
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x05ff7fc0001000, 0x03fff90002fffc, x30, x2, 448, x3)

inst_58:
// rs2_h0_val == 21845, rs1_h2_val == 2
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff600023fff0080;  op2val:0x03ff7f10005555
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff600023fff0080, 0x03ff7f10005555, x30, x2, 464, x3)

inst_59:
// rs1_h1_val == -9, rs1_h3_val == 8192, rs2_h1_val == -2049
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x20000100fff7efff;  op2val:0x030005f7fffff7
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x20000100fff7efff, 0x030005f7fffff7, x30, x2, 480, x3)

inst_60:
// rs2_h0_val == 32767, rs1_h0_val == 8
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x2000000300400008;  op2val:0xfffb400010007fff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x2000000300400008, 0xfffb400010007fff, x30, x2, 496, x3)

inst_61:
// rs2_h0_val == -8193, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xc00020000006fffe;  op2val:0x8000bffffff9dfff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xc00020000006fffe, 0x8000bffffff9dfff, x30, x2, 512, x3)

inst_62:
// rs2_h0_val == -2049, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffefffcfff7;  op2val:0x200fffb0400f7ff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xffdffffefffcfff7, 0x200fffb0400f7ff, x30, x2, 528, x3)

inst_63:
// rs2_h0_val == -65, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x200c000c000dfff;  op2val:0xfffd0005fbffffbf
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x200c000c000dfff, 0xfffd0005fbffffbf, x30, x2, 544, x3)

inst_64:
// rs2_h0_val == -5, rs2_h2_val == 32767
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x4000fffd00030006;  op2val:0xfff67fff0005fffb
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x4000fffd00030006, 0xfff67fff0005fffb, x30, x2, 560, x3)

inst_65:
// rs2_h0_val == 8192, rs1_h3_val == 256
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x100ffbffbfffff8;  op2val:0xfff6100000062000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x100ffbffbfffff8, 0xfff6100000062000, x30, x2, 576, x3)

inst_66:
// rs2_h0_val == 4, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x3ffffff600020800;  op2val:0x03000000060004
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x3ffffff600020800, 0x03000000060004, x30, x2, 592, x3)

inst_67:
// rs2_h0_val == 2, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfffafffdfff90001;  op2val:0xfdffeffffffe0002
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfffafffdfff90001, 0xfdffeffffffe0002, x30, x2, 608, x3)

inst_68:
// rs2_h0_val == -1, rs2_h3_val == 4, rs2_h2_val == -2049
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff9ffdffff9ff7f;  op2val:0x04f7fffff6ffff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff9ffdffff9ff7f, 0x04f7fffff6ffff, x30, x2, 624, x3)

inst_69:
// rs1_h3_val == 21845, rs2_h1_val == -5, rs1_h1_val == 21845
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x5555fffc55555555;  op2val:0xdffffffafffbff7f
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x5555fffc55555555, 0xdffffffafffbff7f, x30, x2, 640, x3)

inst_70:
// rs1_h3_val == -16385, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0008fff80200;  op2val:0x3ffffff8ffbffff6
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xbfff0008fff80200, 0x3ffffff8ffbffff6, x30, x2, 656, x3)

inst_71:
// rs1_h0_val == 32, rs2_h2_val == 256
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x1000008bfff0020;  op2val:0xfff901005555fff8
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x1000008bfff0020, 0xfff901005555fff8, x30, x2, 672, x3)

inst_72:
// rs1_h3_val == -1025, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfbff0009fff6dfff;  op2val:0xfffcffbf00060000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfbff0009fff6dfff, 0xfffcffbf00060000, x30, x2, 688, x3)

inst_73:
// rs1_h3_val == -513, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffdf0008fff6;  op2val:0x06dffff7ff0400
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfdffffdf0008fff6, 0x06dffff7ff0400, x30, x2, 704, x3)

inst_74:
// rs1_h0_val == 2, rs1_h2_val == 4
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x10000004f7ff0002;  op2val:0xfffc000400034000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x10000004f7ff0002, 0xfffc000400034000, x30, x2, 720, x3)

inst_75:
// rs1_h3_val == -17, rs1_h2_val == -32768
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xffef800010008000;  op2val:0xfff9fff9fdfffffb
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xffef800010008000, 0xfff9fff9fdfffffb, x30, x2, 736, x3)

inst_76:
// rs1_h3_val == 32, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x20ffdf0400fffd;  op2val:0x100fff80001fff9
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x20ffdf0400fffd, 0x100fff80001fff9, x30, x2, 752, x3)

inst_77:
// rs1_h3_val == 8, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x08ff7fbfff8000;  op2val:0x8000fff60009aaaa
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x08ff7fbfff8000, 0x8000fff60009aaaa, x30, x2, 768, x3)

inst_78:
// rs1_h3_val == 2, rs1_h2_val == 2048, rs2_h1_val == 8
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x02080040000006;  op2val:0xfffa80000008ffff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x02080040000006, 0xfffa80000008ffff, x30, x2, 784, x3)

inst_79:
// rs1_h3_val == 0, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x0000080007c000;  op2val:0xfff600008000fffe
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x0000080007c000, 0xfff600008000fffe, x30, x2, 800, x3)

inst_80:
// rs1_h2_val == -8193, rs1_h1_val == -513
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x800dffffdfffffc;  op2val:0x0500103fff0006
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x800dffffdfffffc, 0x0500103fff0006, x30, x2, 816, x3)

inst_81:
// rs1_h2_val == -2049, rs2_h1_val == 32
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff9f7fffff60010;  op2val:0x40fff700200007
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff9f7fffff60010, 0x40fff700200007, x30, x2, 832, x3)

inst_82:
// rs1_h1_val == -17, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x090003ffef0040;  op2val:0x20000800002c000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x090003ffef0040, 0x20000800002c000, x30, x2, 848, x3)

inst_83:
// rs2_h2_val == 512, rs2_h3_val == 2, rs2_h1_val == -8193
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x2007fffffefffdf;  op2val:0x020200dffffffd
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x2007fffffefffdf, 0x020200dffffffd, x30, x2, 864, x3)

inst_84:
// rs2_h2_val == 32, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffff755551000;  op2val:0xaaaa0020fbfffff9
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfbfffff755551000, 0xaaaa0020fbfffff9, x30, x2, 880, x3)

inst_85:
// rs1_h2_val == 1024, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x80004007ffffffc;  op2val:0xffeffbfffff6fbff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x80004007ffffffc, 0xffeffbfffff6fbff, x30, x2, 896, x3)

inst_86:
// rs2_h1_val == -4097, rs1_h2_val == 16, rs1_h1_val == -8193
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x040010dffffffc;  op2val:0xfff60100efff1000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x040010dffffffc, 0xfff60100efff1000, x30, x2, 912, x3)

inst_87:
// rs1_h2_val == 32, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x10000020fffd3fff;  op2val:0xfff9ffeffffd5555
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x10000020fffd3fff, 0xfff9ffeffffd5555, x30, x2, 928, x3)

inst_88:
// rs2_h1_val == -257, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xffef0800fffd0100;  op2val:0xfffffffafefffeff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xffef0800fffd0100, 0xfffffffafefffeff, x30, x2, 944, x3)

inst_89:
// rs2_h3_val == 0, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x038000fffa0000;  op2val:0x000002fffbefff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x038000fffa0000, 0x000002fffbefff, x30, x2, 960, x3)

inst_90:
// rs2_h3_val == 8, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xbffffbff0400ffbf;  op2val:0x08c00000010800
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xbffffbff0400ffbf, 0x08c00000010800, x30, x2, 976, x3)

inst_91:
// rs2_h1_val == -17, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x06ffdffffb0200;  op2val:0x04fff8ffeffff6
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x06ffdffffb0200, 0x04fff8ffeffff6, x30, x2, 992, x3)

inst_92:
// rs1_h2_val == 1, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xffdf000180000002;  op2val:0xfffdfffb0080dfff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xffdf000180000002, 0xfffdfffb0080dfff, x30, x2, 1008, x3)

inst_93:
// rs1_h1_val == -257, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfff90100feffff7f;  op2val:0x040100effffffd
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfff90100feffff7f, 0x040100effffffd, x30, x2, 1024, x3)

inst_94:
// rs1_h3_val == -32768, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x8000fffefff80010;  op2val:0xfffd00090003fdff
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x8000fffefff80010, 0xfffd00090003fdff, x30, x2, 1040, x3)

inst_95:
// rs2_h2_val == 21845, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x06fff6fff80040;  op2val:0x200555500070004
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x06fff6fff80040, 0x200555500070004, x30, x2, 1056, x3)

inst_96:
// rs2_h1_val == -9, 
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x04001000053fff;  op2val:0x200ffdffff7c000
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x04001000053fff, 0x200ffdffff7c000, x30, x2, 1072, x3)

inst_97:
// rs1_h3_val < 0 and rs2_h3_val > 0, rs1_h1_val == -5, rs2_h2_val == -8193, rs1_h2_val == 64, rs1_h2_val > 0 and rs2_h2_val < 0, rs2_h1_val == -129, rs1_h0_val == 128, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h3_val == 256, rs2_h0_val == -2, rs1_h0_val > 0 and rs2_h0_val < 0, rs1_h3_val == -5
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0040fffb0080;  op2val:0x100dfffff7ffffe
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0xfffb0040fffb0080, 0x100dfffff7ffffe, x30, x2, 1088, x3)

inst_98:
// rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h1_val == 16384, rs2_h0_val == -17, rs2_h2_val == -1025
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x05fffa0005fffe;  op2val:0x3ffffbff4000ffef
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x05fffa0005fffe, 0x3ffffbff4000ffef, x30, x2, 1104, x3)

inst_99:
// rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h0_val == 1024, rs1_h1_val == 2, rs1_h2_val == -513, rs2_h3_val == -4097, rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h1_val == 128, rs2_h2_val == 1
// opcode: kdmtt ; op1:x30; op2:x29; dest:x31; op1val:0x09fdff00020400;  op2val:0xefff000100800009
TEST_PKRR_OP(kdmtt, x31, x30, x29, 0x0000000000000000, 0x09fdff00020400, 0xefff000100800009, x30, x2, 1120, x3)
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
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 28*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 142*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
