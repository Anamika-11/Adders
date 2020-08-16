`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2019 00:19:19
// Design Name: 
// Module Name: kogger_stone
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


module kogger_stone(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [32:0] sum,
    output cout
    );
    wire [31:0] g1;
    wire [31:0] p1;
    wire [31:0] g2;
    wire [31:0] p2;
    wire [31:0] g3;
    wire [31:0] p3;
    wire [31:0] g4;
    wire [31:0] p4;
    wire [31:0] g5;
    wire [31:0] p5;
    wire [31:0] g6;
    wire [31:0] p6;

     genvar i;
    assign g1[0]=cin;
    assign p1[0]=0;
   
    generate for(i=1;i<=31;i=i+1) begin
        assign g1[i]=a[i]&b[i];
        assign p1[i]=a[i]^b[i];
    end
    endgenerate
    //level 2
    as a1(p1[0],g1[0],p2[0],g2[0]);
    ps2 p(g1[1],p1[1],g1[0],g2[1]);
    
    generate
	for(i=2;i<=31;i=i+1) begin
		ps3 B(g1[i],p1[i],g1[i-1],p1[i-1],g2[i],p2[i]);
	end
    endgenerate
    //level 3
    assign p3[0]=p2[0];
    assign g3[0]=g2[0];
    as a2(p2[1],g2[1],p3[1],g3[1]);
    ps2 pk(g2[2],p2[2],g2[0],g3[2]);
    ps2 pj(g2[3],p2[3],g2[1],g3[3]);
    
    generate
	for(i=4;i<=31;i=i+1) begin: loop2
		ps3 BC(g2[i],p2[i],g2[i-2],p2[i-2],g3[i],p3[i]);
	end
    endgenerate
    
    assign p4[0]=p3[0];
    assign g4[0]=g3[0];
    assign p4[1]=p3[1];
    assign g4[1]=g3[1];
    as a3(p3[2],g3[2],p4[2],g4[2]);
    as a4(p3[3],g3[3],p4[3],g4[3]);
    ps2 py(g3[4],p3[4],g3[0],g4[4]);
    ps2 po(g3[5],p3[5],g3[1],g4[5]);
    ps2 pp(g3[6],p3[6],g3[2],g4[6]);
    ps2 pu(g3[7],p3[7],g3[3],g4[7]);
    
    generate
	for(i=8;i<=31;i=i+1) begin: loop3
		ps3 t(g3[i],p3[i],g3[i-4],p3[i-4],g4[i],p4[i]);
	end
    endgenerate
    
    generate
	for(i=0;i<4;i=i+1) begin: loop4
		assign p5[i] = p4[i];
		assign g5[i] = g4[i];
	end
    endgenerate
    
    generate
	for(i=4;i<8;i=i+1) begin: loop5
		as a5(p4[i],g4[i],p5[i],g5[i]);	
	end
    endgenerate
    
    generate
	for(i=8;i<16;i=i+1) begin: loop6
		ps2 pt(g4[i],p4[i],g4[i-8],g5[i]);
	end
    endgenerate
    
    generate
	for(i=16;i<32;i=i+1) begin: loop7
		ps3 th(g4[i],p4[i],g4[i-8],p4[i-8],g5[i],p5[i]);
	end
    endgenerate
    
    generate
	for(i=0;i<8;i=i+1) begin: loop8
		assign p6[i] = p5[i];
		assign g6[i] = g5[i];
	end
    endgenerate
    
    generate
	for(i=8;i<16;i=i+1) begin: loop9
		as a7(p5[i],g5[i],p6[i],g6[i]);
	end
    endgenerate
    
    generate
	for(i=16;i<32;i=i+1) begin: loop10
		ps2 pg(g5[i],p5[i],g6[i-16],g6[i]);
	end
    endgenerate
    
    generate
	assign sum[0]=p1[1]^g1[0];
	for(i=1;i<=31;i=i+1) begin: loop11
		sum_generate sd(p1[i],g6[i-1],sum[i]);
	end
    endgenerate
    
    assign cout=g6[31];
    assign sum[32]=cout;
    
endmodule
