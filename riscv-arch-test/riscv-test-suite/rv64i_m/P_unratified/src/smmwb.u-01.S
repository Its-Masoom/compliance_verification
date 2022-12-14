
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
// This assembly file tests the smmwb.u instruction of the RISC-V RV64PZicsr extension for the smmwb.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",smmwb.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x6,signature_x6_1)

inst_0:
// rs1 == rd != rs2, rs1==x16, rs2==x27, rd==x16, rs1_w0_val == -2147483648, rs2_h0_val == 16384, rs2_h2_val == 32, rs2_h3_val == 0, rs1_w1_val == -2147483648, rs2_h1_val == -3
// opcode: smmwb.u ; op1:x16; op2:x27; dest:x16; op1val:0x8000000080000000;  op2val:0x000020fffd4000
TEST_RR_OP(smmwb.u, x16, x16, x27, 0x0000000000000000, 0x8000000080000000, 0x000020fffd4000, x6, 0, x1)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x23, rs2==x11, rd==x21, rs2_h3_val == -21846, rs2_h1_val == 32, rs2_h0_val == 128, rs1_w1_val == 256, rs2_h2_val == -1025, rs1_w0_val == -1431655766
// opcode: smmwb.u ; op1:x23; op2:x11; dest:x21; op1val:0x000100aaaaaaaa;  op2val:0xaaaafbff00200080
TEST_RR_OP(smmwb.u, x21, x23, x11, 0x0000000000000000, 0x000100aaaaaaaa, 0xaaaafbff00200080, x6, 8, x1)

inst_2:
// rs1 == rs2 != rd, rs1==x20, rs2==x20, rd==x9, rs2_h3_val == 21845, rs2_h2_val == -17, rs2_h0_val == 2048, rs2_h1_val == -65, rs1_w0_val == -131073
// opcode: smmwb.u ; op1:x20; op2:x20; dest:x9; op1val:0xc0000000fffdffff;  op2val:0x5555ffefffbf0800
TEST_RR_OP(smmwb.u, x9, x20, x20, 0x0000000000000000, 0xc0000000fffdffff, 0x5555ffefffbf0800, x6, 16, x1)

inst_3:
// rs1 == rs2 == rd, rs1==x28, rs2==x28, rd==x28, rs2_h3_val == 32767, rs2_h0_val == 64, rs2_h2_val == -8193, rs2_h1_val == 21845, rs1_w0_val == 16384
// opcode: smmwb.u ; op1:x28; op2:x28; dest:x28; op1val:0xfffffffc00004000;  op2val:0x7fffdfff55550040
TEST_RR_OP(smmwb.u, x28, x28, x28, 0x0000000000000000, 0xfffffffc00004000, 0x7fffdfff55550040, x6, 24, x1)

inst_4:
// rs2 == rd != rs1, rs1==x22, rs2==x3, rd==x3, rs2_h3_val == -16385, rs2_h0_val == -16385, rs1_w1_val == -33554433, rs2_h1_val == -33, rs2_h2_val == -3
// opcode: smmwb.u ; op1:x22; op2:x3; dest:x3; op1val:0xfdffffffc0000000;  op2val:0xbffffffdffdfbfff
TEST_RR_OP(smmwb.u, x3, x22, x3, 0x0000000000000000, 0xfdffffffc0000000, 0xbffffffdffdfbfff, x6, 32, x1)

inst_5:
// rs1==x24, rs2==x10, rd==x18, rs2_h3_val == -8193, rs2_h1_val == -129, rs2_h2_val == 2048, rs1_w1_val == -536870913, rs1_w0_val == -9
// opcode: smmwb.u ; op1:x24; op2:x10; dest:x18; op1val:0xdffffffffffffff7;  op2val:0xdfff0800ff7f0009
TEST_RR_OP(smmwb.u, x18, x24, x10, 0x0000000000000000, 0xdffffffffffffff7, 0xdfff0800ff7f0009, x6, 40, x1)

inst_6:
// rs1==x26, rs2==x18, rd==x22, rs2_h3_val == -4097, rs2_h2_val == 16384, rs1_w1_val == -257, rs2_h0_val == -1025, rs2_h1_val == -2049
// opcode: smmwb.u ; op1:x26; op2:x18; dest:x22; op1val:0xfffffeff3fffffff;  op2val:0xefff4000f7fffbff
TEST_RR_OP(smmwb.u, x22, x26, x18, 0x0000000000000000, 0xfffffeff3fffffff, 0xefff4000f7fffbff, x6, 48, x1)

inst_7:
// rs1==x0, rs2==x13, rd==x12, rs2_h3_val == -2049, rs2_h2_val == -1, rs1_w1_val == -1431655766, rs2_h1_val == -32768
// opcode: smmwb.u ; op1:x0; op2:x13; dest:x12; op1val:0xaaaaaaaa00000003;  op2val:0xf7ffffff8000bfff
TEST_RR_OP(smmwb.u, x12, x0, x13, 0x0000000000000000, 0xaaaaaaaa00000003, 0xf7ffffff8000bfff, x6, 56, x1)

inst_8:
// rs1==x2, rs2==x15, rd==x27, rs2_h3_val == -1025, rs1_w1_val == 67108864, rs2_h1_val == -2, rs2_h0_val == -257
// opcode: smmwb.u ; op1:x2; op2:x15; dest:x27; op1val:0x400000000000005;  op2val:0xfbfffffafffefeff
TEST_RR_OP(smmwb.u, x27, x2, x15, 0x0000000000000000, 0x400000000000005, 0xfbfffffafffefeff, x6, 64, x1)

inst_9:
// rs1==x27, rs2==x25, rd==x0, rs2_h3_val == -513, rs2_h2_val == 16, rs1_w0_val == -65537, rs1_w1_val == -9
// opcode: smmwb.u ; op1:x27; op2:x25; dest:x0; op1val:0xfffffff7fffeffff;  op2val:0xfdff00100009feff
TEST_RR_OP(smmwb.u, x0, x27, x25, 0x0000000000000000, 0xfffffff7fffeffff, 0xfdff00100009feff, x6, 72, x1)

inst_10:
// rs1==x9, rs2==x17, rd==x14, rs2_h3_val == -257, rs2_h2_val == -65, rs1_w0_val == -268435457, rs1_w1_val == -1
// opcode: smmwb.u ; op1:x9; op2:x17; dest:x14; op1val:0xffffffffefffffff;  op2val:0xfeffffbf55550800
TEST_RR_OP(smmwb.u, x14, x9, x17, 0x0000000000000000, 0xffffffffefffffff, 0xfeffffbf55550800, x6, 80, x1)

inst_11:
// rs1==x12, rs2==x7, rd==x24, rs2_h3_val == -129, rs1_w1_val == -1025, rs1_w0_val == 32, rs2_h1_val == 32767, rs2_h0_val == -21846
// opcode: smmwb.u ; op1:x12; op2:x7; dest:x24; op1val:0xfffffbff00000020;  op2val:0xff7f08007fffaaaa
TEST_RR_OP(smmwb.u, x24, x12, x7, 0x0000000000000000, 0xfffffbff00000020, 0xff7f08007fffaaaa, x6, 88, x1)

inst_12:
// rs1==x10, rs2==x26, rd==x25, rs2_h3_val == -65, rs1_w1_val == -8388609, rs2_h0_val == 0
// opcode: smmwb.u ; op1:x10; op2:x26; dest:x25; op1val:0xff7ffffffffffff7;  op2val:0xffbf0005fff90000
TEST_RR_OP(smmwb.u, x25, x10, x26, 0x0000000000000000, 0xff7ffffffffffff7, 0xffbf0005fff90000, x6, 96, x1)

inst_13:
// rs1==x3, rs2==x31, rd==x17, rs2_h3_val == -33, rs2_h1_val == -21846, rs2_h0_val == -3, rs1_w0_val == 4096, rs2_h2_val == 0
// opcode: smmwb.u ; op1:x3; op2:x31; dest:x17; op1val:0xff7fffff00001000;  op2val:0xffdf0000aaaafffd
TEST_RR_OP(smmwb.u, x17, x3, x31, 0x0000000000000000, 0xff7fffff00001000, 0xffdf0000aaaafffd, x6, 104, x1)

inst_14:
// rs1==x15, rs2==x19, rd==x23, rs2_h3_val == -17, rs1_w0_val == -67108865
// opcode: smmwb.u ; op1:x15; op2:x19; dest:x23; op1val:0xc0000000fbffffff;  op2val:0xffef0800fffdc000
TEST_RR_OP(smmwb.u, x23, x15, x19, 0x0000000000000000, 0xc0000000fbffffff, 0xffef0800fffdc000, x6, 112, x1)

inst_15:
// rs1==x5, rs2==x24, rd==x8, rs2_h3_val == -9, rs2_h0_val == -1, rs2_h1_val == -8193, rs2_h2_val == -2
// opcode: smmwb.u ; op1:x5; op2:x24; dest:x8; op1val:0xfffffffcfffdffff;  op2val:0xfff7fffedfffffff
TEST_RR_OP(smmwb.u, x8, x5, x24, 0x0000000000000000, 0xfffffffcfffdffff, 0xfff7fffedfffffff, x6, 120, x1)

inst_16:
// rs1==x8, rs2==x12, rd==x20, rs2_h3_val == -5, rs2_h1_val == 1, rs1_w0_val == 67108864, rs2_h0_val == -513
// opcode: smmwb.u ; op1:x8; op2:x12; dest:x20; op1val:0xffffffff04000000;  op2val:0xfffbfff90001fdff
TEST_RR_OP(smmwb.u, x20, x8, x12, 0x0000000000000000, 0xffffffff04000000, 0xfffbfff90001fdff, x6, 128, x9)

inst_17:
// rs1==x4, rs2==x1, rd==x5, rs2_h3_val == -3, rs2_h2_val == -33, rs1_w1_val == -4194305, rs1_w0_val == 2147483647
// opcode: smmwb.u ; op1:x4; op2:x1; dest:x5; op1val:0xffbfffff7fffffff;  op2val:0xfffdffdff7fffffd
TEST_RR_OP(smmwb.u, x5, x4, x1, 0x0000000000000000, 0xffbfffff7fffffff, 0xfffdffdff7fffffd, x6, 136, x9)
RVTEST_SIGBASE(x3,signature_x3_0)

inst_18:
// rs1==x17, rs2==x0, rd==x29, rs2_h3_val == -2, rs1_w1_val == 65536, rs1_w0_val == -1048577, rs2_h2_val == 4, rs2_h0_val == 512, rs2_h1_val == -16385
// opcode: smmwb.u ; op1:x17; op2:x0; dest:x29; op1val:0x010000ffefffff;  op2val:0xfffe0004bfff0200
TEST_RR_OP(smmwb.u, x29, x17, x0, 0x0000000000000000, 0x010000ffefffff, 0xfffe0004bfff0200, x3, 0, x9)

inst_19:
// rs1==x13, rs2==x14, rd==x1, rs2_h3_val == -32768, rs1_w0_val == -257, rs2_h0_val == 32767, rs2_h2_val == -9, rs1_w1_val == -268435457, rs2_h1_val == 8192
// opcode: smmwb.u ; op1:x13; op2:x14; dest:x1; op1val:0xeffffffffffffeff;  op2val:0x8000fff720007fff
TEST_RR_OP(smmwb.u, x1, x13, x14, 0x0000000000000000, 0xeffffffffffffeff, 0x8000fff720007fff, x3, 8, x9)

inst_20:
// rs1==x1, rs2==x29, rd==x30, rs2_h3_val == 16384, rs1_w1_val == 536870912
// opcode: smmwb.u ; op1:x1; op2:x29; dest:x30; op1val:0x20000000fffdffff;  op2val:0x40000020fffe4000
TEST_RR_OP(smmwb.u, x30, x1, x29, 0x0000000000000000, 0x20000000fffdffff, 0x40000020fffe4000, x3, 16, x9)

inst_21:
// rs1==x6, rs2==x30, rd==x10, rs2_h3_val == 8192, rs2_h2_val == 64, rs1_w0_val == 524288, rs2_h1_val == 2, rs2_h0_val == -9, rs1_w1_val == -2097153
// opcode: smmwb.u ; op1:x6; op2:x30; dest:x10; op1val:0xffdfffff00080000;  op2val:0x200000400002fff7
TEST_RR_OP(smmwb.u, x10, x6, x30, 0x0000000000000000, 0xffdfffff00080000, 0x200000400002fff7, x3, 24, x9)

inst_22:
// rs1==x19, rs2==x21, rd==x31, rs2_h3_val == 4096, rs2_h1_val == 512, rs1_w1_val == 1073741824, rs1_w0_val == -8193
// opcode: smmwb.u ; op1:x19; op2:x21; dest:x31; op1val:0x40000000ffffdfff;  op2val:0x1000000502000009
TEST_RR_OP(smmwb.u, x31, x19, x21, 0x0000000000000000, 0x40000000ffffdfff, 0x1000000502000009, x3, 32, x9)

inst_23:
// rs1==x18, rs2==x5, rd==x6, rs2_h3_val == 2048, rs2_h1_val == -9
// opcode: smmwb.u ; op1:x18; op2:x5; dest:x6; op1val:0xfffffffa80000000;  op2val:0x800fffcfff74000
TEST_RR_OP(smmwb.u, x6, x18, x5, 0x0000000000000000, 0xfffffffa80000000, 0x800fffcfff74000, x3, 40, x9)

inst_24:
// rs1==x21, rs2==x4, rd==x2, rs2_h3_val == 1024, rs2_h1_val == -1025, rs1_w1_val == -16777217, rs1_w0_val == -16777217
// opcode: smmwb.u ; op1:x21; op2:x4; dest:x2; op1val:0xfefffffffeffffff;  op2val:0x4000040fbfffbff
TEST_RR_OP(smmwb.u, x2, x21, x4, 0x0000000000000000, 0xfefffffffeffffff, 0x4000040fbfffbff, x3, 48, x9)

inst_25:
// rs1==x31, rs2==x8, rd==x15, rs2_h3_val == 512, rs2_h1_val == 128, rs2_h0_val == 1
// opcode: smmwb.u ; op1:x31; op2:x8; dest:x15; op1val:0xffdfffffffefffff;  op2val:0x200fffe00800001
TEST_RR_OP(smmwb.u, x15, x31, x8, 0x0000000000000000, 0xffdfffffffefffff, 0x200fffe00800001, x3, 56, x9)

inst_26:
// rs1==x14, rs2==x16, rd==x11, rs2_h3_val == 256, rs1_w1_val == 262144, rs2_h2_val == -2049
// opcode: smmwb.u ; op1:x14; op2:x16; dest:x11; op1val:0x04000080000000;  op2val:0x100f7fffff80200
TEST_RR_OP(smmwb.u, x11, x14, x16, 0x0000000000000000, 0x04000080000000, 0x100f7fffff80200, x3, 64, x9)

inst_27:
// rs1==x11, rs2==x6, rd==x26, rs2_h3_val == 128, rs2_h1_val == -1, rs2_h2_val == -32768
// opcode: smmwb.u ; op1:x11; op2:x6; dest:x26; op1val:0xfffffff9fffffff9;  op2val:0x808000ffff0001
TEST_RR_OP(smmwb.u, x26, x11, x6, 0x0000000000000000, 0xfffffff9fffffff9, 0x808000ffff0001, x3, 72, x9)

inst_28:
// rs1==x30, rs2==x2, rd==x7, rs2_h3_val == 64, rs1_w0_val == -17, rs2_h2_val == -5
// opcode: smmwb.u ; op1:x30; op2:x2; dest:x7; op1val:0xdfffffffffffffef;  op2val:0x40fffb0200fbff
TEST_RR_OP(smmwb.u, x7, x30, x2, 0x0000000000000000, 0xdfffffffffffffef, 0x40fffb0200fbff, x3, 80, x9)

inst_29:
// rs1==x29, rs2==x23, rd==x4, rs2_h3_val == 32, rs1_w1_val == 4, rs1_w0_val == 2097152, rs2_h2_val == -129
// opcode: smmwb.u ; op1:x29; op2:x23; dest:x4; op1val:0x00000400200000;  op2val:0x20ff7fffdffff8
TEST_RR_OP(smmwb.u, x4, x29, x23, 0x0000000000000000, 0x00000400200000, 0x20ff7fffdffff8, x3, 88, x9)

inst_30:
// rs1==x25, rs2==x22, rd==x19, rs2_h3_val == 16, rs2_h2_val == 4096, rs1_w0_val == 4, rs2_h1_val == -257
// opcode: smmwb.u ; op1:x25; op2:x22; dest:x19; op1val:0x3fffffff00000004;  op2val:0x101000feff0003
TEST_RR_OP(smmwb.u, x19, x25, x22, 0x0000000000000000, 0x3fffffff00000004, 0x101000feff0003, x3, 96, x9)

inst_31:
// rs1==x7, rs2==x9, rd==x13, rs2_h3_val == 8, rs2_h0_val == -33, rs1_w0_val == -4097, rs1_w1_val == 512
// opcode: smmwb.u ; op1:x7; op2:x9; dest:x13; op1val:0x000200ffffefff;  op2val:0x080020ffdfffdf
TEST_RR_OP(smmwb.u, x13, x7, x9, 0x0000000000000000, 0x000200ffffefff, 0x080020ffdfffdf, x3, 104, x1)

inst_32:
// rs2_h3_val == 4, rs1_w1_val == 4194304, rs2_h0_val == 1024, rs1_w0_val == 128
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x40000000000080;  op2val:0x04f7ff20000400
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x40000000000080, 0x04f7ff20000400, x3, 112, x1)

inst_33:
// rs2_h3_val == 2, rs2_h2_val == -16385, rs2_h0_val == 4096
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x80000000fffffff8;  op2val:0x02bfff00031000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x80000000fffffff8, 0x02bfff00031000, x3, 120, x1)

inst_34:
// rs2_h3_val == 1, rs2_h0_val == -65, rs1_w0_val == 4194304
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffc00400000;  op2val:0x01fff60005ffbf
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffc00400000, 0x01fff60005ffbf, x3, 128, x1)

inst_35:
// rs2_h3_val == -1, rs2_h1_val == 64, rs2_h2_val == -21846, rs2_h0_val == 256
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x000006fffffffc;  op2val:0xffffaaaa00400100
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x000006fffffffc, 0xffffaaaa00400100, x3, 136, x1)

inst_36:
// rs2_h2_val == 21845, rs1_w0_val == 32768, rs2_h0_val == -32768
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff00008000;  op2val:0x065555dfff8000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffbff00008000, 0x065555dfff8000, x3, 144, x1)

inst_37:
// rs2_h2_val == 32767, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffa00000080;  op2val:0x3fff7fff3ffffffd
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffa00000080, 0x3fff7fff3ffffffd, x3, 152, x1)

inst_38:
// rs2_h2_val == -4097, rs2_h1_val == -4097
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00010000000005;  op2val:0x4000efffefff8000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00010000000005, 0x4000efffefff8000, x3, 160, x1)

inst_39:
// rs1_w0_val == 1048576, rs1_w1_val == -1048577, rs2_h2_val == 1024, rs2_h0_val == -2
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff00100000;  op2val:0xffef0400fffefffe
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffefffff00100000, 0xffef0400fffefffe, x3, 168, x1)

inst_40:
// rs1_w0_val == 262144, rs1_w1_val == -5
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb00040000;  op2val:0x200004000060000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffb00040000, 0x200004000060000, x3, 176, x1)

inst_41:
// rs1_w0_val == 131072, rs1_w1_val == -1073741825
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff00020000;  op2val:0xfffd0800fff6fff9
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xbfffffff00020000, 0xfffd0800fff6fff9, x3, 184, x1)

inst_42:
// rs1_w0_val == 65536, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffc00010000;  op2val:0x20c00000063fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffc00010000, 0x20c00000063fff, x3, 192, x1)

inst_43:
// rs1_w0_val == 8192, rs2_h1_val == 8
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x40000000002000;  op2val:0xfeffdfff00080005
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x40000000002000, 0xfeffdfff00080005, x3, 200, x1)

inst_44:
// rs1_w0_val == 2048, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff00000800;  op2val:0x01bfff0020ffdf
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xbfffffff00000800, 0x01bfff0020ffdf, x3, 208, x1)

inst_45:
// rs1_w0_val == 1024, rs2_h0_val == -2049, rs2_h2_val == -513
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff00000400;  op2val:0xfffbfdfffff7f7ff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffffff00000400, 0xfffbfdfffff7f7ff, x3, 216, x1)

inst_46:
// rs1_w0_val == 512, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000300000200;  op2val:0x04ff7f00063fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000300000200, 0x04ff7f00063fff, x3, 224, x1)

inst_47:
// rs1_w0_val == 256, rs1_w1_val == 131072, rs2_h2_val == 2
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x02000000000100;  op2val:0xc000000200031000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x02000000000100, 0xc000000200031000, x3, 232, x1)

inst_48:
// rs1_w0_val == 64, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff00000040;  op2val:0xffbf00200040ffdf
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffbff00000040, 0xffbf00200040ffdf, x3, 240, x1)

inst_49:
// rs1_w0_val == 16, rs2_h0_val == 8192
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff600000010;  op2val:0xf7ff0004ffff2000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffff600000010, 0xf7ff0004ffff2000, x3, 248, x1)

inst_50:
// rs1_w0_val == 8, rs1_w1_val == -16385
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffbfff00000008;  op2val:0xfff83ffffbff3fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffbfff00000008, 0xfff83ffffbff3fff, x3, 256, x1)

inst_51:
// rs1_w0_val == 2, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x3fffffff00000002;  op2val:0xfff6040000800005
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x3fffffff00000002, 0xfff6040000800005, x3, 264, x1)

inst_52:
// rs1_w0_val == 1, rs2_h2_val == 8
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff00000001;  op2val:0xfffa000802000800
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffffff00000001, 0xfffa000802000800, x3, 272, x1)

inst_53:
// rs1_w0_val == 0, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xc000000000000000;  op2val:0xc0000003fffffff9
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xc000000000000000, 0xc0000003fffffff9, x3, 280, x1)

inst_54:
// rs1_w0_val == -1, rs2_h0_val == -8193, rs1_w1_val == -134217729
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffffffffffff;  op2val:0x100010000002dfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xf7ffffffffffffff, 0x100010000002dfff, x3, 288, x1)

inst_55:
// rs2_h2_val == -257, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffcffffefff;  op2val:0xffbffeff00077fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffcffffefff, 0xffbffeff00077fff, x3, 296, x1)

inst_56:
// rs2_h2_val == 8192, rs2_h0_val == 32, rs1_w1_val == -2
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe00000004;  op2val:0x082000fff70020
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffe00000004, 0x082000fff70020, x3, 304, x1)

inst_57:
// rs2_h2_val == 512, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000504000000;  op2val:0xfbff0200fffcfeff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000504000000, 0xfbff0200fffcfeff, x3, 312, x1)

inst_58:
// rs2_h2_val == 256, rs2_h1_val == 1024, rs1_w0_val == -134217729
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffbffffff7ffffff;  op2val:0x100010004001000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffbffffff7ffffff, 0x100010004001000, x3, 320, x1)

inst_59:
// rs2_h2_val == 128, rs2_h0_val == 8
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff00008000;  op2val:0x3fff0080feff0008
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xefffffff00008000, 0x3fff0080feff0008, x3, 328, x1)

inst_60:
// rs2_h2_val == 1, rs2_h1_val == 4
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbffffffdfff;  op2val:0x80000010004bfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffbffffffdfff, 0x80000010004bfff, x3, 336, x1)

inst_61:
// rs2_h1_val == -513, rs1_w1_val == 32768, rs1_w0_val == -2
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x008000fffffffe;  op2val:0x400fffdfdff4000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x008000fffffffe, 0x400fffdfdff4000, x3, 344, x1)

inst_62:
// rs2_h1_val == -17, rs1_w1_val == 2048
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00080000000020;  op2val:0x070400ffeffff8
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00080000000020, 0x070400ffeffff8, x3, 352, x1)

inst_63:
// rs2_h1_val == -5, rs1_w1_val == 33554432, rs1_w0_val == 33554432
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000002000000;  op2val:0x400aaaafffbaaaa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x200000002000000, 0x400aaaafffbaaaa, x3, 360, x1)

inst_64:
// rs2_h1_val == 16384, rs1_w1_val == -67108865
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffff00000002;  op2val:0x20003fff40000006
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfbffffff00000002, 0x20003fff40000006, x3, 368, x1)

inst_65:
// rs2_h1_val == 4096, rs2_h0_val == -17
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffff04000000;  op2val:0xf7ff00091000ffef
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfbffffff04000000, 0xf7ff00091000ffef, x3, 376, x1)

inst_66:
// rs2_h1_val == 2048, rs1_w1_val == -17
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef00000020;  op2val:0x10fff808000008
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffffef00000020, 0x10fff808000008, x3, 384, x1)

inst_67:
// rs2_h1_val == 256, rs1_w1_val == -129, rs2_h0_val == 4, rs1_w0_val == -2049
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7ffffff7ff;  op2val:0x40020001000004
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffff7ffffff7ff, 0x40020001000004, x3, 392, x1)

inst_68:
// rs2_h1_val == 16, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff00000008;  op2val:0x0800040010dfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfeffffff00000008, 0x0800040010dfff, x3, 400, x1)

inst_69:
// rs2_h1_val == 0, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff00000040;  op2val:0xfffcf7ff0000ffff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xbfffffff00000040, 0xfffcf7ff0000ffff, x3, 408, x1)

inst_70:
// rs2_h0_val == 16, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffffff00000020;  op2val:0xffdf020000400010
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xf7ffffff00000020, 0xffdf020000400010, x3, 416, x1)

inst_71:
// rs2_h0_val == 2, rs1_w1_val == -513, rs1_w0_val == 1073741824
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff40000000;  op2val:0x400007fffa0002
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffdff40000000, 0x400007fffa0002, x3, 424, x1)

inst_72:
// rs1_w1_val == 1431655765, rs2_h0_val == -5
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x5555555500000800;  op2val:0xff7ffbffbffffffb
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x5555555500000800, 0xff7ffbffbffffffb, x3, 432, x1)

inst_73:
// rs1_w1_val == 2147483647, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffff00000001;  op2val:0xfffc0006fffafff9
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x7fffffff00000001, 0xfffc0006fffafff9, x3, 440, x1)

inst_74:
// rs1_w1_val == -524289, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffff00004000;  op2val:0xfdffefffaaaa1000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfff7ffff00004000, 0xfdffefffaaaa1000, x3, 448, x1)

inst_75:
// rs1_w1_val == -262145, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfffffffffff7;  op2val:0xbfff010040000003
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffbfffffffffff7, 0xbfff010040000003, x3, 456, x1)

inst_76:
// rs1_w1_val == -131073, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff00010000;  op2val:0x085555fff78000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffdffff00010000, 0x085555fff78000, x3, 464, x1)

inst_77:
// rs1_w1_val == -65537, rs1_w0_val == -4194305
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffeffffffbfffff;  op2val:0xffbf0003fff9fffa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffeffffffbfffff, 0xffbf0003fff9fffa, x3, 472, x1)

inst_78:
// rs1_w1_val == -32769, rs1_w0_val == -33
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffff7fffffffffdf;  op2val:0x800feff40003fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffff7fffffffffdf, 0x800feff40003fff, x3, 480, x1)

inst_79:
// rs1_w1_val == -8193, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff00000006;  op2val:0xfbff7ffffff60007
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffdfff00000006, 0xfbff7ffffff60007, x3, 488, x1)

inst_80:
// rs1_w1_val == -4097, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00000003;  op2val:0xffef00070400fffa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffefff00000003, 0xffef00070400fffa, x3, 496, x1)

inst_81:
// rs1_w1_val == -2049, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7ffaaaaaaaa;  op2val:0xffef00023fff0003
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffff7ffaaaaaaaa, 0xffef00023fff0003, x3, 504, x1)

inst_82:
// rs1_w1_val == -65, rs1_w0_val == 16777216
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf01000000;  op2val:0xdffffeff00077fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffffbf01000000, 0xdffffeff00077fff, x3, 512, x1)

inst_83:
// rs1_w1_val == -33, rs1_w0_val == -32769
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdfffff7fff;  op2val:0x07c000fff8fffd
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffffffdfffff7fff, 0x07c000fff8fffd, x3, 520, x1)

inst_84:
// rs1_w1_val == -3, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd04000000;  op2val:0xfffdfffdfff8fffe
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffd04000000, 0xfffdfffdfff8fffe, x3, 528, x1)

inst_85:
// rs1_w1_val == 268435456, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x10000000ffbfffff;  op2val:0xffeffffefffb0020
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x10000000ffbfffff, 0xffeffffefffb0020, x3, 536, x1)

inst_86:
// rs1_w1_val == 134217728, rs1_w0_val == 8388608
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x800000000800000;  op2val:0x065555ffef0009
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x800000000800000, 0x065555ffef0009, x3, 544, x1)

inst_87:
// rs1_w1_val == 16777216, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000000000040;  op2val:0x042000fffdfff7
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x100000000000040, 0x042000fffdfff7, x3, 552, x1)

inst_88:
// rs1_w1_val == 8388608, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x80000000001000;  op2val:0x04c0005555fffa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x80000000001000, 0x04c0005555fffa, x3, 560, x1)

inst_89:
// rs1_w1_val == 2097152, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x20000040000000;  op2val:0x7ffffff70008ffff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x20000040000000, 0x7ffffff70008ffff, x3, 568, x1)

inst_90:
// rs1_w1_val == 1048576, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x10000000200000;  op2val:0x06000002007fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x10000000200000, 0x06000002007fff, x3, 576, x1)

inst_91:
// rs1_w1_val == 524288, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x080000fffdffff;  op2val:0xdfffaaaa3fffffef
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x080000fffdffff, 0xdfffaaaa3fffffef, x3, 584, x1)

inst_92:
// rs1_w1_val == 16384, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x004000ffffffff;  op2val:0xfffcfffb00080080
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x004000ffffffff, 0xfffcfffb00080080, x3, 592, x1)

inst_93:
// rs1_w1_val == 8192, rs1_w0_val == -262145
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x002000fffbffff;  op2val:0xfff9f7fffff61000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x002000fffbffff, 0xfff9f7fffff61000, x3, 600, x1)

inst_94:
// rs1_w1_val == 4096, rs1_w0_val == -2097153
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x001000ffdfffff;  op2val:0x400000501000400
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x001000ffdfffff, 0x400000501000400, x3, 608, x1)

inst_95:
// rs1_w1_val == 1024, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00040000010000;  op2val:0x200002f7fffff8
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00040000010000, 0x200002f7fffff8, x3, 616, x1)

inst_96:
// rs1_w1_val == 128, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x0000807fffffff;  op2val:0xfffb0005ffbf0100
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x0000807fffffff, 0xfffb0005ffbf0100, x3, 624, x1)

inst_97:
// rs1_w1_val == 64, rs1_w0_val == -129
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x000040ffffff7f;  op2val:0x10080000100fffc
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x000040ffffff7f, 0x10080000100fffc, x3, 632, x1)

inst_98:
// rs1_w1_val == 32, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00002000000100;  op2val:0xfffeff7f0006feff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00002000000100, 0xfffeff7f0006feff, x3, 640, x1)

inst_99:
// rs1_w1_val == 16, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00001000002000;  op2val:0x08f7ffffdfffdf
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00001000002000, 0x08f7ffffdfffdf, x3, 648, x1)

inst_100:
// rs1_w1_val == 8, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000800000009;  op2val:0x40fffa08004000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000800000009, 0x40fffa08004000, x3, 656, x1)

inst_101:
// rs1_w1_val == 2, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000240000000;  op2val:0xffefbfff3ffffffd
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000240000000, 0xffefbfff3ffffffd, x3, 664, x1)

inst_102:
// rs1_w1_val == 1, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000100000010;  op2val:0x1000002fffabfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000100000010, 0x1000002fffabfff, x3, 672, x1)

inst_103:
// rs1_w1_val == 0, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000000000006;  op2val:0xffff002000200004
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000000000006, 0xffff002000200004, x3, 680, x1)

inst_104:
// rs1_w0_val == 1431655765, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff55555555;  op2val:0x030200dffffffa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xefffffff55555555, 0x030200dffffffa, x3, 688, x1)

inst_105:
// rs1_w0_val == -1073741825, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x001000bfffffff;  op2val:0xffbf0200ffdfffbf
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x001000bfffffff, 0xffbf0200ffdfffbf, x3, 696, x1)

inst_106:
// rs1_w0_val == -536870913, rs2_h0_val == 21845
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x400000dfffffff;  op2val:0x097fff00805555
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x400000dfffffff, 0x097fff00805555, x3, 704, x1)

inst_107:
// rs1_w0_val == -524289, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfff7fffffff7ffff;  op2val:0xfff65555fff80040
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfff7fffffff7ffff, 0xfff65555fff80040, x3, 712, x1)

inst_108:
// rs1_w0_val == -16385, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x000800ffffbfff;  op2val:0x00ffbf00033fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x000800ffffbfff, 0x00ffbf00033fff, x3, 720, x1)

inst_109:
// rs1_w0_val == -1025, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7fffffffbff;  op2val:0xfbff0001fffbc000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffff7fffffffbff, 0xfbff0001fffbc000, x3, 728, x1)

inst_110:
// rs1_w0_val == -513, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xffdffffffffffdff;  op2val:0xffff0040ffdf7fff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xffdffffffffffdff, 0xffff0040ffdf7fff, x3, 736, x1)

inst_111:
// rs1_w0_val == -65, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x000005ffffffbf;  op2val:0xfbff0020fffffff6
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x000005ffffffbf, 0xfbff0020fffffff6, x3, 744, x1)

inst_112:
// rs2_h0_val == -4097, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000602000000;  op2val:0xfffcffef4000efff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000602000000, 0xfffcffef4000efff, x3, 752, x1)

inst_113:
// rs1_w0_val == -5, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffffffffffffb;  op2val:0x02000100020004
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xf7fffffffffffffb, 0x02000100020004, x3, 760, x1)

inst_114:
// rs1_w0_val == -3, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x55555555fffffffd;  op2val:0x2000010004000000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x55555555fffffffd, 0x2000010004000000, x3, 768, x1)

inst_115:
// rs2_h0_val == -129, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x20000000fffffff8;  op2val:0x02ffff4000ff7f
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x20000000fffffff8, 0x02ffff4000ff7f, x3, 776, x1)

inst_116:
// rs1_w0_val == 536870912, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000520000000;  op2val:0x800fff9feff0000
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x00000520000000, 0x800fff9feff0000, x3, 784, x1)

inst_117:
// rs1_w0_val == 268435456, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x1000000010000000;  op2val:0x10fbfffffefffb
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x1000000010000000, 0x10fbfffffefffb, x3, 792, x1)

inst_118:
// rs1_w0_val == 134217728, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffc08000000;  op2val:0x060001bfffdfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffc08000000, 0x060001bfffdfff, x3, 800, x1)

inst_119:
// rs1_w0_val == -33554433, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x000003fdffffff;  op2val:0xdffffff9ffef0009
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x000003fdffffff, 0xdffffff9ffef0009, x3, 808, x1)

inst_120:
// rs1_w0_val == -8388609, 
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffdff7fffff;  op2val:0x03fffa0007fffa
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffffdff7fffff, 0x03fffa0007fffa, x3, 816, x1)

inst_121:
// rs2_h3_val == 21845, rs2_h2_val == -17, rs2_h0_val == 2048, rs2_h1_val == -65, rs1_w0_val == -131073
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xc0000000fffdffff;  op2val:0x5555ffefffbf0800
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xc0000000fffdffff, 0x5555ffefffbf0800, x3, 824, x1)

inst_122:
// rs2_h3_val == -2049, rs2_h2_val == -1, rs1_w1_val == -1431655766, rs2_h1_val == -32768
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaa00000003;  op2val:0xf7ffffff8000bfff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xaaaaaaaa00000003, 0xf7ffffff8000bfff, x3, 832, x1)

inst_123:
// rs2_h3_val == -513, rs2_h2_val == 16, rs1_w0_val == -65537, rs1_w1_val == -9
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7fffeffff;  op2val:0xfdff00100009feff
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0xfffffff7fffeffff, 0xfdff00100009feff, x3, 840, x1)

inst_124:
// rs2_h3_val == -2, rs1_w1_val == 65536, rs1_w0_val == -1048577, rs2_h2_val == 4, rs2_h0_val == 512, rs2_h1_val == -16385
// opcode: smmwb.u ; op1:x30; op2:x29; dest:x31; op1val:0x010000ffefffff;  op2val:0xfffe0004bfff0200
TEST_RR_OP(smmwb.u, x31, x30, x29, 0x0000000000000000, 0x010000ffefffff, 0xfffe0004bfff0200, x3, 848, x1)
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
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 107*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
