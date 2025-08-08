module alu (
    input [3:0] a,
    input [3:0] b,
    input [1:0] op,
    output reg [3:0] result
);

always @(*) begin
    case(op)
        2'b00: result = a + b;  // ADD
        2'b01: result = a - b;  // SUB
        2'b10: result = a & b;  // AND
        2'b11: result = a | b;  // OR
    endcase
end

endmodule
