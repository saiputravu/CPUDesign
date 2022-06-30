`timescale 1ns / 1ps

module two_bit_full_adder_tb();

reg [1:0] a,b;
reg c_in;

wire [1:0] s;
wire c_out;

two_bit_full_adder dut (
    .a (a),
    .b (b),
    .c_in (c_in),
    .s_out (s),
    .c_out (c_out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    #10 a = 2'b00; b = 2'b00; c_in = 1'b0;
    #10 a = 2'b00; b = 2'b01; c_in = 1'b0;
    #10 a = 2'b00; b = 2'b10; c_in = 1'b0;
    #10 a = 2'b00; b = 2'b11; c_in = 1'b0;
    #10 a = 2'b01; b = 2'b00; c_in = 1'b0;
    #10 a = 2'b01; b = 2'b01; c_in = 1'b0;
    #10 a = 2'b01; b = 2'b10; c_in = 1'b0;
    #10 a = 2'b01; b = 2'b11; c_in = 1'b0;
    #10 a = 2'b10; b = 2'b00; c_in = 1'b0;
    #10 a = 2'b10; b = 2'b01; c_in = 1'b0;
    #10 a = 2'b10; b = 2'b10; c_in = 1'b0;
    #10 a = 2'b10; b = 2'b11; c_in = 1'b0;
    #10 a = 2'b11; b = 2'b00; c_in = 1'b0;
    #10 a = 2'b11; b = 2'b01; c_in = 1'b0;
    #10 a = 2'b11; b = 2'b10; c_in = 1'b0;
    #10 a = 2'b11; b = 2'b11; c_in = 1'b0;

    #10 a = 2'b00; b = 2'b00; c_in = 1'b1;
    #10 a = 2'b00; b = 2'b01; c_in = 1'b1;
    #10 a = 2'b00; b = 2'b10; c_in = 1'b1;
    #10 a = 2'b00; b = 2'b11; c_in = 1'b1;
    #10 a = 2'b01; b = 2'b00; c_in = 1'b1;
    #10 a = 2'b01; b = 2'b01; c_in = 1'b1;
    #10 a = 2'b01; b = 2'b10; c_in = 1'b1;
    #10 a = 2'b01; b = 2'b11; c_in = 1'b1;
    #10 a = 2'b10; b = 2'b00; c_in = 1'b1;
    #10 a = 2'b10; b = 2'b01; c_in = 1'b1;
    #10 a = 2'b10; b = 2'b10; c_in = 1'b1;
    #10 a = 2'b10; b = 2'b11; c_in = 1'b1;
    #10 a = 2'b11; b = 2'b00; c_in = 1'b1;
    #10 a = 2'b11; b = 2'b01; c_in = 1'b1;
    #10 a = 2'b11; b = 2'b10; c_in = 1'b1;
    #10 a = 2'b11; b = 2'b11; c_in = 1'b1;
    #50
    $display("Finished simulation");
    $finish;
end

endmodule
