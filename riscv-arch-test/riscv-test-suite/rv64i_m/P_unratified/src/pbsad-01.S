
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
// This assembly file tests the pbsad instruction of the RISC-V RV64PZicsr extension for the pbsad covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*P.*Zicsr.*);def TEST_CASE_1=True;",pbsad)

RVTEST_VXSAT_ENABLE()
RVTEST_SIGBASE(x2,signature_x2_1)

inst_0:
// rs1 == rd != rs2, rs1==x15, rs2==x8, rd==x15, rs1_b0_val == 0, rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0, rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0, rs1_b5_val != rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0, rs2_b0_val == 253, rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0, rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0, rs2_b6_val == 223, rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0, rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0, rs1_b7_val == 170, rs2_b1_val == 16, rs1_b5_val == 170, rs2_b4_val == 255
// opcode: pbsad ; op1:x15; op2:x8; dest:x15; op1val:0xaa0daa0a0b0c0900;  op2val:0x6df12ff0d0710fd
TEST_RR_OP(pbsad, x15, x15, x8, 0x0000000000000000, 0xaa0daa0a0b0c0900, 0x6df12ff0d0710fd, x2, 0, x4)

inst_1:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x6, rd==x10, rs1_b7_val == rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0, rs1_b5_val == 16, rs2_b0_val == 64, rs1_b0_val == 4, rs1_b3_val == 32, rs2_b1_val == 239, rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b3_val == 4, rs1_b1_val == 254, rs1_b4_val == 4, rs2_b4_val == 253, rs1_b7_val == 16, rs1_b2_val == 253, rs2_b7_val == 16
// opcode: pbsad ; op1:x27; op2:x6; dest:x10; op1val:0x100a100420fdfe04;  op2val:0x10060ffd040aef40
TEST_RR_OP(pbsad, x10, x27, x6, 0x0000000000000000, 0x100a100420fdfe04, 0x10060ffd040aef40, x2, 8, x4)

inst_2:
// rs1 == rs2 != rd, rs1==x9, rs2==x9, rd==x19, rs1_b6_val == rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0, rs2_b3_val == 127, rs2_b2_val == 255, rs2_b1_val == 251, rs2_b6_val == 8, rs1_b6_val == 8, rs1_b3_val == 255, rs1_b4_val == 64, rs1_b1_val == 255, rs1_b0_val == 170
// opcode: pbsad ; op1:x9; op2:x9; dest:x19; op1val:0xa080f40ff09ffaa;  op2val:0x90803077ffffb12
TEST_RR_OP(pbsad, x19, x9, x9, 0x0000000000000000, 0xa080f40ff09ffaa, 0x90803077ffffb12, x2, 16, x4)

inst_3:
// rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs1_b5_val == rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0, rs1_b0_val == 64, rs1_b6_val == 251, rs2_b3_val == 255, rs1_b2_val == 170, rs2_b7_val == 239, rs2_b1_val == 8, rs2_b5_val == 170, rs2_b4_val == 4, rs1_b4_val == 1
// opcode: pbsad ; op1:x26; op2:x26; dest:x26; op1val:0x3fbaa0113aa0b40;  op2val:0xef12aa04ff120809
TEST_RR_OP(pbsad, x26, x26, x26, 0x0000000000000000, 0x3fbaa0113aa0b40, 0xef12aa04ff120809, x2, 24, x4)

inst_4:
// rs2 == rd != rs1, rs1==x31, rs2==x25, rd==x25, rs1_b4_val == rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0, rs2_b2_val == 8, rs2_b5_val == 4, rs1_b5_val == 4, rs1_b3_val == 254, rs2_b6_val == 16, rs1_b1_val == 64
// opcode: pbsad ; op1:x31; op2:x25; dest:x25; op1val:0xe050412fe07400f;  op2val:0x310041213080613
TEST_RR_OP(pbsad, x25, x31, x25, 0x0000000000000000, 0xe050412fe07400f, 0x310041213080613, x2, 32, x4)

inst_5:
// rs1==x21, rs2==x0, rd==x29, rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b5_val == 251, rs1_b7_val == 0, rs1_b6_val == 191, rs1_b0_val == 16, rs1_b4_val == 191, rs1_b2_val == 127, rs2_b2_val == 247, rs2_b5_val == 239
// opcode: pbsad ; op1:x21; op2:x0; dest:x29; op1val:0xbffbbf077f0510;  op2val:0xe0aef0507f70803
TEST_RR_OP(pbsad, x29, x21, x0, 0x0000000000000000, 0xbffbbf077f0510, 0xe0aef0507f70803, x2, 40, x4)

inst_6:
// rs1==x13, rs2==x17, rd==x30, rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0, rs2_b3_val == 85, rs1_b5_val == 32, rs1_b3_val == 128, rs2_b0_val == 2, rs1_b6_val == 253, rs2_b4_val == 247, rs1_b7_val == 251, rs2_b1_val == 0, rs2_b5_val == 223, rs2_b7_val == 8
// opcode: pbsad ; op1:x13; op2:x17; dest:x30; op1val:0xfbfd200b800e0a04;  op2val:0x80ddff7550e0002
TEST_RR_OP(pbsad, x30, x13, x17, 0x0000000000000000, 0xfbfd200b800e0a04, 0x80ddff7550e0002, x2, 48, x4)

inst_7:
// rs1==x6, rs2==x13, rd==x12, rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0, rs2_b5_val == 1, rs2_b1_val == 247, rs2_b6_val == 64, rs1_b1_val == 247, rs2_b3_val == 1, rs1_b3_val == 0, rs1_b6_val == 2
// opcode: pbsad ; op1:x6; op2:x13; dest:x12; op1val:0x5020f110003f700;  op2val:0x74001050105f740
TEST_RR_OP(pbsad, x12, x6, x13, 0x0000000000000000, 0x5020f110003f700, 0x74001050105f740, x2, 56, x4)

inst_8:
// rs1==x30, rs2==x3, rd==x11, rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0, rs2_b2_val == 4, rs1_b2_val == 2, rs2_b3_val == 239, rs1_b6_val == 239, rs1_b3_val == 64, rs2_b7_val == 170, rs1_b1_val == 253, rs1_b4_val == 8
// opcode: pbsad ; op1:x30; op2:x3; dest:x11; op1val:0xeef0e084002fd12;  op2val:0xaa06df05ef040e12
TEST_RR_OP(pbsad, x11, x30, x3, 0x0000000000000000, 0xeef0e084002fd12, 0xaa06df05ef040e12, x2, 64, x4)

inst_9:
// rs1==x8, rs2==x22, rd==x24, rs2_b7_val == 85, rs1_b3_val == 127, rs1_b2_val == 1, rs1_b0_val == 255, rs2_b3_val == 8, rs2_b2_val == 170
// opcode: pbsad ; op1:x8; op2:x22; dest:x24; op1val:0xc120b117f01feff;  op2val:0x550e03f708aa0002
TEST_RR_OP(pbsad, x24, x8, x22, 0x0000000000000000, 0xc120b117f01feff, 0x550e03f708aa0002, x2, 72, x4)

inst_10:
// rs1==x12, rs2==x29, rd==x1, rs2_b7_val == 127, rs1_b0_val == 191, rs1_b4_val == 32, rs1_b2_val == 223, rs2_b6_val == 251, rs2_b1_val == 2
// opcode: pbsad ; op1:x12; op2:x29; dest:x1; op1val:0x1206fb2003dffdbf;  op2val:0x7ffb04120a090212
TEST_RR_OP(pbsad, x1, x12, x29, 0x0000000000000000, 0x1206fb2003dffdbf, 0x7ffb04120a090212, x2, 80, x4)

inst_11:
// rs1==x17, rs2==x5, rd==x23, rs2_b7_val == 191, rs2_b0_val == 0, rs1_b6_val == 1
// opcode: pbsad ; op1:x17; op2:x5; dest:x23; op1val:0xf010b0c200bfe10;  op2val:0xbf0d04090713fb00
TEST_RR_OP(pbsad, x23, x17, x5, 0x0000000000000000, 0xf010b0c200bfe10, 0xbf0d04090713fb00, x2, 88, x4)

inst_12:
// rs1==x22, rs2==x10, rd==x31, rs2_b7_val == 223, rs2_b5_val == 254, rs2_b0_val == 251, rs2_b2_val == 1, rs2_b3_val == 247, rs1_b7_val == 85, rs1_b6_val == 16, rs1_b3_val == 1, rs2_b1_val == 4
// opcode: pbsad ; op1:x22; op2:x10; dest:x31; op1val:0x55100f0d01fd4006;  op2val:0xdf40fe11f70104fb
TEST_RR_OP(pbsad, x31, x22, x10, 0x0000000000000000, 0x55100f0d01fd4006, 0xdf40fe11f70104fb, x2, 96, x4)

inst_13:
// rs1==x10, rs2==x24, rd==x13, rs2_b7_val == 247, rs2_b3_val == 251, rs2_b6_val == 253, rs1_b7_val == 223, rs2_b2_val == 239, rs1_b5_val == 127
// opcode: pbsad ; op1:x10; op2:x24; dest:x13; op1val:0xdf097f0606df050f;  op2val:0xf7fd030ffbef110f
TEST_RR_OP(pbsad, x13, x10, x24, 0x0000000000000000, 0xdf097f0606df050f, 0xf7fd030ffbef110f, x2, 104, x4)

inst_14:
// rs1==x19, rs2==x30, rd==x20, rs2_b7_val == 251, rs1_b5_val == 253, rs1_b0_val == 223, rs2_b5_val == 16, rs2_b2_val == 0, rs2_b6_val == 4, rs1_b1_val == 2, rs1_b7_val == 64, rs2_b4_val == 1
// opcode: pbsad ; op1:x19; op2:x30; dest:x20; op1val:0x4011fd05ff0202df;  op2val:0xfb0410010300020d
TEST_RR_OP(pbsad, x20, x19, x30, 0x0000000000000000, 0x4011fd05ff0202df, 0xfb0410010300020d, x2, 112, x4)

inst_15:
// rs1==x14, rs2==x11, rd==x27, rs2_b7_val == 253, rs1_b6_val == 85, rs1_b3_val == 239, rs1_b0_val == 8, rs1_b4_val == 247, rs2_b4_val == 254, rs2_b6_val == 1, rs2_b2_val == 223, rs2_b1_val == 1, rs1_b5_val == 247
// opcode: pbsad ; op1:x14; op2:x11; dest:x27; op1val:0xf55f7f7ef121108;  op2val:0xfd010efef7df0109
TEST_RR_OP(pbsad, x27, x14, x11, 0x0000000000000000, 0xf55f7f7ef121108, 0xfd010efef7df0109, x2, 120, x4)

inst_16:
// rs1==x25, rs2==x21, rd==x17, rs2_b7_val == 254, rs1_b6_val == 0, rs1_b5_val == 255, rs1_b3_val == 191, rs1_b1_val == 0
// opcode: pbsad ; op1:x25; op2:x21; dest:x17; op1val:0xc00ff03bf0c00ff;  op2val:0xfefb1204fbf7110e
TEST_RR_OP(pbsad, x17, x25, x21, 0x0000000000000000, 0xc00ff03bf0c00ff, 0xfefb1204fbf7110e, x2, 128, x4)

inst_17:
// rs1==x16, rs2==x18, rd==x6, rs2_b7_val == 128, rs1_b3_val == 85, rs2_b5_val == 32, rs1_b5_val == 8, rs2_b0_val == 128, rs2_b3_val == 254, rs2_b4_val == 8
// opcode: pbsad ; op1:x16; op2:x18; dest:x6; op1val:0xa03080d550d0d08;  op2val:0x800f2008feaa0680
TEST_RR_OP(pbsad, x6, x16, x18, 0x0000000000000000, 0xa03080d550d0d08, 0x800f2008feaa0680, x2, 136, x4)
RVTEST_SIGBASE(x6,signature_x6_0)

inst_18:
// rs1==x18, rs2==x14, rd==x22, rs2_b7_val == 64, rs2_b4_val == 0, rs2_b0_val == 191, rs1_b7_val == 1, rs1_b2_val == 16, rs2_b6_val == 85, rs1_b0_val == 32, rs2_b3_val == 128, rs1_b4_val == 251
// opcode: pbsad ; op1:x18; op2:x14; dest:x22; op1val:0x102aafb12100620;  op2val:0x40550d0080060ebf
TEST_RR_OP(pbsad, x22, x18, x14, 0x0000000000000000, 0x102aafb12100620, 0x40550d0080060ebf, x6, 0, x10)

inst_19:
// rs1==x1, rs2==x28, rd==x4, rs2_b7_val == 32, rs2_b2_val == 16, rs1_b2_val == 239, rs1_b0_val == 1, rs2_b3_val == 0, rs2_b5_val == 85, rs2_b0_val == 85
// opcode: pbsad ; op1:x1; op2:x28; dest:x4; op1val:0x4006ff060aef4001;  op2val:0x2008550400100a55
TEST_RR_OP(pbsad, x4, x1, x28, 0x0000000000000000, 0x4006ff060aef4001, 0x2008550400100a55, x6, 8, x10)

inst_20:
// rs1==x11, rs2==x31, rd==x14, rs2_b7_val == 4, rs2_b5_val == 2, rs1_b5_val == 2, rs2_b6_val == 254, rs1_b4_val == 223, rs1_b7_val == 191, rs2_b1_val == 32, rs1_b1_val == 32
// opcode: pbsad ; op1:x11; op2:x31; dest:x14; op1val:0xbf0502df11ef2004;  op2val:0x4fe02080c0c2003
TEST_RR_OP(pbsad, x14, x11, x31, 0x0000000000000000, 0xbf0502df11ef2004, 0x4fe02080c0c2003, x6, 16, x10)

inst_21:
// rs1==x5, rs2==x7, rd==x21, rs2_b7_val == 2, rs2_b5_val == 64, rs1_b4_val == 170, rs1_b6_val == 32, rs2_b1_val == 254, rs1_b3_val == 2, rs2_b4_val == 32, rs1_b2_val == 128
// opcode: pbsad ; op1:x5; op2:x7; dest:x21; op1val:0xf200faa0280f7bf;  op2val:0x20b40200110fe0b
TEST_RR_OP(pbsad, x21, x5, x7, 0x0000000000000000, 0xf200faa0280f7bf, 0x20b40200110fe0b, x6, 24, x10)

inst_22:
// rs1==x7, rs2==x23, rd==x9, rs2_b7_val == 1, rs2_b2_val == 64, rs2_b4_val == 251, rs2_b6_val == 2
// opcode: pbsad ; op1:x7; op2:x23; dest:x9; op1val:0xc13f707800f0d20;  op2val:0x1020bfb55400e00
TEST_RR_OP(pbsad, x9, x7, x23, 0x0000000000000000, 0xc13f707800f0d20, 0x1020bfb55400e00, x6, 32, x10)

inst_23:
// rs1==x24, rs2==x4, rd==x5, rs2_b7_val == 255, rs2_b5_val == 0
// opcode: pbsad ; op1:x24; op2:x4; dest:x5; op1val:0xa11fb090d100b11;  op2val:0xff1100fb13f7fb0b
TEST_RR_OP(pbsad, x5, x24, x4, 0x0000000000000000, 0xa11fb090d100b11, 0xff1100fb13f7fb0b, x6, 40, x10)

inst_24:
// rs1==x2, rs2==x1, rd==x28, rs2_b7_val == 0, rs1_b1_val == 16, rs2_b2_val == 253, rs1_b4_val == 85, rs1_b6_val == 127
// opcode: pbsad ; op1:x2; op2:x1; dest:x28; op1val:0x57f7f5512111040;  op2val:0x080ff701fdef80
TEST_RR_OP(pbsad, x28, x2, x1, 0x0000000000000000, 0x57f7f5512111040, 0x080ff701fdef80, x6, 48, x10)

inst_25:
// rs1==x28, rs2==x15, rd==x8, rs2_b6_val == 170, rs2_b0_val == 32, rs1_b7_val == 127, rs1_b1_val == 239
// opcode: pbsad ; op1:x28; op2:x15; dest:x8; op1val:0x7f020c0f0107ef06;  op2val:0x5aa40040b120d20
TEST_RR_OP(pbsad, x8, x28, x15, 0x0000000000000000, 0x7f020c0f0107ef06, 0x5aa40040b120d20, x6, 56, x10)

inst_26:
// rs1==x3, rs2==x27, rd==x16, rs2_b6_val == 127, rs1_b6_val == 170, rs1_b0_val == 2, rs2_b1_val == 223, rs1_b1_val == 1, rs1_b4_val == 255
// opcode: pbsad ; op1:x3; op2:x27; dest:x16; op1val:0x5aaaaff07110102;  op2val:0x807f021303ffdf03
TEST_RR_OP(pbsad, x16, x3, x27, 0x0000000000000000, 0x5aaaaff07110102, 0x807f021303ffdf03, x6, 64, x10)

inst_27:
// rs1==x29, rs2==x16, rd==x7, rs2_b6_val == 191, rs2_b1_val == 170, rs1_b6_val == 247, rs2_b0_val == 4, rs1_b7_val == 32
// opcode: pbsad ; op1:x29; op2:x16; dest:x7; op1val:0x20f7130b0e060c07;  op2val:0xbfbf0a0c0d01aa04
TEST_RR_OP(pbsad, x7, x29, x16, 0x0000000000000000, 0x20f7130b0e060c07, 0xbfbf0a0c0d01aa04, x6, 72, x10)

inst_28:
// rs1==x4, rs2==x2, rd==x3, rs2_b6_val == 239, rs2_b5_val == 128, rs1_b0_val == 128, rs2_b4_val == 127, rs1_b2_val == 85, rs2_b2_val == 128
// opcode: pbsad ; op1:x4; op2:x2; dest:x3; op1val:0x20fd204040550780;  op2val:0xcef807f0d800980
TEST_RR_OP(pbsad, x3, x4, x2, 0x0000000000000000, 0x20fd204040550780, 0xcef807f0d800980, x6, 80, x10)

inst_29:
// rs1==x23, rs2==x12, rd==x18, rs1_b4_val == 0, rs2_b3_val == 2, rs1_b7_val == 247
// opcode: pbsad ; op1:x23; op2:x12; dest:x18; op1val:0xf7050c000e091305;  op2val:0xf7df0908021301fd
TEST_RR_OP(pbsad, x18, x23, x12, 0x0000000000000000, 0xf7050c000e091305, 0xf7df0908021301fd, x6, 88, x10)

inst_30:
// rs1==x0, rs2==x20, rd==x2, rs1_b3_val == 170, rs2_b3_val == 170, rs2_b1_val == 253, rs1_b5_val == 64
// opcode: pbsad ; op1:x0; op2:x20; dest:x2; op1val:0x60640f7aa0b1310;  op2val:0x208fe0daa08fdbf
TEST_RR_OP(pbsad, x2, x0, x20, 0x0000000000000000, 0x60640f7aa0b1310, 0x208fe0daa08fdbf, x6, 96, x10)

inst_31:
// rs1==x20, rs2==x19, rd==x0, rs1_b3_val == 223, rs1_b1_val == 223
// opcode: pbsad ; op1:x20; op2:x19; dest:x0; op1val:0x130f02f7df10df0a;  op2val:0x5030012f707110d
TEST_RR_OP(pbsad, x0, x20, x19, 0x0000000000000000, 0x130f02f7df10df0a, 0x5030012f707110d, x6, 104, x10)

inst_32:
// rs1_b3_val == 247, rs1_b5_val == 254, rs2_b0_val == 8, rs1_b1_val == 191
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfb13fe0ff70abf03;  op2val:0x20401309010c2008
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfb13fe0ff70abf03, 0x20401309010c2008, x6, 112, x10)

inst_33:
// rs1_b3_val == 251, rs1_b5_val == 85, rs2_b2_val == 251
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x40555500fb09bf80;  op2val:0x7090e0feffb070f
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x40555500fb09bf80, 0x7090e0feffb070f, x6, 120, x10)

inst_34:
// rs1_b3_val == 253, rs2_b1_val == 127, rs1_b7_val == 8
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x8110f0bfd0c060e;  op2val:0xaa7f55097fff7fbf
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x8110f0bfd0c060e, 0xaa7f55097fff7fbf, x6, 128, x10)

inst_35:
// rs1_b3_val == 16, rs1_b6_val == 64, rs2_b0_val == 223, rs1_b5_val == 128, rs2_b1_val == 191
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x1240801110df0108;  op2val:0xfebf11120706bfdf
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x1240801110df0108, 0xfebf11120706bfdf, x6, 136, x10)

inst_36:
// rs1_b3_val == 8, rs1_b2_val == 0, rs1_b7_val == 253
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfd03100108000307;  op2val:0x1207020ffb00f708
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfd03100108000307, 0x1207020ffb00f708, x6, 144, x10)

inst_37:
// rs1_b3_val == 4, rs1_b1_val == 4, rs1_b5_val == 0
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xbf0a000904050407;  op2val:0x7f0d0e0903efef09
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xbf0a000904050407, 0x7f0d0e0903efef09, x6, 152, x10)

inst_38:
// rs1_b2_val == 191, rs2_b5_val == 251, rs2_b0_val == 16, rs2_b3_val == 32
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x911121280bf120d;  op2val:0x40cfb0120df0810
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x911121280bf120d, 0x40cfb0120df0810, x6, 160, x10)

inst_39:
// rs1_b2_val == 247, rs1_b6_val == 4, rs2_b4_val == 170
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfd04fbf704f7f7aa;  op2val:0x50c00aa11aa0d05
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfd04fbf704f7f7aa, 0x50c00aa11aa0d05, x6, 168, x10)

inst_40:
// rs1_b2_val == 251, rs1_b6_val == 128
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x8800f127ffb0a12;  op2val:0xef0a02aa0c08f712
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x8800f127ffb0a12, 0xef0a02aa0c08f712, x6, 176, x10)

inst_41:
// rs1_b2_val == 254, rs2_b0_val == 239
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfb01400f03feff10;  op2val:0xc0a0104021010ef
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfb01400f03feff10, 0xc0a0104021010ef, x6, 184, x10)

inst_42:
// rs1_b2_val == 64, rs2_b4_val == 16
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xf70055000d400702;  op2val:0xfe024010070df755
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xf70055000d400702, 0xfe024010070df755, x6, 192, x10)

inst_43:
// rs1_b2_val == 32, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xf08061104202001;  op2val:0x508aa0e0aaa1313
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xf08061104202001, 0x508aa0e0aaa1313, x6, 200, x10)

inst_44:
// rs1_b2_val == 8, rs2_b4_val == 239
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x130efe114008fd09;  op2val:0xfb0110effb11fedf
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x130efe114008fd09, 0xfb0110effb11fedf, x6, 208, x10)

inst_45:
// rs1_b2_val == 4, rs1_b1_val == 128, rs2_b0_val == 247, rs1_b7_val == 239, rs1_b4_val == 128
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xef050b801004800d;  op2val:0x7110a127f0c13f7
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xef050b801004800d, 0x7110a127f0c13f7, x6, 216, x10)

inst_46:
// rs1_b2_val == 255, rs1_b4_val == 2
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x400b200210ffef0c;  op2val:0x1102df0eaa070609
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x400b200210ffef0c, 0x1102df0eaa070609, x6, 224, x10)

inst_47:
// rs1_b1_val == 170, rs1_b7_val == 255, rs1_b5_val == 239, rs1_b4_val == 127
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xff05ef7f2001aa0f;  op2val:0x550b05fff7fbfd20
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xff05ef7f2001aa0f, 0x550b05fff7fbfd20, x6, 232, x10)

inst_48:
// rs1_b1_val == 85, rs1_b7_val == 4, rs2_b6_val == 247
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x4100509f707550c;  op2val:0xeff7fe060407fd0b
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x4100509f707550c, 0xeff7fe060407fd0b, x6, 240, x10)

inst_49:
// rs2_b2_val == 32, rs2_b1_val == 64
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xdf0fff0707041210;  op2val:0xc06060580204009
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xdf0fff0707041210, 0xc06060580204009, x6, 248, x10)

inst_50:
// rs2_b2_val == 2, rs2_b6_val == 128
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x44006bfdf40fe08;  op2val:0x180fb1107020712
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x44006bfdf40fe08, 0x180fb1107020712, x6, 256, x10)

inst_51:
// rs2_b1_val == 85, rs2_b4_val == 191, rs2_b3_val == 191
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x120e0740800b020d;  op2val:0x6df40bfbf0b55fd
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x120e0740800b020d, 0x6df40bfbf0b55fd, x6, 264, x10)

inst_52:
// rs2_b1_val == 128, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xff010606200b0f07;  op2val:0x5504030705138020
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xff010606200b0f07, 0x5504030705138020, x6, 272, x10)

inst_53:
// rs2_b1_val == 255, rs2_b0_val == 1, rs1_b0_val == 127
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x70f08bf1313137f;  op2val:0x80efaafb07aaff01
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x70f08bf1313137f, 0x80efaafb07aaff01, x6, 280, x10)

inst_54:
// rs2_b0_val == 170, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x62013000804027f;  op2val:0x8df01ef0c04dfaa
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x62013000804027f, 0x8df01ef0c04dfaa, x6, 288, x10)

inst_55:
// rs2_b0_val == 127, rs1_b6_val == 255
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xbfff12bf550f20aa;  op2val:0x40fe05aa0940097f
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xbfff12bf550f20aa, 0x40fe05aa0940097f, x6, 296, x10)

inst_56:
// rs2_b0_val == 254, rs1_b4_val == 253, rs2_b5_val == 247
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xcf740fdfd80fe11;  op2val:0xfd08f703000106fe
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xcf740fdfd80fe11, 0xfd08f703000106fe, x6, 304, x10)

inst_57:
// rs1_b1_val == 127, rs1_b7_val == 2, rs2_b2_val == 85
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x2400a13f7057fdf;  op2val:0x40e04fd065505df
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x2400a13f7057fdf, 0x40e04fd065505df, x6, 312, x10)

inst_58:
// rs2_b0_val == 255, rs1_b4_val == 16, rs1_b1_val == 8
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xb0afb100e0e0803;  op2val:0xdefdf110ef70eff
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xb0afb100e0e0803, 0xdefdf110ef70eff, x6, 320, x10)

inst_59:
// rs1_b1_val == 251, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xf71313ff2008fb08;  op2val:0x55df0506040e2005
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xf71313ff2008fb08, 0x55df0506040e2005, x6, 328, x10)

inst_60:
// rs2_b6_val == 32, rs1_b0_val == 254, rs2_b2_val == 127
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x400312bfff0efbfe;  op2val:0x5200f06087f13ff
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x400312bfff0efbfe, 0x5200f06087f13ff, x6, 336, x10)

inst_61:
// rs2_b6_val == 255, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xe00ffdf400d0580;  op2val:0x13ff0c0c01021101
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xe00ffdf400d0580, 0x13ff0c0c01021101, x6, 344, x10)

inst_62:
// rs2_b5_val == 253, rs1_b6_val == 223
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x10df0f11ef08f70b;  op2val:0x110afdfbff0b7f00
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x10df0f11ef08f70b, 0x110afdfbff0b7f00, x6, 352, x10)

inst_63:
// rs1_b0_val == 85, rs2_b4_val == 64, rs2_b5_val == 127
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x2df0c091200df55;  op2val:0x550b7f40097f8002
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x2df0c091200df55, 0x550b7f40097f8002, x6, 360, x10)

inst_64:
// rs1_b0_val == 239, rs2_b3_val == 223
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x11dfeffb0010bfef;  op2val:0x121100efdf0abf09
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x11dfeffb0010bfef, 0x121100efdf0abf09, x6, 368, x10)

inst_65:
// rs1_b0_val == 247, rs1_b6_val == 254
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x12fe0d03f70013f7;  op2val:0x800afeff20aaff13
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x12fe0d03f70013f7, 0x800afeff20aaff13, x6, 376, x10)

inst_66:
// rs1_b0_val == 251, rs1_b4_val == 254
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xb0e08fefb1055fb;  op2val:0xf120a1004df13f7
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xb0e08fefb1055fb, 0xf120a1004df13f7, x6, 384, x10)

inst_67:
// rs1_b0_val == 253, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x550100fd030a10fd;  op2val:0x4008090f7f03060e
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x550100fd030a10fd, 0x4008090f7f03060e, x6, 392, x10)

inst_68:
// rs2_b5_val == 8, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x7bf5506ff000410;  op2val:0x0608080106fe0d
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x7bf5506ff000410, 0x0608080106fe0d, x6, 400, x10)

inst_69:
// rs2_b5_val == 255, rs1_b5_val == 191, rs2_b4_val == 2
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x903bf0a208002fe;  op2val:0xd20ff02aafbdf13
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x903bf0a208002fe, 0xd20ff02aafbdf13, x6, 408, x10)

inst_70:
// rs2_b4_val == 85, rs1_b4_val == 239
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x34080ef0807fedf;  op2val:0xf7f7045507070b04
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x34080ef0807fedf, 0xf7f7045507070b04, x6, 416, x10)

inst_71:
// rs1_b7_val == 254, rs2_b5_val == 191
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfe100820fd55207f;  op2val:0xfd04bf010f80027f
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfe100820fd55207f, 0xfd04bf010f80027f, x6, 424, x10)

inst_72:
// rs2_b3_val == 253, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xffb110f07bffd01;  op2val:0xdfd08bffdff0512
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xffb110f07bffd01, 0xdfd08bffdff0512, x6, 432, x10)

inst_73:
// rs1_b5_val == 1, rs2_b4_val == 223
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xfe0201081104ff12;  op2val:0xfd067fdf5503fd12
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xfe0201081104ff12, 0xfd067fdf5503fd12, x6, 440, x10)

inst_74:
// rs2_b3_val == 64, rs2_b2_val == 254
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x20e0b020c04107f;  op2val:0x7fff0f0040fe11df
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x20e0b020c04107f, 0x7fff0f0040fe11df, x6, 448, x10)

inst_75:
// rs2_b3_val == 16, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x11100d0aaa7fbf0a;  op2val:0xdf0c550510090604
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x11100d0aaa7fbf0a, 0xdf0c550510090604, x6, 456, x10)

inst_76:
// rs2_b4_val == 128, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xbfff01bffbfb0f0d;  op2val:0x4ff7f8080fe1309
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xbfff01bffbfb0f0d, 0x4ff7f8080fe1309, x6, 464, x10)

inst_77:
// rs2_b2_val == 191, rs1_b7_val == 128
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x800a12df0a0a0213;  op2val:0x10fffd0bfebfffff
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x800a12df0a0a0213, 0x10fffd0bfebfffff, x6, 472, x10)

inst_78:
// rs2_b6_val == 0, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xc0ffdffdf050f06;  op2val:0xaa00020a0a11aa03
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xc0ffdffdf050f06, 0xaa00020a0a11aa03, x6, 480, x10)

inst_79:
// rs1_b5_val == 223, 
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xc0fdf0511120a12;  op2val:0x7050af70dfbdf07
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xc0fdf0511120a12, 0x7050af70dfbdf07, x6, 488, x10)

inst_80:
// rs1_b5_val == rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0, rs1_b0_val == 64, rs1_b6_val == 251, rs2_b3_val == 255, rs1_b2_val == 170, rs2_b7_val == 239, rs2_b1_val == 8, rs2_b5_val == 170, rs2_b4_val == 4, rs1_b4_val == 1
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0x3fbaa0113aa0b40;  op2val:0xef12aa04ff120809
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0x3fbaa0113aa0b40, 0xef12aa04ff120809, x6, 496, x10)

inst_81:
// rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0, rs1_b5_val == 251, rs1_b7_val == 0, rs1_b6_val == 191, rs1_b0_val == 16, rs1_b4_val == 191, rs1_b2_val == 127, rs2_b2_val == 247, rs2_b5_val == 239
// opcode: pbsad ; op1:x30; op2:x29; dest:x31; op1val:0xbffbbf077f0510;  op2val:0xe0aef0507f70803
TEST_RR_OP(pbsad, x31, x30, x29, 0x0000000000000000, 0xbffbbf077f0510, 0xe0aef0507f70803, x6, 504, x10)
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


signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x6_0:
    .fill 64*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
