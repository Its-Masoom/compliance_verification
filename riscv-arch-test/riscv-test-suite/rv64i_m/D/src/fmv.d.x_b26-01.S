
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.7.1
// timestamp : Fri Jun 17 14:03:29 2022 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /scratch/pawan/work/normalised/RV64D/fmv.d.x.cgf \
 \
//                  -- xlen 64  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fmv.d.x instruction of the RISC-V RV64FD_Zicsr extension for the fmv.d.x_b26 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IFD_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*RV64.*I.*D.*);def TEST_CASE_1=True;",fmv.d.x_b26)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x1,test_dataset_0)
RVTEST_SIGBASE(x6,signature_x6_1)

inst_0:// rs1==x5, rd==f17,rs1_val == 0 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x5; dest:f17; op1val:0x0; valaddr_reg:x1;
val_offset:0*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f17, x5, 0, 0, x1, 0*8, x23, x6, x22,ld)

inst_1:// rs1==x12, rd==f0,rs1_val == 1 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x12; dest:f0; op1val:0x1; valaddr_reg:x1;
val_offset:1*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f0, x12, 0, 0, x1, 1*8, x23, x6, x22,ld)

inst_2:// rs1==x28, rd==f23,rs1_val == 10221399934292 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x28; dest:f23; op1val:0x94bdae98554; valaddr_reg:x1;
val_offset:2*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f23, x28, 0, 0, x1, 2*8, x23, x6, x22,ld)

inst_3:// rs1==x11, rd==f25,rs1_val == 1027494066 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x11; dest:f25; op1val:0x3d3e50b2; valaddr_reg:x1;
val_offset:3*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f25, x11, 0, 0, x1, 3*8, x23, x6, x22,ld)

inst_4:// rs1==x31, rd==f15,rs1_val == 104291213792325832 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f15; op1val:0x172844e6f4930c8; valaddr_reg:x1;
val_offset:4*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f15, x31, 0, 0, x1, 4*8, x23, x6, x22,ld)

inst_5:// rs1==x4, rd==f8,rs1_val == 1064659746632576 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x4; dest:f8; op1val:0x3c84d6a013380; valaddr_reg:x1;
val_offset:5*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f8, x4, 0, 0, x1, 5*8, x23, x6, x22,ld)

inst_6:// rs1==x8, rd==f4,rs1_val == 107790943 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x8; dest:f4; op1val:0x66cc25f; valaddr_reg:x1;
val_offset:6*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f4, x8, 0, 0, x1, 6*8, x23, x6, x22,ld)

inst_7:// rs1==x13, rd==f1,rs1_val == 1094 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x13; dest:f1; op1val:0x446; valaddr_reg:x1;
val_offset:7*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f1, x13, 0, 0, x1, 7*8, x23, x6, x22,ld)

inst_8:// rs1==x9, rd==f27,rs1_val == 1168389695644 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x9; dest:f27; op1val:0x1100973e89c; valaddr_reg:x1;
val_offset:8*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f27, x9, 0, 0, x1, 8*8, x23, x6, x22,ld)

inst_9:// rs1==x16, rd==f3,rs1_val == 12147253371253868 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x16; dest:f3; op1val:0x2b27dcd230b46c; valaddr_reg:x1;
val_offset:9*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f3, x16, 0, 0, x1, 9*8, x23, x6, x22,ld)

inst_10:// rs1==x17, rd==f12,rs1_val == 123 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x17; dest:f12; op1val:0x7b; valaddr_reg:x1;
val_offset:10*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f12, x17, 0, 0, x1, 10*8, x23, x6, x22,ld)

inst_11:// rs1==x20, rd==f11,rs1_val == 12789625 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x20; dest:f11; op1val:0xc32779; valaddr_reg:x1;
val_offset:11*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f11, x20, 0, 0, x1, 11*8, x23, x6, x22,ld)

inst_12:// rs1==x19, rd==f24,rs1_val == 131206879410 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x19; dest:f24; op1val:0x1e8c8a18b2; valaddr_reg:x1;
val_offset:12*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f24, x19, 0, 0, x1, 12*8, x23, x6, x22,ld)

inst_13:// rs1==x7, rd==f22,rs1_val == 132508745935081 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x7; dest:f22; op1val:0x788418bb28e9; valaddr_reg:x1;
val_offset:13*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f22, x7, 0, 0, x1, 13*8, x23, x6, x22,ld)

inst_14:// rs1==x2, rd==f14,rs1_val == 1449063015970349 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x2; dest:f14; op1val:0x525ea4652f62d; valaddr_reg:x1;
val_offset:14*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f14, x2, 0, 0, x1, 14*8, x23, x6, x22,ld)

inst_15:// rs1==x18, rd==f16,rs1_val == 15 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x18; dest:f16; op1val:0xf; valaddr_reg:x1;
val_offset:15*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f16, x18, 0, 0, x1, 15*8, x23, x6, x22,ld)

inst_16:// rs1==x21, rd==f31,rs1_val == 156703057381110404 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x21; dest:f31; op1val:0x22cb899b66b3284; valaddr_reg:x1;
val_offset:16*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x21, 0, 0, x1, 16*8, x23, x6, x22,ld)

inst_17:// rs1==x14, rd==f6,rs1_val == 1587807073 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x14; dest:f6; op1val:0x5ea40361; valaddr_reg:x1;
val_offset:17*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f6, x14, 0, 0, x1, 17*8, x23, x6, x22,ld)

inst_18:// rs1==x0, rd==f10,rs1_val == 16 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x0; dest:f10; op1val:0x0; valaddr_reg:x1;
val_offset:18*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f10, x0, 0, 0, x1, 18*8, x23, x6, x22,ld)

inst_19:// rs1==x10, rd==f9,rs1_val == 1848861 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x10; dest:f9; op1val:0x1c361d; valaddr_reg:x1;
val_offset:19*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f9, x10, 0, 0, x1, 19*8, x23, x6, x22,ld)

inst_20:// rs1==x26, rd==f7,rs1_val == 194479587133174 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x26; dest:f7; op1val:0xb0e0ceb506f6; valaddr_reg:x1;
val_offset:20*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f7, x26, 0, 0, x1, 20*8, x23, x6, x22,ld)

inst_21:// rs1==x30, rd==f26,rs1_val == 2 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x30; dest:f26; op1val:0x2; valaddr_reg:x1;
val_offset:21*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f26, x30, 0, 0, x1, 21*8, x23, x6, x22,ld)

inst_22:// rs1==x25, rd==f2,rs1_val == 2086309477244717835 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x25; dest:f2; op1val:0x1cf40f6a72b3cb0b; valaddr_reg:x1;
val_offset:22*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f2, x25, 0, 0, x1, 22*8, x23, x6, x22,ld)

inst_23:// rs1==x15, rd==f13,rs1_val == 22050244097 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x15; dest:f13; op1val:0x5224c0601; valaddr_reg:x1;
val_offset:23*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f13, x15, 0, 0, x1, 23*8, x23, x6, x22,ld)

inst_24:// rs1==x3, rd==f20,rs1_val == 231549045 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x3; dest:f20; op1val:0xdcd2875; valaddr_reg:x1;
val_offset:24*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f20, x3, 0, 0, x1, 24*8, x23, x6, x22,ld)
RVTEST_VALBASEUPD(x3,test_dataset_1)

inst_25:// rs1==x1, rd==f19,rs1_val == 241276 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x1; dest:f19; op1val:0x3ae7c; valaddr_reg:x3;
val_offset:0*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f19, x1, 0, 0, x3, 0*8, x4, x6, x22,ld)

inst_26:// rs1==x23, rd==f30,rs1_val == 24358691315317906 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x23; dest:f30; op1val:0x568a19c70afc92; valaddr_reg:x3;
val_offset:1*8; correctval:??; testreg:x22;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f30, x23, 0, 0, x3, 1*8, x4, x6, x22,ld)

inst_27:// rs1==x27, rd==f18,rs1_val == 24575 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x27; dest:f18; op1val:0x5fff; valaddr_reg:x3;
val_offset:2*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f18, x27, 0, 0, x3, 2*8, x4, x6, x2,ld)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_28:// rs1==x29, rd==f28,rs1_val == 253 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x29; dest:f28; op1val:0xfd; valaddr_reg:x3;
val_offset:3*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f28, x29, 0, 0, x3, 3*8, x4, x1, x2,ld)

inst_29:// rs1==x22, rd==f5,rs1_val == 268160711063 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x22; dest:f5; op1val:0x3e6f9fb997; valaddr_reg:x3;
val_offset:4*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f5, x22, 0, 0, x3, 4*8, x4, x1, x2,ld)

inst_30:// rs1==x6, rd==f29,rs1_val == 3035559518675506972 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x6; dest:f29; op1val:0x2a20794c9535971c; valaddr_reg:x3;
val_offset:5*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f29, x6, 0, 0, x3, 5*8, x4, x1, x2,ld)

inst_31:// rs1==x24, rd==f21,rs1_val == 31117680965175 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x24; dest:f21; op1val:0x1c4d2651f637; valaddr_reg:x3;
val_offset:6*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f21, x24, 0, 0, x3, 6*8, x4, x1, x2,ld)

inst_32:// rs1_val == 32105925 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x1e9e5c5; valaddr_reg:x3;
val_offset:7*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 7*8, x4, x1, x2,ld)

inst_33:// rs1_val == 334857 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x51c09; valaddr_reg:x3;
val_offset:8*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 8*8, x4, x1, x2,ld)

inst_34:// rs1_val == 339827553 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x14415b61; valaddr_reg:x3;
val_offset:9*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 9*8, x4, x1, x2,ld)

inst_35:// rs1_val == 3454382579804098 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xc45be1e9667c2; valaddr_reg:x3;
val_offset:10*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 10*8, x4, x1, x2,ld)

inst_36:// rs1_val == 3524006078498 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x3347f216822; valaddr_reg:x3;
val_offset:11*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 11*8, x4, x1, x2,ld)

inst_37:// rs1_val == 3864061 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x3af5fd; valaddr_reg:x3;
val_offset:12*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 12*8, x4, x1, x2,ld)

inst_38:// rs1_val == 398 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x18e; valaddr_reg:x3;
val_offset:13*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 13*8, x4, x1, x2,ld)

inst_39:// rs1_val == 4035756470 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xf08cc1b6; valaddr_reg:x3;
val_offset:14*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 14*8, x4, x1, x2,ld)

inst_40:// rs1_val == 4055 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xfd7; valaddr_reg:x3;
val_offset:15*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 15*8, x4, x1, x2,ld)

inst_41:// rs1_val == 428092830716901554 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x5f0e42951c5b8b2; valaddr_reg:x3;
val_offset:16*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 16*8, x4, x1, x2,ld)

inst_42:// rs1_val == 45 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x2d; valaddr_reg:x3;
val_offset:17*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 17*8, x4, x1, x2,ld)

inst_43:// rs1_val == 45276376 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x2b2dcd8; valaddr_reg:x3;
val_offset:18*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 18*8, x4, x1, x2,ld)

inst_44:// rs1_val == 453482173015 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x6995a4d257; valaddr_reg:x3;
val_offset:19*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 19*8, x4, x1, x2,ld)

inst_45:// rs1_val == 45718214482007 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x299499ef1857; valaddr_reg:x3;
val_offset:20*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 20*8, x4, x1, x2,ld)

inst_46:// rs1_val == 477767642386861 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x1b286f29c11ad; valaddr_reg:x3;
val_offset:21*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 21*8, x4, x1, x2,ld)

inst_47:// rs1_val == 5032232323694 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x493a86b8a6e; valaddr_reg:x3;
val_offset:22*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 22*8, x4, x1, x2,ld)

inst_48:// rs1_val == 51102363774 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xbe5f0307e; valaddr_reg:x3;
val_offset:23*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 23*8, x4, x1, x2,ld)

inst_49:// rs1_val == 56436 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xdc74; valaddr_reg:x3;
val_offset:24*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 24*8, x4, x1, x2,ld)

inst_50:// rs1_val == 59668294213987868 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xd3fbff58fa6e1c; valaddr_reg:x3;
val_offset:25*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 25*8, x4, x1, x2,ld)

inst_51:// rs1_val == 6573466 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x644d9a; valaddr_reg:x3;
val_offset:26*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 26*8, x4, x1, x2,ld)

inst_52:// rs1_val == 676 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x2a4; valaddr_reg:x3;
val_offset:27*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 27*8, x4, x1, x2,ld)

inst_53:// rs1_val == 6781 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x1a7d; valaddr_reg:x3;
val_offset:28*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 28*8, x4, x1, x2,ld)

inst_54:// rs1_val == 6929185936 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x19d02fc90; valaddr_reg:x3;
val_offset:29*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 29*8, x4, x1, x2,ld)

inst_55:// rs1_val == 7 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x7; valaddr_reg:x3;
val_offset:30*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 30*8, x4, x1, x2,ld)

inst_56:// rs1_val == 71376 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x116d0; valaddr_reg:x3;
val_offset:31*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 31*8, x4, x1, x2,ld)

inst_57:// rs1_val == 7228908657904184 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x19aea774ab0a38; valaddr_reg:x3;
val_offset:32*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 32*8, x4, x1, x2,ld)

inst_58:// rs1_val == 813522083007 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xbd69b1dcbf; valaddr_reg:x3;
val_offset:33*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 33*8, x4, x1, x2,ld)

inst_59:// rs1_val == 8607351303 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x20109c207; valaddr_reg:x3;
val_offset:34*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 34*8, x4, x1, x2,ld)

inst_60:// rs1_val == 878257878219487117 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xc3032e31475f78d; valaddr_reg:x3;
val_offset:35*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 35*8, x4, x1, x2,ld)

inst_61:// rs1_val == 896618 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0xdae6a; valaddr_reg:x3;
val_offset:36*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 36*8, x4, x1, x2,ld)

inst_62:// rs1_val == 9184267462870993263 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x7f751298de9a896f; valaddr_reg:x3;
val_offset:37*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 37*8, x4, x1, x2,ld)

inst_63:// rs1_val == 9438 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x24de; valaddr_reg:x3;
val_offset:38*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 38*8, x4, x1, x2,ld)

inst_64:// rs1_val == 16 and  fcsr == 0  
/* opcode: fmv.d.x ; op1:x31; dest:f31; op1val:0x10; valaddr_reg:x3;
val_offset:39*8; correctval:??; testreg:x2;
fcsr_val: 0*/
TEST_FPIO_OP_NRM(fmv.d.x, f31, x31, 0, 0, x3, 39*8, x4, x1, x2,ld)
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
.dword 0;
.dword 1;
.dword 10221399934292;
.dword 1027494066;
.dword 104291213792325832;
.dword 1064659746632576;
.dword 107790943;
.dword 1094;
.dword 1168389695644;
.dword 12147253371253868;
.dword 123;
.dword 12789625;
.dword 131206879410;
.dword 132508745935081;
.dword 1449063015970349;
.dword 15;
.dword 156703057381110404;
.dword 1587807073;
.dword 0;
.dword 1848861;
.dword 194479587133174;
.dword 2;
.dword 2086309477244717835;
.dword 22050244097;
.dword 231549045;
test_dataset_1:
.dword 241276;
.dword 24358691315317906;
.dword 24575;
.dword 253;
.dword 268160711063;
.dword 3035559518675506972;
.dword 31117680965175;
.dword 32105925;
.dword 334857;
.dword 339827553;
.dword 3454382579804098;
.dword 3524006078498;
.dword 3864061;
.dword 398;
.dword 4035756470;
.dword 4055;
.dword 428092830716901554;
.dword 45;
.dword 45276376;
.dword 453482173015;
.dword 45718214482007;
.dword 477767642386861;
.dword 5032232323694;
.dword 51102363774;
.dword 56436;
.dword 59668294213987868;
.dword 6573466;
.dword 676;
.dword 6781;
.dword 6929185936;
.dword 7;
.dword 71376;
.dword 7228908657904184;
.dword 813522083007;
.dword 8607351303;
.dword 878257878219487117;
.dword 896618;
.dword 9184267462870993263;
.dword 9438;
.dword 16;
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x6_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x6_1:
    .fill 56*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_0:
    .fill 74*((SIGALIGN)/4),4,0xdeadbeef

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
