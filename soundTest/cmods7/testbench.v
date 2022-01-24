`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 21:20:52
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
    reg clockInWire;
    wire bckWire;
    wire lrckWire;
    wire dataOut;

    integer i;

    localparam CLK_TICKS = 10;

    //oscillatorI2S test(.sck(clockInWire), .bck(bckWire), .lrck(lrckWire));

    //squareWaveGenerator s(.bck(bckWire), .lrck(lrckWire), .data(dataOut) );

    initial begin
        for(i=0; i< CLK_TICKS; i=i+1) begin
            $display("COUNTER VALUE IS %d", i);
            clockInWire = #1 1;
            clockInWire = #1 0;
        end
    end

    //oscillatorI2S test(.sck(clockInWire), .bck(bckWire), .lrck(lrckWire));
    //soundGenerator s(.bck(bckWire), .lrck(lrckWire), .data(dataOut) );


endmodule
