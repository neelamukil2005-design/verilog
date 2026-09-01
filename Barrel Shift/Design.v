module barrel_shift(
    input [7:0] data,
    input [2:0] shift,
    input [2:0] sel,
    output reg [7:0] y
);

always @(*) begin

    if (sel == 3'b000)
        y = data << shift;       // Left shift

    else if (sel == 3'b001)
        y = data >> shift;       // Right shift

    else if (sel == 3'b010)
        y = {data[6:0], data[7]}; // Rotate left by 1

    else if (sel == 3'b011)
        y = {data[0], data[7:1]}; // Rotate right by 1

    else if (sel == 3'b100)
        y = $signed(data) >>> shift; // Arithmetic right

    else
        y = data;

end

endmodule
