module Gray_Binary(input [3:0]gray,
output reg [3:0]b);
always@(*)begin
    b[3]=gray[3];
    b[2]=gray[3]^gray[2];
    b[1]=gray[2]^gray[1];
    b[0]=gray[1]^gray[0];
end
endmodule
