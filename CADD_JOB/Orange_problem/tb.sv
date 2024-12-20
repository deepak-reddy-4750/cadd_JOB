module Prime_Divisible_By_3_tb;
    logic [3:0] A;
    logic P, D;

    // Instantiate the module
    Prime_Divisible_By_3 uut (
        .A(A),
        .P(P),
        .D(D)
    );

    initial begin
        // Test all numbers from 0 to 15
        for (int i = 0; i < 16; i++) begin
            A = i;
            #10;
            $display("A = %d, P = %b, D = %b", A, P, D);
        end
        $finish;
    end
endmodule
