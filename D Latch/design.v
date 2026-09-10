module d_latch(
    input D,
    input E,
    output reg Q,
    output reg Q_bar
);

always @ (D or E)
begin
    if (E == 1)
    begin
        Q = D;
        Q_bar = ~D;
    end
    else
    begin
        Q = Q;
        Q_bar = Q_bar;
    end
end

endmodule
