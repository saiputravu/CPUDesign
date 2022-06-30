module two_bit_full_adder (
    input wire [1:0] a,
    input wire [1:0] b,
    input wire c_in,

    output wire [1:0] s_out,
    output wire c_out
);

wire int_c_out;

full_adder fa_1 (a[0], b[0], c_in, s_out[0], int_c_out);
full_adder fa_2 (a[1], b[1], int_c_out, s_out[1], c_out);

endmodule
