module mux16_1(input[15:0]I,
input[3:0]s,
output reg y);
always@(*) begin
    y=I[s];
end
endmodule
