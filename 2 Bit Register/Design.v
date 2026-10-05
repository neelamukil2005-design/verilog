module register_2bit(
    input [1:0] D,
    input clk,
    output reg [1:0] Q
);

always @(posedge clk) begin
    Q <= D;
end

endmodule
