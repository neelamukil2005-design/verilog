module priencoder(input[7:0]a,
                  output reg[2:0]y);
  integer i;
  reg found;
  always@(*)begin
    y = 3'b000;
    found=1'b0;
    for(i=7;i>=0;i=i-1)begin
      if((a[i]==1'b1)&& (found==1'b0))begin
        y=i;
        found=1'b1;
      end
    end
  end
endmodule
        
        
      
