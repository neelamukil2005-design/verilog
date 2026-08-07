module mux41(input[3:0]I,
input [1:0]s,
output y);
assign y=I[s];
endmodule
  
