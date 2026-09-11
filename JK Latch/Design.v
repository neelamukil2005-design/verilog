module jk_latch(
    input J,
    input K,
    input E,
    output reg Q,
    output reg Q_bar
);

always @ (J or K or E)
begin
    if (E == 1)
    begin
        if (J == 0 && K == 0)
        begin
            Q = Q;
            Q_bar = Q_bar;
        end

        else if (J == 0 && K == 1)
        begin
            Q = 0;
            Q_bar = 1;
        end

        else if (J == 1 && K == 0)
        begin
            Q = 1;
            Q_bar = 0;
        end

        else
        begin
            Q = ~Q;
            Q_bar = ~Q_bar;
        end
    end
    else
    begin
        Q = Q;
        Q_bar = Q_bar;
    end
end

endmodule
