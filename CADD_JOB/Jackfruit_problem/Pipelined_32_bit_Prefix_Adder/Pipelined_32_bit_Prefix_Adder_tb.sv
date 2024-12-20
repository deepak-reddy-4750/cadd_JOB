module Pipelined_Prefix_Adder_tb;
    logic [31:0] A, B;
    logic [31:0] Sum;
    logic clk;

    // Instantiate the pipelined prefix adder
    Pipelined_Prefix_Adder uut (
        .A(A),
        .B(B),
        .clk(clk),
        .Sum(Sum)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock generation
    end

    initial begin
        // Test case 1
        A = 32'h00000001; // 1
        B = 32'h00000001; // 1
        #10;
        $display("A = %h, B = %h, Sum = %h", A, B, Sum);

        // Test case 2
        A = 32'hFFFFFFFF; // -1
        B = 32'h00000001; // 1
        #10;
        $display("A = %h, B = %h, Sum = %h", A, B, Sum);

        $finish;
    end
endmodule
