`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2019 22:48:43
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
reg [31:0]a,b;
reg cin;
wire [32:0]s;
wire cout;
csel cs(
.a(a),
.b(b),
.cin(cin),
.s(s),
.cout(cout)
);
initial begin
a=4;
b=3;
cin=0;
end
endmodule
