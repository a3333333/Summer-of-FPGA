`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2022 12:45:16
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
    input clkIn,
    output sckOut,
    output bckOut,
    output lrckOut,
    output dataOut
    );
    
    wire sckNet;
    wire resetSck = 0;
    wire lockedSck = 0;
    
    clk_wiz_0 sckGenerator( .clk_out1(sckNet), .reset(resetSck), .locked(lockedSck), .clk_in1(clkIn));
          
    oscillatorI2S oscI2S(.sck(sckNet), .bck(bckOut), .lrck(lrckOut));

    //soundGenerator s400Hz(.bck(bckOut), .lrck(lrckOut), .data(dataOut) );
    squareWaveGenerator s400Hz(.bck(bckOut), .lrck(lrckOut), .data(dataOut) );
    
    assign sckOut = sckNet;

    
endmodule
