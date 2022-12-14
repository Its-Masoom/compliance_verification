
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.7.1
// timestamp : Fri Jun 17 14:03:33 2022 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /scratch/pawan/work/normalised/RV32D/fcvt.s.d.cgf \
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
// This assembly file tests the fcvt.s.d instruction of the RISC-V RV32FD_Zicsr,RV64FD_Zicsr extension for the fcvt.s.d_b29 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*D.*);def TEST_CASE_1=True;",fcvt.s.d_b29)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x3,test_dataset_0)
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 != rd, rs1==f18, rd==f24,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f18; dest:f24; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f24, f18, dyn, 0, 0, x3, 0*FLEN/8, x4, x1, x2)

inst_1:
// rs1 == rd, rs1==f1, rd==f1,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f1; dest:f1; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f1, f1, dyn, 32, 0, x3, 1*FLEN/8, x4, x1, x2)

inst_2:
// rs1==f14, rd==f10,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f14; dest:f10; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f10, f14, dyn, 64, 0, x3, 2*FLEN/8, x4, x1, x2)

inst_3:
// rs1==f9, rd==f0,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f9; dest:f0; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f0, f9, dyn, 96, 0, x3, 3*FLEN/8, x4, x1, x2)

inst_4:
// rs1==f21, rd==f26,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f21; dest:f26; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f26, f21, dyn, 128, 0, x3, 4*FLEN/8, x4, x1, x2)

inst_5:
// rs1==f27, rd==f23,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f27; dest:f23; op1val:0x3fc08574923b8699; valaddr_reg:x3;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f23, f27, dyn, 0, 0, x3, 5*FLEN/8, x4, x1, x2)

inst_6:
// rs1==f19, rd==f30,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f19; dest:f30; op1val:0x3fc08574923b8699; valaddr_reg:x3;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f30, f19, dyn, 32, 0, x3, 6*FLEN/8, x4, x1, x2)

inst_7:
// rs1==f13, rd==f8,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f13; dest:f8; op1val:0x3fc08574923b8699; valaddr_reg:x3;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f8, f13, dyn, 64, 0, x3, 7*FLEN/8, x4, x1, x2)

inst_8:
// rs1==f23, rd==f29,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f23; dest:f29; op1val:0x3fc08574923b8699; valaddr_reg:x3;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f29, f23, dyn, 96, 0, x3, 8*FLEN/8, x4, x1, x2)

inst_9:
// rs1==f10, rd==f20,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f10; dest:f20; op1val:0x3fc08574923b8699; valaddr_reg:x3;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f20, f10, dyn, 128, 0, x3, 9*FLEN/8, x4, x1, x2)

inst_10:
// rs1==f28, rd==f7,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f28; dest:f7; op1val:0x3fc08574923b869a; valaddr_reg:x3;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f7, f28, dyn, 0, 0, x3, 10*FLEN/8, x4, x1, x2)

inst_11:
// rs1==f25, rd==f13,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f25; dest:f13; op1val:0x3fc08574923b869a; valaddr_reg:x3;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f13, f25, dyn, 32, 0, x3, 11*FLEN/8, x4, x1, x2)

inst_12:
// rs1==f3, rd==f18,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f3; dest:f18; op1val:0x3fc08574923b869a; valaddr_reg:x3;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f18, f3, dyn, 64, 0, x3, 12*FLEN/8, x4, x1, x2)

inst_13:
// rs1==f15, rd==f19,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f15; dest:f19; op1val:0x3fc08574923b869a; valaddr_reg:x3;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f19, f15, dyn, 96, 0, x3, 13*FLEN/8, x4, x1, x2)

inst_14:
// rs1==f26, rd==f3,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f26; dest:f3; op1val:0x3fc08574923b869a; valaddr_reg:x3;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f3, f26, dyn, 128, 0, x3, 14*FLEN/8, x4, x1, x2)

inst_15:
// rs1==f24, rd==f5,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f24; dest:f5; op1val:0x3fc08574923b869b; valaddr_reg:x3;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f5, f24, dyn, 0, 0, x3, 15*FLEN/8, x4, x1, x2)

inst_16:
// rs1==f5, rd==f11,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f5; dest:f11; op1val:0x3fc08574923b869b; valaddr_reg:x3;
val_offset:16*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f11, f5, dyn, 32, 0, x3, 16*FLEN/8, x4, x1, x2)

inst_17:
// rs1==f31, rd==f17,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f31; dest:f17; op1val:0x3fc08574923b869b; valaddr_reg:x3;
val_offset:17*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f17, f31, dyn, 64, 0, x3, 17*FLEN/8, x4, x1, x2)

inst_18:
// rs1==f30, rd==f6,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f6; op1val:0x3fc08574923b869b; valaddr_reg:x3;
val_offset:18*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f6, f30, dyn, 96, 0, x3, 18*FLEN/8, x4, x1, x2)

inst_19:
// rs1==f2, rd==f25,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f2; dest:f25; op1val:0x3fc08574923b869b; valaddr_reg:x3;
val_offset:19*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f25, f2, dyn, 128, 0, x3, 19*FLEN/8, x4, x1, x2)

inst_20:
// rs1==f11, rd==f4,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f11; dest:f4; op1val:0x3fc08574923b869c; valaddr_reg:x3;
val_offset:20*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f4, f11, dyn, 0, 0, x3, 20*FLEN/8, x4, x1, x2)

inst_21:
// rs1==f0, rd==f2,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f0; dest:f2; op1val:0x3fc08574923b869c; valaddr_reg:x3;
val_offset:21*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f2, f0, dyn, 32, 0, x3, 21*FLEN/8, x4, x1, x2)

inst_22:
// rs1==f17, rd==f31,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f17; dest:f31; op1val:0x3fc08574923b869c; valaddr_reg:x3;
val_offset:22*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f17, dyn, 64, 0, x3, 22*FLEN/8, x4, x1, x2)

inst_23:
// rs1==f7, rd==f12,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f7; dest:f12; op1val:0x3fc08574923b869c; valaddr_reg:x3;
val_offset:23*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f12, f7, dyn, 96, 0, x3, 23*FLEN/8, x4, x1, x2)

inst_24:
// rs1==f16, rd==f21,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f16; dest:f21; op1val:0x3fc08574923b869c; valaddr_reg:x3;
val_offset:24*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f21, f16, dyn, 128, 0, x3, 24*FLEN/8, x4, x1, x2)

inst_25:
// rs1==f22, rd==f9,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f22; dest:f9; op1val:0x3fc08574923b869d; valaddr_reg:x3;
val_offset:25*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f9, f22, dyn, 0, 0, x3, 25*FLEN/8, x4, x1, x2)

inst_26:
// rs1==f20, rd==f22,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f20; dest:f22; op1val:0x3fc08574923b869d; valaddr_reg:x3;
val_offset:26*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f22, f20, dyn, 32, 0, x3, 26*FLEN/8, x4, x1, x2)

inst_27:
// rs1==f4, rd==f14,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f4; dest:f14; op1val:0x3fc08574923b869d; valaddr_reg:x3;
val_offset:27*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f14, f4, dyn, 64, 0, x3, 27*FLEN/8, x4, x1, x2)

inst_28:
// rs1==f12, rd==f27,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f12; dest:f27; op1val:0x3fc08574923b869d; valaddr_reg:x3;
val_offset:28*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f27, f12, dyn, 96, 0, x3, 28*FLEN/8, x4, x1, x2)

inst_29:
// rs1==f8, rd==f15,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f8; dest:f15; op1val:0x3fc08574923b869d; valaddr_reg:x3;
val_offset:29*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f15, f8, dyn, 128, 0, x3, 29*FLEN/8, x4, x1, x2)

inst_30:
// rs1==f29, rd==f28,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f29; dest:f28; op1val:0x3fc08574923b869e; valaddr_reg:x3;
val_offset:30*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f28, f29, dyn, 0, 0, x3, 30*FLEN/8, x4, x1, x2)

inst_31:
// rs1==f6, rd==f16,fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f6; dest:f16; op1val:0x3fc08574923b869e; valaddr_reg:x3;
val_offset:31*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f16, f6, dyn, 32, 0, x3, 31*FLEN/8, x4, x1, x2)

inst_32:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869e; valaddr_reg:x3;
val_offset:32*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 32*FLEN/8, x4, x1, x2)

inst_33:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869e; valaddr_reg:x3;
val_offset:33*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 33*FLEN/8, x4, x1, x2)

inst_34:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869e; valaddr_reg:x3;
val_offset:34*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 34*FLEN/8, x4, x1, x2)

inst_35:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869f; valaddr_reg:x3;
val_offset:35*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 35*FLEN/8, x4, x1, x2)

inst_36:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869f; valaddr_reg:x3;
val_offset:36*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 36*FLEN/8, x4, x1, x2)

inst_37:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869f; valaddr_reg:x3;
val_offset:37*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 37*FLEN/8, x4, x1, x2)

inst_38:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869f; valaddr_reg:x3;
val_offset:38*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 38*FLEN/8, x4, x1, x2)

inst_39:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b869f; valaddr_reg:x3;
val_offset:39*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 39*FLEN/8, x4, x1, x2)

inst_40:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8698; valaddr_reg:x3;
val_offset:40*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 40*FLEN/8, x4, x1, x2)

inst_41:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8698; valaddr_reg:x3;
val_offset:41*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 41*FLEN/8, x4, x1, x2)

inst_42:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8698; valaddr_reg:x3;
val_offset:42*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 42*FLEN/8, x4, x1, x2)

inst_43:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8698; valaddr_reg:x3;
val_offset:43*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 43*FLEN/8, x4, x1, x2)

inst_44:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8698; valaddr_reg:x3;
val_offset:44*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 44*FLEN/8, x4, x1, x2)

inst_45:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8699; valaddr_reg:x3;
val_offset:45*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 45*FLEN/8, x4, x1, x2)

inst_46:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8699; valaddr_reg:x3;
val_offset:46*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 46*FLEN/8, x4, x1, x2)

inst_47:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8699; valaddr_reg:x3;
val_offset:47*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 47*FLEN/8, x4, x1, x2)

inst_48:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8699; valaddr_reg:x3;
val_offset:48*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 48*FLEN/8, x4, x1, x2)

inst_49:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b8699 and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b8699; valaddr_reg:x3;
val_offset:49*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 49*FLEN/8, x4, x1, x2)

inst_50:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869a; valaddr_reg:x3;
val_offset:50*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 50*FLEN/8, x4, x1, x2)

inst_51:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869a; valaddr_reg:x3;
val_offset:51*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 51*FLEN/8, x4, x1, x2)

inst_52:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869a; valaddr_reg:x3;
val_offset:52*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 52*FLEN/8, x4, x1, x2)

inst_53:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869a; valaddr_reg:x3;
val_offset:53*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 53*FLEN/8, x4, x1, x2)

inst_54:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869a and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869a; valaddr_reg:x3;
val_offset:54*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 54*FLEN/8, x4, x1, x2)

inst_55:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869b; valaddr_reg:x3;
val_offset:55*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 55*FLEN/8, x4, x1, x2)

inst_56:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869b; valaddr_reg:x3;
val_offset:56*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 56*FLEN/8, x4, x1, x2)

inst_57:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869b; valaddr_reg:x3;
val_offset:57*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 57*FLEN/8, x4, x1, x2)

inst_58:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869b; valaddr_reg:x3;
val_offset:58*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 58*FLEN/8, x4, x1, x2)

inst_59:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869b and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869b; valaddr_reg:x3;
val_offset:59*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 59*FLEN/8, x4, x1, x2)

inst_60:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869c; valaddr_reg:x3;
val_offset:60*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 60*FLEN/8, x4, x1, x2)

inst_61:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869c; valaddr_reg:x3;
val_offset:61*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 61*FLEN/8, x4, x1, x2)

inst_62:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869c; valaddr_reg:x3;
val_offset:62*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 62*FLEN/8, x4, x1, x2)

inst_63:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869c; valaddr_reg:x3;
val_offset:63*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 63*FLEN/8, x4, x1, x2)

inst_64:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869c and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869c; valaddr_reg:x3;
val_offset:64*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 64*FLEN/8, x4, x1, x2)

inst_65:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869d; valaddr_reg:x3;
val_offset:65*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 65*FLEN/8, x4, x1, x2)

inst_66:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869d; valaddr_reg:x3;
val_offset:66*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 66*FLEN/8, x4, x1, x2)

inst_67:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869d; valaddr_reg:x3;
val_offset:67*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 67*FLEN/8, x4, x1, x2)

inst_68:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869d; valaddr_reg:x3;
val_offset:68*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 68*FLEN/8, x4, x1, x2)

inst_69:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869d and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869d; valaddr_reg:x3;
val_offset:69*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 69*FLEN/8, x4, x1, x2)

inst_70:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869e; valaddr_reg:x3;
val_offset:70*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 70*FLEN/8, x4, x1, x2)

inst_71:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869e; valaddr_reg:x3;
val_offset:71*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 71*FLEN/8, x4, x1, x2)

inst_72:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869e; valaddr_reg:x3;
val_offset:72*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 72*FLEN/8, x4, x1, x2)

inst_73:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869e; valaddr_reg:x3;
val_offset:73*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 73*FLEN/8, x4, x1, x2)

inst_74:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869e and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869e; valaddr_reg:x3;
val_offset:74*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 74*FLEN/8, x4, x1, x2)

inst_75:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869f; valaddr_reg:x3;
val_offset:75*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 75*FLEN/8, x4, x1, x2)

inst_76:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869f; valaddr_reg:x3;
val_offset:76*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 76*FLEN/8, x4, x1, x2)

inst_77:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x40 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869f; valaddr_reg:x3;
val_offset:77*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 64 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 64, 0, x3, 77*FLEN/8, x4, x1, x2)

inst_78:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x60 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869f; valaddr_reg:x3;
val_offset:78*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 96 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 96, 0, x3, 78*FLEN/8, x4, x1, x2)

inst_79:
// fs1 == 1 and fe1 == 0x3fc and fm1 == 0x08574923b869f and  fcsr == 0x80 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0xbfc08574923b869f; valaddr_reg:x3;
val_offset:79*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 128 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 128, 0, x3, 79*FLEN/8, x4, x1, x2)

inst_80:
// fs1 == 0 and fe1 == 0x3fc and fm1 == 0x08574923b8698 and  fcsr == 0x20 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fc08574923b8698; valaddr_reg:x3;
val_offset:80*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 32 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 32, 0, x3, 80*FLEN/8, x4, x1, x2)
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
NAN_BOXED(4593818355633981080,64,FLEN)
NAN_BOXED(4593818355633981080,64,FLEN)
NAN_BOXED(4593818355633981080,64,FLEN)
NAN_BOXED(4593818355633981080,64,FLEN)
NAN_BOXED(4593818355633981080,64,FLEN)
NAN_BOXED(4593818355633981081,64,FLEN)
NAN_BOXED(4593818355633981081,64,FLEN)
NAN_BOXED(4593818355633981081,64,FLEN)
NAN_BOXED(4593818355633981081,64,FLEN)
NAN_BOXED(4593818355633981081,64,FLEN)
NAN_BOXED(4593818355633981082,64,FLEN)
NAN_BOXED(4593818355633981082,64,FLEN)
NAN_BOXED(4593818355633981082,64,FLEN)
NAN_BOXED(4593818355633981082,64,FLEN)
NAN_BOXED(4593818355633981082,64,FLEN)
NAN_BOXED(4593818355633981083,64,FLEN)
NAN_BOXED(4593818355633981083,64,FLEN)
NAN_BOXED(4593818355633981083,64,FLEN)
NAN_BOXED(4593818355633981083,64,FLEN)
NAN_BOXED(4593818355633981083,64,FLEN)
NAN_BOXED(4593818355633981084,64,FLEN)
NAN_BOXED(4593818355633981084,64,FLEN)
NAN_BOXED(4593818355633981084,64,FLEN)
NAN_BOXED(4593818355633981084,64,FLEN)
NAN_BOXED(4593818355633981084,64,FLEN)
NAN_BOXED(4593818355633981085,64,FLEN)
NAN_BOXED(4593818355633981085,64,FLEN)
NAN_BOXED(4593818355633981085,64,FLEN)
NAN_BOXED(4593818355633981085,64,FLEN)
NAN_BOXED(4593818355633981085,64,FLEN)
NAN_BOXED(4593818355633981086,64,FLEN)
NAN_BOXED(4593818355633981086,64,FLEN)
NAN_BOXED(4593818355633981086,64,FLEN)
NAN_BOXED(4593818355633981086,64,FLEN)
NAN_BOXED(4593818355633981086,64,FLEN)
NAN_BOXED(4593818355633981087,64,FLEN)
NAN_BOXED(4593818355633981087,64,FLEN)
NAN_BOXED(4593818355633981087,64,FLEN)
NAN_BOXED(4593818355633981087,64,FLEN)
NAN_BOXED(4593818355633981087,64,FLEN)
NAN_BOXED(13817190392488756888,64,FLEN)
NAN_BOXED(13817190392488756888,64,FLEN)
NAN_BOXED(13817190392488756888,64,FLEN)
NAN_BOXED(13817190392488756888,64,FLEN)
NAN_BOXED(13817190392488756888,64,FLEN)
NAN_BOXED(13817190392488756889,64,FLEN)
NAN_BOXED(13817190392488756889,64,FLEN)
NAN_BOXED(13817190392488756889,64,FLEN)
NAN_BOXED(13817190392488756889,64,FLEN)
NAN_BOXED(13817190392488756889,64,FLEN)
NAN_BOXED(13817190392488756890,64,FLEN)
NAN_BOXED(13817190392488756890,64,FLEN)
NAN_BOXED(13817190392488756890,64,FLEN)
NAN_BOXED(13817190392488756890,64,FLEN)
NAN_BOXED(13817190392488756890,64,FLEN)
NAN_BOXED(13817190392488756891,64,FLEN)
NAN_BOXED(13817190392488756891,64,FLEN)
NAN_BOXED(13817190392488756891,64,FLEN)
NAN_BOXED(13817190392488756891,64,FLEN)
NAN_BOXED(13817190392488756891,64,FLEN)
NAN_BOXED(13817190392488756892,64,FLEN)
NAN_BOXED(13817190392488756892,64,FLEN)
NAN_BOXED(13817190392488756892,64,FLEN)
NAN_BOXED(13817190392488756892,64,FLEN)
NAN_BOXED(13817190392488756892,64,FLEN)
NAN_BOXED(13817190392488756893,64,FLEN)
NAN_BOXED(13817190392488756893,64,FLEN)
NAN_BOXED(13817190392488756893,64,FLEN)
NAN_BOXED(13817190392488756893,64,FLEN)
NAN_BOXED(13817190392488756893,64,FLEN)
NAN_BOXED(13817190392488756894,64,FLEN)
NAN_BOXED(13817190392488756894,64,FLEN)
NAN_BOXED(13817190392488756894,64,FLEN)
NAN_BOXED(13817190392488756894,64,FLEN)
NAN_BOXED(13817190392488756894,64,FLEN)
NAN_BOXED(13817190392488756895,64,FLEN)
NAN_BOXED(13817190392488756895,64,FLEN)
NAN_BOXED(13817190392488756895,64,FLEN)
NAN_BOXED(13817190392488756895,64,FLEN)
NAN_BOXED(13817190392488756895,64,FLEN)
NAN_BOXED(4593818355633981080,64,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_1:
    .fill 162*((SIGALIGN)/4),4,0xdeadbeef

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
