module decoder4_16(input[3:0]a,
                   output reg[15:0]y);
  integer i;
  always@(*)begin
    y=16'b0;
    for(i=0;i<16;i=i+1) begin
      if(a==i)
        y[i]=1'b1;
    end
  end
endmodule

