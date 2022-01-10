`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2022 13:27:06
// Design Name: 
// Module Name: testbench
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


module testbench(
);

    reg inWire = 0;
    wire outWire;
    integer i;
    
    localparam CLK_TICKS = 1000;
    localparam PWM_COUNT = 4;
    
    initial begin
    /*inWire = 0;      
    inWire = #10 1;
    inWire = #10 0;
    inWire = #10 1;
    inWire = #10 0;
    inWire = #10 1;
    inWire = #10 0;
    inWire = #10 1; */
        for(i=0; i< CLK_TICKS; i=i+1) begin
            $display("COUNTER VALUE IS %d", i);
            inWire = #10 1;
            inWire = #10 0;
        end
    end
    
    pwdControl #(
    .COUNTER_WIDTH(8),
    .MAX_COUNT(200)
    ) pwC(.clk_in(inWire), .pwd_out(outWire));

endmodule



