module halfadder(input a,b,
output sum,carry);
xor o1(sum,a,b);
and o2(carry,a,b);
endmodule

