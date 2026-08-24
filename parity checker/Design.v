module parity_checker(
    input  [3:0] data,
    input        parity,
    input        mode,       // 0 = even, 1 = odd
    output reg   error
);

always @(*) begin

    if (mode == 0) begin
        // Even parity check
        if ((data[0] ^ data[1] ^ data[2] ^ data[3] ^ parity) == 0)
            error = 0;       // Correct
        else
            error = 1;       // Error
    end

    else begin
        // Odd parity check
        if ((data[0] ^ data[1] ^ data[2] ^ data[3] ^ parity) == 1)
            error = 0;       // Correct
        else
            error = 1;       // Error
    end

end

endmodule
