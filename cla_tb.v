`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 23:11:16
// Design Name: 
// Module Name: cla_tb
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



module cla_tb;
    reg [31:0] a,b;
    reg ci;
    wire co;
    wire [32:0] s;
    CLA as(
    .a(a),
    .b(b),
    .ci(ci),
    .co(co),
    .s(s)
    );
    initial begin
    a=9;
    b=4;
    ci=0;
    end
   
endmodule

