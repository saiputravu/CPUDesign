`timescale 1ns / 1ps

module full_adder_tb();

reg a,b,c_in;
wire s_out, c_out;

full_adder dut (
    .a (a),
    .b (b),
    .c_in (c_in),
    .s_out (s_out),
    .c_out (c_out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    #10 a = 1'b0; b = 1'b0; c_in = 1'b0;
    #10 a = 1'b0; b = 1'b0; c_in = 1'b1;
    #10 a = 1'b0; b = 1'b1; c_in = 1'b0;
    #10 a = 1'b0; b = 1'b1; c_in = 1'b1;
    #10 a = 1'b1; b = 1'b0; c_in = 1'b0;
    #10 a = 1'b1; b = 1'b0; c_in = 1'b1;
    #10 a = 1'b1; b = 1'b1; c_in = 1'b0;
    #10 a = 1'b1; b = 1'b1; c_in = 1'b1;

    #50
    $display("Simulation ran");
    $finish;
end

endmodule
