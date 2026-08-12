module demux81(input d,
input[2:0]s,
output reg [7:0]y);
integer i;
always@(*)begin
    y=8'b00000000;
    for(i=0;i<8;i=i+1) begin
     if(s==i)
     y[i]=d;
    end
end
endmodule

