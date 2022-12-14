
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
// This assembly file tests the umulx16 instruction of the RISC-V RV64PZicsr extension for the umulx16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",umulx16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 == rd != rs2, rs1==x20, rs2==x14, rd==x20, rs1_h0_val == 0, rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h1_val == 1, rs2_h0_val == 43690, rs1_h1_val == 8192, rs2_h2_val == 65533
// opcode: umulx16 ; op1:x20; op2:x14; dest:x20; op1val:0x000f000920000000;  op2val:0x0005fffd0001aaaa
TEST_P64_PNN_OP(umulx16, x20, $rd_hi, x20, x14, 0x0000000000000000, $correctval_hi, 0x000f000920000000, 0x0005fffd0001aaaa, x1, 0, x17)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x15, rs2==x5, rd==x30, rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h1_val == 32767, rs2_h3_val == 64, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h2_val == 65471, rs1_h3_val == 64, rs1_h0_val == 65531
// opcode: umulx16 ; op1:x15; op2:x5; dest:x30; op1val:0x0040ffbf7ffffffb;  op2val:0x0040000e00060009
TEST_P64_PNN_OP(umulx16, x30, $rd_hi, x15, x5, 0x0000000000000000, $correctval_hi, 0x0040ffbf7ffffffb, 0x0040000e00060009, x1, 16, x17)

inst_2:
// rs1 == rs2 != rd, rs1==x31, rs2==x31, rd==x18, rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h2_val == 65471, rs2_h3_val == 43690, rs1_h3_val == 21845, rs1_h1_val == 21845
// opcode: umulx16 ; op1:x31; op2:x31; dest:x18; op1val:0x5555ffbf5555000e;  op2val:0xaaaaffbf00060005
TEST_P64_PNN_OP(umulx16, x18, $rd_hi, x31, x31, 0x0000000000000000, $correctval_hi, 0x5555ffbf5555000e, 0xaaaaffbf00060005, x1, 32, x17)

inst_3:
// rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h0_val == 65503, rs2_h3_val == 16, rs1_h0_val == 65023, rs1_h2_val == 16384, rs2_h2_val == 65527
// opcode: umulx16 ; op1:x12; op2:x12; dest:x12; op1val:0x000d40000013fdff;  op2val:0x0010fff70013ffdf
TEST_P64_PNN_OP(umulx16, x12, $rd_hi, x12, x12, 0x0000000000000000, $correctval_hi, 0x000d40000013fdff, 0x0010fff70013ffdf, x1, 48, x17)

inst_4:
// rs2 == rd != rs1, rs1==x0, rs2==x22, rd==x22, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h2_val == 63487, rs1_h3_val == 57343, rs2_h1_val == 16, rs2_h3_val == 63487
// opcode: umulx16 ; op1:x0; op2:x22; dest:x22; op1val:0xdffff7ff000b0007;  op2val:0xf7ff000e00100007
TEST_P64_PNN_OP(umulx16, x22, $rd_hi, x0, x22, 0x0000000000000000, $correctval_hi, 0xdffff7ff000b0007, 0xf7ff000e00100007, x1, 64, x17)

inst_5:
// rs1==x4, rs2==x20, rd==x2, rs2_h3_val == 21845, rs2_h2_val == 512, rs1_h1_val == 65279, rs1_h2_val == 4096, rs2_h0_val == 2, rs1_h0_val == 2048, rs1_h3_val == 49151
// opcode: umulx16 ; op1:x4; op2:x20; dest:x2; op1val:0xbfff1000feff0800;  op2val:0x5555020000070002
TEST_P64_PNN_OP(umulx16, x2, $rd_hi, x4, x20, 0x0000000000000000, $correctval_hi, 0xbfff1000feff0800, 0x5555020000070002, x1, 80, x17)

inst_6:
// rs1==x7, rs2==x3, rd==x16, rs2_h3_val == 32767, rs1_h3_val == 64511, rs2_h2_val == 8192, rs1_h0_val == 43690, rs2_h1_val == 256, rs1_h1_val == 65407, rs2_h0_val == 128, rs1_h2_val == 2
// opcode: umulx16 ; op1:x7; op2:x3; dest:x16; op1val:0xfbff0002ff7faaaa;  op2val:0x7fff200001000080
TEST_P64_PNN_OP(umulx16, x16, $rd_hi, x7, x3, 0x0000000000000000, $correctval_hi, 0xfbff0002ff7faaaa, 0x7fff200001000080, x1, 96, x17)

inst_7:
// rs1==x2, rs2==x25, rd==x24, rs2_h3_val == 49151, rs1_h3_val == 43690, rs1_h2_val == 2048, rs2_h2_val == 21845, rs2_h0_val == 65407
// opcode: umulx16 ; op1:x2; op2:x25; dest:x24; op1val:0xaaaa080055550011;  op2val:0xbfff55550100ff7f
TEST_P64_PNN_OP(umulx16, x24, $rd_hi, x2, x25, 0x0000000000000000, $correctval_hi, 0xaaaa080055550011, 0xbfff55550100ff7f, x1, 112, x17)

inst_8:
// rs1==x13, rs2==x18, rd==x26, rs2_h3_val == 57343, rs2_h1_val == 65533, rs1_h1_val == 43690, rs1_h3_val == 65471, rs1_h2_val == 65279, rs2_h0_val == 32768, rs1_h0_val == 21845, rs2_h2_val == 63487
// opcode: umulx16 ; op1:x13; op2:x18; dest:x26; op1val:0xffbffeffaaaa5555;  op2val:0xdffff7fffffd8000
TEST_P64_PNN_OP(umulx16, x26, $rd_hi, x13, x18, 0x0000000000000000, $correctval_hi, 0xffbffeffaaaa5555, 0xdffff7fffffd8000, x1, 128, x17)

inst_9:
// rs1==x30, rs2==x29, rd==x10, rs2_h3_val == 61439, rs2_h2_val == 4096, rs1_h3_val == 16384, rs1_h2_val == 65535
// opcode: umulx16 ; op1:x30; op2:x29; dest:x10; op1val:0x4000ffff000b000e;  op2val:0xefff100000120009
TEST_P64_PNN_OP(umulx16, x10, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x4000ffff000b000e, 0xefff100000120009, x1, 144, x17)

inst_10:
// rs1==x19, rs2==x24, rd==x8, rs2_h3_val == 64511, rs1_h3_val == 65531, rs1_h0_val == 16, rs1_h1_val == 2048
// opcode: umulx16 ; op1:x19; op2:x24; dest:x8; op1val:0xfffb000c08000010;  op2val:0xfbff000f0005aaaa
TEST_P64_PNN_OP(umulx16, x8, $rd_hi, x19, x24, 0x0000000000000000, $correctval_hi, 0xfffb000c08000010, 0xfbff000f0005aaaa, x1, 160, x17)

inst_11:
// rs1==x8, rs2==x23, rd==x28, rs2_h3_val == 65023, rs1_h1_val == 1024, rs1_h2_val == 65519, rs2_h1_val == 32767, rs2_h2_val == 1
// opcode: umulx16 ; op1:x8; op2:x23; dest:x28; op1val:0xffbfffef0400000d;  op2val:0xfdff00017fff8000
TEST_P64_PNN_OP(umulx16, x28, $rd_hi, x8, x23, 0x0000000000000000, $correctval_hi, 0xffbfffef0400000d, 0xfdff00017fff8000, x1, 176, x17)

inst_12:
// rs1==x16, rs2==x28, rd==x14, rs2_h3_val == 65279, rs1_h1_val == 0, rs2_h1_val == 1024, rs2_h2_val == 32, rs1_h0_val == 65407, rs2_h0_val == 1, rs1_h2_val == 43690
// opcode: umulx16 ; op1:x16; op2:x28; dest:x14; op1val:0x000eaaaa0000ff7f;  op2val:0xfeff002004000001
TEST_P64_PNN_OP(umulx16, x14, $rd_hi, x16, x28, 0x0000000000000000, $correctval_hi, 0x000eaaaa0000ff7f, 0xfeff002004000001, x1, 192, x17)

inst_13:
// rs1==x24, rs2==x8, rd==x6, rs2_h3_val == 65407, rs1_h2_val == 65023, rs1_h3_val == 1, rs2_h1_val == 65503, rs2_h2_val == 43690
// opcode: umulx16 ; op1:x24; op2:x8; dest:x6; op1val:0x0001fdffff7f5555;  op2val:0xff7faaaaffdf000a
TEST_P64_PNN_OP(umulx16, x6, $rd_hi, x24, x8, 0x0000000000000000, $correctval_hi, 0x0001fdffff7f5555, 0xff7faaaaffdf000a, x1, 208, x17)

inst_14:
// rs1==x11, rs2==x9, rd==x4, rs2_h3_val == 65471, rs2_h2_val == 49151, rs2_h1_val == 57343, rs2_h0_val == 512
// opcode: umulx16 ; op1:x11; op2:x9; dest:x4; op1val:0x0011000f08000800;  op2val:0xffbfbfffdfff0200
TEST_P64_PNN_OP(umulx16, x4, $rd_hi, x11, x9, 0x0000000000000000, $correctval_hi, 0x0011000f08000800, 0xffbfbfffdfff0200, x1, 224, x17)
RVTEST_SIGBASE(x8,signature_x8_0)

inst_15:
// rs1==x23, rs2==x4, rs2_h3_val == 65503, rs1_h2_val == 32, rs1_h1_val == 57343, rs1_h0_val == 65534
// opcode: umulx16 ; op1:x23; op2:x4; dest:x15; op1val:0x00010020dffffffe;  op2val:0xffdf000c000baaaa
TEST_P64_PNN_OP(umulx16, x15, $rd_hi, x23, x4, 0x0000000000000000, $correctval_hi, 0x00010020dffffffe, 0xffdf000c000baaaa, x8, 0, x20)

inst_16:
// rs1==x21, rs2==x1, rs2_h3_val == 65519, rs1_h2_val == 61439, rs2_h0_val == 8, rs2_h1_val == 65519, rs1_h0_val == 65535
// opcode: umulx16 ; op1:x21; op2:x1; dest:x12; op1val:0x000fefffdfffffff;  op2val:0xffeffffdffef0008
TEST_P64_PNN_OP(umulx16, x12, $rd_hi, x21, x1, 0x0000000000000000, $correctval_hi, 0x000fefffdfffffff, 0xffeffffdffef0008, x8, 16, x20)

inst_17:
// rs1==x10, rs2==x16, rs2_h3_val == 65527, rs1_h2_val == 64, rs2_h1_val == 21845, rs1_h1_val == 16
// opcode: umulx16 ; op1:x10; op2:x16; dest:x7; op1val:0x0003004000100003;  op2val:0xfff7555555550008
TEST_P64_PNN_OP(umulx16, x7, $rd_hi, x10, x16, 0x0000000000000000, $correctval_hi, 0x0003004000100003, 0xfff7555555550008, x8, 32, x20)

inst_18:
// rs1==x26, rs2==x6, rs2_h3_val == 65531, rs2_h2_val == 2048, rs2_h0_val == 65023, rs1_h2_val == 21845
// opcode: umulx16 ; op1:x26; op2:x6; dest:x18; op1val:0x000c5555feff0009;  op2val:0xfffb0800ffdffdff
TEST_P64_PNN_OP(umulx16, x18, $rd_hi, x26, x6, 0x0000000000000000, $correctval_hi, 0x000c5555feff0009, 0xfffb0800ffdffdff, x8, 48, x20)

inst_19:
// rs1==x6, rs2==x2, rs2_h3_val == 65533, rs1_h1_val == 65023
// opcode: umulx16 ; op1:x6; op2:x2; dest:x3; op1val:0xdfff0800fdff0800;  op2val:0xfffdfff7dfff000b
TEST_P64_PNN_OP(umulx16, x3, $rd_hi, x6, x2, 0x0000000000000000, $correctval_hi, 0xdfff0800fdff0800, 0xfffdfff7dfff000b, x8, 64, x20)

inst_20:
// rs1==x28, rs2==x15, rs2_h3_val == 65534, rs1_h1_val == 4, rs1_h0_val == 49151, rs1_h3_val == 4096, rs1_h2_val == 32768, rs2_h0_val == 61439
// opcode: umulx16 ; op1:x28; op2:x15; dest:x2; op1val:0x100080000004bfff;  op2val:0xfffe00060012efff
TEST_P64_PNN_OP(umulx16, x2, $rd_hi, x28, x15, 0x0000000000000000, $correctval_hi, 0x100080000004bfff, 0xfffe00060012efff, x8, 80, x20)

inst_21:
// rs1==x29, rs2==x10, rs2_h3_val == 32768, rs2_h1_val == 32768, rs2_h0_val == 2048, rs1_h0_val == 65503, rs1_h1_val == 65534, rs2_h2_val == 65023, rs1_h3_val == 32
// opcode: umulx16 ; op1:x29; op2:x10; dest:x12; op1val:0x0020000ffffeffdf;  op2val:0x8000fdff80000800
TEST_P64_PNN_OP(umulx16, x12, $rd_hi, x29, x10, 0x0000000000000000, $correctval_hi, 0x0020000ffffeffdf, 0x8000fdff80000800, x8, 96, x20)

inst_22:
// rs1==x9, rs2==x27, rs2_h3_val == 16384, rs1_h3_val == 128, rs1_h1_val == 64, rs2_h1_val == 61439, rs1_h2_val == 32767
// opcode: umulx16 ; op1:x9; op2:x27; dest:x19; op1val:0x00807fff00400009;  op2val:0x40005555efff0080
TEST_P64_PNN_OP(umulx16, x19, $rd_hi, x9, x27, 0x0000000000000000, $correctval_hi, 0x00807fff00400009, 0x40005555efff0080, x8, 112, x20)

inst_23:
// rs1==x22, rs2==x7, rs2_h3_val == 8192, rs2_h0_val == 49151, rs2_h1_val == 65023, rs1_h3_val == 512, rs1_h1_val == 65503
// opcode: umulx16 ; op1:x22; op2:x7; dest:x19; op1val:0x02000007ffdf000c;  op2val:0x2000000afdffbfff
TEST_P64_PNN_OP(umulx16, x19, $rd_hi, x22, x7, 0x0000000000000000, $correctval_hi, 0x02000007ffdf000c, 0x2000000afdffbfff, x8, 128, x20)

inst_24:
// rs1==x18, rs2==x0, rs2_h3_val == 4096, rs1_h2_val == 8, rs2_h2_val == 4
// opcode: umulx16 ; op1:x18; op2:x0; dest:x16; op1val:0xdfff0008feff0011;  op2val:0x100000040011000c
TEST_P64_PNN_OP(umulx16, x16, $rd_hi, x18, x0, 0x0000000000000000, $correctval_hi, 0xdfff0008feff0011, 0x100000040011000c, x8, 144, x20)

inst_25:
// rs1==x3, rs2==x13, rs2_h3_val == 2048, rs1_h0_val == 16384, rs2_h1_val == 65279, rs2_h0_val == 65279
// opcode: umulx16 ; op1:x3; op2:x13; dest:x23; op1val:0x000d400055554000;  op2val:0x08000011fefffeff
TEST_P64_PNN_OP(umulx16, x23, $rd_hi, x3, x13, 0x0000000000000000, $correctval_hi, 0x000d400055554000, 0x08000011fefffeff, x8, 160, x20)

inst_26:
// rs1==x14, rs2==x19, rs2_h3_val == 1024, rs1_h2_val == 0, rs1_h1_val == 2, rs2_h0_val == 16, rs1_h0_val == 65533
// opcode: umulx16 ; op1:x14; op2:x19; dest:x3; op1val:0x400000000002fffd;  op2val:0x0400000e00050010
TEST_P64_PNN_OP(umulx16, x3, $rd_hi, x14, x19, 0x0000000000000000, $correctval_hi, 0x400000000002fffd, 0x0400000e00050010, x8, 176, x20)

inst_27:
// rs1==x17, rs2==x26, rs2_h3_val == 512, rs1_h0_val == 8, rs2_h2_val == 128
// opcode: umulx16 ; op1:x17; op2:x26; dest:x27; op1val:0x0040ffbf000f0008;  op2val:0x02000080ffef0005
TEST_P64_PNN_OP(umulx16, x27, $rd_hi, x17, x26, 0x0000000000000000, $correctval_hi, 0x0040ffbf000f0008, 0x02000080ffef0005, x8, 192, x20)

inst_28:
// rs1==x27, rs2==x30, rs2_h3_val == 256, rs2_h0_val == 57343, rs1_h3_val == 32767
// opcode: umulx16 ; op1:x27; op2:x30; dest:x11; op1val:0x7fff5555000d000a;  op2val:0x01000009fdffdfff
TEST_P64_PNN_OP(umulx16, x11, $rd_hi, x27, x30, 0x0000000000000000, $correctval_hi, 0x7fff5555000d000a, 0x01000009fdffdfff, x8, 208, x20)

inst_29:
// rs1==x5, rs2==x11, rs2_h3_val == 128, rs1_h3_val == 0, rs2_h0_val == 256, rs2_h1_val == 65527
// opcode: umulx16 ; op1:x5; op2:x11; dest:x27; op1val:0x0000fdff00030011;  op2val:0x0080000ffff70100
TEST_P64_PNN_OP(umulx16, x27, $rd_hi, x5, x11, 0x0000000000000000, $correctval_hi, 0x0000fdff00030011, 0x0080000ffff70100, x8, 224, x20)

inst_30:
// rs1==x1, rs2==x21, rs2_h3_val == 32, rs2_h0_val == 65471
// opcode: umulx16 ; op1:x1; op2:x21; dest:x20; op1val:0xffbf000900100007;  op2val:0x00205555dfffffbf
TEST_P64_PNN_OP(umulx16, x20, $rd_hi, x1, x21, 0x0000000000000000, $correctval_hi, 0xffbf000900100007, 0x00205555dfffffbf, x8, 240, x2)
RVTEST_SIGBASE(x1,signature_x1_2)

inst_31:
// rs1==x25, rs2==x17, rs2_h3_val == 8, rs2_h0_val == 64
// opcode: umulx16 ; op1:x25; op2:x17; dest:x12; op1val:0x000b00130000fffd;  op2val:0x0008100000090040
TEST_P64_PNN_OP(umulx16, x12, $rd_hi, x25, x17, 0x0000000000000000, $correctval_hi, 0x000b00130000fffd, 0x0008100000090040, x1, 0, x2)

inst_32:
// rs2_h3_val == 4, rs1_h0_val == 2, rs2_h0_val == 65535
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00120011feff0002;  op2val:0x0004f7ff7fffffff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00120011feff0002, 0x0004f7ff7fffffff, x1, 16, x2)

inst_33:
// rs2_h3_val == 2, rs1_h0_val == 64511, rs1_h3_val == 65503
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff0010fbff;  op2val:0x0002100000110200
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdfffff0010fbff, 0x0002100000110200, x1, 32, x2)

inst_34:
// rs2_h3_val == 1, rs1_h1_val == 128, rs2_h2_val == 32767
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000500070080000e;  op2val:0x00017fff0003bfff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000500070080000e, 0x00017fff0003bfff, x1, 48, x2)

inst_35:
// rs2_h3_val == 65535, rs1_h2_val == 65527, rs1_h0_val == 4, rs2_h0_val == 21845, rs2_h2_val == 65535
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0009fff700050004;  op2val:0xffffffff01005555
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0009fff700050004, 0xffffffff01005555, x1, 64, x2)

inst_36:
// rs2_h3_val == 0, rs2_h1_val == 65531, rs1_h3_val == 65407
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7fefff0004fffb;  op2val:0x00007ffffffb0100
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xff7fefff0004fffb, 0x00007ffffffb0100, x1, 80, x2)

inst_37:
// rs1_h1_val == 1, rs2_h1_val == 65407, rs2_h2_val == 65531, rs1_h2_val == 65534, rs1_h0_val == 32767
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0000fffe00017fff;  op2val:0xeffffffbff7ffeff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0000fffe00017fff, 0xeffffffbff7ffeff, x1, 96, x2)

inst_38:
// rs1_h1_val == 65535, rs1_h2_val == 49151
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfffbfffffff000d;  op2val:0x000100038000000a
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xdfffbfffffff000d, 0x000100038000000a, x1, 112, x2)

inst_39:
// rs1_h0_val == 57343, rs1_h1_val == 64511, rs2_h0_val == 63487, rs1_h2_val == 65533
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000dfffdfbffdfff;  op2val:0x08005555effff7ff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000dfffdfbffdfff, 0x08005555effff7ff, x1, 128, x2)

inst_40:
// rs1_h0_val == 61439, rs1_h1_val == 4096
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000900111000efff;  op2val:0xffbf08000006feff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000900111000efff, 0xffbf08000006feff, x1, 144, x2)

inst_41:
// rs1_h0_val == 63487, rs2_h1_val == 128, rs1_h2_val == 65531, rs2_h2_val == 32768
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0011fffbfdfff7ff;  op2val:0x000b80000080000f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0011fffbfdfff7ff, 0x000b80000080000f, x1, 160, x2)

inst_42:
// rs1_h0_val == 65279, rs1_h3_val == 2, rs2_h2_val == 8, rs2_h1_val == 32
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0002000c000afeff;  op2val:0x001200080020000c
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0002000c000afeff, 0x001200080020000c, x1, 176, x2)

inst_43:
// rs1_h0_val == 65471, rs2_h0_val == 8192, rs1_h2_val == 65407
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000cff7ffdffffbf;  op2val:0xffef008000062000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000cff7ffdffffbf, 0xffef008000062000, x1, 192, x2)

inst_44:
// rs1_h0_val == 65519, rs2_h2_val == 0, rs1_h3_val == 8192
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x200000080400ffef;  op2val:0x000f00007fff0100
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x200000080400ffef, 0x000f00007fff0100, x1, 208, x2)

inst_45:
// rs1_h0_val == 65527, rs2_h1_val == 65471, rs1_h3_val == 65519, rs1_h1_val == 61439
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffff7effffff7;  op2val:0x00108000ffbf0013
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffeffff7effffff7, 0x00108000ffbf0013, x1, 224, x2)

inst_46:
// rs1_h0_val == 32768, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00000002feff8000;  op2val:0x4000fffb7fffbfff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00000002feff8000, 0x4000fffb7fffbfff, x1, 240, x2)

inst_47:
// rs1_h0_val == 8192, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200000adfff2000;  op2val:0x0200000cdfff0200
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0200000adfff2000, 0x0200000cdfff0200, x1, 256, x2)

inst_48:
// rs1_h0_val == 4096, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0003f7ffffdf1000;  op2val:0x0200000dff7f000f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003f7ffffdf1000, 0x0200000dff7f000f, x1, 272, x2)

inst_49:
// rs1_h0_val == 1024, rs1_h2_val == 65503, rs2_h1_val == 49151
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0003ffdf00130400;  op2val:0xffdf000ebfff000b
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0003ffdf00130400, 0xffdf000ebfff000b, x1, 288, x2)

inst_50:
// rs1_h0_val == 512, rs1_h2_val == 8192
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f200000110200;  op2val:0xf7fffffbff7f0200
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xff7f200000110200, 0xf7fffffbff7f0200, x1, 304, x2)

inst_51:
// rs1_h0_val == 256, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555000c55550100;  op2val:0xbfff00110001ffdf
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x5555000c55550100, 0xbfff00110001ffdf, x1, 320, x2)

inst_52:
// rs1_h0_val == 128, rs2_h0_val == 65519
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000bfffb00090080;  op2val:0x000bbfff0007ffef
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000bfffb00090080, 0x000bbfff0007ffef, x1, 336, x2)

inst_53:
// rs1_h0_val == 64, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0000000b00060040;  op2val:0x2000000100200012
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0000000b00060040, 0x2000000100200012, x1, 352, x2)

inst_54:
// rs1_h0_val == 32, rs2_h2_val == 256, rs1_h1_val == 8
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0000feff00080020;  op2val:0xffbf0100fdff0005
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0000feff00080020, 0xffbf0100fdff0005, x1, 368, x2)

inst_55:
// rs1_h0_val == 1, rs2_h1_val == 43690, rs1_h1_val == 256
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000d000a01000001;  op2val:0x0005aaaaaaaa0200
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000d000a01000001, 0x0005aaaaaaaa0200, x1, 384, x2)

inst_56:
// rs2_h2_val == 57343, rs1_h1_val == 65533
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0080000ffffd0011;  op2val:0x8000dfff0003ffdf
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0080000ffffd0011, 0x8000dfff0003ffdf, x1, 400, x2)

inst_57:
// rs2_h2_val == 61439, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200fff708000003;  op2val:0x0006efff0020ffef
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0200fff708000003, 0x0006efff0020ffef, x1, 416, x2)

inst_58:
// rs2_h2_val == 64511, rs2_h1_val == 65534, rs2_h0_val == 1024
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000cffff0010efff;  op2val:0xfdfffbfffffe0400
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000cffff0010efff, 0xfdfffbfffffe0400, x1, 432, x2)

inst_59:
// rs2_h2_val == 65279, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0005ffdf00030000;  op2val:0x0003feff0100ffff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0005ffdf00030000, 0x0003feff0100ffff, x1, 448, x2)

inst_60:
// rs2_h2_val == 65407, rs1_h1_val == 65527, rs1_h2_val == 128
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00200080fff70020;  op2val:0x0003ff7f8000ff7f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00200080fff70020, 0x0003ff7f8000ff7f, x1, 464, x2)

inst_61:
// rs2_h2_val == 65503, rs1_h3_val == 4, rs2_h1_val == 16384
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0004800000010011;  op2val:0x0800ffdf40000003
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0004800000010011, 0x0800ffdf40000003, x1, 480, x2)

inst_62:
// rs2_h0_val == 65527, rs1_h2_val == 1
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0001000e7fff;  op2val:0xffdf0012fffdfff7
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xbfff0001000e7fff, 0xffdf0012fffdfff7, x1, 496, x2)

inst_63:
// rs2_h0_val == 65531, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000b7fffaaaa0100;  op2val:0x00040000000ffffb
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000b7fffaaaa0100, 0x00040000000ffffb, x1, 512, x2)

inst_64:
// rs2_h0_val == 65533, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000c080000108000;  op2val:0x200000095555fffd
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000c080000108000, 0x200000095555fffd, x1, 528, x2)

inst_65:
// rs2_h0_val == 65534, rs1_h3_val == 65535
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff000d0100ff7f;  op2val:0x0080ffbffefffffe
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffff000d0100ff7f, 0x0080ffbffefffffe, x1, 544, x2)

inst_66:
// rs2_h0_val == 16384, rs1_h3_val == 1024, rs2_h2_val == 16384
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0400ffdf7fffdfff;  op2val:0xfff74000000c4000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0400ffdf7fffdfff, 0xfff74000000c4000, x1, 560, x2)

inst_67:
// rs2_h0_val == 4096, rs1_h1_val == 65531, rs2_h1_val == 512
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000c0007fffbefff;  op2val:0xfffd001202001000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000c0007fffbefff, 0xfffd001202001000, x1, 576, x2)

inst_68:
// rs2_h0_val == 32, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00045555ffdf0003;  op2val:0x0800ffbf00200020
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00045555ffdf0003, 0x0800ffbf00200020, x1, 592, x2)

inst_69:
// rs2_h0_val == 4, rs2_h2_val == 64, rs1_h3_val == 8
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0008ffff0006ff7f;  op2val:0xfbff0040ffef0004
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0008ffff0006ff7f, 0xfbff0040ffef0004, x1, 608, x2)

inst_70:
// rs2_h0_val == 0, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffd0010fffb;  op2val:0x0001ff7ffffe0000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000fffd0010fffb, 0x0001ff7ffffe0000, x1, 624, x2)

inst_71:
// rs1_h3_val == 61439, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xefffbffffff7000b;  op2val:0xefff40008000000e
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xefffbffffff7000b, 0xefff40008000000e, x1, 640, x2)

inst_72:
// rs1_h3_val == 63487, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff800004000100;  op2val:0x00120007ffbf0009
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7ff800004000100, 0x00120007ffbf0009, x1, 656, x2)

inst_73:
// rs1_h3_val == 65023, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff1000ff7f0020;  op2val:0xffdf000f000b000c
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfdff1000ff7f0020, 0xffdf000f000b000c, x1, 672, x2)

inst_74:
// rs1_h3_val == 65279, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff000befff000e;  op2val:0x0008feff00200012
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfeff000befff000e, 0x0008feff00200012, x1, 688, x2)

inst_75:
// rs1_h3_val == 65527, rs1_h2_val == 512
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7020055550007;  op2val:0x0005080002000008
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfff7020055550007, 0x0005080002000008, x1, 704, x2)

inst_76:
// rs1_h3_val == 65533, rs1_h2_val == 16
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd001010000004;  op2val:0xfeff0008bfff0010
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffd001010000004, 0xfeff0008bfff0010, x1, 720, x2)

inst_77:
// rs1_h3_val == 65534, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe7fff00050006;  op2val:0xbfff00800003fffb
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffe7fff00050006, 0xbfff00800003fffb, x1, 736, x2)

inst_78:
// rs1_h3_val == 32768, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x80000001aaaa0012;  op2val:0x004001000005ff7f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x80000001aaaa0012, 0x004001000005ff7f, x1, 752, x2)

inst_79:
// rs1_h3_val == 2048, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0800ffdffff70400;  op2val:0x000d000500090003
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0800ffdffff70400, 0x000d000500090003, x1, 768, x2)

inst_80:
// rs1_h3_val == 256, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0100ffdf000f000e;  op2val:0x0006080000074000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0100ffdf000f000e, 0x0006080000074000, x1, 784, x2)

inst_81:
// rs1_h3_val == 16, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0010ff7f00018000;  op2val:0xffef40000005ffef
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0010ff7f00018000, 0xffef40000005ffef, x1, 800, x2)

inst_82:
// rs1_h2_val == 57343, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0011dfff000f5555;  op2val:0xdfff080000015555
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0011dfff000f5555, 0xdfff080000015555, x1, 816, x2)

inst_83:
// rs2_h2_val == 1024, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0002feff00100040;  op2val:0x000e0400ffef0009
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0002feff00100040, 0x000e0400ffef0009, x1, 832, x2)

inst_84:
// rs1_h2_val == 64511, rs2_h2_val == 2
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffbffff7f0003;  op2val:0xffdf00024000ffef
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfbfffbffff7f0003, 0xffdf00024000ffef, x1, 848, x2)

inst_85:
// rs2_h2_val == 16, rs1_h1_val == 65519
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff2000ffeffbff;  op2val:0x00400010ffbf0020
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffff2000ffeffbff, 0x00400010ffbf0020, x1, 864, x2)

inst_86:
// rs1_h2_val == 1024, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0400dfff0006;  op2val:0x000fffdfbfff0011
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf0400dfff0006, 0x000fffdfbfff0011, x1, 880, x2)

inst_87:
// rs1_h2_val == 256, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf0100fff70004;  op2val:0x7ffffdff55550011
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdf0100fff70004, 0x7ffffdff55550011, x1, 896, x2)

inst_88:
// rs2_h1_val == 63487, rs1_h1_val == 49151
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfff7fbfffefff;  op2val:0xbfff000ff7ffffff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdfff7fbfffefff, 0xbfff000ff7ffffff, x1, 912, x2)

inst_89:
// rs2_h1_val == 64511, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000baaaa000a;  op2val:0xbffffffdfbff5555
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x1000000baaaa000a, 0xbffffffdfbff5555, x1, 928, x2)

inst_90:
// rs1_h2_val == 4, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0004bfffbfff;  op2val:0x0008fbfffdfffeff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xfffe0004bfffbfff, 0x0008fbfffdfffeff, x1, 944, x2)

inst_91:
// rs2_h1_val == 8192, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x02000020aaaa8000;  op2val:0xf7ff000620000800
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x02000020aaaa8000, 0xf7ff000620000800, x1, 960, x2)

inst_92:
// rs2_h1_val == 4096, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00060013000b0004;  op2val:0x0008004010000080
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00060013000b0004, 0x0008004010000080, x1, 976, x2)

inst_93:
// rs2_h1_val == 2048, rs2_h0_val == 64511, rs2_h2_val == 65534
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000cfffd00128000;  op2val:0x000bfffe0800fbff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000cfffd00128000, 0x000bfffe0800fbff, x1, 992, x2)

inst_94:
// rs1_h1_val == 63487, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000bfffdf7ffffbf;  op2val:0x0080fff700208000
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000bfffdf7ffffbf, 0x0080fff700208000, x1, 1008, x2)

inst_95:
// rs2_h1_val == 64, rs2_h2_val == 65519
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000b400010007fff;  op2val:0x0012ffef0040000f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000b400010007fff, 0x0012ffef0040000f, x1, 1024, x2)

inst_96:
// rs1_h1_val == 65471, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffeffff7ffbff7ff;  op2val:0x20000002fffdfff7
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffeffff7ffbff7ff, 0x20000002fffdfff7, x1, 1040, x2)

inst_97:
// rs2_h1_val == 8, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200000900110001;  op2val:0x001000050008ff7f
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0200000900110001, 0x001000050008ff7f, x1, 1056, x2)

inst_98:
// rs2_h1_val == 4, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x0080bfff0000efff;  op2val:0x0012100000040005
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x0080bfff0000efff, 0x0012100000040005, x1, 1072, x2)

inst_99:
// rs2_h1_val == 2, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffbf00024000;  op2val:0xbfffdfff0002000c
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffdfffbf00024000, 0xbfffdfff0002000c, x1, 1088, x2)

inst_100:
// rs2_h1_val == 65535, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffbffffbfff;  op2val:0x00400011ffff5555
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xf7fffffbffffbfff, 0x00400011ffff5555, x1, 1104, x2)

inst_101:
// rs1_h1_val == 32768, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000c00018000000d;  op2val:0x0011000980000800
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000c00018000000d, 0x0011000980000800, x1, 1120, x2)

inst_102:
// rs2_h1_val == 0, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf0001fffd0013;  op2val:0x001000040000fffe
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xffbf0001fffd0013, 0x001000040000fffe, x1, 1136, x2)

inst_103:
// rs1_h1_val == 512, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x200002000200feff;  op2val:0xefff1000ff7f0002
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x200002000200feff, 0xefff1000ff7f0002, x1, 1152, x2)

inst_104:
// rs1_h1_val == 16384, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000900024000efff;  op2val:0x00800006ffdffffe
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000900024000efff, 0x00800006ffdffffe, x1, 1168, x2)

inst_105:
// rs1_h1_val == 32, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaff7f00200003;  op2val:0x10000800000afff7
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xaaaaff7f00200003, 0x10000800000afff7, x1, 1184, x2)

inst_106:
// rs2_h0_val == 32767, 
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x00000011ffef000e;  op2val:0x0400040001007fff
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x00000011ffef000e, 0x0400040001007fff, x1, 1200, x2)

inst_107:
// rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h2_val == 65471, rs2_h3_val == 43690, rs1_h3_val == 21845, rs1_h1_val == 21845
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555ffbf5555000e;  op2val:0xaaaaffbf00060005
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x5555ffbf5555000e, 0xaaaaffbf00060005, x1, 1216, x2)

inst_108:
// rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h0_val == 65503, rs2_h3_val == 16, rs1_h0_val == 65023, rs1_h2_val == 16384, rs2_h2_val == 65527
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0x000d40000013fdff;  op2val:0x0010fff70013ffdf
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0x000d40000013fdff, 0x0010fff70013ffdf, x1, 1232, x2)

inst_109:
// rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h2_val == 63487, rs1_h3_val == 57343, rs2_h1_val == 16, rs2_h3_val == 63487
// opcode: umulx16 ; op1:x30; op2:x29; dest:x31; op1val:0xdffff7ff000b0007;  op2val:0xf7ff000e00100007
TEST_P64_PNN_OP(umulx16, x31, $rd_hi, x30, x29, 0x0000000000000000, $correctval_hi, 0xdffff7ff000b0007, 0xf7ff000e00100007, x1, 1248, x2)
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
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x1_2:
    .fill 158*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
