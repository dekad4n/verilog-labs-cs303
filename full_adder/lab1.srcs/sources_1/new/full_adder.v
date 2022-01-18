`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:03:55
// Design Name: 
// Module Name: full_adder
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


module full_adder(input A,
                  input B,
                  input Cin,
                  output Sum,
                  output Carry
    );
    // XOR gate
    assign Sum = (A ^ B ^ Cin);
    // 3 AND part
    wire w1,w2,w3; // outputs of ANDS
    assign w1 = (A & B);
    assign w2 = (A & Cin);
    assign w3 = (B & Cin);
    // w1 or w2 or w3
    assign Carry = (w1 | w2 | w3);
    
    
    
endmodule
