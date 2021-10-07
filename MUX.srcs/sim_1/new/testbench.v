`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 12:12:58 PM
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


module testbench();
    reg x, y, sel, clk;
    wire out;
    
    MUX UUT( .x(x), .y(y), .sel(sel), .out(out));
    
    initial begin
        x = 1;
        y = 0;
        sel = 0;
        clk = 0;
        
        #100;
        forever #10 clk = ~clk;
     end
     
     always @(posedge clk) begin
        if (sel == 1)
            sel <= 0;
        else 
            sel <= 1;
     end
endmodule
