`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2021 17:25:32
// Design Name: 
// Module Name: ripple_carry_adder_16_bit
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


module ripple_carry_adder_16_bit(A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0, B15, B14, B13, B12, B11,B10, B9, B8,B7,B6,B5, B4, B3, B2,B1 ,B0, C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0, SUB, OVF
    );
    input A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0;
    input B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0;
    input SUB;
    output C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0;
    output OVF;
    wire D15,D14,D13,D12,D11,D10,D9,D8,D7,D6,D5,D4,D3,D2,D1,D0;
    
    full_adder FA0 (.A(A0),.B((B0^SUB)),.Cin(SUB),.Sum(C0),.Carry(D0));
    full_adder FA1 (.A(A1),.B((B1^SUB)),.Cin(D0),.Sum(C1),.Carry(D1));
    full_adder FA2 (.A(A2),.B((B2^SUB)),.Cin(D1),.Sum(C2),.Carry(D2));
    full_adder FA3 (.A(A3),.B((B3^SUB)),.Cin(D2),.Sum(C3),.Carry(D3));
    full_adder FA4 (.A(A4),.B((B4^SUB)),.Cin(D3),.Sum(C4),.Carry(D4));
    full_adder FA5 (.A(A5),.B((B5^SUB)),.Cin(D4),.Sum(C5),.Carry(D5));
    full_adder FA6 (.A(A6),.B((B6^SUB)),.Cin(D5),.Sum(C6),.Carry(D6));
    full_adder FA7 (.A(A7),.B((B7^SUB)),.Cin(D6),.Sum(C7),.Carry(D7));
    full_adder FA8 (.A(A8),.B((B8^SUB)),.Cin(D7),.Sum(C8),.Carry(D8));
    full_adder FA9 (.A(A9),.B((B9^SUB)),.Cin(D8),.Sum(C9),.Carry(D9));
    full_adder FA10 (.A(A10),.B((B10^SUB)),.Cin(D9),.Sum(C10),.Carry(D10));
    full_adder FA11 (.A(A11),.B((B11^SUB)),.Cin(D10),.Sum(C11),.Carry(D11));
    full_adder FA12 (.A(A12),.B((B12^SUB)),.Cin(D11),.Sum(C12),.Carry(D12));
    full_adder FA13 (.A(A13),.B((B13^SUB)),.Cin(D12),.Sum(C13),.Carry(D13));
    full_adder FA14 (.A(A14),.B((B14^SUB)),.Cin(D13),.Sum(C14),.Carry(D14));
    full_adder FA15 (.A(A15),.B((B15^SUB)),.Cin(D14),.Sum(C15),.Carry(D15));
    
    assign OVF = D15 ^ D14;
    
endmodule
