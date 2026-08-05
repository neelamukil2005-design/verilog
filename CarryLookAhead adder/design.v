module ClAadder(input [3:0]a,b,
input cin,
output reg [3:0]sum,
output reg carry);
always@(*)begin
reg[3:0]G,P;
reg c1,c2,c3;
G=a&b;
P=a^b;
c1=G[0]|(P[0]&cin);
c2=G[1]|(P[1]&G[0])|(P[1]&P[0]&cin);
c3=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&cin);
carry=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&cin);
sum[0]=P[0]^cin;
sum[1]=P[1]^c1;
sum[2]=P[2]^c2;
sum[3]=P[3]^c3;
end
endmodule
