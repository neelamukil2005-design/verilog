module mux32_1(input[31:0]I,
input[4:0]s,
output reg y);
always@(*) begin
    y=I[s];
end
endmodule
