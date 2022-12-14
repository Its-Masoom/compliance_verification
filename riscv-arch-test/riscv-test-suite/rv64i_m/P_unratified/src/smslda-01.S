
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
// This assembly file tests the smslda instruction of the RISC-V RV64PZicsr extension for the smslda covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smslda)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd != rs2, rs1==x12, rs2==x27, rd==x12, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs1_h2_val == 8192, rs2_h3_val == -129, rs1_h1_val == -32768, rs1_h3_val > 0 and rs2_h3_val < 0, rs1_h2_val != rs2_h2_val, rs1_h2_val > 0 and rs2_h2_val < 0, rs1_h1_val != rs2_h1_val, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h1_val == -2, rs1_h0_val != rs2_h0_val, rs1_h0_val < 0 and rs2_h0_val > 0, rs2_h0_val == 128
// opcode: smslda ; op1:x12; op2:x27; dest:x12; op1val:0x0006200080008000;  op2val:0xff7fc000fffe0080
TEST_P64_PNN_OP(smslda, x12, $rd_hi, x12, x27, 0x0000000000000000, $correctval_hi, 0x0006200080008000, 0xff7fc000fffe0080, x1, 0, x5)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x4, rs2==x9, rd==x18, rs1_h3_val == rs2_h3_val, rs1_h1_val == 16384, rs2_h0_val == -2049, rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h3_val == 0, rs2_h1_val == -5, rs1_h1_val > 0 and rs2_h1_val < 0, rs1_h0_val == 8, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == 0
// opcode: smslda ; op1:x4; op2:x9; dest:x18; op1val:0x0000000940000008;  op2val:0x00000003fffbf7ff
TEST_P64_PNN_OP(smslda, x18, $rd_hi, x4, x9, 0x0000000000000000, $correctval_hi, 0x0000000940000008, 0x00000003fffbf7ff, x1, 16, x5)

inst_2:
// rs1 == rs2 != rd, rs1==x31, rs2==x31, rd==x6, rs1_h3_val < 0 and rs2_h3_val > 0, rs1_h1_val == -2, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h2_val == -8193, rs1_h0_val < 0 and rs2_h0_val < 0, rs2_h3_val == 8, rs2_h2_val == 64, rs1_h0_val == -2049
// opcode: smslda ; op1:x31; op2:x31; dest:x6; op1val:0xfffadffffffef7ff;  op2val:0x000800400007fffc
TEST_P64_PNN_OP(smslda, x6, $rd_hi, x31, x31, 0x0000000000000000, $correctval_hi, 0xfffadffffffef7ff, 0x000800400007fffc, x1, 32, x5)

inst_3:
// rs1 == rs2 == rd, rs1==x10, rs2==x10, rd==x10, rs1_h3_val < 0 and rs2_h3_val < 0, rs1_h1_val == 1024, rs2_h3_val == -3, rs1_h2_val < 0 and rs2_h2_val < 0, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h3_val == -33, rs1_h2_val == -257, rs2_h1_val == 2048, rs1_h0_val > 0 and rs2_h0_val > 0
// opcode: smslda ; op1:x10; op2:x10; dest:x10; op1val:0xffdffeff04003fff;  op2val:0xfffdfffa08000006
TEST_P64_PNN_OP(smslda, x10, $rd_hi, x10, x10, 0x0000000000000000, $correctval_hi, 0xffdffeff04003fff, 0xfffdfffa08000006, x1, 48, x5)

inst_4:
// rs2 == rd != rs1, rs1==x20, rs2==x16, rd==x16, rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h0_val == -65, rs1_h1_val == -1, rs1_h3_val == 16384, rs2_h2_val == -3
// opcode: smslda ; op1:x20; op2:x16; dest:x16; op1val:0x40000005ffff0009;  op2val:0x0008fffdc000ffbf
TEST_P64_PNN_OP(smslda, x16, $rd_hi, x20, x16, 0x0000000000000000, $correctval_hi, 0x40000005ffff0009, 0x0008fffdc000ffbf, x1, 64, x5)

inst_5:
// rs1==x0, rs2==x3, rd==x24, rs1_h2_val == rs2_h2_val, rs2_h1_val == 4, rs2_h2_val == 8192, rs2_h0_val == -17, rs1_h3_val == -129, rs1_h0_val == -16385, rs2_h3_val == -4097
// opcode: smslda ; op1:x0; op2:x3; dest:x24; op1val:0xff7f20000009bfff;  op2val:0xefff20000004ffef
TEST_P64_PNN_OP(smslda, x24, $rd_hi, x0, x3, 0x0000000000000000, $correctval_hi, 0xff7f20000009bfff, 0xefff20000004ffef, x1, 80, x5)

inst_6:
// rs1==x13, rs2==x28, rd==x22, rs1_h1_val == rs2_h1_val, rs2_h2_val == -8193, rs2_h0_val == 8, rs1_h0_val == 2048, rs2_h3_val == -32768, rs1_h3_val == -1, rs2_h1_val == -65, rs1_h1_val == -65
// opcode: smslda ; op1:x13; op2:x28; dest:x22; op1val:0xfffffffcffbf0800;  op2val:0x8000dfffffbf0008
TEST_P64_PNN_OP(smslda, x22, $rd_hi, x13, x28, 0x0000000000000000, $correctval_hi, 0xfffffffcffbf0800, 0x8000dfffffbf0008, x1, 96, x5)

inst_7:
// rs1==x7, rs2==x23, rd==x8, rs1_h0_val == rs2_h0_val, rs1_h3_val == 512, rs2_h0_val == 0, rs2_h3_val == -2, rs2_h1_val == 16384, rs1_h0_val == 0, rs2_h2_val == 32
// opcode: smslda ; op1:x7; op2:x23; dest:x8; op1val:0x02003fff40000000;  op2val:0xfffe002040000000
TEST_P64_PNN_OP(smslda, x8, $rd_hi, x7, x23, 0x0000000000000000, $correctval_hi, 0x02003fff40000000, 0xfffe002040000000, x1, 112, x5)

inst_8:
// rs1==x16, rs2==x11, rd==x26, rs2_h3_val == -21846, rs1_h2_val == 512, rs2_h2_val == 512, rs2_h0_val == -3
// opcode: smslda ; op1:x16; op2:x11; dest:x26; op1val:0x400002000400bfff;  op2val:0xaaaa02000009fffd
TEST_P64_PNN_OP(smslda, x26, $rd_hi, x16, x11, 0x0000000000000000, $correctval_hi, 0x400002000400bfff, 0xaaaa02000009fffd, x1, 128, x5)

inst_9:
// rs1==x30, rs2==x21, rd==x20, rs2_h3_val == 21845, rs2_h1_val == -16385, rs2_h2_val == 16, rs1_h3_val == 21845, rs2_h0_val == -513, rs1_h1_val == 0, rs1_h2_val == -17
// opcode: smslda ; op1:x30; op2:x21; dest:x20; op1val:0x5555ffef0000fff9;  op2val:0x55550010bffffdff
TEST_P64_PNN_OP(smslda, x20, $rd_hi, x30, x21, 0x0000000000000000, $correctval_hi, 0x5555ffef0000fff9, 0x55550010bffffdff, x1, 144, x5)

inst_10:
// rs1==x27, rs2==x20, rd==x30, rs2_h3_val == 32767, rs2_h2_val == -1, rs2_h0_val == 16, rs1_h0_val == -257
// opcode: smslda ; op1:x27; op2:x20; dest:x30; op1val:0x400000050006feff;  op2val:0x7fffffffffbf0010
TEST_P64_PNN_OP(smslda, x30, $rd_hi, x27, x20, 0x0000000000000000, $correctval_hi, 0x400000050006feff, 0x7fffffffffbf0010, x1, 160, x5)

inst_11:
// rs1==x14, rs2==x22, rd==x2, rs2_h3_val == -16385, rs2_h0_val == -1, rs1_h0_val == 1024, rs1_h3_val == 1, rs1_h1_val == 21845
// opcode: smslda ; op1:x14; op2:x22; dest:x2; op1val:0x0001200055550400;  op2val:0xbffffffafff8ffff
TEST_P64_PNN_OP(smslda, x2, $rd_hi, x14, x22, 0x0000000000000000, $correctval_hi, 0x0001200055550400, 0xbffffffafff8ffff, x1, 176, x5)

inst_12:
// rs1==x29, rs2==x14, rd==x4, rs2_h3_val == -8193, rs2_h0_val == 4096, rs2_h1_val == -32768, rs1_h0_val == -513
// opcode: smslda ; op1:x29; op2:x14; dest:x4; op1val:0x0001fff84000fdff;  op2val:0xdfff004080001000
TEST_P64_PNN_OP(smslda, x4, $rd_hi, x29, x14, 0x0000000000000000, $correctval_hi, 0x0001fff84000fdff, 0xdfff004080001000, x1, 192, x5)

inst_13:
// rs1==x21, rs2==x7, rd==x14, rs2_h3_val == -2049, rs1_h1_val == 2048, rs2_h1_val == -9, rs1_h3_val == -5, rs2_h2_val == -21846, rs1_h2_val == -32768
// opcode: smslda ; op1:x21; op2:x7; dest:x14; op1val:0xfffb800008000008;  op2val:0xf7ffaaaafff70006
TEST_P64_PNN_OP(smslda, x14, $rd_hi, x21, x7, 0x0000000000000000, $correctval_hi, 0xfffb800008000008, 0xf7ffaaaafff70006, x1, 208, x5)

inst_14:
// rs1==x8, rs2==x25, rd==x28, rs2_h3_val == -1025, rs1_h0_val == 4
// opcode: smslda ; op1:x8; op2:x25; dest:x28; op1val:0xfff9800055550004;  op2val:0xfbfffff60007fdff
TEST_P64_PNN_OP(smslda, x28, $rd_hi, x8, x25, 0x0000000000000000, $correctval_hi, 0xfff9800055550004, 0xfbfffff60007fdff, x1, 224, x5)

inst_15:
// rs1==x19, rs2==x18, rs2_h3_val == -513, rs1_h1_val == 1, rs1_h0_val == -2, rs1_h3_val == 2048
// opcode: smslda ; op1:x19; op2:x18; dest:x9; op1val:0x080080000001fffe;  op2val:0xfdffffffc000fff8
TEST_P64_PNN_OP(smslda, x9, $rd_hi, x19, x18, 0x0000000000000000, $correctval_hi, 0x080080000001fffe, 0xfdffffffc000fff8, x1, 240, x2)
RVTEST_SIGBASE(x16,signature_x16_0)

inst_16:
// rs1==x17, rs2==x15, rs2_h3_val == -257, rs1_h0_val == -33, rs1_h2_val == 0, rs1_h1_val == 4096, rs1_h3_val == -9
// opcode: smslda ; op1:x17; op2:x15; dest:x18; op1val:0xfff700001000ffdf;  op2val:0xfeffc00040000000
TEST_P64_PNN_OP(smslda, x18, $rd_hi, x17, x15, 0x0000000000000000, $correctval_hi, 0xfff700001000ffdf, 0xfeffc00040000000, x16, 0, x2)

inst_17:
// rs1==x24, rs2==x0, rs2_h3_val == -65, rs2_h2_val == 1, rs2_h0_val == -129
// opcode: smslda ; op1:x24; op2:x0; dest:x29; op1val:0x3fff000355550800;  op2val:0xffbf0001fffcff7f
TEST_P64_PNN_OP(smslda, x29, $rd_hi, x24, x0, 0x0000000000000000, $correctval_hi, 0x3fff000355550800, 0xffbf0001fffcff7f, x16, 16, x2)

inst_18:
// rs1==x6, rs2==x13, rs2_h3_val == -33, rs2_h1_val == 512, rs1_h2_val == -33
// opcode: smslda ; op1:x6; op2:x13; dest:x18; op1val:0x0001ffdf40000400;  op2val:0xffdf002002000008
TEST_P64_PNN_OP(smslda, x18, $rd_hi, x6, x13, 0x0000000000000000, $correctval_hi, 0x0001ffdf40000400, 0xffdf002002000008, x16, 32, x2)

inst_19:
// rs1==x9, rs2==x4, rs2_h3_val == -17, rs1_h3_val == -21846, rs2_h2_val == 1024, rs1_h2_val == 4
// opcode: smslda ; op1:x9; op2:x4; dest:x7; op1val:0xaaaa0004ffff0009;  op2val:0xffef0400c000fffc
TEST_P64_PNN_OP(smslda, x7, $rd_hi, x9, x4, 0x0000000000000000, $correctval_hi, 0xaaaa0004ffff0009, 0xffef0400c000fffc, x16, 48, x2)

inst_20:
// rs1==x22, rs2==x29, rs2_h3_val == -9, rs1_h2_val == -4097, rs2_h2_val == -9
// opcode: smslda ; op1:x22; op2:x29; dest:x5; op1val:0x4000efff0000bfff;  op2val:0xfff7fff7ffbf0009
TEST_P64_PNN_OP(smslda, x5, $rd_hi, x22, x29, 0x0000000000000000, $correctval_hi, 0x4000efff0000bfff, 0xfff7fff7ffbf0009, x16, 64, x2)

inst_21:
// rs1==x28, rs2==x26, rs2_h3_val == -5, rs1_h0_val == 128, rs2_h2_val == 2, rs1_h2_val == 256, rs2_h1_val == -2049
// opcode: smslda ; op1:x28; op2:x26; dest:x11; op1val:0xfff6010008000080;  op2val:0xfffb0002f7fffff6
TEST_P64_PNN_OP(smslda, x11, $rd_hi, x28, x26, 0x0000000000000000, $correctval_hi, 0xfff6010008000080, 0xfffb0002f7fffff6, x16, 80, x2)

inst_22:
// rs1==x15, rs2==x24, rs2_h3_val == 16384, rs1_h1_val == 8192, rs2_h0_val == -33, rs1_h0_val == -8193, rs2_h1_val == 64, rs2_h2_val == 21845
// opcode: smslda ; op1:x15; op2:x24; dest:x12; op1val:0x0001dfff2000dfff;  op2val:0x400055550040ffdf
TEST_P64_PNN_OP(smslda, x12, $rd_hi, x15, x24, 0x0000000000000000, $correctval_hi, 0x0001dfff2000dfff, 0x400055550040ffdf, x16, 96, x2)

inst_23:
// rs1==x23, rs2==x30, rs2_h3_val == 8192, rs1_h0_val == -65, rs1_h2_val == -513, rs2_h2_val == 256, rs1_h1_val == -4097
// opcode: smslda ; op1:x23; op2:x30; dest:x31; op1val:0x0006fdffefffffbf;  op2val:0x20000100fffbc000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x23, x30, 0x0000000000000000, $correctval_hi, 0x0006fdffefffffbf, 0x20000100fffbc000, x16, 112, x2)

inst_24:
// rs1==x1, rs2==x12, rs2_h3_val == 4096, rs2_h1_val == 2, rs2_h0_val == -4097, rs1_h2_val == -9, rs1_h3_val == -65
// opcode: smslda ; op1:x1; op2:x12; dest:x14; op1val:0xffbffff7efff0009;  op2val:0x1000fffa0002efff
TEST_P64_PNN_OP(smslda, x14, $rd_hi, x1, x12, 0x0000000000000000, $correctval_hi, 0xffbffff7efff0009, 0x1000fffa0002efff, x16, 128, x2)

inst_25:
// rs1==x25, rs2==x6, rs2_h3_val == 2048, rs2_h2_val == 4096, rs1_h3_val == 4096, rs1_h2_val == 1024, rs2_h1_val == -17
// opcode: smslda ; op1:x25; op2:x6; dest:x5; op1val:0x100004003fffffbf;  op2val:0x08001000ffefffef
TEST_P64_PNN_OP(smslda, x5, $rd_hi, x25, x6, 0x0000000000000000, $correctval_hi, 0x100004003fffffbf, 0x08001000ffefffef, x16, 144, x2)

inst_26:
// rs1==x3, rs2==x17, rs2_h3_val == 1024, rs2_h1_val == 1024, rs1_h1_val == 32, rs1_h2_val == -2049, rs2_h2_val == -513
// opcode: smslda ; op1:x3; op2:x17; dest:x14; op1val:0xffdff7ff00200005;  op2val:0x0400fdff0400fffc
TEST_P64_PNN_OP(smslda, x14, $rd_hi, x3, x17, 0x0000000000000000, $correctval_hi, 0xffdff7ff00200005, 0x0400fdff0400fffc, x16, 160, x2)

inst_27:
// rs1==x5, rs2==x8, rs2_h3_val == 512, rs1_h3_val == 4, rs2_h2_val == -2, rs1_h1_val == 32767, rs1_h0_val == 1, rs1_h2_val == -129
// opcode: smslda ; op1:x5; op2:x8; dest:x25; op1val:0x0004ff7f7fff0001;  op2val:0x0200fffe0003fffc
TEST_P64_PNN_OP(smslda, x25, $rd_hi, x5, x8, 0x0000000000000000, $correctval_hi, 0x0004ff7f7fff0001, 0x0200fffe0003fffc, x16, 176, x2)

inst_28:
// rs1==x18, rs2==x1, rs2_h3_val == 256, rs1_h3_val == -1025, rs1_h2_val == 16384, rs2_h0_val == 21845
// opcode: smslda ; op1:x18; op2:x1; dest:x10; op1val:0xfbff40000006bfff;  op2val:0x0100fdffc0005555
TEST_P64_PNN_OP(smslda, x10, $rd_hi, x18, x1, 0x0000000000000000, $correctval_hi, 0xfbff40000006bfff, 0x0100fdffc0005555, x16, 192, x2)

inst_29:
// rs1==x2, rs2==x5, rs2_h3_val == 128, rs1_h2_val == 16, rs1_h0_val == -1025, rs2_h1_val == -33, rs2_h0_val == -21846
// opcode: smslda ; op1:x2; op2:x5; dest:x22; op1val:0xfffa00107ffffbff;  op2val:0x0080fffaffdfaaaa
TEST_P64_PNN_OP(smslda, x22, $rd_hi, x2, x5, 0x0000000000000000, $correctval_hi, 0xfffa00107ffffbff, 0x0080fffaffdfaaaa, x16, 208, x4)

inst_30:
// rs1==x26, rs2==x19, rs2_h3_val == 64, rs2_h2_val == 16384, rs1_h1_val == -257, rs1_h2_val == 4096, rs2_h1_val == 32767
// opcode: smslda ; op1:x26; op2:x19; dest:x13; op1val:0xfbff1000feffffbf;  op2val:0x004040007fffefff
TEST_P64_PNN_OP(smslda, x13, $rd_hi, x26, x19, 0x0000000000000000, $correctval_hi, 0xfbff1000feffffbf, 0x004040007fffefff, x16, 224, x4)
RVTEST_SIGBASE(x1,signature_x1_2)

inst_31:
// rs1==x11, rs2==x2, rs2_h3_val == 32, 
// opcode: smslda ; op1:x11; op2:x2; dest:x3; op1val:0xfff8fffa40000009;  op2val:0x0020020000021000
TEST_P64_PNN_OP(smslda, x3, $rd_hi, x11, x2, 0x0000000000000000, $correctval_hi, 0xfff8fffa40000009, 0x0020020000021000, x1, 0, x4)

inst_32:
// rs2_h3_val == 16, rs2_h0_val == 32, rs1_h1_val == -9
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0200fffcfff7fff9;  op2val:0x0010dfff00060020
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0200fffcfff7fff9, 0x0010dfff00060020, x1, 16, x4)

inst_33:
// rs2_h3_val == 4, rs2_h0_val == 2048, rs2_h2_val == -257
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0003fdffc000fffc;  op2val:0x0004feffffef0800
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003fdffc000fffc, 0x0004feffffef0800, x1, 32, x4)

inst_34:
// rs2_h3_val == 2, rs1_h1_val == 512, rs2_h2_val == 8, rs1_h3_val == -16385
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xbffffff80200fff9;  op2val:0x00020008fff6ffbf
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbffffff80200fff9, 0x00020008fff6ffbf, x1, 48, x4)

inst_35:
// rs2_h3_val == 1, rs1_h1_val == 128, rs1_h2_val == -1025, rs2_h1_val == 32, rs1_h0_val == 2
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfbff00800002;  op2val:0x000100090020ffdf
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffbfbff00800002, 0x000100090020ffdf, x1, 64, x4)

inst_36:
// rs1_h1_val == -5, rs2_h2_val == 2048, rs2_h1_val == -4097
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0009fffb0001;  op2val:0x00000800efff1000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff0009fffb0001, 0x00000800efff1000, x1, 80, x4)

inst_37:
// rs1_h1_val == -3, rs1_h3_val == 32767, rs2_h0_val == 2, rs1_h0_val == 16384
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0007fffd4000;  op2val:0xfffc0005fffa0002
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x7fff0007fffd4000, 0xfffc0005fffa0002, x1, 96, x4)

inst_38:
// rs1_h1_val == 256, rs2_h1_val == -3
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffdff01000400;  op2val:0xffeffff6fffdf7ff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfbfffdff01000400, 0xffeffff6fffdf7ff, x1, 112, x4)

inst_39:
// rs1_h1_val == 64, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffdffff90040f7ff;  op2val:0xfffe0003fff8fff9
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdffff90040f7ff, 0xfffe0003fff8fff9, x1, 128, x4)

inst_40:
// rs1_h1_val == 16, rs1_h2_val == 2048
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xc000080000108000;  op2val:0xc00020000020aaaa
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xc000080000108000, 0xc00020000020aaaa, x1, 144, x4)

inst_41:
// rs1_h1_val == 8, rs2_h1_val == 16
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x555510000008fdff;  op2val:0x1000aaaa00100005
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x555510000008fdff, 0x1000aaaa00100005, x1, 160, x4)

inst_42:
// rs1_h1_val == 4, rs1_h0_val == 64
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffbf001000040040;  op2val:0x08000200f7fffff9
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf001000040040, 0x08000200f7fffff9, x1, 176, x4)

inst_43:
// rs1_h1_val == 2, rs2_h0_val == 8192, rs2_h1_val == -257, rs1_h0_val == 256
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0005fff900020100;  op2val:0x01003ffffeff2000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0005fff900020100, 0x01003ffffeff2000, x1, 192, x4)

inst_44:
// rs1_h0_val == -21846, rs1_h2_val == -2, rs2_h0_val == 1
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfff9fffe4000aaaa;  op2val:0xfffe0009c0000001
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff9fffe4000aaaa, 0xfffe0009c0000001, x1, 208, x4)

inst_45:
// rs1_h0_val == 21845, rs1_h2_val == 32
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfff7002010005555;  op2val:0x00400010ffdfffef
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff7002010005555, 0x00400010ffdfffef, x1, 224, x4)

inst_46:
// rs1_h0_val == 32767, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0004400000057fff;  op2val:0xfff9ffff00205555
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0004400000057fff, 0xfff9ffff00205555, x1, 240, x4)

inst_47:
// rs1_h0_val == -4097, rs2_h0_val == 64, rs1_h3_val == 256
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x010001000001efff;  op2val:0x04000200fffc0040
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x010001000001efff, 0x04000200fffc0040, x1, 256, x4)

inst_48:
// rs1_h0_val == -129, rs1_h3_val == -3
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffddfff0009ff7f;  op2val:0xaaaa0010f7ff0008
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffddfff0009ff7f, 0xaaaa0010f7ff0008, x1, 272, x4)

inst_49:
// rs1_h0_val == -17, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfff8fff73fffffef;  op2val:0x2000fffe00200006
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff8fff73fffffef, 0x2000fffe00200006, x1, 288, x4)

inst_50:
// rs1_h0_val == -9, rs1_h3_val == 1024, rs2_h0_val == -2, rs2_h1_val == 4096
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0400fff9fffffff7;  op2val:0xffbf00061000fffe
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0400fff9fffffff7, 0xffbf00061000fffe, x1, 304, x4)

inst_51:
// rs1_h0_val == -5, rs2_h3_val == -1, rs2_h0_val == 256
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfff9f7ff3ffffffb;  op2val:0xffff10007fff0100
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff9f7ff3ffffffb, 0xffff10007fff0100, x1, 320, x4)

inst_52:
// rs1_h0_val == -3, rs2_h1_val == 256, rs1_h1_val == -129, rs2_h2_val == -32768
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffaff7ffffd;  op2val:0x0000800001000008
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000fffaff7ffffd, 0x0000800001000008, x1, 336, x4)

inst_53:
// rs1_h0_val == 8192, rs2_h0_val == -8193, rs1_h3_val == -2, rs1_h2_val == 128
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0080fff72000;  op2val:0x7fff0009fffedfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffe0080fff72000, 0x7fff0009fffedfff, x1, 352, x4)

inst_54:
// rs1_h0_val == 4096, rs1_h3_val == 64
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0040fff900401000;  op2val:0x000408000006ffdf
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0040fff900401000, 0x000408000006ffdf, x1, 368, x4)

inst_55:
// rs1_h0_val == 512, rs2_h0_val == -32768, rs1_h3_val == 16, rs2_h1_val == 8
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0010008020000200;  op2val:0x0006000200088000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0010008020000200, 0x0006000200088000, x1, 384, x4)

inst_56:
// rs1_h0_val == 32, rs1_h2_val == 64, rs2_h1_val == 1
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffb004000080020;  op2val:0x0008000100010008
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffb004000080020, 0x0008000100010008, x1, 400, x4)

inst_57:
// rs1_h0_val == 16, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x4000002002000010;  op2val:0x8000000604000040
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x4000002002000010, 0x8000000604000040, x1, 416, x4)

inst_58:
// rs1_h0_val == -1, rs2_h0_val == -9
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x00040040fff8ffff;  op2val:0xfff8fff9fff8fff7
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00040040fff8ffff, 0xfff8fff9fff8fff7, x1, 432, x4)

inst_59:
// rs2_h2_val == 32767, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x3fffefff10000010;  op2val:0x00097fff00010007
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x3fffefff10000010, 0x00097fff00010007, x1, 448, x4)

inst_60:
// rs2_h1_val == 0, rs1_h3_val == 2, rs1_h1_val == -21846
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0002ffdfaaaa0400;  op2val:0xfffc000600000003
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0002ffdfaaaa0400, 0xfffc000600000003, x1, 464, x4)

inst_61:
// rs2_h1_val == -1, rs1_h3_val == -17
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffef00043fff0800;  op2val:0x0020fffffffffffe
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffef00043fff0800, 0x0020fffffffffffe, x1, 480, x4)

inst_62:
// rs2_h0_val == 32767, rs2_h1_val == 21845, rs1_h3_val == 8192
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x200000040800dfff;  op2val:0xffff004055557fff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x200000040800dfff, 0xffff004055557fff, x1, 496, x4)

inst_63:
// rs2_h0_val == -16385, rs1_h2_val == -3
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdc0000002;  op2val:0x040000010010bfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffffffdc0000002, 0x040000010010bfff, x1, 512, x4)

inst_64:
// rs2_h0_val == -1025, rs1_h3_val == 128, rs1_h2_val == 2, rs2_h2_val == 0
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0080000201000000;  op2val:0xffbf00000009fbff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0080000201000000, 0xffbf00000009fbff, x1, 528, x4)

inst_65:
// rs2_h0_val == -257, rs2_h2_val == -129
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x20008000fefffff7;  op2val:0xfff8ff7f7ffffeff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x20008000fefffff7, 0xfff8ff7f7ffffeff, x1, 544, x4)

inst_66:
// rs2_h0_val == -5, rs2_h2_val == 4
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffc000655550004;  op2val:0xfffb0004fff7fffb
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffc000655550004, 0xfffb0004fff7fffb, x1, 560, x4)

inst_67:
// rs2_h0_val == 16384, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffdfefffff70006;  op2val:0x80005555fffa4000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffdfefffff70006, 0x80005555fffa4000, x1, 576, x4)

inst_68:
// rs2_h0_val == 1024, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfbff00008000;  op2val:0x55550007ffbf0400
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffbfbff00008000, 0x55550007ffbf0400, x1, 592, x4)

inst_69:
// rs2_h0_val == 512, rs2_h2_val == -5
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x000600020007ffdf;  op2val:0xc000fffb00000200
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000600020007ffdf, 0xc000fffb00000200, x1, 608, x4)

inst_70:
// rs2_h0_val == 4, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0005ff7ffff73fff;  op2val:0x0200400008000004
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0005ff7ffff73fff, 0x0200400008000004, x1, 624, x4)

inst_71:
// rs1_h3_val == -8193, rs1_h2_val == -21846
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xdfffaaaa02000001;  op2val:0xc000fffebfff0005
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xdfffaaaa02000001, 0xc000fffebfff0005, x1, 640, x4)

inst_72:
// rs1_h3_val == -4097, rs1_h1_val == -1025
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xefff0400fbff0080;  op2val:0x0040fff60009ffff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xefff0400fbff0080, 0x0040fff60009ffff, x1, 656, x4)

inst_73:
// rs1_h3_val == -2049, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffff81000bfff;  op2val:0x04000006fff80800
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7fffff81000bfff, 0x04000006fff80800, x1, 672, x4)

inst_74:
// rs1_h3_val == -513, rs1_h2_val == -65, rs1_h1_val == -2049
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffbff7ff0005;  op2val:0xfffa0005ffbffffd
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfdffffbff7ff0005, 0xfffa0005ffbffffd, x1, 688, x4)

inst_75:
// rs1_h3_val == -257, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfeffc000fff9aaaa;  op2val:0xdfff0020fffc5555
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfeffc000fff9aaaa, 0xdfff0020fffc5555, x1, 704, x4)

inst_76:
// rs2_h2_val == -16385, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x000900200080ffff;  op2val:0x5555bffffffebfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000900200080ffff, 0x5555bffffffebfff, x1, 720, x4)

inst_77:
// rs2_h2_val == -4097, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff600030000;  op2val:0x0100effffeffdfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffffff600030000, 0x0100effffeffdfff, x1, 736, x4)

inst_78:
// rs2_h2_val == -2049, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffcfff6fff60020;  op2val:0x0200f7fffffdfff6
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffcfff6fff60020, 0x0200f7fffffdfff6, x1, 752, x4)

inst_79:
// rs2_h2_val == -1025, rs1_h1_val == -8193, rs2_h1_val == 8192, rs1_h2_val == 1
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x20000001dffffffc;  op2val:0xfff7fbff20007fff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x20000001dffffffc, 0xfff7fbff20007fff, x1, 768, x4)

inst_80:
// rs1_h3_val == 32, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x002000040002fff6;  op2val:0xfffd080000075555
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x002000040002fff6, 0xfffd080000075555, x1, 784, x4)

inst_81:
// rs1_h3_val == 8, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0008000100080009;  op2val:0xf7fffdfffffc0005
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0008000100080009, 0xf7fffdfffffc0005, x1, 800, x4)

inst_82:
// rs2_h2_val == -65, rs2_h1_val == -21846, rs1_h2_val == 21845
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0100555502000001;  op2val:0x4000ffbfaaaabfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0100555502000001, 0x4000ffbfaaaabfff, x1, 816, x4)

inst_83:
// rs2_h2_val == -33, rs1_h2_val == -5
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xeffffffb0800fffe;  op2val:0xbfffffdfffdffffb
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xeffffffb0800fffe, 0xbfffffdfffdffffb, x1, 832, x4)

inst_84:
// rs2_h2_val == -17, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0003010000070005;  op2val:0x0004ffeffffbfffe
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003010000070005, 0x0004ffeffffbfffe, x1, 848, x4)

inst_85:
// rs2_h1_val == -8193, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0000fff7ff7f0005;  op2val:0xfffd0009dfffc000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0000fff7ff7f0005, 0xfffd0009dfffc000, x1, 864, x4)

inst_86:
// rs2_h1_val == -1025, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0100200020000080;  op2val:0xfffc0009fbff0800
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0100200020000080, 0xfffc0009fbff0800, x1, 880, x4)

inst_87:
// rs2_h1_val == -513, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x000200012000c000;  op2val:0xfffe0400fdff0000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000200012000c000, 0xfffe0400fdff0000, x1, 896, x4)

inst_88:
// rs2_h1_val == -129, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xdfff80000010ffff;  op2val:0x0005bfffff7ffff6
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xdfff80000010ffff, 0x0005bfffff7ffff6, x1, 912, x4)

inst_89:
// rs1_h2_val == 8, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x02000008fff60400;  op2val:0xfdff000100077fff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x02000008fff60400, 0xfdff000100077fff, x1, 928, x4)

inst_90:
// rs2_h1_val == 128, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x1000080000090000;  op2val:0xfffabfff00804000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000080000090000, 0xfffabfff00804000, x1, 944, x4)

inst_91:
// rs1_h2_val == 32767, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffd7fff0010ffdf;  op2val:0xffff000100010007
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffd7fff0010ffdf, 0xffff000100010007, x1, 960, x4)

inst_92:
// rs1_h2_val == -16385, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x0020bfffaaaafffd;  op2val:0x3fffffbf0003bfff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0020bfffaaaafffd, 0x3fffffbf0003bfff, x1, 976, x4)

inst_93:
// rs1_h2_val == -1, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffffffeaaaa;  op2val:0x5555ffdf7fffffef
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdffffffffeaaaa, 0x5555ffdf7fffffef, x1, 992, x4)

inst_94:
// rs1_h1_val == -16385, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0800bfffffef;  op2val:0xfffc0003bfff0005
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf0800bfffffef, 0xfffc0003bfff0005, x1, 1008, x4)

inst_95:
// rs2_h2_val == 128, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffdff7ff0400ffbf;  op2val:0x00050080ffbf0400
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdff7ff0400ffbf, 0x00050080ffbf0400, x1, 1024, x4)

inst_96:
// rs1_h1_val == -513, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x04000008fdff0080;  op2val:0x000810008000fff8
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x04000008fdff0080, 0x000810008000fff8, x1, 1040, x4)

inst_97:
// rs1_h3_val == -32768, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x8000fff7bfffffef;  op2val:0xfff6f7fffff90080
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x8000fff7bfffffef, 0xfff6f7fffff90080, x1, 1056, x4)

inst_98:
// rs1_h1_val == -33, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xffff1000ffdffff9;  op2val:0xffff3fffaaaafeff
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffff1000ffdffff9, 0xffff3fffaaaafeff, x1, 1072, x4)

inst_99:
// rs1_h1_val == -17, 
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0010ffef5555;  op2val:0x55550007fffe0000
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffd0010ffef5555, 0x55550007fffe0000, x1, 1088, x4)

inst_100:
// rs1_h2_val == rs2_h2_val, rs2_h1_val == 4, rs2_h2_val == 8192, rs2_h0_val == -17, rs1_h3_val == -129, rs1_h0_val == -16385, rs2_h3_val == -4097
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0xff7f20000009bfff;  op2val:0xefff20000004ffef
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xff7f20000009bfff, 0xefff20000004ffef, x1, 1104, x4)

inst_101:
// rs2_h3_val == -65, rs2_h2_val == 1, rs2_h0_val == -129
// opcode: smslda ; op1:x30; op2:x29; dest:x31; op1val:0x3fff000355550800;  op2val:0xffbf0001fffcff7f
TEST_P64_PNN_OP(smslda, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x3fff000355550800, 0xffbf0001fffcff7f, x1, 1120, x4)
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
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x16_0:
    .fill 30*(XLEN/32),4,0xdeadbeef


signature_x1_2:
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
