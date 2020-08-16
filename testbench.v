`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 16:38:13
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

module testbench;
    reg [31:0] a;
	reg [31:0] b;
	reg cin;
	wire [32:0] sum;
	wire cout;
	
	kogger_stone ks2(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
	);
	
	initial begin
	a=3;
	b=1;
	cin=0;
	end
	
endmodule
