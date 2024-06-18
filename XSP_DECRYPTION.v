`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:36:01
// Design Name: 
// Module Name: XSP_DECRYPTION
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


module XSP_DECRYPTION(
    input [7:0] data_in,
    input [7:0] key,
    output [7:0] data_out
);
    // Final XOR Operation
    wire [7:0] xor_result1;
    assign xor_result1 = data_in ^ key;

    // Reverse Permutation Operation
    wire [7:0] permuted_result;
    assign permuted_result[7] = xor_result1[7];
    assign permuted_result[6] = xor_result1[4]; // Swap back 5th and 7th bits
    assign permuted_result[5] = xor_result1[5];
    assign permuted_result[4] = xor_result1[6];
    assign permuted_result[3] = xor_result1[1]; // Swap back 2nd and 4th bits
    assign permuted_result[2] = xor_result1[2];
    assign permuted_result[1] = xor_result1[3];
    assign permuted_result[0] = xor_result1[0];

    // Reverse Shift Operation (Circular right shift by 3)
    
    wire [7:0] shift_result;
    assign shift_result = {permuted_result[2:0], permuted_result[7:3]};
    

    // Initial XOR Operation
    assign data_out = shift_result ^ key;

endmodule

