`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2021 15:44:13
// Design Name: 
// Module Name: xor_gate
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


module xor_gate(input A,
                input B,
                output C

    );
    wire w1,w2,w3;
    assign w1 = ~(A & B);
    assign w2 = ~(A & w1);
    assign w3 = ~(B & w1);
    assign C  = ~(w2 & w3);
endmodule
