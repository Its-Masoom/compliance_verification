
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.7.1
// timestamp : Thu Jun 30 09:50:01 2022 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /scratch/pawan/work/normalised/RV32F/fmv.x.w.cgf \
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
// This assembly file tests the fmv.x.w instruction of the RISC-V RV32F_Zicsr,RV32FD_Zicsr,RV64F_Zicsr,RV64FD_Zicsr extension for the fmv.x.w_b1 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IF_Zicsr,RV32IFD_Zicsr,RV64IF_Zicsr,RV64IFD_Zicsr")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*F.*);def TEST_CASE_1=True;",fmv.x.w_b1)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x9,test_dataset_0)
RVTEST_SIGBASE(x7,signature_x7_1)

inst_0:// rs1==f18, rd==x19,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f18; dest:x19; op1val:0x0; valaddr_reg:x9;
val_offset:0*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x19, f18, 0, 0, x9, 0*FLEN/8, x10, x7, x8)

inst_1:// rs1==f17, rd==x18,fs1 == 1 and fe1 == 0x00 and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f17; dest:x18; op1val:0x80000000; valaddr_reg:x9;
val_offset:1*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x18, f17, 0, 0, x9, 1*FLEN/8, x10, x7, x8)

inst_2:// rs1==f24, rd==x12,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000001 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f24; dest:x12; op1val:0x1; valaddr_reg:x9;
val_offset:2*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x12, f24, 0, 0, x9, 2*FLEN/8, x10, x7, x8)

inst_3:// rs1==f29, rd==x20,fs1 == 1 and fe1 == 0x00 and fm1 == 0x000001 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f29; dest:x20; op1val:0x80000001; valaddr_reg:x9;
val_offset:3*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x20, f29, 0, 0, x9, 3*FLEN/8, x10, x7, x8)

inst_4:// rs1==f25, rd==x1,fs1 == 0 and fe1 == 0x00 and fm1 == 0x000002 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f25; dest:x1; op1val:0x2; valaddr_reg:x9;
val_offset:4*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x1, f25, 0, 0, x9, 4*FLEN/8, x10, x7, x8)

inst_5:// rs1==f9, rd==x30,fs1 == 1 and fe1 == 0x00 and fm1 == 0x7ffffe and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f9; dest:x30; op1val:0x807ffffe; valaddr_reg:x9;
val_offset:5*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x30, f9, 0, 0, x9, 5*FLEN/8, x10, x7, x8)

inst_6:// rs1==f5, rd==x3,fs1 == 0 and fe1 == 0x00 and fm1 == 0x7fffff and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f5; dest:x3; op1val:0x7fffff; valaddr_reg:x9;
val_offset:6*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x3, f5, 0, 0, x9, 6*FLEN/8, x10, x7, x8)

inst_7:// rs1==f30, rd==x29,fs1 == 1 and fe1 == 0x00 and fm1 == 0x7fffff and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f30; dest:x29; op1val:0x807fffff; valaddr_reg:x9;
val_offset:7*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x29, f30, 0, 0, x9, 7*FLEN/8, x10, x7, x8)

inst_8:// rs1==f1, rd==x28,fs1 == 0 and fe1 == 0x01 and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f1; dest:x28; op1val:0x800000; valaddr_reg:x9;
val_offset:8*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x28, f1, 0, 0, x9, 8*FLEN/8, x10, x7, x8)

inst_9:// rs1==f19, rd==x15,fs1 == 1 and fe1 == 0x01 and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f19; dest:x15; op1val:0x80800000; valaddr_reg:x9;
val_offset:9*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x15, f19, 0, 0, x9, 9*FLEN/8, x10, x7, x8)

inst_10:// rs1==f15, rd==x21,fs1 == 0 and fe1 == 0x01 and fm1 == 0x000001 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f15; dest:x21; op1val:0x800001; valaddr_reg:x9;
val_offset:10*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x21, f15, 0, 0, x9, 10*FLEN/8, x10, x7, x8)

inst_11:// rs1==f7, rd==x17,fs1 == 1 and fe1 == 0x01 and fm1 == 0x055555 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f7; dest:x17; op1val:0x80855555; valaddr_reg:x9;
val_offset:11*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x17, f7, 0, 0, x9, 11*FLEN/8, x10, x7, x8)

inst_12:// rs1==f27, rd==x25,fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f27; dest:x25; op1val:0x7f7fffff; valaddr_reg:x9;
val_offset:12*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x25, f27, 0, 0, x9, 12*FLEN/8, x10, x7, x8)

inst_13:// rs1==f13, rd==x16,fs1 == 1 and fe1 == 0xfe and fm1 == 0x7fffff and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f13; dest:x16; op1val:0xff7fffff; valaddr_reg:x9;
val_offset:13*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x16, f13, 0, 0, x9, 13*FLEN/8, x10, x7, x8)

inst_14:// rs1==f20, rd==x14,fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f20; dest:x14; op1val:0x7f800000; valaddr_reg:x9;
val_offset:14*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x14, f20, 0, 0, x9, 14*FLEN/8, x10, x7, x8)

inst_15:// rs1==f21, rd==x6,fs1 == 1 and fe1 == 0xff and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f21; dest:x6; op1val:0xff800000; valaddr_reg:x9;
val_offset:15*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x6, f21, 0, 0, x9, 15*FLEN/8, x10, x7, x8)

inst_16:// rs1==f4, rd==x13,fs1 == 0 and fe1 == 0xff and fm1 == 0x400000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f4; dest:x13; op1val:0x7fc00000; valaddr_reg:x9;
val_offset:16*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x13, f4, 0, 0, x9, 16*FLEN/8, x10, x7, x8)

inst_17:// rs1==f31, rd==x31,fs1 == 1 and fe1 == 0xff and fm1 == 0x400000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f31; dest:x31; op1val:0xffc00000; valaddr_reg:x9;
val_offset:17*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x31, f31, 0, 0, x9, 17*FLEN/8, x10, x7, x8)

inst_18:// rs1==f0, rd==x4,fs1 == 0 and fe1 == 0xff and fm1 == 0x400001 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f0; dest:x4; op1val:0x7fc00001; valaddr_reg:x9;
val_offset:18*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x4, f0, 0, 0, x9, 18*FLEN/8, x10, x7, x8)

inst_19:// rs1==f28, rd==x11,fs1 == 1 and fe1 == 0xff and fm1 == 0x455555 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f28; dest:x11; op1val:0xffc55555; valaddr_reg:x9;
val_offset:19*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x11, f28, 0, 0, x9, 19*FLEN/8, x10, x7, x8)

inst_20:// rs1==f3, rd==x2,fs1 == 0 and fe1 == 0xff and fm1 == 0x000001 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f3; dest:x2; op1val:0x7f800001; valaddr_reg:x9;
val_offset:20*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x2, f3, 0, 0, x9, 20*FLEN/8, x10, x7, x8)

inst_21:// rs1==f14, rd==x22,fs1 == 1 and fe1 == 0xff and fm1 == 0x2aaaaa and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f14; dest:x22; op1val:0xffaaaaaa; valaddr_reg:x9;
val_offset:21*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x22, f14, 0, 0, x9, 21*FLEN/8, x10, x7, x8)

inst_22:// rs1==f22, rd==x0,fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f22; dest:x0; op1val:0x3f800000; valaddr_reg:x9;
val_offset:22*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x0, f22, 0, 0, x9, 22*FLEN/8, x10, x7, x8)

inst_23:// rs1==f11, rd==x5,fs1 == 1 and fe1 == 0x7f and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f11; dest:x5; op1val:0xbf800000; valaddr_reg:x9;
val_offset:23*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x5, f11, 0, 0, x9, 23*FLEN/8, x10, x7, x8)

inst_24:// rs1==f6, rd==x24,
/* opcode: fmv.x.w ; op1:f6; dest:x24; op1val:0x0; valaddr_reg:x9;
val_offset:24*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x24, f6, 0, 0, x9, 24*FLEN/8, x10, x7, x8)
RVTEST_VALBASEUPD(x3,test_dataset_1)

inst_25:// rs1==f16, rd==x26,
/* opcode: fmv.x.w ; op1:f16; dest:x26; op1val:0x0; valaddr_reg:x3;
val_offset:0*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x26, f16, 0, 0, x3, 0*FLEN/8, x4, x7, x8)

inst_26:// rs1==f2, rd==x23,
/* opcode: fmv.x.w ; op1:f2; dest:x23; op1val:0x0; valaddr_reg:x3;
val_offset:1*FLEN/8; correctval:??; testreg:x8;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x23, f2, 0, 0, x3, 1*FLEN/8, x4, x7, x8)

inst_27:// rs1==f12, rd==x8,
/* opcode: fmv.x.w ; op1:f12; dest:x8; op1val:0x0; valaddr_reg:x3;
val_offset:2*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x8, f12, 0, 0, x3, 2*FLEN/8, x4, x7, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_28:// rs1==f8, rd==x10,
/* opcode: fmv.x.w ; op1:f8; dest:x10; op1val:0x0; valaddr_reg:x3;
val_offset:3*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x10, f8, 0, 0, x3, 3*FLEN/8, x4, x1, x2)

inst_29:// rs1==f23, rd==x9,
/* opcode: fmv.x.w ; op1:f23; dest:x9; op1val:0x0; valaddr_reg:x3;
val_offset:4*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x9, f23, 0, 0, x3, 4*FLEN/8, x4, x1, x2)

inst_30:// rs1==f26, rd==x27,
/* opcode: fmv.x.w ; op1:f26; dest:x27; op1val:0x0; valaddr_reg:x3;
val_offset:5*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x27, f26, 0, 0, x3, 5*FLEN/8, x4, x1, x2)

inst_31:// rs1==f10, rd==x7,
/* opcode: fmv.x.w ; op1:f10; dest:x7; op1val:0x0; valaddr_reg:x3;
val_offset:6*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x7, f10, 0, 0, x3, 6*FLEN/8, x4, x1, x2)

inst_32:// fs1 == 0 and fe1 == 0x7f and fm1 == 0x000000 and  fcsr == 0  
/* opcode: fmv.x.w ; op1:f31; dest:x31; op1val:0x3f800000; valaddr_reg:x3;
val_offset:7*FLEN/8; correctval:??; testreg:x2;
fcsr_val:0*/
TEST_FPID_OP_NRM(fmv.x.w, x31, f31, 0, 0, x3, 7*FLEN/8, x4, x1, x2)
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
NAN_BOXED(0,32,FLEN)
NAN_BOXED(2147483648,32,FLEN)
NAN_BOXED(1,32,FLEN)
NAN_BOXED(2147483649,32,FLEN)
NAN_BOXED(2,32,FLEN)
NAN_BOXED(2155872254,32,FLEN)
NAN_BOXED(8388607,32,FLEN)
NAN_BOXED(2155872255,32,FLEN)
NAN_BOXED(8388608,32,FLEN)
NAN_BOXED(2155872256,32,FLEN)
NAN_BOXED(8388609,32,FLEN)
NAN_BOXED(2156221781,32,FLEN)
NAN_BOXED(2139095039,32,FLEN)
NAN_BOXED(4286578687,32,FLEN)
NAN_BOXED(2139095040,32,FLEN)
NAN_BOXED(4286578688,32,FLEN)
NAN_BOXED(2143289344,32,FLEN)
NAN_BOXED(4290772992,32,FLEN)
NAN_BOXED(2143289345,32,FLEN)
NAN_BOXED(4291122517,32,FLEN)
NAN_BOXED(2139095041,32,FLEN)
NAN_BOXED(4289374890,32,FLEN)
NAN_BOXED(1065353216,32,FLEN)
NAN_BOXED(3212836864,32,FLEN)
NAN_BOXED(0,32,FLEN)
test_dataset_1:
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(0,32,FLEN)
NAN_BOXED(1065353216,32,FLEN)
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;


signature_x7_0:
    .fill 0*((SIGALIGN)/4),4,0xdeadbeef


signature_x7_1:
    .fill 56*((SIGALIGN)/4),4,0xdeadbeef


signature_x1_0:
    .fill 10*((SIGALIGN)/4),4,0xdeadbeef

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
