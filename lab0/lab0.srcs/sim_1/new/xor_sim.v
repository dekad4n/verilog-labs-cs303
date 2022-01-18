`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2021 15:50:13
// Design Name: 
// Module Name: xor_sim
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


module xor_sim(

    );
    
    // Inputs
    reg A;
    reg B;
    // Outputs
    wire C;
    
    // Instantiate the UUT
    xor_gate UUT(
    .A(A),
    .B(B),
    .C(C)    
    );
    
    // Initialize Inputs
    initial begin
        A = 0;
        B = 0;
        #10;
        A = 1;
        #10;
        A = 0;
        B = 1;
        #10;
        A = 1;
        #10;
    end
    
endmodule
