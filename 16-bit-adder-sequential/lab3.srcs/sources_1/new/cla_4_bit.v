`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2021 19:59:04
// Design Name: 
// Module Name: cla_4_bit
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


module cla_4_bit(A3, A2, A1 , A0, B3, B2, B1, B0, Cin, C3, C2, C1, C0, Carry
    );
    
    input A3, A2, A1, A0, B3, B2, B1, B0, Cin;
    output C3, C2, C1, C0, Carry;
    
    wire G0,G1,G2,G3,P0,P1,P2,P3;
    
    assign G0 = (A0 & B0);
    assign G1 = (A1 & B1);
    assign G2 = (A2 & B2);
    assign G3 = (A3 & B3);
    
    assign P0 = (A0 ^ B0);
    assign P1 = (A1 ^ B1);
    assign P2 = (A2 ^ B2);
    assign P3 = (A3 ^ B3);
    
    wire D0, D1, D2;
    assign D0 = (G0 | (P0 & Cin));
    assign D1 = (G1 | (P1 & G0) | (P1 & P0 & Cin));
    assign D2 = (G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & Cin));
    assign Carry = (G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & Cin));
    
    assign C0 = P0 ^ Cin;
    assign C1 = P1 ^ D0;
    assign C2 = P2 ^ D1;
    assign C3 = P3 ^ D2;
    
    
        
endmodule
