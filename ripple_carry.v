`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 12:27:39
// Design Name: 
// Module Name: ripple_carry
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


module ripple_carry(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [32:0] s,
    output cout
    );
    wire [30:0]c1;
     fulladder f1(a[0],b[0],cin,s[0],c1[0]);
    genvar i;
    generate for(i=1;i<=30;i=i+1) begin: loop
    fulladder f11(a[i],b[i],c1[i-1],s[i],c1[i]);
    end
    endgenerate
    
    fulladder f04(a[31],b[31],c1[30],s[31],cout);
   
endmodule
