module encoder16_4(input[15:0]a,
                 output reg [3:0]y);
  integer i;
  always@(*)begin
    for(i=0;i<16;i=i+1)begin
      if (a[i])
        y=i;
    end
  end
    endmodule
    

