module adder(
    input wire a,
    input wire b,
    output reg s,
    output reg c
);

    always @(*) begin
        s = a ^ b;
        c = a & b;
    end

endmodule
