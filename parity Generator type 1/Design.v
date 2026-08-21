module parity(input[3:0]a,
                  output reg[4:0]even,
                  output reg[4:0]odd);
  integer i;
  integer count;
  always@(*)begin
    count=0;
    for(i=0;i<4;i=i+1)begin
      if(a[i]==1)
      count=count+1;
    end
    if(count%2==0)begin
      even={1'b0,a};
      odd={1'b1,a};
    end
     else begin
       even={1'b1,a};
      odd={1'b0,a};
     end
  end
endmodule
    







    
        

    







    
        
