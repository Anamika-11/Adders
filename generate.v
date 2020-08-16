`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 12:21:04
// Design Name: 
// Module Name: generate
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


module generatep(
    input [31:0] a,
    input [31:0] b,
    output [31:0] p,
    output pout
    );
    assign p=a^b;
    assign pout=&p;
endmodule
