`timescale 1ns / 1ps

module adder_tb();

reg a,b;
wire s,c;

adder dut (
    .a (a),
    .b (b),
    .s (s),
    .c (c)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    #10 a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;
    #30;

    $display("Finished simulation");
    $finish;
end

endmodule
