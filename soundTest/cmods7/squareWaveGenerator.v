`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2022 20:04:15
// Design Name: 
// Module Name: squareWaveGenerator
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


module squareWaveGenerator(
    input bck,
    input lrck,
    output data
);

    //audio levels high & low 32bits zero padded
    reg [0:31] hw32 = {1'b0, 16'H7FF5, 15'H0};
    reg [0:31] lw32 = {1'b0, 16'H8001, 15'H0};

    //reg [0:63] HW64 = {1'b0, 16'H7FF5, 15'H0, 1'b0, 16'H7FF5, 15'H0};
    
    reg [6:0] lCount = 1'b0;
    reg [6:0] rCount = 1'b0;
    
    wire leftOut;
    wire rightOut;

    wire leftSelect = ~lrck;
    
    wire leftCount;
    wire rightCount;
    
    always@(negedge leftCount) begin
        if (lCount == 32)
           lCount <= 0;
        lCount <= lCount + 1;
    end

    always@(negedge rightCount) begin
        if (rCount == 32)
           rCount <= 0;
        rCount <= rCount + 1;
    end
    
    and leftAnd(leftCount, leftSelect, bck); 
    and rightAnd(rightCount, lrck, bck); 
    
    or dataOr(data, leftOut, rightOut);

    assign leftOut = hw32[lCount];
    assign rightOut = hw32[rCount];


endmodule
