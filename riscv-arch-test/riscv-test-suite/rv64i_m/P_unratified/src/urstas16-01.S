
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
// This assembly file tests the urstas16 instruction of the RISC-V RV64PZicsr extension for the urstas16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",urstas16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x12,signature_x12_1)

inst_0:
// rs1 == rd != rs2, rs1==x31, rs2==x11, rd==x31, rs1_h0_val == 0, rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h0_val == 65519, rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h2_val == 64, rs2_h1_val == 4, rs1_h3_val == 64, rs1_h2_val == 1024, rs1_h1_val == 32
// opcode: urstas16 ; op1:x31; op2:x11; dest:x31; op1val:0x40040000200000;  op2val:0x0700400004ffef
TEST_RR_OP(urstas16, x31, x31, x11, 0x0000000000000000, 0x40040000200000, 0x0700400004ffef, x12, 0, x6)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x13, rs2==x15, rd==x23, rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h3_val == 512, rs1_h1_val == 49151, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs2_h0_val == 16384, rs1_h3_val == 512, rs2_h1_val == 21845
// opcode: urstas16 ; op1:x13; op2:x15; dest:x23; op1val:0x2000007bfff000d;  op2val:0x200000555554000
TEST_RR_OP(urstas16, x23, x13, x15, 0x0000000000000000, 0x2000007bfff000d, 0x200000555554000, x12, 8, x6)

inst_2:
// rs1 == rs2 != rd, rs1==x8, rs2==x8, rd==x21, rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h1_val == 8192, rs2_h0_val == 32768, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val == 4096, rs1_h0_val == 32768
// opcode: urstas16 ; op1:x8; op2:x8; dest:x21; op1val:0x07000c10008000;  op2val:0x0d000c20008000
TEST_RR_OP(urstas16, x21, x8, x8, 0x0000000000000000, 0x07000c10008000, 0x0d000c20008000, x12, 16, x6)

inst_3:
// rs1 == rs2 == rd, rs1==x9, rs2==x9, rd==x9, rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val == 8192, rs1_h3_val == 16, rs2_h3_val == 4096
// opcode: urstas16 ; op1:x9; op2:x9; dest:x9; op1val:0x10000300092000;  op2val:0x100000400009000a
TEST_RR_OP(urstas16, x9, x9, x9, 0x0000000000000000, 0x10000300092000, 0x100000400009000a, x12, 24, x6)

inst_4:
// rs2 == rd != rs1, rs1==x2, rs2==x24, rd==x24, rs2_h3_val == 43690, rs1_h2_val == 61439, rs1_h0_val == 65503, rs1_h1_val == 8192, rs1_h3_val == 32, rs2_h2_val == 65533
// opcode: urstas16 ; op1:x2; op2:x24; dest:x24; op1val:0x20efff2000ffdf;  op2val:0xaaaafffd000f000f
TEST_RR_OP(urstas16, x24, x2, x24, 0x0000000000000000, 0x20efff2000ffdf, 0xaaaafffd000f000f, x12, 32, x6)

inst_5:
// rs1==x21, rs2==x19, rd==x2, rs2_h3_val == 21845, rs1_h2_val == 4096, rs2_h1_val == 65279, rs2_h2_val == 65531, rs1_h1_val == 65503
// opcode: urstas16 ; op1:x21; op2:x19; dest:x2; op1val:0x121000ffdf0000;  op2val:0x5555fffbfeff0009
TEST_RR_OP(urstas16, x2, x21, x19, 0x0000000000000000, 0x121000ffdf0000, 0x5555fffbfeff0009, x12, 40, x6)

inst_6:
// rs1==x23, rs2==x28, rd==x3, rs2_h3_val == 32767, rs2_h1_val == 64, rs1_h1_val == 65279, rs2_h2_val == 4, rs2_h0_val == 1
// opcode: urstas16 ; op1:x23; op2:x28; dest:x3; op1val:0x0c0005feff0013;  op2val:0x7fff000400400001
TEST_RR_OP(urstas16, x3, x23, x28, 0x0000000000000000, 0x0c0005feff0013, 0x7fff000400400001, x12, 48, x6)

inst_7:
// rs1==x24, rs2==x29, rd==x8, rs2_h3_val == 49151, rs1_h1_val == 256, rs2_h2_val == 65527, rs1_h3_val == 32767, rs1_h0_val == 65023
// opcode: urstas16 ; op1:x24; op2:x29; dest:x8; op1val:0x7fff10000100fdff;  op2val:0xbffffff7000a0007
TEST_RR_OP(urstas16, x8, x24, x29, 0x0000000000000000, 0x7fff10000100fdff, 0xbffffff7000a0007, x12, 56, x6)

inst_8:
// rs1==x17, rs2==x20, rd==x4, rs2_h3_val == 57343, rs1_h1_val == 2048, rs2_h1_val == 2048
// opcode: urstas16 ; op1:x17; op2:x20; dest:x4; op1val:0x7fff000308000007;  op2val:0xdffffffd08000011
TEST_RR_OP(urstas16, x4, x17, x20, 0x0000000000000000, 0x7fff000308000007, 0xdffffffd08000011, x12, 64, x6)

inst_9:
// rs1==x22, rs2==x7, rd==x13, rs2_h3_val == 61439, rs1_h2_val == 49151, rs1_h0_val == 2, rs2_h0_val == 65533, rs1_h3_val == 16384, rs2_h2_val == 65279
// opcode: urstas16 ; op1:x22; op2:x7; dest:x13; op1val:0x4000bfff20000002;  op2val:0xeffffeff0040fffd
TEST_RR_OP(urstas16, x13, x22, x7, 0x0000000000000000, 0x4000bfff20000002, 0xeffffeff0040fffd, x12, 72, x6)

inst_10:
// rs1==x10, rs2==x5, rd==x19, rs2_h3_val == 63487, rs1_h3_val == 65407, rs1_h0_val == 8, rs2_h2_val == 0, rs2_h0_val == 4, rs2_h1_val == 65023, rs1_h2_val == 16
// opcode: urstas16 ; op1:x10; op2:x5; dest:x19; op1val:0xff7f001000030008;  op2val:0xf7ff0000fdff0004
TEST_RR_OP(urstas16, x19, x10, x5, 0x0000000000000000, 0xff7f001000030008, 0xf7ff0000fdff0004, x12, 80, x6)

inst_11:
// rs1==x4, rs2==x22, rd==x5, rs2_h3_val == 64511, 
// opcode: urstas16 ; op1:x4; op2:x22; dest:x5; op1val:0x05efff0800000e;  op2val:0xfbff000455554000
TEST_RR_OP(urstas16, x5, x4, x22, 0x0000000000000000, 0x05efff0800000e, 0xfbff000455554000, x12, 88, x6)

inst_12:
// rs1==x5, rs2==x17, rd==x7, rs2_h3_val == 65023, rs2_h2_val == 1024, rs2_h1_val == 4096, rs1_h0_val == 2048, rs1_h1_val == 16384, rs2_h0_val == 49151, rs1_h3_val == 65535
// opcode: urstas16 ; op1:x5; op2:x17; dest:x7; op1val:0xffff000740000800;  op2val:0xfdff04001000bfff
TEST_RR_OP(urstas16, x7, x5, x17, 0x0000000000000000, 0xffff000740000800, 0xfdff04001000bfff, x12, 96, x6)

inst_13:
// rs1==x18, rs2==x26, rd==x25, rs2_h3_val == 65279, rs1_h0_val == 32, rs2_h2_val == 2048, rs1_h3_val == 65471, rs1_h1_val == 65527, rs2_h1_val == 63487, rs2_h0_val == 0
// opcode: urstas16 ; op1:x18; op2:x26; dest:x25; op1val:0xffbf000ffff70020;  op2val:0xfeff0800f7ff0000
TEST_RR_OP(urstas16, x25, x18, x26, 0x0000000000000000, 0xffbf000ffff70020, 0xfeff0800f7ff0000, x12, 104, x6)

inst_14:
// rs1==x1, rs2==x31, rd==x20, rs2_h3_val == 65407, rs2_h0_val == 64, rs2_h1_val == 61439, rs1_h1_val == 1024, rs1_h2_val == 32, rs2_h2_val == 65519
// opcode: urstas16 ; op1:x1; op2:x31; dest:x20; op1val:0x10002004000013;  op2val:0xff7fffefefff0040
TEST_RR_OP(urstas16, x20, x1, x31, 0x0000000000000000, 0x10002004000013, 0xff7fffefefff0040, x12, 112, x6)

inst_15:
// rs1==x16, rs2==x13, rd==x17, rs2_h3_val == 65471, rs2_h2_val == 2, rs1_h1_val == 32768, rs1_h0_val == 65531, rs1_h2_val == 128, rs2_h0_val == 65535
// opcode: urstas16 ; op1:x16; op2:x13; dest:x17; op1val:0x4000808000fffb;  op2val:0xffbf0002000cffff
TEST_RR_OP(urstas16, x17, x16, x13, 0x0000000000000000, 0x4000808000fffb, 0xffbf0002000cffff, x12, 120, x6)

inst_16:
// rs1==x15, rs2==x4, rd==x1, rs2_h3_val == 65503, rs2_h1_val == 1024, rs2_h0_val == 57343, rs1_h0_val == 32767
// opcode: urstas16 ; op1:x15; op2:x4; dest:x1; op1val:0x09000fffdf7fff;  op2val:0xffdf00040400dfff
TEST_RR_OP(urstas16, x1, x15, x4, 0x0000000000000000, 0x09000fffdf7fff, 0xffdf00040400dfff, x12, 128, x5)

inst_17:
// rs1==x7, rs2==x6, rd==x15, rs2_h3_val == 65519, rs1_h3_val == 64511, rs2_h1_val == 65534, rs1_h0_val == 65533, rs2_h2_val == 256
// opcode: urstas16 ; op1:x7; op2:x6; dest:x15; op1val:0xfbff0013000efffd;  op2val:0xffef0100fffe0004
TEST_RR_OP(urstas16, x15, x7, x6, 0x0000000000000000, 0xfbff0013000efffd, 0xffef0100fffe0004, x12, 136, x5)
RVTEST_SIGBASE(x4,signature_x4_0)

inst_18:
// rs1==x25, rs2==x1, rd==x29, rs2_h3_val == 65527, rs2_h0_val == 8, rs2_h1_val == 16384, rs1_h0_val == 21845
// opcode: urstas16 ; op1:x25; op2:x1; dest:x29; op1val:0x7fff000700065555;  op2val:0xfff7001140000008
TEST_RR_OP(urstas16, x29, x25, x1, 0x0000000000000000, 0x7fff000700065555, 0xfff7001140000008, x4, 0, x5)

inst_19:
// rs1==x3, rs2==x16, rd==x10, rs2_h3_val == 65531, rs1_h3_val == 65527, rs2_h2_val == 128, rs2_h1_val == 49151, rs1_h1_val == 64, rs2_h0_val == 65023, rs1_h2_val == 1
// opcode: urstas16 ; op1:x3; op2:x16; dest:x10; op1val:0xfff7000100405555;  op2val:0xfffb0080bffffdff
TEST_RR_OP(urstas16, x10, x3, x16, 0x0000000000000000, 0xfff7000100405555, 0xfffb0080bffffdff, x4, 8, x5)

inst_20:
// rs1==x30, rs2==x3, rd==x28, rs2_h3_val == 65533, 
// opcode: urstas16 ; op1:x30; op2:x3; dest:x28; op1val:0x0e000efff70005;  op2val:0xfffd040004004000
TEST_RR_OP(urstas16, x28, x30, x3, 0x0000000000000000, 0x0e000efff70005, 0xfffd040004004000, x4, 16, x5)

inst_21:
// rs1==x27, rs2==x14, rd==x16, rs2_h3_val == 65534, rs1_h2_val == 65533, rs1_h3_val == 8192
// opcode: urstas16 ; op1:x27; op2:x14; dest:x16; op1val:0x2000fffdfff70005;  op2val:0xfffe0400000ddfff
TEST_RR_OP(urstas16, x16, x27, x14, 0x0000000000000000, 0x2000fffdfff70005, 0xfffe0400000ddfff, x4, 24, x5)

inst_22:
// rs1==x14, rs2==x30, rd==x18, rs2_h3_val == 32768, rs1_h2_val == 65023, rs1_h0_val == 49151, rs2_h0_val == 512
// opcode: urstas16 ; op1:x14; op2:x30; dest:x18; op1val:0x11fdff0020bfff;  op2val:0x8000000f00120200
TEST_RR_OP(urstas16, x18, x14, x30, 0x0000000000000000, 0x11fdff0020bfff, 0x8000000f00120200, x4, 32, x5)

inst_23:
// rs1==x19, rs2==x25, rd==x30, rs2_h3_val == 16384, rs1_h0_val == 64, rs1_h3_val == 57343
// opcode: urstas16 ; op1:x19; op2:x25; dest:x30; op1val:0xdfff001100400040;  op2val:0x400000120800000d
TEST_RR_OP(urstas16, x30, x19, x25, 0x0000000000000000, 0xdfff001100400040, 0x400000120800000d, x4, 40, x5)

inst_24:
// rs1==x29, rs2==x23, rd==x0, rs2_h3_val == 8192, rs1_h1_val == 65531, rs2_h2_val == 64511, rs1_h0_val == 64511
// opcode: urstas16 ; op1:x29; op2:x23; dest:x0; op1val:0x0c0011fffbfbff;  op2val:0x2000fbff5555fdff
TEST_RR_OP(urstas16, x0, x29, x23, 0x0000000000000000, 0x0c0011fffbfbff, 0x2000fbff5555fdff, x4, 48, x5)

inst_25:
// rs1==x26, rs2==x2, rd==x22, rs2_h3_val == 2048, rs1_h1_val == 2, rs1_h2_val == 32768
// opcode: urstas16 ; op1:x26; op2:x2; dest:x22; op1val:0xffff800000020800;  op2val:0x800000dfffe0007
TEST_RR_OP(urstas16, x22, x26, x2, 0x0000000000000000, 0xffff800000020800, 0x800000dfffe0007, x4, 56, x5)

inst_26:
// rs1==x6, rs2==x21, rd==x11, rs2_h3_val == 1024, rs2_h1_val == 512, rs1_h1_val == 512
// opcode: urstas16 ; op1:x6; op2:x21; dest:x11; op1val:0xfff7001102000006;  op2val:0x400001302000003
TEST_RR_OP(urstas16, x11, x6, x21, 0x0000000000000000, 0xfff7001102000006, 0x400001302000003, x4, 64, x5)

inst_27:
// rs1==x0, rs2==x10, rd==x27, rs2_h3_val == 256, rs1_h2_val == 65407
// opcode: urstas16 ; op1:x0; op2:x10; dest:x27; op1val:0x07ff7f0003000e;  op2val:0x100fffb0006bfff
TEST_RR_OP(urstas16, x27, x0, x10, 0x0000000000000000, 0x07ff7f0003000e, 0x100fffb0006bfff, x4, 72, x5)

inst_28:
// rs1==x12, rs2==x27, rd==x14, rs2_h3_val == 128, rs2_h0_val == 65471, rs1_h2_val == 65471, rs2_h2_val == 32767
// opcode: urstas16 ; op1:x12; op2:x27; dest:x14; op1val:0x12ffbf2000000b;  op2val:0x807fff000bffbf
TEST_RR_OP(urstas16, x14, x12, x27, 0x0000000000000000, 0x12ffbf2000000b, 0x807fff000bffbf, x4, 80, x5)

inst_29:
// rs1==x28, rs2==x12, rd==x6, rs2_h3_val == 64, rs1_h1_val == 4, rs1_h2_val == 64511, rs2_h1_val == 65471
// opcode: urstas16 ; op1:x28; op2:x12; dest:x6; op1val:0x09fbff00040011;  op2val:0x400009ffbf0003
TEST_RR_OP(urstas16, x6, x28, x12, 0x0000000000000000, 0x09fbff00040011, 0x400009ffbf0003, x4, 88, x5)

inst_30:
// rs1==x11, rs2==x18, rd==x26, rs2_h3_val == 32, rs2_h1_val == 43690, rs2_h2_val == 61439, rs1_h3_val == 49151
// opcode: urstas16 ; op1:x11; op2:x18; dest:x26; op1val:0xbfff0003ffdf0020;  op2val:0x20efffaaaa0003
TEST_RR_OP(urstas16, x26, x11, x18, 0x0000000000000000, 0xbfff0003ffdf0020, 0x20efffaaaa0003, x4, 96, x5)

inst_31:
// rs1==x20, rs2==x0, rd==x12, rs2_h3_val == 16, rs1_h2_val == 57343, rs2_h1_val == 8, rs2_h0_val == 2, rs2_h2_val == 32768
// opcode: urstas16 ; op1:x20; op2:x0; dest:x12; op1val:0x12dfff0002000d;  op2val:0x10800000080002
TEST_RR_OP(urstas16, x12, x20, x0, 0x0000000000000000, 0x12dfff0002000d, 0x10800000080002, x4, 104, x5)

inst_32:
// rs2_h3_val == 8, rs1_h2_val == 21845, rs1_h0_val == 43690, rs1_h3_val == 65519, rs2_h0_val == 32767
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef55550002aaaa;  op2val:0x080000000e7fff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xffef55550002aaaa, 0x080000000e7fff, x4, 112, x5)

inst_33:
// rs2_h3_val == 4, rs1_h2_val == 0, rs1_h3_val == 256
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000000fff77fff;  op2val:0x040002aaaa000a
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x1000000fff77fff, 0x040002aaaa000a, x4, 120, x5)

inst_34:
// rs2_h3_val == 2, rs2_h0_val == 65527, rs1_h1_val == 63487, rs1_h0_val == 65535, rs2_h1_val == 128, rs1_h2_val == 256, rs2_h2_val == 65407
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000100f7ffffff;  op2val:0x02ff7f0080fff7
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x2000100f7ffffff, 0x02ff7f0080fff7, x4, 128, x5)

inst_35:
// rs2_h3_val == 1, rs2_h1_val == 65535, rs1_h0_val == 512
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x13000701000200;  op2val:0x01000affff0007
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x13000701000200, 0x01000affff0007, x4, 136, x5)

inst_36:
// rs2_h3_val == 65535, rs2_h2_val == 49151, rs1_h1_val == 65534, rs2_h0_val == 1024, rs1_h3_val == 8
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x080011fffefffd;  op2val:0xffffbfff000e0400
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x080011fffefffd, 0xffffbfff000e0400, x4, 144, x5)

inst_37:
// rs1_h1_val == 1, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbffffffd00010008;  op2val:0xaaaa0400ffbf000f
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xbffffffd00010008, 0xaaaa0400ffbf000f, x4, 152, x5)

inst_38:
// rs1_h1_val == 65535, rs2_h0_val == 16
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0001ffffbfff;  op2val:0x2000800000070010
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xbfff0001ffffbfff, 0x2000800000070010, x4, 160, x5)

inst_39:
// rs1_h1_val == 0, rs2_h1_val == 32767, rs1_h0_val == 256, rs1_h3_val == 2048
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x800010000000100;  op2val:0x11efff7fff0009
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x800010000000100, 0x11efff7fff0009, x4, 168, x5)

inst_40:
// rs1_h0_val == 57343, rs2_h1_val == 65503, rs1_h2_val == 65535
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x200ffff0005dfff;  op2val:0xfbff0006ffdf000c
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x200ffff0005dfff, 0xfbff0006ffdf000c, x4, 176, x5)

inst_41:
// rs1_h0_val == 61439, rs2_h0_val == 61439, rs2_h2_val == 65023
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff01000100efff;  op2val:0x03fdffffbfefff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfbff01000100efff, 0x03fdffffbfefff, x4, 184, x5)

inst_42:
// rs1_h0_val == 63487, rs2_h2_val == 65503, rs2_h1_val == 65407, rs1_h1_val == 32767
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x400010007ffff7ff;  op2val:0x0cffdfff7f0002
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x400010007ffff7ff, 0x0cffdfff7f0002, x4, 192, x5)

inst_43:
// rs1_h0_val == 65279, rs2_h1_val == 64511, rs1_h1_val == 65471, rs2_h0_val == 128
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x0e000cffbffeff;  op2val:0x10000bfbff0080
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x0e000cffbffeff, 0x10000bfbff0080, x4, 200, x5)

inst_44:
// rs1_h0_val == 65407, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff00120400ff7f;  op2val:0xfeff0007ffff000a
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xbfff00120400ff7f, 0xfeff0007ffff000a, x4, 208, x5)

inst_45:
// rs1_h0_val == 65471, rs2_h1_val == 0
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f00800004ffbf;  op2val:0x0f001100000006
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xff7f00800004ffbf, 0x0f001100000006, x4, 216, x5)

inst_46:
// rs1_h0_val == 65519, rs2_h0_val == 8192
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x0bffbf0004ffef;  op2val:0xaaaa8000efff2000
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x0bffbf0004ffef, 0xaaaa8000efff2000, x4, 224, x5)

inst_47:
// rs1_h0_val == 65527, rs2_h1_val == 65531, rs1_h2_val == 8192
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x0e20000002fff7;  op2val:0x120013fffb0040
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x0e20000002fff7, 0x120013fffb0040, x4, 232, x5)

inst_48:
// rs1_h0_val == 65534, rs2_h2_val == 16384, rs1_h3_val == 2, rs2_h0_val == 65279
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x02000c000dfffe;  op2val:0x0a4000effffeff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x02000c000dfffe, 0x0a4000effffeff, x4, 240, x5)

inst_49:
// rs1_h0_val == 16384, rs2_h2_val == 21845
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xff7f000900094000;  op2val:0xffff55550005feff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xff7f000900094000, 0xffff55550005feff, x4, 248, x5)

inst_50:
// rs1_h0_val == 4096, rs1_h2_val == 64, rs2_h1_val == 2
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0040000b1000;  op2val:0x0fbfff0002000e
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x7fff0040000b1000, 0x0fbfff0002000e, x4, 256, x5)

inst_51:
// rs1_h0_val == 1024, rs2_h0_val == 32, rs1_h3_val == 65503
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdfdffff7ff0400;  op2val:0xfffd0007efff0020
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xffdfdffff7ff0400, 0xfffd0007efff0020, x4, 264, x5)

inst_52:
// rs1_h0_val == 128, rs2_h2_val == 8192, rs2_h0_val == 43690
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff000300110080;  op2val:0x1320000008aaaa
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x7fff000300110080, 0x1320000008aaaa, x4, 272, x5)

inst_53:
// rs1_h0_val == 16, rs1_h1_val == 65407
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x12000dff7f0010;  op2val:0x01fff755550013
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x12000dff7f0010, 0x01fff755550013, x4, 280, x5)

inst_54:
// rs1_h0_val == 4, rs1_h2_val == 4, rs2_h0_val == 65531
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000000480000004;  op2val:0x0b0080ffbffffb
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x2000000480000004, 0x0b0080ffbffffb, x4, 288, x5)

inst_55:
// rs1_h0_val == 1, rs2_h2_val == 4096
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000555510000001;  op2val:0x8001000000f0012
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x2000555510000001, 0x8001000000f0012, x4, 296, x5)

inst_56:
// rs2_h3_val == 0, rs2_h0_val == 65503, rs2_h1_val == 65527
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef0005fffb0080;  op2val:0x00000ffff7ffdf
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xffef0005fffb0080, 0x00000ffff7ffdf, x4, 304, x5)

inst_57:
// rs2_h2_val == 43690, rs1_h3_val == 43690
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa00407fff0007;  op2val:0x0eaaaa000d2000
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xaaaa00407fff0007, 0x0eaaaa000d2000, x4, 312, x5)

inst_58:
// rs2_h2_val == 57343, rs1_h1_val == 65533, rs1_h3_val == 65534
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe000efffd0009;  op2val:0x10dfff0200feff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffe000efffd0009, 0x10dfff0200feff, x4, 320, x5)

inst_59:
// rs2_h2_val == 63487, rs2_h1_val == 256
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x06000c000b0400;  op2val:0xfffbf7ff01000003
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x06000c000b0400, 0xfffbf7ff01000003, x4, 328, x5)

inst_60:
// rs1_h1_val == 8, rs1_h3_val == 1, rs2_h2_val == 8
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x01fbff00080008;  op2val:0x10000855550012
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x01fbff00080008, 0x10000855550012, x4, 336, x5)

inst_61:
// rs2_h0_val == 65534, rs2_h1_val == 65533
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xffff001300010400;  op2val:0x07fbfffffdfffe
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xffff001300010400, 0x07fbfffffdfffe, x4, 344, x5)

inst_62:
// rs2_h0_val == 4096, rs1_h3_val == 4
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x04000500025555;  op2val:0x20bfff01001000
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x04000500025555, 0x20bfff01001000, x4, 352, x5)

inst_63:
// rs2_h0_val == 2048, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0012fff7000b;  op2val:0xfffd0005fffe0800
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x7fff0012fff7000b, 0xfffd0005fffe0800, x4, 360, x5)

inst_64:
// rs2_h0_val == 256, rs1_h3_val == 1024, rs1_h2_val == 65527
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x400fff70012000f;  op2val:0x05fffd00020100
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x400fff70012000f, 0x05fffd00020100, x4, 368, x5)

inst_65:
// rs1_h3_val == 21845, rs2_h0_val == 64511, rs2_h1_val == 57343, rs1_h1_val == 16
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x5555fff70010ff7f;  op2val:0xfbff000bdffffbff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x5555fff70010ff7f, 0xfbff000bdffffbff, x4, 376, x5)

inst_66:
// rs1_h3_val == 61439, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff0100fffff7ff;  op2val:0x118000000d0007
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xefff0100fffff7ff, 0x118000000d0007, x4, 384, x5)

inst_67:
// rs1_h3_val == 63487, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff010000110200;  op2val:0x00fff700120100
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xf7ff010000110200, 0x00fff700120100, x4, 392, x5)

inst_68:
// rs1_h3_val == 65023, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff000400020010;  op2val:0x050100f7ff000a
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfdff000400020010, 0x050100f7ff000a, x4, 400, x5)

inst_69:
// rs1_h3_val == 65279, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff000510000001;  op2val:0xffdf8000000d0080
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfeff000510000001, 0xffdf8000000d0080, x4, 408, x5)

inst_70:
// rs1_h3_val == 65531, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb200000090011;  op2val:0x100000b00080400
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffb200000090011, 0x100000b00080400, x4, 416, x5)

inst_71:
// rs1_h3_val == 65533, rs1_h1_val == 61439
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd5555efffffbf;  op2val:0x13000c1000fffb
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffd5555efffffbf, 0x13000c1000fffb, x4, 424, x5)

inst_72:
// rs1_h3_val == 32768, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000f20005555;  op2val:0x100040aaaa000f
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x8000000f20005555, 0x100040aaaa000f, x4, 432, x5)

inst_73:
// rs1_h3_val == 4096, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000ffff00400020;  op2val:0xfbffffdf000bfffd
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x1000ffff00400020, 0xfbffffdf000bfffd, x4, 440, x5)

inst_74:
// rs1_h3_val == 128, rs1_h1_val == 57343, rs1_h2_val == 65279
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x80feffdfff000d;  op2val:0x800ffdfbfff0010
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x80feffdfff000d, 0x800ffdfbfff0010, x4, 448, x5)

inst_75:
// rs2_h2_val == 65471, rs1_h2_val == 65503
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffdf80000000;  op2val:0x5555ffbf00000009
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfeffffdf80000000, 0x5555ffbf00000009, x4, 456, x5)

inst_76:
// rs1_h3_val == 0, rs2_h2_val == 16
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fbff00121000;  op2val:0x10000010000afffb
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x00fbff00121000, 0x10000010000afffb, x4, 464, x5)

inst_77:
// rs1_h2_val == 63487, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbffff7ff00200004;  op2val:0x1000400800000d
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xbffff7ff00200004, 0x1000400800000d, x4, 472, x5)

inst_78:
// rs1_h2_val == 32767, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x007fff000eff7f;  op2val:0x20000013fbff0002
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x007fff000eff7f, 0x20000013fbff0002, x4, 480, x5)

inst_79:
// rs2_h2_val == 512, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x131000fff70012;  op2val:0xfeff020000070005
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x131000fff70012, 0xfeff020000070005, x4, 488, x5)

inst_80:
// rs2_h2_val == 32, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb80000010000b;  op2val:0x1000020fffb000c
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffb80000010000b, 0x1000020fffb000c, x4, 496, x5)

inst_81:
// rs1_h2_val == 65519, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffef00090002;  op2val:0xfffe000000130010
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfdffffef00090002, 0xfffe000000130010, x4, 504, x5)

inst_82:
// rs1_h2_val == 65531, rs1_h1_val == 64511, rs2_h1_val == 65519
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000fffbfbff0001;  op2val:0xffbf0020ffeffffb
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x2000fffbfbff0001, 0xffbf0020ffeffffb, x4, 512, x5)

inst_83:
// rs2_h2_val == 1, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x09000301000011;  op2val:0x0c000100060006
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x09000301000011, 0x0c000100060006, x4, 520, x5)

inst_84:
// rs1_h2_val == 65534, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfefffffebfff0011;  op2val:0x4000f7ff00090007
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfefffffebfff0011, 0x4000f7ff00090007, x4, 528, x5)

inst_85:
// rs2_h2_val == 65535, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb0004fff70020;  op2val:0x10ffff0009efff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffb0004fff70020, 0x10ffff0009efff, x4, 536, x5)

inst_86:
// rs1_h2_val == 16384, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffb400000010006;  op2val:0x100001200404000
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffb400000010006, 0x100001200404000, x4, 544, x5)

inst_87:
// rs1_h2_val == 2048, rs1_h1_val == 43690
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff0800aaaa8000;  op2val:0xfbffff7fffbffeff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfdff0800aaaa8000, 0xfbffff7fffbffeff, x4, 552, x5)

inst_88:
// rs1_h2_val == 512, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xbfff0200000e0020;  op2val:0x030000fdff0004
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xbfff0200000e0020, 0x030000fdff0004, x4, 560, x5)

inst_89:
// rs1_h1_val == 21845, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafdff55558000;  op2val:0xffffffbffffeffff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xaaaafdff55558000, 0xffffffbffffeffff, x4, 568, x5)

inst_90:
// rs2_h1_val == 32768, rs1_h1_val == 65023
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000004fdff0002;  op2val:0xfffddfff8000fffe
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x1000004fdff0002, 0xfffddfff8000fffe, x4, 576, x5)

inst_91:
// rs2_h0_val == 63487, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x100000110007dfff;  op2val:0xdfff0020effff7ff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x100000110007dfff, 0xdfff0020effff7ff, x4, 584, x5)

inst_92:
// rs2_h1_val == 32, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x050200effffbff;  op2val:0x800000070020bfff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x050200effffbff, 0x800000070020bfff, x4, 592, x5)

inst_93:
// rs2_h1_val == 16, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000fffb0020feff;  op2val:0xf7ff00030010ffff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x8000fffb0020feff, 0xf7ff00030010ffff, x4, 600, x5)

inst_94:
// rs1_h1_val == 65519, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffd0080ffeffffd;  op2val:0xdfff008001000003
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffd0080ffeffffd, 0xdfff008001000003, x4, 608, x5)

inst_95:
// rs1_h2_val == 8, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000800090008;  op2val:0xdfff0100f7ff000d
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x8000000800090008, 0xdfff0100f7ff000d, x4, 616, x5)

inst_96:
// rs2_h1_val == 1, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0080fffe0040;  op2val:0x100f7ff00010004
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xfffe0080fffe0040, 0x100f7ff00010004, x4, 624, x5)

inst_97:
// rs2_h0_val == 21845, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff5555bffff7ff;  op2val:0x0f000e00075555
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0xefff5555bffff7ff, 0x0f000e00075555, x4, 632, x5)

inst_98:
// rs1_h2_val == 2, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff00028000fffd;  op2val:0xfefffdffff7f0013
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x7fff00028000fffd, 0xfefffdffff7f0013, x4, 640, x5)

inst_99:
// rs1_h1_val == 128, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x0700060080fffe;  op2val:0x11aaaa0800000b
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x0700060080fffe, 0x11aaaa0800000b, x4, 648, x5)

inst_100:
// rs1_h2_val == 43690, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x0baaaaff7f0040;  op2val:0x0cfffd000d0009
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x0baaaaff7f0040, 0x0cfffd000d0009, x4, 656, x5)

inst_101:
// rs2_h2_val == 65534, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffb00090200;  op2val:0x200fffe00405555
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x1000fffb00090200, 0x200fffe00405555, x4, 664, x5)

inst_102:
// rs2_h0_val == 65407, 
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x20008001000000b;  op2val:0x7fff00115555ff7f
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x20008001000000b, 0x7fff00115555ff7f, x4, 672, x5)

inst_103:
// rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h1_val == 8192, rs2_h0_val == 32768, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h1_val == 4096, rs1_h0_val == 32768
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x07000c10008000;  op2val:0x0d000c20008000
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x07000c10008000, 0x0d000c20008000, x4, 680, x5)

inst_104:
// rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val == 8192, rs1_h3_val == 16, rs2_h3_val == 4096
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x10000300092000;  op2val:0x100000400009000a
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x10000300092000, 0x100000400009000a, x4, 688, x5)

inst_105:
// rs2_h3_val == 256, rs1_h2_val == 65407
// opcode: urstas16 ; op1:x30; op2:x29; dest:x31; op1val:0x07ff7f0003000e;  op2val:0x100fffb0006bfff
TEST_RR_OP(urstas16, x31, x30, x29, 0x0000000000000000, 0x07ff7f0003000e, 0x100fffb0006bfff, x4, 696, x5)
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


signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x4_0:
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
