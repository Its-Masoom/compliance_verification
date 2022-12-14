
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
// This assembly file tests the fcvt.s.d instruction of the RISC-V RV32FD_Zicsr,RV64FD_Zicsr extension for the fcvt.s.d_b28 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*D.*);def TEST_CASE_1=True;",fcvt.s.d_b28)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x3,test_dataset_0)
RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// rs1 != rd, rs1==f29, rd==f9,fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f29; dest:f9; op1val:0x0; valaddr_reg:x3;
val_offset:0*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f9, f29, dyn, 0, 0, x3, 0*FLEN/8, x4, x1, x2)

inst_1:
// rs1 == rd, rs1==f27, rd==f27,fs1 == 0 and fe1 == 0x3fe and fm1 == 0x248ee18215dfa and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f27; dest:f27; op1val:0x3fe248ee18215dfa; valaddr_reg:x3;
val_offset:1*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f27, f27, dyn, 0, 0, x3, 1*FLEN/8, x4, x1, x2)

inst_2:
// rs1==f19, rd==f17,fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f19; dest:f17; op1val:0x3ff0000000000000; valaddr_reg:x3;
val_offset:2*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f17, f19, dyn, 0, 0, x3, 2*FLEN/8, x4, x1, x2)

inst_3:
// rs1==f22, rd==f30,fs1 == 0 and fe1 == 0x3ff and fm1 == 0x4000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f22; dest:f30; op1val:0x3ff4000000000000; valaddr_reg:x3;
val_offset:3*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f30, f22, dyn, 0, 0, x3, 3*FLEN/8, x4, x1, x2)

inst_4:
// rs1==f21, rd==f11,fs1 == 0 and fe1 == 0x3ff and fm1 == 0x8000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f21; dest:f11; op1val:0x3ff8000000000000; valaddr_reg:x3;
val_offset:4*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f11, f21, dyn, 0, 0, x3, 4*FLEN/8, x4, x1, x2)

inst_5:
// rs1==f12, rd==f13,fs1 == 0 and fe1 == 0x3ff and fm1 == 0xc000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f12; dest:f13; op1val:0x3ffc000000000000; valaddr_reg:x3;
val_offset:5*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f13, f12, dyn, 0, 0, x3, 5*FLEN/8, x4, x1, x2)

inst_6:
// rs1==f5, rd==f24,fs1 == 0 and fe1 == 0x400 and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f5; dest:f24; op1val:0x4000000000000000; valaddr_reg:x3;
val_offset:6*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f24, f5, dyn, 0, 0, x3, 6*FLEN/8, x4, x1, x2)

inst_7:
// rs1==f6, rd==f8,fs1 == 0 and fe1 == 0x400 and fm1 == 0x2000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f6; dest:f8; op1val:0x4002000000000000; valaddr_reg:x3;
val_offset:7*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f8, f6, dyn, 0, 0, x3, 7*FLEN/8, x4, x1, x2)

inst_8:
// rs1==f0, rd==f25,fs1 == 0 and fe1 == 0x400 and fm1 == 0x4000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f0; dest:f25; op1val:0x4004000000000000; valaddr_reg:x3;
val_offset:8*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f25, f0, dyn, 0, 0, x3, 8*FLEN/8, x4, x1, x2)

inst_9:
// rs1==f28, rd==f23,fs1 == 0 and fe1 == 0x400 and fm1 == 0x6000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f28; dest:f23; op1val:0x4006000000000000; valaddr_reg:x3;
val_offset:9*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f23, f28, dyn, 0, 0, x3, 9*FLEN/8, x4, x1, x2)

inst_10:
// rs1==f23, rd==f0,fs1 == 0 and fe1 == 0x43c and fm1 == 0xb72eb13dc494a and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f23; dest:f0; op1val:0x43cb72eb13dc494a; valaddr_reg:x3;
val_offset:10*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f0, f23, dyn, 0, 0, x3, 10*FLEN/8, x4, x1, x2)

inst_11:
// rs1==f3, rd==f22,fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f3; dest:f22; op1val:0x43e0000000000000; valaddr_reg:x3;
val_offset:11*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f22, f3, dyn, 0, 0, x3, 11*FLEN/8, x4, x1, x2)

inst_12:
// rs1==f17, rd==f10,fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f17; dest:f10; op1val:0x7ff0000000000000; valaddr_reg:x3;
val_offset:12*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f10, f17, dyn, 0, 0, x3, 12*FLEN/8, x4, x1, x2)

inst_13:
// rs1==f15, rd==f12,fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f15; dest:f12; op1val:0x7ff0000000000001; valaddr_reg:x3;
val_offset:13*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f12, f15, dyn, 0, 0, x3, 13*FLEN/8, x4, x1, x2)

inst_14:
// rs1==f31, rd==f5,fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f31; dest:f5; op1val:0x7ff8000000000001; valaddr_reg:x3;
val_offset:14*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f5, f31, dyn, 0, 0, x3, 14*FLEN/8, x4, x1, x2)

inst_15:
// rs1==f30, rd==f19,fs1 == 1 and fe1 == 0x000 and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f19; op1val:0x8000000000000000; valaddr_reg:x3;
val_offset:15*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f19, f30, dyn, 0, 0, x3, 15*FLEN/8, x4, x1, x2)

inst_16:
// rs1==f14, rd==f29,fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f14; dest:f29; op1val:0xbf80000000000000; valaddr_reg:x3;
val_offset:16*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f29, f14, dyn, 0, 0, x3, 16*FLEN/8, x4, x1, x2)

inst_17:
// rs1==f24, rd==f26,fs1 == 1 and fe1 == 0x3fd and fm1 == 0xb008d57e19f88 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f24; dest:f26; op1val:0xbfdb008d57e19f88; valaddr_reg:x3;
val_offset:17*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f26, f24, dyn, 0, 0, x3, 17*FLEN/8, x4, x1, x2)

inst_18:
// rs1==f11, rd==f4,fs1 == 1 and fe1 == 0x3ff and fm1 == 0x4000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f11; dest:f4; op1val:0xbff4000000000000; valaddr_reg:x3;
val_offset:18*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f4, f11, dyn, 0, 0, x3, 18*FLEN/8, x4, x1, x2)

inst_19:
// rs1==f4, rd==f31,fs1 == 1 and fe1 == 0x3ff and fm1 == 0x8000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f4; dest:f31; op1val:0xbff8000000000000; valaddr_reg:x3;
val_offset:19*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f4, dyn, 0, 0, x3, 19*FLEN/8, x4, x1, x2)

inst_20:
// rs1==f25, rd==f15,fs1 == 1 and fe1 == 0x3ff and fm1 == 0xc000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f25; dest:f15; op1val:0xbffc000000000000; valaddr_reg:x3;
val_offset:20*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f15, f25, dyn, 0, 0, x3, 20*FLEN/8, x4, x1, x2)

inst_21:
// rs1==f26, rd==f2,fs1 == 1 and fe1 == 0x400 and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f26; dest:f2; op1val:0xc000000000000000; valaddr_reg:x3;
val_offset:21*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f2, f26, dyn, 0, 0, x3, 21*FLEN/8, x4, x1, x2)

inst_22:
// rs1==f10, rd==f14,fs1 == 1 and fe1 == 0x400 and fm1 == 0x2000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f10; dest:f14; op1val:0xc002000000000000; valaddr_reg:x3;
val_offset:22*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f14, f10, dyn, 0, 0, x3, 22*FLEN/8, x4, x1, x2)

inst_23:
// rs1==f16, rd==f3,fs1 == 1 and fe1 == 0x400 and fm1 == 0x4000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f16; dest:f3; op1val:0xc004000000000000; valaddr_reg:x3;
val_offset:23*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f3, f16, dyn, 0, 0, x3, 23*FLEN/8, x4, x1, x2)

inst_24:
// rs1==f7, rd==f18,fs1 == 1 and fe1 == 0x400 and fm1 == 0x6000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f7; dest:f18; op1val:0xc006000000000000; valaddr_reg:x3;
val_offset:24*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f18, f7, dyn, 0, 0, x3, 24*FLEN/8, x4, x1, x2)

inst_25:
// rs1==f2, rd==f1,fs1 == 1 and fe1 == 0x43d and fm1 == 0x967a4ae26514c and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f2; dest:f1; op1val:0xc3d967a4ae26514c; valaddr_reg:x3;
val_offset:25*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f1, f2, dyn, 0, 0, x3, 25*FLEN/8, x4, x1, x2)

inst_26:
// rs1==f18, rd==f28,fs1 == 1 and fe1 == 0x43e and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f18; dest:f28; op1val:0xc3e0000000000000; valaddr_reg:x3;
val_offset:26*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f28, f18, dyn, 0, 0, x3, 26*FLEN/8, x4, x1, x2)

inst_27:
// rs1==f1, rd==f7,fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000000 and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f1; dest:f7; op1val:0xfff0000000000000; valaddr_reg:x3;
val_offset:27*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f7, f1, dyn, 0, 0, x3, 27*FLEN/8, x4, x1, x2)

inst_28:
// rs1==f13, rd==f20,
/* opcode: fcvt.s.d ; op1:f13; dest:f20; op1val:0x0; valaddr_reg:x3;
val_offset:28*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f20, f13, dyn, 0, 0, x3, 28*FLEN/8, x4, x1, x2)

inst_29:
// rs1==f8, rd==f16,
/* opcode: fcvt.s.d ; op1:f8; dest:f16; op1val:0x0; valaddr_reg:x3;
val_offset:29*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f16, f8, dyn, 0, 0, x3, 29*FLEN/8, x4, x1, x2)

inst_30:
// rs1==f20, rd==f21,
/* opcode: fcvt.s.d ; op1:f20; dest:f21; op1val:0x0; valaddr_reg:x3;
val_offset:30*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f21, f20, dyn, 0, 0, x3, 30*FLEN/8, x4, x1, x2)

inst_31:
// rs1==f9, rd==f6,
/* opcode: fcvt.s.d ; op1:f9; dest:f6; op1val:0x0; valaddr_reg:x3;
val_offset:31*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f6, f9, dyn, 0, 0, x3, 31*FLEN/8, x4, x1, x2)

inst_32:
// fs1 == 0 and fe1 == 0x3fe and fm1 == 0x248ee18215dfa and  fcsr == 0x0 and rm_val == 7   
/* opcode: fcvt.s.d ; op1:f30; dest:f31; op1val:0x3fe248ee18215dfa; valaddr_reg:x3;
val_offset:32*FLEN/8; rmval:dyn; correctval:??; testreg:x2;
fcsr_val: 0 */
TEST_FPSR_OP(fcvt.s.d, f31, f30, dyn, 0, 0, x3, 32*FLEN/8, x4, x1, x2)
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
NAN_BOXED(0,64,FLEN)
NAN_BOXED(4603321956570324474,64,FLEN)
NAN_BOXED(4607182418800017408,64,FLEN)
NAN_BOXED(4608308318706860032,64,FLEN)
NAN_BOXED(4609434218613702656,64,FLEN)
NAN_BOXED(4610560118520545280,64,FLEN)
NAN_BOXED(4611686018427387904,64,FLEN)
NAN_BOXED(4612248968380809216,64,FLEN)
NAN_BOXED(4612811918334230528,64,FLEN)
NAN_BOXED(4613374868287651840,64,FLEN)
NAN_BOXED(4885124574789519690,64,FLEN)
NAN_BOXED(4890909195324358656,64,FLEN)
NAN_BOXED(9218868437227405312,64,FLEN)
NAN_BOXED(9218868437227405313,64,FLEN)
NAN_BOXED(9221120237041090561,64,FLEN)
NAN_BOXED(9223372036854775808,64,FLEN)
NAN_BOXED(13799029258263199744,64,FLEN)
NAN_BOXED(13824644088208662408,64,FLEN)
NAN_BOXED(13831680355561635840,64,FLEN)
NAN_BOXED(13832806255468478464,64,FLEN)
NAN_BOXED(13833932155375321088,64,FLEN)
NAN_BOXED(13835058055282163712,64,FLEN)
NAN_BOXED(13835621005235585024,64,FLEN)
NAN_BOXED(13836183955189006336,64,FLEN)
NAN_BOXED(13836746905142427648,64,FLEN)
NAN_BOXED(14112424864336204108,64,FLEN)
NAN_BOXED(14114281232179134464,64,FLEN)
NAN_BOXED(18442240474082181120,64,FLEN)
NAN_BOXED(0,64,FLEN)
NAN_BOXED(0,64,FLEN)
NAN_BOXED(0,64,FLEN)
NAN_BOXED(0,64,FLEN)
NAN_BOXED(4603321956570324474,64,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x1_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_1:
    .fill 66*((SIGALIGN)/4),4,0xdeadbeef

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
