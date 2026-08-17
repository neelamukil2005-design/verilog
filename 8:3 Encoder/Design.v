module encoder83(input[7:0]a,
                 output reg [2:0]y);
  integer i;
  always@(*)begin
    for(i=0;i<8;i=i+1)begin
      if (a[i])
        y=i;
    end
  end
    endmodule
    
