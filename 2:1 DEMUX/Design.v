module demux12(input d,
input s,
output reg y0,y1);
always@(*)begin
    y0=0;
    y1=0;
    case(s)
        1'b0: y0=d;
        1'b1: y1=d;
    endcase
end
endmodule

