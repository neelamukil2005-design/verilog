module parigenrator(input[3:0]a,
                    input s,
                    output reg [4:0]y);
  always@(*)begin
    if(s)
      y[4]=a[0]^a[1]^a[2]^a[3];
    else 
      y[4]=~(a[0]^a[1]^a[2]^a[3]);
    y[3:0]=a[3:0];
  end
endmodule
  
    
