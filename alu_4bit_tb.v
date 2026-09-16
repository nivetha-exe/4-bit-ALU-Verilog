`timescale 1ns / 1ps

module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] op;

    wire [3:0] result;
    wire carry;

    alu_4bit DUT (
        .A(A),
        .B(B),
        .op(op),
        .result(result),
        .carry(carry)
    );

    initial begin

        // Addition: 3 + 2 = 5
        A = 4'b0011;
        B = 4'b0010;
        op = 3'b000;
        #10;

        // Subtraction: 7 - 3 = 4
        A = 4'b0111;
        B = 4'b0011;
        op = 3'b001;
        #10;

        // AND: 1100 & 1010 = 1000
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b010;
        #10;

        // OR: 1100 | 1010 = 1110
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b011;
        #10;

        // XOR: 1100 ^ 1010 = 0110
        A = 4'b1100;
        B = 4'b1010;
        op = 3'b100;
        #10;
// Carry test: 15 + 1 = 16
A = 4'b1111;
B = 4'b0001;
op = 3'b000;
#10;
        $finish;
    end

endmodule