
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Wed Dec 16 04:49:48 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv64ic.cgf') \
//                  -- xlen 64 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the c.sd instruction of the RISC-V C extension for the csd covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IC")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",csd)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rs1 != rs2, rs1==x8, rs2==x12, rs2_val == (-2**(xlen-1)), imm_val == 120, imm_val > 0, rs2_val == -9223372036854775808
// opcode:c.sd; op1:x8; op2:x12; op2val:-0x8000000000000000; immval:0x78
TEST_STORE(x1,x2,0,x8,x12,-0x8000000000000000,0x78,0,c.sd,0)

inst_1:
// rs1==x15, rs2==x9, rs2_val == 0, imm_val == 168
// opcode:c.sd; op1:x15; op2:x9; op2val:0x0; immval:0xa8
TEST_STORE(x1,x2,0,x15,x9,0x0,0xa8,8,c.sd,0)

inst_2:
// rs1==x9, rs2==x13, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, imm_val == 216
// opcode:c.sd; op1:x9; op2:x13; op2val:0x7fffffffffffffff; immval:0xd8
TEST_STORE(x1,x2,0,x9,x13,0x7fffffffffffffff,0xd8,16,c.sd,0)

inst_3:
// rs1==x14, rs2==x15, rs2_val == 1, 
// opcode:c.sd; op1:x14; op2:x15; op2val:0x1; immval:0xd8
TEST_STORE(x1,x2,0,x14,x15,0x1,0xd8,24,c.sd,0)

inst_4:
// rs1==x11, rs2==x10, imm_val == 0, rs2_val == -9007199254740993
// opcode:c.sd; op1:x11; op2:x10; op2val:-0x20000000000001; immval:0x0
TEST_STORE(x1,x2,0,x11,x10,-0x20000000000001,0x0,32,c.sd,0)

inst_5:
// rs1==x10, rs2==x8, rs2_val == 2, 
// opcode:c.sd; op1:x10; op2:x8; op2val:0x2; immval:0x78
TEST_STORE(x1,x2,0,x10,x8,0x2,0x78,40,c.sd,0)

inst_6:
// rs1==x12, rs2==x11, rs2_val == 4, 
// opcode:c.sd; op1:x12; op2:x11; op2val:0x4; immval:0xd8
TEST_STORE(x1,x2,0,x12,x11,0x4,0xd8,48,c.sd,0)

inst_7:
// rs1==x13, rs2==x14, rs2_val == 8, 
// opcode:c.sd; op1:x13; op2:x14; op2val:0x8; immval:0xd8
TEST_STORE(x1,x2,0,x13,x14,0x8,0xd8,56,c.sd,0)

inst_8:
// rs2_val == 16, imm_val == 80
// opcode:c.sd; op1:x10; op2:x11; op2val:0x10; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,0x10,0x50,64,c.sd,0)

inst_9:
// rs2_val == 32, imm_val == 128
// opcode:c.sd; op1:x10; op2:x11; op2val:0x20; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,0x20,0x80,72,c.sd,0)

inst_10:
// rs2_val == 64, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x40; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,0x40,0x28,80,c.sd,0)

inst_11:
// rs2_val == 128, imm_val == 240
// opcode:c.sd; op1:x10; op2:x11; op2val:0x80; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,0x80,0xf0,88,c.sd,0)

inst_12:
// rs2_val == 256, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x100; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,0x100,0x18,96,c.sd,0)

inst_13:
// rs2_val == 512, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x200; immval:0xa8
TEST_STORE(x1,x2,0,x10,x11,0x200,0xa8,104,c.sd,0)

inst_14:
// rs2_val == 1024, imm_val == 32
// opcode:c.sd; op1:x10; op2:x11; op2val:0x400; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,0x400,0x20,112,c.sd,0)

inst_15:
// rs2_val == 2048, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x800; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,0x800,0x50,120,c.sd,0)

inst_16:
// rs2_val == 4096, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x1000; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,0x1000,0x80,128,c.sd,0)

inst_17:
// rs2_val == 8192, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x2000; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,0x2000,0x78,136,c.sd,0)

inst_18:
// rs2_val == 16384, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x4000; immval:0x70
TEST_STORE(x1,x2,0,x10,x11,0x4000,0x70,144,c.sd,0)

inst_19:
// rs2_val == 32768, imm_val == 64
// opcode:c.sd; op1:x10; op2:x11; op2val:0x8000; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,0x8000,0x40,152,c.sd,0)

inst_20:
// rs2_val == 65536, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x10000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x10000,0x58,160,c.sd,0)

inst_21:
// rs2_val == 131072, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x20000; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,0x20000,0x50,168,c.sd,0)

inst_22:
// rs2_val == 262144, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x40000; immval:0x68
TEST_STORE(x1,x2,0,x10,x11,0x40000,0x68,176,c.sd,0)

inst_23:
// rs2_val == 524288, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x80000; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,0x80000,0x60,184,c.sd,0)

inst_24:
// rs2_val == 1048576, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x100000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x100000,0x58,192,c.sd,0)

inst_25:
// rs2_val == 2097152, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x200000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x200000,0x58,200,c.sd,0)

inst_26:
// rs2_val == 4194304, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x400000; immval:0x68
TEST_STORE(x1,x2,0,x10,x11,0x400000,0x68,208,c.sd,0)

inst_27:
// rs2_val == 8388608, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x800000; immval:0x70
TEST_STORE(x1,x2,0,x10,x11,0x800000,0x70,216,c.sd,0)

inst_28:
// rs2_val == 16777216, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,0x1000000,0x0,224,c.sd,0)

inst_29:
// rs2_val == 33554432, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000; immval:0x88
TEST_STORE(x1,x2,0,x10,x11,0x2000000,0x88,232,c.sd,0)

inst_30:
// rs2_val == 67108864, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,0x4000000,0x28,240,c.sd,0)

inst_31:
// rs2_val == 134217728, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x8000000; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,0x8000000,0x30,248,c.sd,0)

inst_32:
// rs2_val == 268435456, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x10000000; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,0x10000000,0x28,256,c.sd,0)

inst_33:
// rs2_val == 536870912, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x20000000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x20000000,0x58,264,c.sd,0)

inst_34:
// rs2_val == 1073741824, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x40000000; immval:0x38
TEST_STORE(x1,x2,0,x10,x11,0x40000000,0x38,272,c.sd,0)

inst_35:
// rs2_val == 2147483648, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x80000000; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,0x80000000,0x0,280,c.sd,0)

inst_36:
// rs2_val == 4294967296, imm_val == 16
// opcode:c.sd; op1:x10; op2:x11; op2val:0x100000000; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,0x100000000,0x10,288,c.sd,0)

inst_37:
// rs2_val == 8589934592, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x200000000; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,0x200000000,0x10,296,c.sd,0)

inst_38:
// rs2_val == 17179869184, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x400000000; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,0x400000000,0x30,304,c.sd,0)

inst_39:
// rs2_val == 34359738368, imm_val == 8
// opcode:c.sd; op1:x10; op2:x11; op2val:0x800000000; immval:0x8
TEST_STORE(x1,x2,0,x10,x11,0x800000000,0x8,312,c.sd,0)

inst_40:
// rs2_val == 68719476736, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000; immval:0x48
TEST_STORE(x1,x2,0,x10,x11,0x1000000000,0x48,320,c.sd,0)

inst_41:
// rs2_val == 137438953472, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000; immval:0x98
TEST_STORE(x1,x2,0,x10,x11,0x2000000000,0x98,328,c.sd,0)

inst_42:
// rs2_val == 274877906944, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,0x4000000000,0x80,336,c.sd,0)

inst_43:
// rs2_val == 549755813888, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x8000000000; immval:0xa8
TEST_STORE(x1,x2,0,x10,x11,0x8000000000,0xa8,344,c.sd,0)

inst_44:
// rs2_val == 1099511627776, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x10000000000; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,0x10000000000,0x80,352,c.sd,0)

inst_45:
// rs2_val == 2199023255552, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x20000000000; immval:0x88
TEST_STORE(x1,x2,0,x10,x11,0x20000000000,0x88,360,c.sd,0)

inst_46:
// rs2_val == 4398046511104, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x40000000000; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,0x40000000000,0x40,368,c.sd,0)

inst_47:
// rs2_val == 8796093022208, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x80000000000; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,0x80000000000,0x60,376,c.sd,0)

inst_48:
// rs2_val == 17592186044416, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x100000000000; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,0x100000000000,0x50,384,c.sd,0)

inst_49:
// rs2_val == 35184372088832, imm_val == 184
// opcode:c.sd; op1:x10; op2:x11; op2val:0x200000000000; immval:0xb8
TEST_STORE(x1,x2,0,x10,x11,0x200000000000,0xb8,392,c.sd,0)

inst_50:
// rs2_val == 70368744177664, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x400000000000; immval:0x38
TEST_STORE(x1,x2,0,x10,x11,0x400000000000,0x38,400,c.sd,0)

inst_51:
// rs2_val == 140737488355328, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x800000000000; immval:0x8
TEST_STORE(x1,x2,0,x10,x11,0x800000000000,0x8,408,c.sd,0)

inst_52:
// rs2_val == 281474976710656, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000,0x58,416,c.sd,0)

inst_53:
// rs2_val == 562949953421312, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000,0x40,424,c.sd,0)

inst_54:
// rs2_val == 1125899906842624, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000,0x30,432,c.sd,0)

inst_55:
// rs2_val == 2251799813685248, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x8000000000000; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,0x8000000000000,0x30,440,c.sd,0)

inst_56:
// rs2_val == 4503599627370496, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x10000000000000; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,0x10000000000000,0x78,448,c.sd,0)

inst_57:
// rs2_val == 9007199254740992, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x20000000000000; immval:0xb8
TEST_STORE(x1,x2,0,x10,x11,0x20000000000000,0xb8,456,c.sd,0)

inst_58:
// rs2_val == 18014398509481984, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x40000000000000; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,0x40000000000000,0x0,464,c.sd,0)

inst_59:
// rs2_val == 36028797018963968, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x80000000000000; immval:0x48
TEST_STORE(x1,x2,0,x10,x11,0x80000000000000,0x48,472,c.sd,0)

inst_60:
// rs2_val == 72057594037927936, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x100000000000000; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,0x100000000000000,0x58,480,c.sd,0)

inst_61:
// rs2_val == 144115188075855872, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x200000000000000; immval:0xa8
TEST_STORE(x1,x2,0,x10,x11,0x200000000000000,0xa8,488,c.sd,0)

inst_62:
// rs2_val == 288230376151711744, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x400000000000000; immval:0x98
TEST_STORE(x1,x2,0,x10,x11,0x400000000000000,0x98,496,c.sd,0)

inst_63:
// rs2_val == 576460752303423488, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x800000000000000; immval:0x68
TEST_STORE(x1,x2,0,x10,x11,0x800000000000000,0x68,504,c.sd,0)

inst_64:
// rs2_val == 1152921504606846976, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x1000000000000000; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,0x1000000000000000,0x80,512,c.sd,0)

inst_65:
// rs2_val == 2305843009213693952, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x2000000000000000; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,0x2000000000000000,0xf0,520,c.sd,0)

inst_66:
// rs2_val == 4611686018427387904, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x4000000000000000; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,0x4000000000000000,0x60,528,c.sd,0)

inst_67:
// rs2_val == -2, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,-0x2,0x50,536,c.sd,0)

inst_68:
// rs2_val == -3, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x3; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x3,0xf8,544,c.sd,0)

inst_69:
// rs2_val == -576460752303423489, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x800000000000001; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x800000000000001,0xf8,552,c.sd,0)

inst_70:
// rs2_val == -1152921504606846977, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x1000000000000001; immval:0x8
TEST_STORE(x1,x2,0,x10,x11,-0x1000000000000001,0x8,560,c.sd,0)

inst_71:
// rs2_val == -2305843009213693953, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2000000000000001; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,-0x2000000000000001,0x18,568,c.sd,0)

inst_72:
// rs2_val == -4611686018427387905, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x4000000000000001; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,-0x4000000000000001,0x18,576,c.sd,0)

inst_73:
// rs2_val == 6148914691236517205, 
// opcode:c.sd; op1:x10; op2:x11; op2val:0x5555555555555555; immval:0xd8
TEST_STORE(x1,x2,0,x10,x11,0x5555555555555555,0xd8,584,c.sd,0)

inst_74:
// rs2_val == -6148914691236517206, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x5555555555555556; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,-0x5555555555555556,0x20,592,c.sd,0)

inst_75:
// imm_val == 232, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x8; immval:0xe8
TEST_STORE(x1,x2,0,x10,x11,-0x8,0xe8,600,c.sd,0)

inst_76:
// rs2_val == -5, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x5; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x5,0x28,608,c.sd,0)

inst_77:
// rs2_val == -9, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x9; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x9,0xf0,616,c.sd,0)

inst_78:
// rs2_val == -17, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x11; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,-0x11,0x50,624,c.sd,0)

inst_79:
// rs2_val == -33, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x21; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,-0x21,0x20,632,c.sd,0)

inst_80:
// rs2_val == -65, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x41; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x41,0xf0,640,c.sd,0)

inst_81:
// rs2_val == -129, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x81; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x81,0x28,648,c.sd,0)

inst_82:
// rs2_val == -257, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x101; immval:0x68
TEST_STORE(x1,x2,0,x10,x11,-0x101,0x68,656,c.sd,0)

inst_83:
// rs2_val == -513, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x201; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,-0x201,0x20,664,c.sd,0)

inst_84:
// rs2_val == -1025, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x401; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,-0x401,0x18,672,c.sd,0)

inst_85:
// rs2_val == -2049, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x801; immval:0xb8
TEST_STORE(x1,x2,0,x10,x11,-0x801,0xb8,680,c.sd,0)

inst_86:
// rs2_val == -4097, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x1001; immval:0x98
TEST_STORE(x1,x2,0,x10,x11,-0x1001,0x98,688,c.sd,0)

inst_87:
// rs2_val == -8193, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2001; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,-0x2001,0x58,696,c.sd,0)

inst_88:
// rs2_val == -16385, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x4001; immval:0x58
TEST_STORE(x1,x2,0,x10,x11,-0x4001,0x58,704,c.sd,0)

inst_89:
// rs2_val == -32769, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x8001; immval:0x90
TEST_STORE(x1,x2,0,x10,x11,-0x8001,0x90,712,c.sd,0)

inst_90:
// rs2_val == -65537, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x10001; immval:0x88
TEST_STORE(x1,x2,0,x10,x11,-0x10001,0x88,720,c.sd,0)

inst_91:
// rs2_val == -131073, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x20001; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,-0x20001,0x0,728,c.sd,0)

inst_92:
// rs2_val == -262145, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x40001; immval:0xd8
TEST_STORE(x1,x2,0,x10,x11,-0x40001,0xd8,736,c.sd,0)

inst_93:
// rs2_val == -524289, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x80001; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,-0x80001,0x50,744,c.sd,0)

inst_94:
// rs2_val == -1048577, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x100001; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,-0x100001,0x60,752,c.sd,0)

inst_95:
// rs2_val == -2097153, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x200001; immval:0xa8
TEST_STORE(x1,x2,0,x10,x11,-0x200001,0xa8,760,c.sd,0)

inst_96:
// rs2_val == -4194305, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x400001; immval:0x70
TEST_STORE(x1,x2,0,x10,x11,-0x400001,0x70,768,c.sd,0)

inst_97:
// rs2_val == -8388609, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x800001; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,-0x800001,0x40,776,c.sd,0)

inst_98:
// rs2_val == -16777217, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x1000001; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x1000001,0xf0,784,c.sd,0)

inst_99:
// rs2_val == -33554433, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2000001; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x2000001,0xf8,792,c.sd,0)

inst_100:
// rs2_val == -67108865, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x4000001; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x4000001,0xf8,800,c.sd,0)

inst_101:
// rs2_val == -134217729, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x8000001; immval:0x20
TEST_STORE(x1,x2,0,x10,x11,-0x8000001,0x20,808,c.sd,0)

inst_102:
// rs2_val == -268435457, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x10000001; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,-0x10000001,0x0,816,c.sd,0)

inst_103:
// rs2_val == -536870913, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x20000001; immval:0xd8
TEST_STORE(x1,x2,0,x10,x11,-0x20000001,0xd8,824,c.sd,0)

inst_104:
// rs2_val == -1073741825, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x40000001; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x40000001,0xf0,832,c.sd,0)

inst_105:
// rs2_val == -2147483649, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x80000001; immval:0x48
TEST_STORE(x1,x2,0,x10,x11,-0x80000001,0x48,840,c.sd,0)

inst_106:
// rs2_val == -4294967297, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x100000001; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,-0x100000001,0x30,848,c.sd,0)

inst_107:
// rs2_val == -8589934593, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x200000001; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,-0x200000001,0x50,856,c.sd,0)

inst_108:
// rs2_val == -17179869185, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x400000001; immval:0xe8
TEST_STORE(x1,x2,0,x10,x11,-0x400000001,0xe8,864,c.sd,0)

inst_109:
// rs2_val == -34359738369, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x800000001; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,-0x800000001,0x78,872,c.sd,0)

inst_110:
// rs2_val == -68719476737, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x1000000001; immval:0x50
TEST_STORE(x1,x2,0,x10,x11,-0x1000000001,0x50,880,c.sd,0)

inst_111:
// rs2_val == -137438953473, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2000000001; immval:0x0
TEST_STORE(x1,x2,0,x10,x11,-0x2000000001,0x0,888,c.sd,0)

inst_112:
// rs2_val == -274877906945, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x4000000001; immval:0x80
TEST_STORE(x1,x2,0,x10,x11,-0x4000000001,0x80,896,c.sd,0)

inst_113:
// rs2_val == -549755813889, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x8000000001; immval:0x78
TEST_STORE(x1,x2,0,x10,x11,-0x8000000001,0x78,904,c.sd,0)

inst_114:
// rs2_val == -1099511627777, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x10000000001; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x10000000001,0xf8,912,c.sd,0)

inst_115:
// rs2_val == -2199023255553, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x20000000001; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x20000000001,0xf0,920,c.sd,0)

inst_116:
// rs2_val == -4398046511105, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x40000000001; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,-0x40000000001,0x60,928,c.sd,0)

inst_117:
// rs2_val == -8796093022209, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x80000000001; immval:0x40
TEST_STORE(x1,x2,0,x10,x11,-0x80000000001,0x40,936,c.sd,0)

inst_118:
// rs2_val == -17592186044417, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x100000000001; immval:0x18
TEST_STORE(x1,x2,0,x10,x11,-0x100000000001,0x18,944,c.sd,0)

inst_119:
// rs2_val == -35184372088833, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x200000000001; immval:0x30
TEST_STORE(x1,x2,0,x10,x11,-0x200000000001,0x30,952,c.sd,0)

inst_120:
// rs2_val == -70368744177665, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x400000000001; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x400000000001,0x28,960,c.sd,0)

inst_121:
// rs2_val == -140737488355329, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x800000000001; immval:0xb8
TEST_STORE(x1,x2,0,x10,x11,-0x800000000001,0xb8,968,c.sd,0)

inst_122:
// rs2_val == -281474976710657, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x1000000000001; immval:0xf8
TEST_STORE(x1,x2,0,x10,x11,-0x1000000000001,0xf8,976,c.sd,0)

inst_123:
// rs2_val == -562949953421313, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x2000000000001; immval:0x88
TEST_STORE(x1,x2,0,x10,x11,-0x2000000000001,0x88,984,c.sd,0)

inst_124:
// rs2_val == -1125899906842625, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x4000000000001; immval:0x48
TEST_STORE(x1,x2,0,x10,x11,-0x4000000000001,0x48,992,c.sd,0)

inst_125:
// rs2_val == -2251799813685249, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x8000000000001; immval:0xd8
TEST_STORE(x1,x2,0,x10,x11,-0x8000000000001,0xd8,1000,c.sd,0)

inst_126:
// rs2_val == -4503599627370497, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x10000000000001; immval:0x28
TEST_STORE(x1,x2,0,x10,x11,-0x10000000000001,0x28,1008,c.sd,0)

inst_127:
// rs2_val == -18014398509481985, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x40000000000001; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,-0x40000000000001,0x10,1016,c.sd,0)

inst_128:
// rs2_val == -36028797018963969, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x80000000000001; immval:0x90
TEST_STORE(x1,x2,0,x10,x11,-0x80000000000001,0x90,1024,c.sd,0)

inst_129:
// rs2_val == -72057594037927937, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x100000000000001; immval:0xf0
TEST_STORE(x1,x2,0,x10,x11,-0x100000000000001,0xf0,1032,c.sd,0)

inst_130:
// rs2_val == -144115188075855873, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x200000000000001; immval:0x60
TEST_STORE(x1,x2,0,x10,x11,-0x200000000000001,0x60,1040,c.sd,0)

inst_131:
// rs2_val == -288230376151711745, 
// opcode:c.sd; op1:x10; op2:x11; op2val:-0x400000000000001; immval:0x10
TEST_STORE(x1,x2,0,x10,x11,-0x400000000000001,0x10,1048,c.sd,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 132*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
