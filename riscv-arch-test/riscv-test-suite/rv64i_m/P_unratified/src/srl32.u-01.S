
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
// This assembly file tests the srl32.u instruction of the RISC-V RV64PZicsr extension for the srl32.u covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",srl32.u)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x16,signature_x16_1)

inst_0:
// rs1 == rd != rs2, rs1==x2, rs2==x26, rd==x2, rs2_val == 21, rs1_w1_val == 67108864, rs1_w0_val == 4294959103
// opcode: srl32.u ; op1:x2; op2:x26; dest:x2; op1val:0x4000000ffffdfff;  op2val:0x15
TEST_RR_OP(srl32.u, x2, x2, x26, 0x0000000000000000, 0x4000000ffffdfff, 0x15, x16, 0, x15)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x10, rs2==x2, rd==x9, rs2_val == 15, rs1_w1_val == 64, rs1_w0_val == 2863311530
// opcode: srl32.u ; op1:x10; op2:x2; dest:x9; op1val:0x000040aaaaaaaa;  op2val:0xf
TEST_RR_OP(srl32.u, x9, x10, x2, 0x0000000000000000, 0x000040aaaaaaaa, 0xf, x16, 8, x15)

inst_2:
// rs1 == rs2 != rd, rs1==x20, rs2==x20, rd==x31, rs2_val == 23, rs1_w1_val == 1431655765, rs1_w0_val == 8
// opcode: srl32.u ; op1:x20; op2:x20; dest:x31; op1val:0x5555555500000008;  op2val:0x17
TEST_RR_OP(srl32.u, x31, x20, x20, 0x0000000000000000, 0x5555555500000008, 0x17, x16, 16, x15)

inst_3:
// rs1 == rs2 == rd, rs1==x12, rs2==x12, rd==x12, rs2_val == 27, rs1_w1_val == 16, rs1_w0_val == 4286578687
// opcode: srl32.u ; op1:x12; op2:x12; dest:x12; op1val:0x000010ff7fffff;  op2val:0x1b
TEST_RR_OP(srl32.u, x12, x12, x12, 0x0000000000000000, 0x000010ff7fffff, 0x1b, x16, 24, x15)

inst_4:
// rs2 == rd != rs1, rs1==x0, rs2==x27, rd==x27, rs2_val == 29, rs1_w0_val == 3221225471, rs1_w1_val == 4290772991
// opcode: srl32.u ; op1:x0; op2:x27; dest:x27; op1val:0xffbfffffbfffffff;  op2val:0x1d
TEST_RR_OP(srl32.u, x27, x0, x27, 0x0000000000000000, 0xffbfffffbfffffff, 0x1d, x16, 32, x15)

inst_5:
// rs1==x22, rs2==x9, rd==x18, rs2_val == 30, rs1_w1_val == 4286578687, rs1_w0_val == 512
// opcode: srl32.u ; op1:x22; op2:x9; dest:x18; op1val:0xff7fffff00000200;  op2val:0x1e
TEST_RR_OP(srl32.u, x18, x22, x9, 0x0000000000000000, 0xff7fffff00000200, 0x1e, x16, 40, x15)

inst_6:
// rs1==x8, rs2==x0, rd==x3, rs2_val == 16, rs1_w0_val == 4294967294, rs1_w1_val == 4294965247
// opcode: srl32.u ; op1:x8; op2:x0; dest:x3; op1val:0xfffff7fffffffffe;  op2val:0x0
TEST_RR_OP(srl32.u, x3, x8, x0, 0x0000000000000000, 0xfffff7fffffffffe, 0x0, x16, 48, x15)

inst_7:
// rs1==x18, rs2==x19, rd==x13, rs2_val == 8, rs1_w0_val == 4294705151, rs1_w1_val == 2097152
// opcode: srl32.u ; op1:x18; op2:x19; dest:x13; op1val:0x200000fffbffff;  op2val:0x8
TEST_RR_OP(srl32.u, x13, x18, x19, 0x0000000000000000, 0x200000fffbffff, 0x8, x16, 56, x15)

inst_8:
// rs1==x25, rs2==x29, rd==x14, rs2_val == 4, rs1_w0_val == 4294967279
// opcode: srl32.u ; op1:x25; op2:x29; dest:x14; op1val:0x4000000ffffffef;  op2val:0x4
TEST_RR_OP(srl32.u, x14, x25, x29, 0x0000000000000000, 0x4000000ffffffef, 0x4, x16, 64, x15)

inst_9:
// rs1==x3, rs2==x10, rd==x7, rs2_val == 2, rs1_w0_val == 16, rs1_w1_val == 2147483647
// opcode: srl32.u ; op1:x3; op2:x10; dest:x7; op1val:0x7fffffff00000010;  op2val:0x2
TEST_RR_OP(srl32.u, x7, x3, x10, 0x0000000000000000, 0x7fffffff00000010, 0x2, x16, 72, x15)

inst_10:
// rs1==x11, rs2==x21, rd==x5, rs2_val == 1, rs1_w1_val == 4294836223, rs1_w0_val == 4293918719
// opcode: srl32.u ; op1:x11; op2:x21; dest:x5; op1val:0xfffdffffffefffff;  op2val:0x1
TEST_RR_OP(srl32.u, x5, x11, x21, 0x0000000000000000, 0xfffdffffffefffff, 0x1, x16, 80, x15)

inst_11:
// rs1==x31, rs2==x28, rd==x26, rs1_w1_val == 2863311530, rs1_w0_val == 134217728
// opcode: srl32.u ; op1:x31; op2:x28; dest:x26; op1val:0xaaaaaaaa08000000;  op2val:0x1f
TEST_RR_OP(srl32.u, x26, x31, x28, 0x0000000000000000, 0xaaaaaaaa08000000, 0x1f, x16, 88, x15)

inst_12:
// rs1==x6, rs2==x25, rd==x19, rs1_w1_val == 3221225471, 
// opcode: srl32.u ; op1:x6; op2:x25; dest:x19; op1val:0xbfffffff0000000f;  op2val:0x1f
TEST_RR_OP(srl32.u, x19, x6, x25, 0x0000000000000000, 0xbfffffff0000000f, 0x1f, x16, 96, x15)

inst_13:
// rs1==x27, rs2==x7, rd==x8, rs1_w1_val == 3758096383, 
// opcode: srl32.u ; op1:x27; op2:x7; dest:x8; op1val:0xdfffffff0000000e;  op2val:0x15
TEST_RR_OP(srl32.u, x8, x27, x7, 0x0000000000000000, 0xdfffffff0000000e, 0x15, x16, 104, x15)

inst_14:
// rs1==x14, rs2==x1, rd==x24, rs1_w1_val == 4026531839, 
// opcode: srl32.u ; op1:x14; op2:x1; dest:x24; op1val:0xefffffff00000012;  op2val:0x5
TEST_RR_OP(srl32.u, x24, x14, x1, 0x0000000000000000, 0xefffffff00000012, 0x5, x16, 112, x15)

inst_15:
// rs1==x13, rs2==x4, rd==x25, rs1_w1_val == 4160749567, 
// opcode: srl32.u ; op1:x13; op2:x4; dest:x25; op1val:0xf7fffffffffbffff;  op2val:0x1e
TEST_RR_OP(srl32.u, x25, x13, x4, 0x0000000000000000, 0xf7fffffffffbffff, 0x1e, x16, 120, x15)

inst_16:
// rs1==x15, rs2==x11, rd==x22, rs1_w1_val == 4227858431, 
// opcode: srl32.u ; op1:x15; op2:x11; dest:x22; op1val:0xfbffffff00000200;  op2val:0x10
TEST_RR_OP(srl32.u, x22, x15, x11, 0x0000000000000000, 0xfbffffff00000200, 0x10, x16, 128, x12)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_17:
// rs1==x28, rs2==x8, rd==x16, rs1_w1_val == 4261412863, 
// opcode: srl32.u ; op1:x28; op2:x8; dest:x16; op1val:0xfdffffff00000006;  op2val:0x17
TEST_RR_OP(srl32.u, x16, x28, x8, 0x0000000000000000, 0xfdffffff00000006, 0x17, x2, 0, x12)

inst_18:
// rs1==x9, rs2==x31, rd==x0, rs1_w1_val == 4278190079, rs1_w0_val == 4294967231
// opcode: srl32.u ; op1:x9; op2:x31; dest:x0; op1val:0xfeffffffffffffbf;  op2val:0x17
TEST_RR_OP(srl32.u, x0, x9, x31, 0x0000000000000000, 0xfeffffffffffffbf, 0x17, x2, 8, x12)

inst_19:
// rs1==x1, rs2==x14, rd==x23, rs1_w1_val == 4292870143, 
// opcode: srl32.u ; op1:x1; op2:x14; dest:x23; op1val:0xffdfffffffefffff;  op2val:0x0
TEST_RR_OP(srl32.u, x23, x1, x14, 0x0000000000000000, 0xffdfffffffefffff, 0x0, x2, 16, x12)

inst_20:
// rs1==x19, rs2==x18, rd==x21, rs1_w1_val == 4293918719, 
// opcode: srl32.u ; op1:x19; op2:x18; dest:x21; op1val:0xffefffff00000003;  op2val:0x17
TEST_RR_OP(srl32.u, x21, x19, x18, 0x0000000000000000, 0xffefffff00000003, 0x17, x2, 24, x12)

inst_21:
// rs1==x7, rs2==x6, rd==x30, rs1_w1_val == 4294443007, rs1_w0_val == 4294443007
// opcode: srl32.u ; op1:x7; op2:x6; dest:x30; op1val:0xfff7fffffff7ffff;  op2val:0xb
TEST_RR_OP(srl32.u, x30, x7, x6, 0x0000000000000000, 0xfff7fffffff7ffff, 0xb, x2, 32, x12)

inst_22:
// rs1==x4, rs2==x17, rd==x10, rs1_w1_val == 4294705151, 
// opcode: srl32.u ; op1:x4; op2:x17; dest:x10; op1val:0xfffbffffffffffbf;  op2val:0x0
TEST_RR_OP(srl32.u, x10, x4, x17, 0x0000000000000000, 0xfffbffffffffffbf, 0x0, x2, 40, x12)

inst_23:
// rs1==x21, rs2==x22, rd==x6, rs1_w1_val == 4294901759, rs1_w0_val == 4292870143
// opcode: srl32.u ; op1:x21; op2:x22; dest:x6; op1val:0xfffeffffffdfffff;  op2val:0x1d
TEST_RR_OP(srl32.u, x6, x21, x22, 0x0000000000000000, 0xfffeffffffdfffff, 0x1d, x2, 48, x12)

inst_24:
// rs1==x17, rs2==x5, rd==x29, rs1_w1_val == 4294934527, rs1_w0_val == 4294966783
// opcode: srl32.u ; op1:x17; op2:x5; dest:x29; op1val:0xffff7ffffffffdff;  op2val:0x8
TEST_RR_OP(srl32.u, x29, x17, x5, 0x0000000000000000, 0xffff7ffffffffdff, 0x8, x2, 56, x12)

inst_25:
// rs1==x24, rs2==x30, rd==x20, rs1_w1_val == 4294950911, 
// opcode: srl32.u ; op1:x24; op2:x30; dest:x20; op1val:0xffffbfff0000000d;  op2val:0x3
TEST_RR_OP(srl32.u, x20, x24, x30, 0x0000000000000000, 0xffffbfff0000000d, 0x3, x2, 64, x12)

inst_26:
// rs1==x29, rs2==x16, rd==x1, rs1_w1_val == 4294959103, rs1_w0_val == 4294967291
// opcode: srl32.u ; op1:x29; op2:x16; dest:x1; op1val:0xffffdffffffffffb;  op2val:0x4
TEST_RR_OP(srl32.u, x1, x29, x16, 0x0000000000000000, 0xffffdffffffffffb, 0x4, x2, 72, x12)

inst_27:
// rs1==x5, rs2==x23, rd==x17, rs1_w1_val == 4294963199, rs2_val == 10
// opcode: srl32.u ; op1:x5; op2:x23; dest:x17; op1val:0xffffefff0000000a;  op2val:0xa
TEST_RR_OP(srl32.u, x17, x5, x23, 0x0000000000000000, 0xffffefff0000000a, 0xa, x2, 80, x12)

inst_28:
// rs1==x30, rs2==x24, rd==x4, rs1_w1_val == 4294966271, 
// opcode: srl32.u ; op1:x30; op2:x24; dest:x4; op1val:0xfffffbff0000000e;  op2val:0x1f
TEST_RR_OP(srl32.u, x4, x30, x24, 0x0000000000000000, 0xfffffbff0000000e, 0x1f, x2, 88, x12)

inst_29:
// rs1==x16, rs2==x15, rd==x28, rs1_w1_val == 4294966783, 
// opcode: srl32.u ; op1:x16; op2:x15; dest:x28; op1val:0xfffffdfffffbffff;  op2val:0x4
TEST_RR_OP(srl32.u, x28, x16, x15, 0x0000000000000000, 0xfffffdfffffbffff, 0x4, x2, 96, x12)

inst_30:
// rs1==x23, rs2==x3, rd==x15, rs1_w1_val == 4294967039, rs1_w0_val == 2147483648
// opcode: srl32.u ; op1:x23; op2:x3; dest:x15; op1val:0xfffffeff80000000;  op2val:0x12
TEST_RR_OP(srl32.u, x15, x23, x3, 0x0000000000000000, 0xfffffeff80000000, 0x12, x2, 104, x12)

inst_31:
// rs1==x26, rs2==x13, rd==x11, rs1_w1_val == 4294967167, rs1_w0_val == 4160749567
// opcode: srl32.u ; op1:x26; op2:x13; dest:x11; op1val:0xffffff7ff7ffffff;  op2val:0x13
TEST_RR_OP(srl32.u, x11, x26, x13, 0x0000000000000000, 0xffffff7ff7ffffff, 0x13, x2, 112, x12)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_32:
// rs1_w1_val == 4294967231, rs1_w0_val == 8192
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf00002000;  op2val:0x0
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffbf00002000, 0x0, x1, 0, x2)

inst_33:
// rs1_w1_val == 4294967263, rs1_w0_val == 4294967263
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdfffffffdf;  op2val:0xe
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffdfffffffdf, 0xe, x1, 8, x2)

inst_34:
// rs1_w1_val == 4294967279, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef0000000b;  op2val:0x9
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffef0000000b, 0x9, x1, 16, x2)

inst_35:
// rs1_w1_val == 4294967287, rs1_w0_val == 32
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff700000020;  op2val:0x8
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffff700000020, 0x8, x1, 24, x2)

inst_36:
// rs1_w1_val == 4294967291, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb00000005;  op2val:0x10
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffffb00000005, 0x10, x1, 32, x2)

inst_37:
// rs1_w1_val == 4294967293, rs1_w0_val == 1073741824
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd40000000;  op2val:0x1b
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffffd40000000, 0x1b, x1, 40, x2)

inst_38:
// rs1_w1_val == 4294967294, rs1_w0_val == 4227858431
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffefbffffff;  op2val:0x7
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffffefbffffff, 0x7, x1, 48, x2)

inst_39:
// rs1_w1_val == 2147483648, rs1_w0_val == 4294966271
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x80000000fffffbff;  op2val:0x17
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x80000000fffffbff, 0x17, x1, 56, x2)

inst_40:
// rs1_w1_val == 1073741824, rs1_w0_val == 4294901759
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x40000000fffeffff;  op2val:0x9
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x40000000fffeffff, 0x9, x1, 64, x2)

inst_41:
// rs1_w1_val == 536870912, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000000000000c;  op2val:0x1b
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x200000000000000c, 0x1b, x1, 72, x2)

inst_42:
// rs1_w1_val == 268435456, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x10000000ff7fffff;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x10000000ff7fffff, 0x4, x1, 80, x2)

inst_43:
// rs1_w1_val == 134217728, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x8000000fffffbff;  op2val:0xb
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x8000000fffffbff, 0xb, x1, 88, x2)

inst_44:
// rs1_w1_val == 33554432, rs1_w0_val == 536870912
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x200000020000000;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x200000020000000, 0x4, x1, 96, x2)

inst_45:
// rs1_w1_val == 16777216, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x1000000fffffffb;  op2val:0x3
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x1000000fffffffb, 0x3, x1, 104, x2)

inst_46:
// rs1_w1_val == 8388608, rs1_w0_val == 4294950911
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x800000ffffbfff;  op2val:0x1d
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x800000ffffbfff, 0x1d, x1, 112, x2)

inst_47:
// rs1_w0_val == 65536, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef00010000;  op2val:0xa
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffef00010000, 0xa, x1, 120, x2)

inst_48:
// rs1_w0_val == 32768, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00008000;  op2val:0x0
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffefff00008000, 0x0, x1, 128, x2)

inst_49:
// rs1_w0_val == 16384, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff00004000;  op2val:0x7
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffbff00004000, 0x7, x1, 136, x2)

inst_50:
// rs1_w0_val == 4096, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x100000000001000;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x100000000001000, 0x4, x1, 144, x2)

inst_51:
// rs1_w0_val == 2048, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000d00000800;  op2val:0x11
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000d00000800, 0x11, x1, 152, x2)

inst_52:
// rs1_w0_val == 1024, rs1_w1_val == 65536
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x01000000000400;  op2val:0x1d
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x01000000000400, 0x1d, x1, 160, x2)

inst_53:
// rs1_w0_val == 256, rs1_w1_val == 256
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00010000000100;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00010000000100, 0x4, x1, 168, x2)

inst_54:
// rs1_w0_val == 128, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000500000080;  op2val:0x1e
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000500000080, 0x1e, x1, 176, x2)

inst_55:
// rs1_w0_val == 64, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff00000040;  op2val:0x5
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffdfffff00000040, 0x5, x1, 184, x2)

inst_56:
// rs1_w0_val == 4, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f00000004;  op2val:0x15
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffff7f00000004, 0x15, x1, 192, x2)

inst_57:
// rs1_w0_val == 2, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00000002;  op2val:0xf
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffefff00000002, 0xf, x1, 200, x2)

inst_58:
// rs1_w0_val == 1, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x4000000000000001;  op2val:0xf
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x4000000000000001, 0xf, x1, 208, x2)

inst_59:
// rs1_w0_val == 4294967295, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbffffffffff;  op2val:0xc
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffbffffffffff, 0xc, x1, 216, x2)

inst_60:
// rs1_w0_val == 0, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000c00000000;  op2val:0x8
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000c00000000, 0x8, x1, 224, x2)

inst_61:
// rs1_w1_val == 4194304, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x40000000000003;  op2val:0xf
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x40000000000003, 0xf, x1, 232, x2)

inst_62:
// rs1_w1_val == 1048576, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x10000000000008;  op2val:0xb
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x10000000000008, 0xb, x1, 240, x2)

inst_63:
// rs1_w1_val == 524288, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x080000fffeffff;  op2val:0x1f
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x080000fffeffff, 0x1f, x1, 248, x2)

inst_64:
// rs1_w1_val == 262144, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x04000000000003;  op2val:0x6
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x04000000000003, 0x6, x1, 256, x2)

inst_65:
// rs1_w1_val == 131072, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x020000ffffffbf;  op2val:0x0
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x020000ffffffbf, 0x0, x1, 264, x2)

inst_66:
// rs1_w1_val == 32768, rs1_w0_val == 4294967039
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x008000fffffeff;  op2val:0x13
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x008000fffffeff, 0x13, x1, 272, x2)

inst_67:
// rs1_w1_val == 16384, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x0040000000000d;  op2val:0x9
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x0040000000000d, 0x9, x1, 280, x2)

inst_68:
// rs1_w1_val == 8192, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00200000000002;  op2val:0x11
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00200000000002, 0x11, x1, 288, x2)

inst_69:
// rs1_w1_val == 4096, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x0010000000000e;  op2val:0x5
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x0010000000000e, 0x5, x1, 296, x2)

inst_70:
// rs1_w1_val == 2048, rs1_w0_val == 67108864
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00080004000000;  op2val:0x2
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00080004000000, 0x2, x1, 304, x2)

inst_71:
// rs1_w1_val == 1024, rs1_w0_val == 131072
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00040000020000;  op2val:0xd
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00040000020000, 0xd, x1, 312, x2)

inst_72:
// rs1_w1_val == 512, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000200ffffffff;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000200ffffffff, 0x4, x1, 320, x2)

inst_73:
// rs1_w1_val == 128, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000080fffffffb;  op2val:0x1
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000080fffffffb, 0x1, x1, 328, x2)

inst_74:
// rs1_w1_val == 32, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000020fffffdff;  op2val:0x17
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000020fffffdff, 0x17, x1, 336, x2)

inst_75:
// rs1_w1_val == 8, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000800000200;  op2val:0x15
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000800000200, 0x15, x1, 344, x2)

inst_76:
// rs1_w1_val == 4, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000400000001;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000400000001, 0x4, x1, 352, x2)

inst_77:
// rs1_w1_val == 2, rs1_w0_val == 4294967287
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000002fffffff7;  op2val:0x1e
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000002fffffff7, 0x1e, x1, 360, x2)

inst_78:
// rs1_w1_val == 1, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000100000008;  op2val:0x10
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000100000008, 0x10, x1, 368, x2)

inst_79:
// rs1_w1_val == 4294967295, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff00000000;  op2val:0x6
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffff00000000, 0x6, x1, 376, x2)

inst_80:
// rs1_w1_val == 0, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000000fff7ffff;  op2val:0xf
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000000fff7ffff, 0xf, x1, 384, x2)

inst_81:
// rs1_w0_val == 1431655765, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000255555555;  op2val:0x7
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000255555555, 0x7, x1, 392, x2)

inst_82:
// rs1_w0_val == 2147483647, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf7fffffff;  op2val:0x5
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffdf7fffffff, 0x5, x1, 400, x2)

inst_83:
// rs1_w0_val == 3758096383, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x001000dfffffff;  op2val:0x11
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x001000dfffffff, 0x11, x1, 408, x2)

inst_84:
// rs1_w0_val == 4026531839, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000fefffffff;  op2val:0xd
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000fefffffff, 0xd, x1, 416, x2)

inst_85:
// rs1_w0_val == 4261412863, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000011fdffffff;  op2val:0x1e
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000011fdffffff, 0x1e, x1, 424, x2)

inst_86:
// rs1_w0_val == 4278190079, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000bfeffffff;  op2val:0xb
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000bfeffffff, 0xb, x1, 432, x2)

inst_87:
// rs1_w0_val == 4290772991, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000100ffbfffff;  op2val:0x13
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000100ffbfffff, 0x13, x1, 440, x2)

inst_88:
// rs1_w0_val == 4294934527, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffffffff7fff;  op2val:0x8
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfbffffffffff7fff, 0x8, x1, 448, x2)

inst_89:
// rs1_w0_val == 4294963199, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x040000ffffefff;  op2val:0x9
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x040000ffffefff, 0x9, x1, 456, x2)

inst_90:
// rs1_w0_val == 4294965247, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xbffffffffffff7ff;  op2val:0x1e
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xbffffffffffff7ff, 0x1e, x1, 464, x2)

inst_91:
// rs1_w0_val == 4294967167, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbffffffff7f;  op2val:0x8
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffbffffffff7f, 0x8, x1, 472, x2)

inst_92:
// rs1_w0_val == 4294967293, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x000010fffffffd;  op2val:0x10
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x000010fffffffd, 0x10, x1, 480, x2)

inst_93:
// rs1_w0_val == 268435456, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffff10000000;  op2val:0x12
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x7fffffff10000000, 0x12, x1, 488, x2)

inst_94:
// rs1_w0_val == 33554432, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000002000000;  op2val:0xd
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000002000000, 0xd, x1, 496, x2)

inst_95:
// rs1_w0_val == 16777216, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000601000000;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000601000000, 0x4, x1, 504, x2)

inst_96:
// rs1_w0_val == 8388608, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffff00800000;  op2val:0x0
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfbffffff00800000, 0x0, x1, 512, x2)

inst_97:
// rs1_w0_val == 4194304, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf00400000;  op2val:0x10
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffffbf00400000, 0x10, x1, 520, x2)

inst_98:
// rs1_w0_val == 2097152, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x00000100200000;  op2val:0x15
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x00000100200000, 0x15, x1, 528, x2)

inst_99:
// rs1_w0_val == 1048576, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff00100000;  op2val:0x11
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffdffff00100000, 0x11, x1, 536, x2)

inst_100:
// rs1_w0_val == 524288, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff00080000;  op2val:0xc
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffffefff00080000, 0xc, x1, 544, x2)

inst_101:
// rs1_w0_val == 262144, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffff00040000;  op2val:0xd
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfdffffff00040000, 0xd, x1, 552, x2)

inst_102:
// rs1_w0_val == 4294836223, 
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffbfffdffff;  op2val:0x4
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffffffbfffdffff, 0x4, x1, 560, x2)

inst_103:
// rs2_val == 23, rs1_w1_val == 1431655765, rs1_w0_val == 8
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0x5555555500000008;  op2val:0x17
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0x5555555500000008, 0x17, x1, 568, x2)

inst_104:
// rs2_val == 29, rs1_w0_val == 3221225471, rs1_w1_val == 4290772991
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffffbfffffff;  op2val:0x1d
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xffbfffffbfffffff, 0x1d, x1, 576, x2)

inst_105:
// rs2_val == 16, rs1_w0_val == 4294967294, rs1_w1_val == 4294965247
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfffff7fffffffffe;  op2val:0x10
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfffff7fffffffffe, 0x10, x1, 584, x2)

inst_106:
// rs1_w1_val == 4278190079, rs1_w0_val == 4294967231
// opcode: srl32.u ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffffffffffbf;  op2val:0x17
TEST_RR_OP(srl32.u, x31, x30, x29, 0x0000000000000000, 0xfeffffffffffffbf, 0x17, x1, 592, x2)
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
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 75*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
