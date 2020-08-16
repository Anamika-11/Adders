`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 22:45:12
// Design Name: 
// Module Name: csel
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


module csel(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [32:0] s,
    output cout
    );
    wire [31:0]t0,t1,c0,c1;
    
    fulladder f2(a[0],b[0],1'b0,t0[0],c0[0]);
    genvar i;
    generate for(i=1;i<=31;i=i+1) begin: adder_loop
    fulladder f1(a[i],b[i],c0[i-1],t0[i],c0[i]);
    end
    endgenerate
    
    fulladder f3(a[0],b[0],1'b1,t1[0],c1[0]);
    genvar j;
    generate for(j=1;j<=31;j=j+1) begin: loop
    fulladder f4(a[j],b[j],c1[j-1],t1[j],c1[j]);
    end
    endgenerate
    
    multiplexer mcarry(c0[31],c1[31],cin,cout);
   
    genvar k;
    generate for(k=0;k<=31;k=k+1) begin: carry_loop
    multiplexer m0(t0[k],t1[k],cin,s[k]);
    end
    endgenerate
    assign s[32]=cout;
endmodule
