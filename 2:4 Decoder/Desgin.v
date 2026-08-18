module decoder24(input[1:0]a,
                 output reg[3:0]y);
  integer i;
  always@(*)begin
    y=4'b0000;
    for(i=0;i<4;i=i+1) begin
      if(a==i)
        y[i]=1'b1;
    end
  end
endmodule
