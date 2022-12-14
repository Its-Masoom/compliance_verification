
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
// This assembly file tests the c.ld instruction of the RISC-V C extension for the cld covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",cld)

RVTEST_SIGBASE( x1,signature_x1_1)

inst_0:
// rs1 != rd, rd==x12, rs1==x14, imm_val > 0, imm_val == 32
// opcode: c.ld; op1:x14; dest:x12; op1val:0x0; immval:0x20
TEST_LOAD(x1,x2,0,x14,x12,0x20,0,c.ld,0x0)

inst_1:
// rs1 == rd, rd==x15, rs1==x15, imm_val == 0, 
// opcode: c.ld; op1:x15; dest:x15; op1val:0x0; immval:0x0
TEST_LOAD(x1,x2,0,x15,x15,0x0,8,c.ld,0x0)

inst_2:
// rd==x9, rs1==x11, imm_val == 8, 
// opcode: c.ld; op1:x11; dest:x9; op1val:0x0; immval:0x8
TEST_LOAD(x1,x2,0,x11,x9,0x8,16,c.ld,0x0)

inst_3:
// rd==x8, rs1==x10, imm_val == 16, 
// opcode: c.ld; op1:x10; dest:x8; op1val:0x0; immval:0x10
TEST_LOAD(x1,x2,0,x10,x8,0x10,24,c.ld,0x0)

inst_4:
// rd==x14, rs1==x12, imm_val == 64, 
// opcode: c.ld; op1:x12; dest:x14; op1val:0x0; immval:0x40
TEST_LOAD(x1,x2,0,x12,x14,0x40,32,c.ld,0x0)

inst_5:
// rd==x10, rs1==x13, imm_val == 128, 
// opcode: c.ld; op1:x13; dest:x10; op1val:0x0; immval:0x80
TEST_LOAD(x1,x2,0,x13,x10,0x80,40,c.ld,0x0)

inst_6:
// rd==x13, rs1==x8, imm_val == 240, 
// opcode: c.ld; op1:x8; dest:x13; op1val:0x0; immval:0xf0
TEST_LOAD(x1,x2,0,x8,x13,0xf0,48,c.ld,0x0)

inst_7:
// rd==x11, rs1==x9, imm_val == 232, 
// opcode: c.ld; op1:x9; dest:x11; op1val:0x0; immval:0xe8
TEST_LOAD(x1,x2,0,x9,x11,0xe8,56,c.ld,0x0)

inst_8:
// imm_val == 216, 
// opcode: c.ld; op1:x11; dest:x10; op1val:0x0; immval:0xd8
TEST_LOAD(x1,x2,0,x11,x10,0xd8,64,c.ld,0x0)

inst_9:
// imm_val == 184, 
// opcode: c.ld; op1:x11; dest:x10; op1val:0x0; immval:0xb8
TEST_LOAD(x1,x2,0,x11,x10,0xb8,72,c.ld,0x0)

inst_10:
// imm_val == 120, 
// opcode: c.ld; op1:x11; dest:x10; op1val:0x0; immval:0x78
TEST_LOAD(x1,x2,0,x11,x10,0x78,80,c.ld,0x0)

inst_11:
// imm_val == 168, 
// opcode: c.ld; op1:x11; dest:x10; op1val:0x0; immval:0xa8
TEST_LOAD(x1,x2,0,x11,x10,0xa8,88,c.ld,0x0)

inst_12:
// imm_val == 80, 
// opcode: c.ld; op1:x11; dest:x10; op1val:0x0; immval:0x50
TEST_LOAD(x1,x2,0,x11,x10,0x50,96,c.ld,0x0)
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
    .fill 13*(XLEN/32),4,0xdeadbeef

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
