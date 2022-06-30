module full_adder(
    input wire a,
    input wire b,
    input wire c_in,

    output wire s_out,
    output reg c_out
);

// Internal connections
wire int_s1, int_c1, int_c2;

adder adder1(a, b, int_s1, int_c1);
adder adder2(int_s1, c_in, s_out, int_c2);

always @(*) begin
    c_out = int_c1 || int_c2;
end

endmodule
