`timescale 1ns/1ps

module d_flip_flop_tb;

reg clk;
reg reset;
reg d;

wire q;

d_flip_flop uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $monitor("Time=%0t | Reset=%b | D=%b | Q=%b",
             $time, reset, d, q);

    clk   = 1'b0;
    reset = 1'b1;
    d     = 1'b0;

    // Reset
    #10;
    reset = 1'b0;

    // D = 1
    #10;
    d = 1'b1;

    // D = 0
    #10;
    d = 1'b0;

    // D = 1
    #10;
    d = 1'b1;

    // Apply reset
    #10;
    reset = 1'b1;

    #10;
    reset = 1'b0;
    d = 1'b0;

    #20;

    $finish;

end

endmodule