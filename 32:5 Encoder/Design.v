module encoder32_5(input[31:0]a,
                   output reg [4:0]y);
  integer i;
  always@(*)begin
    for(i=0;i<32;i=i+1)begin
      if (a[i])
        y=i;
    end
  end
    endmodule
    

