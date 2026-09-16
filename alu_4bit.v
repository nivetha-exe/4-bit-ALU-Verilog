module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] op,
    output reg [3:0] result,
    output reg carry
);

always @(*) begin
    result = 4'b0000;
    carry = 1'b0;

    case (op)
        3'b000: {carry, result} = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ~A;
        3'b110: result = A << 1;
        3'b111: result = A >> 1;
    endcase
end

endmodule