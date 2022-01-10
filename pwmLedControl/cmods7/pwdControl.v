`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2022 20:04:42
// Design Name: 
// Module Name: pwdControl
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


module pwdControl #(
    parameter COUNTER_WIDTH = 3,
    parameter MAX_COUNT = 7
)(
    input clk_in,
    output pwd_out
);

    reg [COUNTER_WIDTH-1:0] pwm_count = 1'b0;

    always@(posedge clk_in) begin
        if (pwm_count >= MAX_COUNT)
            pwm_count <= 'b0;
        else
            pwm_count <= pwm_count + 1;
    end

    assign pwd_out = (pwm_count >= MAX_COUNT) ? 1'b0 : 1'b1;




endmodule
