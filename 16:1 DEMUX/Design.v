module demux16_1(input d,
input[3:0]s,
output reg [15:0]y);
integer i;
always@(*)begin
    y=16'b0000000000000000;
    for(i=0;i<16;i=i+1) begin
     if(s==i)
     y[i]=d;
    end
end
endmodule

