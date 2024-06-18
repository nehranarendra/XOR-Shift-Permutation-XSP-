`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:35:18
// Design Name: 
// Module Name: XSP_ENCRYPTION
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


module XSP_ENCRYPTION (
    input [7:0] data_in,
    input [7:0] key,
    output [7:0] data_out
);
    // XOR Operation
    wire [7:0] xor_result1;
    assign xor_result1 = data_in ^ key;

    // Shift Operation (Circular left shift by 3)
    wire [7:0] shift_result;
    assign shift_result = {xor_result1[4:0], xor_result1[7:5]};
         
         
    // Permutation Operation
    wire [7:0] permuted_result;
    assign permuted_result[7] = shift_result[7];
    assign permuted_result[6] = shift_result[4]; // Swap 5th and 7th bits
    assign permuted_result[5] = shift_result[5];
    assign permuted_result[4] = shift_result[6];
    assign permuted_result[3] = shift_result[1]; // Swap 2nd and 4th bits
    assign permuted_result[2] = shift_result[2];
    assign permuted_result[1] = shift_result[3];
    assign permuted_result[0] = shift_result[0];

    // Final XOR Operation
    assign data_out = permuted_result ^ key;

endmodule
