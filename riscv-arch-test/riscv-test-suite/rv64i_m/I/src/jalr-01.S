
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.1
// timestamp : Wed Dec 16 03:45:17 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv64i.cgf') \
//                  -- xlen 64 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64I")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x4,signature_x4_1)

inst_0:
// rs1 == rd, rs1==x25, rd==x25, imm_val > 0, 
// opcode: jalr; op1:x25; dest:x25; immval:0x7; align:0 
TEST_JALR_OP(x8, x25, x25, 0x7, x4, 0,0)

inst_1:
// rs1 != rd, rs1==x19, rd==x7, imm_val < 0, 
// opcode: jalr; op1:x19; dest:x7; immval:-0xa; align:0 
TEST_JALR_OP(x8, x7, x19, -0xa, x4, 8,0)

inst_2:
// rs1==x2, rd==x21, imm_val == 1, 
// opcode: jalr; op1:x2; dest:x21; immval:0x1; align:0 
TEST_JALR_OP(x8, x21, x2, 0x1, x4, 16,0)

inst_3:
// rs1==x30, rd==x23, imm_val == 2, 
// opcode: jalr; op1:x30; dest:x23; immval:0x2; align:0 
TEST_JALR_OP(x8, x23, x30, 0x2, x4, 24,0)

inst_4:
// rs1==x7, rd==x9, imm_val == 4, 
// opcode: jalr; op1:x7; dest:x9; immval:0x4; align:0 
TEST_JALR_OP(x8, x9, x7, 0x4, x4, 32,0)

inst_5:
// rs1==x14, rd==x24, imm_val == 8, 
// opcode: jalr; op1:x14; dest:x24; immval:0x8; align:0 
TEST_JALR_OP(x8, x24, x14, 0x8, x4, 40,0)

inst_6:
// rs1==x15, rd==x3, imm_val == 16, 
// opcode: jalr; op1:x15; dest:x3; immval:0x10; align:0 
TEST_JALR_OP(x8, x3, x15, 0x10, x4, 48,0)

inst_7:
// rs1==x11, rd==x30, imm_val == 32, 
// opcode: jalr; op1:x11; dest:x30; immval:0x20; align:0 
TEST_JALR_OP(x8, x30, x11, 0x20, x4, 56,0)

inst_8:
// rs1==x29, rd==x31, imm_val == 64, 
// opcode: jalr; op1:x29; dest:x31; immval:0x40; align:0 
TEST_JALR_OP(x8, x31, x29, 0x40, x4, 64,0)

inst_9:
// rs1==x5, rd==x16, imm_val == 128, 
// opcode: jalr; op1:x5; dest:x16; immval:0x80; align:0 
TEST_JALR_OP(x8, x16, x5, 0x80, x4, 72,0)

inst_10:
// rs1==x28, rd==x29, imm_val == 256, 
// opcode: jalr; op1:x28; dest:x29; immval:0x100; align:0 
TEST_JALR_OP(x8, x29, x28, 0x100, x4, 80,0)

inst_11:
// rs1==x12, rd==x20, imm_val == 512, 
// opcode: jalr; op1:x12; dest:x20; immval:0x200; align:0 
TEST_JALR_OP(x8, x20, x12, 0x200, x4, 88,0)

inst_12:
// rs1==x9, rd==x22, imm_val == 1024, 
// opcode: jalr; op1:x9; dest:x22; immval:0x400; align:0 
TEST_JALR_OP(x8, x22, x9, 0x400, x4, 96,0)

inst_13:
// rs1==x13, rd==x6, imm_val == -2048, 
// opcode: jalr; op1:x13; dest:x6; immval:-0x800; align:0 
TEST_JALR_OP(x8, x6, x13, -0x800, x4, 104,0)

inst_14:
// rs1==x27, rd==x19, imm_val == -2, 
// opcode: jalr; op1:x27; dest:x19; immval:-0x2; align:0 
TEST_JALR_OP(x8, x19, x27, -0x2, x4, 112,0)

inst_15:
// rs1==x6, rd==x17, imm_val == -3, 
// opcode: jalr; op1:x6; dest:x17; immval:-0x3; align:0 
TEST_JALR_OP(x8, x17, x6, -0x3, x4, 120,0)

inst_16:
// rs1==x1, rd==x26, imm_val == -5, 
// opcode: jalr; op1:x1; dest:x26; immval:-0x5; align:0 
TEST_JALR_OP(x8, x26, x1, -0x5, x4, 128,0)

inst_17:
// rs1==x10, rd==x8, imm_val == -9, 
// opcode: jalr; op1:x10; dest:x8; immval:-0x9; align:0 
TEST_JALR_OP(x7, x8, x10, -0x9, x4, 136,0)
RVTEST_SIGBASE( x6,signature_x6_0)

inst_18:
// rs1==x23, rd==x13, imm_val == -17, 
// opcode: jalr; op1:x23; dest:x13; immval:-0x11; align:0 
TEST_JALR_OP(x7, x13, x23, -0x11, x6, 0,0)

inst_19:
// rs1==x22, rd==x15, imm_val == -33, 
// opcode: jalr; op1:x22; dest:x15; immval:-0x21; align:0 
TEST_JALR_OP(x7, x15, x22, -0x21, x6, 8,0)

inst_20:
// rs1==x3, rd==x11, imm_val == -65, 
// opcode: jalr; op1:x3; dest:x11; immval:-0x41; align:0 
TEST_JALR_OP(x7, x11, x3, -0x41, x6, 16,0)

inst_21:
// rs1==x31, rd==x28, imm_val == -129, 
// opcode: jalr; op1:x31; dest:x28; immval:-0x81; align:0 
TEST_JALR_OP(x7, x28, x31, -0x81, x6, 24,0)

inst_22:
// rs1==x24, rd==x14, imm_val == -257, 
// opcode: jalr; op1:x24; dest:x14; immval:-0x101; align:0 
TEST_JALR_OP(x7, x14, x24, -0x101, x6, 32,0)

inst_23:
// rs1==x21, rd==x12, imm_val == -513, 
// opcode: jalr; op1:x21; dest:x12; immval:-0x201; align:0 
TEST_JALR_OP(x7, x12, x21, -0x201, x6, 40,0)

inst_24:
// rs1==x4, rd==x0, imm_val == -1025, 
// opcode: jalr; op1:x4; dest:x0; immval:-0x401; align:0 
TEST_JALR_OP(x7, x0, x4, -0x401, x6, 48,0)

inst_25:
// rs1==x8, rd==x4, imm_val == 2047, 
// opcode: jalr; op1:x8; dest:x4; immval:0x7ff; align:0 
TEST_JALR_OP(x7, x4, x8, 0x7ff, x6, 56,0)

inst_26:
// rs1==x20, rd==x18, imm_val == 1365, 
// opcode: jalr; op1:x20; dest:x18; immval:0x555; align:0 
TEST_JALR_OP(x7, x18, x20, 0x555, x6, 64,0)

inst_27:
// rs1==x18, rd==x2, imm_val == -1366, 
// opcode: jalr; op1:x18; dest:x2; immval:-0x556; align:0 
TEST_JALR_OP(x7, x2, x18, -0x556, x6, 72,0)

inst_28:
// rs1==x17, rd==x5, 
// opcode: jalr; op1:x17; dest:x5; immval:-0x800; align:0 
TEST_JALR_OP(x7, x5, x17, -0x800, x6, 80,0)

inst_29:
// rs1==x16, rd==x27, 
// opcode: jalr; op1:x16; dest:x27; immval:-0x800; align:0 
TEST_JALR_OP(x7, x27, x16, -0x800, x6, 88,0)

inst_30:
// rs1==x26, rd==x1, 
// opcode: jalr; op1:x26; dest:x1; immval:-0x800; align:0 
TEST_JALR_OP(x7, x1, x26, -0x800, x6, 96,0)

inst_31:
// rd==x10, 
// opcode: jalr; op1:x24; dest:x10; immval:-0x800; align:0 
TEST_JALR_OP(x7, x10, x24, -0x800, x6, 104,0)

inst_32:
// imm_val == -1025, 
// opcode: jalr; op1:x10; dest:x11; immval:-0x401; align:0 
TEST_JALR_OP(x7, x11, x10, -0x401, x6, 112,0)
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


signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x6_0:
    .fill 15*(XLEN/32),4,0xdeadbeef

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
