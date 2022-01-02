`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2022 13:16:29
// Design Name: 
// Module Name: echoBlock
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


module echoBlock(
    input fromArduino,
    output blueLED,
    output toArduino    
    );
    
    assign blueLED = fromArduino;
    assign toArduino = ~fromArduino;
    
    
endmodule
