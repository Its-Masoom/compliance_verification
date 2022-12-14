
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
// This assembly file tests the ucmplt8 instruction of the RISC-V RV64PZicsr extension for the ucmplt8 covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",ucmplt8)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x9,signature_x9_1)

inst_0:
// rs1 == rd != rs2, rs1==x10, rs2==x4, rd==x10, rs1_b0_val == 0, rs2_b2_val == 64, rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0, rs2_b0_val == 223, rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0, rs1_b2_val == 4, rs1_b5_val != rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0, rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0, rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0, rs2_b6_val == 254, rs1_b3_val == 32, rs1_b4_val == 191, rs2_b7_val == 239, rs2_b1_val == 16
// opcode: ucmplt8 ; op1:x10; op2:x4; dest:x10; op1val:0xa0d0bbf20040d00;  op2val:0xeffe0903074010df
TEST_RR_OP(ucmplt8, x10, x10, x4, 0x0000000000000000, 0xa0d0bbf20040d00, 0xeffe0903074010df, x9, 0, x11)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x17, rs2==x8, rd==x14, rs1_b7_val == rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0, rs1_b4_val == 0, rs2_b0_val == 253, rs1_b3_val == 247, rs1_b1_val == 85, rs1_b0_val == 4, rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b3_val == 2, rs2_b7_val == 247, rs1_b7_val == 247, rs2_b5_val == 85
// opcode: ucmplt8 ; op1:x17; op2:x8; dest:x14; op1val:0xf70f0300f7125504;  op2val:0xf70e550f020612fd
TEST_RR_OP(ucmplt8, x14, x17, x8, 0x0000000000000000, 0xf70f0300f7125504, 0xf70e550f020612fd, x9, 8, x11)

inst_2:
// rs1 == rs2 != rd, rs1==x19, rs2==x19, rd==x29, rs1_b6_val == rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0, rs2_b7_val == 1, rs1_b2_val == 16, rs1_b5_val == 8, rs1_b0_val == 2, rs2_b3_val == 1, rs1_b4_val == 239, rs2_b6_val == 2, rs1_b6_val == 2, rs2_b1_val == 8, rs2_b4_val == 64
// opcode: ucmplt8 ; op1:x19; op2:x19; dest:x29; op1val:0xb0208ef11100602;  op2val:0x1025540010708fd
TEST_RR_OP(ucmplt8, x29, x19, x19, 0x0000000000000000, 0xb0208ef11100602, 0x1025540010708fd, x9, 16, x11)

inst_3:
// rs1 == rs2 == rd, rs1==x6, rs2==x6, rd==x6, rs1_b5_val == rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0, rs2_b7_val == 255, rs1_b5_val == 170, rs1_b6_val == 170, rs1_b2_val == 1, rs1_b4_val == 1, rs2_b5_val == 170, rs2_b2_val == 254, rs1_b7_val == 16, rs1_b1_val == 8, rs2_b0_val == 85
// opcode: ucmplt8 ; op1:x6; op2:x6; dest:x6; op1val:0x10aaaa010d010811;  op2val:0xff12aa1312fe0e55
TEST_RR_OP(ucmplt8, x6, x6, x6, 0x0000000000000000, 0x10aaaa010d010811, 0xff12aa1312fe0e55, x9, 24, x11)

inst_4:
// rs2 == rd != rs1, rs1==x20, rs2==x26, rd==x26, rs1_b4_val == rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0, rs1_b2_val == 0, rs2_b7_val == 2, rs1_b5_val == 254
// opcode: ucmplt8 ; op1:x20; op2:x26; dest:x26; op1val:0x6aafe130f000c0f;  op2val:0x2090a13030b0f0b
TEST_RR_OP(ucmplt8, x26, x20, x26, 0x0000000000000000, 0x6aafe130f000c0f, 0x2090a13030b0f0b, x9, 32, x11)

inst_5:
// rs1==x1, rs2==x13, rd==x16, rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b0_val == 191, rs1_b6_val == 127, rs2_b3_val == 251, rs1_b3_val == 251, rs2_b0_val == 2, rs2_b6_val == 4, rs2_b4_val == 32, rs1_b4_val == 2, rs1_b2_val == 254, rs2_b2_val == 128
// opcode: ucmplt8 ; op1:x1; op2:x13; dest:x16; op1val:0x107f0d02fbfe11bf;  op2val:0x604aa20fb800f02
TEST_RR_OP(ucmplt8, x16, x1, x13, 0x0000000000000000, 0x107f0d02fbfe11bf, 0x604aa20fb800f02, x9, 40, x11)

inst_6:
// rs1==x5, rs2==x3, rd==x8, rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b2_val == 64, rs1_b3_val == 85, rs1_b0_val == 128, rs1_b5_val == 127, rs2_b1_val == 247, rs1_b6_val == 64, rs2_b6_val == 1, rs2_b4_val == 8, rs2_b0_val == 127
// opcode: ucmplt8 ; op1:x5; op2:x3; dest:x8; op1val:0x12407f0155400c80;  op2val:0x60155080740f77f
TEST_RR_OP(ucmplt8, x8, x5, x3, 0x0000000000000000, 0x12407f0155400c80, 0x60155080740f77f, x9, 48, x11)

inst_7:
// rs1==x12, rs2==x18, rd==x23, rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0, rs2_b0_val == 239, rs2_b5_val == 128, rs1_b0_val == 239, rs2_b3_val == 8, rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b6_val == 128, rs2_b1_val == 128, rs1_b6_val == 8, rs2_b7_val == 223, rs1_b1_val == 128, rs1_b7_val == 251, rs1_b2_val == 223
// opcode: ucmplt8 ; op1:x12; op2:x18; dest:x23; op1val:0xfb080b13f7df80ef;  op2val:0xdf80800508fe80ef
TEST_RR_OP(ucmplt8, x23, x12, x18, 0x0000000000000000, 0xfb080b13f7df80ef, 0xdf80800508fe80ef, x9, 56, x11)

inst_8:
// rs1==x8, rs2==x2, rd==x25, rs2_b7_val == 170, rs1_b7_val == 1, rs2_b5_val == 8, rs1_b5_val == 4, rs1_b3_val == 254, rs2_b1_val == 191, rs1_b4_val == 127, rs1_b1_val == 253, rs1_b6_val == 4, rs2_b4_val == 128, rs2_b6_val == 0
// opcode: ucmplt8 ; op1:x8; op2:x2; dest:x25; op1val:0x104047ffe01fd02;  op2val:0xaa0008800e0abf12
TEST_RR_OP(ucmplt8, x25, x8, x2, 0x0000000000000000, 0x104047ffe01fd02, 0xaa0008800e0abf12, x9, 64, x11)

inst_9:
// rs1==x29, rs2==x12, rd==x2, rs2_b7_val == 85, rs2_b6_val == 85, rs1_b2_val == 255, rs1_b6_val == 16, rs2_b1_val == 255, rs1_b4_val == 4
// opcode: ucmplt8 ; op1:x29; op2:x12; dest:x2; op1val:0x9100f0406ff110e;  op2val:0x5555050e0f0dff0c
TEST_RR_OP(ucmplt8, x2, x29, x12, 0x0000000000000000, 0x9100f0406ff110e, 0x5555050e0f0dff0c, x9, 72, x11)

inst_10:
// rs1==x2, rs2==x24, rd==x27, rs2_b7_val == 127, rs1_b2_val == 2, rs2_b6_val == 239, rs1_b3_val == 64, rs2_b3_val == 255, rs2_b2_val == 239, rs1_b7_val == 32
// opcode: ucmplt8 ; op1:x2; op2:x24; dest:x27; op1val:0x2012030740020304;  op2val:0x7fef1180ffeff712
TEST_RR_OP(ucmplt8, x27, x2, x24, 0x0000000000000000, 0x2012030740020304, 0x7fef1180ffeff712, x9, 80, x11)

inst_11:
// rs1==x15, rs2==x16, rd==x22, rs2_b7_val == 191, rs2_b0_val == 251, rs1_b5_val == 64, rs1_b3_val == 223, rs1_b6_val == 251, rs2_b4_val == 251, rs2_b5_val == 191, rs1_b2_val == 253
// opcode: ucmplt8 ; op1:x15; op2:x16; dest:x22; op1val:0x1fb400edffd0800;  op2val:0xbf02bffb120d06fb
TEST_RR_OP(ucmplt8, x22, x15, x16, 0x0000000000000000, 0x1fb400edffd0800, 0xbf02bffb120d06fb, x9, 88, x11)

inst_12:
// rs1==x27, rs2==x7, rd==x19, rs2_b7_val == 251, rs1_b5_val == 253, rs2_b2_val == 0, rs1_b4_val == 170, rs2_b0_val == 1, rs2_b6_val == 64, rs2_b4_val == 253, rs1_b6_val == 255, rs2_b1_val == 2, rs1_b7_val == 64, rs1_b0_val == 85, rs1_b2_val == 128
// opcode: ucmplt8 ; op1:x27; op2:x7; dest:x19; op1val:0x40fffdaafb800655;  op2val:0xfb4009fd08000201
TEST_RR_OP(ucmplt8, x19, x27, x7, 0x0000000000000000, 0x40fffdaafb800655, 0xfb4009fd08000201, x9, 96, x11)

inst_13:
// rs1==x23, rs2==x0, rd==x30, rs2_b7_val == 253, rs1_b2_val == 32, rs2_b2_val == 16, rs2_b6_val == 223, rs2_b3_val == 253, rs1_b5_val == 0, rs1_b7_val == 253
// opcode: ucmplt8 ; op1:x23; op2:x0; dest:x30; op1val:0xfd0a00092020050e;  op2val:0xfddf0c0efd10060c
TEST_RR_OP(ucmplt8, x30, x23, x0, 0x0000000000000000, 0xfd0a00092020050e, 0xfddf0c0efd10060c, x9, 104, x11)

inst_14:
// rs1==x21, rs2==x23, rd==x28, rs2_b7_val == 254, rs2_b0_val == 0, rs2_b6_val == 32, rs1_b6_val == 254, rs2_b1_val == 239
// opcode: ucmplt8 ; op1:x21; op2:x23; dest:x28; op1val:0x7fe0b000b11800a;  op2val:0xfe200b05010eef00
TEST_RR_OP(ucmplt8, x28, x21, x23, 0x0000000000000000, 0x7fe0b000b11800a, 0xfe200b05010eef00, x9, 112, x4)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_15:
// rs1==x0, rs2==x29, rd==x21, rs2_b7_val == 128, rs2_b2_val == 1, rs1_b6_val == 223, rs1_b7_val == 170, rs1_b4_val == 32, rs2_b5_val == 223
// opcode: ucmplt8 ; op1:x0; op2:x29; dest:x21; op1val:0xaadf0f200580080f;  op2val:0x8013df0d02010c55
TEST_RR_OP(ucmplt8, x21, x0, x29, 0x0000000000000000, 0xaadf0f200580080f, 0x8013df0d02010c55, x2, 0, x4)

inst_16:
// rs1==x25, rs2==x21, rd==x31, rs2_b7_val == 64, rs2_b5_val == 16, rs1_b0_val == 32, rs2_b0_val == 8, rs1_b1_val == 223, rs2_b1_val == 254
// opcode: ucmplt8 ; op1:x25; op2:x21; dest:x31; op1val:0x504050f0edfdf20;  op2val:0x4013100f080cfe08
TEST_RR_OP(ucmplt8, x31, x25, x21, 0x0000000000000000, 0x504050f0edfdf20, 0x4013100f080cfe08, x2, 8, x4)

inst_17:
// rs1==x11, rs2==x22, rd==x9, rs2_b7_val == 32, rs2_b5_val == 251, rs2_b3_val == 170, rs2_b0_val == 247, rs1_b5_val == 128, rs2_b6_val == 247, rs1_b1_val == 191, rs1_b0_val == 255, rs1_b6_val == 1, rs2_b2_val == 247, rs2_b1_val == 0, rs2_b4_val == 1
// opcode: ucmplt8 ; op1:x11; op2:x22; dest:x9; op1val:0x70180aafe20bfff;  op2val:0x20f7fb01aaf700f7
TEST_RR_OP(ucmplt8, x9, x11, x22, 0x0000000000000000, 0x70180aafe20bfff, 0x20f7fb01aaf700f7, x2, 16, x4)

inst_18:
// rs1==x26, rs2==x20, rd==x18, rs2_b7_val == 16, rs2_b5_val == 253, rs1_b0_val == 223, rs1_b1_val == 170, rs1_b5_val == 255, rs2_b3_val == 4, rs2_b6_val == 16, rs1_b4_val == 247
// opcode: ucmplt8 ; op1:x26; op2:x20; dest:x18; op1val:0xd40fff7070caadf;  op2val:0x1010fd030405ff13
TEST_RR_OP(ucmplt8, x18, x26, x20, 0x0000000000000000, 0xd40fff7070caadf, 0x1010fd030405ff13, x2, 24, x4)

inst_19:
// rs1==x3, rs2==x28, rd==x17, rs2_b7_val == 8, rs2_b5_val == 2, rs1_b6_val == 128, rs2_b1_val == 127, rs2_b6_val == 127
// opcode: ucmplt8 ; op1:x3; op2:x28; dest:x17; op1val:0xa807f0afb050812;  op2val:0x87f020d09097f13
TEST_RR_OP(ucmplt8, x17, x3, x28, 0x0000000000000000, 0xa807f0afb050812, 0x87f020d09097f13, x2, 32, x4)

inst_20:
// rs1==x24, rs2==x27, rd==x15, rs2_b7_val == 4, rs1_b6_val == 85, rs1_b3_val == 128, rs2_b4_val == 170, rs1_b0_val == 1, rs1_b7_val == 85, rs1_b4_val == 251
// opcode: ucmplt8 ; op1:x24; op2:x27; dest:x15; op1val:0x55550cfb80070601;  op2val:0x4130baa130d100a
TEST_RR_OP(ucmplt8, x15, x24, x27, 0x0000000000000000, 0x55550cfb80070601, 0x4130baa130d100a, x2, 40, x4)

inst_21:
// rs1==x7, rs2==x14, rd==x3, rs2_b7_val == 0, rs1_b0_val == 254, rs1_b6_val == 253, rs2_b3_val == 16, rs1_b7_val == 127, rs2_b1_val == 64
// opcode: ucmplt8 ; op1:x7; op2:x14; dest:x3; op1val:0x7ffd070340fd06fe;  op2val:0x101140108040fd
TEST_RR_OP(ucmplt8, x3, x7, x14, 0x0000000000000000, 0x7ffd070340fd06fe, 0x101140108040fd, x2, 48, x4)

inst_22:
// rs1==x14, rs2==x31, rd==x1, rs2_b6_val == 170, rs2_b2_val == 191, rs1_b4_val == 223, rs2_b3_val == 64, rs1_b3_val == 2
// opcode: ucmplt8 ; op1:x14; op2:x31; dest:x1; op1val:0x400d0fdf020c1201;  op2val:0x20aa110b40bf0c01
TEST_RR_OP(ucmplt8, x1, x14, x31, 0x0000000000000000, 0x400d0fdf020c1201, 0x20aa110b40bf0c01, x2, 56, x4)

inst_23:
// rs1==x16, rs2==x11, rd==x0, rs2_b6_val == 191, rs2_b1_val == 1, rs2_b3_val == 254, rs1_b2_val == 239, rs1_b5_val == 85, rs2_b2_val == 251
// opcode: ucmplt8 ; op1:x16; op2:x11; dest:x0; op1val:0xf70755df55ef0e05;  op2val:0xefbf1205fefb01fd
TEST_RR_OP(ucmplt8, x0, x16, x11, 0x0000000000000000, 0xf70755df55ef0e05, 0xefbf1205fefb01fd, x2, 64, x4)

inst_24:
// rs1==x13, rs2==x25, rd==x11, rs2_b6_val == 251, rs2_b0_val == 128, rs1_b4_val == 85, rs1_b3_val == 255, rs2_b4_val == 254, rs1_b6_val == 0, rs2_b2_val == 223
// opcode: ucmplt8 ; op1:x13; op2:x25; dest:x11; op1val:0x700fe55ffef1301;  op2val:0x7ffb0efeaadf0180
TEST_RR_OP(ucmplt8, x11, x13, x25, 0x0000000000000000, 0x700fe55ffef1301, 0x7ffb0efeaadf0180, x2, 72, x4)

inst_25:
// rs1==x22, rs2==x5, rd==x24, rs2_b6_val == 253, rs2_b1_val == 251, rs1_b0_val == 170
// opcode: ucmplt8 ; op1:x22; op2:x5; dest:x24; op1val:0x4006080cff1311aa;  op2val:0x12fd0e0f1140fb0b
TEST_RR_OP(ucmplt8, x24, x22, x5, 0x0000000000000000, 0x4006080cff1311aa, 0x12fd0e0f1140fb0b, x2, 80, x4)

inst_26:
// rs1==x28, rs2==x17, rd==x20, rs1_b3_val == 170, rs1_b0_val == 16, rs2_b5_val == 255
// opcode: ucmplt8 ; op1:x28; op2:x17; dest:x20; op1val:0x12df070aaa040e10;  op2val:0xcefff09080903df
TEST_RR_OP(ucmplt8, x20, x28, x17, 0x0000000000000000, 0x12df070aaa040e10, 0xcefff09080903df, x2, 88, x4)

inst_27:
// rs1==x31, rs2==x10, rd==x5, rs1_b3_val == 127, rs2_b5_val == 1, rs2_b4_val == 85
// opcode: ucmplt8 ; op1:x31; op2:x10; dest:x5; op1val:0x10087f047f09aa01;  op2val:0xbf550155fbdffb55
TEST_RR_OP(ucmplt8, x5, x31, x10, 0x0000000000000000, 0x10087f047f09aa01, 0xbf550155fbdffb55, x2, 96, x4)

inst_28:
// rs1==x18, rs2==x15, rd==x13, rs1_b3_val == 191, rs2_b2_val == 32, rs1_b6_val == 32
// opcode: ucmplt8 ; op1:x18; op2:x15; dest:x13; op1val:0xfb200700bfef8012;  op2val:0xfb7f120701200001
TEST_RR_OP(ucmplt8, x13, x18, x15, 0x0000000000000000, 0xfb200700bfef8012, 0xfb7f120701200001, x2, 104, x4)

inst_29:
// rs1==x30, rs2==x9, rd==x12, rs1_b3_val == 239, rs2_b3_val == 85, rs1_b4_val == 254, rs2_b4_val == 255
// opcode: ucmplt8 ; op1:x30; op2:x9; dest:x12; op1val:0x14013feef400c0b;  op2val:0x611dfff55fe120f
TEST_RR_OP(ucmplt8, x12, x30, x9, 0x0000000000000000, 0x14013feef400c0b, 0x611dfff55fe120f, x2, 112, x4)

inst_30:
// rs1==x4, rs2==x1, rd==x7, rs1_b3_val == 253, rs2_b4_val == 223, rs1_b2_val == 8, rs2_b2_val == 4
// opcode: ucmplt8 ; op1:x4; op2:x1; dest:x7; op1val:0xfdfb7f0bfd08fd06;  op2val:0xef0a03df02040a03
TEST_RR_OP(ucmplt8, x7, x4, x1, 0x0000000000000000, 0xfdfb7f0bfd08fd06, 0xef0a03df02040a03, x2, 120, x3)

inst_31:
// rs1==x9, rs2==x30, rd==x4, rs1_b3_val == 16, rs1_b5_val == 251, rs1_b1_val == 254, rs2_b0_val == 4
// opcode: ucmplt8 ; op1:x9; op2:x30; dest:x4; op1val:0xf720fbfb1001fe0a;  op2val:0x24080400eeffb04
TEST_RR_OP(ucmplt8, x4, x9, x30, 0x0000000000000000, 0xf720fbfb1001fe0a, 0x24080400eeffb04, x2, 128, x3)

inst_32:
// rs1_b3_val == 8, rs1_b1_val == 255, rs2_b0_val == 254
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xf200a040806ff03;  op2val:0xdffe80800a037ffe
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xf200a040806ff03, 0xdffe80800a037ffe, x2, 136, x3)

inst_33:
// rs1_b3_val == 4, rs2_b4_val == 191, rs1_b7_val == 223
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xdf7f0d130420050b;  op2val:0x4aa0abf0304fefd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xdf7f0d130420050b, 0x4aa0abf0304fefd, x2, 144, x3)

inst_34:
// rs1_b3_val == 1, rs1_b5_val == 1, rs2_b3_val == 32
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x550f010b0108070a;  op2val:0xefaa07bf20fb03fd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x550f010b0108070a, 0xefaa07bf20fb03fd, x2, 152, x3)

inst_35:
// rs1_b3_val == 0, rs1_b1_val == 2, rs2_b4_val == 239
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x407ffd0e00fd020d;  op2val:0x7f0f01effdfe010d
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x407ffd0e00fd020d, 0x7f0f01effdfe010d, x2, 160, x3)

inst_36:
// rs1_b2_val == 170, rs2_b4_val == 0, rs2_b1_val == 170
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xd08120020aadf00;  op2val:0xfd2008000e10aa0e
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xd08120020aadf00, 0xfd2008000e10aa0e, x2, 168, x3)

inst_37:
// rs1_b2_val == 85, rs1_b1_val == 1, rs1_b0_val == 8, rs1_b7_val == 0
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x0008fb05550108;  op2val:0x80f7ff000a031003
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x0008fb05550108, 0x80f7ff000a031003, x2, 176, x3)

inst_38:
// rs1_b2_val == 127, rs1_b1_val == 251, rs1_b7_val == 2, rs2_b5_val == 0, rs1_b4_val == 255
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x2060ffffe7ffb80;  op2val:0xfb0d0055aa070a0f
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x2060ffffe7ffb80, 0xfb0d0055aa070a0f, x2, 184, x3)

inst_39:
// rs1_b2_val == 191, rs1_b1_val == 0
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x2013800700bf000c;  op2val:0x13400c0810f7bffd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x2013800700bf000c, 0x13400c0810f7bffd, x2, 192, x3)

inst_40:
// rs1_b2_val == 247, rs1_b1_val == 239
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xf8013fffff7ef08;  op2val:0x20ef06aafd0180fd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xf8013fffff7ef08, 0x20ef06aafd0180fd, x2, 200, x3)

inst_41:
// rs1_b2_val == 251, rs2_b5_val == 127, rs1_b4_val == 8
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xdf0a0108aafbfd12;  op2val:0x70b7fef07bfaa12
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xdf0a0108aafbfd12, 0x70b7fef07bfaa12, x2, 208, x3)

inst_42:
// rs1_b1_val == 127, rs2_b2_val == 170, rs1_b5_val == 247
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x900f7070d007f13;  op2val:0x904030e0faa0e00
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x900f7070d007f13, 0x904030e0faa0e00, x2, 216, x3)

inst_43:
// rs1_b1_val == 247, rs1_b0_val == 127, rs2_b6_val == 255
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xe05fb5502aaf77f;  op2val:0xbff05fb09fb0d0a
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xe05fb5502aaf77f, 0xbff05fb09fb0d0a, x2, 224, x3)

inst_44:
// rs2_b6_val == 8, rs2_b3_val == 128, rs2_b0_val == 170
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xa5507df040f07fe;  op2val:0xe0802df8013aaaa
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xa5507df040f07fe, 0xe0802df8013aaaa, x2, 232, x3)

inst_45:
// rs2_b2_val == 8, rs2_b5_val == 254, rs2_b3_val == 239
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x5090b040540fd01;  op2val:0x1310fe0aef080d0a
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x5090b040540fd01, 0x1310fe0aef080d0a, x2, 240, x3)

inst_46:
// rs2_b2_val == 2, rs1_b4_val == 16, rs2_b3_val == 191, rs2_b1_val == 223
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x40067f100d20010c;  op2val:0x5ffbf0cbf02df0d
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x40067f100d20010c, 0x5ffbf0cbf02df0d, x2, 248, x3)

inst_47:
// rs2_b2_val == 255, rs1_b5_val == 2, rs1_b0_val == 253
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xaa1302aa13efbffd;  op2val:0xef0ffffd0aff0655
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xaa1302aa13efbffd, 0xef0ffffd0aff0655, x2, 256, x3)

inst_48:
// rs2_b1_val == 85, rs1_b5_val == 239
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xb12ef0855200520;  op2val:0x0a02120f0355ef
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xb12ef0855200520, 0x0a02120f0355ef, x2, 264, x3)

inst_49:
// rs2_b1_val == 253, rs2_b5_val == 4
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xfd050909050afffe;  op2val:0x100b04fdffaafdfd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xfd050909050afffe, 0x100b04fdffaafdfd, x2, 272, x3)

inst_50:
// rs2_b1_val == 32, rs1_b7_val == 128, rs2_b4_val == 2
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x8009ef0510ef1308;  op2val:0xb20030206ff20aa
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x8009ef0510ef1308, 0xb20030206ff20aa, x2, 280, x3)

inst_51:
// rs2_b1_val == 4, rs1_b7_val == 191, rs2_b2_val == 85, rs2_b5_val == 247
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xbf03111205060def;  op2val:0x120ff71307550406
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xbf03111205060def, 0x120ff71307550406, x2, 288, x3)

inst_52:
// rs2_b0_val == 191, rs1_b6_val == 191, rs1_b4_val == 64, rs1_b7_val == 239, rs1_b1_val == 16
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xefbfff40ef0010ef;  op2val:0x5512111312aaf7bf
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xefbfff40ef0010ef, 0x5512111312aaf7bf, x2, 296, x3)

inst_53:
// rs2_b0_val == 64, rs1_b1_val == 4
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x108800300040403;  op2val:0x709050613204040
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x108800300040403, 0x709050613204040, x2, 304, x3)

inst_54:
// rs2_b0_val == 32, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x10feaa01bf0c09fe;  op2val:0x40d550006040420
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x10feaa01bf0c09fe, 0x40d550006040420, x2, 312, x3)

inst_55:
// rs2_b0_val == 16, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x10fb0b030c0e0206;  op2val:0x2f7550def120d10
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x10fb0b030c0e0206, 0x2f7550def120d10, x2, 320, x3)

inst_56:
// rs1_b7_val == 4, rs2_b3_val == 247
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x40f120400aa1255;  op2val:0xfeaafe20f7201355
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x40f120400aa1255, 0xfeaafe20f7201355, x2, 328, x3)

inst_57:
// rs1_b0_val == 247, rs1_b7_val == 8
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x8070f08ef100cf7;  op2val:0xeef0580fdef0805
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x8070f08ef100cf7, 0xeef0580fdef0805, x2, 336, x3)

inst_58:
// rs1_b7_val == 255, rs2_b4_val == 4
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xff0d060b027f0213;  op2val:0xa0a130403077f0e
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xff0d060b027f0213, 0xa0a130403077f0e, x2, 344, x3)

inst_59:
// rs2_b5_val == 64, rs1_b5_val == 16
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xa0310ef0f02aa80;  op2val:0x131340110755ef08
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xa0310ef0f02aa80, 0x131340110755ef08, x2, 352, x3)

inst_60:
// rs1_b0_val == 251, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x740037f030312fb;  op2val:0xaa0d020f0c100580
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x740037f030312fb, 0xaa0d020f0c100580, x2, 360, x3)

inst_61:
// rs2_b5_val == 32, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x37faa0140ff1004;  op2val:0x10c20df1210000b
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x37faa0140ff1004, 0x10c20df1210000b, x2, 368, x3)

inst_62:
// rs1_b0_val == 64, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x208f77fbf7f0140;  op2val:0x30400030f060efe
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x208f77fbf7f0140, 0x30400030f060efe, x2, 376, x3)

inst_63:
// rs1_b6_val == 239, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x4ef0404807fff10;  op2val:0xaa12400c0d032012
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x4ef0404807fff10, 0xaa12400c0d032012, x2, 384, x3)

inst_64:
// rs1_b6_val == 247, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xff7551002ff0520;  op2val:0x70903080dfbef0b
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xff7551002ff0520, 0x70903080dfbef0b, x2, 392, x3)

inst_65:
// rs2_b4_val == 127, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x55bf06f7fd06bf40;  op2val:0xebf0d7fbf060b13
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x55bf06f7fd06bf40, 0xebf0d7fbf060b13, x2, 400, x3)

inst_66:
// rs2_b4_val == 247, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xdf04ff400140fd0d;  op2val:0x120b0ef70e040202
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xdf04ff400140fd0d, 0x120b0ef70e040202, x2, 408, x3)

inst_67:
// rs2_b4_val == 16, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xaa07110d0901080f;  op2val:0xff110810aa080307
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xaa07110d0901080f, 0xff110810aa080307, x2, 416, x3)

inst_68:
// rs2_b3_val == 127, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xe0ffe13fedf0303;  op2val:0x201213fd7f0102aa
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xe0ffe13fedf0303, 0x201213fd7f0102aa, x2, 424, x3)

inst_69:
// rs2_b3_val == 223, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xff0a070d087f0d40;  op2val:0xfb208020df070b7f
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xff0a070d087f0d40, 0xfb208020df070b7f, x2, 432, x3)

inst_70:
// rs1_b5_val == 32, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x6bf200dff08df09;  op2val:0x102055070a080a08
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x6bf200dff08df09, 0x102055070a080a08, x2, 440, x3)

inst_71:
// rs2_b0_val == 255, rs1_b1_val == 32
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x20000bfef708200a;  op2val:0x9077f007fff04ff
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x20000bfef708200a, 0x9077f007fff04ff, x2, 448, x3)

inst_72:
// rs1_b1_val == 64, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x1308000abf0f400e;  op2val:0x60c040b800b010b
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x1308000abf0f400e, 0x60c040b800b010b, x2, 456, x3)

inst_73:
// rs2_b3_val == 0, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xfdfe0f010a10aafb;  op2val:0x9ff13df0040f706
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xfdfe0f010a10aafb, 0x9ff13df0040f706, x2, 464, x3)

inst_74:
// rs1_b4_val == 253, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x0708fdfb200907;  op2val:0x0f0eff1055010a
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x0708fdfb200907, 0x0f0eff1055010a, x2, 472, x3)

inst_75:
// rs2_b2_val == 127, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x7100002f70708ff;  op2val:0x12fef702077fefbf
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x7100002f70708ff, 0x12fef702077fefbf, x2, 480, x3)

inst_76:
// rs2_b2_val == 253, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x7f0802bf55000411;  op2val:0x804ff02fbfd8003
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x7f0802bf55000411, 0x804ff02fbfd8003, x2, 488, x3)

inst_77:
// rs1_b4_val == 128, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xc0601807ffb040b;  op2val:0x20ef1210fd015513
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xc0601807ffb040b, 0x20ef1210fd015513, x2, 496, x3)

inst_78:
// rs1_b7_val == 254, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xfeef1040ef0afe02;  op2val:0x9ef001200fe7f05
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xfeef1040ef0afe02, 0x9ef001200fe7f05, x2, 504, x3)

inst_79:
// rs1_b5_val == 191, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x8040bffb09f7fe02;  op2val:0x1106100abf4011fd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x8040bffb09f7fe02, 0x1106100abf4011fd, x2, 512, x3)

inst_80:
// rs1_b5_val == 223, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0x240dffbaa13110c;  op2val:0xa0513000908ff10
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0x240dffbaa13110c, 0xa0513000908ff10, x2, 520, x3)

inst_81:
// rs2_b5_val == 239, 
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xbffbfb080f00070c;  op2val:0xbfbef10aa021313
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xbffbfb080f00070c, 0xbfbef10aa021313, x2, 528, x3)

inst_82:
// rs1_b6_val == rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0, rs2_b7_val == 1, rs1_b2_val == 16, rs1_b5_val == 8, rs1_b0_val == 2, rs2_b3_val == 1, rs1_b4_val == 239, rs2_b6_val == 2, rs1_b6_val == 2, rs2_b1_val == 8, rs2_b4_val == 64
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xb0208ef11100602;  op2val:0x1025540010708fd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xb0208ef11100602, 0x1025540010708fd, x2, 536, x3)

inst_83:
// rs2_b7_val == 253, rs1_b2_val == 32, rs2_b2_val == 16, rs2_b6_val == 223, rs2_b3_val == 253, rs1_b5_val == 0, rs1_b7_val == 253
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xfd0a00092020050e;  op2val:0xfddf0c0efd10060c
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xfd0a00092020050e, 0xfddf0c0efd10060c, x2, 544, x3)

inst_84:
// rs2_b7_val == 128, rs2_b2_val == 1, rs1_b6_val == 223, rs1_b7_val == 170, rs1_b4_val == 32, rs2_b5_val == 223
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xaadf0f200580080f;  op2val:0x8013df0d02010c55
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xaadf0f200580080f, 0x8013df0d02010c55, x2, 552, x3)

inst_85:
// rs2_b6_val == 191, rs2_b1_val == 1, rs2_b3_val == 254, rs1_b2_val == 239, rs1_b5_val == 85, rs2_b2_val == 251
// opcode: ucmplt8 ; op1:x30; op2:x29; dest:x31; op1val:0xf70755df55ef0e05;  op2val:0xefbf1205fefb01fd
TEST_RR_OP(ucmplt8, x31, x30, x29, 0x0000000000000000, 0xf70755df55ef0e05, 0xefbf1205fefb01fd, x2, 560, x3)
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


signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 71*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
