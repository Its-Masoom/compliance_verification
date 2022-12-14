
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
// This assembly file tests the srl16 instruction of the RISC-V RV64PZicsr extension for the srl16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",srl16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:
// rs1 == rd != rs2, rs1==x12, rs2==x9, rd==x12, rs2_val == 5, rs1_h0_val == 63487, rs1_h2_val == 8, rs1_h1_val == 65519
// opcode: srl16 ; op1:x12; op2:x9; dest:x12; op1val:0x0a0008ffeff7ff;  op2val:0x5
TEST_RR_OP(srl16, x12, x12, x9, 0x0000000000000000, 0x0a0008ffeff7ff, 0x5, x5, 0, x13)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x25, rd==x29, rs2_val == 7, rs1_h3_val == 43690, rs1_h2_val == 16, rs1_h1_val == 61439
// opcode: srl16 ; op1:x24; op2:x25; dest:x29; op1val:0xaaaa0010efff0013;  op2val:0x7
TEST_RR_OP(srl16, x29, x24, x25, 0x0000000000000000, 0xaaaa0010efff0013, 0x7, x5, 8, x13)

inst_2:
// rs1 == rs2 != rd, rs1==x28, rs2==x28, rd==x27, rs2_val == 11, rs1_h2_val == 0, rs1_h3_val == 65534
// opcode: srl16 ; op1:x28; op2:x28; dest:x27; op1val:0xfffe0000ffef000a;  op2val:0xb
TEST_RR_OP(srl16, x27, x28, x28, 0x0000000000000000, 0xfffe0000ffef000a, 0xb, x5, 16, x13)

inst_3:
// rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs2_val == 13, rs1_h3_val == 16
// opcode: srl16 ; op1:x19; op2:x19; dest:x19; op1val:0x100000000f0006;  op2val:0xd
TEST_RR_OP(srl16, x19, x19, x19, 0x0000000000000000, 0x100000000f0006, 0xd, x5, 24, x13)

inst_4:
// rs2 == rd != rs1, rs1==x21, rs2==x0, rd==x0, rs2_val == 14, rs1_h2_val == 61439, rs1_h3_val == 32768, rs1_h0_val == 21845
// opcode: srl16 ; op1:x21; op2:x0; dest:x0; op1val:0x8000efff000e5555;  op2val:0x0
TEST_RR_OP(srl16, x0, x21, x0, 0x0000000000000000, 0x8000efff000e5555, 0x0, x5, 32, x13)

inst_5:
// rs1==x4, rs2==x21, rd==x1, rs2_val == 8, rs1_h3_val == 63487
// opcode: srl16 ; op1:x4; op2:x21; dest:x1; op1val:0xf7ff0006000f000d;  op2val:0x8
TEST_RR_OP(srl16, x1, x4, x21, 0x0000000000000000, 0xf7ff0006000f000d, 0x8, x5, 40, x13)

inst_6:
// rs1==x20, rs2==x2, rd==x28, rs2_val == 4, rs1_h3_val == 512, rs1_h1_val == 2
// opcode: srl16 ; op1:x20; op2:x2; dest:x28; op1val:0x200000b0002000d;  op2val:0x4
TEST_RR_OP(srl16, x28, x20, x2, 0x0000000000000000, 0x200000b0002000d, 0x4, x5, 48, x13)

inst_7:
// rs1==x3, rs2==x10, rd==x20, rs2_val == 2, rs1_h0_val == 49151
// opcode: srl16 ; op1:x3; op2:x10; dest:x20; op1val:0x0500100013bfff;  op2val:0x2
TEST_RR_OP(srl16, x20, x3, x10, 0x0000000000000000, 0x0500100013bfff, 0x2, x5, 56, x13)

inst_8:
// rs1==x14, rs2==x22, rd==x16, rs2_val == 1, rs1_h1_val == 64, rs1_h0_val == 32768
// opcode: srl16 ; op1:x14; op2:x22; dest:x16; op1val:0x05000300408000;  op2val:0x1
TEST_RR_OP(srl16, x16, x14, x22, 0x0000000000000000, 0x05000300408000, 0x1, x5, 64, x13)

inst_9:
// rs1==x23, rs2==x27, rd==x4, rs1_h3_val == 21845, rs1_h1_val == 8192, rs1_h0_val == 65533
// opcode: srl16 ; op1:x23; op2:x27; dest:x4; op1val:0x5555000b2000fffd;  op2val:0x12
TEST_RR_OP(srl16, x4, x23, x27, 0x0000000000000000, 0x5555000b2000fffd, 0x12, x5, 72, x13)

inst_10:
// rs1==x6, rs2==x11, rd==x15, rs1_h3_val == 32767, rs1_h1_val == 32767
// opcode: srl16 ; op1:x6; op2:x11; dest:x15; op1val:0x7fff000e7fff000b;  op2val:0x10
TEST_RR_OP(srl16, x15, x6, x11, 0x0000000000000000, 0x7fff000e7fff000b, 0x10, x5, 80, x13)

inst_11:
// rs1==x9, rs2==x18, rd==x7, rs1_h3_val == 49151, rs1_h1_val == 65279, rs1_h2_val == 64511, rs1_h0_val == 4096
// opcode: srl16 ; op1:x9; op2:x18; dest:x7; op1val:0xbffffbfffeff1000;  op2val:0xd
TEST_RR_OP(srl16, x7, x9, x18, 0x0000000000000000, 0xbffffbfffeff1000, 0xd, x5, 88, x13)

inst_12:
// rs1==x16, rs2==x15, rd==x23, rs1_h3_val == 57343, rs1_h0_val == 57343, rs1_h1_val == 16
// opcode: srl16 ; op1:x16; op2:x15; dest:x23; op1val:0xdfff00080010dfff;  op2val:0x10
TEST_RR_OP(srl16, x23, x16, x15, 0x0000000000000000, 0xdfff00080010dfff, 0x10, x5, 96, x13)

inst_13:
// rs1==x17, rs2==x7, rd==x22, rs1_h3_val == 61439, rs1_h1_val == 4, rs1_h0_val == 43690
// opcode: srl16 ; op1:x17; op2:x7; dest:x22; op1val:0xefff000d0004aaaa;  op2val:0xe
TEST_RR_OP(srl16, x22, x17, x7, 0x0000000000000000, 0xefff000d0004aaaa, 0xe, x5, 104, x13)

inst_14:
// rs1==x0, rs2==x23, rd==x8, rs1_h3_val == 64511, rs1_h0_val == 1024, rs1_h1_val == 49151, rs1_h2_val == 65535
// opcode: srl16 ; op1:x0; op2:x23; dest:x8; op1val:0xfbffffffbfff0400;  op2val:0xe
TEST_RR_OP(srl16, x8, x0, x23, 0x0000000000000000, 0xfbffffffbfff0400, 0xe, x5, 112, x13)

inst_15:
// rs1==x22, rs2==x17, rd==x30, rs1_h3_val == 65023, rs1_h0_val == 65527, rs1_h1_val == 16384, rs1_h2_val == 65023
// opcode: srl16 ; op1:x22; op2:x17; dest:x30; op1val:0xfdfffdff4000fff7;  op2val:0x9
TEST_RR_OP(srl16, x30, x22, x17, 0x0000000000000000, 0xfdfffdff4000fff7, 0x9, x5, 120, x6)
RVTEST_SIGBASE(x19,signature_x19_0)

inst_16:
// rs1==x10, rs2==x3, rd==x11, rs1_h3_val == 65279, rs1_h0_val == 16
// opcode: srl16 ; op1:x10; op2:x3; dest:x11; op1val:0xfeff000f00060010;  op2val:0x1
TEST_RR_OP(srl16, x11, x10, x3, 0x0000000000000000, 0xfeff000f00060010, 0x1, x19, 0, x6)

inst_17:
// rs1==x15, rs2==x30, rd==x26, rs1_h3_val == 65407, rs2_val == 10, rs1_h2_val == 65279
// opcode: srl16 ; op1:x15; op2:x30; dest:x26; op1val:0xff7ffeff000bdfff;  op2val:0xa
TEST_RR_OP(srl16, x26, x15, x30, 0x0000000000000000, 0xff7ffeff000bdfff, 0xa, x19, 8, x6)

inst_18:
// rs1==x2, rs2==x1, rd==x13, rs1_h3_val == 65471, rs1_h0_val == 2048, rs1_h2_val == 128
// opcode: srl16 ; op1:x2; op2:x1; dest:x13; op1val:0xffbf008000040800;  op2val:0x1
TEST_RR_OP(srl16, x13, x2, x1, 0x0000000000000000, 0xffbf008000040800, 0x1, x19, 16, x6)

inst_19:
// rs1==x27, rs2==x31, rd==x17, rs1_h3_val == 65503, rs1_h0_val == 512, rs1_h2_val == 256
// opcode: srl16 ; op1:x27; op2:x31; dest:x17; op1val:0xffdf0100000d0200;  op2val:0x3
TEST_RR_OP(srl16, x17, x27, x31, 0x0000000000000000, 0xffdf0100000d0200, 0x3, x19, 24, x6)

inst_20:
// rs1==x29, rs2==x14, rd==x10, rs1_h3_val == 65519, rs1_h0_val == 61439, rs1_h1_val == 32768
// opcode: srl16 ; op1:x29; op2:x14; dest:x10; op1val:0xffef000d8000efff;  op2val:0xc
TEST_RR_OP(srl16, x10, x29, x14, 0x0000000000000000, 0xffef000d8000efff, 0xc, x19, 32, x6)

inst_21:
// rs1==x11, rs2==x16, rd==x2, rs1_h3_val == 65527, rs1_h1_val == 65533, rs1_h0_val == 65023
// opcode: srl16 ; op1:x11; op2:x16; dest:x2; op1val:0xfff70011fffdfdff;  op2val:0xf
TEST_RR_OP(srl16, x2, x11, x16, 0x0000000000000000, 0xfff70011fffdfdff, 0xf, x19, 40, x6)

inst_22:
// rs1==x13, rs2==x20, rd==x24, rs1_h3_val == 65531, rs1_h1_val == 128
// opcode: srl16 ; op1:x13; op2:x20; dest:x24; op1val:0xfffb00090080000d;  op2val:0xb
TEST_RR_OP(srl16, x24, x13, x20, 0x0000000000000000, 0xfffb00090080000d, 0xb, x19, 48, x6)

inst_23:
// rs1==x7, rs2==x26, rd==x21, rs1_h3_val == 65533, rs1_h2_val == 8192, rs1_h0_val == 32767
// opcode: srl16 ; op1:x7; op2:x26; dest:x21; op1val:0xfffd200080007fff;  op2val:0x11
TEST_RR_OP(srl16, x21, x7, x26, 0x0000000000000000, 0xfffd200080007fff, 0x11, x19, 56, x6)

inst_24:
// rs1==x18, rs2==x4, rd==x9, rs1_h3_val == 16384, rs1_h2_val == 1024
// opcode: srl16 ; op1:x18; op2:x4; dest:x9; op1val:0x400004000009fdff;  op2val:0xb
TEST_RR_OP(srl16, x9, x18, x4, 0x0000000000000000, 0x400004000009fdff, 0xb, x19, 64, x6)

inst_25:
// rs1==x25, rs2==x13, rd==x31, rs1_h3_val == 8192, rs1_h0_val == 8
// opcode: srl16 ; op1:x25; op2:x13; dest:x31; op1val:0x2000feff00090008;  op2val:0xe
TEST_RR_OP(srl16, x31, x25, x13, 0x0000000000000000, 0x2000feff00090008, 0xe, x19, 72, x6)

inst_26:
// rs1==x31, rs2==x8, rd==x3, rs1_h3_val == 4096, rs1_h1_val == 0
// opcode: srl16 ; op1:x31; op2:x8; dest:x3; op1val:0x1000001100000012;  op2val:0x1
TEST_RR_OP(srl16, x3, x31, x8, 0x0000000000000000, 0x1000001100000012, 0x1, x19, 80, x6)

inst_27:
// rs1==x8, rs2==x29, rd==x5, rs1_h3_val == 2048, rs1_h1_val == 65534
// opcode: srl16 ; op1:x8; op2:x29; dest:x5; op1val:0x8000005fffe0009;  op2val:0xb
TEST_RR_OP(srl16, x5, x8, x29, 0x0000000000000000, 0x8000005fffe0009, 0xb, x19, 88, x2)

inst_28:
// rs1==x1, rs2==x24, rd==x6, rs1_h3_val == 1024, rs1_h2_val == 16384, rs1_h1_val == 65023
// opcode: srl16 ; op1:x1; op2:x24; dest:x6; op1val:0x4004000fdff0006;  op2val:0x0
TEST_RR_OP(srl16, x6, x1, x24, 0x0000000000000000, 0x4004000fdff0006, 0x0, x19, 96, x2)

inst_29:
// rs1==x5, rs2==x6, rd==x18, rs1_h3_val == 256, rs1_h2_val == 49151
// opcode: srl16 ; op1:x5; op2:x6; dest:x18; op1val:0x100bffffffedfff;  op2val:0xb
TEST_RR_OP(srl16, x18, x5, x6, 0x0000000000000000, 0x100bffffffedfff, 0xb, x19, 104, x2)

inst_30:
// rs1==x26, rs2==x12, rd==x25, rs1_h3_val == 128, rs1_h0_val == 65531
// opcode: srl16 ; op1:x26; op2:x12; dest:x25; op1val:0x80000ceffffffb;  op2val:0x12
TEST_RR_OP(srl16, x25, x26, x12, 0x0000000000000000, 0x80000ceffffffb, 0x12, x19, 112, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_31:
// rs1==x30, rs2==x5, rd==x14, rs1_h3_val == 64, rs1_h2_val == 65533
// opcode: srl16 ; op1:x30; op2:x5; dest:x14; op1val:0x40fffd40000013;  op2val:0x2
TEST_RR_OP(srl16, x14, x30, x5, 0x0000000000000000, 0x40fffd40000013, 0x2, x1, 0, x2)

inst_32:
// rs1_h3_val == 32, rs1_h2_val == 512
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x20020000407fff;  op2val:0xe
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x20020000407fff, 0xe, x1, 8, x2)

inst_33:
// rs1_h3_val == 8, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x08fffffffdfdff;  op2val:0xb
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x08fffffffdfdff, 0xb, x1, 16, x2)

inst_34:
// rs1_h0_val == 65471, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0400000cffbf;  op2val:0x8
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xffbf0400000cffbf, 0x8, x1, 24, x2)

inst_35:
// rs1_h0_val == 65503, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000100003ffdf;  op2val:0x4
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x4000100003ffdf, 0x4, x1, 32, x2)

inst_36:
// rs1_h0_val == 65519, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555ffffbfffffef;  op2val:0x5
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x5555ffffbfffffef, 0x5, x1, 40, x2)

inst_37:
// rs1_h0_val == 65534, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x204000000cfffe;  op2val:0xd
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x204000000cfffe, 0xd, x1, 48, x2)

inst_38:
// rs1_h0_val == 16384, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe001000034000;  op2val:0x9
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffe001000034000, 0x9, x1, 56, x2)

inst_39:
// rs1_h0_val == 8192, rs1_h2_val == 65531
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x7ffffffb00062000;  op2val:0x8
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x7ffffffb00062000, 0x8, x1, 64, x2)

inst_40:
// rs1_h0_val == 256, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0080fffe0100;  op2val:0x8
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xbfff0080fffe0100, 0x8, x1, 72, x2)

inst_41:
// rs1_h0_val == 128, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffff7fff0080;  op2val:0x12
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffeffff7fff0080, 0x12, x1, 80, x2)

inst_42:
// rs1_h0_val == 64, rs1_h1_val == 57343
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x400400dfff0040;  op2val:0xf
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x400400dfff0040, 0xf, x1, 88, x2)

inst_43:
// rs1_h0_val == 32, rs1_h1_val == 1024
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x08020004000020;  op2val:0x12
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x08020004000020, 0x12, x1, 96, x2)

inst_44:
// rs1_h0_val == 4, rs1_h1_val == 43690
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffffbaaaa0004;  op2val:0x1
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xffeffffbaaaa0004, 0x1, x1, 104, x2)

inst_45:
// rs1_h0_val == 2, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfbfffffe0002;  op2val:0x1
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffbfbfffffe0002, 0x1, x1, 112, x2)

inst_46:
// rs1_h0_val == 1, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb000b000a0001;  op2val:0x0
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffb000b000a0001, 0x0, x1, 120, x2)

inst_47:
// rs1_h0_val == 65535, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x1300098000ffff;  op2val:0x10
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x1300098000ffff, 0x10, x1, 128, x2)

inst_48:
// rs1_h0_val == 0, rs1_h1_val == 32
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x09001000200000;  op2val:0x5
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x09001000200000, 0x5, x1, 136, x2)

inst_49:
// rs1_h3_val == 4, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0420000002ffef;  op2val:0xb
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0420000002ffef, 0xb, x1, 144, x2)

inst_50:
// rs1_h3_val == 2, rs1_h2_val == 43690, rs1_h1_val == 2048
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x02aaaa08000000;  op2val:0x10
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x02aaaa08000000, 0x10, x1, 152, x2)

inst_51:
// rs1_h3_val == 1, rs1_h1_val == 21845
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x01000d55550004;  op2val:0xd
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x01000d55550004, 0xd, x1, 160, x2)

inst_52:
// rs1_h3_val == 65535, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff0011000a;  op2val:0xd
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xffffffff0011000a, 0xd, x1, 168, x2)

inst_53:
// rs1_h3_val == 0, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fbffaaaa2000;  op2val:0xd
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x00fbffaaaa2000, 0xd, x1, 176, x2)

inst_54:
// rs1_h2_val == 21845, rs1_h0_val == 64511
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf55550004fbff;  op2val:0xe
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xffdf55550004fbff, 0xe, x1, 184, x2)

inst_55:
// rs1_h2_val == 32767, rs1_h1_val == 65503
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x087fffffdffffd;  op2val:0x6
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x087fffffdffffd, 0x6, x1, 192, x2)

inst_56:
// rs1_h2_val == 4096, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0910004000fff7;  op2val:0x5
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0910004000fff7, 0x5, x1, 200, x2)

inst_57:
// rs1_h2_val == 2048, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0c080000090010;  op2val:0x8
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0c080000090010, 0x8, x1, 208, x2)

inst_58:
// rs1_h2_val == 64, rs1_h1_val == 512
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x800000400200000d;  op2val:0x1
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x800000400200000d, 0x1, x1, 216, x2)

inst_59:
// rs1_h2_val == 32, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0300200005ffef;  op2val:0x11
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0300200005ffef, 0x11, x1, 224, x2)

inst_60:
// rs1_h2_val == 4, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa000400020400;  op2val:0xf
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xaaaa000400020400, 0xf, x1, 232, x2)

inst_61:
// rs1_h2_val == 2, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555000240000020;  op2val:0x0
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x5555000240000020, 0x0, x1, 240, x2)

inst_62:
// rs1_h2_val == 1, rs1_h1_val == 64511
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x400001fbffffbf;  op2val:0x6
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x400001fbffffbf, 0x6, x1, 248, x2)

inst_63:
// rs1_h1_val == 63487, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x050400f7ff0011;  op2val:0xc
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x050400f7ff0011, 0xc, x1, 256, x2)

inst_64:
// rs1_h1_val == 65407, rs1_h0_val == 65407
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x40fdffff7fff7f;  op2val:0x1
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x40fdffff7fff7f, 0x1, x1, 264, x2)

inst_65:
// rs1_h2_val == 65534, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x10fffefeff0007;  op2val:0x9
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x10fffefeff0007, 0x9, x1, 272, x2)

inst_66:
// rs1_h1_val == 65471, rs1_h2_val == 65503
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x100ffdfffbfffff;  op2val:0xe
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x100ffdfffbfffff, 0xe, x1, 280, x2)

inst_67:
// rs1_h1_val == 65527, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff0080fff7f7ff;  op2val:0xd
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfdff0080fff7f7ff, 0xd, x1, 288, x2)

inst_68:
// rs1_h1_val == 65531, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000200fffb0200;  op2val:0x3
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x20000200fffb0200, 0x3, x1, 296, x2)

inst_69:
// rs1_h1_val == 4096, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200061000000c;  op2val:0x7
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0200061000000c, 0x7, x1, 304, x2)

inst_70:
// rs1_h1_val == 256, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0d00070100000c;  op2val:0xa
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0d00070100000c, 0xa, x1, 312, x2)

inst_71:
// rs1_h1_val == 8, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x06010000080005;  op2val:0xf
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x06010000080005, 0xf, x1, 320, x2)

inst_72:
// rs1_h2_val == 57343, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbdfff00130002;  op2val:0x13
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffbdfff00130002, 0x13, x1, 328, x2)

inst_73:
// rs1_h1_val == 1, rs1_h2_val == 65527, rs1_h0_val == 65279
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x11fff70001feff;  op2val:0x3
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x11fff70001feff, 0x3, x1, 336, x2)

inst_74:
// rs1_h1_val == 65535, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafbffffff000f;  op2val:0x6
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xaaaafbffffff000f, 0x6, x1, 344, x2)

inst_75:
// rs1_h2_val == 63487, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x40f7fffffe0002;  op2val:0x13
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x40f7fffffe0002, 0x13, x1, 352, x2)

inst_76:
// rs1_h2_val == 65471, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x08ffbff7ffff7f;  op2val:0xb
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x08ffbff7ffff7f, 0xb, x1, 360, x2)

inst_77:
// rs1_h2_val == 65519, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000ffef0003f7ff;  op2val:0x8
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x8000ffef0003f7ff, 0x8, x1, 368, x2)

inst_78:
// rs1_h2_val == 32768, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x0680002000000e;  op2val:0x2
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x0680002000000e, 0x2, x1, 376, x2)

inst_79:
// rs1_h2_val == 65407, 
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7fff7f000e0100;  op2val:0xa
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xff7fff7f000e0100, 0xa, x1, 384, x2)

inst_80:
// rs2_val == 11, rs1_h2_val == 0, rs1_h3_val == 65534
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0000ffef000a;  op2val:0xb
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfffe0000ffef000a, 0xb, x1, 392, x2)

inst_81:
// rs2_val == 14, rs1_h2_val == 61439, rs1_h3_val == 32768, rs1_h0_val == 21845
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000efff000e5555;  op2val:0xe
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0x8000efff000e5555, 0xe, x1, 400, x2)

inst_82:
// rs1_h3_val == 64511, rs1_h0_val == 1024, rs1_h1_val == 49151, rs1_h2_val == 65535
// opcode: srl16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffffbfff0400;  op2val:0xe
TEST_RR_OP(srl16, x31, x30, x29, 0x0000000000000000, 0xfbffffffbfff0400, 0xe, x1, 408, x2)
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
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x19_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 52*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
