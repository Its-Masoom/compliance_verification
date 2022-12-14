
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.7.1
// timestamp : Fri Jun 17 14:03:39 2022 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /scratch/pawan/work/normalised/RV32D/fcvt.d.wu.cgf \
 \
//                  -- xlen 32  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fcvt.d.wu instruction of the RISC-V RV32FD_Zicsr,RV64FD_Zicsr extension for the fcvt.d.wu_b25 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IFD_Zicsr,RV64IFD_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*D.*);def TEST_CASE_1=True;",fcvt.d.wu_b25)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x11,test_dataset_0)
RVTEST_SIGBASE(x5,signature_x5_1)

inst_0:// rs1==x8, rd==f28,rs1_val == 0 and  fcsr == 0 and rm_val == 7  
/* opcode: fcvt.d.wu ; op1:x8; dest:f28; op1val:0x0; valaddr_reg:x11;
val_offset:0*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f28, x8, 0, 0, x11, 0*4, x16, x5, x10,LREGWU)

inst_1:// rs1==x28, rd==f18,rs1_val == 1 and  fcsr == 0 and rm_val == 7  
/* opcode: fcvt.d.wu ; op1:x28; dest:f18; op1val:0x1; valaddr_reg:x11;
val_offset:1*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f18, x28, 0, 0, x11, 1*4, x16, x5, x10,LREGWU)

inst_2:// rs1==x30, rd==f3,rs1_val == 2454155456 and  fcsr == 0 and rm_val == 7  
/* opcode: fcvt.d.wu ; op1:x30; dest:f3; op1val:0x924770c0; valaddr_reg:x11;
val_offset:2*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f3, x30, 0, 0, x11, 2*4, x16, x5, x10,LREGWU)

inst_3:// rs1==x27, rd==f23,rs1_val == 4294967295 and  fcsr == 0 and rm_val == 7  
/* opcode: fcvt.d.wu ; op1:x27; dest:f23; op1val:0xffffffff; valaddr_reg:x11;
val_offset:3*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f23, x27, 0, 0, x11, 3*4, x16, x5, x10,LREGWU)

inst_4:// rs1==x4, rd==f22,
/* opcode: fcvt.d.wu ; op1:x4; dest:f22; op1val:0x0; valaddr_reg:x11;
val_offset:4*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f22, x4, 0, 0, x11, 4*4, x16, x5, x10,LREGWU)

inst_5:// rs1==x15, rd==f12,
/* opcode: fcvt.d.wu ; op1:x15; dest:f12; op1val:0x0; valaddr_reg:x11;
val_offset:5*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f12, x15, 0, 0, x11, 5*4, x16, x5, x10,LREGWU)

inst_6:// rs1==x23, rd==f19,
/* opcode: fcvt.d.wu ; op1:x23; dest:f19; op1val:0x0; valaddr_reg:x11;
val_offset:6*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f19, x23, 0, 0, x11, 6*4, x16, x5, x10,LREGWU)

inst_7:// rs1==x3, rd==f2,
/* opcode: fcvt.d.wu ; op1:x3; dest:f2; op1val:0x0; valaddr_reg:x11;
val_offset:7*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f2, x3, 0, 0, x11, 7*4, x16, x5, x10,LREGWU)

inst_8:// rs1==x6, rd==f26,
/* opcode: fcvt.d.wu ; op1:x6; dest:f26; op1val:0x0; valaddr_reg:x11;
val_offset:8*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f26, x6, 0, 0, x11, 8*4, x16, x5, x10,LREGWU)

inst_9:// rs1==x1, rd==f15,
/* opcode: fcvt.d.wu ; op1:x1; dest:f15; op1val:0x0; valaddr_reg:x11;
val_offset:9*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f15, x1, 0, 0, x11, 9*4, x16, x5, x10,LREGWU)

inst_10:// rs1==x13, rd==f10,
/* opcode: fcvt.d.wu ; op1:x13; dest:f10; op1val:0x0; valaddr_reg:x11;
val_offset:10*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f10, x13, 0, 0, x11, 10*4, x16, x5, x10,LREGWU)

inst_11:// rs1==x20, rd==f14,
/* opcode: fcvt.d.wu ; op1:x20; dest:f14; op1val:0x0; valaddr_reg:x11;
val_offset:11*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f14, x20, 0, 0, x11, 11*4, x16, x5, x10,LREGWU)

inst_12:// rs1==x21, rd==f20,
/* opcode: fcvt.d.wu ; op1:x21; dest:f20; op1val:0x0; valaddr_reg:x11;
val_offset:12*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f20, x21, 0, 0, x11, 12*4, x16, x5, x10,LREGWU)

inst_13:// rs1==x22, rd==f30,
/* opcode: fcvt.d.wu ; op1:x22; dest:f30; op1val:0x0; valaddr_reg:x11;
val_offset:13*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f30, x22, 0, 0, x11, 13*4, x16, x5, x10,LREGWU)

inst_14:// rs1==x14, rd==f9,
/* opcode: fcvt.d.wu ; op1:x14; dest:f9; op1val:0x0; valaddr_reg:x11;
val_offset:14*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f9, x14, 0, 0, x11, 14*4, x16, x5, x10,LREGWU)

inst_15:// rs1==x12, rd==f0,
/* opcode: fcvt.d.wu ; op1:x12; dest:f0; op1val:0x0; valaddr_reg:x11;
val_offset:15*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f0, x12, 0, 0, x11, 15*4, x16, x5, x10,LREGWU)

inst_16:// rs1==x2, rd==f29,
/* opcode: fcvt.d.wu ; op1:x2; dest:f29; op1val:0x0; valaddr_reg:x11;
val_offset:16*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f29, x2, 0, 0, x11, 16*4, x16, x5, x10,LREGWU)

inst_17:// rs1==x26, rd==f6,
/* opcode: fcvt.d.wu ; op1:x26; dest:f6; op1val:0x0; valaddr_reg:x11;
val_offset:17*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f6, x26, 0, 0, x11, 17*4, x16, x5, x10,LREGWU)

inst_18:// rs1==x19, rd==f24,
/* opcode: fcvt.d.wu ; op1:x19; dest:f24; op1val:0x0; valaddr_reg:x11;
val_offset:18*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f24, x19, 0, 0, x11, 18*4, x16, x5, x10,LREGWU)

inst_19:// rs1==x17, rd==f25,
/* opcode: fcvt.d.wu ; op1:x17; dest:f25; op1val:0x0; valaddr_reg:x11;
val_offset:19*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f25, x17, 0, 0, x11, 19*4, x16, x5, x10,LREGWU)

inst_20:// rs1==x29, rd==f17,
/* opcode: fcvt.d.wu ; op1:x29; dest:f17; op1val:0x0; valaddr_reg:x11;
val_offset:20*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f17, x29, 0, 0, x11, 20*4, x16, x5, x10,LREGWU)

inst_21:// rs1==x18, rd==f5,
/* opcode: fcvt.d.wu ; op1:x18; dest:f5; op1val:0x0; valaddr_reg:x11;
val_offset:21*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f5, x18, 0, 0, x11, 21*4, x16, x5, x10,LREGWU)

inst_22:// rs1==x9, rd==f16,
/* opcode: fcvt.d.wu ; op1:x9; dest:f16; op1val:0x0; valaddr_reg:x11;
val_offset:22*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f16, x9, 0, 0, x11, 22*4, x16, x5, x10,LREGWU)

inst_23:// rs1==x7, rd==f7,
/* opcode: fcvt.d.wu ; op1:x7; dest:f7; op1val:0x0; valaddr_reg:x11;
val_offset:23*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f7, x7, 0, 0, x11, 23*4, x16, x5, x10,LREGWU)
RVTEST_VALBASEUPD(x3,test_dataset_1)

inst_24:// rs1==x31, rd==f1,
/* opcode: fcvt.d.wu ; op1:x31; dest:f1; op1val:0x0; valaddr_reg:x3;
val_offset:0*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f1, x31, 0, 0, x3, 0*4, x4, x5, x10,LREGWU)

inst_25:// rs1==x11, rd==f21,
/* opcode: fcvt.d.wu ; op1:x11; dest:f21; op1val:0x0; valaddr_reg:x3;
val_offset:1*4; correctval:??; testreg:x10;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f21, x11, 0, 0, x3, 1*4, x4, x5, x10,LREGWU)

inst_26:// rs1==x16, rd==f31,
/* opcode: fcvt.d.wu ; op1:x16; dest:f31; op1val:0x0; valaddr_reg:x3;
val_offset:2*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f31, x16, 0, 0, x3, 2*4, x4, x5, x2,LREGWU)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_27:// rs1==x25, rd==f13,
/* opcode: fcvt.d.wu ; op1:x25; dest:f13; op1val:0x0; valaddr_reg:x3;
val_offset:3*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f13, x25, 0, 0, x3, 3*4, x4, x1, x2,LREGWU)

inst_28:// rs1==x0, rd==f11,
/* opcode: fcvt.d.wu ; op1:x0; dest:f11; op1val:0x0; valaddr_reg:x3;
val_offset:4*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f11, x0, 0, 0, x3, 4*4, x4, x1, x2,LREGWU)

inst_29:// rs1==x5, rd==f4,
/* opcode: fcvt.d.wu ; op1:x5; dest:f4; op1val:0x0; valaddr_reg:x3;
val_offset:5*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f4, x5, 0, 0, x3, 5*4, x4, x1, x2,LREGWU)

inst_30:// rs1==x10, rd==f8,
/* opcode: fcvt.d.wu ; op1:x10; dest:f8; op1val:0x0; valaddr_reg:x3;
val_offset:6*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f8, x10, 0, 0, x3, 6*4, x4, x1, x2,LREGWU)

inst_31:// rs1==x24, rd==f27,
/* opcode: fcvt.d.wu ; op1:x24; dest:f27; op1val:0x0; valaddr_reg:x3;
val_offset:7*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f27, x24, 0, 0, x3, 7*4, x4, x1, x2,LREGWU)

inst_32:// 
/* opcode: fcvt.d.wu ; op1:x31; dest:f31; op1val:0x0; valaddr_reg:x3;
val_offset:8*4; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fcvt.d.wu, f31, x31, 0, 0, x3, 8*4, x4, x1, x2,LREGWU)
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
test_dataset_0:
.word 0;
.word 1;
.word 2454155456;
.word 4294967295;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
test_dataset_1:
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
.word 0;
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x5_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x5_1:
    .fill 54*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_0:
    .fill 12*((SIGALIGN)/4),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
