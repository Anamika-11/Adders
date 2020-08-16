`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 00:56:28
// Design Name: 
// Module Name: ps3
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


module ps3(
	input Gi,
	input Pi,
	input Gk,
	input Pk,
	output Gj,
	output Pj
    );
	 
assign Gj=Gi|(Pi&Gk);		
assign Pj=Pi&Pk;		

endmodule
