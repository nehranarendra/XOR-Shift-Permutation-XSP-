`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:34:14
// Design Name: 
// Module Name: TOP
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


module TOP (
    input [7:0] data_in,
    input [7:0] key,
    output [7:0] data_encrypted,
    output [7:0] data_decrypted
);
    // Instantiate the encryption module
    
    
    
    XSP_ENCRYPTION enc (
        .data_in(data_in),
        .key(key),
        .data_out(data_encrypted)
    );

    // Instantiate the decryption module
    XSP_DECRYPTION dec (
        .data_in(data_encrypted),
        .key(key),
        .data_out(data_decrypted)
    );
endmodule
