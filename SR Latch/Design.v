module sr_latch(
    input S,
    input R,
    output reg Q
);

always @ (S or R)
begin
    if (S == 1 && R == 0)
        Q = 1;       // Set
    else if (S == 0 && R == 1)
        Q = 0;       // Reset
    else if (S == 0 && R == 0)
        Q = Q;       // Hold
    else
        Q = 1'bx;    // Invalid
end

endmodule
