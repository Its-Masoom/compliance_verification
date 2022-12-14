
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
// This assembly file tests the scmple16 instruction of the RISC-V RV64PZicsr extension for the scmple16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",scmple16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x13,signature_x13_1)

inst_0:
// rs1 == rd != rs2, rs1==x20, rs2==x4, rd==x20, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs1_h2_val == 8192, rs1_h3_val < 0 and rs2_h3_val < 0, rs1_h2_val != rs2_h2_val, rs2_h3_val == -3, rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h1_val != rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs1_h1_val == 32767, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h1_val == 8192, rs2_h2_val == 128, rs2_h0_val == 512
// opcode: scmple16 ; op1:x20; op2:x4; dest:x20; op1val:0xfffa20007fff8000;  op2val:0xfffd008020000200
TEST_RR_OP(scmple16, x20, x20, x4, 0x0000000000000000, 0xfffa20007fff8000, 0xfffd008020000200, x13, 0, x15)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x26, rd==x24, rs1_h3_val == rs2_h3_val, rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h2_val == 2, rs1_h1_val < 0 and rs2_h1_val > 0, rs2_h2_val == 16384, rs1_h1_val == -65, rs1_h0_val == -257
// opcode: scmple16 ; op1:x1; op2:x26; dest:x24; op1val:0x050002ffbffeff;  op2val:0x05400000030200
TEST_RR_OP(scmple16, x24, x1, x26, 0x0000000000000000, 0x050002ffbffeff, 0x05400000030200, x13, 8, x15)

inst_2:
// rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x26, rs1_h3_val < 0 and rs2_h3_val > 0, rs2_h1_val == -16385, rs2_h0_val == -16385, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h0_val == 4096, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h3_val == -257, rs1_h1_val == -1, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == 4, rs2_h2_val == 2, rs1_h2_val == -65
// opcode: scmple16 ; op1:x9; op2:x9; dest:x26; op1val:0xfeffffbfffff1000;  op2val:0x040002bfffbfff
TEST_RR_OP(scmple16, x26, x9, x9, 0x0000000000000000, 0xfeffffbfffff1000, 0x040002bfffbfff, x13, 16, x15)

inst_3:
// rs1 == rs2 == rd, rs1==x28, rs2==x28, rd==x28, rs1_h3_val > 0 and rs2_h3_val < 0, rs2_h1_val == -17, rs1_h2_val == -1, rs1_h0_val == 1, rs1_h1_val == -4097, rs1_h3_val == 4096, rs2_h3_val == -2049
// opcode: scmple16 ; op1:x28; op2:x28; dest:x28; op1val:0x1000ffffefff0001;  op2val:0xf7ff0005ffeffff8
TEST_RR_OP(scmple16, x28, x28, x28, 0x0000000000000000, 0x1000ffffefff0001, 0xf7ff0005ffeffff8, x13, 24, x15)

inst_4:
// rs2 == rd != rs1, rs1==x21, rs2==x5, rd==x5, rs1_h2_val == rs2_h2_val, rs1_h1_val == -3, rs2_h1_val == -2049, rs1_h0_val == 8192, rs2_h3_val == -2, rs1_h3_val == -17, rs2_h0_val == -32768
// opcode: scmple16 ; op1:x21; op2:x5; dest:x5; op1val:0xffef0002fffd2000;  op2val:0xfffe0002f7ff8000
TEST_RR_OP(scmple16, x5, x21, x5, 0x0000000000000000, 0xffef0002fffd2000, 0xfffe0002f7ff8000, x13, 32, x15)

inst_5:
// rs1==x25, rs2==x23, rd==x31, rs1_h2_val < 0 and rs2_h2_val < 0, rs1_h3_val == 1024, rs2_h1_val == 21845, rs1_h0_val == 1024, rs2_h2_val == -5, rs2_h0_val == -9, rs1_h2_val == -513, rs2_h3_val == -8193
// opcode: scmple16 ; op1:x25; op2:x23; dest:x31; op1val:0x400fdff00050400;  op2val:0xdffffffb5555fff7
TEST_RR_OP(scmple16, x31, x25, x23, 0x0000000000000000, 0x400fdff00050400, 0xdffffffb5555fff7, x13, 40, x15)

inst_6:
// rs1==x31, rs2==x17, rd==x3, rs1_h2_val > 0 and rs2_h2_val < 0, rs2_h0_val == 32, rs1_h1_val == 16384, rs1_h3_val == 16, rs2_h2_val == -257, rs1_h0_val > 0 and rs2_h0_val > 0
// opcode: scmple16 ; op1:x31; op2:x17; dest:x3; op1val:0x10200040001000;  op2val:0xf7fffeff55550020
TEST_RR_OP(scmple16, x3, x31, x17, 0x0000000000000000, 0x10200040001000, 0xf7fffeff55550020, x13, 48, x15)

inst_7:
// rs1==x12, rs2==x6, rd==x2, rs1_h1_val == rs2_h1_val, rs1_h0_val == -17, rs2_h3_val == -5, rs2_h0_val == -33, rs2_h2_val == 256, rs1_h0_val < 0 and rs2_h0_val < 0, rs1_h2_val == -3
// opcode: scmple16 ; op1:x12; op2:x6; dest:x2; op1val:0xfffafffd0009ffef;  op2val:0xfffb01000009ffdf
TEST_RR_OP(scmple16, x2, x12, x6, 0x0000000000000000, 0xfffafffd0009ffef, 0xfffb01000009ffdf, x13, 56, x15)

inst_8:
// rs1==x8, rs2==x0, rd==x10, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h3_val == -129, rs2_h0_val == -4097, rs1_h1_val == 2, rs1_h3_val == -9, rs2_h2_val == 64
// opcode: scmple16 ; op1:x8; op2:x0; dest:x10; op1val:0xfff7fff600020001;  op2val:0xff7f0040bfffefff
TEST_RR_OP(scmple16, x10, x8, x0, 0x0000000000000000, 0xfff7fff600020001, 0xff7f0040bfffefff, x13, 64, x15)

inst_9:
// rs1==x24, rs2==x8, rd==x17, rs1_h0_val == rs2_h0_val, rs1_h0_val == 512, rs1_h3_val == -4097, rs1_h2_val == 32767, rs1_h1_val == 4, rs2_h3_val == 2
// opcode: scmple16 ; op1:x24; op2:x8; dest:x17; op1val:0xefff7fff00040200;  op2val:0x020040fff90200
TEST_RR_OP(scmple16, x17, x24, x8, 0x0000000000000000, 0xefff7fff00040200, 0x020040fff90200, x13, 72, x15)

inst_10:
// rs1==x18, rs2==x27, rd==x23, rs2_h3_val == -21846, rs2_h1_val == -32768, rs1_h0_val == -513
// opcode: scmple16 ; op1:x18; op2:x27; dest:x23; op1val:0x07c0000009fdff;  op2val:0xaaaafff88000fff6
TEST_RR_OP(scmple16, x23, x18, x27, 0x0000000000000000, 0x07c0000009fdff, 0xaaaafff88000fff6, x13, 80, x15)

inst_11:
// rs1==x23, rs2==x25, rd==x7, rs2_h3_val == 21845, rs2_h2_val == -1, rs1_h0_val == -65, rs2_h0_val == -2, rs1_h2_val == 256
// opcode: scmple16 ; op1:x23; op2:x25; dest:x7; op1val:0xfff901000009ffbf;  op2val:0x5555ffff8000fffe
TEST_RR_OP(scmple16, x7, x23, x25, 0x0000000000000000, 0xfff901000009ffbf, 0x5555ffff8000fffe, x13, 88, x15)

inst_12:
// rs1==x14, rs2==x19, rd==x29, rs2_h3_val == 32767, rs1_h3_val == 256, rs1_h1_val == 8192, rs2_h0_val == -1025, rs2_h2_val == -3
// opcode: scmple16 ; op1:x14; op2:x19; dest:x29; op1val:0x100fffa20008000;  op2val:0x7ffffffdbffffbff
TEST_RR_OP(scmple16, x29, x14, x19, 0x0000000000000000, 0x100fffa20008000, 0x7ffffffdbffffbff, x13, 96, x15)

inst_13:
// rs1==x22, rs2==x21, rd==x11, rs2_h3_val == -16385, rs1_h1_val == -2, rs1_h3_val == -513, rs2_h2_val == 16, rs1_h0_val == -2049, rs1_h2_val == -32768
// opcode: scmple16 ; op1:x22; op2:x21; dest:x11; op1val:0xfdff8000fffef7ff;  op2val:0xbfff001020008000
TEST_RR_OP(scmple16, x11, x22, x21, 0x0000000000000000, 0xfdff8000fffef7ff, 0xbfff001020008000, x13, 104, x15)
RVTEST_SIGBASE(x17,signature_x17_0)

inst_14:
// rs1==x19, rs2==x14, rd==x13, rs2_h3_val == -4097, rs1_h0_val == -5, rs2_h0_val == 21845, rs1_h2_val == 128, rs2_h1_val == -4097, rs1_h3_val == -2049, rs1_h1_val == 0
// opcode: scmple16 ; op1:x19; op2:x14; dest:x13; op1val:0xf7ff00800000fffb;  op2val:0xefff0100efff5555
TEST_RR_OP(scmple16, x13, x19, x14, 0x0000000000000000, 0xf7ff00800000fffb, 0xefff0100efff5555, x17, 0, x23)

inst_15:
// rs1==x5, rs2==x1, rd==x16, rs2_h3_val == -1025, rs1_h1_val == -32768, rs1_h2_val == 64, rs1_h3_val == -1025, rs2_h2_val == 512, rs2_h1_val == 256
// opcode: scmple16 ; op1:x5; op2:x1; dest:x16; op1val:0xfbff004080000400;  op2val:0xfbff020001000003
TEST_RR_OP(scmple16, x16, x5, x1, 0x0000000000000000, 0xfbff004080000400, 0xfbff020001000003, x17, 8, x23)

inst_16:
// rs1==x27, rs2==x10, rd==x4, rs2_h3_val == -513, rs2_h0_val == 8, rs1_h2_val == -9, rs1_h0_val == 64
// opcode: scmple16 ; op1:x27; op2:x10; dest:x4; op1val:0xfefffff77fff0040;  op2val:0xfdfffeff55550008
TEST_RR_OP(scmple16, x4, x27, x10, 0x0000000000000000, 0xfefffff77fff0040, 0xfdfffeff55550008, x17, 16, x23)

inst_17:
// rs1==x4, rs2==x30, rd==x18, rs2_h3_val == -257, rs2_h2_val == 2048, rs1_h3_val == -1, rs1_h0_val == 256, rs1_h1_val == -17
// opcode: scmple16 ; op1:x4; op2:x30; dest:x18; op1val:0xffff0009ffef0100;  op2val:0xfeff0800bfff0200
TEST_RR_OP(scmple16, x18, x4, x30, 0x0000000000000000, 0xffff0009ffef0100, 0xfeff0800bfff0200, x17, 24, x23)

inst_18:
// rs1==x11, rs2==x15, rd==x1, rs2_h3_val == -65, rs2_h0_val == -8193, rs1_h2_val == -17, rs2_h1_val == -129, rs1_h3_val == 2
// opcode: scmple16 ; op1:x11; op2:x15; dest:x1; op1val:0x02ffef7fffffef;  op2val:0xffbf0006ff7fdfff
TEST_RR_OP(scmple16, x1, x11, x15, 0x0000000000000000, 0x02ffef7fffffef, 0xffbf0006ff7fdfff, x17, 32, x23)

inst_19:
// rs1==x10, rs2==x11, rd==x8, rs2_h3_val == -33, rs1_h3_val == 32, rs1_h1_val == -21846, rs1_h2_val == -4097, rs2_h2_val == 21845, rs1_h0_val == -129
// opcode: scmple16 ; op1:x10; op2:x11; dest:x8; op1val:0x20efffaaaaff7f;  op2val:0xffdf55550100fff8
TEST_RR_OP(scmple16, x8, x10, x11, 0x0000000000000000, 0x20efffaaaaff7f, 0xffdf55550100fff8, x17, 40, x23)

inst_20:
// rs1==x6, rs2==x3, rd==x9, rs2_h3_val == -17, rs2_h0_val == 4096, rs1_h1_val == 1, rs1_h2_val == 512, rs1_h0_val == 128
// opcode: scmple16 ; op1:x6; op2:x3; dest:x9; op1val:0xfff8020000010080;  op2val:0xffeffffb00051000
TEST_RR_OP(scmple16, x9, x6, x3, 0x0000000000000000, 0xfff8020000010080, 0xffeffffb00051000, x17, 48, x23)

inst_21:
// rs1==x2, rs2==x29, rd==x30, rs2_h3_val == -9, rs1_h1_val == 4096, rs2_h1_val == -3, rs2_h2_val == 4096, rs1_h3_val == -129, rs2_h0_val == -3, rs1_h0_val == -21846
// opcode: scmple16 ; op1:x2; op2:x29; dest:x30; op1val:0xff7f00071000aaaa;  op2val:0xfff71000fffdfffd
TEST_RR_OP(scmple16, x30, x2, x29, 0x0000000000000000, 0xff7f00071000aaaa, 0xfff71000fffdfffd, x17, 56, x23)

inst_22:
// rs1==x13, rs2==x12, rd==x0, rs2_h3_val == -32768, rs2_h0_val == -5, rs1_h2_val == -2049, rs2_h2_val == -1025
// opcode: scmple16 ; op1:x13; op2:x12; dest:x0; op1val:0xeffff7fffffd0009;  op2val:0x8000fbffffeffffb
TEST_RR_OP(scmple16, x0, x13, x12, 0x0000000000000000, 0xeffff7fffffd0009, 0x8000fbffffeffffb, x17, 64, x23)

inst_23:
// rs1==x7, rs2==x18, rd==x6, rs2_h3_val == 16384, rs2_h2_val == -65, rs2_h1_val == 16384, rs1_h1_val == 64, rs1_h0_val == -2
// opcode: scmple16 ; op1:x7; op2:x18; dest:x6; op1val:0x09ffef0040fffe;  op2val:0x4000ffbf40000009
TEST_RR_OP(scmple16, x6, x7, x18, 0x0000000000000000, 0x09ffef0040fffe, 0x4000ffbf40000009, x17, 72, x23)

inst_24:
// rs1==x15, rs2==x24, rd==x27, rs2_h3_val == 8192, rs2_h1_val == 128, rs2_h2_val == 8, rs1_h0_val == -1025, rs2_h0_val == 128
// opcode: scmple16 ; op1:x15; op2:x24; dest:x27; op1val:0xfff70100fff6fbff;  op2val:0x2000000800800080
TEST_RR_OP(scmple16, x27, x15, x24, 0x0000000000000000, 0xfff70100fff6fbff, 0x2000000800800080, x17, 80, x23)

inst_25:
// rs1==x0, rs2==x13, rd==x15, rs2_h3_val == 4096, rs1_h3_val == 4, rs2_h0_val == 16
// opcode: scmple16 ; op1:x0; op2:x13; dest:x15; op1val:0x040009fff80040;  op2val:0x10000008fffa0010
TEST_RR_OP(scmple16, x15, x0, x13, 0x0000000000000000, 0x040009fff80040, 0x10000008fffa0010, x17, 88, x23)

inst_26:
// rs1==x29, rs2==x20, rd==x12, rs2_h3_val == 2048, rs2_h1_val == -1025, rs1_h1_val == -513, rs1_h3_val == 0, rs2_h0_val == 16384
// opcode: scmple16 ; op1:x29; op2:x20; dest:x12; op1val:0x00fff6fdff0100;  op2val:0x8004000fbff4000
TEST_RR_OP(scmple16, x12, x29, x20, 0x0000000000000000, 0x00fff6fdff0100, 0x8004000fbff4000, x17, 96, x23)

inst_27:
// rs1==x26, rs2==x16, rd==x19, rs2_h3_val == 1024, rs1_h3_val == 64, rs2_h0_val == 1, rs2_h2_val == -32768
// opcode: scmple16 ; op1:x26; op2:x16; dest:x19; op1val:0x400002c0000400;  op2val:0x400800000070001
TEST_RR_OP(scmple16, x19, x26, x16, 0x0000000000000000, 0x400002c0000400, 0x400800000070001, x17, 104, x23)

inst_28:
// rs1==x16, rs2==x22, rd==x21, rs2_h3_val == 512, rs2_h1_val == 1024, rs2_h2_val == -8193, rs1_h1_val == -5
// opcode: scmple16 ; op1:x16; op2:x22; dest:x21; op1val:0xfff80002fffb3fff;  op2val:0x200dfff0400efff
TEST_RR_OP(scmple16, x21, x16, x22, 0x0000000000000000, 0xfff80002fffb3fff, 0x200dfff0400efff, x17, 112, x23)

inst_29:
// rs1==x30, rs2==x7, rd==x25, rs2_h3_val == 256, rs1_h2_val == 16384
// opcode: scmple16 ; op1:x30; op2:x7; dest:x25; op1val:0x1004000ffeffeff;  op2val:0x100001000050001
TEST_RR_OP(scmple16, x25, x30, x7, 0x0000000000000000, 0x1004000ffeffeff, 0x100001000050001, x17, 120, x4)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_30:
// rs1==x17, rs2==x31, rd==x22, rs2_h3_val == 128, rs1_h3_val == -16385
// opcode: scmple16 ; op1:x17; op2:x31; dest:x22; op1val:0xbfff7ffffffd0009;  op2val:0x80fefff7ff1000
TEST_RR_OP(scmple16, x22, x17, x31, 0x0000000000000000, 0xbfff7ffffffd0009, 0x80fefff7ff1000, x1, 0, x4)

inst_31:
// rs1==x3, rs2==x2, rd==x14, rs2_h3_val == 64, rs2_h0_val == 8192, rs1_h3_val == -21846, rs1_h1_val == 512
// opcode: scmple16 ; op1:x3; op2:x2; dest:x14; op1val:0xaaaafff702000080;  op2val:0x40000980002000
TEST_RR_OP(scmple16, x14, x3, x2, 0x0000000000000000, 0xaaaafff702000080, 0x40000980002000, x1, 8, x4)

inst_32:
// rs2_h3_val == 32, rs1_h3_val == -32768, rs2_h1_val == 32767, rs2_h0_val == -21846, rs2_h2_val == 1
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000fff7fffffff6;  op2val:0x2000017fffaaaa
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x8000fff7fffffff6, 0x2000017fffaaaa, x1, 16, x4)

inst_33:
// rs2_h3_val == 16, rs1_h0_val == -33, rs1_h1_val == -2049
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff0009f7ffffdf;  op2val:0x100002fffafffb
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfeff0009f7ffffdf, 0x100002fffafffb, x1, 24, x4)

inst_34:
// rs1_h1_val == 2048, rs2_h3_val == 1, rs1_h0_val == 21845
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff000608005555;  op2val:0x01ffbf0006efff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfdff000608005555, 0x01ffbf0006efff, x1, 32, x4)

inst_35:
// rs1_h1_val == 1024, rs1_h2_val == -2
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffffe04005555;  op2val:0xfff7000780000080
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffeffffe04005555, 0xfff7000780000080, x1, 40, x4)

inst_36:
// rs1_h1_val == 256, rs2_h1_val == 2, rs2_h3_val == -1
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x100000201002000;  op2val:0xfffffbff0002fff8
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x100000201002000, 0xfffffbff0002fff8, x1, 48, x4)

inst_37:
// rs1_h1_val == 128, rs2_h2_val == 8192, rs2_h0_val == 2048, rs1_h2_val == -1025
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffbff0080fff9;  op2val:0x7fff2000bfff0800
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xff7ffbff0080fff9, 0x7fff2000bfff0800, x1, 56, x4)

inst_38:
// rs1_h1_val == 32, rs2_h1_val == -1, rs1_h3_val == -8193, rs2_h0_val == -257, rs1_h2_val == -129
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffff7f00200200;  op2val:0xbfff0010fffffeff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xdfffff7f00200200, 0xbfff0010fffffeff, x1, 64, x4)

inst_39:
// rs1_h1_val == 16, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffc20000010fbff;  op2val:0x04fffb40000800
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffc20000010fbff, 0x04fffb40000800, x1, 72, x4)

inst_40:
// rs1_h1_val == 8, rs2_h0_val == 64, rs2_h1_val == 0, rs2_h2_val == -21846
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x03000300081000;  op2val:0xffffaaaa00000040
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x03000300081000, 0xffffaaaa00000040, x1, 80, x4)

inst_41:
// rs1_h0_val == 32767, rs2_h2_val == 0
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff600077fff7fff;  op2val:0x020000effffff6
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff600077fff7fff, 0x020000effffff6, x1, 88, x4)

inst_42:
// rs1_h0_val == -16385, rs1_h3_val == -5, rs2_h1_val == 512, rs2_h3_val == 0
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb7ffffff9bfff;  op2val:0x0000030200bfff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffb7ffffff9bfff, 0x0000030200bfff, x1, 96, x4)

inst_43:
// rs1_h0_val == -8193, rs1_h2_val == -5
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff6fffb7fffdfff;  op2val:0x1000073fff0001
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff6fffb7fffdfff, 0x1000073fff0001, x1, 104, x4)

inst_44:
// rs1_h0_val == -4097, rs2_h1_val == 1
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x09fffbf7ffefff;  op2val:0xf7fffffd0001dfff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x09fffbf7ffefff, 0xf7fffffd0001dfff, x1, 112, x4)

inst_45:
// rs1_h0_val == -9, rs1_h2_val == 1024, rs1_h3_val == 8192, rs2_h1_val == 2048
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000400f7fffff7;  op2val:0xefff000808000020
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x20000400f7fffff7, 0xefff000808000020, x1, 120, x4)

inst_46:
// rs1_h0_val == -3, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff00400005fffd;  op2val:0x800dfff80000001
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xefff00400005fffd, 0x800dfff80000001, x1, 128, x4)

inst_47:
// rs1_h0_val == 16384, rs2_h2_val == -33, rs2_h0_val == 32767
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000008004004000;  op2val:0x2000ffdf40007fff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x8000008004004000, 0x2000ffdf40007fff, x1, 136, x4)

inst_48:
// rs1_h0_val == 2048, rs2_h0_val == -65, rs1_h3_val == -2
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffec00000060800;  op2val:0x80010000003ffbf
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffec00000060800, 0x80010000003ffbf, x1, 144, x4)

inst_49:
// rs1_h0_val == 32, rs2_h2_val == 32767
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x20fff700000020;  op2val:0x3fff7fff0006fffd
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x20fff700000020, 0x3fff7fff0006fffd, x1, 152, x4)

inst_50:
// rs1_h0_val == 16, rs1_h2_val == 1, rs2_h0_val == -129
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000100020010;  op2val:0x03dfff0000ff7f
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x8000000100020010, 0x03dfff0000ff7f, x1, 160, x4)

inst_51:
// rs1_h0_val == 8, rs2_h1_val == -21846
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000004000020008;  op2val:0xfff9fff6aaaa2000
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xc000004000020008, 0xfff9fff6aaaa2000, x1, 168, x4)

inst_52:
// rs1_h0_val == 4, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x070003fff80004;  op2val:0x8000009ffef0009
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x070003fff80004, 0x8000009ffef0009, x1, 176, x4)

inst_53:
// rs1_h0_val == 2, rs2_h0_val == -1, rs1_h3_val == -65
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbffff600020002;  op2val:0xfff70002ffefffff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffbffff600020002, 0xfff70002ffefffff, x1, 184, x4)

inst_54:
// rs1_h0_val == 0, rs1_h2_val == 2048
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000800efff0000;  op2val:0xffdfffdf0800fbff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x20000800efff0000, 0xffdfffdf0800fbff, x1, 192, x4)

inst_55:
// rs2_h3_val == 8, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000fffc7fff0000;  op2val:0x0800080001feff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xc000fffc7fff0000, 0x0800080001feff, x1, 200, x4)

inst_56:
// rs1_h0_val == -1, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff6fff70008ffff;  op2val:0x2000008fbff0006
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff6fff70008ffff, 0x2000008fbff0006, x1, 208, x4)

inst_57:
// rs2_h1_val == 4, rs1_h2_val == 16
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff001010000080;  op2val:0x01000200040020
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xbfff001010000080, 0x01000200040020, x1, 216, x4)

inst_58:
// rs2_h0_val == -2049, rs2_h2_val == 32
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000102000ffdf;  op2val:0x060020aaaaf7ff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x2000102000ffdf, 0x060020aaaaf7ff, x1, 224, x4)

inst_59:
// rs1_h1_val == -9, rs2_h1_val == -33
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff64000fff70100;  op2val:0xfffefff6ffdf0200
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff64000fff70100, 0xfffefff6ffdf0200, x1, 232, x4)

inst_60:
// rs2_h0_val == -513, rs2_h1_val == 32
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000800006ffbf;  op2val:0xfff93fff0020fdff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x40000800006ffbf, 0xfff93fff0020fdff, x1, 240, x4)

inst_61:
// rs2_h0_val == -17, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x100fffbfdff0020;  op2val:0x55550002bfffffef
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x100fffbfdff0020, 0x55550002bfffffef, x1, 248, x4)

inst_62:
// rs2_h0_val == 1024, rs2_h1_val == 64
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff00407fff0020;  op2val:0xff7f100000400400
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xdfff00407fff0020, 0xff7f100000400400, x1, 256, x4)

inst_63:
// rs2_h0_val == 256, rs2_h2_val == 4
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xc000ff7faaaa0007;  op2val:0x200004fff80100
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xc000ff7faaaa0007, 0x200004fff80100, x1, 264, x4)

inst_64:
// rs2_h0_val == 4, rs2_h1_val == -2
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff901000001ffdf;  op2val:0xfff7fffffffe0004
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff901000001ffdf, 0xfff7fffffffe0004, x1, 272, x4)

inst_65:
// rs2_h0_val == 2, rs1_h2_val == 4096, rs2_h2_val == -513
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff1000aaaa0800;  op2val:0x4000fdffffef0002
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xefff1000aaaa0800, 0x4000fdffffef0002, x1, 280, x4)

inst_66:
// rs2_h0_val == 0, rs1_h1_val == -33
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000800ffdf0002;  op2val:0x80000008f7ff0000
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x20000800ffdf0002, 0x80000008f7ff0000, x1, 288, x4)

inst_67:
// rs1_h3_val == 21845, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555efff0003f7ff;  op2val:0x5555fffbfff60004
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x5555efff0003f7ff, 0x5555fffbfff60004, x1, 296, x4)

inst_68:
// rs1_h3_val == 32767, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffbff00030100;  op2val:0x4003fffaaaaf7ff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x7ffffbff00030100, 0x4003fffaaaaf7ff, x1, 304, x4)

inst_69:
// rs1_h3_val == -33, rs1_h2_val == -21846
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfaaaa0002dfff;  op2val:0xaaaa0004ffff0001
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffdfaaaa0002dfff, 0xaaaa0004ffff0001, x1, 312, x4)

inst_70:
// rs1_h3_val == -3, rs2_h1_val == 16
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfff80200bfff;  op2val:0x06fff800100200
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffdfff80200bfff, 0x06fff800100200, x1, 320, x4)

inst_71:
// rs1_h3_val == 16384, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000fff810000200;  op2val:0x00ffdf7fff5555
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x4000fff810000200, 0x00ffdf7fff5555, x1, 328, x4)

inst_72:
// rs1_h3_val == 2048, rs1_h1_val == -129
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x800ff7fff7ffff8;  op2val:0x555500060010fff8
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x800ff7fff7ffff8, 0x555500060010fff8, x1, 336, x4)

inst_73:
// rs2_h2_val == -16385, rs1_h2_val == 32
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0020ffefffdf;  op2val:0xf7ffbfff02000006
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffd0020ffefffdf, 0xf7ffbfff02000006, x1, 344, x4)

inst_74:
// rs1_h3_val == 512, rs2_h1_val == -5
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x200fffbfdff0007;  op2val:0x4000ffdffffbffff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x200fffbfdff0007, 0x4000ffdffffbffff, x1, 352, x4)

inst_75:
// rs2_h2_val == -4097, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x800ff7f00040020;  op2val:0xffdfeffffffb0006
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x800ff7f00040020, 0xffdfeffffffb0006, x1, 360, x4)

inst_76:
// rs2_h2_val == -2049, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x3ffffdfffff6fffe;  op2val:0xaaaaf7ff00020003
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x3ffffdfffff6fffe, 0xaaaaf7ff00020003, x1, 368, x4)

inst_77:
// rs1_h3_val == 128, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x80ffef8000efff;  op2val:0xfbff00087ffffbff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x80ffef8000efff, 0xfbff00087ffffbff, x1, 376, x4)

inst_78:
// rs2_h2_val == -129, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x07fffffdffdfff;  op2val:0xfffaff7f00400800
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x07fffffdffdfff, 0xfffaff7f00400800, x1, 384, x4)

inst_79:
// rs1_h3_val == 8, rs1_h2_val == 21845, rs2_h1_val == 8
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x085555aaaa0005;  op2val:0x10fffa0008c000
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x085555aaaa0005, 0x10fffa0008c000, x1, 392, x4)

inst_80:
// rs2_h2_val == -17, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef040000400080;  op2val:0xfdffffef00100080
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffef040000400080, 0xfdffffef00100080, x1, 400, x4)

inst_81:
// rs1_h3_val == 1, rs1_h1_val == -257
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x013ffffeff0007;  op2val:0x8003fff40000006
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x013ffffeff0007, 0x8003fff40000006, x1, 408, x4)

inst_82:
// rs2_h2_val == -9, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x073fff02000004;  op2val:0xdffffff70009fffc
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x073fff02000004, 0xdffffff70009fffc, x1, 416, x4)

inst_83:
// rs2_h2_val == -2, rs1_h2_val == 4
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff00040040ffbf;  op2val:0xfefffffe00097fff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffff00040040ffbf, 0xfefffffe00097fff, x1, 424, x4)

inst_84:
// rs1_h2_val == -16385, rs2_h2_val == 1024
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x800bffffffb0200;  op2val:0xfffe04000004f7ff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x800bffffffb0200, 0xfffe04000004f7ff, x1, 432, x4)

inst_85:
// rs1_h2_val == -8193, rs2_h1_val == -65
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x08dfff0008fffb;  op2val:0xff7fbfffffbfffff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x08dfff0008fffb, 0xff7fbfffffbfffff, x1, 440, x4)

inst_86:
// rs2_h1_val == -8193, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf800000048000;  op2val:0x05fffcdfffffdf
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffdf800000048000, 0x05fffcdfffffdf, x1, 448, x4)

inst_87:
// rs2_h1_val == -513, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff2000ffdf0080;  op2val:0x8000bffffdfffffa
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x7fff2000ffdf0080, 0x8000bffffdfffffa, x1, 456, x4)

inst_88:
// rs2_h1_val == -257, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff8f7ffff7ffffd;  op2val:0xfff70100feffdfff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfff8f7ffff7ffffd, 0xfff70100feffdfff, x1, 464, x4)

inst_89:
// rs1_h2_val == 8, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x100008fffb0007;  op2val:0x3fffc000c000fffb
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x100008fffb0007, 0x3fffc000c000fffb, x1, 472, x4)

inst_90:
// rs2_h1_val == -9, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffdfff72000;  op2val:0xfffcfff8fff70800
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xffdffffdfff72000, 0xfffcfff8fff70800, x1, 480, x4)

inst_91:
// rs1_h2_val == 0, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff00001000fdff;  op2val:0xfff910003fff0006
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xf7ff00001000fdff, 0xfff910003fff0006, x1, 488, x4)

inst_92:
// rs1_h1_val == 21845, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000555550000;  op2val:0x100fffd0200ffdf
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x8000000555550000, 0x100fffd0200ffdf, x1, 496, x4)

inst_93:
// rs1_h1_val == -16385, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff5555bfff5555;  op2val:0x07ffdf00070040
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xf7ff5555bfff5555, 0x07ffdf00070040, x1, 504, x4)

inst_94:
// rs1_h1_val == -8193, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffa0020dfff2000;  op2val:0xfffefff67fffffbf
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffa0020dfff2000, 0xfffefff67fffffbf, x1, 512, x4)

inst_95:
// rs1_h1_val == -1025, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x80fff7fbffaaaa;  op2val:0x400000090800fffa
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x80fff7fbffaaaa, 0x400000090800fffa, x1, 520, x4)

inst_96:
// rs1_h2_val == -33, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ffdffff92000;  op2val:0x08feff0100fff9
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x07ffdffff92000, 0x08feff0100fff9, x1, 528, x4)

inst_97:
// rs2_h1_val == 4096, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff10000400ffff;  op2val:0x400002001000fff6
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xbfff10000400ffff, 0x400002001000fff6, x1, 536, x4)

inst_98:
// rs1_h2_val == -257, 
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffafeff7fffffdf;  op2val:0xefff0040f7ff8000
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfffafeff7fffffdf, 0xefff0040f7ff8000, x1, 544, x4)

inst_99:
// rs1_h3_val < 0 and rs2_h3_val > 0, rs2_h1_val == -16385, rs2_h0_val == -16385, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h0_val == 4096, rs1_h1_val < 0 and rs2_h1_val < 0, rs1_h3_val == -257, rs1_h1_val == -1, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == 4, rs2_h2_val == 2, rs1_h2_val == -65
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffbfffff1000;  op2val:0x040002bfffbfff
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0xfeffffbfffff1000, 0x040002bfffbfff, x1, 552, x4)

inst_100:
// rs1_h3_val > 0 and rs2_h3_val < 0, rs2_h1_val == -17, rs1_h2_val == -1, rs1_h0_val == 1, rs1_h1_val == -4097, rs1_h3_val == 4096, rs2_h3_val == -2049
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffffefff0001;  op2val:0xf7ff0005ffeffff8
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x1000ffffefff0001, 0xf7ff0005ffeffff8, x1, 560, x4)

inst_101:
// rs2_h3_val == 4096, rs1_h3_val == 4, rs2_h0_val == 16
// opcode: scmple16 ; op1:x30; op2:x29; dest:x31; op1val:0x040009fff80040;  op2val:0x10000008fffa0010
TEST_RR_OP(scmple16, x31, x30, x29, 0x0000000000000000, 0x040009fff80040, 0x10000008fffa0010, x1, 568, x4)
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
    .fill 14*(XLEN/32),4,0xdeadbeef


signature_x17_0:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 72*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
