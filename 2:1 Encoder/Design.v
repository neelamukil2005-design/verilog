module encoder21(input i0,i1,
output reg y);
always@(*) begin
    if(i1==1)
        y=i1;
    else
      y=i0;
end
endmodule
