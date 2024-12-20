module FP_Multiplier_tb;
    logic [31:0] A, B;
    logic [31:0] Result;

    // Instantiate the floating-point multiplier
    FP_Multiplier uut (
        .A(A),
        .B(B),
        .Result(Result)
    );

    initial begin
        // Test case 1
        A = 32'h3F800000; // 1.0 in IEEE 754
        B = 32'h40000000; // 2.0 in IEEE 754
        #10;
        $display("A = %h, B = %h, Result = %h", A, B, Result);

        // Test case 2
        A = 32'h40400000; // 3.0 in IEEE 754
        B = 32'h40800000; // 4.0 in IEEE 754
        #10;
        $display("A = %h, B = %h, Result = %h", A, B, Result);

        $finish;
    end
endmodule
