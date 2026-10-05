module register_8bit(
    input [7:0] D,
    input clk,
    output reg [7:0] Q
);

always @(posedge clk) begin
    Q <= D;
end

endmodule
