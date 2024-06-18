`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 10:22:55
// Design Name: 
// Module Name: TESTBENCH
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


module TESTBENCH;
    reg [7:0] data_in;
    reg [7:0] key;
    wire [7:0] data_encrypted;
    wire [7:0] data_decrypted;

    // Instantiate the top module
    TOP_MODULE TM (
        .data_in(data_in),
        .key(key),
        .data_encrypted(data_encrypted),
        .data_decrypted(data_decrypted)
    );

    initial begin
        // Test cases with 10 different input combinations
        $display("Starting test...");

        data_in = 8'b11001100; key = 8'b10101010; #10;
        $display("Test 1 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b11110000; key = 8'b00001111; #10;
        $display("Test 2 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b10101010; key = 8'b01010101; #10;
        $display("Test 3 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b00001111; key = 8'b11110000; #10;
        $display("Test 4 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b01010101; key = 8'b10101010; #10;
        $display("Test 5 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b00110011; key = 8'b11001100; #10;
        $display("Test 6 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b11000011; key = 8'b00111100; #10;
        $display("Test 7 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b01111000; key = 8'b10000111; #10;
        $display("Test 8 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b10100101; key = 8'b01011010; #10;
        $display("Test 9 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        data_in = 8'b11111111; key = 8'b00000000; #10;
        $display("Test 10 - Input: %b, Key: %b, Encrypted: %b, Decrypted: %b", data_in, key, data_encrypted, data_decrypted);

        $display("All tests completed.");
        $finish; // End the simulation
    end
endmodule
