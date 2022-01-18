`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2021 19:58:27
// Design Name: 
// Module Name: cla_16_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cla_16_bit(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0, B15, B14, B13, B12, B11,B10, B9, B8,B7,B6,B5, B4, B3, B2,B1 ,B0, C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0, SUB, OVF

    );
    input A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0;
    input B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0;
    input SUB;
    output C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0;
    output OVF;
    
    wire D4, D8, D12, D15,D16;
    cla_4_bit CLA0 (.A3(A3), .A2(A2), .A1(A1), .A0(A0), .B3((B3^SUB)), .B2((B2^SUB)), .B1((B1^SUB)), .B0((B0^SUB)), .Cin(SUB), .C3(C3), .C2(C2), .C1(C1), .C0(C0), .Carry(D4));
    cla_4_bit CLA1 (.A3(A7), .A2(A6), .A1(A5), .A0(A4), .B3((B7^SUB)), .B2((B6^SUB)), .B1((B5^SUB)), .B0((B4^SUB)), .Cin(D4), .C3(C7), .C2(C6), .C1(C5), .C0(C4), .Carry(D8));
    cla_4_bit CLA2 (.A3(A11), .A2(A10), .A1(A9), .A0(A8), .B3((B11^SUB)), .B2((B10^SUB)), .B1((B9^SUB)), .B0((B8^SUB)), .Cin(D8), .C3(C11), .C2(C10), .C1(C9), .C0(C8), .Carry(D12));
    cla_4bit_2output CLA3 (.A3(A15), .A2(A14), .A1(A13), .A0(A12), .B3((B15^SUB)), .B2((B14^SUB)), .B1((B13^SUB)), .B0((B12^SUB)), .Cin(D12), .C3(C15), .C2(C14), .C1(C13), .C0(C12), .Carry14(D15), .Carry15(D16));
    
    assign OVF = D16 ^ D15;
    

    
    
endmodule
