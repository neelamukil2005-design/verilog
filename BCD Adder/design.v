module bcdadder (input[3:0]a,b,
input cin,
output reg [3:0]sum,
output reg carry);
always @(*) begin
reg [4:0]ans;
    ans=a+b+cin;
    if(ans > 9)begin
        ans = ans + 6;
        sum = ans[3:0];
        carry=1;
    end
    else begin
        carry=0;
        sum=ans[3:0];
    end
    end
endmodule

    
