module mux21(input i0,i1,
input s,
output reg y);
always@(*) begin
    if(s==0)
    y=i0;
    else
    y=i1;
end
endmodule
  
