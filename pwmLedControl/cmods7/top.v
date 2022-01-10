`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2022 11:17:24
// Design Name: 
// Module Name: top
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


module top(
    input wire clk,
    output wire redLed,
    output wire blueLed,
    output wire greenLed
);
    //instantiate pwdControl
    pwdControl #(.COUNTER_WIDTH(8), .MAX_COUNT(127)) pwC(.clk_in(clk),.pwd_out(redLed));
    
    assign blueLed  = 1;
    assign greenLed = 1;
endmodule
