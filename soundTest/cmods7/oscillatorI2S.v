`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 20:53:50
// Design Name: 
// Module Name: oscillatorI2S
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


module oscillatorI2S(
    input sck,
    output bck,
    output lrck
    //output data
);    
    reg [3:0] bcount = 1'b0;
    reg [5:0] lrcount = 1'b0;
    
    //divide by 8 
    /*
    always@(posedge sck) begin
        if (bcount <= 3)
            bcount = bcount + 1;
        else begin
            if (bcount >= 7 )
                bcount = 0;
            else
                bcount = bcount + 1;
        end
    end
    */
    always@(posedge sck) begin
        if (bcount >= 7)
            bcount <= 0;
        else 
            bcount <= bcount + 1;
    end


    always@(negedge bck) begin
        if (lrcount >= 63)
            lrcount <= 0;
        else 
            lrcount <= lrcount + 1;
    
    end

    
    //divide bck by 64 
    /*
    always@(negedge bck) begin
        if (lrcount <= 31)
            lrcount = lrcount + 1;
        else begin
            if (lrcount >= 63 )
                lrcount = 0;
            else
                lrcount = lrcount + 1;
        end
    
    end
    */


assign bck = (bcount <= 3) ? 1'b1 : 1'b0;

assign lrck = (lrcount <= 31) ? 1'b0 : 1'b1;

endmodule
