Overview
The XOR-Shift-Permutation (XSP) encryption algorithm operates on 8-bit plaintext blocks using an 8-bit key. It involves a series of XOR operations, bit shifts, and permutations to encrypt the plaintext. The decryption algorithm reverses these steps to retrieve the original plaintext.

Encryption Process
XOR Operation: XOR the plaintext block with the key.
Shift Operation: Circular left shift the result by 3 bits.
Permutation: Swap the 2nd and 4th bits, and the 5th and 7th bits of the result.
Final XOR Operation: XOR the result with the original key again to produce the final encrypted output.




Decryption Process
Final XOR Operation: XOR the ciphertext block with the key.
Reverse Permutation: Swap the 2nd and 4th bits, and the 5th and 7th bits of the result (reverse the permutation).
Shift Operation: Circular right shift the result by 3 bits.
Initial XOR Operation: XOR the result with the key again to produce the final decrypted output.
