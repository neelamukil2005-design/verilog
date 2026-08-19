module decoder5_32(input[4:0]a,
                   output reg[31:0]y);
  integer i;
  always@(*)begin
    y=32'b0;
    for(i=0;i<32;i=i+1) begin
      if(a==i)
        y[i]=1'b1;
    end
  end
endmodule


