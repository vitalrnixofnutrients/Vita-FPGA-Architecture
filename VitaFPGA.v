// Copyright © 2025 Outfox Semiconductor LLC, All rights reserved.
// EUPL © the European Union 2007, 2016

`default_nettype none
module VitaFPGALogicBlock(Side0, Side1, Side2, Side3);
inout wire [6:0] Side0;
inout wire [6:0] Side1;
inout wire [6:0] Side2;
inout wire [6:0] Side3;
reg [1:0] ProgrammableRom = 2’b11;
reg [4:0] LUT2InputsAndOutputs = 5’b00000;
reg [0:0] BitForwarding = 1’b0;
reg [1:0] BitForwardingOutput = 2’b00;
reg [3:0] LUT2 = 4’b0000;
assign Side0[6:6] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side0[5:5] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] & Side1[5:5] ) | ( Side2[6:6] & Side2[0:0] & Side2[5:5] ) | ( Side3[6:6] & Side3[0:0] & Side3[5:5] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side0[4:4] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] & Side1[4:4] ) | ( Side2[6:6] & Side2[0:0] & Side2[4:4] ) | ( Side3[6:6] & Side3[0:0] & Side3[4:4] ) | ( Side1[5:5] & Side1[1:1] & Side1[4:4] ) | ( Side2[5:5] & Side2[1:1] & Side2[4:4] ) | ( Side3[5:5] & Side3[1:1] & Side3[4:4] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side2[4:4] & Side2[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

//LUT2InputsAndOutputs = 00000 = 0 inputs 4 outputs = side0 and side1 and side2 and side3 = add
//LUT2InputsAndOutputs = 00001 = side0 input, 3 outputs = side1 and side2 and side3 = add
//LUT2InputsAndOutputs = 00010 = side1 input, 3 outputs = side0 and side2 and side3 = 
//LUT2InputsAndOutputs = 00011 = side2 input, 3 outputs = side0 and side1 and side3 = add
//LUT2InputsAndOutputs = 00100 = side3 input, 3 outputs = side0 and side1 and side2 = add
//LUT2InputsAndOutputs = 00101 = side0 input and side1 input, side2 and side3 outputs = side2 and side3
//LUT2InputsAndOutputs = 00110 = side0 input and side2 input, side1 and side 3 outputs = side1 and side3
//LUT2InputsAndOutputs = 00111 =side 0 input and side3 input, side1 and side 2 outputs = side1 and side2
//LUT2InputsAndOutputs = 01000 = side 1 input and side 2 input, side 0 and side 3 outputs = side0 and side3 = add
//LUT2InputsAndOutputs = 01001 = side 1 input and side 3 input, side 0 and side 2 outputs = side0 an d side2 = add
//LUT2InputsAndOutputs = 01010 = side 2 input and side 3 input, side 0 and side 1 outputs = side 0 and side 1 = add
//
//LUT2InputsAndOutputs = 01011 = side0 input and side1 input, side2 output = side2
//LUT2InputsAndOutputs = 01100 = side 0 input and side 1 input, side 3 output = side3
//LUT2InputsAndOutputs = 01101 = side0 input and side2 input, side1 output = side1
//LUT2InputsAndOutputs = 01110 = side0 input and side2 input, side 3 output = side3
//LUT2InputsAndOutputs = 01111 =side 0 input and side3 input, side1 output = side1
//LUT2InputsAndOutputs = 10000 =side 0 input and side3 input, side 2 output = side2
//LUT2InputsAndOutputs = 10001 = side 1 input and side 2 input, side 0 output = side0 = added
//LUT2InputsAndOutputs = 10010 = side 1 input and side 2 input, side 3 output = side3
//LUT2InputsAndOutputs = 10011 = side 1 input and side 3 input, side 0 output = side 0 = added
//LUT2InputsAndOutputs = 10100 = side 1 input and side 3 input, side 2 output = side 22
//LUT2InputsAndOutputs = 10101 = side 2 input and side 3 input, side 0 output = side 0 = added
//LUT2InputsAndOutputs = 10110 = side 2 input and side 3 input, side 1 output = side1
//
//& LUT2[0:0]
//
//( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) )
//
//( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) )
//
// & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) )

assign Side0[3:3] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & LUT2[0:0] ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( Side1[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( Side2[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] )  & ( ( ( ~ Side0[3:3] ) & ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side1[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side1[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side1[3:3] & LUT2[3:3] ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] )  & ( ( ( ~ Side1[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) & ( ( Side1[6:6] & Side1[0:0] & Side1[3:3] ) | ( Side2[6:6] & Side2[0:0] & Side2[3:3] ) | ( Side3[6:6] & Side3[0:0] & Side3[3:3] ) | ( Side1[5:5] & Side1[1:1] & Side1[3:3] ) | ( Side2[5:5] & Side2[1:1] & Side2[3:3] ) | ( Side3[5:5] & Side3[1:1] & Side3[3:3] ) | ( Side1[4:4] & Side1[2:2] & Side1[3:3] ) | ( Side2[4:4] & Side2[2:2] & Side2[3:3] ) | ( Side3[4:4] & Side3[2:2] & Side3[3:3] ) );

assign Side0[2:2] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] & Side1[2:2] ) | ( Side2[6:6] & Side2[0:0] & Side2[2:2] ) | ( Side3[6:6] & Side3[0:0] & Side3[2:2] ) | ( Side1[5:5] & Side1[1:1] & Side1[2:2] ) | ( Side2[5:5] & Side2[1:1] & Side2[2:2] ) | ( Side3[5:5] & Side3[1:1] & Side3[2:2] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side2[4:4] & Side2[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

assign Side0[1:1] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] & Side1[1:1] ) | ( Side2[6:6] & Side2[0:0] & Side2[1:1] ) | ( Side3[6:6] & Side3[0:0] & Side3[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side0[0:0] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side1[6:6] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side1[5:5] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[5:5] ) | ( Side2[6:6] & Side2[0:0] & Side2[5:5] ) | ( Side3[6:6] & Side3[0:0] & Side3[5:5] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side1[4:4] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[4:4] ) | ( Side2[6:6] & Side2[0:0] & Side2[4:4] ) | ( Side3[6:6] & Side3[0:0] & Side3[4:4] ) | ( Side0[5:5] & Side0[1:1] & Side0[4:4] ) | ( Side2[5:5] & Side2[1:1] & Side2[4:4] ) | ( Side3[5:5] & Side3[1:1] & Side3[4:4] ) | ( Side0[4:4] & Side0[2:2] ) | (Side2[4:4] & Side2[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

//LUT2InputsAndOutputs = 00000 = 0 inputs 4 outputs = side0 and side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00001 = side0 input, 3 outputs = side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00010 = side1 input, 3 outputs = side0 and side2 and side3 = 
//LUT2InputsAndOutputs = 00011 = side2 input, 3 outputs = side0 and side1 and side3 = added
//LUT2InputsAndOutputs = 00100 = side3 input, 3 outputs = side0 and side1 and side2 = added
//LUT2InputsAndOutputs = 00101 = side0 input and side1 input, side2 and side3 outputs = side2 and side3
//LUT2InputsAndOutputs = 00110 = side0 input and side2 input, side1 and side 3 outputs = side1 and side3 = added
//LUT2InputsAndOutputs = 00111 =side 0 input and side3 input, side1 and side 2 outputs = side1 and side2 = added
//LUT2InputsAndOutputs = 01000 = side 1 input and side 2 input, side 0 and side 3 outputs = side0 and side3 =
//LUT2InputsAndOutputs = 01001 = side 1 input and side 3 input, side 0 and side 2 outputs = side0 an d side2 =
//LUT2InputsAndOutputs = 01010 = side 2 input and side 3 input, side 0 and side 1 outputs = side 0 and side 1 = added
//
//LUT2InputsAndOutputs = 01011 = side0 input and side1 input, side2 output = side2
//LUT2InputsAndOutputs = 01100 = side 0 input and side 1 input, side 3 output = side3
//LUT2InputsAndOutputs = 01101 = side0 input and side2 input, side1 output = side1 = added
//LUT2InputsAndOutputs = 01110 = side0 input and side2 input, side 3 output = side3
//LUT2InputsAndOutputs = 01111 =side 0 input and side3 input, side1 output = side1 = added
//LUT2InputsAndOutputs = 10000 =side 0 input and side3 input, side 2 output = side2
//LUT2InputsAndOutputs = 10001 = side 1 input and side 2 input, side 0 output = side0 = added
//LUT2InputsAndOutputs = 10010 = side 1 input and side 2 input, side 3 output = side3
//LUT2InputsAndOutputs = 10011 = side 1 input and side 3 input, side 0 output = side 0 = added
//LUT2InputsAndOutputs = 10100 = side 1 input and side 3 input, side 2 output = side 22
//LUT2InputsAndOutputs = 10101 = side 2 input and side 3 input, side 0 output = side 0 = added
//LUT2InputsAndOutputs = 10110 = side 2 input and side 3 input, side 1 output = side1 = added
//
//& LUT2[0:0]
//
//( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) )
//
//( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) )
//
// & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) )

assign Side1[3:3] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & LUT2[0:0] ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & LUT2[0:0] ) | ( Side0[3:3] & LUT2[1:1] ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( Side2[3:3] & LUT2[1:1] ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[3:3] ) | ( Side2[6:6] & Side2[0:0] & Side2[3:3] ) | ( Side3[6:6] & Side3[0:0] & Side3[3:3] ) | ( Side0[5:5] & Side0[1:1] & Side0[3:3] ) | ( Side2[5:5] & Side2[1:1] & Side2[3:3] ) | ( Side3[5:5] & Side3[1:1] & Side3[3:3] ) | ( Side0[4:4] & Side0[2:2] & Side0[3:3] ) | (Side2[4:4] & Side2[2:2] & Side2[3:3] ) | ( Side3[4:4] & Side3[2:2] & Side3[3:3] ) );

assign Side1[2:2] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[2:2] ) | ( Side2[6:6] & Side2[0:0] & Side2[2:2] ) | ( Side3[6:6] & Side3[0:0] & Side3[2:2] ) | ( Side0[5:5] & Side0[1:1] & Side0[2:2] ) | ( Side2[5:5] & Side2[1:1] & Side2[2:2] ) | ( Side3[5:5] & Side3[1:1] & Side3[2:2] ) | ( Side0[4:4] & Side0[2:2] ) | (Side2[4:4] & Side2[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

assign Side1[1:1] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[1:1] ) | ( Side2[6:6] & Side2[0:0] & Side2[1:1] ) | ( Side3[6:6] & Side3[0:0] & Side3[1:1] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side1[0:0] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( ~ BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side2[6:6] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side2[5:5] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[5:5] ) | ( Side1[6:6] & Side1[0:0] & Side1[5:5] ) | ( Side3[6:6] & Side3[0:0] & Side3[5:5] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side2[4:4] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[4:4] ) | ( Side1[6:6] & Side1[0:0] & Side1[4:4] ) | ( Side3[6:6] & Side3[0:0] & Side3[4:4] ) | ( Side0[5:5] & Side0[1:1] & Side0[4:4] ) | ( Side1[5:5] & Side1[1:1] & Side1[4:4] ) | ( Side3[5:5] & Side3[1:1] & Side3[4:4] ) | ( Side0[4:4] & Side0[2:2] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

//LUT2InputsAndOutputs = 00000 = 0 inputs 4 outputs = side0 and side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00001 = side0 input, 3 outputs = side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00010 = side1 input, 3 outputs = side0 and side2 and side3 =  added
//LUT2InputsAndOutputs = 00011 = side2 input, 3 outputs = side0 and side1 and side3 =
//LUT2InputsAndOutputs = 00100 = side3 input, 3 outputs = side0 and side1 and side2 = added
//LUT2InputsAndOutputs = 00101 = side0 input and side1 input, side2 and side3 outputs = side2 and side3 = added
//LUT2InputsAndOutputs = 00110 = side0 input and side2 input, side1 and side 3 outputs = side1 and side3 =
//LUT2InputsAndOutputs = 00111 =side 0 input and side3 input, side1 and side 2 outputs = side1 and side2 = added
//LUT2InputsAndOutputs = 01000 = side 1 input and side 2 input, side 0 and side 3 outputs = side0 and side3 =
//LUT2InputsAndOutputs = 01001 = side 1 input and side 3 input, side 0 and side 2 outputs = side0 an d side2 = added
//LUT2InputsAndOutputs = 01010 = side 2 input and side 3 input, side 0 and side 1 outputs = side 0 and side 1 =
//
//LUT2InputsAndOutputs = 01011 = side0 input and side1 input, side2 output = side2 = added
//LUT2InputsAndOutputs = 01100 = side 0 input and side 1 input, side 3 output = side3
//LUT2InputsAndOutputs = 01101 = side0 input and side2 input, side1 output = side1 =
//LUT2InputsAndOutputs = 01110 = side0 input and side2 input, side 3 output = side3
//LUT2InputsAndOutputs = 01111 =side 0 input and side3 input, side1 output = side1 =
//LUT2InputsAndOutputs = 10000 =side 0 input and side3 input, side 2 output = side2 = added
//LUT2InputsAndOutputs = 10001 = side 1 input and side 2 input, side 0 output = side0 =
//LUT2InputsAndOutputs = 10010 = side 1 input and side 2 input, side 3 output = side3
//LUT2InputsAndOutputs = 10011 = side 1 input and side 3 input, side 0 output = side 0 =
//LUT2InputsAndOutputs = 10100 = side 1 input and side 3 input, side 2 output = side 2 = added
//LUT2InputsAndOutputs = 10101 = side 2 input and side 3 input, side 0 output = side 0 =
//LUT2InputsAndOutputs = 10110 = side 2 input and side 3 input, side 1 output = side1 =
//
//& LUT2[0:0]
//
//& ( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) )
//
//& ( ( ( ~ Side1[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) )
//
// & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) )

assign Side2[3:3] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & LUT2[0:0] ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & LUT2[0:0] ) | ( Side0[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( Side1[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( Side3[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ( ( ( ~ Side0[3:3] ) & ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side1[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side1[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side1[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side1[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side1[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side1[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side3[3:3] & LUT2[3:3] ) ) ) ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[3:3] ) | ( Side1[6:6] & Side1[0:0] & Side1[3:3] ) | ( Side3[6:6] & Side3[0:0] & Side3[3:3] ) | ( Side0[5:5] & Side0[1:1] & Side0[3:3] ) | ( Side1[5:5] & Side1[1:1] & Side1[3:3] ) | ( Side3[5:5] & Side3[1:1] & Side3[3:3] ) | ( Side0[4:4] & Side0[2:2] & Side0[3:3] ) | ( Side1[4:4] & Side1[2:2] & Side1[3:3] ) | ( Side3[4:4] & Side3[2:2] & Side3[3:3] ) );

assign Side2[2:2] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[2:2] ) | ( Side1[6:6] & Side1[0:0] & Side1[2:2] ) | ( Side3[6:6] & Side3[0:0] & Side3[2:2] ) | ( Side0[5:5] & Side0[1:1] & Side0[2:2] ) | ( Side1[5:5] & Side1[1:1] & Side1[2:2] ) | ( Side3[5:5] & Side3[1:1] & Side3[2:2] ) | ( Side0[4:4] & Side0[2:2] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side3[4:4] & Side3[2:2] ) );

assign Side2[1:1] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[1:1] ) | ( Side1[6:6] & Side1[0:0] & Side1[1:1] ) | ( Side3[6:6] & Side3[0:0] & Side3[1:1] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side2[0:0] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( ~ BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

assign Side3[6:6] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) );

assign Side3[5:5] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[5:5] ) | ( Side1[6:6] & Side1[0:0] & Side1[5:5] ) | ( Side2[6:6] & Side2[0:0] & Side2[5:5] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) );

assign Side3[4:4] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[4:4] ) | ( Side1[6:6] & Side1[0:0] & Side1[4:4] ) | ( Side2[6:6] & Side2[0:0] & Side2[4:4] ) | ( Side0[5:5] & Side0[1:1] & Side0[4:4] ) | ( Side1[5:5] & Side1[1:1] & Side1[4:4] ) | ( Side2[5:5] & Side2[1:1] & Side2[4:4] ) | ( Side0[4:4] & Side0[2:2] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side2[4:4] & Side2[2:2] ) );

//LUT2InputsAndOutputs = 00000 = 0 inputs 4 outputs = side0 and side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00001 = side0 input, 3 outputs = side1 and side2 and side3 = added
//LUT2InputsAndOutputs = 00010 = side1 input, 3 outputs = side0 and side2 and side3 =  added
//LUT2InputsAndOutputs = 00011 = side2 input, 3 outputs = side0 and side1 and side3 = added
//LUT2InputsAndOutputs = 00100 = side3 input, 3 outputs = side0 and side1 and side2 =
//LUT2InputsAndOutputs = 00101 = side0 input and side1 input, side2 and side3 outputs = side2 and side3 = added
//LUT2InputsAndOutputs = 00110 = side0 input and side2 input, side1 and side 3 outputs = side1 and side3 = added
//LUT2InputsAndOutputs = 00111 =side 0 input and side3 input, side1 and side 2 outputs = side1 and side2 =
//LUT2InputsAndOutputs = 01000 = side 1 input and side 2 input, side 0 and side 3 outputs = side0 and side3 = added
//LUT2InputsAndOutputs = 01001 = side 1 input and side 3 input, side 0 and side 2 outputs = side0 an d side2 =
//LUT2InputsAndOutputs = 01010 = side 2 input and side 3 input, side 0 and side 1 outputs = side 0 and side 1 =
//
//LUT2InputsAndOutputs = 01011 = side0 input and side1 input, side2 output = side2 =
//LUT2InputsAndOutputs = 01100 = side 0 input and side 1 input, side 3 output = side3 = added
//LUT2InputsAndOutputs = 01101 = side0 input and side2 input, side1 output = side1 =
//LUT2InputsAndOutputs = 01110 = side0 input and side2 input, side 3 output = side3 = added
//LUT2InputsAndOutputs = 01111 =side 0 input and side3 input, side1 output = side1 =
//LUT2InputsAndOutputs = 10000 =side 0 input and side3 input, side 2 output = side2 =
//LUT2InputsAndOutputs = 10001 = side 1 input and side 2 input, side 0 output = side0 =
//LUT2InputsAndOutputs = 10010 = side 1 input and side 2 input, side 3 output = side3 = add
//LUT2InputsAndOutputs = 10011 = side 1 input and side 3 input, side 0 output = side 0 =
//LUT2InputsAndOutputs = 10100 = side 1 input and side 3 input, side 2 output = side 2 =
//LUT2InputsAndOutputs = 10101 = side 2 input and side 3 input, side 0 output = side 0 =
//LUT2InputsAndOutputs = 10110 = side 2 input and side 3 input, side 1 output = side1 =
//
//& LUT2[0:0]
//
//& ( ( ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( Side2[3:3] & LUT2[1:1] ) )
//
//& ( ( ( ~ Side1[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) )
//
// & ( ( ( ~ Side2[3:3] ) & ( ~ Side3[3:3] ) & LUT2[0:0] ) | ( ( ~ Side2[3:3] ) & Side3[3:3] & LUT2[1:1] ) | ( Side2[3:3] & ( ~ Side3[3:3] ) & LUT2[2:2] ) | ( Side2[3:3] & Side3[3:3] & LUT2[3:3] ) ) )

assign Side3[3:3] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & LUT2[0:0] ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & LUT2[0:0] ) | ( Side0[3:3] & LUT2[1:1] ) ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( Side1[3:3] & LUT2[1:1] ) ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( Side2[3:3] & LUT2[1:1] ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side1[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side1[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side1[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side1[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side1[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side1[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side1[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side0[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side0[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side0[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side0[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) & ( ( ( ~ Side1[3:3] ) & ( ~ Side2[3:3] ) & LUT2[0:0] ) | ( ( ~ Side1[3:3] ) & Side2[3:3] & LUT2[1:1] ) | ( Side1[3:3] & ( ~ Side2[3:3] ) & LUT2[2:2] ) | ( Side1[3:3] & Side2[3:3] & LUT2[3:3] ) ) ) ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[3:3] ) | ( Side1[6:6] & Side1[0:0] & Side1[3:3] ) | ( Side2[6:6] & Side2[0:0] & Side2[3:3] ) | ( Side0[5:5] & Side0[1:1] & Side0[3:3] ) | ( Side1[5:5] & Side1[1:1] & Side1[3:3] ) | ( Side2[5:5] & Side2[1:1] & Side2[3:3] ) | ( Side0[4:4] & Side0[2:2] & Side0[3:3] ) | ( Side1[4:4] & Side1[2:2] & Side1[3:3] ) | ( Side2[4:4] & Side2[2:2] & Side2[3:3] ) );

assign Side3[2:2] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[2:2] ) | ( Side1[6:6] & Side1[0:0] & Side1[2:2] ) | ( Side2[6:6] & Side2[0:0] & Side2[2:2] ) | ( Side0[5:5] & Side0[1:1] & Side0[2:2] ) | ( Side1[5:5] & Side1[1:1] & Side1[2:2] ) | ( Side2[5:5] & Side2[1:1] & Side2[2:2] ) | ( Side0[4:4] & Side0[2:2] ) | ( Side1[4:4] & Side1[2:2] ) | ( Side2[4:4] & Side2[2:2] ) );

assign Side3[1:1] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] & Side0[1:1] ) | ( Side1[6:6] & Side1[0:0] & Side1[1:1] ) | ( Side2[6:6] & Side2[0:0] & Side2[1:1] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) );

assign Side3[0:0] = ProgrammableRom[0:0] & BitForwarding[0:0] & ( BitForwardingOutput[0:0] ) & ( BitForwardingOutput[1:1] ) & ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) );

always @(posedge Side0[0:0] or posedge Side0[1:1] or posedge Side0[2:2] or posedge Side0[4:4] or posedge Side0[5:5] or posedge Side0[6:6]) begin
	case @(ProgrammableRom[0:0])
		case (BitForwarding[0:0])
			1'b0:
				case (Side0[6:0])
					7'b1000001:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[0:0] = 1'b0;
						endcase
					7'b1000011:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[1:1] = 1'b0;
						endcase
					7'b1000111:
						BitForwarding[0:0] = 1'b1;
					7'b1001001:
						BitForwardingOutput[0:0] = 1'b0;
					7'b1001011:
						BitForwardingOutput[0:0] = 1'b1;
					7'b1001101:
						BitForwardingOutput[1:1] = 1'b0;
					7'b1001111:
						BitForwardingOutput[1:1] = 1'b1;
					7'b1010001:
						LUT2[0:0] = 1'b0;
					7'b1010011:
						LUT2[0:0] = 1'b1;
					7'b1010101:
						LUT2[1:1] = 1'b0;
					7'b1010111:
						LUT2[1:1] = 1'b1;
					7'b1011001:
						LUT2[2:2] = 1'b0;
					7'b1011011:
						LUT2[2:2] = 1'b1;
					7'b1011101:
						LUT2[3:3] = 1'b0;
					7'b1011111:
						LUT2[3:3] = 1'b1;
					7'b1100001:
						LUT2InputsAndOutputs[0:0] = 1'b0;
					7'b1100011:
						LUT2InputsAndOutputs[0:0] = 1'b1;
					7'b1100101:
						LUT2InputsAndOutputs[1:1] = 1'b0;
					7'b1100111:
						LUT2InputsAndOutputs[1:1] = 1'b1;
					7'b1101001:
						LUT2InputsAndOutputs[2:2] = 1'b0;
					7'b1101011:
						LUT2InputsAndOutputs[2:2] = 1'b1;
					7'b1101101:
						LUT2InputsAndOutputs[3:3] = 1'b0;
					7'b1101111:
						LUT2InputsAndOutputs[3:3] = 1'b1;
					7'b1110001:
						LUT2InputsAndOutputs[4:4] = 1'b0;
					7'b1110011:
						LUT2InputsAndOutputs[4:4] = 1'b1;
				endcase
			1'b1:
				case (Side0[6:0])
					7'b1000101:
						begin
							BitForwarding[0:0] = 1'b0;
							case (BitForwardingOutput[1:0])
								2'b01:
									begin
										Side1[6:6] = 1'b1;
										Side1[4:4] = 1'b1;
										Side1[0:0] = 1'b1;
									end
								2'b10:
									begin
										Side2[6:6] = 1'b1;
										Side2[4:4] = 1'b1;
										Side2[0:0] = 1'b1;
									end
								2'b11:
									begin
										Side3[6:6] = 1'b1;
										Side3[4:4] = 1'b1;
										Side3[0:0] = 1'b1;
									end
							endcase
						end
					default:
						case (BitForwardingOutput[1:0])
							2’b01:
								begin
									Side1[6:0] = Side0[6:0];
								end
							2’b10:
								begin
									Side2[6:0] = Side0[6:0];
								end
							2’b11:
								begin
									Side3[6:0] = Side0[6:0];
								end
						endcase
				endcase
		endcase
	endcase
end
always @(posedge Side1[0:0] or posedge Side1[1:1] or posedge Side1[2:2] or posedge Side1[4:4] or posedge Side1[5:5] or posedge Side1[6:6]) begin
	case (ProgrammableRom[0:0])
		case (BitForwarding[0:0])
			1'b0:
				case (Side1[6:0])
					7'b1000001:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[0:0] = 1'b0;
						endcase
					7'b1000011:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[1:1] = 1'b0;
						endcase
					7'b1000111:
						BitForwarding[0:0] = 1'b1;
					7'b1001001:
						BitForwardingOutput[0:0] = 1'b0;
					7'b1001011:
						BitForwardingOutput[0:0] = 1'b1;
					7'b1001101:
						BitForwardingOutput[1:1] = 1'b0;
					7'b1001111:
						BitForwardingOutput[1:1] = 1'b1;
					7'b1010001:
						LUT2[0:0] = 1'b0;
					7'b1010011:
						LUT2[0:0] = 1'b1;
					7'b1010101:
						LUT2[1:1] = 1'b0;
					7'b1010111:
						LUT2[1:1] = 1'b1;
					7'b1011001:
						LUT2[2:2] = 1'b0;
					7'b1011011:
						LUT2[2:2] = 1'b1;
					7'b1011101:
						LUT2[3:3] = 1'b0;
					7'b1011111:
						LUT2[3:3] = 1'b1;
					7'b1100001:
						LUT2InputsAndOutputs[0:0] = 1'b0;
					7'b1100011:
						LUT2InputsAndOutputs[0:0] = 1'b1;
					7'b1100101:
						LUT2InputsAndOutputs[1:1] = 1'b0;
					7'b1100111:
						LUT2InputsAndOutputs[1:1] = 1'b1;
					7'b1101001:
						LUT2InputsAndOutputs[2:2] = 1'b0;
					7'b1101011:
						LUT2InputsAndOutputs[2:2] = 1'b1;
					7'b1101101:
						LUT2InputsAndOutputs[3:3] = 1'b0;
					7'b1101111:
						LUT2InputsAndOutputs[3:3] = 1'b1;
					7'b1110001:
						LUT2InputsAndOutputs[4:4] = 1'b0;
					7'b1110011:
						LUT2InputsAndOutputs[4:4] = 1'b1;
				endcase
			1'b1:
				case (Side1[6:0])
					7'b1000101:
						begin
							BitForwarding[0:0] = 1'b0;
							case (BitForwardingOutput[1:0])
								2'b01:
									begin
										Side0[6:6] = 1'b1;
										Side0[4:4] = 1'b1;
										Side0[0:0] = 1'b1;
									end
								2'b10:
									begin
										Side2[6:6] = 1'b1;
										Side2[4:4] = 1'b1;
										Side2[0:0] = 1'b1;
									end
								2'b11:
									begin
										Side3[6:6] = 1'b1;
										Side3[4:4] = 1'b1;
										Side3[0:0] = 1'b1;
									end
							endcase
						end
					default:
						case (BitForwardingOutput[1:0])
							2’b00:
								begin
									Side0[6:0] = Side1[6:0];
								end
							2’b10:
								begin
									Side2[6:0] = Side1[6:0];
								end
							2’b11:
								begin
									Side3[6:0] = Side1[6:0];
								end
						endcase
				endcase
		endcase
	endcase
end
always @(posedge Side2[0:0] or posedge Side2[1:1] or posedge Side2[2:2] or posedge Side2[4:4] or posedge Side2[5:5] or posedge Side2[6:6]) begin
	case (ProgrammableRom[0:0])
		case (BitForwarding[0:0])
			1'b0:
				case (Side2[6:0])
					7'b1000001:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[0:0] = 1'b0;
						endcase
					7'b1000011:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[1:1] = 1'b0;
						endcase
					7'b1000111:
						BitForwarding[0:0] = 1'b1;
					7'b1001001:
						BitForwardingOutput[0:0] = 1'b0;
					7'b1001011:
						BitForwardingOutput[0:0] = 1'b1;
					7'b1001101:
						BitForwardingOutput[1:1] = 1'b0;
					7'b1001111:
						BitForwardingOutput[1:1] = 1'b1;
					7'b1010001:
						LUT2[0:0] = 1'b0;
					7'b1010011:
						LUT2[0:0] = 1'b1;
					7'b1010101:
						LUT2[1:1] = 1'b0;
					7'b1010111:
						LUT2[1:1] = 1'b1;
					7'b1011001:
						LUT2[2:2] = 1'b0;
					7'b1011011:
						LUT2[2:2] = 1'b1;
					7'b1011101:
						LUT2[3:3] = 1'b0;
					7'b1011111:
						LUT2[3:3] = 1'b1;
					7'b1100001:
						LUT2InputsAndOutputs[0:0] = 1'b0;
					7'b1100011:
						LUT2InputsAndOutputs[0:0] = 1'b1;
					7'b1100101:
						LUT2InputsAndOutputs[1:1] = 1'b0;
					7'b1100111:
						LUT2InputsAndOutputs[1:1] = 1'b1;
					7'b1101001:
						LUT2InputsAndOutputs[2:2] = 1'b0;
					7'b1101011:
						LUT2InputsAndOutputs[2:2] = 1'b1;
					7'b1101101:
						LUT2InputsAndOutputs[3:3] = 1'b0;
					7'b1101111:
						LUT2InputsAndOutputs[3:3] = 1'b1;
					7'b1110001:
						LUT2InputsAndOutputs[4:4] = 1'b0;
					7'b1110011:
						LUT2InputsAndOutputs[4:4] = 1'b1;
				endcase
			1'b1:
				case (Side2[6:0])
					7'b1000101:
						begin
							BitForwarding[0:0] = 1'b0;
							case (BitForwardingOutput[1:0])
								2'b01:
									begin
										Side0[6:6] = 1'b1;
										Side0[4:4] = 1'b1;
										Side0[0:0] = 1'b1;
									end
								2'b10:
									begin
										Side1[6:6] = 1'b1;
										Side1[4:4] = 1'b1;
										Side1[0:0] = 1'b1;
									end
								2'b11:
									begin
										Side3[6:6] = 1'b1;
										Side3[4:4] = 1'b1;
										Side3[0:0] = 1'b1;
									end
							endcase
						end
					default:
						case (BitForwardingOutput[1:0])
							2’b00:
								begin
									Side0[6:0] = Side2[6:0];
								end
							2’b01:
								begin
									Side1[6:0] = Side2[6:0];
								end
							2’b11:
								begin
									Side3[6:0] = Side2[6:0];
								end
						endcase
				endcase
		endcase
	endcase
end
always @(posedge Side3[0:0] or posedge Side3[1:1] or posedge Side3[2:2] or posedge Side3[4:4] or posedge Side3[5:5] or posedge Side3[6:6]) begin
	case (ProgrammableRom[0:0])
		case (BitForwarding[0:0])
			1'b0:
				case (Side3[6:0])
					7'b1000001:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[0:0] = 1'b0;
						endcase
					7'b1000011:
						case (ProgrammableRom[1:1])
							1'b1:
								ProgrammableRom[1:1] = 1'b0;
						endcase
					7'b1000111:
						BitForwarding[0:0] = 1'b1;
					7'b1001001:
						BitForwardingOutput[0:0] = 1'b0;
					7'b1001011:
						BitForwardingOutput[0:0] = 1'b1;
					7'b1001101:
						BitForwardingOutput[1:1] = 1'b0;
					7'b1001111:
						BitForwardingOutput[1:1] = 1'b1;
					7'b1010001:
						LUT2[0:0] = 1'b0;
					7'b1010011:
						LUT2[0:0] = 1'b1;
					7'b1010101:
						LUT2[1:1] = 1'b0;
					7'b1010111:
						LUT2[1:1] = 1'b1;
					7'b1011001:
						LUT2[2:2] = 1'b0;
					7'b1011011:
						LUT2[2:2] = 1'b1;
					7'b1011101:
						LUT2[3:3] = 1'b0;
					7'b1011111:
						LUT2[3:3] = 1'b1;
					7'b1100001:
						LUT2InputsAndOutputs[0:0] = 1'b0;
					7'b1100011:
						LUT2InputsAndOutputs[0:0] = 1'b1;
					7'b1100101:
						LUT2InputsAndOutputs[1:1] = 1'b0;
					7'b1100111:
						LUT2InputsAndOutputs[1:1] = 1'b1;
					7'b1101001:
						LUT2InputsAndOutputs[2:2] = 1'b0;
					7'b1101011:
						LUT2InputsAndOutputs[2:2] = 1'b1;
					7'b1101101:
						LUT2InputsAndOutputs[3:3] = 1'b0;
					7'b1101111:
						LUT2InputsAndOutputs[3:3] = 1'b1;
					7'b1110001:
						LUT2InputsAndOutputs[4:4] = 1'b0;
					7'b1110011:
						LUT2InputsAndOutputs[4:4] = 1'b1;
				endcase
			1'b1:
				case (Side3[6:0])
					7'b1000101:
						begin
							BitForwarding[0:0] = 1'b0;
							case (BitForwardingOutput[1:0])
								2'b01:
									begin
										Side0[6:6] = 1'b1;
										Side0[4:4] = 1'b1;
										Side0[0:0] = 1'b1;
									end
								2'b10:
									begin
										Side1[6:6] = 1'b1;
										Side1[4:4] = 1'b1;
										Side1[0:0] = 1'b1;
									end
								2'b11:
									begin
										Side2[6:6] = 1'b1;
										Side2[4:4] = 1'b1;
										Side2[0:0] = 1'b1;
									end
							endcase
						end
					default:
						case (BitForwardingOutput[1:0])
							2’b00:
								begin
									Side0[6:0] = Side3[6:0];
								end
							2’b01:
								begin
									Side1[6:0] = Side3[6:0];
								end
							2’b10:
								begin
									Side2[6:0] = Side3[6:0];
								end
						endcase
				endcase
		endcase
	endcase
end
endmodule

//LUT2InputsAndOutputs = 00000 = 0 inputs 4 outputs = side0 and side1 and side2 and side3
//LUT2InputsAndOutputs = 00001 = side0 input, 3 outputs = side1 and side2 and side3
//LUT2InputsAndOutputs = 00010 = side1 input, 3 outputs = side0 and side2 and side3
//LUT2InputsAndOutputs = 00011 = side2 input, 3 outputs = side0 and side1 and side3
//LUT2InputsAndOutputs = 00100 = side3 input, 3 outputs = side0 and side1 and side2
//LUT2InputsAndOutputs = 00101 = side0 input and side1 input, side2 and side3 outputs = side2 and side3
//LUT2InputsAndOutputs = 00110 = side0 input and side2 input, side1 and side 3 outputs = side1 and side3
//LUT2InputsAndOutputs = 00111 =side 0 input and side3 input, side1 and side 2 outputs = side1 and side2
//LUT2InputsAndOutputs = 01000 = side 1 input and side 2 input, side 0 and side 3 outputs = side0 and side3
//LUT2InputsAndOutputs = 01001 = side 1 input and side 3 input, side 0 and side 2 outputs = side0 an d side2
//LUT2InputsAndOutputs = 01010 = side 2 input and side 3 input, side 0 and side 1 outputs = side 0 and side 1
//
//LUT2InputsAndOutputs = 01011 = side0 input and side1 input, side2 output = side2
//LUT2InputsAndOutputs = 01100 = side 0 input and side 1 input, side 3 output = side3
//LUT2InputsAndOutputs = 01101 = side0 input and side2 input, side1 output = side1
//LUT2InputsAndOutputs = 01110 = side0 input and side2 input, side 3 output = side3
//LUT2InputsAndOutputs = 01111 =side 0 input and side3 input, side1 output = side1
//LUT2InputsAndOutputs = 10000 =side 0 input and side3 input, side 2 output = side2
//LUT2InputsAndOutputs = 10001 = side 1 input and side 2 input, side 0 output = side0 
//LUT2InputsAndOutputs = 10010 = side 1 input and side 2 input, side 3 output = side3
//LUT2InputsAndOutputs = 10011 = side 1 input and side 3 input, side 0 output = side 0
//LUT2InputsAndOutputs = 10100 = side 1 input and side 3 input, side 2 output = side 22
//LUT2InputsAndOutputs = 10101 = side 2 input and side 3 input, side 0 output = side 0
//LUT2InputsAndOutputs = 10110 = side 2 input and side 3 input, side 1 output = side1

//Side3 = ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) |  ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) );

//Side2 = ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side1[6:6] & Side1[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

//Side1 = ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side0[6:6] & Side0[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side0[5:5] & Side0[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );

//Side0 = ( ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( ~ LUT2InputsAndOutputs[4:4] ) & ( LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( ~ LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( ~ LUT2InputsAndOutputs[2:2] ) & ( LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) | ( ( LUT2InputsAndOutputs[4:4] ) & ( ~ LUT2InputsAndOutputs[3:3] ) & ( LUT2InputsAndOutputs[2:2] ) & ( ~ LUT2InputsAndOutputs[1:1] ) & ( LUT2InputsAndOutputs[0:0] ) ) ) & ( ( Side1[6:6] & Side1[0:0] ) | ( Side2[6:6] & Side2[0:0] ) | ( Side3[6:6] & Side3[0:0] ) | ( Side1[5:5] & Side1[1:1] ) | ( Side2[5:5] & Side2[1:1] ) | ( Side3[5:5] & Side3[1:1] ) );
