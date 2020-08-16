`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 12:48:12
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
carry_skip cs(
.a(a),
.b(b),
.cin(cin),
.s(s),
.cout(cout)
);
initial begin
a=41;
b=3;
cin=1;
end
endmodule
