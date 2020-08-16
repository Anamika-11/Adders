`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 12:35:59
// Design Name: 
// Module Name: carry_skip
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


module carry_skip(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [32:0] s,
    output cout
    );
    wire [31:0]p;
    wire pout,c0;
    ripple_carry ci(a[31:0],b[31:0],cin,s[31:0],c0);
    generatep pj(a,b,p,pout);
    multiplexer hj(c0,cin,pout,cout);
     assign s[32]=cout;
endmodule
