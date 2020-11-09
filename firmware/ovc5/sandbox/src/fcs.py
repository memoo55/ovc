#!/usr/bin/env python3
from nmigen import *
import struct


class FCS(Elaboratable):
    '''
    Ethernet FCS calculator for a 64-bit datapath
    '''

    def __init__(self):
        self.data = Signal(64)
        self.crc = Signal(32)
        self.clear = Signal()

    def elaborate(self, platform):
        m = Module()

        # register the data in this module to help timing
        d = Signal(64)
        # flip the inbound bits around, because reasons
        m.d.sync += [d.eq(self.data[::-1])]

        # internal signal with the reversed inverted CRC
        c = Signal(32, reset=0xffff_ffff)

        with m.If(self.clear):
            m.d.sync += [
                self.crc.eq(self.crc.reset),
                c.eq(c.reset)
            ]
        with m.Else():
            m.d.sync += [
                # flip bits back around and invert, because reasons
                self.crc.eq(~c[::-1]),

                # the madness begins here
                c.eq(
                    Cat(
                        c[0] ^ c[2] ^ c[5] ^ c[12] ^ c[13] ^ c[15] ^ c[16] ^ c[18] ^ c[21] ^ c[22] ^ c[23] ^ c[26] ^ c[28] ^ c[29] ^ c[31] ^ d[0] ^ d[6] ^ d[9] ^ d[10] ^ d[12] ^ d[16] ^ d[24] ^ d[25] ^ d[26] ^ d[28] ^ d[29] ^ d[30] ^ d[31] ^ d[32] ^ d[34] ^ d[37] ^ d[44] ^ d[45] ^ d[47] ^ d[48] ^ d[50] ^ d[53] ^ d[54] ^ d[55] ^ d[58] ^ d[60] ^ d[61] ^ d[63],
                        c[1] ^ c[2] ^ c[3] ^ c[5] ^ c[6] ^ c[12] ^ c[14] ^ c[15] ^ c[17] ^ c[18] ^ c[19] ^ c[21] ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[6] ^ d[7] ^ d[9] ^ d[11] ^ d[12] ^ d[13] ^ d[16] ^ d[17] ^ d[24] ^ d[27] ^ d[28] ^ d[33] ^ d[34] ^ d[35] ^ d[37] ^ d[38] ^ d[44] ^ d[46] ^ d[47] ^ d[49] ^ d[50] ^ d[51] ^ d[53] ^ d[56] ^ d[58] ^ d[59] ^ d[60] ^ d[62] ^ d[63],
                        c[0] ^ c[3] ^ c[4] ^ c[5] ^ c[6] ^ c[7] ^ c[12] ^ c[19] ^ c[20] ^ c[21] ^ c[23] ^ c[25] ^ c[26] ^ c[27] ^ d[0] ^ d[1] ^ d[2] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[13] ^ d[14] ^ d[16] ^ d[17] ^ d[18] ^ d[24] ^ d[26] ^ d[30] ^ d[31] ^ d[32] ^ d[35] ^ d[36] ^ d[37] ^ d[38] ^ d[39] ^ d[44] ^ d[51] ^ d[52] ^ d[53] ^ d[55] ^ d[57] ^ d[58] ^ d[59],
                        c[0] ^ c[1] ^ c[4] ^ c[5] ^ c[6] ^ c[7] ^ c[8] ^ c[13] ^ c[20] ^ c[21] ^ c[22] ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ d[1] ^ d[2] ^ d[3] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[14] ^ d[15] ^ d[17] ^ d[18] ^ d[19] ^ d[25] ^ d[27] ^ d[31] ^ d[32] ^ d[33] ^ d[36] ^ d[37] ^ d[38] ^ d[39] ^ d[40] ^ d[45] ^ d[52] ^ d[53] ^ d[54] ^ d[56] ^ d[58] ^ d[59] ^ d[60],
                        c[1] ^ c[6] ^ c[7] ^ c[8] ^ c[9] ^ c[12] ^ c[13] ^ c[14] ^ c[15] ^ c[16] ^ c[18] ^ c[25] ^ c[26] ^ c[27] ^ c[31] ^ d[0] ^ d[2] ^ d[3] ^ d[4] ^ d[6] ^ d[8] ^ d[11] ^ d[12] ^ d[15] ^ d[18] ^ d[19] ^ d[20] ^ d[24] ^ d[25] ^ d[29] ^ d[30] ^ d[31] ^ d[33] ^ d[38] ^ d[39] ^ d[40] ^ d[41] ^ d[44] ^ d[45] ^ d[46] ^ d[47] ^ d[48] ^ d[50] ^ d[57] ^ d[58] ^ d[59] ^ d[63],
                        c[5] ^ c[7] ^ c[8] ^ c[9] ^ c[10] ^ c[12] ^ c[14] ^ c[17] ^ c[18] ^ c[19] ^ c[21] ^ c[22] ^ c[23] ^ c[27] ^ c[29] ^ c[31] ^ d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[10] ^ d[13] ^ d[19] ^ d[20] ^ d[21] ^ d[24] ^ d[28] ^ d[29] ^ d[37] ^ d[39] ^ d[40] ^ d[41] ^ d[42] ^ d[44] ^ d[46] ^ d[49] ^ d[50] ^ d[51] ^ d[53] ^ d[54] ^ d[55] ^ d[59] ^ d[61] ^ d[63],
                        c[6] ^ c[8] ^ c[9] ^ c[10] ^ c[11] ^ c[13] ^ c[15] ^ c[18] ^ c[19] ^ c[20] ^ c[22] ^ c[23] ^ c[24] ^ c[28] ^ c[30] ^ d[1] ^ d[2] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[11] ^ d[14] ^ d[20] ^ d[21] ^ d[22] ^ d[25] ^ d[29] ^ d[30] ^ d[38] ^ d[40] ^ d[41] ^ d[42] ^ d[43] ^ d[45] ^ d[47] ^ d[50] ^ d[51] ^ d[52] ^ d[54] ^ d[55] ^ d[56] ^ d[60] ^ d[62],
                        c[0] ^ c[2] ^ c[5] ^ c[7] ^ c[9] ^ c[10] ^ c[11] ^ c[13] ^ c[14] ^ c[15] ^ c[18] ^ c[19] ^ c[20] ^ c[22] ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[7] ^ d[8] ^ d[10] ^ d[15] ^ d[16] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[28] ^ d[29] ^ d[32] ^ d[34] ^ d[37] ^ d[39] ^ d[41] ^ d[42] ^ d[43] ^ d[45] ^ d[46] ^ d[47] ^ d[50] ^ d[51] ^ d[52] ^ d[54] ^ d[56] ^ d[57] ^ d[58] ^ d[60],
                        c[0] ^ c[1] ^ c[2] ^ c[3] ^ c[5] ^ c[6] ^ c[8] ^ c[10] ^ c[11] ^ c[13] ^ c[14] ^ c[18] ^ c[19] ^ c[20] ^ c[22] ^ c[25] ^ c[27] ^ c[28] ^ c[31] ^ d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[8] ^ d[10] ^ d[11] ^ d[12] ^ d[17] ^ d[22] ^ d[23] ^ d[28] ^ d[31] ^ d[32] ^ d[33] ^ d[34] ^ d[35] ^ d[37] ^ d[38] ^ d[40] ^ d[42] ^ d[43] ^ d[45] ^ d[46] ^ d[50] ^ d[51] ^ d[52] ^ d[54] ^ d[57] ^ d[59] ^ d[60] ^ d[63],
                        c[0] ^ c[1] ^ c[2] ^ c[3] ^ c[4] ^ c[6] ^ c[7] ^ c[9] ^ c[11] ^ c[12] ^ c[14] ^ c[15] ^ c[19] ^ c[20] ^ c[21] ^ c[23] ^ c[26] ^ c[28] ^ c[29] ^ d[1] ^ d[2] ^ d[4] ^ d[5] ^ d[9] ^ d[11] ^ d[12] ^ d[13] ^ d[18] ^ d[23] ^ d[24] ^ d[29] ^ d[32] ^ d[33] ^ d[34] ^ d[35] ^ d[36] ^ d[38] ^ d[39] ^ d[41] ^ d[43] ^ d[44] ^ d[46] ^ d[47] ^ d[51] ^ d[52] ^ d[53] ^ d[55] ^ d[58] ^ d[60] ^ d[61],
                        c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[7] ^ c[8] ^ c[10] ^ c[18] ^ c[20] ^ c[23] ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31] ^ d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[9] ^ d[13] ^ d[14] ^ d[16] ^ d[19] ^ d[26] ^ d[28] ^ d[29] ^ d[31] ^ d[32] ^ d[33] ^ d[35] ^ d[36] ^ d[39] ^ d[40] ^ d[42] ^ d[50] ^ d[52] ^ d[55] ^ d[56] ^ d[58] ^ d[59] ^ d[60] ^ d[62] ^ d[63],
                        c[1] ^ c[4] ^ c[8] ^ c[9] ^ c[11] ^ c[12] ^ c[13] ^ c[15] ^ c[16] ^ c[18] ^ c[19] ^ c[22] ^ c[23] ^ c[24] ^ c[25] ^ c[26] ^ c[27] ^ d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[9] ^ d[12] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[20] ^ d[24] ^ d[25] ^ d[26] ^ d[27] ^ d[28] ^ d[31] ^ d[33] ^ d[36] ^ d[40] ^ d[41] ^ d[43] ^ d[44] ^ d[45] ^ d[47] ^ d[48] ^ d[50] ^ d[51] ^ d[54] ^ d[55] ^ d[56] ^ d[57] ^ d[58] ^ d[59],
                        c[9] ^ c[10] ^ c[14] ^ c[15] ^ c[17] ^ c[18] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[24] ^ c[25] ^ c[27] ^ c[29] ^ c[31] ^ d[0] ^ d[1] ^ d[2] ^ d[4] ^ d[5] ^ d[6] ^ d[9] ^ d[12] ^ d[13] ^ d[15] ^ d[17] ^ d[18] ^ d[21] ^ d[24] ^ d[27] ^ d[30] ^ d[31] ^ d[41] ^ d[42] ^ d[46] ^ d[47] ^ d[49] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[56] ^ d[57] ^ d[59] ^ d[61] ^ d[63],
                        c[0] ^ c[10] ^ c[11] ^ c[15] ^ c[16] ^ c[18] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[25] ^ c[26] ^ c[28] ^ c[30] ^ d[1] ^ d[2] ^ d[3] ^ d[5] ^ d[6] ^ d[7] ^ d[10] ^ d[13] ^ d[14] ^ d[16] ^ d[18] ^ d[19] ^ d[22] ^ d[25] ^ d[28] ^ d[31] ^ d[32] ^ d[42] ^ d[43] ^ d[47] ^ d[48] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[57] ^ d[58] ^ d[60] ^ d[62],
                        c[0] ^ c[1] ^ c[11] ^ c[12] ^ c[16] ^ c[17] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31] ^ d[2] ^ d[3] ^ d[4] ^ d[6] ^ d[7] ^ d[8] ^ d[11] ^ d[14] ^ d[15] ^ d[17] ^ d[19] ^ d[20] ^ d[23] ^ d[26] ^ d[29] ^ d[32] ^ d[33] ^ d[43] ^ d[44] ^ d[48] ^ d[49] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56] ^ d[58] ^ d[59] ^ d[61] ^ d[63],
                        c[1] ^ c[2] ^ c[12] ^ c[13] ^ c[17] ^ c[18] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ c[30] ^ d[3] ^ d[4] ^ d[5] ^ d[7] ^ d[8] ^ d[9] ^ d[12] ^ d[15] ^ d[16] ^ d[18] ^ d[20] ^ d[21] ^ d[24] ^ d[27] ^ d[30] ^ d[33] ^ d[34] ^ d[44] ^ d[45] ^ d[49] ^ d[50] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56] ^ d[57] ^ d[59] ^ d[60] ^ d[62],
                        c[0] ^ c[3] ^ c[5] ^ c[12] ^ c[14] ^ c[15] ^ c[16] ^ c[19] ^ c[24] ^ c[25] ^ d[0] ^ d[4] ^ d[5] ^ d[8] ^ d[12] ^ d[13] ^ d[17] ^ d[19] ^ d[21] ^ d[22] ^ d[24] ^ d[26] ^ d[29] ^ d[30] ^ d[32] ^ d[35] ^ d[37] ^ d[44] ^ d[46] ^ d[47] ^ d[48] ^ d[51] ^ d[56] ^ d[57],
                        c[1] ^ c[4] ^ c[6] ^ c[13] ^ c[15] ^ c[16] ^ c[17] ^ c[20] ^ c[25] ^ c[26] ^ d[1] ^ d[5] ^ d[6] ^ d[9] ^ d[13] ^ d[14] ^ d[18] ^ d[20] ^ d[22] ^ d[23] ^ d[25] ^ d[27] ^ d[30] ^ d[31] ^ d[33] ^ d[36] ^ d[38] ^ d[45] ^ d[47] ^ d[48] ^ d[49] ^ d[52] ^ d[57] ^ d[58],
                        c[0] ^ c[2] ^ c[5] ^ c[7] ^ c[14] ^ c[16] ^ c[17] ^ c[18] ^ c[21] ^ c[26] ^ c[27] ^ d[2] ^ d[6] ^ d[7] ^ d[10] ^ d[14] ^ d[15] ^ d[19] ^ d[21] ^ d[23] ^ d[24] ^ d[26] ^ d[28] ^ d[31] ^ d[32] ^ d[34] ^ d[37] ^ d[39] ^ d[46] ^ d[48] ^ d[49] ^ d[50] ^ d[53] ^ d[58] ^ d[59],
                        c[0] ^ c[1] ^ c[3] ^ c[6] ^ c[8] ^ c[15] ^ c[17] ^ c[18] ^ c[19] ^ c[22] ^ c[27] ^ c[28] ^ d[3] ^ d[7] ^ d[8] ^ d[11] ^ d[15] ^ d[16] ^ d[20] ^ d[22] ^ d[24] ^ d[25] ^ d[27] ^ d[29] ^ d[32] ^ d[33] ^ d[35] ^ d[38] ^ d[40] ^ d[47] ^ d[49] ^ d[50] ^ d[51] ^ d[54] ^ d[59] ^ d[60],
                        c[1] ^ c[2] ^ c[4] ^ c[7] ^ c[9] ^ c[16] ^ c[18] ^ c[19] ^ c[20] ^ c[23] ^ c[28] ^ c[29] ^ d[4] ^ d[8] ^ d[9] ^ d[12] ^ d[16] ^ d[17] ^ d[21] ^ d[23] ^ d[25] ^ d[26] ^ d[28] ^ d[30] ^ d[33] ^ d[34] ^ d[36] ^ d[39] ^ d[41] ^ d[48] ^ d[50] ^ d[51] ^ d[52] ^ d[55] ^ d[60] ^ d[61],
                        c[2] ^ c[3] ^ c[5] ^ c[8] ^ c[10] ^ c[17] ^ c[19] ^ c[20] ^ c[21] ^ c[24] ^ c[29] ^ c[30] ^ d[5] ^ d[9] ^ d[10] ^ d[13] ^ d[17] ^ d[18] ^ d[22] ^ d[24] ^ d[26] ^ d[27] ^ d[29] ^ d[31] ^ d[34] ^ d[35] ^ d[37] ^ d[40] ^ d[42] ^ d[49] ^ d[51] ^ d[52] ^ d[53] ^ d[56] ^ d[61] ^ d[62],
                        c[2] ^ c[3] ^ c[4] ^ c[5] ^ c[6] ^ c[9] ^ c[11] ^ c[12] ^ c[13] ^ c[15] ^ c[16] ^ c[20] ^ c[23] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ d[0] ^ d[9] ^ d[11] ^ d[12] ^ d[14] ^ d[16] ^ d[18] ^ d[19] ^ d[23] ^ d[24] ^ d[26] ^ d[27] ^ d[29] ^ d[31] ^ d[34] ^ d[35] ^ d[36] ^ d[37] ^ d[38] ^ d[41] ^ d[43] ^ d[44] ^ d[45] ^ d[47] ^ d[48] ^ d[52] ^ d[55] ^ d[57] ^ d[58] ^ d[60] ^ d[61] ^ d[62],
                        c[2] ^ c[3] ^ c[4] ^ c[6] ^ c[7] ^ c[10] ^ c[14] ^ c[15] ^ c[17] ^ c[18] ^ c[22] ^ c[23] ^ c[24] ^ c[27] ^ c[28] ^ c[30] ^ d[0] ^ d[1] ^ d[6] ^ d[9] ^ d[13] ^ d[15] ^ d[16] ^ d[17] ^ d[19] ^ d[20] ^ d[26] ^ d[27] ^ d[29] ^ d[31] ^ d[34] ^ d[35] ^ d[36] ^ d[38] ^ d[39] ^ d[42] ^ d[46] ^ d[47] ^ d[49] ^ d[50] ^ d[54] ^ d[55] ^ d[56] ^ d[59] ^ d[60] ^ d[62],
                        c[0] ^ c[3] ^ c[4] ^ c[5] ^ c[7] ^ c[8] ^ c[11] ^ c[15] ^ c[16] ^ c[18] ^ c[19] ^ c[23] ^ c[24] ^ c[25] ^ c[28] ^ c[29] ^ c[31] ^ d[1] ^ d[2] ^ d[7] ^ d[10] ^ d[14] ^ d[16] ^ d[17] ^ d[18] ^ d[20] ^ d[21] ^ d[27] ^ d[28] ^ d[30] ^ d[32] ^ d[35] ^ d[36] ^ d[37] ^ d[39] ^ d[40] ^ d[43] ^ d[47] ^ d[48] ^ d[50] ^ d[51] ^ d[55] ^ d[56] ^ d[57] ^ d[60] ^ d[61] ^ d[63],
                        c[1] ^ c[4] ^ c[5] ^ c[6] ^ c[8] ^ c[9] ^ c[12] ^ c[16] ^ c[17] ^ c[19] ^ c[20] ^ c[24] ^ c[25] ^ c[26] ^ c[29] ^ c[30] ^ d[2] ^ d[3] ^ d[8] ^ d[11] ^ d[15] ^ d[17] ^ d[18] ^ d[19] ^ d[21] ^ d[22] ^ d[28] ^ d[29] ^ d[31] ^ d[33] ^ d[36] ^ d[37] ^ d[38] ^ d[40] ^ d[41] ^ d[44] ^ d[48] ^ d[49] ^ d[51] ^ d[52] ^ d[56] ^ d[57] ^ d[58] ^ d[61] ^ d[62],
                        c[6] ^ c[7] ^ c[9] ^ c[10] ^ c[12] ^ c[15] ^ c[16] ^ c[17] ^ c[20] ^ c[22] ^ c[23] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ d[0] ^ d[3] ^ d[4] ^ d[6] ^ d[10] ^ d[18] ^ d[19] ^ d[20] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[26] ^ d[28] ^ d[31] ^ d[38] ^ d[39] ^ d[41] ^ d[42] ^ d[44] ^ d[47] ^ d[48] ^ d[49] ^ d[52] ^ d[54] ^ d[55] ^ d[57] ^ d[59] ^ d[60] ^ d[61] ^ d[62],
                        c[0] ^ c[7] ^ c[8] ^ c[10] ^ c[11] ^ c[13] ^ c[16] ^ c[17] ^ c[18] ^ c[21] ^ c[23] ^ c[24] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31] ^ d[1] ^ d[4] ^ d[5] ^ d[7] ^ d[11] ^ d[19] ^ d[20] ^ d[21] ^ d[23] ^ d[24] ^ d[25] ^ d[26] ^ d[27] ^ d[29] ^ d[32] ^ d[39] ^ d[40] ^ d[42] ^ d[43] ^ d[45] ^ d[48] ^ d[49] ^ d[50] ^ d[53] ^ d[55] ^ d[56] ^ d[58] ^ d[60] ^ d[61] ^ d[62] ^ d[63],
                        c[1] ^ c[8] ^ c[9] ^ c[11] ^ c[12] ^ c[14] ^ c[17] ^ c[18] ^ c[19] ^ c[22] ^ c[24] ^ c[25] ^ c[27] ^ c[29] ^ c[30] ^ c[31] ^ d[2] ^ d[5] ^ d[6] ^ d[8] ^ d[12] ^ d[20] ^ d[21] ^ d[22] ^ d[24] ^ d[25] ^ d[26] ^ d[27] ^ d[28] ^ d[30] ^ d[33] ^ d[40] ^ d[41] ^ d[43] ^ d[44] ^ d[46] ^ d[49] ^ d[50] ^ d[51] ^ d[54] ^ d[56] ^ d[57] ^ d[59] ^ d[61] ^ d[62] ^ d[63],
                        c[2] ^ c[9] ^ c[10] ^ c[12] ^ c[13] ^ c[15] ^ c[18] ^ c[19] ^ c[20] ^ c[23] ^ c[25] ^ c[26] ^ c[28] ^ c[30] ^ c[31] ^ d[3] ^ d[6] ^ d[7] ^ d[9] ^ d[13] ^ d[21] ^ d[22] ^ d[23] ^ d[25] ^ d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[31] ^ d[34] ^ d[41] ^ d[42] ^ d[44] ^ d[45] ^ d[47] ^ d[50] ^ d[51] ^ d[52] ^ d[55] ^ d[57] ^ d[58] ^ d[60] ^ d[62] ^ d[63],
                        c[0] ^ c[3] ^ c[10] ^ c[11] ^ c[13] ^ c[14] ^ c[16] ^ c[19] ^ c[20] ^ c[21] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31] ^ d[4] ^ d[7] ^ d[8] ^ d[10] ^ d[14] ^ d[22] ^ d[23] ^ d[24] ^ d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[32] ^ d[35] ^ d[42] ^ d[43] ^ d[45] ^ d[46] ^ d[48] ^ d[51] ^ d[52] ^ d[53] ^ d[56] ^ d[58] ^ d[59] ^ d[61] ^ d[63],
                        c[1] ^ c[4] ^ c[11] ^ c[12] ^ c[14] ^ c[15] ^ c[17] ^ c[20] ^ c[21] ^ c[22] ^ c[25] ^ c[27] ^ c[28] ^ c[30] ^ d[5] ^ d[8] ^ d[9] ^ d[11] ^ d[15] ^ d[23] ^ d[24] ^ d[25] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[31] ^ d[33] ^ d[36] ^ d[43] ^ d[44] ^ d[46] ^ d[47] ^ d[49] ^ d[52] ^ d[53] ^ d[54] ^ d[57] ^ d[59] ^ d[60] ^ d[62]
                    )
                )
            ]

        return m


def sample_packet():
  return [
        0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54,              # destination MAC
        0x01, 0x23, 0x45, 0x67, 0x89, 0xab,              # source MAC
        0x08, 0x00,                                      # ethertype
        0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04,  # data word 0
        0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08,  # data word 1
        0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c,  # data word 2
        0x00, 0x0d, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x10,  # data word 3
        0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14,  # data word 4
    ]


def python_fcs(p):
    import zlib
    return zlib.crc32(bytes(p))


def sample_packet_64b():
    p = sample_packet()
    # iterate through 64 bits at a time
    words = []
    for i in range(0, round((len(p)-1)/8)):
        # assemble 64 bit chunk
        w = 0
        for b in range(0, 8):
            w += p[i*8 + b] << (b * 8)
        words.append(w)
    return words


def list_to_uint64(p):
    u = 0
    for b in range(8):
        if b < len(p):
            u += p[b] << (b * 8)
    return u


def zero_pad(d, max_len):
    out = []
    out += d
    if len(out) < max_len:
        out += [0] * (max_len - len(out))
    return out


if __name__ == '__main__':

    from nmigen.sim import *
    dut = FCS()
    fcs = dut
    sim = Simulator(fcs)
    sim.add_clock(10e-9)

    def test():
        data = sample_packet()
        print(f'data               software   hardware')
        print(f'----------------------------------------')
        yield
        yield fcs.clear.eq(True)
        yield
        yield fcs.data.eq(list_to_uint64(data[0:8]))
        yield
        yield fcs.clear.eq(False)

        for i in range(11):
            offset = (i+1) * 8
            data64 = list_to_uint64(data[offset:(offset+8)])
            yield fcs.data.eq(data64)

            yield

            if i >= 2:
                old_offset = (i - 2) * 8
                old_input = list_to_uint64(data[old_offset:(old_offset+8)])
                d = zero_pad(data[0:((i-1)*8)], (i-1) * 8)
                crc_so_far = python_fcs(d)
                crc_val = yield fcs.crc
                print(f'{old_input:016x}   {crc_so_far:08x}   {(crc_val):08x}')

    sim.add_sync_process(test)
    with sim.write_vcd("fcs.vcd"):
        sim.run()
