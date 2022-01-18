`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 00:26:21
// Design Name: 
// Module Name: sim_circ
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


module sim_circ(

    );
    reg X1;
    reg X0;
    reg Y1;
    reg Y0;
    
    wire LT;
    wire EQ;
    wire GT;
    
    greater_lower_equal UUT(
    .X1(X1),
    .X0(X0),
    .Y1(Y1),
    .Y0(Y0),
    .LT(LT),
    .EQ(EQ),
    .GT(GT)
    );
    initial begin
        X1 = 0;
        X0 = 0;
        Y1 = 0;
        Y0 = 0;
        #10;
        Y0 = 1;
        #10;
        Y1 = 1;
        #10;
        Y0 = 0;
        #10;
        X0 = 1;
        #10;
        Y0 = 1;
        #10;
        Y1 = 0;
        #10;
        Y0 = 0;
        #10;
        X1 = 1;
        #10;
        Y0 = 1;
        #10;
        Y1 = 1;
        #10;
        Y0 = 0;
        #10;
        X0 = 0;
        #10;
        Y0 = 1;
        #10;
        Y1 = 0;
        #10;
        Y0 = 0;
        #10;
    end
endmodule
