module subadd(input [3:0]a,b,
input mode,
output reg [3:0] result
);
always@(*) begin
    if(mode==0)
      result=a+b;
    else
     result=a-b;
end
endmodule
      


