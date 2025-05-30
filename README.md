A Perfect Public Domain FPGA Architecture that works despite containing silicon defects

A Logic Block that after manufacturing, does not pass all tests, would be sent a command that would cause only a single individual Logic Block to become bricked. This is possible because both Programmable Read Only Memory Bits in a Logic Block are at 1'b1 after manufacturing, so setting ProgrammableROM[0:0] to 1'b0 before setting ProgrammableROM[1:1] to 1'b0 would brick a single Logic Block. However, a Logic Block that after manufacturing, passes all the tests, would instead have ProgrammableRom[1:1] set to 1'b0 before ProgrammableRom[0:0] is set to 1'b1, which would prevent itself from becoming bricked. Basically, setting ProgrammableRom[1:1] to 1'b0 before ProgrammableRom[0:0] is set to 1'b0 prevents ProgrammableRom[0:0] from being set to 1'b0. A Logic Block that works but cannot prevent itself from being bricked will be bricked after manufacturing. If, for any reason, a single individual Logic Block fails to be bricked, then all of its Neighboring Logic Blocks will be bricked. If any one of its Neighboring Logic Blocks fail to be bricked... so on and so forth.

Each Logic Block contains four sides. A Logic Block can have one bit input from one side and three one bit outputs to three other sides, two one bit inputs from two sides and one bit output to one of two non-input sides, two one bit inputs from two sides and two one bit outputs to two of the non-input sides. A Logic Block can receive three one bit inputs from three sides and output to the side that the BitForwardingOutput[1:0] value points to regardless of the Logic Block's LUT2InputsAndOutputs[4:0] value and regardless of the Logic Block's BitForwarding[0:0] value. A Logic Block can receive one three bit input from one side and two one bit inputs from two sides to receive an entire reconfiguration command. By default, it is not in BitForwarding mode, meaning that BitForwarding[0:0] is set to 1'b0. After manufacturing, while BitForwarding[0:0] is set to 1'b0, each Logic Block can perform one of 25 commands. After testing, each non-bricked Logic Block can perform one of 23 commands when BitForwarding[0:0] is set to 1'b0. This is because two of the commands are ignored, the command that bricks the Logic Block, and the command that prevents the bricking of the Logic Block, because after manufacturing and after testing, a command was executed that prevented it from bricking itself. 21 of the working commands change the sram bits to 1'b0 or 1'b0, and 1 of the commands changes BitForwarding[0:0] to 1'b1. When in bit forwarding mode, if it receives a specific command, it will set BitForwarding[0:0] to 1'b0 and forward the specific command to wherever BitForwardingOutput[1:0] points to. A Logic Block can also have a five bit input from one side, which it can receive as either a command, or bit forward it to wherever BitForwardingOutput[1:0] points to.

In short, a FPGA Architecture that works despite containing silicon defects and also has the feature of not requiring a central reconfiguration register. This is more than just parallel reconfiguration, because one part of the FPGA can be loading one bitstream while another part of the FPGA can be loading another bitstream. A reconfiguration bitstream decompression soft core is possible. Each Logic Block can have one or more input and / or output sides, can have as many bits in its internal Lookup Table as one wants, and when you supply a clock signal to the leftmost and rightmost pin on any one of the one or more sides, the clock signal propagates to all of the output sides and because the Logic Block is designed to only output when both clock wires are the value of 1'b1 and one clock wire may take a longer path than another and therefore the clock duration needs to be extended, that means that a single clock signal, supplied to both of those pins, can clock a whole bitstream. This also means that there is no such thing as a single clock source for the entire chip, there is also no such thing as a fixed amount of phase lock loops because one could be constructed from a few Logic Blocks, and there is no such thing as a fixed amount of local clock sources, because each logic block can be given a unique clock source, but one might not want to do that, but instead give a bunch of Logic Blocks a single clock source. The clock signal can be output to only the side that BitForwardingOutput points to or the outputting sides that it is programmed to output to, or it could output to all of the output sides the clock signals, which would probably waste more power, but might be good for cryptography because of it's constant-rate power consumption, kind of like constant-time cryptographic algorithms.

Problems:

* I wonder how to tell the OpenLane toolchain how to create a grid of Logic Blocks instead of just one. I would also have to tell the OpenLane toolchain where the efabless bare die I/O pins are located and how to connect seven pins at a time to a specific Logic Block. * I also have to write a Verilog to bitstream toolchain that I would license under the Unlicense and I could formally verify it. No, I will not edit my source code to bend it to proprietary FPGA toolchains that won't synthesize my code unlike OpenLane which gave me a Magic and GDSII file, I’ll try all sorts of toolchains to see what does, such as by trying QuickLogic’s fully open source toolchain. If you want to fix my code in your own repos to make it work with a proprietary toolchain, go ahead, it’s Public Domain. I won’t though for now, sorry.

-------------------------------------------------------------------------

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>
