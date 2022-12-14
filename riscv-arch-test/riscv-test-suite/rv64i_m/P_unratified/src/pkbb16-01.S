
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
// This assembly file tests the pkbb16 instruction of the RISC-V RV64PZicsr extension for the pkbb16 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",pkbb16)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x13,signature_x13_1)

inst_0:
// rs1 == rd != rs2, rs1==x18, rs2==x2, rd==x18, rs1_h0_val == 0, rs1_h3_val != rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs1_h2_val != rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h2_val == 57343, rs1_h1_val == 65533, rs2_h0_val == 21845, rs1_h2_val == 16, rs2_h3_val == 4096
// opcode: pkbb16 ; op1:x18; op2:x2; dest:x18; op1val:0x0e0010fffd0000;  op2val:0x1000dfff000f5555
TEST_RR_OP(pkbb16, x18, x18, x2, 0x0000000000000000, 0x0e0010fffd0000, 0x1000dfff000f5555, x13, 0, x5)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x29, rs2==x28, rd==x8, rs1_h3_val == rs2_h3_val and rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h1_val == 64, rs2_h2_val == 32768, rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
// opcode: pkbb16 ; op1:x29; op2:x28; dest:x8; op1val:0x1200060013000d;  op2val:0x1280000040000a
TEST_RR_OP(pkbb16, x8, x29, x28, 0x0000000000000000, 0x1200060013000d, 0x1280000040000a, x13, 8, x5)

inst_2:
// rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x31, rs1_h2_val == rs2_h2_val and rs1_h2_val > 0 and rs2_h2_val > 0, rs1_h3_val == 65023, rs2_h1_val == 21845, rs1_h1_val == 65407
// opcode: pkbb16 ; op1:x9; op2:x9; dest:x31; op1val:0xfdff0003ff7f000a;  op2val:0x0b00035555000e
TEST_RR_OP(pkbb16, x31, x9, x9, 0x0000000000000000, 0xfdff0003ff7f000a, 0x0b00035555000e, x13, 16, x5)

inst_3:
// rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0, rs2_h0_val == 61439, rs1_h2_val == 63487
// opcode: pkbb16 ; op1:x26; op2:x26; dest:x26; op1val:0x0ef7ff00110003;  op2val:0x0f00050011efff
TEST_RR_OP(pkbb16, x26, x26, x26, 0x0000000000000000, 0x0ef7ff00110003, 0x0f00050011efff, x13, 24, x5)

inst_4:
// rs2 == rd != rs1, rs1==x11, rs2==x7, rd==x7, rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h0_val == 8, rs2_h0_val == 8, rs1_h1_val == 128, rs2_h1_val == 65527
// opcode: pkbb16 ; op1:x11; op2:x7; dest:x7; op1val:0x0c000f00800008;  op2val:0x0f0013fff70008
TEST_RR_OP(pkbb16, x7, x11, x7, 0x0000000000000000, 0x0c000f00800008, 0x0f0013fff70008, x13, 32, x5)

inst_5:
// rs1==x10, rs2==x19, rd==x22, rs2_h3_val == 43690, rs2_h2_val == 65471, rs1_h3_val == 16384, rs1_h0_val == 2
// opcode: pkbb16 ; op1:x10; op2:x19; dest:x22; op1val:0x4000001000050002;  op2val:0xaaaaffbf000b000d
TEST_RR_OP(pkbb16, x22, x10, x19, 0x0000000000000000, 0x4000001000050002, 0xaaaaffbf000b000d, x13, 40, x5)

inst_6:
// rs1==x4, rs2==x29, rd==x28, rs2_h3_val == 21845, rs2_h1_val == 65533, rs1_h0_val == 65023, rs1_h2_val == 4, rs1_h1_val == 16384
// opcode: pkbb16 ; op1:x4; op2:x29; dest:x28; op1val:0x400000044000fdff;  op2val:0x55550009fffd0006
TEST_RR_OP(pkbb16, x28, x4, x29, 0x0000000000000000, 0x400000044000fdff, 0x55550009fffd0006, x13, 48, x5)

inst_7:
// rs1==x16, rs2==x12, rd==x0, rs2_h3_val == 32767, rs1_h0_val == 64511, rs1_h3_val == 1024, rs1_h2_val == 4096, rs2_h0_val == 4, rs1_h1_val == 32
// opcode: pkbb16 ; op1:x16; op2:x12; dest:x0; op1val:0x40010000020fbff;  op2val:0x7fff000a00130004
TEST_RR_OP(pkbb16, x0, x16, x12, 0x0000000000000000, 0x40010000020fbff, 0x7fff000a00130004, x13, 56, x5)

inst_8:
// rs1==x31, rs2==x21, rd==x30, rs2_h3_val == 49151, rs1_h1_val == 65279, rs2_h1_val == 32, rs1_h2_val == 32768, rs2_h2_val == 32767, rs1_h3_val == 61439, rs1_h0_val == 128
// opcode: pkbb16 ; op1:x31; op2:x21; dest:x30; op1val:0xefff8000feff0080;  op2val:0xbfff7fff00200004
TEST_RR_OP(pkbb16, x30, x31, x21, 0x0000000000000000, 0xefff8000feff0080, 0xbfff7fff00200004, x13, 64, x5)

inst_9:
// rs1==x28, rs2==x30, rd==x25, rs2_h3_val == 57343, rs2_h2_val == 2048, rs1_h0_val == 4, rs1_h1_val == 57343, rs1_h3_val == 65519, rs2_h0_val == 4096, rs2_h1_val == 16, rs1_h2_val == 2
// opcode: pkbb16 ; op1:x28; op2:x30; dest:x25; op1val:0xffef0002dfff0004;  op2val:0xdfff080000101000
TEST_RR_OP(pkbb16, x25, x28, x30, 0x0000000000000000, 0xffef0002dfff0004, 0xdfff080000101000, x13, 72, x5)

inst_10:
// rs1==x24, rs2==x20, rd==x3, rs2_h3_val == 61439, rs1_h1_val == 2, rs1_h0_val == 65535, rs2_h0_val == 1024, rs1_h3_val == 8, rs1_h2_val == 32767
// opcode: pkbb16 ; op1:x24; op2:x20; dest:x3; op1val:0x087fff0002ffff;  op2val:0xefffdfff00110400
TEST_RR_OP(pkbb16, x3, x24, x20, 0x0000000000000000, 0x087fff0002ffff, 0xefffdfff00110400, x13, 80, x5)

inst_11:
// rs1==x3, rs2==x27, rd==x6, rs2_h3_val == 63487, rs1_h2_val == 49151, rs2_h1_val == 8192, rs1_h0_val == 65471, rs2_h2_val == 65531, rs1_h3_val == 63487
// opcode: pkbb16 ; op1:x3; op2:x27; dest:x6; op1val:0xf7ffbfff0003ffbf;  op2val:0xf7fffffb20000004
TEST_RR_OP(pkbb16, x6, x3, x27, 0x0000000000000000, 0xf7ffbfff0003ffbf, 0xf7fffffb20000004, x13, 88, x5)

inst_12:
// rs1==x7, rs2==x25, rd==x20, rs2_h3_val == 64511, rs1_h3_val == 49151, rs1_h1_val == 65534, rs2_h0_val == 64511, rs1_h2_val == 128
// opcode: pkbb16 ; op1:x7; op2:x25; dest:x20; op1val:0xbfff0080fffe000c;  op2val:0xfbff80000011fbff
TEST_RR_OP(pkbb16, x20, x7, x25, 0x0000000000000000, 0xbfff0080fffe000c, 0xfbff80000011fbff, x13, 96, x5)

inst_13:
// rs1==x1, rs2==x15, rd==x11, rs2_h3_val == 65023, rs2_h0_val == 65503, rs1_h0_val == 16, rs2_h2_val == 8, rs2_h1_val == 57343, rs1_h2_val == 64, rs1_h1_val == 512
// opcode: pkbb16 ; op1:x1; op2:x15; dest:x11; op1val:0xf7ff004002000010;  op2val:0xfdff0008dfffffdf
TEST_RR_OP(pkbb16, x11, x1, x15, 0x0000000000000000, 0xf7ff004002000010, 0xfdff0008dfffffdf, x13, 104, x5)

inst_14:
// rs1==x5, rs2==x22, rd==x21, rs2_h3_val == 65279, rs2_h1_val == 1024, rs1_h3_val == 512, rs2_h0_val == 2048, rs1_h2_val == 65531
// opcode: pkbb16 ; op1:x5; op2:x22; dest:x21; op1val:0x200fffbfffe0004;  op2val:0xfeff000e04000800
TEST_RR_OP(pkbb16, x21, x5, x22, 0x0000000000000000, 0x200fffbfffe0004, 0xfeff000e04000800, x13, 112, x11)
RVTEST_SIGBASE(x7,signature_x7_0)

inst_15:
// rs1==x19, rs2==x24, rd==x5, rs2_h3_val == 65407, rs2_h2_val == 512, rs1_h3_val == 65531, rs1_h1_val == 2048, rs2_h0_val == 65535, rs1_h0_val == 8192
// opcode: pkbb16 ; op1:x19; op2:x24; dest:x5; op1val:0xfffb004008002000;  op2val:0xff7f02000020ffff
TEST_RR_OP(pkbb16, x5, x19, x24, 0x0000000000000000, 0xfffb004008002000, 0xff7f02000020ffff, x7, 0, x11)

inst_16:
// rs1==x22, rs2==x14, rd==x10, rs2_h3_val == 65471, rs2_h0_val == 32, rs1_h1_val == 49151, rs1_h3_val == 32, rs1_h2_val == 256
// opcode: pkbb16 ; op1:x22; op2:x14; dest:x10; op1val:0x200100bfff000f;  op2val:0xffbf000800050020
TEST_RR_OP(pkbb16, x10, x22, x14, 0x0000000000000000, 0x200100bfff000f, 0xffbf000800050020, x7, 8, x11)

inst_17:
// rs1==x13, rs2==x0, rd==x2, rs2_h3_val == 65503, rs1_h0_val == 32767, rs2_h0_val == 256, rs1_h3_val == 2048, rs2_h1_val == 8, rs1_h1_val == 8
// opcode: pkbb16 ; op1:x13; op2:x0; dest:x2; op1val:0x800000300087fff;  op2val:0xffdf000b00080100
TEST_RR_OP(pkbb16, x2, x13, x0, 0x0000000000000000, 0x800000300087fff, 0xffdf000b00080100, x7, 16, x11)

inst_18:
// rs1==x25, rs2==x17, rd==x15, rs2_h3_val == 65519, rs1_h1_val == 8192, rs1_h0_val == 256
// opcode: pkbb16 ; op1:x25; op2:x17; dest:x15; op1val:0xfffb001020000100;  op2val:0xffeffffb0003000f
TEST_RR_OP(pkbb16, x15, x25, x17, 0x0000000000000000, 0xfffb001020000100, 0xffeffffb0003000f, x7, 24, x11)

inst_19:
// rs1==x6, rs2==x3, rd==x17, rs2_h3_val == 65527, rs2_h1_val == 512, rs1_h0_val == 65519, rs1_h2_val == 65534, rs2_h0_val == 57343
// opcode: pkbb16 ; op1:x6; op2:x3; dest:x17; op1val:0xbffffffe0011ffef;  op2val:0xfff700130200dfff
TEST_RR_OP(pkbb16, x17, x6, x3, 0x0000000000000000, 0xbffffffe0011ffef, 0xfff700130200dfff, x7, 32, x11)

inst_20:
// rs1==x20, rs2==x8, rd==x14, rs2_h3_val == 65531, rs2_h0_val == 16, rs2_h2_val == 1024, rs1_h2_val == 512, rs1_h3_val == 16
// opcode: pkbb16 ; op1:x20; op2:x8; dest:x14; op1val:0x1002000200000d;  op2val:0xfffb0400000f0010
TEST_RR_OP(pkbb16, x14, x20, x8, 0x0000000000000000, 0x1002000200000d, 0xfffb0400000f0010, x7, 40, x11)

inst_21:
// rs1==x17, rs2==x10, rd==x12, rs2_h3_val == 65533, rs2_h0_val == 65527, rs1_h3_val == 65407, rs1_h2_val == 65503, rs1_h1_val == 65023, rs2_h2_val == 64511
// opcode: pkbb16 ; op1:x17; op2:x10; dest:x12; op1val:0xff7fffdffdff000f;  op2val:0xfffdfbff000ffff7
TEST_RR_OP(pkbb16, x12, x17, x10, 0x0000000000000000, 0xff7fffdffdff000f, 0xfffdfbff000ffff7, x7, 48, x11)

inst_22:
// rs1==x21, rs2==x4, rd==x27, rs2_h3_val == 65534, rs2_h2_val == 43690, rs1_h3_val == 4096
// opcode: pkbb16 ; op1:x21; op2:x4; dest:x27; op1val:0x1000fffbbfffffbf;  op2val:0xfffeaaaa00060007
TEST_RR_OP(pkbb16, x27, x21, x4, 0x0000000000000000, 0x1000fffbbfffffbf, 0xfffeaaaa00060007, x7, 56, x11)

inst_23:
// rs1==x30, rs2==x23, rd==x29, rs2_h3_val == 32768, rs1_h2_val == 32, rs1_h3_val == 65535, rs2_h2_val == 4
// opcode: pkbb16 ; op1:x30; op2:x23; dest:x29; op1val:0xffff002000070100;  op2val:0x800000045555fff7
TEST_RR_OP(pkbb16, x29, x30, x23, 0x0000000000000000, 0xffff002000070100, 0x800000045555fff7, x7, 64, x11)

inst_24:
// rs1==x2, rs2==x6, rd==x23, rs2_h3_val == 16384, rs1_h1_val == 65531, rs1_h0_val == 32, rs1_h2_val == 64511, rs2_h0_val == 65407
// opcode: pkbb16 ; op1:x2; op2:x6; dest:x23; op1val:0xfffbfbfffffb0020;  op2val:0x4000dfff0010ff7f
TEST_RR_OP(pkbb16, x23, x2, x6, 0x0000000000000000, 0xfffbfbfffffb0020, 0x4000dfff0010ff7f, x7, 72, x11)

inst_25:
// rs1==x23, rs2==x31, rd==x19, rs2_h3_val == 8192, rs1_h0_val == 43690, rs2_h0_val == 63487, rs1_h2_val == 1024, rs2_h2_val == 65023
// opcode: pkbb16 ; op1:x23; op2:x31; dest:x19; op1val:0x0d04000005aaaa;  op2val:0x2000fdff000ef7ff
TEST_RR_OP(pkbb16, x19, x23, x31, 0x0000000000000000, 0x0d04000005aaaa, 0x2000fdff000ef7ff, x7, 80, x11)

inst_26:
// rs1==x15, rs2==x1, rd==x9, rs2_h3_val == 2048, rs1_h3_val == 2, rs1_h1_val == 1, rs2_h2_val == 65527, rs1_h2_val == 21845
// opcode: pkbb16 ; op1:x15; op2:x1; dest:x9; op1val:0x0255550001000f;  op2val:0x800fff70200000a
TEST_RR_OP(pkbb16, x9, x15, x1, 0x0000000000000000, 0x0255550001000f, 0x800fff70200000a, x7, 88, x11)

inst_27:
// rs1==x8, rs2==x18, rd==x16, rs2_h3_val == 1024, rs1_h1_val == 4, rs2_h2_val == 8192, rs1_h0_val == 65534
// opcode: pkbb16 ; op1:x8; op2:x18; dest:x16; op1val:0x0e000e0004fffe;  op2val:0x4002000000efbff
TEST_RR_OP(pkbb16, x16, x8, x18, 0x0000000000000000, 0x0e000e0004fffe, 0x4002000000efbff, x7, 96, x11)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_28:
// rs1==x14, rs2==x13, rd==x24, rs2_h3_val == 512, rs2_h2_val == 64, rs2_h1_val == 32768, rs1_h1_val == 65527
// opcode: pkbb16 ; op1:x14; op2:x13; dest:x24; op1val:0x030010fff70080;  op2val:0x20000408000efff
TEST_RR_OP(pkbb16, x24, x14, x13, 0x0000000000000000, 0x030010fff70080, 0x20000408000efff, x2, 0, x3)

inst_29:
// rs1==x0, rs2==x5, rd==x13, rs2_h3_val == 256, rs1_h0_val == 61439, rs2_h1_val == 65503, rs2_h2_val == 65535
// opcode: pkbb16 ; op1:x0; op2:x5; dest:x13; op1val:0x09bfff0004efff;  op2val:0x100ffffffdf0100
TEST_RR_OP(pkbb16, x13, x0, x5, 0x0000000000000000, 0x09bfff0004efff, 0x100ffffffdf0100, x2, 8, x3)

inst_30:
// rs1==x27, rs2==x11, rd==x4, rs2_h3_val == 128, rs2_h1_val == 64511, rs2_h2_val == 65533
// opcode: pkbb16 ; op1:x27; op2:x11; dest:x4; op1val:0xffef0004fff70006;  op2val:0x80fffdfbff1000
TEST_RR_OP(pkbb16, x4, x27, x11, 0x0000000000000000, 0xffef0004fff70006, 0x80fffdfbff1000, x2, 16, x3)

inst_31:
// rs1==x12, rs2==x16, rd==x1, rs2_h3_val == 64, rs2_h1_val == 16384
// opcode: pkbb16 ; op1:x12; op2:x16; dest:x1; op1val:0xff7ffbff0001efff;  op2val:0x40000e4000000e
TEST_RR_OP(pkbb16, x1, x12, x16, 0x0000000000000000, 0xff7ffbff0001efff, 0x40000e4000000e, x2, 24, x3)

inst_32:
// rs2_h3_val == 32, rs2_h2_val == 4096, rs1_h3_val == 8192
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x2000040000070080;  op2val:0x201000000e0005
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x2000040000070080, 0x201000000e0005, x2, 32, x3)

inst_33:
// rs2_h3_val == 16, rs1_h0_val == 16384, rs2_h0_val == 32768
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfdff1000ff7f4000;  op2val:0x10000c00098000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfdff1000ff7f4000, 0x10000c00098000, x2, 40, x3)

inst_34:
// rs2_h3_val == 8, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0cf7ff000e000a;  op2val:0x08ffbf00090007
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0cf7ff000e000a, 0x08ffbf00090007, x2, 48, x3)

inst_35:
// rs2_h3_val == 4, rs2_h2_val == 61439, rs2_h1_val == 65279
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0200050800000e;  op2val:0x04effffefffff7
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0200050800000e, 0x04effffefffff7, x2, 56, x3)

inst_36:
// rs2_h3_val == 2, rs2_h2_val == 49151
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x20000308000007;  op2val:0x02bfff55550005
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x20000308000007, 0x02bfff55550005, x2, 64, x3)

inst_37:
// rs1_h1_val == 65535, rs2_h0_val == 16384, rs2_h1_val == 0
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ff8000ffff0080;  op2val:0xfdff000b00004000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xf7ff8000ffff0080, 0xfdff000b00004000, x2, 72, x3)

inst_38:
// rs1_h1_val == 0, rs1_h2_val == 16384, rs1_h3_val == 43690
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa40000000aaaa;  op2val:0xefff040000080800
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa40000000aaaa, 0xefff040000080800, x2, 80, x3)

inst_39:
// rs1_h0_val == 21845, rs2_h2_val == 65407
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x200bfff00005555;  op2val:0x1000ff7f02000011
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x200bfff00005555, 0x1000ff7f02000011, x2, 88, x3)

inst_40:
// rs1_h0_val == 49151, rs1_h3_val == 4, rs1_h1_val == 16
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x04000b0010bfff;  op2val:0xffdf000ffbfffff7
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x04000b0010bfff, 0xffdf000ffbfffff7, x2, 96, x3)

inst_41:
// rs1_h0_val == 57343, rs2_h2_val == 65519, rs1_h2_val == 65533
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x1000fffd0004dfff;  op2val:0x05ffef5555000d
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x1000fffd0004dfff, 0x05ffef5555000d, x2, 104, x3)

inst_42:
// rs1_h0_val == 63487, rs1_h3_val == 65533, rs1_h2_val == 65519, rs2_h1_val == 65519
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffef000bf7ff;  op2val:0x55550400ffef0006
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffdffef000bf7ff, 0x55550400ffef0006, x2, 112, x3)

inst_43:
// rs1_h0_val == 65279, rs2_h1_val == 43690, rs1_h2_val == 8192
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x20020000013feff;  op2val:0x090200aaaa0005
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x20020000013feff, 0x090200aaaa0005, x2, 120, x3)

inst_44:
// rs1_h0_val == 65407, rs2_h2_val == 63487, rs1_h3_val == 65503
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffdf000d000bff7f;  op2val:0x80f7ff80000005
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xffdf000d000bff7f, 0x80f7ff80000005, x2, 128, x3)

inst_45:
// rs1_h0_val == 65503, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x08000c0002ffdf;  op2val:0x0fffff00200011
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x08000c0002ffdf, 0x0fffff00200011, x2, 136, x3)

inst_46:
// rs1_h0_val == 65527, rs2_h0_val == 49151, rs1_h3_val == 32767, rs1_h1_val == 65503
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff8000ffdffff7;  op2val:0xbfff80000009bfff
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x7fff8000ffdffff7, 0xbfff80000009bfff, x2, 144, x3)

inst_47:
// rs1_h0_val == 65531, rs1_h2_val == 65527, rs1_h3_val == 0
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x00fff70200fffb;  op2val:0x5555000c000a000f
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x00fff70200fffb, 0x5555000c000a000f, x2, 152, x3)

inst_48:
// rs1_h0_val == 65533, rs1_h3_val == 65534, rs1_h2_val == 57343, rs2_h1_val == 1
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffedffffffefffd;  op2val:0x100fffd0001ffdf
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffedffffffefffd, 0x100fffd0001ffdf, x2, 160, x3)

inst_49:
// rs1_h0_val == 32768, rs1_h1_val == 65471
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x060009ffbf8000;  op2val:0xbfff000600130011
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x060009ffbf8000, 0xbfff000600130011, x2, 168, x3)

inst_50:
// rs1_h0_val == 4096, rs2_h0_val == 512, rs1_h1_val == 63487
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x098000f7ff1000;  op2val:0x020040ffdf0200
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x098000f7ff1000, 0x020040ffdf0200, x2, 176, x3)

inst_51:
// rs1_h0_val == 2048, rs1_h1_val == 32768
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x07fffb80000800;  op2val:0xdfff000f00115555
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x07fffb80000800, 0xdfff000f00115555, x2, 184, x3)

inst_52:
// rs1_h0_val == 1024, rs2_h1_val == 4, rs2_h0_val == 65531, rs1_h3_val == 57343
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xdfff555500040400;  op2val:0x0b000b0004fffb
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xdfff555500040400, 0x0b000b0004fffb, x2, 192, x3)

inst_53:
// rs1_h0_val == 512, rs1_h3_val == 256, rs1_h2_val == 2048
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x100080000050200;  op2val:0x0a0003000f000c
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x100080000050200, 0x0a0003000f000c, x2, 200, x3)

inst_54:
// rs1_h0_val == 64, rs1_h3_val == 64
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x40000700130040;  op2val:0x0f001380000020
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x40000700130040, 0x0f001380000020, x2, 208, x3)

inst_55:
// rs1_h0_val == 1, rs2_h0_val == 65471, rs1_h2_val == 65535
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff00010001;  op2val:0x0400080010ffbf
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xefffffff00010001, 0x0400080010ffbf, x2, 216, x3)

inst_56:
// rs2_h3_val == 1, rs2_h1_val == 2, rs2_h0_val == 65519
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffef000dffdf0800;  op2val:0x01000a0002ffef
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xffef000dffdf0800, 0x01000a0002ffef, x2, 224, x3)

inst_57:
// rs2_h3_val == 65535, rs1_h3_val == 64511, rs2_h2_val == 2, rs2_h0_val == 65534
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff00050009ffef;  op2val:0xffff00020006fffe
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfbff00050009ffef, 0xffff00020006fffe, x2, 232, x3)

inst_58:
// rs2_h3_val == 0, rs2_h2_val == 21845
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x120004fffd0040;  op2val:0x00555500070006
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x120004fffd0040, 0x00555500070006, x2, 240, x3)

inst_59:
// rs2_h0_val == 65533, rs2_h1_val == 256
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0d000a00120004;  op2val:0xfffd000f0100fffd
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0d000a00120004, 0xfffd000f0100fffd, x2, 248, x3)

inst_60:
// rs2_h0_val == 8192, rs2_h1_val == 65535, rs1_h2_val == 65023
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x100fdff000afffb;  op2val:0xdfffefffffff2000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x100fdff000afffb, 0xdfffefffffff2000, x2, 256, x3)

inst_61:
// rs2_h0_val == 128, rs2_h1_val == 65023
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x2010000003dfff;  op2val:0x09000ffdff0080
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x2010000003dfff, 0x09000ffdff0080, x2, 264, x3)

inst_62:
// rs2_h0_val == 64, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0f800000010010;  op2val:0xffef020004000040
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0f800000010010, 0xffef020004000040, x2, 272, x3)

inst_63:
// rs2_h0_val == 2, rs1_h2_val == 1, rs2_h2_val == 65279
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0d0001000c0020;  op2val:0x06feffaaaa0002
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0d0001000c0020, 0x06feffaaaa0002, x2, 280, x3)

inst_64:
// rs2_h0_val == 1, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x7fff0004fdff0007;  op2val:0x4000000700010001
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x7fff0004fdff0007, 0x4000000700010001, x2, 288, x3)

inst_65:
// rs2_h0_val == 0, rs2_h1_val == 65534
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000000e0020aaaa;  op2val:0x040011fffe0000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x4000000e0020aaaa, 0x040011fffe0000, x2, 296, x3)

inst_66:
// rs1_h3_val == 21845, rs1_h1_val == 64511
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x55550400fbff0400;  op2val:0xfbff000700010400
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x55550400fbff0400, 0xfbff000700010400, x2, 304, x3)

inst_67:
// rs1_h3_val == 65279, rs2_h2_val == 0
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfeff000e000caaaa;  op2val:0xfbff000000010010
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfeff000e000caaaa, 0xfbff000000010010, x2, 312, x3)

inst_68:
// rs1_h3_val == 65471, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf00010010000b;  op2val:0x06ff7ffeffffdf
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xffbf00010010000b, 0x06ff7ffeffffdf, x2, 320, x3)

inst_69:
// rs1_h3_val == 65527, rs1_h1_val == 61439
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfff7fffeefff0010;  op2val:0x01000bdfff5555
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfff7fffeefff0010, 0x01000bdfff5555, x2, 328, x3)

inst_70:
// rs1_h3_val == 32768, rs1_h1_val == 4096
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x8000000c10004000;  op2val:0x01000ffff70080
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x8000000c10004000, 0x01000ffff70080, x2, 336, x3)

inst_71:
// rs1_h3_val == 128, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x800006fffb000b;  op2val:0x4000000e0010000c
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x800006fffb000b, 0x4000000e0010000c, x2, 344, x3)

inst_72:
// rs2_h2_val == 65503, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x09000d000c7fff;  op2val:0xdfffffdf04000080
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x09000d000c7fff, 0xdfffffdf04000080, x2, 352, x3)

inst_73:
// rs1_h3_val == 1, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x010011dfff0005;  op2val:0xfffd0011fdff8000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x010011dfff0005, 0xfffd0011fdff8000, x2, 360, x3)

inst_74:
// rs1_h2_val == 43690, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x100aaaa1000aaaa;  op2val:0xfffbbfff000f8000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x100aaaa1000aaaa, 0xfffbbfff000f8000, x2, 368, x3)

inst_75:
// rs2_h2_val == 65534, rs1_h2_val == 0
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0900000007fffe;  op2val:0xeffffffe0006fffe
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0900000007fffe, 0xeffffffe0006fffe, x2, 376, x3)

inst_76:
// rs2_h2_val == 16384, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x10004000000e0080;  op2val:0x0d40000040000b
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x10004000000e0080, 0x0d40000040000b, x2, 384, x3)

inst_77:
// rs1_h2_val == 61439, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffdefff000a0011;  op2val:0x05fffbaaaafffd
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffdefff000a0011, 0x05fffbaaaafffd, x2, 392, x3)

inst_78:
// rs2_h2_val == 256, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x050200000efbff;  op2val:0xf7ff010055550001
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x050200000efbff, 0xf7ff010055550001, x2, 400, x3)

inst_79:
// rs1_h2_val == 65279, rs1_h1_val == 43690
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffffeffaaaa5555;  op2val:0x09100020005555
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffffeffaaaa5555, 0x09100020005555, x2, 408, x3)

inst_80:
// rs2_h2_val == 128, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7fffbff0013000a;  op2val:0x80008020000080
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xf7fffbff0013000a, 0x80008020000080, x2, 416, x3)

inst_81:
// rs1_h2_val == 65407, rs2_h1_val == 61439
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffbff7f000c7fff;  op2val:0x55550100efff0007
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffbff7f000c7fff, 0x55550100efff0007, x2, 424, x3)

inst_82:
// rs1_h2_val == 65471, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x01ffbf00108000;  op2val:0x0100120040000d
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x01ffbf00108000, 0x0100120040000d, x2, 432, x3)

inst_83:
// rs2_h2_val == 32, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x800055550010efff;  op2val:0x0f0020ffff1000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x800055550010efff, 0x0f0020ffff1000, x2, 440, x3)

inst_84:
// rs2_h2_val == 16, rs1_h1_val == 65519
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x200feffffef0003;  op2val:0x2000100012ff7f
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x200feffffef0003, 0x2000100012ff7f, x2, 448, x3)

inst_85:
// rs2_h2_val == 1, rs2_h1_val == 128
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xf7ffaaaafdfffff7;  op2val:0x100000100800007
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xf7ffaaaafdfffff7, 0x100000100800007, x2, 456, x3)

inst_86:
// rs2_h1_val == 32767, rs2_h0_val == 43690
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x10aaaafffd000e;  op2val:0x0c00067fffaaaa
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x10aaaafffd000e, 0x0c00067fffaaaa, x2, 464, x3)

inst_87:
// rs2_h1_val == 49151, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x40007fff000d0002;  op2val:0x7fff0004bfff0200
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x40007fff000d0002, 0x7fff0004bfff0200, x2, 472, x3)

inst_88:
// rs2_h1_val == 65531, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff001200100040;  op2val:0x100ffbffffbffdf
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xefff001200100040, 0x100ffbffffbffdf, x2, 480, x3)

inst_89:
// rs1_h1_val == 21845, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa000155550006;  op2val:0x0600207fff000d
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa000155550006, 0x0600207fff000d, x2, 488, x3)

inst_90:
// rs1_h1_val == 32767, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x01ffbf7fffffbf;  op2val:0x0000120001000d
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x01ffbf7fffffbf, 0x0000120001000d, x2, 496, x3)

inst_91:
// rs2_h1_val == 4096, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfffe08000011ffbf;  op2val:0x200000071000fffd
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfffe08000011ffbf, 0x200000071000fffd, x2, 504, x3)

inst_92:
// rs2_h1_val == 2048, rs1_h2_val == 8
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xefff0008000d0005;  op2val:0x0600050800000b
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xefff0008000d0005, 0x0600050800000b, x2, 512, x3)

inst_93:
// rs2_h1_val == 65407, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa100080000000;  op2val:0x55550020ff7fefff
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xaaaa100080000000, 0x55550020ff7fefff, x2, 520, x3)

inst_94:
// rs2_h0_val == 32767, rs1_h1_val == 256
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x04001201002000;  op2val:0xfefffffe00017fff
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x04001201002000, 0xfefffffe00017fff, x2, 528, x3)

inst_95:
// rs2_h1_val == 65471, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x00000b0012bfff;  op2val:0xff7f0010ffbf0020
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x00000b0012bfff, 0xff7f0010ffbf0020, x2, 536, x3)

inst_96:
// rs2_h1_val == 63487, rs2_h0_val == 65023
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xfbff000300110012;  op2val:0x7ffffdfff7fffdff
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xfbff000300110012, 0x7ffffdfff7fffdff, x2, 544, x3)

inst_97:
// rs1_h1_val == 1024, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x0bf7ff04000100;  op2val:0x40f7ff000b0400
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x0bf7ff04000100, 0x40f7ff000b0400, x2, 552, x3)

inst_98:
// rs1_h1_val == 64, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0xffbf00110040ffff;  op2val:0x40f7ff00808000
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0xffbf00110040ffff, 0x40f7ff00808000, x2, 560, x3)

inst_99:
// rs2_h0_val == 65279, 
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x4000ff7f0000000a;  op2val:0x0ffffb0002feff
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x4000ff7f0000000a, 0x0ffffb0002feff, x2, 568, x3)

inst_100:
// rs2_h3_val == 32767, rs1_h0_val == 64511, rs1_h3_val == 1024, rs1_h2_val == 4096, rs2_h0_val == 4, rs1_h1_val == 32
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x40010000020fbff;  op2val:0x7fff000a00130004
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x40010000020fbff, 0x7fff000a00130004, x2, 576, x3)

inst_101:
// rs2_h3_val == 65503, rs1_h0_val == 32767, rs2_h0_val == 256, rs1_h3_val == 2048, rs2_h1_val == 8, rs1_h1_val == 8
// opcode: pkbb16 ; op1:x30; op2:x29; dest:x31; op1val:0x800000300087fff;  op2val:0xffdf000b00080100
TEST_RR_OP(pkbb16, x31, x30, x29, 0x0000000000000000, 0x800000300087fff, 0xffdf000b00080100, x2, 584, x3)
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
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 13*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 74*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
