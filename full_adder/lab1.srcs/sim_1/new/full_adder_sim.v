`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2021 21:28:07
// Design Name: 
// Module Name: full_adder_sim
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


module full_adder_sim(

    );
    // Inputs
    reg A;
    reg B;
    reg Cin;
    // Outputs
    wire Sum;
    wire Carry;
    
    // Instantiate the UUT
    full_adder UUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
    );
    
    // Initialize inputs
    initial begin
        A = 0;
        B = 0;
        Cin = 0;
        #10
        Cin = 1;
        #10
        Cin = 0;
        B = 1;
        #10
        Cin = 1;
        #10
        A = 1;
        B = 0;
        Cin = 0;
        #10
        Cin = 1;
        #10
        B = 1;
        Cin = 0;
        #10
        Cin = 1;
    end
    
endmodule
