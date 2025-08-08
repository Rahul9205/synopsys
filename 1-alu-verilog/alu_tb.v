`timescale 1ns / 1ps

module alu_tb;

reg [3:0] a, b;
reg [1:0] op;
wire [3:0] result;

alu uut (
    .a(a),
    .b(b),
    .op(op),
    .result(result)
);

initial begin
    a = 4'b0011; b = 4'b0001;

    op = 2'b00; #10;  // ADD
    op = 2'b01; #10;  // SUB
    op = 2'b10; #10;  // AND
    op = 2'b11; #10;  // OR

    $finish;
end

endmodule
