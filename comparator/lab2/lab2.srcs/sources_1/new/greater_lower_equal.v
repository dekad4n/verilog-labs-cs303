`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 00:17:24
// Design Name: 
// Module Name: greater_lower_equal
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


module greater_lower_equal(input X1,
                           input X0,
                           input Y1,
                           input Y0,
                           output LT,
                           output EQ,
                           output GT
    );
    wire lt1, lt2, lt3;
    
    assign lt1 = (~X1 & Y1);
    assign lt2 = (~X0 & Y1 & Y0);
    assign lt3 = (~X1 & ~X0 & Y0);
    assign LT = lt1 | lt2 | lt3;
    
    
    
    wire gt1, gt2, gt3;
    
    assign gt1 = (X1 & ~Y1);
    assign gt2 = (X1 & X0 & ~Y0);
    assign gt3 = (X0 & ~Y1 & ~Y0);
    
    assign GT = gt1 | gt2 | gt3;
    
    
    assign EQ = ~(GT | LT);
    
endmodule
