
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
// This assembly file tests the khmbt instruction of the RISC-V RV64PZicsr extension for the khmbt covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",khmbt)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x10,signature_x10_1)

inst_0:
// rs1 == rd != rs2, rs1==x7, rs2==x6, rd==x7, rs1_h0_val == -32768, rs1_h3_val != rs2_h3_val, rs2_h3_val == -129, rs1_h3_val > 0 and rs2_h3_val < 0, rs1_h1_val == 4096, rs1_h2_val != rs2_h2_val, rs2_h2_val == -65, rs1_h2_val < 0 and rs2_h2_val < 0, rs1_h1_val != rs2_h1_val, rs1_h1_val > 0 and rs2_h1_val > 0, rs1_h0_val != rs2_h0_val, rs2_h1_val == 16384, rs1_h0_val < 0 and rs2_h0_val < 0
// opcode: khmbt ; op1:x7; op2:x6; dest:x7; op1val:0x05c00010008000;  op2val:0xff7fffbf4000fff6
TEST_PKRR_OP(khmbt, x7, x7, x6, 0x0000000000000000, 0x05c00010008000, 0xff7fffbf4000fff6, x7, x10, 0, x14)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x0, rd==x22, rs1_h3_val == rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val < 0, rs1_h1_val == 8192, rs1_h3_val == -21846, rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h1_val == -33, rs1_h2_val == 4, rs1_h0_val == 512, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h2_val == 512, rs2_h0_val == -3, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == -21846
// opcode: khmbt ; op1:x24; op2:x0; dest:x22; op1val:0xaaaa000420000200;  op2val:0xaaaa0200ffdffffd
TEST_PKRR_OP(khmbt, x22, x24, x0, 0x0000000000000000, 0xaaaa000420000200, 0xaaaa0200ffdffffd, x24, x10, 16, x14)

inst_2:
// rs1 == rs2 != rd, rs1==x21, rs2==x21, rd==x18, rs1_h3_val < 0 and rs2_h3_val > 0, rs2_h2_val == -1025, rs1_h2_val > 0 and rs2_h2_val < 0, rs1_h3_val == -4097, rs1_h1_val == 8, rs2_h3_val == 64, rs1_h0_val < 0 and rs2_h0_val > 0, rs1_h0_val == -4097
// opcode: khmbt ; op1:x21; op2:x21; dest:x18; op1val:0xefff00090008efff;  op2val:0x40fbffc0000007
TEST_PKRR_OP(khmbt, x18, x21, x21, 0x0000000000000000, 0xefff00090008efff, 0x40fbffc0000007, x21, x10, 32, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x2, rs2==x2, rd==x2, rs1_h3_val > 0 and rs2_h3_val > 0, rs2_h2_val == -8193, rs2_h0_val == -257, rs1_h1_val < 0 and rs2_h1_val > 0, rs1_h1_val == -129, rs2_h3_val == 32, rs1_h2_val == -9, rs1_h3_val == 4096
// opcode: khmbt ; op1:x2; op2:x2; dest:x2; op1val:0x1000fff7ff7f0009;  op2val:0x20dfff3ffffeff
TEST_PKRR_OP(khmbt, x2, x2, x2, 0x0000000000000000, 0x1000fff7ff7f0009, 0x20dfff3ffffeff, x2, x10, 48, x14)

inst_4:
// rs2 == rd != rs1, rs1==x6, rs2==x4, rd==x4, rs1_h2_val == rs2_h2_val, rs1_h0_val == -17, rs2_h1_val == 32767, rs2_h0_val == 32767, rs1_h2_val == 0, rs2_h3_val == -2049, rs2_h2_val == 0
// opcode: khmbt ; op1:x6; op2:x4; dest:x4; op1val:0xefff0000fffaffef;  op2val:0xf7ff00007fff7fff
TEST_PKRR_OP(khmbt, x4, x6, x4, 0x0000000000000000, 0xefff0000fffaffef, 0xf7ff00007fff7fff, x6, x10, 64, x14)

inst_5:
// rs1==x1, rs2==x12, rd==x26, rs1_h2_val < 0 and rs2_h2_val > 0, rs1_h3_val == 4, rs1_h0_val == 4096, rs2_h1_val == 256, rs2_h2_val == 2048
// opcode: khmbt ; op1:x1; op2:x12; dest:x26; op1val:0x04fffa3fff1000;  op2val:0x3fff08000100fffa
TEST_PKRR_OP(khmbt, x26, x1, x12, 0x0000000000000000, 0x04fffa3fff1000, 0x3fff08000100fffa, x1, x10, 80, x14)

inst_6:
// rs1==x9, rs2==x22, rd==x11, rs1_h1_val == rs2_h1_val, rs1_h1_val == -3, rs2_h0_val == -129, rs1_h1_val < 0 and rs2_h1_val < 0, rs2_h1_val == -3, rs2_h2_val == -32768, rs1_h2_val == -5
// opcode: khmbt ; op1:x9; op2:x22; dest:x11; op1val:0x07fffbfffdefff;  op2val:0x208000fffdff7f
TEST_PKRR_OP(khmbt, x11, x9, x22, 0x0000000000000000, 0x07fffbfffdefff, 0x208000fffdff7f, x9, x10, 96, x14)

inst_7:
// rs1==x22, rs2==x31, rd==x27, rs1_h0_val == rs2_h0_val, rs1_h1_val == -65, rs2_h2_val == -21846, rs2_h3_val == 16
// opcode: khmbt ; op1:x22; op2:x31; dest:x27; op1val:0x060004ffbffff6;  op2val:0x10aaaa0009fff6
TEST_PKRR_OP(khmbt, x27, x22, x31, 0x0000000000000000, 0x060004ffbffff6, 0x10aaaa0009fff6, x22, x10, 112, x14)

inst_8:
// rs1==x12, rs2==x28, rd==x9, rs1_h0_val > 0 and rs2_h0_val > 0, rs1_h2_val == 32, rs1_h0_val == 1024, rs2_h1_val == 16, rs1_h1_val == 2048
// opcode: khmbt ; op1:x12; op2:x28; dest:x9; op1val:0xfffa002008000400;  op2val:0xf7ff3fff00103fff
TEST_PKRR_OP(khmbt, x9, x12, x28, 0x0000000000000000, 0xfffa002008000400, 0xf7ff3fff00103fff, x12, x10, 128, x14)

inst_9:
// rs1==x23, rs2==x13, rd==x24, rs2_h3_val == 21845, rs1_h2_val == 16384, rs1_h1_val == 256, rs2_h2_val == -9, rs2_h0_val == -2, rs1_h0_val == -16385, rs1_h3_val == 16384
// opcode: khmbt ; op1:x23; op2:x13; dest:x24; op1val:0x400040000100bfff;  op2val:0x5555fff7fff6fffe
TEST_PKRR_OP(khmbt, x24, x23, x13, 0x0000000000000000, 0x400040000100bfff, 0x5555fff7fff6fffe, x23, x10, 144, x14)

inst_10:
// rs1==x31, rs2==x26, rd==x21, rs2_h3_val == 32767, rs1_h3_val == -513, rs1_h0_val == 8, rs1_h1_val == 0
// opcode: khmbt ; op1:x31; op2:x26; dest:x21; op1val:0xfdff3fff00000008;  op2val:0x7ffffff70100feff
TEST_PKRR_OP(khmbt, x21, x31, x26, 0x0000000000000000, 0xfdff3fff00000008, 0x7ffffff70100feff, x31, x10, 160, x14)

inst_11:
// rs1==x20, rs2==x3, rd==x8, rs2_h3_val == -16385, rs1_h1_val == -4097
// opcode: khmbt ; op1:x20; op2:x3; dest:x8; op1val:0x10004000efffffef;  op2val:0xbfff80000009fff6
TEST_PKRR_OP(khmbt, x8, x20, x3, 0x0000000000000000, 0x10004000efffffef, 0xbfff80000009fff6, x20, x10, 176, x14)

inst_12:
// rs1==x17, rs2==x18, rd==x29, rs2_h3_val == -8193, rs1_h2_val == 8192, rs1_h0_val == -21846, rs1_h3_val == -2049
// opcode: khmbt ; op1:x17; op2:x18; dest:x29; op1val:0xf7ff20002000aaaa;  op2val:0xdffffffcfff90009
TEST_PKRR_OP(khmbt, x29, x17, x18, 0x0000000000000000, 0xf7ff20002000aaaa, 0xdffffffcfff90009, x17, x10, 192, x14)

inst_13:
// rs1==x8, rs2==x17, rd==x30, rs2_h3_val == -4097, rs1_h1_val == -21846, rs2_h2_val == 4096, rs1_h2_val == -2049, rs1_h0_val == 2, rs2_h1_val == 512, rs1_h3_val == -32768
// opcode: khmbt ; op1:x8; op2:x17; dest:x30; op1val:0x8000f7ffaaaa0002;  op2val:0xefff10000200feff
TEST_PKRR_OP(khmbt, x30, x8, x17, 0x0000000000000000, 0x8000f7ffaaaa0002, 0xefff10000200feff, x8, x10, 208, x14)

inst_14:
// rs1==x4, rs2==x8, rd==x5, rs2_h3_val == -1025, rs2_h2_val == -1, rs1_h0_val == 16, rs2_h1_val == -5, rs2_h0_val == 1
// opcode: khmbt ; op1:x4; op2:x8; dest:x5; op1val:0xfffafffcfffa0010;  op2val:0xfbfffffffffb0001
TEST_PKRR_OP(khmbt, x5, x4, x8, 0x0000000000000000, 0xfffafffcfffa0010, 0xfbfffffffffb0001, x4, x10, 224, x14)

inst_15:
// rs1==x19, rs2==x16, rd==x20, rs2_h3_val == -513, rs2_h0_val == -16385, rs1_h3_val == 256
// opcode: khmbt ; op1:x19; op2:x16; dest:x20; op1val:0x100000910000400;  op2val:0xfdfffff90007bfff
TEST_PKRR_OP(khmbt, x20, x19, x16, 0x0000000000000000, 0x100000910000400, 0xfdfffff90007bfff, x19, x10, 240, x14)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_16:
// rs1==x10, rs2==x30, rd==x31, rs2_h3_val == -257, rs2_h1_val == 1024, rs1_h2_val == 2, rs1_h0_val == 8192, rs1_h3_val == 32
// opcode: khmbt ; op1:x10; op2:x30; dest:x31; op1val:0x200002ff7f2000;  op2val:0xfefffff604007fff
TEST_PKRR_OP(khmbt, x31, x10, x30, 0x0000000000000000, 0x200002ff7f2000, 0xfefffff604007fff, x10, x2, 0, x4)

inst_17:
// rs1==x28, rs2==x19, rd==x3, rs2_h3_val == -65, rs2_h1_val == -2049, rs1_h1_val == 64, rs2_h0_val == -33, rs1_h0_val == 1, rs1_h2_val == -257, rs1_h3_val == -5
// opcode: khmbt ; op1:x28; op2:x19; dest:x3; op1val:0xfffbfeff00400001;  op2val:0xffbf8000f7ffffdf
TEST_PKRR_OP(khmbt, x3, x28, x19, 0x0000000000000000, 0xfffbfeff00400001, 0xffbf8000f7ffffdf, x28, x2, 16, x4)

inst_18:
// rs1==x29, rs2==x9, rd==x14, rs2_h3_val == -33, rs1_h0_val == 21845, rs2_h2_val == 32767
// opcode: khmbt ; op1:x29; op2:x9; dest:x14; op1val:0x092000c0005555;  op2val:0xffdf7fffffdffeff
TEST_PKRR_OP(khmbt, x14, x29, x9, 0x0000000000000000, 0x092000c0005555, 0xffdf7fffffdffeff, x29, x2, 32, x4)

inst_19:
// rs1==x3, rs2==x29, rd==x25, rs2_h3_val == -17, rs2_h2_val == -257, rs1_h3_val == -16385, rs1_h1_val == 21845, rs1_h0_val == -1025, rs2_h0_val == 1024
// opcode: khmbt ; op1:x3; op2:x29; dest:x25; op1val:0xbfff00005555fbff;  op2val:0xffeffeffffdf0400
TEST_PKRR_OP(khmbt, x25, x3, x29, 0x0000000000000000, 0xbfff00005555fbff, 0xffeffeffffdf0400, x3, x2, 48, x4)

inst_20:
// rs1==x30, rs2==x20, rd==x10, rs2_h3_val == -9, rs2_h1_val == -1025
// opcode: khmbt ; op1:x30; op2:x20; dest:x10; op1val:0xfffc0002fff9fffc;  op2val:0xfff7fffffbfffffa
TEST_PKRR_OP(khmbt, x10, x30, x20, 0x0000000000000000, 0xfffc0002fff9fffc, 0xfff7fffffbfffffa, x30, x2, 64, x4)

inst_21:
// rs1==x16, rs2==x27, rd==x19, rs2_h3_val == -5, rs1_h2_val == -17, rs1_h3_val == 1, rs2_h0_val == 8, rs2_h1_val == 8192
// opcode: khmbt ; op1:x16; op2:x27; dest:x19; op1val:0x01ffefffbf0007;  op2val:0xfffbfffa20000008
TEST_PKRR_OP(khmbt, x19, x16, x27, 0x0000000000000000, 0x01ffefffbf0007, 0xfffbfffa20000008, x16, x2, 80, x4)

inst_22:
// rs1==x13, rs2==x10, rd==x6, rs2_h3_val == -3, rs1_h2_val == -4097, rs2_h0_val == -9, rs1_h0_val == 4, rs1_h1_val == -513, rs2_h2_val == 4
// opcode: khmbt ; op1:x13; op2:x10; dest:x6; op1val:0x3fffeffffdff0004;  op2val:0xfffd00040009fff7
TEST_PKRR_OP(khmbt, x6, x13, x10, 0x0000000000000000, 0x3fffeffffdff0004, 0xfffd00040009fff7, x13, x2, 96, x4)

inst_23:
// rs1==x5, rs2==x25, rd==x23, rs2_h3_val == -2, rs1_h2_val == 64, rs1_h0_val == -9, rs1_h3_val == 128
// opcode: khmbt ; op1:x5; op2:x25; dest:x23; op1val:0x800040fff8fff7;  op2val:0xfffe0007fff9fffe
TEST_PKRR_OP(khmbt, x23, x5, x25, 0x0000000000000000, 0x800040fff8fff7, 0xfffe0007fff9fffe, x5, x2, 112, x4)

inst_24:
// rs1==x15, rs2==x1, rd==x0, rs2_h3_val == -32768, rs2_h1_val == 8
// opcode: khmbt ; op1:x15; op2:x1; dest:x0; op1val:0x3fff000701000009;  op2val:0x8000000900087fff
TEST_PKRR_OP(khmbt, x0, x15, x1, 0x0000000000000000, 0x3fff000701000009, 0x8000000900087fff, x15, x2, 128, x4)

inst_25:
// rs1==x0, rs2==x5, rd==x1, rs2_h3_val == 16384, rs1_h3_val == 21845, rs2_h0_val == 2, rs1_h2_val == 256, rs1_h0_val == 16384
// opcode: khmbt ; op1:x0; op2:x5; dest:x1; op1val:0x5555010055554000;  op2val:0x40003fff02000002
TEST_PKRR_OP(khmbt, x1, x0, x5, 0x0000000000000000, 0x5555010055554000, 0x40003fff02000002, x0, x2, 144, x4)

inst_26:
// rs1==x11, rs2==x23, rd==x16, rs2_h3_val == 8192, rs2_h1_val == 2, rs2_h2_val == 1024, rs1_h3_val == 512, rs2_h0_val == 128
// opcode: khmbt ; op1:x11; op2:x23; dest:x16; op1val:0x2000006aaaa5555;  op2val:0x2000040000020080
TEST_PKRR_OP(khmbt, x16, x11, x23, 0x0000000000000000, 0x2000006aaaa5555, 0x2000040000020080, x11, x2, 160, x4)

inst_27:
// rs1==x14, rs2==x24, rd==x17, rs2_h3_val == 4096, rs1_h0_val == -33, rs2_h1_val == -17
// opcode: khmbt ; op1:x14; op2:x24; dest:x17; op1val:0x8000070800ffdf;  op2val:0x10000007ffeffff8
TEST_PKRR_OP(khmbt, x17, x14, x24, 0x0000000000000000, 0x8000070800ffdf, 0x10000007ffeffff8, x14, x2, 176, x4)

inst_28:
// rs1==x18, rs2==x15, rd==x28, rs2_h3_val == 2048, rs2_h2_val == 8192, rs2_h0_val == 4096, rs2_h1_val == 128
// opcode: khmbt ; op1:x18; op2:x15; dest:x28; op1val:0xefff00202000ffdf;  op2val:0x800200000801000
TEST_PKRR_OP(khmbt, x28, x18, x15, 0x0000000000000000, 0xefff00202000ffdf, 0x800200000801000, x18, x2, 192, x4)

inst_29:
// rs1==x26, rs2==x7, rd==x13, rs2_h3_val == 1024, rs1_h1_val == -1, rs2_h0_val == -513, rs2_h1_val == 4096
// opcode: khmbt ; op1:x26; op2:x7; dest:x13; op1val:0x200006ffffbfff;  op2val:0x40000071000fdff
TEST_PKRR_OP(khmbt, x13, x26, x7, 0x0000000000000000, 0x200006ffffbfff, 0x40000071000fdff, x26, x2, 208, x4)

inst_30:
// rs1==x27, rs2==x11, rd==x15, rs2_h3_val == 512, rs1_h3_val == -3, rs2_h0_val == -2049, rs2_h2_val == 1, rs1_h1_val == 512
// opcode: khmbt ; op1:x27; op2:x11; dest:x15; op1val:0xfffd3fff02008000;  op2val:0x20000010008f7ff
TEST_PKRR_OP(khmbt, x15, x27, x11, 0x0000000000000000, 0xfffd3fff02008000, 0x20000010008f7ff, x27, x2, 224, x4)

inst_31:
// rs1==x25, rs2==x14, rd==x12, rs2_h3_val == 256, rs1_h2_val == -1, rs2_h1_val == 0, rs2_h2_val == 21845, rs1_h1_val == -9
// opcode: khmbt ; op1:x25; op2:x14; dest:x12; op1val:0xfffbfffffff72000;  op2val:0x100555500001000
TEST_PKRR_OP(khmbt, x12, x25, x14, 0x0000000000000000, 0xfffbfffffff72000, 0x100555500001000, x25, x2, 240, x4)

inst_32:
// rs2_h3_val == 128, rs1_h2_val == -1025, rs1_h3_val == -1
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbffff7f0400;  op2val:0x80fffcfff6fff8
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffffbffff7f0400, 0x80fffcfff6fff8, x30, x2, 256, x1)

inst_33:
// rs2_h3_val == 8, rs1_h0_val == -5, rs1_h3_val == 8192, rs2_h2_val == -2
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x2000fff70009fffb;  op2val:0x08fffe00030006
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x2000fff70009fffb, 0x08fffe00030006, x30, x2, 272, x1)

inst_34:
// rs2_h3_val == 4, rs1_h1_val == 4
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x4000fff70004efff;  op2val:0x04fffa00070007
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x4000fff70004efff, 0x04fffa00070007, x30, x2, 288, x1)

inst_35:
// rs2_h3_val == 2, rs1_h1_val == 16384
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xaaaafffc40000002;  op2val:0x02000904000006
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xaaaafffc40000002, 0x02000904000006, x30, x2, 304, x1)

inst_36:
// rs2_h3_val == 1, rs1_h2_val == -16385, rs2_h0_val == -4097, rs1_h0_val == 64, rs1_h3_val == 2048
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x800bfff00000040;  op2val:0x01c0007fffefff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x800bfff00000040, 0x01c0007fffefff, x30, x2, 320, x1)

inst_37:
// rs1_h1_val == -5, rs2_h1_val == -9, rs1_h2_val == -3, rs2_h2_val == -129, rs1_h0_val == -1
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x05fffdfffbffff;  op2val:0xefffff7ffff7fff7
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x05fffdfffbffff, 0xefffff7ffff7fff7, x30, x2, 336, x1)

inst_38:
// rs1_h1_val == -2, rs2_h1_val == -21846, rs1_h3_val == 2
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x02fffbfffefff8;  op2val:0x8000fbffaaaafff6
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x02fffbfffefff8, 0x8000fbffaaaafff6, x30, x2, 352, x1)

inst_39:
// rs1_h1_val == -32768, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff8fff880000009;  op2val:0xaaaaaaaa01001000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff8fff880000009, 0xaaaaaaaa01001000, x30, x2, 368, x1)

inst_40:
// rs1_h1_val == 1024, rs2_h1_val == 21845, rs1_h2_val == 512
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffd020004001000;  op2val:0x07fbff55550002
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffd020004001000, 0x07fbff55550002, x30, x2, 384, x1)

inst_41:
// rs1_h1_val == 128, rs2_h0_val == -5
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x200000060080fbff;  op2val:0xbfffdfff5555fffb
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x200000060080fbff, 0xbfffdfff5555fffb, x30, x2, 400, x1)

inst_42:
// rs1_h1_val == 32, rs2_h1_val == -65
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff9000400200006;  op2val:0x05fff6ffbf0006
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff9000400200006, 0x05fff6ffbf0006, x30, x2, 416, x1)

inst_43:
// rs1_h1_val == 16, rs2_h2_val == 32, rs1_h2_val == -33
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x06ffdf00100040;  op2val:0x8000002000050006
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x06ffdf00100040, 0x8000002000050006, x30, x2, 432, x1)

inst_44:
// rs1_h1_val == 2, rs2_h0_val == 64, rs2_h2_val == 256
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x02020000021000;  op2val:0xfff70100c0000040
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x02020000021000, 0xfff70100c0000040, x30, x2, 448, x1)

inst_45:
// rs1_h1_val == 1, rs1_h0_val == -65, rs2_h0_val == -1
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffcfbff0001ffbf;  op2val:0xffdf08000010ffff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffcfbff0001ffbf, 0xffdf08000010ffff, x30, x2, 464, x1)

inst_46:
// rs1_h0_val == 32767, rs2_h1_val == -129, rs1_h2_val == -513
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffbfdff00067fff;  op2val:0x80000800ff7f0080
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffbfdff00067fff, 0x80000800ff7f0080, x30, x2, 480, x1)

inst_47:
// rs1_h0_val == -8193, rs2_h2_val == -2049
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfdfff7ff0100dfff;  op2val:0xfff9f7ff0200fffa
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfdfff7ff0100dfff, 0xfff9f7ff0200fffa, x30, x2, 496, x1)

inst_48:
// rs1_h0_val == -2049, rs1_h2_val == -8193, rs1_h3_val == 16
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x10dfff4000f7ff;  op2val:0xff7f0003fff9ffff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x10dfff4000f7ff, 0xff7f0003fff9ffff, x30, x2, 512, x1)

inst_49:
// rs1_h0_val == -513, rs1_h3_val == 32767, rs2_h2_val == 2, rs1_h1_val == -2049
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x7fffbffff7fffdff;  op2val:0x200000025555efff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x7fffbffff7fffdff, 0x200000025555efff, x30, x2, 528, x1)

inst_50:
// rs1_h0_val == -257, rs2_h0_val == 4
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x07fff9fffafeff;  op2val:0x2000037fff0004
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x07fff9fffafeff, 0x2000037fff0004, x30, x2, 544, x1)

inst_51:
// rs1_h0_val == -129, rs2_h2_val == 16384, rs1_h1_val == -257, rs1_h2_val == -129
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff6ff7ffeffff7f;  op2val:0x80004000aaaabfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff6ff7ffeffff7f, 0x80004000aaaabfff, x30, x2, 560, x1)

inst_52:
// rs1_h0_val == -3, rs1_h3_val == -65, rs2_h0_val == 21845, rs2_h2_val == 128
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffef0010fffd;  op2val:0xfdff0080fff65555
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffbfffef0010fffd, 0xfdff0080fff65555, x30, x2, 576, x1)

inst_53:
// rs1_h0_val == -2, rs1_h2_val == -32768
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x1080000004fffe;  op2val:0x40100055550400
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x1080000004fffe, 0x40100055550400, x30, x2, 592, x1)

inst_54:
// rs1_h0_val == 2048, rs2_h1_val == 1
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff6004000200800;  op2val:0xfefffff900010007
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff6004000200800, 0xfefffff900010007, x30, x2, 608, x1)

inst_55:
// rs1_h0_val == 256, rs2_h1_val == -513
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x05fbff00030100;  op2val:0xfbffaaaafdff0080
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x05fbff00030100, 0xfbffaaaafdff0080, x30, x2, 624, x1)

inst_56:
// rs1_h0_val == 128, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfdffbfff00100080;  op2val:0x200fffc04000002
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfdffbfff00100080, 0x200fffc04000002, x30, x2, 640, x1)

inst_57:
// rs1_h0_val == 32, rs2_h0_val == -8193
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xaaaac00000200020;  op2val:0xfff600200080dfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xaaaac00000200020, 0xfff600200080dfff, x30, x2, 656, x1)

inst_58:
// rs1_h0_val == 0, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x800000904000000;  op2val:0x09fff9ff7fdfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x800000904000000, 0x09fff9ff7fdfff, x30, x2, 672, x1)

inst_59:
// rs2_h3_val == 0, rs2_h0_val == -17, rs1_h3_val == 0
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x00fffa0000f7ff;  op2val:0x00fff60005ffef
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x00fffa0000f7ff, 0x00fff60005ffef, x30, x2, 688, x1)

inst_60:
// rs2_h3_val == -1, rs1_h1_val == 32767, rs1_h3_val == -9
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff700097fffbfff;  op2val:0xffffff7f00080080
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff700097fffbfff, 0xffffff7f00080080, x30, x2, 704, x1)

inst_61:
// rs2_h1_val == 4, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x20f7ff00010006;  op2val:0x800c0000004f7ff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x20f7ff00010006, 0x800c0000004f7ff, x30, x2, 720, x1)

inst_62:
// rs2_h1_val == -1, rs1_h1_val == -1025, rs2_h0_val == -1025, rs1_h2_val == -21846
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x1000aaaafbff0400;  op2val:0xf7ff0007fffffbff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x1000aaaafbff0400, 0xf7ff0007fffffbff, x30, x2, 736, x1)

inst_63:
// rs2_h0_val == -21846, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x100ffef0100ffff;  op2val:0xfffa0004ff7faaaa
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x100ffef0100ffff, 0xfffa0004ff7faaaa, x30, x2, 752, x1)

inst_64:
// rs2_h0_val == -65, rs1_h3_val == -257, rs1_h2_val == 21845
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfeff555508008000;  op2val:0x0855552000ffbf
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfeff555508008000, 0x0855552000ffbf, x30, x2, 768, x1)

inst_65:
// rs2_h0_val == -32768, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x800000200023fff;  op2val:0xfffa5555fff98000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x800000200023fff, 0xfffa5555fff98000, x30, x2, 784, x1)

inst_66:
// rs2_h0_val == 16384, rs1_h2_val == 8
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa000800080006;  op2val:0x09fff87fff4000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xaaaa000800080006, 0x09fff87fff4000, x30, x2, 800, x1)

inst_67:
// rs2_h0_val == 8192, rs1_h2_val == 16, rs2_h1_val == -16385
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x1000107fff0004;  op2val:0x00ff7fbfff2000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x1000107fff0004, 0x00ff7fbfff2000, x30, x2, 816, x1)

inst_68:
// rs2_h0_val == 2048, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffbfc000f7ff0020;  op2val:0x06010040000800
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffbfc000f7ff0020, 0x06010040000800, x30, x2, 832, x1)

inst_69:
// rs2_h0_val == 512, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xefff40000200fffa;  op2val:0x200fffefff70200
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xefff40000200fffa, 0x200fffefff70200, x30, x2, 848, x1)

inst_70:
// rs2_h0_val == 256, rs2_h1_val == -4097
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xc0000008fff8fffc;  op2val:0xfbfffffaefff0100
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xc0000008fff8fffc, 0xfbfffffaefff0100, x30, x2, 864, x1)

inst_71:
// rs2_h0_val == 32, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x1000fff800045555;  op2val:0x07fffa3fff0020
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x1000fff800045555, 0x07fffa3fff0020, x30, x2, 880, x1)

inst_72:
// rs2_h0_val == 16, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x06ffff0007fff9;  op2val:0x400001fffc0010
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x06ffff0007fff9, 0x400001fffc0010, x30, x2, 896, x1)

inst_73:
// rs2_h0_val == 0, rs2_h2_val == -3
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x4000fffdfbff4000;  op2val:0xc000fffd3fff0000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x4000fffdfbff4000, 0xc000fffd3fff0000, x30, x2, 912, x1)

inst_74:
// rs1_h3_val == -8193, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xdfff0000fdff3fff;  op2val:0x00fffcfff60000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xdfff0000fdff3fff, 0x00fffcfff60000, x30, x2, 928, x1)

inst_75:
// rs1_h3_val == -1025, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfbfffff900047fff;  op2val:0x06fff8fff7fff7
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfbfffff900047fff, 0x06fff8fff7fff7, x30, x2, 944, x1)

inst_76:
// rs1_h3_val == -129, rs2_h2_val == 64
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xff7f0006ffbf2000;  op2val:0xffff00400005fff7
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xff7f0006ffbf2000, 0xffff00400005fff7, x30, x2, 960, x1)

inst_77:
// rs1_h3_val == -33, rs2_h2_val == 8
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffdf00090006fffb;  op2val:0x800008efff4000
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffdf00090006fffb, 0x800008efff4000, x30, x2, 976, x1)

inst_78:
// rs1_h3_val == -17, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffef0005fff60004;  op2val:0x1000008000800002
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffef0005fff60004, 0x1000008000800002, x30, x2, 992, x1)

inst_79:
// rs2_h2_val == -16385, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x09010010000002;  op2val:0x20bffffbff0009
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x09010010000002, 0x20bffffbff0009, x30, x2, 1008, x1)

inst_80:
// rs1_h3_val == 1024, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x400fffafbffffbf;  op2val:0xdffffff7fff7ffbf
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x400fffafbffffbf, 0xdffffff7fff7ffbf, x30, x2, 1024, x1)

inst_81:
// rs2_h2_val == -4097, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x015555ffbffbff;  op2val:0xdfffeffffffbbfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x015555ffbffbff, 0xdfffeffffffbbfff, x30, x2, 1040, x1)

inst_82:
// rs1_h3_val == 64, rs1_h2_val == 4096
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x40100000090800;  op2val:0x07000500020003
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x40100000090800, 0x07000500020003, x30, x2, 1056, x1)

inst_83:
// rs2_h2_val == -513, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x7fff400002004000;  op2val:0xffeffdff0000fff9
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x7fff400002004000, 0xffeffdff0000fff9, x30, x2, 1072, x1)

inst_84:
// rs1_h3_val == 8, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x08400000043fff;  op2val:0xbfff008055550007
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x08400000043fff, 0xbfff008055550007, x30, x2, 1088, x1)

inst_85:
// rs2_h2_val == -33, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xff7ffbff1000fff6;  op2val:0x09ffdf0001fff7
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xff7ffbff1000fff6, 0x09ffdf0001fff7, x30, x2, 1104, x1)

inst_86:
// rs2_h2_val == -17, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x8000008fff60010;  op2val:0x03ffef0003ffdf
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x8000008fff60010, 0x03ffef0003ffdf, x30, x2, 1120, x1)

inst_87:
// rs2_h2_val == -5, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x3fffdffffff75555;  op2val:0x05fffb0010dfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x3fffdffffff75555, 0x05fffb0010dfff, x30, x2, 1136, x1)

inst_88:
// rs1_h2_val == 32767, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffa7ffff7fffff8;  op2val:0x20000400ffbfbfff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffa7ffff7fffff8, 0x20000400ffbfbfff, x30, x2, 1152, x1)

inst_89:
// rs1_h2_val == -65, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x03ffbf80000400;  op2val:0x80fff700085555
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x03ffbf80000400, 0x80fff700085555, x30, x2, 1168, x1)

inst_90:
// rs2_h2_val == 16, rs1_h3_val == -2
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffe0000c0000400;  op2val:0x7fff00100004fffd
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffe0000c0000400, 0x7fff00100004fffd, x30, x2, 1184, x1)

inst_91:
// rs1_h2_val == -2, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffafffeefff0003;  op2val:0x090000fbff0009
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffafffeefff0003, 0x090000fbff0009, x30, x2, 1200, x1)

inst_92:
// rs1_h2_val == 2048, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfdff08003fff0005;  op2val:0xc000ffff3fffaaaa
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfdff08003fff0005, 0xc000ffff3fffaaaa, x30, x2, 1216, x1)

inst_93:
// rs1_h2_val == 1024, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x4000400ff7f0010;  op2val:0xfffbfff70005feff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x4000400ff7f0010, 0xfffbfff70005feff, x30, x2, 1232, x1)

inst_94:
// rs2_h1_val == -8193, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x020005fff65555;  op2val:0x80ffbfdfff0400
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x020005fff65555, 0x80ffbfdfff0400, x30, x2, 1248, x1)

inst_95:
// rs1_h2_val == 128, rs2_h1_val == -2
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x7fff008010000080;  op2val:0xfffc0001fffef7ff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x7fff008010000080, 0xfffc0001fffef7ff, x30, x2, 1264, x1)

inst_96:
// rs2_h1_val == -257, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x100020020000010;  op2val:0x010100fefffff8
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x100020020000010, 0x010100fefffff8, x30, x2, 1280, x1)

inst_97:
// rs1_h2_val == 1, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x5555000100077fff;  op2val:0x2002000fdff0080
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x5555000100077fff, 0x2002000fdff0080, x30, x2, 1296, x1)

inst_98:
// rs2_h1_val == -32768, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfff800031000fff8;  op2val:0x7fff001080000800
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfff800031000fff8, 0x7fff001080000800, x30, x2, 1312, x1)

inst_99:
// rs1_h1_val == -16385, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x00fdffbfff0009;  op2val:0xdffffdff0100fff7
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x00fdffbfff0009, 0xdffffdff0100fff7, x30, x2, 1328, x1)

inst_100:
// rs1_h1_val == -8193, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffbffbffdfff0010;  op2val:0x01fff67ffffdff
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffbffbffdfff0010, 0x01fff67ffffdff, x30, x2, 1344, x1)

inst_101:
// rs2_h1_val == 2048, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xfffafbff04005555;  op2val:0xefff00090800ffdf
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xfffafbff04005555, 0xefff00090800ffdf, x30, x2, 1360, x1)

inst_102:
// rs2_h1_val == 32, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffbf00010005fff9;  op2val:0xfffb002000200010
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffbf00010005fff9, 0xfffb002000200010, x30, x2, 1376, x1)

inst_103:
// rs2_h1_val == 64, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x040006fff64000;  op2val:0xfffb010000405555
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x040006fff64000, 0xfffb010000405555, x30, x2, 1392, x1)

inst_104:
// rs1_h1_val == -33, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xffdfdfffffdffff8;  op2val:0xfdff040000010005
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xffdfdfffffdffff8, 0xfdff040000010005, x30, x2, 1408, x1)

inst_105:
// rs1_h1_val == -17, 
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x401000ffef0005;  op2val:0xeffffffffdff0080
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x401000ffef0005, 0xeffffffffdff0080, x30, x2, 1424, x1)

inst_106:
// rs1_h3_val == rs2_h3_val, rs1_h3_val < 0 and rs2_h3_val < 0, rs1_h1_val == 8192, rs1_h3_val == -21846, rs1_h2_val > 0 and rs2_h2_val > 0, rs2_h1_val == -33, rs1_h2_val == 4, rs1_h0_val == 512, rs1_h1_val > 0 and rs2_h1_val < 0, rs2_h2_val == 512, rs2_h0_val == -3, rs1_h0_val > 0 and rs2_h0_val < 0, rs2_h3_val == -21846
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0xaaaa000420000200;  op2val:0xaaaa0200ffdffffd
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0xaaaa000420000200, 0xaaaa0200ffdffffd, x30, x2, 1440, x1)

inst_107:
// rs2_h3_val == 16384, rs1_h3_val == 21845, rs2_h0_val == 2, rs1_h2_val == 256, rs1_h0_val == 16384
// opcode: khmbt ; op1:x30; op2:x29; dest:x31; op1val:0x5555010055554000;  op2val:0x40003fff02000002
TEST_PKRR_OP(khmbt, x31, x30, x29, 0x0000000000000000, 0x5555010055554000, 0x40003fff02000002, x30, x2, 1456, x1)
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


signature_x10_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x10_1:
    .fill 32*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 184*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
